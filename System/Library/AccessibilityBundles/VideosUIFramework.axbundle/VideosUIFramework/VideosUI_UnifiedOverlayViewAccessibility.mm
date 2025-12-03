@interface VideosUI_UnifiedOverlayViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axScorecard;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation VideosUI_UnifiedOverlayViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VideosUI.UnifiedOverlayView" hasSwiftField:@"selectionView" withSwiftType:"Optional<VUIImageView>"];
  [validationsCopy validateClass:@"VideosUI.UnifiedOverlayView" hasSwiftField:@"textLabel" withSwiftType:"Optional<VUILabel>"];
  [validationsCopy validateClass:@"VideosUI.UnifiedOverlayView" hasSwiftField:@"subtitleLabel" withSwiftType:"Optional<VUILabel>"];
  [validationsCopy validateClass:@"VideosUI.UnifiedOverlayView" hasSwiftField:@"appImageView" withSwiftType:"Optional<UIImageView>"];
  [validationsCopy validateClass:@"VideosUI.UnifiedOverlayView" hasSwiftField:@"logoImageView" withSwiftType:"Optional<UIImageView>"];
  [validationsCopy validateClass:@"VideosUI.UnifiedOverlayView" hasSwiftField:@"progressView" withSwiftType:"Optional<StyledProgressBarView>"];
  [validationsCopy validateClass:@"VideosUI.StyledProgressBarView" hasSwiftField:@"progress" withSwiftType:"CGFloat"];
  [validationsCopy validateClass:@"VideosUI.UnifiedOverlayView" hasSwiftField:@"badgeView" withSwiftType:"Optional<UIView>"];
  [validationsCopy validateClass:@"VideosUI.UnifiedOverlayView" hasSwiftField:@"textBadge" withSwiftType:"Optional<TextBadgeView>"];
  [validationsCopy validateClass:@"VideosUI.UnifiedOverlayView" hasSwiftField:@"scorecardView" withSwiftType:"Optional<_UIHostingView<ScoreboardImageWrapper>>"];
  [validationsCopy validateClass:@"VUIScorecardView"];
}

- (id)_axScorecard
{
  objc_opt_class();
  v3 = [(VideosUI_UnifiedOverlayViewAccessibility *)self safeSwiftValueForKey:@"scorecardView"];
  v4 = __UIAccessibilityCastAsClass();

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = [(VideosUI_UnifiedOverlayViewAccessibility *)self _accessibilityDescendantOfType:MEMORY[0x29ED3FF70](@"VUIScorecardView")];
  }

  v6 = v5;

  return v6;
}

- (id)accessibilityLabel
{
  v26 = [(VideosUI_UnifiedOverlayViewAccessibility *)self safeSwiftValueForKey:@"subtitleLabel"];
  v3 = [(VideosUI_UnifiedOverlayViewAccessibility *)self safeSwiftValueForKey:@"appImageView"];
  v25 = [(VideosUI_UnifiedOverlayViewAccessibility *)self safeSwiftValueForKey:@"logoImageView"];
  v4 = [(VideosUI_UnifiedOverlayViewAccessibility *)self safeSwiftValueForKey:@"progressView"];
  [v4 safeSwiftCGFloatForKey:@"progress"];
  v6 = v5;

  if (fabs(v6) < 0.000001)
  {
    v10 = 0;
  }

  else
  {
    v7 = MEMORY[0x29EDBA0F8];
    v8 = accessibilityLocalizedString(@"content.percentage.complete");
    v9 = AXFormatFloatWithPercentage();
    v10 = [v7 stringWithFormat:v8, v9];
  }

  v22 = [(VideosUI_UnifiedOverlayViewAccessibility *)self safeSwiftValueForKey:@"badgeView"];
  v21 = [(VideosUI_UnifiedOverlayViewAccessibility *)self safeSwiftValueForKey:@"textBadge"];
  v24 = [(VideosUI_UnifiedOverlayViewAccessibility *)self safeSwiftValueForKey:@"textLabel"];
  accessibilityLabel = [v24 accessibilityLabel];
  v12 = accessibilityExpandTVEpisodeNumber(accessibilityLabel);
  accessibilityLabel2 = [v3 accessibilityLabel];
  accessibilityLabel3 = [v25 accessibilityLabel];
  [v22 accessibilityLabel];
  v15 = v23 = v3;
  accessibilityLabel4 = [v21 accessibilityLabel];
  _axScorecard = [(VideosUI_UnifiedOverlayViewAccessibility *)self _axScorecard];
  accessibilityLabel5 = [_axScorecard accessibilityLabel];
  v20 = __UIAXStringForVariables();

  return v20;
}

- (id)accessibilityValue
{
  v9 = 0;
  objc_opt_class();
  v3 = [(VideosUI_UnifiedOverlayViewAccessibility *)self safeSwiftValueForKey:@"selectionView"];
  v4 = __UIAccessibilityCastAsClass();

  if (v4)
  {
    accessibilityValue = accessibilityLocalizedString(@"content.selected");
  }

  else
  {
    v8.receiver = self;
    v8.super_class = VideosUI_UnifiedOverlayViewAccessibility;
    accessibilityValue = [(VideosUI_UnifiedOverlayViewAccessibility *)&v8 accessibilityValue];
  }

  v6 = accessibilityValue;

  return v6;
}

@end