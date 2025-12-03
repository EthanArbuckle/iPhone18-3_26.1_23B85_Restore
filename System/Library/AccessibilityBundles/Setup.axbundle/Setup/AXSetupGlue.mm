@interface AXSetupGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXSetupGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_359 postValidationHandler:&__block_literal_global_368 safeCategoryInstallationHandler:&__block_literal_global_371];

    v3 = [objc_allocWithZone(AXSetupGlue) init];
    v4 = _Failover;
    _Failover = v3;

    mEMORY[0x29EDBD690] = [MEMORY[0x29EDBD690] sharedInstance];
    [mEMORY[0x29EDBD690] addHandler:&__block_literal_global_460 forFramework:@"WiFiKitUI"];

    mEMORY[0x29EDBD690]2 = [MEMORY[0x29EDBD690] sharedInstance];
    [mEMORY[0x29EDBD690]2 addHandler:&__block_literal_global_472 forFramework:@"VoiceTriggerUI"];

    mEMORY[0x29EDBD690]3 = [MEMORY[0x29EDBD690] sharedInstance];
    [mEMORY[0x29EDBD690]3 addHandler:&__block_literal_global_482 forFramework:@"BiometricKitUI"];

    mEMORY[0x29EDBD690]4 = [MEMORY[0x29EDBD690] sharedInstance];
    [mEMORY[0x29EDBD690]4 addHandler:&__block_literal_global_492 forFramework:@"PassKit"];

    mEMORY[0x29EDBD690]5 = [MEMORY[0x29EDBD690] sharedInstance];
    [mEMORY[0x29EDBD690]5 addHandler:&__block_literal_global_502 forFramework:@"PassKitUI"];

    UIAccessibilityIsVoiceOverRunning();
  }
}

uint64_t __44__AXSetupGlue_accessibilityInitializeBundle__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"BuddyLanguageController" hasInstanceMethod:@"tableView: cellForRowAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
  [v2 validateClass:@"UIViewController" hasInstanceMethod:@"navigationItem" withFullSignature:{"@", 0}];
  [v2 validateClass:@"BuddyLocaleController" hasInstanceMethod:@"tableView: didSelectRowAtIndexPath:" withFullSignature:{"v", "@", "@", 0}];
  [v2 validateClass:@"UITableViewCell" hasInstanceMethod:@"textLabel" withFullSignature:{"@", 0}];
  [v2 validateClass:@"UITableViewCell" hasInstanceMethod:@"editableTextField" withFullSignature:{"@", 0}];
  [v2 validateClass:@"BuddyAppleIDTableHeaderView" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [v2 validateClass:@"SetupChoiceController" hasInstanceMethod:@"tableView: cellForRowAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
  [v2 validateClass:@"BuddyTableViewController" hasInstanceVariable:@"_containerView" withType:"UIView"];
  [v2 validateClass:@"BuddyTableViewController" hasInstanceVariable:@"_tableView" withType:"UITableView"];
  [v2 validateClass:@"BuddyAppleIDTableHeaderView" hasInstanceVariable:@"_textLabel" withType:"UILabel"];
  [v2 validateClass:@"BuddyLanguageController" isKindOfClass:@"UIViewController"];
  [v2 validateClass:@"PSListController" isKindOfClass:@"UIViewController"];

  return 1;
}

uint64_t __44__AXSetupGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"Setup Accessibility"];
  [v2 setOverrideProcessName:@"SetupBundle"];

  return MEMORY[0x2A1C5E698]();
}

void __44__AXSetupGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"BuddyUIViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BuddyUITableViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SetupControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BuddyNavigationFlowControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UIBuddyApplicationAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BuddyLanguageControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BuddyLocaleControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BuddyTableViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BuddyUIImageViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BuddyFinishedControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SetupChoiceControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BuddyAppleIDTableHeaderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BuddyUINavigationBarAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BuddyUILabelAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CDPRemoteSecretEntryViewControllerAccessibility__Setup__CoreCDPUI" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CDPRemoteDeviceSecretValidatorAccessibility__CoreCDPUI__Setup" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BFFProximityVisualPairingViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BuddyPosedDeviceSelectionViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BuddyProximitySetupControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BuddyAppleIDServiceViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BuddySceneDelegateAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BuddyExpressSetupFeatureCardCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BuddyExpressSetupFeatureCardPrimaryCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BuddyAccessibilityUtilitiesAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"LabeledSliderAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BuddyPosedDeviceSelectionItemViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BYBuddySafetyAndHandlingViewControllerProviderAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BuddyAppearanceCheckBoxViewAccessibility" canInteractWithTargetClass:1];
}

void __44__AXSetupGlue_accessibilityInitializeBundle__block_invoke_6()
{
  v0 = MEMORY[0x29EDC7358];
  v1 = [MEMORY[0x29EDB9F48] bundleWithIdentifier:@"com.apple.framework.WiFiKitUI"];
  [v0 loadAccessibilityBundleForBundle:v1 didLoadCallback:0];

  v2 = [MEMORY[0x29EDC7348] sharedInstance];
  [v2 setNeedsLoadAccessibilityInformation];
}

void __44__AXSetupGlue_accessibilityInitializeBundle__block_invoke_8()
{
  v0 = MEMORY[0x29EDC7358];
  v1 = [MEMORY[0x29EDB9F48] bundleWithIdentifier:@"com.apple.VoiceTriggerUI"];
  [v0 loadAccessibilityBundleForBundle:v1 didLoadCallback:0];

  v2 = [MEMORY[0x29EDC7348] sharedInstance];
  [v2 setNeedsLoadAccessibilityInformation];
}

void __44__AXSetupGlue_accessibilityInitializeBundle__block_invoke_10()
{
  v0 = MEMORY[0x29EDC7358];
  v1 = [MEMORY[0x29EDB9F48] bundleWithIdentifier:@"com.apple.BiometricKitUI"];
  [v0 loadAccessibilityBundleForBundle:v1 didLoadCallback:0];

  v2 = [MEMORY[0x29EDC7348] sharedInstance];
  [v2 setNeedsLoadAccessibilityInformation];
}

void __44__AXSetupGlue_accessibilityInitializeBundle__block_invoke_12()
{
  v0 = MEMORY[0x29EDC7358];
  v1 = [MEMORY[0x29EDB9F48] bundleWithIdentifier:@"com.apple.PassKit"];
  [v0 loadAccessibilityBundleForBundle:v1 didLoadCallback:0];

  v2 = [MEMORY[0x29EDC7348] sharedInstance];
  [v2 setNeedsLoadAccessibilityInformation];
}

void __44__AXSetupGlue_accessibilityInitializeBundle__block_invoke_14()
{
  v0 = MEMORY[0x29EDC7358];
  v1 = [MEMORY[0x29EDB9F48] bundleWithIdentifier:@"com.apple.PassKitUI"];
  [v0 loadAccessibilityBundleForBundle:v1 didLoadCallback:0];

  v2 = [MEMORY[0x29EDC7348] sharedInstance];
  [v2 setNeedsLoadAccessibilityInformation];
}

@end