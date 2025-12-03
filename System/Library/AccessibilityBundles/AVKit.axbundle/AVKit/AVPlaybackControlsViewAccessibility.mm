@interface AVPlaybackControlsViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityViewIsVisible;
- (BOOL)accessibilityElementsHidden;
- (id)_accessibilityFullScreenViewController;
- (id)_accessibilityNextResponderOfClass:(Class)class;
- (id)_accessibilityPlaybackControlsVisibilityController;
- (id)_accessibilityPlayerViewController;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setFullScreen:(BOOL)screen;
@end

@implementation AVPlaybackControlsViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AVPlaybackControlsView" hasInstanceMethod:@"volumeButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVPlaybackControlsView" hasInstanceVariable:@"_scrubber" withType:"AVScrubber"];
  [validationsCopy validateClass:@"AVPlaybackControlsView" hasInstanceVariable:@"_volumeSlider" withType:"AVVolumeSlider"];
  [validationsCopy validateClass:@"AVPlaybackControlsView" hasInstanceVariable:@"_skipBackButton" withType:"AVButton"];
  [validationsCopy validateClass:@"AVPlaybackControlsView" hasInstanceVariable:@"_skipForwardButton" withType:"AVButton"];
  [validationsCopy validateClass:@"AVPlaybackControlsView" hasInstanceVariable:@"_mediaSelectionButton" withType:"AVButton"];
  [validationsCopy validateClass:@"AVPlaybackControlsView" hasInstanceVariable:@"_fullScreenButton" withType:"AVButton"];
  [validationsCopy validateClass:@"AVPlaybackControlsView" hasInstanceVariable:@"_standardPlayPauseButton" withType:"AVButton"];
  [validationsCopy validateClass:@"AVPlaybackControlsView" hasInstanceVariable:@"_pictureInPictureButton" withType:"AVButton"];
  [validationsCopy validateClass:@"AVPlaybackControlsView" hasInstanceVariable:@"_prominentPlayButton" withType:"AVButton"];
  [validationsCopy validateClass:@"AVPlaybackControlsView" hasInstanceVariable:@"_standardPlayPauseButton" withType:"AVButton"];
  [validationsCopy validateClass:@"AVPlaybackControlsView" hasInstanceVariable:@"_doneButton" withType:"AVButton"];
  [validationsCopy validateClass:@"AVPlaybackControlsView" hasInstanceMethod:@"hasVisibleSubview" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"AVButton" hasInstanceMethod:@"imageName" withFullSignature:{"@", 0}];
}

- (id)_accessibilityNextResponderOfClass:(Class)class
{
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  if (v3)
  {
    do
    {
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      nextResponder = [v3 nextResponder];

      v3 = nextResponder;
    }

    while (nextResponder);
  }

  return v3;
}

- (id)_accessibilityFullScreenViewController
{
  if (_accessibilityFullScreenViewController_onceToken != -1)
  {
    [AVPlaybackControlsViewAccessibility _accessibilityFullScreenViewController];
  }

  v3 = _accessibilityFullScreenViewController_AVFullScreenViewControllerClass;

  return [(AVPlaybackControlsViewAccessibility *)self _accessibilityNextResponderOfClass:v3];
}

uint64_t __77__AVPlaybackControlsViewAccessibility__accessibilityFullScreenViewController__block_invoke()
{
  result = MEMORY[0x29C2C6300](@"AVFullScreenViewController");
  _accessibilityFullScreenViewController_AVFullScreenViewControllerClass = result;
  return result;
}

- (id)_accessibilityPlayerViewController
{
  if (_accessibilityPlayerViewController_onceToken != -1)
  {
    [AVPlaybackControlsViewAccessibility _accessibilityPlayerViewController];
  }

  v3 = [(AVPlaybackControlsViewAccessibility *)self _accessibilityNextResponderOfClass:_accessibilityPlayerViewController_AVPlayerViewControllerClass];
  if (!v3)
  {
    _accessibilityFullScreenViewController = [(AVPlaybackControlsViewAccessibility *)self _accessibilityFullScreenViewController];
    v5 = [_accessibilityFullScreenViewController safeValueForKey:@"delegate"];
    v3 = __UIAccessibilitySafeClass();
  }

  return v3;
}

uint64_t __73__AVPlaybackControlsViewAccessibility__accessibilityPlayerViewController__block_invoke()
{
  result = MEMORY[0x29C2C6300](@"AVPlayerViewController");
  _accessibilityPlayerViewController_AVPlayerViewControllerClass = result;
  return result;
}

- (id)_accessibilityPlaybackControlsVisibilityController
{
  _accessibilityPlayerViewController = [(AVPlaybackControlsViewAccessibility *)self _accessibilityPlayerViewController];
  v3 = [_accessibilityPlayerViewController safeValueForKey:@"_playbackControlsVisibilityController"];
  v4 = __UIAccessibilitySafeClass();

  return v4;
}

- (BOOL)_accessibilityViewIsVisible
{
  if ([(AVPlaybackControlsViewAccessibility *)self _accessibilityAllControlsAreHidden])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = AVPlaybackControlsViewAccessibility;
  return [(AVPlaybackControlsViewAccessibility *)&v4 _accessibilityViewIsVisible];
}

- (BOOL)accessibilityElementsHidden
{
  if ([(AVPlaybackControlsViewAccessibility *)self _accessibilityAllControlsAreHidden])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = AVPlaybackControlsViewAccessibility;
  return [(AVPlaybackControlsViewAccessibility *)&v4 accessibilityElementsHidden];
}

