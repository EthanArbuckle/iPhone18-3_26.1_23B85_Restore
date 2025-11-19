@interface DetailsViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityPerformEscape;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation DetailsViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CommunicationDetails.DetailsViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"CommunicationDetails.DetailsViewController" hasSwiftField:@"posterViewController" withSwiftType:"Optional<UIHostingController<PosterBackgroundView>>"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v9.receiver = self;
  v9.super_class = DetailsViewControllerAccessibility;
  [(DetailsViewControllerAccessibility *)&v9 _accessibilityLoadAccessibilityInformation];
  objc_initWeak(&location, self);
  v7 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 view];
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __80__DetailsViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v5[3] = &unk_29F2B4058;
  objc_copyWeak(&v6, &location);
  [v4 setAccessibilityElementsBlock:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

id __80__DetailsViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = [v2 view];
  v4 = [v3 _accessibilitySubviews];
  v5 = [v4 reverseObjectEnumerator];
  v6 = [v5 allObjects];
  v7 = [v6 mutableCopy];

  if (!v7)
  {
    v7 = [MEMORY[0x29EDB8DE8] array];
  }

  objc_opt_class();
  v8 = [WeakRetained safeSwiftValueForKey:@"posterViewController"];
  v9 = __UIAccessibilityCastAsClass();

  v10 = [v9 view];

  if (v10)
  {
    [v7 removeObject:v10];
    [v7 insertObject:v10 atIndex:0];
  }

  return v7;
}

- (BOOL)accessibilityPerformEscape
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = [v2 navigationController];

  if (v3)
  {
    v4 = [v2 navigationController];
    v5 = [v4 popViewControllerAnimated:1];
  }

  else
  {
    [v2 dismissViewControllerAnimated:1 completion:0];
  }

  return 1;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = DetailsViewControllerAccessibility;
  [(DetailsViewControllerAccessibility *)&v3 viewDidLoad];
  [(DetailsViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end