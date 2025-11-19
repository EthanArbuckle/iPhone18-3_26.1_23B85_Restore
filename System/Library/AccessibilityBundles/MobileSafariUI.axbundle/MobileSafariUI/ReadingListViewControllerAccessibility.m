@interface ReadingListViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axUnhideSearchBar;
- (void)viewDidLoad;
@end

@implementation ReadingListViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ReadingListViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"ReadingListViewController" hasInstanceVariable:@"_searchBar" withType:"UISearchBar"];
  [v3 validateClass:@"ReadingListViewController" hasInstanceVariable:@"_tableView" withType:"UITableView"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = ReadingListViewControllerAccessibility;
  [(ReadingListViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(ReadingListViewControllerAccessibility *)self _axUnhideSearchBar];
}

- (void)_axUnhideSearchBar
{
  objc_opt_class();
  v3 = [(ReadingListViewControllerAccessibility *)self safeValueForKey:@"_tableView"];
  v4 = __UIAccessibilityCastAsClass();

  if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning())
  {
    v5 = [(ReadingListViewControllerAccessibility *)self safeValueForKey:@"_searchBar"];

    if (v5)
    {
      [v4 setContentInset:{*MEMORY[0x29EDC80C8], *(MEMORY[0x29EDC80C8] + 8), *(MEMORY[0x29EDC80C8] + 16), *(MEMORY[0x29EDC80C8] + 24)}];
    }
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = ReadingListViewControllerAccessibility;
  [(ReadingListViewControllerAccessibility *)&v3 viewDidLoad];
  [(ReadingListViewControllerAccessibility *)self _axUnhideSearchBar];
}

@end