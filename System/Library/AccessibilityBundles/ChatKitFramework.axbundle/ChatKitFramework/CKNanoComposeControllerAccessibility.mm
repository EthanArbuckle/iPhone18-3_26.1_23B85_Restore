@interface CKNanoComposeControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation CKNanoComposeControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateProtocol:@"PUICQuickboardViewControllerDelegate" hasOptionalInstanceMethod:@"extraButtonImage"];
  [validationsCopy validateProtocol:@"PUICQuickboardViewControllerDelegate" hasOptionalInstanceMethod:@"extraButtonTapped"];
}

@end