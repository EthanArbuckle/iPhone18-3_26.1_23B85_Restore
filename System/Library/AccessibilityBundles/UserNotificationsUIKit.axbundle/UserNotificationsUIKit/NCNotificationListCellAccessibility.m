@interface NCNotificationListCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityIsAwayAlertElement;
- (BOOL)_axIsCollapsedGroup;
- (BOOL)_axIsInCollapsedStack;
- (BOOL)_axIsLeadingView;
- (BOOL)accessibilityActivate;
- (BOOL)accessibilityElementsHidden;
- (BOOL)isAccessibilityElement;
- (id)_accessibilityCellActions;
- (id)_accessibilityCellButtons;
- (id)_accessibilityListViewParent;
- (id)_accessibilityOpenAction;
- (id)_accessibilitySupplementaryFooterViews;
- (id)_axLookView;
- (id)accessibilityCustomActions;
- (id)accessibilityHint;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
- (id)automationElements;
- (id)axCustomActionsForActions:(id)a3;
- (void)_axLookView;
@end

@implementation NCNotificationListCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NCNotificationViewController"];
  [v3 validateClass:@"NCNotificationShortLookView"];
  [v3 validateClass:@"NCNotificationRichShortLookView"];
  [v3 validateClass:@"NCNotificationShortLookViewController"];
  [v3 validateClass:@"NCNotificationListView"];
  [v3 validateProtocol:@"NCAuxiliaryOptionsSupporting" hasRequiredInstanceMethod:@"auxiliaryOptionButtons"];
  [v3 validateClass:@"NCAuxiliaryOptionsView" conformsToProtocol:@"NCAuxiliaryOptionsSupporting"];
  [v3 validateClass:@"UILabel" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NCNotificationListCell" hasInstanceMethod:@"contentViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NCNotificationListCell" hasInstanceMethod:@"actionProvider" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NCNotificationShortLookViewController" hasInstanceMethod:@"clickPresentationInteractionManager" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NCNotificationGroupList" hasInstanceMethod:@"sectionIdentifier" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PLPlatterHeaderContentView" hasInstanceVariable:@"_dateLabel" withType:"UILabel<BSUIDateLabel>"];
  [v3 validateClass:@"NCNotificationViewController" hasInstanceMethod:@"_lookView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NCNotificationShortLookView" hasInstanceVariable:@"_auxiliaryOptionsView" withType:"NCAuxiliaryOptionsView"];
  [v3 validateClass:@"NCAuxiliaryOptionsView" hasInstanceVariable:@"_optionsSummaryLabel" withType:"UILabel"];
  [v3 validateClass:@"NCNotificationCombinedSectionList" isKindOfClass:@"NCNotificationStructuredSectionList"];
  [v3 validateProtocol:@"NCNotificationStaticContentAccepting" hasOptionalInstanceMethod:@"title"];
  [v3 validateProtocol:@"NCNotificationStaticContentAccepting" hasRequiredInstanceMethod:@"date"];
  [v3 validateProtocol:@"NCNotificationStaticContentAccepting" hasRequiredInstanceMethod:@"primaryText"];
  [v3 validateProtocol:@"NCNotificationStaticContentAccepting" hasRequiredInstanceMethod:@"primarySubtitleText"];
  [v3 validateProtocol:@"NCNotificationStaticContentAccepting" hasRequiredInstanceMethod:@"secondaryText"];
  [v3 validateClass:@"PLClickPresentationInteractionManager" hasInstanceMethod:@"clickPresentationInteractionShouldBegin:" withFullSignature:{"B", "@", 0}];
  [v3 validateClass:@"BSUIDefaultDateLabel"];
  [v3 validateClass:@"BSUIRelativeDateLabel"];
  [v3 validateProtocol:@"NCNotificationListCellActionProviding" hasRequiredInstanceMethod:@"supplementaryActionsForNotificationListCell:"];
  [v3 validateProtocol:@"NCNotificationListCellActionProviding" hasRequiredInstanceMethod:@"defaultActionForNotificationListCell:"];
  [v3 validateClass:@"UIAction" hasInstanceMethod:@"identifier" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NCNotificationListCell" hasInstanceVariable:@"_swipeInteraction" withType:"PLSwipeInteraction"];
  [v3 validateClass:@"PLSwipeInteraction" hasInstanceVariable:@"_actionButtonsPresentingView" withType:"PLActionButtonsPresentingView"];
  [v3 validateClass:@"PLActionButtonsPresentingView" hasInstanceMethod:@"actionButtonsView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PLPlatterActionButtonsView" hasInstanceMethod:@"buttonsStackView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NCNotificationViewController" hasInstanceMethod:@"notificationRequest" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NCNotificationListCell" hasInstanceMethod:@"contentView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NCNotificationListView" hasInstanceMethod:@"isGrouped" withFullSignature:{"B", 0}];
  [v3 validateClass:@"NCNotificationListView" hasInstanceMethod:@"count" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"NCNotificationListView" hasInstanceMethod:@"dataSource" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NCNotificationGroupList"];
  [v3 validateClass:@"NCNotificationStructuredSectionList" hasInstanceMethod:@"isNotificationGroupListInCollapsedStack:" withFullSignature:{"B", "@", 0}];
  [v3 validateClass:@"NCNotificationListView" conformsToProtocol:@"NCNotificationListViewProtocol"];
  [v3 validateProtocol:@"NCNotificationListViewProtocol" hasRequiredInstanceMethod:@"visibleViewAtIndex:"];
  [v3 validateClass:@"NCNotificationListView" hasInstanceMethod:@"model" withFullSignature:{"@", 0}];
}

- (BOOL)accessibilityActivate
{
  if ([(NCNotificationListCellAccessibility *)self _axIsCollapsedGroup]|| [(NCNotificationListCellAccessibility *)self _axIsInCollapsedStack])
  {
    AXPerformBlockOnMainThreadAfterDelay();
    v7.receiver = self;
    v7.super_class = NCNotificationListCellAccessibility;
    return [(NCNotificationListCellAccessibility *)&v7 accessibilityActivate];
  }

  else
  {
    v4 = [(NCNotificationListCellAccessibility *)self _accessibilityOpenAction];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
      AXPerformSafeBlock();
    }

    return 1;
  }
}

void __60__NCNotificationListCellAccessibility_accessibilityActivate__block_invoke()
{
  v0 = *MEMORY[0x29EDC7EA8];
  v1 = accessibilityLocalizedString(@"notification.expanded");
  UIAccessibilityPostNotification(v0, v1);
}

- (id)accessibilityCustomActions
{
  v20[1] = *MEMORY[0x29EDCA608];
  v3 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v4 = [(NCNotificationListCellAccessibility *)self _accessibilityCellActions];
  v5 = v4;
  if (v4 && (v6 = [v4 indexOfObjectPassingTest:&__block_literal_global_478], v6 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v8 = v6;
    v7 = [v5 objectAtIndex:v6];

    if (v7)
    {
      v9 = [v5 objectAtIndex:v8];
      v20[0] = v9;
      v10 = [MEMORY[0x29EDB8D80] arrayWithObjects:v20 count:1];
      v11 = [(NCNotificationListCellAccessibility *)self axCustomActionsForActions:v10];
      v7 = [v11 firstObject];
    }
  }

  else
  {
    v7 = 0;
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v19[0] = MEMORY[0x29EDCA5F8];
  v19[1] = 3221225472;
  v19[2] = __65__NCNotificationListCellAccessibility_accessibilityCustomActions__block_invoke_2;
  v19[3] = &__block_descriptor_40_e25_B32__0__UIAction_8Q16_B24l;
  v19[4] = v8;
  v12 = [v5 ax_filteredArrayUsingBlock:v19];
  v13 = [(NCNotificationListCellAccessibility *)self axCustomActionsForActions:v12];
  [v3 axSafelyAddObjectsFromArray:v13];

  v14 = [(NCNotificationListCellAccessibility *)self _axLookView];
  v15 = [v14 accessibilityCustomActions];

  v16 = [v15 ax_filteredArrayUsingBlock:&__block_literal_global_483];

  [v3 axSafelyAddObjectsFromArray:v16];
  [v3 axSafelyAddObject:v7];

  v17 = *MEMORY[0x29EDCA608];

  return v3;
}

uint64_t __65__NCNotificationListCellAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 safeValueForKey:@"identifier"];
  if ([v3 isEqualToString:@"NotificationListCellActionIdentifierClear"])
  {
    v4 = 1;
  }

  else
  {
    v5 = [v2 safeValueForKey:@"identifier"];
    v4 = [v5 isEqualToString:@"NCNotificationGroupListActionIdentifierClear"];
  }

  return v4;
}

uint64_t __65__NCNotificationListCellAccessibility_accessibilityCustomActions__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 accessibilityIdentifier];
  v3 = [v2 isEqualToString:@"AXNotificationDismissAction"];

  return v3 ^ 1u;
}

