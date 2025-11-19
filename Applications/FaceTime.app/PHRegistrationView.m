@interface PHRegistrationView
- (UIActivityIndicatorView)signingInSpinner;
- (UIButton)continueButton;
- (UIButton)learnMoreButton;
- (UILabel)errorLabel;
- (UILabel)signingInLabel;
- (UILabel)supplementalVerbiageLabel;
- (UILabel)titleLabel;
- (UILabel)verbiageLabel;
- (UILabel)waitingForActivationLabel;
- (void)_continueTouchUpInside:(id)a3;
- (void)_learnMorePressed:(id)a3;
- (void)layoutSubviews;
- (void)setActivationFailed:(BOOL)a3;
- (void)setAuthKitSignInView:(id)a3;
- (void)setPrivacyLinkView:(id)a3;
- (void)setSigningIn:(BOOL)a3;
@end

@implementation PHRegistrationView

- (void)setAuthKitSignInView:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(PHRegistrationView *)self setShowsAuthKitUI:1];
  }

  [(UIView *)self->_authKitSignInView removeFromSuperview];
  authKitSignInView = self->_authKitSignInView;
  self->_authKitSignInView = v4;
  v6 = v4;

  v7 = self->_authKitSignInView;
  v8 = +[UIColor clearColor];
  [(UIView *)v7 setBackgroundColor:v8];

  [(UIView *)self->_authKitSignInView setTranslatesAutoresizingMaskIntoConstraints:1];
  [(PHRegistrationView *)self addSubview:self->_authKitSignInView];
  [(UIView *)self->_authKitSignInView frame];
  v10 = v9;

  [(PHRegistrationView *)self setOriginalAuthKitViewHeight:v10];
}

- (void)setPrivacyLinkView:(id)a3
{
  v4 = a3;
  [(UIView *)self->_privacyLinkView removeFromSuperview];
  privacyLinkView = self->_privacyLinkView;
  self->_privacyLinkView = v4;
  v6 = v4;

  [(UIView *)self->_privacyLinkView setTranslatesAutoresizingMaskIntoConstraints:1];
  [(PHRegistrationView *)self addSubview:self->_privacyLinkView];
}

- (void)setSigningIn:(BOOL)a3
{
  v3 = a3;
  if ([(PHRegistrationView *)self showsAuthKitUI])
  {
    [(UIView *)self->_authKitSignInView setHidden:v3];
    v5 = v3 ^ 1;
    v6 = [(PHRegistrationView *)self signingInLabel];
    [v6 setHidden:v5];

    v7 = [(PHRegistrationView *)self signingInSpinner];
    [v7 setHidden:v5];

    v8 = [(PHRegistrationView *)self signingInSpinner];
    v9 = v8;
    if (v5)
    {
      [v8 stopAnimating];
    }

    else
    {
      [v8 startAnimating];
    }

    [(PHRegistrationView *)self setNeedsDisplay];
  }

  else
  {
    v10 = [(PHRegistrationView *)self continueButton];
    v11 = v10;
    if (v3)
    {
      [v10 setHidden:1];

      v12 = [(PHRegistrationView *)self waitingForActivationLabel];
      v14 = v12;
      v13 = 0;
    }

    else
    {
      [v10 setHidden:0];

      v12 = [(PHRegistrationView *)self waitingForActivationLabel];
      v14 = v12;
      v13 = 1;
    }

    [v12 setHidden:v13];
  }
}

- (void)setActivationFailed:(BOOL)a3
{
  v3 = a3;
  if (![(PHRegistrationView *)self showsAuthKitUI])
  {
    v5 = [(PHRegistrationView *)self errorLabel];
    [v5 setHidden:!v3];
  }
}

