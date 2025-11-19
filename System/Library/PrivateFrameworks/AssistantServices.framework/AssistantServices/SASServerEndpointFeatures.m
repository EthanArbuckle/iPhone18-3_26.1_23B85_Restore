@interface SASServerEndpointFeatures
- (id)ad_csASRFeatures;
@end

@implementation SASServerEndpointFeatures

- (id)ad_csASRFeatures
{
  v3 = [CSASRFeatures alloc];
  v4 = [(SASServerEndpointFeatures *)self numOfWords];
  v5 = [(SASServerEndpointFeatures *)self trailingSilenceDuration];
  [(SASServerEndpointFeatures *)self eosLikelihood];
  v7 = v6;
  v8 = [(SASServerEndpointFeatures *)self pauseCounts];
  [(SASServerEndpointFeatures *)self silenceProbability];
  v10 = v9;
  v11 = [(SASServerEndpointFeatures *)self taskName];
  v12 = [v3 initWithWordCount:v4 trailingSilenceDuration:v5 eosLikelihood:v8 pauseCounts:v11 silencePosterior:-[SASServerEndpointFeatures processedAudioDurationMs](self taskName:"processedAudioDurationMs") processedAudioDurationInMilliseconds:v7 acousticEndpointerScore:{v10, 0.0}];

  return v12;
}

@end