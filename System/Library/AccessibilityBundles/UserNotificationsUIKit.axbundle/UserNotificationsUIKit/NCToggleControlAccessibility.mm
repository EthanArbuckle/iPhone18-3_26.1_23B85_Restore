@interface NCToggleControlAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axPerformPreviewInteractionAction;
- (BOOL)accessibilityActivate;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (void)clickInteractionPresenterDidDismiss:(id)a3;
- (void)clickInteractionPresenterDidPresent:(id)a3;
@end

@implementation NCToggleControlAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  if (AXProcessIsSpringBoard())
  {
    [v3 validateClass:@"SBFTouchPassThroughView"];
    [v3 validateClass:@"CSCoverSheetViewBase"];
  }

  [v3 validateClass:@"NCNotificationListCoalescingControlsView"];
  [v3 validateClass:@"NCToggleControl" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NCToggleControl" hasInstanceMethod:@"isExpanded" withFullSignature:{"B", 0}];
  [v3 validateClass:@"NCToggleControl" hasInstanceMethod:@"_previewInteractionPlatterPresenter" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NCToggleControl" hasInstanceMethod:@"clickInteractionPresenterDidPresent:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"NCToggleControl" hasInstanceMethod:@"clickInteractionPresenterDidDismiss:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"NCClickInteractionPresenter" hasInstanceMethod:@"_presentedControl" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NCClickInteractionPresenter" hasInstanceMethod:@"_containerView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NCClickInteractionPresentedControl" isKindOfClass:@"UIControl"];
  [v3 validateClass:@"NCNotificationListCoalescingHeaderCell" hasInstanceMethod:@"handlerDelegate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NCNotificationListCoalescingControlsCell" hasInstanceMethod:@"handlerDelegate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NCNotificationGroupList" hasInstanceMethod:@"leadingNotificationRequest" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NCNotificationRequest" hasInstanceMethod:@"content" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NCNotificationContent" hasInstanceMethod:@"header" withFullSignature:{"@", 0}];
}

- (BOOL)accessibilityActivate
{
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  v4.receiver = self;
  v4.super_class = NCToggleControlAccessibility;
  return [(NCToggleControlAccessibility *)&v4 accessibilityActivate];
}

- (id)accessibilityLabel
{
  v3 = [(NCToggleControlAccessibility *)self safeStringForKey:@"title"];
  if ([v3 length])
  {
    if (([(NCToggleControlAccessibility *)self safeBoolForKey:@"isExpanded"]& 1) != 0)
    {
      v4 = MEMORY[0x29EDBA0F8];
      v5 = accessibilityLocalizedString(@"confirm.action");
      v6 = [v4 stringWithFormat:v5, v3];

      goto LABEL_7;
    }

    v7 = v3;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = NCToggleControlAccessibility;
    v7 = [(NCToggleControlAccessibility *)&v9 accessibilityLabel];
  }

  v6 = v7;
LABEL_7:

  return v6;
}

- (id)accessibilityValue
{
  objc_opt_class();
  v3 = [(NCToggleControlAccessibility *)self _accessibilityAncestorIsKindOf:objc_opt_class()];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 safeValueForKey:@"handlerDelegate"];
  v6 = [v5 safeValueForKey:@"leadingNotificationRequest"];
  v7 = [v6 safeValueForKey:@"content"];
  v8 = [v7 safeStringForKey:@"header"];

  return v8;
}

- (id)accessibilityCustomActions
{
  v10[1] = *MEMORY[0x29EDCA608];
  v3 = [(NCToggleControlAccessibility *)self safeValueForKey:@"_previewInteractionPlatterPresenter"];
  v4 = [v3 safeValueForKey:@"_presentedControl"];
  v5 = [v4 accessibilityLabel];

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x29EDC78E0]) initWithName:v5 target:self selector:sel__axPerformPreviewInteractionAction];
    v10[0] = v6;
    v7 = [MEMORY[0x29EDB8D80] arrayWithObjects:v10 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x29EDCA608];

  return v7;
}

- (BOOL)_axPerformPreviewInteractionAction
{
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  objc_opt_class();
  v3 = [(NCToggleControlAccessibility *)self safeValueForKey:@"_previewInteractionPlatterPresenter"];
  v4 = [v3 safeValueForKey:@"_presentedControl"];
  v5 = __UIAccessibilityCastAsClass();

  [v5 sendActionsForControlEvents:64];
  return 1;
}

uint64_t __71__NCToggleControlAccessibility__axSetPreviewInteractionAncestorsModal___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Sbftouchpassth.isa);
  if (objc_opt_isKindOfClass())
  {
    NSClassFromString(&cfstr_Cscoversheetvi.isa);
    v3 = objc_opt_isKindOfClass() ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (void)clickInteractionPresenterDidPresent:(id)a3
{
  v3 = self;
  v6.receiver = self;
  v6.super_class = NCToggleControlAccessibility;
  v4 = a3;
  [(NCToggleControlAccessibility *)&v6 clickInteractionPresenterDidPresent:v4];
  [(NCToggleControlAccessibility *)v3 _axSetPreviewInteractionAncestorsModal:1, v6.receiver, v6.super_class];
  LODWORD(v3) = *MEMORY[0x29EDC7ED8];
  v5 = [v4 safeValueForKey:@"_presentedControl"];

  UIAccessibilityPostNotification(v3, v5);
}

- (void)clickInteractionPresenterDidDismiss:(id)a3
{
  v4.receiver = self;
  v4.super_class = NCToggleControlAccessibility;
  [(NCToggleControlAccessibility *)&v4 clickInteractionPresenterDidDismiss:a3];
  [(NCToggleControlAccessibility *)self _axSetPreviewInteractionAncestorsModal:0];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], self);
}

@end