@interface CSCoverSheetViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axAllowNotificationsRevealPolicy;
- (BOOL)_axHandleShowNotificationsAction;
- (BOOL)accessibilityScroll:(int64_t)scroll;
- (BOOL)accessibilityScrollUpPage;
- (id)_accessibilityAdditionalElements;
- (id)_axNotificationsMasterList;
- (id)_axShowNotificationsElement;
- (id)_childFocusViews;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAdjustObscuredContent;
- (void)layoutSubviews;
- (void)scrollViewDidEndScrolling:(id)scrolling;
- (void)setModalPresentationView:(id)view;
@end

@implementation CSCoverSheetViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CSCoverSheetView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"UIView" hasInstanceMethod:@"_childFocusViews" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CSCoverSheetView" hasInstanceMethod:@"modalPresentationView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CSCoverSheetView" hasInstanceMethod:@"slideableContentView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CSCoverSheetView" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [validationsCopy validateClass:@"CSCoverSheetView" hasInstanceMethod:@"setModalPresentationView:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"CSCoverSheetView" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"CSCoverSheetView" hasInstanceMethod:@"resetScrollViewToMainPageAnimated: withCompletion:" withFullSignature:{"B", "B", "@?", 0}];
  [validationsCopy validateClass:@"CSCoverSheetView" hasInstanceMethod:@"scrollViewDidEndScrolling:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"CSCoverSheetView" hasInstanceMethod:@"scrollView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CSCoverSheetViewController" hasInstanceMethod:@"scrollPanGestureDidUpdate:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"SBFPagedScrollView" hasInstanceMethod:@"scrollToPageAtIndex:animated:" withFullSignature:{"B", "Q", "B", 0}];
  [validationsCopy validateClass:@"SBFPagedScrollView" hasInstanceMethod:@"pageViews" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBFPagedScrollView" hasInstanceMethod:@"currentPageIndex" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"CSCoverSheetViewController" hasInstanceMethod:@"mainPageContentViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CSMainPageContentViewController" hasInstanceVariable:@"_combinedListViewController" withType:"CSCombinedListViewController"];
  [validationsCopy validateClass:@"CSCombinedListViewController" hasInstanceMethod:@"notificationListScrollView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CSCoverSheetView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CSCoverSheetViewController" hasInstanceMethod:@"mainPageContentViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CSMainPageContentViewController" hasInstanceVariable:@"_combinedListViewController" withType:"CSCombinedListViewController"];
  [validationsCopy validateClass:@"CSCombinedListViewController" hasInstanceVariable:@"_structuredListViewController" withType:"NCNotificationStructuredListViewController"];
  [validationsCopy validateClass:@"NCNotificationStructuredListViewController" hasInstanceMethod:@"listModel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCNotificationRootList" hasInstanceMethod:@"totalNotificationCount" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"NCNotificationRootModernList" hasInstanceMethod:@"isNotificationHistoryRevealed" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"NCNotificationRootList" hasInstanceMethod:@"rootListView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCNotificationRootList" hasInstanceMethod:@"historySectionList" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCNotificationCombinedSectionList" hasInstanceMethod:@"notificationCount" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"CSCoverSheetViewController" hasInstanceMethod:@"isPasscodeLockVisible" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CSCoverSheetView" hasInstanceMethod:@"dateView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCNotificationStructuredListViewController" hasInstanceMethod:@"revealNotificationHistory:animated:" withFullSignature:{"v", "B", "B", 0}];
  [validationsCopy validateClass:@"CSCombinedListViewController" hasInstanceMethod:@"_allowNotificationsRevealPolicy" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CSCombinedListViewController" hasInstanceMethod:@"_shouldPreventNotificationHistoryRevealForActiveDNDState" withFullSignature:{"B", 0}];
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

- (void)scrollViewDidEndScrolling:(id)scrolling
{
  v4.receiver = self;
  v4.super_class = CSCoverSheetViewAccessibility;
  [(CSCoverSheetViewAccessibility *)&v4 scrollViewDidEndScrolling:scrolling];
  [(CSCoverSheetViewAccessibility *)self _axAdjustObscuredContent];
}

- (void)setModalPresentationView:(id)view
{
  v5.receiver = self;
  v5.super_class = CSCoverSheetViewAccessibility;
  [(CSCoverSheetViewAccessibility *)&v5 setModalPresentationView:?];
  [(CSCoverSheetViewAccessibility *)self _axAdjustObscuredContent];
  if (!view)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
  }
}

- (BOOL)accessibilityScroll:(int64_t)scroll
{
  v32 = 0;
  v5 = [(CSCoverSheetViewAccessibility *)self safeValueForKey:@"scrollView"];
  v6 = __UIAccessibilitySafeClass();

  server = [MEMORY[0x29EDBDFA8] server];
  if (![server isScreenLockedWithPasscode:0])
  {

    goto LABEL_5;
  }

  _accessibilityViewIsVisible = [v6 _accessibilityViewIsVisible];

  if (_accessibilityViewIsVisible)
  {
LABEL_5:
    v32 = 0;
    _accessibilityViewController = [(CSCoverSheetViewAccessibility *)self _accessibilityViewController];
    v11 = [_accessibilityViewController safeValueForKeyPath:@"mainPageContentViewController._combinedListViewController.notificationListScrollView"];
    v12 = __UIAccessibilitySafeClass();

    [v12 contentOffset];
    if (scroll == 3 && v13 <= 0.0)
    {
      accessibilityScrollUpPage = [(CSCoverSheetViewAccessibility *)self accessibilityScrollUpPage];
LABEL_47:

      goto LABEL_48;
    }

    _accessibilityIsRTL = [(CSCoverSheetViewAccessibility *)self _accessibilityIsRTL];
    v15 = [v6 safeUnsignedIntegerForKey:@"currentPageIndex"];
    v32 = 0;
    objc_opt_class();
    _accessibilityViewController2 = [(CSCoverSheetViewAccessibility *)self _accessibilityViewController];
    v17 = __UIAccessibilityCastAsSafeCategory();

    v18 = _accessibilityIsRTL ^ 1;
    if (scroll == 2)
    {
      v19 = _accessibilityIsRTL ^ 1;
    }

    else
    {
      v19 = 0;
    }

    if ((v19 & 1) != 0 || scroll == 1 && ((_accessibilityIsRTL ^ 1) & 1) == 0)
    {
      if ([v17 _axIsTodayViewShowing])
      {
        [v17 _axDismissTodayView];
LABEL_20:
        accessibilityScrollUpPage = 0;
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

    if (scroll != 2)
    {
      v18 = 1;
    }

    v24 = _accessibilityIsRTL ^ 1;
    if (scroll != 1)
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
        accessibilityScrollUpPage = [v6 scrollToPageAtIndex:v23 animated:1];

        goto LABEL_46;
      }

      _axShowTodayView = [v17 _axShowTodayView];
    }

    else if ([(CSCoverSheetViewAccessibility *)self _axAllowNotificationsRevealPolicy])
    {
      if ([(CSCoverSheetViewAccessibility *)self _axHandleShowNotificationsAction])
      {
        accessibilityScrollUpPage = 1;
        goto LABEL_46;
      }

      v30.receiver = self;
      v30.super_class = CSCoverSheetViewAccessibility;
      _axShowTodayView = [(CSCoverSheetViewAccessibility *)&v30 accessibilityScroll:scroll];
    }

    else
    {
      v31.receiver = self;
      v31.super_class = CSCoverSheetViewAccessibility;
      _axShowTodayView = [(CSCoverSheetViewAccessibility *)&v31 accessibilityScroll:scroll];
    }

    accessibilityScrollUpPage = _axShowTodayView;
    goto LABEL_46;
  }

  accessibilityScrollUpPage = 0;
LABEL_48:

  return accessibilityScrollUpPage;
}

- (BOOL)accessibilityScrollUpPage
{
  server = [MEMORY[0x29EDBDFA8] server];
  [server toggleSpotlight];

  server2 = [MEMORY[0x29EDBDFA8] server];
  isSpotlightVisible = [server2 isSpotlightVisible];

  if (isSpotlightVisible)
  {
    v5 = accessibilityLocalizedString(@"spotlight.visible");
    UIAccessibilitySpeakAndDoNotBeInterrupted();
  }

  return isSpotlightVisible;
}

- (id)_childFocusViews
{
  v21 = *MEMORY[0x29EDCA608];
  v18.receiver = self;
  v18.super_class = CSCoverSheetViewAccessibility;
  _childFocusViews = [(CSCoverSheetViewAccessibility *)&v18 _childFocusViews];
  if ([(CSCoverSheetViewAccessibility *)self _accessibilityIsFKARunningForFocusItem])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    reverseObjectEnumerator = [_childFocusViews reverseObjectEnumerator];
    v5 = [reverseObjectEnumerator countByEnumeratingWithState:&v14 objects:v20 count:16];
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
            objc_enumerationMutation(reverseObjectEnumerator);
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

        v6 = [reverseObjectEnumerator countByEnumeratingWithState:&v14 objects:v20 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }
  }

  v11 = _childFocusViews;
LABEL_13:

  v12 = *MEMORY[0x29EDCA608];

  return v11;
}

