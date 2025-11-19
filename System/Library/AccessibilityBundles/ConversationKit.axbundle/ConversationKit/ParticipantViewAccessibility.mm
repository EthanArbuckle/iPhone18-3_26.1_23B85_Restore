@interface ParticipantViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityIsLocalParticipantExpanded;
- (BOOL)_accessibilityIsLocalParticipantFullScreen;
- (BOOL)_axHandleKickMemberAction;
- (BOOL)_axHandleSingleTap;
- (BOOL)accessibilityElementsHidden;
- (id)_accessibilityMonogramView;
- (id)_accessibilityMultiwayViewController;
- (id)_accessibilityVideoOverlayView;
- (id)_accessibilityVideoView;
- (id)_axConstraintsController;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)automationElements;
@end

@implementation ParticipantViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ConversationKit.ParticipantViewLabelContainerView"];
  [v3 validateClass:@"ConversationKit.ParticipantMonogramView"];
  [v3 validateClass:@"ConversationKit.ParticipantVideoView"];
  [v3 validateClass:@"ConversationKit.ParticipantVideoOverlayView"];
  [v3 validateClass:@"ConversationKit.ParticipantView" hasInstanceMethod:@"isExpanded" withFullSignature:{"B", 0}];
  [v3 validateClass:@"ConversationKit.ParticipantView" hasInstanceMethod:@"isInRoster" withFullSignature:{"B", 0}];
  [v3 validateClass:@"ConversationKit.ParticipantView" hasInstanceMethod:@"infoView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ConversationKit.TapInteraction" hasInstanceMethod:@"numberOfTapsRequired" withFullSignature:{"q", 0}];
  [v3 validateClass:@"ConversationKit.TapInteraction" hasInstanceMethod:@"handleRecognizer:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"ConversationKit.ParticipantInfoView" hasInstanceMethod:@"isMomentsAvailable" withFullSignature:{"B", 0}];
  [v3 validateClass:@"ConversationKit.MultiwayViewController" hasInstanceMethod:@"accessibilityConstraintController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CNKFaceTimeConstraintsController" hasInstanceMethod:@"localParticipantState" withFullSignature:{"q", 0}];
  [v3 validateClass:@"ConversationKit.ParticipantInfoView" hasInstanceMethod:@"didTapShutterButton" withFullSignature:{"v", 0}];
  [v3 validateClass:@"ConversationKit.MultiwayViewController"];
  [v3 validateClass:@"ConversationKit.MultiwayViewController" hasInstanceMethod:@"mediaPipFrameInWindowScene" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [v3 validateClass:@"ConversationKit.ParticipantView" hasInstanceMethod:@"kickMemberButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ConversationKit.ParticipantView" hasInstanceMethod:@"monogramView" withFullSignature:{"@", 0}];
}

- (BOOL)accessibilityElementsHidden
{
  if ([(ParticipantViewAccessibility *)self _accessibilityIsLocalParticipantExpanded])
  {
    return 1;
  }

  return [(ParticipantViewAccessibility *)self _accessibilityIsLocalParticipantFullScreen];
}

- (id)accessibilityLabel
{
  v3 = [(ParticipantViewAccessibility *)self _accessibilityMonogramView];
  v4 = [v3 isHidden];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [(ParticipantViewAccessibility *)self _accessibilityMonogramView];
    v5 = [v6 accessibilityLabel];
  }

  if ([v5 length])
  {
    v7 = v5;
  }

  else
  {
    v8 = [(ParticipantViewAccessibility *)self safeValueForKey:@"infoView"];
    v7 = [v8 accessibilityLabel];
  }

  return v7;
}

- (id)accessibilityValue
{
  if ([(ParticipantViewAccessibility *)self safeBoolForKey:@"isExpanded"])
  {
    v3 = accessibilityLocalizedString(@"fullscreen");
  }

  else
  {
    v3 = 0;
  }

  v4 = [(ParticipantViewAccessibility *)self _accessibilityVideoOverlayView];
  if ([v4 isHidden])
  {
    v5 = 0;
  }

  else
  {
    v5 = [v4 accessibilityLabel];
  }

  v6 = __UIAXStringForVariables();

  return v6;
}

