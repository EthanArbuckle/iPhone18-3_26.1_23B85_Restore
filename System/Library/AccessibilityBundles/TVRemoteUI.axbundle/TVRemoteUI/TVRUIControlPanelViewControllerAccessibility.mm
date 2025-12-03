@interface TVRUIControlPanelViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axElements;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation TVRUIControlPanelViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"TVRUIControlPanelViewController" hasInstanceMethod:@"currentButtonPanel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TVRUIButtonPanelView" hasInstanceMethod:@"leftButtons" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TVRUIButtonPanelView" hasInstanceMethod:@"primaryButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TVRUIButtonPanelView" hasInstanceMethod:@"rightButtons" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TVRUIButtonPanelView" hasInstanceMethod:@"pagingButton" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = TVRUIControlPanelViewControllerAccessibility;
  [(TVRUIControlPanelViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(TVRUIControlPanelViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  _axElements = [(TVRUIControlPanelViewControllerAccessibility *)self _axElements];
  [v3 setAccessibilityElements:_axElements];
}

- (id)_axElements
{
  v2 = [(TVRUIControlPanelViewControllerAccessibility *)self safeValueForKey:@"currentButtonPanel"];
  array = [MEMORY[0x29EDB8DE8] array];
  v4 = [v2 safeArrayForKey:@"leftButtons"];
  [array axSafelyAddObjectsFromArray:v4];

  v5 = [v2 safeValueForKey:@"primaryButton"];
  [array axSafelyAddObject:v5];

  v6 = [v2 safeArrayForKey:@"rightButtons"];
  [array axSafelyAddObjectsFromArray:v6];

  v7 = [v2 safeValueForKey:@"pagingButton"];
  [array axSafelyAddObject:v7];

  return array;
}

@end