@interface UIKeyboardEmojiAndStickerCollectionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityFirstOpaqueElement;
- (id)_accessibilityLocalizedVisibleSectionNames;
- (id)_accessibilityScrollStatus;
- (id)_accessibilitySortedElementsWithin;
@end

@implementation UIKeyboardEmojiAndStickerCollectionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v9 = location;
  v8 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"UIKeyboardEmojiSplitCharacterPicker"];
  v5 = @"UIKeyboardEmojiAndStickerCollectionView";
  [location[0] validateClass:? isKindOfClass:?];
  v3 = @"UIKeyboardEmojiCategory";
  v7 = "q";
  [location[0] validateClass:"Q" hasClassMethod:0 withFullSignature:?];
  v4 = "@";
  [location[0] validateClass:v3 hasClassMethod:@"displayName:" withFullSignature:{v7, 0}];
  v6 = @"UIScrollView";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v5 isKindOfClass:v6];
  [location[0] validateClass:@"UIKeyboardEmojiCollectionInputView" hasInstanceVariable:@"_flowLayout" withType:"UICollectionViewFlowLayout"];
  [location[0] validateClass:@"UICollectionViewFlowLayout" hasInstanceMethod:@"scrollDirection" withFullSignature:{v7, 0}];
  objc_storeStrong(v9, v8);
}

- (id)_accessibilitySortedElementsWithin
{
  v14 = self;
  v13 = a2;
  v7 = [(UIKeyboardEmojiAndStickerCollectionViewAccessibility *)self safeValueForKeyPath:@"delegate._flowLayout"];
  v8 = [v7 safeIntegerForKey:@"scrollDirection"];
  *&v2 = MEMORY[0x29EDC9740](v7).n128_u64[0];
  v12 = v8;
  if (v8)
  {
    v6 = [(UIKeyboardEmojiAndStickerCollectionViewAccessibility *)v14 subviews];
    v10 = [v6 ax_filteredArrayUsingBlock:&__block_literal_global_3];
    *&v3 = MEMORY[0x29EDC9740](v6).n128_u64[0];
    v9 = [v10 sortedArrayUsingSelector:{sel__emojiCompare_, v3}];
    v15 = MEMORY[0x29EDC9748](v9);
    objc_storeStrong(&v9, 0);
    objc_storeStrong(&v10, 0);
  }

  else
  {
    v11.receiver = v14;
    v11.super_class = UIKeyboardEmojiAndStickerCollectionViewAccessibility;
    v15 = [(UIKeyboardEmojiAndStickerCollectionViewAccessibility *)&v11 _accessibilitySortedElementsWithin];
  }

  v4 = v15;

  return v4;
}

uint64_t __90__UIKeyboardEmojiAndStickerCollectionViewAccessibility__accessibilitySortedElementsWithin__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [location[0] accessibilityElementsHidden] ^ 1;
  objc_storeStrong(location, 0);
  return v3;
}

