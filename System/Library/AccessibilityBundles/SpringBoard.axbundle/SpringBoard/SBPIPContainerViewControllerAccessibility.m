@interface SBPIPContainerViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axExpandPIPWindow;
- (BOOL)_axShrinkPIPWindow;
- (BOOL)accessibilityActivate;
- (id)_announcementStringForQuadrant:(int)a3;
- (id)accessibilityCustomActions;
- (int)_quadrantForContentView;
- (void)_postAnnouncement:(id)a3;
- (void)interactionControllerDidEndAllInteractions:(id)a3 targetWindowScene:(id)a4;
- (void)setNeedsLayoutForInteractionController:(id)a3 traits:(unint64_t)a4 withReason:(unint64_t)a5 behavior:(int)a6 completion:(id)a7;
@end

@implementation SBPIPContainerViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBPIPContainerViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"SBPIPContainerViewController" hasInstanceMethod:@"setNeedsLayoutForInteractionController:traits:withReason:behavior:completion:" withFullSignature:{"v", "@", "Q", "Q", "i", "@?", 0}];
  [v3 validateClass:@"SBPIPContainerViewController" hasInstanceMethod:@"interactionControllerDidEndAllInteractions:targetWindowScene:" withFullSignature:{"v", "@", "@", 0}];
  [v3 validateClass:@"SBPIPContainerViewController" hasInstanceVariable:@"_contentView" withType:"UIView"];
  [v3 validateClass:@"SBPIPPegasusContainerAdapter" hasInstanceVariable:@"_pictureInPictureViewController" withType:"PGPictureInPictureViewController"];
  [v3 validateClass:@"SBPIPContainerViewController" hasInstanceVariable:@"_adapter" withType:"<SBPIPContainerViewControllerAdapter>"];
  [v3 validateClass:@"SBPIPContainerViewController" hasInstanceMethod:@"SB_accessibilitySetContentViewScale:" withFullSignature:{"v", "d", 0}];
  [v3 validateClass:@"SBPIPContainerViewController" hasInstanceMethod:@"SB_accessibilityContentViewScale" withFullSignature:{"d", 0}];
  [v3 validateClass:@"PGControlsContainerView" hasInstanceMethod:@"_handleSingleTapGestureRecognizer:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"UIViewController" hasInstanceMethod:@"view" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBPIPContainerViewController" hasInstanceMethod:@"SB_accessibilityToggleStashed" withFullSignature:{"v", 0}];
  [v3 validateClass:@"PGPictureInPictureViewController" hasInstanceMethod:@"setStashed:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"PGPictureInPictureViewController" hasInstanceMethod:@"setStashTabHidden:left:withSpringBehavior:" withFullSignature:{"v", "B", "B", "@", 0}];
  [v3 validateClass:@"PGPictureInPictureViewController" hasInstanceMethod:@"setStashProgress:" withFullSignature:{"v", "d", 0}];
}

- (void)interactionControllerDidEndAllInteractions:(id)a3 targetWindowScene:(id)a4
{
  v9.receiver = self;
  v9.super_class = SBPIPContainerViewControllerAccessibility;
  [(SBPIPContainerViewControllerAccessibility *)&v9 interactionControllerDidEndAllInteractions:a3 targetWindowScene:a4];
  PIPAXCurrentQuad = [(SBPIPContainerViewControllerAccessibility *)self _quadrantForContentView];
  v5 = MEMORY[0x29EDBA0F8];
  v6 = accessibilityLocalizedString(@"pip.window.moving.end");
  v7 = [(SBPIPContainerViewControllerAccessibility *)self _announcementStringForQuadrant:PIPAXCurrentQuad];
  v8 = [v5 stringWithFormat:v6, v7];

  [(SBPIPContainerViewControllerAccessibility *)self _postAnnouncement:v8];
  PIPAXCurrentQuad = -1;
}

- (void)setNeedsLayoutForInteractionController:(id)a3 traits:(unint64_t)a4 withReason:(unint64_t)a5 behavior:(int)a6 completion:(id)a7
{
  v9 = PIPAXCurrentQuad;
  v13.receiver = self;
  v13.super_class = SBPIPContainerViewControllerAccessibility;
  [(SBPIPContainerViewControllerAccessibility *)&v13 setNeedsLayoutForInteractionController:a3 traits:a4 withReason:a5 behavior:*&a6 completion:a7];
  if (a5 == 128)
  {
    v10 = [(SBPIPContainerViewControllerAccessibility *)self _quadrantForContentView];
    PIPAXCurrentQuad = v10;
    if (v9 == -1)
    {
      v11 = accessibilityLocalizedString(@"pip.window.moving.start");
    }

    else
    {
      if (v9 == v10)
      {
        return;
      }

      v11 = [(SBPIPContainerViewControllerAccessibility *)self _announcementStringForQuadrant:v10];
    }

    v12 = v11;
    if (v11)
    {
      [(SBPIPContainerViewControllerAccessibility *)self _postAnnouncement:v11];
    }
  }
}

