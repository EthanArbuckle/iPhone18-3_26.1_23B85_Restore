@interface VideosUI_AttributionTextViewUIKitAccessibility
- (id)accessibilityLabel;
@end

@implementation VideosUI_AttributionTextViewUIKitAccessibility

- (id)accessibilityLabel
{
  v2 = [(VideosUI_AttributionTextViewUIKitAccessibility *)self subviews];
  v3 = [v2 ax_mappedArrayUsingBlock:&__block_literal_global_10];
  v4 = AXLabelForElements();

  return v4;
}

@end