- (UILabel)titleLabel
{
  titleLabel = self->_titleLabel;
  if (!titleLabel)
  {
    v4 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = self->_titleLabel;
    self->_titleLabel = v4;

    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"FACETIME" value:&stru_10010E930 table:@"General"];
    [(UILabel *)self->_titleLabel setText:v7];

    if ([(PHRegistrationView *)self showsAuthKitUI])
    {
      [UIFont preferredFontForTextStyle:UIFontTextStyleTitle1];
    }

    else
    {
      [UIFont _thinSystemFontOfSize:35.0];
    }
    v8 = ;
    [(UILabel *)self->_titleLabel setFont:v8];

    v9 = +[UIColor whiteColor];
    [(UILabel *)self->_titleLabel setTextColor:v9];

    [(UILabel *)self->_titleLabel setTextAlignment:1];
    v10 = +[UIColor clearColor];
    [(UILabel *)self->_titleLabel setBackgroundColor:v10];

    [(UILabel *)self->_titleLabel sizeToFit];
    [(PHRegistrationView *)self addSubview:self->_titleLabel];
    [(PHRegistrationView *)self setNeedsLayout];
    titleLabel = self->_titleLabel;
  }

  return titleLabel;
}

- (UILabel)verbiageLabel
{
  verbiageLabel = self->_verbiageLabel;
  if (!verbiageLabel)
  {
    v4 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = self->_verbiageLabel;
    self->_verbiageLabel = v4;

    v6 = objc_alloc_init(TUFeatureFlags);
    if ([(PHRegistrationView *)self showsAuthKitUI])
    {
      v7 = [v6 appleAccountRebrandEnabled];
      v8 = +[NSBundle mainBundle];
      v9 = v8;
      if (v7)
      {
        v10 = @"FACETIME_REGISTRATION_BLURB_APPLEACCOUNT";
      }

      else
      {
        v10 = @"FACETIME_REGISTRATION_BLURB";
      }
    }

    else
    {
      v8 = +[NSBundle mainBundle];
      v9 = v8;
      v10 = @"FACETIME_REGISTRATION_BLURB_NON_AUTHKIT";
    }

    v11 = [v8 localizedStringForKey:v10 value:&stru_10010E930 table:@"General"];

    [(UILabel *)self->_verbiageLabel setText:v11];
    if ([(PHRegistrationView *)self showsAuthKitUI])
    {
      [UIFont systemFontOfSize:17.0];
    }

    else
    {
      [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    }
    v12 = ;
    [(UILabel *)self->_verbiageLabel setFont:v12];

    v13 = +[UIColor whiteColor];
    [(UILabel *)self->_verbiageLabel setTextColor:v13];

    [(UILabel *)self->_verbiageLabel setNumberOfLines:0];
    [(UILabel *)self->_verbiageLabel setLineBreakMode:0];
    [(UILabel *)self->_verbiageLabel setTextAlignment:1];
    v14 = +[UIColor clearColor];
    [(UILabel *)self->_verbiageLabel setBackgroundColor:v14];

    [(UILabel *)self->_verbiageLabel setAutoresizingMask:18];
    [(PHRegistrationView *)self addSubview:self->_verbiageLabel];
    [(PHRegistrationView *)self setNeedsLayout];

    verbiageLabel = self->_verbiageLabel;
  }

  return verbiageLabel;
}

- (UILabel)supplementalVerbiageLabel
{
  supplementalVerbiageLabel = self->_supplementalVerbiageLabel;
  if (!supplementalVerbiageLabel)
  {
    v4 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = self->_supplementalVerbiageLabel;
    self->_supplementalVerbiageLabel = v4;

    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"FACETIME_REGISTRATION_BLURB_NON_AUTHKIT_SUPPLEMENT" value:&stru_10010E930 table:@"General"];
    [(UILabel *)self->_supplementalVerbiageLabel setText:v7];

    v8 = [UIFont systemFontOfSize:17.0];
    [(UILabel *)self->_supplementalVerbiageLabel setFont:v8];

    v9 = +[UIColor whiteColor];
    [(UILabel *)self->_supplementalVerbiageLabel setTextColor:v9];

    [(UILabel *)self->_supplementalVerbiageLabel setNumberOfLines:0];
    [(UILabel *)self->_supplementalVerbiageLabel setLineBreakMode:0];
    [(UILabel *)self->_supplementalVerbiageLabel setTextAlignment:1];
    v10 = +[UIColor clearColor];
    [(UILabel *)self->_supplementalVerbiageLabel setBackgroundColor:v10];

    [(UILabel *)self->_supplementalVerbiageLabel setAutoresizingMask:18];
    [(PHRegistrationView *)self addSubview:self->_supplementalVerbiageLabel];
    [(PHRegistrationView *)self setNeedsLayout];
    supplementalVerbiageLabel = self->_supplementalVerbiageLabel;
  }

  return supplementalVerbiageLabel;
}

