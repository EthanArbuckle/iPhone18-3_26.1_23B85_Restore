@interface PosterRackCollectionViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axScrollDown:(id)down scrollView:(id)view;
- (BOOL)_axScrollLeft:(BOOL)left pageControl:(id)control collectionView:(id)view;
- (BOOL)accessibilityScroll:(int64_t)scroll;
- (id)_axCollectionView;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axSetPageControlValue;
- (void)viewDidLayoutSubviews;
@end

@implementation PosterRackCollectionViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PosterBoard.PosterRackCollectionViewController" isKindOfClass:@"UICollectionViewController"];
  [validationsCopy validateClass:@"PosterBoard.PosterRackCollectionViewController" hasSwiftField:@"pageControl" withSwiftType:"Optional<UIPageControl>"];
  [validationsCopy validateClass:@"PosterBoard.LockScreenPosterCollectionViewCell"];
  [validationsCopy validateClass:@"PosterBoard.LockScreenPosterCollectionViewCell" hasSwiftField:@"scrollView" withSwiftType:"Optional<UIScrollView>"];
  [validationsCopy validateClass:@"PosterBoard.PosterSectionRemovalView"];
  [validationsCopy validateClass:@"PosterBoard.PosterSectionRemovalView" hasSwiftField:@"deleteButton" withSwiftType:"Optional<UIButton>"];
  [validationsCopy validateClass:@"PosterBoard.PosterRackCollectionViewController" hasSwiftField:@"layoutMode" withSwiftType:"PRUISSwitcherLayoutMode"];
  [validationsCopy validateClass:@"PosterBoard.PosterRackCollectionViewController" hasSwiftFieldOfAnyClass:@"addPosterButton"];
  [validationsCopy validateClass:@"PosterBoard.PosterPair" hasSwiftField:@"localizedTitle" withSwiftType:"Optional<String>"];
}

- (BOOL)accessibilityScroll:(int64_t)scroll
{
  objc_opt_class();
  v5 = [(PosterRackCollectionViewControllerAccessibility *)self safeSwiftValueForKey:@"pageControl"];
  v6 = __UIAccessibilityCastAsClass();

  _axCollectionView = [(PosterRackCollectionViewControllerAccessibility *)self _axCollectionView];
  objc_opt_class();
  _axCollectionView2 = [(PosterRackCollectionViewControllerAccessibility *)self _axCollectionView];
  v9 = AXCenteredPosterCellInCollectionView(_axCollectionView2);
  v10 = [v9 safeSwiftValueForKey:@"scrollView"];
  v11 = __UIAccessibilityCastAsClass();

  v12 = [(PosterRackCollectionViewControllerAccessibility *)self safeSwiftValueForKey:@"layoutMode"];
  v13 = AXConvertToLayoutMode();

  if (v13 == 1)
  {
    v14 = 1;
    if (scroll > 2)
    {
      if (scroll == 3)
      {
        [v11 setContentOffset:1 animated:{0.0, 0.0}];
        UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
        goto LABEL_14;
      }

      if (scroll == 4)
      {
        v17 = [(PosterRackCollectionViewControllerAccessibility *)self _axScrollDown:_axCollectionView scrollView:v11];
LABEL_12:
        v14 = v17;
      }
    }

    else
    {
      if (scroll == 1)
      {
        selfCopy2 = self;
        v16 = 0;
        goto LABEL_11;
      }

      if (scroll == 2)
      {
        selfCopy2 = self;
        v16 = 1;
LABEL_11:
        v17 = [(PosterRackCollectionViewControllerAccessibility *)selfCopy2 _axScrollLeft:v16 pageControl:v6 collectionView:_axCollectionView];
        goto LABEL_12;
      }
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_14:

  return v14;
}

- (void)viewDidLayoutSubviews
{
  v7.receiver = self;
  v7.super_class = PosterRackCollectionViewControllerAccessibility;
  [(PosterRackCollectionViewControllerAccessibility *)&v7 viewDidLayoutSubviews];
  v3 = [(PosterRackCollectionViewControllerAccessibility *)self safeSwiftValueForKey:@"layoutMode"];
  v4 = AXConvertToLayoutMode();

  v5 = v4 == 4;
  _axCollectionView = [(PosterRackCollectionViewControllerAccessibility *)self _axCollectionView];
  [_axCollectionView setAccessibilityElementsHidden:v5];

  AXPerformBlockOnMainThreadAfterDelay();
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = PosterRackCollectionViewControllerAccessibility;
  [(PosterRackCollectionViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(PosterRackCollectionViewControllerAccessibility *)self safeSwiftValueForKey:@"addPosterButton"];
  v4 = accessibilityLocalizedString(@"poster.gallery.affordance.cell.label");
  [v3 setAccessibilityLabel:v4];
}

- (id)_axCollectionView
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  collectionView = [v2 collectionView];

  return collectionView;
}

- (BOOL)_axScrollDown:(id)down scrollView:(id)view
{
  downCopy = down;
  viewCopy = view;
  v7 = AXLockScreenPostersCount(downCopy);
  if (v7 != 1)
  {
    [viewCopy contentSize];
    v9 = v8;
    [viewCopy bounds];
    [viewCopy setContentOffset:1 animated:{0.0, v9 - v10}];
    v12 = downCopy;
    AXPerformBlockOnMainThreadAfterDelay();
  }

  return v7 != 1;
}

void __76__PosterRackCollectionViewControllerAccessibility__axScrollDown_scrollView___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = [*(a1 + 32) accessibilityElements];
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
LABEL_3:
    v5 = 0;
    while (1)
    {
      if (*v10 != v4)
      {
        objc_enumerationMutation(v1);
      }

      v6 = *(*(&v9 + 1) + 8 * v5);
      MEMORY[0x29C2E7EC0](@"PosterBoard.PosterSectionRemovalView");
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v3 == ++v5)
      {
        v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v3)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    v7 = [v6 safeSwiftValueForKey:@"deleteButton"];

    if (!v7)
    {
      goto LABEL_13;
    }

    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v7);
    v1 = v7;
  }

