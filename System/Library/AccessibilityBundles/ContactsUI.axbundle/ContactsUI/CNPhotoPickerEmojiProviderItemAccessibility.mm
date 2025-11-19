@interface CNPhotoPickerEmojiProviderItemAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (NSString)_axColorVariantName;
- (NSString)_axStringRepresentation;
@end

@implementation CNPhotoPickerEmojiProviderItemAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CNPhotoPickerEmojiProviderItem" hasProperty:@"stringRepresentation" withType:"@"];
  [v3 validateClass:@"CNPhotoPickerEmojiProviderItem" hasProperty:@"backgroundColorVariant" withType:"@"];
}

- (NSString)_axStringRepresentation
{
  v2 = [(CNPhotoPickerEmojiProviderItemAccessibility *)self safeStringForKey:@"stringRepresentation"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (NSString)_axColorVariantName
{
  objc_opt_class();
  v3 = [(CNPhotoPickerEmojiProviderItemAccessibility *)self safeValueForKey:@"backgroundColorVariant"];
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