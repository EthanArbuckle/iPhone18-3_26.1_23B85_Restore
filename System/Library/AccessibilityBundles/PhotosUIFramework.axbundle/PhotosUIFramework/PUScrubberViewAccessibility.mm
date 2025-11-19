@interface PUScrubberViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axDecrementForThreeFingerScroll;
- (BOOL)_axIncrementForThreeFingerScroll;
- (BOOL)_axIsVideoPlayerActivated;
- (BOOL)canBecomeFocused;
- (id)_axShowingType;
- (id)_axTileControllerForAsset:(id)a3;
- (id)_axVideoPlaybackValue;
- (id)_axVideoPlayer;
- (id)_axVideoSession;
- (id)accessibilityCustomActions;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_axCloseVideoPlaybackAction;
- (void)_axScrollToAssetReference:(id)a3 inViewModel:(id)a4 forThreeFingerScroll:(BOOL)a5;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
@end

@implementation PUScrubberViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PUFilmstripTileViewController" isKindOfClass:@"PUImageTileViewController"];
  [v3 validateClass:@"PUScrubberView" hasInstanceMethod:@"_tilingView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PUScrubberView" hasInstanceMethod:@"browsingSession" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PUScrubberView" hasInstanceVariable:@"_transitionLayoutIdentifier" withType:"NSString"];
  [v3 validateClass:@"PUScrubberView" hasInstanceMethod:@"_endScrubbing" withFullSignature:{"v", 0}];
  [v3 validateClass:@"PUScrubberView" hasInstanceMethod:@"_updateScrollPositionAnimated:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"PUViewModel" hasInstanceMethod:@"performChanges:" withFullSignature:{"v", "@?", 0}];
  [v3 validateClass:@"PUAssetViewModel" hasInstanceMethod:@"videoPlayer" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PUBrowsingViewModel" hasInstanceMethod:@"setCurrentAssetReference:transitionProgress:transitionDriverIdentifier:animated:" withFullSignature:{"v", "@", "d", "@", "B", 0}];
  [v3 validateClass:@"PUBrowsingViewModel" hasInstanceMethod:@"assetViewModelForAssetReference:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"PUBrowsingViewModel" hasInstanceMethod:@"currentAssetReference" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PUBrowsingViewModel" hasInstanceMethod:@"assetsDataSource" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PUBrowsingViewModel" hasInstanceMethod:@"leadingAssetReference" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PUBrowsingViewModel" hasInstanceMethod:@"trailingAssetReference" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PUTilingView" hasInstanceMethod:@"enumerateAllTileControllersUsingBlock:" withFullSignature:{"v", "@?", 0}];
  [v3 validateClass:@"PUTilingView" hasInstanceMethod:@"layout" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PUTilingView" hasInstanceMethod:@"presentedTileControllerWithIndexPath: kind: dataSourceIdentifier:" withFullSignature:{"@", "@", "@", "@", 0}];
  [v3 validateClass:@"PUScrubberTilingLayout" hasInstanceMethod:@"slitAspectRatio" withFullSignature:{"d", 0}];
  [v3 validateClass:@"PUTileLayoutInfo" hasInstanceMethod:@"tileKind" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PUTileLayoutInfo" hasInstanceMethod:@"dataSourceIdentifier" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PUTileLayoutInfo" hasInstanceMethod:@"indexPath" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PUAssetReference" hasInstanceMethod:@"asset" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PUAssetReference" hasInstanceMethod:@"indexPath" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PUBrowsingVideoPlayer" hasInstanceMethod:@"videoSession" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXVideoSession" hasInstanceMethod:@"currentTime" withFullSignature:{"{?=qiIq}", 0}];
  [v3 validateClass:@"PXVideoSession" hasInstanceMethod:@"videoDuration" withFullSignature:{"{?=qiIq}", 0}];
  [v3 validateClass:@"PUBrowsingVideoPlayer" hasInstanceMethod:@"isActivated" withFullSignature:{"B", 0}];
  [v3 validateClass:@"PUImageTileViewController" hasInstanceMethod:@"asset" withFullSignature:{"@", 0}];
  [v3 validateProtocol:@"PUDisplayAsset" hasRequiredInstanceMethod:@"mediaSubtypes"];
  [v3 validateClass:@"PUScrubberView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"UIView" hasInstanceMethod:@"canBecomeFocused" withFullSignature:{"B", 0}];
}

- (id)accessibilityLabel
{
  if ([(PUScrubberViewAccessibility *)self _axIsVideoPlayerActivated])
  {
    v3 = [(PUScrubberViewAccessibility *)self _axVideoPlayer];
    v4 = [v3 safeIntegerForKey:@"desiredPlayState"];

    v5 = @"scrubber.playing";
    if (v4 == 2)
    {
      v5 = @"scrubber.paused";
    }

    v6 = v5;
    v7 = accessibilityPULocalizedString(@"video.playbackcontrol.label");
    v8 = accessibilityPULocalizedString(v6);

    v9 = __UIAXStringForVariables();
  }

  else
  {
    v7 = [(PUScrubberViewAccessibility *)self _axShowingType];
    v10 = MEMORY[0x29EDBA0F8];
    v8 = accessibilityPULocalizedString(@"photo.scrubber.label.format");
    v9 = [v10 stringWithFormat:v8, v7];
  }

  v11 = v9;

  return v11;
}

- (id)accessibilityHint
{
  if ([(PUScrubberViewAccessibility *)self _axIsVideoPlayerActivated])
  {
    v3 = @"video.playbackcontrol.hint.expanded";
LABEL_5:
    v6 = accessibilityPULocalizedString(v3);
    goto LABEL_7;
  }

  v4 = [(PUScrubberViewAccessibility *)self _accessibilityValueForKey:@"AXIsVideoOnlyScrubber"];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v3 = @"video.playbackcontrol.hint.collapsed";
    goto LABEL_5;
  }

  v8.receiver = self;
  v8.super_class = PUScrubberViewAccessibility;
  v6 = [(PUScrubberViewAccessibility *)&v8 accessibilityHint];
LABEL_7:

  return v6;
}

- (id)accessibilityValue
{
  if ([(PUScrubberViewAccessibility *)self _axIsVideoPlayerActivated])
  {
    v3 = [(PUScrubberViewAccessibility *)self _axVideoPlaybackValue];
  }

  else
  {
    v4 = [(PUScrubberViewAccessibility *)self _axShowingType];
    v5 = [(PUScrubberViewAccessibility *)self safeValueForKey:@"browsingSession"];
    v3 = AXScrollStatusForBrowsingSession(v5, v4);
  }

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v6.receiver = self;
  v6.super_class = PUScrubberViewAccessibility;
  v3 = [(PUScrubberViewAccessibility *)&v6 accessibilityTraits];
  if (![(PUScrubberViewAccessibility *)self _axIsVideoPlayerActivated])
  {
    v5.receiver = self;
    v5.super_class = PUScrubberViewAccessibility;
    return *MEMORY[0x29EDC7F60] | [(PUScrubberViewAccessibility *)&v5 accessibilityTraits];
  }

  return v3;
}

- (id)accessibilityCustomActions
{
  v9[1] = *MEMORY[0x29EDCA608];
  if ([(PUScrubberViewAccessibility *)self _axIsVideoPlayerActivated])
  {
    v3 = objc_alloc(MEMORY[0x29EDC78E0]);
    v4 = accessibilityPULocalizedString(@"video.playbackcontrol.closeAction.name");
    v5 = [v3 initWithName:v4 target:self selector:sel__axCloseVideoPlaybackAction];

    v9[0] = v5;
    v6 = [MEMORY[0x29EDB8D80] arrayWithObjects:v9 count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x29EDCA608];

  return v6;
}

- (void)accessibilityIncrement
{
  v3 = [(PUScrubberViewAccessibility *)self safeValueForKey:@"browsingSession"];
  v5 = [v3 safeValueForKey:@"viewModel"];

  v4 = [v5 safeValueForKey:@"trailingAssetReference"];
  [(PUScrubberViewAccessibility *)self _axScrollToAssetReference:v4 inViewModel:v5 forThreeFingerScroll:0];
}

- (void)accessibilityDecrement
{
  v3 = [(PUScrubberViewAccessibility *)self safeValueForKey:@"browsingSession"];
  v5 = [v3 safeValueForKey:@"viewModel"];

  v4 = [v5 safeValueForKey:@"leadingAssetReference"];
  [(PUScrubberViewAccessibility *)self _axScrollToAssetReference:v4 inViewModel:v5 forThreeFingerScroll:0];
}

- (BOOL)_axIncrementForThreeFingerScroll
{
  v3 = [(PUScrubberViewAccessibility *)self safeValueForKey:@"browsingSession"];
  v4 = [v3 safeValueForKey:@"viewModel"];

  v5 = [v4 safeValueForKey:@"trailingAssetReference"];
  if (v5)
  {
    [(PUScrubberViewAccessibility *)self _axScrollToAssetReference:v5 inViewModel:v4 forThreeFingerScroll:1];
  }

  return v5 != 0;
}

- (BOOL)_axDecrementForThreeFingerScroll
{
  v3 = [(PUScrubberViewAccessibility *)self safeValueForKey:@"browsingSession"];
  v4 = [v3 safeValueForKey:@"viewModel"];

  v5 = [v4 safeValueForKey:@"leadingAssetReference"];
  if (v5)
  {
    [(PUScrubberViewAccessibility *)self _axScrollToAssetReference:v5 inViewModel:v4 forThreeFingerScroll:1];
  }

  return v5 != 0;
}

- (void)_axCloseVideoPlaybackAction
{
  v3 = [(PUScrubberViewAccessibility *)self safeValueForKey:@"browsingSession"];
  v4 = [v3 safeValueForKey:@"viewModel"];

  v5 = [v4 safeValueForKey:@"leadingAssetReference"];
  if (v5 || ([v4 safeValueForKey:@"trailingAssetReference"], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v14[0] = MEMORY[0x29EDCA5F8];
    v14[1] = 3221225472;
    v14[2] = __58__PUScrubberViewAccessibility__axCloseVideoPlaybackAction__block_invoke;
    v14[3] = &unk_29F2E8538;
    v7 = v4;
    v15 = v7;
    v16 = self;
    v8 = MEMORY[0x29C2E7430](v14);
    v9 = [v7 safeValueForKey:@"_currentAssetReference"];
    (v8)[2](v8, v6);
    v12 = v9;
    v13 = v8;
    v10 = v9;
    v11 = v8;
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

void __58__PUScrubberViewAccessibility__axCloseVideoPlaybackAction__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v4 = v3;
  AXPerformSafeBlock();
}

void __58__PUScrubberViewAccessibility__axCloseVideoPlaybackAction__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __58__PUScrubberViewAccessibility__axCloseVideoPlaybackAction__block_invoke_3;
  v5[3] = &unk_29F2E8510;
  v6 = v2;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7 = v3;
  v8 = v4;
  [v6 performChanges:v5];
}

void __58__PUScrubberViewAccessibility__axCloseVideoPlaybackAction__block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) safeValueForKey:@"_scrubbingIdentifier"];
  [v1 setCurrentAssetReference:v2 transitionProgress:v3 transitionDriverIdentifier:1 animated:0.0];
}

- (void)_axScrollToAssetReference:(id)a3 inViewModel:(id)a4 forThreeFingerScroll:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8 && v9)
  {
    v17 = v9;
    v18 = v8;
    AXPerformSafeBlock();
    v11 = [v18 safeValueForKey:@"asset"];
    v12 = [(PUScrubberViewAccessibility *)self accessibilityValue];
    v13 = [v11 accessibilityLabel];
    v16 = [v11 accessibilityValue];
    v14 = __UIAXStringForVariables();

    v15 = MEMORY[0x29EDC7EF0];
    if (!v5)
    {
      v15 = MEMORY[0x29EDC7ED8];
    }

    UIAccessibilityPostNotification(*v15, v14);
  }
}

void __90__PUScrubberViewAccessibility__axScrollToAssetReference_inViewModel_forThreeFingerScroll___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __90__PUScrubberViewAccessibility__axScrollToAssetReference_inViewModel_forThreeFingerScroll___block_invoke_2;
  v5[3] = &unk_29F2E8510;
  v6 = v2;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7 = v3;
  v8 = v4;
  [v6 performChanges:v5];
}

