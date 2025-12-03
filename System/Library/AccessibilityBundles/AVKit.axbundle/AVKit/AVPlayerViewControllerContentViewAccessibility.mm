@interface AVPlayerViewControllerContentViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityPerformEscape;
@end

@implementation AVPlayerViewControllerContentViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AVMobileChromeControlsViewController" hasInstanceMethod:@"playbackControlsView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVPlayerViewControllerContentView" hasInstanceMethod:@"chromePlaybackControlsView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVPlaybackControlsView"];
  [validationsCopy validateClass:@"AVPlaybackControlsView" hasInstanceVariable:@"_doneButton" withType:"AVButton"];
}

- (BOOL)accessibilityPerformEscape
{
  v2 = [(AVPlayerViewControllerContentViewAccessibility *)self safeValueForKey:@"chromePlaybackControlsView"];
  v3 = [v2 safeValueForKey:@"playbackControlsView"];
  v4 = [v3 safeValueForKey:@"_doneButton"];
  accessibilityActivate = [v4 accessibilityActivate];

  return accessibilityActivate;
}

@end