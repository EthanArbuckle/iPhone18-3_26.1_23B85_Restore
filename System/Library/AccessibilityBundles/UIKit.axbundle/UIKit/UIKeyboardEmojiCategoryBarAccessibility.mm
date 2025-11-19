@interface UIKeyboardEmojiCategoryBarAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityElements;
- (uint64_t)_accessibilityTraitsForElementAtIndex:(void *)a1;
- (void)setSelectedIndex:(unint64_t)a3;
@end

@implementation UIKeyboardEmojiCategoryBarAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v8 = location;
  v7 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = @"UIKeyboardEmojiCategory";
  v4 = "q";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  v3 = "@";
  [location[0] validateClass:v5 hasClassMethod:@"displayName:" withFullSignature:{v4, 0}];
  [location[0] validateClass:v5 hasClassMethod:@"enabledCategoryIndexes" withFullSignature:{v3, 0}];
  v6 = "Q";
  [location[0] validateClass:v5 hasClassMethod:@"categoryTypeForCategoryIndex:" withFullSignature:{v4, "Q", 0}];
  [location[0] validateClass:v5 hasClassMethod:@"categoryForType:" withFullSignature:{v3, v4, 0}];
  [location[0] validateClass:v5 hasClassMethod:@"categoryIndexForCategoryType:" withFullSignature:{v6, v4, 0}];
  [location[0] validateClass:@"UIKeyboardEmojiCategoryBar" hasInstanceVariable:@"_selectedIndex" withType:v6];
  objc_storeStrong(v8, v7);
}

- (id)accessibilityElements
{
  v20 = self;
  v19[1] = a2;
  v19[0] = [(UIKeyboardEmojiCategoryBarAccessibility *)self _accessibilityValueForKey:*MEMORY[0x29EDC7620]];
  if (!v19[0])
  {
    v19[0] = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    [(UIKeyboardEmojiCategoryBarAccessibility *)v20 _accessibilitySetRetainedValue:v19[0] forKey:*MEMORY[0x29EDC7620], MEMORY[0x29EDC9740](0).n128_f64[0]];
    v17 = 0;
    objc_opt_class();
    v5 = [NSClassFromString(&cfstr_Uikeyboardemoj.isa) safeValueForKey:@"enabledCategoryIndexes"];
    v16 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](v5);
    v15 = MEMORY[0x29EDC9748](v16);
    objc_storeStrong(&v16, 0);
    v18 = v15;
    v14 = NSClassFromString(&cfstr_Uikeyboardemoj.isa);
    v4 = v18;
    v6 = MEMORY[0x29EDCA5F8];
    v7 = -1073741824;
    v8 = 0;
    v9 = __64__UIKeyboardEmojiCategoryBarAccessibility_accessibilityElements__block_invoke;
    v10 = &unk_29F30D7E8;
    v13[1] = v14;
    v11 = MEMORY[0x29EDC9748](v20);
    v12 = MEMORY[0x29EDC9748](v18);
    v13[0] = MEMORY[0x29EDC9748](v19[0]);
    [v4 enumerateObjectsUsingBlock:&v6];
    objc_storeStrong(v13, 0);
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v11, 0);
    objc_storeStrong(&v18, 0);
  }

  v3 = MEMORY[0x29EDC9748](v19[0]);
  objc_storeStrong(v19, 0);

  return v3;
}

