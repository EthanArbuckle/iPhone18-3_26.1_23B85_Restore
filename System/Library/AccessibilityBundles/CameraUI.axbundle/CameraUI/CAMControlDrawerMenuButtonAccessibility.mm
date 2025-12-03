@interface CAMControlDrawerMenuButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilitySupportsActivateAction;
- (BOOL)canBecomeFocused;
- (void)_setExpanded:(BOOL)expanded animated:(BOOL)animated shouldNotify:(BOOL)notify;
@end

@implementation CAMControlDrawerMenuButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CAMControlDrawerMenuButton" isKindOfClass:@"UIControl"];
  [validationsCopy validateProtocol:@"CAMControlDrawerExpandableButton" hasMethod:@"isExpanded" isInstanceMethod:1 isRequired:1];
  [validationsCopy validateClass:@"CAMControlDrawerMenuButton" conformsToProtocol:@"CAMControlDrawerExpandableButton"];
  [validationsCopy validateClass:@"CAMControlDrawerMenuButton" isKindOfClass:@"CAMControlDrawerButton"];
  [validationsCopy validateClass:@"CAMControlDrawerMenuButton" hasInstanceMethod:@"_setExpanded:animated:shouldNotify:" withFullSignature:{"v", "B", "B", "B", 0}];
}

- (BOOL)_accessibilitySupportsActivateAction
{
  v2 = [(CAMControlDrawerMenuButtonAccessibility *)self safeValueForKey:@"isUserInteractionEnabled"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)canBecomeFocused
{
  v5.receiver = self;
  v5.super_class = CAMControlDrawerMenuButtonAccessibility;
  canBecomeFocused = [(CAMControlDrawerMenuButtonAccessibility *)&v5 canBecomeFocused];
  if ([(CAMControlDrawerMenuButtonAccessibility *)self _accessibilityIsFKARunningForFocusItem])
  {
    canBecomeFocused &= [(CAMControlDrawerMenuButtonAccessibility *)self safeBoolForKey:@"isExpanded"]^ 1;
  }

  return canBecomeFocused;
}

- (void)_setExpanded:(BOOL)expanded animated:(BOOL)animated shouldNotify:(BOOL)notify
{
  v5.receiver = self;
  v5.super_class = CAMControlDrawerMenuButtonAccessibility;
  [(CAMControlDrawerMenuButtonAccessibility *)&v5 _setExpanded:expanded animated:animated shouldNotify:notify];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

@end