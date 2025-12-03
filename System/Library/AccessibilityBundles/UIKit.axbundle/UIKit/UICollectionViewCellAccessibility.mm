@interface UICollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityHitTestReverseOrder;
- (BOOL)_accessibilityImplementsDefaultRowRange;
- (BOOL)_accessibilityIsOutsideParentBounds;
- (BOOL)_accessibilityRespondsToUserInteractionForElement:(id)element;
- (BOOL)_axContentViewHasSingleFocusableSubview;
- (BOOL)_isEligibleForFocusInteraction;
- (BOOL)accessibilityScrollToVisible;
- (BOOL)canBecomeFocused;
- (BOOL)isAccessibilityElement;
- (_NSRange)_accessibilityIndexPathAsRange;
- (_NSRange)accessibilityRowRange;
- (id)_accessibilityCachedChildren;
- (id)_accessibilityChildren;
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
- (id)_accessibilityIndexPath;
- (id)_accessibilityListConfiguration;
- (id)_accessibilityParentScrollView;
- (id)_axCustomActionsForActions:(void *)actions;
- (id)_privateAccessibilityCustomActions;
- (id)accessibilityDragSourceDescriptors;
- (id)accessibilityDropPointDescriptors;
- (id)accessibilityElementAtIndex:(int64_t)index;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)axData;
- (int64_t)accessibilityElementCount;
- (int64_t)indexOfAccessibilityElement:(id)element;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityClearInternalCaches;
- (void)_setPopupMenuButton:(id)button;
- (void)accessibilityReuseChildren:(id)children forMockParent:(id)parent;
- (void)addSubview:(id)subview;
- (void)insertSubview:(id)subview aboveSubview:(id)aboveSubview;
- (void)insertSubview:(id)subview atIndex:(int64_t)index;
- (void)insertSubview:(id)subview belowSubview:(id)belowSubview;
- (void)prepareForReuse;
- (void)willRemoveSubview:(id)subview;
@end

@implementation UICollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v12 = location;
  v11 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v9 = @"UICollectionViewCell";
  v10 = "v";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  v5 = @"UICollectionView";
  [location[0] validateClass:? hasInstanceVariable:? withType:?];
  [location[0] validateClass:@"_UICollectionViewDragAndDropController"];
  v3 = @"UIView";
  [location[0] validateClass:v9 isKindOfClass:?];
  v8 = "@";
  [location[0] validateClass:v9 hasInstanceMethod:@"contentConfiguration" withFullSignature:0];
  [location[0] validateClass:v9 hasInstanceMethod:@"_contentViewConfiguration" withFullSignature:{v8, 0}];
  [location[0] validateClass:v9 hasInstanceVariable:@"_contentView" withType:"UIView"];
  v7 = "B";
  [location[0] validateClass:v3 hasInstanceMethod:@"_isEligibleForFocusInteraction" withFullSignature:0];
  [location[0] validateClass:v9 hasInstanceMethod:@"canBecomeFocused" withFullSignature:{v7, 0}];
  v4 = @"UICollectionViewCompositionalLayout";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v4 hasInstanceMethod:@"dataSourceSnapshotter" withFullSignature:{v8, 0}];
  [location[0] validateClass:@"_UIDataSourceSnapshotter" hasInstanceMethod:@"snapshot" withFullSignature:{v8, 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"layoutSectionProvider" withFullSignature:{"@?", 0}];
  [location[0] validateClass:v5 hasInstanceMethod:@"collectionViewLayout" withFullSignature:{v8, 0}];
  v6 = @"UIListContentView";
  [location[0] validateClass:?];
  [location[0] validateClass:v6 hasInstanceMethod:@"configuration" withFullSignature:{v8, 0}];
  [location[0] validateClass:@"NSObject" hasInstanceMethod:@"_accessibilityRespondsToUserInteraction" withFullSignature:{v7, 0}];
  [location[0] validateClass:v9 hasInstanceMethod:@"_setPopupMenuButton:" withFullSignature:{v10, v8, 0}];
  objc_storeStrong(v12, v11);
}

- (id)_accessibilityParentScrollView
{
  if (self)
  {
    v2 = [self _accessibilityViewAncestorIsKindOf:objc_opt_class()];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (unint64_t)accessibilityTraits
{
  selfCopy = self;
  v5 = a2;
  v3.receiver = self;
  v3.super_class = UICollectionViewCellAccessibility;
  accessibilityTraits = [(UICollectionViewCellAccessibility *)&v3 accessibilityTraits];
  if (([(UICollectionViewCellAccessibility *)selfCopy isSelected]& 1) != 0)
  {
    accessibilityTraits |= *MEMORY[0x29EDC7FC0];
  }

  return accessibilityTraits;
}

- (id)accessibilityLabel
{
  selfCopy = self;
  v20[1] = a2;
  v20[0] = [(UICollectionViewCellAccessibility *)self accessibilityUserDefinedLabel];
  if (v20[0])
  {
    v22 = MEMORY[0x29EDC9748](v20[0]);
    v19 = 1;
  }

  else
  {
    location = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%p-_accessibilityLabel", selfCopy];
    v16 = [*MEMORY[0x29EDC7300] objectForKeyedSubscript:location];
    *&v2 = MEMORY[0x29EDC9740](v16).n128_u64[0];
    if (v16)
    {
      v22 = [*MEMORY[0x29EDC7300] objectForKeyedSubscript:{location, v2}];
      v19 = 1;
    }

    else
    {
      v15 = [(UICollectionViewCellAccessibility *)selfCopy safeValueForKey:@"_contentViewConfiguration", v2];
      accessibilityLabel = [v15 accessibilityLabel];
      v4 = v20[0];
      v20[0] = accessibilityLabel;
      MEMORY[0x29EDC9740](v4);
      if (![v20[0] length])
      {
        _accessibilityListConfiguration = [(UICollectionViewCellAccessibility *)selfCopy _accessibilityListConfiguration];
        accessibilityLabel2 = [_accessibilityListConfiguration accessibilityLabel];
        v6 = v20[0];
        v20[0] = accessibilityLabel2;
        MEMORY[0x29EDC9740](v6);
        MEMORY[0x29EDC9740](_accessibilityListConfiguration);
      }

      if (![v20[0] length])
      {
        v13 = [(UICollectionViewCellAccessibility *)selfCopy safeValueForKey:@"contentConfiguration"];
        accessibilityLabel3 = [v13 accessibilityLabel];
        v8 = v20[0];
        v20[0] = accessibilityLabel3;
        MEMORY[0x29EDC9740](v8);
        MEMORY[0x29EDC9740](v13);
      }

      if (![v20[0] length])
      {
        v17.receiver = selfCopy;
        v17.super_class = UICollectionViewCellAccessibility;
        accessibilityLabel4 = [(UICollectionViewCellAccessibility *)&v17 accessibilityLabel];
        v10 = v20[0];
        v20[0] = accessibilityLabel4;
        MEMORY[0x29EDC9740](v10);
      }

      [*MEMORY[0x29EDC7300] setObject:v20[0] forKeyedSubscript:location];
      v22 = MEMORY[0x29EDC9748](v20[0]);
      v19 = 1;
    }

    objc_storeStrong(&location, 0);
  }

  objc_storeStrong(v20, 0);
  v11 = v22;

  return v11;
}

- (id)_accessibilityListConfiguration
{
  if (self)
  {
    v4 = [self safeUIViewForKey:@"_contentView"];
    v3 = [v4 _accessibilityFindUnsortedSubviewDescendantsPassingTest:&__block_literal_global_16];
    firstObject = [v3 firstObject];
    v5 = [firstObject safeValueForKey:@"configuration"];
    MEMORY[0x29EDC9740](firstObject);
    MEMORY[0x29EDC9740](v3);
    MEMORY[0x29EDC9740](v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)accessibilityValue
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(UICollectionViewCellAccessibility *)self accessibilityUserDefinedValue];
  if (location[0])
  {
    v17 = MEMORY[0x29EDC9748](location[0]);
    v14 = 1;
  }

  else
  {
    v12 = [(UICollectionViewCellAccessibility *)selfCopy safeValueForKey:@"_contentViewConfiguration"];
    location[0] = [v12 accessibilityValue];
    MEMORY[0x29EDC9740](0);
    if (![location[0] length])
    {
      _accessibilityListConfiguration = [(UICollectionViewCellAccessibility *)selfCopy _accessibilityListConfiguration];
      accessibilityValue = [_accessibilityListConfiguration accessibilityValue];
      v3 = location[0];
      location[0] = accessibilityValue;
      MEMORY[0x29EDC9740](v3);
      MEMORY[0x29EDC9740](_accessibilityListConfiguration);
    }

    if (![location[0] length])
    {
      v10 = [(UICollectionViewCellAccessibility *)selfCopy safeValueForKey:@"contentConfiguration"];
      accessibilityValue2 = [v10 accessibilityValue];
      v5 = location[0];
      location[0] = accessibilityValue2;
      MEMORY[0x29EDC9740](v5);
      MEMORY[0x29EDC9740](v10);
    }

    if (![location[0] length])
    {
      v13.receiver = selfCopy;
      v13.super_class = UICollectionViewCellAccessibility;
      accessibilityValue3 = [(UICollectionViewCellAccessibility *)&v13 accessibilityValue];
      v7 = location[0];
      location[0] = accessibilityValue3;
      MEMORY[0x29EDC9740](v7);
    }

    v17 = MEMORY[0x29EDC9748](location[0]);
    v14 = 1;
  }

  objc_storeStrong(location, 0);
  v8 = v17;

  return v8;
}

uint64_t __68__UICollectionViewCellAccessibility__accessibilityListConfiguration__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  NSClassFromString(&cfstr_Uilistcontentv_0.isa);
  isKindOfClass = objc_opt_isKindOfClass();
  objc_storeStrong(location, 0);
  return isKindOfClass & 1;
}

- (void)prepareForReuse
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = UICollectionViewCellAccessibility;
  [(UICollectionViewCellAccessibility *)&v2 prepareForReuse];
  [(UICollectionViewCellAccessibility *)selfCopy _accessibilityClearInternalCaches];
  [(UICollectionViewCellAccessibility *)selfCopy setAccessibilityElements:0];
}

