@interface AirDropBrowserViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)browserDidUpdateMePeople:(id)a3 knownPeople:(id)a4 unknownPeople:(id)a5;
- (void)viewDidLoad;
@end

@implementation AirDropBrowserViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AirDropBrowserViewController" hasInstanceMethod:@"browserDidUpdateMePeople:knownPeople:unknownPeople:" withFullSignature:{"v", "@", "@", "@", 0}];
  [v3 validateClass:@"AirDropBrowserViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"AirDropBrowserViewController" hasInstanceMethod:@"airDropNoContentView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AirDropNoContentView" hasInstanceMethod:@"actionButton" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = AirDropBrowserViewControllerAccessibility;
  [(AirDropBrowserViewControllerAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v3 = [(AirDropBrowserViewControllerAccessibility *)self safeValueForKeyPath:@"airDropNoContentView.actionButton"];
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __87__AirDropBrowserViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v4[3] = &unk_29F29C438;
  objc_copyWeak(&v5, &location);
  [v3 _setIsAccessibilityElementBlock:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

BOOL __87__AirDropBrowserViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeValueForKeyPath:@"airDropNoContentView.actionButton"];
  v3 = [v2 accessibilityLabel];
  v4 = [v3 length] != 0;

  return v4;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = AirDropBrowserViewControllerAccessibility;
  [(AirDropBrowserViewControllerAccessibility *)&v3 viewDidLoad];
  [(AirDropBrowserViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)browserDidUpdateMePeople:(id)a3 knownPeople:(id)a4 unknownPeople:(id)a5
{
  v6.receiver = self;
  v6.super_class = AirDropBrowserViewControllerAccessibility;
  [(AirDropBrowserViewControllerAccessibility *)&v6 browserDidUpdateMePeople:a3 knownPeople:a4 unknownPeople:a5];
  v5 = dispatch_time(0, 500000000);
  dispatch_after(v5, MEMORY[0x29EDCA578], &__block_literal_global_0);
}

@end