@interface VideosPlaybackViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_canHideOverlayView;
- (void)_axAnnounceControlsVisible:(BOOL)visible;
- (void)_handleSingleTap:(id)tap;
- (void)_hideOverlayViewWithCompletionBlock:(id)block;
- (void)_overlayIdleTimerFired:(id)fired;
@end

@implementation VideosPlaybackViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VideosPlaybackViewController" hasInstanceVariable:@"_overlayView" withType:"VideosPlaybackOverlayView"];
  [validationsCopy validateClass:@"VideosPlaybackViewController" hasInstanceVariable:@"_overlayViewVisible" withType:"B"];
  [validationsCopy validateClass:@"VideosPlaybackViewController" hasInstanceMethod:@"_canHideOverlayView" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"VideosPlaybackViewController" hasInstanceMethod:@"_hideOverlayViewWithCompletionBlock:" withFullSignature:{"v", "@?", 0}];
  [validationsCopy validateClass:@"VideosPlaybackViewController" hasInstanceMethod:@"_showOverlayViewQuickHide:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"VideosPlaybackViewController" hasInstanceMethod:@"_handleSingleTap:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"VideosPlaybackViewController" hasInstanceMethod:@"_overlayIdleTimerFired:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"VideosPlaybackViewController" hasInstanceMethod:@"_cancelOverlayIdleTimer:" withFullSignature:{"v", ":", 0}];
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

- (void)_hideOverlayViewWithCompletionBlock:(id)block
{
  blockCopy = block;
  _axOverlayViewVisible = [(VideosPlaybackViewControllerAccessibility *)self _axOverlayViewVisible];
  v7.receiver = self;
  v7.super_class = VideosPlaybackViewControllerAccessibility;
  [(VideosPlaybackViewControllerAccessibility *)&v7 _hideOverlayViewWithCompletionBlock:blockCopy];

  _axOverlayViewVisible2 = [(VideosPlaybackViewControllerAccessibility *)self _axOverlayViewVisible];
  if (_axOverlayViewVisible != _axOverlayViewVisible2)
  {
    [(VideosPlaybackViewControllerAccessibility *)self _axAnnounceControlsVisible:_axOverlayViewVisible2];
  }
}

- (void)_axAnnounceControlsVisible:(BOOL)visible
{
  visibleCopy = visible;
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], *MEMORY[0x29EDBDAB0]);
  if (visibleCopy)
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

- (void)_handleSingleTap:(id)tap
{
  tapCopy = tap;
  if ([(VideosPlaybackViewControllerAccessibility *)self _axOverlayViewVisible])
  {
    [(VideosPlaybackViewControllerAccessibility *)self _accessibilitySetBoolValue:1 forKey:@"AXConsumeSingleTap"];
  }

  v5.receiver = self;
  v5.super_class = VideosPlaybackViewControllerAccessibility;
  [(VideosPlaybackViewControllerAccessibility *)&v5 _handleSingleTap:tapCopy];
}

- (void)_overlayIdleTimerFired:(id)fired
{
  firedCopy = fired;
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
      [(VideosPlaybackViewControllerAccessibility *)&v8 _overlayIdleTimerFired:firedCopy];
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = VideosPlaybackViewControllerAccessibility;
    [(VideosPlaybackViewControllerAccessibility *)&v10 _overlayIdleTimerFired:firedCopy];
  }
}

@end