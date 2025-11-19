@interface NTKPageScrollViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityIsPageViewVisible:(id)a3;
- (BOOL)_accessibilityShouldSwipeBetweenPages;
- (NTKPageScrollViewControllerAccessibility)initWithScrollOrientation:(int64_t)a3;
- (id)_accessibilityCustomActionsForPageView:(id)a3;
- (id)_accessibilityHintForPageView:(id)a3;
- (id)_accessibilityLabelForPageView:(id)a3;
- (id)_accessibilityTouchContainerLabel;
- (id)_accessibilityValueForPageView:(id)a3;
- (id)_axDataSource;
- (id)_axScrollView;
- (unint64_t)_axPageIndexForPageView:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAnnotateScrollView;
@end

@implementation NTKPageScrollViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NTKPageScrollViewController" hasInstanceMethod:@"initWithScrollOrientation:" withFullSignature:{"@", "q", 0}];
  [v3 validateClass:@"NTKPageScrollViewController" hasInstanceMethod:@"dataSource" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NTKPageScrollViewController" hasInstanceVariable:@"_scrollView" withType:"NTKPageScrollView"];
  [v3 validateClass:@"NTKPageScrollView"];
  [v3 validateClass:@"NTKPageScrollView" hasInstanceMethod:@"enumeratePagesWithBlock:" withFullSignature:{"v", "@?", 0}];
  [v3 validateClass:@"NTKPageScrollView" hasInstanceMethod:@"enumerateVisiblePagesWithBlock:" withFullSignature:{"v", "@?", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = NTKPageScrollViewControllerAccessibility;
  [(NTKPageScrollViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(NTKPageScrollViewControllerAccessibility *)self _axAnnotateScrollView];
}

- (id)_accessibilityTouchContainerLabel
{
  v3 = [(NTKPageScrollViewControllerAccessibility *)self _axDataSource];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 _accessibilityTouchContainerLabelForPageScrollViewController:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_accessibilityShouldSwipeBetweenPages
{
  v3 = [(NTKPageScrollViewControllerAccessibility *)self _axDataSource];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 _accessibilityShouldSwipeBetweenPagesForPageScrollViewController:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_accessibilityIsPageViewVisible:(id)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5 = a3;
  AXPerformSafeBlock();
  v3 = *(v7 + 24);

  _Block_object_dispose(&v6, 8);
  return v3;
}

void __76__NTKPageScrollViewControllerAccessibility__accessibilityIsPageViewVisible___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _axScrollView];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __76__NTKPageScrollViewControllerAccessibility__accessibilityIsPageViewVisible___block_invoke_2;
  v5[3] = &unk_20540;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 enumerateVisiblePagesWithBlock:v5];
}

uint64_t __76__NTKPageScrollViewControllerAccessibility__accessibilityIsPageViewVisible___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (*(result + 32) == a2)
  {
    *(*(*(result + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (unint64_t)_axPageIndexForPageView:(id)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  v5 = a3;
  AXPerformSafeBlock();
  v3 = v7[3];

  _Block_object_dispose(&v6, 8);
  return v3;
}

void __68__NTKPageScrollViewControllerAccessibility__axPageIndexForPageView___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _axScrollView];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __68__NTKPageScrollViewControllerAccessibility__axPageIndexForPageView___block_invoke_2;
  v5[3] = &unk_20540;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 enumeratePagesWithBlock:v5];
}

uint64_t __68__NTKPageScrollViewControllerAccessibility__axPageIndexForPageView___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (*(result + 32) == a2)
  {
    *(*(*(result + 40) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

- (id)_accessibilityValueForPageView:(id)a3
{
  v4 = [(NTKPageScrollViewControllerAccessibility *)self _axPageIndexForPageView:a3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v6 = v4;
    v7 = [(NTKPageScrollViewControllerAccessibility *)self _axDataSource];
    if (objc_opt_respondsToSelector())
    {
      v5 = [v7 _accessibilityValueForPageAtIndex:v6 forPageScrollViewController:self];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)_accessibilityLabelForPageView:(id)a3
{
  v4 = [(NTKPageScrollViewControllerAccessibility *)self _axPageIndexForPageView:a3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v6 = v4;
    v7 = [(NTKPageScrollViewControllerAccessibility *)self _axDataSource];
    if (objc_opt_respondsToSelector())
    {
      v5 = [v7 _accessibilityLabelForPageAtIndex:v6 forPageScrollViewController:self];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)_accessibilityHintForPageView:(id)a3
{
  v4 = [(NTKPageScrollViewControllerAccessibility *)self _axPageIndexForPageView:a3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v6 = v4;
    v7 = [(NTKPageScrollViewControllerAccessibility *)self _axDataSource];
    if (objc_opt_respondsToSelector())
    {
      v5 = [v7 _accessibilityHintForPageAtIndex:v6 forPageScrollViewController:self];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)_accessibilityCustomActionsForPageView:(id)a3
{
  v4 = [(NTKPageScrollViewControllerAccessibility *)self _axPageIndexForPageView:a3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v6 = v4;
    v7 = [(NTKPageScrollViewControllerAccessibility *)self _axDataSource];
    if (objc_opt_respondsToSelector())
    {
      v5 = [v7 _accessibilityCustomActionsForPageAtIndex:v6 forPageScrollViewController:self];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (NTKPageScrollViewControllerAccessibility)initWithScrollOrientation:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = NTKPageScrollViewControllerAccessibility;
  v3 = [(NTKPageScrollViewControllerAccessibility *)&v6 initWithScrollOrientation:a3];
  v4 = v3;
  if (v3)
  {
    [(NTKPageScrollViewControllerAccessibility *)v3 _axAnnotateScrollView];
  }

  return v4;
}

- (id)_axScrollView
{
  v2 = [(NTKPageScrollViewControllerAccessibility *)self safeValueForKey:@"_scrollView"];
  AXSafeClassFromString();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_axAnnotateScrollView
{
  objc_opt_class();
  v3 = [(NTKPageScrollViewControllerAccessibility *)self _axScrollView];
  v4 = __UIAccessibilityCastAsSafeCategory();

  [v4 setAccessibilityPageScrollViewController:self];
}

- (id)_axDataSource
{
  v2 = [(NTKPageScrollViewControllerAccessibility *)self safeValueForKey:@"dataSource"];
  v3 = NSProtocolFromString(@"NTKPageScrollViewControllerDataSource");
  v4 = [v2 conformsToProtocol:v3];

  if (v4)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end