@interface HorizontalLockupCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axPerformCustomAction:(id)action;
- (id)_accessibilityIndexPathForCell;
- (id)_privateAccessibilityCustomActions;
- (id)accessibilityCustomActions;
- (id)automationElements;
- (id)axCustomActionForContextualAction:(id)action;
- (unint64_t)accessibilityTraits;
@end

@implementation HorizontalLockupCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MusicApplication.HorizontalLockupCollectionViewCell" hasInstanceMethod:@"accessibilityLibraryStatusControl" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.HorizontalLockupCollectionViewCell" hasInstanceMethod:@"contextMenuButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.HorizontalLockupCollectionViewCell" hasInstanceMethod:@"showsContextMenu" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"MusicApplication.HorizontalLockupCollectionViewCell" hasProperty:@"collectionView" customGetter:@"_collectionView" customSetter:@"_setCollectionView:" withType:"@"];
  [validationsCopy validateClass:@"MusicApplication.HorizontalLockupCollectionViewCell" isKindOfClass:@"UICollectionViewTableCell"];
  [validationsCopy validateClass:@"UICollectionViewTableLayout" hasInstanceMethod:@"_delegateActual" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UICollectionViewTableCell" hasProperty:@"tableLayout" customGetter:@"_tableLayout" customSetter:0 withType:"@"];
  [validationsCopy validateClass:@"UICollectionViewTableLayout" hasInstanceMethod:@"contextualActionForDeletingRowAtIndexPath:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateProtocol:@"UICollectionViewDelegateTableLayout" hasOptionalInstanceMethod:@"collectionView:tableLayout:commitEditingStyle:forRowAtIndexPath:"];
  [validationsCopy validateClass:@"MusicApplication.HorizontalLockupCollectionViewCell" hasSwiftField:@"reactionsButton" withSwiftType:"Optional<Button>"];
}

- (id)accessibilityCustomActions
{
  array = [MEMORY[0x29EDB8DE8] array];
  LOBYTE(location[0]) = 0;
  objc_opt_class();
  v4 = [(HorizontalLockupCollectionViewCellAccessibility *)self safeValueForKey:@"accessibilityLibraryStatusControl"];
  v5 = __UIAccessibilityCastAsSafeCategory();

  [v5 setAccessibilityIsInCell:1];
  accessibilityLabel = [v5 accessibilityLabel];
  v7 = accessibilityLabel;
  if (v5 && [accessibilityLabel length])
  {
    objc_initWeak(location, v5);
    v8 = objc_alloc(MEMORY[0x29EDC78E0]);
    v31[0] = MEMORY[0x29EDCA5F8];
    v31[1] = 3221225472;
    v31[2] = __77__HorizontalLockupCollectionViewCellAccessibility_accessibilityCustomActions__block_invoke;
    v31[3] = &unk_29F2DDB50;
    objc_copyWeak(&v32, location);
    v9 = [v8 initWithName:v7 actionHandler:v31];
    [array addObject:v9];

    objc_destroyWeak(&v32);
    objc_destroyWeak(location);
  }

  LOBYTE(location[0]) = 0;
  objc_opt_class();
  v10 = [(HorizontalLockupCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"reactionsButton"];
  v11 = __UIAccessibilityCastAsClass();

  if (LOBYTE(location[0]) == 1)
  {
    goto LABEL_17;
  }

  if (v11)
  {
    objc_initWeak(location, v11);
    v12 = objc_alloc(MEMORY[0x29EDC78E0]);
    accessibilityLabel2 = [v11 accessibilityLabel];
    accessibilityValue = [v11 accessibilityValue];
    v15 = __UIAXStringForVariables();
    v29[0] = MEMORY[0x29EDCA5F8];
    v29[1] = 3221225472;
    v29[2] = __77__HorizontalLockupCollectionViewCellAccessibility_accessibilityCustomActions__block_invoke_2;
    v29[3] = &unk_29F2DDB50;
    objc_copyWeak(&v30, location);
    v16 = [v12 initWithName:v15 actionHandler:{v29, accessibilityValue, @"__AXStringForVariablesSentinel"}];

    [array addObject:v16];
    objc_destroyWeak(&v30);
    objc_destroyWeak(location);
  }

  if ([(HorizontalLockupCollectionViewCellAccessibility *)self safeBoolForKey:@"showsContextMenu"])
  {
    LOBYTE(location[0]) = 0;
    objc_opt_class();
    v17 = [(HorizontalLockupCollectionViewCellAccessibility *)self safeValueForKey:@"contextMenuButton"];
    v18 = __UIAccessibilityCastAsSafeCategory();

    if (LOBYTE(location[0]) != 1)
    {
      accessibilityLabel3 = [v18 accessibilityLabel];
      v20 = accessibilityLabel3;
      if (v18 && [accessibilityLabel3 length])
      {
        objc_initWeak(location, v18);
        v21 = objc_alloc(MEMORY[0x29EDC78E0]);
        v27[0] = MEMORY[0x29EDCA5F8];
        v27[1] = 3221225472;
        v27[2] = __77__HorizontalLockupCollectionViewCellAccessibility_accessibilityCustomActions__block_invoke_3;
        v27[3] = &unk_29F2DDB50;
        objc_copyWeak(&v28, location);
        v22 = [v21 initWithName:v20 actionHandler:v27];
        [array addObject:v22];

        objc_destroyWeak(&v28);
        objc_destroyWeak(location);
      }

      goto LABEL_14;
    }

LABEL_17:
    abort();
  }

LABEL_14:
  [(HorizontalLockupCollectionViewCellAccessibility *)self setLockupViewCustomActions:array];
  v26.receiver = self;
  v26.super_class = HorizontalLockupCollectionViewCellAccessibility;
  accessibilityCustomActions = [(HorizontalLockupCollectionViewCellAccessibility *)&v26 accessibilityCustomActions];
  v24 = [array arrayByAddingObjectsFromArray:accessibilityCustomActions];

  return v24;
}

uint64_t __77__HorizontalLockupCollectionViewCellAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained sendActionsForControlEvents:64];

  return 1;
}

