@interface AVLabelAccessibility
- (id)accessibilityLabel;
@end

@implementation AVLabelAccessibility

- (id)accessibilityLabel
{
  v2 = [(AVLabelAccessibility *)self accessibilityUserDefinedLabel];
  if ([v2 length])
  {
    v3 = v2;
  }

  else
  {
    objc_opt_class();
    v4 = __UIAccessibilityCastAsClass();
    v3 = [v4 text];
  }

  return v3;
}

@end