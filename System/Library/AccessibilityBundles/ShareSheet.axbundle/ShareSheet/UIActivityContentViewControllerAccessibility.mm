@interface UIActivityContentViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_configureHeaderViewIfNeeded;
- (void)viewDidLoad;
@end

@implementation UIActivityContentViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"UIActivityContentViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"UIViewController" hasInstanceMethod:@"navigationItem" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIActivityContentViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"UIActivityContentViewController" hasInstanceMethod:@"headerLinkView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIActivityContentViewController" hasInstanceMethod:@"_configureHeaderViewIfNeeded" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v8.receiver = self;
  v8.super_class = UIActivityContentViewControllerAccessibility;
  [(UIActivityContentViewControllerAccessibility *)&v8 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = [(UIActivityContentViewControllerAccessibility *)self safeValueForKey:@"navigationItem"];
  v4 = __UIAccessibilityCastAsClass();

  rightBarButtonItem = [v4 rightBarButtonItem];
  v6 = accessibilityLocalizedString(@"sharing.close");
  [rightBarButtonItem setAccessibilityLabel:v6];

  v7 = [(UIActivityContentViewControllerAccessibility *)self safeValueForKey:@"headerLinkView"];
  [v7 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = UIActivityContentViewControllerAccessibility;
  [(UIActivityContentViewControllerAccessibility *)&v3 viewDidLoad];
  [(UIActivityContentViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_configureHeaderViewIfNeeded
{
  v3.receiver = self;
  v3.super_class = UIActivityContentViewControllerAccessibility;
  [(UIActivityContentViewControllerAccessibility *)&v3 _configureHeaderViewIfNeeded];
  [(UIActivityContentViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end