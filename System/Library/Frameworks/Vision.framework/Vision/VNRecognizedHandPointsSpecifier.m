@interface VNRecognizedHandPointsSpecifier
- (BOOL)isEqual:(id)a3;
- (VNRecognizedHandPointsSpecifier)initWithCoder:(id)a3;
- (VNRecognizedHandPointsSpecifier)initWithVCPHandObservation:(id)a3 originatingRequestSpecifier:(id)a4;
- (id)availableGroupKeys;
- (id)pointKeyGroupLabelsMapping;
- (id)populatedMLMultiArrayAndReturnError:(id *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VNRecognizedHandPointsSpecifier

- (VNRecognizedHandPointsSpecifier)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = VNRecognizedHandPointsSpecifier;
  v5 = [(VNRecognizedPointsSpecifier *)&v19 initWithCoder:v4];
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = objc_alloc(MEMORY[0x1E695DFD8]);
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v6 initWithObjects:{v7, v8, objc_opt_class(), 0}];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"OrderedKeypoints"];
  orderedHandKeypoints = v5->_orderedHandKeypoints;
  v5->_orderedHandKeypoints = v10;

  if (!v5->_orderedHandKeypoints)
  {
    v14 = [VNError errorForDataUnavailableWithLocalizedDescription:@"ordered keypoints are not available"];
    [v4 failWithError:v14];
    goto LABEL_9;
  }

  if ([v4 containsValueForKey:@"Chirality"])
  {
    v12 = [v4 decodeIntegerForKey:@"Chirality"];
    if ((v12 + 1) <= 2)
    {
      v5->_chirality = v12;
      goto LABEL_6;
    }

    v16 = MEMORY[0x1E696AEC0];
    v17 = [MEMORY[0x1E696AD98] numberWithInteger:v12];
    v14 = [v16 stringWithFormat:@"%@ has an invalid value of %@", @"Chirality", v17];

    v18 = [VNError errorForOutOfBoundsErrorWithLocalizedDescription:v14];
    [v4 failWithError:v18];

LABEL_9:
    v13 = 0;
    goto LABEL_10;
  }

LABEL_6:

LABEL_7:
  v13 = v5;
LABEL_10:

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = VNRecognizedHandPointsSpecifier;
  v4 = a3;
  [(VNRecognizedPointsSpecifier *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_orderedHandKeypoints forKey:{@"OrderedKeypoints", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_chirality forKey:@"Chirality"];
}

- (id)populatedMLMultiArrayAndReturnError:(id *)a3
{
  v26[3] = *MEMORY[0x1E69E9840];
  v5 = [(VNRecognizedPointsSpecifier *)self originatingRequestSpecifier];
  if ([v5 specifiesRequestClass:objc_opt_class()] && objc_msgSend(v5, "requestRevision") == 1)
  {
    v6 = [(NSArray *)self->_orderedHandKeypoints count];
    v7 = objc_alloc(MEMORY[0x1E695FED0]);
    v26[0] = &unk_1F19C19A8;
    v26[1] = &unk_1F19C19C0;
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6];
    v26[2] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:3];
    v10 = [v7 initWithShape:v9 dataType:65600 error:a3];

    if (v10)
    {
      v25 = v5;
      v11 = [v10 dataPointer];
      v12 = [v10 strides];
      v13 = [v12 objectAtIndexedSubscript:2];
      v14 = [v13 intValue];

      v24 = v12;
      v15 = [v12 objectAtIndexedSubscript:1];
      v16 = [v15 intValue];

      if (v6)
      {
        v17 = 0;
        v18 = 8 * v14;
        do
        {
          v19 = [(NSArray *)self->_orderedHandKeypoints objectAtIndex:v17];
          [v19 location];
          *v11 = v20;
          v11[v16] = v21;
          [v19 confidence];
          *&v11[2 * v16] = v22;

          ++v17;
          v11 = (v11 + v18);
        }

        while (v6 != v17);
      }

      v5 = v25;
    }
  }

  else if (a3)
  {
    [VNError errorForUnsupportedRequestSpecifier:v5];
    *a3 = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)pointKeyGroupLabelsMapping
{
  if (pointKeyGroupLabelsMapping_onceToken_30407 != -1)
  {
    dispatch_once(&pointKeyGroupLabelsMapping_onceToken_30407, &__block_literal_global_38);
  }

  v3 = pointKeyGroupLabelsMapping_groupKeys;

  return v3;
}

