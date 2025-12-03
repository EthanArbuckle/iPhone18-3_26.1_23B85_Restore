@interface CHSWidgetDescriptor(ATXSuggestionLayoutOptions)
- (unint64_t)atx_layoutOptions;
@end

@implementation CHSWidgetDescriptor(ATXSuggestionLayoutOptions)

- (unint64_t)atx_layoutOptions
{
  v2 = (4 * [self supportedFamilies]) & 8;
  v3 = v2 & 0xFFFFFFFFFFFFFFEFLL | (16 * (([self supportedFamilies] >> 2) & 1));
  v4 = v3 & 0xFFFFFFFFFFFFFFBFLL | ((([self supportedFamilies] >> 3) & 1) << 6);
  return v4 & 0xFFFFFFFFFFFFFF7FLL | ((([self supportedFamilies] >> 4) & 1) << 7);
}

@end