void __90__PUScrubberViewAccessibility__axScrollToAssetReference_inViewModel_forThreeFingerScroll___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) safeValueForKey:@"_scrubbingIdentifier"];
  [v1 setCurrentAssetReference:v2 transitionProgress:v3 transitionDriverIdentifier:1 animated:0.0];
}

- (id)_axVideoPlaybackValue
{
  [(PUScrubberViewAccessibility *)self _axVideoSession];
  v25 = 0;
  v26 = &v25;
  v27 = 0x3810000000;
  v28 = &unk_29C15DAFD;
  v29 = 0;
  v30 = 0;
  v24 = v31 = 0;
  AXPerformSafeBlock();
  v2 = v26[4];
  v3 = *(v26 + 10);

  _Block_object_dispose(&v25, 8);
  v25 = 0;
  v26 = &v25;
  v27 = 0x3810000000;
  v28 = &unk_29C15DAFD;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v23 = MEMORY[0x29EDCA5F8];
  v4 = v24;
  AXPerformSafeBlock();
  v5 = v26[4];
  v6 = *(v26 + 10);

  _Block_object_dispose(&v25, 8);
  v7 = UIAXTimeStringForDuration();
  v8 = UIAXTimeStringForDuration();
  v9 = MEMORY[0x29EDBA0F8];
  v10 = accessibilityPULocalizedString(@"video.playbackcontrol.value.format");
  v11 = [v9 stringWithFormat:v10, v7, v8, v23, 3221225472, __52__PUScrubberViewAccessibility__axVideoPlaybackValue__block_invoke_2, &unk_29F2E80F0];

  v12 = [v11 rangeOfString:v7];
  v14 = v13;
  v15 = [v11 rangeOfString:v8 options:4];
  if (v14)
  {
    v17 = v16 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    v20 = 0;
  }

  else
  {
    v18 = v15;
    v19 = v16;
    v20 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v11];
    v21 = MEMORY[0x29EDB8EB0];
    [v20 setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBD8C0] withRange:{v12, v14}];
    [v20 setAttribute:v21 forKey:*MEMORY[0x29EDBD8C0] withRange:{v18, v19}];
  }

  return v20;
}

