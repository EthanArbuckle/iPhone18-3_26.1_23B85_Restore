@interface AVPlaybackControlsControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axToggleAudioControls:(id)a3;
- (void)_accessibilityHandlePlayerLayerViewFocused:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityPlayerLayerViewAccessibilityFocusedChanged:(id)a3;
- (void)_autoHideControlsAfterDelay:(double)a3;
- (void)_axAnnounceAudioControlStateDidChange;
- (void)_axLoadVolumeButtonAccessibilityInformation:(id)a3;
- (void)dealloc;
- (void)playbackControlsViewDidLoad:(id)a3;
@end

@implementation AVPlaybackControlsControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AVPlaybackControlsController" hasInstanceMethod:@"_prefersVolumeSliderExpandedAutomatically" withFullSignature:{"B", 0}];
  [v3 validateClass:@"AVPlaybackControlsController" hasInstanceMethod:@"_updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"AVPlaybackControlsController" hasInstanceMethod:@"_autoHideControlsAfterDelay:" withFullSignature:{"v", "d", 0}];
  [v3 validateClass:@"AVPlaybackControlsController" hasInstanceMethod:@"showPlaybackControls:immediately:" withFullSignature:{"v", "B", "B", 0}];
  [v3 validateClass:@"AVPlaybackControlsController" hasInstanceMethod:@"beginUserInteraction" withFullSignature:{"v", 0}];
  [v3 validateClass:@"AVPlaybackControlsController" hasInstanceMethod:@"endUserInteraction" withFullSignature:{"v", 0}];
  [v3 validateClass:@"AVPlaybackControlsController" hasInstanceMethod:@"prefersMuted" withFullSignature:{"B", 0}];
  [v3 validateClass:@"AVPlaybackControlsController" hasInstanceMethod:@"volumeControlsCanShowSlider" withFullSignature:{"B", 0}];
  [v3 validateClass:@"AVPlaybackControlsController" hasInstanceMethod:@"playbackControlsViewDidLoad:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"AVPlaybackControlsController" hasInstanceMethod:@"playbackControlsView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AVPlaybackControlsView" hasInstanceMethod:@"volumeButton" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = AVPlaybackControlsControllerAccessibility;
  [(AVPlaybackControlsControllerAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v3 = [(AVPlaybackControlsControllerAccessibility *)self safeValueForKeyPath:@"playbackControlsView.volumeButton"];
  [(AVPlaybackControlsControllerAccessibility *)self _axLoadVolumeButtonAccessibilityInformation:v3];

  v4 = [MEMORY[0x29EDBA068] defaultCenter];
  v5 = *MEMORY[0x29EDC80C0];
  [v4 removeObserver:self name:*MEMORY[0x29EDC80C0] object:0];

  v6 = [MEMORY[0x29EDBA068] defaultCenter];
  [v6 addObserver:self selector:sel__axAnnounceAudioControlStateDidChange name:v5 object:0];
}

- (void)dealloc
{
  v3 = [MEMORY[0x29EDBA068] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x29EDC80C0] object:0];

  v4 = [MEMORY[0x29EDBA068] defaultCenter];
  [v4 removeObserver:self name:AXVisibilityItemHiddenChangedNotification object:0];

  v5.receiver = self;
  v5.super_class = AVPlaybackControlsControllerAccessibility;
  [(AVPlaybackControlsControllerAccessibility *)&v5 dealloc];
}

- (void)playbackControlsViewDidLoad:(id)a3
{
  v4.receiver = self;
  v4.super_class = AVPlaybackControlsControllerAccessibility;
  [(AVPlaybackControlsControllerAccessibility *)&v4 playbackControlsViewDidLoad:a3];
  [(AVPlaybackControlsControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_axLoadVolumeButtonAccessibilityInformation:(id)a3
{
  v16[1] = *MEMORY[0x29EDCA608];
  v4 = a3;
  objc_initWeak(&location, self);
  v10 = MEMORY[0x29EDCA5F8];
  v11 = 3221225472;
  v12 = __89__AVPlaybackControlsControllerAccessibility__axLoadVolumeButtonAccessibilityInformation___block_invoke;
  v13 = &unk_29F298F00;
  objc_copyWeak(&v14, &location);
  [v4 _setAccessibilityValueBlock:&v10];
  if ([(AVPlaybackControlsControllerAccessibility *)self safeBoolForKey:@"volumeControlsCanShowSlider", v10, v11, v12, v13])
  {
    v5 = objc_alloc(MEMORY[0x29EDC78E0]);
    v6 = accessibilityLocalizedString(@"toggle.audio.controls");
    v7 = [v5 initWithName:v6 target:self selector:sel__axToggleAudioControls_];

    v16[0] = v7;
    v8 = [MEMORY[0x29EDB8D80] arrayWithObjects:v16 count:1];
    [v4 setAccessibilityCustomActions:v8];
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  v9 = *MEMORY[0x29EDCA608];
}

id __89__AVPlaybackControlsControllerAccessibility__axLoadVolumeButtonAccessibilityInformation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained _axIsMuted])
  {
    v2 = accessibilityLocalizedString(@"volume.button.muted");
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (BOOL)_axToggleAudioControls:(id)a3
{
  AXPerformSafeBlock();
  v4 = *MEMORY[0x29EDC7ED8];
  v5 = [(AVPlaybackControlsControllerAccessibility *)self safeValueForKeyPath:@"playbackControlsView.volumeButton"];
  UIAccessibilityPostNotification(v4, v5);

  return 1;
}

uint64_t __68__AVPlaybackControlsControllerAccessibility__axToggleAudioControls___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) safeBoolForKey:@"_prefersVolumeSliderExpandedAutomatically"];
  [*(a1 + 32) _updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:v2 ^ 1u];
  v3 = *(a1 + 32);

  return [v3 _accessibilitySetBoolValue:v2 ^ 1u forKey:@"AXAudioControlIsExpanded"];
}

- (void)_axAnnounceAudioControlStateDidChange
{
  if ([(AVPlaybackControlsControllerAccessibility *)self safeBoolForKey:@"volumeControlsCanShowSlider"]&& [(AVPlaybackControlsControllerAccessibility *)self _accessibilityBoolValueForKey:@"AXAudioControlIsExpanded"])
  {
    v3 = MEMORY[0x29EDBD7E8];
    v4 = accessibilityLocalizedString(@"audio.controls.updated");
    v5 = [v3 stringWithString:v4];

    [v5 setAttribute:&unk_2A20DFBB0 forKey:*MEMORY[0x29EDBD860]];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v5);
  }

  [(AVPlaybackControlsControllerAccessibility *)self _accessibilitySetBoolValue:0 forKey:@"AXAudioControlIsExpanded"];
}

- (void)_accessibilityPlayerLayerViewAccessibilityFocusedChanged:(id)a3
{
  v4 = [a3 object];
  if ([v4 BOOLValue])
  {
    [(AVPlaybackControlsControllerAccessibility *)self performSelector:sel__accessibilityHandlePlayerLayerViewFocused_ withObject:v4 afterDelay:0.0];
    AXPerformSafeBlock();
  }

  else
  {
    [(AVPlaybackControlsControllerAccessibility *)self performSelector:sel__accessibilityHandlePlayerLayerViewFocused_ withObject:v4 afterDelay:5.0];
  }
}

void __102__AVPlaybackControlsControllerAccessibility__accessibilityPlayerLayerViewAccessibilityFocusedChanged___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) safeValueForKey:@"playbackControlsVisibilityTimer"];
  v3 = __UIAccessibilityCastAsClass();

  [v3 invalidate];
  [*(a1 + 32) showPlaybackControls:1 immediately:1];
}

