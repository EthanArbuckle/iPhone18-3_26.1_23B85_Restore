@interface ResultsViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)updateSearchSession:(id)a3;
@end

@implementation ResultsViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ResultsViewController" hasInstanceVariable:@"_refinementsBar" withType:"_TtC4Maps20RefinementsBarUIView"];
  [v3 validateClass:@"ResultsViewController" hasInstanceMethod:@"contentTableView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ResultsViewController" hasInstanceMethod:@"updateSearchSession:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"SearchSession"];
  [v3 validateClass:@"SearchSession" hasInstanceMethod:@"isResultRefinementsBarSearch" withFullSignature:{"B", 0}];
}

- (void)updateSearchSession:(id)a3
{
  v9.receiver = self;
  v9.super_class = ResultsViewControllerAccessibility;
  v4 = a3;
  [(ResultsViewControllerAccessibility *)&v9 updateSearchSession:v4];
  v5 = [v4 safeBoolForKey:{@"isResultRefinementsBarSearch", v9.receiver, v9.super_class}];

  v6 = [(ResultsViewControllerAccessibility *)self safeUIViewForKey:@"_refinementsBar"];
  v7 = [(ResultsViewControllerAccessibility *)self safeUIViewForKey:@"contentTableView"];
  v8 = v7;
  if (v6 && v5 && v7)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v7);
  }
}

@end