- (BOOL)_accessibilityIsAwayAlertElement
{
  v2 = [(NCNotificationListCellAccessibility *)self _axNCNotificationViewController];
  NSClassFromString(&cfstr_Ncnotification_38.isa);
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 safeValueForKey:@"notificationRequest"];
    v4 = [v3 sectionIdentifier];
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 isEqualToString:@"com.apple.donotdisturb"];

  return v5 ^ 1;
}

- (BOOL)isAccessibilityElement
{
  if ([(NCNotificationListCellAccessibility *)self _axIsInCollapsedStack])
  {

    return [(NCNotificationListCellAccessibility *)self _axIsLeadingView];
  }

  else
  {
    v4 = [(NCNotificationListCellAccessibility *)self _axLookView];
    v5 = v4 != 0;

    return v5;
  }
}

- (BOOL)accessibilityElementsHidden
{
  v3 = [(NCNotificationListCellAccessibility *)self _axIsInCollapsedStack];
  if (v3)
  {
    if (AXDoesRequestingClientDeserveAutomation())
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      LOBYTE(v3) = ![(NCNotificationListCellAccessibility *)self _axIsLeadingView];
    }
  }

  return v3;
}

- (id)accessibilityHint
{
  if ([(NCNotificationListCellAccessibility *)self _axIsInCollapsedStack])
  {
    v3 = [(NCNotificationListCellAccessibility *)self _accessibilityFindViewAncestor:&__block_literal_global_492 startWithSelf:1];
    if ([v3 count] > 1)
    {
      v4 = accessibilityLocalizedString(@"notification.cell.collapsed.hint");
      goto LABEL_6;
    }
  }

  v3 = [(NCNotificationListCellAccessibility *)self _axLookView];
  v4 = [v3 accessibilityHint];
LABEL_6:
  v5 = v4;

  return v5;
}

