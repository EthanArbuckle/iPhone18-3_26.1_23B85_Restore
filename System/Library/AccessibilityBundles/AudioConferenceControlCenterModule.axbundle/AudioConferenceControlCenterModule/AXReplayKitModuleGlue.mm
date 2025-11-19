@interface AXReplayKitModuleGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXReplayKitModuleGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken_0 != -1)
  {
    +[AXReplayKitModuleGlue accessibilityInitializeBundle];
  }
}

uint64_t __54__AXReplayKitModuleGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_293 withPreValidationHandler:&__block_literal_global_315 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_321];

  v1 = objc_opt_new();
  v2 = RPClientDelegate;
  RPClientDelegate = v1;

  return MEMORY[0x2A1C5E690](&__block_literal_global_328);
}

uint64_t __54__AXReplayKitModuleGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"RPControlCenterClient" hasInstanceMethod:@"addDelegate:" withFullSignature:{"v", "@", 0}];
  [v2 validateClass:@"RPControlCenterClient" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [v2 validateProtocol:@"RPControlCenterClientDelegate" hasMethod:@"didStopRecordingOrBroadcast" isInstanceMethod:1 isRequired:1];
  [v2 validateProtocol:@"RPControlCenterClientDelegate" hasMethod:@"didStartRecordingOrBroadcast" isInstanceMethod:1 isRequired:1];

  return 1;
}

uint64_t __54__AXReplayKitModuleGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"ReplayKit Module (ControlCenter)"];
  [v2 setOverrideProcessName:@"ReplayKit Module (ControlCenter)"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __54__AXReplayKitModuleGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  [a2 installSafeCategory:@"RPControlCenterMenuModuleViewControllerAccessibility" canInteractWithTargetClass:1];
  v2 = [MEMORY[0x29EDC7348] sharedInstance];
  [v2 setNeedsLoadAccessibilityInformation];
}

void __54__AXReplayKitModuleGlue_accessibilityInitializeBundle__block_invoke_5()
{
  v0 = [NSClassFromString(&cfstr_Rpcontrolcente_0.isa) safeValueForKey:@"sharedInstance"];
  [v0 addDegate:RPClientDelegate];
}

@end