- (void)_accessibilityClearInternalCaches
{
  selfCopy = self;
  if (self)
  {
    [selfCopy _accessibilityRemoveValueForKey:*MEMORY[0x29EDC7620]];
    selfCopy = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%p-_accessibilityChildren", selfCopy];
    [*MEMORY[0x29EDC7300] setObject:? forKeyedSubscript:?];
    objc_storeStrong(&selfCopy, 0);
  }
}

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  testCopy = test;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, event);
  v18 = [(UICollectionViewCellAccessibility *)selfCopy _accessibilityBoolValueForKey:@"AXInHitTestOverride"];
  v10 = 0;
  v6 = 0;
  if ((v18 & 1) == 0)
  {
    v12 = MEMORY[0x29EDCA5F8];
    v13 = -1073741824;
    v14 = 0;
    v15 = __69__UICollectionViewCellAccessibility__accessibilityHitTest_withEvent___block_invoke;
    v16 = &unk_29F30CEB0;
    v17 = MEMORY[0x29EDC9748](selfCopy);
    v11 = &v17;
    v10 = 1;
    v6 = (__69__UICollectionViewCellAccessibility__accessibilityHitTest_withEvent___block_invoke)();
  }

  if (v6)
  {
    [(UICollectionViewCellAccessibility *)selfCopy _accessibilitySetBoolValue:1 forKey:?];
    v9 = [(UICollectionViewCellAccessibility *)selfCopy accessibilityHitTest:location[0] withEvent:testCopy.x, testCopy.y];
    [(UICollectionViewCellAccessibility *)selfCopy _accessibilitySetBoolValue:0 forKey:@"AXInHitTestOverride"];
    v22 = MEMORY[0x29EDC9748](v9);
    v8 = 1;
    objc_storeStrong(&v9, 0);
  }

  else
  {
    v8 = 0;
  }

  if (v10)
  {
    objc_storeStrong(v11, 0);
  }

  if (!v8)
  {
    if (([(UICollectionViewCellAccessibility *)selfCopy pointInside:location[0] withEvent:testCopy.x, testCopy.y]& 1) != 0)
    {
      v7.receiver = selfCopy;
      v7.super_class = UICollectionViewCellAccessibility;
      v22 = [(UICollectionViewCellAccessibility *)&v7 _accessibilityHitTest:location[0] withEvent:testCopy.x, testCopy.y];
    }

    else
    {
      v22 = 0;
    }

    v8 = 1;
  }

  objc_storeStrong(location, 0);
  v4 = v22;

  return v4;
}

BOOL __69__UICollectionViewCellAccessibility__accessibilityHitTest_withEvent___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v16 = a1;
  v15 = a1;
  v18 = &UIKBEmojiZeroWidthJoiner_block_invoke_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_411);
  if (*v18 != -1)
  {
    dispatch_once(v18, location);
  }

  objc_storeStrong(&location, 0);
  v1 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v1, sel_accessibilityHitTest_withEvent_);
  Implementation = 0;
  if (InstanceMethod)
  {
    Implementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v12 = AXLogCommon();
    v11 = 17;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      log = v12;
      type = v11;
      v8 = NSStringFromSelector(sel_accessibilityHitTest_withEvent_);
      v4 = MEMORY[0x29EDC9748](v8);
      v10 = v4;
      v2 = objc_opt_class();
      v7 = NSStringFromClass(v2);
      v9 = MEMORY[0x29EDC9748](v7);
      __os_log_helper_16_2_2_8_64_8_64(v19, v4, v9);
      _os_log_fault_impl(&dword_29C4D6000, log, type, "Attempted to check for nonexistent method: %@ on class: %@", v19, 0x16u);
      MEMORY[0x29EDC9740](v7);
      MEMORY[0x29EDC9740](v8);
      objc_storeStrong(&v9, 0);
      objc_storeStrong(&v10, 0);
    }

    objc_storeStrong(&v12, 0);
  }

  return Implementation != UIKBEmojiZeroWidthJoiner_block_invoke_BaseImplementation;
}

void __69__UICollectionViewCellAccessibility__accessibilityHitTest_withEvent___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v14 = a1;
  v13 = a1;
  v1 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v1, sel_accessibilityHitTest_withEvent_);
  if (InstanceMethod)
  {
    UIKBEmojiZeroWidthJoiner_block_invoke_BaseImplementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v11 = AXLogCommon();
    v10 = 17;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      log = v11;
      type = v10;
      v7 = NSStringFromSelector(sel_accessibilityHitTest_withEvent_);
      v3 = MEMORY[0x29EDC9748](v7);
      v9 = v3;
      v2 = objc_opt_class();
      v6 = NSStringFromClass(v2);
      v8 = MEMORY[0x29EDC9748](v6);
      __os_log_helper_16_2_2_8_64_8_64(v15, v3, v8);
      _os_log_fault_impl(&dword_29C4D6000, log, type, "Attempted to check for nonexistent method: %@ on class: %@", v15, 0x16u);
      MEMORY[0x29EDC9740](v6);
      MEMORY[0x29EDC9740](v7);
      objc_storeStrong(&v8, 0);
      objc_storeStrong(&v9, 0);
    }

    objc_storeStrong(&v11, 0);
  }
}

