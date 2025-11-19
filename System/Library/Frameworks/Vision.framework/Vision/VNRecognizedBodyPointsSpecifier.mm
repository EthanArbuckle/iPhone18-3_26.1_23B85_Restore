@interface VNRecognizedBodyPointsSpecifier
- (BOOL)isEqual:(id)a3;
- (VNRecognizedBodyPointsSpecifier)initWithCoder:(id)a3;
- (VNRecognizedBodyPointsSpecifier)initWithVCPPersonObservation:(id)a3 originatingRequestSpecifier:(id)a4;
- (id)availableGroupKeys;
- (id)pointKeyGroupLabelsMapping;
- (id)populatedMLMultiArrayAndReturnError:(id *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VNRecognizedBodyPointsSpecifier

- (VNRecognizedBodyPointsSpecifier)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = VNRecognizedBodyPointsSpecifier;
  v5 = [(VNRecognizedPointsSpecifier *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E695DFD8]);
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 initWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"OrderedKeypoints"];
    orderedPersonKeypoints = v5->_orderedPersonKeypoints;
    v5->_orderedPersonKeypoints = v10;

    if (!v5->_orderedPersonKeypoints)
    {
      v13 = [VNError errorForDataUnavailableWithLocalizedDescription:@"ordered keypoints are not available"];
      [v4 failWithError:v13];

      v12 = 0;
      goto LABEL_6;
    }
  }

  v12 = v5;
LABEL_6:

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = VNRecognizedBodyPointsSpecifier;
  v4 = a3;
  [(VNRecognizedPointsSpecifier *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_orderedPersonKeypoints forKey:{@"OrderedKeypoints", v5.receiver, v5.super_class}];
}

