@interface AVMobileGlassControlsViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_updateControlsVisibilityStateIfNeededAnimated:(id)a3;
- (void)flashControlsWithDuration:(double)a3;
- (void)toggleVisibility:(id)a3;
@end

@implementation AVMobileGlassControlsViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AVMobileGlassControlsViewController" hasInstanceMethod:@"toggleVisibility:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"AVMobileGlassControlsViewController" hasInstanceMethod:@"flashControlsWithDuration:" withFullSignature:{"v", "d", 0}];
  [v3 validateClass:@"AVMobileGlassControlsViewController" hasInstanceVariable:@"_temporarilyVisible" withType:"B"];
  [v3 validateClass:@"AVMobileGlassControlsViewController" hasInstanceVariable:@"_view" withType:"AVMobileGlassControlsView"];
  [v3 validateClass:@"AVMobileGlassControlsViewController" hasInstanceVariable:@"_needsControlsVisibilityStateUpdate" withType:"B"];
  [v3 validateClass:@"AVMobileGlassControlsView" hasInstanceMethod:@"playbackControlsView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AVMobileGlassPlaybackControlsView" hasInstanceVariable:@"_playPauseButton" withType:"AVMobileGlassPlaybackControlButton"];
  [v3 validateClass:@"AVMobileGlassControlsViewController" hasInstanceVariable:@"_visibilityTimer" withType:"NSTimer"];
  [v3 validateClass:@"AVPlayerController" hasInstanceMethod:@"isPlaying" withFullSignature:{"B", 0}];
  [v3 validateClass:@"AVMobileGlassControlsViewController" hasInstanceMethod:@"_updateControlsVisibilityStateIfNeededAnimated:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"AVMobileGlassControlsViewController" hasProperty:@"playerController" withType:"@"];
  [v3 validateClass:@"AVMobileGlassPlaybackControlsView" hasInstanceMethod:@"playPauseButtonShowsPlayIcon" withFullSignature:{"B", 0}];
  [v3 validateClass:@"AVMobileGlassPlaybackControlsView" hasInstanceMethod:@"backwardSecondaryButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AVMobileGlassPlaybackControlsView" hasInstanceMethod:@"forwardSecondaryButton" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v11.receiver = self;
  v11.super_class = AVMobileGlassControlsViewControllerAccessibility;
  [(AVMobileGlassControlsViewControllerAccessibility *)&v11 _accessibilityLoadAccessibilityInformation];
  v3 = [(AVMobileGlassControlsViewControllerAccessibility *)self safeValueForKeyPath:@"_view._playbackControlsView"];
  v4 = [v3 safeValueForKey:@"_playPauseButton"];
  v5 = [v3 safeValueForKey:@"backwardSecondaryButton"];
  v6 = [v3 safeValueForKey:@"forwardSecondaryButton"];
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __94__AVMobileGlassControlsViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v8[3] = &unk_29F298F00;
  objc_copyWeak(&v9, &location);
  [v4 _setAccessibilityLabelBlock:v8];
  v7 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{3, v5, v4, v6}];
  [v3 setAccessibilityElements:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

id __94__AVMobileGlassControlsViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeValueForKey:@"_view"];
  v3 = [v2 safeValueForKey:@"_playbackControlsView"];
  v4 = [v3 safeBoolForKey:@"playPauseButtonShowsPlayIcon"];

  if (v4)
  {
    v5 = @"play.button";
  }

  else
  {
    v5 = @"pause.button";
  }

  v6 = accessibilityLocalizedString(v5);

  return v6;
}

- (void)toggleVisibility:(id)a3
{
  v4 = a3;
  v5 = [(AVMobileGlassControlsViewControllerAccessibility *)self safeBoolForKey:@"_temporarilyVisible"];
  v15.receiver = self;
  v15.super_class = AVMobileGlassControlsViewControllerAccessibility;
  [(AVMobileGlassControlsViewControllerAccessibility *)&v15 toggleVisibility:v4];

  v6 = [(AVMobileGlassControlsViewControllerAccessibility *)self safeBoolForKey:@"_temporarilyVisible"];
  if (v5 != v6)
  {
    v7 = v6;
    v8 = [(AVMobileGlassControlsViewControllerAccessibility *)self safeValueForKey:@"playerController"];
    v9 = [v8 safeBoolForKey:@"isPlaying"];

    if (((v9 | v7) & 1) == 0)
    {
      v10 = accessibilityLocalizedString(@"hiding.media.controls.announcement");
      UIAccessibilitySpeakOrQueueIfNeeded();
    }

    v11 = [(AVMobileGlassControlsViewControllerAccessibility *)self safeValueForKey:@"_view"];
    v12 = [v11 safeValueForKey:@"_playbackControlsView"];

    v13 = [v12 safeValueForKey:@"_playPauseButton"];
    if (v7)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v14);
  }
}

- (void)flashControlsWithDuration:(double)a3
{
  v6.receiver = self;
  v6.super_class = AVMobileGlassControlsViewControllerAccessibility;
  [(AVMobileGlassControlsViewControllerAccessibility *)&v6 flashControlsWithDuration:a3];
  if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning() || _UIAccessibilityFullKeyboardAccessEnabled())
  {
    v4 = [(AVMobileGlassControlsViewControllerAccessibility *)self safeValueForKey:@"_visibilityTimer"];
    v5 = __UIAccessibilitySafeClass();

    [v5 invalidate];
  }
}

- (void)_updateControlsVisibilityStateIfNeededAnimated:(id)a3
{
  v4 = a3;
  v5 = [(AVMobileGlassControlsViewControllerAccessibility *)self safeBoolForKey:@"_needsControlsVisibilityStateUpdate"];
  v6 = [(AVMobileGlassControlsViewControllerAccessibility *)self safeBoolForKey:@"_temporarilyVisible"];
  if (v5 && (v6 & 1) == 0)
  {
    v7 = *MEMORY[0x29EDC7ED8];
    v8 = [(AVMobileGlassControlsViewControllerAccessibility *)self safeValueForKey:@"playerController"];
    UIAccessibilityPostNotification(v7, v8);
  }

  v9.receiver = self;
  v9.super_class = AVMobileGlassControlsViewControllerAccessibility;
  [(AVMobileGlassControlsViewControllerAccessibility *)&v9 _updateControlsVisibilityStateIfNeededAnimated:v4];
}

void __80__AVMobileGlassControlsViewControllerAccessibility_accessibilityPerformMagicTap__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) safeValueForKey:@"_view"];
  v2 = [v1 safeValueForKey:@"_playbackControlsView"];

  objc_opt_class();
  v3 = [v2 safeValueForKey:@"_playPauseButton"];
  v4 = __UIAccessibilityCastAsClass();

  [v4 sendActionsForControlEvents:64];
}

@end