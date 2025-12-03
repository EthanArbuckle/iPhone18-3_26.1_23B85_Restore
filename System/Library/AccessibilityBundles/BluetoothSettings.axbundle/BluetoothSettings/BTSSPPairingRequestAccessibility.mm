@interface BTSSPPairingRequestAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)show;
@end

@implementation BTSSPPairingRequestAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"BTSSPPairingRequest" hasInstanceVariable:@"_alert" withType:"UIAlertController"];
  [validationsCopy validateClass:@"BTSSPPairingRequest" hasInstanceMethod:@"show" withFullSignature:{"v", 0}];
}

- (void)show
{
  v7.receiver = self;
  v7.super_class = BTSSPPairingRequestAccessibility;
  [(BTSSPPairingRequestAccessibility *)&v7 show];
  objc_opt_class();
  v3 = [(BTSSPPairingRequestAccessibility *)self safeValueForKey:@"_alert"];
  v4 = __UIAccessibilityCastAsClass();

  v6 = v4;
  v5 = v4;
  AXPerformBlockOnMainThreadAfterDelay();
}

void __40__BTSSPPairingRequestAccessibility_show__block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x29EDC7EA8];
  v2 = [*(a1 + 32) message];
  UIAccessibilityPostNotification(v1, v2);
}

@end