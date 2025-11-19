@interface VNRecognizedAnimalBodyPointsSpecifier
+ (id)_stringRepresentationForRequestRevision:(unint64_t)a3 petsKeypointType:(int)a4 error:(id *)a5;
+ (id)supportedAnimalPoseKeypointsRev1;
- (BOOL)isEqual:(id)a3;
- (VNRecognizedAnimalBodyPointsSpecifier)initWithCoder:(id)a3;
- (VNRecognizedAnimalBodyPointsSpecifier)initWithVCPPetsObservation:(id)a3 originatingRequestSpecifier:(id)a4;
- (id)availableGroupKeys;
- (id)pointKeyGroupLabelsMapping;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VNRecognizedAnimalBodyPointsSpecifier

- (VNRecognizedAnimalBodyPointsSpecifier)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = VNRecognizedAnimalBodyPointsSpecifier;
  v5 = [(VNRecognizedPointsSpecifier *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E695DFD8]);
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 initWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"OrderedAnimalKeypoints"];
    orderedAnimalKeypoints = v5->_orderedAnimalKeypoints;
    v5->_orderedAnimalKeypoints = v10;

    if (v5->_orderedAnimalKeypoints)
    {
      v12 = v5;
    }

    else
    {
      v13 = [VNError errorForDataUnavailableWithLocalizedDescription:@"ordered animal keypoints are not available"];
      [v4 failWithError:v13];

      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = VNRecognizedAnimalBodyPointsSpecifier;
  [(VNRecognizedPointsSpecifier *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_orderedAnimalKeypoints forKey:@"OrderedAnimalKeypoints"];
}

- (id)pointKeyGroupLabelsMapping
{
  if ([VNRecognizedAnimalBodyPointsSpecifier pointKeyGroupLabelsMapping]::onceToken != -1)
  {
    dispatch_once(&[VNRecognizedAnimalBodyPointsSpecifier pointKeyGroupLabelsMapping]::onceToken, &__block_literal_global_65);
  }

  v3 = [VNRecognizedAnimalBodyPointsSpecifier pointKeyGroupLabelsMapping]::mapping;

  return v3;
}

void __67__VNRecognizedAnimalBodyPointsSpecifier_pointKeyGroupLabelsMapping__block_invoke()
{
  v8[5] = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"animal_joint_left_ear_top", @"animal_joint_right_ear_top", @"animal_joint_left_ear_middle", @"animal_joint_right_ear_middle", @"animal_joint_left_ear_bottom", @"animal_joint_right_ear_bottom", @"animal_joint_left_eye", @"animal_joint_right_eye", @"animal_joint_nose", 0, @"animal_joint_group_head"}];
  v8[0] = v0;
  v7[1] = @"animal_joint_group_trunk";
  v1 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"animal_joint_heck", 0}];
  v8[1] = v1;
  v7[2] = @"animal_joint_group_gorelegs";
  v2 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"animal_joint_left_front_elbow", @"animal_joint_right_front_elbow", @"animal_joint_left_front_knee", @"animal_joint_right_front_knee", @"animal_joint_left_front_paw", @"animal_joint_right_front_paw", 0}];
  v8[2] = v2;
  v7[3] = @"animal_joint_group_hindlegs";
  v3 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"animal_joint_left_back_elbow", @"animal_joint_right_back_elbow", @"animal_joint_left_back_knee", @"animal_joint_right_back_knee", @"animal_joint_left_back_paw", @"animal_joint_right_back_paw", 0}];
  v8[3] = v3;
  v7[4] = @"animal_joint_group_tail";
  v4 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"animal_joint_tail_top", @"animal_joint_tail_middle", @"animal_joint_tail_bottom", 0}];
  v8[4] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:5];
  v6 = [VNRecognizedAnimalBodyPointsSpecifier pointKeyGroupLabelsMapping]::mapping;
  [VNRecognizedAnimalBodyPointsSpecifier pointKeyGroupLabelsMapping]::mapping = v5;
}

