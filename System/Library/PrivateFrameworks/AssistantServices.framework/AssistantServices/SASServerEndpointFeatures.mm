@interface SASServerEndpointFeatures
- (id)ad_csASRFeatures;
@end

@implementation SASServerEndpointFeatures

- (id)ad_csASRFeatures
{
  v3 = [CSASRFeatures alloc];
  numOfWords = [(SASServerEndpointFeatures *)self numOfWords];
  trailingSilenceDuration = [(SASServerEndpointFeatures *)self trailingSilenceDuration];
  [(SASServerEndpointFeatures *)self eosLikelihood];
  v7 = v6;
  pauseCounts = [(SASServerEndpointFeatures *)self pauseCounts];
  [(SASServerEndpointFeatures *)self silenceProbability];
  v10 = v9;
  taskName = [(SASServerEndpointFeatures *)self taskName];
  v12 = [v3 initWithWordCount:numOfWords trailingSilenceDuration:trailingSilenceDuration eosLikelihood:pauseCounts pauseCounts:taskName silencePosterior:-[SASServerEndpointFeatures processedAudioDurationMs](self taskName:"processedAudioDurationMs") processedAudioDurationInMilliseconds:v7 acousticEndpointerScore:{v10, 0.0}];

  return v12;
}

@end