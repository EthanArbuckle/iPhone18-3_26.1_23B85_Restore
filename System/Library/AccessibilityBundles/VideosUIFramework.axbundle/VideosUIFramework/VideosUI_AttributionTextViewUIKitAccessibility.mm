@interface VideosUI_AttributionTextViewUIKitAccessibility
- (id)accessibilityLabel;
@end

@implementation VideosUI_AttributionTextViewUIKitAccessibility

- (id)accessibilityLabel
{
  subviews = [(VideosUI_AttributionTextViewUIKitAccessibility *)self subviews];
  v3 = [subviews ax_mappedArrayUsingBlock:&__block_literal_global_10];
  v4 = AXLabelForElements();

  return v4;
}

@end