- (UILabel)signingInLabel
{
  signingInLabel = self->_signingInLabel;
  if (!signingInLabel)
  {
    v4 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = self->_signingInLabel;
    self->_signingInLabel = v4;

    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"FACETIME_REGISTRATION_SIGNING_IN" value:&stru_10010E930 table:@"General"];
    [(UILabel *)self->_signingInLabel setText:v7];

    v8 = [UIFont systemFontOfSize:17.0];
    [(UILabel *)self->_signingInLabel setFont:v8];

    v9 = +[UIColor whiteColor];
    [(UILabel *)self->_signingInLabel setTextColor:v9];

    [(UILabel *)self->_signingInLabel setNumberOfLines:0];
    [(UILabel *)self->_signingInLabel setLineBreakMode:0];
    [(UILabel *)self->_signingInLabel setTextAlignment:1];
    v10 = +[UIColor clearColor];
    [(UILabel *)self->_signingInLabel setBackgroundColor:v10];

    [(UILabel *)self->_signingInLabel setAutoresizingMask:18];
    [(UILabel *)self->_signingInLabel setHidden:1];
    [(PHRegistrationView *)self addSubview:self->_signingInLabel];
    [(PHRegistrationView *)self setNeedsLayout];
    signingInLabel = self->_signingInLabel;
  }

  return signingInLabel;
}

- (UILabel)waitingForActivationLabel
{
  waitingForActivationLabel = self->_waitingForActivationLabel;
  if (!waitingForActivationLabel)
  {
    v4 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = self->_waitingForActivationLabel;
    self->_waitingForActivationLabel = v4;

    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"FACETIME_REGISTRATION_WAITING_FOR_ACTIVATION" value:&stru_10010E930 table:@"General"];
    [(UILabel *)self->_waitingForActivationLabel setText:v7];

    v8 = [UIFont systemFontOfSize:17.0];
    [(UILabel *)self->_waitingForActivationLabel setFont:v8];

    v9 = +[UIColor whiteColor];
    [(UILabel *)self->_waitingForActivationLabel setTextColor:v9];

    [(UILabel *)self->_waitingForActivationLabel setNumberOfLines:0];
    [(UILabel *)self->_waitingForActivationLabel setLineBreakMode:0];
    [(UILabel *)self->_waitingForActivationLabel setTextAlignment:1];
    v10 = +[UIColor clearColor];
    [(UILabel *)self->_waitingForActivationLabel setBackgroundColor:v10];

    [(UILabel *)self->_waitingForActivationLabel setAutoresizingMask:18];
    [(UILabel *)self->_waitingForActivationLabel setHidden:1];
    [(PHRegistrationView *)self addSubview:self->_waitingForActivationLabel];
    [(PHRegistrationView *)self setNeedsLayout];
    waitingForActivationLabel = self->_waitingForActivationLabel;
  }

  return waitingForActivationLabel;
}

- (UILabel)errorLabel
{
  errorLabel = self->_errorLabel;
  if (!errorLabel)
  {
    v4 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = self->_errorLabel;
    self->_errorLabel = v4;

    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"FACETIME_REGISTRATION_ACTIVATION_ERROR" value:&stru_10010E930 table:@"General"];
    [(UILabel *)self->_errorLabel setText:v7];

    v8 = [UIFont systemFontOfSize:17.0];
    [(UILabel *)self->_errorLabel setFont:v8];

    v9 = +[UIColor redColor];
    [(UILabel *)self->_errorLabel setTextColor:v9];

    [(UILabel *)self->_errorLabel setNumberOfLines:0];
    [(UILabel *)self->_errorLabel setLineBreakMode:0];
    [(UILabel *)self->_errorLabel setTextAlignment:1];
    v10 = +[UIColor clearColor];
    [(UILabel *)self->_errorLabel setBackgroundColor:v10];

    [(UILabel *)self->_errorLabel setAutoresizingMask:18];
    [(UILabel *)self->_errorLabel setHidden:1];
    [(PHRegistrationView *)self addSubview:self->_errorLabel];
    [(PHRegistrationView *)self setNeedsLayout];
    errorLabel = self->_errorLabel;
  }

  return errorLabel;
}

