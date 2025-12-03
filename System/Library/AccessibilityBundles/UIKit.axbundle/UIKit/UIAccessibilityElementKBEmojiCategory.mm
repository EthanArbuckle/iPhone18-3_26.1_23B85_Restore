@interface UIAccessibilityElementKBEmojiCategory
- (CGRect)accessibilityFrame;
- (id)accessibilityLabel;
- (uint64_t)category;
- (uint64_t)categoryIndex;
- (uint64_t)categoryView;
- (uint64_t)setCategoryIndex:(uint64_t)result;
- (void)setCategory:(uint64_t)category;
@end

@implementation UIAccessibilityElementKBEmojiCategory

- (CGRect)accessibilityFrame
{
  selfCopy = self;
  v24 = a2;
  categoryView = [(UIAccessibilityElementKBEmojiCategory *)self categoryView];
  MEMORY[0x29EDC9740](categoryView);
  if (categoryView)
  {
    categoryView2 = [(UIAccessibilityElementKBEmojiCategory *)selfCopy categoryView];
    [categoryView2 accessibilityFrame];
    v26 = v6;
    v27 = v7;
    v28 = v8;
    v29 = v9;
    MEMORY[0x29EDC9740](categoryView2);
  }

  else
  {
    v18[0] = 0;
    v18[1] = v18;
    v19 = 0x10000000;
    v20 = 64;
    v21 = &unk_29C6A1FE6;
    v22 = 0u;
    v23 = 0u;
    v22 = *MEMORY[0x29EDB90D8];
    v23 = *(MEMORY[0x29EDB90D8] + 16);
    v17[0] = MEMORY[0x29EDC9748](selfCopy);
    v17[1] = v18;
    AXPerformSafeBlock();
    accessibilityContainer = [(UIAccessibilityElementKBEmojiCategory *)selfCopy accessibilityContainer];
    UIAccessibilityFrameForBounds();
    v26 = v2;
    v27 = v3;
    v28 = v4;
    v29 = v5;
    MEMORY[0x29EDC9740](accessibilityContainer);
    objc_storeStrong(v17, 0);
    _Block_object_dispose(v18, 8);
  }

  v10 = v26;
  v11 = v27;
  v12 = v28;
  v13 = v29;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (uint64_t)categoryView
{
  if (self)
  {
    return *(self + 56);
  }

  else
  {
    return 0;
  }
}

__n128 __59__UIAccessibilityElementKBEmojiCategory_accessibilityFrame__block_invoke(uint64_t a1)
{
  v11 = [*(a1 + 32) accessibilityContainer];
  [v11 frameForDivider:-[UIAccessibilityElementKBEmojiCategory categoryIndex](*(a1 + 32))];
  v17.origin.x = v1;
  v17.origin.y = v2;
  v17.size.width = v3;
  v17.size.height = v4;
  MEMORY[0x29EDC9740](v11);
  v12 = [*(a1 + 32) accessibilityContainer];
  [v12 frameForDivider:-[UIAccessibilityElementKBEmojiCategory categoryIndex](*(a1 + 32)) + 1];
  r2.origin.x = v5;
  r2.origin.y = v6;
  r2.size.width = v7;
  r2.size.height = v8;
  MEMORY[0x29EDC9740](v12);
  v18 = CGRectUnion(v17, r2);
  *&v14 = v18.origin.x;
  *(&v14 + 1) = *&v18.origin.y;
  v15.n128_u64[0] = *&v18.size.width;
  v15.n128_u64[1] = *&v18.size.height;
  v9 = *(*(a1 + 40) + 8);
  *(v9 + 32) = v14;
  result = v15;
  *(v9 + 48) = v15;
  return result;
}

- (uint64_t)categoryIndex
{
  if (self)
  {
    return *(self + 64);
  }

  else
  {
    return 0;
  }
}

- (id)accessibilityLabel
{
  v16[3] = self;
  v16[2] = a2;
  category = [(UIAccessibilityElementKBEmojiCategory *)self category];
  v4 = [category safeValueForKey:@"_categoryType"];
  intValue = [v4 intValue];
  MEMORY[0x29EDC9740](v4);
  MEMORY[0x29EDC9740](category);
  v16[1] = intValue;
  v7 = MEMORY[0x29EDBA0F8];
  v8 = accessibilityLocalizedString(@"emoji.category");
  v10 = 0;
  v11 = &v10;
  v12 = 838860800;
  v13 = 48;
  v14 = __Block_byref_object_copy__14;
  v15 = __Block_byref_object_dispose__14;
  v16[0] = 0;
  AXPerformSafeBlock();
  v9 = MEMORY[0x29EDC9748](v11[5]);
  _Block_object_dispose(&v10, 8);
  objc_storeStrong(v16, 0);
  v3 = [v7 stringWithFormat:v8, v9];
  MEMORY[0x29EDC9740](v9);
  MEMORY[0x29EDC9740](v8);

  return v3;
}

- (uint64_t)category
{
  if (self)
  {
    return *(self + 48);
  }

  else
  {
    return 0;
  }
}

double __59__UIAccessibilityElementKBEmojiCategory_accessibilityLabel__block_invoke(uint64_t a1)
{
  v1 = [NSClassFromString(&cfstr_Uikeyboardemoj.isa) displayName:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

- (void)setCategory:(uint64_t)category
{
  if (category)
  {
    objc_storeStrong((category + 48), a2);
  }
}

- (uint64_t)setCategoryIndex:(uint64_t)result
{
  if (result)
  {
    *(result + 64) = a2;
  }

  return result;
}

@end