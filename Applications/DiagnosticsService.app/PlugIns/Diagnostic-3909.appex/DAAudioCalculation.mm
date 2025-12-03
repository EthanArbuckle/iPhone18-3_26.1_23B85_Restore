@interface DAAudioCalculation
+ (id)calculateCrossCorrelation:(id)correlation error:(id *)error;
@end

@implementation DAAudioCalculation

+ (id)calculateCrossCorrelation:(id)correlation error:(id *)error
{
  correlationCopy = correlation;
  [correlationCopy fileTimeInFrames];
  v7 = (v6 - [correlationCopy maximumDelay]);
  maximumDelay = [correlationCopy maximumDelay];
  v9 = maximumDelay - [correlationCopy minimumDelay];
  sourceSignal = [correlationCopy sourceSignal];
  receivedSignal = [correlationCopy receivedSignal];
  minimumDelay = [correlationCopy minimumDelay];

  v13 = &receivedSignal[4 * minimumDelay];
  v14 = malloc_type_malloc(4 * v9, 0x100004052888210uLL);
  bzero(v14, 4 * v9);
  vDSP_conv(v13, 1, sourceSignal, 1, v14, 1, v9, v7);
  __C = 0.0;
  v17 = 0;
  vDSP_maxvi(v14, 1, &__C, &v17, v9);
  free(v14);
  v15 = 0;
  if (COERCE_UNSIGNED_INT(fabs(log10f(__C) * 10.0)) <= 0x7F7FFFFF)
  {
    v15 = [NSNumber numberWithFloat:?];
  }

  if (error && !v15)
  {
    *error = [NSError errorWithDomain:@"DAAudioQualityErrorDomain" code:-62 userInfo:0];
  }

  return v15;
}

@end