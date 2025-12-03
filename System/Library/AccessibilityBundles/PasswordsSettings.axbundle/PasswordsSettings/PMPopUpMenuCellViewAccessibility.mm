@interface PMPopUpMenuCellViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityValue;
@end

@implementation PMPopUpMenuCellViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PasswordsSettings.PMPopUpMenuCellView"];
  [validationsCopy validateClass:@"PasswordsSettings.PMPopUpMenuCellView" hasSwiftField:@"popUpButton" withSwiftType:"Optional<UIButton>"];
}

- (id)accessibilityValue
{
  objc_opt_class();
  v3 = [(PMPopUpMenuCellViewAccessibility *)self safeSwiftValueForKey:@"popUpButton"];
  v4 = __UIAccessibilityCastAsClass();

  if (v4)
  {
    titleLabel = [v4 titleLabel];
    text = [titleLabel text];
  }

  else
  {
    text = 0;
  }

  return text;
}

@end