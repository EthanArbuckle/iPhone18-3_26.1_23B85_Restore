@interface SBWallpaperControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (SBWallpaperControllerAccessibility)initWithWindowScene:(id)a3 orientation:(int64_t)a4 variant:(int64_t)a5 wallpaperConfigurationManager:(id)a6 cachingIdentifier:(id)a7;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation SBWallpaperControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBWallpaperController" hasInstanceVariable:@"_wallpaperWindow" withType:"UIWindow"];
  [v3 validateClass:@"SBWallpaperController" hasInstanceMethod:@"initWithWindowScene:orientation:variant:wallpaperConfigurationManager:cachingIdentifier:" withFullSignature:{"@", "q", "q", "@", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = SBWallpaperControllerAccessibility;
  [(SBWallpaperControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(SBWallpaperControllerAccessibility *)self safeValueForKey:@"_wallpaperWindow"];
  [v3 setAccessibilityElementsHidden:1];
}

- (SBWallpaperControllerAccessibility)initWithWindowScene:(id)a3 orientation:(int64_t)a4 variant:(int64_t)a5 wallpaperConfigurationManager:(id)a6 cachingIdentifier:(id)a7
{
  v9.receiver = self;
  v9.super_class = SBWallpaperControllerAccessibility;
  v7 = [(SBWallpaperControllerAccessibility *)&v9 initWithWindowScene:a3 orientation:a4 variant:a5 wallpaperConfigurationManager:a6 cachingIdentifier:a7];
  [(SBWallpaperControllerAccessibility *)v7 _accessibilityLoadAccessibilityInformation];

  return v7;
}

@end