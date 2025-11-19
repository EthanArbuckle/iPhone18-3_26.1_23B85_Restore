@interface UIKeyboardEmojiCollectionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityFirstOpaqueElement;
- (id)_accessibilityLocalizedVisibleSectionNames;
- (id)_accessibilityScrollStatus;
- (id)_accessibilitySortedElementsWithin;
@end

@implementation UIKeyboardEmojiCollectionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v9 = location;
  v8 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"UIKeyboardEmojiSplitCharacterPicker"];
  v5 = @"UIKeyboardEmojiCollectionView";
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
  v7 = [(UIKeyboardEmojiCollectionViewAccessibility *)self safeValueForKeyPath:@"delegate._flowLayout"];
  v8 = [v7 safeIntegerForKey:@"scrollDirection"];
  *&v2 = MEMORY[0x29EDC9740](v7).n128_u64[0];
  v12 = v8;
  if (v8)
  {
    v6 = [(UIKeyboardEmojiCollectionViewAccessibility *)v14 subviews];
    v10 = [v6 ax_filteredArrayUsingBlock:&__block_literal_global_24];
    *&v3 = MEMORY[0x29EDC9740](v6).n128_u64[0];
    v9 = [v10 sortedArrayUsingSelector:{sel__emojiCompare_, v3}];
    v15 = MEMORY[0x29EDC9748](v9);
    objc_storeStrong(&v9, 0);
    objc_storeStrong(&v10, 0);
  }

  else
  {
    v11.receiver = v14;
    v11.super_class = UIKeyboardEmojiCollectionViewAccessibility;
    v15 = [(UIKeyboardEmojiCollectionViewAccessibility *)&v11 _accessibilitySortedElementsWithin];
  }

  v4 = v15;

  return v4;
}

uint64_t __80__UIKeyboardEmojiCollectionViewAccessibility__accessibilitySortedElementsWithin__block_invoke(void *a1, void *a2)
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
  v14 = self;
  v13[1] = a2;
  v12.receiver = self;
  v12.super_class = UIKeyboardEmojiCollectionViewAccessibility;
  v13[0] = [(UIKeyboardEmojiCollectionViewAccessibility *)&v12 _accessibilityScrollStatus];
  v11 = [(UIKeyboardEmojiCollectionViewAccessibility *)v14 _accessibilityLocalizedVisibleSectionNames];
  v10 = 0;
  if ([v11 count])
  {
    v6 = [(UIKeyboardEmojiCollectionViewAccessibility *)v14 _accessibilityLocalizedVisibleSectionNames];
    v9 = MEMORY[0x29ED3D9D0]();
    MEMORY[0x29EDC9740](v6);
    v7 = MEMORY[0x29EDBA0F8];
    v8 = accessibilityLocalizedString(@"emoji.keyboard.pages_and_visible_categories");
    v2 = [v7 stringWithFormat:v13[0], v9];
    v3 = v10;
    v10 = v2;
    MEMORY[0x29EDC9740](v3);
    MEMORY[0x29EDC9740](v8);
    objc_storeStrong(&v9, 0);
  }

  else
  {
    objc_storeStrong(&v10, v13[0]);
  }

  v5 = MEMORY[0x29EDC9748](v10);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(v13, 0);

  return v5;
}

