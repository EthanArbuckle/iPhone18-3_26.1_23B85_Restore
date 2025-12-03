@interface NowPlayingControlsViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityLeftbuttonValueString;
- (id)_accessibilityResponseTracklist;
- (id)_accessibilityResponseTracklistPlayingItem;
- (id)_axLikedBannedValueForState:(int64_t)state;
- (id)_axUpNextBadgeValue;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation NowPlayingControlsViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MusicNowPlayingControlsViewController" hasInstanceMethod:@"contextButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicNowPlayingControlsViewController" hasInstanceMethod:@"leftButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicNowPlayingControlsViewController" hasInstanceMethod:@"playPauseStopButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicNowPlayingControlsViewController" hasInstanceMethod:@"rightButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicNowPlayingControlsViewController" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicNowPlayingControlsViewController" hasInstanceMethod:@"subtitleButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicNowPlayingControlsViewController" hasInstanceMethod:@"dismissButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MPCPlayerResponseItem" hasInstanceMethod:@"likeCommand" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MPCPlayerResponseItem" hasInstanceMethod:@"dislikeCommand" withFullSignature:{"@", 0}];
  [validationsCopy validateProtocol:@"MPCPlayerFeedbackCommand" hasRequiredInstanceMethod:@"value"];
  [validationsCopy validateClass:@"MusicNowPlayingControlsViewController" hasInstanceMethod:@"accessibilityNowPlayingResponse" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicNowPlayingControlsViewController" hasInstanceMethod:@"setControlsHidden:animated:" withFullSignature:{"v", "B", "B", 0}];
  [validationsCopy validateClass:@"MPCPlayerResponse" hasInstanceMethod:@"tracklist" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MPCPlayerResponse" hasInstanceMethod:@"state" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"MusicNowPlayingControlsViewController" hasInstanceMethod:@"accessibilityLyricsButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicNowPlayingControlsViewController" hasInstanceMethod:@"accessibilityQueueButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MPCPlayerResponseTracklist" hasInstanceMethod:@"shuffleType" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"MPCPlayerResponseTracklist" hasInstanceMethod:@"repeatType" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"MPCPlayerResponseTracklist" hasInstanceMethod:@"playingItem" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MPCPlayerResponseItem" hasInstanceMethod:@"isAutoPlay" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"MPCPlayerResponseTracklist" hasInstanceMethod:@"actionAtQueueEnd" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"MusicNowPlayingControlsViewController" hasSwiftField:@"areControlsHidden" withSwiftType:"Bool"];
  [validationsCopy validateClass:@"MusicNowPlayingControlsViewController" hasInstanceMethod:@"accessibilityPlayingItemAudioTraitButton" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  objc_opt_class();
  v3 = [(NowPlayingControlsViewControllerAccessibility *)self safeValueForKey:@"titleLabel"];
  v4 = __UIAccessibilityCastAsClass();

  [v4 setAccessibilityIdentifier:@"AXNowPlayingTitleLabel"];
  LOBYTE(location[0]) = 0;
  objc_opt_class();
  v5 = [(NowPlayingControlsViewControllerAccessibility *)self safeValueForKey:@"subtitleButton"];
  v6 = __UIAccessibilityCastAsClass();

  [v6 setAccessibilityIdentifier:@"AXNowPlayingSubtitleButton"];
  v7 = [(NowPlayingControlsViewControllerAccessibility *)self safeValueForKey:@"dismissButton"];
  v8 = accessibilityMusicLocalizedString(@"dismiss.now.playing.button");
  [v7 setAccessibilityLabel:v8];

  [v7 setAccessibilityIdentifier:@"NowPlayingDismissButton"];
  v9 = [(NowPlayingControlsViewControllerAccessibility *)self safeValueForKey:@"contextButton"];
  [v9 setIsAccessibilityElement:1];
  v10 = accessibilityMusicLocalizedString(@"more.button");
  [v9 setAccessibilityLabel:v10];

  [v9 setAccessibilityIdentifier:@"NowPlayingMoreButton"];
  v11 = [(NowPlayingControlsViewControllerAccessibility *)self safeValueForKey:@"leftButton"];
  objc_initWeak(location, self);
  v27[0] = MEMORY[0x29EDCA5F8];
  v27[1] = 3221225472;
  v27[2] = __91__NowPlayingControlsViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v27[3] = &unk_29F2DDB08;
  objc_copyWeak(&v28, location);
  [v11 _setAccessibilityLabelBlock:v27];
  v17 = v6;
  v25[0] = MEMORY[0x29EDCA5F8];
  v25[1] = 3221225472;
  v25[2] = __91__NowPlayingControlsViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v25[3] = &unk_29F2DDB08;
  objc_copyWeak(&v26, location);
  [v11 _setAccessibilityValueBlock:v25];
  v12 = *MEMORY[0x29EDC7F70];
  [v11 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
  [v11 setAccessibilityIdentifier:@"NowPlayingLeftButton"];
  v13 = [(NowPlayingControlsViewControllerAccessibility *)self safeValueForKey:@"playPauseStopButton"];
  v23[0] = MEMORY[0x29EDCA5F8];
  v23[1] = 3221225472;
  v23[2] = __91__NowPlayingControlsViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3;
  v23[3] = &unk_29F2DDB08;
  objc_copyWeak(&v24, location);
  [v13 _setAccessibilityLabelBlock:v23];
  [v13 setAccessibilityIdentifier:@"NowPlayingPlayPauseStopButton"];
  v14 = [(NowPlayingControlsViewControllerAccessibility *)self safeValueForKey:@"rightButton"];
  v21[0] = MEMORY[0x29EDCA5F8];
  v21[1] = 3221225472;
  v21[2] = __91__NowPlayingControlsViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_4;
  v21[3] = &unk_29F2DDB08;
  objc_copyWeak(&v22, location);
  [v14 _setAccessibilityLabelBlock:v21];
  [v14 setAccessibilityTraits:v12];
  [v14 setAccessibilityIdentifier:@"NowPlayingRightButton"];
  v15 = [(NowPlayingControlsViewControllerAccessibility *)self safeValueForKey:@"accessibilityLyricsButton"];
  [v15 _setAccessibilityLabelBlock:&__block_literal_global_14];
  [v15 setAccessibilityIdentifier:@"NowPlayingLyricsButton"];
  v16 = [(NowPlayingControlsViewControllerAccessibility *)self safeValueForKey:@"accessibilityQueueButton"];
  [v16 _setAccessibilityLabelBlock:&__block_literal_global_416];
  v19[0] = MEMORY[0x29EDCA5F8];
  v19[1] = 3221225472;
  v19[2] = __91__NowPlayingControlsViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_7;
  v19[3] = &unk_29F2DDB08;
  objc_copyWeak(&v20, location);
  [v16 _setAccessibilityValueBlock:v19];
  [v16 setAccessibilityIdentifier:@"NowPlayingUpNextButton"];
  [(NowPlayingControlsViewControllerAccessibility *)self setControlsHidden:[(NowPlayingControlsViewControllerAccessibility *)self safeSwiftBoolForKey:@"areControlsHidden"] animated:1];
  v18.receiver = self;
  v18.super_class = NowPlayingControlsViewControllerAccessibility;
  [(NowPlayingControlsViewControllerAccessibility *)&v18 _accessibilityLoadAccessibilityInformation];
  objc_destroyWeak(&v20);

  objc_destroyWeak(&v22);
  objc_destroyWeak(&v24);

  objc_destroyWeak(&v26);
  objc_destroyWeak(&v28);
  objc_destroyWeak(location);
}

id __91__NowPlayingControlsViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _accessibilityResponseForViewController];

  if ([MEMORY[0x29EDC9738] accessibilityIsSeekEnabledInDirection:2 forResponse:v2])
  {
    [MEMORY[0x29EDC9738] accessibilitySeekButtonStringInDirection:2 response:v2];
  }

  else
  {
    accessibilityMusicLocalizedString(@"button.prev.text");
  }
  v3 = ;

  return v3;
}

