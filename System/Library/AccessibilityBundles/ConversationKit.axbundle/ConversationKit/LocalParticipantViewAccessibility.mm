@interface LocalParticipantViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityIsExpanded;
- (BOOL)_accessibilityIsFullScreen;
- (BOOL)_axHandleLongPress;
- (BOOL)_axIsShowingVideo;
- (BOOL)_axReactionsVisible;
- (BOOL)accessibilityActivate;
- (BOOL)accessibilityPerformEscape;
- (id)_accessibilitySupplementaryFooterViews;
- (id)_axConstraintsController;
- (id)_axMultiwayViewController;
- (id)_axParticipantView;
- (id)accessibilityAttributedLabel;
- (id)accessibilityCustomActions;
- (id)accessibilityHint;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)updateCountdownWith:(int64_t)with;
@end

@implementation LocalParticipantViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ConversationKit.MultiwayViewController" hasInstanceMethod:@"accessibilityConstraintController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ConversationKit.MultiwayViewController" hasInstanceMethod:@"toggleReactionsView" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"ConversationKit.MultiwayViewController" hasProperty:@"reactionsViewController" withType:"@"];
  [validationsCopy validateClass:@"ConversationKit.VideoReactionPickerViewController" hasProperty:@"view" withType:"@"];
  [validationsCopy validateClass:@"CNKFaceTimeConstraintsController" hasInstanceMethod:@"localParticipantState" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"ParticipantViewAccessibility" hasInstanceMethod:@"_accessibilityVideoView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ConversationKit.LocalParticipantView" hasInstanceMethod:@"controlsView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ConversationKit.LocalParticipantView" hasSwiftField:@"buttonShelfHost" withSwiftType:"Optional<UIHostingController<ButtonShelfView>>"];
  [validationsCopy validateClass:@"ConversationKit.LocalParticipantControlsView" hasInstanceMethod:@"collapseButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ConversationKit.LocalParticipantView" hasInstanceMethod:@"updateCountdownWith:" withFullSignature:{"v", "q", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v8.receiver = self;
  v8.super_class = LocalParticipantViewAccessibility;
  [(LocalParticipantViewAccessibility *)&v8 _accessibilityLoadAccessibilityInformation];
  objc_initWeak(&location, self);
  v3 = [(LocalParticipantViewAccessibility *)self safeSwiftValueForKey:@"buttonShelfHost"];
  v4 = [v3 safeValueForKey:@"view"];
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __79__LocalParticipantViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v5[3] = &unk_29F2B7D20;
  objc_copyWeak(&v6, &location);
  [v4 setAccessibilityElementsHiddenBlock:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

uint64_t __79__LocalParticipantViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _accessibilityIsExpanded];

  return v2 ^ 1u;
}

- (id)accessibilityAttributedLabel
{
  v3 = accessibilityLocalizedString(@"participant.video");
  _axParticipantView = [(LocalParticipantViewAccessibility *)self _axParticipantView];
  accessibilityLabel = [_axParticipantView accessibilityLabel];
  v5 = __UIAXStringForVariables();

  v6 = [objc_alloc(MEMORY[0x29EDBA038]) initWithString:{v5, accessibilityLabel, @"__AXStringForVariablesSentinel"}];
  v7 = *MEMORY[0x29EDC7F40];
  v8 = [v3 length];
  v9 = [v5 length];
  v10 = [v3 length];
  [v6 addAttribute:v7 value:MEMORY[0x29EDB8EB0] range:{v8, v9 - v10}];

  return v6;
}

- (id)accessibilityValue
{
  v3 = [(LocalParticipantViewAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_6 startWithSelf:1];
  v4 = [v3 _accessibilityFindDescendant:&__block_literal_global_349];
  if ([(LocalParticipantViewAccessibility *)self _accessibilityIsExpanded])
  {
    v5 = accessibilityLocalizedString(@"fullscreen");
  }

  else
  {
    v5 = 0;
  }

  if ([(LocalParticipantViewAccessibility *)self _axIsShowingVideo])
  {
    [v4 accessibilityValue];
  }

  else
  {
    accessibilityLocalizedString(@"video.hidden");
  }
  v8 = ;
  v6 = __UIAXStringForVariables();

  return v6;
}

uint64_t __55__LocalParticipantViewAccessibility_accessibilityValue__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  MEMORY[0x29C2D28F0](@"ConversationKit.MultiwayViewController");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __55__LocalParticipantViewAccessibility_accessibilityValue__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 accessibilityIdentifier];
  v3 = [v2 isEqualToString:@"AXCFXViewFinder"];

  return v3;
}

