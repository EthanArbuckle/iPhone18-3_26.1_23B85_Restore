@interface ResultsViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)updateSearchSession:(id)session;
@end

@implementation ResultsViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ResultsViewController" hasInstanceVariable:@"_refinementsBar" withType:"_TtC4Maps20RefinementsBarUIView"];
  [validationsCopy validateClass:@"ResultsViewController" hasInstanceMethod:@"contentTableView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ResultsViewController" hasInstanceMethod:@"updateSearchSession:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"SearchSession"];
  [validationsCopy validateClass:@"SearchSession" hasInstanceMethod:@"isResultRefinementsBarSearch" withFullSignature:{"B", 0}];
}

- (void)updateSearchSession:(id)session
{
  v9.receiver = self;
  v9.super_class = ResultsViewControllerAccessibility;
  sessionCopy = session;
  [(ResultsViewControllerAccessibility *)&v9 updateSearchSession:sessionCopy];
  v5 = [sessionCopy safeBoolForKey:{@"isResultRefinementsBarSearch", v9.receiver, v9.super_class}];

  v6 = [(ResultsViewControllerAccessibility *)self safeUIViewForKey:@"_refinementsBar"];
  v7 = [(ResultsViewControllerAccessibility *)self safeUIViewForKey:@"contentTableView"];
  v8 = v7;
  if (v6 && v5 && v7)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v7);
  }
}

@end