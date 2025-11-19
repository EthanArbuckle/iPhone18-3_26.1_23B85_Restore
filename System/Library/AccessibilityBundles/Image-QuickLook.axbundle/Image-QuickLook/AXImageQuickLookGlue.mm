@interface AXImageQuickLookGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXImageQuickLookGlue

+ (void)accessibilityInitializeBundle
{
  v2 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v2 performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_282 postValidationHandler:&__block_literal_global_288 safeCategoryInstallationHandler:&__block_literal_global_291];
}

@end