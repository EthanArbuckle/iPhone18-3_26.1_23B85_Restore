@interface NCNotificationListViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axHasMultipleViews;
- (BOOL)_axShouldForwardToListCell;
- (BOOL)accessibilityActivate;
- (BOOL)accessibilityScrollToVisibleWithChild:(id)a3;
- (CGPoint)accessibilityActivationPoint;
- (UIEdgeInsets)_accessibilityVisibleContentInset;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)_accessibilityListCell;
- (id)_accessibilityRevealHintView;
- (id)_accessibilitySubviews;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityCustomActions;
- (id)accessibilityHint;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
- (id)accessibilityPath;
- (id)automationElements;
- (unint64_t)accessibilityTraits;
- (void)_recycleViewIfNecessary:(id)a3 withDataSource:(id)a4;
@end

@implementation NCNotificationListViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NCNotificationListView"];
  [v3 validateClass:@"NCDigestSummaryPlatterView"];
  [v3 validateClass:@"NCNotificationSummaryPlatterView"];
  [v3 validateClass:@"NCNotificationListSectionRevealHintView"];
  [v3 validateClass:@"_UIScrollViewScrollIndicator"];
  [v3 validateClass:@"NCNotificationListView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"NCNotificationListView" isKindOfClass:@"UIScrollView"];
  [v3 validateClass:@"NCNotificationListView" hasInstanceMethod:@"isGrouped" withFullSignature:{"B", 0}];
  [v3 validateClass:@"UIScrollView" hasInstanceMethod:@"_minimumContentOffset" withFullSignature:{"{CGPoint=dd}", 0}];
  [v3 validateClass:@"NCNotificationListView" hasInstanceMethod:@"_recycleViewIfNecessary:withDataSource:" withFullSignature:{"v", "@", "@", 0}];
  [v3 validateClass:@"NCNotificationListView" hasInstanceMethod:@"headerView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NCNotificationListView" hasInstanceMethod:@"isHiddenBelowStack" withFullSignature:{"B", 0}];
}

- (UIEdgeInsets)_accessibilityVisibleContentInset
{
  v18 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 superview];
  NSClassFromString(&cfstr_Ncnotification_46.isa);
  if (objc_opt_isKindOfClass())
  {
    v17.receiver = self;
    v17.super_class = NCNotificationListViewAccessibility;
    [(NCNotificationListViewAccessibility *)&v17 _accessibilityVisibleContentInset];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v6 = *MEMORY[0x29EDC80C8];
    v8 = *(MEMORY[0x29EDC80C8] + 8);
    v10 = *(MEMORY[0x29EDC80C8] + 16);
    v12 = *(MEMORY[0x29EDC80C8] + 24);
  }

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.right = v16;
  result.bottom = v15;
  result.left = v14;
  result.top = v13;
  return result;
}

- (unint64_t)accessibilityTraits
{
  if (![(NCNotificationListViewAccessibility *)self _axShouldForwardToListCell])
  {
    return *MEMORY[0x29EDC7FA0];
  }

  v3 = [(NCNotificationListViewAccessibility *)self _accessibilityListCell];
  v4 = [v3 accessibilityTraits];

  return v4;
}

- (id)accessibilityPath
{
  if ([(NCNotificationListViewAccessibility *)self _axShouldForwardToListCell])
  {
    v3 = [(NCNotificationListViewAccessibility *)self _accessibilityListCell];
    v4 = [v3 accessibilityPath];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)accessibilityLabel
{
  if ([(NCNotificationListViewAccessibility *)self _axShouldForwardToListCell])
  {
    v3 = [(NCNotificationListViewAccessibility *)self _accessibilityListCell];
    v4 = [v3 accessibilityLabel];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CGPoint)accessibilityActivationPoint
{
  if ([(NCNotificationListViewAccessibility *)self _axShouldForwardToListCell]&& ([(NCNotificationListViewAccessibility *)self _accessibilityListCell], v3 = objc_claimAutoreleasedReturnValue(), NSClassFromString(&cfstr_Ncdigestsummar_0.isa), isKindOfClass = objc_opt_isKindOfClass(), v3, (isKindOfClass & 1) != 0))
  {
    v5 = [(NCNotificationListViewAccessibility *)self _accessibilityListCell];
    [v5 accessibilityActivationPoint];
    v7 = v6;
    v9 = v8;

    v10 = v7;
    v11 = v9;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = NCNotificationListViewAccessibility;
    [(NCNotificationListViewAccessibility *)&v12 accessibilityActivationPoint];
  }

  result.y = v11;
  result.x = v10;
  return result;
}

- (BOOL)accessibilityActivate
{
  if ([(NCNotificationListViewAccessibility *)self _axShouldForwardToListCell])
  {
    v3 = [(NCNotificationListViewAccessibility *)self _accessibilityListCell];
    v4 = [(NCNotificationListViewAccessibility *)self _accessibilityListCell];
    NSClassFromString(&cfstr_Ncdigestsummar_0.isa);
    if (objc_opt_isKindOfClass())
    {
    }

    else
    {
      v5 = [(NCNotificationListViewAccessibility *)self _accessibilityListCell];
      NSClassFromString(&cfstr_Ncnotification_32.isa);
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
LABEL_8:
        UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v3);

        goto LABEL_9;
      }
    }

    v7 = [(NCNotificationListViewAccessibility *)self safeDictionaryForKey:@"visibleViews"];
    v8 = [v7 objectForKey:&unk_2A23955B8];

    if (v8)
    {
      v9 = v8;

      v3 = v9;
    }

    goto LABEL_8;
  }

LABEL_9:
  v11.receiver = self;
  v11.super_class = NCNotificationListViewAccessibility;
  return [(NCNotificationListViewAccessibility *)&v11 accessibilityActivate];
}

