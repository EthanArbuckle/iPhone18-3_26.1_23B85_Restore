@interface GAXSBFloatingDockControllerOverride
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_canPresentFloatingDock;
- (void)handlePresentFloatingDockHoverGesture:(id)a3;
@end

@implementation GAXSBFloatingDockControllerOverride

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBFloatingDockController" hasInstanceMethod:@"_canPresentFloatingDock" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBFloatingDockController" hasInstanceMethod:@"handlePresentFloatingDockHoverGesture:" withFullSignature:{"v", "@", 0}];
}

- (BOOL)_canPresentFloatingDock
{
  v3 = +[GAXSpringboard sharedInstance];
  if ([v3 isActive])
  {
    v4 = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = GAXSBFloatingDockControllerOverride;
    v4 = [(GAXSBFloatingDockControllerOverride *)&v6 _canPresentFloatingDock];
  }

  return v4;
}

- (void)handlePresentFloatingDockHoverGesture:(id)a3
{
  v4 = a3;
  v5 = +[GAXSpringboard sharedInstance];
  if ([v5 isActive])
  {
  }

  else
  {
    v6 = +[GAXSpringboard sharedInstance];
    v7 = [v6 isInWorkspace];

    if ((v7 & 1) == 0)
    {
      v8.receiver = self;
      v8.super_class = GAXSBFloatingDockControllerOverride;
      [(GAXSBFloatingDockControllerOverride *)&v8 handlePresentFloatingDockHoverGesture:v4];
    }
  }
}

@end