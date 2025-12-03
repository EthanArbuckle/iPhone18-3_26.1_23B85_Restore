@interface AXMomentsGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXMomentsGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_282 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];

    _Failover = [objc_allocWithZone(AXMomentsGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __46__AXMomentsGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"Moments AX"];
  [v2 setOverrideProcessName:@"Moments"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __46__AXMomentsGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  if (AXProcessIsMomentsUIService())
  {
    [v2 installSafeCategory:@"MOSuggestionCollectionViewCellAccessibility" canInteractWithTargetClass:1];
    [v2 installSafeCategory:@"ReflectionPromptViewAccessibility" canInteractWithTargetClass:1];
    [v2 installSafeCategory:@"MapImageViewAccessibility" canInteractWithTargetClass:1];
    [v2 installSafeCategory:@"MOSuggestionCollectionViewHeaderAccessibility" canInteractWithTargetClass:1];
    [v2 installSafeCategory:@"MOSuggestionCollectionViewListCellAccessibility" canInteractWithTargetClass:1];
    [v2 installSafeCategory:@"MOSuggestionSheetAssetViewAccessibility" canInteractWithTargetClass:1];
    [v2 installSafeCategory:@"MOSuggestionSheetMosaicCellAccessibility" canInteractWithTargetClass:1];
    [v2 installSafeCategory:@"MOSuggestionSheetInterstitialViewAccessibility" canInteractWithTargetClass:1];
    [v2 installSafeCategory:@"MOSuggestionCollectionViewSingleAssetCellAccessibility" canInteractWithTargetClass:1];
    [v2 installSafeCategory:@"MOSuggestionInterstitialExpandableListViewCellAccessibility" canInteractWithTargetClass:1];
    [v2 installSafeCategory:@"MOSuggestionActivityRouteAssetViewAccessibility" canInteractWithTargetClass:1];
    [v2 installSafeCategory:@"MOSuggestionActivityIconAssetViewAccessibility" canInteractWithTargetClass:1];
  }
}

@end