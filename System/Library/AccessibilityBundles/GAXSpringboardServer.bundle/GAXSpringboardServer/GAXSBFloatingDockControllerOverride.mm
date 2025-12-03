@interface GAXSBFloatingDockControllerOverride
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_canPresentFloatingDock;
- (void)handlePresentFloatingDockHoverGesture:(id)gesture;
@end

@implementation GAXSBFloatingDockControllerOverride

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBFloatingDockController" hasInstanceMethod:@"_canPresentFloatingDock" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBFloatingDockController" hasInstanceMethod:@"handlePresentFloatingDockHoverGesture:" withFullSignature:{"v", "@", 0}];
}

- (BOOL)_canPresentFloatingDock
{
  v3 = +[GAXSpringboard sharedInstance];
  if ([v3 isActive])
  {
    _canPresentFloatingDock = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = GAXSBFloatingDockControllerOverride;
    _canPresentFloatingDock = [(GAXSBFloatingDockControllerOverride *)&v6 _canPresentFloatingDock];
  }

  return _canPresentFloatingDock;
}

- (void)handlePresentFloatingDockHoverGesture:(id)gesture
{
  gestureCopy = gesture;
  v5 = +[GAXSpringboard sharedInstance];
  if ([v5 isActive])
  {
  }

  else
  {
    v6 = +[GAXSpringboard sharedInstance];
    isInWorkspace = [v6 isInWorkspace];

    if ((isInWorkspace & 1) == 0)
    {
      v8.receiver = self;
      v8.super_class = GAXSBFloatingDockControllerOverride;
      [(GAXSBFloatingDockControllerOverride *)&v8 handlePresentFloatingDockHoverGesture:gestureCopy];
    }
  }
}

@end