@interface BKUIPearlEnrollViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BKUIPearlEnrollViewAccessibility)init;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_updateRaiseLowerGuidanceLabelIfNeededForPitch:(double)a3;
@end

@implementation BKUIPearlEnrollViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"BKUIPearlEnrollView" hasInstanceVariable:@"_tutorialMovieView" withType:"BKUIPearlMovieLoopView"];
  [v3 validateClass:@"BKUIPearlEnrollView" hasInstanceVariable:@"_repositionPhoneLabel" withType:"UILabel"];
  [v3 validateClass:@"BKUIPearlEnrollView" hasInstanceMethod:@"state" withFullSignature:{"i", 0}];
  [v3 validateClass:@"BKUIPearlEnrollView" hasInstanceMethod:@"_updateRaiseLowerGuidanceLabelIfNeededForPitch:" withFullSignature:{"v", "d", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = BKUIPearlEnrollViewAccessibility;
  [(BKUIPearlEnrollViewAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(BKUIPearlEnrollViewAccessibility *)self safeValueForKey:@"_tutorialMovieView"];
  [v3 setIsAccessibilityElement:1];
  v4 = accessibilityLocalizedString(@"pearl.tutorial.movie.description");
  [v3 setAccessibilityLabel:v4];
}

- (BKUIPearlEnrollViewAccessibility)init
{
  v5.receiver = self;
  v5.super_class = BKUIPearlEnrollViewAccessibility;
  v2 = [(BKUIPearlEnrollViewAccessibility *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BKUIPearlEnrollViewAccessibility *)v2 _accessibilityLoadAccessibilityInformation];
  }

  return v3;
}

- (void)_updateRaiseLowerGuidanceLabelIfNeededForPitch:(double)a3
{
  v7.receiver = self;
  v7.super_class = BKUIPearlEnrollViewAccessibility;
  [(BKUIPearlEnrollViewAccessibility *)&v7 _updateRaiseLowerGuidanceLabelIfNeededForPitch:a3];
  if ([(BKUIPearlEnrollViewAccessibility *)self safeIntForKey:@"_state"]== 4)
  {
    v4 = [(BKUIPearlEnrollViewAccessibility *)self _accessibilityStringForLabelKeyValues:@"_repositionPhoneLabel"];
    if ([v4 length])
    {
      v5 = [(BKUIPearlEnrollViewAccessibility *)self _axSpokenGuidance];
      v6 = [v4 isEqualToString:v5];

      if ((v6 & 1) == 0)
      {
        [(BKUIPearlEnrollViewAccessibility *)self _setAXSpokenGuidance:v4];
        UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v4);
      }
    }
  }

  else
  {
    [(BKUIPearlEnrollViewAccessibility *)self _setAXSpokenGuidance:0];
  }
}

@end