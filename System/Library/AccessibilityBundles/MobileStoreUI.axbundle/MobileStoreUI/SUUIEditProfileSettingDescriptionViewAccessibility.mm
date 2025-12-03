@interface SUUIEditProfileSettingDescriptionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)reloadWithSettingDescription:(id)description width:(double)width context:(id)context;
@end

@implementation SUUIEditProfileSettingDescriptionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SUUIEditProfileSettingDescriptionView" hasInstanceVariable:@"_imageView" withType:"SUUIImageView"];
  [validationsCopy validateClass:@"SUUIEditProfileSettingDescriptionView" hasInstanceVariable:@"_editButton" withType:"UIButton"];
  [validationsCopy validateClass:@"SUUIEditProfileSettingDescriptionView" hasInstanceVariable:@"_nameField" withType:"UITextField"];
  [validationsCopy validateClass:@"SUUIEditProfileSettingDescriptionView" hasInstanceVariable:@"_handleField" withType:"UITextField"];
  [validationsCopy validateClass:@"SUUIEditProfileSettingDescriptionView" hasInstanceMethod:@"reloadWithSettingDescription: width: context:" withFullSignature:{"v", "@", "d", "@", 0}];
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

  placeholder = [v8 placeholder];
  [v8 setAccessibilityLabel:placeholder];

  objc_opt_class();
  v10 = [(SUUIEditProfileSettingDescriptionViewAccessibility *)self safeValueForKey:@"_handleField"];
  v11 = __UIAccessibilityCastAsClass();

  placeholder2 = [v11 placeholder];
  [v11 setAccessibilityLabel:placeholder2];
}

- (void)reloadWithSettingDescription:(id)description width:(double)width context:(id)context
{
  v6.receiver = self;
  v6.super_class = SUUIEditProfileSettingDescriptionViewAccessibility;
  [(SUUIEditProfileSettingDescriptionViewAccessibility *)&v6 reloadWithSettingDescription:description width:context context:width];
  [(SUUIEditProfileSettingDescriptionViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end