- (id)populatedMLMultiArrayAndReturnError:(id *)a3
{
  v44[3] = *MEMORY[0x1E69E9840];
  v5 = [(VNRecognizedPointsSpecifier *)self originatingRequestSpecifier];
  v6 = [v5 requestRevision];
  if (v6 == 3737841664 || v6 == 1)
  {
    v8 = [(NSArray *)self->_orderedPersonKeypoints count];
    v9 = objc_alloc(MEMORY[0x1E695FED0]);
    v44[0] = &unk_1F19C0E80;
    v44[1] = &unk_1F19C0E98;
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8 + 1];
    v44[2] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:3];
    v12 = [v9 initWithShape:v11 dataType:65600 error:a3];

    if (v12)
    {
      v41 = a3;
      v43 = v5;
      v13 = [v12 dataPointer];
      v14 = [v12 strides];
      v15 = [v14 objectAtIndexedSubscript:2];
      v16 = [v15 intValue];

      v42 = v14;
      v17 = [v14 objectAtIndexedSubscript:1];
      v18 = [v17 intValue];

      v19 = v16;
      if (v8)
      {
        v20 = 0;
        v21 = 0.0;
        v22 = 3.40282347e38;
        v23 = 0.0;
        while (2)
        {
          v24 = [(NSArray *)self->_orderedPersonKeypoints objectAtIndex:v20];
          [v24 location];
          v26 = v25;
          v28 = v27;
          [v24 confidence];
          v30 = v29;
          v31 = v20;
          switch(v20)
          {
            case 0:
              goto LABEL_30;
            case 1:
              v31 = 15;
              goto LABEL_30;
            case 2:
              v31 = 14;
              goto LABEL_30;
            case 3:
              v31 = 17;
              goto LABEL_30;
            case 4:
              v31 = 16;
              goto LABEL_30;
            case 5:
              if (v22 > v30)
              {
                v22 = v30;
              }

              v21 = v21 + v26;
              v23 = v23 + v28;
              v31 = 5;
              goto LABEL_30;
            case 6:
              if (v22 > v30)
              {
                v22 = v30;
              }

              v21 = v21 + v26;
              v23 = v23 + v28;
              v31 = 2;
              goto LABEL_30;
            case 7:
              v31 = 6;
              goto LABEL_30;
            case 8:
              v31 = 3;
              goto LABEL_30;
            case 9:
              v31 = 7;
              goto LABEL_30;
            case 10:
              v31 = 4;
              goto LABEL_30;
            case 11:
              v31 = 11;
              goto LABEL_30;
            case 12:
              v31 = 8;
              goto LABEL_30;
            case 13:
              v31 = 12;
              goto LABEL_30;
            case 14:
              v31 = 9;
              goto LABEL_30;
            case 15:
              v31 = 13;
              goto LABEL_30;
            case 16:
              v31 = 10;
LABEL_30:
              v32 = (v13 + 8 * v31 * v19);
              *v32 = v26;
              v32[v18] = v28;
              v32[2 * v18] = v30;

              if (v8 != ++v20)
              {
                continue;
              }

              v33 = v21 * 0.5;
              v34 = v23 * 0.5;
              break;
            default:
              if (v41)
              {
                v38 = MEMORY[0x1E696AEC0];
                v39 = [MEMORY[0x1E696AD98] numberWithInt:{v20, v30}];
                v40 = [v38 stringWithFormat:@"unexpected keypoint type %@", v39];

                *v41 = [VNError errorForOperationFailedErrorWithLocalizedDescription:v40];
              }

              v35 = 0;
              goto LABEL_37;
          }

          break;
        }
      }

      else
      {
        v34 = 0.0;
        v22 = 3.40282347e38;
        v33 = 0.0;
      }

      v36 = (v13 + 8 * v19);
      *v36 = v33;
      v36[v18] = v34;
      v36[2 * v18] = v22;
      v35 = v12;
LABEL_37:
      v5 = v43;
    }

    else
    {
      v35 = 0;
    }
  }

  else if (a3)
  {
    [VNError errorForUnsupportedRequestSpecifier:v5];
    *a3 = v35 = 0;
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

- (id)pointKeyGroupLabelsMapping
{
  if (pointKeyGroupLabelsMapping_onceToken != -1)
  {
    dispatch_once(&pointKeyGroupLabelsMapping_onceToken, &__block_literal_global_36);
  }

  v3 = pointKeyGroupLabelsMapping_mapping;

  return v3;
}

void __61__VNRecognizedBodyPointsSpecifier_pointKeyGroupLabelsMapping__block_invoke()
{
  v9[6] = *MEMORY[0x1E69E9840];
  v8[0] = @"VNBLKFACE";
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"head_joint", @"left_eye_joint", @"right_eye_joint", @"left_ear_joint", @"right_ear_joint", 0}];
  v9[0] = v0;
  v8[1] = @"VNBLKTORSO";
  v1 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"left_shoulder_1_joint", @"right_shoulder_1_joint", @"neck_1_joint", @"left_upLeg_joint", @"right_upLeg_joint", @"root", 0}];
  v9[1] = v1;
  v8[2] = @"VNBLKLARM";
  v2 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"left_shoulder_1_joint", @"left_forearm_joint", @"left_hand_joint", 0}];
  v9[2] = v2;
  v8[3] = @"VNBLKRARM";
  v3 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"right_shoulder_1_joint", @"right_forearm_joint", @"right_hand_joint", 0}];
  v9[3] = v3;
  v8[4] = @"VNBLKLLEG";
  v4 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"left_upLeg_joint", @"left_leg_joint", @"left_foot_joint", 0}];
  v9[4] = v4;
  v8[5] = @"VNBLKRLEG";
  v5 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"right_upLeg_joint", @"right_leg_joint", @"right_foot_joint", 0}];
  v9[5] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:6];
  v7 = pointKeyGroupLabelsMapping_mapping;
  pointKeyGroupLabelsMapping_mapping = v6;
}

- (id)availableGroupKeys
{
  if (availableGroupKeys_onceToken != -1)
  {
    dispatch_once(&availableGroupKeys_onceToken, &__block_literal_global_1);
  }

  v3 = availableGroupKeys_groupKeys;

  return v3;
}

void __53__VNRecognizedBodyPointsSpecifier_availableGroupKeys__block_invoke()
{
  v2[7] = *MEMORY[0x1E69E9840];
  v2[0] = @"VNBLKFACE";
  v2[1] = @"VNBLKTORSO";
  v2[2] = @"VNBLKLARM";
  v2[3] = @"VNBLKRARM";
  v2[4] = @"VNBLKLLEG";
  v2[5] = @"VNBLKRLEG";
  v2[6] = @"VNIPOAll";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:7];
  v1 = availableGroupKeys_groupKeys;
  availableGroupKeys_groupKeys = v0;
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
    v7.super_class = VNRecognizedBodyPointsSpecifier;
    v5 = [(VNRecognizedPointsSpecifier *)&v7 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(NSArray *)self->_orderedPersonKeypoints isEqualToArray:v4->_orderedPersonKeypoints];
  }

  return v5;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = VNRecognizedBodyPointsSpecifier;
  return [(NSArray *)self->_orderedPersonKeypoints hash]^ __ROR8__([(VNRecognizedPointsSpecifier *)&v3 hash], 51);
}