id __91__NowPlayingControlsViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _accessibilityLeftbuttonValueString];

  return v2;
}

id __91__NowPlayingControlsViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _accessibilityResponseForViewController];

  v3 = [MEMORY[0x29EDC9738] accessibilityPlayPauseStopButtonString:v2];

  return v3;
}

id __91__NowPlayingControlsViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _accessibilityResponseForViewController];

  if ([MEMORY[0x29EDC9738] accessibilityIsSeekEnabledInDirection:1 forResponse:v2])
  {
    [MEMORY[0x29EDC9738] accessibilitySeekButtonStringInDirection:1 response:v2];
  }

  else
  {
    accessibilityMusicLocalizedString(@"button.next.text");
  }
  v3 = ;

  return v3;
}

id __91__NowPlayingControlsViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _axUpNextBadgeValue];

  return v2;
}

- (id)_axLikedBannedValueForState:(int64_t)state
{
  if (state > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = accessibilityMusicLocalizedString(off_29F2DDB28[state]);
  }

  return v4;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = NowPlayingControlsViewControllerAccessibility;
  [(NowPlayingControlsViewControllerAccessibility *)&v3 viewDidLoad];
  [(NowPlayingControlsViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (id)_accessibilityLeftbuttonValueString
{
  _accessibilityResponseTracklistPlayingItem = [(NowPlayingControlsViewControllerAccessibility *)self _accessibilityResponseTracklistPlayingItem];
  v4 = [_accessibilityResponseTracklistPlayingItem safeValueForKey:@"likeCommand"];

  _accessibilityResponseTracklistPlayingItem2 = [(NowPlayingControlsViewControllerAccessibility *)self _accessibilityResponseTracklistPlayingItem];
  v6 = [_accessibilityResponseTracklistPlayingItem2 safeValueForKey:@"dislikeCommand"];

  if (v4 | v6)
  {
    v7 = [v4 safeBoolForKey:@"value"];
    v8 = [v6 safeBoolForKey:@"value"];
    v9 = @"favorite.not.set";
    if (v8)
    {
      v9 = @"favorite.off";
    }

    if (v7)
    {
      v10 = @"favorite.on";
    }

    else
    {
      v10 = v9;
    }

    v11 = accessibilityMusicLocalizedString(v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_axUpNextBadgeValue
{
  string = [MEMORY[0x29EDBA0F8] string];
  _accessibilityResponseTracklist = [(NowPlayingControlsViewControllerAccessibility *)self _accessibilityResponseTracklist];
  v5 = [_accessibilityResponseTracklist safeIntegerForKey:@"repeatType"];
  if (v5 == 2)
  {
    v6 = @"repeat.all";
  }

  else
  {
    if (v5 != 1)
    {
      goto LABEL_7;
    }

    v6 = @"repeat.one";
  }

  v7 = accessibilityMusicLocalizedString(v6);
  if (v7)
  {
    v8 = v7;
    accessibilityMusicLocalizedString(@"repeat.button");
    v20 = v8;
    v18 = v23 = @"__AXStringForVariablesSentinel";
    v9 = __UIAXStringForVariables();

    string = v9;
  }

LABEL_7:
  if (([_accessibilityResponseTracklist safeIntegerForKey:{@"shuffleType", v18, v20, v23}] - 1) <= 1)
  {
    v10 = accessibilityMusicLocalizedString(@"shuffle.on");
    if (v10)
    {
      v11 = v10;
      accessibilityMusicLocalizedString(@"shuffle.button");
      v21 = v11;
      v19 = v24 = @"__AXStringForVariablesSentinel";
      v12 = __UIAXStringForVariables();

      string = v12;
    }
  }

  v13 = [(NowPlayingControlsViewControllerAccessibility *)self _accessibilityResponseTracklistPlayingItem:v19];
  v14 = [v13 safeValueForKey:@"isAutoPlay"];

  if (v14 && [_accessibilityResponseTracklist safeIntegerForKey:@"actionAtQueueEnd"] == 3)
  {
    v15 = accessibilityMusicLocalizedString(@"autoplay.button");
    v22 = accessibilityMusicLocalizedString(@"autoplay.on");
    v16 = __UIAXStringForVariables();

    string = v16;
  }

  return string;
}

- (id)_accessibilityResponseTracklist
{
  _accessibilityResponseForViewController = [(NowPlayingControlsViewControllerAccessibility *)self _accessibilityResponseForViewController];
  v3 = [_accessibilityResponseForViewController safeValueForKey:@"tracklist"];

  return v3;
}

- (id)_accessibilityResponseTracklistPlayingItem
{
  _accessibilityResponseTracklist = [(NowPlayingControlsViewControllerAccessibility *)self _accessibilityResponseTracklist];
  v3 = [_accessibilityResponseTracklist safeValueForKey:@"playingItem"];

  return v3;
}

@end