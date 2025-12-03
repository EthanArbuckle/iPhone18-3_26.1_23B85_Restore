@interface LPFetcherAccessibilityEnabledImageResponse
+ (id)imagePropertiesForFetcher:(id)fetcher;
@end

@implementation LPFetcherAccessibilityEnabledImageResponse

+ (id)imagePropertiesForFetcher:(id)fetcher
{
  fetcherCopy = fetcher;
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___LPFetcherAccessibilityEnabledImageResponse;
  v5 = objc_msgSendSuper2(&v9, sel_imagePropertiesForFetcher_, fetcherCopy);
  userData = [fetcherCopy userData];
  accessibilityText = [userData accessibilityText];
  [v5 setAccessibilityText:accessibilityText];

  return v5;
}

@end