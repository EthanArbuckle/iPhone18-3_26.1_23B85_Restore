@interface AVLabelAccessibility
- (id)accessibilityLabel;
@end

@implementation AVLabelAccessibility

- (id)accessibilityLabel
{
  accessibilityUserDefinedLabel = [(AVLabelAccessibility *)self accessibilityUserDefinedLabel];
  if ([accessibilityUserDefinedLabel length])
  {
    text = accessibilityUserDefinedLabel;
  }

  else
  {
    objc_opt_class();
    v4 = __UIAccessibilityCastAsClass();
    text = [v4 text];
  }

  return text;
}

@end