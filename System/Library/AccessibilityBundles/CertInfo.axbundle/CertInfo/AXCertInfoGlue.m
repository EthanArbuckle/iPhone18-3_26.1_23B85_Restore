@interface AXCertInfoGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXCertInfoGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXCertInfoGlue accessibilityInitializeBundle];
  }
}

void __47__AXCertInfoGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_291 withPreValidationHandler:&__block_literal_global_335 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_344];
}

uint64_t __47__AXCertInfoGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"CertInfoSheetViewController" hasInstanceMethod:@"_pushDetailsView" withFullSignature:{"v", 0}];
  [v2 validateClass:@"CertInfoCertificateSummaryDescriptionCell" hasInstanceVariable:@"_customContentView" withType:"CertInfoDescriptionCellContentView"];
  [v2 validateClass:@"CertInfoDescriptionCellContentView" hasInstanceVariable:@"_labelsAndValues" withType:"NSArray"];
  [v2 validateClass:@"CertInfoGradientLabel" hasInstanceVariable:@"_text" withType:"NSString"];
  [v2 validateClass:@"CertInfoCertificateHeaderCell" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [v2 validateClass:@"CertInfoCertificateHeaderCell" hasInstanceVariable:@"_subtitleLabel" withType:"UILabel"];
  [v2 validateClass:@"CertInfoCertificateHeaderCell" hasInstanceVariable:@"_trustedLabel" withType:"CertInfoGradientLabel"];

  return 1;
}

uint64_t __47__AXCertInfoGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"CertInfo AX Bundle"];
  [v2 setOverrideProcessName:@"CertInfo"];

  return MEMORY[0x2A1C5E698]();
}

void __47__AXCertInfoGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"CertInfoCertificateSummaryDescriptionCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CertInfoGradientLabelAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CertInfoSheetViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CertInfoCertificateHeaderCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CertUIItemDetailsSummaryCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"CertUIKeyValueViewAccessibility" canInteractWithTargetClass:1];
}

@end