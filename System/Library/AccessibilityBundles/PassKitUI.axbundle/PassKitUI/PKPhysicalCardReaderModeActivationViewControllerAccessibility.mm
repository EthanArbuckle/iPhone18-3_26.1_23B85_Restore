@interface PKPhysicalCardReaderModeActivationViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation PKPhysicalCardReaderModeActivationViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKPhysicalCardReaderModeActivationViewController" isKindOfClass:@"PKExplanationViewController"];
  [v3 validateClass:@"PKExplanationViewController" hasInstanceMethod:@"explanationView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PKPhysicalCardReaderModeActivationViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [v3 validateClass:@"PKExplanationView" hasInstanceMethod:@"bodyTextView" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v9.receiver = self;
  v9.super_class = PKPhysicalCardReaderModeActivationViewControllerAccessibility;
  [(PKPhysicalCardReaderModeActivationViewControllerAccessibility *)&v9 _accessibilityLoadAccessibilityInformation];
  LOBYTE(location) = 0;
  objc_opt_class();
  v3 = [(PKPhysicalCardReaderModeActivationViewControllerAccessibility *)self safeUIViewForKey:@"explanationView"];
  v4 = [v3 safeValueForKey:@"bodyTextView"];
  v5 = __UIAccessibilityCastAsClass();

  objc_initWeak(&location, v5);
  [v5 setIsAccessibilityElement:1];
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __107__PKPhysicalCardReaderModeActivationViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v6[3] = &unk_29F2E1B98;
  objc_copyWeak(&v7, &location);
  [v5 _setAccessibilityValueBlock:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

id __107__PKPhysicalCardReaderModeActivationViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  if (AXRequestingClient() == 3)
  {
    v2 = accessibilityLocalizedString(@"voiceover.physical.card.instructions");
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v2 = [WeakRetained text];
  }

  return v2;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PKPhysicalCardReaderModeActivationViewControllerAccessibility;
  [(PKPhysicalCardReaderModeActivationViewControllerAccessibility *)&v3 viewDidLoad];
  [(PKPhysicalCardReaderModeActivationViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end