- (void)accessibilityReuseChildren:(id)children forMockParent:(id)parent
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, children);
  v5 = 0;
  objc_storeStrong(&v5, parent);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (id)_accessibilityCachedChildren
{
  selfCopy = self;
  if (!self)
  {
    v20 = 0;
    goto LABEL_13;
  }

  _accessibilitySortedElementsWithin = 0;
  if (_AXSAutomationEnabled())
  {
    selfCopy = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%p-_accessibilityChildren", selfCopy];
    v12 = [*MEMORY[0x29EDC7300] objectForKeyedSubscript:selfCopy];
    *&v1 = MEMORY[0x29EDC9740](v12).n128_u64[0];
    if (v12)
    {
      v20 = [*MEMORY[0x29EDC7300] objectForKeyedSubscript:{selfCopy, v1}];
      v16 = 1;
    }

    else
    {
      v15 = 0;
      objc_opt_class();
      v14 = __UIAccessibilityCastAsSafeCategory();
      v13 = MEMORY[0x29EDC9748](v14);
      objc_storeStrong(&v14, 0);
      v2 = [(UIViewAccessibility *)v13 _accessibilityUserTestingSubviewsSorted:?];
      v3 = _accessibilitySortedElementsWithin;
      _accessibilitySortedElementsWithin = v2;
      MEMORY[0x29EDC9740](v3);
      *&v4 = MEMORY[0x29EDC9740](v13).n128_u64[0];
      [*MEMORY[0x29EDC7300] setObject:_accessibilitySortedElementsWithin forKeyedSubscript:{selfCopy, v4}];
      v16 = 0;
    }

    objc_storeStrong(&selfCopy, 0);
    if (v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v5 = [selfCopy _accessibilityValueForKey:*MEMORY[0x29EDC7620]];
    v6 = _accessibilitySortedElementsWithin;
    _accessibilitySortedElementsWithin = v5;
    *&v7 = MEMORY[0x29EDC9740](v6).n128_u64[0];
    if (!_accessibilitySortedElementsWithin)
    {
      array = [MEMORY[0x29EDB8DE8] array];
      v11 = MEMORY[0x29EDC7620];
      [selfCopy _accessibilitySetRetainedValue:? forKey:?];
      _accessibilitySortedElementsWithin = [selfCopy _accessibilitySortedElementsWithin];
      [selfCopy _accessibilitySetRetainedValue:_accessibilitySortedElementsWithin forKey:{*v11, MEMORY[0x29EDC9740](0).n128_f64[0]}];
    }
  }

  v20 = MEMORY[0x29EDC9748](_accessibilitySortedElementsWithin);
  v16 = 1;
LABEL_12:
  objc_storeStrong(&_accessibilitySortedElementsWithin, 0);
LABEL_13:
  v8 = v20;

  return v8;
}

- (id)_accessibilityChildren
{
  v4 = 0;
  LOBYTE(v3) = 1;
  if (![(UICollectionViewCellAccessibility *)self isAccessibilityElement])
  {
    v5 = [(UICollectionViewCellAccessibility *)self _accessibilityAncestorIsKindOf:objc_opt_class()];
    v4 = 1;
    v3 = [v5 _accessibilityShouldUseCollectionViewCellAccessibilityElements] ^ 1;
  }

  if (v4)
  {
    MEMORY[0x29EDC9740](v5);
  }

  if (v3)
  {
    _accessibilityCachedChildren = 0;
  }

  else
  {
    _accessibilityCachedChildren = [(UICollectionViewCellAccessibility *)self _accessibilityCachedChildren];
  }

  return _accessibilityCachedChildren;
}

- (BOOL)_accessibilityHitTestReverseOrder
{
  selfCopy = self;
  v4 = a2;
  if (_AXSAutomationEnabled())
  {
    return 1;
  }

  v3.receiver = selfCopy;
  v3.super_class = UICollectionViewCellAccessibility;
  return [(UICollectionViewCellAccessibility *)&v3 _accessibilityHitTestReverseOrder];
}

- (BOOL)_accessibilityRespondsToUserInteractionForElement:(id)element
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, element);
  if ([(UICollectionViewCellAccessibility *)selfCopy isAccessibilityElement])
  {
    v8 = 1;
  }

  else
  {
    v4.receiver = selfCopy;
    v4.super_class = UICollectionViewCellAccessibility;
    v8 = [(UICollectionViewCellAccessibility *)&v4 _accessibilityRespondsToUserInteractionForElement:location[0]];
  }

  v5 = 1;
  objc_storeStrong(location, 0);
  return v8 & 1;
}

- (id)_privateAccessibilityCustomActions
{
  selfCopy = self;
  v41[1] = a2;
  v41[0] = [MEMORY[0x29EDB8DE8] array];
  v21 = v41[0];
  v40.receiver = selfCopy;
  v40.super_class = UICollectionViewCellAccessibility;
  _privateAccessibilityCustomActions = [(UICollectionViewCellAccessibility *)&v40 _privateAccessibilityCustomActions];
  [v21 axSafelyAddObjectsFromArray:?];
  *&v2 = MEMORY[0x29EDC9740](_privateAccessibilityCustomActions).n128_u64[0];
  _accessibilityIndexPath = [(UICollectionViewCellAccessibility *)selfCopy _accessibilityIndexPath];
  if (_accessibilityIndexPath)
  {
    v37 = [(UICollectionViewCellAccessibility *)selfCopy _accessibilityViewAncestorIsKindOf:objc_opt_class()];
    v36 = [v37 safeValueForKey:@"collectionViewLayout"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = 0;
      objc_opt_class();
      v33 = __UIAccessibilityCastAsClass();
      v32 = MEMORY[0x29EDC9748](v33);
      objc_storeStrong(&v33, 0);
      v35 = v32;
      v14 = v41[0];
      v13 = selfCopy;
      v16 = [v32 _leadingSwipeActionsConfigurationForIndexPath:_accessibilityIndexPath];
      v15 = [(UICollectionViewCellAccessibility *)v13 _axCustomActionsForActions:v16];
      [v14 axSafelyAddObjectsFromArray:?];
      MEMORY[0x29EDC9740](v15);
      *&v3 = MEMORY[0x29EDC9740](v16).n128_u64[0];
      v18 = v41[0];
      v17 = selfCopy;
      v20 = [v35 _trailingSwipeActionsConfigurationForIndexPath:{_accessibilityIndexPath, v3}];
      v19 = [(UICollectionViewCellAccessibility *)v17 _axCustomActionsForActions:v20];
      [v18 axSafelyAddObjectsFromArray:?];
      MEMORY[0x29EDC9740](v19);
      *&v4 = MEMORY[0x29EDC9740](v20).n128_u64[0];
      v31 = [(UICollectionViewCellAccessibility *)selfCopy safeUIViewForKey:@"_contentView", v4];
      if (objc_opt_respondsToSelector())
      {
        v29 = 0;
        objc_opt_class();
        v12 = [v31 safeValueForKey:@"_leadingSwipeActionsConfiguration"];
        v28 = __UIAccessibilityCastAsClass();
        MEMORY[0x29EDC9740](v12);
        v27 = MEMORY[0x29EDC9748](v28);
        objc_storeStrong(&v28, 0);
        v30 = v27;
        v10 = v41[0];
        v11 = [(UICollectionViewCellAccessibility *)selfCopy _axCustomActionsForActions:v27];
        [v10 axSafelyAddObjectsFromArray:?];
        MEMORY[0x29EDC9740](v11);
        objc_storeStrong(&v30, 0);
      }

      if (objc_opt_respondsToSelector())
      {
        v25 = 0;
        objc_opt_class();
        v9 = [v31 safeValueForKey:@"_trailingSwipeActionsConfiguration"];
        v24 = __UIAccessibilityCastAsClass();
        MEMORY[0x29EDC9740](v9);
        v23 = MEMORY[0x29EDC9748](v24);
        objc_storeStrong(&v24, 0);
        v26 = v23;
        v7 = v41[0];
        v8 = [(UICollectionViewCellAccessibility *)selfCopy _axCustomActionsForActions:v23];
        [v7 axSafelyAddObjectsFromArray:?];
        MEMORY[0x29EDC9740](v8);
        objc_storeStrong(&v26, 0);
      }

      v43 = MEMORY[0x29EDC9748](v41[0]);
      v38 = 1;
      objc_storeStrong(&v31, 0);
      objc_storeStrong(&v35, 0);
    }

    else
    {
      v43 = MEMORY[0x29EDC9748](v41[0]);
      v38 = 1;
    }

    objc_storeStrong(&v36, 0);
    objc_storeStrong(&v37, 0);
  }

  else
  {
    v43 = MEMORY[0x29EDC9748](v41[0]);
    v38 = 1;
  }

  objc_storeStrong(&_accessibilityIndexPath, 0);
  objc_storeStrong(v41, 0);
  v5 = v43;

  return v5;
}