- (id)accessibilityCustomActions
{
  v3 = [(ParticipantViewAccessibility *)self _accessibilityMultiwayViewController];
  [v3 safeCGRectForKey:@"mediaPipFrameInWindowScene"];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v33.origin.x = v5;
  v33.origin.y = v7;
  v33.size.width = v9;
  v33.size.height = v11;
  if (CGRectEqualToRect(v33, *MEMORY[0x29EDB90E0]))
  {
    v13 = [(ParticipantViewAccessibility *)self _accessibilityVideoView];
    if (([v13 isHidden] & 1) == 0)
    {
      v14 = [(ParticipantViewAccessibility *)self safeBoolForKey:@"isInRoster"];

      if (v14)
      {
        goto LABEL_5;
      }

      v18 = [(ParticipantViewAccessibility *)self safeBoolForKey:@"isExpanded"];
      v19 = @"enter.fullscreen";
      if (v18)
      {
        v19 = @"exit.fullscreen";
      }

      v20 = MEMORY[0x29EDC78E0];
      v21 = v19;
      v22 = [v20 alloc];
      v23 = accessibilityLocalizedString(v21);

      v24 = [v22 initWithName:v23 target:self selector:sel__axHandleSingleTap];
      [v12 addObject:v24];

      v25 = [(ParticipantViewAccessibility *)self safeValueForKey:@"infoView"];
      LODWORD(v21) = [v25 safeBoolForKey:@"isMomentsAvailable"];

      if (v21)
      {
        v26 = objc_alloc(MEMORY[0x29EDC78E0]);
        v27 = accessibilityLocalizedString(@"take.live.photo");
        v28 = [v26 initWithName:v27 target:self selector:sel__axHandleTakeLivePhotoAction];
        [v12 addObject:v28];
      }

      v13 = [(ParticipantViewAccessibility *)self safeUIViewForKey:@"kickMemberButton"];
      if ([v13 _accessibilityViewIsVisible])
      {
        v29 = objc_alloc(MEMORY[0x29EDC78E0]);
        v30 = accessibilityLocalizedString(@"kick.member");
        v31 = [v29 initWithName:v30 target:self selector:sel__axHandleKickMemberAction];
        [v12 addObject:v31];
      }
    }

LABEL_5:
    v15 = [(ParticipantViewAccessibility *)self safeValueForKey:@"monogramView"];
    v16 = [v15 accessibilityCustomActions];
    [v12 addObjectsFromArray:v16];
  }

  return v12;
}

- (BOOL)_axHandleSingleTap
{
  AXPerformSafeBlock();
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  return 1;
}

void __50__ParticipantViewAccessibility__axHandleSingleTap__block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = *(a1 + 32);
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 interactions];
  [v4 enumerateObjectsUsingBlock:&__block_literal_global_7];
}

void __50__ParticipantViewAccessibility__axHandleSingleTap__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([v6 safeIntegerForKey:@"numberOfTapsRequired"] == 1)
  {
    v5 = objc_alloc_init(AX_RecognizedTapGestureRecognizer);
    [v6 handleRecognizer:v5];

    *a4 = 1;
  }
}

void __60__ParticipantViewAccessibility__axHandleTakeLivePhotoAction__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) safeValueForKey:@"infoView"];
  [v1 didTapShutterButton];
}

- (BOOL)_axHandleKickMemberAction
{
  v2 = [(ParticipantViewAccessibility *)self safeValueForKey:@"kickMemberButton"];
  v3 = __UIAccessibilitySafeClass();

  [v3 sendActionsForControlEvents:64];
  return v3 != 0;
}

- (id)automationElements
{
  v3 = MEMORY[0x29EDB8D80];
  v4 = [(ParticipantViewAccessibility *)self safeValueForKey:@"infoView"];
  v5 = [(ParticipantViewAccessibility *)self safeValueForKey:@"kickMemberButton"];
  v6 = [(ParticipantViewAccessibility *)self safeValueForKeyPath:@"monogramView"];
  v7 = [v3 axArrayByIgnoringNilElementsWithCount:{3, v4, v5, v6}];

  return v7;
}

- (BOOL)_accessibilityIsLocalParticipantExpanded
{
  v2 = [(ParticipantViewAccessibility *)self _axConstraintsController];
  v3 = [v2 safeIntegerForKey:@"localParticipantState"] == 2;

  return v3;
}

- (BOOL)_accessibilityIsLocalParticipantFullScreen
{
  v2 = [(ParticipantViewAccessibility *)self _axConstraintsController];
  v3 = [v2 safeIntegerForKey:@"localParticipantState"] == 3;

  return v3;
}

- (id)_axConstraintsController
{
  v2 = [(ParticipantViewAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_389 startWithSelf:1];
  v3 = [v2 _accessibilityViewController];
  v4 = [v3 safeValueForKey:@"accessibilityConstraintController"];

  return v4;
}

uint64_t __56__ParticipantViewAccessibility__axConstraintsController__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  MEMORY[0x29C2D28F0](@"ConversationKit.MultiwayViewController");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)_accessibilityMonogramView
{
  objc_opt_class();
  v3 = [(ParticipantViewAccessibility *)self _accessibilityDescendantOfType:MEMORY[0x29C2D28F0](@"ConversationKit.ParticipantMonogramView")];
  v4 = __UIAccessibilityCastAsClass();

  return v4;
}

- (id)_accessibilityVideoView
{
  objc_opt_class();
  v3 = [(ParticipantViewAccessibility *)self _accessibilityDescendantOfType:MEMORY[0x29C2D28F0](@"ConversationKit.ParticipantVideoView")];
  v4 = __UIAccessibilityCastAsClass();

  return v4;
}

- (id)_accessibilityVideoOverlayView
{
  objc_opt_class();
  v3 = [(ParticipantViewAccessibility *)self _accessibilityDescendantOfType:MEMORY[0x29C2D28F0](@"ConversationKit.ParticipantVideoOverlayView")];
  v4 = __UIAccessibilityCastAsClass();

  return v4;
}

- (id)_accessibilityMultiwayViewController
{
  v2 = [(ParticipantViewAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_391 startWithSelf:0];
  v3 = [v2 _accessibilityViewController];

  return v3;
}

uint64_t __68__ParticipantViewAccessibility__accessibilityMultiwayViewController__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  MEMORY[0x29C2D28F0](@"ConversationKit.MultiwayViewController");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end