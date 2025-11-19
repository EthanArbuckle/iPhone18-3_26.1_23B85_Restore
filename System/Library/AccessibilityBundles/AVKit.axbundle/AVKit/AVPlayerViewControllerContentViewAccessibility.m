@interface AVPlayerViewControllerContentViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityPerformEscape;
@end

@implementation AVPlayerViewControllerContentViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AVMobileChromeControlsViewController" hasInstanceMethod:@"playbackControlsView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AVPlayerViewControllerContentView" hasInstanceMethod:@"chromePlaybackControlsView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AVPlaybackControlsView"];
  [v3 validateClass:@"AVPlaybackControlsView" hasInstanceVariable:@"_doneButton" withType:"AVButton"];
}

- (BOOL)accessibilityPerformEscape
{
  v2 = [(AVPlayerViewControllerContentViewAccessibility *)self safeValueForKey:@"chromePlaybackControlsView"];
  v3 = [v2 safeValueForKey:@"playbackControlsView"];
  v4 = [v3 safeValueForKey:@"_doneButton"];
  v5 = [v4 accessibilityActivate];

  return v5;
}

@end