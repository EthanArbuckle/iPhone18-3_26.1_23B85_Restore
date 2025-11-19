@interface AVNowPlayingPlaybackControlsViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_axAnnounceCurrentScrubPosition;
- (void)_axUpdateAccessibilityCustomActions;
- (void)_timerFiredForHidingPlaybackControls:(id)a3;
- (void)didPressLeftArrowB39;
- (void)didPressRightArrowB39;
@end

@implementation AVNowPlayingPlaybackControlsViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AVNowPlayingPlaybackControlsViewController" hasInstanceMethod:@"_setControlsContainerSubviewsVisible:animated:withCoordinators:" withFullSignature:{"v", "B", "B", "@", 0}];
  [v3 validateClass:@"AVNowPlayingPlaybackControlsViewController" hasInstanceMethod:@"timeControlStatus" withFullSignature:{"q", 0}];
  [v3 validateClass:@"AVNowPlayingPlaybackControlsViewController" hasInstanceMethod:@"didPressLeftArrowB39" withFullSignature:{"v", 0}];
  [v3 validateClass:@"AVNowPlayingPlaybackControlsViewController" hasInstanceMethod:@"didPressRightArrowB39" withFullSignature:{"v", 0}];
  [v3 validateClass:@"AVNowPlayingPlaybackControlsViewController" hasInstanceMethod:@"scanForwardNext" withFullSignature:{"v", 0}];
  [v3 validateClass:@"AVNowPlayingPlaybackControlsViewController" hasInstanceMethod:@"scanBackwardNext" withFullSignature:{"v", 0}];
  [v3 validateClass:@"AVPlaybackControlsViewController" hasInstanceMethod:@"playbackRate" withFullSignature:{"f", 0}];
  [v3 validateClass:@"AVNowPlayingPlaybackControlsViewController" hasInstanceMethod:@"_timerFiredForHidingPlaybackControls:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"AVNowPlayingPlaybackControlsViewController" hasInstanceMethod:@"_playbackMetadataViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AVNowPlayingPlaybackControlsViewController" hasInstanceVariable:@"_transportBar" withType:"UIView<AVTransportControlsProviding>"];
  [v3 validateClass:@"AVNowPlayingTransportBar" hasInstanceVariable:@"_scrubNeedleTimeLabel" withType:"UILabel"];
  [v3 validateClass:@"AVNowPlayingPlaybackControlsViewController" hasInstanceMethod:@"overlayViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AVxOverlayViewController" hasInstanceMethod:@"collectionViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AVxCollectionViewController" hasInstanceMethod:@"leftItems" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AVxCollectionViewController" hasInstanceMethod:@"centerItems" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AVxCollectionViewController" hasInstanceMethod:@"rightItems" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AVControlItem" hasInstanceMethod:@"_sendActionWithSender:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"AVNowPlayingPlaybackControlsViewController" hasInstanceMethod:@"_setPlaybackControlsState:animated:" withFullSignature:{"v", "q", "B", 0}];
}

- (void)_axUpdateAccessibilityCustomActions
{
  v42 = *MEMORY[0x29EDCA608];
  v2 = [MEMORY[0x29EDB8DE8] array];
  v3 = [MEMORY[0x29EDB8DE8] array];
  v26 = [(AVNowPlayingPlaybackControlsViewControllerAccessibility *)self safeValueForKeyPath:@"overlayViewController.collectionViewController"];
  v4 = [v26 safeArrayForKey:@"leftItems"];
  [v3 axSafelyAddObjectsFromArray:v4];

  v5 = [v26 safeArrayForKey:@"centerItems"];
  [v3 axSafelyAddObjectsFromArray:v5];

  v6 = [v26 safeArrayForKey:@"rightItems"];
  [v3 axSafelyAddObjectsFromArray:v6];

  objc_initWeak(&location, self);
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v8)
  {
    v9 = *v37;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v37 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v36 + 1) + 8 * i);
        v12 = [v11 accessibilityLabel];
        if ([v12 length])
        {
          objc_initWeak(&from, v11);
          v13 = objc_alloc(MEMORY[0x29EDC78E0]);
          v32[0] = MEMORY[0x29EDCA5F8];
          v32[1] = 3221225472;
          v32[2] = __94__AVNowPlayingPlaybackControlsViewControllerAccessibility__axUpdateAccessibilityCustomActions__block_invoke;
          v32[3] = &unk_29F298E60;
          objc_copyWeak(&v33, &from);
          objc_copyWeak(&v34, &location);
          v14 = [v13 initWithName:v12 actionHandler:v32];
          [v2 addObject:v14];

          objc_destroyWeak(&v34);
          objc_destroyWeak(&v33);
          objc_destroyWeak(&from);
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v8);
  }

  [(AVNowPlayingPlaybackControlsViewControllerAccessibility *)self setAccessibilityCustomActions:v2];
  v15 = [MEMORY[0x29EDB8DE8] array];
  [(AVNowPlayingPlaybackControlsViewControllerAccessibility *)self safeFloatForKey:@"playbackRate"];
  v17 = v16;
  if (v16 <= 0.0)
  {
    v18 = objc_alloc(MEMORY[0x29EDC78E0]);
    v19 = accessibilityLocalizedString(@"tv.player.fastforward");
    v30[0] = MEMORY[0x29EDCA5F8];
    v30[1] = 3221225472;
    v30[2] = __94__AVNowPlayingPlaybackControlsViewControllerAccessibility__axUpdateAccessibilityCustomActions__block_invoke_3;
    v30[3] = &unk_29F298EB0;
    objc_copyWeak(&v31, &location);
    v20 = [v18 initWithName:v19 actionHandler:v30];

    [v15 addObject:v20];
    objc_destroyWeak(&v31);
  }

  if (v17 >= 0.0)
  {
    v21 = objc_alloc(MEMORY[0x29EDC78E0]);
    v22 = accessibilityLocalizedString(@"tv.player.rewind");
    v28[0] = MEMORY[0x29EDCA5F8];
    v28[1] = 3221225472;
    v28[2] = __94__AVNowPlayingPlaybackControlsViewControllerAccessibility__axUpdateAccessibilityCustomActions__block_invoke_5;
    v28[3] = &unk_29F298EB0;
    objc_copyWeak(&v29, &location);
    v23 = [v21 initWithName:v22 actionHandler:v28];

    [v15 addObject:v23];
    objc_destroyWeak(&v29);
  }

  v24 = [(AVNowPlayingPlaybackControlsViewControllerAccessibility *)self safeValueForKey:@"_transportBar"];
  [v24 setAccessibilityCustomActions:v15];

  objc_destroyWeak(&location);
  v25 = *MEMORY[0x29EDCA608];
}

