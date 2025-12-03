@interface VideosUICollectionViewAccessibility
- (UIEdgeInsets)_accessibilityContentInset;
- (id)_accessibilityOtherCollectionViewItems;
@end

@implementation VideosUICollectionViewAccessibility

- (UIEdgeInsets)_accessibilityContentInset
{
  v25.receiver = self;
  v25.super_class = VideosUICollectionViewAccessibility;
  [(VideosUICollectionViewAccessibility *)&v25 _accessibilityContentInset];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  accessibilityIdentifier = [(VideosUICollectionViewAccessibility *)self accessibilityIdentifier];
  v12 = [accessibilityIdentifier isEqualToString:@"AXRelatedStoreItems"];

  if (v12)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = v4;
    v20 = 0;
    objc_opt_class();
    v13 = [(VideosUICollectionViewAccessibility *)self safeValueForKey:@"subviews"];
    v14 = __UIAccessibilityCastAsClass();

    v19[0] = MEMORY[0x29EDCA5F8];
    v19[1] = 3221225472;
    v19[2] = __65__VideosUICollectionViewAccessibility__accessibilityContentInset__block_invoke;
    v19[3] = &unk_29F307A70;
    v19[4] = &v21;
    [v14 enumerateObjectsUsingBlock:v19];
    v4 = v22[3];

    _Block_object_dispose(&v21, 8);
  }

  v15 = v4;
  v16 = v6;
  v17 = v8;
  v18 = v10;
  result.right = v18;
  result.bottom = v17;
  result.left = v16;
  result.top = v15;
  return result;
}

void __65__VideosUICollectionViewAccessibility__accessibilityContentInset__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = [v5 safeValueForKey:@"frame"];
    [v3 CGRectValue];
    *(*(*(a1 + 32) + 8) + 24) = *(*(*(a1 + 32) + 8) + 24) - v4;
  }
}

- (id)_accessibilityOtherCollectionViewItems
{
  v16.receiver = self;
  v16.super_class = VideosUICollectionViewAccessibility;
  _accessibilityOtherCollectionViewItems = [(VideosUICollectionViewAccessibility *)&v16 _accessibilityOtherCollectionViewItems];
  accessibilityIdentifier = [(VideosUICollectionViewAccessibility *)self accessibilityIdentifier];
  v5 = [accessibilityIdentifier isEqualToString:@"AXRelatedStoreItems"];

  if (v5)
  {
    array = [MEMORY[0x29EDB8DE8] array];
    v15 = 0;
    objc_opt_class();
    v7 = [(VideosUICollectionViewAccessibility *)self safeValueForKey:@"subviews"];
    v8 = __UIAccessibilityCastAsClass();

    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 3221225472;
    v12[2] = __77__VideosUICollectionViewAccessibility__accessibilityOtherCollectionViewItems__block_invoke;
    v12[3] = &unk_29F307A98;
    v13 = _accessibilityOtherCollectionViewItems;
    v14 = array;
    v9 = array;
    v10 = _accessibilityOtherCollectionViewItems;
    [v8 enumerateObjectsUsingBlock:v12];
    _accessibilityOtherCollectionViewItems = [v9 arrayByAddingObjectsFromArray:v10];
  }

  return _accessibilityOtherCollectionViewItems;
}

void __77__VideosUICollectionViewAccessibility__accessibilityOtherCollectionViewItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && ([*(a1 + 32) containsObject:v3] & 1) == 0)
  {
    [*(a1 + 40) ax_enqueueObject:v3];
  }
}

@end