- (id)_accessibilityLocalizedVisibleSectionNames
{
  v54[1] = a1;
  if (a1)
  {
    v54[0] = [MEMORY[0x29EDB8DE8] array];
    v52 = 0;
    objc_opt_class();
    v51 = __UIAccessibilityCastAsClass();
    v50 = MEMORY[0x29EDC9748](v51);
    objc_storeStrong(&v51, 0);
    v53 = v50;
    v18 = [v50 dataSource];
    v48 = 0;
    LOBYTE(v19) = 0;
    if (v18)
    {
      v49 = [v53 dataSource];
      v48 = 1;
      NSClassFromString(&cfstr_Uikeyboardemoj_10.isa);
      v19 = objc_opt_isKindOfClass() ^ 1;
    }

    if (v48)
    {
      MEMORY[0x29EDC9740](v49);
    }

    MEMORY[0x29EDC9740](v18);
    if (v19)
    {
      [v53 visibleBounds];
      v47.origin.x = v1;
      v47.origin.y = v2;
      v47.size.width = v3;
      v47.size.height = v4;
      v46 = [v53 numberOfSections];
      for (i = 0; i < v46; ++i)
      {
        v16 = v53;
        v15 = *MEMORY[0x29EDC8048];
        v17 = [MEMORY[0x29EDB9FE0] indexPathForItem:0 inSection:i];
        v44 = [v16 layoutAttributesForSupplementaryElementOfKind:v15 atIndexPath:?];
        *&v5 = MEMORY[0x29EDC9740](v17).n128_u64[0];
        [v44 frame];
        v43.origin.x = v6;
        v43.origin.y = v7;
        v43.size.width = v8;
        v43.size.height = v9;
        if (CGRectIntersectsRect(v47, v43))
        {
          v37 = 0;
          v38 = &v37;
          v39 = 0x20000000;
          v40 = 32;
          v41 = 0;
          v30 = MEMORY[0x29EDCA5F8];
          v31 = -1073741824;
          v32 = 0;
          v33 = __88__UIKeyboardEmojiCollectionViewAccessibility__accessibilityLocalizedVisibleSectionNames__block_invoke;
          v34 = &unk_29F30C918;
          v35 = &v37;
          v36 = i;
          AXPerformSafeBlock();
          v29 = v38[3];
          _Block_object_dispose(&v37, 8);
          v42 = v29;
          v13 = MEMORY[0x29EDBA0F8];
          v14 = accessibilityLocalizedString(@"emoji.category");
          v21 = 0;
          v22 = &v21;
          v23 = 838860800;
          v24 = 48;
          v25 = __Block_byref_object_copy__15;
          v26 = __Block_byref_object_dispose__15;
          v27 = 0;
          AXPerformSafeBlock();
          v20 = MEMORY[0x29EDC9748](v22[5]);
          _Block_object_dispose(&v21, 8);
          objc_storeStrong(&v27, 0);
          v28 = [v13 stringWithFormat:v14, v20];
          MEMORY[0x29EDC9740](v20);
          *&v10 = MEMORY[0x29EDC9740](v14).n128_u64[0];
          if (v28)
          {
            [v54[0] addObject:{v28, v10}];
          }

          objc_storeStrong(&v28, 0);
        }

        objc_storeStrong(&v44, 0);
      }
    }

    v55 = MEMORY[0x29EDC9748](v54[0]);
    objc_storeStrong(&v53, 0);
    objc_storeStrong(v54, 0);
  }

  else
  {
    v55 = 0;
  }

  v11 = v55;

  return v11;
}

uint64_t __88__UIKeyboardEmojiCollectionViewAccessibility__accessibilityLocalizedVisibleSectionNames__block_invoke(uint64_t a1)
{
  result = [NSClassFromString(&cfstr_Uikeyboardemoj.isa) categoryTypeForCategoryIndex:*(a1 + 40)];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

double __88__UIKeyboardEmojiCollectionViewAccessibility__accessibilityLocalizedVisibleSectionNames__block_invoke_372(uint64_t a1)
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
  v4 = [(UIKeyboardEmojiCollectionViewAccessibility *)v11 _accessibilityValueForKey:@"LastEmojiSelected"];
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
    v5.super_class = UIKeyboardEmojiCollectionViewAccessibility;
    v12 = [(UIKeyboardEmojiCollectionViewAccessibility *)&v5 _accessibilityFirstOpaqueElement];
  }

  v6 = 1;
  objc_storeStrong(v10, 0);
  v2 = v12;

  return v2;
}

@end