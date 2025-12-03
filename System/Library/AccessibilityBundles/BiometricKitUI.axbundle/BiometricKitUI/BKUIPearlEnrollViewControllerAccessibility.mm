@interface BKUIPearlEnrollViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityDetailLabel;
- (id)_accessibilityInstructionLabel;
- (id)_accessibilityInstructionView;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axProvidePositioningInstruction;
- (void)finalizeInstructionAnimation;
- (void)viewDidLoad;
@end

@implementation BKUIPearlEnrollViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"BKUIPearlPillContainerView"];
  [validationsCopy validateClass:@"BKUIPearlEnrollViewController" hasInstanceMethod:@"bottomContainer" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BKUIPearlEnrollViewBottomContainer" hasInstanceMethod:@"instructionView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BKUIPearlInstructionView" hasInstanceMethod:@"instructionLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BKUIPearlInstructionView" hasInstanceMethod:@"detailLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BKUIPearlEnrollViewController" hasInstanceVariable:@"_state" withType:"int"];
  [validationsCopy validateClass:@"BKUIPearlEnrollViewController" hasInstanceVariable:@"_substate" withType:"int"];
  [validationsCopy validateClass:@"BKUIPearlEnrollViewController" hasInstanceVariable:@"_enrollView" withType:"BKUIPearlEnrollView"];
  [validationsCopy validateClass:@"BKUIPearlEnrollView" hasInstanceVariable:@"_pillContainer" withType:"BKUIPearlPillContainerView"];
  [validationsCopy validateClass:@"BKUIPearlEnrollViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"BKUIPearlEnrollViewController" hasInstanceMethod:@"finalizeInstructionAnimation" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"BKUIPearlEnrollViewController" hasInstanceMethod:@"_setState:animated:completion:" withFullSignature:{"v", "i", "B", "@?", 0}];
  [validationsCopy validateClass:@"BKUIPearlEnrollViewController" hasInstanceMethod:@"_setSubstate:animated:" withFullSignature:{"v", "i", "B", 0}];
}

- (id)_accessibilityInstructionView
{
  v2 = [(BKUIPearlEnrollViewControllerAccessibility *)self safeValueForKey:@"bottomContainer"];
  v3 = [v2 safeValueForKey:@"instructionView"];

  return v3;
}

- (id)_accessibilityInstructionLabel
{
  _accessibilityInstructionView = [(BKUIPearlEnrollViewControllerAccessibility *)self _accessibilityInstructionView];
  v3 = [_accessibilityInstructionView safeValueForKey:@"instructionLabel"];

  return v3;
}

- (id)_accessibilityDetailLabel
{
  _accessibilityInstructionView = [(BKUIPearlEnrollViewControllerAccessibility *)self _accessibilityInstructionView];
  v3 = [_accessibilityInstructionView safeValueForKey:@"detailLabel"];

  return v3;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = BKUIPearlEnrollViewControllerAccessibility;
  [(BKUIPearlEnrollViewControllerAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  _accessibilityInstructionLabel = [(BKUIPearlEnrollViewControllerAccessibility *)self _accessibilityInstructionLabel];
  [_accessibilityInstructionLabel setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
  objc_opt_class();
  v4 = [(BKUIPearlEnrollViewControllerAccessibility *)self safeValueForKeyPath:@"_enrollView._pillContainer"];
  v5 = __UIAccessibilityCastAsSafeCategory();

  [v5 _accessibilitySetPearlEnrollViewController:self];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = BKUIPearlEnrollViewControllerAccessibility;
  [(BKUIPearlEnrollViewControllerAccessibility *)&v3 viewDidLoad];
  [(BKUIPearlEnrollViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)finalizeInstructionAnimation
{
  v5.receiver = self;
  v5.super_class = BKUIPearlEnrollViewControllerAccessibility;
  [(BKUIPearlEnrollViewControllerAccessibility *)&v5 finalizeInstructionAnimation];
  v3 = *MEMORY[0x29EDC7ED8];
  _accessibilityInstructionLabel = [(BKUIPearlEnrollViewControllerAccessibility *)self _accessibilityInstructionLabel];
  UIAccessibilityPostNotification(v3, _accessibilityInstructionLabel);
}

void __76__BKUIPearlEnrollViewControllerAccessibility__setState_animated_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) safeIntForKey:@"_substate"];
  if ([*(a1 + 32) safeIntForKey:@"_state"] == 3 && v2 <= 9)
  {
    v4 = accessibilityLocalizedString(@"pearl.positioning.help");
    UIAccessibilitySpeakAndDoNotBeInterrupted();
  }
}

- (void)_axProvidePositioningInstruction
{
  v2 = [(BKUIPearlEnrollViewControllerAccessibility *)self safeIntForKey:@"_substate"]- 1;
  if (v2 <= 0xE && ((0x7F03u >> v2) & 1) != 0)
  {
    v3 = accessibilityLocalizedString(off_29F2A82E8[v2]);
    UIAccessibilitySpeak();
  }
}

void __68__BKUIPearlEnrollViewControllerAccessibility__setSubstate_animated___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _accessibilityInstructionLabel];
  v3 = [*(a1 + 32) _accessibilityDetailLabel];
  v2 = __UIAXStringForVariables();
  UIAccessibilitySpeak();
}

@end