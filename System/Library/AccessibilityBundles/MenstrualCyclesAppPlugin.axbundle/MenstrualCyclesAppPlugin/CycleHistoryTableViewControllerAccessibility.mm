@interface CycleHistoryTableViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation CycleHistoryTableViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MenstrualCyclesAppPlugin.CycleHistoryTableViewController" isKindOfClass:@"UITableViewController"];
  [validationsCopy validateClass:@"MenstrualCyclesAppPlugin.CycleHistoryTableViewController" hasInstanceMethod:@"axFilterSelected" withFullSignature:{"B", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v11.receiver = self;
  v11.super_class = CycleHistoryTableViewControllerAccessibility;
  [(CycleHistoryTableViewControllerAccessibility *)&v11 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  navigationItem = [v3 navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setIsAccessibilityElement:1];
  v6 = accessibilityLocalizedString(@"cycle.history.filters");
  [rightBarButtonItem setAccessibilityLabel:v6];

  accessibilityTraits = [rightBarButtonItem accessibilityTraits];
  v8 = *MEMORY[0x29EDC7F70] | accessibilityTraits;
  v9 = [(CycleHistoryTableViewControllerAccessibility *)self safeBoolForKey:@"axFilterSelected"];
  v10 = *MEMORY[0x29EDC7FC0];
  if (!v9)
  {
    v10 = 0;
  }

  [rightBarButtonItem setAccessibilityTraits:v8 | v10];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CycleHistoryTableViewControllerAccessibility;
  [(CycleHistoryTableViewControllerAccessibility *)&v3 viewDidLoad];
  [(CycleHistoryTableViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end