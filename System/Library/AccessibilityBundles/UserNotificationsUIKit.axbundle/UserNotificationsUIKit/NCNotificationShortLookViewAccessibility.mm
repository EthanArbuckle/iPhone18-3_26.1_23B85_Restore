@interface NCNotificationShortLookViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityBannerIsSticky;
- (BOOL)_accessibilityResetBannerTimer;
- (BOOL)_axDismiss;
- (BOOL)_axIsGrouped;
- (BOOL)_axShowLongLook;
- (BOOL)accessibilityScroll:(int64_t)a3;
- (BOOL)isAccessibilityElement;
- (id)_accessibilityListCellParent;
- (id)_accessibilityListViewParent;
- (id)_axNCNotificationViewController;
- (id)accessibilityCustomActions;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
- (void)_axPerformBlockOnNotificationController:(id)a3;
- (void)accessibilityElementDidBecomeFocused;
- (void)accessibilityElementDidLoseFocus;
- (void)setTitle:(id)a3;
@end

@implementation NCNotificationShortLookViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PLPlatterView"];
  [v3 validateClass:@"PLPlatterHeaderContentView"];
  [v3 validateClass:@"NCDimmableView"];
  [v3 validateClass:@"NCNotificationContentView"];
  [v3 validateClass:@"NCNotificationViewController"];
  [v3 validateClass:@"NCNotificationRequestContentProvider"];
  [v3 validateClass:@"NCNotificationStructuredListViewController"];
  [v3 validateClass:@"NCNotificationSeamlessContentView"];
  [v3 validateClass:@"NCNotificationListView"];
  [v3 validateClass:@"NCNotificationShortLookView" hasInstanceMethod:@"setTitle:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"UILabel" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NCNotificationViewController" hasInstanceMethod:@"staticContentProvider" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NCNotificationRequestContentProvider" hasInstanceMethod:@"notificationRequest" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NCNotificationRequest" hasInstanceMethod:@"defaultEnvironmentActions" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NCNotificationAction" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NCNotificationViewController" hasInstanceMethod:@"_canPan" withFullSignature:{"B", 0}];
  [v3 validateClass:@"NCNotificationViewController" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  if (AXProcessIsSpringBoard())
  {
    [v3 validateClass:@"SBNotificationBannerDestination" hasInstanceMethod:@"_dismissPresentedBannerAnimated:reason:forceIfSticky:" withFullSignature:{"v", "B", "@", "B", 0}];
  }

  [v3 validateClass:@"NCNotificationViewController" hasInstanceVariable:@"_notificationRequest" withType:"NCNotificationRequest"];
  [v3 validateClass:@"NCNotificationShortLookView" hasInstanceVariable:@"_notificationContentView" withType:"UIView<NCNotificationContentDisplaying>"];
  [v3 validateClass:@"PLPlatterHeaderContentView" hasInstanceVariable:@"_dateLabel" withType:"UILabel<BSUIDateLabel>"];
  [v3 validateClass:@"PLPlatterHeaderContentView" hasInstanceMethod:@"_titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PLPlatterHeaderContentView" hasInstanceMethod:@"_utilityButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NCNotificationRequest" hasInstanceMethod:@"options" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NCNotificationOptions" hasInstanceMethod:@"dismissAutomatically" withFullSignature:{"B", 0}];
  [v3 validateClass:@"NCNotificationShortLookViewController" hasInstanceMethod:@"presentLongLookAnimated:trigger:completion:" withFullSignature:{"v", "B", "q", "@?", 0}];
  [v3 validateClass:@"NCNotificationShortLookView" hasInstanceVariable:@"_auxiliaryOptionsView" withType:"NCAuxiliaryOptionsView"];
  [v3 validateClass:@"NCAuxiliaryOptionsView" hasInstanceMethod:@"auxiliaryOptionsVisible" withFullSignature:{"B", 0}];
  [v3 validateClass:@"NCNotificationListView" hasInstanceMethod:@"isGrouped" withFullSignature:{"B", 0}];
  [v3 validateClass:@"NCNotificationListView" hasInstanceMethod:@"count" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"NCNotificationRequest" hasInstanceMethod:@"sectionIdentifier" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NCNotificationListCell"];
  [v3 validateClass:@"NCNotificationListView" hasInstanceMethod:@"model" withFullSignature:{"@", 0}];
}

- (BOOL)_accessibilityBannerIsSticky
{
  v2 = [(NCNotificationShortLookViewAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Ncdimmableview_0.isa)];
  v3 = [MEMORY[0x29EDC7DA8] viewControllerForView:v2];
  v4 = [v3 safeValueForKey:@"_notificationRequest"];
  v5 = __UIAccessibilitySafeClass();

  v6 = [v5 safeValueForKey:@"options"];
  v7 = __UIAccessibilitySafeClass();

  if (v7)
  {
    v8 = [v7 safeBoolForKey:@"dismissAutomatically"] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)isAccessibilityElement
{
  v2 = [(NCNotificationShortLookViewAccessibility *)self safeValueForKey:@"_auxiliaryOptionsView"];
  v3 = [v2 safeBoolForKey:@"auxiliaryOptionsVisible"];

  return v3 ^ 1;
}

- (id)accessibilityLabel
{
  if ([(NCNotificationShortLookViewAccessibility *)self _axIsGrouped])
  {
    v3 = accessibilityLocalizedString(@"notification.grouped");
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NCNotificationShortLookViewAccessibility *)self _accessibilityListCellParent];
  NSClassFromString(&cfstr_Ncnotification_36.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(NCNotificationShortLookViewAccessibility *)self _accessibilityFindViewAncestor:&__block_literal_global_8 startWithSelf:1];
    if ([v6 count] < 2)
    {
      v9 = 0;
    }

    else
    {
      objc_opt_class();
      v7 = [(NCNotificationShortLookViewAccessibility *)self _accessibilityListCellParent];
      v8 = __UIAccessibilityCastAsSafeCategory();

      if ([v8 _axIsInCollapsedStack])
      {
        v9 = accessibilityLocalizedString(@"notification.collapsed.stack");
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = [(NCNotificationShortLookViewAccessibility *)self _accessibilityDescendantOfType:NSClassFromString(&cfstr_Plplatterheade.isa)];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 safeValueForKey:@"_dateLabel"];
    v13 = [v12 accessibilityLabel];
  }

  else
  {
    v13 = 0;
  }

  v14 = [(NCNotificationShortLookViewAccessibility *)self safeValueForKey:@"_notificationContentView"];
  NSClassFromString(&cfstr_Ncnotification_40.isa);
  if (objc_opt_isKindOfClass() & 1) != 0 || (NSClassFromString(&cfstr_Ncnotification_31.isa), (objc_opt_isKindOfClass()))
  {
    v15 = [v14 accessibilityLabel];
  }

  else
  {
    v15 = 0;
  }

  v16 = [(NCNotificationShortLookViewAccessibility *)self _axShortViewTitle];
  v17 = __UIAXStringForVariables();

  return v17;
}

uint64_t __62__NCNotificationShortLookViewAccessibility_accessibilityLabel__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Ncnotification_46.isa);
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 model];
    v4 = [v3 isEqualToString:@"NCNotificationStructuredSectionList"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)accessibilityIdentifier
{
  v7.receiver = self;
  v7.super_class = NCNotificationShortLookViewAccessibility;
  v2 = [(NCNotificationShortLookViewAccessibility *)&v7 accessibilityIdentifier];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"NotificationShortLookView";
  }

  v5 = v4;

  return v4;
}