- (id)_axCustomActionsForActions:(void *)actions
{
  v48 = *MEMORY[0x29EDCA608];
  actionsCopy = actions;
  location = 0;
  objc_storeStrong(&location, a2);
  if (actionsCopy)
  {
    array = [MEMORY[0x29EDB8DE8] array];
    memset(__b, 0, sizeof(__b));
    obj = [location actions];
    v28 = [obj countByEnumeratingWithState:__b objects:v47 count:16];
    if (v28)
    {
      v24 = *__b[2];
      v25 = 0;
      v26 = v28;
      while (1)
      {
        v23 = v25;
        if (*__b[2] != v24)
        {
          objc_enumerationMutation(obj);
        }

        v41 = *(__b[1] + 8 * v25);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          _menu = [v41 _menu];
          if (_menu)
          {
            v22 = array;
            children = [_menu children];
            v20 = AXCustomActionForMenuElements(children);
            [v22 axSafelyAddObjectsFromArray:?];
            MEMORY[0x29EDC9740](v20);
            MEMORY[0x29EDC9740](children);
          }

          else
          {
            accessibilityLabel = [v41 accessibilityLabel];
            if (![accessibilityLabel length])
            {
              title = [v41 title];
              v3 = accessibilityLabel;
              accessibilityLabel = title;
              *&v4 = MEMORY[0x29EDC9740](v3).n128_u64[0];
              if (![accessibilityLabel length])
              {
                image = [v41 image];
                accessibilityLabel2 = [image accessibilityLabel];
                v6 = accessibilityLabel;
                accessibilityLabel = accessibilityLabel2;
                MEMORY[0x29EDC9740](v6);
                *&v7 = MEMORY[0x29EDC9740](image).n128_u64[0];
                if (![accessibilityLabel length])
                {
                  image2 = [v41 image];
                  accessibilityIdentifier = [image2 accessibilityIdentifier];
                  v9 = accessibilityLabel;
                  accessibilityLabel = accessibilityIdentifier;
                  MEMORY[0x29EDC9740](v9);
                  MEMORY[0x29EDC9740](image2);
                }
              }
            }

            v10 = [accessibilityLabel stringByReplacingOccurrencesOfString:@"\n" withString:{@" ", v15}];
            v11 = accessibilityLabel;
            accessibilityLabel = v10;
            *&v12 = MEMORY[0x29EDC9740](v11).n128_u64[0];
            if ([accessibilityLabel length])
            {
              objc_initWeak(&from, actionsCopy);
              v17 = objc_alloc(MEMORY[0x29EDC78E0]);
              v16 = accessibilityLabel;
              v29 = MEMORY[0x29EDCA5F8];
              v30 = -1073741824;
              v31 = 0;
              v32 = __64__UICollectionViewCellAccessibility__axCustomActionsForActions___block_invoke;
              v33 = &unk_29F30D498;
              v34 = MEMORY[0x29EDC9748](v41);
              objc_copyWeak(&v35, &from);
              v36 = [v17 initWithName:v16 actionHandler:&v29];
              [array addObject:v36];
              objc_storeStrong(&v36, 0);
              objc_destroyWeak(&v35);
              objc_storeStrong(&v34, 0);
              objc_destroyWeak(&from);
            }

            objc_storeStrong(&accessibilityLabel, 0);
          }

          objc_storeStrong(&_menu, 0);
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v15 = v41;
            _AXAssert();
          }
        }

        ++v25;
        if (v23 + 1 >= v26)
        {
          v25 = 0;
          v26 = [obj countByEnumeratingWithState:__b objects:v47 count:16];
          if (!v26)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x29EDC9740](obj);
    v46 = MEMORY[0x29EDC9748](array);
    v43 = 1;
    objc_storeStrong(&array, 0);
  }

  else
  {
    v46 = 0;
    v43 = 1;
  }

  objc_storeStrong(&location, 0);
  v13 = v46;

  return v13;
}

uint64_t __64__UICollectionViewCellAccessibility__axCustomActionsForActions___block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v12[1] = a1;
  v12[0] = [a1[4] handler];
  if (v12[0])
  {
    v4 = MEMORY[0x29EDCA5F8];
    v5 = -1073741824;
    v6 = 0;
    v7 = __64__UICollectionViewCellAccessibility__axCustomActionsForActions___block_invoke_2;
    v8 = &unk_29F30D470;
    objc_copyWeak(&v11, a1 + 5);
    v10 = MEMORY[0x29EDC9748](v12[0]);
    v9 = MEMORY[0x29EDC9748](a1[4]);
    AXPerformSafeBlock();
    objc_storeStrong(&v9, 0);
    objc_storeStrong(&v10, 0);
    objc_destroyWeak(&v11);
  }

  objc_storeStrong(v12, 0);
  objc_storeStrong(location, 0);
  return 1;
}

void __64__UICollectionViewCellAccessibility__axCustomActionsForActions___block_invoke_2(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained((a1 + 48));
  if (location[0])
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_storeStrong(location, 0);
}

- (void)addSubview:(id)subview
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, subview);
  v3.receiver = selfCopy;
  v3.super_class = UICollectionViewCellAccessibility;
  [(UICollectionViewCellAccessibility *)&v3 addSubview:location[0]];
  [(UICollectionViewCellAccessibility *)selfCopy _accessibilityClearInternalCaches];
  objc_storeStrong(location, 0);
}

- (void)willRemoveSubview:(id)subview
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, subview);
  v3.receiver = selfCopy;
  v3.super_class = UICollectionViewCellAccessibility;
  [(UICollectionViewCellAccessibility *)&v3 willRemoveSubview:location[0]];
  [(UICollectionViewCellAccessibility *)selfCopy _accessibilityClearInternalCaches];
  objc_storeStrong(location, 0);
}

- (void)insertSubview:(id)subview belowSubview:(id)belowSubview
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, subview);
  v6 = 0;
  objc_storeStrong(&v6, belowSubview);
  v5.receiver = selfCopy;
  v5.super_class = UICollectionViewCellAccessibility;
  [(UICollectionViewCellAccessibility *)&v5 insertSubview:location[0] belowSubview:v6];
  [(UICollectionViewCellAccessibility *)selfCopy _accessibilityClearInternalCaches];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)insertSubview:(id)subview aboveSubview:(id)aboveSubview
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, subview);
  v6 = 0;
  objc_storeStrong(&v6, aboveSubview);
  v5.receiver = selfCopy;
  v5.super_class = UICollectionViewCellAccessibility;
  [(UICollectionViewCellAccessibility *)&v5 insertSubview:location[0] aboveSubview:v6];
  [(UICollectionViewCellAccessibility *)selfCopy _accessibilityClearInternalCaches];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)insertSubview:(id)subview atIndex:(int64_t)index
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, subview);
  indexCopy = index;
  v5.receiver = selfCopy;
  v5.super_class = UICollectionViewCellAccessibility;
  [(UICollectionViewCellAccessibility *)&v5 insertSubview:location[0] atIndex:index];
  [(UICollectionViewCellAccessibility *)selfCopy _accessibilityClearInternalCaches];
  objc_storeStrong(location, 0);
}

- (int64_t)accessibilityElementCount
{
  selfCopy = self;
  v7[1] = a2;
  v7[0] = [(UICollectionViewCellAccessibility *)self accessibilityElements];
  if (v7[0])
  {
    v9 = [v7[0] count];
    v6 = 1;
  }

  else
  {
    location = [(UICollectionViewCellAccessibility *)selfCopy _accessibilityChildren];
    if (location)
    {
      v4 = [location count];
      if (v4)
      {
        v3 = v4;
      }

      else
      {
        v3 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v9 = v3;
      v6 = 1;
    }

    else
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
      v6 = 1;
    }

    objc_storeStrong(&location, 0);
  }

  objc_storeStrong(v7, 0);
  return v9;
}

