@interface AVTurboModePlaybackControlsPlaceholderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_makeProminentPlayButtonAndContainer;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation AVTurboModePlaybackControlsPlaceholderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AVTurboModePlaybackControlsPlaceholderView" hasInstanceMethod:@"prominentPlayButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AVTurboModePlaybackControlsPlaceholderView" hasInstanceMethod:@"_makeProminentPlayButtonAndContainer" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = AVTurboModePlaybackControlsPlaceholderViewAccessibility;
  [(AVTurboModePlaybackControlsPlaceholderViewAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = accessibilityLocalizedString(@"play.button");
  v4 = [(AVTurboModePlaybackControlsPlaceholderViewAccessibility *)self safeUIViewForKey:@"prominentPlayButton"];
  [v4 setAccessibilityLabel:v3];
}

- (id)_makeProminentPlayButtonAndContainer
{
  v5.receiver = self;
  v5.super_class = AVTurboModePlaybackControlsPlaceholderViewAccessibility;
  v3 = [(AVTurboModePlaybackControlsPlaceholderViewAccessibility *)&v5 _makeProminentPlayButtonAndContainer];
  [(AVTurboModePlaybackControlsPlaceholderViewAccessibility *)self _accessibilityLoadAccessibilityInformation];

  return v3;
}

@end