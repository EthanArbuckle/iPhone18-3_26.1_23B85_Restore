@interface SSSDittoRootViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)containerViewControllerDidEndDismissAnimation:(id)a3;
- (void)dittoDismissTimerFired:(id)a3;
@end

@implementation SSSDittoRootViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SSSDittoRootViewController" hasInstanceMethod:@"state" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"SSSDittoRootViewController" hasInstanceMethod:@"dittoDismissTimerFired:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"SSSDittoRootViewController" hasInstanceMethod:@"containerViewControllerDidEndDismissAnimation:" withFullSignature:{"v", "@", 0}];
}

- (void)dittoDismissTimerFired:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __66__SSSDittoRootViewControllerAccessibility_dittoDismissTimerFired___block_invoke;
  v8[3] = &unk_29F2F46C0;
  v5 = v4;
  v9 = v5;
  v10 = self;
  v6 = MEMORY[0x29C2EC200](v8);
  if (_AXSAssistiveTouchScannerEnabled())
  {
    v7 = v6;
    AXPerformBlockOnMainThreadAfterDelay();
  }

  else
  {
    v6[2](v6);
  }
}

id __66__SSSDittoRootViewControllerAccessibility_dittoDismissTimerFired___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = SSSDittoRootViewControllerAccessibility;
  return objc_msgSendSuper2(&v3, sel_dittoDismissTimerFired_, v1);
}

uint64_t __66__SSSDittoRootViewControllerAccessibility_dittoDismissTimerFired___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) safeIntegerForKey:@"state"];
  if (!result)
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

- (void)containerViewControllerDidEndDismissAnimation:(id)a3
{
  v3.receiver = self;
  v3.super_class = SSSDittoRootViewControllerAccessibility;
  [(SSSDittoRootViewControllerAccessibility *)&v3 containerViewControllerDidEndDismissAnimation:a3];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

@end