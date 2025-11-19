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
- (void)continuePressed:(id)a3;
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
      v9 = [v6 ic_numberingSystemIsDevanagari];
      v7 = v9 ^ 1;
      if (v9)
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
  v4 = [v3 userInterfaceIdiom];

  if (!v4)
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
  v3 = [objc_opt_class() imageName];
  v4 = [UIImage imageNamed:v3];
  v5 = [(ICAllowNotificationsViewController *)self imageView];
  [v5 setImage:v4];

  v6 = [UIFont ic_preferredFontForStyle:UIFontTextStyleLargeTitle withFontWeight:UIFontWeightBold];
  v7 = [(ICAllowNotificationsViewController *)self titleLabel];
  [v7 setFont:v6];
}

- (void)updateViewConstraints
{
  v17.receiver = self;
  v17.super_class = ICAllowNotificationsViewController;
  [(ICAllowNotificationsViewController *)&v17 updateViewConstraints];
  if (+[UIDevice ic_isVision])
  {
    v3 = [(ICAllowNotificationsViewController *)self continueButtonWidthConstraint];
    [v3 setActive:1];

    v4 = [(ICAllowNotificationsViewController *)self hiddenButtonWidthConstraint];
    [v4 setActive:1];

    v5 = [(ICAllowNotificationsViewController *)self buttonMarginConstraints];
    [NSLayoutConstraint deactivateConstraints:v5];
    v6 = 36.0;
  }

  else
  {
    v7 = [(ICAllowNotificationsViewController *)self ic_windowScene];
    v8 = [v7 traitCollection];
    v9 = [v8 ic_hasCompactWidth];

    v10 = [(ICAllowNotificationsViewController *)self continueButtonWidthConstraint];
    v11 = v10;
    if (v9)
    {
      [v10 setActive:0];

      v12 = [(ICAllowNotificationsViewController *)self hiddenButtonWidthConstraint];
      [v12 setActive:0];

      v5 = [(ICAllowNotificationsViewController *)self buttonMarginConstraints];
      [NSLayoutConstraint activateConstraints:v5];
      v6 = 24.0;
    }

    else
    {
      [v10 setActive:1];

      v13 = [(ICAllowNotificationsViewController *)self hiddenButtonWidthConstraint];
      [v13 setActive:1];

      v5 = [(ICAllowNotificationsViewController *)self buttonMarginConstraints];
      [NSLayoutConstraint deactivateConstraints:v5];
      v6 = 74.0;
    }
  }

  v14 = [(ICAllowNotificationsViewController *)self leadingLabelMarginConstraint];
  [v14 setConstant:v6];

  v15 = [(ICAllowNotificationsViewController *)self trailingLabelMarginConstraint];
  [v15 setConstant:v6];

  v16 = [(ICAllowNotificationsViewController *)self view];
  [v16 setAccessibilityViewIsModal:1];
}

- (void)continuePressed:(id)a3
{
  v4 = [(ICAllowNotificationsViewController *)self continueButton];
  [v4 setEnabled:0];

  v5 = [(ICAllowNotificationsViewController *)self completionHandler];

  if (v5)
  {
    v6 = [(ICAllowNotificationsViewController *)self completionHandler];
    v6[2]();
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