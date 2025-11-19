@interface MailTrackingProtectionOnboardingViewControllerValues
- (UIButton)learnMoreButton;
- (UIImage)icon;
@end

@implementation MailTrackingProtectionOnboardingViewControllerValues

- (UIImage)icon
{
  if (+[UIDevice mf_isPadIdiom])
  {
    v2 = [UIImage imageNamed:@"envelope"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (UIButton)learnMoreButton
{
  v2 = +[UIButtonConfiguration plainButtonConfiguration];
  v3 = +[UIColor systemBlueColor];
  [v2 setBaseForegroundColor:v3];

  v4 = +[OBHeaderAccessoryButton accessoryButton];

  return v4;
}

@end