- (void)_accessibilityHandlePlayerLayerViewFocused:(id)a3
{
  v4 = MEMORY[0x29EDC9738];
  v5 = a3;
  [v4 cancelPreviousPerformRequestsWithTarget:self selector:sel__accessibilityHandlePlayerLayerViewFocused_ object:MEMORY[0x29EDB8EB0]];
  [MEMORY[0x29EDC9738] cancelPreviousPerformRequestsWithTarget:self selector:sel__accessibilityHandlePlayerLayerViewFocused_ object:MEMORY[0x29EDB8EA8]];
  -[AVPlaybackControlsControllerAccessibility _axSetShouldShowRegularControlsBecauseOfAccessibility:](self, "_axSetShouldShowRegularControlsBecauseOfAccessibility:", [v5 BOOLValue]);
  LOBYTE(v4) = [v5 BOOLValue];

  if ((v4 & 1) == 0)
  {
    AXPerformSafeBlock();
  }
}

uint64_t __88__AVPlaybackControlsControllerAccessibility__accessibilityHandlePlayerLayerViewFocused___block_invoke(uint64_t a1)
{
  [*(a1 + 32) beginUserInteraction];
  v2 = *(a1 + 32);

  return [v2 endUserInteraction];
}

- (void)_autoHideControlsAfterDelay:(double)a3
{
  if (!UIAccessibilityIsVoiceOverRunning() && !UIAccessibilityIsSwitchControlRunning())
  {
    v5.receiver = self;
    v5.super_class = AVPlaybackControlsControllerAccessibility;
    [(AVPlaybackControlsControllerAccessibility *)&v5 _autoHideControlsAfterDelay:a3];
  }
}

@end