void __64__UIKeyboardEmojiCategoryBarAccessibility_accessibilityElements__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v56 = a3;
  v55[2] = a4;
  v55[1] = a1;
  v54 = 0;
  objc_opt_class();
  v53 = __UIAccessibilityCastAsClass();
  v52 = MEMORY[0x29EDC9748](v53);
  objc_storeStrong(&v53, 0);
  v55[0] = v52;
  v4 = [v52 intValue];
  v51 = v4;
  v43 = 0;
  v44 = &v43;
  v45 = 838860800;
  v46 = 48;
  v47 = __Block_byref_object_copy__14;
  v48 = __Block_byref_object_dispose__14;
  v49 = 0;
  v35 = MEMORY[0x29EDCA5F8];
  v36 = -1073741824;
  v37 = 0;
  v38 = __64__UIKeyboardEmojiCategoryBarAccessibility_accessibilityElements__block_invoke_2;
  v39 = &unk_29F30D7C0;
  v40 = &v43;
  v41 = *(a1 + 56);
  v42 = v4;
  AXPerformSafeBlock();
  v34 = MEMORY[0x29EDC9748](v44[5]);
  _Block_object_dispose(&v43, 8);
  objc_storeStrong(&v49, 0);
  v50 = v34;
  if (v34)
  {
    v31 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 838860800;
    v26 = 48;
    v27 = __Block_byref_object_copy__14;
    v28 = __Block_byref_object_dispose__14;
    v29 = 0;
    v16 = MEMORY[0x29EDCA5F8];
    v17 = -1073741824;
    v18 = 0;
    v19 = __64__UIKeyboardEmojiCategoryBarAccessibility_accessibilityElements__block_invoke_3;
    v20 = &unk_29F30C940;
    v21 = &v23;
    v22 = v51;
    AXPerformSafeBlock();
    v15 = MEMORY[0x29EDC9748](v24[5]);
    _Block_object_dispose(&v23, 8);
    objc_storeStrong(&v29, 0);
    v30 = __UIAccessibilitySafeClass();
    MEMORY[0x29EDC9740](v15);
    if (v31)
    {
      abort();
    }

    v14 = MEMORY[0x29EDC9748](v30);
    objc_storeStrong(&v30, 0);
    v32 = v14;
    v13 = [[UIAccessibilityElementKBEmojiCategory alloc] initWithAccessibilityContainer:*(a1 + 32)];
    [(UIAccessibilityElementKBEmojiCategory *)v13 setAccessibilityTraits:[(UIKeyboardEmojiCategoryBarAccessibility *)*(a1 + 32) _accessibilityTraitsForElementAtIndex:v56]];
    v9 = v13;
    v8 = v56;
    v5 = [*(a1 + 40) count];
    location[3] = v8;
    location[2] = v5;
    location[4] = v8;
    location[5] = v5;
    [(UIAccessibilityElementKBEmojiCategory *)v9 _accessibilitySetRowRange:v8, v5];
    [(UIAccessibilityElementKBEmojiCategory *)v13 setCategory:v32];
    v6 = NSClassFromString(&cfstr_Uikeyboardemoj.isa);
    v7 = [(objc_class *)v6 categoryIndexForCategoryType:v51];
    [(UIAccessibilityElementKBEmojiCategory *)v13 setCategoryIndex:v7];
    [*(a1 + 48) addObject:v13];
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v32, 0);
    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  objc_storeStrong(&v50, 0);
  objc_storeStrong(v55, 0);
  if (!v33)
  {
    v33 = 0;
  }

  objc_storeStrong(location, 0);
}

double __64__UIKeyboardEmojiCategoryBarAccessibility_accessibilityElements__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 40) displayName:*(a1 + 48)];
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

double __64__UIKeyboardEmojiCategoryBarAccessibility_accessibilityElements__block_invoke_3(uint64_t a1)
{
  v1 = [NSClassFromString(&cfstr_Uikeyboardemoj.isa) categoryForType:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

- (uint64_t)_accessibilityTraitsForElementAtIndex:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v3 = *MEMORY[0x29EDC7FB0];
  if (a2 == [a1 safeUnsignedIntegerForKey:@"_selectedIndex"])
  {
    return v3 | *MEMORY[0x29EDC7FC0];
  }

  return v3;
}

- (void)setSelectedIndex:(unint64_t)a3
{
  v14 = self;
  v13 = a2;
  v12 = a3;
  v11.receiver = self;
  v11.super_class = UIKeyboardEmojiCategoryBarAccessibility;
  [(UIKeyboardEmojiCategoryBarAccessibility *)&v11 setSelectedIndex:a3];
  v10 = [(UIKeyboardEmojiCategoryBarAccessibility *)v14 _accessibilityValueForKey:*MEMORY[0x29EDC7620]];
  if (v10)
  {
    v3 = v10;
    v4 = MEMORY[0x29EDCA5F8];
    v5 = -1073741824;
    v6 = 0;
    v7 = __60__UIKeyboardEmojiCategoryBarAccessibility_setSelectedIndex___block_invoke;
    v8 = &unk_29F30D218;
    v9 = MEMORY[0x29EDC9748](v14);
    [v3 enumerateObjectsUsingBlock:&v4];
    objc_storeStrong(&v9, 0);
  }

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], *MEMORY[0x29EDBDAE8]);
  objc_storeStrong(&v10, 0);
}

void __60__UIKeyboardEmojiCategoryBarAccessibility_setSelectedIndex___block_invoke(void **a1, void *a2, uint64_t a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [location[0] setAccessibilityTraits:{-[UIKeyboardEmojiCategoryBarAccessibility _accessibilityTraitsForElementAtIndex:](a1[4], a3)}];
  objc_storeStrong(location, 0);
}

@end