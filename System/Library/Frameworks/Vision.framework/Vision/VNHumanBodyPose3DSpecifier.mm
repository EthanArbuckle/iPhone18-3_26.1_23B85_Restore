@interface VNHumanBodyPose3DSpecifier
+ (id)_stringRepresentationForRequestRevision:(unint64_t)revision abpkJoint:(id)joint error:(id *)error;
+ (id)supportedHumanBodyPose3DKeypointsRev1;
- (BOOL)isEqual:(id)equal;
- (CGSize)inputSize;
- (VNHumanBodyPose3DSpecifier)initWithCoder:(id)coder;
- (VNHumanBodyPose3DSpecifier)initWithHumanBody3DOutput:(id)output originatingRequestSpecifier:(id)specifier;
- (id)availableGroupKeys;
- (id)pointKeyGroupLabelsMapping;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNHumanBodyPose3DSpecifier

- (CGSize)inputSize
{
  width = self->_inputSize.width;
  height = self->_inputSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (VNHumanBodyPose3DSpecifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v30.receiver = self;
  v30.super_class = VNHumanBodyPose3DSpecifier;
  v5 = [(VNRecognizedPoints3DSpecifier *)&v30 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E695DFD8]);
    v7 = objc_opt_class();
    v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"OrderedHuman3DKeypoints"];
    orderedHumanBodyPose3DKeypoints = v5->_orderedHumanBodyPose3DKeypoints;
    v5->_orderedHumanBodyPose3DKeypoints = v9;

    if (v5->_orderedHumanBodyPose3DKeypoints)
    {
      [coderCopy vn_decode3x3MatrixForKey:@"CameraIntrinsics"];
      *v5->_anon_80 = v11;
      *&v5->_anon_80[8] = v12;
      *&v5->_anon_80[16] = v13;
      *&v5->_anon_80[24] = v14;
      *&v5->_anon_80[40] = v15;
      *&v5->_anon_80[32] = v16;
      error = [coderCopy error];

      if (!error)
      {
        [coderCopy vn_decode4x4MatrixForKey:@"CameraTransform"];
        *v5->_anon_20 = v18;
        *&v5->_anon_20[16] = v19;
        *&v5->_anon_20[32] = v20;
        *&v5->_anon_20[48] = v21;
        error2 = [coderCopy error];

        if (!error2)
        {
          [coderCopy decodeFloatForKey:@"HeightEstimatedScale"];
          v5->_heightEstimatedScale = v23;
          [coderCopy decodeFloatForKey:@"HumanHeight"];
          v5->_humanHeight = v24;
          [coderCopy vn_decodeSizeForKey:@"InputSize"];
          v5->_inputSize.width = v25;
          v5->_inputSize.height = v26;
          v27 = v5;
LABEL_9:

          goto LABEL_10;
        }
      }
    }

    else
    {
      v28 = [VNError errorForDataUnavailableWithLocalizedDescription:@"ordered model human keypoints were not available"];
      [coderCopy failWithError:v28];
    }

    v27 = 0;
    goto LABEL_9;
  }

  v27 = 0;
LABEL_10:

  return v27;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = VNHumanBodyPose3DSpecifier;
  [(VNRecognizedPoints3DSpecifier *)&v7 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_orderedHumanBodyPose3DKeypoints forKey:@"OrderedHuman3DKeypoints"];
  [coderCopy vn_encode3x3Matrix:@"CameraIntrinsics" forKey:{*self->_anon_80, *&self->_anon_80[16], *&self->_anon_80[32]}];
  [coderCopy vn_encode4x4Matrix:@"CameraTransform" forKey:{*self->_anon_20, *&self->_anon_20[16], *&self->_anon_20[32], *&self->_anon_20[48]}];
  *&v5 = self->_heightEstimatedScale;
  [coderCopy encodeFloat:@"HeightEstimatedScale" forKey:v5];
  *&v6 = self->_humanHeight;
  [coderCopy encodeFloat:@"HumanHeight" forKey:v6];
  [coderCopy vn_encodeSize:@"InputSize" forKey:{self->_inputSize.width, self->_inputSize.height}];
}

- (id)pointKeyGroupLabelsMapping
{
  if ([VNHumanBodyPose3DSpecifier pointKeyGroupLabelsMapping]::onceToken != -1)
  {
    dispatch_once(&[VNHumanBodyPose3DSpecifier pointKeyGroupLabelsMapping]::onceToken, &__block_literal_global_12);
  }

  v3 = [VNHumanBodyPose3DSpecifier pointKeyGroupLabelsMapping]::mapping;

  return v3;
}