- (id)accessibilityElementAtIndex:(int64_t)index
{
  selfCopy = self;
  v8 = a2;
  indexCopy = index;
  location = [(UICollectionViewCellAccessibility *)self accessibilityElements];
  if (location)
  {
    v10 = [location objectAtIndexedSubscript:indexCopy];
  }

  else
  {
    _accessibilityChildren = [(UICollectionViewCellAccessibility *)selfCopy _accessibilityChildren];
    v10 = [_accessibilityChildren objectAtIndex:indexCopy];
    MEMORY[0x29EDC9740](_accessibilityChildren);
  }

  objc_storeStrong(&location, 0);
  v3 = v10;

  return v3;
}

- (int64_t)indexOfAccessibilityElement:(id)element
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, element);
  accessibilityElements = [(UICollectionViewCellAccessibility *)selfCopy accessibilityElements];
  if (accessibilityElements)
  {
    v8 = [accessibilityElements indexOfObject:location[0]];
  }

  else
  {
    _accessibilityChildren = [(UICollectionViewCellAccessibility *)selfCopy _accessibilityChildren];
    v8 = [_accessibilityChildren indexOfObject:location[0]];
    MEMORY[0x29EDC9740](_accessibilityChildren);
  }

  objc_storeStrong(&accessibilityElements, 0);
  objc_storeStrong(location, 0);
  return v8;
}

- (id)axData
{
  selfCopy = self;
  v4[1] = a2;
  v4[0] = [(UICollectionViewCellAccessibility *)self _accessibilityValueForKey:@"AXCollectionViewCellData"];
  if (!v4[0])
  {
    v4[0] = objc_alloc_init(AXCollectionViewCellData);
    [(UICollectionViewCellAccessibility *)selfCopy _accessibilitySetRetainedValue:v4[0] forKey:@"AXCollectionViewCellData", MEMORY[0x29EDC9740](0).n128_f64[0]];
  }

  v3 = MEMORY[0x29EDC9748](v4[0]);
  objc_storeStrong(v4, 0);

  return v3;
}

- (id)_accessibilityIndexPath
{
  selfCopy = self;
  v8[1] = a2;
  accessibilityContainer = [(UICollectionViewCellAccessibility *)self accessibilityContainer];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  *&v2 = MEMORY[0x29EDC9740](accessibilityContainer).n128_u64[0];
  if (isKindOfClass)
  {
    accessibilityContainer2 = [(UICollectionViewCellAccessibility *)selfCopy accessibilityContainer];
    indexPath = [accessibilityContainer2 indexPath];
    MEMORY[0x29EDC9740](accessibilityContainer2);
  }

  else
  {
    v8[0] = [(UICollectionViewCellAccessibility *)selfCopy _accessibilityParentCollectionView];
    indexPath = [v8[0] indexPathForCell:selfCopy];
    objc_storeStrong(v8, 0);
  }

  v3 = indexPath;

  return v3;
}

- (_NSRange)accessibilityRowRange
{
  selfCopy = self;
  v17[1] = a2;
  v17[0] = [(UICollectionViewCellAccessibility *)self _accessibilityValueForKey:@"_accessibilityRowRangeKey"];
  if (v17[0])
  {
    rangeValue = [v17[0] rangeValue];
    v20 = v2;
    v16 = 1;
  }

  else
  {
    v14 = 0;
    objc_opt_class();
    v6 = [(UICollectionViewCellAccessibility *)selfCopy _accessibilityAncestorIsKindOf:objc_opt_class()];
    v13 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](v6);
    v12 = MEMORY[0x29EDC9748](v13);
    objc_storeStrong(&v13, 0);
    v15 = v12;
    _accessibilityIndexPath = [(UICollectionViewCellAccessibility *)selfCopy _accessibilityIndexPath];
    if (_accessibilityIndexPath && (v10 = [_accessibilityIndexPath item], v9 = objc_msgSend(_accessibilityIndexPath, "section"), v9 < objc_msgSend(v15, "numberOfSections")))
    {
      v8 = [v15 numberOfItemsInSection:{objc_msgSend(_accessibilityIndexPath, "section")}];
      v22 = v10;
      v21 = v8;
      v23 = v10;
      v24 = v8;
      rangeValue = v10;
      v20 = v8;
      v16 = 1;
    }

    else
    {
      v7.receiver = selfCopy;
      v7.super_class = UICollectionViewCellAccessibility;
      rangeValue = [(UICollectionViewCellAccessibility *)&v7 accessibilityRowRange];
      v20 = v3;
      v16 = 1;
    }

    objc_storeStrong(&_accessibilityIndexPath, 0);
    objc_storeStrong(&v15, 0);
  }

  objc_storeStrong(v17, 0);
  v4 = rangeValue;
  v5 = v20;
  result.length = v5;
  result.location = v4;
  return result;
}

- (BOOL)_accessibilityImplementsDefaultRowRange
{
  v4[2] = self;
  v4[1] = a2;
  v4[0] = MEMORY[0x29EDC9748](self);
  v3 = (__76__UICollectionViewCellAccessibility__accessibilityImplementsDefaultRowRange__block_invoke)() ^ 1;
  objc_storeStrong(v4, 0);
  return v3;
}

BOOL __76__UICollectionViewCellAccessibility__accessibilityImplementsDefaultRowRange__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v16 = a1;
  v15 = a1;
  v18 = &UIKBEmojiZeroWidthJoiner_block_invoke_2_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_478);
  if (*v18 != -1)
  {
    dispatch_once(v18, location);
  }

  objc_storeStrong(&location, 0);
  v1 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v1, sel_accessibilityRowRange);
  Implementation = 0;
  if (InstanceMethod)
  {
    Implementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v12 = AXLogCommon();
    v11 = 17;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      log = v12;
      type = v11;
      v8 = NSStringFromSelector(sel_accessibilityRowRange);
      v4 = MEMORY[0x29EDC9748](v8);
      v10 = v4;
      v2 = objc_opt_class();
      v7 = NSStringFromClass(v2);
      v9 = MEMORY[0x29EDC9748](v7);
      __os_log_helper_16_2_2_8_64_8_64(v19, v4, v9);
      _os_log_fault_impl(&dword_29C4D6000, log, type, "Attempted to check for nonexistent method: %@ on class: %@", v19, 0x16u);
      MEMORY[0x29EDC9740](v7);
      MEMORY[0x29EDC9740](v8);
      objc_storeStrong(&v9, 0);
      objc_storeStrong(&v10, 0);
    }

    objc_storeStrong(&v12, 0);
  }

  return Implementation != UIKBEmojiZeroWidthJoiner_block_invoke_2_BaseImplementation;
}

void __76__UICollectionViewCellAccessibility__accessibilityImplementsDefaultRowRange__block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v14 = a1;
  v13 = a1;
  v1 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v1, sel_accessibilityRowRange);
  if (InstanceMethod)
  {
    UIKBEmojiZeroWidthJoiner_block_invoke_2_BaseImplementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v11 = AXLogCommon();
    v10 = 17;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      log = v11;
      type = v10;
      v7 = NSStringFromSelector(sel_accessibilityRowRange);
      v3 = MEMORY[0x29EDC9748](v7);
      v9 = v3;
      v2 = objc_opt_class();
      v6 = NSStringFromClass(v2);
      v8 = MEMORY[0x29EDC9748](v6);
      __os_log_helper_16_2_2_8_64_8_64(v15, v3, v8);
      _os_log_fault_impl(&dword_29C4D6000, log, type, "Attempted to check for nonexistent method: %@ on class: %@", v15, 0x16u);
      MEMORY[0x29EDC9740](v6);
      MEMORY[0x29EDC9740](v7);
      objc_storeStrong(&v8, 0);
      objc_storeStrong(&v9, 0);
    }

    objc_storeStrong(&v11, 0);
  }
}

