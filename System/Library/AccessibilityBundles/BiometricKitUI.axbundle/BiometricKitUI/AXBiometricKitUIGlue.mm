@interface AXBiometricKitUIGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXBiometricKitUIGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    v2 = [objc_allocWithZone(AXBiometricKitUIGlue) init];
    v3 = _Failover;
    _Failover = v2;

    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_290 postValidationHandler:&__block_literal_global_299 safeCategoryInstallationHandler:&__block_literal_global_302];
  }
}

uint64_t __53__AXBiometricKitUIGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"BiometricKitUI AX Bundle"];
  [v2 setOverrideProcessName:@"BiometricKitUI"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __53__AXBiometricKitUIGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"BKUIPearlEnrollViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BKUIPearlEnrollViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BKUIPearlPillContainerViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BKUIPearlCoachingDeviceViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BKUIPearlEnrollControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BKUIFingerprintEnrollViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BKUICurvesViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BKUIFingerPrintEnrollTutorialViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BKUIFingerPrintEnrollmentPhaseViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BKUIButtonTrayAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BKUIJindoContainerScrollviewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BKUIPearlInstructionViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BKUIPearlCoachingControllerAccessibility" canInteractWithTargetClass:1];
}

@end