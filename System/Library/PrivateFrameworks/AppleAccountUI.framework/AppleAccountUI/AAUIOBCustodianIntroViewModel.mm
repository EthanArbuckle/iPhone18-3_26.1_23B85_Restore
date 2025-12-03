@interface AAUIOBCustodianIntroViewModel
- (NSString)secondaryButton;
- (id)initHidingNotNowButton:(BOOL)button;
@end

@implementation AAUIOBCustodianIntroViewModel

- (id)initHidingNotNowButton:(BOOL)button
{
  v10.receiver = self;
  v10.super_class = AAUIOBCustodianIntroViewModel;
  v4 = [(AAUIOBCustodianIntroViewModel *)&v10 init];
  if (v4)
  {
    v5 = MEMORY[0x1E69DCAB8];
    v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v7 = [v5 imageNamed:@"AccountRecoveryContact" inBundle:v6];
    image = v4->_image;
    v4->_image = v7;

    v4->_contentViewLayout = 2;
    v4->_hideNotNowButton = button;
  }

  return v4;
}

- (NSString)secondaryButton
{
  if (self->_hideNotNowButton)
  {
    secondaryButton = 0;
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = AAUIOBCustodianIntroViewModel;
    secondaryButton = [(AATrustedContactsCustodianSplashScreenModel *)&v6 secondaryButton];
  }

  return secondaryButton;
}

@end