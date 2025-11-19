@interface ACSportsTeamStandingViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation ACSportsTeamStandingViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ACSportsTeamStandingView" isKindOfClass:@"ACSportsEntityView"];
  [v3 validateClass:@"ACSportsEntityView" hasInstanceMethod:@"entity" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SASportsEntity" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ACSportsStandingColumnView" hasInstanceVariable:@"_snippetColumnHeaders" withType:"NSArray"];
}

- (id)accessibilityLabel
{
  v3 = [(ACSportsTeamStandingViewAccessibility *)self safeValueForKey:@"entity"];
  v4 = [v3 safeValueForKey:@"name"];

  v5 = [(ACSportsTeamStandingViewAccessibility *)self safeValueForKey:@"_snippetColumnHeaders"];
  v6 = [(ACSportsTeamStandingViewAccessibility *)self _accessibilityValueForKey:@"AXStandingsColumns"];
  v7 = [v6 count];
  if (v7 == [v5 count])
  {
    v8 = [MEMORY[0x29EDB8DE8] array];
    v13[0] = MEMORY[0x29EDCA5F8];
    v13[1] = 3221225472;
    v13[2] = __59__ACSportsTeamStandingViewAccessibility_accessibilityLabel__block_invoke;
    v13[3] = &unk_29F2FA7C8;
    v14 = v8;
    v15 = v5;
    v9 = v8;
    [v6 enumerateObjectsUsingBlock:v13];
    v12 = [v9 componentsJoinedByString:{@", "}];
    v10 = __UIAXStringForVariables();
  }

  else
  {
    v9 = [v5 componentsJoinedByString:{@", "}];
    v10 = __UIAXStringForVariables();
  }

  return v10;
}

void __59__ACSportsTeamStandingViewAccessibility_accessibilityLabel__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a2;
  v8 = [v5 objectAtIndex:a3];
  v7 = __UIAXStringForVariables();

  [v4 ax_enqueueObject:{v7, v8, @"__AXStringForVariablesSentinel"}];
}

@end