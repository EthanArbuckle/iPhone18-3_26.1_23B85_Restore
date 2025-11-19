@interface PKBarcodeStickerViewAccessibility
- (id)accessibilityLabel;
@end

@implementation PKBarcodeStickerViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(PKBarcodeStickerViewAccessibility *)self safeValueForKey:@"_altTextLabel"];
  v3 = [v2 accessibilityLabel];
  v6 = accessibilityLocalizedString(@"barcode.image");
  v4 = __UIAXStringForVariables();

  return v4;
}

@end