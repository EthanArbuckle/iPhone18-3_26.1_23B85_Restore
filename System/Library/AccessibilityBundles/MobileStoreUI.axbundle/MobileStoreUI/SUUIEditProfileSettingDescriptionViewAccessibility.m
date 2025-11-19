@interface SUUIEditProfileSettingDescriptionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)reloadWithSettingDescription:(id)a3 width:(double)a4 context:(id)a5;
@end

@implementation SUUIEditProfileSettingDescriptionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SUUIEditProfileSettingDescriptionView" hasInstanceVariable:@"_imageView" withType:"SUUIImageView"];
  [v3 validateClass:@"SUUIEditProfileSettingDescriptionView" hasInstanceVariable:@"_editButton" withType:"UIButton"];
  [v3 validateClass:@"SUUIEditProfileSettingDescriptionView" hasInstanceVariable:@"_nameField" withType:"UITextField"];
  [v3 validateClass:@"SUUIEditProfileSettingDescriptionView" hasInstanceVariable:@"_handleField" withType:"UITextField"];
  [v3 validateClass:@"SUUIEditProfileSettingDescriptionView" hasInstanceMethod:@"reloadWithSettingDescription: width: context:" withFullSignature:{"v", "@", "d", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v13.receiver = self;
  v13.super_class = SUUIEditProfileSettingDescriptionViewAccessibility;
  [(SUUIEditProfileSettingDescriptionViewAccessibility *)&v13 _accessibilityLoadAccessibilityInformation];
  v3 = [(SUUIEditProfileSettingDescriptionViewAccessibility *)self safeValueForKey:@"_imageView"];
  v4 = accessibilityLocalizedString(@"music.account.photo");
  [v3 setAccessibilityLabel:v4];

  v5 = [(SUUIEditProfileSettingDescriptionViewAccessibility *)self safeValueForKey:@"_editButton"];
  v6 = accessibilityLocalizedString(@"music.account.edit.photo");
  [v5 setAccessibilityLabel:v6];

  objc_opt_class();
  v7 = [(SUUIEditProfileSettingDescriptionViewAccessibility *)self safeValueForKey:@"_nameField"];
  v8 = __UIAccessibilityCastAsClass();

  v9 = [v8 placeholder];
  [v8 setAccessibilityLabel:v9];

  objc_opt_class();
  v10 = [(SUUIEditProfileSettingDescriptionViewAccessibility *)self safeValueForKey:@"_handleField"];
  v11 = __UIAccessibilityCastAsClass();

  v12 = [v11 placeholder];
  [v11 setAccessibilityLabel:v12];
}

- (void)reloadWithSettingDescription:(id)a3 width:(double)a4 context:(id)a5
{
  v6.receiver = self;
  v6.super_class = SUUIEditProfileSettingDescriptionViewAccessibility;
  [(SUUIEditProfileSettingDescriptionViewAccessibility *)&v6 reloadWithSettingDescription:a3 width:a5 context:a4];
  [(SUUIEditProfileSettingDescriptionViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end