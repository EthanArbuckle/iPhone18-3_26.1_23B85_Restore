@interface AXGameKitFrameworkGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXGameKitFrameworkGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXGameKitFrameworkGlue accessibilityInitializeBundle];
  }
}

void __55__AXGameKitFrameworkGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_283 withPreValidationHandler:&__block_literal_global_324 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_333];
}

uint64_t __55__AXGameKitFrameworkGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"GKAchievementViewController"];
  [v2 validateClass:@"GKLocalPlayer"];
  [v2 validateClass:@"GKLocalPlayer" hasClassMethod:@"localPlayer" withFullSignature:{"@", 0}];
  [v2 validateClass:@"GKPlayer" hasInstanceMethod:@"internal" withFullSignature:{"@", 0}];
  [v2 validateClass:@"GKPlayerInternal" hasInstanceMethod:@"alias" withFullSignature:{"@", 0}];
  [v2 validateClass:@"GKScore" hasInstanceMethod:@"internal" withFullSignature:{"@", 0}];
  [v2 validateClass:@"GKScoreInternal" hasInstanceMethod:@"formattedValue" withFullSignature:{"@", 0}];
  [v2 validateClass:@"GKScoreInternal" hasInstanceMethod:@"rank" withFullSignature:{"I", 0}];
  [v2 validateClass:@"GKScoreInternal" hasInstanceMethod:@"value" withFullSignature:{"q", 0}];

  return 1;
}

uint64_t __55__AXGameKitFrameworkGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setOverrideProcessName:@"GameKitFramework"];
  [v2 setValidationTargetName:@"GameKitFramework Accessibility Bundle"];

  return MEMORY[0x2A1C5E698]();
}

@end