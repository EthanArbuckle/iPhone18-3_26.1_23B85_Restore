@interface WallpaperPreviewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation WallpaperPreviewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"WallpaperPreviewCell" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"WallpaperPreviewCell" hasInstanceVariable:@"__homeScreenThumbnailButton" withType:"UIButton"];
  [validationsCopy validateClass:@"WallpaperPreviewCell" hasInstanceVariable:@"__lockScreenThumbnailButton" withType:"UIButton"];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = WallpaperPreviewCellAccessibility;
  [(WallpaperPreviewCellAccessibility *)&v3 layoutSubviews];
  [(WallpaperPreviewCellAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v9.receiver = self;
  v9.super_class = WallpaperPreviewCellAccessibility;
  [(WallpaperPreviewCellAccessibility *)&v9 _accessibilityLoadAccessibilityInformation];
  v3 = [(WallpaperPreviewCellAccessibility *)self safeValueForKey:@"__homeScreenThumbnailButton"];
  v4 = [(WallpaperPreviewCellAccessibility *)self safeValueForKey:@"__lockScreenThumbnailButton"];
  v5 = accessibilityLocalizedString(@"home.screen.wallpaper.thumbnail.button");
  [v3 setAccessibilityLabel:v5];

  v6 = accessibilityLocalizedString(@"lock.screen.wallpaper.thumbnail.button");
  [v4 setAccessibilityLabel:v6];

  v7 = accessibilityLocalizedString(@"wallpaper.thumbnail.button.hint");
  [v3 setAccessibilityHint:v7];

  v8 = accessibilityLocalizedString(@"wallpaper.thumbnail.button.hint");
  [v4 setAccessibilityHint:v8];
}

@end