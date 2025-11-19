@interface CRLApplicationAccessibilityValidator
+ (void)performPlatformSpecificValidations;
@end

@implementation CRLApplicationAccessibilityValidator

+ (void)performPlatformSpecificValidations
{
  __CRLAccessibilityValidateInstanceMethodComplete(@"UIApplication", @"_localizedApplicationName", "@", v2, v3, v4, v5, v6, 0);
  __CRLAccessibilityValidateInstanceMethodComplete(@"CRLiOSDocumentModeController", @"resetToDefaultModeAnimated:", "v", v7, v8, v9, v10, v11, "B");

  __CRLAccessibilityValidateClass(@"Freeform.CRLBoardItemFactory");
}

@end