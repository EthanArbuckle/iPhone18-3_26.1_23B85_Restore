@interface LPFetcherAccessibilityEnabledARAssetResponse
+ (id)arAssetPropertiesForFetcher:(id)a3;
@end

@implementation LPFetcherAccessibilityEnabledARAssetResponse

+ (id)arAssetPropertiesForFetcher:(id)a3
{
  v4 = a3;
  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___LPFetcherAccessibilityEnabledARAssetResponse;
  v5 = objc_msgSendSuper2(&v9, sel_arAssetPropertiesForFetcher_, v4);
  v6 = [v4 userData];
  v7 = [v6 accessibilityText];
  [v5 setAccessibilityText:v7];

  return v5;
}

@end