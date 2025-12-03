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
  v3 = [(NowPlayingControlsViewControllerAccessibility *)self safeValueForKey:@"dismissButton"];
  v4 = accessibilityMusicLocalizedString(@"dismiss.now.playing.button");
  [v3 setAccessibilityLabel:v4];

  [v3 setAccessibilityIdentifier:@"NowPlayingDismissButton"];
  v5 = [(NowPlayingControlsViewControllerAccessibility *)self safeValueForKey:@"contextButton"];
  [v5 setIsAccessibilityElement:1];
  v6 = accessibilityMusicLocalizedString(@"more.button");
  [v5 setAccessibilityLabel:v6];

  [v5 setAccessibilityIdentifier:@"NowPlayingMoreButton"];
  v7 = [(NowPlayingControlsViewControllerAccessibility *)self safeValueForKey:@"leftButton"];
  objc_initWeak(location, self);
  v22[0] = MEMORY[0x29EDCA5F8];
  v22[1] = 3221225472;
  v22[2] = __91__NowPlayingControlsViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v22[3] = &unk_29F2DC7D8;
  objc_copyWeak(&v23, location);
  [v7 _setAccessibilityLabelBlock:v22];
  v20[0] = MEMORY[0x29EDCA5F8];
  v20[1] = 3221225472;
  v20[2] = __91__NowPlayingControlsViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v20[3] = &unk_29F2DC7D8;
  objc_copyWeak(&v21, location);
  [v7 _setAccessibilityValueBlock:v20];
  v8 = *MEMORY[0x29EDC7F70];
  [v7 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
  [v7 setAccessibilityIdentifier:@"NowPlayingLeftButton"];
  v9 = [(NowPlayingControlsViewControllerAccessibility *)self safeValueForKey:@"playPauseStopButton"];
  v18[0] = MEMORY[0x29EDCA5F8];
  v18[1] = 3221225472;
  v18[2] = __91__NowPlayingControlsViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3;
  v18[3] = &unk_29F2DC7D8;
  objc_copyWeak(&v19, location);
  [v9 _setAccessibilityLabelBlock:v18];
  [v9 setAccessibilityIdentifier:@"NowPlayingPlayPauseStopButton"];
  v10 = [(NowPlayingControlsViewControllerAccessibility *)self safeValueForKey:@"rightButton"];
  v16[0] = MEMORY[0x29EDCA5F8];
  v16[1] = 3221225472;
  v16[2] = __91__NowPlayingControlsViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_4;
  v16[3] = &unk_29F2DC7D8;
  objc_copyWeak(&v17, location);
  [v10 _setAccessibilityLabelBlock:v16];
  [v10 setAccessibilityTraits:v8];
  [v10 setAccessibilityIdentifier:@"NowPlayingRightButton"];
  v11 = [(NowPlayingControlsViewControllerAccessibility *)self safeValueForKey:@"accessibilityLyricsButton"];
  [v11 _setAccessibilityLabelBlock:&__block_literal_global_1];
  [v11 setAccessibilityIdentifier:@"NowPlayingLyricsButton"];
  v12 = [(NowPlayingControlsViewControllerAccessibility *)self safeValueForKey:@"accessibilityQueueButton"];
  [v12 _setAccessibilityLabelBlock:&__block_literal_global_402];
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v14[2] = __91__NowPlayingControlsViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_7;
  v14[3] = &unk_29F2DC7D8;
  objc_copyWeak(&v15, location);
  [v12 _setAccessibilityValueBlock:v14];
  [v12 setAccessibilityIdentifier:@"NowPlayingUpNextButton"];
  [(NowPlayingControlsViewControllerAccessibility *)self setControlsHidden:[(NowPlayingControlsViewControllerAccessibility *)self safeSwiftBoolForKey:@"areControlsHidden"] animated:1];
  v13.receiver = self;
  v13.super_class = NowPlayingControlsViewControllerAccessibility;
  [(NowPlayingControlsViewControllerAccessibility *)&v13 _accessibilityLoadAccessibilityInformation];
  objc_destroyWeak(&v15);

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);

  objc_destroyWeak(&v21);
  objc_destroyWeak(&v23);
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
    v4 = accessibilityMusicLocalizedString(off_29F2DC818[state]);
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