@interface CSCoverSheetViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axAllowNotificationsRevealPolicy;
- (BOOL)_axHandleShowNotificationsAction;
- (BOOL)accessibilityScroll:(int64_t)a3;
- (BOOL)accessibilityScrollUpPage;
- (id)_accessibilityAdditionalElements;
- (id)_axNotificationsMasterList;
- (id)_axShowNotificationsElement;
- (id)_childFocusViews;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAdjustObscuredContent;
- (void)layoutSubviews;
- (void)scrollViewDidEndScrolling:(id)a3;
- (void)setModalPresentationView:(id)a3;
@end

@implementation CSCoverSheetViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CSCoverSheetView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"UIView" hasInstanceMethod:@"_childFocusViews" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CSCoverSheetView" hasInstanceMethod:@"modalPresentationView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CSCoverSheetView" hasInstanceMethod:@"slideableContentView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CSCoverSheetView" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [v3 validateClass:@"CSCoverSheetView" hasInstanceMethod:@"setModalPresentationView:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"CSCoverSheetView" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
  [v3 validateClass:@"CSCoverSheetView" hasInstanceMethod:@"resetScrollViewToMainPageAnimated: withCompletion:" withFullSignature:{"B", "B", "@?", 0}];
  [v3 validateClass:@"CSCoverSheetView" hasInstanceMethod:@"scrollViewDidEndScrolling:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"CSCoverSheetView" hasInstanceMethod:@"scrollView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CSCoverSheetViewController" hasInstanceMethod:@"scrollPanGestureDidUpdate:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"SBFPagedScrollView" hasInstanceMethod:@"scrollToPageAtIndex:animated:" withFullSignature:{"B", "Q", "B", 0}];
  [v3 validateClass:@"SBFPagedScrollView" hasInstanceMethod:@"pageViews" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBFPagedScrollView" hasInstanceMethod:@"currentPageIndex" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"CSCoverSheetViewController" hasInstanceMethod:@"mainPageContentViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CSMainPageContentViewController" hasInstanceVariable:@"_combinedListViewController" withType:"CSCombinedListViewController"];
  [v3 validateClass:@"CSCombinedListViewController" hasInstanceMethod:@"notificationListScrollView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CSCoverSheetView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CSCoverSheetViewController" hasInstanceMethod:@"mainPageContentViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CSMainPageContentViewController" hasInstanceVariable:@"_combinedListViewController" withType:"CSCombinedListViewController"];
  [v3 validateClass:@"CSCombinedListViewController" hasInstanceVariable:@"_structuredListViewController" withType:"NCNotificationStructuredListViewController"];
  [v3 validateClass:@"NCNotificationStructuredListViewController" hasInstanceMethod:@"listModel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NCNotificationRootList" hasInstanceMethod:@"totalNotificationCount" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"NCNotificationRootModernList" hasInstanceMethod:@"isNotificationHistoryRevealed" withFullSignature:{"B", 0}];
  [v3 validateClass:@"NCNotificationRootList" hasInstanceMethod:@"rootListView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NCNotificationRootList" hasInstanceMethod:@"historySectionList" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NCNotificationCombinedSectionList" hasInstanceMethod:@"notificationCount" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"CSCoverSheetViewController" hasInstanceMethod:@"isPasscodeLockVisible" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CSCoverSheetView" hasInstanceMethod:@"dateView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NCNotificationStructuredListViewController" hasInstanceMethod:@"revealNotificationHistory:animated:" withFullSignature:{"v", "B", "B", 0}];
  [v3 validateClass:@"CSCombinedListViewController" hasInstanceMethod:@"_allowNotificationsRevealPolicy" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CSCombinedListViewController" hasInstanceMethod:@"_shouldPreventNotificationHistoryRevealForActiveDNDState" withFullSignature:{"B", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = CSCoverSheetViewAccessibility;
  [(CSCoverSheetViewAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(CSCoverSheetViewAccessibility *)self _axAdjustObscuredContent];
}

- (void)_axAdjustObscuredContent
{
  v4 = [(CSCoverSheetViewAccessibility *)self safeValueForKey:@"modalPresentationView"];
  v3 = [(CSCoverSheetViewAccessibility *)self safeValueForKey:@"slideableContentView"];
  [v3 _accessibilitySetViewIsVisible:v4 == 0];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CSCoverSheetViewAccessibility;
  [(CSCoverSheetViewAccessibility *)&v3 layoutSubviews];
  [(CSCoverSheetViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)scrollViewDidEndScrolling:(id)a3
{
  v4.receiver = self;
  v4.super_class = CSCoverSheetViewAccessibility;
  [(CSCoverSheetViewAccessibility *)&v4 scrollViewDidEndScrolling:a3];
  [(CSCoverSheetViewAccessibility *)self _axAdjustObscuredContent];
}

- (void)setModalPresentationView:(id)a3
{
  v5.receiver = self;
  v5.super_class = CSCoverSheetViewAccessibility;
  [(CSCoverSheetViewAccessibility *)&v5 setModalPresentationView:?];
  [(CSCoverSheetViewAccessibility *)self _axAdjustObscuredContent];
  if (!a3)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
  }
}

- (BOOL)accessibilityScroll:(int64_t)a3
{
  v32 = 0;
  v5 = [(CSCoverSheetViewAccessibility *)self safeValueForKey:@"scrollView"];
  v6 = __UIAccessibilitySafeClass();

  v7 = [MEMORY[0x29EDBDFA8] server];
  if (![v7 isScreenLockedWithPasscode:0])
  {

    goto LABEL_5;
  }

  v8 = [v6 _accessibilityViewIsVisible];

  if (v8)
  {
LABEL_5:
    v32 = 0;
    v10 = [(CSCoverSheetViewAccessibility *)self _accessibilityViewController];
    v11 = [v10 safeValueForKeyPath:@"mainPageContentViewController._combinedListViewController.notificationListScrollView"];
    v12 = __UIAccessibilitySafeClass();

    [v12 contentOffset];
    if (a3 == 3 && v13 <= 0.0)
    {
      v9 = [(CSCoverSheetViewAccessibility *)self accessibilityScrollUpPage];
LABEL_47:

      goto LABEL_48;
    }

    v14 = [(CSCoverSheetViewAccessibility *)self _accessibilityIsRTL];
    v15 = [v6 safeUnsignedIntegerForKey:@"currentPageIndex"];
    v32 = 0;
    objc_opt_class();
    v16 = [(CSCoverSheetViewAccessibility *)self _accessibilityViewController];
    v17 = __UIAccessibilityCastAsSafeCategory();

    v18 = v14 ^ 1;
    if (a3 == 2)
    {
      v19 = v14 ^ 1;
    }

    else
    {
      v19 = 0;
    }

    if ((v19 & 1) != 0 || a3 == 1 && ((v14 ^ 1) & 1) == 0)
    {
      if ([v17 _axIsTodayViewShowing])
      {
        [v17 _axDismissTodayView];
LABEL_20:
        v9 = 0;
LABEL_46:

        goto LABEL_47;
      }

      v32 = 0;
      objc_opt_class();
      v20 = [v6 safeValueForKey:@"pageViews"];
      v21 = __UIAccessibilityCastAsClass();

      v22 = [v21 count] - 1;
      if (v15 >= v22)
      {
        v23 = v15;
      }

      else
      {
        v23 = v15 + 1;
      }

      goto LABEL_19;
    }

    if (a3 != 2)
    {
      v18 = 1;
    }

    v24 = v14 ^ 1;
    if (a3 != 1)
    {
      v24 = 0;
    }

    if ((v24 & 1) != 0 || (v18 & 1) == 0)
    {
      if (v15)
      {
        v23 = v15 - 1;
        goto LABEL_32;
      }

      if ([v17 _axIsCapabilityRestricted:64])
      {
        v23 = 0;
LABEL_19:
        if (v23 == v15)
        {
          goto LABEL_20;
        }

LABEL_32:
        IsPad = AXDeviceIsPad();
        if (v23 != 1 || (IsPad & 1) == 0)
        {
          if (!v23)
          {
            v26 = @"today.visible.key";
            goto LABEL_37;
          }

          if (v23 != 2)
          {
            v27 = &stru_2A2185898;
            goto LABEL_38;
          }
        }

        v26 = @"camera.visible";
LABEL_37:
        v27 = accessibilitySBLocalizedString(v26);
LABEL_38:
        UIAccessibilityPostNotification(*MEMORY[0x29EDC7EF0], v27);
        v9 = [v6 scrollToPageAtIndex:v23 animated:1];

        goto LABEL_46;
      }

      v28 = [v17 _axShowTodayView];
    }

    else if ([(CSCoverSheetViewAccessibility *)self _axAllowNotificationsRevealPolicy])
    {
      if ([(CSCoverSheetViewAccessibility *)self _axHandleShowNotificationsAction])
      {
        v9 = 1;
        goto LABEL_46;
      }

      v30.receiver = self;
      v30.super_class = CSCoverSheetViewAccessibility;
      v28 = [(CSCoverSheetViewAccessibility *)&v30 accessibilityScroll:a3];
    }

    else
    {
      v31.receiver = self;
      v31.super_class = CSCoverSheetViewAccessibility;
      v28 = [(CSCoverSheetViewAccessibility *)&v31 accessibilityScroll:a3];
    }

    v9 = v28;
    goto LABEL_46;
  }

  v9 = 0;
LABEL_48:

  return v9;
}

- (BOOL)accessibilityScrollUpPage
{
  v2 = [MEMORY[0x29EDBDFA8] server];
  [v2 toggleSpotlight];

  v3 = [MEMORY[0x29EDBDFA8] server];
  v4 = [v3 isSpotlightVisible];

  if (v4)
  {
    v5 = accessibilityLocalizedString(@"spotlight.visible");
    UIAccessibilitySpeakAndDoNotBeInterrupted();
  }

  return v4;
}

- (id)_childFocusViews
{
  v21 = *MEMORY[0x29EDCA608];
  v18.receiver = self;
  v18.super_class = CSCoverSheetViewAccessibility;
  v3 = [(CSCoverSheetViewAccessibility *)&v18 _childFocusViews];
  if ([(CSCoverSheetViewAccessibility *)self _accessibilityIsFKARunningForFocusItem])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = [v3 reverseObjectEnumerator];
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          v10 = [(CSCoverSheetViewAccessibility *)self safeValueForKey:@"modalPresentationView"];

          if (v9 == v10)
          {
            v19 = v9;
            v11 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v19 count:1];

            goto LABEL_13;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v14 objects:v20 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }
  }

  v11 = v3;
LABEL_13:

  v12 = *MEMORY[0x29EDCA608];

  return v11;
}

- (id)_axShowNotificationsElement
{
  v3 = [(CSCoverSheetViewAccessibility *)self __axShowNotificationsElement];

  if (!v3)
  {
    v4 = [objc_alloc(MEMORY[0x29EDC78F8]) initWithAccessibilityContainer:self];
    v5 = accessibilitySBLocalizedString(@"show.notifications");
    [v4 setAccessibilityLabel:v5];

    [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
    objc_initWeak(&location, self);
    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 3221225472;
    v10[2] = __60__CSCoverSheetViewAccessibility__axShowNotificationsElement__block_invoke;
    v10[3] = &unk_29F2B9368;
    objc_copyWeak(&v11, &location);
    [v4 _setAccessibilityFrameBlock:v10];
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 3221225472;
    v8[2] = __60__CSCoverSheetViewAccessibility__axShowNotificationsElement__block_invoke_2;
    v8[3] = &unk_29F2B9390;
    objc_copyWeak(&v9, &location);
    [v4 _setAccessibilityActivateBlock:v8];
    [(CSCoverSheetViewAccessibility *)self __axSetShowNotificationsElement:v4];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  v6 = [(CSCoverSheetViewAccessibility *)self __axShowNotificationsElement];

  return v6;
}

double __60__CSCoverSheetViewAccessibility__axShowNotificationsElement__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained accessibilityFrame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v11.origin.x = v3;
  v11.origin.y = v5;
  v11.size.width = v7;
  v11.size.height = v9;
  CGRectGetMidY(v11);
  return v3;
}

uint64_t __60__CSCoverSheetViewAccessibility__axShowNotificationsElement__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _axHandleShowNotificationsAction];

  return v2;
}

