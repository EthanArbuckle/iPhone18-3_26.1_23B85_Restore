@interface UIPageViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityScroll:(int64_t)scroll;
- (id)_accessibilityScrollStatus;
- (uint64_t)_axScrollPageController:(void *)controller;
- (void)_accessibilitySendScrollStatus;
- (void)_pageControlValueChanged:(id)changed;
@end

@implementation UIPageViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v8 = location;
  v7 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v4 = @"UIPageViewController";
  [location[0] validateClass:? hasInstanceVariable:? withType:?];
  v5 = "B";
  v3 = "@";
  [location[0] validateClass:@"UIPageViewController" hasInstanceMethod:@"_viewControllerBefore: viewController:" withFullSignature:{"B", "@", 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"_pageControl" withFullSignature:{v3, 0}];
  v6 = "v";
  [location[0] validateClass:v4 hasInstanceMethod:@"_setViewControllers: withScrollInDirection: animated: completion:" withFullSignature:{v3, "q", v5, "@?", 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"_pageControlValueChanged:" withFullSignature:{v6, v3, 0}];
  [location[0] validateClass:@"UIPageControl" hasInstanceMethod:@"_updateCurrentPageDisplayWithForceUpdate:" withFullSignature:{v6, v5, 0}];
  objc_storeStrong(v8, v7);
}

- (void)_accessibilitySendScrollStatus
{
  selfCopy = self;
  if (self)
  {
    if ([selfCopy accessibilityScreenChangeOnScroll])
    {
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
    }

    else
    {
      _accessibilityScrollStatus = [selfCopy _accessibilityScrollStatus];
      v1 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:_accessibilityScrollStatus];
      [v1 setAttribute:*MEMORY[0x29EDB8F00] forKey:*MEMORY[0x29EDBDB20]];
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7EF0], v1);
      objc_storeStrong(&v1, 0);
      objc_storeStrong(&_accessibilityScrollStatus, 0);
    }
  }
}

- (void)_pageControlValueChanged:(id)changed
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, changed);
  v3.receiver = selfCopy;
  v3.super_class = UIPageViewControllerAccessibility;
  [(UIPageViewControllerAccessibility *)&v3 _pageControlValueChanged:location[0]];
  [(UIPageViewControllerAccessibility *)selfCopy _accessibilitySendScrollStatus];
  objc_storeStrong(location, 0);
}

- (id)_accessibilityScrollStatus
{
  selfCopy = self;
  v16[1] = a2;
  v15 = 0;
  objc_opt_class();
  v8 = [(UIPageViewControllerAccessibility *)selfCopy safeValueForKey:@"_pageControl"];
  v14 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v8);
  v13 = MEMORY[0x29EDC9748](v14);
  objc_storeStrong(&v14, 0);
  v16[0] = v13;
  if (v13)
  {
    currentPage = [v16[0] currentPage];
    numberOfPages = [v16[0] numberOfPages];
    v4 = MEMORY[0x29EDBA0F8];
    v7 = accessibilityLocalizedString(@"scroll.page.summary");
    v6 = AXFormatInteger();
    v5 = AXFormatInteger();
    _accessibilityScrollStatus = [v4 stringWithFormat:v7, v6, v5];
    MEMORY[0x29EDC9740](v5);
    MEMORY[0x29EDC9740](v6);
    MEMORY[0x29EDC9740](v7);
  }

  else
  {
    v9.receiver = selfCopy;
    v9.super_class = UIPageViewControllerAccessibility;
    _accessibilityScrollStatus = [(UIPageViewControllerAccessibility *)&v9 _accessibilityScrollStatus];
  }

  v10 = 1;
  objc_storeStrong(v16, 0);
  v2 = _accessibilityScrollStatus;

  return v2;
}

