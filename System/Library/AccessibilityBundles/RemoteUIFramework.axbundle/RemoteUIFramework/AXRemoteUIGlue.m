@interface AXRemoteUIGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXRemoteUIGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    v2 = [MEMORY[0x29EDBD6E8] sharedInstance];
    [v2 performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_300 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_306];

    _Failover = [objc_allocWithZone(AXRemoteUIGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __47__AXRemoteUIGlue_accessibilityInitializeBundle__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"RemoteUITableViewCell" hasInstanceVariable:@"_remoteUIAccessoryType" withType:"q"];
  [v2 validateClass:@"RemoteUITableViewCell" hasInstanceMethod:@"setRemoteUIAccessoryView:" withFullSignature:{"v", "@", 0}];
  [v2 validateClass:@"RemoteUITableViewCell" hasInstanceMethod:@"_accessoriesChanged" withFullSignature:{"v", 0}];
  [v2 validateClass:@"RUITableViewRow"];

  return 1;
}

uint64_t __47__AXRemoteUIGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setOverrideProcessName:@"RemoteUIFramework"];
  [v2 setDebugBuild:0];
  [v2 setValidationTargetName:@"RemoteUIFramework"];

  return MEMORY[0x2A1C5E698]();
}

void __47__AXRemoteUIGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"RemoteUITableViewCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"RUITableViewRowAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"RUIPageAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"RUIWebContainerViewAccessibility" canInteractWithTargetClass:1];
}

@end