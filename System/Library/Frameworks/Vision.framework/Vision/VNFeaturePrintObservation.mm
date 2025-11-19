@interface VNFeaturePrintObservation
- (BOOL)computeDistance:(float *)outDistance toFeaturePrintObservation:(VNFeaturePrintObservation *)featurePrint error:(NSError *)error;
- (NSData)data;
- (float)computeDistanceToFeaturePrintObservation:(id)a3 error:(id *)a4;
@end

@implementation VNFeaturePrintObservation

- (float)computeDistanceToFeaturePrintObservation:(id)a3 error:(id *)a4
{
  v5 = NAN;
  [(VNFeaturePrintObservation *)self computeDistance:&v5 toFeaturePrintObservation:a3 error:a4];
  return v5;
}

- (BOOL)computeDistance:(float *)outDistance toFeaturePrintObservation:(VNFeaturePrintObservation *)featurePrint error:(NSError *)error
{
  v8 = featurePrint;
  __C = NAN;
  v9 = [(VNObservation *)self requestRevision];
  if (v9 == [(VNObservation *)v8 requestRevision])
  {
    v10 = [(VNFeaturePrintObservation *)self data];
    v11 = [v10 length];
    v12 = [(VNFeaturePrintObservation *)self elementCount];
    v13 = [(VNFeaturePrintObservation *)v8 data];
    v14 = [v13 length];
    v15 = [(VNFeaturePrintObservation *)self elementType];
    if (v15 == [(VNFeaturePrintObservation *)v8 elementType]&& [(VNFeaturePrintObservation *)self elementType]== VNElementTypeFloat && v12 == [(VNFeaturePrintObservation *)v8 elementCount]&& v11 == v14)
    {
      v16 = [v10 bytes];
      v17 = [v13 bytes];
      if (v16 && v17)
      {
        vDSP_distancesq(v16, 1, v17, 1, &__C, v12);
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