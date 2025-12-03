@interface GAXSBFluidSwitcherGestureManagerOverride
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_shouldBeginContinuousExposeStripOverflowGesture:(id)gesture;
- (BOOL)_shouldBeginFloatingApplicationPinGesture:(id)gesture;
- (BOOL)_shouldBeginFloatingApplicationPresentGesture:(id)gesture;
- (id)_gaxMainDisplaySystemGestureManager;
@end

@implementation GAXSBFluidSwitcherGestureManagerOverride

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBMainDisplaySystemGestureManager"];
  [validationsCopy validateClass:@"SBMainDisplaySystemGestureManager" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBFluidSwitcherGestureManager" hasInstanceMethod:@"_shouldBeginFloatingApplicationPresentGesture:" withFullSignature:{"B", "@", 0}];
  [validationsCopy validateClass:@"SBFluidSwitcherGestureManager" hasInstanceMethod:@"_shouldBeginFloatingApplicationPinGesture:" withFullSignature:{"B", "@", 0}];
  [validationsCopy validateClass:@"SBFluidSwitcherGestureManager" hasInstanceMethod:@"_shouldBeginContinuousExposeStripOverflowGesture:" withFullSignature:{"B", "@", 0}];
}

- (id)_gaxMainDisplaySystemGestureManager
{
  objc_opt_class();
  v2 = [AXSafeClassFromString() safeValueForKey:@"sharedInstance"];
  v3 = __UIAccessibilityCastAsSafeCategory();

  return v3;
}

- (BOOL)_shouldBeginFloatingApplicationPresentGesture:(id)gesture
{
  gestureCopy = gesture;
  v5 = +[GAXSpringboard sharedInstance];
  if ([v5 isActive])
  {
    _gaxMainDisplaySystemGestureManager = [(GAXSBFluidSwitcherGestureManagerOverride *)self _gaxMainDisplaySystemGestureManager];
    v7 = +[AXSettings sharedInstance];
    [_gaxMainDisplaySystemGestureManager _gaxSetIgnoresGuidedAccessSystemGestureDisabling:{objc_msgSend(v7, "guidedAccessAllowsMultipleWindows")}];

    v10.receiver = self;
    v10.super_class = GAXSBFluidSwitcherGestureManagerOverride;
    v8 = [(GAXSBFluidSwitcherGestureManagerOverride *)&v10 _shouldBeginFloatingApplicationPinGesture:gestureCopy];
    [_gaxMainDisplaySystemGestureManager _gaxSetIgnoresGuidedAccessSystemGestureDisabling:0];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = GAXSBFluidSwitcherGestureManagerOverride;
    v8 = [(GAXSBFluidSwitcherGestureManagerOverride *)&v11 _shouldBeginFloatingApplicationPresentGesture:gestureCopy];
  }

  return v8;
}

- (BOOL)_shouldBeginFloatingApplicationPinGesture:(id)gesture
{
  gestureCopy = gesture;
  v5 = +[GAXSpringboard sharedInstance];
  if ([v5 isActive])
  {
    _gaxMainDisplaySystemGestureManager = [(GAXSBFluidSwitcherGestureManagerOverride *)self _gaxMainDisplaySystemGestureManager];
    v7 = +[AXSettings sharedInstance];
    [_gaxMainDisplaySystemGestureManager _gaxSetIgnoresGuidedAccessSystemGestureDisabling:{objc_msgSend(v7, "guidedAccessAllowsMultipleWindows")}];

    v10.receiver = self;
    v10.super_class = GAXSBFluidSwitcherGestureManagerOverride;
    v8 = [(GAXSBFluidSwitcherGestureManagerOverride *)&v10 _shouldBeginFloatingApplicationPinGesture:gestureCopy];
    [_gaxMainDisplaySystemGestureManager _gaxSetIgnoresGuidedAccessSystemGestureDisabling:0];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = GAXSBFluidSwitcherGestureManagerOverride;
    v8 = [(GAXSBFluidSwitcherGestureManagerOverride *)&v11 _shouldBeginFloatingApplicationPinGesture:gestureCopy];
  }

  return v8;
}

- (BOOL)_shouldBeginContinuousExposeStripOverflowGesture:(id)gesture
{
  gestureCopy = gesture;
  v5 = +[GAXSpringboard sharedInstance];
  if ([v5 isActive])
  {
    v6 = 0;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = GAXSBFluidSwitcherGestureManagerOverride;
    v6 = [(GAXSBFluidSwitcherGestureManagerOverride *)&v8 _shouldBeginContinuousExposeStripOverflowGesture:gestureCopy];
  }

  return v6;
}

@end