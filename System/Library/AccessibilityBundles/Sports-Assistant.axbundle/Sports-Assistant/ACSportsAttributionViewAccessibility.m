@interface ACSportsAttributionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)setAttributionPunchOut:(id)a3;
- (void)setLeagueAppPunchOut:(id)a3;
@end

@implementation ACSportsAttributionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ACSportsAttributionView" hasInstanceMethod:@"setAttributionPunchOut:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"ACSportsAttributionView" hasInstanceMethod:@"setLeagueAppPunchOut:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"ACSportsAttributionView" hasInstanceVariable:@"_attributionButton" withType:"UIButton"];
  [v3 validateClass:@"ACSportsAttributionView" hasInstanceVariable:@"_leagueAppButton" withType:"UIButton"];
}

- (void)setAttributionPunchOut:(id)a3
{
  v8.receiver = self;
  v8.super_class = ACSportsAttributionViewAccessibility;
  [(ACSportsAttributionViewAccessibility *)&v8 setAttributionPunchOut:a3];
  v4 = [(ACSportsAttributionViewAccessibility *)self safeValueForKey:@"_attributionButton"];
  v5 = accessibilityLocalizedString(@"scores.source");
  [v4 setAccessibilityLabel:v5];

  v6 = [(ACSportsAttributionViewAccessibility *)self safeValueForKey:@"_attributionButton"];
  v7 = accessibilityLocalizedString(@"scores.source.hint");
  [v6 setAccessibilityHint:v7];
}

- (void)setLeagueAppPunchOut:(id)a3
{
  v9.receiver = self;
  v9.super_class = ACSportsAttributionViewAccessibility;
  v4 = a3;
  [(ACSportsAttributionViewAccessibility *)&v9 setLeagueAppPunchOut:v4];
  v5 = [v4 safeValueForKey:{@"appDisplayName", v9.receiver, v9.super_class}];

  v6 = [(ACSportsAttributionViewAccessibility *)self safeValueForKey:@"_leagueAppButton"];
  [v6 setAccessibilityLabel:v5];

  v7 = [(ACSportsAttributionViewAccessibility *)self safeValueForKey:@"_leagueAppButton"];
  v8 = accessibilityLocalizedString(@"open.league.app.hint");
  [v7 setAccessibilityHint:v8];
}

@end