- (id)availableGroupKeys
{
  if ([VNRecognizedAnimalBodyPointsSpecifier availableGroupKeys]::onceToken != -1)
  {
    dispatch_once(&[VNRecognizedAnimalBodyPointsSpecifier availableGroupKeys]::onceToken, &__block_literal_global_62);
  }

  v3 = [VNRecognizedAnimalBodyPointsSpecifier availableGroupKeys]::groupKeys;

  return v3;
}

void __59__VNRecognizedAnimalBodyPointsSpecifier_availableGroupKeys__block_invoke()
{
  v2[6] = *MEMORY[0x1E69E9840];
  v2[0] = @"animal_joint_group_head";
  v2[1] = @"animal_joint_group_trunk";
  v2[2] = @"animal_joint_group_gorelegs";
  v2[3] = @"animal_joint_group_hindlegs";
  v2[4] = @"animal_joint_group_tail";
  v2[5] = @"VNIPOAll";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:6];
  v1 = [VNRecognizedAnimalBodyPointsSpecifier availableGroupKeys]::groupKeys;
  [VNRecognizedAnimalBodyPointsSpecifier availableGroupKeys]::groupKeys = v0;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = VNRecognizedAnimalBodyPointsSpecifier;
    v5 = [(VNRecognizedPointsSpecifier *)&v7 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(NSArray *)self->_orderedAnimalKeypoints isEqualToArray:v4->_orderedAnimalKeypoints];
  }

  return v5;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = VNRecognizedAnimalBodyPointsSpecifier;
  return [(NSArray *)self->_orderedAnimalKeypoints hash]^ __ROR8__([(VNRecognizedPointsSpecifier *)&v3 hash], 51);
}

- (VNRecognizedAnimalBodyPointsSpecifier)initWithVCPPetsObservation:(id)a3 originatingRequestSpecifier:(id)a4
{
  v31 = a3;
  v32 = a4;
  v5 = [v31 keypoints];
  v6 = [v5 count];
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v6];
  v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v6];
  v9 = [v32 requestRevision];
  if (v6)
  {
    v10 = v9;
    v11 = 0;
    while (1)
    {
      v12 = v5;
      v13 = [v5 objectAtIndex:v11];
      [v13 location];
      v15 = v14;
      v17 = v16;
      [v13 confidence];
      v19 = v18;
      v20 = objc_opt_class();
      v35 = 0;
      v21 = [v20 _stringRepresentationForRequestRevision:v10 petsKeypointType:v11 error:&v35];
      v22 = v35;
      v23 = v22;
      if (!v21)
      {
        break;
      }

      v24 = [VNRecognizedPoint alloc];
      LODWORD(v25) = v19;
      v26 = [(VNRecognizedPoint *)v24 initWithLocation:v21 confidence:v15 identifier:v17, v25];
      [v8 setObject:v26 forKey:v21];
      [v7 addObject:v26];

      ++v11;
      v5 = v12;
      if (v6 == v11)
      {
        goto LABEL_5;
      }
    }

    v27 = 0;
    v5 = v12;
    orderedAnimalKeypoints = self;
    goto LABEL_8;
  }

LABEL_5:
  v34.receiver = self;
  v34.super_class = VNRecognizedAnimalBodyPointsSpecifier;
  v27 = [(VNRecognizedPointsSpecifier *)&v34 initWithOriginatingRequestSpecifier:v32 allRecognizedPoints:v8];
  if (v27)
  {
    v28 = [v7 copy];
    orderedAnimalKeypoints = v27->_orderedAnimalKeypoints;
    v27->_orderedAnimalKeypoints = v28;
LABEL_8:
  }

  return v27;
}

