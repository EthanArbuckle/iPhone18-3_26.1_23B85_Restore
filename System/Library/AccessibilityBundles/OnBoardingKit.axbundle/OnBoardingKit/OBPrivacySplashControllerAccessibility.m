@interface OBPrivacySplashControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axSetIconProperties:(id)a3;
- (void)viewDidLoad;
@end

@implementation OBPrivacySplashControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"OBPrivacySplashController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"OBPrivacySplashController" isKindOfClass:@"OBWelcomeController"];
  [v3 validateClass:@"OBWelcomeController" hasInstanceVariable:@"_headerView" withType:"OBHeaderView"];
  [v3 validateClass:@"OBHeaderView" hasInstanceVariable:@"_imageView" withType:"OBImageView"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = OBPrivacySplashControllerAccessibility;
  [(OBPrivacySplashControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(OBPrivacySplashControllerAccessibility *)self safeValueForKey:@"_headerView"];
  v4 = [v3 safeUIViewForKey:@"_imageView"];

  [(OBPrivacySplashControllerAccessibility *)self _axSetIconProperties:v4];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = OBPrivacySplashControllerAccessibility;
  [(OBPrivacySplashControllerAccessibility *)&v3 viewDidLoad];
  [(OBPrivacySplashControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_axSetIconProperties:(id)a3
{
  if (a3)
  {
    v4 = a3;
    [v4 setIsAccessibilityElement:1];
    v3 = accessibilityLocalizedString(@"privacy.icon");
    [v4 setAccessibilityLabel:v3];

    [v4 setAccessibilityTraits:*MEMORY[0x29EDBDB40]];
  }
}

@end