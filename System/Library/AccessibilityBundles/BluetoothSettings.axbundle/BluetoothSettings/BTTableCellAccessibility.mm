@interface BTTableCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityValue;
@end

@implementation BTTableCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"BTTableCell"];
  [validationsCopy validateClass:@"BTTableCell" hasInstanceVariable:@"_spinner" withType:"UIActivityIndicatorView"];
  [validationsCopy validateClass:@"BTTableCell" isKindOfClass:@"UITableViewCell"];
}

- (id)accessibilityValue
{
  v3 = [(BTTableCellAccessibility *)self safeValueForKey:@"_spinner"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 isAnimating])
  {
    accessibilityValue = accessibilityLocalizedString(@"connecting");
  }

  else
  {
    v7.receiver = self;
    v7.super_class = BTTableCellAccessibility;
    accessibilityValue = [(BTTableCellAccessibility *)&v7 accessibilityValue];
  }

  v5 = accessibilityValue;

  return v5;
}

@end