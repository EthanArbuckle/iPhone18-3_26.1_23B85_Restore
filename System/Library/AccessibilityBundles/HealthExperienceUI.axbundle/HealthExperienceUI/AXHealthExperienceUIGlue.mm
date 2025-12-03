@interface AXHealthExperienceUIGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXHealthExperienceUIGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_282 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];

    _Failover = [objc_allocWithZone(AXHealthExperienceUIGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __57__AXHealthExperienceUIGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"HealthExperienceUI AX"];
  [v2 setOverrideProcessName:@"HealthExperienceUI"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __57__AXHealthExperienceUIGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"HealthExperienceUI_CollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HostViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"DataTypeTileHeaderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"DataTypeDetailDescriptionCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"DataTypeNoDataAvailableCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"DataTypeDetailDisclosureCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"DataTypeDetailUnitCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"DataTypeDetailFavoritesCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ChromeHostViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"DefaultHeaderCollectionReusableViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CollectionViewListDisclosureCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"DismissibleTileHeaderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"WDManualDataEntryTableViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"WDDisplayTypeAddDataViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"WDAddDataManualEntryItemAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HealthExperienceUI_SwitchCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HealthExperienceUI_ProfileContactOptionsCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HealthExperienceUI_CellWithAccessoryViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HealthExperienceUI_EditFavoritesCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AdvertisableFeatureTableViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CenteredIconDescriptionCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MessageWithActionTileViewWithImageAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MessageWithActionTileViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"MultiselectTableViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ContentConfigurationCollectionViewListCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PromotionTileViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ContentConfigurationHostCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ListContentConfigurationHostCellAccessibility" canInteractWithTargetClass:1];
}

@end