void __56__VNHumanBodyPose3DSpecifier_pointKeyGroupLabelsMapping__block_invoke()
{
  v9[6] = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"human_top_head_3D", @"human_center_head_3D", 0}];
  v9[0] = v0;
  v1 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"human_left_shoulder_3D", @"human_right_shoulder_3D", @"human_center_shoulder_3D", @"human_spine_3D", @"human_left_hip_3D", @"human_root_3D", @"human_right_hip_3D", 0, @"human_joint_group_head_3D", @"human_joint_group_torso_3D"}];
  v9[1] = v1;
  v8[2] = @"human_joint_group_left_arm_3D";
  v2 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"human_left_shoulder_3D", @"human_left_elbow_3D", @"human_left_wrist_3D", 0}];
  v9[2] = v2;
  v8[3] = @"human_joint_group_right_arm_3D";
  v3 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"human_right_shoulder_3D", @"human_right_elbow_3D", @"human_right_wrist_3D", 0}];
  v9[3] = v3;
  v8[4] = @"human_joint_group_left_leg_3D";
  v4 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"human_left_hip_3D", @"human_left_knee_3D", @"human_left_ankle_3D", 0}];
  v9[4] = v4;
  v8[5] = @"human_joint_group_right_leg_3D";
  v5 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"human_right_hip_3D", @"human_right_knee_3D", @"human_right_ankle_3D", 0}];
  v9[5] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:6];
  v7 = [VNHumanBodyPose3DSpecifier pointKeyGroupLabelsMapping]::mapping;
  [VNHumanBodyPose3DSpecifier pointKeyGroupLabelsMapping]::mapping = v6;
}

- (id)availableGroupKeys
{
  if ([VNHumanBodyPose3DSpecifier availableGroupKeys]::onceToken != -1)
  {
    dispatch_once(&[VNHumanBodyPose3DSpecifier availableGroupKeys]::onceToken, &__block_literal_global_9);
  }

  v3 = [VNHumanBodyPose3DSpecifier availableGroupKeys]::groupKeys;

  return v3;
}

