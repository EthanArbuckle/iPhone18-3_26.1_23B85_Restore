@interface BottomPlayerViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)accessibilityUpdateMetadata;
- (void)setArtworkView:(id)view;
- (void)viewDidLoad;
@end

@implementation BottomPlayerViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MusicApplication.BottomPlayerViewController" hasInstanceMethod:@"nowPlayingItemStackView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.BottomPlayerViewController" hasInstanceMethod:@"nowPlayingItemRouteLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.BottomPlayerViewController" hasInstanceMethod:@"nowPlayingItemTitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.BottomPlayerViewController" hasSwiftField:@"nowPlayingItemLargeTextTitleLabel" withSwiftType:"Optional<UILabel>"];
  [validationsCopy validateClass:@"MusicApplication.BottomPlayerViewController" hasSwiftField:@"nowPlayingItemLargeTextMarqueeView" withSwiftType:"Optional<MPUMarqueeView>"];
  [validationsCopy validateClass:@"MusicApplication.BottomPlayerViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"MusicApplication.BottomPlayerViewController" hasInstanceMethod:@"skipButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.BottomPlayerViewController" hasInstanceMethod:@"reverseButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.BottomPlayerViewController" hasInstanceMethod:@"playPauseButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.BottomPlayerViewController" hasInstanceMethod:@"artworkView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.BottomPlayerViewController" hasInstanceMethod:@"accessibilityUpdateMetadata" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"MusicApplication.BottomPlayerViewController" hasInstanceMethod:@"accessibilityNowPlayingResponse" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.BottomPlayerViewController" hasInstanceMethod:@"sharedListeningParticipantsLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MPCPlayerResponse" hasInstanceMethod:@"tracklist" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MPCPlayerResponse" hasInstanceMethod:@"state" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"MPCPlayerResponseTracklist" hasInstanceMethod:@"playingItem" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.BottomPlayerViewController" hasInstanceMethod:@"setArtworkView:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"MusicApplication.NowPlayingShuffleButton"];
  [validationsCopy validateClass:@"MusicApplication.NowPlayingRepeatButton"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  objc_opt_class();
  v3 = [(BottomPlayerViewControllerAccessibility *)self safeValueForKey:@"nowPlayingItemStackView"];
  v4 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v5 = [(BottomPlayerViewControllerAccessibility *)self safeValueForKey:@"nowPlayingItemRouteLabel"];
  v6 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v7 = [(BottomPlayerViewControllerAccessibility *)self safeValueForKey:@"nowPlayingItemTitleLabel"];
  v8 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v9 = [(BottomPlayerViewControllerAccessibility *)self safeSwiftValueForKey:@"nowPlayingItemLargeTextTitleLabel"];
  v10 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v11 = [(BottomPlayerViewControllerAccessibility *)self safeSwiftValueForKey:@"nowPlayingItemLargeTextMarqueeView"];
  v12 = __UIAccessibilityCastAsClass();

  v78 = 0;
  objc_opt_class();
  v13 = [(BottomPlayerViewControllerAccessibility *)self safeSwiftValueForKey:@"sharedListeningParticipantsLabel"];
  v14 = __UIAccessibilityCastAsClass();

  [v12 setIsAccessibilityElement:{objc_msgSend(v12, "isHidden") ^ 1}];
  accessibilityLabel = [v10 accessibilityLabel];
  v16 = __UIAXStringForVariables();
  [v12 setAccessibilityLabel:{v16, @"__AXStringForVariablesSentinel"}];

  [v12 setAccessibilityIdentifier:@"MiniPlayerNowPlayingSongTitleMarquee"];
  [v4 setIsAccessibilityElement:{objc_msgSend(v8, "isHidden") ^ 1}];
  if ([v6 _accessibilityViewIsVisible])
  {
    v74[0] = MEMORY[0x29EDCA5F8];
    v74[1] = 3221225472;
    v74[2] = __85__BottomPlayerViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
    v74[3] = &unk_29F2DD998;
    v17 = &v75;
    v75 = v14;
    v76 = v6;
    v77 = v8;
    [v4 _setAccessibilityLabelBlock:v74];
  }

  else
  {
    v72[0] = MEMORY[0x29EDCA5F8];
    v72[1] = 3221225472;
    v72[2] = __85__BottomPlayerViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
    v72[3] = &unk_29F2DD9C0;
    v17 = &v73;
    v73 = v8;
    [v4 _setAccessibilityLabelBlock:v72];
  }

  text = [v8 text];
  v56 = v8;
  v57 = v6;
  v55 = v10;
  if (text)
  {
    v19 = 1;
  }

  else
  {
    text2 = [v10 text];
    v19 = text2 != 0;
  }

  v54 = v14;

  v21 = [(BottomPlayerViewControllerAccessibility *)self safeValueForKey:@"artworkView"];
  v22 = v21;
  if (v19)
  {
    v23 = @"MiniPlayerArtworkVisible";
  }

  else
  {
    v23 = @"MiniPlayerArtworkNotVisible";
  }

  [v21 setAccessibilityIdentifier:v23];
  v24 = *MEMORY[0x29EDC7F70];
  [v22 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
  [v4 setAccessibilityIdentifier:@"MiniPlayerNowPlayingSongTitleBar"];
  if (([v12 isHidden] & 1) == 0)
  {
    [v22 frame];
    v26 = v25;
    [v12 frame];
    [v12 _accessibilitySetFrameExpansion:{0.0, (v27 - v26) * -0.5}];
  }

  v53 = v22;
  v28 = [(BottomPlayerViewControllerAccessibility *)self safeValueForKey:@"accessibilityNowPlayingResponse"];
  v78 = 0;
  objc_opt_class();
  v29 = [(BottomPlayerViewControllerAccessibility *)self safeValueForKey:@"reverseButton"];
  v30 = __UIAccessibilityCastAsClass();

  if (v78 == 1)
  {
    goto LABEL_24;
  }

  [v30 setIsAccessibilityElement:{objc_msgSend(v30, "isHidden") ^ 1}];
  if ([MEMORY[0x29EDC9738] accessibilityIsSeekEnabledInDirection:2 forResponse:v28])
  {
    [MEMORY[0x29EDC9738] accessibilitySeekButtonStringInDirection:2 response:v28];
  }

  else
  {
    accessibilityMusicLocalizedString(@"button.prev.text");
  }
  v52 = ;
  [v30 setAccessibilityLabel:v52];
  [v30 setAccessibilityIdentifier:@"MiniPlayerPreviousTrack"];
  [v30 setAccessibilityTraits:v24];
  v31 = [(BottomPlayerViewControllerAccessibility *)self safeValueForKey:@"playPauseButton"];
  [v31 setIsAccessibilityElement:v19];
  v70[0] = MEMORY[0x29EDCA5F8];
  v70[1] = 3221225472;
  v70[2] = __85__BottomPlayerViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3;
  v70[3] = &unk_29F2DD9C0;
  v32 = v28;
  v71 = v32;
  [v31 _setAccessibilityLabelBlock:v70];
  [v31 setAccessibilityIdentifier:@"MiniPlayerPlayPauseButton"];
  v33 = [(BottomPlayerViewControllerAccessibility *)self safeValueForKey:@"skipButton"];
  [v33 setIsAccessibilityElement:v19];
  v51 = v32;
  if ([MEMORY[0x29EDC9738] accessibilityIsSeekEnabledInDirection:1 forResponse:v32])
  {
    [MEMORY[0x29EDC9738] accessibilitySeekButtonStringInDirection:1 response:v32];
  }

  else
  {
    accessibilityMusicLocalizedString(@"button.next.text");
  }
  v34 = ;
  v35 = v4;
  v68[0] = MEMORY[0x29EDCA5F8];
  v68[1] = 3221225472;
  v68[2] = __85__BottomPlayerViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_4;
  v68[3] = &unk_29F2DD9C0;
  v50 = v34;
  v69 = v50;
  [v33 _setAccessibilityLabelBlock:v68];
  [v33 setAccessibilityIdentifier:@"MiniPlayerNextTrack"];
  [v33 setAccessibilityTraits:v24];
  v78 = 0;
  objc_opt_class();
  v36 = [(BottomPlayerViewControllerAccessibility *)self safeValueForKey:@"view"];
  v37 = __UIAccessibilityCastAsClass();

  if (v78 == 1)
  {
LABEL_24:
    abort();
  }

  if (v19)
  {
    [v37 setAccessibilityContainerType:4];
    v38 = accessibilityMusicLocalizedString(@"titlesView.hint");
    [v37 setAccessibilityHint:v38];

    [v37 setAccessibilityIdentifier:@"MiniPlayerButton"];
  }

  else
  {
    [v37 setAccessibilityContainerType:0];
  }

  v39 = accessibilityMusicLocalizedString(@"mini.player");
  [v37 setAccessibilityLabel:v39];

  [v37 setAccessibilityIdentifier:@"MiniPlayer"];
  [v37 _accessibilitySetShouldHitTestFallBackToNearestChild:1];
  v40 = [v37 _accessibilityFindSubviewDescendant:&__block_literal_global_7];
  [v40 setAccessibilityIdentifier:@"MiniPlayerShuffle"];
  v41 = [v37 _accessibilityFindSubviewDescendant:&__block_literal_global_410];
  [v41 setAccessibilityIdentifier:@"MiniPlayerRepeat"];
  v59[0] = MEMORY[0x29EDCA5F8];
  v59[1] = 3221225472;
  v59[2] = __85__BottomPlayerViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_7;
  v59[3] = &unk_29F2DD9E8;
  v60 = v53;
  v61 = v35;
  v62 = v12;
  v63 = v40;
  v64 = v30;
  v65 = v31;
  v66 = v33;
  v67 = v41;
  v42 = v41;
  v43 = v33;
  v49 = v31;
  v44 = v30;
  v45 = v40;
  v46 = v12;
  v47 = v35;
  v48 = v53;
  [v37 _setAccessibilityElementsBlock:v59];
  v58.receiver = self;
  v58.super_class = BottomPlayerViewControllerAccessibility;
  [(BottomPlayerViewControllerAccessibility *)&v58 _accessibilityLoadAccessibilityInformation];
}

id __85__BottomPlayerViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(id *a1)
{
  v2 = [a1[4] accessibilityLabel];
  v3 = [a1[5] accessibilityLabel];
  v6 = [a1[6] accessibilityLabel];
  v4 = __UIAXStringForVariables();

  return v4;
}

id __85__BottomPlayerViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) accessibilityLabel];
  v2 = __UIAXStringForVariables();

  return v2;
}

uint64_t __85__BottomPlayerViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29C2E2DD0](@"MusicApplication.NowPlayingShuffleButton");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __85__BottomPlayerViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29C2E2DD0](@"MusicApplication.NowPlayingRepeatButton");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
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

- (void)setArtworkView:(id)view
{
  viewCopy = view;
  if (viewCopy)
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
  [(BottomPlayerViewControllerAccessibility *)&v7 setArtworkView:viewCopy];
}

@end