+ (id)_stringRepresentationForRequestRevision:(unint64_t)a3 petsKeypointType:(int)a4 error:(id *)a5
{
  if (a3 == 1)
  {
    v5 = *&a4;
    v6 = [objc_opt_class() supportedAnimalPoseKeypointsRev1];
    v7 = [MEMORY[0x1E696AD98] numberWithInt:v5];
    v8 = [v6 objectForKey:v7];
  }

  else if (a5)
  {
    [VNError errorForUnsupportedRevision:a3 ofRequestClass:objc_opt_class()];
    *a5 = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)supportedAnimalPoseKeypointsRev1
{
  if (+[VNRecognizedAnimalBodyPointsSpecifier supportedAnimalPoseKeypointsRev1]::onceToken != -1)
  {
    dispatch_once(&+[VNRecognizedAnimalBodyPointsSpecifier supportedAnimalPoseKeypointsRev1]::onceToken, &__block_literal_global_1032);
  }

  v3 = +[VNRecognizedAnimalBodyPointsSpecifier supportedAnimalPoseKeypointsRev1]::supportedAnimalPoseKeypointsRev1;

  return v3;
}

void __73__VNRecognizedAnimalBodyPointsSpecifier_supportedAnimalPoseKeypointsRev1__block_invoke()
{
  v3[25] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F19C0F40;
  v2[1] = &unk_1F19C0F58;
  v3[0] = @"animal_joint_left_ear_top";
  v3[1] = @"animal_joint_left_ear_middle";
  v2[2] = &unk_1F19C0F70;
  v2[3] = &unk_1F19C0F88;
  v3[2] = @"animal_joint_left_ear_bottom";
  v3[3] = @"animal_joint_right_ear_top";
  v2[4] = &unk_1F19C0FA0;
  v2[5] = &unk_1F19C0FB8;
  v3[4] = @"animal_joint_right_ear_middle";
  v3[5] = @"animal_joint_right_ear_bottom";
  v2[6] = &unk_1F19C0FD0;
  v2[7] = &unk_1F19C0FE8;
  v3[6] = @"animal_joint_left_eye";
  v3[7] = @"animal_joint_right_eye";
  v2[8] = &unk_1F19C1000;
  v2[9] = &unk_1F19C1018;
  v3[8] = @"animal_joint_nose";
  v3[9] = @"animal_joint_heck";
  v2[10] = &unk_1F19C1030;
  v2[11] = &unk_1F19C1048;
  v3[10] = @"animal_joint_left_front_elbow";
  v3[11] = @"animal_joint_left_front_knee";
  v2[12] = &unk_1F19C1060;
  v2[13] = &unk_1F19C1078;
  v3[12] = @"animal_joint_left_front_paw";
  v3[13] = @"animal_joint_right_front_elbow";
  v2[14] = &unk_1F19C1090;
  v2[15] = &unk_1F19C10A8;
  v3[14] = @"animal_joint_right_front_knee";
  v3[15] = @"animal_joint_right_front_paw";
  v2[16] = &unk_1F19C10C0;
  v2[17] = &unk_1F19C10D8;
  v3[16] = @"animal_joint_left_back_elbow";
  v3[17] = @"animal_joint_left_back_knee";
  v2[18] = &unk_1F19C10F0;
  v2[19] = &unk_1F19C1108;
  v3[18] = @"animal_joint_left_back_paw";
  v3[19] = @"animal_joint_right_back_elbow";
  v2[20] = &unk_1F19C1120;
  v2[21] = &unk_1F19C1138;
  v3[20] = @"animal_joint_right_back_knee";
  v3[21] = @"animal_joint_right_back_paw";
  v2[22] = &unk_1F19C1150;
  v2[23] = &unk_1F19C1168;
  v3[22] = @"animal_joint_tail_top";
  v3[23] = @"animal_joint_tail_middle";
  v2[24] = &unk_1F19C1180;
  v3[24] = @"animal_joint_tail_bottom";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:25];
  v1 = +[VNRecognizedAnimalBodyPointsSpecifier supportedAnimalPoseKeypointsRev1]::supportedAnimalPoseKeypointsRev1;
  +[VNRecognizedAnimalBodyPointsSpecifier supportedAnimalPoseKeypointsRev1]::supportedAnimalPoseKeypointsRev1 = v0;
}

@end