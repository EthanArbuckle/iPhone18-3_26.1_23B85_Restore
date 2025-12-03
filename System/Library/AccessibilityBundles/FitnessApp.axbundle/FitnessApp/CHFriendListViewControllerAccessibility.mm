@interface CHFriendListViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation CHFriendListViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CHFriendListViewController" hasInstanceVariable:@"_sortBarButtonItem" withType:"UIBarButtonItem"];
  [validationsCopy validateClass:@"CHFriendListViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v8.receiver = self;
  v8.super_class = CHFriendListViewControllerAccessibility;
  [(CHFriendListViewControllerAccessibility *)&v8 _accessibilityLoadAccessibilityInformation];
  LOBYTE(location) = 0;
  objc_opt_class();
  v3 = [(CHFriendListViewControllerAccessibility *)self safeValueForKey:@"_sortBarButtonItem"];
  v4 = __UIAccessibilityCastAsClass();

  objc_initWeak(&location, v4);
  [v4 _setAccessibilityLabelBlock:&__block_literal_global_0];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __85__CHFriendListViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v5[3] = &unk_1C448;
  objc_copyWeak(&v6, &location);
  [v4 _setAccessibilityValueBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

id __85__CHFriendListViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained title];

  return v2;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CHFriendListViewControllerAccessibility;
  [(CHFriendListViewControllerAccessibility *)&v3 viewDidLoad];
  [(CHFriendListViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end