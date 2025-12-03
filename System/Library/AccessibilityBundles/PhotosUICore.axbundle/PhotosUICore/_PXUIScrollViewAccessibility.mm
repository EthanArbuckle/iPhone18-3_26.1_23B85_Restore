@interface _PXUIScrollViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityIsInFeedViewController;
- (BOOL)_accessibilityOnlyComparesByXAxis;
- (BOOL)_accessibilityScrollAcrossPageBoundaries;
- (BOOL)_axUsesPhotosGridKit;
- (BOOL)isAccessibilityOpaqueElementProvider;
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
- (id)_accessibilitySortedElementsWithin;
- (id)accessibilityElements;
- (int64_t)_axCompareView:(id)view toView:(id)toView;
- (void)_axSetPXGScrollViewElements:(id)elements;
@end

@implementation _PXUIScrollViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_PXUIScrollView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"PXGView"];
  [validationsCopy validateClass:@"PXGView" hasInstanceMethod:@"rootLayout" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXGLayout" hasInstanceMethod:@"axGroup" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXFeedViewController"];
  [validationsCopy validateClass:@"PXPhotosUIViewController" hasInstanceMethod:@"contentController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXPhotosContentController" hasInstanceMethod:@"viewModel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXPhotosViewModel" hasInstanceMethod:@"headerTitle" withFullSignature:{"@", 0}];
}

- (BOOL)isAccessibilityOpaqueElementProvider
{
  accessibilityIdentification = [(_PXUIScrollViewAccessibility *)self accessibilityIdentification];
  if ([accessibilityIdentification isEqualToString:@"AXPhotoDetailsScrollView"])
  {

    return 0;
  }

  else
  {
    _axUsesPhotosGridKit = [(_PXUIScrollViewAccessibility *)self _axUsesPhotosGridKit];

    return !_axUsesPhotosGridKit;
  }
}