- (BOOL)_axHandleShowNotificationsAction
{
  v3 = [(CSCoverSheetViewAccessibility *)self _axNotificationsMasterList];
  if (([v3 safeBoolForKey:@"isNotificationHistoryRevealed"] & 1) != 0 || (objc_msgSend(v3, "safeValueForKey:", @"historySectionList"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "safeUnsignedIntegerForKey:", @"notificationCount"), v4, !v5))
  {
    v7 = AXLogAppAccessibility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_29BD70000, v7, OS_LOG_TYPE_DEFAULT, "Cannot show notifications. revealNotificationHistory: failed", v9, 2u);
    }

    v6 = 0;
  }

  else
  {
    v15 = MEMORY[0x29EDCA5F8];
    v16 = 3221225472;
    v17 = __65__CSCoverSheetViewAccessibility__axHandleShowNotificationsAction__block_invoke;
    v18 = &unk_29F2B9230;
    v19 = self;
    AXPerformSafeBlock();
    v10 = MEMORY[0x29EDCA5F8];
    v11 = 3221225472;
    v12 = __65__CSCoverSheetViewAccessibility__axHandleShowNotificationsAction__block_invoke_2;
    v13 = &unk_29F2B9230;
    v14 = v3;
    AXPerformBlockOnMainThreadAfterDelay();

    v6 = 1;
  }

  return v6;
}

