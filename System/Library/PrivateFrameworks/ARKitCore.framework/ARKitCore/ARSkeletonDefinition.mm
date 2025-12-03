@interface ARSkeletonDefinition
+ (ARSkeletonDefinition)defaultBody2DSkeletonDefinition;
+ (ARSkeletonDefinition)defaultBody3DSkeletonDefinition;
- (NSUInteger)indexForJointName:(ARSkeletonJointName)jointName;
- (NSUInteger)jointCount;
- (id).cxx_construct;
- (id)initDefault2DSkeletonDefinition;
- (id)initDefault3DSkeletonDefinition;
@end

@implementation ARSkeletonDefinition

+ (ARSkeletonDefinition)defaultBody3DSkeletonDefinition
{
  if (+[ARSkeletonDefinition defaultBody3DSkeletonDefinition]::onceToken != -1)
  {
    +[ARSkeletonDefinition defaultBody3DSkeletonDefinition];
  }

  v3 = +[ARSkeletonDefinition defaultBody3DSkeletonDefinition]::_defaultSkeletonDefinition;

  return v3;
}

void __55__ARSkeletonDefinition_defaultBody3DSkeletonDefinition__block_invoke()
{
  v0 = [[ARSkeletonDefinition alloc] initDefault3DSkeletonDefinition];
  v1 = +[ARSkeletonDefinition defaultBody3DSkeletonDefinition]::_defaultSkeletonDefinition;
  +[ARSkeletonDefinition defaultBody3DSkeletonDefinition]::_defaultSkeletonDefinition = v0;
}

- (id)initDefault3DSkeletonDefinition
{
  v42.receiver = self;
  v42.super_class = ARSkeletonDefinition;
  v2 = [(ARSkeletonDefinition *)&v42 init];
  if (v2)
  {
    v41 = objc_opt_new();
    v3 = objc_opt_new();
    v40 = v2;
    v4 = objc_opt_new();
    v5 = objc_opt_new();
    v6 = CoreIKCreateAltruisticSolverInstance();
    TargetBufferSize = CoreIKSolverGetTargetBufferSize();
    if (TargetBufferSize)
    {
      v8 = 0;
      do
      {
        TargetName = CoreIKSolverGetTargetName();
        v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:TargetName];
        [v5 addObject:v10];

        TargetParentName = CoreIKSolverGetTargetParentName();
        if (TargetParentName)
        {
          v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:TargetParentName];
          v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:TargetName];
          [v4 setObject:v12 forKey:v13];
        }

        ++v8;
      }

      while (TargetBufferSize != v8);
      v14 = 0;
      do
      {
        v15 = [v5 objectAtIndex:{v14, v40}];
        v16 = [v4 objectForKey:v15];
        if ([v5 containsObject:v16])
        {
          v17 = [v5 indexOfObject:v16];
          v18 = [MEMORY[0x1E696AD98] numberWithInteger:v17];
          [v3 addObject:v18];
        }

        else
        {
          [v3 addObject:&unk_1F4258260];
        }

        lastPathComponent = [v15 lastPathComponent];
        [v41 addObject:lastPathComponent];

        ++v14;
      }

      while (TargetBufferSize != v14);
    }

    MEMORY[0x1C6919F50](v6);
    v20 = [v41 copy];
    jointNames = v40->_jointNames;
    v40->_jointNames = v20;

    v22 = [v3 copy];
    parentIndices = v40->_parentIndices;
    v40->_parentIndices = v22;

    v24 = [ARCoreRESkeletonResult alloc];
    v29 = ARNeutralBodySkeleton3DModelTransforms(v24, v25, v26, v27, v28);
    v34 = ARNeutralBodySkeleton3DLocalTransforms(v29, v30, v31, v32, v33);
    v35 = objc_opt_new();
    v36 = [(ARCoreRESkeletonResult *)v24 initWithModelJointTransforms:v29 localJointTransformsSRT:v34 numberOfTransforms:91 liftedSkeletonData:0 identifier:v35];

    v37 = [[ARSkeleton3D alloc] initWithCoreRESkeletonResult:v36];
    v2 = v40;
    neutralBodySkeleton3D = v40->_neutralBodySkeleton3D;
    v40->_neutralBodySkeleton3D = v37;
  }

  return v2;
}

+ (ARSkeletonDefinition)defaultBody2DSkeletonDefinition
{
  if (+[ARSkeletonDefinition defaultBody2DSkeletonDefinition]::onceToken != -1)
  {
    +[ARSkeletonDefinition defaultBody2DSkeletonDefinition];
  }

  v3 = +[ARSkeletonDefinition defaultBody2DSkeletonDefinition]::_defaultSkeletonDefinition;

  return v3;
}

