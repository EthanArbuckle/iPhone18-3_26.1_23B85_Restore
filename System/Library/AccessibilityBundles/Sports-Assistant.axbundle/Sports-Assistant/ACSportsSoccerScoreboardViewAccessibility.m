@interface ACSportsSoccerScoreboardViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)setMatchup:(id)a3;
@end

@implementation ACSportsSoccerScoreboardViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ACSportsSoccerScoreboardView" isKindOfClass:@"ACSportsScoreboardView"];
  [v3 validateClass:@"ACSportsSoccerScoreboardView" hasInstanceMethod:@"setMatchup:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"ACSportsScoreboardView" hasInstanceVariable:@"_headerLabel" withType:"SiriUIContentLabel"];
  [v3 validateClass:@"ACSportsScoreboardView" hasInstanceVariable:@"_subtitleLabel" withType:"SiriUIContentLabel"];
  [v3 validateClass:@"SASportsMatchup" hasInstanceMethod:@"homeEntity" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SASportsMatchup" hasInstanceMethod:@"homeScore" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SASportsMatchup" hasInstanceMethod:@"awayEntity" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SASportsMatchup" hasInstanceMethod:@"awayScore" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SASportsEntity" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
}

- (void)setMatchup:(id)a3
{
  v15.receiver = self;
  v15.super_class = ACSportsSoccerScoreboardViewAccessibility;
  v4 = a3;
  [(ACSportsSoccerScoreboardViewAccessibility *)&v15 setMatchup:v4];
  v5 = [(ACSportsSoccerScoreboardViewAccessibility *)self safeValueForKey:@"_headerLabel"];
  v6 = [(ACSportsSoccerScoreboardViewAccessibility *)self safeValueForKey:@"_subtitleLabel"];
  [v6 setIsAccessibilityElement:0];
  v7 = [v4 safeValueForKey:@"homeEntity"];
  v8 = [v7 safeValueForKey:@"name"];

  v9 = [v4 safeValueForKey:@"homeScore"];
  v10 = [v4 safeValueForKey:@"awayEntity"];
  v11 = [v10 safeValueForKey:@"name"];

  v12 = [v4 safeValueForKey:@"awayScore"];

  v14 = [v6 accessibilityLabel];
  v13 = __UIAXStringForVariables();

  [v5 setAccessibilityLabel:{v13, v9, v11, v12, v14, @"__AXStringForVariablesSentinel"}];
}

@end