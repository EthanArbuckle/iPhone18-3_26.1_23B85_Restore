@interface AAUIOBCustodianIntroViewModel
- (NSString)secondaryButton;
- (id)initHidingNotNowButton:(BOOL)a3;
@end

@implementation AAUIOBCustodianIntroViewModel

- (id)initHidingNotNowButton:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = AAUIOBCustodianIntroViewModel;
  v4 = [(AAUIOBCustodianIntroViewModel *)&v9 init];
  if (v4)
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [UIImage imageNamed:@"AccountRecoveryContact" inBundle:v5];
    image = v4->_image;
    v4->_image = v6;

    v4->_contentViewLayout = 2;
    v4->_hideNotNowButton = a3;
  }

  return v4;
}

- (NSString)secondaryButton
{
  if (self->_hideNotNowButton)
  {
    v4 = 0;
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = AAUIOBCustodianIntroViewModel;
    v4 = [(AAUIOBCustodianIntroViewModel *)&v6 secondaryButton];
  }

  return v4;
}

@end