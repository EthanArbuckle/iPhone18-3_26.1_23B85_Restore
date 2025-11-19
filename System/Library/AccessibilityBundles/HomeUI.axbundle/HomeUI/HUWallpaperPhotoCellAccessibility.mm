@interface HUWallpaperPhotoCellAccessibility
- (id)accessibilityLabel;
@end

@implementation HUWallpaperPhotoCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(HUWallpaperPhotoCellAccessibility *)self safeStringForKey:@"assetIdentifier"];
  v3 = accessibilityLabelForCustomWallpaper(v2);
  if (!v3)
  {
    v3 = accessibilityLabelForNamedWallpaper(v2);
    if (!v3)
    {
      v3 = accessibilityHomeUILocalizedString(@"wallpaper.photo");
    }
  }

  v4 = v3;

  return v4;
}

@end