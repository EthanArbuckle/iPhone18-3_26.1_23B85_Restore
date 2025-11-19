@interface _NTKCDetailAddButtonAccessibility
- (id)accessibilityLabel;
@end

@implementation _NTKCDetailAddButtonAccessibility

- (id)accessibilityLabel
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = [v2 titleForState:0];
  v4 = [v3 localizedLowercaseString];

  if (!v4)
  {
    v5 = [v2 titleLabel];
    v6 = [v5 text];
    v4 = [v6 localizedLowercaseString];
  }

  return v4;
}

@end