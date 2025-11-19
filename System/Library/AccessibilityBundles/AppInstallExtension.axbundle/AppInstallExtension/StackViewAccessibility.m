@interface StackViewAccessibility
- (id)accessibilityLabel;
@end

@implementation StackViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(StackViewAccessibility *)self safeArrayForKey:@"accessibilityNonHiddenSubviews"];
  v3 = AXLabelForElements();

  return v3;
}

@end