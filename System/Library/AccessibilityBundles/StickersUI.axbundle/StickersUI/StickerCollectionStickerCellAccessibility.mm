@interface StickerCollectionStickerCellAccessibility
- (id)accessibilityLabel;
@end

@implementation StickerCollectionStickerCellAccessibility

- (id)accessibilityLabel
{
  v3 = [(StickerCollectionStickerCellAccessibility *)self safeSwiftValueForKey:@"stickerView"];
  v9.receiver = self;
  v9.super_class = StickerCollectionStickerCellAccessibility;
  v4 = [(StickerCollectionStickerCellAccessibility *)&v9 accessibilityLabel];
  if ([v4 length])
  {
    v8.receiver = self;
    v8.super_class = StickerCollectionStickerCellAccessibility;
    v5 = [(StickerCollectionStickerCellAccessibility *)&v8 accessibilityLabel];
  }

  else
  {
    v5 = [v3 accessibilityLabel];
  }

  v6 = v5;

  return v6;
}

@end