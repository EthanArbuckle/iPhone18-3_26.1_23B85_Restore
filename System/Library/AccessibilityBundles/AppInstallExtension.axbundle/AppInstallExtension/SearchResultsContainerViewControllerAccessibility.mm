@interface SearchResultsContainerViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation SearchResultsContainerViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v3 = [(SearchResultsContainerViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  [v3 setAccessibilityViewIsModal:1];
  v4.receiver = self;
  v4.super_class = SearchResultsContainerViewControllerAccessibility;
  [(SearchResultsContainerViewControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = SearchResultsContainerViewControllerAccessibility;
  [(SearchResultsContainerViewControllerAccessibility *)&v3 viewDidLoad];
  [(SearchResultsContainerViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end