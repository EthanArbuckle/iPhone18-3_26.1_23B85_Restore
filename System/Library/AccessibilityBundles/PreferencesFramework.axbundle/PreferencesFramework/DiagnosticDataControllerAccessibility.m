@interface DiagnosticDataControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)viewDidLoad;
@end

@implementation DiagnosticDataControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"DiagnosticDataController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [v3 validateClass:@"DiagnosticDataController" isKindOfClass:@"UINavigationController"];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = DiagnosticDataControllerAccessibility;
  [(DiagnosticDataControllerAccessibility *)&v4 viewDidLoad];
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = [v2 navigationItem];
  [v3 _accessibilityLoadAccessibilityInformation];
}

@end