- (UIActivityIndicatorView)signingInSpinner
{
  signingInSpinner = self->_signingInSpinner;
  if (!signingInSpinner)
  {
    v4 = [[UIActivityIndicatorView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = self->_signingInSpinner;
    self->_signingInSpinner = v4;

    v6 = +[UIColor whiteColor];
    [(UIActivityIndicatorView *)self->_signingInSpinner setColor:v6];

    [(UIActivityIndicatorView *)self->_signingInSpinner setHidden:1];
    [(PHRegistrationView *)self addSubview:self->_signingInSpinner];
    [(PHRegistrationView *)self setNeedsLayout];
    signingInSpinner = self->_signingInSpinner;
  }

  return signingInSpinner;
}

- (UIButton)learnMoreButton
{
  learnMoreButton = self->_learnMoreButton;
  if (!learnMoreButton)
  {
    v4 = [UIButton buttonWithType:1];
    v5 = self->_learnMoreButton;
    self->_learnMoreButton = v4;

    v6 = self->_learnMoreButton;
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"FACETIME_REGISTRATION_LEARN_MORE" value:&stru_10010E930 table:@"General"];
    [(UIButton *)v6 setTitle:v8 forState:0];

    v9 = [(UIButton *)self->_learnMoreButton titleLabel];
    v10 = [UIFont systemFontOfSize:17.0];
    [v9 setFont:v10];

    [(UIButton *)self->_learnMoreButton setAutoresizingMask:5];
    [(UIButton *)self->_learnMoreButton addTarget:self action:"_learnMorePressed:" forControlEvents:64];
    [(PHRegistrationView *)self addSubview:self->_learnMoreButton];
    [(PHRegistrationView *)self setNeedsLayout];
    learnMoreButton = self->_learnMoreButton;
  }

  return learnMoreButton;
}

- (UIButton)continueButton
{
  continueButton = self->_continueButton;
  if (!continueButton)
  {
    if (_UISolariumEnabled())
    {
      v4 = +[UIButtonConfiguration _tintedGlassButtonConfiguration];
      v5 = [NSAttributedString alloc];
      v6 = +[NSBundle mainBundle];
      v7 = [v6 localizedStringForKey:@"CONTINUE" value:&stru_10010E930 table:@"General"];
      v30[0] = NSFontAttributeName;
      v8 = [UIFont systemFontOfSize:17.0 weight:UIFontWeightMedium];
      v31[0] = v8;
      v30[1] = NSForegroundColorAttributeName;
      v9 = +[UIColor whiteColor];
      v31[1] = v9;
      v10 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:2];
      v11 = [v5 initWithString:v7 attributes:v10];
      [v4 setAttributedTitle:v11];

      v12 = [UIButton buttonWithConfiguration:v4 primaryAction:0];
      v13 = self->_continueButton;
      self->_continueButton = v12;

      v14 = [UIApp applicationTintColor];
      [(UIButton *)self->_continueButton setTintColor:v14];
    }

    else
    {
      v15 = [UIButton buttonWithType:1];
      v16 = self->_continueButton;
      self->_continueButton = v15;

      v17 = self->_continueButton;
      v18 = +[NSBundle mainBundle];
      v19 = [v18 localizedStringForKey:@"CONTINUE" value:&stru_10010E930 table:@"General"];
      [(UIButton *)v17 setTitle:v19 forState:0];

      v20 = [(UIButton *)self->_continueButton titleLabel];
      v21 = [UIFont systemFontOfSize:17.0 weight:UIFontWeightMedium];
      [v20 setFont:v21];

      v22 = self->_continueButton;
      v23 = +[UIColor whiteColor];
      [(UIButton *)v22 setTitleColor:v23 forState:0];

      v24 = self->_continueButton;
      v25 = +[UIColor whiteColor];
      v26 = [v25 colorWithAlphaComponent:0.25];
      [(UIButton *)v24 setTitleColor:v26 forState:1];

      v27 = self->_continueButton;
      v28 = [UIApp applicationTintColor];
      [(UIButton *)v27 setBackgroundColor:v28];

      [(UIButton *)self->_continueButton _setCornerRadius:8.0];
    }

    [(UIButton *)self->_continueButton setAutoresizingMask:5];
    [(UIButton *)self->_continueButton addTarget:self action:"_continueTouchUpInside:" forControlEvents:64];
    [(PHRegistrationView *)self addSubview:self->_continueButton];
    [(PHRegistrationView *)self setNeedsLayout];
    continueButton = self->_continueButton;
  }

  return continueButton;
}

