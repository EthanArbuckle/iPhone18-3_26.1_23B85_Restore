@interface STKStickerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation STKStickerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"STKStickerView" hasInstanceMethod:@"imageGlyph" withFullSignature:{"@", 0}];
  [v3 validateProtocol:@"StickerKit.ImageGlyphDataSourceProtocol" hasRequiredInstanceMethod:@"accessibilityTextForItem:"];
}

- (id)accessibilityLabel
{
  v3 = [(STKStickerViewAccessibility *)self safeValueForKey:@"imageGlyph"];
  v4 = [MEMORY[0x29EDBBE60] sharedInstance];
  if (!v3 || (objc_opt_respondsToSelector() & 1) == 0 || ([v4 accessibilityTextForItem:v3], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7.receiver = self;
    v7.super_class = STKStickerViewAccessibility;
    v5 = [(STKStickerViewAccessibility *)&v7 accessibilityLabel];
  }

  return v5;
}

@end