@interface CNPhotoPickerMonogramProviderItemAccessibility
- (NSString)_axColorVariantName;
@end

@implementation CNPhotoPickerMonogramProviderItemAccessibility

- (NSString)_axColorVariantName
{
  objc_opt_class();
  v3 = [(CNPhotoPickerMonogramProviderItemAccessibility *)self safeValueForKey:@"backgroundColor"];
  v4 = __UIAccessibilityCastAsClass();

  if (v4)
  {
    AXColorStringForColor();
  }

  else
  {
    accessibilityLocalizedString(@"default.background.color");
  }
  v5 = ;

  return v5;
}

@end