- (id)_accessibilityScrollStatus
{
  v11 = self;
  v10[1] = a2;
  v9.receiver = self;
  v9.super_class = UIKeyboardEmojiAndStickerCollectionViewAccessibility;
  v10[0] = [(UIKeyboardEmojiAndStickerCollectionViewAccessibility *)&v9 _accessibilityScrollStatus];
  v8 = [(UIKeyboardEmojiAndStickerCollectionViewAccessibility *)v11 _accessibilityLocalizedVisibleSectionNames];
  v7 = 0;
  if ([v8 count])
  {
    v4 = [(UIKeyboardEmojiAndStickerCollectionViewAccessibility *)v11 _accessibilityLocalizedVisibleSectionNames];
    v6 = MEMORY[0x29ED3D9D0]();
    MEMORY[0x29EDC9740](v4);
    v5 = accessibilityLocalizedString(@"emoji.keyboard.pages_and_visible_categories");
    v12 = AXCFormattedString();
    MEMORY[0x29EDC9740](v5);
    objc_storeStrong(&v6, 0);
  }

  else
  {
    objc_storeStrong(&v7, v10[0]);
    v12 = MEMORY[0x29EDC9748](v7);
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(v10, 0);
  v2 = v12;

  return v2;
}

- (id)_accessibilityLocalizedVisibleSectionNames
{
  v53[1] = a1;
  if (a1)
  {
    v53[0] = [MEMORY[0x29EDB8DE8] array];
    v51 = 0;
    objc_opt_class();
    v50 = __UIAccessibilityCastAsClass();
    v49 = MEMORY[0x29EDC9748](v50);
    objc_storeStrong(&v50, 0);
    v52 = v49;
    v17 = [v49 dataSource];
    v47 = 0;
    LOBYTE(v18) = 0;
    if (v17)
    {
      v48 = [v52 dataSource];
      v47 = 1;
      NSClassFromString(&cfstr_Uikeyboardemoj_10.isa);
      v18 = objc_opt_isKindOfClass() ^ 1;
    }

    if (v47)
    {
      MEMORY[0x29EDC9740](v48);
    }

    MEMORY[0x29EDC9740](v17);
    if (v18)
    {
      [v52 visibleBounds];
      v46.origin.x = v1;
      v46.origin.y = v2;
      v46.size.width = v3;
      v46.size.height = v4;
      v45 = [v52 numberOfSections];
      for (i = 0; i < v45; ++i)
      {
        v15 = v52;
        v14 = *MEMORY[0x29EDC8048];
        v16 = [MEMORY[0x29EDB9FE0] indexPathForItem:0 inSection:i];
        v43 = [v15 layoutAttributesForSupplementaryElementOfKind:v14 atIndexPath:?];
        *&v5 = MEMORY[0x29EDC9740](v16).n128_u64[0];
        [v43 frame];
        v42.origin.x = v6;
        v42.origin.y = v7;
        v42.size.width = v8;
        v42.size.height = v9;
        if (CGRectIntersectsRect(v46, v42))
        {
          v36 = 0;
          v37 = &v36;
          v38 = 0x20000000;
          v39 = 32;
          v40 = 0;
          v29 = MEMORY[0x29EDCA5F8];
          v30 = -1073741824;
          v31 = 0;
          v32 = __98__UIKeyboardEmojiAndStickerCollectionViewAccessibility__accessibilityLocalizedVisibleSectionNames__block_invoke;
          v33 = &unk_29F30C918;
          v34 = &v36;
          v35 = i;
          AXPerformSafeBlock();
          v28 = v37[3];
          _Block_object_dispose(&v36, 8);
          v41 = v28;
          v13 = accessibilityLocalizedString(@"emoji.category");
          v20 = 0;
          v21 = &v20;
          v22 = 838860800;
          v23 = 48;
          v24 = __Block_byref_object_copy__0;
          v25 = __Block_byref_object_dispose__0;
          v26 = 0;
          AXPerformSafeBlock();
          v19 = MEMORY[0x29EDC9748](v21[5]);
          _Block_object_dispose(&v20, 8);
          objc_storeStrong(&v26, 0);
          v27 = AXCFormattedString();
          MEMORY[0x29EDC9740](v19);
          *&v10 = MEMORY[0x29EDC9740](v13).n128_u64[0];
          if (v27)
          {
            [v53[0] addObject:{v27, v10, v19}];
          }

          objc_storeStrong(&v27, 0);
        }

        objc_storeStrong(&v43, 0);
      }
    }

    v54 = MEMORY[0x29EDC9748](v53[0]);
    objc_storeStrong(&v52, 0);
    objc_storeStrong(v53, 0);
  }

  else
  {
    v54 = 0;
  }

  v11 = v54;

  return v11;
}

uint64_t __98__UIKeyboardEmojiAndStickerCollectionViewAccessibility__accessibilityLocalizedVisibleSectionNames__block_invoke(uint64_t a1)
{
  result = [NSClassFromString(&cfstr_Uikeyboardemoj.isa) categoryTypeForCategoryIndex:*(a1 + 40)];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

double __98__UIKeyboardEmojiAndStickerCollectionViewAccessibility__accessibilityLocalizedVisibleSectionNames__block_invoke_369(uint64_t a1)
{
  v1 = [NSClassFromString(&cfstr_Uikeyboardemoj.isa) displayName:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

- (id)_accessibilityFirstOpaqueElement
{
  v11 = self;
  v10[1] = a2;
  v9 = 0;
  objc_opt_class();
  v4 = [(UIKeyboardEmojiAndStickerCollectionViewAccessibility *)v11 _accessibilityValueForKey:@"LastEmojiSelected"];
  v8 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v4);
  v7 = MEMORY[0x29EDC9748](v8);
  objc_storeStrong(&v8, 0);
  v10[0] = v7;
  if ([v7 _accessibilityViewIsVisible])
  {
    v12 = MEMORY[0x29EDC9748](v10[0]);
  }

  else
  {
    v5.receiver = v11;
    v5.super_class = UIKeyboardEmojiAndStickerCollectionViewAccessibility;
    v12 = [(UIKeyboardEmojiAndStickerCollectionViewAccessibility *)&v5 _accessibilityFirstOpaqueElement];
  }

  v6 = 1;
  objc_storeStrong(v10, 0);
  v2 = v12;

  return v2;
}

@end