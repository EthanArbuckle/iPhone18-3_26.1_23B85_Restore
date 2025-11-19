@interface _RAPPrivacyInformationController
- (_RAPPrivacyInformationController)initWithCompletion:(id)a3;
- (_RAPPrivacyInformationController)initWithCompletion:(id)a3 emailAddress:(id)a4 isUserEnteredEmailAddress:(BOOL)a5;
- (_RAPPrivacyInformationController)initWithShortcutType:(int64_t)a3 completion:(id)a4;
- (id)_createDetailsViewInView:(id)a3 constraints:(id)a4;
- (id)_createSendButton;
- (id)_createSkipButton;
- (id)_createSwitchViewInView:(id)a3 constraints:(id)a4;
- (id)_getEvent;
- (id)_obViewController;
- (id)_setupBottomViewInView:(id)a3 commonConstraints:(id)a4 portraitSpecificConstraints:(id)a5 landscapeSpecificConstraints:(id)a6;
- (id)_setupContainerViewInView:(id)a3 constraints:(id)a4 portraitSpecificConstraints:(id)a5 landscapeSpecificConstraints:(id)a6;
- (id)defaultPOIStyleAttributes;
- (id)setupContactViewsInContainer:(id)a3 constraints:(id)a4 portraitSpecificConstraints:(id)a5 landscapeSpecificConstraints:(id)a6;
- (id)setupTitleViewsInContainer:(id)a3 constraints:(id)a4 portraitSpecificConstraints:(id)a5 landscapeSpecificConstraints:(id)a6;
- (void)_sendButtonTapped;
- (void)_skipButtonTapped;
- (void)acceptPrivacyAgreement;
- (void)cancelPrivacyAgreement;
- (void)contentSizeDidChange:(id)a3;
- (void)setSkipButtonFont;
- (void)setSubtitleFont;
- (void)setupViews;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateCenterYConstraintIfNeeded;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation _RAPPrivacyInformationController

- (void)_skipButtonTapped
{
  completion = self->_completion;
  if (completion)
  {
    shouldShowPrivacy = self->_shouldShowPrivacy;
    v4 = [(_RAPPrivacyInformationController *)self _getEvent];
    completion[2](completion, 0, shouldShowPrivacy, v4);
  }
}

- (void)_sendButtonTapped
{
  if (self->_shouldShowPrivacy)
  {
    [RAPPrivacy setPrivacyConsent:1 allowEmail:[(UISwitch *)self->_followUpSwitch isOn]];
  }

  completion = self->_completion;
  if (completion)
  {
    shouldShowPrivacy = self->_shouldShowPrivacy;
    v5 = [(_RAPPrivacyInformationController *)self _getEvent];
    completion[2](completion, 1, shouldShowPrivacy, v5);
  }
}

- (void)acceptPrivacyAgreement
{
  v3 = [(_RAPPrivacyInformationController *)self _getEvent];
  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:10110 onTarget:1136 eventValue:v3];

  [RAPPrivacy setPrivacyConsent:1 allowEmail:[(UISwitch *)self->_followUpSwitch isOn]];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100F5041C;
  v6[3] = &unk_101661A90;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  [(_RAPPrivacyInformationController *)self dismissViewControllerAnimated:1 completion:v6];
}

- (id)_getEvent
{
  emailAddress = self->_emailAddress;
  hasValidEmail = self->_hasValidEmail;
  v4 = [(UISwitch *)self->_followUpSwitch isOn];

  return [RAPPrivacy emailAnalyticsEventForEmailAddress:emailAddress isValidEmail:hasValidEmail optedIn:v4];
}

- (void)cancelPrivacyAgreement
{
  v3 = [RAPPrivacy emailAnalyticsEventForEmailAddress:self->_emailAddress isValidEmail:self->_hasValidEmail optedIn:[(UISwitch *)self->_followUpSwitch isOn]];
  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:10109 onTarget:1136 eventValue:v3];

  v5 = +[NSNotificationCenter defaultCenter];
  v6 = [(_RAPPrivacyInformationController *)self _maps_uiScene];
  [v5 postNotificationName:@"RAPUserDidCancelPrivacyAgreementNotification" object:v6];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100F50614;
  v8[3] = &unk_101661A90;
  v8[4] = self;
  v9 = v3;
  v7 = v3;
  [(_RAPPrivacyInformationController *)self dismissViewControllerAnimated:1 completion:v8];
}

