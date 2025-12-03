@interface CKPinnedConversationViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityCustomActionGroupIdentifier;
- (id)_axFromString;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
@end

@implementation CKPinnedConversationViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKPinnedConversationView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKPinnedConversationSummaryBubble"];
  [validationsCopy validateClass:@"CKConversation"];
  [validationsCopy validateClass:@"CKConversation" hasInstanceMethod:@"hasUnreadMessages" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CKConversation" hasInstanceMethod:@"isMuted" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CKPinnedConversationView" hasInstanceMethod:@"activityView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKPinnedConversationActivityView" hasInstanceMethod:@"activityItemViews" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKPinnedConversationSummaryBubble" hasInstanceMethod:@"summaryLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  _axFromString = [(CKPinnedConversationViewAccessibility *)self _axFromString];
  v4 = [(CKPinnedConversationViewAccessibility *)self safeValueForKey:@"conversation"];
  v5 = [v4 safeBoolForKey:@"hasUnreadMessages"];
  if ([v4 safeBoolForKey:@"isMuted"])
  {
    v6 = accessibilityLocalizedString(@"conversation.muted");
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = [(CKPinnedConversationViewAccessibility *)self safeValueForKey:@"activityView"];
    v8 = [v7 safeValueForKey:@"activityItemViews"];
    v9 = [v8 ax_filteredArrayUsingBlock:&__block_literal_global_5];
    firstObject = [v9 firstObject];

    v11 = [firstObject safeValueForKey:@"summaryLabel"];
    accessibilityLabel = [v11 accessibilityLabel];

    v13 = accessibilityLocalizedString(@"unread.messages");
    v14 = __UIAXStringForVariables();
  }

  else
  {
    v14 = 0;
  }

  v17 = accessibilityLocalizedString(@"pinned.label");
  v15 = __UIAXStringForVariables();

  return v15;
}

uint64_t __59__CKPinnedConversationViewAccessibility_accessibilityLabel__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Ckpinnedconver_3.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)_accessibilityCustomActionGroupIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)accessibilityUserInputLabels
{
  _axFromString = [(CKPinnedConversationViewAccessibility *)self _axFromString];
  v3 = MEMORY[0x29C2D0360]();

  return v3;
}

- (id)_axFromString
{
  v2 = [(CKPinnedConversationViewAccessibility *)self safeValueForKey:@"titleLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  v4 = UIAXApplyPhoneContextTokenToString();

  return v4;
}

@end