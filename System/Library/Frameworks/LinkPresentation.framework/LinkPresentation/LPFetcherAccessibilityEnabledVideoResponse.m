@interface LPFetcherAccessibilityEnabledVideoResponse
+ (id)videoPropertiesForFetcher:(id)a3;
@end

@implementation LPFetcherAccessibilityEnabledVideoResponse

+ (id)videoPropertiesForFetcher:(id)a3
{
  v4 = a3;
  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___LPFetcherAccessibilityEnabledVideoResponse;
  v5 = objc_msgSendSuper2(&v9, sel_videoPropertiesForFetcher_, v4);
  v6 = [v4 userData];
  v7 = [v6 accessibilityText];
  [v5 setAccessibilityText:v7];

  return v5;
}

@end