- (id)_createSkipButton
{
  v3 = [UIButton buttonWithType:0];
  skipButton = self->_skipButton;
  self->_skipButton = v3;

  [(UIButton *)self->_skipButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = self->_skipButton;
  v6 = +[UIColor systemBlueColor];
  [(UIButton *)v5 setTitleColor:v6 forState:0];

  [(_RAPPrivacyInformationController *)self setSkipButtonFont];
  v7 = [(UIButton *)self->_skipButton titleLabel];
  [v7 setTextAlignment:1];

  v8 = [(UIButton *)self->_skipButton titleLabel];
  [v8 setAdjustsFontSizeToFitWidth:1];

  v9 = [(UIButton *)self->_skipButton titleLabel];
  [v9 setNumberOfLines:0];

  appearance = self->_appearance;
  v11 = self->_skipButton;
  v12 = +[NSBundle mainBundle];
  v13 = v12;
  if (appearance == 3)
  {
    v14 = @"Skip [Report an Issue Home/Work] [Confirmation]";
  }

  else
  {
    v14 = @"Skip [Report an Issue] [Confirmation]";
  }

  v15 = [v12 localizedStringForKey:v14 value:@"localized string not found" table:0];
  [(UIButton *)v11 setTitle:v15 forState:0];

  [(UIButton *)self->_skipButton setContentEdgeInsets:15.0, 14.0, 15.0, 14.0];
  [(UIButton *)self->_skipButton addTarget:self action:"_skipButtonTapped" forControlEvents:64];
  v16 = self->_skipButton;

  return v16;
}

- (id)_createSendButton
{
  v3 = [UIButton buttonWithType:0];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [v3 layer];
  [v4 setCornerRadius:10.0];

  v5 = +[UIColor systemBlueColor];
  [v3 setBackgroundColor:v5];

  v6 = objc_opt_new();
  [v3 setBackgroundImage:v6 forState:0];

  v7 = +[UIColor whiteColor];
  [v3 setTitleColor:v7 forState:0];

  v8 = [(_RAPPrivacyInformationController *)self sendButtonFont];
  v9 = [v3 titleLabel];
  [v9 setFont:v8];

  [v3 setTitleEdgeInsets:{0.0, 10.0, 0.0, 10.0}];
  v10 = [v3 titleLabel];
  [v10 setAdjustsFontSizeToFitWidth:1];

  appearance = self->_appearance;
  v12 = +[NSBundle mainBundle];
  v13 = v12;
  if (appearance == 3)
  {
    v14 = @"Report this issue to Apple [RAP Home/Work]";
  }

  else
  {
    v14 = @"Send [Report an Issue] [Confirmation]";
  }

  v15 = [v12 localizedStringForKey:v14 value:@"localized string not found" table:0];
  [v3 setTitle:v15 forState:0];

  [v3 addTarget:self action:"_sendButtonTapped" forControlEvents:64];

  return v3;
}

- (id)_setupBottomViewInView:(id)a3 commonConstraints:(id)a4 portraitSpecificConstraints:(id)a5 landscapeSpecificConstraints:(id)a6
{
  v59 = a6;
  v58 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v13 = [(_RAPPrivacyInformationController *)self view];
  v14 = [v13 backgroundColor];
  [(UIView *)v12 setBackgroundColor:v14];

  [(UIView *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v11 addSubview:v12];
  v15 = [(_RAPPrivacyInformationController *)self _createSendButton];
  [(UIView *)v12 addSubview:v15];
  v57 = [(_RAPPrivacyInformationController *)self _createSkipButton];
  [(UIView *)v12 addSubview:self->_skipButton];
  v16 = [(UIView *)v12 leadingAnchor];
  v17 = [v11 safeAreaLayoutGuide];
  v18 = [v17 leadingAnchor];
  v19 = [v16 constraintEqualToAnchor:v18];
  [v19 setActive:1];

  v20 = [(UIView *)v12 trailingAnchor];
  v21 = [v11 safeAreaLayoutGuide];
  v22 = [v21 trailingAnchor];
  v23 = [v20 constraintEqualToAnchor:v22];
  [v23 setActive:1];

  v24 = [(UIView *)v12 bottomAnchor];
  v25 = [v11 safeAreaLayoutGuide];
  v26 = [v25 bottomAnchor];
  v27 = [v24 constraintEqualToAnchor:v26];
  [v27 setActive:1];

  v28 = _NSDictionaryOfVariableBindings(@"sendButton", v15, 0);
  v29 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[sendButton(288)]" options:0 metrics:0 views:v28];
  [v58 addObjectsFromArray:v29];

  v30 = _NSDictionaryOfVariableBindings(@"sendButton", v15, 0);
  v31 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-44-[sendButton]-44-|", 0, 0, v30);
  [v59 addObjectsFromArray:v31];

  v32 = [v15 centerXAnchor];
  v33 = [v11 centerXAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];
  [v10 addObject:v34];

  v35 = [v57 centerXAnchor];
  v36 = [v11 centerXAnchor];

  v37 = [v35 constraintEqualToAnchor:v36];
  [v10 addObject:v37];

  v38 = _NSDictionaryOfVariableBindings(@"sendButton", v15, 0);
  v39 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[sendButton(50)]" options:0 metrics:0 views:v38];
  [v10 addObjectsFromArray:v39];

  v40 = [(UIView *)v12 topAnchor];
  v41 = [v15 topAnchor];
  v42 = [v40 constraintEqualToAnchor:v41 constant:-25.0];
  [v10 addObject:v42];

  v43 = [v15 bottomAnchor];
  v44 = [v57 topAnchor];
  v45 = [v43 constraintEqualToAnchor:v44 constant:-20.0];
  [v10 addObject:v45];

  v46 = [v57 lastBaselineAnchor];
  v47 = [(UIView *)v12 bottomAnchor];
  v48 = [v46 constraintEqualToAnchor:v47 constant:-27.0];
  [v10 addObject:v48];

  v49 = [v15 widthAnchor];
  v50 = [v57 widthAnchor];
  v51 = [v49 constraintEqualToAnchor:v50];
  [v10 addObject:v51];

  bottomView = self->_bottomView;
  self->_bottomView = v12;
  v53 = v12;

  v54 = self->_bottomView;
  v55 = v54;

  return v54;
}

- (id)_createDetailsViewInView:(id)a3 constraints:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 addSubview:v8];

  v9 = _NSDictionaryOfVariableBindings(@"detailsView", v8, 0);
  v10 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[detailsView]|" options:0 metrics:0 views:v9];
  [v6 addObjectsFromArray:v10];

  v11 = objc_alloc_init(UILabel);
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = +[UIColor clearColor];
  [v11 setBackgroundColor:v12];

  v13 = [(_RAPPrivacyInformationController *)self followUpDetailFont];
  [v11 setFont:v13];

  [v11 setNumberOfLines:0];
  if (self->_hasValidEmail)
  {
    v14 = 4;
  }

  else
  {
    v14 = 1;
  }

  [v11 setTextAlignment:v14];
  v15 = +[UIColor secondaryLabelColor];
  [v11 setTextColor:v15];

  v16 = [RAPPrivacy informationalMessageWithEmailAddress:self->_emailAddress isUserEnteredEmailAddress:self->_isUserEnteredEmailAddress isMac:sub_10000FA08(self) == 5];
  [v11 setText:v16];

  [v8 addSubview:v11];
  v17 = _NSDictionaryOfVariableBindings(@"followUpDescription", v11, 0);
  v18 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-[followUpDescription]-|", 0, 0, v17);
  [v6 addObjectsFromArray:v18];

  v19 = objc_opt_new();
  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 addSubview:v19];
  v20 = _NSDictionaryOfVariableBindings(@"privacyView", v19, 0);
  v21 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[privacyView]|" options:0 metrics:0 views:v20];
  [v6 addObjectsFromArray:v21];

  v22 = [OBPrivacyLinkController linkWithBundleIdentifier:@"com.apple.onboarding.mapsrap"];
  [(_RAPPrivacyInformationController *)self addChildViewController:v22];
  v23 = [v22 view];
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v19 addSubview:v23];
  [v22 didMoveToParentViewController:self];
  v24 = _NSDictionaryOfVariableBindings(@"privacyLinkView", v23, 0);
  v25 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[privacyLinkView]|" options:0 metrics:0 views:v24];
  [v6 addObjectsFromArray:v25];

  v26 = _NSDictionaryOfVariableBindings(@"privacyLinkView", v23, 0);
  v27 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[privacyLinkView]|" options:0 metrics:0 views:v26];
  [v6 addObjectsFromArray:v27];

  v28 = _NSDictionaryOfVariableBindings(@"followUpDescription, privacyView", v11, v19, 0);
  v29 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|[followUpDescription]-40-[privacyView]|", 0, 0, v28);
  [v6 addObjectsFromArray:v29];

  return v8;
}

