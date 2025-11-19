@interface MTATimerButtonsControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (MTATimerButtonsControllerAccessibility)initWithTarget:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_updateCancelButtonState;
- (void)setState:(unint64_t)a3;
@end

@implementation MTATimerButtonsControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MTATimerButtonsController" hasInstanceMethod:@"initWithTarget:" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MTATimerButtonsController" hasInstanceMethod:@"setState:" withFullSignature:{"v", "Q", 0}];
  [v3 validateClass:@"MTATimerButtonsController" hasInstanceVariable:@"_cancelButton" withType:"MTACircleButton"];
  [v3 validateClass:@"MTATimerButtonsController" hasInstanceVariable:@"_state" withType:"Q"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = MTATimerButtonsControllerAccessibility;
  [(MTATimerButtonsControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(MTATimerButtonsControllerAccessibility *)self _updateCancelButtonState];
}

- (MTATimerButtonsControllerAccessibility)initWithTarget:(id)a3
{
  v6.receiver = self;
  v6.super_class = MTATimerButtonsControllerAccessibility;
  v3 = [(MTATimerButtonsControllerAccessibility *)&v6 initWithTarget:a3];
  v4 = v3;
  if (v3)
  {
    [(MTATimerButtonsControllerAccessibility *)v3 _accessibilityLoadAccessibilityInformation];
  }

  return v4;
}

- (void)setState:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = MTATimerButtonsControllerAccessibility;
  [(MTATimerButtonsControllerAccessibility *)&v4 setState:a3];
  [(MTATimerButtonsControllerAccessibility *)self _updateCancelButtonState];
}

- (void)_updateCancelButtonState
{
  v3 = [(MTATimerButtonsControllerAccessibility *)self safeValueForKey:@"_cancelButton"];
  v4 = __UIAccessibilitySafeClass();

  if (v4)
  {
    v5 = [(MTATimerButtonsControllerAccessibility *)self safeValueForKey:@"_state"];
    v6 = [v5 integerValue];

    v7 = *MEMORY[0x29EDC7FA8];
    if (v6 != 1)
    {
      v7 = 0;
    }

    [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F70] | v7];
  }
}

@end