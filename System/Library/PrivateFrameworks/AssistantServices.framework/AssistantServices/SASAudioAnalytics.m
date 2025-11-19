@interface SASAudioAnalytics
@end

@implementation SASAudioAnalytics

void __54__SASAudioAnalytics_AudioAnalytics__af_audioAnalytics__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 af_acousticFeature];
  [v4 setObject:v6 forKey:v5];
}

@end