- (uint64_t)_axScrollPageController:(void *)controller
{
  controllerCopy = controller;
  v43 = a2;
  if (controller)
  {
    v6 = [controllerCopy safeValueForKey:@"_viewControllers"];
    lastObject = [v6 lastObject];
    MEMORY[0x29EDC9740](v6);
    v34 = 0;
    v35 = &v34;
    v36 = 838860800;
    v37 = 48;
    v38 = __Block_byref_object_copy__18;
    v39 = __Block_byref_object_dispose__18;
    v40 = 0;
    v26 = MEMORY[0x29EDCA5F8];
    v27 = -1073741824;
    v28 = 0;
    v29 = __61__UIPageViewControllerAccessibility__axScrollPageController___block_invoke;
    v30 = &unk_29F30D990;
    v32[1] = &v34;
    v31 = MEMORY[0x29EDC9748](controllerCopy);
    v33 = v43 & 1;
    v32[0] = MEMORY[0x29EDC9748](lastObject);
    AXPerformSafeBlock();
    v25 = MEMORY[0x29EDC9748](v35[5]);
    objc_storeStrong(v32, 0);
    objc_storeStrong(&v31, 0);
    _Block_object_dispose(&v34, 8);
    objc_storeStrong(&v40, 0);
    v41 = v25;
    if (v25)
    {
      v24 = [controllerCopy safeValueForKey:@"_delegate"];
      v23 = [MEMORY[0x29EDB8D80] arrayWithObject:v41];
      if (objc_opt_respondsToSelector())
      {
        [v24 pageViewController:controllerCopy willTransitionToViewControllers:v23];
      }

      objc_initWeak(&v22, controllerCopy);
      v11[1] = MEMORY[0x29EDCA5F8];
      v12 = -1073741824;
      v13 = 0;
      v14 = __61__UIPageViewControllerAccessibility__axScrollPageController___block_invoke_2;
      v15 = &unk_29F30D9E0;
      v16 = MEMORY[0x29EDC9748](controllerCopy);
      v17 = MEMORY[0x29EDC9748](v23);
      v21 = v43 & 1;
      objc_copyWeak(&v20, &v22);
      v18 = MEMORY[0x29EDC9748](v24);
      v19 = MEMORY[0x29EDC9748](lastObject);
      AXPerformSafeBlock();
      v10 = 0;
      objc_opt_class();
      v5 = [controllerCopy safeValueForKey:@"_pageControl"];
      v9 = __UIAccessibilityCastAsClass();
      MEMORY[0x29EDC9740](v5);
      v8 = MEMORY[0x29EDC9748](v9);
      objc_storeStrong(&v9, 0);
      v11[0] = v8;
      currentPage = [v8 currentPage];
      if ((v43 ^ 1))
      {
        v2 = 1;
      }

      else
      {
        v2 = -1;
      }

      v7 = currentPage + v2;
      if (v7 < 0)
      {
        v7 = 0;
      }

      [v11[0] setCurrentPage:v7];
      [v11[0] _updateCurrentPageDisplayWithForceUpdate:1];
      [(UIPageViewControllerAccessibility *)controllerCopy _accessibilitySendScrollStatus];
      v45 = 1;
      objc_storeStrong(v11, 0);
      objc_storeStrong(&v19, 0);
      objc_storeStrong(&v18, 0);
      objc_destroyWeak(&v20);
      objc_storeStrong(&v17, 0);
      objc_storeStrong(&v16, 0);
      objc_destroyWeak(&v22);
      objc_storeStrong(&v23, 0);
      objc_storeStrong(&v24, 0);
    }

    else
    {
      v45 = 0;
    }

    objc_storeStrong(&v41, 0);
    objc_storeStrong(&lastObject, 0);
  }

  else
  {
    v45 = 0;
  }

  return v45 & 1;
}

double __61__UIPageViewControllerAccessibility__axScrollPageController___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _viewControllerBefore:*(a1 + 56) & 1 viewController:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

void __61__UIPageViewControllerAccessibility__axScrollPageController___block_invoke_2(uint64_t a1)
{
  v12[2] = a1;
  v12[1] = a1;
  v4 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = (*(a1 + 72) & 1) != 0;
  v5 = MEMORY[0x29EDCA5F8];
  v6 = -1073741824;
  v7 = 0;
  v8 = __61__UIPageViewControllerAccessibility__axScrollPageController___block_invoke_3;
  v9 = &unk_29F30D9B8;
  objc_copyWeak(v12, (a1 + 64));
  v10 = MEMORY[0x29EDC9748](*(a1 + 48));
  v11 = MEMORY[0x29EDC9748](*(a1 + 56));
  [v4 _setViewControllers:v2 withScrollInDirection:v3 animated:0 completion:&v5];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_destroyWeak(v12);
}

void __61__UIPageViewControllerAccessibility__axScrollPageController___block_invoke_3(id *a1, unsigned __int8 a2, char a3)
{
  v7 = a1;
  v11 = a1;
  v10 = a2;
  v9 = a3;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 6);
  if (location[0] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = v7[4];
    v3 = location[0];
    v4 = v10;
    v6 = [MEMORY[0x29EDB8D80] arrayWithObjects:{v7[5], 0}];
    [v5 pageViewController:v3 didFinishAnimating:v4 & 1 previousViewControllers:? transitionCompleted:?];
    MEMORY[0x29EDC9740](v6);
  }

  objc_storeStrong(location, 0);
}

- (BOOL)accessibilityScroll:(int64_t)scroll
{
  selfCopy = self;
  v6 = a2;
  scrollCopy = scroll;
  if (scroll == 1)
  {
    return [(UIPageViewControllerAccessibility *)selfCopy _axScrollPageController:?]& 1;
  }

  if (scrollCopy == 2)
  {
    return [(UIPageViewControllerAccessibility *)selfCopy _axScrollPageController:?]& 1;
  }

  v4.receiver = selfCopy;
  v4.super_class = UIPageViewControllerAccessibility;
  return [(UIPageViewControllerAccessibility *)&v4 accessibilityScroll:scrollCopy];
}

@end