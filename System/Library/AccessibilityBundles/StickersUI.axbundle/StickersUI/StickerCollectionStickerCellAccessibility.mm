@interface StickerCollectionStickerCellAccessibility
- (id)accessibilityLabel;
@end

@implementation StickerCollectionStickerCellAccessibility

- (id)accessibilityLabel
{
  v3 = [(StickerCollectionStickerCellAccessibility *)self safeSwiftValueForKey:@"stickerView"];
  v9.receiver = self;
  v9.super_class = StickerCollectionStickerCellAccessibility;
  accessibilityLabel = [(StickerCollectionStickerCellAccessibility *)&v9 accessibilityLabel];
  if ([accessibilityLabel length])
  {
    v8.receiver = self;
    v8.super_class = StickerCollectionStickerCellAccessibility;
    accessibilityLabel2 = [(StickerCollectionStickerCellAccessibility *)&v8 accessibilityLabel];
  }

  else
  {
    accessibilityLabel2 = [v3 accessibilityLabel];
  }

  v6 = accessibilityLabel2;

  return v6;
}

@end