LABEL_12:

LABEL_13:
  v8 = *MEMORY[0x29EDCA608];
}

- (BOOL)_axScrollLeft:(BOOL)left pageControl:(id)control collectionView:(id)view
{
  if (left)
  {
    [control accessibilityIncrement];
  }

  else
  {
    [control accessibilityDecrement];
  }

  AXPerformBlockOnMainThreadAfterDelay();
  return 1;
}

void __92__PosterRackCollectionViewControllerAccessibility__axScrollLeft_pageControl_collectionView___block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x29EDC7EA8];
  v3 = [*(a1 + 32) _axCollectionView];
  v2 = [v3 accessibilityValue];
  UIAccessibilityPostNotification(v1, v2);
}

- (void)_axSetPageControlValue
{
  objc_opt_class();
  v3 = [(PosterRackCollectionViewControllerAccessibility *)self safeSwiftValueForKey:@"pageControl"];
  v4 = __UIAccessibilityCastAsClass();

  currentPage = [v4 currentPage];
  v6 = [v4 numberOfPages] - 1;
  _axCollectionView = [(PosterRackCollectionViewControllerAccessibility *)self _axCollectionView];
  v8 = AXCenteredPosterCellInCollectionView(_axCollectionView);
  v9 = [v8 safeSwiftStringForKey:@"localizedTitle"];

  if (v6 == 1)
  {
    v10 = accessibilityLocalizedString(@"page.control.one.wallpaper.available.value");
  }

  else
  {
    if (currentPage >= v6)
    {
      v11 = 0;
      goto LABEL_7;
    }

    v10 = accessibilityLocalizedString(@"page.control.format.text");
  }

  v11 = AXCFormattedString();

LABEL_7:
  v12 = __UIAXStringForVariables();
  [v4 setAccessibilityValue:{v12, v11, @"__AXStringForVariablesSentinel"}];
}

@end