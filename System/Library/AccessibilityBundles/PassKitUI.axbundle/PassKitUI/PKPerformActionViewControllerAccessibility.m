@interface PKPerformActionViewControllerAccessibility
- (void)viewDidLoad;
@end

@implementation PKPerformActionViewControllerAccessibility

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = PKPerformActionViewControllerAccessibility;
  [(PKPerformActionViewControllerAccessibility *)&v6 viewDidLoad];
  objc_opt_class();
  v3 = [(PKPerformActionViewControllerAccessibility *)self safeValueForKey:@"navigationItem"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 leftBarButtonItem];
  [v5 _setAccessibilityIsNotFirstElement:0];
}

@end