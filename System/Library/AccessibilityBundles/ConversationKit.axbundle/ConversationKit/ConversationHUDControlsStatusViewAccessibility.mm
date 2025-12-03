@interface ConversationHUDControlsStatusViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilitySetupVStack;
- (void)setupRootView;
@end

@implementation ConversationHUDControlsStatusViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ConversationKit.ConversationHUDControlsStatusView" hasInstanceMethod:@"conversationDetailsView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ConversationKit.ConversationDetailsView" hasInstanceMethod:@"conversationTitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ConversationKit.ConversationDetailsView" hasInstanceMethod:@"conversationSubtitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ConversationKit.ConversationHUDControlsStatusView" hasInstanceMethod:@"setupRootView" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = ConversationHUDControlsStatusViewAccessibility;
  [(ConversationHUDControlsStatusViewAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(ConversationHUDControlsStatusViewAccessibility *)self _accessibilitySetupVStack];
}

- (void)setupRootView
{
  v3.receiver = self;
  v3.super_class = ConversationHUDControlsStatusViewAccessibility;
  [(ConversationHUDControlsStatusViewAccessibility *)&v3 setupRootView];
  [(ConversationHUDControlsStatusViewAccessibility *)self _accessibilitySetupVStack];
  AXPerformBlockOnMainThreadAfterDelay();
}

void __63__ConversationHUDControlsStatusViewAccessibility_setupRootView__block_invoke(uint64_t a1)
{
  argument = [*(a1 + 32) safeUIViewForKey:@"conversationDetailsView"];
  if ([argument _accessibilityViewIsVisible])
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7488], argument);
  }
}

- (void)_accessibilitySetupVStack
{
  _accessibilityConversationDetailsView = [(ConversationHUDControlsStatusViewAccessibility *)self _accessibilityConversationDetailsView];
  accessibilityTraits = [_accessibilityConversationDetailsView accessibilityTraits];
  v5 = *MEMORY[0x29EDC7F70];
  v6 = accessibilityLocalizedString(@"show.call.details.hint");
  [_accessibilityConversationDetailsView setAccessibilityHint:v6];

  [_accessibilityConversationDetailsView setAccessibilityTraits:v5 | accessibilityTraits];
  objc_initWeak(&location, self);
  v7 = MEMORY[0x29EDCA5F8];
  v8 = 3221225472;
  v9 = __75__ConversationHUDControlsStatusViewAccessibility__accessibilitySetupVStack__block_invoke;
  v10 = &unk_29F2B7B80;
  objc_copyWeak(&v11, &location);
  [_accessibilityConversationDetailsView _setAccessibilityLabelBlock:&v7];
  [_accessibilityConversationDetailsView setIsAccessibilityElement:{1, v7, v8, v9, v10}];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

id __75__ConversationHUDControlsStatusViewAccessibility__accessibilitySetupVStack__block_invoke(uint64_t a1)
{
  objc_opt_class();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained _accessibilityConversationDetailsView];
  v4 = [v3 safeValueForKey:@"conversationTitleLabel"];
  v5 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 _accessibilityConversationDetailsView];
  v8 = [v7 safeValueForKey:@"conversationSubtitleLabel"];
  v9 = __UIAccessibilityCastAsClass();

  v10 = [v5 text];
  v13 = [v9 text];
  v11 = __UIAXStringForVariables();

  return v11;
}

@end