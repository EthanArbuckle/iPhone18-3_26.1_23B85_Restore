@interface HUClipScrubberViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axIsEditingClips;
- (BOOL)_axIsStreamingLive;
- (id)_axPlaybackEngine;
- (id)selectionButton;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axToggleClipTimescale:(id)a3;
- (void)viewDidLoad;
@end

@implementation HUClipScrubberViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HUClipScrubberViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"HUClipScrubberViewController" hasInstanceVariable:@"_scrubberUpdateDisplayLink" withType:"CADisplayLink"];
  [v3 validateClass:@"HUClipScrubberViewController" hasInstanceMethod:@"didDoubleTap:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"HUClipScrubberViewController" hasInstanceVariable:@"_playbackEngine" withType:"HFCameraPlaybackEngine"];
  [v3 validateClass:@"HUClipScrubberViewController" hasInstanceVariable:@"_scrubberView" withType:"HUClipScrubberView"];
  [v3 validateClass:@"HUClipScrubberView" hasInstanceMethod:@"rightActionButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUClipScrubberViewController" hasInstanceMethod:@"nearbyAccessoriesButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUClipScrubberView" hasInstanceVariable:@"_displayMode" withType:"NSUInteger"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v21.receiver = self;
  v21.super_class = HUClipScrubberViewControllerAccessibility;
  [(HUClipScrubberViewControllerAccessibility *)&v21 _accessibilityLoadAccessibilityInformation];
  v3 = [(HUClipScrubberViewControllerAccessibility *)self safeValueForKeyPath:@"_scrubberView.rightActionButton"];
  v4 = [(HUClipScrubberViewControllerAccessibility *)self safeValueForKey:@"nearbyAccessoriesButton"];
  v5 = accessibilityHomeUILocalizedString(@"camera.nearby.accessories");
  [v4 setAccessibilityLabel:v5];

  objc_initWeak(&location, self);
  v18[0] = MEMORY[0x29EDCA5F8];
  v18[1] = 3221225472;
  v18[2] = __87__HUClipScrubberViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v18[3] = &unk_29F2C6B48;
  objc_copyWeak(&v19, &location);
  [v3 _setAccessibilityLabelBlock:v18];
  v16[0] = MEMORY[0x29EDCA5F8];
  v16[1] = 3221225472;
  v16[2] = __87__HUClipScrubberViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v16[3] = &unk_29F2C6C28;
  v16[4] = self;
  objc_copyWeak(&v17, &location);
  [v3 _setAccessibilityTraitsBlock:v16];
  v10 = MEMORY[0x29EDCA5F8];
  v11 = 3221225472;
  v12 = __87__HUClipScrubberViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3;
  v13 = &unk_29F2C6C50;
  v14 = self;
  objc_copyWeak(&v15, &location);
  [v3 _setAccessibilityHintBlock:&v10];
  v6 = [MEMORY[0x29EDBA068] defaultCenter];
  [v6 removeObserver:self name:AXToggleClipTimescaleNotification object:0];

  v7 = [MEMORY[0x29EDBA068] defaultCenter];
  [v7 addObserver:self selector:sel__axToggleClipTimescale_ name:AXToggleClipTimescaleNotification object:0];

  if (AXIsInternalInstall())
  {
    v8 = [(HUClipScrubberViewControllerAccessibility *)self safeValueForKey:@"feedbackButton"];
    v9 = accessibilityHomeUILocalizedString(@"internal.clipfeedback.button");
    [v8 setAccessibilityLabel:v9];
  }

  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

id __87__HUClipScrubberViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _axIsEditingClips];
  v3 = @"camera.live.button";
  if (v2)
  {
    v3 = @"camera.trash.button";
  }

  v4 = v3;

  v5 = *MEMORY[0x29EDC7378];
  v6 = accessibilityHomeUILocalizedString(v4);

  v7 = AXAttributedStringForBetterPronuciation();

  return v7;
}

uint64_t __87__HUClipScrubberViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _axIsEditingClips];
  v3 = *MEMORY[0x29EDC7F70];
  if ((v2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v5 = [WeakRetained _axIsStreamingLive];
    v6 = MEMORY[0x29EDC7FC0];
    if (!v5)
    {
      v6 = MEMORY[0x29EDC7FA8];
    }

    v3 |= *v6;
  }

  return v3;
}

id __87__HUClipScrubberViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3(uint64_t a1)
{
  if ([*(a1 + 32) _axIsEditingClips])
  {
    v2 = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = [WeakRetained _axIsStreamingLive];
    v5 = @"camera.streaming.live.no";
    if (v4)
    {
      v5 = @"camera.streaming.live.yes";
    }

    v6 = v5;

    v7 = *MEMORY[0x29EDC7378];
    v8 = accessibilityHomeUILocalizedString(v6);

    v2 = AXAttributedStringForBetterPronuciation();
  }

  return v2;
}

- (void)_axToggleClipTimescale:(id)a3
{
  AXPerformSafeBlock();
  v4 = [(HUClipScrubberViewControllerAccessibility *)self safeValueForKeyPath:@"dataSource.timeController"];
  v5 = [v4 safeBoolForKey:@"isAtMinimumZoom"];

  if (v5)
  {
    v6 = @"scrubber.timescale.shrunk";
  }

  else
  {
    v6 = @"scrubber.timescale.expanded";
  }

  v7 = accessibilityHomeUILocalizedString(v6);
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v7);
}

- (BOOL)_axIsEditingClips
{
  v2 = [(HUClipScrubberViewControllerAccessibility *)self safeValueForKey:@"_scrubberView"];
  v3 = [v2 safeUnsignedIntegerForKey:@"_displayMode"] == 1;

  return v3;
}

- (BOOL)_axIsStreamingLive
{
  v3 = [(HUClipScrubberViewControllerAccessibility *)self _axPlaybackEngine];
  if ([v3 engineMode])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    objc_opt_class();
    v5 = [(HUClipScrubberViewControllerAccessibility *)self safeValueForKey:@"_scrubberUpdateDisplayLink"];
    v6 = __UIAccessibilityCastAsClass();

    v4 = [v6 isPaused] ^ 1;
  }

  return v4;
}

- (id)_axPlaybackEngine
{
  objc_opt_class();
  v3 = [(HUClipScrubberViewControllerAccessibility *)self safeValueForKey:@"playbackEngine"];
  v4 = __UIAccessibilityCastAsClass();

  return v4;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = HUClipScrubberViewControllerAccessibility;
  [(HUClipScrubberViewControllerAccessibility *)&v3 viewDidLoad];
  [(HUClipScrubberViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (id)selectionButton
{
  v5.receiver = self;
  v5.super_class = HUClipScrubberViewControllerAccessibility;
  v2 = [(HUClipScrubberViewControllerAccessibility *)&v5 selectionButton];
  v3 = accessibilityHomeUILocalizedString(@"camera.clip.share.and.edit.button");
  [v2 setAccessibilityLabel:v3];

  return v2;
}

@end