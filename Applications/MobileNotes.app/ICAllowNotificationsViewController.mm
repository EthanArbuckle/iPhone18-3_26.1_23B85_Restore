@interface ICAllowNotificationsViewController
+ (NSString)imageName;
- (NSLayoutConstraint)continueButtonWidthConstraint;
- (NSLayoutConstraint)hiddenButtonWidthConstraint;
- (NSLayoutConstraint)leadingLabelMarginConstraint;
- (NSLayoutConstraint)trailingLabelMarginConstraint;
- (UIButton)continueButton;
- (UIButton)invisibleBottomButton;
- (UIImageView)imageView;
- (UILabel)titleLabel;
- (UIStackView)buttonStackView;
- (unint64_t)supportedInterfaceOrientations;
- (void)continuePressed:(id)pressed;
- (void)updateViewConstraints;
- (void)viewDidLoad;
@end

@implementation ICAllowNotificationsViewController

+ (NSString)imageName
{
  if ((+[UIDevice ic_isVision]& 1) != 0)
  {
    v2 = @"vision_allow_notifications";
  }

  else if (+[UIDevice ic_isiPhone])
  {
    if (+[ICLocalAuthentication biometricsType]== 1)
    {
      v2 = @"phone_allow_notifications_touchID";
    }

    else
    {
      v2 = @"phone_allow_notifications_faceID";
    }
  }

  else
  {
    v3 = +[UIDevice ic_is12hrClock];
    v4 = @"24hr";
    if (v3)
    {
      v4 = @"12hr";
    }

    v5 = v4;
    v6 = +[NSLocale currentLocale];
    if ([v6 ic_timeUsesDotSeparator])
    {

      v7 = 0;
      v8 = @"_period_separator";
      v5 = @"24hr";
    }

    else if ([v6 ic_numberingSystemIsArabic])
    {
      v7 = 0;
      v8 = @"_arabic";
    }

    else
    {
      ic_numberingSystemIsDevanagari = [v6 ic_numberingSystemIsDevanagari];
      v7 = ic_numberingSystemIsDevanagari ^ 1;
      if (ic_numberingSystemIsDevanagari)
      {
        v8 = @"_devanagari";
      }

      else
      {
        v8 = 0;
      }
    }

    v10 = [NSString stringWithFormat:@"ios_allow_notifications_%@", v5];
    v2 = v10;
    if ((v7 & 1) == 0)
    {
      v11 = [(__CFString *)v10 stringByAppendingString:v8];

      v2 = v11;
    }
  }

  return v2;
}

- (unint64_t)supportedInterfaceOrientations
{
  v3 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v3 userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    return 2;
  }

  v6.receiver = self;
  v6.super_class = ICAllowNotificationsViewController;
  return [(ICAllowNotificationsViewController *)&v6 supportedInterfaceOrientations];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = ICAllowNotificationsViewController;
  [(ICAllowNotificationsViewController *)&v8 viewDidLoad];
  imageName = [objc_opt_class() imageName];
  v4 = [UIImage imageNamed:imageName];
  imageView = [(ICAllowNotificationsViewController *)self imageView];
  [imageView setImage:v4];

  v6 = [UIFont ic_preferredFontForStyle:UIFontTextStyleLargeTitle withFontWeight:UIFontWeightBold];
  titleLabel = [(ICAllowNotificationsViewController *)self titleLabel];
  [titleLabel setFont:v6];
}

- (void)updateViewConstraints
{
  v17.receiver = self;
  v17.super_class = ICAllowNotificationsViewController;
  [(ICAllowNotificationsViewController *)&v17 updateViewConstraints];
  if (+[UIDevice ic_isVision])
  {
    continueButtonWidthConstraint = [(ICAllowNotificationsViewController *)self continueButtonWidthConstraint];
    [continueButtonWidthConstraint setActive:1];

    hiddenButtonWidthConstraint = [(ICAllowNotificationsViewController *)self hiddenButtonWidthConstraint];
    [hiddenButtonWidthConstraint setActive:1];

    buttonMarginConstraints = [(ICAllowNotificationsViewController *)self buttonMarginConstraints];
    [NSLayoutConstraint deactivateConstraints:buttonMarginConstraints];
    v6 = 36.0;
  }

  else
  {
    ic_windowScene = [(ICAllowNotificationsViewController *)self ic_windowScene];
    traitCollection = [ic_windowScene traitCollection];
    ic_hasCompactWidth = [traitCollection ic_hasCompactWidth];

    continueButtonWidthConstraint2 = [(ICAllowNotificationsViewController *)self continueButtonWidthConstraint];
    v11 = continueButtonWidthConstraint2;
    if (ic_hasCompactWidth)
    {
      [continueButtonWidthConstraint2 setActive:0];

      hiddenButtonWidthConstraint2 = [(ICAllowNotificationsViewController *)self hiddenButtonWidthConstraint];
      [hiddenButtonWidthConstraint2 setActive:0];

      buttonMarginConstraints = [(ICAllowNotificationsViewController *)self buttonMarginConstraints];
      [NSLayoutConstraint activateConstraints:buttonMarginConstraints];
      v6 = 24.0;
    }

    else
    {
      [continueButtonWidthConstraint2 setActive:1];

      hiddenButtonWidthConstraint3 = [(ICAllowNotificationsViewController *)self hiddenButtonWidthConstraint];
      [hiddenButtonWidthConstraint3 setActive:1];

      buttonMarginConstraints = [(ICAllowNotificationsViewController *)self buttonMarginConstraints];
      [NSLayoutConstraint deactivateConstraints:buttonMarginConstraints];
      v6 = 74.0;
    }
  }

  leadingLabelMarginConstraint = [(ICAllowNotificationsViewController *)self leadingLabelMarginConstraint];
  [leadingLabelMarginConstraint setConstant:v6];

  trailingLabelMarginConstraint = [(ICAllowNotificationsViewController *)self trailingLabelMarginConstraint];
  [trailingLabelMarginConstraint setConstant:v6];

  view = [(ICAllowNotificationsViewController *)self view];
  [view setAccessibilityViewIsModal:1];
}

- (void)continuePressed:(id)pressed
{
  continueButton = [(ICAllowNotificationsViewController *)self continueButton];
  [continueButton setEnabled:0];

  completionHandler = [(ICAllowNotificationsViewController *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(ICAllowNotificationsViewController *)self completionHandler];
    completionHandler2[2]();
  }
}

- (UIImageView)imageView
{
  WeakRetained = objc_loadWeakRetained(&self->_imageView);

  return WeakRetained;
}

- (NSLayoutConstraint)leadingLabelMarginConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_leadingLabelMarginConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)trailingLabelMarginConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_trailingLabelMarginConstraint);

  return WeakRetained;
}

- (UIStackView)buttonStackView
{
  WeakRetained = objc_loadWeakRetained(&self->_buttonStackView);

  return WeakRetained;
}

- (UILabel)titleLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_titleLabel);

  return WeakRetained;
}

- (UIButton)continueButton
{
  WeakRetained = objc_loadWeakRetained(&self->_continueButton);

  return WeakRetained;
}

- (UIButton)invisibleBottomButton
{
  WeakRetained = objc_loadWeakRetained(&self->_invisibleBottomButton);

  return WeakRetained;
}

- (NSLayoutConstraint)continueButtonWidthConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_continueButtonWidthConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)hiddenButtonWidthConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_hiddenButtonWidthConstraint);

  return WeakRetained;
}

@end