- (BOOL)accessibilityScrollToVisible
{
  selfCopy = self;
  v107[1] = a2;
  v2 = AXRetainAutorelease();
  v107[0] = [(UICollectionViewCellAccessibility *)selfCopy _accessibilityParentView];
  _accessibilityParentCollectionView = [(UICollectionViewCellAccessibility *)selfCopy _accessibilityParentCollectionView];
  objc_opt_class();
  v104 = 0;
  v58 = 1;
  if (objc_opt_isKindOfClass())
  {
    _accessibilityParentScrollView = [(UICollectionViewCellAccessibility *)selfCopy _accessibilityParentScrollView];
    v104 = 1;
    v58 = _accessibilityParentScrollView != _accessibilityParentCollectionView;
  }

  if (v104)
  {
    MEMORY[0x29EDC9740](_accessibilityParentScrollView);
  }

  if (v58)
  {
    v109 = 0;
    v103 = 1;
  }

  else if ([_accessibilityParentCollectionView _accessibilityShouldAvoidScrollingCollectionViewCells])
  {
    v109 = 0;
    v103 = 1;
  }

  else
  {
    indexPathsForVisibleItems = [_accessibilityParentCollectionView indexPathsForVisibleItems];
    v101 = [_accessibilityParentCollectionView indexPathForCell:selfCopy];
    if (v101)
    {
      v100 = 0;
      v99 = 0;
      v56 = [(UICollectionViewCellAccessibility *)selfCopy safeValueForKey:@"window"];
      v3 = AXUIKeyboardWindow();
      v57 = v56 == v3;
      MEMORY[0x29EDC9740](v3);
      *&width = MEMORY[0x29EDC9740](v56).n128_u64[0];
      v98 = v57;
      v97 = 0;
      if (!v57 && (_UIAXObjectIsBehindKeyboard() & 1) != 0)
      {
        v100 = 1;
        v97 = 1;
      }

      if ((v97 & 1) == 0)
      {
        v55 = [_accessibilityParentCollectionView safeValueForKey:@"visibleBounds"];
        [v55 rectValue];
        v96.origin.x = v5;
        v96.origin.y = v6;
        v96.size.width = v7;
        v96.size.height = v8;
        MEMORY[0x29EDC9740](v55);
        [_accessibilityParentCollectionView _accessibilityVisibleContentInset];
        v92 = v9;
        v93 = v10;
        v94 = v11;
        v95 = v12;
        v91.origin.x = UIEdgeInsetsInsetRect(v96.origin.x, v96.origin.y, v96.size.width, v96.size.height, v9, v10);
        v91.origin.y = v13;
        v91.size.width = v14;
        v91.size.height = v15;
        v96 = v91;
        [(UICollectionViewCellAccessibility *)selfCopy bounds];
        v86 = v16;
        v87 = v17;
        v88 = v18;
        v89 = v19;
        v90 = v18 * 1.5;
        [(UICollectionViewCellAccessibility *)selfCopy bounds];
        v81 = v20;
        v82 = v21;
        v83 = v22;
        v84 = v23;
        v85 = v23 * 1.5;
        [v107[0] frame];
        rect2.origin.x = v24;
        rect2.origin.y = v25;
        rect2.size.width = v26;
        rect2.size.height = v27;
        if (!CGRectContainsRect(v91, rect2))
        {
          MaxY = CGRectGetMaxY(rect2);
          v113 = MaxY - CGRectGetMinY(v96);
          if (fabs(v113) > v85 || (MinY = CGRectGetMinY(rect2), v112 = MinY - CGRectGetMaxY(v96), fabs(v112) > v85))
          {
            [_accessibilityParentCollectionView contentSize];
            v78 = v28;
            v79 = v29;
            if (v96.size.height < v29)
            {
              v100 = 2;
              v97 = 1;
            }
          }

          MaxX = CGRectGetMaxX(rect2);
          v111 = MaxX - CGRectGetMinX(v96);
          if (fabs(v111) > v90 || (MinX = CGRectGetMinX(rect2), v110 = MinX - CGRectGetMaxX(v96), width = fabs(v110), width > v90))
          {
            [_accessibilityParentCollectionView contentSize];
            v31 = v30;
            width = v96.size.width;
            v76 = v31;
            v77 = v32;
            if (v96.size.width < v31)
            {
              v99 = 16;
              v97 = 1;
            }
          }
        }
      }

      v75 = [indexPathsForVisibleItems count];
      if ((v97 & 1) != 0 || v75 != 1)
      {
        numberOfSections = [_accessibilityParentCollectionView numberOfSections];
        if ([v101 section] < numberOfSections && numberOfSections && (v50 = objc_msgSend(v101, "item"), v50 < objc_msgSend(_accessibilityParentCollectionView, "numberOfItemsInSection:", objc_msgSend(v101, "section"))))
        {
          if (v99 || v100)
          {
            _accessibilityCollectionViewCellScrollShouldInformScrollDelegate = [(UICollectionViewCellAccessibility *)selfCopy _accessibilityCollectionViewCellScrollShouldInformScrollDelegate];
            delegate = [_accessibilityParentCollectionView delegate];
            if (_accessibilityCollectionViewCellScrollShouldInformScrollDelegate & 1) != 0 && (objc_opt_respondsToSelector())
            {
              [delegate scrollViewWillBeginDragging:_accessibilityParentCollectionView];
            }

            v71 = 0;
            [_accessibilityParentCollectionView scrollToItemAtIndexPath:v101 atScrollPosition:v99 | v100 animated:0];
            v49 = [_accessibilityParentCollectionView safeValueForKey:@"visibleBounds"];
            [v49 rectValue];
            rect1.origin.x = v33;
            rect1.origin.y = v34;
            rect1.size.width = v35;
            rect1.size.height = v36;
            MEMORY[0x29EDC9740](v49);
            [_accessibilityParentCollectionView _accessibilityVisibleContentInset];
            v66 = v37;
            v67 = v38;
            v68 = v39;
            v69 = v40;
            v65.origin.x = UIEdgeInsetsInsetRect(rect1.origin.x, rect1.origin.y, rect1.size.width, rect1.size.height, v37, v38);
            v65.origin.y = v41;
            v65.size.width = v42;
            v65.size.height = v43;
            rect1 = v65;
            [v107[0] frame];
            v64.origin.x = v44;
            v64.origin.y = v45;
            v64.size.width = v46;
            v64.size.height = v47;
            if (!CGRectContainsRect(v65, v64) && !CGRectContainsRect(v64, rect1))
            {
              [_accessibilityParentCollectionView scrollRectToVisible:v71 & 1 animated:{v64.origin.x, v64.origin.y, v64.size.width, v64.size.height}];
            }

            v62 = _accessibilityCollectionViewCellScrollShouldInformScrollDelegate & 1;
            v59 = MEMORY[0x29EDC9748](delegate);
            v60 = MEMORY[0x29EDC9748](_accessibilityParentCollectionView);
            v63 = v98;
            v61 = MEMORY[0x29EDC9748](selfCopy);
            AXPerformBlockOnMainThreadAfterDelay();
            v109 = 1;
            v103 = 1;
            objc_storeStrong(&v61, 0);
            objc_storeStrong(&v60, 0);
            objc_storeStrong(&v59, 0);
            objc_storeStrong(&delegate, 0);
          }

          else
          {
            v109 = 0;
            v103 = 1;
          }
        }

        else
        {
          v109 = 0;
          v103 = 1;
        }
      }

      else
      {
        v109 = 0;
        v103 = 1;
      }
    }

    else
    {
      v109 = 0;
      v103 = 1;
    }

    objc_storeStrong(&v101, 0);
    objc_storeStrong(&indexPathsForVisibleItems, 0);
  }

  objc_storeStrong(&_accessibilityParentCollectionView, 0);
  objc_storeStrong(v107, 0);
  return v109 & 1;
}

void __65__UICollectionViewCellAccessibility_accessibilityScrollToVisible__block_invoke(uint64_t a1)
{
  if (*(a1 + 56) & 1) != 0 && (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) scrollViewDidEndDragging:*(a1 + 40) willDecelerate:0];
  }

  if (*(a1 + 56) & 1) != 0 && (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) scrollViewWillBeginDecelerating:*(a1 + 40)];
  }

  if (*(a1 + 56) & 1) != 0 && (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) scrollViewDidEndDecelerating:*(a1 + 40)];
  }

  v5 = 0;
  v3 = 0;
  LOBYTE(v1) = 0;
  if ((*(a1 + 57) & 1) == 0)
  {
    v6 = [*(a1 + 48) _accessibilityWindow];
    v5 = 1;
    v4 = [v6 firstResponder];
    v3 = 1;
    v1 = [v4 _accessibilityIsDescendantOfElement:*(a1 + 48)] ^ 1;
  }

  if (v3)
  {
    MEMORY[0x29EDC9740](v4);
  }

  if (v5)
  {
    MEMORY[0x29EDC9740](v6);
  }

  if (v1)
  {
    _UIAXDismissKeyboardIfNecessary();
  }
}

