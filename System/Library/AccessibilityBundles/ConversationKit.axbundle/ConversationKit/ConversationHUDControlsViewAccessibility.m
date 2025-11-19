@interface ConversationHUDControlsViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityElementsHidden;
- (BOOL)accessibilityPerformEscape;
@end

@implementation ConversationHUDControlsViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ConversationKit.BannerPresentationManager" hasInstanceMethod:@"dismissPresentedBannerForReason:animated:" withFullSignature:{"v", "@", "B", 0}];
  [v3 validateClass:@"ConversationKit.BannerPresentationManager" hasInstanceMethod:@"presentedBanner" withFullSignature:{"@", 0}];
}

- (BOOL)accessibilityElementsHidden
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  [v2 _accessibilityVisibleFrame];
  IsEmpty = CGRectIsEmpty(v5);

  return IsEmpty;
}

- (BOOL)accessibilityPerformEscape
{
  v2 = [MEMORY[0x29EDC7938] sharedApplication];
  v3 = [v2 delegate];

  v4 = [v3 safeValueForKey:@"bannerPresentationManager"];
  v5 = [v4 safeValueForKey:@"presentedBanner"];
  if (v5)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v8 = v4;
    AXPerformSafeBlock();
    v6 = *(v10 + 24);

    _Block_object_dispose(&v9, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void __70__ConversationHUDControlsViewAccessibility_accessibilityPerformEscape__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) dismissPresentedBannerForReason:@"Accessibility escape performed" animated:1];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

@end