@interface CSActivityPickerViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation CSActivityPickerViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CSActivityPickerViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"CSActivityPickerViewController" hasInstanceMethod:@"dismiss" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = CSActivityPickerViewControllerAccessibility;
  [(CSActivityPickerViewControllerAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  objc_initWeak(&location, self);
  v3 = [(CSActivityPickerViewControllerAccessibility *)self safeValueForKey:@"view"];
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __89__CSActivityPickerViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v4[3] = &unk_29F2B9390;
  objc_copyWeak(&v5, &location);
  [v3 _setAccessibilityPerformEscapeBlock:v4];
  objc_destroyWeak(&v5);

  objc_destroyWeak(&location);
}

uint64_t __89__CSActivityPickerViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  objc_copyWeak(&v2, (a1 + 32));
  AXPerformSafeBlock();
  objc_destroyWeak(&v2);
  return 1;
}

void __89__CSActivityPickerViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismiss];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CSActivityPickerViewControllerAccessibility;
  [(CSActivityPickerViewControllerAccessibility *)&v3 viewDidLoad];
  [(CSActivityPickerViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end