void __55__ARSkeletonDefinition_defaultBody2DSkeletonDefinition__block_invoke()
{
  v0 = [[ARSkeletonDefinition alloc] initDefault2DSkeletonDefinition];
  v1 = +[ARSkeletonDefinition defaultBody2DSkeletonDefinition]::_defaultSkeletonDefinition;
  +[ARSkeletonDefinition defaultBody2DSkeletonDefinition]::_defaultSkeletonDefinition = v0;
}

- (id)initDefault2DSkeletonDefinition
{
  v10[19] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = ARSkeletonDefinition;
  v2 = [(ARSkeletonDefinition *)&v8 init];
  if (v2)
  {
    if (ARLinkedOnOrAfterSydney())
    {
      v10[0] = @"head_joint";
      v10[1] = @"neck_1_joint";
      v10[2] = @"right_shoulder_1_joint";
      v10[3] = @"right_forearm_joint";
      v10[4] = @"right_hand_joint";
      v10[5] = @"left_shoulder_1_joint";
      v10[6] = @"left_forearm_joint";
      v10[7] = @"left_hand_joint";
      v10[8] = @"right_upLeg_joint";
      v10[9] = @"right_leg_joint";
      v10[10] = @"right_foot_joint";
      v10[11] = @"left_upLeg_joint";
      v10[12] = @"left_leg_joint";
      v10[13] = @"left_foot_joint";
      v10[14] = @"right_eye_joint";
      v10[15] = @"left_eye_joint";
      v10[16] = @"root";
      v10[17] = @"right_ear_joint";
      v10[18] = @"left_ear_joint";
      v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:19];
      v4 = &unk_1F42590A0;
    }

    else
    {
      v9[0] = @"head_joint";
      v9[1] = @"neck_1_joint";
      v9[2] = @"right_shoulder_1_joint";
      v9[3] = @"right_forearm_joint";
      v9[4] = @"right_hand_joint";
      v9[5] = @"left_shoulder_1_joint";
      v9[6] = @"left_forearm_joint";
      v9[7] = @"left_hand_joint";
      v9[8] = @"right_upLeg_joint";
      v9[9] = @"right_leg_joint";
      v9[10] = @"right_foot_joint";
      v9[11] = @"left_upLeg_joint";
      v9[12] = @"left_leg_joint";
      v9[13] = @"left_foot_joint";
      v9[14] = @"right_eye_joint";
      v9[15] = @"left_eye_joint";
      v9[16] = @"root";
      v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:17];
      v4 = &unk_1F42590B8;
    }

    jointNames = v2->_jointNames;
    v2->_jointNames = v3;

    parentIndices = v2->_parentIndices;
    v2->_parentIndices = v4;
  }

  return v2;
}

- (NSUInteger)indexForJointName:(ARSkeletonJointName)jointName
{
  v4 = jointName;
  uTF8String = [(NSString *)v4 UTF8String];
  v9 = strlen(uTF8String);
  if (std::__hash_table<std::__hash_value_type<std::string_view,unsigned long>,std::__unordered_map_hasher<std::string_view,std::__hash_value_type<std::string_view,unsigned long>,std::hash<std::string_view>,std::equal_to<std::string_view>,true>,std::__unordered_map_equal<std::string_view,std::__hash_value_type<std::string_view,unsigned long>,std::equal_to<std::string_view>,std::hash<std::string_view>,true>,std::allocator<std::__hash_value_type<std::string_view,unsigned long>>>::find<std::string_view>(&self->_jointname_to_index.__table_.__bucket_list_.__ptr_, &uTF8String))
  {
    v5 = v4;
    uTF8String = [(NSString *)v5 UTF8String];
    v9 = strlen(uTF8String);
    v10 = &uTF8String;
    v6 = std::__hash_table<std::__hash_value_type<std::string_view,unsigned long>,std::__unordered_map_hasher<std::string_view,std::__hash_value_type<std::string_view,unsigned long>,std::hash<std::string_view>,std::equal_to<std::string_view>,true>,std::__unordered_map_equal<std::string_view,std::__hash_value_type<std::string_view,unsigned long>,std::equal_to<std::string_view>,std::hash<std::string_view>,true>,std::allocator<std::__hash_value_type<std::string_view,unsigned long>>>::__emplace_unique_key_args<std::string_view,std::piecewise_construct_t const&,std::tuple<std::string_view&&>,std::tuple<>>(&self->_jointname_to_index.__table_.__bucket_list_.__ptr_, &uTF8String)[4];
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

- (NSUInteger)jointCount
{
  jointNames = [(ARSkeletonDefinition *)self jointNames];
  v3 = [jointNames count];

  return v3;
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  return self;
}

@end