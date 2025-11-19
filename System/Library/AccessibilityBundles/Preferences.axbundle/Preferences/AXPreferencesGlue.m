@interface AXPreferencesGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXPreferencesGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    v2 = [MEMORY[0x29EDBD6E8] sharedInstance];
    [v2 performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_333 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_342];

    v3 = [objc_allocWithZone(AXPreferencesGlue) init];
    v4 = _Failover;
    _Failover = v3;

    v5 = [MEMORY[0x29EDBD690] sharedInstance];
    [v5 addHandler:&__block_literal_global_353 forFramework:@"CoreRecognition"];

    v6 = [MEMORY[0x29EDBD690] sharedInstance];
    [v6 addHandler:&__block_literal_global_366 forFramework:@"PassKit"];

    v7 = [MEMORY[0x29EDBD690] sharedInstance];
    [v7 addHandler:&__block_literal_global_376 forFramework:@"VoiceTriggerUI"];

    v8 = [MEMORY[0x29EDBD690] sharedInstance];
    [v8 addHandler:&__block_literal_global_386 forFramework:@"SetupAssistantUI"];

    v9 = [MEMORY[0x29EDBD690] sharedInstance];
    [v9 addHandler:&__block_literal_global_396 forBundleName:@"StorageSettings"];

    v10 = [MEMORY[0x29EDBD690] sharedInstance];
    [v10 addHandler:&__block_literal_global_406 forFramework:@"BiometricKitUI"];
  }
}

uint64_t __50__AXPreferencesGlue_accessibilityInitializeBundle__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"FailureBarView"];
  [v2 validateClass:@"PINView"];
  [v2 validateClass:@"DevicePINPane" hasInstanceMethod:@"setPINPolicyString: visible:" withFullSignature:{"v", "@", "B", 0}];
  [v2 validateClass:@"FailureBarView" hasInstanceMethod:@"setFailureCount:" withFullSignature:{"v", "q", 0}];
  [v2 validateClass:@"PSBadgedTableCell" hasInstanceMethod:@"badgeWithInteger:" withFullSignature:{"v", "q", 0}];
  [v2 validateClass:@"PSSpecifier" hasInstanceMethod:@"values" withFullSignature:{"@", 0}];
  [v2 validateClass:@"PINView" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [v2 validateClass:@"FailureBarView" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [v2 validateClass:@"DevicePINPane" hasInstanceVariable:@"_pinView" withType:"UIView<PINEntryView>"];
  [v2 validateClass:@"DevicePINController" hasInstanceMethod:@"_updateErrorTextAndFailureCount:" withFullSignature:{"v", "B", 0}];
  [v2 validateClass:@"PSTableCell" isKindOfClass:@"PreferencesTableCell"];

  return 1;
}

uint64_t __50__AXPreferencesGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"Preferences AX Bundle"];
  [v2 setOverrideProcessName:@"Preferences"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __50__AXPreferencesGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"PreferencesSliderAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PreferencesUITextFieldAccessibility" canInteractWithTargetClass:1];
}

void __50__AXPreferencesGlue_accessibilityInitializeBundle__block_invoke_5()
{
  v0 = MEMORY[0x29EDC7358];
  v1 = [MEMORY[0x29EDB9F48] bundleWithIdentifier:@"com.apple.CoreRecognition"];
  [v0 loadAccessibilityBundleForBundle:v1 didLoadCallback:0];

  v2 = [MEMORY[0x29EDC7348] sharedInstance];
  [v2 setNeedsLoadAccessibilityInformation];
}

void __50__AXPreferencesGlue_accessibilityInitializeBundle__block_invoke_7()
{
  v0 = MEMORY[0x29EDC7358];
  v1 = [MEMORY[0x29EDB9F48] bundleWithIdentifier:@"com.apple.PassKit"];
  [v0 loadAccessibilityBundleForBundle:v1 didLoadCallback:0];

  v2 = [MEMORY[0x29EDC7348] sharedInstance];
  [v2 setNeedsLoadAccessibilityInformation];
}

void __50__AXPreferencesGlue_accessibilityInitializeBundle__block_invoke_9()
{
  v0 = MEMORY[0x29EDC7358];
  v1 = [MEMORY[0x29EDB9F48] bundleWithIdentifier:@"com.apple.VoiceTriggerUI"];
  [v0 loadAccessibilityBundleForBundle:v1 didLoadCallback:0];

  v2 = [MEMORY[0x29EDC7348] sharedInstance];
  [v2 setNeedsLoadAccessibilityInformation];
}

void __50__AXPreferencesGlue_accessibilityInitializeBundle__block_invoke_11()
{
  v0 = MEMORY[0x29EDC7358];
  v1 = [MEMORY[0x29EDB9F48] bundleWithIdentifier:@"com.apple.SetupAssistantUI"];
  [v0 loadAccessibilityBundleForBundle:v1 didLoadCallback:0];

  v2 = [MEMORY[0x29EDC7348] sharedInstance];
  [v2 setNeedsLoadAccessibilityInformation];
}

void __50__AXPreferencesGlue_accessibilityInitializeBundle__block_invoke_13()
{
  v0 = MEMORY[0x29EDC7358];
  v1 = [MEMORY[0x29EDB9F48] bundleWithIdentifier:@"com.apple.settings.storage"];
  [v0 loadAccessibilityBundleForBundle:v1 didLoadCallback:0];

  v2 = [MEMORY[0x29EDC7348] sharedInstance];
  [v2 setNeedsLoadAccessibilityInformation];
}

void __50__AXPreferencesGlue_accessibilityInitializeBundle__block_invoke_15()
{
  v0 = MEMORY[0x29EDC7358];
  v1 = [MEMORY[0x29EDB9F48] bundleWithIdentifier:@"com.apple.BiometricKitUI"];
  [v0 loadAccessibilityBundleForBundle:v1 didLoadCallback:0];

  v2 = [MEMORY[0x29EDC7348] sharedInstance];
  [v2 setNeedsLoadAccessibilityInformation];
}

@end