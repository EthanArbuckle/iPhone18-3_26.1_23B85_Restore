@interface NowPlayingTrackTitleStackViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation NowPlayingTrackTitleStackViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NowPlayingTrackTitleStackView" hasInstanceMethod:@"accessibilityTitleLabelText" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NowPlayingTrackTitleStackView" hasInstanceMethod:@"accessibilitySubtitleLabelText" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(NowPlayingTrackTitleStackViewAccessibility *)self safeStringForKey:@"accessibilityTitleLabelText"];
  v6 = [(NowPlayingTrackTitleStackViewAccessibility *)self safeStringForKey:@"accessibilitySubtitleLabelText"];
  v4 = __AXStringForVariables();

  return v4;
}

@end