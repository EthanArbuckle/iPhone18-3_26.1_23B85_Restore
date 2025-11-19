@interface AccountPSOutgoingDetailControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)processValidationResult:(int64_t)a3;
@end

@implementation AccountPSOutgoingDetailControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AccountPSOutgoingDetailController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"AccountPSOutgoingDetailController" hasInstanceMethod:@"processValidationResult:" withFullSignature:{"v", "q", 0}];
  [v3 validateClass:@"UIViewController" hasInstanceMethod:@"navigationItem" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UINavigationItem" hasInstanceMethod:@"prompt" withFullSignature:{"@", 0}];
}

- (void)processValidationResult:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = AccountPSOutgoingDetailControllerAccessibility;
  [(AccountPSOutgoingDetailControllerAccessibility *)&v7 processValidationResult:?];
  if (!a3)
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