@interface GAXSBFluidSwitcherGestureManagerOverride
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_shouldBeginContinuousExposeStripOverflowGesture:(id)a3;
- (BOOL)_shouldBeginFloatingApplicationPinGesture:(id)a3;
- (BOOL)_shouldBeginFloatingApplicationPresentGesture:(id)a3;
- (id)_gaxMainDisplaySystemGestureManager;
@end

@implementation GAXSBFluidSwitcherGestureManagerOverride

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBMainDisplaySystemGestureManager"];
  [v3 validateClass:@"SBMainDisplaySystemGestureManager" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBFluidSwitcherGestureManager" hasInstanceMethod:@"_shouldBeginFloatingApplicationPresentGesture:" withFullSignature:{"B", "@", 0}];
  [v3 validateClass:@"SBFluidSwitcherGestureManager" hasInstanceMethod:@"_shouldBeginFloatingApplicationPinGesture:" withFullSignature:{"B", "@", 0}];
  [v3 validateClass:@"SBFluidSwitcherGestureManager" hasInstanceMethod:@"_shouldBeginContinuousExposeStripOverflowGesture:" withFullSignature:{"B", "@", 0}];
}

- (id)_gaxMainDisplaySystemGestureManager
{
  objc_opt_class();
  v2 = [AXSafeClassFromString() safeValueForKey:@"sharedInstance"];
  v3 = __UIAccessibilityCastAsSafeCategory();

  return v3;
}

- (BOOL)_shouldBeginFloatingApplicationPresentGesture:(id)a3
{
  v4 = a3;
  v5 = +[GAXSpringboard sharedInstance];
  if ([v5 isActive])
  {
    v6 = [(GAXSBFluidSwitcherGestureManagerOverride *)self _gaxMainDisplaySystemGestureManager];
    v7 = +[AXSettings sharedInstance];
    [v6 _gaxSetIgnoresGuidedAccessSystemGestureDisabling:{objc_msgSend(v7, "guidedAccessAllowsMultipleWindows")}];

    v10.receiver = self;
    v10.super_class = GAXSBFluidSwitcherGestureManagerOverride;
    v8 = [(GAXSBFluidSwitcherGestureManagerOverride *)&v10 _shouldBeginFloatingApplicationPinGesture:v4];
    [v6 _gaxSetIgnoresGuidedAccessSystemGestureDisabling:0];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = GAXSBFluidSwitcherGestureManagerOverride;
    v8 = [(GAXSBFluidSwitcherGestureManagerOverride *)&v11 _shouldBeginFloatingApplicationPresentGesture:v4];
  }

  return v8;
}

- (BOOL)_shouldBeginFloatingApplicationPinGesture:(id)a3
{
  v4 = a3;
  v5 = +[GAXSpringboard sharedInstance];
  if ([v5 isActive])
  {
    v6 = [(GAXSBFluidSwitcherGestureManagerOverride *)self _gaxMainDisplaySystemGestureManager];
    v7 = +[AXSettings sharedInstance];
    [v6 _gaxSetIgnoresGuidedAccessSystemGestureDisabling:{objc_msgSend(v7, "guidedAccessAllowsMultipleWindows")}];

    v10.receiver = self;
    v10.super_class = GAXSBFluidSwitcherGestureManagerOverride;
    v8 = [(GAXSBFluidSwitcherGestureManagerOverride *)&v10 _shouldBeginFloatingApplicationPinGesture:v4];
    [v6 _gaxSetIgnoresGuidedAccessSystemGestureDisabling:0];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = GAXSBFluidSwitcherGestureManagerOverride;
    v8 = [(GAXSBFluidSwitcherGestureManagerOverride *)&v11 _shouldBeginFloatingApplicationPinGesture:v4];
  }

  return v8;
}

- (BOOL)_shouldBeginContinuousExposeStripOverflowGesture:(id)a3
{
  v4 = a3;
  v5 = +[GAXSpringboard sharedInstance];
  if ([v5 isActive])
  {
    v6 = 0;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = GAXSBFluidSwitcherGestureManagerOverride;
    v6 = [(GAXSBFluidSwitcherGestureManagerOverride *)&v8 _shouldBeginContinuousExposeStripOverflowGesture:v4];
  }

  return v6;
}

@end