void __48__VNHumanBodyPose3DSpecifier_availableGroupKeys__block_invoke()
{
  v2[7] = *MEMORY[0x1E69E9840];
  v2[0] = @"human_joint_group_head_3D";
  v2[1] = @"human_joint_group_torso_3D";
  v2[2] = @"human_joint_group_left_arm_3D";
  v2[3] = @"human_joint_group_right_arm_3D";
  v2[4] = @"human_joint_group_left_leg_3D";
  v2[5] = @"human_joint_group_right_leg_3D";
  v2[6] = @"VNIPOAll";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:7];
  v1 = [VNHumanBodyPose3DSpecifier availableGroupKeys]::groupKeys;
  [VNHumanBodyPose3DSpecifier availableGroupKeys]::groupKeys = v0;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = VNHumanBodyPose3DSpecifier;
    if ([(VNRecognizedPoints3DSpecifier *)&v11 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = equalCopy;
      v6 = v5;
      v7 = self->_inputSize.width == v5->_inputSize.width && self->_inputSize.height == v5->_inputSize.height;
      v9 = v7 && self->_heightEstimatedScale == v5->_heightEstimatedScale && self->_humanHeight == v5->_humanHeight && (v8 = vandq_s8(vandq_s8(vceqq_f32(*&self->_anon_80[16], *&v5->_anon_80[16]), vceqq_f32(*self->_anon_80, *v5->_anon_80)), vceqq_f32(*&self->_anon_80[32], *&v5->_anon_80[32])), v8.i32[3] = v8.i32[2], (vminvq_u32(v8) & 0x80000000) != 0) && (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(*&self->_anon_20[16], *&v5->_anon_20[16]), vceqq_f32(*self->_anon_20, *v5->_anon_20)), vandq_s8(vceqq_f32(*&self->_anon_20[32], *&v5->_anon_20[32]), vceqq_f32(*&self->_anon_20[48], *&v5->_anon_20[48])))) & 0x80000000) != 0 && [(NSArray *)self->_orderedHumanBodyPose3DKeypoints isEqualToArray:v5->_orderedHumanBodyPose3DKeypoints];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (VNHumanBodyPose3DSpecifier)initWithHumanBody3DOutput:(id)output originatingRequestSpecifier:(id)specifier
{
  outputCopy = output;
  specifierCopy = specifier;
  v76 = outputCopy;
  liftedSkeleton = [outputCopy liftedSkeleton];
  v86 = liftedSkeleton;
  skeletonDefinition = [liftedSkeleton skeletonDefinition];
  jointCount = [skeletonDefinition jointCount];

  requestRevision = [specifierCopy requestRevision];
  v75 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:jointCount];
  v74 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:jointCount];
  if (jointCount)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    while (1)
    {
      modelPoses = [liftedSkeleton modelPoses];
      v81 = *(modelPoses + v9 + 16);
      v82 = *(modelPoses + v9);
      v79 = *(modelPoses + v9 + 48);
      v80 = *(modelPoses + v9 + 32);
      localPoses = [liftedSkeleton localPoses];
      v77 = *(localPoses + v10);
      v78 = *(localPoses + v10 + 16);
      skeletonDefinition2 = [liftedSkeleton skeletonDefinition];
      v85 = [skeletonDefinition2 jointName:v11];

      v15 = objc_opt_class();
      v89[0] = 0;
      v16 = [v15 _stringRepresentationForRequestRevision:requestRevision abpkJoint:v85 error:v89];
      v17 = v89[0];
      v18 = v17;
      if (!v16)
      {
        localizedDescription = [v17 localizedDescription];
        [VNError VNAssert:0 log:localizedDescription];

        v50 = 0;
        goto LABEL_17;
      }

      skeletonDefinition3 = [v86 skeletonDefinition];
      v20 = [skeletonDefinition3 parentJoint:v11];

      skeletonDefinition4 = [v86 skeletonDefinition];
      v22 = skeletonDefinition4;
      v23 = v20 >= 0 ? v20 : v11;
      v24 = [skeletonDefinition4 jointName:v23];

      v25 = objc_opt_class();
      v88 = v18;
      v26 = [v25 _stringRepresentationForRequestRevision:requestRevision abpkJoint:v24 error:&v88];
      v27 = v88;

      if (v26)
      {
        v28 = [VNHumanBodyRecognizedPoint3D alloc];
        _Q19 = v77;
        _S0 = v77.i32[3];
        _S1 = v77.i32[2];
        _S3 = v77.i32[1];
        __asm
        {
          FMLS            S5, S1, V19.S[2]
          FMLA            S5, S0, V19.S[3]
        }

        v39 = vmuls_lane_f32(v77.f32[2], v77, 3);
        v40 = vmuls_lane_f32(v77.f32[1], v77, 3);
        LODWORD(v41) = _S5;
        *(&v41 + 1) = (v39 + (v77.f32[0] * v77.f32[1])) + (v39 + (v77.f32[0] * v77.f32[1]));
        __asm
        {
          FMLA            S2, S3, V19.S[1]
          FMLA            S2, S0, V19.S[3]
          FMLA            S5, S1, V19.S[1]
        }

        *&v45 = -(v39 - (v77.f32[0] * v77.f32[1])) - (v39 - (v77.f32[0] * v77.f32[1]));
        *(&v45 + 1) = _S2 - (_Q19.f32[0] * _Q19.f32[0]);
        __asm
        {
          FMLA            S6, S1, V19.S[1]
          FMLA            S0, S1, V19.S[2]
          FMLS            S0, S3, V19.S[1]
        }

        localizedDescription2 = [(VNHumanBodyRecognizedPoint3D *)v28 initWithModelPosition:v16 localPosition:v26 jointName:*&v82 parentJoint:*&v81, *&v80, *&v79, v41, v45, COERCE_DOUBLE(__PAIR64__(_S6 + _S6, (v40 + (v77.f32[2] * v77.f32[0])) + (v40 + (v77.f32[2] * v77.f32[0])))), *&v78];
        [v75 setObject:localizedDescription2 forKey:v16];
        [v74 addObject:localizedDescription2];
      }

      else
      {
        localizedDescription2 = [v27 localizedDescription];
        [VNError VNAssert:0 log:localizedDescription2];
      }

      if (!v26)
      {
        break;
      }

      ++v11;
      v10 += 32;
      v9 += 64;
      outputCopy = v76;
      liftedSkeleton = v86;
      if (jointCount == v11)
      {
        goto LABEL_12;
      }
    }

    v50 = 0;
    outputCopy = v76;
LABEL_17:
    liftedSkeleton = v86;
    selfCopy = self;
    goto LABEL_20;
  }

LABEL_12:
  v87.receiver = self;
  v87.super_class = VNHumanBodyPose3DSpecifier;
  v50 = [(VNRecognizedPoints3DSpecifier *)&v87 initWithOriginatingRequestSpecifier:specifierCopy allRecognizedPoints:v75];
  if (v50)
  {
    [liftedSkeleton estimatedScale];
    *(v50 + 25) = v51;
    if (v51 == -1.0)
    {
      v52 = 1072064102;
    }

    else
    {
      [liftedSkeleton computeHeight];
    }

    *(v50 + 24) = v52;
    [liftedSkeleton cameraRootTransform];
    *(v50 + 2) = v55;
    *(v50 + 3) = v56;
    *(v50 + 4) = v57;
    *(v50 + 5) = v58;
    [liftedSkeleton renderingCameraRootTransform];
    *(v50 + 11) = v59;
    *(v50 + 12) = v60;
    *(v50 + 13) = v61;
    *(v50 + 14) = v62;
    [outputCopy cameraIntrinsics];
    *(v50 + 16) = v63;
    *(v50 + 34) = v64;
    *(v50 + 18) = v65;
    *(v50 + 38) = v66;
    *(v50 + 42) = v67;
    *(v50 + 20) = v68;
    [outputCopy inputSize];
    *(v50 + 13) = v69;
    *(v50 + 14) = v70;
    v71 = [v74 copy];
    selfCopy = *(v50 + 3);
    *(v50 + 3) = v71;
LABEL_20:
  }

  return v50;
}