double __52__PUScrubberViewAccessibility__axVideoPlaybackValue__block_invoke(uint64_t a1)
{
  [*(a1 + 32) currentTime];
  v2 = *(*(a1 + 40) + 8);
  result = *&v4;
  *(v2 + 32) = v4;
  *(v2 + 48) = v5;
  return result;
}

double __52__PUScrubberViewAccessibility__axVideoPlaybackValue__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) videoDuration];
  v2 = *(*(a1 + 40) + 8);
  result = *&v4;
  *(v2 + 32) = v4;
  *(v2 + 48) = v5;
  return result;
}

- (id)_axTileControllerForAsset:(id)a3
{
  v4 = a3;
  v5 = [v4 safeValueForKey:@"indexPath"];
  v6 = [v4 safeValueForKey:@"dataSourceIdentifier"];

  v7 = [(PUScrubberViewAccessibility *)self safeValueForKey:@"_tilingView"];
  v8 = [v7 presentedTileControllerWithIndexPath:v5 kind:@"PUTileKindItemContent" dataSourceIdentifier:v6];

  return v8;
}

- (id)_axShowingType
{
  v3 = [(PUScrubberViewAccessibility *)self _accessibilityValueForKey:@"AXIsVideoOnlyScrubber"];
  if (!v3)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 1;
    v4 = [(PUScrubberViewAccessibility *)self safeValueForKey:@"_tilingView"];
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 3221225472;
    v8[2] = __45__PUScrubberViewAccessibility__axShowingType__block_invoke;
    v8[3] = &unk_29F2E8588;
    v8[4] = &v9;
    [v4 enumerateAllTileControllersUsingBlock:v8];

    v3 = [MEMORY[0x29EDBA070] numberWithBool:*(v10 + 24)];
    [(PUScrubberViewAccessibility *)self _accessibilitySetRetainedValue:v3 forKey:@"AXIsVideoOnlyScrubber"];
    _Block_object_dispose(&v9, 8);
  }

  if ([v3 BOOLValue])
  {
    v5 = @"photo.scrubber.video";
  }

  else
  {
    v5 = @"photo.scrubber.photo";
  }

  v6 = accessibilityPULocalizedString(v5);

  return v6;
}

