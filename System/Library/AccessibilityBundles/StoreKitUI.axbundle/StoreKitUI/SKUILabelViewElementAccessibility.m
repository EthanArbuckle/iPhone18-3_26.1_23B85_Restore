@interface SKUILabelViewElementAccessibility
- (id)accessibilityLabel;
@end

@implementation SKUILabelViewElementAccessibility

- (id)accessibilityLabel
{
  v2 = [(SKUILabelViewElementAccessibility *)self safeValueForKey:@"_text"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end