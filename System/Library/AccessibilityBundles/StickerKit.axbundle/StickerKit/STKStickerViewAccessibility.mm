@interface STKStickerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation STKStickerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"STKStickerView" hasInstanceMethod:@"imageGlyph" withFullSignature:{"@", 0}];
  [validationsCopy validateProtocol:@"StickerKit.ImageGlyphDataSourceProtocol" hasRequiredInstanceMethod:@"accessibilityTextForItem:"];
}

- (id)accessibilityLabel
{
  v3 = [(STKStickerViewAccessibility *)self safeValueForKey:@"imageGlyph"];
  mEMORY[0x29EDBBE60] = [MEMORY[0x29EDBBE60] sharedInstance];
  if (!v3 || (objc_opt_respondsToSelector() & 1) == 0 || ([mEMORY[0x29EDBBE60] accessibilityTextForItem:v3], (accessibilityLabel = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7.receiver = self;
    v7.super_class = STKStickerViewAccessibility;
    accessibilityLabel = [(STKStickerViewAccessibility *)&v7 accessibilityLabel];
  }

  return accessibilityLabel;
}

@end