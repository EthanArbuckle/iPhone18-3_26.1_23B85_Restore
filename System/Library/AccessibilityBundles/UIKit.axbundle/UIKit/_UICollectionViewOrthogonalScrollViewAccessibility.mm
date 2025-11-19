@interface _UICollectionViewOrthogonalScrollViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityOnlyComparesByXAxis;
- (BOOL)_accessibilityScrollAcrossPageBoundaries;
@end

@implementation _UICollectionViewOrthogonalScrollViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v5 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = @"_UICollectionViewOrthogonalScrollView";
  [location[0] validateClass:? isKindOfClass:?];
  [location[0] validateClass:@"_UICollectionViewOrthogonalScrollView" hasInstanceVariable:@"_collectionView" withType:"UICollectionView"];
  [location[0] validateClass:@"UICollectionView" hasInstanceMethod:@"collectionViewLayout" withFullSignature:{"@", 0}];
  [location[0] validateClass:@"UICollectionViewLayout" hasInstanceMethod:@"_orthogonalScrollingAxis" withFullSignature:{"Q", 0}];
  objc_storeStrong(v5, obj);
}

- (BOOL)_accessibilityOnlyComparesByXAxis
{
  v3 = [(_UICollectionViewOrthogonalScrollViewAccessibility *)self safeValueForKeyPath:@"_collectionView.collectionViewLayout"];
  v4 = [v3 safeUnsignedIntForKey:@"_orthogonalScrollingAxis"];
  MEMORY[0x29EDC9740](v3);
  return v4 == 1;
}

- (BOOL)_accessibilityScrollAcrossPageBoundaries
{
  v12[2] = self;
  v12[1] = a2;
  v12[0] = [(_UICollectionViewOrthogonalScrollViewAccessibility *)self _accessibilityUserDefinedScrollAcrossPageBoundaries];
  v11 = 0;
  if (v12[0])
  {
    v11 = [v12[0] BOOLValue];
  }

  else
  {
    v9 = 0.0;
    v10 = 0.0;
    v8 = 0;
    objc_opt_class();
    v7 = __UIAccessibilityCastAsClass();
    v6 = MEMORY[0x29EDC9748](v7);
    objc_storeStrong(&v7, 0);
    [v6 _interpageSpacing];
    v9 = v2;
    v10 = v3;
    MEMORY[0x29EDC9740](v6);
    v11 = !__CGSizeEqualToSize_4(v9, v10, *MEMORY[0x29EDB90E8], *(MEMORY[0x29EDB90E8] + 8));
  }

  v5 = v11;
  objc_storeStrong(v12, 0);
  return v5 & 1;
}

@end