- (id)_axShowNotificationsElement
{
  __axShowNotificationsElement = [(CSCoverSheetViewAccessibility *)self __axShowNotificationsElement];

  if (!__axShowNotificationsElement)
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

  __axShowNotificationsElement2 = [(CSCoverSheetViewAccessibility *)self __axShowNotificationsElement];

  return __axShowNotificationsElement2;
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
  _axNotificationsMasterList = [(CSCoverSheetViewAccessibility *)self _axNotificationsMasterList];
  if (([_axNotificationsMasterList safeBoolForKey:@"isNotificationHistoryRevealed"] & 1) != 0 || (objc_msgSend(_axNotificationsMasterList, "safeValueForKey:", @"historySectionList"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "safeUnsignedIntegerForKey:", @"notificationCount"), v4, !v5))
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
    selfCopy = self;
    AXPerformSafeBlock();
    v10 = MEMORY[0x29EDCA5F8];
    v11 = 3221225472;
    v12 = __65__CSCoverSheetViewAccessibility__axHandleShowNotificationsAction__block_invoke_2;
    v13 = &unk_29F2B9230;
    v14 = _axNotificationsMasterList;
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
  _axNotificationsMasterList = [(CSCoverSheetViewAccessibility *)self _axNotificationsMasterList];
  v4 = [_axNotificationsMasterList safeValueForKey:@"historySectionList"];
  if ([v4 safeUnsignedIntegerForKey:@"notificationCount"])
  {
    _axAllowNotificationsRevealPolicy = [(CSCoverSheetViewAccessibility *)self _axAllowNotificationsRevealPolicy];
  }

  else
  {
    _axAllowNotificationsRevealPolicy = 0;
  }

  if (![_axNotificationsMasterList safeUnsignedIntegerForKey:@"totalNotificationCount"] || (objc_msgSend(_axNotificationsMasterList, "safeBoolForKey:", @"isNotificationHistoryRevealed") & 1) != 0)
  {
    goto LABEL_12;
  }

  _accessibilityViewController = [(CSCoverSheetViewAccessibility *)self _accessibilityViewController];
  if ([_accessibilityViewController safeBoolForKey:@"isPasscodeLockVisible"])
  {
    goto LABEL_11;
  }

  v7 = [(CSCoverSheetViewAccessibility *)self safeUIViewForKey:@"dateView"];
  if (([v7 _accessibilityViewIsVisible] & _axAllowNotificationsRevealPolicy & 1) == 0)
  {

LABEL_11:
    goto LABEL_12;
  }

  IsSwitchControlRunning = UIAccessibilityIsSwitchControlRunning();

  if (!IsSwitchControlRunning)
  {
    _axShowNotificationsElement = [(CSCoverSheetViewAccessibility *)self _axShowNotificationsElement];
    v14[0] = _axShowNotificationsElement;
    _accessibilityAdditionalElements = [MEMORY[0x29EDB8D80] arrayWithObjects:v14 count:1];

    goto LABEL_13;
  }

LABEL_12:
  v13.receiver = self;
  v13.super_class = CSCoverSheetViewAccessibility;
  _accessibilityAdditionalElements = [(CSCoverSheetViewAccessibility *)&v13 _accessibilityAdditionalElements];
LABEL_13:

  v11 = *MEMORY[0x29EDCA608];

  return _accessibilityAdditionalElements;
}

- (id)_axNotificationsMasterList
{
  _axNotificationsStructuredListViewController = [(CSCoverSheetViewAccessibility *)self _axNotificationsStructuredListViewController];
  v3 = [_axNotificationsStructuredListViewController safeValueForKey:@"listModel"];

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