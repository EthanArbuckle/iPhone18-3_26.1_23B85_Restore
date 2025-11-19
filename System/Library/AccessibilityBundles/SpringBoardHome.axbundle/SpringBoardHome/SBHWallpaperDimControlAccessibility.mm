@interface SBHWallpaperDimControlAccessibility
- (id)accessibilityLabel;
@end

@implementation SBHWallpaperDimControlAccessibility

- (id)accessibilityLabel
{
  if ([(SBHWallpaperDimControlAccessibility *)self _axIsDimmed])
  {
    v2 = @"home.screen.brighten.wallpaper";
  }

  else
  {
    v2 = @"home.screen.dim.wallpaper";
  }

  v3 = accessibilityLocalizedString(v2);

  return v3;
}

@end