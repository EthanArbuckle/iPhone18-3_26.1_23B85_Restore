@interface CNPhotoPickerAnimojiProviderItemAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (NSString)_axColorVariantName;
@end

@implementation CNPhotoPickerAnimojiProviderItemAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CNPhotoPickerAnimojiProviderItem" hasInstanceMethod:@"backgroundColorVariant" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CNPhotoPickerColorVariant"];
  [v3 validateClass:@"CNPhotoPickerColorVariant" hasInstanceMethod:@"color" withFullSignature:{"@", 0}];
}

- (NSString)_axColorVariantName
{
  objc_opt_class();
  v3 = [(CNPhotoPickerAnimojiProviderItemAccessibility *)self safeValueForKey:@"backgroundColorVariant"];
  v4 = [v3 safeValueForKey:@"color"];
  v5 = __UIAccessibilityCastAsClass();

  if (v5)
  {
    AXColorStringForColor();
  }

  else
  {
    accessibilityLocalizedString(@"default.background.color");
  }
  v6 = ;

  return v6;
}

@end