- (id)_accessibilitySortedElementsWithin
{
  accessibilityIdentifier = [(_PXUIScrollViewAccessibility *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:@"AXExplorerViewControllerScrollView"];

  if (v4)
  {
    v11 = 0;
    objc_opt_class();
    v5 = [(_PXUIScrollViewAccessibility *)self _iosAccessibilityAttributeValue:2095];
    v6 = __UIAccessibilityCastAsClass();

    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 3221225472;
    v10[2] = __66___PXUIScrollViewAccessibility__accessibilitySortedElementsWithin__block_invoke;
    v10[3] = &unk_29F2E5EA8;
    v10[4] = self;
    _accessibilitySortedElementsWithin = [v6 sortedArrayUsingComparator:v10];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = _PXUIScrollViewAccessibility;
    _accessibilitySortedElementsWithin = [(_PXUIScrollViewAccessibility *)&v9 _accessibilitySortedElementsWithin];
  }

  return _accessibilitySortedElementsWithin;
}

- (int64_t)_axCompareView:(id)view toView:(id)toView
{
  toViewCopy = toView;
  viewCopy = view;
  v8 = [(_PXUIScrollViewAccessibility *)self safeValueForKey:@"subviews"];
  v9 = [v8 safeValueForKey:@"@firstObject"];

  v10 = [viewCopy safeValueForKey:@"frame"];
  [v10 CGRectValue];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = [viewCopy safeValueForKey:@"superview"];

  [v9 convertRect:v19 fromView:{v12, v14, v16, v18}];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v28 = [toViewCopy safeValueForKey:@"frame"];
  [v28 CGRectValue];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;

  v37 = [toViewCopy safeValueForKey:@"superview"];

  [v9 convertRect:v37 fromView:{v30, v32, v34, v36}];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;

  v52.origin.x = v21;
  v52.origin.y = v23;
  v52.size.width = v25;
  v52.size.height = v27;
  MinX = CGRectGetMinX(v52);
  v53.origin.x = v39;
  v53.origin.y = v41;
  v53.size.width = v43;
  v53.size.height = v45;
  v50 = CGRectGetMinX(v53);
  v54.origin.x = v21;
  v54.origin.y = v23;
  v54.size.width = v25;
  v54.size.height = v27;
  MinY = CGRectGetMinY(v54);
  v55.origin.x = v39;
  v55.origin.y = v41;
  v55.size.width = v43;
  v55.size.height = v45;
  v47 = CGRectGetMinY(v55);
  if (MinX >= v50)
  {
    if (MinX > v50)
    {
      v48 = 1;
      goto LABEL_7;
    }

    if (MinY >= v47)
    {
      v48 = MinY > v47;
      goto LABEL_7;
    }
  }

  v48 = -1;
LABEL_7:

  return v48;
}

- (BOOL)_accessibilityOnlyComparesByXAxis
{
  accessibilityIdentification = [(_PXUIScrollViewAccessibility *)self accessibilityIdentification];
  v3 = [accessibilityIdentification isEqualToString:@"AXMemoriesScrollView"];

  return v3;
}

- (BOOL)_accessibilityScrollAcrossPageBoundaries
{
  accessibilityIdentification = [(_PXUIScrollViewAccessibility *)self accessibilityIdentification];
  v4 = [accessibilityIdentification isEqualToString:@"AXMemoriesScrollView"];

  if (v4)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = _PXUIScrollViewAccessibility;
  return [(_PXUIScrollViewAccessibility *)&v6 _accessibilityScrollAcrossPageBoundaries];
}

- (BOOL)_axUsesPhotosGridKit
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  superview = [v2 superview];
  MEMORY[0x29C2E6930](@"PXGView");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)accessibilityElements
{
  if ([(_PXUIScrollViewAccessibility *)self _axUsesPhotosGridKit])
  {
    _axPXGScrollViewElements = [(_PXUIScrollViewAccessibility *)self _axPXGScrollViewElements];
    if (!_axPXGScrollViewElements)
    {
      v18.receiver = self;
      v18.super_class = _PXUIScrollViewAccessibility;
      accessibilityElements = [(_PXUIScrollViewAccessibility *)&v18 accessibilityElements];
      v5 = [accessibilityElements mutableCopy];
      v6 = v5;
      if (v5)
      {
        array = v5;
      }

      else
      {
        array = [MEMORY[0x29EDB8DE8] array];
      }

      _axPXGScrollViewElements = array;

      v8 = [(_PXUIScrollViewAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_8 startWithSelf:1];
      v9 = [v8 safeValueForKey:@"rootLayout"];
      v10 = [v9 safeValueForKey:@"axGroup"];

      objc_initWeak(&location, self);
      v11 = [AXPhotosGroupAccessibilityElement alloc];
      v15[0] = MEMORY[0x29EDCA5F8];
      v15[1] = 3221225472;
      v15[2] = __53___PXUIScrollViewAccessibility_accessibilityElements__block_invoke_2;
      v15[3] = &unk_29F2E65D0;
      objc_copyWeak(&v16, &location);
      v12 = [(AXPhotosGroupAccessibilityElement *)v11 initWithAccessibilityContainer:self forGroup:v10 inView:v8 withAdditionalScrollViewElements:v15];
      [_axPXGScrollViewElements axSafelyAddObject:v12];
      [(_PXUIScrollViewAccessibility *)self _axSetPXGScrollViewElements:_axPXGScrollViewElements];

      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = _PXUIScrollViewAccessibility;
    _axPXGScrollViewElements = [(_PXUIScrollViewAccessibility *)&v14 accessibilityElements];
  }

  return _axPXGScrollViewElements;
}

- (void)_axSetPXGScrollViewElements:(id)elements
{
  [(_PXUIScrollViewAccessibility *)self _setAXPXGScrollViewElements:?];
  if (!elements)
  {
    v4 = *MEMORY[0x29EDC7ED8];

    UIAccessibilityPostNotification(v4, 0);
  }
}

- (BOOL)_accessibilityIsInFeedViewController
{
  v2 = [(_PXUIScrollViewAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_549 startWithSelf:1];
  _accessibilityViewController = [v2 _accessibilityViewController];
  v4 = _accessibilityViewController != 0;

  return v4;
}

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  if ([(_PXUIScrollViewAccessibility *)self _accessibilityIsInFeedViewController])
  {
    _accessibilityElements = [(_PXUIScrollViewAccessibility *)self _accessibilityElements];
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__3;
    v16 = __Block_byref_object_dispose__3;
    v17 = 0;
    v11[0] = MEMORY[0x29EDCA5F8];
    v11[1] = 3221225472;
    v11[2] = __64___PXUIScrollViewAccessibility__accessibilityHitTest_withEvent___block_invoke;
    v11[3] = &unk_29F2E6618;
    v11[4] = &v12;
    *&v11[5] = x;
    *&v11[6] = y;
    [_accessibilityElements enumerateObjectsUsingBlock:v11];
    v9 = v13[5];
    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v18.receiver = self;
    v18.super_class = _PXUIScrollViewAccessibility;
    v9 = [(_PXUIScrollViewAccessibility *)&v18 _accessibilityHitTest:eventCopy withEvent:x, y];
  }

  return v9;
}

@end