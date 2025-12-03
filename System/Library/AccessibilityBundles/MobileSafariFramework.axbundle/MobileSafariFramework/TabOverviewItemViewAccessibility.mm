@interface TabOverviewItemViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityScrollToVisible;
- (_NSRange)_accessibilityRowRange;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityCustomActions;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)automationElements;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation TabOverviewItemViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SFTabOverviewItemView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"SFTabOverviewItemView" hasSwiftField:@"thumbnailView" withSwiftType:"TabThumbnailView"];
  [validationsCopy validateClass:@"SFTabOverviewItemView" hasSwiftField:@"configuration" withSwiftType:"Configuration"];
  [validationsCopy validateSwiftStruct:@"MobileSafari.TabOverviewItemView[class].Configuration" hasSwiftField:@"canBeClosed" withSwiftType:"Bool"];
  [validationsCopy validateSwiftStruct:@"MobileSafari.TabOverviewItemView[class].Configuration" hasSwiftField:@"isPinned" withSwiftType:"Bool"];
  [validationsCopy validateSwiftStruct:@"MobileSafari.TabOverviewItemView[class].Configuration" hasSwiftField:@"isSelected" withSwiftType:"Bool"];
  [validationsCopy validateSwiftStruct:@"MobileSafari.TabOverviewItemView[class].Configuration" hasSwiftField:@"showsMultipleSelectionIndicator" withSwiftType:"Bool"];
  [validationsCopy validateClass:@"SFTabThumbnailView" hasInstanceMethod:@"trailingCornerButtonReceivedTap" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"SFTabThumbnailView" hasSwiftField:@"trailingCornerButton" withSwiftType:"CornerButton"];
  [validationsCopy validateClass:@"SFTabOverview" hasInstanceMethod:@"indexInAllItemsForItemView:" withFullSignature:{"q", "@", 0}];
  [validationsCopy validateClass:@"SFTabOverview" hasInstanceMethod:@"totalItemCount" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"SFTabOverview" hasSwiftField:@"content" withSwiftType:"Content"];
  [validationsCopy validateSwiftStruct:@"MobileSafari.TabOverview[class].Content" hasSwiftField:@"cancelRetitlingButtonStyle" withSwiftType:"CancelEditingButtonStyle"];
  [validationsCopy validateSwiftEnum:@"MobileSafari.TabOverviewLargeTitleView[class].CancelEditingButtonStyle"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = TabOverviewItemViewAccessibility;
  [(TabOverviewItemViewAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(TabOverviewItemViewAccessibility *)self safeSwiftValueForKey:@"thumbnailView"];
  v4 = [v3 safeSwiftValueForKey:@"trailingCornerButton"];

  [v4 setIsAccessibilityElement:1];
  v5 = accessibilitySafariServicesLocalizedString(@"close.button");
  [v4 setAccessibilityLabel:v5];
}

- (id)accessibilityCustomActions
{
  v3 = [(TabOverviewItemViewAccessibility *)self _accessibilityAncestorIsKindOf:MEMORY[0x29C2E0540](@"SFTabOverview", a2)];
  v4 = [v3 safeSwiftValueForKey:@"content"];
  v5 = [v4 safeSwiftValueForKey:@"cancelRetitlingButtonStyle"];
  safeSwiftEnumCase = [v5 safeSwiftEnumCase];
  v7 = [safeSwiftEnumCase isEqualToString:@"undo"];

  if (v7)
  {
    array = 0;
    goto LABEL_8;
  }

  array = [MEMORY[0x29EDB8DE8] array];
  objc_initWeak(&location, self);
  v9 = [(TabOverviewItemViewAccessibility *)self safeSwiftValueForKey:@"configuration"];
  if ([v9 safeSwiftBoolForKey:@"canBeClosed"])
  {
    v10 = [(TabOverviewItemViewAccessibility *)self safeSwiftValueForKey:@"configuration"];
    if (![v10 safeSwiftBoolForKey:@"showsMultipleSelectionIndicator"])
    {
      v15 = [(TabOverviewItemViewAccessibility *)self safeSwiftValueForKey:@"configuration"];
      v16 = [v15 safeSwiftBoolForKey:@"isPinned"];

      if ((v16 & 1) == 0)
      {
        v17 = objc_alloc(MEMORY[0x29EDC78E0]);
        v18 = accessibilitySafariServicesLocalizedString(@"close.button");
        v22[0] = MEMORY[0x29EDCA5F8];
        v22[1] = 3221225472;
        v22[2] = __62__TabOverviewItemViewAccessibility_accessibilityCustomActions__block_invoke;
        v22[3] = &unk_29F2D68A0;
        objc_copyWeak(&v23, &location);
        v19 = [v17 initWithName:v18 actionHandler:v22];

        [v19 _accessibilitySetInternalCustomActionIdentifier:@"AX_CLOSE"];
        [array addObject:v19];

        objc_destroyWeak(&v23);
      }

      goto LABEL_7;
    }
  }

LABEL_7:
  v11 = objc_alloc(MEMORY[0x29EDC78E0]);
  v12 = accessibilityMobileSafariLocalizedString(@"show.context.menu");
  v20[0] = MEMORY[0x29EDCA5F8];
  v20[1] = 3221225472;
  v20[2] = __62__TabOverviewItemViewAccessibility_accessibilityCustomActions__block_invoke_2;
  v20[3] = &unk_29F2D68A0;
  objc_copyWeak(&v21, &location);
  v13 = [v11 initWithName:v12 actionHandler:v20];

  [array addObject:v13];
  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
LABEL_8:

  return array;
}

uint64_t __62__TabOverviewItemViewAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeSwiftValueForKey:@"thumbnailView"];
  [v2 trailingCornerButtonReceivedTap];

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  return 1;
}