void __61__VNRecognizedHandPointsSpecifier_pointKeyGroupLabelsMapping__block_invoke()
{
  v8[5] = *MEMORY[0x1E69E9840];
  v7[0] = @"VNHLRKT";
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"VNHLKTCMC", @"VNHLKTMP", @"VNHLKTIP", @"VNHLKTTIP", 0}];
  v8[0] = v0;
  v7[1] = @"VNHLRKM";
  v1 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"VNHLKMMCP", @"VNHLKMPIP", @"VNHLKMDIP", @"VNHLKMTIP", 0}];
  v8[1] = v1;
  v7[2] = @"VNHLRKI";
  v2 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"VNHLKIMCP", @"VNHLKIPIP", @"VNHLKIDIP", @"VNHLKITIP", 0}];
  v8[2] = v2;
  v7[3] = @"VNHLRKR";
  v3 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"VNHLKRMCP", @"VNHLKRPIP", @"VNHLKRDIP", @"VNHLKRTIP", 0}];
  v8[3] = v3;
  v7[4] = @"VNHLRKP";
  v4 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"VNHLKPMCP", @"VNHLKPPIP", @"VNHLKPDIP", @"VNHLKPTIP", 0}];
  v8[4] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:5];
  v6 = pointKeyGroupLabelsMapping_groupKeys;
  pointKeyGroupLabelsMapping_groupKeys = v5;
}

- (id)availableGroupKeys
{
  if (availableGroupKeys_onceToken_30409 != -1)
  {
    dispatch_once(&availableGroupKeys_onceToken_30409, &__block_literal_global_30410);
  }

  v3 = availableGroupKeys_groupKeys_30411;

  return v3;
}

void __53__VNRecognizedHandPointsSpecifier_availableGroupKeys__block_invoke()
{
  v2[6] = *MEMORY[0x1E69E9840];
  v2[0] = @"VNHLRKT";
  v2[1] = @"VNHLRKM";
  v2[2] = @"VNHLRKI";
  v2[3] = @"VNHLRKR";
  v2[4] = @"VNHLRKP";
  v2[5] = @"VNIPOAll";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:6];
  v1 = availableGroupKeys_groupKeys_30411;
  availableGroupKeys_groupKeys_30411 = v0;
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
    v7.super_class = VNRecognizedHandPointsSpecifier;
    v5 = [(VNRecognizedPointsSpecifier *)&v7 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(NSArray *)self->_orderedHandKeypoints isEqualToArray:v4->_orderedHandKeypoints];
  }

  return v5;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = VNRecognizedHandPointsSpecifier;
  return [(NSArray *)self->_orderedHandKeypoints hash]^ __ROR8__([(VNRecognizedPointsSpecifier *)&v3 hash], 51);
}

- (VNRecognizedHandPointsSpecifier)initWithVCPHandObservation:(id)a3 originatingRequestSpecifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  v35 = v5;
  v7 = [v5 keypoints];
  v8 = [v7 count];
  v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v8];
  v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v8];
  v11 = [v6 requestRevision];
  if (v8)
  {
    v12 = v11;
    for (i = 0; i != v8; ++i)
    {
      v14 = [v7 objectAtIndex:i];
      [v14 location];
      v16 = v15;
      v18 = v17;
      [v14 confidence];
      v20 = v19;
      if (v12 == 1 && i <= 0x14 && (v21 = *off_1E77B5770[i & 0x1F]) != 0)
      {
        v22 = v21;
        v23 = [VNRecognizedPoint alloc];
        LODWORD(v24) = v20;
        v25 = [(VNRecognizedPoint *)v23 initWithLocation:v22 confidence:v16 identifier:v18, v24];
        [v9 addObject:v25];
        [v10 setObject:v25 forKey:v22];
      }

      else
      {
        v26 = [VNDetectedPoint alloc];
        LODWORD(v27) = v20;
        v22 = [(VNDetectedPoint *)v26 initWithLocation:v16 confidence:v18, v27];
        [v9 addObject:v22];
      }
    }
  }

  v36.receiver = self;
  v36.super_class = VNRecognizedHandPointsSpecifier;
  v28 = [(VNRecognizedPointsSpecifier *)&v36 initWithOriginatingRequestSpecifier:v6 allRecognizedPoints:v10];
  if (v28)
  {
    v29 = [v9 copy];
    orderedHandKeypoints = v28->_orderedHandKeypoints;
    v28->_orderedHandKeypoints = v29;

    if (objc_opt_respondsToSelector())
    {
      v31 = [v35 chirality];
      if (v31 == -1)
      {
        v32 = -1;
        goto LABEL_15;
      }

      if (v31 == 1)
      {
        v32 = 1;
LABEL_15:
        v28->_chirality = v32;
      }
    }
  }

  return v28;
}

@end