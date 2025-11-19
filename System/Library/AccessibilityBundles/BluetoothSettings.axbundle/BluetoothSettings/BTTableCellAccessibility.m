@interface BTTableCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityValue;
@end

@implementation BTTableCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"BTTableCell"];
  [v3 validateClass:@"BTTableCell" hasInstanceVariable:@"_spinner" withType:"UIActivityIndicatorView"];
  [v3 validateClass:@"BTTableCell" isKindOfClass:@"UITableViewCell"];
}

- (id)accessibilityValue
{
  v3 = [(BTTableCellAccessibility *)self safeValueForKey:@"_spinner"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 isAnimating])
  {
    v4 = accessibilityLocalizedString(@"connecting");
  }

  else
  {
    v7.receiver = self;
    v7.super_class = BTTableCellAccessibility;
    v4 = [(BTTableCellAccessibility *)&v7 accessibilityValue];
  }

  v5 = v4;

  return v5;
}

@end