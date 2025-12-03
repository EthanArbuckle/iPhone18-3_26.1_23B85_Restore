@interface NTKPageScrollViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityOpaqueElementProvider;
- (NTKPageScrollViewControllerAccessibility)accessibilityPageScrollViewController;
- (id)_accessibilityGetCurrentPageView;
- (id)_accessibilityMoveFocusToNextOpaqueElementForTechnology:(id)technology direction:(int64_t)direction searchType:(int64_t)type range:(_NSRange)range shouldScrollToVisible:(BOOL)visible honorsGroups:(BOOL)groups;
- (id)_accessibilityScrollStatus;
- (id)_accessibilitySubviews;
- (id)accessibilityLabel;
- (void)_accessibilityScrollToIndex:(unint64_t)index;
- (void)setAccessibilityPageScrollViewController:(id)controller;
@end

@implementation NTKPageScrollViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NTKPageScrollView" hasInstanceMethod:@"pageAtIndex:" withFullSignature:{"@", "Q", 0}];
  [validationsCopy validateClass:@"NTKPageScrollView" hasInstanceMethod:@"_contentOffsetToCenterPageAtIndex:" withFullSignature:{"{CGPoint=dd}", "Q", 0}];
  [validationsCopy validateClass:@"NTKPageScrollView" hasInstanceMethod:@"currentPageIndex" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"NTKPageScrollView" hasInstanceMethod:@"numberOfPages" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"NTKPageScrollView" hasInstanceMethod:@"enumeratePagesWithBlock:" withFullSignature:{"v", "@?", 0}];
  [validationsCopy validateClass:@"NTKPageScrollView" hasInstanceVariable:@"_tiledPages" withType:"NSMutableDictionary"];
  [validationsCopy validateClass:@"NTKPageView"];
  [validationsCopy validateClass:@"NSObject" hasInstanceMethod:@"_accessibilityMoveFocusToNextOpaqueElementForTechnology:direction:searchType:range:shouldScrollToVisible:honorsGroups:" withFullSignature:{"@", "@", "q", "q", "{_NSRange=QQ}", "B", "B", 0}];
}

- (BOOL)isAccessibilityOpaqueElementProvider
{
  accessibilityPageScrollViewController = [(NTKPageScrollViewAccessibility *)self accessibilityPageScrollViewController];
  _accessibilityShouldSwipeBetweenPages = [accessibilityPageScrollViewController _accessibilityShouldSwipeBetweenPages];

  return _accessibilityShouldSwipeBetweenPages;
}

- (id)accessibilityLabel
{
  accessibilityPageScrollViewController = [(NTKPageScrollViewAccessibility *)self accessibilityPageScrollViewController];
  _accessibilityTouchContainerLabel = [accessibilityPageScrollViewController _accessibilityTouchContainerLabel];

  return _accessibilityTouchContainerLabel;
}

- (id)_accessibilityMoveFocusToNextOpaqueElementForTechnology:(id)technology direction:(int64_t)direction searchType:(int64_t)type range:(_NSRange)range shouldScrollToVisible:(BOOL)visible honorsGroups:(BOOL)groups
{
  technologyCopy = technology;
  v11 = [(NTKPageScrollViewAccessibility *)self _accessibilityCurrentlyFocusedElementForTechnology:technologyCopy];
  v12 = v11;
  if (!v11)
  {
    v17 = [(NTKPageScrollViewAccessibility *)self safeUnsignedIntegerForKey:@"currentPageIndex"];
    goto LABEL_15;
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0x7FFFFFFFFFFFFFFFLL;
  v29 = _NSConcreteStackBlock;
  v30 = 3221225472;
  v31 = __152__NTKPageScrollViewAccessibility__accessibilityMoveFocusToNextOpaqueElementForTechnology_direction_searchType_range_shouldScrollToVisible_honorsGroups___block_invoke;
  v32 = &unk_1C528;
  selfCopy = self;
  v13 = v11;
  v34 = v13;
  v35 = &v23;
  AXPerformSafeBlock();
  if (v24[3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v22 = v13;
    _AXAssert();
  }

  v14 = [(NTKPageScrollViewAccessibility *)self safeUnsignedIntegerForKey:@"numberOfPages", v22];
  if (direction == 2)
  {
    v18 = v24[3];
    if (v18)
    {
      v16 = v18 - 1;
LABEL_11:
      v17 = 0x7FFFFFFFFFFFFFFFLL;
      if (v16 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(NTKPageScrollViewAccessibility *)self _accessibilityScrollToIndex:v16];
        v17 = v16;
      }

      goto LABEL_14;
    }
  }

  else if (direction == 1)
  {
    v15 = v24[3];
    if (v15 < (v14 - 1))
    {
      v16 = v15 + 1;
      goto LABEL_11;
    }
  }

  v17 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_14:

  _Block_object_dispose(&v23, 8);
LABEL_15:
  if (v17 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = 0;
  }

  else
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__0;
    v27 = __Block_byref_object_dispose__0;
    v28 = 0;
    AXPerformSafeBlock();
    v19 = v24[5];
    _Block_object_dispose(&v23, 8);

    if (!v19)
    {
      v22 = v17;
      _AXAssert();
    }

    AXSafeClassFromString();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v22 = v19;
      _AXAssert();
    }

    if (v19)
    {
      v20 = v19;
    }
  }

  [v19 _accessibilityHandleATFocused:1 assistiveTech:{technologyCopy, v22}];

  return v19;
}

