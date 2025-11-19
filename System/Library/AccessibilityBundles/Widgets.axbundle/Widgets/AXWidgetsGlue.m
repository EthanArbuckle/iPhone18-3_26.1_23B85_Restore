@interface AXWidgetsGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXWidgetsGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXWidgetsGlue accessibilityInitializeBundle];
  }
}

void __46__AXWidgetsGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_286 withPreValidationHandler:&__block_literal_global_288 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_294];
}

uint64_t __46__AXWidgetsGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"AX Widgets"];
  [v2 setOverrideProcessName:@"AX Widgets"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __46__AXWidgetsGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"WGShortLookStyleButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"WGWidgetHostingViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"WGWidgetListViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"WGNewWidgetsButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"WGWidgetListEditViewTableViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"WGWidgetAttributionViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"WGWidgetPlatterViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"WGMajorListViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"WGPlatterHeaderContentViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_WGWidgetListScrollViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"WGCarouselListViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_UIRemoteViewControllerLegacyImplAccessibility" canInteractWithTargetClass:1];
}

@end