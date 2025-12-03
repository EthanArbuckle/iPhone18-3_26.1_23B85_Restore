@interface GAXSBLeafIconOverride
- (BOOL)isLaunchEnabled;
@end

@implementation GAXSBLeafIconOverride

- (BOOL)isLaunchEnabled
{
  v7 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsSafeCategory();
  if ([v3 _gaxShouldAppearLaunchDisabled])
  {
    isLaunchEnabled = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = GAXSBLeafIconOverride;
    isLaunchEnabled = [(GAXSBLeafIconOverride *)&v6 isLaunchEnabled];
  }

  return isLaunchEnabled;
}

@end