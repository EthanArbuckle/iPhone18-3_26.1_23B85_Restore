@interface SKUILabelViewElementAccessibility
- (id)accessibilityLabel;
@end

@implementation SKUILabelViewElementAccessibility

- (id)accessibilityLabel
{
  v2 = [(SKUILabelViewElementAccessibility *)self safeValueForKey:@"_text"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end