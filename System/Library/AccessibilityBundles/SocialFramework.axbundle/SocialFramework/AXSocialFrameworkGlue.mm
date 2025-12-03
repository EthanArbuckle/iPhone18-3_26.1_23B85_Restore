@interface AXSocialFrameworkGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXSocialFrameworkGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_310 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_319];

    _Failover = objc_alloc_init(AXSocialFrameworkGlue);

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __54__AXSocialFrameworkGlue_accessibilityInitializeBundle__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"SLComposeServiceViewController"];
  [v2 validateClass:@"SLMicroBlogComposeViewController"];
  [v2 validateClass:@"SLComposeServiceViewController" isKindOfClass:@"UIViewController"];
  [v2 validateClass:@"SLMicroBlogComposeViewController" isKindOfClass:@"SLComposeServiceViewController"];
  [v2 validateClass:@"SLSheetTextComposeView" hasInstanceMethod:@"textView" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SLSheetTextComposeView" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];

  return 1;
}

uint64_t __54__AXSocialFrameworkGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setOverrideProcessName:@"SocialFramework"];
  [v2 setValidationTargetName:@"Social Framework AX"];

  return 1;
}

void __54__AXSocialFrameworkGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"UIButtonAccessibility__Social__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UITableViewAccessibility__Social__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UITextViewAccessibility__Social__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SLMicroBlogComposeViewControllerAccessibility" canInteractWithTargetClass:1];
}

@end