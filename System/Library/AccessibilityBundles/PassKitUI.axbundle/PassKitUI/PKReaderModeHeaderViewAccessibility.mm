@interface PKReaderModeHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_configureForCurrentState;
@end

@implementation PKReaderModeHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKReaderModeHeaderView" isKindOfClass:@"PKTableHeaderView"];
  [v3 validateClass:@"PKTableHeaderView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PKTableHeaderView" hasInstanceMethod:@"subtitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PKReaderModeHeaderView" hasInstanceMethod:@"_configureForCurrentState" withFullSignature:{"v", 0}];
}

- (void)_configureForCurrentState
{
  v13.receiver = self;
  v13.super_class = PKReaderModeHeaderViewAccessibility;
  [(PKReaderModeHeaderViewAccessibility *)&v13 _configureForCurrentState];
  objc_opt_class();
  v3 = [(PKReaderModeHeaderViewAccessibility *)self safeValueForKey:@"titleLabel"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 text];
  v6 = [(PKReaderModeHeaderViewAccessibility *)self _axCurrentLabelText];
  v7 = [v5 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
    [(PKReaderModeHeaderViewAccessibility *)self _setAXCurrentLabelText:v5];
    objc_opt_class();
    v8 = [(PKReaderModeHeaderViewAccessibility *)self safeValueForKey:@"subtitleLabel"];
    v9 = __UIAccessibilityCastAsClass();

    v10 = *MEMORY[0x29EDC7EA8];
    v12 = [v9 text];
    v11 = __UIAXStringForVariables();
    UIAccessibilityPostNotification(v10, v11);
  }
}

@end