void __152__NTKPageScrollViewAccessibility__accessibilityMoveFocusToNextOpaqueElementForTechnology_direction_searchType_range_shouldScrollToVisible_honorsGroups___block_invoke(uint64_t a1)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __152__NTKPageScrollViewAccessibility__accessibilityMoveFocusToNextOpaqueElementForTechnology_direction_searchType_range_shouldScrollToVisible_honorsGroups___block_invoke_2;
  v5[3] = &unk_1C500;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 enumeratePagesWithBlock:v5];
}

uint64_t __152__NTKPageScrollViewAccessibility__accessibilityMoveFocusToNextOpaqueElementForTechnology_direction_searchType_range_shouldScrollToVisible_honorsGroups___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (*(result + 32) == a2)
  {
    *(*(*(result + 40) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

uint64_t __152__NTKPageScrollViewAccessibility__accessibilityMoveFocusToNextOpaqueElementForTechnology_direction_searchType_range_shouldScrollToVisible_honorsGroups___block_invoke_352(uint64_t a1)
{
  v2 = [*(a1 + 32) pageAtIndex:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

- (id)_accessibilitySubviews
{
  v20.receiver = self;
  v20.super_class = NTKPageScrollViewAccessibility;
  _accessibilitySubviews = [(NTKPageScrollViewAccessibility *)&v20 _accessibilitySubviews];
  if ([(NTKPageScrollViewAccessibility *)self isAccessibilityOpaqueElementProvider])
  {
    v4 = _accessibilitySubviews;
  }

  else
  {
    v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [_accessibilitySubviews count]);
    v5 = [(NTKPageScrollViewAccessibility *)self safeUnsignedIntegerForKey:@"currentPageIndex"];
    v6 = [(NTKPageScrollViewAccessibility *)self safeValueForKey:@"_tiledPages"];
    v7 = [NSNumber numberWithUnsignedInteger:v5];
    v8 = [v6 objectForKey:v7];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = _accessibilitySubviews;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v16 + 1) + 8 * i);
          AXSafeClassFromString();
          if ((objc_opt_isKindOfClass() & 1) == 0 || [v8 isEqual:{v14, v16}])
          {
            [v4 addObject:{v14, v16}];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v11);
    }
  }

  return v4;
}

- (id)_accessibilityScrollStatus
{
  v8.receiver = self;
  v8.super_class = NTKPageScrollViewAccessibility;
  _accessibilityScrollStatus = [(NTKPageScrollViewAccessibility *)&v8 _accessibilityScrollStatus];
  _accessibilityGetCurrentPageView = [(NTKPageScrollViewAccessibility *)self _accessibilityGetCurrentPageView];
  accessibilityLabel = [_accessibilityGetCurrentPageView accessibilityLabel];
  v6 = __UIAXStringForVariables();

  return v6;
}

- (void)_accessibilityScrollToIndex:(unint64_t)index
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3010000000;
  v11 = "";
  v12 = 0;
  v13 = 0;
  AXPerformSafeBlock();
  v3 = v9[4];
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);
  LOBYTE(v8) = 0;
  objc_opt_class();
  v5 = __UIAccessibilityCastAsClass();
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;
  if (AXRuntimeCheck_SupportsWatchControlAXFocusSystem())
  {
    v7 = AXRequestingClient() == 14;
  }

  else
  {
    v7 = 0;
  }

  [v6 accessibilityApplyScrollContent:0 sendScrollStatus:v7 animated:{v3, v4}];
}

id __62__NTKPageScrollViewAccessibility__accessibilityScrollToIndex___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _contentOffsetToCenterPageAtIndex:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  return result;
}

- (id)_accessibilityGetCurrentPageView
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__0;
  v8 = __Block_byref_object_dispose__0;
  v9 = 0;
  AXPerformSafeBlock();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

uint64_t __66__NTKPageScrollViewAccessibility__accessibilityGetCurrentPageView__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pageAtIndex:{objc_msgSend(*(a1 + 32), "safeUnsignedIntegerForKey:", @"currentPageIndex"}];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

- (NTKPageScrollViewControllerAccessibility)accessibilityPageScrollViewController
{
  v2 = objc_getAssociatedObject(self, &_AXPageScrollViewController);
  referencedScrollViewController = [v2 referencedScrollViewController];

  return referencedScrollViewController;
}

- (void)setAccessibilityPageScrollViewController:(id)controller
{
  controllerCopy = controller;
  value = objc_alloc_init(_UIAccessibilityWeakObjectHolder_NTKPageScrollViewControllerAccessibility);
  [(_UIAccessibilityWeakObjectHolder_NTKPageScrollViewControllerAccessibility *)value setReferencedScrollViewController:controllerCopy];

  objc_setAssociatedObject(self, &_AXPageScrollViewController, value, &dword_0 + 1);
}

@end