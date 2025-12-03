@interface SKUIEditProfileSettingDescriptionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)reloadWithSettingDescription:(id)description width:(double)width context:(id)context;
@end

@implementation SKUIEditProfileSettingDescriptionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SKUIEditProfileSettingDescriptionView" hasInstanceVariable:@"_imageView" withType:"SKUIImageView"];
  [validationsCopy validateClass:@"SKUIEditProfileSettingDescriptionView" hasInstanceVariable:@"_editButton" withType:"UIButton"];
  [validationsCopy validateClass:@"SKUIEditProfileSettingDescriptionView" hasInstanceVariable:@"_nameField" withType:"UITextField"];
  [validationsCopy validateClass:@"SKUIEditProfileSettingDescriptionView" hasInstanceVariable:@"_handleField" withType:"UITextField"];
  [validationsCopy validateClass:@"SKUIEditProfileSettingDescriptionView" hasInstanceMethod:@"reloadWithSettingDescription: width: context:" withFullSignature:{"v", "@", "d", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v13.receiver = self;
  v13.super_class = SKUIEditProfileSettingDescriptionViewAccessibility;
  [(SKUIEditProfileSettingDescriptionViewAccessibility *)&v13 _accessibilityLoadAccessibilityInformation];
  v3 = [(SKUIEditProfileSettingDescriptionViewAccessibility *)self safeValueForKey:@"_imageView"];
  v4 = accessibilitySKUILocalizedString(@"music.account.photo");
  [v3 setAccessibilityLabel:v4];

  v5 = [(SKUIEditProfileSettingDescriptionViewAccessibility *)self safeValueForKey:@"_editButton"];
  v6 = accessibilitySKUILocalizedString(@"music.account.edit.photo");
  [v5 setAccessibilityLabel:v6];

  objc_opt_class();
  v7 = [(SKUIEditProfileSettingDescriptionViewAccessibility *)self safeValueForKey:@"_nameField"];
  v8 = __UIAccessibilityCastAsClass();

  placeholder = [v8 placeholder];
  [v8 setAccessibilityLabel:placeholder];

  objc_opt_class();
  v10 = [(SKUIEditProfileSettingDescriptionViewAccessibility *)self safeValueForKey:@"_handleField"];
  v11 = __UIAccessibilityCastAsClass();

  placeholder2 = [v11 placeholder];
  [v11 setAccessibilityLabel:placeholder2];
}

- (void)reloadWithSettingDescription:(id)description width:(double)width context:(id)context
{
  v6.receiver = self;
  v6.super_class = SKUIEditProfileSettingDescriptionViewAccessibility;
  [(SKUIEditProfileSettingDescriptionViewAccessibility *)&v6 reloadWithSettingDescription:description width:context context:width];
  [(SKUIEditProfileSettingDescriptionViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end