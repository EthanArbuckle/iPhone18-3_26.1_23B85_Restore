@interface UIKeyboardStickerCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
@end

@implementation UIKeyboardStickerCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"UIKeyboardStickerCollectionViewCell" hasInstanceMethod:@"imageGlyph" withFullSignature:{"@", 0}];
  objc_storeStrong(v4, obj);
}

- (id)accessibilityIdentifier
{
  v10 = self;
  v9 = a2;
  v5 = [(UIKeyboardStickerCollectionViewCellAccessibility *)self safeValueForKeyPath:@"imageGlyph.toString"];
  v6 = 0;
  if (v5)
  {
    v2 = MEMORY[0x29EDC9748](v5);
  }

  else
  {
    v8.receiver = v10;
    v8.super_class = UIKeyboardStickerCollectionViewCellAccessibility;
    v7 = [(UIKeyboardStickerCollectionViewCellAccessibility *)&v8 accessibilityIdentifier];
    v6 = 1;
    v2 = MEMORY[0x29EDC9748](v7);
  }

  v11 = v2;
  if (v6)
  {
    MEMORY[0x29EDC9740](v7);
  }

  MEMORY[0x29EDC9740](v5);
  v3 = v11;

  return v3;
}

- (id)accessibilityLabel
{
  v8 = self;
  v7[1] = a2;
  v7[0] = [(UIKeyboardStickerCollectionViewCellAccessibility *)self safeValueForKey:@"imageGlyph.accessibilityCaption"];
  location = [(UIKeyboardStickerCollectionViewCellAccessibility *)v8 safeValueForKey:@"imageGlyph.searchText"];
  if (v7[0])
  {
    v9 = MEMORY[0x29EDC9748](v7[0]);
    v5 = 1;
  }

  else
  {
    if (location)
    {
      v9 = MEMORY[0x29EDC9748](location);
    }

    else
    {
      v4.receiver = v8;
      v4.super_class = UIKeyboardStickerCollectionViewCellAccessibility;
      v9 = [(UIKeyboardStickerCollectionViewCellAccessibility *)&v4 accessibilityLabel];
    }

    v5 = 1;
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(v7, 0);
  v2 = v9;

  return v2;
}

@end