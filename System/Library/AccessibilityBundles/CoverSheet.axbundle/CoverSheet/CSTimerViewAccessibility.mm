@interface CSTimerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (void)setAlpha:(double)alpha;
@end

@implementation CSTimerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CSTimerView" hasInstanceVariable:@"_endDate" withType:"NSDate"];
  [validationsCopy validateClass:@"CSTimerView" isKindOfClass:@"UIView"];
}

- (id)accessibilityLabel
{
  v2 = [(CSTimerViewAccessibility *)self safeValueForKey:@"_endDate"];
  [v2 timeIntervalSinceNow];
  v3 = MEMORY[0x29C2D3420](1);

  v4 = accessibilitySBLocalizedString(@"lock.screen.timer");
  v5 = __UIAXStringForVariables();

  return v5;
}

- (void)setAlpha:(double)alpha
{
  v5.receiver = self;
  v5.super_class = CSTimerViewAccessibility;
  [(CSTimerViewAccessibility *)&v5 setAlpha:?];
  if (alpha == 1.0)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7488], self);
  }
}

@end