- (id)accessibilityCustomActions
{
  v17[3] = *MEMORY[0x29EDCA608];
  v3 = objc_alloc(MEMORY[0x29EDC78E0]);
  v4 = accessibilityLocalizedString(@"pip.window.expand");
  v5 = [v3 initWithName:v4 target:self selector:sel__axExpandPIPWindow];

  v6 = accessibilityLocalizedString(@"pip.window.expand.short");
  [v5 _setShortName:v6];

  v7 = objc_alloc(MEMORY[0x29EDC78E0]);
  v8 = accessibilityLocalizedString(@"pip.window.shrink");
  v9 = [v7 initWithName:v8 target:self selector:sel__axShrinkPIPWindow];

  v10 = accessibilityLocalizedString(@"pip.window.shrink.short");
  [v9 _setShortName:v10];

  v11 = objc_alloc(MEMORY[0x29EDC78E0]);
  v12 = accessibilityLocalizedString(@"pip.window.stash");
  v13 = [v11 initWithName:v12 target:self selector:sel__axStashPIPWindow];

  v14 = accessibilityLocalizedString(@"pip.window.stash");
  [v13 _setShortName:v14];

  v17[0] = v5;
  v17[1] = v9;
  v17[2] = v13;
  v15 = [MEMORY[0x29EDB8D80] arrayWithObjects:v17 count:3];

  return v15;
}

void __62__SBPIPContainerViewControllerAccessibility__axStashPIPWindow__block_invoke(uint64_t a1)
{
  [*(a1 + 32) SB_accessibilityToggleStashed];
  v1 = *MEMORY[0x29EDC7ED8];

  UIAccessibilityPostNotification(v1, 0);
}

- (BOOL)_axShrinkPIPWindow
{
  [(SBPIPContainerViewControllerAccessibility *)self safeDoubleForKey:@"SB_accessibilityContentViewScale"];
  v4 = v3 + -0.1;
  if (v4 >= 0.0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  [(SBPIPContainerViewControllerAccessibility *)self SB_accessibilitySetContentViewScale:v5];
  if (v5 == 0.0)
  {
    accessibilityLocalizedString(@"pip.window.size.min");
  }

  else
  {
    AXFormatFloatWithPercentage();
  }
  v6 = ;
  [(SBPIPContainerViewControllerAccessibility *)self _postAnnouncement:v6];

  AXPerformBlockOnMainThreadAfterDelay();
  return 1;
}

- (BOOL)_axExpandPIPWindow
{
  [(SBPIPContainerViewControllerAccessibility *)self safeDoubleForKey:@"SB_accessibilityContentViewScale"];
  v4 = v3 + 0.1;
  if (v4 <= 1.0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1.0;
  }

  [(SBPIPContainerViewControllerAccessibility *)self SB_accessibilitySetContentViewScale:v5];
  if (v5 == 1.0)
  {
    accessibilityLocalizedString(@"pip.window.size.max");
  }

  else
  {
    AXFormatFloatWithPercentage();
  }
  v6 = ;
  [(SBPIPContainerViewControllerAccessibility *)self _postAnnouncement:v6];

  AXPerformBlockOnMainThreadAfterDelay();
  return 1;
}

- (void)_postAnnouncement:(id)a3
{
  v9[1] = *MEMORY[0x29EDCA608];
  v3 = MEMORY[0x29EDB9F30];
  v4 = a3;
  v5 = [v3 alloc];
  v8 = *MEMORY[0x29EDBD860];
  v9[0] = &unk_2A230C940;
  v6 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v7 = [v5 initWithString:v4 attributes:v6];

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v7);
}

- (int)_quadrantForContentView
{
  objc_opt_class();
  v3 = [(SBPIPContainerViewControllerAccessibility *)self safeValueForKey:@"_contentView"];
  v4 = __UIAccessibilityCastAsClass();

  [v4 center];
  v6 = v5;
  v8 = v7;

  objc_opt_class();
  v9 = [(SBPIPContainerViewControllerAccessibility *)self safeValueForKey:@"view"];
  v10 = __UIAccessibilityCastAsClass();

  [v10 bounds];
  v12 = v11;
  v14 = v13;

  v15 = v12 * 0.5;
  v16 = v14 * 0.5;
  v17 = v15;
  v18 = v16;
  if (v8 <= v16 && v6 <= v17)
  {
    return 1;
  }

  if (v8 <= v18 && v6 > v17)
  {
    return 2;
  }

  if (v6 <= v17 && v8 > v18)
  {
    return 3;
  }

  else
  {
    return 4;
  }
}

- (id)_announcementStringForQuadrant:(int)a3
{
  if ((a3 - 1) > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = accessibilityLocalizedString(off_29F2FC148[a3 - 1]);
  }

  return v4;
}

- (BOOL)accessibilityActivate
{
  v2 = [(SBPIPContainerViewControllerAccessibility *)self safeValueForKey:@"_adapter._pictureInPictureViewController"];
  v3 = [v2 safeValueForKey:@"_controlsContainerView"];
  v4 = __UIAccessibilitySafeClass();

  v7 = v4;
  v5 = v4;
  AXPerformSafeBlock();

  return 1;
}

@end