@interface PMPopUpMenuCellViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityValue;
@end

@implementation PMPopUpMenuCellViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PasswordsSettings.PMPopUpMenuCellView"];
  [v3 validateClass:@"PasswordsSettings.PMPopUpMenuCellView" hasSwiftField:@"popUpButton" withSwiftType:"Optional<UIButton>"];
}

- (id)accessibilityValue
{
  objc_opt_class();
  v3 = [(PMPopUpMenuCellViewAccessibility *)self safeSwiftValueForKey:@"popUpButton"];
  v4 = __UIAccessibilityCastAsClass();

  if (v4)
  {
    v5 = [v4 titleLabel];
    v6 = [v5 text];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end