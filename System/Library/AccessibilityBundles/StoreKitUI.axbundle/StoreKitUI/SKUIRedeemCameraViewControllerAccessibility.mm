@interface SKUIRedeemCameraViewControllerAccessibility
- (void)codeRedeemerController:(id)a3 didEndWithInfo:(id)a4;
@end

@implementation SKUIRedeemCameraViewControllerAccessibility

- (void)codeRedeemerController:(id)a3 didEndWithInfo:(id)a4
{
  v7.receiver = self;
  v7.super_class = SKUIRedeemCameraViewControllerAccessibility;
  [(SKUIRedeemCameraViewControllerAccessibility *)&v7 codeRedeemerController:a3 didEndWithInfo:a4];
  if (([(SKUIRedeemCameraViewControllerAccessibility *)self safeBoolForKey:@"_enabled"]& 1) == 0)
  {
    v5 = *MEMORY[0x29EDC7EA8];
    v6 = accessibilitySKUILocalizedString(@"redeem.code.validation");
    UIAccessibilityPostNotification(v5, v6);
  }
}

@end