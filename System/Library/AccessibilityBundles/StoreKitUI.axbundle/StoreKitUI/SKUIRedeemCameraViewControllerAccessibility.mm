@interface SKUIRedeemCameraViewControllerAccessibility
- (void)codeRedeemerController:(id)controller didEndWithInfo:(id)info;
@end

@implementation SKUIRedeemCameraViewControllerAccessibility

- (void)codeRedeemerController:(id)controller didEndWithInfo:(id)info
{
  v7.receiver = self;
  v7.super_class = SKUIRedeemCameraViewControllerAccessibility;
  [(SKUIRedeemCameraViewControllerAccessibility *)&v7 codeRedeemerController:controller didEndWithInfo:info];
  if (([(SKUIRedeemCameraViewControllerAccessibility *)self safeBoolForKey:@"_enabled"]& 1) == 0)
  {
    v5 = *MEMORY[0x29EDC7EA8];
    v6 = accessibilitySKUILocalizedString(@"redeem.code.validation");
    UIAccessibilityPostNotification(v5, v6);
  }
}

@end