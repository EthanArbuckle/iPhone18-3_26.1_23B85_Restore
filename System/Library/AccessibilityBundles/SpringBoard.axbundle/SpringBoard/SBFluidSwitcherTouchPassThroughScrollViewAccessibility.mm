@interface SBFluidSwitcherTouchPassThroughScrollViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_forwardsToParentScroller;
- (id)focusGroupIdentifier;
@end

@implementation SBFluidSwitcherTouchPassThroughScrollViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBFluidSwitcherTouchPassThroughScrollView" isKindOfClass:@"UIScrollView"];
  [validationsCopy validateClass:@"UIScrollView" hasInstanceMethod:@"_forwardsToParentScroller" withFullSignature:{"B", 0}];
}

- (id)focusGroupIdentifier
{
  if (([(SBFluidSwitcherTouchPassThroughScrollViewAccessibility *)self _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    focusGroupIdentifier = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SBFluidSwitcherTouchPassThroughScrollViewAccessibility;
    focusGroupIdentifier = [(SBFluidSwitcherTouchPassThroughScrollViewAccessibility *)&v5 focusGroupIdentifier];
  }

  return focusGroupIdentifier;
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