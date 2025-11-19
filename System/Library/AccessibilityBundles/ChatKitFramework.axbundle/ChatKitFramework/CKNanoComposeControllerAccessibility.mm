@interface CKNanoComposeControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation CKNanoComposeControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateProtocol:@"PUICQuickboardViewControllerDelegate" hasOptionalInstanceMethod:@"extraButtonImage"];
  [v3 validateProtocol:@"PUICQuickboardViewControllerDelegate" hasOptionalInstanceMethod:@"extraButtonTapped"];
}

@end