- (id)_createSwitchViewInView:(id)a3 constraints:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 addSubview:v8];

  v9 = objc_alloc_init(UIView);
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = +[UIColor separatorColor];
  [v9 setBackgroundColor:v10];

  [v8 addSubview:v9];
  v11 = objc_alloc_init(UILabel);
  v12 = [(_RAPPrivacyInformationController *)self followUpLabelFont];
  [v11 setFont:v12];

  [v11 setNumberOfLines:0];
  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"Follow up by email" value:@"localized string not found" table:0];
  [v11 setText:v14];

  [v11 setTextAlignment:4];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = +[UIColor labelColor];
  [v11 setTextColor:v15];

  [v8 addSubview:v11];
  v16 = objc_alloc_init(UISwitch);
  followUpSwitch = self->_followUpSwitch;
  self->_followUpSwitch = v16;

  [(UISwitch *)self->_followUpSwitch setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UISwitch *)self->_followUpSwitch setOn:1];
  v42 = v8;
  [v8 addSubview:self->_followUpSwitch];
  v18 = objc_alloc_init(UIView);
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  v19 = +[UIColor separatorColor];
  [v18 setBackgroundColor:v19];

  [v8 addSubview:v18];
  v20 = [v9 leadingAnchor];
  v21 = [(_RAPPrivacyInformationController *)self view];
  v22 = [v21 leadingAnchor];
  v23 = [v20 constraintEqualToAnchor:v22];
  [v6 addObject:v23];

  v24 = [v9 trailingAnchor];
  v25 = [(_RAPPrivacyInformationController *)self view];
  v26 = [v25 trailingAnchor];
  v27 = [v24 constraintEqualToAnchor:v26];
  [v6 addObject:v27];

  v28 = _NSDictionaryOfVariableBindings(@"followUpLabel, _followUpSwitch", v11, self->_followUpSwitch, 0);
  v29 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-[followUpLabel]-(>=0)-[_followUpSwitch]-|", 0, 0, v28);
  [v6 addObjectsFromArray:v29];

  v30 = [v18 leadingAnchor];
  v31 = [v9 leadingAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];
  [v6 addObject:v32];

  v33 = [v18 trailingAnchor];
  v34 = [v9 trailingAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];
  [v6 addObject:v35];

  v36 = _NSDictionaryOfVariableBindings(@"topLineView, followUpLabel, bottomLineView", v9, v11, v18, 0);
  v37 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|[topLineView(1)]-(spacing)-[followUpLabel]-(spacing)-[bottomLineView(==topLineView)]|", 0, &off_1016EE740, v36);
  [v6 addObjectsFromArray:v37];

  v38 = [(UISwitch *)self->_followUpSwitch centerYAnchor];
  v39 = [v11 centerYAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];
  [v6 addObject:v40];

  return v42;
}

