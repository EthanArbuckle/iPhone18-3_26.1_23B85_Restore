@interface NowPlayingTrackTitleStackViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation NowPlayingTrackTitleStackViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NowPlayingTrackTitleStackView" hasInstanceMethod:@"accessibilityTitleLabelText" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NowPlayingTrackTitleStackView" hasInstanceMethod:@"accessibilitySubtitleLabelText" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(NowPlayingTrackTitleStackViewAccessibility *)self safeStringForKey:@"accessibilityTitleLabelText"];
  v6 = [(NowPlayingTrackTitleStackViewAccessibility *)self safeStringForKey:@"accessibilitySubtitleLabelText"];
  v4 = __AXStringForVariables();

  return v4;
}

@end