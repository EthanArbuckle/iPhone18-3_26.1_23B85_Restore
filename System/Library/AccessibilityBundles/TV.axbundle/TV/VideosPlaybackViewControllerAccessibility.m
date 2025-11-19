@interface VideosPlaybackViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_canHideOverlayView;
- (void)_axAnnounceControlsVisible:(BOOL)a3;
- (void)_handleSingleTap:(id)a3;
- (void)_hideOverlayViewWithCompletionBlock:(id)a3;
- (void)_overlayIdleTimerFired:(id)a3;
@end

@implementation VideosPlaybackViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VideosPlaybackViewController" hasInstanceVariable:@"_overlayView" withType:"VideosPlaybackOverlayView"];
  [v3 validateClass:@"VideosPlaybackViewController" hasInstanceVariable:@"_overlayViewVisible" withType:"B"];
  [v3 validateClass:@"VideosPlaybackViewController" hasInstanceMethod:@"_canHideOverlayView" withFullSignature:{"B", 0}];
  [v3 validateClass:@"VideosPlaybackViewController" hasInstanceMethod:@"_hideOverlayViewWithCompletionBlock:" withFullSignature:{"v", "@?", 0}];
  [v3 validateClass:@"VideosPlaybackViewController" hasInstanceMethod:@"_showOverlayViewQuickHide:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"VideosPlaybackViewController" hasInstanceMethod:@"_handleSingleTap:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"VideosPlaybackViewController" hasInstanceMethod:@"_overlayIdleTimerFired:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"VideosPlaybackViewController" hasInstanceMethod:@"_cancelOverlayIdleTimer:" withFullSignature:{"v", ":", 0}];
}

- (BOOL)_canHideOverlayView
{
  v3 = [(VideosPlaybackViewControllerAccessibility *)self _accessibilityBoolValueForKey:@"AXConsumeSingleTap"];
  if (UIAccessibilityIsVoiceOverRunning())
  {
    if (v3)
    {
      [(VideosPlaybackViewControllerAccessibility *)self _accessibilitySetBoolValue:0 forKey:@"AXConsumeSingleTap"];
      return 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v5.receiver = self;
    v5.super_class = VideosPlaybackViewControllerAccessibility;
    return [(VideosPlaybackViewControllerAccessibility *)&v5 _canHideOverlayView];
  }
}

- (void)_hideOverlayViewWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(VideosPlaybackViewControllerAccessibility *)self _axOverlayViewVisible];
  v7.receiver = self;
  v7.super_class = VideosPlaybackViewControllerAccessibility;
  [(VideosPlaybackViewControllerAccessibility *)&v7 _hideOverlayViewWithCompletionBlock:v4];

  v6 = [(VideosPlaybackViewControllerAccessibility *)self _axOverlayViewVisible];
  if (v5 != v6)
  {
    [(VideosPlaybackViewControllerAccessibility *)self _axAnnounceControlsVisible:v6];
  }
}

- (void)_axAnnounceControlsVisible:(BOOL)a3
{
  v3 = a3;
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], *MEMORY[0x29EDBDAB0]);
  if (v3)
  {
    v4 = @"controls.shown";
  }

  else
  {
    v4 = @"controls.hidden";
  }

  v5 = accessibilityLocalizedString(v4);
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v5);
}

- (void)_handleSingleTap:(id)a3
{
  v4 = a3;
  if ([(VideosPlaybackViewControllerAccessibility *)self _axOverlayViewVisible])
  {
    [(VideosPlaybackViewControllerAccessibility *)self _accessibilitySetBoolValue:1 forKey:@"AXConsumeSingleTap"];
  }

  v5.receiver = self;
  v5.super_class = VideosPlaybackViewControllerAccessibility;
  [(VideosPlaybackViewControllerAccessibility *)&v5 _handleSingleTap:v4];
}

- (void)_overlayIdleTimerFired:(id)a3
{
  v4 = a3;
  if (UIAccessibilityIsSwitchControlRunning())
  {
    v5 = UIAccessibilityFocusedElement(*MEMORY[0x29EDC7EE0]);
    v9 = 0;
    objc_opt_class();
    v6 = [(VideosPlaybackViewControllerAccessibility *)self safeValueForKey:@"_overlayView"];
    v7 = __UIAccessibilityCastAsClass();

    if ([v5 _accessibilityIsDescendantOfElement:v7])
    {
      AXPerformSafeBlock();
    }

    else
    {
      v8.receiver = self;
      v8.super_class = VideosPlaybackViewControllerAccessibility;
      [(VideosPlaybackViewControllerAccessibility *)&v8 _overlayIdleTimerFired:v4];
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = VideosPlaybackViewControllerAccessibility;
    [(VideosPlaybackViewControllerAccessibility *)&v10 _overlayIdleTimerFired:v4];
  }
}

@end