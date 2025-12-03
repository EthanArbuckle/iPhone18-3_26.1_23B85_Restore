@interface VisionCoreLabeledConfidencesDescriptor(VNInternalAdditions)
- (uint64_t)newClassificationObservationsFromTensorData:()VNInternalAdditions originatingRequestSpecifier:operationPointsProvider:error:;
- (void)newClassificationObservationsFromOutputObjects:()VNInternalAdditions originatingRequestSpecifier:operationPointsProvider:error:;
@end

@implementation VisionCoreLabeledConfidencesDescriptor(VNInternalAdditions)

- (uint64_t)newClassificationObservationsFromTensorData:()VNInternalAdditions originatingRequestSpecifier:operationPointsProvider:error:
{
  v10 = MEMORY[0x1E69DF948];
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v10 alloc];
  name = [self name];
  v16 = [v14 initWithNamedObjects:{name, v13, 0}];

  v17 = [self newClassificationObservationsFromOutputObjects:v16 originatingRequestSpecifier:v12 operationPointsProvider:v11 error:a6];
  return v17;
}

- (void)newClassificationObservationsFromOutputObjects:()VNInternalAdditions originatingRequestSpecifier:operationPointsProvider:error:
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (v12)
  {
    v14 = [v12 operationPointsAndReturnError:a6];
    if (!v14)
    {
      a6 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v14 = 0;
  }

  shape = [self shape];
  elementCount = [shape elementCount];
  labels = [self labels];
  if ([labels count] == elementCount)
  {
    validLabelIndexes = [self validLabelIndexes];
    v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(validLabelIndexes, "count")}];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __168__VisionCoreLabeledConfidencesDescriptor_VNInternalAdditions__newClassificationObservationsFromOutputObjects_originatingRequestSpecifier_operationPointsProvider_error___block_invoke;
    aBlock[3] = &unk_1E77B4978;
    v26 = labels;
    v27 = v14;
    v24 = v11;
    v28 = v11;
    v20 = v19;
    v29 = v20;
    v21 = _Block_copy(aBlock);
    if ([v10 VNEnumerateFloatValuesAtIndexes:validLabelIndexes asTensor:self usingBlock:v21 error:a6])
    {
      a6 = v20;
    }

    else
    {
      a6 = 0;
    }

    v11 = v24;
  }

  else if (a6)
  {
    v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Tensor with %lu elements does not align with %lu labels", elementCount, objc_msgSend(labels, "count")];
    *a6 = [VNError errorForInternalErrorWithLocalizedDescription:v22];

    a6 = 0;
  }

LABEL_13:
  return a6;
}

@end