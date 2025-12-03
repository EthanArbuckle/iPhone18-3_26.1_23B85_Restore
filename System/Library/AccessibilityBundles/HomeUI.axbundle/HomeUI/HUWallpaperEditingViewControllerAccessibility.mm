@interface HUWallpaperEditingViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation HUWallpaperEditingViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HUWallpaperEditingViewController" hasInstanceMethod:@"scrollView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUWallpaperEditingViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = HUWallpaperEditingViewControllerAccessibility;
  [(HUWallpaperEditingViewControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(HUWallpaperEditingViewControllerAccessibility *)self safeValueForKey:@"scrollView"];
  [v3 setAccessibilityIdentifier:AXWallpaperScrollViewIdentifier];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = HUWallpaperEditingViewControllerAccessibility;
  [(HUWallpaperEditingViewControllerAccessibility *)&v3 viewDidLoad];
  [(HUWallpaperEditingViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end