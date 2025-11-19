@interface AXNanoTimeKitCompanionGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXNanoTimeKitCompanionGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXNanoTimeKitCompanionGlue accessibilityInitializeBundle];
  }
}

void __59__AXNanoTimeKitCompanionGlue_accessibilityInitializeBundle__block_invoke(id a1)
{
  v1 = +[AXValidationManager sharedInstance];
  [v1 performValidations:&__block_literal_global_295 withPreValidationHandler:&__block_literal_global_297 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_303];
}

BOOL __59__AXNanoTimeKitCompanionGlue_accessibilityInitializeBundle__block_invoke_3(id a1, AXValidationManager *a2)
{
  v2 = a2;
  [(AXValidationManager *)v2 setValidationTargetName:@"AX NanoTimeKitCompanion"];
  [(AXValidationManager *)v2 setOverrideProcessName:@"AX NanoTimeKitCompanion"];
  [(AXValidationManager *)v2 setDebugBuild:0];

  return _AXPerformValidationChecks();
}

void __59__AXNanoTimeKitCompanionGlue_accessibilityInitializeBundle__block_invoke_4(id a1, AXValidationManager *a2)
{
  v2 = a2;
  [(AXValidationManager *)v2 installSafeCategory:@"NTKCFaceDetailTitleValueEditOptionCellAccessibility" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"NTKCFaceDetailRowActionLabelCellAccessibility" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"NTKPeopleDetailComplicationPickerDataSourceAccessibility" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"NTKCFaceDetailComplicationCellProviderAccessibility" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"NTKCFaceDetailExpandableDescriptionCellAccessibility" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"NTKCFaceDetailToggleCellAccessibility" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"_NTKCDetailAddButtonAccessibility" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"NTKCGalleryCellAccessibility" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"_NTKCGalleryCollectionCellAccessibility" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"NTKCFaceDetailViewControllerAccessibility" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"NTKCFaceDetailSpacerCellAccessibility" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"NTKCFaceDetailSectionHeaderViewAccessibility" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"NTKCFaceDetailComplicationCellAccessibility" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"NTKCFaceContainerViewAccessibility" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"_NTKCFaceDetailCollectionCellAccessibility" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"NTKCFaceDetailEditOptionCellAccessibility" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"NTKCFaceDetailPigmentEditOptionCellAccessibility" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"_NTKCFaceDetailCustomPhotosViewControllerAccessibility" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"_NTKCFaceDetailPhotoCropViewControllerAccessibility" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"NTKCPhotoListCellAccessibility" canInteractWithTargetClass:1];
  if ((AXProcessIsSpringBoard() & 1) == 0)
  {
    [AXNanoTimeKitGlue installNanoTimeKitClasses:v2];
  }
}

@end