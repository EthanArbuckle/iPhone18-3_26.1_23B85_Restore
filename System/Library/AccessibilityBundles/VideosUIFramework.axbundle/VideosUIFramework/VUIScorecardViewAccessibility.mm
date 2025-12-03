@interface VUIScorecardViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation VUIScorecardViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VUIScorecardView" hasProperty:@"delegate" withType:"@"];
  [validationsCopy validateClass:@"VideosUI.UnifiedOverlayView" conformsToProtocol:@"VUIScorecardViewDelegate"];
  [validationsCopy validateClass:@"VideosUI.UnifiedOverlayView" hasSwiftField:@"scoreboardViewModel" withSwiftType:"Optional<VUISportsScoreboardViewModel>"];
  [validationsCopy validateClass:@"VUISportsScoreboardViewModel" hasProperty:@"scores" withType:"@"];
}

- (id)accessibilityLabel
{
  v31 = *MEMORY[0x29EDCA608];
  v3 = [(VUIScorecardViewAccessibility *)self safeValueForKey:@"delegate"];
  v4 = MEMORY[0x29ED3FF80](@"VUIScorecardViewDelegate");
  v5 = [v3 conformsToProtocol:v4];

  if (v5)
  {
    v23 = v3;
    v6 = [v3 safeSwiftValueForKey:@"scoreboardViewModel"];
    v7 = [v6 safeDictionaryForKey:@"leagueContext"];
    v8 = [v7 safeStringForKey:@"leagueType"];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v22 = v6;
    obj = [v6 safeArrayForKey:@"scores"];
    v9 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v9)
    {
      v10 = v9;
      accessibilityLabel = 0;
      v12 = *v26;
      do
      {
        v13 = 0;
        v14 = accessibilityLabel;
        do
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v25 + 1) + 8 * v13);
          if ([v8 isEqualToString:{@"baseball", v20, v21}])
          {
            v16 = [v15 axMapObjectsUsingBlock:&__block_literal_global_6];
          }

          else
          {
            v16 = v15;
          }

          v17 = v16;
          v20 = AXLabelForElements();
          v21 = @"__AXStringForVariablesSentinel";
          accessibilityLabel = __UIAXStringForVariables();

          ++v13;
          v14 = accessibilityLabel;
        }

        while (v10 != v13);
        v10 = [obj countByEnumeratingWithState:&v25 objects:v30 count:{16, v20, @"__AXStringForVariablesSentinel"}];
      }

      while (v10);
    }

    else
    {
      accessibilityLabel = 0;
    }

    v3 = v23;
  }

  else
  {
    v29.receiver = self;
    v29.super_class = VUIScorecardViewAccessibility;
    accessibilityLabel = [(VUIScorecardViewAccessibility *)&v29 accessibilityLabel];
  }

  v18 = *MEMORY[0x29EDCA608];

  return accessibilityLabel;
}

void *__51__VUIScorecardViewAccessibility_accessibilityLabel__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = accessibilityMLBScores(v2);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v2;
  }

  v6 = v5;

  return v5;
}

@end