@interface LPFetcherAccessibilityEnabledAudioResponse
+ (id)audioPropertiesForFetcher:(id)fetcher;
@end

@implementation LPFetcherAccessibilityEnabledAudioResponse

+ (id)audioPropertiesForFetcher:(id)fetcher
{
  fetcherCopy = fetcher;
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___LPFetcherAccessibilityEnabledAudioResponse;
  v5 = objc_msgSendSuper2(&v9, sel_audioPropertiesForFetcher_, fetcherCopy);
  userData = [fetcherCopy userData];
  accessibilityText = [userData accessibilityText];
  [v5 setAccessibilityText:accessibilityText];

  return v5;
}

@end