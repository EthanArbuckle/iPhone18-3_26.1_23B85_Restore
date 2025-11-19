@interface InteractiveTimelineCollectionViewControllerAccessibility
- (id)_accessibilityCenterCellFromCollectionView:(id)a3;
- (id)_accessibilitySafeCollectionView;
- (void)_accessibilityAdjustTimelineCollectionViewIncrement:(BOOL)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation InteractiveTimelineCollectionViewControllerAccessibility

- (id)_accessibilitySafeCollectionView
{
  objc_opt_class();
  v3 = [(InteractiveTimelineCollectionViewControllerAccessibility *)self safeUIViewForKey:@"collectionView"];
  v4 = __UIAccessibilityCastAsClass();

  return v4;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v13.receiver = self;
  v13.super_class = InteractiveTimelineCollectionViewControllerAccessibility;
  [(InteractiveTimelineCollectionViewControllerAccessibility *)&v13 _accessibilityLoadAccessibilityInformation];
  v3 = [(InteractiveTimelineCollectionViewControllerAccessibility *)self _accessibilitySafeCollectionView];
  [v3 setIsAccessibilityElement:1];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F60]];
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = __102__InteractiveTimelineCollectionViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v10[3] = &unk_29F2D0858;
  v10[4] = self;
  objc_copyWeak(&v11, &location);
  [v3 setAccessibilityLabelBlock:v10];
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __102__InteractiveTimelineCollectionViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v8[3] = &unk_29F2D0858;
  v8[4] = self;
  objc_copyWeak(&v9, &location);
  [v3 setAccessibilityValueBlock:v8];
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __102__InteractiveTimelineCollectionViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3;
  v6[3] = &unk_29F2D0880;
  objc_copyWeak(&v7, &location);
  [v3 _setAccessibilityIncrementBlock:v6];
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __102__InteractiveTimelineCollectionViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_4;
  v4[3] = &unk_29F2D0880;
  objc_copyWeak(&v5, &location);
  [v3 _setAccessibilityDecrementBlock:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

id __102__InteractiveTimelineCollectionViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained _accessibilitySafeCollectionView];
  v4 = [v1 _accessibilityCenterCellFromCollectionView:v3];

  if (v4)
  {
    v5 = [v4 accessibilityLabel];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __102__InteractiveTimelineCollectionViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained _accessibilitySafeCollectionView];
  v4 = [v1 _accessibilityCenterCellFromCollectionView:v3];

  if (v4)
  {
    v5 = [v4 accessibilityValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __102__InteractiveTimelineCollectionViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _accessibilityAdjustTimelineCollectionViewIncrement:1];
}

void __102__InteractiveTimelineCollectionViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _accessibilityAdjustTimelineCollectionViewIncrement:0];
}

- (void)_accessibilityAdjustTimelineCollectionViewIncrement:(BOOL)a3
{
  v3 = a3;
  v17 = [(InteractiveTimelineCollectionViewControllerAccessibility *)self _accessibilitySafeCollectionView];
  v5 = [(InteractiveTimelineCollectionViewControllerAccessibility *)self _accessibilityCenterCellFromCollectionView:?];
  if (v5)
  {
    v6 = [v17 indexPathForCell:v5];
    v7 = MEMORY[0x29EDB9FE0];
    v8 = [v6 item];
    v9 = [v6 section];
    if (v3)
    {
      v10 = v8 + 1;
    }

    else
    {
      v10 = v8 - 1;
    }

    v11 = [v7 indexPathForItem:v10 inSection:v9];
    v12 = [v17 cellForItemAtIndexPath:v11];

    if (v12)
    {
      [v12 center];
      v14 = v13;
      [v17 bounds];
      v16 = v14 + v15 * -0.5;
      [v17 contentOffset];
      [v17 setContentOffset:1 animated:v16];
    }
  }
}

- (id)_accessibilityCenterCellFromCollectionView:(id)a3
{
  v21 = *MEMORY[0x29EDCA608];
  v3 = a3;
  [v3 bounds];
  AX_CGRectGetCenter();
  v5 = v4;
  v7 = v6;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [v3 indexPathsForVisibleItems];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v17 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = [v3 cellForItemAtIndexPath:*(*(&v16 + 1) + 8 * v12)];
      [v13 bounds];
      [v3 convertRect:v13 fromView:?];
      v23.x = v5;
      v23.y = v7;
      if (CGRectContainsPoint(v24, v23))
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v13 = 0;
  }

  v14 = *MEMORY[0x29EDCA608];

  return v13;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = InteractiveTimelineCollectionViewControllerAccessibility;
  [(InteractiveTimelineCollectionViewControllerAccessibility *)&v3 viewDidLoad];
  [(InteractiveTimelineCollectionViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end