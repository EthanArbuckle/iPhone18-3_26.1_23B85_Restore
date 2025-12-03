@interface OBPrivacySplashControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axSetIconProperties:(id)properties;
- (void)viewDidLoad;
@end

@implementation OBPrivacySplashControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"OBPrivacySplashController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"OBPrivacySplashController" isKindOfClass:@"OBWelcomeController"];
  [validationsCopy validateClass:@"OBWelcomeController" hasInstanceVariable:@"_headerView" withType:"OBHeaderView"];
  [validationsCopy validateClass:@"OBHeaderView" hasInstanceVariable:@"_imageView" withType:"OBImageView"];
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

- (void)_axSetIconProperties:(id)properties
{
  if (properties)
  {
    propertiesCopy = properties;
    [propertiesCopy setIsAccessibilityElement:1];
    v3 = accessibilityLocalizedString(@"privacy.icon");
    [propertiesCopy setAccessibilityLabel:v3];

    [propertiesCopy setAccessibilityTraits:*MEMORY[0x29EDBDB40]];
  }
}

@end