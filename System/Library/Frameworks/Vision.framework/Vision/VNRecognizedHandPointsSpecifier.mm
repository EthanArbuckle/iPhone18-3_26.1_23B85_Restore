@interface VNRecognizedHandPointsSpecifier
- (BOOL)isEqual:(id)equal;
- (VNRecognizedHandPointsSpecifier)initWithCoder:(id)coder;
- (VNRecognizedHandPointsSpecifier)initWithVCPHandObservation:(id)observation originatingRequestSpecifier:(id)specifier;
- (id)availableGroupKeys;
- (id)pointKeyGroupLabelsMapping;
- (id)populatedMLMultiArrayAndReturnError:(id *)error;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNRecognizedHandPointsSpecifier

- (VNRecognizedHandPointsSpecifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = VNRecognizedHandPointsSpecifier;
  v5 = [(VNRecognizedPointsSpecifier *)&v19 initWithCoder:coderCopy];
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = objc_alloc(MEMORY[0x1E695DFD8]);
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v6 initWithObjects:{v7, v8, objc_opt_class(), 0}];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"OrderedKeypoints"];
  orderedHandKeypoints = v5->_orderedHandKeypoints;
  v5->_orderedHandKeypoints = v10;

  if (!v5->_orderedHandKeypoints)
  {
    v14 = [VNError errorForDataUnavailableWithLocalizedDescription:@"ordered keypoints are not available"];
    [coderCopy failWithError:v14];
    goto LABEL_9;
  }

  if ([coderCopy containsValueForKey:@"Chirality"])
  {
    v12 = [coderCopy decodeIntegerForKey:@"Chirality"];
    if ((v12 + 1) <= 2)
    {
      v5->_chirality = v12;
      goto LABEL_6;
    }

    v16 = MEMORY[0x1E696AEC0];
    v17 = [MEMORY[0x1E696AD98] numberWithInteger:v12];
    v14 = [v16 stringWithFormat:@"%@ has an invalid value of %@", @"Chirality", v17];

    v18 = [VNError errorForOutOfBoundsErrorWithLocalizedDescription:v14];
    [coderCopy failWithError:v18];

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

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = VNRecognizedHandPointsSpecifier;
  coderCopy = coder;
  [(VNRecognizedPointsSpecifier *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_orderedHandKeypoints forKey:{@"OrderedKeypoints", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_chirality forKey:@"Chirality"];
}

- (id)populatedMLMultiArrayAndReturnError:(id *)error
{
  v26[3] = *MEMORY[0x1E69E9840];
  originatingRequestSpecifier = [(VNRecognizedPointsSpecifier *)self originatingRequestSpecifier];
  if ([originatingRequestSpecifier specifiesRequestClass:objc_opt_class()] && objc_msgSend(originatingRequestSpecifier, "requestRevision") == 1)
  {
    v6 = [(NSArray *)self->_orderedHandKeypoints count];
    v7 = objc_alloc(MEMORY[0x1E695FED0]);
    v26[0] = &unk_1F19C19A8;
    v26[1] = &unk_1F19C19C0;
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6];
    v26[2] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:3];
    v10 = [v7 initWithShape:v9 dataType:65600 error:error];

    if (v10)
    {
      v25 = originatingRequestSpecifier;
      dataPointer = [v10 dataPointer];
      strides = [v10 strides];
      v13 = [strides objectAtIndexedSubscript:2];
      intValue = [v13 intValue];

      v24 = strides;
      v15 = [strides objectAtIndexedSubscript:1];
      intValue2 = [v15 intValue];

      if (v6)
      {
        v17 = 0;
        v18 = 8 * intValue;
        do
        {
          v19 = [(NSArray *)self->_orderedHandKeypoints objectAtIndex:v17];
          [v19 location];
          *dataPointer = v20;
          dataPointer[intValue2] = v21;
          [v19 confidence];
          *&dataPointer[2 * intValue2] = v22;

          ++v17;
          dataPointer = (dataPointer + v18);
        }

        while (v6 != v17);
      }

      originatingRequestSpecifier = v25;
    }
  }

  else if (error)
  {
    [VNError errorForUnsupportedRequestSpecifier:originatingRequestSpecifier];
    *error = v10 = 0;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = VNRecognizedHandPointsSpecifier;
    v5 = [(VNRecognizedPointsSpecifier *)&v7 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(NSArray *)self->_orderedHandKeypoints isEqualToArray:equalCopy->_orderedHandKeypoints];
  }

  return v5;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = VNRecognizedHandPointsSpecifier;
  return [(NSArray *)self->_orderedHandKeypoints hash]^ __ROR8__([(VNRecognizedPointsSpecifier *)&v3 hash], 51);
}

- (VNRecognizedHandPointsSpecifier)initWithVCPHandObservation:(id)observation originatingRequestSpecifier:(id)specifier
{
  observationCopy = observation;
  specifierCopy = specifier;
  v35 = observationCopy;
  keypoints = [observationCopy keypoints];
  v8 = [keypoints count];
  v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v8];
  v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v8];
  requestRevision = [specifierCopy requestRevision];
  if (v8)
  {
    v12 = requestRevision;
    for (i = 0; i != v8; ++i)
    {
      v14 = [keypoints objectAtIndex:i];
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
  v28 = [(VNRecognizedPointsSpecifier *)&v36 initWithOriginatingRequestSpecifier:specifierCopy allRecognizedPoints:v10];
  if (v28)
  {
    v29 = [v9 copy];
    orderedHandKeypoints = v28->_orderedHandKeypoints;
    v28->_orderedHandKeypoints = v29;

    if (objc_opt_respondsToSelector())
    {
      chirality = [v35 chirality];
      if (chirality == -1)
      {
        v32 = -1;
        goto LABEL_15;
      }

      if (chirality == 1)
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