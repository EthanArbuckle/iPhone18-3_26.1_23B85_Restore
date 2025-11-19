@interface SKUIEditProfileSettingDescriptionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)reloadWithSettingDescription:(id)a3 width:(double)a4 context:(id)a5;
@end

@implementation SKUIEditProfileSettingDescriptionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SKUIEditProfileSettingDescriptionView" hasInstanceVariable:@"_imageView" withType:"SKUIImageView"];
  [v3 validateClass:@"SKUIEditProfileSettingDescriptionView" hasInstanceVariable:@"_editButton" withType:"UIButton"];
  [v3 validateClass:@"SKUIEditProfileSettingDescriptionView" hasInstanceVariable:@"_nameField" withType:"UITextField"];
  [v3 validateClass:@"SKUIEditProfileSettingDescriptionView" hasInstanceVariable:@"_handleField" withType:"UITextField"];
  [v3 validateClass:@"SKUIEditProfileSettingDescriptionView" hasInstanceMethod:@"reloadWithSettingDescription: width: context:" withFullSignature:{"v", "@", "d", "@", 0}];
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

  v9 = [v8 placeholder];
  [v8 setAccessibilityLabel:v9];

  objc_opt_class();
  v10 = [(SKUIEditProfileSettingDescriptionViewAccessibility *)self safeValueForKey:@"_handleField"];
  v11 = __UIAccessibilityCastAsClass();

  v12 = [v11 placeholder];
  [v11 setAccessibilityLabel:v12];
}

- (void)reloadWithSettingDescription:(id)a3 width:(double)a4 context:(id)a5
{
  v6.receiver = self;
  v6.super_class = SKUIEditProfileSettingDescriptionViewAccessibility;
  [(SKUIEditProfileSettingDescriptionViewAccessibility *)&v6 reloadWithSettingDescription:a3 width:a5 context:a4];
  [(SKUIEditProfileSettingDescriptionViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end