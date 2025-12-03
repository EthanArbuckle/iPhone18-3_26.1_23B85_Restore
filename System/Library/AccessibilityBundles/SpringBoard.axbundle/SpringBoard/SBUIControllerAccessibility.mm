@interface SBUIControllerAccessibility
- (BOOL)_accessibilityIsAppSwitcherVisible;
- (void)updateBatteryState:(id)state;
@end

@implementation SBUIControllerAccessibility

- (BOOL)_accessibilityIsAppSwitcherVisible
{
  v2 = [*MEMORY[0x29EDC8008] _accessibilityValueForKey:@"accessibilityIsAppSwitcherVisible"];
  v3 = v2;
  v4 = v2 && ([v2 BOOLValue] & 1) != 0;

  return v4;
}

- (void)updateBatteryState:(id)state
{
  stateCopy = state;
  v5 = [(SBUIControllerAccessibility *)self safeValueForKey:@"batteryCapacityAsPercentage"];
  integerValue = [v5 integerValue];

  v12.receiver = self;
  v12.super_class = SBUIControllerAccessibility;
  [(SBUIControllerAccessibility *)&v12 updateBatteryState:stateCopy];

  v7 = [(SBUIControllerAccessibility *)self safeValueForKey:@"batteryCapacityAsPercentage"];
  integerValue2 = [v7 integerValue];

  if (integerValue > 20 == integerValue2 < 21)
  {
    v9 = integerValue2 < 21;
    v10 = *MEMORY[0x29EDC7480];
    v11 = [MEMORY[0x29EDBA070] numberWithBool:v9];
    UIAccessibilityPostNotification(v10, v11);
  }
}

@end