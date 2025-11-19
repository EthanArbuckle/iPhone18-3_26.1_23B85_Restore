@interface CycleHistoryTableViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation CycleHistoryTableViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MenstrualCyclesAppPlugin.CycleHistoryTableViewController" isKindOfClass:@"UITableViewController"];
  [v3 validateClass:@"MenstrualCyclesAppPlugin.CycleHistoryTableViewController" hasInstanceMethod:@"axFilterSelected" withFullSignature:{"B", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v11.receiver = self;
  v11.super_class = CycleHistoryTableViewControllerAccessibility;
  [(CycleHistoryTableViewControllerAccessibility *)&v11 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 navigationItem];
  v5 = [v4 rightBarButtonItem];
  [v5 setIsAccessibilityElement:1];
  v6 = accessibilityLocalizedString(@"cycle.history.filters");
  [v5 setAccessibilityLabel:v6];

  v7 = [v5 accessibilityTraits];
  v8 = *MEMORY[0x29EDC7F70] | v7;
  v9 = [(CycleHistoryTableViewControllerAccessibility *)self safeBoolForKey:@"axFilterSelected"];
  v10 = *MEMORY[0x29EDC7FC0];
  if (!v9)
  {
    v10 = 0;
  }

  [v5 setAccessibilityTraits:v8 | v10];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CycleHistoryTableViewControllerAccessibility;
  [(CycleHistoryTableViewControllerAccessibility *)&v3 viewDidLoad];
  [(CycleHistoryTableViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end