- (id)setupContactViewsInContainer:(id)a3 constraints:(id)a4 portraitSpecificConstraints:(id)a5 landscapeSpecificConstraints:(id)a6
{
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(UIView);
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 addSubview:v10];

  v11 = [(_RAPPrivacyInformationController *)self _createDetailsViewInView:v10 constraints:v8];
  v12 = _NSDictionaryOfVariableBindings(@"detailsView", v11, 0);
  v13 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[detailsView]|" options:0 metrics:0 views:v12];
  [v8 addObjectsFromArray:v13];

  if (self->_isUserEnteredEmailAddress || !sub_1007418E4(self->_emailAddress) || (MapsFeature_IsEnabled_RAPCommunityID() & 1) != 0)
  {
    v14 = _NSDictionaryOfVariableBindings(@"detailsView", v11, 0);
    v15 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-[detailsView]-|", 0, 0, v14);
    [v8 addObjectsFromArray:v15];
  }

  else
  {
    v14 = [(_RAPPrivacyInformationController *)self _createSwitchViewInView:v10 constraints:v8];
    v19 = _NSDictionaryOfVariableBindings(@"switchView", v14, 0);
    v20 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[switchView]|" options:0 metrics:0 views:v19];
    [v8 addObjectsFromArray:v20];

    v15 = _NSDictionaryOfVariableBindings(@"switchView, detailsView", v14, v11, 0);
    v21 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-[switchView]-(spacing)-[detailsView]-|", 0, &off_1016EE718, v15);
    [v8 addObjectsFromArray:v21];
  }

  v16 = _NSDictionaryOfVariableBindings(@"contactView", v10, 0);
  v17 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-[contactView]-|", 0, 0, v16);
  [v8 addObjectsFromArray:v17];

  return v10;
}

