@interface CalibrationViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)viewDidLoad;
@end

@implementation CalibrationViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CalibrationViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"CalibrationViewController" hasInstanceVariable:@"_instructionLabel" withType:"UILabel"];
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = CalibrationViewControllerAccessibility;
  [(CalibrationViewControllerAccessibility *)&v2 viewDidLoad];
  AXPerformBlockOnMainThreadAfterDelay();
}

void __53__CalibrationViewControllerAccessibility_viewDidLoad__block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x29EDC7EA8];
  v3 = [*(a1 + 32) safeValueForKey:@"_instructionLabel"];
  v2 = [v3 accessibilityLabel];
  UIAccessibilityPostNotification(v1, v2);
}

@end