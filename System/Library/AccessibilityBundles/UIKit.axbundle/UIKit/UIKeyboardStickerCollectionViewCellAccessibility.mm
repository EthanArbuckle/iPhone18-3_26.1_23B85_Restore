@interface UIKeyboardStickerCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
@end

@implementation UIKeyboardStickerCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"UIKeyboardStickerCollectionViewCell" hasInstanceMethod:@"imageGlyph" withFullSignature:{"@", 0}];
  objc_storeStrong(v4, obj);
}

- (id)accessibilityIdentifier
{
  selfCopy = self;
  v9 = a2;
  v5 = [(UIKeyboardStickerCollectionViewCellAccessibility *)self safeValueForKeyPath:@"imageGlyph.toString"];
  v6 = 0;
  if (v5)
  {
    v2 = MEMORY[0x29EDC9748](v5);
  }

  else
  {
    v8.receiver = selfCopy;
    v8.super_class = UIKeyboardStickerCollectionViewCellAccessibility;
    accessibilityIdentifier = [(UIKeyboardStickerCollectionViewCellAccessibility *)&v8 accessibilityIdentifier];
    v6 = 1;
    v2 = MEMORY[0x29EDC9748](accessibilityIdentifier);
  }

  v11 = v2;
  if (v6)
  {
    MEMORY[0x29EDC9740](accessibilityIdentifier);
  }

  MEMORY[0x29EDC9740](v5);
  v3 = v11;

  return v3;
}

- (id)accessibilityLabel
{
  selfCopy = self;
  v7[1] = a2;
  v7[0] = [(UIKeyboardStickerCollectionViewCellAccessibility *)self safeValueForKey:@"imageGlyph.accessibilityCaption"];
  location = [(UIKeyboardStickerCollectionViewCellAccessibility *)selfCopy safeValueForKey:@"imageGlyph.searchText"];
  if (v7[0])
  {
    accessibilityLabel = MEMORY[0x29EDC9748](v7[0]);
    v5 = 1;
  }

  else
  {
    if (location)
    {
      accessibilityLabel = MEMORY[0x29EDC9748](location);
    }

    else
    {
      v4.receiver = selfCopy;
      v4.super_class = UIKeyboardStickerCollectionViewCellAccessibility;
      accessibilityLabel = [(UIKeyboardStickerCollectionViewCellAccessibility *)&v4 accessibilityLabel];
    }

    v5 = 1;
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(v7, 0);
  v2 = accessibilityLabel;

  return v2;
}

@end