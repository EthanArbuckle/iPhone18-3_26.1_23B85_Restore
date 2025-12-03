@interface SearchResultsViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation SearchResultsViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SearchResultsViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"SearchResultsViewController" isKindOfClass:@"ListViewController"];
  [validationsCopy validateClass:@"ListViewController" hasInstanceMethod:@"tableView" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = SearchResultsViewControllerAccessibility;
  [(SearchResultsViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(SearchResultsViewControllerAccessibility *)self safeValueForKey:@"tableView"];
  v4 = accessibilityUIKitLocalizedString();
  [v3 setAccessibilityLabel:v4];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = SearchResultsViewControllerAccessibility;
  [(SearchResultsViewControllerAccessibility *)&v3 viewDidLoad];
  [(SearchResultsViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end