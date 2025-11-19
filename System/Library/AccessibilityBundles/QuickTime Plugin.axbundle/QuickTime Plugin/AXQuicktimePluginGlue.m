@interface AXQuicktimePluginGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXQuicktimePluginGlue

+ (void)accessibilityInitializeBundle
{
  v2 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v2 performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_308 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_317];

  if (!_Failover)
  {
    _Failover = [objc_allocWithZone(AXQuicktimePluginGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __54__AXQuicktimePluginGlue_accessibilityInitializeBundle__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"FigPluginView"];
  [v2 validateClass:@"FigPluginView" hasInstanceMethod:@"setAllowPlayback:" withFullSignature:{"v", "B", 0}];
  [v2 validateClass:@"FigPluginView" hasInstanceMethod:@"webPlugInStart" withFullSignature:{"@", 0}];
  [v2 validateClass:@"FigPluginView" hasInstanceVariable:@"_playButton" withType:"UIButton"];

  return 1;
}

uint64_t __54__AXQuicktimePluginGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"QuickTime Plugin AX Bundle"];
  [v2 setOverrideProcessName:@"QuickTimePlugin"];

  return MEMORY[0x2A1C5E698]();
}

@end