- (id)accessibilityHint
{
  _accessibilityIsExpanded = [(LocalParticipantViewAccessibility *)self _accessibilityIsExpanded];
  _axReactionsVisible = [(LocalParticipantViewAccessibility *)self _axReactionsVisible];
  if ([(LocalParticipantViewAccessibility *)self _axIsShowingVideo])
  {
    if (_accessibilityIsExpanded || _axReactionsVisible)
    {
      v5 = @"minimize.hint";
    }

    else
    {
      v5 = @"maximize.hint";
    }

    v6 = accessibilityLocalizedString(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)accessibilityTraits
{
  _axIsShowingVideo = [(LocalParticipantViewAccessibility *)self _axIsShowingVideo];
  v3 = MEMORY[0x29EDC7F70];
  if (!_axIsShowingVideo)
  {
    v3 = MEMORY[0x29EDC7FA0];
  }

  return *v3;
}

- (BOOL)accessibilityActivate
{
  _axParticipantView = [(LocalParticipantViewAccessibility *)self _axParticipantView];
  _accessibilityIsExpanded = [(LocalParticipantViewAccessibility *)self _accessibilityIsExpanded];
  _axReactionsVisible = [(LocalParticipantViewAccessibility *)self _axReactionsVisible];
  if ([(LocalParticipantViewAccessibility *)self _axIsShowingVideo])
  {
    if (_accessibilityIsExpanded)
    {
      objc_opt_class();
      v7 = [(LocalParticipantViewAccessibility *)self safeValueForKeyPath:@"controlsView.collapseButton"];
      v6 = __UIAccessibilityCastAsClass();

      LOBYTE(v7) = v6 != 0;
      if (v6)
      {
        [v6 sendActionsForControlEvents:64];
        v8 = *MEMORY[0x29EDC7EA8];
        v9 = accessibilityLocalizedString(@"minimized.local");
        UIAccessibilityPostNotification(v8, v9);

        UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
      }
    }

    else
    {
      v7 = [_axParticipantView safeValueForKey:@"_axHandleSingleTap"];

      if (v7)
      {
        LODWORD(v7) = *MEMORY[0x29EDC7EA8];
        if (_axReactionsVisible)
        {
          v10 = @"minimized.local";
        }

        else
        {
          v10 = @"maximized.local";
        }

        v11 = accessibilityLocalizedString(v10);
        UIAccessibilityPostNotification(v7, v11);

        UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
        LOBYTE(v7) = 1;
      }
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)accessibilityPerformEscape
{
  _accessibilityIsExpanded = [(LocalParticipantViewAccessibility *)self _accessibilityIsExpanded];
  if ([(LocalParticipantViewAccessibility *)self _axReactionsVisible])
  {
    _axParticipantView = [(LocalParticipantViewAccessibility *)self _axParticipantView];
    v5 = [_axParticipantView safeValueForKey:@"_axHandleSingleTap"];

    if (v5)
    {
      v6 = *MEMORY[0x29EDC7EA8];
      v7 = accessibilityLocalizedString(@"minimized.local");
      UIAccessibilityPostNotification(v6, v7);

      UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
      return 1;
    }
  }

  if (!_accessibilityIsExpanded)
  {
    return 0;
  }

  objc_opt_class();
  v9 = [(LocalParticipantViewAccessibility *)self safeValueForKeyPath:@"controlsView.collapseButton"];
  v10 = __UIAccessibilityCastAsClass();

  v8 = v10 != 0;
  if (v10)
  {
    [v10 sendActionsForControlEvents:64];
    v11 = *MEMORY[0x29EDC7EA8];
    v12 = accessibilityLocalizedString(@"minimized.local");
    UIAccessibilityPostNotification(v11, v12);

    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }

  return v8;
}

- (id)accessibilityCustomActions
{
  v3 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  if (![(LocalParticipantViewAccessibility *)self _axReactionsVisible]&& ![(LocalParticipantViewAccessibility *)self _accessibilityIsExpanded])
  {
    v4 = objc_alloc(MEMORY[0x29EDC78E0]);
    v5 = accessibilityLocalizedString(@"camera.open.reactions");
    v6 = [v4 initWithName:v5 target:self selector:sel__axHandleLongPress];
    [v3 addObject:v6];
  }

  return v3;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v3 = MEMORY[0x29EDB8D80];
  v4 = [(LocalParticipantViewAccessibility *)self safeValueForKey:@"controlsView"];
  v5 = [(LocalParticipantViewAccessibility *)self safeSwiftValueForKey:@"buttonShelfHost"];
  v6 = [v5 safeValueForKey:@"view"];
  v7 = [v3 axArrayByIgnoringNilElementsWithCount:{2, v4, v6}];

  return v7;
}

- (void)updateCountdownWith:(int64_t)with
{
  v6.receiver = self;
  v6.super_class = LocalParticipantViewAccessibility;
  [(LocalParticipantViewAccessibility *)&v6 updateCountdownWith:?];
  v4 = *MEMORY[0x29EDC7EA8];
  with = [MEMORY[0x29EDBA0F8] localizedStringWithFormat:@"%ld", with];
  UIAccessibilityPostNotification(v4, with);
}

- (BOOL)_axIsShowingVideo
{
  _axParticipantView = [(LocalParticipantViewAccessibility *)self _axParticipantView];
  v3 = [_axParticipantView safeUIViewForKey:@"_accessibilityVideoView"];
  isHidden = [v3 isHidden];

  return isHidden ^ 1;
}

- (BOOL)_axReactionsVisible
{
  _axMultiwayViewController = [(LocalParticipantViewAccessibility *)self _axMultiwayViewController];
  v3 = [_axMultiwayViewController safeBoolForKey:@"isShowingReactions"];

  return v3;
}

- (id)_axParticipantView
{
  _axGetParticipantView = [(LocalParticipantViewAccessibility *)self _axGetParticipantView];
  if (!_axGetParticipantView)
  {
    _axGetParticipantView = [(LocalParticipantViewAccessibility *)self _accessibilityDescendantOfType:MEMORY[0x29C2D28F0](@"ConversationKit.ParticipantView")];
    [(LocalParticipantViewAccessibility *)self _axSetParticipantView:_axGetParticipantView];
  }

  return _axGetParticipantView;
}

- (id)_axMultiwayViewController
{
  v2 = [(LocalParticipantViewAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_399 startWithSelf:1];
  _accessibilityViewController = [v2 _accessibilityViewController];

  return _accessibilityViewController;
}

uint64_t __62__LocalParticipantViewAccessibility__axMultiwayViewController__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  MEMORY[0x29C2D28F0](@"ConversationKit.MultiwayViewController");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)_axConstraintsController
{
  _axMultiwayViewController = [(LocalParticipantViewAccessibility *)self _axMultiwayViewController];
  v3 = [_axMultiwayViewController safeValueForKey:@"accessibilityConstraintController"];

  return v3;
}

- (BOOL)_accessibilityIsExpanded
{
  _axConstraintsController = [(LocalParticipantViewAccessibility *)self _axConstraintsController];
  v3 = [_axConstraintsController safeIntegerForKey:@"localParticipantState"];

  return v3 == 2;
}

- (BOOL)_accessibilityIsFullScreen
{
  _axConstraintsController = [(LocalParticipantViewAccessibility *)self _axConstraintsController];
  v3 = [_axConstraintsController safeIntegerForKey:@"localParticipantState"];

  return v3 == 3;
}

- (BOOL)_axHandleLongPress
{
  _axMultiwayViewController = [(LocalParticipantViewAccessibility *)self _axMultiwayViewController];
  v8 = MEMORY[0x29EDCA5F8];
  v9 = 3221225472;
  v10 = __55__LocalParticipantViewAccessibility__axHandleLongPress__block_invoke;
  v11 = &unk_29F2B7C18;
  v12 = _axMultiwayViewController;
  AXPerformSafeBlock();
  v3 = dispatch_time(0, 1000000000);
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __55__LocalParticipantViewAccessibility__axHandleLongPress__block_invoke_2;
  v6[3] = &unk_29F2B7C18;
  v7 = v12;
  v4 = v12;
  dispatch_after(v3, MEMORY[0x29EDCA578], v6);

  return 1;
}

void __55__LocalParticipantViewAccessibility__axHandleLongPress__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) safeValueForKey:@"reactionsViewController"];
  v1 = [v2 safeValueForKey:@"view"];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v1);
}

@end