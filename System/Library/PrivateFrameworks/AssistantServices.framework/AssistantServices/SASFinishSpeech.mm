@interface SASFinishSpeech
- (void)ad_setAFEndpointMode:(int64_t)a3;
- (void)ad_setCSEndpointerMetrics:(id)a3;
@end

@implementation SASFinishSpeech

- (void)ad_setCSEndpointerMetrics:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [v4 featuresAtEndpoint];
    [(SASFinishSpeech *)self setFeaturesAtEndpoint:v5];

    v6 = [v4 asrFeatureLatencyDistribution];
    [(SASFinishSpeech *)self setServerFeatureLatencyDistribution:v6];

    [v4 totalAudioRecorded];
    v8 = v7;

    [(SASFinishSpeech *)self setTotalAudioRecorded:v8];
  }
}

- (void)ad_setAFEndpointMode:(int64_t)a3
{
  if ((a3 - 1) > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = **(&off_10051D970 + a3 - 1);
  }

  v5 = v4;
  [(SASFinishSpeech *)self setEndpoint:v4];
}

@end