uint64_t __56__NCNotificationListCellAccessibility_accessibilityHint__block_invoke(uint64_t a1, void *a2)
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

- (id)_axLookView
{
  v2 = [(NCNotificationListCellAccessibility *)self _axNCNotificationViewController];
  NSClassFromString(&cfstr_Ncnotification_38.isa);
  if (objc_opt_isKindOfClass())
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = __Block_byref_object_copy_;
    v11 = __Block_byref_object_dispose_;
    v12 = 0;
    v6 = v2;
    AXPerformSafeBlock();
    v3 = v8[5];

    _Block_object_dispose(&v7, 8);
  }

  else
  {
    v4 = AXLogUI();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [(NCNotificationListCellAccessibility *)v2 _axLookView];
    }

    v3 = 0;
  }

  return v3;
}

uint64_t __50__NCNotificationListCellAccessibility__axLookView__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _lookView];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

- (BOOL)_axIsCollapsedGroup
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = [v2 superview];

  if ([v3 safeBoolForKey:@"isGrouped"])
  {
    v4 = [v3 safeUnsignedIntegerForKey:@"count"] > 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_accessibilityListViewParent
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = [v2 superview];

  NSClassFromString(&cfstr_Ncnotification_46.isa);
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

- (id)accessibilityLabel
{
  v3 = [(NCNotificationListCellAccessibility *)self _axLookView];
  NSClassFromString(&cfstr_Ncnotification_44.isa);
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 accessibilityLabel];
    v5 = [v3 safeStringForKey:@"primaryText"];
    v6 = [v3 safeStringForKey:@"primarySubtitleText"];
    v7 = [v3 safeStringForKey:@"secondaryText"];
    v8 = [(NCNotificationListCellAccessibility *)self _accessibilityDescendantOfType:NSClassFromString(&cfstr_Bsuirelativeda.isa)];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 accessibilityLabel];
      v11 = __UIAXStringForVariables();
    }

    else
    {
      v18 = [(NCNotificationListCellAccessibility *)self _accessibilityDescendantOfType:NSClassFromString(&cfstr_Bsuidefaultdat.isa)];
      v10 = v18;
      if (v18)
      {
        v20 = [v18 accessibilityLabel];
        v11 = __UIAXStringForVariables();
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    NSClassFromString(&cfstr_Ncnotification_43.isa);
    if (objc_opt_isKindOfClass())
    {
      v11 = [v3 accessibilityLabel];
      goto LABEL_12;
    }

    objc_opt_class();
    v12 = [v3 safeValueForKey:@"title"];
    v4 = __UIAccessibilityCastAsClass();

    objc_opt_class();
    v13 = [v3 safeValueForKey:@"date"];
    v14 = __UIAccessibilityCastAsClass();

    v5 = AXDateStringForFormat();

    objc_opt_class();
    v15 = [v3 safeValueForKey:@"primaryText"];
    v6 = __UIAccessibilityCastAsClass();

    objc_opt_class();
    v16 = [v3 safeValueForKeyPath:@"primarySubtitleText"];
    v7 = __UIAccessibilityCastAsClass();

    objc_opt_class();
    v17 = [v3 safeValueForKey:@"secondaryText"];
    v9 = __UIAccessibilityCastAsClass();

    v11 = __UIAXStringForVariables();
  }

LABEL_12:

  return v11;
}

