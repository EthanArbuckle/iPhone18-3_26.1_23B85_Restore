@interface UIKeyboardEmojiCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityHasVariantKeys;
- (_NSRange)accessibilityRowRange;
- (id)_accessibilityCachedVariantKeys;
- (id)_accessibilityVariantKeys;
- (id)_axEmoji;
- (id)accessibilityHeaderElements;
- (id)accessibilityLabel;
- (int64_t)accessibilityContainerType;
- (unint64_t)accessibilityTraits;
- (void)_accessibilitySetCachedVariantKeys:(uint64_t)a1;
- (void)accessibilityElementDidBecomeFocused;
- (void)prepareForReuse;
- (void)setEmoji:(id)a3;
@end

@implementation UIKeyboardEmojiCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v13 = location;
  v12 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = @"UIKeyboardEmojiCollectionViewCell";
  v5 = @"UICollectionViewCell";
  [location[0] validateClass:? isKindOfClass:?];
  v8 = "@";
  [location[0] validateClass:@"UIKeyboardEmojiCollectionViewCell" hasInstanceMethod:@"emoji" withFullSignature:0];
  v3 = @"UIKeyboardEmoji";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  v7 = "Q";
  [location[0] validateClass:v3 hasInstanceMethod:@"variantMask" withFullSignature:0];
  v6 = "v";
  [location[0] validateClass:v4 hasInstanceMethod:@"setEmoji:" withFullSignature:{v8, 0}];
  [location[0] validateClass:@"UIKeyboardLayoutStar" hasInstanceVariable:@"_keyplaneView" withType:"UIKBKeyplaneView"];
  [location[0] validateClass:@"UIKBKeyplaneView" hasInstanceMethod:@"activeKeyViews" withFullSignature:{v8, 0}];
  [location[0] validateClass:@"UIKBKeyView" hasInstanceMethod:@"key" withFullSignature:{v8, 0}];
  [location[0] validateClass:v5 hasInstanceMethod:@"prepareForReuse" withFullSignature:{v6, 0}];
  v9 = @"UIKeyboardEmojiCollectionView";
  [location[0] validateClass:?];
  v11 = @"UIKeyboardEmojiCollectionInputView";
  [location[0] validateClass:?];
  [location[0] validateClass:@"UIKeyboardEmojiCategoryBar" hasInstanceMethod:@"selectedIndex" withFullSignature:{v7, 0}];
  v10 = @"UIScrollView";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v9 isKindOfClass:v10];
  [location[0] validateClass:v11 hasInstanceVariable:@"_flowLayout" withType:"UICollectionViewFlowLayout"];
  [location[0] validateClass:@"UICollectionViewFlowLayout" hasInstanceMethod:@"scrollDirection" withFullSignature:{"q", 0}];
  objc_storeStrong(v13, v12);
}

- (id)_axEmoji
{
  v7 = a1;
  if (a1)
  {
    v6 = 0;
    v3 = [v7 safeValueForKey:@"emoji"];
    v5 = __UIAccessibilitySafeClass();
    MEMORY[0x29EDC9740](v3);
    v4 = MEMORY[0x29EDC9748](v5);
    objc_storeStrong(&v5, 0);
    v8 = v4;
  }

  else
  {
    v8 = 0;
  }

  v1 = v8;

  return v1;
}

- (void)accessibilityElementDidBecomeFocused
{
  v3 = self;
  v2[1] = a2;
  v2[0] = [(UIKeyboardEmojiCollectionViewCellAccessibility *)self _accessibilityAncestorIsKindOf:objc_opt_class()];
  [v2[0] _accessibilitySetRetainedValue:v3 forKey:@"LastEmojiSelected"];
  objc_storeStrong(v2, 0);
}

- (_NSRange)accessibilityRowRange
{
  v11 = self;
  v10[1] = a2;
  v10[0] = [(UIKeyboardEmojiCollectionViewCellAccessibility *)self _accessibilityAncestorIsKindOf:objc_opt_class()];
  location = [v10[0] indexPathForCell:v11];
  v8 = [v10[0] numberOfSections];
  v7 = 0;
  v6 = [location row];
  for (i = 0; i < v8; ++i)
  {
    v4 = [v10[0] numberOfItemsInSection:i];
    if (i < [location section])
    {
      v6 += v4;
    }

    v7 += v4;
  }

  v15 = v6;
  v14 = v7;
  v16 = v6;
  v17 = v7;
  v12 = v6;
  v13 = v7;
  objc_storeStrong(&location, 0);
  objc_storeStrong(v10, 0);
  v2 = v12;
  v3 = v13;
  result.length = v3;
  result.location = v2;
  return result;
}

