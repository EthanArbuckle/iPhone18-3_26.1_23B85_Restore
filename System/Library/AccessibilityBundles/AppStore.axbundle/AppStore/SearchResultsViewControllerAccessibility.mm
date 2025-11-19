@interface SearchResultsViewControllerAccessibility
- (void)viewDidLoad;
@end

@implementation SearchResultsViewControllerAccessibility

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = SearchResultsViewControllerAccessibility;
  [(SearchResultsViewControllerAccessibility *)&v2 viewDidLoad];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

@end