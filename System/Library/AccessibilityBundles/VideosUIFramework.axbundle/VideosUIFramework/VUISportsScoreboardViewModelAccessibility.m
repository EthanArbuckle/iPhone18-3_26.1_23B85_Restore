@interface VUISportsScoreboardViewModelAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityValue;
@end

@implementation VUISportsScoreboardViewModelAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VUISportsScoreboardViewModel" hasProperty:@"leagueContext" withType:"@"];
  [v3 validateClass:@"VUISportsScoreboardViewModel" hasProperty:@"scores" withType:"@"];
  [v3 validateClass:@"VUISportsScoreboardViewModel" hasProperty:@"showScoreboard" withType:"B"];
}

- (id)accessibilityValue
{
  if ([(VUISportsScoreboardViewModelAccessibility *)self safeBoolForKey:@"showScoreboard"])
  {
    v3 = [(VUISportsScoreboardViewModelAccessibility *)self safeDictionaryForKey:@"leagueContext"];
    v4 = [v3 safeArrayForKey:@"competitors"];

    v5 = [(VUISportsScoreboardViewModelAccessibility *)self safeArrayForKey:@"scores"];
    v6 = [v5 axSafeObjectAtIndex:0];
    v19 = [v5 axSafeObjectAtIndex:1];
    if ([v6 count])
    {
      v7 = 0;
      v8 = 0;
      do
      {
        v9 = [v6 axSafeObjectAtIndex:v7];
        v10 = [v4 axSafeObjectAtIndex:v7];
        v11 = [v10 objectForKey:@"nickname"];

        v12 = __UIAXStringForVariables();

        ++v7;
        v8 = v12;
      }

      while ([v6 count] > v7);
    }

    else
    {
      v12 = 0;
    }

    v18 = AXLabelForElements();
    v14 = __UIAXStringForVariables();

    if (v14)
    {
      v15 = MEMORY[0x29EDBA0F8];
      v16 = accessibilityLocalizedString(@"sports.scoreboard");
      v13 = [v15 stringWithFormat:v16, v14, @"__AXStringForVariablesSentinel"];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end