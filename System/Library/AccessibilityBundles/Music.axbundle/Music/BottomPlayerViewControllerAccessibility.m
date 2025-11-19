@interface BottomPlayerViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)accessibilityUpdateMetadata;
- (void)setArtworkView:(id)a3;
- (void)viewDidLoad;
@end

@implementation BottomPlayerViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"Music.BottomPlayerViewController" hasSwiftField:@"$__lazy_storage_$_nowPlayingItemStackView" withSwiftType:"Optional<TrackTitleStackView>"];
  [v3 validateClass:@"Music.BottomPlayerViewController" hasInstanceMethod:@"routeLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"Music.BottomPlayerViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [v3 validateClass:@"Music.BottomPlayerViewController" hasInstanceMethod:@"skipButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"Music.BottomPlayerViewController" hasInstanceMethod:@"reverseButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"Music.BottomPlayerViewController" hasInstanceMethod:@"playPauseButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"Music.BottomPlayerViewController" hasInstanceMethod:@"artworkView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"Music.BottomPlayerViewController" hasSwiftField:@"contextMenuButton" withSwiftType:"Optional<HitMyRectButton>"];
  [v3 validateClass:@"Music.BottomPlayerViewController" hasSwiftField:@"lyricsButton" withSwiftType:"Optional<HitMyRectButton>"];
  [v3 validateClass:@"Music.BottomPlayerViewController" hasSwiftField:@"queueButton" withSwiftType:"Optional<HitMyRectButton>"];
  [v3 validateClass:@"Music.BottomPlayerViewController" hasInstanceMethod:@"accessibilityUpdateMetadata" withFullSignature:{"v", 0}];
  [v3 validateClass:@"Music.BottomPlayerViewController" hasInstanceMethod:@"accessibilityNowPlayingResponse" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MPCPlayerResponse" hasInstanceMethod:@"tracklist" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MPCPlayerResponse" hasInstanceMethod:@"state" withFullSignature:{"q", 0}];
  [v3 validateClass:@"MPCPlayerResponseTracklist" hasInstanceMethod:@"playingItem" withFullSignature:{"@", 0}];
  [v3 validateClass:@"Music.BottomPlayerViewController" hasInstanceMethod:@"setArtworkView:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"Music.NowPlayingShuffleButton"];
  [v3 validateClass:@"Music.NowPlayingRepeatButton"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  objc_opt_class();
  v3 = [(BottomPlayerViewControllerAccessibility *)self safeSwiftValueForKey:@"$__lazy_storage_$_nowPlayingItemStackView"];
  v4 = __UIAccessibilityCastAsClass();

  v68 = 0;
  objc_opt_class();
  v5 = [(BottomPlayerViewControllerAccessibility *)self safeValueForKey:@"routeLabel"];
  v6 = __UIAccessibilityCastAsClass();

  v7 = [v4 accessibilityLabel];

  v8 = [(BottomPlayerViewControllerAccessibility *)self safeValueForKey:@"artworkView"];
  v9 = v8;
  if (v7)
  {
    v10 = @"MiniPlayerArtworkVisible";
  }

  else
  {
    v10 = @"MiniPlayerArtworkNotVisible";
  }

  [v8 setAccessibilityIdentifier:v10];
  v11 = *MEMORY[0x29EDC7F70];
  v50 = v9;
  [v9 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
  v51 = v4;
  [v4 setAccessibilityIdentifier:@"MiniPlayerNowPlayingSongTitleBar"];
  v12 = [(BottomPlayerViewControllerAccessibility *)self safeValueForKey:@"accessibilityNowPlayingResponse"];
  v68 = 0;
  objc_opt_class();
  v13 = [(BottomPlayerViewControllerAccessibility *)self safeValueForKey:@"reverseButton"];
  v14 = __UIAccessibilityCastAsClass();

  [v14 setIsAccessibilityElement:{objc_msgSend(v14, "isHidden") ^ 1}];
  v49 = v6;
  if ([MEMORY[0x29EDC9738] accessibilityIsSeekEnabledInDirection:2 forResponse:v12])
  {
    [MEMORY[0x29EDC9738] accessibilitySeekButtonStringInDirection:2 response:v12];
  }

  else
  {
    accessibilityMusicLocalizedString(@"button.prev.text");
  }
  v48 = ;
  [v14 setAccessibilityLabel:v48];
  [v14 setAccessibilityIdentifier:@"MiniPlayerPreviousTrack"];
  v47 = v14;
  [v14 setAccessibilityTraits:v11];
  v15 = [(BottomPlayerViewControllerAccessibility *)self safeValueForKey:@"playPauseButton"];
  [v15 setIsAccessibilityElement:v7 != 0];
  v66[0] = MEMORY[0x29EDCA5F8];
  v66[1] = 3221225472;
  v66[2] = __85__BottomPlayerViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v66[3] = &unk_29F2DC728;
  v16 = v12;
  v67 = v16;
  [v15 _setAccessibilityLabelBlock:v66];
  [v15 setAccessibilityIdentifier:@"MiniPlayerPlayPauseButton"];
  v17 = [(BottomPlayerViewControllerAccessibility *)self safeValueForKey:@"skipButton"];
  [v17 setIsAccessibilityElement:v7 != 0];
  v46 = v15;
  if ([MEMORY[0x29EDC9738] accessibilityIsSeekEnabledInDirection:1 forResponse:v16])
  {
    [MEMORY[0x29EDC9738] accessibilitySeekButtonStringInDirection:1 response:v16];
  }

  else
  {
    accessibilityMusicLocalizedString(@"button.next.text");
  }
  v18 = ;
  v64[0] = MEMORY[0x29EDCA5F8];
  v64[1] = 3221225472;
  v64[2] = __85__BottomPlayerViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v64[3] = &unk_29F2DC728;
  v19 = v18;
  v65 = v19;
  [v17 _setAccessibilityLabelBlock:v64];
  [v17 setAccessibilityIdentifier:@"MiniPlayerNextTrack"];
  v44 = v17;
  [v17 setAccessibilityTraits:v11];
  v68 = 0;
  objc_opt_class();
  v20 = [(BottomPlayerViewControllerAccessibility *)self safeValueForKey:@"view"];
  v21 = __UIAccessibilityCastAsClass();

  if (v68 == 1)
  {
    abort();
  }

  v43 = v19;
  if (v7)
  {
    [v21 setAccessibilityContainerType:4];
    v22 = accessibilityMusicLocalizedString(@"titlesView.hint");
    [v21 setAccessibilityHint:v22];

    [v21 setAccessibilityIdentifier:@"MiniPlayerButton"];
  }

  else
  {
    [v21 setAccessibilityContainerType:0];
  }

  v23 = accessibilityMusicLocalizedString(@"mini.player");
  [v21 setAccessibilityLabel:v23];

  [v21 setAccessibilityIdentifier:@"MiniPlayer"];
  [v21 _accessibilitySetShouldHitTestFallBackToNearestChild:1];
  v24 = [v21 _accessibilityFindSubviewDescendant:&__block_literal_global_8];
  [v24 setAccessibilityIdentifier:@"MiniPlayerShuffle"];
  v25 = [v21 _accessibilityFindSubviewDescendant:&__block_literal_global_399];
  [v25 setAccessibilityIdentifier:@"MiniPlayerRepeat"];
  v26 = [(BottomPlayerViewControllerAccessibility *)self safeSwiftValueForKey:@"contextMenuButton"];
  [v26 setAccessibilityTraits:v11];
  v27 = [(BottomPlayerViewControllerAccessibility *)self safeSwiftValueForKey:@"lyricsButton"];
  [v27 setAccessibilityTraits:v11];
  v28 = accessibilityMusicLocalizedString(@"lyrics.button");
  [v27 setAccessibilityLabel:v28];

  v29 = [(BottomPlayerViewControllerAccessibility *)self safeSwiftValueForKey:@"queueButton"];
  [v29 setAccessibilityTraits:v11];
  v30 = accessibilityMusicLocalizedString(@"playing.next.button");
  [v29 setAccessibilityLabel:v30];

  v53[0] = MEMORY[0x29EDCA5F8];
  v53[1] = 3221225472;
  v53[2] = __85__BottomPlayerViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_5;
  v53[3] = &unk_29F2DCA40;
  v54 = v50;
  v55 = v51;
  v40 = v21;
  v41 = self;
  v31 = v24;
  v56 = v24;
  v57 = v47;
  v58 = v46;
  v59 = v44;
  v60 = v25;
  v61 = v26;
  v62 = v27;
  v63 = v29;
  v42 = v29;
  v32 = v27;
  v33 = v26;
  v34 = v25;
  v45 = v44;
  v35 = v46;
  v36 = v47;
  v37 = v31;
  v38 = v51;
  v39 = v50;
  [v40 _setAccessibilityElementsBlock:v53];
  v52.receiver = v41;
  v52.super_class = BottomPlayerViewControllerAccessibility;
  [(BottomPlayerViewControllerAccessibility *)&v52 _accessibilityLoadAccessibilityInformation];
}

uint64_t __85__BottomPlayerViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29C2E2910](@"Music.NowPlayingShuffleButton");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __85__BottomPlayerViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29C2E2910](@"Music.NowPlayingRepeatButton");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

id __85__BottomPlayerViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_5(void *a1)
{
  v1 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{10, a1[4], a1[5], a1[6], a1[7], a1[8], a1[9], a1[10], a1[11], a1[12], a1[13]}];
  v2 = [v1 axFilterObjectsUsingBlock:&__block_literal_global_412];

  return v2;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = BottomPlayerViewControllerAccessibility;
  [(BottomPlayerViewControllerAccessibility *)&v3 viewDidLoad];
  [(BottomPlayerViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)accessibilityUpdateMetadata
{
  v3.receiver = self;
  v3.super_class = BottomPlayerViewControllerAccessibility;
  [(BottomPlayerViewControllerAccessibility *)&v3 accessibilityUpdateMetadata];
  [(BottomPlayerViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)setArtworkView:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(BottomPlayerViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
  }

  else
  {
    v8 = 0;
    objc_opt_class();
    v5 = [(BottomPlayerViewControllerAccessibility *)self safeValueForKey:@"view"];
    v6 = __UIAccessibilityCastAsClass();

    [v6 setAccessibilityElements:MEMORY[0x29EDB8E90]];
  }

  v7.receiver = self;
  v7.super_class = BottomPlayerViewControllerAccessibility;
  [(BottomPlayerViewControllerAccessibility *)&v7 setArtworkView:v4];
}

@end