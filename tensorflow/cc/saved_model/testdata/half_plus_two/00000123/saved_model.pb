ňM
°
9
Add
x"T
y"T
z"T"
Ttype:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
b
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
<
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
ď
ParseExample

serialized	
names
sparse_keys*Nsparse

dense_keys*Ndense
dense_defaults2Tdense
sparse_indices	*Nsparse
sparse_values2sparse_types
sparse_shapes	*Nsparse
dense_values2Tdense"
Nsparseint("
Ndenseint("%
sparse_types
list(type)(:
2	"
Tdense
list(type)(:
2	"
dense_shapeslist(shape)(
A
Placeholder
output"dtype"
dtypetype"
shapeshape: 
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
l
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
i
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
H
ShardedFilename
basename	
shard

num_shards
filename
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "serve*	0.12.head2unknown¸:
T
a/initial_valueConst*
_output_shapes
: *
valueB
 *   ?*
dtype0
e
a
VariableV2*
dtype0*
_output_shapes
: *
shared_name *
	container *
shape: 

a/AssignAssignaa/initial_value*
_class

loc:@a*
T0*
_output_shapes
: *
validate_shape(*
use_locking(
L
a/readIdentitya*
_class

loc:@a*
_output_shapes
: *
T0
T
b/initial_valueConst*
_output_shapes
: *
valueB
 *   @*
dtype0
e
b
VariableV2*
dtype0*
_output_shapes
: *
shared_name *
	container *
shape: 

b/AssignAssignbb/initial_value*
_class

loc:@b*
T0*
_output_shapes
: *
validate_shape(*
use_locking(
L
b/readIdentityb*
_class

loc:@b*
T0*
_output_shapes
: 
T
c/initial_valueConst*
_output_shapes
: *
valueB
 *  @@*
dtype0
e
c
VariableV2*
_output_shapes
: *
shared_name *
	container *
shape: *
dtype0

c/AssignAssigncc/initial_value*
_class

loc:@c*
T0*
_output_shapes
: *
validate_shape(*
use_locking(
L
c/readIdentityc*
_class

loc:@c*
T0*
_output_shapes
: 
M

tf_examplePlaceholder*
_output_shapes
:*
shape: *
dtype0
U
ParseExample/ConstConst*
dtype0*
_output_shapes
: *
valueB 
`
ParseExample/key_x2Const*
dtype0*
_output_shapes
:*
valueB*    
d
ParseExample/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:

ParseExample/ReshapeReshapeParseExample/key_x2ParseExample/Reshape/shape*
Tshape0*
_output_shapes
:*
T0
b
ParseExample/ParseExample/namesConst*
dtype0*
_output_shapes
: *
valueB 
h
&ParseExample/ParseExample/dense_keys_0Const*
_output_shapes
: *
value	B Bx*
dtype0
i
&ParseExample/ParseExample/dense_keys_1Const*
_output_shapes
: *
value
B Bx2*
dtype0
ď
ParseExample/ParseExampleParseExample
tf_exampleParseExample/ParseExample/names&ParseExample/ParseExample/dense_keys_0&ParseExample/ParseExample/dense_keys_1ParseExample/ConstParseExample/Reshape*
sparse_types
 *:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
Ndense*
Nsparse *
Tdense
2*
dense_shapes
::
Z
xIdentityParseExample/ParseExample*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
G
MulMula/readx*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
G
yAddMulb/read*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
I
Mul_1Mula/readx*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
J
y2AddMul_1c/read*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
]
x2IdentityParseExample/ParseExample:1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
J
Mul_2Mula/readx2*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
J
y3AddMul_2c/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
i
ConstConst*
dtype0*
_output_shapes
: *4
value+B) B#/tmp/original/export/assets/foo.txt
e
filename_tensor/initial_valueConst*
dtype0*
_output_shapes
: *
valueB Bfoo.txt
s
filename_tensor
VariableV2*
_output_shapes
: *
shared_name *
	container *
shape: *
dtype0
ž
filename_tensor/AssignAssignfilename_tensorfilename_tensor/initial_value*"
_class
loc:@filename_tensor*
T0*
_output_shapes
: *
validate_shape(*
use_locking(
v
filename_tensor/readIdentityfilename_tensor*"
_class
loc:@filename_tensor*
_output_shapes
: *
T0
T
Assign/valueConst*
_output_shapes
: *
valueB Bfoo.txt*
dtype0

AssignAssignfilename_tensorAssign/value*"
_class
loc:@filename_tensor*
T0*
_output_shapes
: *
validate_shape(*
use_locking( 
-
initNoOp	^a/Assign	^b/Assign	^c/Assign
I
IdentityIdentityy*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
L

Identity_1Identityy2*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
L

Identity_2Identityy3*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
K

Identity_3Identityy*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


group_depsNoOp^Assign
P

save/ConstConst*
dtype0*
_output_shapes
: *
valueB Bmodel

save/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_10bc6a176ced425eb20d4835ce6231f9/part
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
_output_shapes
: *
N*
	separator 
Q
save/num_shardsConst*
_output_shapes
: *
value	B :*
dtype0
\
save/ShardedFilename/shardConst*
dtype0*
_output_shapes
: *
value	B : 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
h
save/SaveV2/tensor_namesConst*
_output_shapes
:*
valueBBaBbBc*
dtype0
i
save/SaveV2/shape_and_slicesConst*
_output_shapes
:*
valueBB B B *
dtype0

save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesabc*
dtypes
2

save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*'
_class
loc:@save/ShardedFilename*
_output_shapes
: *
T0

+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
_output_shapes
:*

axis *
T0*
N
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/control_dependency^save/MergeV2Checkpoints*
T0*
_output_shapes
: 
e
save/RestoreV2/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBBa
h
save/RestoreV2/shape_and_slicesConst*
_output_shapes
:*
valueB
B *
dtype0

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
_output_shapes
:*
dtypes
2

save/AssignAssignasave/RestoreV2*
_class

loc:@a*
T0*
_output_shapes
: *
validate_shape(*
use_locking(
g
save/RestoreV2_1/tensor_namesConst*
_output_shapes
:*
valueBBb*
dtype0
j
!save/RestoreV2_1/shape_and_slicesConst*
_output_shapes
:*
valueB
B *
dtype0

save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
_output_shapes
:*
dtypes
2

save/Assign_1Assignbsave/RestoreV2_1*
_class

loc:@b*
use_locking(*
_output_shapes
: *
T0*
validate_shape(
g
save/RestoreV2_2/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBBc
j
!save/RestoreV2_2/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 

save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
_output_shapes
:*
dtypes
2

save/Assign_2Assigncsave/RestoreV2_2*
_class

loc:@c*
T0*
_output_shapes
: *
validate_shape(*
use_locking(
H
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_2
-
save/restore_allNoOp^save/restore_shard"<
save/Const:0save/Identity:0save/restore_all (5 @F8"j
trainable_variablesSQ

a:0a/Assigna/read:0

b:0b/Assignb/read:0

c:0c/Assignc/read:0"
asset_filepaths
	
Const:0" 
legacy_init_op


group_deps"]
saved_model_assetsG*E
C
+type.googleapis.com/tensorflow.AssetFileDef
	
Const:0foo.txt"`
	variablesSQ

a:0a/Assigna/read:0

b:0b/Assignb/read:0

c:0c/Assignc/read:0*d
classify_x_to_yQ

inputs
tf_example:0
scores
Identity_3:0tensorflow/serving/classify*]
regress_x2_to_y3I

inputs
x2:0
outputs
Identity_2:0tensorflow/serving/regress*d
regress_x_to_y2Q

inputs
tf_example:0
outputs
Identity_1:0tensorflow/serving/regress*G
serving_default4


x
x:0

y
y:0tensorflow/serving/predict*a
regress_x_to_yO

inputs
tf_example:0
outputs

Identity:0tensorflow/serving/regress