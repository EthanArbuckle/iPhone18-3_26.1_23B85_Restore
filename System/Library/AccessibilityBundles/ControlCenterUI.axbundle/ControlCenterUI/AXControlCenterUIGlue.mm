@interface AXControlCenterUIGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXControlCenterUIGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXControlCenterUIGlue accessibilityInitializeBundle];
  }
}

void __54__AXControlCenterUIGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_283 withPreValidationHandler:&__block_literal_global_349 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_355];
}

uint64_t __54__AXControlCenterUIGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"CCUIContentModuleContainerViewController" hasInstanceMethod:@"isExpanded" withFullSignature:{"B", 0}];
  [v2 validateClass:@"CCUIContentModuleContainerViewController" hasInstanceMethod:@"expandModule" withFullSignature:{"v", 0}];
  [v2 validateClass:@"CCUIContentModuleContainerViewController" hasInstanceMethod:@"dismissExpandedModuleAnimated:" withFullSignature:{"v", "B", 0}];
  [v2 validateClass:@"ControlCenterUIServices.ControlsGalleryManager"];
  [v2 validateClass:@"CCUIPagingViewController" hasInstanceMethod:@"setEditing:" withFullSignature:{"v", "B", 0}];
  [v2 validateClass:@"CCUIPagingViewController" hasInstanceMethod:@"changeGridSizeClassOfIcon:toGridSizeClass:" withFullSignature:{"v", "@", "@", 0}];
  [v2 validateClass:@"CCUIPagingViewController" hasInstanceMethod:@"resetEndEditingTimerIfNecessary" withFullSignature:{"v", 0}];
  [v2 validateClass:@"CCUIPagingViewController" hasSwiftField:@"addButton" withSwiftType:"Optional<UIButton>"];
  [v2 validateClass:@"CCUIPagingViewController" hasSwiftField:@"__rootFolderController" withSwiftType:"Optional<IconListRootFolderController>"];
  [v2 validateClass:@"CCUIPagingViewController" hasSwiftField:@"iconDragManager" withSwiftType:"Optional<SBIconDragManager>"];
  [v2 validateClass:@"ControlCenterUI.IconListRootFolderView"];
  [v2 validateClass:@"ControlCenterUI.IconListRootFolderView" isKindOfClass:@"SBFolderView"];
  [v2 validateClass:@"ControlCenterUI.IconListRootFolderView" hasInstanceMethod:@"indicatorDescriptionForPageIndex:" withFullSignature:{"@", "q", 0}];
  [v2 validateClass:@"CCUIWiFiModuleViewController"];
  [v2 validateClass:@"CCUIAirDropModuleViewController"];
  [v2 validateClass:@"CCUIWiFiModuleViewController" hasInstanceMethod:@"buttonViewForCollapsedConnectivityModule" withFullSignature:{"@", 0}];
  [v2 validateClass:@"CCUIAirDropModuleViewController" hasInstanceMethod:@"buttonViewForCollapsedConnectivityModule" withFullSignature:{"@", 0}];
  [v2 validateClass:@"CCUIBluetoothModuleViewController"];

  return 1;
}

uint64_t __54__AXControlCenterUIGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"ControlCenterUI (ControlCenter)"];
  [v2 setOverrideProcessName:@"ControlCenterUI (ControlCenter)"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __54__AXControlCenterUIGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"CCUIContentModuleContainerViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CCUIContentModuleContainerTransitionAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CCUISensorAttributionExpandedViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CCUISensorAttributionCompactControlAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CCUISensorAttributionSensorButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CCUIHeaderPocketViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CCUIPagingViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CCUIMainViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CCUIIconScrollViewAccessibility" canInteractWithTargetClass:1];
}

@end