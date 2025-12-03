@interface SBWallpaperControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (SBWallpaperControllerAccessibility)initWithWindowScene:(id)scene orientation:(int64_t)orientation variant:(int64_t)variant wallpaperConfigurationManager:(id)manager cachingIdentifier:(id)identifier;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation SBWallpaperControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBWallpaperController" hasInstanceVariable:@"_wallpaperWindow" withType:"UIWindow"];
  [validationsCopy validateClass:@"SBWallpaperController" hasInstanceMethod:@"initWithWindowScene:orientation:variant:wallpaperConfigurationManager:cachingIdentifier:" withFullSignature:{"@", "q", "q", "@", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = SBWallpaperControllerAccessibility;
  [(SBWallpaperControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(SBWallpaperControllerAccessibility *)self safeValueForKey:@"_wallpaperWindow"];
  [v3 setAccessibilityElementsHidden:1];
}

- (SBWallpaperControllerAccessibility)initWithWindowScene:(id)scene orientation:(int64_t)orientation variant:(int64_t)variant wallpaperConfigurationManager:(id)manager cachingIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = SBWallpaperControllerAccessibility;
  v7 = [(SBWallpaperControllerAccessibility *)&v9 initWithWindowScene:scene orientation:orientation variant:variant wallpaperConfigurationManager:manager cachingIdentifier:identifier];
  [(SBWallpaperControllerAccessibility *)v7 _accessibilityLoadAccessibilityInformation];

  return v7;
}

@end