void __65__CSCoverSheetViewAccessibility__axHandleShowNotificationsAction__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _axNotificationsStructuredListViewController];
  [v1 revealNotificationHistory:1 animated:0];
}

void __65__CSCoverSheetViewAccessibility__axHandleShowNotificationsAction__block_invoke_2(uint64_t a1)
{
  v1 = *MEMORY[0x29EDC7ED8];
  v2 = [*(a1 + 32) safeValueForKey:@"rootListView"];
  UIAccessibilityPostNotification(v1, v2);
}

- (id)_accessibilityAdditionalElements
{
  v14[1] = *MEMORY[0x29EDCA608];
  v3 = [(CSCoverSheetViewAccessibility *)self _axNotificationsMasterList];
  v4 = [v3 safeValueForKey:@"historySectionList"];
  if ([v4 safeUnsignedIntegerForKey:@"notificationCount"])
  {
    v5 = [(CSCoverSheetViewAccessibility *)self _axAllowNotificationsRevealPolicy];
  }

  else
  {
    v5 = 0;
  }

  if (![v3 safeUnsignedIntegerForKey:@"totalNotificationCount"] || (objc_msgSend(v3, "safeBoolForKey:", @"isNotificationHistoryRevealed") & 1) != 0)
  {
    goto LABEL_12;
  }

  v6 = [(CSCoverSheetViewAccessibility *)self _accessibilityViewController];
  if ([v6 safeBoolForKey:@"isPasscodeLockVisible"])
  {
    goto LABEL_11;
  }

  v7 = [(CSCoverSheetViewAccessibility *)self safeUIViewForKey:@"dateView"];
  if (([v7 _accessibilityViewIsVisible] & v5 & 1) == 0)
  {

LABEL_11:
    goto LABEL_12;
  }

  IsSwitchControlRunning = UIAccessibilityIsSwitchControlRunning();

  if (!IsSwitchControlRunning)
  {
    v9 = [(CSCoverSheetViewAccessibility *)self _axShowNotificationsElement];
    v14[0] = v9;
    v10 = [MEMORY[0x29EDB8D80] arrayWithObjects:v14 count:1];

    goto LABEL_13;
  }

LABEL_12:
  v13.receiver = self;
  v13.super_class = CSCoverSheetViewAccessibility;
  v10 = [(CSCoverSheetViewAccessibility *)&v13 _accessibilityAdditionalElements];
LABEL_13:

  v11 = *MEMORY[0x29EDCA608];

  return v10;
}

- (id)_axNotificationsMasterList
{
  v2 = [(CSCoverSheetViewAccessibility *)self _axNotificationsStructuredListViewController];
  v3 = [v2 safeValueForKey:@"listModel"];

  return v3;
}

- (BOOL)_axAllowNotificationsRevealPolicy
{
  v2 = [(CSCoverSheetViewAccessibility *)self safeValueForKeyPath:@"delegate.mainPageContentViewController._combinedListViewController"];
  if ([v2 safeBoolForKey:@"_allowNotificationsRevealPolicy"])
  {
    v3 = [v2 safeBoolForKey:@"_shouldPreventNotificationHistoryRevealForActiveDNDState"] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

@end