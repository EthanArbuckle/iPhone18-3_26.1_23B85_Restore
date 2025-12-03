@interface _UITabOutlineViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path;
- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilitySetLastIndexPath:(id)path;
- (void)_accessibilitySetLastMessage:(id)message;
- (void)_accessibilitySetStartingCellLabel:(id)label;
- (void)_accessibilitySetupTabButton;
- (void)willMoveToSuperview:(id)superview;
@end

@implementation _UITabOutlineViewAccessibility

- (void)_accessibilitySetStartingCellLabel:(id)label
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, label);
  __UIAccessibilitySetAssociatedObject();
  objc_storeStrong(location, 0);
}

- (void)_accessibilitySetLastIndexPath:(id)path
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, path);
  __UIAccessibilitySetAssociatedObject();
  objc_storeStrong(location, 0);
}

- (void)_accessibilitySetLastMessage:(id)message
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, message);
  __UIAccessibilitySetAssociatedObject();
  objc_storeStrong(location, 0);
}

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v7 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
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
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = _UITabOutlineViewAccessibility;
  [(_UITabOutlineViewAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
  [(_UITabOutlineViewAccessibility *)selfCopy _accessibilitySetupTabButton];
}

- (void)_accessibilitySetupTabButton
{
  selfCopy = self;
  if (self)
  {
    v19 = 0;
    objc_opt_class();
    v3 = [selfCopy safeValueForKey:@"sidebarBarButtonItem"];
    v18 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](v3);
    v17 = MEMORY[0x29EDC9748](v18);
    objc_storeStrong(&v18, 0);
    v20 = v17;
    objc_initWeak(&v16, selfCopy);
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

- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v16 = 0;
  objc_storeStrong(&v16, session);
  v15 = 0;
  objc_storeStrong(&v15, path);
  v13.receiver = selfCopy;
  v13.super_class = _UITabOutlineViewAccessibility;
  v14 = [(_UITabOutlineViewAccessibility *)&v13 collectionView:location[0] itemsForBeginningDragSession:v16 atIndexPath:v15];
  v12 = [location[0] cellForItemAtIndexPath:v15];
  v9 = selfCopy;
  accessibilityLabel = [v12 accessibilityLabel];
  [(_UITabOutlineViewAccessibility *)v9 _accessibilitySetStartingCellLabel:?];
  *&v5 = MEMORY[0x29EDC9740](accessibilityLabel).n128_u64[0];
  [(_UITabOutlineViewAccessibility *)selfCopy _accessibilitySetLastIndexPath:v15, v5];
  v11 = MEMORY[0x29EDC9748](v14);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);

  return v11;
}

- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v41 = 0;
  objc_storeStrong(&v41, update);
  v40 = 0;
  objc_storeStrong(&v40, path);
  v38.receiver = selfCopy;
  v38.super_class = _UITabOutlineViewAccessibility;
  v39 = [(_UITabOutlineViewAccessibility *)&v38 collectionView:location[0] dropSessionDidUpdate:v41 withDestinationIndexPath:v40];
  v37 = [location[0] cellForItemAtIndexPath:v40];
  accessibilityLabel = [v37 accessibilityLabel];
  v35 = 0;
  v33 = 0;
  LOBYTE(v28) = 0;
  if (accessibilityLabel)
  {
    accessibilityLabel2 = [v37 accessibilityLabel];
    v35 = 1;
    _accessibilityStartingCellLabel = [(_UITabOutlineViewAccessibility *)selfCopy _accessibilityStartingCellLabel];
    v33 = 1;
    v28 = [accessibilityLabel2 isEqualToString:?] ^ 1;
  }

  if (v33)
  {
    MEMORY[0x29EDC9740](_accessibilityStartingCellLabel);
  }

  if (v35)
  {
    MEMORY[0x29EDC9740](accessibilityLabel2);
  }

  *&v5 = MEMORY[0x29EDC9740](accessibilityLabel).n128_u64[0];
  if (v28)
  {
    _accessibilityLastIndexPath = [(_UITabOutlineViewAccessibility *)selfCopy _accessibilityLastIndexPath];
    v21 = [_accessibilityLastIndexPath row];
    *&v6 = MEMORY[0x29EDC9740](_accessibilityLastIndexPath).n128_u64[0];
    v32 = v21;
    v31 = [v40 row];
    _accessibilityLastMessage = [(_UITabOutlineViewAccessibility *)selfCopy _accessibilityLastMessage];
    v22 = MEMORY[0x29EDBA0F8];
    v24 = accessibilityLocalizedString(@"row.reorder.above");
    accessibilityLabel3 = [v37 accessibilityLabel];
    v29 = [v22 stringWithFormat:v24, accessibilityLabel3];
    MEMORY[0x29EDC9740](accessibilityLabel3);
    v7 = MEMORY[0x29EDC9740](v24).n128_u64[0];
    if (v21 >= v31)
    {
      if (v32 == v31 && ([_accessibilityLastMessage isEqualToString:{v29, *&v7}] & 1) != 0)
      {
        v14 = MEMORY[0x29EDBA0F8];
        v16 = accessibilityLocalizedString(@"row.reorder.below");
        accessibilityLabel4 = [v37 accessibilityLabel];
        v10 = [v14 stringWithFormat:v16, accessibilityLabel4];
        v11 = v29;
        v29 = v10;
        MEMORY[0x29EDC9740](v11);
        MEMORY[0x29EDC9740](accessibilityLabel4);
        v7 = MEMORY[0x29EDC9740](v16).n128_u64[0];
      }
    }

    else
    {
      v17 = MEMORY[0x29EDBA0F8];
      v19 = accessibilityLocalizedString(@"row.reorder.below");
      accessibilityLabel5 = [v37 accessibilityLabel];
      v8 = [v17 stringWithFormat:v19, accessibilityLabel5];
      v9 = v29;
      v29 = v8;
      MEMORY[0x29EDC9740](v9);
      MEMORY[0x29EDC9740](accessibilityLabel5);
      v7 = MEMORY[0x29EDC9740](v19).n128_u64[0];
    }

    [(_UITabOutlineViewAccessibility *)selfCopy _accessibilitySetLastIndexPath:v40, *&v7];
    [(_UITabOutlineViewAccessibility *)selfCopy _accessibilitySetLastMessage:v29];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v29);
    objc_storeStrong(&v29, 0);
    objc_storeStrong(&_accessibilityLastMessage, 0);
  }

  v13 = MEMORY[0x29EDC9748](v39);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(location, 0);

  return v13;
}

- (void)willMoveToSuperview:(id)superview
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, superview);
  v10 = 0;
  objc_opt_class();
  v9 = __UIAccessibilityCastAsClass();
  v8 = MEMORY[0x29EDC9748](v9);
  objc_storeStrong(&v9, 0);
  v11 = v8;
  superview = [v8 superview];
  v6.receiver = selfCopy;
  v6.super_class = _UITabOutlineViewAccessibility;
  [(_UITabOutlineViewAccessibility *)&v6 willMoveToSuperview:location[0]];
  if (superview != location[0])
  {
    v4 = MEMORY[0x29EDCA578];
    v3 = MEMORY[0x29EDCA578];
    v5 = v4;
    dispatch_async(v5, &__block_literal_global_57);
    MEMORY[0x29EDC9740](v5);
  }

  objc_storeStrong(&superview, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

@end