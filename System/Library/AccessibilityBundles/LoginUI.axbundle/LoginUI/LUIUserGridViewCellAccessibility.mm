@interface LUIUserGridViewCellAccessibility
- (id)accessibilityLabel;
@end

@implementation LUIUserGridViewCellAccessibility

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(LUIUserGridViewCellAccessibility *)self safeValueForKey:@"mNameLabel"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 text];

  return v5;
}

@end