@interface SUUILabelViewElementAccessibility
- (id)accessibilityLabel;
@end

@implementation SUUILabelViewElementAccessibility

- (id)accessibilityLabel
{
  v2 = [(SUUILabelViewElementAccessibility *)self safeValueForKey:@"_text"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end