@interface GAXSBBookmarkIconOverride
- (BOOL)isUninstallSupported;
@end

@implementation GAXSBBookmarkIconOverride

- (BOOL)isUninstallSupported
{
  v7 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsSafeCategory();
  if ([v3 _gaxShouldAppearLaunchDisabled])
  {
    v4 = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = GAXSBBookmarkIconOverride;
    v4 = [(GAXSBBookmarkIconOverride *)&v6 isUninstallSupported];
  }

  return v4;
}

@end