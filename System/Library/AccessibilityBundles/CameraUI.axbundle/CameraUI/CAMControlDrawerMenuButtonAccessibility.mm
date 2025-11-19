@interface CAMControlDrawerMenuButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilitySupportsActivateAction;
- (BOOL)canBecomeFocused;
- (void)_setExpanded:(BOOL)a3 animated:(BOOL)a4 shouldNotify:(BOOL)a5;
@end

@implementation CAMControlDrawerMenuButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CAMControlDrawerMenuButton" isKindOfClass:@"UIControl"];
  [v3 validateProtocol:@"CAMControlDrawerExpandableButton" hasMethod:@"isExpanded" isInstanceMethod:1 isRequired:1];
  [v3 validateClass:@"CAMControlDrawerMenuButton" conformsToProtocol:@"CAMControlDrawerExpandableButton"];
  [v3 validateClass:@"CAMControlDrawerMenuButton" isKindOfClass:@"CAMControlDrawerButton"];
  [v3 validateClass:@"CAMControlDrawerMenuButton" hasInstanceMethod:@"_setExpanded:animated:shouldNotify:" withFullSignature:{"v", "B", "B", "B", 0}];
}

- (BOOL)_accessibilitySupportsActivateAction
{
  v2 = [(CAMControlDrawerMenuButtonAccessibility *)self safeValueForKey:@"isUserInteractionEnabled"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)canBecomeFocused
{
  v5.receiver = self;
  v5.super_class = CAMControlDrawerMenuButtonAccessibility;
  v3 = [(CAMControlDrawerMenuButtonAccessibility *)&v5 canBecomeFocused];
  if ([(CAMControlDrawerMenuButtonAccessibility *)self _accessibilityIsFKARunningForFocusItem])
  {
    v3 &= [(CAMControlDrawerMenuButtonAccessibility *)self safeBoolForKey:@"isExpanded"]^ 1;
  }

  return v3;
}

- (void)_setExpanded:(BOOL)a3 animated:(BOOL)a4 shouldNotify:(BOOL)a5
{
  v5.receiver = self;
  v5.super_class = CAMControlDrawerMenuButtonAccessibility;
  [(CAMControlDrawerMenuButtonAccessibility *)&v5 _setExpanded:a3 animated:a4 shouldNotify:a5];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

@end