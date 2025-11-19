@interface SBUIControllerAccessibility
- (BOOL)_accessibilityIsAppSwitcherVisible;
- (void)updateBatteryState:(id)a3;
@end

@implementation SBUIControllerAccessibility

- (BOOL)_accessibilityIsAppSwitcherVisible
{
  v2 = [*MEMORY[0x29EDC8008] _accessibilityValueForKey:@"accessibilityIsAppSwitcherVisible"];
  v3 = v2;
  v4 = v2 && ([v2 BOOLValue] & 1) != 0;

  return v4;
}

- (void)updateBatteryState:(id)a3
{
  v4 = a3;
  v5 = [(SBUIControllerAccessibility *)self safeValueForKey:@"batteryCapacityAsPercentage"];
  v6 = [v5 integerValue];

  v12.receiver = self;
  v12.super_class = SBUIControllerAccessibility;
  [(SBUIControllerAccessibility *)&v12 updateBatteryState:v4];

  v7 = [(SBUIControllerAccessibility *)self safeValueForKey:@"batteryCapacityAsPercentage"];
  v8 = [v7 integerValue];

  if (v6 > 20 == v8 < 21)
  {
    v9 = v8 < 21;
    v10 = *MEMORY[0x29EDC7480];
    v11 = [MEMORY[0x29EDBA070] numberWithBool:v9];
    UIAccessibilityPostNotification(v10, v11);
  }
}

@end