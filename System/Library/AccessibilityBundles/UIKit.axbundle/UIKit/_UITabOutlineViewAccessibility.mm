@interface _UITabOutlineViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5;
- (id)collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilitySetLastIndexPath:(id)a3;
- (void)_accessibilitySetLastMessage:(id)a3;
- (void)_accessibilitySetStartingCellLabel:(id)a3;
- (void)_accessibilitySetupTabButton;
- (void)willMoveToSuperview:(id)a3;
@end

@implementation _UITabOutlineViewAccessibility

- (void)_accessibilitySetStartingCellLabel:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  __UIAccessibilitySetAssociatedObject();
  objc_storeStrong(location, 0);
}

- (void)_accessibilitySetLastIndexPath:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  __UIAccessibilitySetAssociatedObject();
  objc_storeStrong(location, 0);
}

- (void)_accessibilitySetLastMessage:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  __UIAccessibilitySetAssociatedObject();
  objc_storeStrong(location, 0);
}

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v7 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = "@";
  [location[0] validateClass:@"_UITabContainerView" hasInstanceMethod:@"sidebar" withFullSignature:0];
  v5 = "B";
  [location[0] validateClass:@"_UITabBarControllerSidebar" hasInstanceMethod:@"_isVisible" withFullSignature:0];
  v4 = @"_UITabOutlineView";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v4 isKindOfClass:@"UICollectionViewDelegate"];
  [location[0] validateClass:v4 isKindOfClass:@"UIView"];
  [location[0] validateClass:v4 hasInstanceMethod:@"isEditing" withFullSignature:{v5, 0}];
  objc_storeStrong(v7, obj);
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = _UITabOutlineViewAccessibility;
  [(_UITabOutlineViewAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
  [(_UITabOutlineViewAccessibility *)v4 _accessibilitySetupTabButton];
}

- (void)_accessibilitySetupTabButton
{
  v21 = a1;
  if (a1)
  {
    v19 = 0;
    objc_opt_class();
    v3 = [v21 safeValueForKey:@"sidebarBarButtonItem"];
    v18 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](v3);
    v17 = MEMORY[0x29EDC9748](v18);
    objc_storeStrong(&v18, 0);
    v20 = v17;
    objc_initWeak(&v16, v21);
    v2 = v20;
    v10 = MEMORY[0x29EDCA5F8];
    v11 = -1073741824;
    v12 = 0;
    v13 = __62___UITabOutlineViewAccessibility__accessibilitySetupTabButton__block_invoke;
    v14 = &unk_29F30C9E8;
    objc_copyWeak(&v15, &v16);
    [v2 setAccessibilityLabelBlock:&v10];
    v1 = v20;
    v4 = MEMORY[0x29EDCA5F8];
    v5 = -1073741824;
    v6 = 0;
    v7 = __62___UITabOutlineViewAccessibility__accessibilitySetupTabButton__block_invoke_2;
    v8 = &unk_29F30C9E8;
    objc_copyWeak(v9, &v16);
    [v1 setAccessibilityIdentifierBlock:&v4];
    objc_destroyWeak(v9);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v16);
    objc_storeStrong(&v20, 0);
  }
}

- (id)collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v15 = 0;
  objc_storeStrong(&v15, a5);
  v13.receiver = v18;
  v13.super_class = _UITabOutlineViewAccessibility;
  v14 = [(_UITabOutlineViewAccessibility *)&v13 collectionView:location[0] itemsForBeginningDragSession:v16 atIndexPath:v15];
  v12 = [location[0] cellForItemAtIndexPath:v15];
  v9 = v18;
  v10 = [v12 accessibilityLabel];
  [(_UITabOutlineViewAccessibility *)v9 _accessibilitySetStartingCellLabel:?];
  *&v5 = MEMORY[0x29EDC9740](v10).n128_u64[0];
  [(_UITabOutlineViewAccessibility *)v18 _accessibilitySetLastIndexPath:v15, v5];
  v11 = MEMORY[0x29EDC9748](v14);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);

  return v11;
}

- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5
{
  v43 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v41 = 0;
  objc_storeStrong(&v41, a4);
  v40 = 0;
  objc_storeStrong(&v40, a5);
  v38.receiver = v43;
  v38.super_class = _UITabOutlineViewAccessibility;
  v39 = [(_UITabOutlineViewAccessibility *)&v38 collectionView:location[0] dropSessionDidUpdate:v41 withDestinationIndexPath:v40];
  v37 = [location[0] cellForItemAtIndexPath:v40];
  v27 = [v37 accessibilityLabel];
  v35 = 0;
  v33 = 0;
  LOBYTE(v28) = 0;
  if (v27)
  {
    v36 = [v37 accessibilityLabel];
    v35 = 1;
    v34 = [(_UITabOutlineViewAccessibility *)v43 _accessibilityStartingCellLabel];
    v33 = 1;
    v28 = [v36 isEqualToString:?] ^ 1;
  }

  if (v33)
  {
    MEMORY[0x29EDC9740](v34);
  }

  if (v35)
  {
    MEMORY[0x29EDC9740](v36);
  }

  *&v5 = MEMORY[0x29EDC9740](v27).n128_u64[0];
  if (v28)
  {
    v20 = [(_UITabOutlineViewAccessibility *)v43 _accessibilityLastIndexPath];
    v21 = [v20 row];
    *&v6 = MEMORY[0x29EDC9740](v20).n128_u64[0];
    v32 = v21;
    v31 = [v40 row];
    v30 = [(_UITabOutlineViewAccessibility *)v43 _accessibilityLastMessage];
    v22 = MEMORY[0x29EDBA0F8];
    v24 = accessibilityLocalizedString(@"row.reorder.above");
    v23 = [v37 accessibilityLabel];
    v29 = [v22 stringWithFormat:v24, v23];
    MEMORY[0x29EDC9740](v23);
    v7 = MEMORY[0x29EDC9740](v24).n128_u64[0];
    if (v21 >= v31)
    {
      if (v32 == v31 && ([v30 isEqualToString:{v29, *&v7}] & 1) != 0)
      {
        v14 = MEMORY[0x29EDBA0F8];
        v16 = accessibilityLocalizedString(@"row.reorder.below");
        v15 = [v37 accessibilityLabel];
        v10 = [v14 stringWithFormat:v16, v15];
        v11 = v29;
        v29 = v10;
        MEMORY[0x29EDC9740](v11);
        MEMORY[0x29EDC9740](v15);
        v7 = MEMORY[0x29EDC9740](v16).n128_u64[0];
      }
    }

    else
    {
      v17 = MEMORY[0x29EDBA0F8];
      v19 = accessibilityLocalizedString(@"row.reorder.below");
      v18 = [v37 accessibilityLabel];
      v8 = [v17 stringWithFormat:v19, v18];
      v9 = v29;
      v29 = v8;
      MEMORY[0x29EDC9740](v9);
      MEMORY[0x29EDC9740](v18);
      v7 = MEMORY[0x29EDC9740](v19).n128_u64[0];
    }

    [(_UITabOutlineViewAccessibility *)v43 _accessibilitySetLastIndexPath:v40, *&v7];
    [(_UITabOutlineViewAccessibility *)v43 _accessibilitySetLastMessage:v29];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v29);
    objc_storeStrong(&v29, 0);
    objc_storeStrong(&v30, 0);
  }

  v13 = MEMORY[0x29EDC9748](v39);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(location, 0);

  return v13;
}

- (void)willMoveToSuperview:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_opt_class();
  v9 = __UIAccessibilityCastAsClass();
  v8 = MEMORY[0x29EDC9748](v9);
  objc_storeStrong(&v9, 0);
  v11 = v8;
  v7 = [v8 superview];
  v6.receiver = v13;
  v6.super_class = _UITabOutlineViewAccessibility;
  [(_UITabOutlineViewAccessibility *)&v6 willMoveToSuperview:location[0]];
  if (v7 != location[0])
  {
    v4 = MEMORY[0x29EDCA578];
    v3 = MEMORY[0x29EDCA578];
    v5 = v4;
    dispatch_async(v5, &__block_literal_global_57);
    MEMORY[0x29EDC9740](v5);
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

@end