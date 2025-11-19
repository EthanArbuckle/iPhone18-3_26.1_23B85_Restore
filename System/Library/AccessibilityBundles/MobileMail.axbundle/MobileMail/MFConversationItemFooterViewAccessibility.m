@interface MFConversationItemFooterViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityConversationViewControllerForCell:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityPerformLeadingAction;
- (void)_accessibilityUpdateLeadingActionTitle:(id)a3;
- (void)layoutSubviews;
@end

@implementation MFConversationItemFooterViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MFConversationItemFooterView" hasInstanceMethod:@"seeMoreButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MFConversationItemFooterView" hasInstanceMethod:@"revealActionsButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MFConversationItemFooterView" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
  [v3 validateClass:@"MFConversationViewCell"];
  [v3 validateClass:@"MFExpandedMessageCell" hasInstanceMethod:@"messageViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MFMessageViewController" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MFConversationItemFooterViewAccessibility" hasInstanceMethod:@"_accessibilityConversationViewControllerForCell:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"MFConversationItemFooterViewAccessibility" hasInstanceMethod:@"_accessibilityUpdateLeadingActionTitle:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"ConversationViewController"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v18.receiver = self;
  v18.super_class = MFConversationItemFooterViewAccessibility;
  [(MFConversationItemFooterViewAccessibility *)&v18 _accessibilityLoadAccessibilityInformation];
  v3 = [(MFConversationItemFooterViewAccessibility *)self safeValueForKey:@"revealActionsButton"];
  v4 = accessibilityLocalizedString(@"reveal.more.button");
  [v3 setAccessibilityLabel:v4];

  objc_initWeak(&location, v3);
  v15[0] = MEMORY[0x29EDCA5F8];
  v15[1] = 3221225472;
  v15[2] = __87__MFConversationItemFooterViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v15[3] = &unk_29F2D4038;
  objc_copyWeak(&v16, &location);
  [v3 setAccessibilityActivateBlock:v15];
  v5 = [(MFConversationItemFooterViewAccessibility *)self safeValueForKey:@"seeMoreButton"];
  v6 = __UIAccessibilitySafeClass();

  if (_AXSAutomationEnabled())
  {
    v7 = [v6 titleLabel];
    [v7 bounds];
    v9 = v8;

    [v6 bounds];
    [v6 _accessibilitySetFrameExpansion:{0.0, (v10 - v9) * -0.5}];
    [v6 accessibilitySetIdentification:@"AXAccessibilityUseAccessibilityFrameForHittest"];
  }

  v11 = [(MFConversationItemFooterViewAccessibility *)self _accessibilityParentCell];
  v12 = [(MFConversationItemFooterViewAccessibility *)self _accessibilityConversationViewControllerForCell:v11];
  v13 = [v12 _accessibilityTitleForLeadingActionWithCell:v11];
  v14 = accessibilitySubstituteReadPhonemeInString(v13);

  [(MFConversationItemFooterViewAccessibility *)self _accessibilityUpdateLeadingActionTitle:v14];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

uint64_t __87__MFConversationItemFooterViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained sendActionsForControlEvents:64];

  return 1;
}

- (void)_accessibilityPerformLeadingAction
{
  v3 = [(MFConversationItemFooterViewAccessibility *)self _accessibilityParentCell];
  v4 = [(MFConversationItemFooterViewAccessibility *)self _accessibilityConversationViewControllerForCell:v3];
  [v4 _accessibilityPerformLeadingActionWithCell:v3];
  v7 = v3;
  v5 = v3;
  v6 = v4;
  AXPerformBlockOnMainThreadAfterDelay();
}

void __79__MFConversationItemFooterViewAccessibility__accessibilityPerformLeadingAction__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _accessibilityTitleForLeadingActionWithCell:*(a1 + 40)];
  [*(a1 + 48) _accessibilityUpdateLeadingActionTitle:v2];
}

- (void)_accessibilityUpdateLeadingActionTitle:(id)a3
{
  v11[1] = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = [(MFConversationItemFooterViewAccessibility *)self safeValueForKey:@"revealActionsButton"];
  if ([v4 length])
  {
    v6 = objc_alloc(MEMORY[0x29EDC78E0]);
    v7 = accessibilitySubstituteReadPhonemeInString(v4);
    v8 = [v6 initWithName:v7 target:self selector:sel__accessibilityPerformLeadingAction];

    v11[0] = v8;
    v9 = [MEMORY[0x29EDB8D80] arrayWithObjects:v11 count:1];
    [v5 setAccessibilityCustomActions:v9];
  }

  v10 = *MEMORY[0x29EDCA608];
}

- (id)_accessibilityConversationViewControllerForCell:(id)a3
{
  v3 = a3;
  NSClassFromString(&cfstr_Mfexpandedmess_0.isa);
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 safeValueForKey:@"messageViewController"];
    v5 = [v4 safeValueForKey:@"delegate"];
  }

  else
  {
    v5 = 0;
  }

  NSClassFromString(&cfstr_Conversationvi_0.isa);
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __69__MFConversationItemFooterViewAccessibility__accessibilityParentCell__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Mfconversation_4.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MFConversationItemFooterViewAccessibility;
  [(MFConversationItemFooterViewAccessibility *)&v3 layoutSubviews];
  [(MFConversationItemFooterViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end