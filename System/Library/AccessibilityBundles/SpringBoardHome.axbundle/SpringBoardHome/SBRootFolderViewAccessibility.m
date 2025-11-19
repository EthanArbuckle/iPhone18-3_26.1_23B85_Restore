@interface SBRootFolderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)_accessibilityHitTestSubviews;
- (id)_accessibilitySubviews;
- (id)automationElements;
- (int64_t)_accessibilityCompareElement:(id)a3 toElement:(id)a4;
- (void)setIdleText:(id)a3;
- (void)setSpecialLayoutManager:(id)a3 completionHandler:(id)a4;
@end

@implementation SBRootFolderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBRootFolderView"];
  [v3 validateClass:@"_SBRootFolderLayoutWrapperView"];
  [v3 validateClass:@"SBRootFolderViewPageManagementLayoutManager"];
  [v3 validateClass:@"SBRootFolderView" isKindOfClass:@"SBFolderView"];
  [v3 validateClass:@"SBFolderView" hasInstanceMethod:@"firstIconListView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBIconListView" hasInstanceMethod:@"widgetIntroductionPopover" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBFolderView" hasInstanceVariable:@"_scrollView" withType:"SBIconScrollView"];
  [v3 validateClass:@"SBRootFolderView" hasInstanceMethod:@"_searchableLeadingCustomWrapperView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBRootFolderView" hasInstanceMethod:@"_searchableTrailingCustomWrapperView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBRootFolderView" hasInstanceVariable:@"_searchPulldownWrapperView" withType:"_SBRootFolderLayoutWrapperView"];
  [v3 validateClass:@"SBRootFolderView" hasInstanceMethod:@"setIdleText:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"SBHPageManagementCellViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"SBRootFolderViewPageManagementLayoutManager" hasInstanceVariable:@"_iconViewControllersByIcon" withType:"NSMapTable"];
  [v3 validateClass:@"SBViewControllerTransitionContext" hasInstanceMethod:@"animator" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBFramewiseInteractiveTransitionAnimator" hasInstanceMethod:@"isPresenting" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBRootFolderView" hasInstanceMethod:@"isPageManagementUIVisible" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBRootFolderView" hasInstanceMethod:@"specialLayoutManager" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBRootFolderView" hasInstanceMethod:@"todayViewVisibilityProgress" withFullSignature:{"d", 0}];
  [v3 validateClass:@"SBRootFolderView" hasInstanceMethod:@"widgetButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBRootFolderView" hasInstanceMethod:@"doneButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBRootFolderView" hasInstanceMethod:@"scrollAccessoryView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBRootFolderView" hasInstanceMethod:@"setSpecialLayoutManager:completionHandler:" withFullSignature:{"v", "@", "@?", 0}];
  [v3 validateClass:@"SBRootFolderView" isKindOfClass:@"UIView"];
}

- (id)automationElements
{
  v35 = *MEMORY[0x29EDCA608];
  if (AXProcessIsCarPlay())
  {
    v33 = 0;
    objc_opt_class();
    v3 = __UIAccessibilityCastAsClass();
    v4 = [v3 _allSubviews];
  }

  else
  {
    v4 = [MEMORY[0x29EDB8DE8] array];
    v3 = [(SBRootFolderViewAccessibility *)self safeValueForKey:@"_searchPulldownWrapperView"];
    if ([v3 _accessibilityViewIsVisible])
    {
      [v4 addObject:v3];
    }

    v5 = [(SBRootFolderViewAccessibility *)self safeValueForKey:@"_searchableLeadingCustomWrapperView"];
    if ([v5 _accessibilityViewIsVisible])
    {
      [v4 addObject:v5];
    }

    v6 = [(SBRootFolderViewAccessibility *)self safeValueForKey:@"_searchableTrailingCustomWrapperView"];
    if ([v6 _accessibilityViewIsVisible])
    {
      [v4 addObject:v6];
    }

    if ([(SBRootFolderViewAccessibility *)self safeBoolForKey:@"isPageManagementUIVisible"])
    {
      v27 = v6;
      v28 = v5;
      v33 = 0;
      objc_opt_class();
      v7 = [(SBRootFolderViewAccessibility *)self safeValueForKey:@"specialLayoutManager"];
      v8 = [v7 safeValueForKey:@"_iconViewControllersByIcon"];
      v9 = __UIAccessibilityCastAsClass();

      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v30;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v30 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = [v10 objectForKey:{*(*(&v29 + 1) + 8 * i), v27, v28, v29}];
            v16 = [v15 safeValueForKey:@"view"];
            [v4 axSafelyAddObject:v16];
          }

          v12 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
        }

        while (v12);
      }

      v6 = v27;
      v5 = v28;
    }

    v17 = [(SBRootFolderViewAccessibility *)self safeValueForKey:@"widgetButton", v27, v28];
    [v4 axSafelyAddObject:v17];

    v18 = [(SBRootFolderViewAccessibility *)self safeValueForKey:@"doneButton"];
    [v4 axSafelyAddObject:v18];

    v19 = [(SBRootFolderViewAccessibility *)self safeUIViewForKey:@"firstIconListView"];
    v20 = [v19 safeUIViewForKey:@"widgetIntroductionPopover"];
    if ([v20 _accessibilityViewIsVisible])
    {
      [v4 addObject:v20];
    }

    v21 = [(SBRootFolderViewAccessibility *)self safeValueForKey:@"folder"];
    v22 = [v21 automationElements];
    [v4 addObjectsFromArray:v22];

    if (AXDeviceIsPad())
    {
      v23 = @"pageControl";
    }

    else
    {
      v23 = @"scrollAccessoryView";
    }

    v24 = [(SBRootFolderViewAccessibility *)self safeValueForKey:v23];
    [v4 axSafelyAddObject:v24];

    v25 = [(SBRootFolderViewAccessibility *)self safeValueForKey:@"dockView"];
    [v4 axSafelyAddObject:v25];
  }

  return v4;
}

