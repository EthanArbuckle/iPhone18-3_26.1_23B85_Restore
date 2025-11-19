@interface VisionCoreLabeledConfidencesDescriptor
@end

@implementation VisionCoreLabeledConfidencesDescriptor

uint64_t __168__VisionCoreLabeledConfidencesDescriptor_VNInternalAdditions__newClassificationObservationsFromOutputObjects_originatingRequestSpecifier_operationPointsProvider_error___block_invoke(uint64_t a1, uint64_t a2, float a3, uint64_t a4, uint64_t a5)
{
  v8 = [*(a1 + 32) objectAtIndex:a2];
  v9 = *(a1 + 40);
  if (v9)
  {
    v17 = 0;
    v10 = [v9 getClassificationMetrics:&v17 forClassificationIdentifier:v8 error:a5];
    v11 = v17;
    if (!v10)
    {
      v12 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v11 = 0;
  }

  v13 = [VNClassificationObservation alloc];
  *&v14 = a3;
  v15 = [(VNClassificationObservation *)v13 initWithOriginatingRequestSpecifier:*(a1 + 48) identifier:v8 confidence:v11 classificationMetrics:v14];
  if (v15)
  {
    [*(a1 + 56) addObject:v15];
  }

  v12 = 1;
LABEL_8:

  return v12;
}

@end