@interface AXSwiftUIGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXSwiftUIGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    v2 = [MEMORY[0x29EDBD6E8] sharedInstance];
    [v2 performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_282 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];

    _Failover = [objc_allocWithZone(AXSwiftUIGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __46__AXSwiftUIGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"SwiftUI AX"];
  [v2 setOverrideProcessName:@"SwiftUI"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __46__AXSwiftUIGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"AccessibilityNodeAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PlatformListCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SwiftUIUIKitBarButtonItemAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SwiftUIProgressViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SwiftUIActivityIndicatorViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SwiftUIVerticalTextViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UIKitButtonBaseAccessibility" canInteractWithTargetClass:1];
}

@end