@interface AVMobileChromelessControlsViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_updateControlsVisibilityStateIfNeededAnimated:(id)a3;
- (void)flashControlsWithDuration:(double)a3;
- (void)toggleVisibility:(id)a3;
@end

@implementation AVMobileChromelessControlsViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AVMobileChromelessControlsViewController" hasInstanceMethod:@"toggleVisibility:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"AVMobileChromelessControlsViewController" hasInstanceMethod:@"flashControlsWithDuration:" withFullSignature:{"v", "d", 0}];
  [v3 validateClass:@"AVMobileChromelessControlsViewController" hasInstanceVariable:@"_temporarilyVisible" withType:"B"];
  [v3 validateClass:@"AVMobileChromelessControlsViewController" hasInstanceVariable:@"_view" withType:"AVMobileChromelessControlsView"];
  [v3 validateClass:@"AVMobileChromelessControlsViewController" hasInstanceVariable:@"_needsControlsVisibilityStateUpdate" withType:"B"];
  [v3 validateClass:@"AVMobileChromelessControlsView" hasInstanceVariable:@"_playbackControlsView" withType:"AVMobileChromelessPlaybackControlsView"];
  [v3 validateClass:@"AVMobileChromelessPlaybackControlsView" hasInstanceVariable:@"_playPauseButton" withType:"AVMobileChromelessPlaybackControlButton"];
  [v3 validateClass:@"AVMobileChromelessControlsViewController" hasInstanceVariable:@"_visibilityTimer" withType:"NSTimer"];
  [v3 validateClass:@"AVPlayerController" hasInstanceMethod:@"isPlaying" withFullSignature:{"B", 0}];
  [v3 validateClass:@"AVMobileChromelessControlsViewController" hasInstanceMethod:@"_updateControlsVisibilityStateIfNeededAnimated:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"AVMobileChromelessControlsViewController" hasProperty:@"playerController" withType:"@"];
  [v3 validateClass:@"AVMobileChromelessPlaybackControlsView" hasInstanceMethod:@"playPauseButtonShowsPlayIcon" withFullSignature:{"B", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = AVMobileChromelessControlsViewControllerAccessibility;
  [(AVMobileChromelessControlsViewControllerAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v3 = [(AVMobileChromelessControlsViewControllerAccessibility *)self safeValueForKeyPath:@"_view._playbackControlsView._playPauseButton"];
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __99__AVMobileChromelessControlsViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v4[3] = &unk_29F298F00;
  objc_copyWeak(&v5, &location);
  [v3 _setAccessibilityLabelBlock:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

id __99__AVMobileChromelessControlsViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
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
  v5 = [(AVMobileChromelessControlsViewControllerAccessibility *)self safeBoolForKey:@"_temporarilyVisible"];
  v15.receiver = self;
  v15.super_class = AVMobileChromelessControlsViewControllerAccessibility;
  [(AVMobileChromelessControlsViewControllerAccessibility *)&v15 toggleVisibility:v4];

  v6 = [(AVMobileChromelessControlsViewControllerAccessibility *)self safeBoolForKey:@"_temporarilyVisible"];
  if (v5 != v6)
  {
    v7 = v6;
    v8 = [(AVMobileChromelessControlsViewControllerAccessibility *)self safeValueForKey:@"playerController"];
    v9 = [v8 safeBoolForKey:@"isPlaying"];

    if (((v9 | v7) & 1) == 0)
    {
      v10 = accessibilityLocalizedString(@"hiding.media.controls.announcement");
      UIAccessibilitySpeakOrQueueIfNeeded();
    }

    v11 = [(AVMobileChromelessControlsViewControllerAccessibility *)self safeValueForKey:@"_view"];
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
  v6.super_class = AVMobileChromelessControlsViewControllerAccessibility;
  [(AVMobileChromelessControlsViewControllerAccessibility *)&v6 flashControlsWithDuration:a3];
  if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning() || _UIAccessibilityFullKeyboardAccessEnabled())
  {
    v4 = [(AVMobileChromelessControlsViewControllerAccessibility *)self safeValueForKey:@"_visibilityTimer"];
    v5 = __UIAccessibilitySafeClass();

    [v5 invalidate];
  }
}

- (void)_updateControlsVisibilityStateIfNeededAnimated:(id)a3
{
  v4 = a3;
  v5 = [(AVMobileChromelessControlsViewControllerAccessibility *)self safeBoolForKey:@"_needsControlsVisibilityStateUpdate"];
  v6 = [(AVMobileChromelessControlsViewControllerAccessibility *)self safeBoolForKey:@"_temporarilyVisible"];
  if (v5 && (v6 & 1) == 0)
  {
    v7 = *MEMORY[0x29EDC7ED8];
    v8 = [(AVMobileChromelessControlsViewControllerAccessibility *)self safeValueForKey:@"playerController"];
    UIAccessibilityPostNotification(v7, v8);
  }

  v9.receiver = self;
  v9.super_class = AVMobileChromelessControlsViewControllerAccessibility;
  [(AVMobileChromelessControlsViewControllerAccessibility *)&v9 _updateControlsVisibilityStateIfNeededAnimated:v4];
}

@end