- (BOOL)_accessibilityIsOutsideParentBounds
{
  selfCopy = self;
  v11[1] = a2;
  v11[0] = [(UICollectionViewCellAccessibility *)self accessibilityContainer];
  window = [v11[0] window];
  [window accessibilityFrame];
  v10 = CGRectInset(v13, 0.0, 40.0);
  [(UICollectionViewCellAccessibility *)selfCopy accessibilityFrame];
  rect2.origin.x = v2;
  rect2.origin.y = v3;
  rect2.size.width = v4;
  rect2.size.height = v5;
  v8 = !CGRectContainsRect(v10, rect2);
  MEMORY[0x29EDC9740](window);
  objc_storeStrong(v11, 0);
  return v8;
}

- (id)accessibilityDragSourceDescriptors
{
  v27[1] = *MEMORY[0x29EDCA608];
  selfCopy = self;
  v24[1] = a2;
  v24[0] = [(UICollectionViewCellAccessibility *)self accessibilityUserDefinedDragSourceDescriptors];
  if (v24[0])
  {
    v26 = MEMORY[0x29EDC9748](v24[0]);
    v23 = 1;
  }

  else
  {
    _accessibilityParentCollectionView = [(UICollectionViewCellAccessibility *)selfCopy _accessibilityParentCollectionView];
    v20 = 0;
    v11 = [_accessibilityParentCollectionView safeValueForKeyPath:@"_dragAndDropController.sourceController"];
    v19 = __UIAccessibilitySafeClass();
    MEMORY[0x29EDC9740](v11);
    v18 = MEMORY[0x29EDC9748](v19);
    objc_storeStrong(&v19, 0);
    v21 = v18;
    if (v18)
    {
      v16 = 0;
      objc_opt_class();
      v15 = __UIAccessibilityCastAsClass();
      v14 = MEMORY[0x29EDC9748](v15);
      objc_storeStrong(&v15, 0);
      v17 = v14;
      [v14 bounds];
      UIRectGetCenter();
      [v14 convertPoint:_accessibilityParentCollectionView toView:{v2, v3}];
      v12 = v4;
      v13 = v5;
      v8 = objc_alloc(MEMORY[0x29EDC7900]);
      v10 = accessibilityLocalizedString(@"drag.collection.view.cell");
      v9 = [v8 initWithName:v12 point:v13 inView:?];
      v27[0] = v9;
      v26 = [MEMORY[0x29EDB8D80] arrayWithObjects:v27 count:1];
      MEMORY[0x29EDC9740](v9);
      MEMORY[0x29EDC9740](v10);
      v23 = 1;
      objc_storeStrong(&v17, 0);
    }

    else
    {
      v26 = 0;
      v23 = 1;
    }

    objc_storeStrong(&v21, 0);
    objc_storeStrong(&_accessibilityParentCollectionView, 0);
  }

  objc_storeStrong(v24, 0);
  v6 = v26;

  return v6;
}

- (id)accessibilityDropPointDescriptors
{
  v27[1] = *MEMORY[0x29EDCA608];
  selfCopy = self;
  v24[1] = a2;
  v24[0] = [(UICollectionViewCellAccessibility *)self accessibilityUserDefinedDropPointDescriptors];
  if (v24[0])
  {
    v26 = MEMORY[0x29EDC9748](v24[0]);
    v23 = 1;
  }

  else
  {
    _accessibilityParentCollectionView = [(UICollectionViewCellAccessibility *)selfCopy _accessibilityParentCollectionView];
    v20 = 0;
    v11 = [_accessibilityParentCollectionView safeValueForKey:@"dragAndDropController"];
    v19 = __UIAccessibilitySafeClass();
    MEMORY[0x29EDC9740](v11);
    v18 = MEMORY[0x29EDC9748](v19);
    objc_storeStrong(&v19, 0);
    v21 = v18;
    if (v18)
    {
      v16 = 0;
      objc_opt_class();
      v15 = __UIAccessibilityCastAsClass();
      v14 = MEMORY[0x29EDC9748](v15);
      objc_storeStrong(&v15, 0);
      v17 = v14;
      [v14 bounds];
      UIRectGetCenter();
      [v14 convertPoint:_accessibilityParentCollectionView toView:{v2, v3}];
      v12 = v4;
      v13 = v5;
      v8 = objc_alloc(MEMORY[0x29EDC7900]);
      v10 = accessibilityLocalizedString(@"drop.collection.view.cell.onto");
      v9 = [v8 initWithName:v12 point:v13 inView:?];
      v27[0] = v9;
      v26 = [MEMORY[0x29EDB8D80] arrayWithObjects:v27 count:1];
      MEMORY[0x29EDC9740](v9);
      MEMORY[0x29EDC9740](v10);
      v23 = 1;
      objc_storeStrong(&v17, 0);
    }

    else
    {
      v26 = 0;
      v23 = 1;
    }

    objc_storeStrong(&v21, 0);
    objc_storeStrong(&_accessibilityParentCollectionView, 0);
  }

  objc_storeStrong(v24, 0);
  v6 = v26;

  return v6;
}

- (BOOL)isAccessibilityElement
{
  selfCopy = self;
  v11 = a2;
  isAccessibilityUserDefinedElement = [(UICollectionViewCellAccessibility *)self isAccessibilityUserDefinedElement];
  *&v2 = MEMORY[0x29EDC9740](isAccessibilityUserDefinedElement).n128_u64[0];
  if (isAccessibilityUserDefinedElement)
  {
    isAccessibilityUserDefinedElement2 = [(UICollectionViewCellAccessibility *)selfCopy isAccessibilityUserDefinedElement];
    v13 = [isAccessibilityUserDefinedElement2 BOOLValue] & 1;
    MEMORY[0x29EDC9740](isAccessibilityUserDefinedElement2);
  }

  else
  {
    v6 = [(UICollectionViewCellAccessibility *)selfCopy safeValueForKey:@"contentConfiguration", v2];
    accessibilityLabel = [v6 accessibilityLabel];
    v7 = [accessibilityLabel length];
    MEMORY[0x29EDC9740](accessibilityLabel);
    *&v3 = MEMORY[0x29EDC9740](v6).n128_u64[0];
    if (v7)
    {
      return 1;
    }

    else
    {
      v10.receiver = selfCopy;
      v10.super_class = UICollectionViewCellAccessibility;
      return [(UICollectionViewCellAccessibility *)&v10 isAccessibilityElement];
    }
  }

  return v13;
}

- (BOOL)_isEligibleForFocusInteraction
{
  selfCopy = self;
  v11 = a2;
  v9.receiver = self;
  v9.super_class = UICollectionViewCellAccessibility;
  _isEligibleForFocusInteraction = [(UICollectionViewCellAccessibility *)&v9 _isEligibleForFocusInteraction];
  v4 = 0;
  LOBYTE(v3) = 0;
  if (([(UICollectionViewCellAccessibility *)selfCopy _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    LOBYTE(v3) = 0;
    if (_isEligibleForFocusInteraction)
    {
      v8 = 0;
      objc_opt_class();
      v7 = __UIAccessibilityCastAsClass();
      v6 = MEMORY[0x29EDC9748](v7);
      objc_storeStrong(&v7, 0);
      v5 = v6;
      v4 = 1;
      v3 = [v6 isUserInteractionEnabled] ^ 1;
    }
  }

  if (v4)
  {
    MEMORY[0x29EDC9740](v5);
  }

  if (v3)
  {
    _isEligibleForFocusInteraction = 0;
  }

  return _isEligibleForFocusInteraction & 1;
}

- (void)_setPopupMenuButton:(id)button
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, button);
  v16.receiver = selfCopy;
  v16.super_class = UICollectionViewCellAccessibility;
  [(UICollectionViewCellAccessibility *)&v16 _setPopupMenuButton:location[0]];
  objc_initWeak(&v15, location[0]);
  v4 = objc_loadWeakRetained(&v15);
  accessibilityTraits = [v4 accessibilityTraits];
  MEMORY[0x29EDC9740](v4);
  v14 = accessibilityTraits;
  objc_initWeak(v13, selfCopy);
  v3 = location[0];
  v6 = MEMORY[0x29EDCA5F8];
  v7 = -1073741824;
  v8 = 0;
  v9 = __57__UICollectionViewCellAccessibility__setPopupMenuButton___block_invoke;
  v10 = &unk_29F30D4E8;
  objc_copyWeak(&v11, v13);
  objc_copyWeak(v12, &v15);
  v12[1] = v14;
  [v3 _setAccessibilityTraitsBlock:&v6];
  objc_destroyWeak(v12);
  objc_destroyWeak(&v11);
  objc_destroyWeak(v13);
  objc_destroyWeak(&v15);
  objc_storeStrong(location, 0);
}

