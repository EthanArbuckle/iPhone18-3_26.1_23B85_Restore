@interface AXPeerPaymentGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXPeerPaymentGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_282 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];

    _Failover = objc_alloc_init(AXPeerPaymentGlue);

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __50__AXPeerPaymentGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"MessagesExtension PeerPayment AX"];
  [v2 setOverrideProcessName:@"MessagesExtension PeerPayment"];

  return MEMORY[0x2A1C5E698]();
}

void __50__AXPeerPaymentGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"PKPeerPaymentMessagesAmountStepperViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PKPeerPaymentNumberPadActionButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PKPeerPaymentMessagesNumberPadViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"PKPeerPaymentMessagesContentViewAccessibility" canInteractWithTargetClass:1];
}

@end