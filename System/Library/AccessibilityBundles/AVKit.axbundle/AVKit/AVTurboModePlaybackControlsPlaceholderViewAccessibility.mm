@interface AVTurboModePlaybackControlsPlaceholderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_makeProminentPlayButtonAndContainer;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation AVTurboModePlaybackControlsPlaceholderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AVTurboModePlaybackControlsPlaceholderView" hasInstanceMethod:@"prominentPlayButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTurboModePlaybackControlsPlaceholderView" hasInstanceMethod:@"_makeProminentPlayButtonAndContainer" withFullSignature:{"@", 0}];
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
  _makeProminentPlayButtonAndContainer = [(AVTurboModePlaybackControlsPlaceholderViewAccessibility *)&v5 _makeProminentPlayButtonAndContainer];
  [(AVTurboModePlaybackControlsPlaceholderViewAccessibility *)self _accessibilityLoadAccessibilityInformation];

  return _makeProminentPlayButtonAndContainer;
}

@end