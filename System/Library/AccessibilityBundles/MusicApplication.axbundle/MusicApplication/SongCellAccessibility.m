@interface SongCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_isSongDownloaded;
- (id)_axPlaybackStateLabel;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation SongCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MusicApplication.SongCell" hasInstanceMethod:@"accessibilityTrackNumberString" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.SongCell" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.SongCell" hasInstanceMethod:@"artistName" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.SongCell" hasInstanceMethod:@"albumTitle" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.SongCell" hasInstanceMethod:@"duration" withFullSignature:{"d", 0}];
  [v3 validateClass:@"MusicApplication.SongCell" hasInstanceMethod:@"accessibilityIsExplicit" withFullSignature:{"B", 0}];
  [v3 validateClass:@"MusicApplication.SongCell" hasInstanceMethod:@"isPopular" withFullSignature:{"B", 0}];
  [v3 validateClass:@"MusicApplication.SongCell" hasInstanceMethod:@"isDisabled" withFullSignature:{"B", 0}];
  [v3 validateClass:@"MusicApplication.SongCell" hasInstanceMethod:@"accessibilityIsVideoTrack" withFullSignature:{"B", 0}];
  [v3 validateClass:@"MusicApplication.HorizontalLockupCollectionViewCell" hasInstanceMethod:@"wantsNowPlayingIndicator" withFullSignature:{"B", 0}];
  [v3 validateClass:@"MusicApplication.HorizontalLockupCollectionViewCell" hasInstanceMethod:@"accessibilityLibraryStatusControl" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.SongCell" isKindOfClass:@"MusicApplication.HorizontalLockupCollectionViewCell"];
  [v3 validateClass:@"MusicApplication.HorizontalLockupCollectionViewCell" hasInstanceMethod:@"accessibilityMediaPickerAddButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UIImageAsset" hasInstanceMethod:@"assetName" withFullSignature:{"@", 0}];
  [v3 validateSwiftEnum:@"MusicApplication.PlaybackIndicator[class].View"];
  [v3 validateSwiftEnum:@"MusicApplication.PlaybackIndicator[class].View" hasCase:@"liveWaveform" withSwiftType:"WaveformPlayIndicator"];
  [v3 validateSwiftEnum:@"MusicCoreUI.WaveformPlayIndicator[class].Mode"];
  [v3 validateClass:@"MusicCoreUI.WaveformPlayIndicator" hasSwiftField:@"mode" withSwiftType:"Mode"];
  [v3 validateClass:@"MusicApplication.HorizontalLockupCollectionViewCell" hasSwiftField:@"playbackIndicatorView" withSwiftType:"Optional<View>"];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(SongCellAccessibility *)self safeValueForKey:@"accessibilityTrackNumberString"];
  v4 = __UIAccessibilityCastAsClass();

  if ([(SongCellAccessibility *)self safeBoolForKey:@"accessibilityIsVideoTrack"])
  {
    v24 = accessibilityMusicLocalizedString(@"video.artwork");
  }

  else
  {
    v24 = 0;
  }

  objc_opt_class();
  v5 = [(SongCellAccessibility *)self safeValueForKey:@"title"];
  v6 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v7 = [(SongCellAccessibility *)self safeValueForKey:@"artistName"];
  v8 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v9 = [(SongCellAccessibility *)self safeValueForKey:@"albumTitle"];
  v10 = __UIAccessibilityCastAsClass();

  v11 = v8;
  [(SongCellAccessibility *)self safeDoubleForKey:@"duration"];
  v12 = v6;
  if (v13 <= 0.00000011920929)
  {
    v14 = 0;
  }

  else
  {
    v14 = AXDurationStringForDuration();
  }

  v15 = v4;
  if ([(SongCellAccessibility *)self safeBoolForKey:@"accessibilityIsExplicit"])
  {
    v16 = accessibilityMusicLocalizedString(@"explicit");
  }

  else
  {
    v16 = 0;
  }

  if ([(SongCellAccessibility *)self safeBoolForKey:@"isPopular"])
  {
    v23 = accessibilityMusicLocalizedString(@"popular");
  }

  else
  {
    v23 = 0;
  }

  if ([(SongCellAccessibility *)self safeBoolForKey:@"isDisabled"])
  {
    v17 = accessibilityMusicLocalizedString(@"unavailable");
  }

  else
  {
    v17 = 0;
  }

  v18 = v10;
  if ([(SongCellAccessibility *)self _isSongDownloaded])
  {
    v19 = accessibilityMusicLocalizedString(@"downloaded");
  }

  else
  {
    v19 = 0;
  }

  v21 = [(SongCellAccessibility *)self _axPlaybackStateLabel];
  v22 = __UIAXStringForVariables();

  return v22;
}

- (id)accessibilityUserInputLabels
{
  v2 = [(SongCellAccessibility *)self safeValueForKey:@"title"];
  v3 = MEMORY[0x29C2E2E00]();

  return v3;
}

- (id)accessibilityValue
{
  v2 = [(SongCellAccessibility *)self safeValueForKey:@"accessibilityLibraryStatusControl"];
  v3 = [v2 accessibilityValue];

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v10.receiver = self;
  v10.super_class = SongCellAccessibility;
  v3 = *MEMORY[0x29EDC7F70] | [(SongCellAccessibility *)&v10 accessibilityTraits];
  v4 = [(SongCellAccessibility *)self safeValueForKey:@"accessibilityMediaPickerAddButton"];
  v5 = [v4 safeBoolForKey:@"selected"];

  v6 = *MEMORY[0x29EDC7FC0];
  if (!v5)
  {
    v6 = 0;
  }

  v7 = v3 | v6;
  v8 = [(SongCellAccessibility *)self safeUIViewForKey:@"accessibilityLibraryStatusControl"];
  if ([v8 _accessibilityViewIsVisible])
  {
    v7 |= [v8 accessibilityTraits];
  }

  return v7;
}

- (BOOL)_isSongDownloaded
{
  v2 = [(SongCellAccessibility *)self _accessibilityFindDescendant:&__block_literal_global_11];
  v3 = v2 != 0;

  return v3;
}

uint64_t __42__SongCellAccessibility__isSongDownloaded__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29C2E2DD0](@"MusicCoreUI.SymbolButton");
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v3 = [v2 safeValueForKey:@"accessibilityImageView"];
    v4 = __UIAccessibilityCastAsClass();

    v5 = [v4 image];
    v6 = [v5 imageAsset];
    v7 = [v6 safeStringForKey:@"assetName"];

    v8 = [v7 isEqualToString:@"arrow.down.circle.fill"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_axPlaybackStateLabel
{
  v2 = [(SongCellAccessibility *)self safeSwiftValueForKey:@"playbackIndicatorView"];
  v3 = [v2 safeSwiftEnumAssociatedObject];
  v4 = [v3 safeSwiftValueForKey:@"mode"];
  v5 = [v4 safeSwiftEnumCase];
  v6 = @"paused";
  if ([v5 isEqualToString:@"paused"])
  {
    goto LABEL_5;
  }

  if ([v5 isEqualToString:@"playing"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"simulated"))
  {
    v6 = @"now.playing";
LABEL_5:
    v7 = accessibilityMusicLocalizedString(v6);
    goto LABEL_6;
  }

  v6 = @"buffering";
  if ([v5 isEqualToString:@"buffering"])
  {
    goto LABEL_5;
  }

  v7 = 0;
LABEL_6:

  return v7;
}

@end