- (void)layoutSubviews
{
  [(PHRegistrationView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  rect_16 = [(PHRegistrationView *)self titleLabel];
  [rect_16 frame];
  v12 = v11;
  v14 = v13;
  rect = v4;
  rect_8 = v6;
  v166.origin.x = v4;
  v166.origin.y = v6;
  v166.size.width = v8;
  v166.size.height = v10;
  v15 = floor(CGRectGetMidX(v166) + v12 * -0.5);
  v16 = [rect_16 font];
  [v16 ascender];
  v18 = v17;

  if ([(PHRegistrationView *)self showsAuthKitUI])
  {
    v19 = floor(87.0 - v18);
  }

  else
  {
    [(PHRegistrationView *)self bounds];
    v19 = -(UIStatusBarHeight - v20 * 0.33);
  }

  [rect_16 setFrame:{v15, v19, v12, v14}];
  v167.origin.x = v15;
  v167.origin.y = v19;
  v167.size.width = v12;
  v167.size.height = v14;
  MaxY = CGRectGetMaxY(v167);
  v22 = [rect_16 font];
  [v22 descender];
  v24 = MaxY + v23 + 43.0;

  v25 = [(PHRegistrationView *)self verbiageLabel];
  v168.origin.x = rect;
  v168.origin.y = v6;
  v168.size.width = v8;
  v168.size.height = v10;
  [v25 sizeThatFits:{CGRectGetWidth(v168) + -20.0, 1.79769313e308}];
  v27 = v26;
  v29 = v28;
  v169.origin.x = rect;
  v169.origin.y = v6;
  v169.size.width = v8;
  v169.size.height = v10;
  v30 = floor(CGRectGetMidX(v169) + v27 * -0.5);
  v31 = [v25 font];
  [v31 ascender];
  v33 = floor(v24 - v32);

  [v25 setFrame:{v30, v33, v27, v29}];
  v170.origin.x = v30;
  v170.origin.y = v33;
  v170.size.width = v27;
  v170.size.height = v29;
  v34 = CGRectGetMaxY(v170);
  v35 = [v25 font];
  [v35 descender];
  v37 = v34 + v36 + 24.0;

  if ([(PHRegistrationView *)self showsAuthKitUI])
  {
    v38 = [(PHRegistrationView *)self learnMoreButton];
    [v38 sizeToFit];
    [v38 bounds];
    v41 = v40;
    v43 = v42;
    v45 = v44;
    if (v39 <= v8)
    {
      v46 = v39;
    }

    else
    {
      v46 = v8;
    }

    v171.origin.x = rect;
    v171.origin.y = v6;
    v171.size.width = v8;
    v171.size.height = v10;
    MidX = CGRectGetMidX(v171);
    v172.origin.x = v41;
    v172.origin.y = v43;
    v172.size.width = v46;
    v172.size.height = v45;
    v48 = floor(MidX - CGRectGetWidth(v172) * 0.5);
    v49 = [v38 titleLabel];
    v50 = [v49 font];
    [v50 ascender];
    v52 = v37 - v51;
    v53 = [v38 titleLabel];
    [v53 origin];
    v55 = floor(v52 - v54);

    [v38 setFrame:{v48, v55, v46, v45}];
    v173.origin.x = v48;
    v173.origin.y = v55;
    v173.size.width = v46;
    v173.size.height = v45;
    v56 = CGRectGetMaxY(v173);
    v57 = [v38 titleLabel];
    [v57 origin];
    v59 = v56 - v58;
    v60 = [v38 titleLabel];
    v61 = [v60 font];
    [v61 descender];
    v63 = ceil(v59 + v62 + 40.0);

    [(UIView *)self->_authKitSignInView frame];
    v66 = v65;
    v68 = v67;
    if (v64 <= v8)
    {
      v69 = v64;
    }

    else
    {
      v69 = v8;
    }

    [(PHRegistrationView *)self originalAuthKitViewHeight];
    v71 = v70;
    v174.origin.x = rect;
    v174.origin.y = rect_8;
    v174.size.width = v8;
    v174.size.height = v10;
    v72 = CGRectGetMidX(v174);
    v175.origin.x = v66;
    v175.origin.y = v68;
    v175.size.width = v69;
    v175.size.height = v71;
    v73 = floor(v72 - CGRectGetWidth(v175) * 0.5);
    [(UIView *)self->_authKitSignInView setFrame:v73, v63, v69, v71];
    [(UIView *)self->_authKitSignInView setTranslatesAutoresizingMaskIntoConstraints:1];
    v74 = [(PHRegistrationView *)self signingInLabel];
    [v74 sizeToFit];

    v75 = [(PHRegistrationView *)self signingInLabel];
    [v75 frame];
    v77 = v76;
    v79 = v78;

    [(PHRegistrationView *)self frame];
    v161 = v10;
    v81 = v80 * 0.5 - v77 * 0.5;
    v82 = [(PHRegistrationView *)self signingInLabel];
    [v82 setFrame:{v81, v63, v77, v79}];

    v83 = [(PHRegistrationView *)self signingInSpinner];
    [v83 sizeToFit];

    v84 = [(PHRegistrationView *)self signingInSpinner];
    [v84 frame];
    v86 = v85;
    v88 = v87;

    v89 = [(PHRegistrationView *)self signingInSpinner];
    [v89 setFrame:{v81 - v86 + -6.0, v63, v86, v88}];

    v176.origin.x = v73;
    v176.origin.y = v63;
    v176.size.width = v69;
    v176.size.height = v71;
    v90 = ceil(CGRectGetMaxY(v176));
    v91 = [(PHRegistrationView *)self privacyLinkView];
    v92 = v8 * 0.75;
    LODWORD(v93) = 1112014848;
    LODWORD(v94) = 1132068864;
    [v91 systemLayoutSizeFittingSize:v8 * 0.75 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v93, v94}];
    v96 = v95;
    [v91 bounds];
    v98 = v97;
    [v91 bounds];
    v100 = v99;
    v177.origin.x = rect;
    v177.origin.y = rect_8;
    v177.size.width = v8;
    v177.size.height = v161;
    v101 = CGRectGetMidX(v177);
    v178.origin.x = v98;
    v178.origin.y = v100;
    v178.size.width = v92;
    v178.size.height = v96;
    v102 = floor(v101 - CGRectGetWidth(v178) * 0.5);
    [v91 setFrame:{v102, v90, v92, v96}];
    v179.origin.x = v102;
    v179.origin.y = v90;
    v179.size.width = v92;
    v179.size.height = v96;
    v103 = ceil(CGRectGetMaxY(v179) + 30.0);
  }

  else
  {
    if (MGGetBoolAnswer())
    {
      v104 = [(PHRegistrationView *)self supplementalVerbiageLabel];
      v105 = v6;
      v180.origin.x = rect;
      v180.origin.y = v6;
      v180.size.width = v8;
      v180.size.height = v10;
      [v104 sizeThatFits:{CGRectGetWidth(v180) + -20.0, 1.79769313e308}];
      v107 = v106;
      v108 = v37;
      v110 = v109;
      v181.origin.x = rect;
      v181.origin.y = rect_8;
      v181.size.width = v8;
      v181.size.height = v10;
      v111 = v10;
      v112 = floor(CGRectGetMidX(v181) + v107 * -0.5);
      v113 = [v25 font];
      [v113 ascender];
      v115 = floor(v108 - v114);

      v116 = v115 + 24.0;
      [v104 setFrame:{v112, v116, v107, v110}];
      v182.origin.x = v112;
      v10 = v111;
      v182.origin.y = v116;
      v117 = rect;
      v182.size.width = v107;
      v182.size.height = v110;
      v118 = CGRectGetMaxY(v182);
      v119 = [v104 font];
      [v119 descender];
      v121 = v118 + v120 + 24.0;
    }

    else
    {
      v117 = rect;
      v105 = v6;
      v121 = v37;
    }

    v38 = [(PHRegistrationView *)self errorLabel];
    v183.origin.x = v117;
    v183.origin.y = v105;
    v183.size.width = v8;
    v183.size.height = v10;
    [v38 sizeThatFits:{CGRectGetWidth(v183) + -20.0, 1.79769313e308}];
    v123 = v122;
    v125 = v124;
    v184.origin.x = v117;
    v184.origin.y = v105;
    v184.size.width = v8;
    v184.size.height = v10;
    v126 = v10;
    v127 = floor(CGRectGetMidX(v184) - v123 * 0.5);
    v128 = [v25 font];
    [v128 ascender];
    v130 = v117;
    v131 = floor(v121 - v129);

    [v38 setFrame:{v127, v131 + 24.0, v123, v125}];
    v91 = [(PHRegistrationView *)self continueButton];
    [v91 setFrame:{0.0, 0.0, 288.0, 50.0}];
    [v91 bounds];
    v134 = v133;
    v136 = v135;
    v138 = v137;
    if (v132 <= v8)
    {
      v139 = v132;
    }

    else
    {
      v139 = v8;
    }

    v185.origin.x = v130;
    v185.origin.y = rect_8;
    v185.size.width = v8;
    v185.size.height = v126;
    v140 = CGRectGetMidX(v185);
    v186.origin.x = v134;
    v186.origin.y = v136;
    v186.size.width = v139;
    v186.size.height = v138;
    v141 = floor(v140 - CGRectGetWidth(v186) * 0.5);
    [(PHRegistrationView *)self bounds];
    v143 = v142 + -60.0 - v138;
    [v91 setFrame:{v141, v143, v139, v138}];
    v144 = [(PHRegistrationView *)self waitingForActivationLabel];
    [v144 sizeToFit];

    v145 = [(PHRegistrationView *)self waitingForActivationLabel];
    [v145 frame];
    v147 = v146;
    v149 = v148;

    [(PHRegistrationView *)self frame];
    v151 = v150 * 0.5 - v147 * 0.5;
    v152 = [(PHRegistrationView *)self waitingForActivationLabel];
    [v152 setFrame:{v151, v138 * 0.5 + v143 - v149 * 0.5, v147, v149}];

    v187.origin.x = v141;
    v187.origin.y = v143;
    v187.size.width = v139;
    v187.size.height = v138;
    v153 = CGRectGetMaxY(v187);
    v154 = [v91 titleLabel];
    [v154 origin];
    v156 = v153 - v155;
    v157 = [v91 titleLabel];
    v158 = [v157 font];
    [v158 descender];
    v103 = ceil(v156 + v159 + 40.0);
  }

  [(PHRegistrationView *)self frame];
  [(PHRegistrationView *)self setContentSize:v160, v103];
}

- (void)_learnMorePressed:(id)a3
{
  v3 = CUTWeakLinkSymbol();
  v5 = +[UIApplication sharedApplication];
  v4 = v3();
  [v5 openURL:v4 withCompletionHandler:0];
}

- (void)_continueTouchUpInside:(id)a3
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10001C6E4;
  v9[3] = &unk_10010AD48;
  v9[4] = self;
  v3 = objc_retainBlock(v9);
  v4 = [[CoreTelephonyClient alloc] initWithQueue:&_dispatch_main_q];
  v5 = TUPreferredFaceTimeBundleIdentifier();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001C744;
  v7[3] = &unk_10010AF90;
  v8 = v3;
  v6 = v3;
  [v4 performNetworkAccessFlowIfAllowed:v5 ignoreForeground:0 completion:v7];
}

@end