- (id)accessibilityLabel
{
  v8[2] = self;
  v8[1] = a2;
  v8[0] = [(UIKeyboardEmojiCollectionViewCellAccessibility *)self _axEmoji];
  v7 = [v8[0] safeValueForKey:@"emojiString"];
  if ([v8[0] safeUnsignedIntegerForKey:@"variantMask"])
  {
    v6 = [MEMORY[0x29EDBA0F8] _stringWithUnichar:65039];
    v2 = [v7 stringByAppendingString:?];
    v3 = v7;
    v7 = v2;
    MEMORY[0x29EDC9740](v3);
    MEMORY[0x29EDC9740](v6);
  }

  v5 = MEMORY[0x29EDC9748](v7);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(v8, 0);

  return v5;
}

- (int64_t)accessibilityContainerType
{
  v6 = self;
  v5 = a2;
  v3.receiver = self;
  v3.super_class = UIKeyboardEmojiCollectionViewCellAccessibility;
  v4 = [(UIKeyboardEmojiCollectionViewCellAccessibility *)&v3 accessibilityContainerType];
  if (v4 == 4 || v4 == 14)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

- (id)accessibilityHeaderElements
{
  v12[1] = *MEMORY[0x29EDCA608];
  v10 = self;
  v9[1] = a2;
  v9[0] = [(UIKeyboardEmojiCollectionViewCellAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Uikeyboardemoj_14.isa)];
  v8 = [v9[0] indexPathForCell:v10];
  v4 = *MEMORY[0x29EDC8048];
  v5 = [MEMORY[0x29EDB9FE0] indexPathForRow:0 inSection:{objc_msgSend(v8, "section")}];
  v7 = [v9[0] supplementaryViewForElementKind:v4 atIndexPath:?];
  location = [v7 _accessibilityValueForKey:{@"emojiCategory", MEMORY[0x29EDC9740](v5).n128_f64[0]}];
  if (location)
  {
    v12[0] = v7;
    v11 = [MEMORY[0x29EDB8D80] arrayWithObjects:v12 count:1];
  }

  else
  {
    v11 = 0;
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(v9, 0);
  v2 = v11;

  return v2;
}

- (unint64_t)accessibilityTraits
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(UIKeyboardEmojiCollectionViewCellAccessibility *)self accessibilityContainer];
  v5 = 1;
  NSClassFromString(&cfstr_Uikeyboardemoj_11.isa);
  if (objc_opt_isKindOfClass())
  {
    v3 = [location[0] safeValueForKeyPath:@"delegate._flowLayout"];
    v5 = [v3 safeIntegerForKey:@"scrollDirection"];
    MEMORY[0x29EDC9740](v3);
  }

  v4 = *MEMORY[0x29EDC7FB0];
  if (v5)
  {
    v4 |= *MEMORY[0x29EDC7F90];
  }

  objc_storeStrong(location, 0);
  return v4;
}

- (void)setEmoji:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = UIKeyboardEmojiCollectionViewCellAccessibility;
  [(UIKeyboardEmojiCollectionViewCellAccessibility *)&v3 setEmoji:location[0]];
  [(UIKeyboardEmojiCollectionViewCellAccessibility *)v5 _accessibilitySetCachedVariantKeys:?];
  objc_storeStrong(location, 0);
}

- (void)_accessibilitySetCachedVariantKeys:(uint64_t)a1
{
  v3 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  if (v3)
  {
    __UIAccessibilitySetAssociatedObject();
  }

  objc_storeStrong(&location, 0);
}

- (void)prepareForReuse
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = UIKeyboardEmojiCollectionViewCellAccessibility;
  [(UIKeyboardEmojiCollectionViewCellAccessibility *)&v2 prepareForReuse];
  [(UIKeyboardEmojiCollectionViewCellAccessibility *)v4 _accessibilitySetCachedVariantKeys:?];
}

