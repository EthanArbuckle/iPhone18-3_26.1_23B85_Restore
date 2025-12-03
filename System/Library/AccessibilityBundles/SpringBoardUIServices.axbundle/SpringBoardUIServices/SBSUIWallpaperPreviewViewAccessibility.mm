@interface SBSUIWallpaperPreviewViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation SBSUIWallpaperPreviewViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBSUIWallpaperPreviewView" hasInstanceVariable:@"_parallaxButton" withType:"UIButton"];
  [validationsCopy validateClass:@"SBSUIWallpaperPreviewView" hasInstanceMethod:@"initWithFrame:wallpaperView:disableParallax:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", "@", "B", 0}];
  [validationsCopy validateClass:@"SBSUIWallpaperPreviewView" hasInstanceMethod:@"irisButton" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = SBSUIWallpaperPreviewViewAccessibility;
  [(SBSUIWallpaperPreviewViewAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v3 = accessibilitySBLocalizedString(@"parallax.effect.button.for.wallpaper");
  v4 = [(SBSUIWallpaperPreviewViewAccessibility *)self safeUIViewForKey:@"_parallaxButton"];
  [v4 setAccessibilityLabel:v3];

  v5 = accessibilitySBLocalizedString(@"live.photo.button.for.wallpaper");
  v6 = [(SBSUIWallpaperPreviewViewAccessibility *)self safeUIViewForKey:@"irisButton"];
  [v6 setAccessibilityLabel:v5];
}

@end