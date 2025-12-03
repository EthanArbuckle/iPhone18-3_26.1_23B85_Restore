@interface AXGIFQuickLookGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXGIFQuickLookGlue

+ (void)accessibilityInitializeBundle
{
  mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
  [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_282 postValidationHandler:&__block_literal_global_288];
}

@end