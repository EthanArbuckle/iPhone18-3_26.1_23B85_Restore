@interface PLCropOverlayBottomBarAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axUpdatePlayPauseButtonWithImage;
- (void)_updatePreviewBottomBarForPlaybackState;
- (void)_updateStyle;
@end

@implementation PLCropOverlayBottomBarAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PLCropOverlayPreviewBottomBar" hasInstanceMethod:@"playbackButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PLCropOverlayBottomBar" hasInstanceMethod:@"_updateStyle" withFullSignature:{"v", 0}];
  [v3 validateClass:@"PLCropOverlayBottomBar" hasInstanceMethod:@"isPlayingVideo" withFullSignature:{"B", 0}];
  [v3 validateClass:@"PLCropOverlayBottomBar" hasInstanceMethod:@"setStyle: animated:" withFullSignature:{"v", "q", "B", 0}];
}

- (void)_axUpdatePlayPauseButtonWithImage
{
  v3 = [(PLCropOverlayBottomBarAccessibility *)self safeValueForKey:@"_previewBottomBar"];
  v6 = [v3 safeValueForKey:@"playbackButton"];

  if ([(PLCropOverlayBottomBarAccessibility *)self safeBoolForKey:@"isPlayingVideo"])
  {
    v4 = @"pause.button";
  }

  else
  {
    v4 = @"play.button";
  }

  v5 = accessibilityLocalizedString(v4);
  [v6 setAccessibilityLabel:v5];
}

- (void)_updatePreviewBottomBarForPlaybackState
{
  v3.receiver = self;
  v3.super_class = PLCropOverlayBottomBarAccessibility;
  [(PLCropOverlayBottomBarAccessibility *)&v3 _updatePreviewBottomBarForPlaybackState];
  [(PLCropOverlayBottomBarAccessibility *)self _axUpdatePlayPauseButtonWithImage];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = PLCropOverlayBottomBarAccessibility;
  [(PLCropOverlayBottomBarAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(PLCropOverlayBottomBarAccessibility *)self _axUpdatePlayPauseButtonWithImage];
}

- (void)_updateStyle
{
  v2.receiver = self;
  v2.super_class = PLCropOverlayBottomBarAccessibility;
  [(PLCropOverlayBottomBarAccessibility *)&v2 _updateStyle];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end