@interface AccountPSOutgoingDetailControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)processValidationResult:(int64_t)result;
@end

@implementation AccountPSOutgoingDetailControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AccountPSOutgoingDetailController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"AccountPSOutgoingDetailController" hasInstanceMethod:@"processValidationResult:" withFullSignature:{"v", "q", 0}];
  [validationsCopy validateClass:@"UIViewController" hasInstanceMethod:@"navigationItem" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UINavigationItem" hasInstanceMethod:@"prompt" withFullSignature:{"@", 0}];
}

- (void)processValidationResult:(int64_t)result
{
  v7.receiver = self;
  v7.super_class = AccountPSOutgoingDetailControllerAccessibility;
  [(AccountPSOutgoingDetailControllerAccessibility *)&v7 processValidationResult:?];
  if (!result)
  {
    v5 = [(AccountPSOutgoingDetailControllerAccessibility *)self safeValueForKey:@"navigationItem"];
    v6 = [v5 safeValueForKey:@"prompt"];

    if (v6)
    {
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v6);
    }
  }
}

@end