- (VNRecognizedBodyPointsSpecifier)initWithVCPPersonObservation:(id)a3 originatingRequestSpecifier:(id)a4
{
  v6 = a4;
  v7 = [a3 keypoints];
  v8 = [v7 count];
  v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v8];
  v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v8 + 2];
  v12 = *MEMORY[0x1E695EFF8];
  v11 = *(MEMORY[0x1E695EFF8] + 8);
  v13 = [v6 requestRevision];
  if (v8)
  {
    v14 = v13;
    v48 = v10;
    v43 = self;
    v44 = v6;
    v46 = 0;
    v49 = 0;
    v15 = 0;
    v45 = 0.0;
    v47 = v12;
    v16 = v11;
    v17 = 0.0;
    do
    {
      v18 = [v7 objectAtIndex:{v15, v43, v44}];
      [v18 location];
      v20 = v19;
      v22 = v21;
      [v18 confidence];
      v24 = fminf(v23, 1.0);
      if ((v14 == 3737841664 || v14 == 1) && v15 <= 0x10 && (v25 = *off_1E77B1010[v15 & 0x1F]) != 0)
      {
        v26 = v25;
        if (([(__CFString *)v25 isEqualToString:@"left_upLeg_joint"]& 1) != 0 || [(VNDetectedPoint *)v26 isEqualToString:@"right_upLeg_joint"])
        {
          v12 = v12 + v20;
          v16 = v16 + v22;
          v17 = v17 + v24;
          ++v49;
        }

        else if (([(VNDetectedPoint *)v26 isEqualToString:@"left_shoulder_1_joint"]& 1) != 0 || [(VNDetectedPoint *)v26 isEqualToString:@"right_shoulder_1_joint"])
        {
          v47 = v47 + v20;
          v11 = v11 + v22;
          v45 = v45 + v24;
          ++v46;
        }

        v27 = [VNRecognizedPoint alloc];
        *&v28 = v24;
        v29 = [(VNRecognizedPoint *)v27 initWithLocation:v26 confidence:v20 identifier:v22, v28];
        [v48 setObject:v29 forKey:v26];
        [v9 addObject:v29];
      }

      else
      {
        v30 = [VNDetectedPoint alloc];
        *&v31 = v24;
        v26 = [(VNDetectedPoint *)v30 initWithLocation:v20 confidence:v22, v31];
        [v9 addObject:v26];
      }

      ++v15;
    }

    while (v8 != v15);
    if (v49 == 2)
    {
      v32 = [VNRecognizedPoint alloc];
      *&v33 = v17 * 0.5;
      v34 = [(VNRecognizedPoint *)v32 initWithLocation:@"root" confidence:v12 * 0.5 identifier:v16 * 0.5, v33];
      v10 = v48;
      [v48 setObject:v34 forKey:@"root"];

      v35 = v46 == 2;
      self = v43;
      v6 = v44;
    }

    else
    {
      v35 = v46 == 2;
      self = v43;
      v6 = v44;
      v10 = v48;
    }

    if (v35)
    {
      v36 = [VNRecognizedPoint alloc];
      *&v37 = v45 * 0.5;
      v38 = [(VNRecognizedPoint *)v36 initWithLocation:@"neck_1_joint" confidence:v47 * 0.5 identifier:v11 * 0.5, v37];
      [v10 setObject:v38 forKey:@"neck_1_joint"];
    }
  }

  v50.receiver = self;
  v50.super_class = VNRecognizedBodyPointsSpecifier;
  v39 = [(VNRecognizedPointsSpecifier *)&v50 initWithOriginatingRequestSpecifier:v6 allRecognizedPoints:v10];
  if (v39)
  {
    v40 = [v9 copy];
    orderedPersonKeypoints = v39->_orderedPersonKeypoints;
    v39->_orderedPersonKeypoints = v40;
  }

  return v39;
}

@end