uint64_t __57__UICollectionViewCellAccessibility__setPopupMenuButton___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = 0;
  LOBYTE(v4) = 0;
  if ([WeakRetained _accessibilityIsUserInteractionEnabled])
  {
    v6 = objc_loadWeakRetained((a1 + 40));
    v5 = 1;
    v4 = [v6 _accessibilityIsUserInteractionEnabled] ^ 1;
  }

  if (v5)
  {
    MEMORY[0x29EDC9740](v6);
  }

  MEMORY[0x29EDC9740](WeakRetained);
  if (v4)
  {
    return *(a1 + 48) & ~*MEMORY[0x29EDC7FA8];
  }

  else
  {
    return *(a1 + 48);
  }
}

- (BOOL)canBecomeFocused
{
  selfCopy = self;
  v15 = a2;
  v13.receiver = self;
  v13.super_class = UICollectionViewCellAccessibility;
  canBecomeFocused = [(UICollectionViewCellAccessibility *)&v13 canBecomeFocused];
  if (([(UICollectionViewCellAccessibility *)selfCopy _accessibilityIsFKARunningForFocusItem]& 1) == 0)
  {
LABEL_16:
    v17 = canBecomeFocused;
    return v17 & 1;
  }

  storedAccessibilityRespondsToUserInteraction = [(UICollectionViewCellAccessibility *)selfCopy storedAccessibilityRespondsToUserInteraction];
  *&v2 = MEMORY[0x29EDC9740](storedAccessibilityRespondsToUserInteraction).n128_u64[0];
  if (!storedAccessibilityRespondsToUserInteraction)
  {
    if (!canBecomeFocused && ([(UICollectionViewCellAccessibility *)selfCopy accessibilityRespondsToUserInteraction]& 1) != 0)
    {
      v19 = &canBecomeFocused_onceToken;
      location = 0;
      objc_storeStrong(&location, &__block_literal_global_522);
      if (*v19 != -1)
      {
        dispatch_once(v19, location);
      }

      objc_storeStrong(&location, 0);
      v3 = objc_opt_class();
      v12 = class_getInstanceMethod(v3, sel_accessibilityRespondsToUserInteraction) != canBecomeFocused_accessibilityRespondsToUserInteractionBaseMethod;
      storedAccessibilityRespondsToUserInteraction2 = [(UICollectionViewCellAccessibility *)selfCopy storedAccessibilityRespondsToUserInteraction];
      v8 = storedAccessibilityRespondsToUserInteraction2 != 0;
      *&v5 = MEMORY[0x29EDC9740](storedAccessibilityRespondsToUserInteraction2).n128_u64[0];
      v9 = 1;
      if (!v12)
      {
        v9 = 1;
        if (!v8)
        {
          v9 = 1;
          if (([(UICollectionViewCellAccessibility *)selfCopy safeBoolForKey:@"_accessibilityRespondsToUserInteraction", v5]& 1) == 0)
          {
            v9 = [(UICollectionViewCellAccessibility *)selfCopy accessibilityTraits]!= 0;
          }
        }
      }

      canBecomeFocused = v9;
    }

    if (canBecomeFocused)
    {
      canBecomeFocused = ![(UICollectionViewCellAccessibility *)selfCopy _axContentViewHasSingleFocusableSubview];
      if (canBecomeFocused)
      {
        v6 = [(UICollectionViewCellAccessibility *)selfCopy _accessibilityFindSubviewDescendant:&__block_literal_global_527];
        canBecomeFocused = v6 == 0;
        MEMORY[0x29EDC9740](v6);
      }
    }

    goto LABEL_16;
  }

  storedAccessibilityRespondsToUserInteraction3 = [(UICollectionViewCellAccessibility *)selfCopy storedAccessibilityRespondsToUserInteraction];
  v17 = [storedAccessibilityRespondsToUserInteraction3 BOOLValue] & 1;
  MEMORY[0x29EDC9740](storedAccessibilityRespondsToUserInteraction3);
  return v17 & 1;
}

Method __53__UICollectionViewCellAccessibility_canBecomeFocused__block_invoke()
{
  v0 = objc_opt_class();
  result = class_getInstanceMethod(v0, sel_accessibilityRespondsToUserInteraction);
  canBecomeFocused_accessibilityRespondsToUserInteractionBaseMethod = result;
  return result;
}

- (BOOL)_axContentViewHasSingleFocusableSubview
{
  v25 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  if (self)
  {
    location = 0;
    v20 = [objc_allocWithZone(MEMORY[0x29EDB8DE8]) init];
    v19 = [selfCopy safeUIViewForKey:@"_contentView"];
    [v20 axSafelyAddObject:v19];
    do
    {
      if (![v20 count])
      {
        break;
      }

      firstObject = [v20 firstObject];
      [v20 removeObjectAtIndex:0];
      v17 = 0;
      if ([firstObject safeBoolForKey:@"_isEligibleForFocusInteraction"] & 1) != 0 && ((objc_msgSend(firstObject, "canBecomeFocused") & 1) != 0 || (objc_msgSend(firstObject, "isFocused")))
      {
        objc_storeStrong(&location, firstObject);
        v17 = 1;
      }

      else
      {
        memset(__b, 0, sizeof(__b));
        obj = [firstObject subviews];
        v11 = [obj countByEnumeratingWithState:__b objects:v24 count:16];
        if (v11)
        {
          v7 = *__b[2];
          v8 = 0;
          v9 = v11;
          while (1)
          {
            v6 = v8;
            if (*__b[2] != v7)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(__b[1] + 8 * v8);
            [v16 frame];
            v13 = v1;
            v14 = v2;
            [firstObject frame];
            if (!__CGSizeEqualToSize_0(v13, v14, v3, v4))
            {
              break;
            }

            [v20 addObject:v16];
            ++v8;
            if (v6 + 1 >= v9)
            {
              v8 = 0;
              v9 = [obj countByEnumeratingWithState:__b objects:v24 count:16];
              if (!v9)
              {
                break;
              }
            }
          }
        }

        MEMORY[0x29EDC9740](obj);
      }

      v12 = (v17 & 1) != 0 ? 3 : 0;
      objc_storeStrong(&firstObject, 0);
    }

    while (!v12);
    v23 = location != 0;
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&location, 0);
  }

  else
  {
    return 0;
  }

  return v23;
}

uint64_t __53__UICollectionViewCellAccessibility_canBecomeFocused__block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_storeStrong(location, 0);
  return isKindOfClass & 1;
}

- (_NSRange)_accessibilityIndexPathAsRange
{
  location[2] = self;
  location[1] = a2;
  v8 = 0x7FFFFFFFLL;
  v7 = 0;
  v9 = 0x7FFFFFFFLL;
  v10 = 0;
  item = 0x7FFFFFFFLL;
  section = 0;
  location[0] = [(UICollectionViewCellAccessibility *)self _accessibilityIndexPath];
  if (location[0])
  {
    item = [location[0] item];
    section = [location[0] section];
  }

  objc_storeStrong(location, 0);
  v2 = item;
  v3 = section;
  result.length = v3;
  result.location = v2;
  return result;
}

@end