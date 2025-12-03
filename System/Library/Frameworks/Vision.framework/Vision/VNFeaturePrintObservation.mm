@interface VNFeaturePrintObservation
- (BOOL)computeDistance:(float *)outDistance toFeaturePrintObservation:(VNFeaturePrintObservation *)featurePrint error:(NSError *)error;
- (NSData)data;
- (float)computeDistanceToFeaturePrintObservation:(id)observation error:(id *)error;
@end

@implementation VNFeaturePrintObservation

- (float)computeDistanceToFeaturePrintObservation:(id)observation error:(id *)error
{
  v5 = NAN;
  [(VNFeaturePrintObservation *)self computeDistance:&v5 toFeaturePrintObservation:observation error:error];
  return v5;
}

- (BOOL)computeDistance:(float *)outDistance toFeaturePrintObservation:(VNFeaturePrintObservation *)featurePrint error:(NSError *)error
{
  v8 = featurePrint;
  __C = NAN;
  requestRevision = [(VNObservation *)self requestRevision];
  if (requestRevision == [(VNObservation *)v8 requestRevision])
  {
    data = [(VNFeaturePrintObservation *)self data];
    v11 = [data length];
    elementCount = [(VNFeaturePrintObservation *)self elementCount];
    data2 = [(VNFeaturePrintObservation *)v8 data];
    v14 = [data2 length];
    elementType = [(VNFeaturePrintObservation *)self elementType];
    if (elementType == [(VNFeaturePrintObservation *)v8 elementType]&& [(VNFeaturePrintObservation *)self elementType]== VNElementTypeFloat && elementCount == [(VNFeaturePrintObservation *)v8 elementCount]&& v11 == v14)
    {
      bytes = [data bytes];
      bytes2 = [data2 bytes];
      if (bytes && bytes2)
      {
        vDSP_distancesq(bytes, 1, bytes2, 1, &__C, elementCount);
        v18 = sqrtf(__C);
        __C = v18;
        if (outDistance)
        {
          *outDistance = v18;
        }

        v19 = 1;
        goto LABEL_20;
      }

      if (error)
      {
        v20 = [VNError errorForUnknownErrorWithLocalizedDescription:@"One or more of the feature prints are empty"];
        goto LABEL_15;
      }
    }

    else if (error)
    {
      v20 = [VNError errorWithCode:12 message:@"The observations do not have a feature print that match each others format"];
LABEL_15:
      v19 = 0;
      *error = v20;
LABEL_20:

      goto LABEL_21;
    }

    v19 = 0;
    goto LABEL_20;
  }

  if (error)
  {
    [VNError errorWithCode:12 message:@"The revision of the observations do not match"];
    *error = v19 = 0;
  }

  else
  {
    v19 = 0;
  }

LABEL_21:

  return v19;
}

- (NSData)data
{
  v2 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:0 length:0];

  return v2;
}

@end