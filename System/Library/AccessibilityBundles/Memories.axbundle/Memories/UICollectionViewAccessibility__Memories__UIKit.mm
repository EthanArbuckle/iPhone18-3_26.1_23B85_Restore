@interface UICollectionViewAccessibility__Memories__UIKit
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityCollectionViewBehavesLikeUIViewAccessibility;
- (BOOL)isAccessibilityOpaqueElementProvider;
- (double)_accessibilityScrollWidthDistance;
- (id)accessibilityElementAtIndex:(int64_t)a3;
- (id)accessibilityElements;
- (int64_t)accessibilityElementCount;
- (int64_t)indexOfAccessibilityElement:(id)a3;
@end

@implementation UICollectionViewAccessibility__Memories__UIKit

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MiroEditorFlowLayout"];
  [v3 validateClass:@"MiroEditorFlowLayout" hasInstanceMethod:@"_sizeForItemAtIndexPath:" withFullSignature:{"{CGSize=dd}", "@", 0}];
}

- (BOOL)accessibilityCollectionViewBehavesLikeUIViewAccessibility
{
  v3 = [(UICollectionViewAccessibility__Memories__UIKit *)self accessibilityIdentification];
  v4 = [v3 isEqualToString:@"AccessibilityMiroUICollectionView"];

  if (v4)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = UICollectionViewAccessibility__Memories__UIKit;
  return [(UICollectionViewAccessibility__Memories__UIKit *)&v6 accessibilityCollectionViewBehavesLikeUIViewAccessibility];
}

- (BOOL)isAccessibilityOpaqueElementProvider
{
  v3 = [(UICollectionViewAccessibility__Memories__UIKit *)self accessibilityIdentification];
  v4 = [v3 isEqualToString:@"AccessibilityMiroUICollectionView"];

  if (v4)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = UICollectionViewAccessibility__Memories__UIKit;
  return [(UICollectionViewAccessibility__Memories__UIKit *)&v6 isAccessibilityOpaqueElementProvider];
}

- (double)_accessibilityScrollWidthDistance
{
  v3 = [(UICollectionViewAccessibility__Memories__UIKit *)self accessibilityIdentification];
  v4 = [v3 isEqualToString:@"AccessibilityMiroUICollectionView"];

  if (v4)
  {
    v5 = self;
    v6 = [(UICollectionViewAccessibility__Memories__UIKit *)v5 collectionViewLayout];
    MEMORY[0x29C2DE4B0](@"MiroEditorFlowLayout");
    if (objc_opt_isKindOfClass())
    {
      [(UICollectionViewAccessibility__Memories__UIKit *)v5 contentSize];
      v8 = v7;
      v10 = v9;
      v34 = 0;
      v35 = &v34;
      v36 = 0x3010000000;
      v37 = &unk_29BF6535B;
      v11 = MEMORY[0x29EDB90E8];
      v38 = *MEMORY[0x29EDB90E8];
      v30 = 0;
      v31 = &v30;
      v32 = 0x2020000000;
      v33 = 0xBFF0000000000000;
      v20 = MEMORY[0x29EDCA5F8];
      v21 = 3221225472;
      v22 = __83__UICollectionViewAccessibility__Memories__UIKit__accessibilityScrollWidthDistance__block_invoke;
      v23 = &unk_29F2D0BC8;
      v26 = &v34;
      v12 = v6;
      v24 = v12;
      v13 = v5;
      v25 = v13;
      v27 = &v30;
      v28 = v8;
      v29 = v10;
      AXPerformSafeBlock();
      v14 = v35[4];
      if (v14 != *v11)
      {
        goto LABEL_6;
      }

      if (v35[5] == v11[1])
      {
        v15 = 1;
      }

      else
      {
LABEL_6:
        v16 = v31[3];
        v8 = v14 + v16;
        v15 = v16 < 0.0;
      }

      _Block_object_dispose(&v30, 8);
      _Block_object_dispose(&v34, 8);
      if (!v15)
      {

        return v8;
      }
    }
  }

  v19.receiver = self;
  v19.super_class = UICollectionViewAccessibility__Memories__UIKit;
  [(UICollectionViewAccessibility__Memories__UIKit *)&v19 _accessibilityScrollWidthDistance];
  return v17;
}

- (int64_t)accessibilityElementCount
{
  v3 = [(UICollectionViewAccessibility__Memories__UIKit *)self accessibilityIdentification];
  v4 = [v3 isEqualToString:@"AccessibilityMiroUICollectionView"];

  if (v4)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = UICollectionViewAccessibility__Memories__UIKit;
  return [(UICollectionViewAccessibility__Memories__UIKit *)&v6 accessibilityElementCount];
}

- (id)accessibilityElements
{
  v3 = [(UICollectionViewAccessibility__Memories__UIKit *)self accessibilityIdentification];
  v4 = [v3 isEqualToString:@"AccessibilityMiroUICollectionView"];

  if (v4)
  {
    v5 = self;
    v6 = [(UICollectionViewAccessibility__Memories__UIKit *)v5 collectionViewLayout];
    MEMORY[0x29C2DE4B0](@"MiroEditorFlowLayout");
    if (objc_opt_isKindOfClass())
    {
      v14 = 0;
      objc_opt_class();
      v7 = [v6 safeValueForKey:@"snappedIndexPath"];
      v8 = __UIAccessibilityCastAsClass();

      v9 = MEMORY[0x29EDB8D80];
      v10 = [(UICollectionViewAccessibility__Memories__UIKit *)v5 cellForItemAtIndexPath:v8];
      v11 = [v9 axArrayByIgnoringNilElementsWithCount:{1, v10}];

      goto LABEL_6;
    }
  }

  v13.receiver = self;
  v13.super_class = UICollectionViewAccessibility__Memories__UIKit;
  v11 = [(UICollectionViewAccessibility__Memories__UIKit *)&v13 accessibilityElements];
LABEL_6:

  return v11;
}

- (id)accessibilityElementAtIndex:(int64_t)a3
{
  v5 = [(UICollectionViewAccessibility__Memories__UIKit *)self accessibilityIdentification];
  v6 = [v5 isEqualToString:@"AccessibilityMiroUICollectionView"];

  if (v6)
  {
    v7 = self;
    v8 = [(UICollectionViewAccessibility__Memories__UIKit *)v7 collectionViewLayout];
    MEMORY[0x29C2DE4B0](@"MiroEditorFlowLayout");
    if (objc_opt_isKindOfClass())
    {
      v14 = 0;
      objc_opt_class();
      v9 = [v8 safeValueForKey:@"snappedIndexPath"];
      v10 = __UIAccessibilityCastAsClass();

      v11 = [(UICollectionViewAccessibility__Memories__UIKit *)v7 cellForItemAtIndexPath:v10];

      goto LABEL_6;
    }
  }

  v13.receiver = self;
  v13.super_class = UICollectionViewAccessibility__Memories__UIKit;
  v11 = [(UICollectionViewAccessibility__Memories__UIKit *)&v13 accessibilityElementAtIndex:a3];
LABEL_6:

  return v11;
}

- (int64_t)indexOfAccessibilityElement:(id)a3
{
  v4 = a3;
  v5 = [(UICollectionViewAccessibility__Memories__UIKit *)self accessibilityIdentification];
  v6 = [v5 isEqualToString:@"AccessibilityMiroUICollectionView"];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = UICollectionViewAccessibility__Memories__UIKit;
    v7 = [(UICollectionViewAccessibility__Memories__UIKit *)&v9 indexOfAccessibilityElement:v4];
  }

  return v7;
}

@end