+ (id)_stringRepresentationForRequestRevision:(unint64_t)revision abpkJoint:(id)joint error:(id *)error
{
  jointCopy = joint;
  if (revision == 1)
  {
    supportedHumanBodyPose3DKeypointsRev1 = [objc_opt_class() supportedHumanBodyPose3DKeypointsRev1];
    v9 = [supportedHumanBodyPose3DKeypointsRev1 objectForKey:jointCopy];
  }

  else if (error)
  {
    [VNError errorForUnsupportedRevision:revision ofRequestClass:objc_opt_class()];
    *error = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)supportedHumanBodyPose3DKeypointsRev1
{
  if (+[VNHumanBodyPose3DSpecifier supportedHumanBodyPose3DKeypointsRev1]::onceToken != -1)
  {
    dispatch_once(&+[VNHumanBodyPose3DSpecifier supportedHumanBodyPose3DKeypointsRev1]::onceToken, &__block_literal_global_34087);
  }

  v3 = +[VNHumanBodyPose3DSpecifier supportedHumanBodyPose3DKeypointsRev1]::supportedHumanBodyPose3DKeypointsRev1;

  return v3;
}

void __67__VNHumanBodyPose3DSpecifier_supportedHumanBodyPose3DKeypointsRev1__block_invoke()
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x2050000000;
  v0 = getABPKSkeletonDefinitionClass(void)::softClass;
  v28 = getABPKSkeletonDefinitionClass(void)::softClass;
  if (!getABPKSkeletonDefinitionClass(void)::softClass)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = ___ZL30getABPKSkeletonDefinitionClassv_block_invoke;
    v24[3] = &unk_1E77B69F0;
    v24[4] = &v25;
    ___ZL30getABPKSkeletonDefinitionClassv_block_invoke(v24);
    v0 = v26[3];
  }

  v1 = v0;
  _Block_object_dispose(&v25, 8);
  v2 = [[v0 alloc] initWithType:3];
  v3 = [v2 jointCount];
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v3];
  v5 = [v2 jointName:0];
  [v4 setObject:@"human_root_3D" forKey:v5];

  v6 = [v2 jointName:1];
  [v4 setObject:@"human_right_hip_3D" forKey:v6];

  v7 = [v2 jointName:2];
  [v4 setObject:@"human_right_knee_3D" forKey:v7];

  v8 = [v2 jointName:3];
  [v4 setObject:@"human_right_ankle_3D" forKey:v8];

  v9 = [v2 jointName:4];
  [v4 setObject:@"human_left_hip_3D" forKey:v9];

  v10 = [v2 jointName:5];
  [v4 setObject:@"human_left_knee_3D" forKey:v10];

  v11 = [v2 jointName:6];
  [v4 setObject:@"human_left_ankle_3D" forKey:v11];

  v12 = [v2 jointName:7];
  [v4 setObject:@"human_spine_3D" forKey:v12];

  v13 = [v2 jointName:8];
  [v4 setObject:@"human_center_shoulder_3D" forKey:v13];

  v14 = [v2 jointName:9];
  [v4 setObject:@"human_center_head_3D" forKey:v14];

  v15 = [v2 jointName:10];
  [v4 setObject:@"human_top_head_3D" forKey:v15];

  v16 = [v2 jointName:11];
  [v4 setObject:@"human_left_shoulder_3D" forKey:v16];

  v17 = [v2 jointName:12];
  [v4 setObject:@"human_left_elbow_3D" forKey:v17];

  v18 = [v2 jointName:13];
  [v4 setObject:@"human_left_wrist_3D" forKey:v18];

  v19 = [v2 jointName:14];
  [v4 setObject:@"human_right_shoulder_3D" forKey:v19];

  v20 = [v2 jointName:15];
  [v4 setObject:@"human_right_elbow_3D" forKey:v20];

  v21 = [v2 jointName:16];
  [v4 setObject:@"human_right_wrist_3D" forKey:v21];

  v22 = [v4 copy];
  v23 = +[VNHumanBodyPose3DSpecifier supportedHumanBodyPose3DKeypointsRev1]::supportedHumanBodyPose3DKeypointsRev1;
  +[VNHumanBodyPose3DSpecifier supportedHumanBodyPose3DKeypointsRev1]::supportedHumanBodyPose3DKeypointsRev1 = v22;
}

@end