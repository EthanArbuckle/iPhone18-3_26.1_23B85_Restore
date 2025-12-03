@interface AXTranslateGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXTranslateGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_282 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_291];

    _Failover = [objc_allocWithZone(AXTranslateGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __48__AXTranslateGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"Translate AX"];
  [v2 setOverrideProcessName:@"Translate"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __48__AXTranslateGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"TextViewWithPlaceHolderAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"TranslationCardAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"ConversationManagerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"HighlightTextViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SenseRowAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AccessibilityNodeAccessibility__Translate__SwiftUI" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"LanguageAwareTextViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"RecordingHelperAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UIButtonAccessibility__Translate__UIKit" canInteractWithTargetClass:1];
}

@end