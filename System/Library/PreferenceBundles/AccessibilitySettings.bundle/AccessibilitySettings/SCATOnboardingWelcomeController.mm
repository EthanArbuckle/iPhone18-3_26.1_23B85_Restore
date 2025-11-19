@interface SCATOnboardingWelcomeController
- (SCATOnboardingWelcomeController)initWithCompletion:(id)a3;
@end

@implementation SCATOnboardingWelcomeController

- (SCATOnboardingWelcomeController)initWithCompletion:(id)a3
{
  v4 = a3;
  v5 = AXParameterizedLocalizedString();
  v6 = AXParameterizedLocalizedString();
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 URLForResource:@"SwitchControlWelcome" withExtension:@"mov"];

  v11.receiver = self;
  v11.super_class = SCATOnboardingWelcomeController;
  v9 = [(SCATOnboardingBaseVideoController *)&v11 initWithTitle:v5 detailText:v6 videoURL:v8 completion:v4];

  return v9;
}

@end