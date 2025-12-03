@interface DiagnosticDataControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)viewDidLoad;
@end

@implementation DiagnosticDataControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"DiagnosticDataController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"DiagnosticDataController" isKindOfClass:@"UINavigationController"];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = DiagnosticDataControllerAccessibility;
  [(DiagnosticDataControllerAccessibility *)&v4 viewDidLoad];
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  navigationItem = [v2 navigationItem];
  [navigationItem _accessibilityLoadAccessibilityInformation];
}

@end