- (BOOL)_accessibilityHasVariantKeys
{
  v10 = self;
  v9 = a2;
  v7 = [(UIKeyboardEmojiCollectionViewCellAccessibility *)self _axEmoji];
  EMFEmojiTokenClass = getEMFEmojiTokenClass();
  v5 = [v7 safeStringForKey:@"emojiString"];
  location = [EMFEmojiTokenClass emojiTokenWithString:? localeData:?];
  v8 = ([location supportsSkinToneVariants] & 1) != 0;
  v3 = v8;
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v7, 0);
  return v3;
}

- (id)_accessibilityCachedVariantKeys
{
  if (a1)
  {
    v2 = objc_getAssociatedObject(a1, &__UIKeyboardEmojiCollectionViewCellAccessibility___accessibilityCachedVariantKeys);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_accessibilityVariantKeys
{
  v42 = *MEMORY[0x29EDCA608];
  v39 = self;
  v38[1] = a2;
  v38[0] = [(UIKeyboardEmojiCollectionViewCellAccessibility *)self _accessibilityCachedVariantKeys];
  if (![v38[0] count])
  {
    v20 = UIAccessibilityGetKeyboardLayoutStar();
    v37 = [v20 safeValueForKey:@"_keyplaneView"];
    v36 = [v37 safeValueForKey:{@"activeKeyViews", MEMORY[0x29EDC9740](v20).n128_f64[0]}];
    [(UIKeyboardEmojiCollectionViewCellAccessibility *)v39 accessibilityActivationPoint];
    point.x = v2;
    point.y = v3;
    v34 = 0;
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x29EDC9748](v36);
    v22 = [obj countByEnumeratingWithState:__b objects:v41 count:16];
    if (v22)
    {
      v17 = *__b[2];
      v18 = 0;
      v19 = v22;
      while (1)
      {
        v16 = v18;
        if (*__b[2] != v17)
        {
          objc_enumerationMutation(obj);
        }

        v33 = *(__b[1] + 8 * v18);
        [v33 accessibilityFrame];
        rect = v44;
        if (CGRectContainsPoint(v44, point))
        {
          v30 = 0;
          objc_opt_class();
          v15 = [v33 safeValueForKey:@"key"];
          v29 = __UIAccessibilityCastAsClass();
          MEMORY[0x29EDC9740](v15);
          if (v30)
          {
            abort();
          }

          v28 = MEMORY[0x29EDC9748](v29);
          objc_storeStrong(&v29, 0);
          v4 = v34;
          v34 = v28;
          MEMORY[0x29EDC9740](v4);
        }

        ++v18;
        if (v16 + 1 >= v19)
        {
          v18 = 0;
          v19 = [obj countByEnumeratingWithState:__b objects:v41 count:16];
          if (!v19)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x29EDC9740](obj);
    if (v34)
    {
      v27 = [UIAccessibilityElementKBKey variantKeysForKey:v34];
      memset(v25, 0, sizeof(v25));
      v13 = MEMORY[0x29EDC9748](v27);
      v14 = [v13 countByEnumeratingWithState:v25 objects:v40 count:16];
      if (v14)
      {
        v10 = *v25[2];
        v11 = 0;
        v12 = v14;
        while (1)
        {
          v9 = v11;
          if (*v25[2] != v10)
          {
            objc_enumerationMutation(v13);
          }

          v26 = *(v25[1] + 8 * v11);
          v8 = [(UIAccessibilityElementKBKey *)v26 key];
          v24 = [v8 displayString];
          *&v5 = MEMORY[0x29EDC9740](v8).n128_u64[0];
          v23 = [MEMORY[0x29EDBDF80] stringByReplacingEmojiCharactersWithEmojiDescriptions:{v24, v5}];
          [v26 setAccessibilityLabel:v23];
          objc_storeStrong(&v23, 0);
          objc_storeStrong(&v24, 0);
          ++v11;
          if (v9 + 1 >= v12)
          {
            v11 = 0;
            v12 = [v13 countByEnumeratingWithState:v25 objects:v40 count:16];
            if (!v12)
            {
              break;
            }
          }
        }
      }

      MEMORY[0x29EDC9740](v13);
      [(UIKeyboardEmojiCollectionViewCellAccessibility *)v39 _accessibilitySetCachedVariantKeys:v27];
      objc_storeStrong(v38, v27);
      objc_storeStrong(&v27, 0);
    }

    objc_storeStrong(&v34, 0);
    objc_storeStrong(&v36, 0);
    objc_storeStrong(&v37, 0);
  }

  v7 = MEMORY[0x29EDC9748](v38[0]);
  objc_storeStrong(v38, 0);

  return v7;
}

@end