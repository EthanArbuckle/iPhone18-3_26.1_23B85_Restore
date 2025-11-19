@interface AXInputUIGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXInputUIGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    v2 = [MEMORY[0x29EDBD6E8] sharedInstance];
    [v2 performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_310 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_319];

    _Failover = [objc_allocWithZone(AXInputUIGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __46__AXInputUIGlue_accessibilityInitializeBundle__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"IUIInputSourceViewController" hasInstanceMethod:@"textInputSource" withFullSignature:{"@", 0}];
  [v2 validateClass:@"IUIRTIInputSource" hasInstanceMethod:@"sourceSession" withFullSignature:{"@", 0}];
  [v2 validateClass:@"RTIInputSystemSourceSession" isKindOfClass:@"RTIInputSystemSession"];
  [v2 validateClass:@"RTIInputSystemSession" hasInstanceMethod:@"documentTraits" withFullSignature:{"@", 0}];
  [v2 validateClass:@"RTIDocumentTraits" hasInstanceMethod:@"bundleId" withFullSignature:{"@", 0}];

  return 1;
}

uint64_t __46__AXInputUIGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"InputUI AX"];
  [v2 setOverrideProcessName:@"InputUI"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

@end