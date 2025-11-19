@interface SBFluidSwitcherTouchPassThroughScrollViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_forwardsToParentScroller;
- (id)focusGroupIdentifier;
@end

@implementation SBFluidSwitcherTouchPassThroughScrollViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBFluidSwitcherTouchPassThroughScrollView" isKindOfClass:@"UIScrollView"];
  [v3 validateClass:@"UIScrollView" hasInstanceMethod:@"_forwardsToParentScroller" withFullSignature:{"B", 0}];
}

- (id)focusGroupIdentifier
{
  if (([(SBFluidSwitcherTouchPassThroughScrollViewAccessibility *)self _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    v3 = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SBFluidSwitcherTouchPassThroughScrollViewAccessibility;
    v3 = [(SBFluidSwitcherTouchPassThroughScrollViewAccessibility *)&v5 focusGroupIdentifier];
  }

  return v3;
}

- (BOOL)_forwardsToParentScroller
{
  if (([(SBFluidSwitcherTouchPassThroughScrollViewAccessibility *)self _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = SBFluidSwitcherTouchPassThroughScrollViewAccessibility;
  return [(SBFluidSwitcherTouchPassThroughScrollViewAccessibility *)&v4 _forwardsToParentScroller];
}

@end