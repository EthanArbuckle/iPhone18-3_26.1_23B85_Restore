@interface PKReaderModeHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_configureForCurrentState;
@end

@implementation PKReaderModeHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKReaderModeHeaderView" isKindOfClass:@"PKTableHeaderView"];
  [validationsCopy validateClass:@"PKTableHeaderView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKTableHeaderView" hasInstanceMethod:@"subtitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKReaderModeHeaderView" hasInstanceMethod:@"_configureForCurrentState" withFullSignature:{"v", 0}];
}

- (void)_configureForCurrentState
{
  v13.receiver = self;
  v13.super_class = PKReaderModeHeaderViewAccessibility;
  [(PKReaderModeHeaderViewAccessibility *)&v13 _configureForCurrentState];
  objc_opt_class();
  v3 = [(PKReaderModeHeaderViewAccessibility *)self safeValueForKey:@"titleLabel"];
  v4 = __UIAccessibilityCastAsClass();

  text = [v4 text];
  _axCurrentLabelText = [(PKReaderModeHeaderViewAccessibility *)self _axCurrentLabelText];
  v7 = [text isEqualToString:_axCurrentLabelText];

  if ((v7 & 1) == 0)
  {
    [(PKReaderModeHeaderViewAccessibility *)self _setAXCurrentLabelText:text];
    objc_opt_class();
    v8 = [(PKReaderModeHeaderViewAccessibility *)self safeValueForKey:@"subtitleLabel"];
    v9 = __UIAccessibilityCastAsClass();

    v10 = *MEMORY[0x29EDC7EA8];
    text2 = [v9 text];
    v11 = __UIAXStringForVariables();
    UIAccessibilityPostNotification(v10, v11);
  }
}

@end