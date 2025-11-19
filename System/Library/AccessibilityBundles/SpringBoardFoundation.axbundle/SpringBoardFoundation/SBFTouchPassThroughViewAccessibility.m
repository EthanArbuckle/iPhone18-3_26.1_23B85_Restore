@interface SBFTouchPassThroughViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilitySupportsActivateAction;
- (BOOL)accessibilityActivate;
- (BOOL)isTransparentFocusItem;
@end

@implementation SBFTouchPassThroughViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBFTouchPassThroughView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"UIView" hasInstanceMethod:@"isTransparentFocusItem" withFullSignature:{"B", 0}];
  [v3 validateClass:@"UIView" hasInstanceMethod:@"canBecomeFocused" withFullSignature:{"B", 0}];
}

- (BOOL)accessibilityActivate
{
  v3 = [(SBFTouchPassThroughViewAccessibility *)self _accessibilityWindow];
  v4 = [v3 accessibilityIdentifier];
  v5 = [v4 isEqualToString:@"PIP-SBInteractionPassThroughView"];

  if (v5)
  {
    v6 = [(SBFTouchPassThroughViewAccessibility *)self safeValueForKey:@"_viewDelegate"];
    v7 = [v6 accessibilityActivate];

    return v7;
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
  v3 = [(SBFTouchPassThroughViewAccessibility *)self _accessibilityWindow];
  v4 = [v3 accessibilityIdentifier];
  v5 = [v4 isEqualToString:@"PIP-SBInteractionPassThroughView"];

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