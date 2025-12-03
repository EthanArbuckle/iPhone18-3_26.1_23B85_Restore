@interface CSQuickActionsButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityIsPasscodeLockVisible;
- (id)accessibilityLabel;
- (id)accessibilityPath;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation CSQuickActionsButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CSQuickActionsButton" hasInstanceMethod:@"action" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CSFlashlightQuickAction"];
  [validationsCopy validateClass:@"CSCameraQuickAction"];
  [validationsCopy validateClass:@"CSQuickAction" hasInstanceMethod:@"isSelected" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CSAction"];
  [validationsCopy validateClass:@"CSQuickActionsButton" isKindOfClass:@"CSProminentButtonControl"];
  [validationsCopy validateClass:@"CSProminentButtonControl" hasInstanceVariable:@"_backgroundEffectView" withType:"UIVisualEffectView"];
  [validationsCopy validateClass:@"CSQuickActionsButton" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CSQuickActionsView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CSQuickActionsViewController" hasInstanceMethod:@"coverSheetViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CSCoverSheetViewController" hasInstanceMethod:@"isPasscodeLockVisible" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CSQuickActionsViewController" hasInstanceMethod:@"_resetIdleTimer" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"CSAction" hasClassMethod:@"actionWithType:" withFullSignature:{"@", "q", 0}];
  [validationsCopy validateClass:@"CSQuickActionsViewController" isKindOfClass:@"CSCoverSheetViewControllerBase"];
  [validationsCopy validateClass:@"CSCoverSheetViewControllerBase" hasInstanceMethod:@"sendAction:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"CSQuickActionsButton" isKindOfClass:@"CSProminentButtonControl"];
  [validationsCopy validateClass:@"CSProminentButtonControl" hasInstanceMethod:@"setSelected:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"CSQuickAction" hasInstanceMethod:@"supportsSelection" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CSQuickAction" hasInstanceMethod:@"fireAction" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"CSSystemQuickAction" hasInstanceMethod:@"viewModel" withFullSignature:{"@", 0}];
  [validationsCopy validateProtocol:@"CHUISControlViewModel" hasRequiredInstanceMethod:@"title"];
}

- (id)accessibilityLabel
{
  v3 = [(CSQuickActionsButtonAccessibility *)self safeValueForKey:@"action"];
  NSClassFromString(&cfstr_Csflashlightqu.isa);
  if (objc_opt_isKindOfClass())
  {
    v4 = @"flashlight";
LABEL_5:
    accessibilityLabel = accessibilitySBLocalizedString(v4);
LABEL_6:
    v6 = accessibilityLabel;
    goto LABEL_7;
  }

  NSClassFromString(&cfstr_Cscameraquicka.isa);
  if (objc_opt_isKindOfClass())
  {
    v4 = @"camera";
    goto LABEL_5;
  }

  NSClassFromString(&cfstr_Cssystemquicka.isa);
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9.receiver = self;
    v9.super_class = CSQuickActionsButtonAccessibility;
    accessibilityLabel = [(CSQuickActionsButtonAccessibility *)&v9 accessibilityLabel];
    goto LABEL_6;
  }

  v8 = [v3 safeValueForKey:@"viewModel"];
  v6 = [v8 safeStringForKey:@"title"];

LABEL_7:

  return v6;
}

- (id)accessibilityValue
{
  v3 = [(CSQuickActionsButtonAccessibility *)self safeValueForKey:@"action"];
  NSClassFromString(&cfstr_Csquickaction.isa);
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 safeBoolForKey:@"supportsSelection"])
  {
    if ([v3 safeBoolForKey:@"isSelected"])
    {
      v4 = @"quickaction.state.on";
    }

    else
    {
      v4 = @"quickaction.state.off";
    }

    accessibilityValue = accessibilitySBLocalizedString(v4);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CSQuickActionsButtonAccessibility;
    accessibilityValue = [(CSQuickActionsButtonAccessibility *)&v8 accessibilityValue];
  }

  v6 = accessibilityValue;

  return v6;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CSQuickActionsButtonAccessibility;
  return [(CSQuickActionsButtonAccessibility *)&v3 accessibilityTraits]& ~*MEMORY[0x29EDC7FC0] | *MEMORY[0x29EDC7F70];
}

void __58__CSQuickActionsButtonAccessibility_accessibilityActivate__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) safeValueForKey:@"action"];
  [v5 fireAction];
  if (([v5 supportsSelection] & 1) == 0)
  {
    [*(a1 + 32) setSelected:0];
  }

  v2 = [*(a1 + 32) _axDelegate];
  [v2 _resetIdleTimer];

  v3 = [*(a1 + 32) _axDelegate];
  v4 = [NSClassFromString(&cfstr_Csaction.isa) actionWithType:5];
  [v3 sendAction:v4];
}

- (id)accessibilityPath
{
  v2 = [(CSQuickActionsButtonAccessibility *)self safeValueForKey:@"_backgroundEffectView"];
  _accessibilityCirclePathBasedOnBoundsWidth = [v2 _accessibilityCirclePathBasedOnBoundsWidth];

  return _accessibilityCirclePathBasedOnBoundsWidth;
}

- (BOOL)_accessibilityIsPasscodeLockVisible
{
  _axDelegate = [(CSQuickActionsButtonAccessibility *)self _axDelegate];
  v3 = [_axDelegate safeValueForKey:@"coverSheetViewController"];
  v4 = [v3 safeBoolForKey:@"isPasscodeLockVisible"];

  return v4;
}

@end