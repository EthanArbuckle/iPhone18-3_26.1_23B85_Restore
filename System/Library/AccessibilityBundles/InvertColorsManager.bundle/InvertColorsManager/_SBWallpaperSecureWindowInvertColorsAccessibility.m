@interface _SBWallpaperSecureWindowInvertColorsAccessibility
- (BOOL)_accessibilityInvertColorsSupportsDarkWindowInvert;
@end

@implementation _SBWallpaperSecureWindowInvertColorsAccessibility

- (BOOL)_accessibilityInvertColorsSupportsDarkWindowInvert
{
  v2 = [(_SBWallpaperSecureWindowInvertColorsAccessibility *)self safeValueForKey:@"delegate"];
  NSClassFromString(@"PBUIPosterWallpaperRemoteViewController");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end