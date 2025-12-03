@interface SearchResultsViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation SearchResultsViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MusicApplication.SearchResultsViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"MusicApplication.SearchResultsViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6 = 0;
  objc_opt_class();
  v3 = [(SearchResultsViewControllerAccessibility *)self safeValueForKey:@"view"];
  v4 = __UIAccessibilityCastAsClass();

  [v4 setAccessibilityViewIsModal:1];
  v5.receiver = self;
  v5.super_class = SearchResultsViewControllerAccessibility;
  [(SearchResultsViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = SearchResultsViewControllerAccessibility;
  [(SearchResultsViewControllerAccessibility *)&v3 viewDidLoad];
  [(SearchResultsViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end