uint64_t __77__HorizontalLockupCollectionViewCellAccessibility_accessibilityCustomActions__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained sendActionsForControlEvents:64];

  return 1;
}

uint64_t __77__HorizontalLockupCollectionViewCellAccessibility_accessibilityCustomActions__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _accessibilityShowContextMenuForElement:WeakRetained targetPointValue:0];

  return 1;
}

- (id)automationElements
{
  v10.receiver = self;
  v10.super_class = HorizontalLockupCollectionViewCellAccessibility;
  automationElements = [(HorizontalLockupCollectionViewCellAccessibility *)&v10 automationElements];
  v4 = [automationElements mutableCopy];
  v5 = v4;
  if (v4)
  {
    array = v4;
  }

  else
  {
    array = [MEMORY[0x29EDB8DE8] array];
  }

  v7 = array;

  v8 = [(HorizontalLockupCollectionViewCellAccessibility *)self safeValueForKey:@"accessibilityLibraryStatusControl"];
  [v7 axSafelyAddObject:v8];

  return v7;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = HorizontalLockupCollectionViewCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(HorizontalLockupCollectionViewCellAccessibility *)&v3 accessibilityTraits];
}

- (id)_accessibilityIndexPathForCell
{
  objc_opt_class();
  v3 = [(HorizontalLockupCollectionViewCellAccessibility *)self safeValueForKey:@"collectionView"];
  v4 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v5 = __UIAccessibilityCastAsClass();
  v6 = [v4 indexPathForCell:v5];

  return v6;
}

- (id)_privateAccessibilityCustomActions
{
  array = [MEMORY[0x29EDB8DE8] array];
  v13.receiver = self;
  v13.super_class = HorizontalLockupCollectionViewCellAccessibility;
  _privateAccessibilityCustomActions = [(HorizontalLockupCollectionViewCellAccessibility *)&v13 _privateAccessibilityCustomActions];
  [array axSafelyAddObjectsFromArray:_privateAccessibilityCustomActions];

  _accessibilityIndexPathForCell = [(HorizontalLockupCollectionViewCellAccessibility *)self _accessibilityIndexPathForCell];
  objc_opt_class();
  v6 = [(HorizontalLockupCollectionViewCellAccessibility *)self safeValueForKey:@"_tableLayout"];
  v7 = __UIAccessibilityCastAsClass();

  if (v7)
  {
    if (_accessibilityIndexPathForCell)
    {
      if (objc_opt_respondsToSelector())
      {
        v8 = [v7 safeValueForKey:@"_delegateActual"];
        v9 = objc_opt_respondsToSelector();

        if (v9)
        {
          v10 = [v7 contextualActionForDeletingRowAtIndexPath:_accessibilityIndexPathForCell];
          v11 = [(HorizontalLockupCollectionViewCellAccessibility *)self axCustomActionForContextualAction:v10];
          [array axSafelyAddObject:v11];
        }
      }
    }
  }

  return array;
}

- (BOOL)_axPerformCustomAction:(id)action
{
  actionCopy = action;
  objc_opt_class();
  v4 = [actionCopy _accessibilityValueForKey:@"AXHorizontalLockupCollectionViewCellActionKey"];
  v5 = __UIAccessibilityCastAsClass();

  if (v5)
  {
    v7 = v5;
    AXPerformSafeBlock();
  }

  return 1;
}

void __74__HorizontalLockupCollectionViewCellAccessibility__axPerformCustomAction___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) handler];

  if (v2)
  {
    v3 = [*(a1 + 32) handler];
    (*(v3 + 2))(v3, *(a1 + 32), *(a1 + 40), &__block_literal_global_15);
  }
}

- (id)axCustomActionForContextualAction:(id)action
{
  actionCopy = action;
  v5 = actionCopy;
  if (actionCopy && ([actionCopy title], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "length"), v6, v7))
  {
    v8 = objc_alloc(MEMORY[0x29EDC78E0]);
    title = [v5 title];
    v10 = [v8 initWithName:title target:self selector:sel__axPerformCustomAction_];

    [v10 _accessibilitySetRetainedValue:v5 forKey:@"AXHorizontalLockupCollectionViewCellActionKey"];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end