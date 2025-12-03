@interface LPFetcherAccessibilityEnabledARAssetResponse
+ (id)arAssetPropertiesForFetcher:(id)fetcher;
@end

@implementation LPFetcherAccessibilityEnabledARAssetResponse

+ (id)arAssetPropertiesForFetcher:(id)fetcher
{
  fetcherCopy = fetcher;
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___LPFetcherAccessibilityEnabledARAssetResponse;
  v5 = objc_msgSendSuper2(&v9, sel_arAssetPropertiesForFetcher_, fetcherCopy);
  userData = [fetcherCopy userData];
  accessibilityText = [userData accessibilityText];
  [v5 setAccessibilityText:accessibilityText];

  return v5;
}

@end