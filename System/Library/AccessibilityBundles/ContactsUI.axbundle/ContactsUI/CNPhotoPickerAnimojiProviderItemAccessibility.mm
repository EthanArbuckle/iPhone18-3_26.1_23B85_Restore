@interface CNPhotoPickerAnimojiProviderItemAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (NSString)_axColorVariantName;
@end

@implementation CNPhotoPickerAnimojiProviderItemAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CNPhotoPickerAnimojiProviderItem" hasInstanceMethod:@"backgroundColorVariant" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNPhotoPickerColorVariant"];
  [validationsCopy validateClass:@"CNPhotoPickerColorVariant" hasInstanceMethod:@"color" withFullSignature:{"@", 0}];
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