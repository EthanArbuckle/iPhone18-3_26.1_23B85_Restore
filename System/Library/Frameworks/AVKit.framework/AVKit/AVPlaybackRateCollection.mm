@interface AVPlaybackRateCollection
+ (AVPlaybackRateCollection)collectionWithDefaultRates;
@end

@implementation AVPlaybackRateCollection

+ (AVPlaybackRateCollection)collectionWithDefaultRates
{
  v2 = +[(AVPlaybackSpeed *)AVPlaybackRate];
  v3 = [(AVPlaybackSpeedCollection *)AVPlaybackRateCollection collectionWithSpeeds:v2];

  return v3;
}

@end