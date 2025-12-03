@interface _NTKCDetailAddButtonAccessibility
- (id)accessibilityLabel;
@end

@implementation _NTKCDetailAddButtonAccessibility

- (id)accessibilityLabel
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = [v2 titleForState:0];
  localizedLowercaseString = [v3 localizedLowercaseString];

  if (!localizedLowercaseString)
  {
    titleLabel = [v2 titleLabel];
    text = [titleLabel text];
    localizedLowercaseString = [text localizedLowercaseString];
  }

  return localizedLowercaseString;
}

@end