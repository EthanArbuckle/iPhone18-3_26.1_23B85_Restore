@interface ACSportsSoccerScoreboardViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)setMatchup:(id)matchup;
@end

@implementation ACSportsSoccerScoreboardViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ACSportsSoccerScoreboardView" isKindOfClass:@"ACSportsScoreboardView"];
  [validationsCopy validateClass:@"ACSportsSoccerScoreboardView" hasInstanceMethod:@"setMatchup:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"ACSportsScoreboardView" hasInstanceVariable:@"_headerLabel" withType:"SiriUIContentLabel"];
  [validationsCopy validateClass:@"ACSportsScoreboardView" hasInstanceVariable:@"_subtitleLabel" withType:"SiriUIContentLabel"];
  [validationsCopy validateClass:@"SASportsMatchup" hasInstanceMethod:@"homeEntity" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SASportsMatchup" hasInstanceMethod:@"homeScore" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SASportsMatchup" hasInstanceMethod:@"awayEntity" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SASportsMatchup" hasInstanceMethod:@"awayScore" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SASportsEntity" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
}

- (void)setMatchup:(id)matchup
{
  v15.receiver = self;
  v15.super_class = ACSportsSoccerScoreboardViewAccessibility;
  matchupCopy = matchup;
  [(ACSportsSoccerScoreboardViewAccessibility *)&v15 setMatchup:matchupCopy];
  v5 = [(ACSportsSoccerScoreboardViewAccessibility *)self safeValueForKey:@"_headerLabel"];
  v6 = [(ACSportsSoccerScoreboardViewAccessibility *)self safeValueForKey:@"_subtitleLabel"];
  [v6 setIsAccessibilityElement:0];
  v7 = [matchupCopy safeValueForKey:@"homeEntity"];
  v8 = [v7 safeValueForKey:@"name"];

  v9 = [matchupCopy safeValueForKey:@"homeScore"];
  v10 = [matchupCopy safeValueForKey:@"awayEntity"];
  v11 = [v10 safeValueForKey:@"name"];

  v12 = [matchupCopy safeValueForKey:@"awayScore"];

  accessibilityLabel = [v6 accessibilityLabel];
  v13 = __UIAXStringForVariables();

  [v5 setAccessibilityLabel:{v13, v9, v11, v12, accessibilityLabel, @"__AXStringForVariablesSentinel"}];
}

@end