void __45__PUScrubberViewAccessibility__axShowingType__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  NSClassFromString(&cfstr_Pufilmstriptil.isa);
  if (objc_opt_isKindOfClass())
  {
    v5 = [v6 safeValueForKey:@"asset"];
    if ([v5 conformsToProtocol:&unk_2A22A4C60] && (objc_msgSend(v5, "safeUnsignedIntegerForKey:", @"mediaSubtypes") & 8) != 0)
    {
      *(*(*(a1 + 32) + 8) + 24) = 0;
      *a3 = 1;
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a3 = 1;
  }
}

- (id)_axVideoPlayer
{
  v2 = [(PUScrubberViewAccessibility *)self safeValueForKey:@"browsingSession"];
  v3 = [v2 safeValueForKey:@"viewModel"];

  v4 = [v3 safeValueForKey:@"currentAssetReference"];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__6;
  v13 = __Block_byref_object_dispose__6;
  v14 = 0;
  v7 = v3;
  v8 = v4;
  AXPerformSafeBlock();
  v5 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v5;
}

void __45__PUScrubberViewAccessibility__axVideoPlayer__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) assetViewModelForAssetReference:*(a1 + 40)];
  v2 = [v5 safeValueForKey:@"videoPlayer"];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_axVideoSession
{
  v2 = [(PUScrubberViewAccessibility *)self _axVideoPlayer];
  v3 = [v2 safeValueForKey:@"videoSession"];

  return v3;
}

- (BOOL)_axIsVideoPlayerActivated
{
  v2 = [(PUScrubberViewAccessibility *)self _axVideoPlayer];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 safeBoolForKey:@"isActivated"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)canBecomeFocused
{
  v5.receiver = self;
  v5.super_class = PUScrubberViewAccessibility;
  v3 = [(PUScrubberViewAccessibility *)&v5 canBecomeFocused];
  return ([(PUScrubberViewAccessibility *)self _accessibilityIsFKARunningForFocusItem]| v3) & 1;
}

@end