- (id)accessibilityHint
{
  if ([(NCNotificationListViewAccessibility *)self _axShouldForwardToListCell])
  {
    v2 = accessibilityLocalizedString(@"notification.cell.collapsed.hint");
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)accessibilityCustomActions
{
  if ([(NCNotificationListViewAccessibility *)self _axShouldForwardToListCell])
  {
    v3 = [(NCNotificationListViewAccessibility *)self _accessibilityListCell];
    v4 = [v3 accessibilityCustomActions];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(NCNotificationListViewAccessibility *)self _accessibilityRevealHintView];
  if ([v8 _accessibilityIsHintTitleVisible] && (objc_msgSend(v8, "accessibilityContainer"), v9 = objc_claimAutoreleasedReturnValue(), v9, v9 == self) && (objc_msgSend(v8, "bounds"), v15.x = x, v15.y = y, CGRectContainsPoint(v16, v15)))
  {
    v10 = v8;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = NCNotificationListViewAccessibility;
    v10 = [(NCNotificationListViewAccessibility *)&v13 _accessibilityHitTest:v7 withEvent:x, y];
  }

  v11 = v10;

  return v11;
}

- (id)_accessibilitySubviews
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v8.receiver = self;
  v8.super_class = NCNotificationListViewAccessibility;
  v4 = [(NCNotificationListViewAccessibility *)&v8 _accessibilitySubviews];
  [v3 axSafelyAddObjectsFromArray:v4];

  v5 = [(NCNotificationListViewAccessibility *)self _accessibilityRevealHintView];
  if ([v5 _accessibilityIsHintTitleVisible])
  {
    v6 = [v5 accessibilityContainer];

    if (v6 != self)
    {
      [v3 axSafelyAddObject:v5];
    }
  }

  return v3;
}

