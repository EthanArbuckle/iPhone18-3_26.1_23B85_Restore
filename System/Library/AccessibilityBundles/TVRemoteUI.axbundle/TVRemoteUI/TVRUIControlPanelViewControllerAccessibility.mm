@interface TVRUIControlPanelViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_axElements;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation TVRUIControlPanelViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"TVRUIControlPanelViewController" hasInstanceMethod:@"currentButtonPanel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"TVRUIButtonPanelView" hasInstanceMethod:@"leftButtons" withFullSignature:{"@", 0}];
  [v3 validateClass:@"TVRUIButtonPanelView" hasInstanceMethod:@"primaryButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"TVRUIButtonPanelView" hasInstanceMethod:@"rightButtons" withFullSignature:{"@", 0}];
  [v3 validateClass:@"TVRUIButtonPanelView" hasInstanceMethod:@"pagingButton" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = TVRUIControlPanelViewControllerAccessibility;
  [(TVRUIControlPanelViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(TVRUIControlPanelViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  v4 = [(TVRUIControlPanelViewControllerAccessibility *)self _axElements];
  [v3 setAccessibilityElements:v4];
}

- (id)_axElements
{
  v2 = [(TVRUIControlPanelViewControllerAccessibility *)self safeValueForKey:@"currentButtonPanel"];
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = [v2 safeArrayForKey:@"leftButtons"];
  [v3 axSafelyAddObjectsFromArray:v4];

  v5 = [v2 safeValueForKey:@"primaryButton"];
  [v3 axSafelyAddObject:v5];

  v6 = [v2 safeArrayForKey:@"rightButtons"];
  [v3 axSafelyAddObjectsFromArray:v6];

  v7 = [v2 safeValueForKey:@"pagingButton"];
  [v3 axSafelyAddObject:v7];

  return v3;
}

@end