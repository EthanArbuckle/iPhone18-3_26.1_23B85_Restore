@interface AXStoreKitGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXStoreKitGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    v2 = [objc_allocWithZone(AXStoreKitGlue) init];
    v3 = _Failover;
    _Failover = v2;

    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_294 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_303];
  }
}

uint64_t __47__AXStoreKitGlue_accessibilityInitializeBundle__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"SKStarRatingControl" hasInstanceMethod:@"value" withFullSignature:{"f", 0}];
  [v2 validateClass:@"SKStarRatingControl" hasInstanceMethod:@"setValue:" withFullSignature:{"v", "f", 0}];

  return 1;
}

uint64_t __47__AXStoreKitGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"StoreKit AX Bundle"];
  [v2 setOverrideProcessName:@"StoreKit"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __47__AXStoreKitGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"SKStarRatingControlAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SKStoreReviewPresentationWindowAccessibility" canInteractWithTargetClass:1];
}

@end