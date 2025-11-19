@interface UICollectionReusableViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityScrollParentForComparingByXAxis;
@end

@implementation UICollectionReusableViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"_UICollectionViewOrthogonalScrollView"];
  objc_storeStrong(location, 0);
}

- (id)_accessibilityScrollParentForComparingByXAxis
{
  v14 = self;
  location[1] = a2;
  v12.receiver = self;
  v12.super_class = UICollectionReusableViewAccessibility;
  location[0] = [(UICollectionReusableViewAccessibility *)&v12 _accessibilityScrollParentForComparingByXAxis];
  v11 = NSClassFromString(&cfstr_Uicollectionvi_16.isa);
  v10[1] = objc_opt_class();
  if (v11)
  {
    v4 = 0;
    v5 = &v4;
    v6 = 838860800;
    v7 = 48;
    v8 = __Block_byref_object_copy__3;
    v9 = __Block_byref_object_dispose__3;
    v10[0] = 0;
    [(UICollectionReusableViewAccessibility *)v14 accessibilityEnumerateAncestorsUsingBlock:?];
    if ([v5[5] _accessibilityOnlyComparesByXAxis])
    {
      objc_storeStrong(location, v5[5]);
    }

    _Block_object_dispose(&v4, 8);
    objc_storeStrong(v10, 0);
  }

  v3 = MEMORY[0x29EDC9748](location[0]);
  objc_storeStrong(location, 0);

  return v3;
}

void __86__UICollectionReusableViewAccessibility__accessibilityScrollParentForComparingByXAxis__block_invoke(void *a1, void *a2, _BYTE *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong((*(a1[4] + 8) + 40), location[0]);
    *a3 = 1;
  }

  else if (objc_opt_isKindOfClass())
  {
    *a3 = 1;
  }

  objc_storeStrong(location, 0);
}

@end