- (void)setFullScreen:(BOOL)screen
{
  screenCopy = screen;
  v8.receiver = self;
  v8.super_class = AVPlaybackControlsViewAccessibility;
  [(AVPlaybackControlsViewAccessibility *)&v8 setFullScreen:?];
  v5 = [(AVPlaybackControlsViewAccessibility *)self safeValueForKey:@"_fullScreenButton"];
  if (screenCopy)
  {
    v6 = @"exitfullscreen.button";
  }

  else
  {
    v6 = @"fullscreen.button";
  }

  v7 = accessibilityLocalizedString(v6);
  [v5 setAccessibilityLabel:v7];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v34.receiver = self;
  v34.super_class = AVPlaybackControlsViewAccessibility;
  [(AVPlaybackControlsViewAccessibility *)&v34 _accessibilityLoadAccessibilityInformation];
  v3 = [(AVPlaybackControlsViewAccessibility *)self safeValueForKey:@"_scrubber"];
  v4 = accessibilityLocalizedString(@"time.position.scrubber");
  [v3 setAccessibilityLabel:v4];

  v5 = [(AVPlaybackControlsViewAccessibility *)self safeValueForKey:@"_volumeSlider"];
  v6 = accessibilityLocalizedString(@"volume.slider");
  [v5 setAccessibilityLabel:v6];

  v7 = [(AVPlaybackControlsViewAccessibility *)self safeValueForKey:@"_skipBackButton"];
  v8 = MEMORY[0x29EDBA0F8];
  v9 = accessibilityLocalizedString(@"media.skip.backwards");
  0x402E000000000000 = [v8 localizedStringWithFormat:v9, 0x402E000000000000];
  [v7 setAccessibilityLabel:0x402E000000000000];

  v11 = [(AVPlaybackControlsViewAccessibility *)self safeValueForKey:@"_skipForwardButton"];
  v12 = MEMORY[0x29EDBA0F8];
  v13 = accessibilityLocalizedString(@"media.skip.forward");
  0x402E0000000000002 = [v12 localizedStringWithFormat:v13, 0x402E000000000000];
  [v11 setAccessibilityLabel:0x402E0000000000002];

  v15 = [(AVPlaybackControlsViewAccessibility *)self safeValueForKey:@"_mediaSelectionButton"];
  v16 = accessibilityLocalizedString(@"media.selection");
  [v15 setAccessibilityLabel:v16];

  v17 = [(AVPlaybackControlsViewAccessibility *)self safeValueForKey:@"_pictureInPictureButton"];
  v18 = accessibilityLocalizedString(@"pictureInPicture.button");
  [v17 setAccessibilityLabel:v18];

  v19 = [(AVPlaybackControlsViewAccessibility *)self safeValueForKey:@"_prominentPlayButton"];
  v20 = accessibilityLocalizedString(@"play.button");
  [v19 setAccessibilityLabel:v20];

  v21 = [(AVPlaybackControlsViewAccessibility *)self safeValueForKey:@"_doneButton"];
  v22 = accessibilityLocalizedString(@"close.button");
  [v21 setAccessibilityLabel:v22];

  v23 = [(AVPlaybackControlsViewAccessibility *)self safeValueForKey:@"volumeButton"];
  v24 = accessibilityLocalizedString(@"volume.button");
  [v23 setAccessibilityLabel:v24];

  v25 = [(AVPlaybackControlsViewAccessibility *)self safeValueForKey:@"_standardPlayPauseButton"];
  [v25 accessibilitySetIdentification:@"axPlayPauseButton"];

  LODWORD(v25) = [(AVPlaybackControlsViewAccessibility *)self safeBoolForKey:@"isFullScreen"];
  v26 = [(AVPlaybackControlsViewAccessibility *)self safeValueForKey:@"_fullScreenButton"];
  if (v25)
  {
    v27 = @"exitfullscreen.button";
  }

  else
  {
    v27 = @"fullscreen.button";
  }

  v28 = accessibilityLocalizedString(v27);
  [v26 setAccessibilityLabel:v28];

  v29 = [(AVPlaybackControlsViewAccessibility *)self safeValueForKey:@"videoGravityButton"];
  objc_initWeak(&location, v29);

  v30 = objc_loadWeakRetained(&location);
  v31[0] = MEMORY[0x29EDCA5F8];
  v31[1] = 3221225472;
  v31[2] = __81__AVPlaybackControlsViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v31[3] = &unk_29F298F00;
  objc_copyWeak(&v32, &location);
  [v30 _setAccessibilityLabelBlock:v31];

  objc_destroyWeak(&v32);
  objc_destroyWeak(&location);
}

id __81__AVPlaybackControlsViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeValueForKey:@"imageName"];

  v3 = v2;
  if ([v3 isEqualToString:@"rectangle.portrait.arrowtriangle.2.inward"])
  {
    v4 = @"scale.to.fit.portrait";
LABEL_8:
    v5 = accessibilityLocalizedString(v4);
    goto LABEL_9;
  }

  if ([v3 isEqualToString:@"rectangle.portrait.arrowtriangle.2.outward"])
  {
    v4 = @"scale.to.fill.portrait";
    goto LABEL_8;
  }

  if (([v3 isEqualToString:@"rectangle.arrowtriangle.2.inward"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"rectangle.arrowtriangle.2.outward"))
  {
    v4 = @"scale.to.fit.landscape";
    goto LABEL_8;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

@end