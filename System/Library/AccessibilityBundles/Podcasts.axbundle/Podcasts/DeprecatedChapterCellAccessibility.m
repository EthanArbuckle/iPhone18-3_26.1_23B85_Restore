@interface DeprecatedChapterCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityLabelForPlaybackState:(int64_t)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation DeprecatedChapterCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NowPlayingUI.DeprecatedChapterCell" hasInstanceMethod:@"accessibilityTitle" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NowPlayingUI.DeprecatedChapterCell" hasInstanceMethod:@"accessibilityDuration" withFullSignature:{"d", 0}];
  [v3 validateClass:@"NowPlayingUI.DeprecatedChapterCell" hasInstanceMethod:@"accessibilityWantsNowPlayingIndicator" withFullSignature:{"B", 0}];
  [v3 validateClass:@"NowPlayingUI.DeprecatedChapterCell" hasInstanceMethod:@"accessibilityPlaybackState" withFullSignature:{"q", 0}];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(DeprecatedChapterCellAccessibility *)self safeValueForKey:@"accessibilityTitle"];
  v4 = __UIAccessibilityCastAsClass();

  [(DeprecatedChapterCellAccessibility *)self safeDoubleForKey:@"accessibilityDuration"];
  if (v5 <= 0.00000011920929)
  {
    v6 = 0;
  }

  else
  {
    v6 = AXDurationStringForDuration();
  }

  if ([(DeprecatedChapterCellAccessibility *)self safeBoolForKey:@"accessibilityWantsNowPlayingIndicator"])
  {
    v7 = [(DeprecatedChapterCellAccessibility *)self safeIntegerForKey:@"accessibilityPlaybackState"];
  }

  else
  {
    v7 = 0;
  }

  v10 = [(DeprecatedChapterCellAccessibility *)self _accessibilityLabelForPlaybackState:v7];
  v8 = __UIAXStringForVariables();

  return v8;
}

- (id)_accessibilityLabelForPlaybackState:(int64_t)a3
{
  if (a3 == 2)
  {
    v4 = @"paused";
LABEL_5:
    v5 = accessibilityLocalizedString(v4);

    return v5;
  }

  if (a3 == 1)
  {
    v4 = @"now.playing";
    goto LABEL_5;
  }

  v5 = 0;

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = DeprecatedChapterCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(DeprecatedChapterCellAccessibility *)&v3 accessibilityTraits];
}

@end