uint64_t __62__TabOverviewItemViewAccessibility_accessibilityCustomActions__block_invoke_2(uint64_t a1)
{
  v1 = objc_loadWeakRetained((a1 + 32));
  v2 = [v1 safeSwiftValueForKey:@"thumbnailView"];
  [v1 _accessibilityShowContextMenuForElement:v2 targetPointValue:0];

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  return 1;
}

- (id)_accessibilitySupplementaryFooterViews
{
  if ((AXRequestingClient() & 0xFFFFFFFD) == 5)
  {
    v3 = MEMORY[0x29EDB8D80];
    v4 = [(TabOverviewItemViewAccessibility *)self safeSwiftValueForKey:@"thumbnailView"];
    v5 = [v4 safeSwiftValueForKey:@"trailingCornerButton"];
    _accessibilitySupplementaryFooterViews = [v3 axArrayByIgnoringNilElementsWithCount:{1, v5}];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = TabOverviewItemViewAccessibility;
    _accessibilitySupplementaryFooterViews = [(TabOverviewItemViewAccessibility *)&v8 _accessibilitySupplementaryFooterViews];
  }

  return _accessibilitySupplementaryFooterViews;
}

- (id)automationElements
{
  v2 = MEMORY[0x29EDB8D80];
  v3 = [(TabOverviewItemViewAccessibility *)self safeSwiftValueForKey:@"thumbnailView"];
  v4 = [v3 safeSwiftValueForKey:@"trailingCornerButton"];
  v5 = [v2 axArrayByIgnoringNilElementsWithCount:{1, v4}];

  return v5;
}

- (_NSRange)_accessibilityRowRange
{
  [(TabOverviewItemViewAccessibility *)self _accessibilityAncestorIsKindOf:MEMORY[0x29C2E0540](@"SFTabOverview", a2)];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0x7FFFFFFFFFFFFFFFLL;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = v10 = 0;
  AXPerformSafeBlock();
  v3 = v12[3];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v4 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);

  v5 = v3;
  v6 = v4;
  result.length = v6;
  result.location = v5;
  return result;
}

uint64_t __58__TabOverviewItemViewAccessibility__accessibilityRowRange__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) indexInAllItemsForItemView:*(a1 + 40)];
  result = [*(a1 + 32) totalItemCount];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

- (unint64_t)accessibilityTraits
{
  v2 = *MEMORY[0x29EDC7588];
  v3 = [(TabOverviewItemViewAccessibility *)self safeSwiftValueForKey:@"configuration"];
  v4 = [v3 safeSwiftBoolForKey:@"isSelected"];

  v5 = *MEMORY[0x29EDC7FC0];
  if (!v4)
  {
    v5 = 0;
  }

  return v5 | v2;
}

- (id)accessibilityHint
{
  v2 = [(TabOverviewItemViewAccessibility *)self safeSwiftValueForKey:@"configuration"];
  if ([v2 safeSwiftBoolForKey:@"showsMultipleSelectionIndicator"] && (objc_msgSend(v2, "safeSwiftBoolForKey:", @"isSelected") & 1) == 0)
  {
    v3 = accessibilityMobileSafariLocalizedString(@"tab.overview.selection.hint");
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_accessibilityScrollToVisible
{
  v3.receiver = self;
  v3.super_class = TabOverviewItemViewAccessibility;
  return [(TabOverviewItemViewAccessibility *)&v3 _accessibilityScrollToVisible];
}

- (id)accessibilityLabel
{
  v3 = [(TabOverviewItemViewAccessibility *)self safeSwiftValueForKey:@"configuration"];
  v4 = [v3 safeSwiftBoolForKey:@"isPinned"];

  if (v4)
  {
    v10.receiver = self;
    v10.super_class = TabOverviewItemViewAccessibility;
    accessibilityLabel = [(TabOverviewItemViewAccessibility *)&v10 accessibilityLabel];
    v8 = accessibilityMobileSafariLocalizedString(@"tab.pinned");
    accessibilityLabel2 = __AXStringForVariables();
  }

  else
  {
    v9.receiver = self;
    v9.super_class = TabOverviewItemViewAccessibility;
    accessibilityLabel2 = [(TabOverviewItemViewAccessibility *)&v9 accessibilityLabel];
  }

  return accessibilityLabel2;
}

@end