- (id)accessibilityIdentifier
{
  if ([(NCNotificationListViewAccessibility *)self _axShouldForwardToListCell])
  {
    v3 = [(NCNotificationListViewAccessibility *)self _accessibilityListCell];
    v4 = [v3 accessibilityIdentifier];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)automationElements
{
  if ([(NCNotificationListViewAccessibility *)self _axShouldForwardToListCell])
  {
    v3 = [(NCNotificationListViewAccessibility *)self _accessibilityListCell];
    v4 = [v3 automationElements];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = NCNotificationListViewAccessibility;
    v4 = [(NCNotificationListViewAccessibility *)&v6 automationElements];
  }

  return v4;
}

- (id)_accessibilitySupplementaryFooterViews
{
  if ([(NCNotificationListViewAccessibility *)self _axShouldForwardToListCell])
  {
    v3 = [(NCNotificationListViewAccessibility *)self _accessibilityListCell];
    v4 = [v3 _accessibilitySupplementaryFooterViews];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = NCNotificationListViewAccessibility;
    v4 = [(NCNotificationListViewAccessibility *)&v6 _accessibilitySupplementaryFooterViews];
  }

  return v4;
}

- (BOOL)accessibilityScrollToVisibleWithChild:(id)a3
{
  v65 = *MEMORY[0x29EDCA608];
  v4 = a3;
  NSClassFromString(&cfstr_Uiscrollviewsc.isa);
  if (objc_opt_isKindOfClass())
  {
    v5 = 1;
  }

  else
  {
    LOBYTE(insets.left) = 0;
    objc_opt_class();
    v6 = __UIAccessibilityCastAsClass();
    [v6 adjustedContentInset];
    insets.top = v7;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [v4 accessibilityFrame];
    UIAccessibilityFrameToBounds();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = [MEMORY[0x29EDC7C40] mainScreen];
    [v22 bounds];
    v24 = v23;

    v25 = v24 / 3.0;
    v26 = AXLogScrollToVisible();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v68.origin.x = v15;
      v68.origin.y = v17;
      v68.size.width = v19;
      v68.size.height = v21;
      v59 = NSStringFromCGRect(v68);
      v69.top = insets.top;
      v69.left = v9;
      v69.bottom = v11;
      v69.right = v13;
      v60 = NSStringFromUIEdgeInsets(v69);
      LODWORD(insets.left) = 138412802;
      *(&insets.left + 4) = v59;
      WORD2(insets.bottom) = 2112;
      *(&insets.bottom + 6) = v60;
      HIWORD(insets.right) = 2048;
      v64 = v25;
      _os_log_debug_impl(&dword_29C6DA000, v26, OS_LOG_TYPE_DEBUG, "Scrolling within notifications. Original: %@, computed using insets %@, with a modified topInset of %f", &insets.left, 0x20u);
    }

    UIRectInset();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v35 = AXLogScrollToVisible();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      v70.origin.x = v28;
      v70.origin.y = v30;
      v70.size.width = v32;
      v70.size.height = v34;
      v61 = NSStringFromCGRect(v70);
      LODWORD(insets.left) = 138412290;
      *(&insets.left + 4) = v61;
      _os_log_debug_impl(&dword_29C6DA000, v35, OS_LOG_TYPE_DEBUG, "Expanded: %@", &insets.left, 0xCu);
    }

    [(NCNotificationListViewAccessibility *)self safeCGPointForKey:@"_minimumContentOffset"];
    v37 = v36;
    v66.origin.x = v28;
    v66.origin.y = v30;
    v66.size.width = v32;
    v66.size.height = v34;
    if (CGRectGetMinY(v66) < v37)
    {
      v67.origin.x = v28;
      v67.origin.y = v30;
      v67.size.width = v32;
      v67.size.height = v34;
      CGRectGetMinY(v67);
      UIRectInset();
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v46 = AXLogScrollToVisible();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
        v71.origin.x = v39;
        v71.origin.y = v41;
        v71.size.width = v43;
        v71.size.height = v45;
        v62 = NSStringFromCGRect(v71);
        LODWORD(insets.left) = 138412290;
        *(&insets.left + 4) = v62;
        _os_log_debug_impl(&dword_29C6DA000, v46, OS_LOG_TYPE_DEBUG, "Clipped on top: %@", &insets.left, 0xCu);
      }
    }

    UIAccessibilityFrameForBounds();
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v54 = v53;
    LOBYTE(insets.left) = 0;
    objc_opt_class();
    v55 = __UIAccessibilityCastAsClass();
    if (LOBYTE(insets.left) == 1)
    {
      abort();
    }

    v56 = v55;
    v5 = [(NCNotificationListViewAccessibility *)self _accessibilityScrollToFrame:v55 forView:v48, v50, v52, v54];
  }

  v57 = *MEMORY[0x29EDCA608];
  return v5;
}

- (id)_accessibilityRevealHintView
{
  v2 = [(NCNotificationListViewAccessibility *)self _accessibilityFindSubviewDescendant:&__block_literal_global_6];
  objc_opt_class();
  v3 = __UIAccessibilityCastAsSafeCategory();

  return v3;
}

uint64_t __67__NCNotificationListViewAccessibility__accessibilityRevealHintView__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Ncnotification_56.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)_axShouldForwardToListCell
{
  v3 = [(NCNotificationListViewAccessibility *)self _accessibilityListCell];
  v4 = v3 && [(NCNotificationListViewAccessibility *)self safeBoolForKey:@"isGrouped"]&& [(NCNotificationListViewAccessibility *)self _axHasMultipleViews];

  return v4;
}

- (id)_accessibilityListCell
{
  v2 = [(NCNotificationListViewAccessibility *)self safeDictionaryForKey:@"visibleViews"];
  v3 = [v2 objectForKey:&unk_2A23955D0];

  NSClassFromString(&cfstr_Ncnotification_36.isa);
  if (objc_opt_isKindOfClass() & 1) != 0 || (NSClassFromString(&cfstr_Ncdigestsummar_0.isa), (objc_opt_isKindOfClass()) || (NSClassFromString(&cfstr_Ncnotification_32.isa), (objc_opt_isKindOfClass()))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_axHasMultipleViews
{
  v2 = [(NCNotificationListViewAccessibility *)self safeDictionaryForKey:@"visibleViews"];
  v3 = [v2 count] > 1;

  return v3;
}

- (void)_recycleViewIfNecessary:(id)a3 withDataSource:(id)a4
{
  v9.receiver = self;
  v9.super_class = NCNotificationListViewAccessibility;
  v6 = a3;
  [(NCNotificationListViewAccessibility *)&v9 _recycleViewIfNecessary:v6 withDataSource:a4];
  NSClassFromString(&cfstr_Ncnotification_32.isa);
  LOBYTE(a4) = objc_opt_isKindOfClass();

  if (a4)
  {
    v7 = *MEMORY[0x29EDC7ED8];
    v8 = [(NCNotificationListViewAccessibility *)self safeValueForKey:@"headerView", v9.receiver, v9.super_class];
    UIAccessibilityPostNotification(v7, v8);
  }
}

@end