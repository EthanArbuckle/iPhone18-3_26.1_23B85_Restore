@interface LPFetcherAccessibilityEnabledVideoResponse
+ (id)videoPropertiesForFetcher:(id)fetcher;
@end

@implementation LPFetcherAccessibilityEnabledVideoResponse

+ (id)videoPropertiesForFetcher:(id)fetcher
{
  fetcherCopy = fetcher;
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___LPFetcherAccessibilityEnabledVideoResponse;
  v5 = objc_msgSendSuper2(&v9, sel_videoPropertiesForFetcher_, fetcherCopy);
  userData = [fetcherCopy userData];
  accessibilityText = [userData accessibilityText];
  [v5 setAccessibilityText:accessibilityText];

  return v5;
}

@end