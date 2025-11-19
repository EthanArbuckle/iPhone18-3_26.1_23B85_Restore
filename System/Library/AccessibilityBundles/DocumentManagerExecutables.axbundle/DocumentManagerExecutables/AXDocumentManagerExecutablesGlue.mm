@interface AXDocumentManagerExecutablesGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXDocumentManagerExecutablesGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXDocumentManagerExecutablesGlue accessibilityInitializeBundle];
  }
}

void __65__AXDocumentManagerExecutablesGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_283 withPreValidationHandler:&__block_literal_global_288 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_297];
}

uint64_t __65__AXDocumentManagerExecutablesGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"DocumentManagerExecutables AX"];
  [v2 setOverrideProcessName:@"DocumentManagerExecutables"];

  return MEMORY[0x2A1C5E698]();
}

void __65__AXDocumentManagerExecutablesGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"DOCTagEditorTagCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"DOCTagCheckableDotViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"DOCAddTagViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"DOCChainedTagsViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"DOCSidebarItemCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"DOCSidebarHeaderCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"DOCItemCollectionViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"DOCItemCollectionGridCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"DOCItemCollectionListCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"DOCItemCollectionCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"DOCSidebarViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"DOCCopyableLabelAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"DOCFilenameViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"DOCItemRenameTextViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"DOCProgressIndicatorViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"DOCMetadataKeyValueRowAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UIDocumentBrowserActionBarButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UIBarButtonItemAccessibility__DocumentManager__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"DOCPromptHeaderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"DOCItemInfoOpenButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"DOCSearchControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"DOCItemCollectionOutlineCellAccessibility" canInteractWithTargetClass:1];
}

@end