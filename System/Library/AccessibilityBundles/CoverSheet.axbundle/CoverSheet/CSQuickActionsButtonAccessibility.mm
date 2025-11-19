@interface CSQuickActionsButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityIsPasscodeLockVisible;
- (id)accessibilityLabel;
- (id)accessibilityPath;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation CSQuickActionsButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CSQuickActionsButton" hasInstanceMethod:@"action" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CSFlashlightQuickAction"];
  [v3 validateClass:@"CSCameraQuickAction"];
  [v3 validateClass:@"CSQuickAction" hasInstanceMethod:@"isSelected" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CSAction"];
  [v3 validateClass:@"CSQuickActionsButton" isKindOfClass:@"CSProminentButtonControl"];
  [v3 validateClass:@"CSProminentButtonControl" hasInstanceVariable:@"_backgroundEffectView" withType:"UIVisualEffectView"];
  [v3 validateClass:@"CSQuickActionsButton" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CSQuickActionsView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CSQuickActionsViewController" hasInstanceMethod:@"coverSheetViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CSCoverSheetViewController" hasInstanceMethod:@"isPasscodeLockVisible" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CSQuickActionsViewController" hasInstanceMethod:@"_resetIdleTimer" withFullSignature:{"v", 0}];
  [v3 validateClass:@"CSAction" hasClassMethod:@"actionWithType:" withFullSignature:{"@", "q", 0}];
  [v3 validateClass:@"CSQuickActionsViewController" isKindOfClass:@"CSCoverSheetViewControllerBase"];
  [v3 validateClass:@"CSCoverSheetViewControllerBase" hasInstanceMethod:@"sendAction:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"CSQuickActionsButton" isKindOfClass:@"CSProminentButtonControl"];
  [v3 validateClass:@"CSProminentButtonControl" hasInstanceMethod:@"setSelected:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"CSQuickAction" hasInstanceMethod:@"supportsSelection" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CSQuickAction" hasInstanceMethod:@"fireAction" withFullSignature:{"v", 0}];
  [v3 validateClass:@"CSSystemQuickAction" hasInstanceMethod:@"viewModel" withFullSignature:{"@", 0}];
  [v3 validateProtocol:@"CHUISControlViewModel" hasRequiredInstanceMethod:@"title"];
}

- (id)accessibilityLabel
{
  v3 = [(CSQuickActionsButtonAccessibility *)self safeValueForKey:@"action"];
  NSClassFromString(&cfstr_Csflashlightqu.isa);
  if (objc_opt_isKindOfClass())
  {
    v4 = @"flashlight";
LABEL_5:
    v5 = accessibilitySBLocalizedString(v4);
LABEL_6:
    v6 = v5;
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
    v5 = [(CSQuickActionsButtonAccessibility *)&v9 accessibilityLabel];
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

    v5 = accessibilitySBLocalizedString(v4);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CSQuickActionsButtonAccessibility;
    v5 = [(CSQuickActionsButtonAccessibility *)&v8 accessibilityValue];
  }

  v6 = v5;

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
  v3 = [v2 _accessibilityCirclePathBasedOnBoundsWidth];

  return v3;
}

- (BOOL)_accessibilityIsPasscodeLockVisible
{
  v2 = [(CSQuickActionsButtonAccessibility *)self _axDelegate];
  v3 = [v2 safeValueForKey:@"coverSheetViewController"];
  v4 = [v3 safeBoolForKey:@"isPasscodeLockVisible"];

  return v4;
}

@end