uint64_t __94__AVNowPlayingPlaybackControlsViewControllerAccessibility__axUpdateAccessibilityCustomActions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 32));
  objc_copyWeak(&v6, (a1 + 40));
  AXPerformSafeBlock();
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v5);

  return 1;
}

void __94__AVNowPlayingPlaybackControlsViewControllerAccessibility__axUpdateAccessibilityCustomActions__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _sendActionWithSender:v2];
}

uint64_t __94__AVNowPlayingPlaybackControlsViewControllerAccessibility__axUpdateAccessibilityCustomActions__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 32));
  AXPerformSafeBlock();
  objc_destroyWeak(&v5);

  return 1;
}

void __94__AVNowPlayingPlaybackControlsViewControllerAccessibility__axUpdateAccessibilityCustomActions__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained scanForwardNext];
}

uint64_t __94__AVNowPlayingPlaybackControlsViewControllerAccessibility__axUpdateAccessibilityCustomActions__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 32));
  AXPerformSafeBlock();
  objc_destroyWeak(&v5);

  return 1;
}

void __94__AVNowPlayingPlaybackControlsViewControllerAccessibility__axUpdateAccessibilityCustomActions__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained scanBackwardNext];
}

- (void)_timerFiredForHidingPlaybackControls:(id)a3
{
  v4 = a3;
  if (!UIAccessibilityIsVoiceOverRunning() && !UIAccessibilityIsSwitchControlRunning() || [(AVNowPlayingPlaybackControlsViewControllerAccessibility *)self safeIntegerForKey:@"timeControlStatus"])
  {
    v5.receiver = self;
    v5.super_class = AVNowPlayingPlaybackControlsViewControllerAccessibility;
    [(AVNowPlayingPlaybackControlsViewControllerAccessibility *)&v5 _timerFiredForHidingPlaybackControls:v4];
  }
}

- (void)_axAnnounceCurrentScrubPosition
{
  v4 = [(AVNowPlayingPlaybackControlsViewControllerAccessibility *)self safeValueForKey:@"_transportBar"];
  v2 = [v4 safeUIViewForKey:@"_scrubNeedleTimeLabel"];
  if ([v2 _accessibilityViewIsVisible])
  {
    v3 = [v2 accessibilityLabel];
    if ([v3 length])
    {
      UIAccessibilitySpeak();
    }
  }
}

- (void)didPressLeftArrowB39
{
  v3.receiver = self;
  v3.super_class = AVNowPlayingPlaybackControlsViewControllerAccessibility;
  [(AVNowPlayingPlaybackControlsViewControllerAccessibility *)&v3 didPressLeftArrowB39];
  [(AVNowPlayingPlaybackControlsViewControllerAccessibility *)self _axAnnounceCurrentScrubPosition];
}

- (void)didPressRightArrowB39
{
  v3.receiver = self;
  v3.super_class = AVNowPlayingPlaybackControlsViewControllerAccessibility;
  [(AVNowPlayingPlaybackControlsViewControllerAccessibility *)&v3 didPressRightArrowB39];
  [(AVNowPlayingPlaybackControlsViewControllerAccessibility *)self _axAnnounceCurrentScrubPosition];
}

@end