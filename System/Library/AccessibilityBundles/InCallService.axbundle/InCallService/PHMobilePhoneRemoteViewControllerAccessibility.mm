@interface PHMobilePhoneRemoteViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation PHMobilePhoneRemoteViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PHMobilePhoneRemoteViewController" isKindOfClass:@"PHPhoneRemoteViewController"];
  [validationsCopy validateClass:@"PHPhoneRemoteViewController" hasInstanceMethod:@"viewDidAppear:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"PHPhoneRemoteViewController" hasInstanceMethod:@"viewWillDisappear:" withFullSignature:{"v", "B", 0}];
}

void __64__PHMobilePhoneRemoteViewControllerAccessibility_viewDidAppear___block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x29EDC7F10];
  v2 = [*(a1 + 32) safeValueForKey:@"view"];
  UIAccessibilityPostNotification(v1, v2);

  v3 = *MEMORY[0x29EDC7EA8];
  v4 = accessibilityLocalizedString(@"add.call.hint");
  UIAccessibilityPostNotification(v3, v4);
}

@end