- (id)accessibilityIdentifier
{
  v6.receiver = self;
  v6.super_class = NCNotificationListCellAccessibility;
  v2 = [(NCNotificationListCellAccessibility *)&v6 accessibilityIdentifier];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"NotificationCell";
  }

  return v4;
}

- (id)_accessibilityOpenAction
{
  [(NCNotificationListCellAccessibility *)self safeValueForKey:@"actionProvider"];
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy_;
  v9 = __Block_byref_object_dispose_;
  v4 = v10 = 0;
  AXPerformSafeBlock();
  v2 = v6[5];

  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __63__NCNotificationListCellAccessibility__accessibilityOpenAction__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) defaultActionForNotificationListCell:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

- (id)_accessibilityCellActions
{
  v2 = [(NCNotificationListCellAccessibility *)self safeValueForKey:@"actionProvider"];
  v13 = 0;
  objc_opt_class();
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  v3 = v2;
  AXPerformSafeBlock();
  v4 = v8[5];

  _Block_object_dispose(&v7, 8);
  v5 = __UIAccessibilityCastAsClass();

  if (v13 == 1)
  {
    abort();
  }

  return v5;
}

uint64_t __64__NCNotificationListCellAccessibility__accessibilityCellActions__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) supplementaryActionsForNotificationListCell:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

- (id)_accessibilityCellButtons
{
  v2 = [(NCNotificationListCellAccessibility *)self safeValueForKeyPath:@"_swipeInteraction._actionButtonsPresentingView.actionButtonsView.buttonsStackView"];
  v3 = [v2 _accessibilitySubviews];

  return v3;
}