- (BOOL)_axShowLongLook
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __59__NCNotificationShortLookViewAccessibility__axShowLongLook__block_invoke;
  v4[3] = &unk_29F3171C8;
  v4[4] = &v5;
  [(NCNotificationShortLookViewAccessibility *)self _axPerformBlockOnNotificationController:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __59__NCNotificationShortLookViewAccessibility__axShowLongLook__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v5 = __UIAccessibilityCastAsClass();
  v6 = *(a1 + 32);
  v4 = v5;
  AXPerformSafeBlock();
}

uint64_t __59__NCNotificationShortLookViewAccessibility__axShowLongLook__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) presentLongLookAnimated:1 trigger:6 completion:0];
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

- (BOOL)_axDismiss
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  AXPerformSafeBlock();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

void __54__NCNotificationShortLookViewAccessibility__axDismiss__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _axNCNotificationViewController];
  v3 = [v2 safeValueForKey:@"delegate"];

  if (objc_opt_respondsToSelector())
  {
    [v3 _dismissPresentedBannerAnimated:1 reason:@"Accessibility" forceIfSticky:1];
    [*(a1 + 32) accessibilityElementDidLoseFocus];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (id)accessibilityCustomActions
{
  v3 = [(NCNotificationShortLookViewAccessibility *)self _axNCNotificationViewController];
  NSClassFromString(&cfstr_Ncnotification_38.isa);
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 safeValueForKey:@"_notificationRequest"];
    v5 = [v4 safeStringForKey:@"sectionIdentifier"];
  }

  else
  {
    v5 = 0;
  }

  if ([v5 isEqualToString:@"com.apple.MobileSMS"])
  {
    v6 = @"reply.action";
  }

  else
  {
    v6 = @"more.action";
  }

  v7 = accessibilityLocalizedString(v6);
  v8 = [objc_alloc(MEMORY[0x29EDC78E0]) initWithName:v7 target:self selector:sel__axMore_];
  v9 = [(NCNotificationShortLookViewAccessibility *)self _accessibilityListViewParent];

  if (v9)
  {
    v10 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{1, v8}];
  }

  else
  {
    objc_initWeak(&location, self);
    v11 = objc_alloc(MEMORY[0x29EDC78E0]);
    v12 = accessibilityLocalizedString(@"dismiss");
    v15 = MEMORY[0x29EDCA5F8];
    v16 = 3221225472;
    v17 = __70__NCNotificationShortLookViewAccessibility_accessibilityCustomActions__block_invoke;
    v18 = &unk_29F316FB0;
    objc_copyWeak(&v19, &location);
    v13 = [v11 initWithName:v12 actionHandler:&v15];

    [v13 setAccessibilityIdentifier:@"AXNotificationDismissAction"];
    v10 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{2, v8, v13, v15, v16, v17, v18}];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v10;
}

uint64_t __70__NCNotificationShortLookViewAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _axDismiss];

  return 1;
}

- (void)accessibilityElementDidBecomeFocused
{
  v2 = [(NCNotificationShortLookViewAccessibility *)self _axNCNotificationViewController];
  [v2 _axNotifyWillBeginUserInteraction:1];
}

- (void)accessibilityElementDidLoseFocus
{
  v3 = [(NCNotificationShortLookViewAccessibility *)self _axNCNotificationViewController];
  [v3 _axNotifyWillBeginUserInteraction:1];

  v4 = [(NCNotificationShortLookViewAccessibility *)self _axNCNotificationViewController];
  [v4 _axNotifyDidEndUserInteraction];
}

- (BOOL)_accessibilityResetBannerTimer
{
  v3 = [(NCNotificationShortLookViewAccessibility *)self _axNCNotificationViewController];
  [v3 _axNotifyWillBeginUserInteraction:1];

  v4 = [(NCNotificationShortLookViewAccessibility *)self _axNCNotificationViewController];
  [v4 _axNotifyDidEndUserInteraction];

  return 1;
}

- (id)_accessibilityListViewParent
{
  v2 = [(NCNotificationShortLookViewAccessibility *)self _accessibilityListCellParent];
  v3 = [v2 superview];

  return v3;
}

- (id)_accessibilityListCellParent
{
  objc_opt_class();
  v3 = [(NCNotificationShortLookViewAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Ncnotification_36.isa)];
  v4 = __UIAccessibilityCastAsClass();

  return v4;
}

- (id)_axNCNotificationViewController
{
  v2 = [(NCNotificationShortLookViewAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Ncdimmableview_0.isa)];
  v3 = [MEMORY[0x29EDC7DA8] viewControllerForView:v2];
  NSClassFromString(&cfstr_Ncnotification_38.isa);
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (BOOL)accessibilityScroll:(int64_t)a3
{
  if (a3 != 4)
  {
    if (a3 == 3)
    {
      v5 = [(NCNotificationShortLookViewAccessibility *)self _axNCNotificationViewController];
      v6 = [v5 safeBoolForKey:@"_canPan"];

      if (v6)
      {

        return [(NCNotificationShortLookViewAccessibility *)self _axShowLongLook];
      }
    }

LABEL_11:
    v10.receiver = self;
    v10.super_class = NCNotificationShortLookViewAccessibility;
    return [(NCNotificationShortLookViewAccessibility *)&v10 accessibilityScroll:a3];
  }

  v8 = [(NCNotificationShortLookViewAccessibility *)self _axNCNotificationViewController];
  v9 = [v8 safeBoolForKey:@"_canPan"];

  if (!v9)
  {
    goto LABEL_11;
  }

  return [(NCNotificationShortLookViewAccessibility *)self _axDismiss];
}

- (BOOL)_axIsGrouped
{
  v2 = [(NCNotificationShortLookViewAccessibility *)self _accessibilityListViewParent];
  if ([v2 safeBoolForKey:@"isGrouped"])
  {
    v3 = [v2 safeUnsignedIntegerForKey:@"count"] > 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_axPerformBlockOnNotificationController:(id)a3
{
  v5 = a3;
  v4 = [(NCNotificationShortLookViewAccessibility *)self _axNCNotificationViewController];
  NSClassFromString(&cfstr_Ncnotification_38.isa);
  if (objc_opt_isKindOfClass())
  {
    v5[2](v5, v4);
  }
}

- (void)setTitle:(id)a3
{
  v5.receiver = self;
  v5.super_class = NCNotificationShortLookViewAccessibility;
  v4 = a3;
  [(NCNotificationShortLookViewAccessibility *)&v5 setTitle:v4];
  [(NCNotificationShortLookViewAccessibility *)self _axSetShortViewTitle:v4, v5.receiver, v5.super_class];
}

@end