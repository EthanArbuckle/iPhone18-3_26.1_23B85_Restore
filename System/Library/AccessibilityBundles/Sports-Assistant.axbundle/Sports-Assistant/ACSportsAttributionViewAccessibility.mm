@interface ACSportsAttributionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)setAttributionPunchOut:(id)out;
- (void)setLeagueAppPunchOut:(id)out;
@end

@implementation ACSportsAttributionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ACSportsAttributionView" hasInstanceMethod:@"setAttributionPunchOut:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"ACSportsAttributionView" hasInstanceMethod:@"setLeagueAppPunchOut:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"ACSportsAttributionView" hasInstanceVariable:@"_attributionButton" withType:"UIButton"];
  [validationsCopy validateClass:@"ACSportsAttributionView" hasInstanceVariable:@"_leagueAppButton" withType:"UIButton"];
}

- (void)setAttributionPunchOut:(id)out
{
  v8.receiver = self;
  v8.super_class = ACSportsAttributionViewAccessibility;
  [(ACSportsAttributionViewAccessibility *)&v8 setAttributionPunchOut:out];
  v4 = [(ACSportsAttributionViewAccessibility *)self safeValueForKey:@"_attributionButton"];
  v5 = accessibilityLocalizedString(@"scores.source");
  [v4 setAccessibilityLabel:v5];

  v6 = [(ACSportsAttributionViewAccessibility *)self safeValueForKey:@"_attributionButton"];
  v7 = accessibilityLocalizedString(@"scores.source.hint");
  [v6 setAccessibilityHint:v7];
}

- (void)setLeagueAppPunchOut:(id)out
{
  v9.receiver = self;
  v9.super_class = ACSportsAttributionViewAccessibility;
  outCopy = out;
  [(ACSportsAttributionViewAccessibility *)&v9 setLeagueAppPunchOut:outCopy];
  v5 = [outCopy safeValueForKey:{@"appDisplayName", v9.receiver, v9.super_class}];

  v6 = [(ACSportsAttributionViewAccessibility *)self safeValueForKey:@"_leagueAppButton"];
  [v6 setAccessibilityLabel:v5];

  v7 = [(ACSportsAttributionViewAccessibility *)self safeValueForKey:@"_leagueAppButton"];
  v8 = accessibilityLocalizedString(@"open.league.app.hint");
  [v7 setAccessibilityHint:v8];
}

@end