- (id)automationElements
{
  v3 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v4 = [(NCNotificationListCellAccessibility *)self _accessibilityCellButtons];
  [v3 axSafelyAddObjectsFromArray:v4];

  v5 = [(NCNotificationListCellAccessibility *)self _axLookView];
  v6 = [v5 safeValueForKey:@"_auxiliaryOptionsView"];
  [v3 axSafelyAddObject:v6];

  v7 = [(NCNotificationListCellAccessibility *)self safeUIViewForKey:@"contentView"];
  [v3 axSafelyAddObject:v7];

  return v3;
}

- (id)axCustomActionsForActions:(id)a3
{
  v23 = *MEMORY[0x29EDCA608];
  v3 = a3;
  v4 = [MEMORY[0x29EDB8DE8] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v10 title];
        if (!v11)
        {
          v12 = [v10 image];
          v11 = [v12 accessibilityLabel];
        }

        if ([v11 length])
        {
          v13 = objc_alloc(MEMORY[0x29EDC78E0]);
          v17[0] = MEMORY[0x29EDCA5F8];
          v17[1] = 3221225472;
          v17[2] = __65__NCNotificationListCellAccessibility_axCustomActionsForActions___block_invoke;
          v17[3] = &unk_29F3170E0;
          v17[4] = v10;
          v14 = [v13 initWithName:v11 actionHandler:v17];
          [v4 axSafelyAddObject:v14];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x29EDCA608];

  return v4;
}

uint64_t __65__NCNotificationListCellAccessibility_axCustomActionsForActions___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  AXPerformSafeBlock();
  return 1;
}

void __65__NCNotificationListCellAccessibility_axCustomActionsForActions___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) performWithSender:0 target:0];
  v1 = *MEMORY[0x29EDC7ED8];

  UIAccessibilityPostNotification(v1, 0);
}

- (id)_accessibilitySupplementaryFooterViews
{
  v20 = *MEMORY[0x29EDCA608];
  v3 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v4 = [(NCNotificationListCellAccessibility *)self _axLookView];
  v5 = [v4 safeValueForKey:@"_auxiliaryOptionsView"];

  v6 = [v5 safeValueForKey:@"_optionsSummaryLabel"];
  [v3 axSafelyAddObject:v6];
  v7 = [v5 safeArrayForKey:@"auxiliaryOptionButtons"];
  [v3 axSafelyAddObjectsFromArray:v7];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v3;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v15 + 1) + 8 * i) setAccessibilityContainer:{self, v15}];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x29EDCA608];

  return v8;
}

- (BOOL)_axIsInCollapsedStack
{
  v2 = [(NCNotificationListCellAccessibility *)self accessibilityContainer];
  v3 = [v2 safeValueForKey:@"dataSource"];
  v4 = [v2 accessibilityContainer];
  v5 = [v4 safeValueForKey:@"dataSource"];

  NSClassFromString(&cfstr_Ncnotification_47.isa);
  if (objc_opt_isKindOfClass())
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v8 = v5;
    v9 = v3;
    AXPerformSafeBlock();
    v6 = *(v11 + 24);

    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t __60__NCNotificationListCellAccessibility__axIsInCollapsedStack__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isNotificationGroupListInCollapsedStack:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)_axIsLeadingView
{
  v2 = [(NCNotificationListCellAccessibility *)self accessibilityContainer];
  v3 = [v2 accessibilityContainer];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = 0;
  v7 = MEMORY[0x29EDCA5F8];
  v8 = v3;
  AXPerformSafeBlock();
  v4 = v10[5];

  _Block_object_dispose(&v9, 8);
  v5 = [v4 isEqual:{v2, v7, 3221225472, __55__NCNotificationListCellAccessibility__axIsLeadingView__block_invoke, &unk_29F317090}];

  return v5;
}

uint64_t __55__NCNotificationListCellAccessibility__axIsLeadingView__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) visibleViewAtIndex:0];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

- (void)_axLookView
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_29C6DA000, a2, OS_LOG_TYPE_DEBUG, "Found unrecognized selector for VC: %@", &v3, 0xCu);
  v2 = *MEMORY[0x29EDCA608];
}

@end