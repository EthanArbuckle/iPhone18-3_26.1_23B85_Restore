@interface GAXSBIconOverride
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_gaxShouldAppearLaunchDisabled;
- (BOOL)isLaunchEnabled;
- (BOOL)isUninstallSupported;
@end

@implementation GAXSBIconOverride

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBIcon" hasInstanceMethod:@"isUninstallSupported" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBIcon" hasInstanceMethod:@"isLaunchEnabled" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBIconView" hasInstanceMethod:@"contextMenuInteraction:configurationForMenuAtLocation:" withFullSignature:{"@", "{CGPoint=dd}", 0}];
}

- (BOOL)_gaxShouldAppearLaunchDisabled
{
  v3 = +[GAXSpringboard sharedInstance];
  if ([v3 isActive])
  {
    v4 = ![(GAXSBIconOverride *)self _gaxNeedsLaunchEnabledAppearance];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)isUninstallSupported
{
  v3 = +[GAXSpringboard sharedInstance];
  if ([v3 isActive])
  {
    v4 = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = GAXSBIconOverride;
    v4 = [(GAXSBIconOverride *)&v6 isUninstallSupported];
  }

  return v4;
}

- (BOOL)isLaunchEnabled
{
  if ([(GAXSBIconOverride *)self _gaxShouldAppearLaunchDisabled])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = GAXSBIconOverride;
  return [(GAXSBIconOverride *)&v4 isLaunchEnabled];
}

@end