- (id)setupTitleViewsInContainer:(id)a3 constraints:(id)a4 portraitSpecificConstraints:(id)a5 landscapeSpecificConstraints:(id)a6
{
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(UIView);
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 addSubview:v10];

  v11 = [[UIImageView alloc] initWithImage:self->_portraitIcon];
  iconView = self->_iconView;
  self->_iconView = v11;

  [(UIImageView *)self->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
  [v10 addSubview:self->_iconView];
  v13 = objc_alloc_init(UILabel);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v13;

  v15 = [(_RAPPrivacyInformationController *)self titleFont];
  [(UILabel *)self->_titleLabel setFont:v15];

  [(UILabel *)self->_titleLabel setNumberOfLines:0];
  appearance = self->_appearance;
  v17 = +[NSBundle mainBundle];
  v18 = v17;
  if (appearance == 3)
  {
    v19 = @"Report this Issue [Report an Issue] [Home/work Confirmation]";
  }

  else
  {
    v19 = @"Report an Issue [title]";
  }

  v20 = [v17 localizedStringForKey:v19 value:@"localized string not found" table:0];
  [(UILabel *)self->_titleLabel setText:v20];

  [(UILabel *)self->_titleLabel setTextAlignment:1];
  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v21 = objc_alloc_init(UILabel);
  subtitleLabel = self->_subtitleLabel;
  self->_subtitleLabel = v21;

  [(_RAPPrivacyInformationController *)self setSubtitleFont];
  [(UILabel *)self->_subtitleLabel setNumberOfLines:0];
  if (self->_appearance == 3)
  {
    [RAPPrivacy callToActionMessageForShortcutType:self->_shortcutType];
  }

  else
  {
    +[RAPPrivacy callToActionMessage];
  }
  v23 = ;
  [(UILabel *)self->_subtitleLabel setText:v23];

  [(UILabel *)self->_subtitleLabel setTextAlignment:1];
  [(UILabel *)self->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [v10 addSubview:self->_titleLabel];
  [v10 addSubview:self->_subtitleLabel];
  v24 = [(UIImageView *)self->_iconView centerXAnchor];
  v25 = [(_RAPPrivacyInformationController *)self view];
  v26 = [v25 centerXAnchor];
  v27 = [v24 constraintEqualToAnchor:v26];
  [v8 addObject:v27];

  v28 = [(UILabel *)self->_titleLabel centerXAnchor];
  v29 = [(UIImageView *)self->_iconView centerXAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];
  [v8 addObject:v30];

  v31 = [(UILabel *)self->_subtitleLabel centerXAnchor];
  v32 = [(UILabel *)self->_titleLabel centerXAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];
  [v8 addObject:v33];

  v34 = _NSDictionaryOfVariableBindings(@"_titleLabel", self->_titleLabel, 0);
  v35 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-[_titleLabel]-|", 0, 0, v34);
  [v8 addObjectsFromArray:v35];

  v36 = _NSDictionaryOfVariableBindings(@"_subtitleLabel", self->_subtitleLabel, 0);
  v37 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-35-[_subtitleLabel]-35-|", 0, 0, v36);
  [v8 addObjectsFromArray:v37];

  v38 = [(UIImageView *)self->_iconView topAnchor];
  v39 = [v10 topAnchor];
  v40 = [v38 constraintEqualToSystemSpacingBelowAnchor:v39 multiplier:1.0];
  [v8 addObject:v40];

  v41 = [(UILabel *)self->_titleLabel topAnchor];
  v42 = [(UIImageView *)self->_iconView bottomAnchor];
  v43 = [v41 constraintEqualToAnchor:v42 constant:20.0];
  [v8 addObject:v43];

  v44 = _NSDictionaryOfVariableBindings(@"_titleLabel, _subtitleLabel", self->_titleLabel, self->_subtitleLabel, 0);
  v45 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:[_titleLabel]-(spacing)-[_subtitleLabel]|", 0, &off_1016EE6F0, v44);
  [v8 addObjectsFromArray:v45];

  return v10;
}

- (id)_setupContainerViewInView:(id)a3 constraints:(id)a4 portraitSpecificConstraints:(id)a5 landscapeSpecificConstraints:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v89 = a3;
  v13 = objc_alloc_init(UIScrollView);
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = [(_RAPPrivacyInformationController *)self view];
  [v14 addSubview:v13];

  [v13 setScrollEnabled:1];
  [v13 setShowsVerticalScrollIndicator:1];
  v15 = [v13 topAnchor];
  v16 = [(_RAPPrivacyInformationController *)self view];
  v17 = [v16 safeAreaLayoutGuide];
  v18 = [v17 topAnchor];
  v19 = [v15 constraintEqualToAnchor:v18];
  [v19 setActive:1];

  v20 = [v13 leadingAnchor];
  v21 = [(_RAPPrivacyInformationController *)self view];
  v22 = [v21 safeAreaLayoutGuide];
  v23 = [v22 leadingAnchor];
  v24 = [v20 constraintEqualToAnchor:v23];
  [v24 setActive:1];

  v25 = [v13 trailingAnchor];
  v26 = [(_RAPPrivacyInformationController *)self view];
  v27 = [v26 safeAreaLayoutGuide];
  v28 = [v27 trailingAnchor];
  v29 = [v25 constraintEqualToAnchor:v28];
  [v29 setActive:1];

  v30 = [v13 bottomAnchor];
  v31 = [(_RAPPrivacyInformationController *)self view];
  v32 = [v31 safeAreaLayoutGuide];
  v33 = [v32 bottomAnchor];
  v34 = [v30 constraintEqualToAnchor:v33];
  [v34 setActive:1];

  v35 = self;
  objc_storeStrong(&self->_scrollView, v13);
  v36 = objc_alloc_init(UIView);
  [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
  objc_storeStrong(&v35->_containerView, v36);
  [v13 addSubview:v36];
  v91 = v11;
  v37 = v11;
  v38 = v12;
  firstValue = [(_RAPPrivacyInformationController *)v35 setupTitleViewsInContainer:v36 constraints:v10 portraitSpecificConstraints:v37 landscapeSpecificConstraints:v12];
  if (v35->_appearance == 3 && !v35->_shouldShowPrivacy)
  {
    v93 = 0;
    v39 = v10;
  }

  else
  {
    v39 = v10;
    v93 = [(_RAPPrivacyInformationController *)v35 setupContactViewsInContainer:v36 constraints:v10 portraitSpecificConstraints:v91 landscapeSpecificConstraints:v38];
  }

  v40 = [v36 leadingAnchor];
  v41 = [v89 safeAreaLayoutGuide];
  v42 = [v41 leadingAnchor];
  v43 = [v40 constraintEqualToAnchor:v42];
  [v43 setActive:1];

  v44 = [v36 trailingAnchor];
  v45 = [v89 safeAreaLayoutGuide];

  v46 = [v45 trailingAnchor];
  v47 = [v44 constraintEqualToAnchor:v46];
  [v47 setActive:1];

  v48 = [v36 topAnchor];
  v49 = [v13 topAnchor];
  v50 = [v48 constraintGreaterThanOrEqualToAnchor:v49];
  [v50 setActive:1];

  v51 = [v36 bottomAnchor];
  v52 = [v13 bottomAnchor];
  v53 = [v51 constraintLessThanOrEqualToAnchor:v52];
  [v53 setActive:1];

  v54 = [v36 centerYAnchor];
  v55 = [v13 centerYAnchor];
  v56 = [v54 constraintEqualToAnchor:v55];
  portraitAccessibilityConstraint = v35->_portraitAccessibilityConstraint;
  v35->_portraitAccessibilityConstraint = v56;

  [(_RAPPrivacyInformationController *)v35 updateCenterYConstraintIfNeeded];
  v90 = v36;
  v86 = v13;
  v87 = v38;
  if (v93)
  {
    v58 = _NSDictionaryOfVariableBindings(@"titleView, contactView", firstValue, v93, 0);
    v59 = @"V:|-40-[titleView]-40-[contactView]-|";
  }

  else
  {
    v58 = _NSDictionaryOfVariableBindings(@"titleView", firstValue, 0);
    v59 = @"V:|-40-[titleView]-40-|";
  }

  v60 = [NSLayoutConstraint constraintsWithVisualFormat:v59 options:0 metrics:0 views:v58];
  [v39 addObjectsFromArray:v60];

  v83 = [firstValue leadingAnchor];
  v84 = [(_RAPPrivacyInformationController *)v35 view];
  v61 = [v84 safeAreaLayoutGuide];
  v62 = [v61 leadingAnchor];
  v63 = [v83 constraintEqualToSystemSpacingAfterAnchor:v62 multiplier:1.0];
  v95[0] = v63;
  v64 = [(_RAPPrivacyInformationController *)v35 view];
  v65 = [v64 safeAreaLayoutGuide];
  v66 = [v65 trailingAnchor];
  [firstValue trailingAnchor];
  v67 = v82 = v35;
  v68 = [v66 constraintEqualToSystemSpacingAfterAnchor:v67 multiplier:1.0];
  v95[1] = v68;
  v69 = [NSArray arrayWithObjects:v95 count:2];
  v88 = v39;
  [v39 addObjectsFromArray:v69];

  v70 = v93;
  if (v93)
  {
    v85 = [v93 leadingAnchor];
    v71 = [v90 safeAreaLayoutGuide];
    v72 = [v71 leadingAnchor];
    v73 = [v85 constraintEqualToSystemSpacingAfterAnchor:v72 multiplier:1.0];
    v94[0] = v73;
    v74 = [(_RAPPrivacyInformationController *)v82 view];
    v75 = [v74 safeAreaLayoutGuide];
    v76 = [v75 trailingAnchor];
    v77 = [v90 safeAreaLayoutGuide];
    v78 = [v77 trailingAnchor];
    v79 = [v76 constraintEqualToSystemSpacingAfterAnchor:v78 multiplier:1.0];
    v94[1] = v79;
    v80 = [NSArray arrayWithObjects:v94 count:2];
    [v88 addObjectsFromArray:v80];

    v70 = v93;
  }

  return v90;
}

- (void)setupViews
{
  v3 = +[NSMutableArray array];
  portraitSpecificConstraints = self->_portraitSpecificConstraints;
  self->_portraitSpecificConstraints = v3;

  v5 = +[NSMutableArray array];
  landscapeSpecificConstraints = self->_landscapeSpecificConstraints;
  self->_landscapeSpecificConstraints = v5;

  v11 = +[NSMutableArray array];
  v7 = [(_RAPPrivacyInformationController *)self view];
  v8 = [(_RAPPrivacyInformationController *)self _setupContainerViewInView:v7 constraints:v11 portraitSpecificConstraints:self->_portraitSpecificConstraints landscapeSpecificConstraints:self->_landscapeSpecificConstraints];

  if (self->_appearance == 3)
  {
    v9 = [(_RAPPrivacyInformationController *)self view];
    v10 = [(_RAPPrivacyInformationController *)self _setupBottomViewInView:v9 commonConstraints:v11 portraitSpecificConstraints:self->_portraitSpecificConstraints landscapeSpecificConstraints:self->_landscapeSpecificConstraints];
  }

  [NSLayoutConstraint activateConstraints:v11];
}

- (void)updateCenterYConstraintIfNeeded
{
  [(NSLayoutConstraint *)self->_portraitAccessibilityConstraint setActive:0];
  if (self->_appearance == 3 && !self->_accessibilityEnabled && !self->_shouldShowPrivacy)
  {
    portraitAccessibilityConstraint = self->_portraitAccessibilityConstraint;

    [(NSLayoutConstraint *)portraitAccessibilityConstraint setActive:1];
  }
}

- (void)setSkipButtonFont
{
  v3 = 16.0;
  if (self->_accessibilityEnabled)
  {
    v3 = 15.0;
  }

  v5 = [UIFont _maps_systemFontWithSize:v3];
  v4 = [(UIButton *)self->_skipButton titleLabel];
  [v4 setFont:v5];
}

- (void)setSubtitleFont
{
  v3 = 17.0;
  if (self->_accessibilityEnabled)
  {
    v3 = 16.0;
  }

  v4 = [UIFont _maps_systemFontWithSize:v3];
  [(UILabel *)self->_subtitleLabel setFont:v4];
}

- (void)contentSizeDidChange:(id)a3
{
  accessibilityEnabled = self->_accessibilityEnabled;
  v5 = +[UIFont accessibilityTextEnabled];
  self->_accessibilityEnabled = v5;
  if (accessibilityEnabled != v5)
  {
    [(_RAPPrivacyInformationController *)self setSubtitleFont];
    [(_RAPPrivacyInformationController *)self setSkipButtonFont];

    [(_RAPPrivacyInformationController *)self updateCenterYConstraintIfNeeded];
  }
}

- (void)viewDidLayoutSubviews
{
  v9.receiver = self;
  v9.super_class = _RAPPrivacyInformationController;
  [(_RAPPrivacyInformationController *)&v9 viewDidLayoutSubviews];
  if (self->_appearance == 3)
  {
    [(UIView *)self->_bottomView frame];
    v4 = v3;
    [(UIScrollView *)self->_scrollView contentInset];
    v6 = v5;
    [(UIScrollView *)self->_scrollView contentInset];
    v8 = v7;
    [(UIScrollView *)self->_scrollView contentInset];
    [(UIScrollView *)self->_scrollView setContentInset:v6, v8, v4];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v12.receiver = self;
  v12.super_class = _RAPPrivacyInformationController;
  [(_RAPPrivacyInformationController *)&v12 traitCollectionDidChange:a3];
  v4 = [(_RAPPrivacyInformationController *)self view];
  v5 = [v4 traitCollection];
  v6 = [v5 verticalSizeClass];

  iconView = self->_iconView;
  if (iconView)
  {
    v8 = &OBJC_IVAR____RAPPrivacyInformationController__portraitIcon;
    if (v6 == 1)
    {
      v8 = &OBJC_IVAR____RAPPrivacyInformationController__landscapeIcon;
    }

    [(UIImageView *)iconView setImage:*(&self->super.super.super.isa + *v8)];
  }

  v9 = &OBJC_IVAR____RAPPrivacyInformationController__portraitSpecificConstraints;
  v10 = v6 == 1;
  if (v6 == 1)
  {
    v11 = &OBJC_IVAR____RAPPrivacyInformationController__landscapeSpecificConstraints;
  }

  else
  {
    v11 = &OBJC_IVAR____RAPPrivacyInformationController__portraitSpecificConstraints;
  }

  if (!v10)
  {
    v9 = &OBJC_IVAR____RAPPrivacyInformationController__landscapeSpecificConstraints;
  }

  [NSLayoutConstraint deactivateConstraints:*(&self->super.super.super.isa + *v9)];
  [NSLayoutConstraint activateConstraints:*(&self->super.super.super.isa + *v11)];
}

- (id)defaultPOIStyleAttributes
{
  v2 = [[GEOFeatureStyleAttributes alloc] initWithAttributes:{5, 3, 6, 348, 65572, 1, 0}];

  return v2;
}

- (id)_obViewController
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"Report an Issue [Report an Issue]" value:@"localized string not found" table:0];

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Help improve Maps by reporting issues to Apple [Report an Issue]" value:@"localized string not found" table:0];

  v7 = [[OBWelcomeController alloc] initWithTitle:v4 detailText:v6 symbolName:@"exclamationmark.bubble.fill"];
  [v7 setModalPresentationStyle:2];
  v8 = [v7 headerView];
  [v8 setAccessibilityIdentifier:@"RAPPrivacyConsentHeader"];

  v9 = [v7 buttonTray];
  [v9 setAccessibilityIdentifier:@"RAPPrivacyConsentButtonTray"];

  v10 = +[OBBoldTrayButton boldButton];
  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"Continue [Report an Issue]" value:@"localized string not found" table:0];
  [v10 setTitle:v12 forState:0];

  [v10 addTarget:self action:"acceptPrivacyAgreement" forControlEvents:64];
  [v10 setAccessibilityIdentifier:@"RAPPrivacyConsentAgreeButton"];
  v13 = +[OBLinkTrayButton linkButton];
  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"Not Now [Report an Issue]" value:@"localized string not found" table:0];
  [v13 setTitle:v15 forState:0];

  [v13 addTarget:self action:"cancelPrivacyAgreement" forControlEvents:64];
  [v13 setAccessibilityIdentifier:@"RAPPrivacyConsentDeclineButton"];
  v16 = [v7 buttonTray];
  [v16 addButton:v10];

  v17 = [v7 buttonTray];
  [v17 addButton:v13];

  v18 = [v7 buttonTray];
  v21 = @"com.apple.onboarding.mapsrap";
  v19 = [NSArray arrayWithObjects:&v21 count:1];
  [v18 setPrivacyLinkForBundles:v19];

  [v7 setAccessibilityIdentifier:@"RAPPrivacyConsentView"];

  return v7;
}

