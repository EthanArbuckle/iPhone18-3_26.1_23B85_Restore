@interface LUIManagedDevicesNavigationControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityPerformEscape;
@end

@implementation LUIManagedDevicesNavigationControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"LUIManagedDevicesNavigationController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"LUIManagedDevicesNavigationController" hasInstanceMethod:@"doneButtonPressed:" withFullSignature:{"v", "@", 0}];
}

- (BOOL)accessibilityPerformEscape
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  AXPerformSafeBlock();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

uint64_t __80__LUIManagedDevicesNavigationControllerAccessibility_accessibilityPerformEscape__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) doneButtonPressed:0];
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

@end