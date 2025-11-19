@interface SBSUIWallpaperButtonAccessibility
- (id)_containerViewForLegacyFocusRing;
@end

@implementation SBSUIWallpaperButtonAccessibility

- (id)_containerViewForLegacyFocusRing
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();

  return v2;
}

@end