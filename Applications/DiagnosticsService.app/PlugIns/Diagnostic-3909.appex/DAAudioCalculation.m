@interface DAAudioCalculation
+ (id)calculateCrossCorrelation:(id)a3 error:(id *)a4;
@end

@implementation DAAudioCalculation

+ (id)calculateCrossCorrelation:(id)a3 error:(id *)a4
{
  v5 = a3;
  [v5 fileTimeInFrames];
  v7 = (v6 - [v5 maximumDelay]);
  v8 = [v5 maximumDelay];
  v9 = v8 - [v5 minimumDelay];
  v10 = [v5 sourceSignal];
  v11 = [v5 receivedSignal];
  v12 = [v5 minimumDelay];

  v13 = &v11[4 * v12];
  v14 = malloc_type_malloc(4 * v9, 0x100004052888210uLL);
  bzero(v14, 4 * v9);
  vDSP_conv(v13, 1, v10, 1, v14, 1, v9, v7);
  __C = 0.0;
  v17 = 0;
  vDSP_maxvi(v14, 1, &__C, &v17, v9);
  free(v14);
  v15 = 0;
  if (COERCE_UNSIGNED_INT(fabs(log10f(__C) * 10.0)) <= 0x7F7FFFFF)
  {
    v15 = [NSNumber numberWithFloat:?];
  }

  if (a4 && !v15)
  {
    *a4 = [NSError errorWithDomain:@"DAAudioQualityErrorDomain" code:-62 userInfo:0];
  }

  return v15;
}

@end