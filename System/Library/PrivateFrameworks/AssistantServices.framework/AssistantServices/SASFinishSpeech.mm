@interface SASFinishSpeech
- (void)ad_setAFEndpointMode:(int64_t)mode;
- (void)ad_setCSEndpointerMetrics:(id)metrics;
@end

@implementation SASFinishSpeech

- (void)ad_setCSEndpointerMetrics:(id)metrics
{
  if (metrics)
  {
    metricsCopy = metrics;
    featuresAtEndpoint = [metricsCopy featuresAtEndpoint];
    [(SASFinishSpeech *)self setFeaturesAtEndpoint:featuresAtEndpoint];

    asrFeatureLatencyDistribution = [metricsCopy asrFeatureLatencyDistribution];
    [(SASFinishSpeech *)self setServerFeatureLatencyDistribution:asrFeatureLatencyDistribution];

    [metricsCopy totalAudioRecorded];
    v8 = v7;

    [(SASFinishSpeech *)self setTotalAudioRecorded:v8];
  }
}

- (void)ad_setAFEndpointMode:(int64_t)mode
{
  if ((mode - 1) > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = **(&off_10051D970 + mode - 1);
  }

  v5 = v4;
  [(SASFinishSpeech *)self setEndpoint:v4];
}

@end