- (void)viewDidLoad
{
  v60.receiver = self;
  v60.super_class = _RAPPrivacyInformationController;
  [(_RAPPrivacyInformationController *)&v60 viewDidLoad];
  if (!MapsFeature_IsEnabled_RAPCommunityID())
  {
    [(_RAPPrivacyInformationController *)self setEdgesForExtendedLayout:0];
    v10 = +[UIColor systemBackgroundColor];
    v11 = [(_RAPPrivacyInformationController *)self view];
    [v11 setBackgroundColor:v10];

    v12 = +[UIColor systemBackgroundColor];
    v13 = [(_RAPPrivacyInformationController *)self navigationController];
    v14 = [v13 view];
    [v14 setBackgroundColor:v12];

    if (self->_appearance != 3)
    {
      v17 = [UIImage imageNamed:@"RAPMapIcon"];
      landscapeIcon = self->_landscapeIcon;
      self->_landscapeIcon = v17;

      objc_storeStrong(&self->_portraitIcon, v17);
      v19 = [UIBarButtonItem alloc];
      v20 = +[NSBundle mainBundle];
      v21 = [v20 localizedStringForKey:@"Disagree [Report an Issue]" value:@"localized string not found" table:0];
      v22 = [v19 initWithTitle:v21 style:0 target:self action:"cancelPrivacyAgreement"];
      v23 = [(_RAPPrivacyInformationController *)self navigationItem];
      [v23 setLeftBarButtonItem:v22];

      v24 = [UIBarButtonItem alloc];
      v25 = +[NSBundle mainBundle];
      v26 = [v25 localizedStringForKey:@"Agree [Report an Issue]" value:@"localized string not found" table:0];
      v27 = [v24 initWithTitle:v26 style:0 target:self action:"acceptPrivacyAgreement"];
      v28 = [(_RAPPrivacyInformationController *)self navigationItem];
      [v28 setRightBarButtonItem:v27];

LABEL_22:
      self->_accessibilityEnabled = +[UIFont accessibilityTextEnabled];
      [(_RAPPrivacyInformationController *)self setupViews];
      v3 = +[NSNotificationCenter defaultCenter];
      [v3 addObserver:self selector:"contentSizeDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];
      goto LABEL_23;
    }

    shortcutType = self->_shortcutType;
    if (shortcutType == 5)
    {
      v16 = +[GEOFeatureStyleAttributes schoolStyleAttributes];
    }

    else if (shortcutType == 3)
    {
      v16 = +[GEOFeatureStyleAttributes workStyleAttributes];
    }

    else
    {
      if (shortcutType == 2)
      {
        +[GEOFeatureStyleAttributes homeStyleAttributes];
      }

      else
      {
        [(_RAPPrivacyInformationController *)self defaultPOIStyleAttributes];
      }
      v16 = ;
    }

    v25 = v16;
    v29 = +[MKSystemController sharedInstance];
    [v29 screenScale];
    v31 = v30;

    v32 = [(_RAPPrivacyInformationController *)self traitCollection];
    v33 = [v32 userInterfaceStyle] == 2;

    LOBYTE(v54) = v33;
    v34 = [MKIconManager imageForStyle:v25 size:4 forScale:1 format:0 transparent:0 transitMode:0 isCarplay:v31 nightMode:v54];
    portraitIcon = self->_portraitIcon;
    self->_portraitIcon = v34;

    LOBYTE(v55) = v33;
    v36 = [MKIconManager imageForStyle:v25 size:3 forScale:1 format:0 transparent:0 transitMode:0 isCarplay:v31 nightMode:v55];
    v37 = self->_landscapeIcon;
    self->_landscapeIcon = v36;

    v38 = +[RAPPrivacy hasReceivedPrivacyConsent];
    self->_shouldShowPrivacy = v38 ^ 1;
    if ((v38 & 1) != 0 || ![(NSString *)self->_emailAddress length])
    {
      goto LABEL_22;
    }

    if (_GEOConfigHasValue())
    {
      if (GEOConfigGetBOOL())
      {
LABEL_17:
        v39 = 1;
LABEL_21:
        self->_hasValidEmail = v39;
        goto LABEL_22;
      }
    }

    else
    {
      v59 = [NSNumber numberWithUnsignedInt:118];
      v61[0] = v59;
      v62[0] = &off_1016EE2B8;
      v58 = [NSNumber numberWithUnsignedInt:119];
      v61[1] = v58;
      v62[1] = &off_1016EE2E0;
      v57 = [NSNumber numberWithUnsignedInt:120];
      v61[2] = v57;
      v62[2] = &off_1016EE308;
      v56 = [NSNumber numberWithUnsignedInt:121];
      v61[3] = v56;
      v62[3] = &off_1016EE330;
      v40 = [NSNumber numberWithUnsignedInt:122];
      v61[4] = v40;
      v62[4] = &off_1016EE358;
      v41 = [NSNumber numberWithUnsignedInt:123];
      v61[5] = v41;
      v62[5] = &off_1016EE380;
      v42 = [NSNumber numberWithUnsignedInt:124];
      v61[6] = v42;
      v62[6] = &off_1016EE3A8;
      v43 = [NSNumber numberWithUnsignedInt:125];
      v61[7] = v43;
      v62[7] = &off_1016EE3D0;
      v44 = [NSNumber numberWithUnsignedInt:126];
      v61[8] = v44;
      v62[8] = &off_1016EE3F8;
      v45 = [NSNumber numberWithUnsignedInt:398];
      v61[9] = v45;
      v62[9] = &off_1016EE420;
      v46 = [NSDictionary dictionaryWithObjects:v62 forKeys:v61 count:10];

      v47 = [NSNumber numberWithUnsignedInt:114];
      v48 = [v46 objectForKeyedSubscript:v47];

      v49 = +[GEOCountryConfiguration sharedConfiguration];
      v50 = [v49 countryCode];
      v51 = [v48 objectForKey:v50];

      if (v51)
      {
        v52 = [v51 BOOLValue];

        if (v52)
        {
          goto LABEL_17;
        }
      }

      else
      {
        BOOL = GEOConfigGetBOOL();

        if (BOOL)
        {
          goto LABEL_17;
        }
      }
    }

    v39 = sub_1007418E4(self->_emailAddress);
    goto LABEL_21;
  }

  v3 = [(_RAPPrivacyInformationController *)self _obViewController];
  [(_RAPPrivacyInformationController *)self addChildViewController:v3];
  v4 = [(_RAPPrivacyInformationController *)self view];
  v5 = [v3 view];
  [v4 addSubview:v5];

  [v3 didMoveToParentViewController:self];
  v6 = [v3 view];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = [v3 view];
  v8 = [(_RAPPrivacyInformationController *)self view];
  v9 = [v7 _maps_constraintsForCenteringInView:v8];
  [NSLayoutConstraint activateConstraints:v9];

LABEL_23:
}

- (_RAPPrivacyInformationController)initWithShortcutType:(int64_t)a3 completion:(id)a4
{
  result = [(_RAPPrivacyInformationController *)self initWithCompletion:a4];
  if (result)
  {
    result->_appearance = 3;
    result->_shortcutType = a3;
  }

  return result;
}

- (_RAPPrivacyInformationController)initWithCompletion:(id)a3 emailAddress:(id)a4 isUserEnteredEmailAddress:(BOOL)a5
{
  v9 = a4;
  v10 = [(_RAPPrivacyInformationController *)self initWithCompletion:a3];
  v11 = v10;
  if (v10)
  {
    v10->_isUserEnteredEmailAddress = a5;
    objc_storeStrong(&v10->_emailAddress, a4);
  }

  return v11;
}

- (_RAPPrivacyInformationController)initWithCompletion:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _RAPPrivacyInformationController;
  v5 = [(_RAPPrivacyInformationController *)&v11 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [v4 copy];
    completion = v5->_completion;
    v5->_completion = v6;

    v5->_isUserEnteredEmailAddress = 0;
    v8 = sub_1007412FC();
    emailAddress = v5->_emailAddress;
    v5->_emailAddress = v8;
  }

  return v5;
}

@end