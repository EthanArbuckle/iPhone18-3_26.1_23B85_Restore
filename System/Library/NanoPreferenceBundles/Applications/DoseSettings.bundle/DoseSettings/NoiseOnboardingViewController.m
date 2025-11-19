@interface NoiseOnboardingViewController
- (NoiseOnboardingViewController)init;
- (NoiseOnboardingViewControllerDelegate)noiseOnboardingDelegate;
- (id)alternateButtonTitle;
- (id)detailString;
- (id)imageResourceBundleIdentifier;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)alternateButtonPressed:(id)a3;
- (void)suggestedButtonPressed:(id)a3;
@end

@implementation NoiseOnboardingViewController

- (NoiseOnboardingViewController)init
{
  v4.receiver = self;
  v4.super_class = NoiseOnboardingViewController;
  v2 = [(NoiseOnboardingViewController *)&v4 init];
  [(NoiseOnboardingViewController *)v2 setStyle:74];
  return v2;
}

- (id)titleString
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"ONBOARDING_TITLE" value:&stru_C6C0 table:0];
  v5 = [v2 localizedStringForKey:@"ONBOARDING_TITLE" value:v4 table:@"Noise"];

  return v5;
}

- (id)detailString
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"ONBOARDING_SUBTITLE" value:&stru_C6C0 table:0];
  v5 = [v2 localizedStringForKey:@"ONBOARDING_SUBTITLE" value:v4 table:@"Noise"];

  return v5;
}

- (id)suggestedButtonTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"ONBOARDING_CONTINUE" value:&stru_C6C0 table:0];
  v5 = [v2 localizedStringForKey:@"ONBOARDING_CONTINUE" value:v4 table:@"Noise"];

  return v5;
}

- (id)alternateButtonTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"ONBOARDING_LATER" value:&stru_C6C0 table:0];
  v5 = [v2 localizedStringForKey:@"ONBOARDING_LATER" value:v4 table:@"Noise"];

  return v5;
}

- (id)imageResourceBundleIdentifier
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 bundleIdentifier];

  return v3;
}

- (void)suggestedButtonPressed:(id)a3
{
  v3 = [(NoiseOnboardingViewController *)self noiseOnboardingDelegate];
  [v3 onboardingCompletedWithEnabled:1];
}

- (void)alternateButtonPressed:(id)a3
{
  v3 = [(NoiseOnboardingViewController *)self noiseOnboardingDelegate];
  [v3 onboardingCompletedWithEnabled:0];
}

- (NoiseOnboardingViewControllerDelegate)noiseOnboardingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_noiseOnboardingDelegate);

  return WeakRetained;
}

@end