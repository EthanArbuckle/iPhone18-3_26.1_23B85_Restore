@interface NCToggleControlAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axPerformPreviewInteractionAction;
- (BOOL)accessibilityActivate;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (void)clickInteractionPresenterDidDismiss:(id)dismiss;
- (void)clickInteractionPresenterDidPresent:(id)present;
@end

@implementation NCToggleControlAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  if (AXProcessIsSpringBoard())
  {
    [validationsCopy validateClass:@"SBFTouchPassThroughView"];
    [validationsCopy validateClass:@"CSCoverSheetViewBase"];
  }

  [validationsCopy validateClass:@"NCNotificationListCoalescingControlsView"];
  [validationsCopy validateClass:@"NCToggleControl" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCToggleControl" hasInstanceMethod:@"isExpanded" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"NCToggleControl" hasInstanceMethod:@"_previewInteractionPlatterPresenter" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCToggleControl" hasInstanceMethod:@"clickInteractionPresenterDidPresent:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"NCToggleControl" hasInstanceMethod:@"clickInteractionPresenterDidDismiss:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"NCClickInteractionPresenter" hasInstanceMethod:@"_presentedControl" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCClickInteractionPresenter" hasInstanceMethod:@"_containerView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCClickInteractionPresentedControl" isKindOfClass:@"UIControl"];
  [validationsCopy validateClass:@"NCNotificationListCoalescingHeaderCell" hasInstanceMethod:@"handlerDelegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCNotificationListCoalescingControlsCell" hasInstanceMethod:@"handlerDelegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCNotificationGroupList" hasInstanceMethod:@"leadingNotificationRequest" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCNotificationRequest" hasInstanceMethod:@"content" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCNotificationContent" hasInstanceMethod:@"header" withFullSignature:{"@", 0}];
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

    accessibilityLabel = v3;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = NCToggleControlAccessibility;
    accessibilityLabel = [(NCToggleControlAccessibility *)&v9 accessibilityLabel];
  }

  v6 = accessibilityLabel;
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
  accessibilityLabel = [v4 accessibilityLabel];

  if (accessibilityLabel)
  {
    v6 = [objc_alloc(MEMORY[0x29EDC78E0]) initWithName:accessibilityLabel target:self selector:sel__axPerformPreviewInteractionAction];
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

- (void)clickInteractionPresenterDidPresent:(id)present
{
  selfCopy = self;
  v6.receiver = self;
  v6.super_class = NCToggleControlAccessibility;
  presentCopy = present;
  [(NCToggleControlAccessibility *)&v6 clickInteractionPresenterDidPresent:presentCopy];
  [(NCToggleControlAccessibility *)selfCopy _axSetPreviewInteractionAncestorsModal:1, v6.receiver, v6.super_class];
  LODWORD(selfCopy) = *MEMORY[0x29EDC7ED8];
  v5 = [presentCopy safeValueForKey:@"_presentedControl"];

  UIAccessibilityPostNotification(selfCopy, v5);
}

- (void)clickInteractionPresenterDidDismiss:(id)dismiss
{
  v4.receiver = self;
  v4.super_class = NCToggleControlAccessibility;
  [(NCToggleControlAccessibility *)&v4 clickInteractionPresenterDidDismiss:dismiss];
  [(NCToggleControlAccessibility *)self _axSetPreviewInteractionAncestorsModal:0];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], self);
}

@end