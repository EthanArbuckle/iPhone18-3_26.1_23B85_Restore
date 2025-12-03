@interface VideosDetailHeaderViewAccessibility
- (id)playButton;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axApplyPlayButtonLabel;
@end

@implementation VideosDetailHeaderViewAccessibility

- (void)_axApplyPlayButtonLabel
{
  v3 = [(VideosDetailHeaderViewAccessibility *)self safeValueForKey:@"_playButton"];
  v2 = accessibilityLocalizedString(@"play.button");
  [v3 setAccessibilityLabel:v2];

  [v3 setAccessibilityIdentifier:@"PlayButton"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = VideosDetailHeaderViewAccessibility;
  [(VideosDetailHeaderViewAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(VideosDetailHeaderViewAccessibility *)self _axApplyPlayButtonLabel];
}

- (id)playButton
{
  v5.receiver = self;
  v5.super_class = VideosDetailHeaderViewAccessibility;
  playButton = [(VideosDetailHeaderViewAccessibility *)&v5 playButton];
  [(VideosDetailHeaderViewAccessibility *)self _axApplyPlayButtonLabel];

  return playButton;
}

@end