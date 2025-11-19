@interface UIButton
@end

@implementation UIButton

void __56__UIButton_AuthKitUI___ak_passwordRecoveryButtonTapped___block_invoke(void *a1)
{
  v1[2] = a1;
  v1[1] = a1;
  v1[0] = [[AKCAReporter alloc] initWithEvent:@"com.apple.authkitui.password_recovery_button_tapped"];
  [v1[0] sendReport];
  objc_storeStrong(v1, 0);
}

@end