- (id)_accessibilitySubviews
{
  v3 = [(SBRootFolderViewAccessibility *)self subviews];
  v4 = [v3 mutableCopy];

  v5 = [(SBRootFolderViewAccessibility *)self safeValueForKey:@"_idleTextView"];
  v6 = [v4 indexOfObject:v5];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v4 exchangeObjectAtIndex:objc_msgSend(v4 withObjectAtIndex:{"count") - 1, v6}];
  }

  return v4;
}

- (int64_t)_accessibilityCompareElement:(id)a3 toElement:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Sbdockview.isa)];
  v9 = [v7 _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Sbdockview.isa)];
  v10 = v9;
  if (!v8 || v9)
  {
    if (v8 || !v9)
    {
      v13.receiver = self;
      v13.super_class = SBRootFolderViewAccessibility;
      v11 = [(SBRootFolderViewAccessibility *)&v13 _accessibilityCompareElement:v6 toElement:v7];
    }

    else
    {
      v11 = -1;
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (id)_accessibilityHitTestSubviews
{
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v3 = [(SBRootFolderViewAccessibility *)self subviews];
    v4 = [v3 mutableCopy];

    v5 = [(SBRootFolderViewAccessibility *)self safeValueForKey:@"_idleTextView"];
    v6 = [v4 indexOfObject:v5];
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v4 exchangeObjectAtIndex:objc_msgSend(v4 withObjectAtIndex:{"count") - 1, v6}];
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBRootFolderViewAccessibility;
    v4 = [(SBRootFolderViewAccessibility *)&v8 _accessibilityHitTestSubviews];
  }

  return v4;
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__9;
  v16 = __Block_byref_object_dispose__9;
  v11.receiver = self;
  v11.super_class = SBRootFolderViewAccessibility;
  v17 = [(SBRootFolderViewAccessibility *)&v11 _accessibilityHitTest:v7 withEvent:x, y];
  v10 = v7;
  AXPerformSafeBlock();
  v8 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v8;
}

void __65__SBRootFolderViewAccessibility__accessibilityHitTest_withEvent___block_invoke(uint64_t a1)
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v3 = *(*(*(a1 + 48) + 8) + 40);
  if ((isKindOfClass & 1) != 0 || !v3)
  {
    v9 = v3;
    v4 = [*(a1 + 32) safeUIViewForKey:@"_scrollView"];
    [*(a1 + 32) safeCGFloatForKey:@"todayViewVisibilityProgress"];
    if (v5 > 0.0 && ([v9 isDescendantOfView:v4] & 1) == 0)
    {
      v6 = [*(a1 + 32) safeUIViewForKey:@"_searchableLeadingCustomWrapperView"];
      [*(a1 + 32) convertPoint:v6 toView:{*(a1 + 56), *(a1 + 64)}];
      v7 = [v6 _accessibilityHitTest:*(a1 + 40) withEvent:?];
      if (v7)
      {
        v8 = v7;
      }

      else
      {
        v8 = v9;
      }

      objc_storeStrong((*(*(a1 + 48) + 8) + 40), v8);
    }
  }
}

- (void)setIdleText:(id)a3
{
  v7.receiver = self;
  v7.super_class = SBRootFolderViewAccessibility;
  [(SBRootFolderViewAccessibility *)&v7 setIdleText:a3];
  v4 = [(SBRootFolderViewAccessibility *)self safeValueForKey:@"_idleTextView"];
  v5 = v4;
  if (v4)
  {
    [v4 setIsAccessibilityElement:1];
    v6 = [v5 safeValueForKey:@"text"];
    [v5 setAccessibilityLabel:v6];
  }
}

- (void)setSpecialLayoutManager:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 3221225472;
  v12[2] = __75__SBRootFolderViewAccessibility_setSpecialLayoutManager_completionHandler___block_invoke;
  v12[3] = &unk_29F3008D8;
  v13 = v6;
  v14 = v7;
  v8 = v6;
  v9 = v7;
  v10 = MEMORY[0x29ED38BB0](v12);
  v11.receiver = self;
  v11.super_class = SBRootFolderViewAccessibility;
  [(SBRootFolderViewAccessibility *)&v11 setSpecialLayoutManager:v8 completionHandler:v10];
}

void __75__SBRootFolderViewAccessibility_setSpecialLayoutManager_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    (*(v1 + 16))();
  }

  NSClassFromString(&cfstr_Sbrootfoldervi_1.isa);
  if (objc_opt_isKindOfClass())
  {
    v2 = accessibilityLocalizedString(@"page.management.showing");
    UIAccessibilitySpeakAndDoNotBeInterrupted();
  }
}

@end