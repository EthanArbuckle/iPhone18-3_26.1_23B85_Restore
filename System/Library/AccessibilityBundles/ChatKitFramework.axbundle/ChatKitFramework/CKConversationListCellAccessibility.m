@interface CKConversationListCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axIsVerified;
- (id)_accessibilityCustomActionGroupIdentifier;
- (id)_axFromString;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)updateContentsForConversation:(id)a3;
@end

@implementation CKConversationListCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKConversationListCell" hasInstanceVariable:@"_fromLabel" withType:"CKLabel"];
  [v3 validateClass:@"CKConversationListCell" hasInstanceVariable:@"_dateLabel" withType:"CKDateLabel"];
  [v3 validateClass:@"CKConversationListCell" hasInstanceVariable:@"_summaryLabel" withType:"UILabel"];
  [v3 validateClass:@"CKConversationListCell" hasInstanceVariable:@"_closeButton" withType:"UIButton"];
  [v3 validateClass:@"CKConversationListCell" hasInstanceMethod:@"avatarView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKConversationListCell" hasInstanceMethod:@"conversation" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKConversationListCell" hasInstanceMethod:@"conversation" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKConversation" hasInstanceMethod:@"shouldShowVerifiedCheckmark" withFullSignature:{"B", 0}];
  [v3 validateClass:@"UILabel" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKConversation"];
  [v3 validateClass:@"CKConversation" hasInstanceMethod:@"hasUnreadMessages" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CKConversation" hasInstanceMethod:@"isMuted" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CKConversation" hasInstanceMethod:@"chat" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKConversation" hasInstanceMethod:@"wantsLabelForDSDS" withFullSignature:{"B", 0}];
  [v3 validateClass:@"IMCTSubscriptionUtilities"];
  [v3 validateClass:@"IMCTSubscriptionUtilities" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [v3 validateClass:@"IMCTSubscriptionUtilities" hasInstanceMethod:@"ctSubscriptionInfo" withFullSignature:{"@", 0}];
  [v3 validateClass:@"IMCTXPCServiceSubscriptionInfo" hasInstanceMethod:@"subscriptions" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CTXPCServiceSubscriptionContext" hasInstanceMethod:@"labelID" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CTXPCServiceSubscriptionContext" hasInstanceMethod:@"label" withFullSignature:{"@", 0}];
  [v3 validateClass:@"IMChat" hasInstanceMethod:@"lastAddressedSIMID" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKConversation" hasInstanceMethod:@"chat" withFullSignature:{"@", 0}];
  [v3 validateClass:@"IMChat" hasInstanceMethod:@"chatSummary" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(CKConversationListCellAccessibility *)self safeValueForKey:@"conversation"];
  v4 = [(CKConversationListCellAccessibility *)self _axFromString];
  if ([(CKConversationListCellAccessibility *)self _axIsVerified])
  {
    v5 = accessibilityLocalizedString(@"conversation.verified");
  }

  else
  {
    v5 = 0;
  }

  v6 = [(CKConversationListCellAccessibility *)self safeValueForKey:@"_dateLabel"];
  v7 = [v6 accessibilityLabel];

  v8 = [(CKConversationListCellAccessibility *)self safeValueForKey:@"_summaryLabel"];
  v9 = [v8 safeStringForKey:@"text"];

  if ([v3 safeBoolForKey:@"wantsLabelForDSDS"])
  {
    v27 = v4;
    v10 = [v3 safeValueForKeyPath:@"chat.lastAddressedSIMID"];
    v30 = 0;
    objc_opt_class();
    v11 = [NSClassFromString(&cfstr_Imctsubscripti.isa) safeValueForKeyPath:@"sharedInstance.ctSubscriptionInfo.subscriptions"];
    v12 = __UIAccessibilityCastAsClass();

    v28[0] = MEMORY[0x29EDCA5F8];
    v28[1] = 3221225472;
    v28[2] = __57__CKConversationListCellAccessibility_accessibilityLabel__block_invoke;
    v28[3] = &unk_29F2B0CB8;
    v29 = v10;
    v13 = v10;
    v14 = [v12 ax_firstObjectUsingBlock:v28];
    v15 = MEMORY[0x29EDBA0F8];
    v16 = accessibilityLocalizedString(@"sim.type");
    v17 = [v14 safeStringForKey:@"label"];
    v18 = [v15 stringWithFormat:v16, v17];

    v4 = v27;
  }

  else
  {
    v18 = 0;
  }

  v19 = [v3 safeBoolForKey:@"hasUnreadMessages"];
  v20 = [v3 safeBoolForKey:@"isMuted"];
  v21 = [v3 safeValueForKeyPath:@"chat.chatSummary"];

  if (v21)
  {
    v22 = accessibilityLocalizedString(@"apple.intelligence.summary");
    if (v20)
    {
      goto LABEL_9;
    }

LABEL_12:
    v23 = 0;
    if (!v19)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  v22 = 0;
  if (!v20)
  {
    goto LABEL_12;
  }

LABEL_9:
  v23 = accessibilityLocalizedString(@"conversation.muted");
  if (!v19)
  {
LABEL_10:
    v24 = 0;
    goto LABEL_14;
  }

LABEL_13:
  v24 = accessibilityLocalizedString(@"unread.messages");
LABEL_14:
  v25 = __UIAXStringForVariables();

  return v25;
}

uint64_t __57__CKConversationListCellAccessibility_accessibilityLabel__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 safeStringForKey:@"labelID"];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)_accessibilityCustomActionGroupIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = CKConversationListCellAccessibility;
  [(CKConversationListCellAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(CKConversationListCellAccessibility *)self safeValueForKey:@"avatarView"];
  [v3 setAccessibilityElementsHidden:1];

  v4 = [(CKConversationListCellAccessibility *)self safeValueForKey:@"_closeButton"];
  [v4 setIsAccessibilityElement:0];
}

- (id)accessibilityUserInputLabels
{
  v2 = [(CKConversationListCellAccessibility *)self _axFromString];
  v3 = MEMORY[0x29C2D0360]();

  return v3;
}

- (void)updateContentsForConversation:(id)a3
{
  v4.receiver = self;
  v4.super_class = CKConversationListCellAccessibility;
  [(CKConversationListCellAccessibility *)&v4 updateContentsForConversation:a3];
  [(CKConversationListCellAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (id)_axFromString
{
  v2 = [(CKConversationListCellAccessibility *)self safeValueForKey:@"_fromLabel"];
  v3 = [v2 accessibilityLabel];

  v4 = UIAXApplyPhoneContextTokenToString();

  return v4;
}

- (BOOL)_axIsVerified
{
  v2 = [(CKConversationListCellAccessibility *)self safeValueForKey:@"conversation"];
  v3 = [v2 safeBoolForKey:@"shouldShowVerifiedCheckmark"];

  return v3;
}

@end