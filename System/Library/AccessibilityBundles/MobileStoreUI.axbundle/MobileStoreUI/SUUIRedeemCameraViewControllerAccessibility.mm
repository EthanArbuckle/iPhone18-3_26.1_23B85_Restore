@interface SUUIRedeemCameraViewControllerAccessibility
- (void)codeRedeemerController:(id)controller didEndWithInfo:(id)info;
@end

@implementation SUUIRedeemCameraViewControllerAccessibility

- (void)codeRedeemerController:(id)controller didEndWithInfo:(id)info
{
  v7.receiver = self;
  v7.super_class = SUUIRedeemCameraViewControllerAccessibility;
  [(SUUIRedeemCameraViewControllerAccessibility *)&v7 codeRedeemerController:controller didEndWithInfo:info];
  if (([(SUUIRedeemCameraViewControllerAccessibility *)self safeBoolForKey:@"_enabled"]& 1) == 0)
  {
    v5 = *MEMORY[0x29EDC7EA8];
    v6 = accessibilityLocalizedString(@"redeem.code.validation");
    UIAccessibilityPostNotification(v5, v6);
  }
}

@end