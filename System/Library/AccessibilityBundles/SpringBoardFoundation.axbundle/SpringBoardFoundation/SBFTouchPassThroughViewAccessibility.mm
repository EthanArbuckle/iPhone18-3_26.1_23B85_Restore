@interface SBFTouchPassThroughViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilitySupportsActivateAction;
- (BOOL)accessibilityActivate;
- (BOOL)isTransparentFocusItem;
@end

@implementation SBFTouchPassThroughViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBFTouchPassThroughView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"UIView" hasInstanceMethod:@"isTransparentFocusItem" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"UIView" hasInstanceMethod:@"canBecomeFocused" withFullSignature:{"B", 0}];
}

- (BOOL)accessibilityActivate
{
  _accessibilityWindow = [(SBFTouchPassThroughViewAccessibility *)self _accessibilityWindow];
  accessibilityIdentifier = [_accessibilityWindow accessibilityIdentifier];
  v5 = [accessibilityIdentifier isEqualToString:@"PIP-SBInteractionPassThroughView"];

  if (v5)
  {
    v6 = [(SBFTouchPassThroughViewAccessibility *)self safeValueForKey:@"_viewDelegate"];
    accessibilityActivate = [v6 accessibilityActivate];

    return accessibilityActivate;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBFTouchPassThroughViewAccessibility;
    return [(SBFTouchPassThroughViewAccessibility *)&v9 accessibilityActivate];
  }
}

- (BOOL)_accessibilitySupportsActivateAction
{
  _accessibilityWindow = [(SBFTouchPassThroughViewAccessibility *)self _accessibilityWindow];
  accessibilityIdentifier = [_accessibilityWindow accessibilityIdentifier];
  v5 = [accessibilityIdentifier isEqualToString:@"PIP-SBInteractionPassThroughView"];

  if (v5)
  {
    return 1;
  }

  v7.receiver = self;
  v7.super_class = SBFTouchPassThroughViewAccessibility;
  return [(SBFTouchPassThroughViewAccessibility *)&v7 _accessibilitySupportsActivateAction];
}

- (BOOL)isTransparentFocusItem
{
  v5.receiver = self;
  v5.super_class = SBFTouchPassThroughViewAccessibility;
  LOBYTE(v3) = [(SBFTouchPassThroughViewAccessibility *)&v5 isTransparentFocusItem];
  if ([(SBFTouchPassThroughViewAccessibility *)self _accessibilityIsFKARunningForFocusItem])
  {
    return [(SBFTouchPassThroughViewAccessibility *)self safeBoolForKey:@"canBecomeFocused"]^ 1;
  }

  return v3;
}

@end