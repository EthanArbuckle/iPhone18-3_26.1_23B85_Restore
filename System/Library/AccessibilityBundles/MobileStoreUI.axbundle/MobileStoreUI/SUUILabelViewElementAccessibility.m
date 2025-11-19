@interface SUUILabelViewElementAccessibility
- (id)accessibilityLabel;
@end

@implementation SUUILabelViewElementAccessibility

- (id)accessibilityLabel
{
  v2 = [(SUUILabelViewElementAccessibility *)self safeValueForKey:@"_text"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end