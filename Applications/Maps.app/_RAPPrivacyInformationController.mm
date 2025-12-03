@interface _RAPPrivacyInformationController
- (_RAPPrivacyInformationController)initWithCompletion:(id)completion;
- (_RAPPrivacyInformationController)initWithCompletion:(id)completion emailAddress:(id)address isUserEnteredEmailAddress:(BOOL)emailAddress;
- (_RAPPrivacyInformationController)initWithShortcutType:(int64_t)type completion:(id)completion;
- (id)_createDetailsViewInView:(id)view constraints:(id)constraints;
- (id)_createSendButton;
- (id)_createSkipButton;
- (id)_createSwitchViewInView:(id)view constraints:(id)constraints;
- (id)_getEvent;
- (id)_obViewController;
- (id)_setupBottomViewInView:(id)view commonConstraints:(id)constraints portraitSpecificConstraints:(id)specificConstraints landscapeSpecificConstraints:(id)landscapeSpecificConstraints;
- (id)_setupContainerViewInView:(id)view constraints:(id)constraints portraitSpecificConstraints:(id)specificConstraints landscapeSpecificConstraints:(id)landscapeSpecificConstraints;
- (id)defaultPOIStyleAttributes;
- (id)setupContactViewsInContainer:(id)container constraints:(id)constraints portraitSpecificConstraints:(id)specificConstraints landscapeSpecificConstraints:(id)landscapeSpecificConstraints;
- (id)setupTitleViewsInContainer:(id)container constraints:(id)constraints portraitSpecificConstraints:(id)specificConstraints landscapeSpecificConstraints:(id)landscapeSpecificConstraints;
- (void)_sendButtonTapped;
- (void)_skipButtonTapped;
- (void)acceptPrivacyAgreement;
- (void)cancelPrivacyAgreement;
- (void)contentSizeDidChange:(id)change;
- (void)setSkipButtonFont;
- (void)setSubtitleFont;
- (void)setupViews;
- (void)traitCollectionDidChange:(id)change;
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
    _getEvent = [(_RAPPrivacyInformationController *)self _getEvent];
    completion[2](completion, 0, shouldShowPrivacy, _getEvent);
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
    _getEvent = [(_RAPPrivacyInformationController *)self _getEvent];
    completion[2](completion, 1, shouldShowPrivacy, _getEvent);
  }
}

- (void)acceptPrivacyAgreement
{
  _getEvent = [(_RAPPrivacyInformationController *)self _getEvent];
  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:10110 onTarget:1136 eventValue:_getEvent];

  [RAPPrivacy setPrivacyConsent:1 allowEmail:[(UISwitch *)self->_followUpSwitch isOn]];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100F5041C;
  v6[3] = &unk_101661A90;
  v6[4] = self;
  v7 = _getEvent;
  v5 = _getEvent;
  [(_RAPPrivacyInformationController *)self dismissViewControllerAnimated:1 completion:v6];
}

- (id)_getEvent
{
  emailAddress = self->_emailAddress;
  hasValidEmail = self->_hasValidEmail;
  isOn = [(UISwitch *)self->_followUpSwitch isOn];

  return [RAPPrivacy emailAnalyticsEventForEmailAddress:emailAddress isValidEmail:hasValidEmail optedIn:isOn];
}

- (void)cancelPrivacyAgreement
{
  v3 = [RAPPrivacy emailAnalyticsEventForEmailAddress:self->_emailAddress isValidEmail:self->_hasValidEmail optedIn:[(UISwitch *)self->_followUpSwitch isOn]];
  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:10109 onTarget:1136 eventValue:v3];

  v5 = +[NSNotificationCenter defaultCenter];
  _maps_uiScene = [(_RAPPrivacyInformationController *)self _maps_uiScene];
  [v5 postNotificationName:@"RAPUserDidCancelPrivacyAgreementNotification" object:_maps_uiScene];

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
  titleLabel = [(UIButton *)self->_skipButton titleLabel];
  [titleLabel setTextAlignment:1];

  titleLabel2 = [(UIButton *)self->_skipButton titleLabel];
  [titleLabel2 setAdjustsFontSizeToFitWidth:1];

  titleLabel3 = [(UIButton *)self->_skipButton titleLabel];
  [titleLabel3 setNumberOfLines:0];

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
  layer = [v3 layer];
  [layer setCornerRadius:10.0];

  v5 = +[UIColor systemBlueColor];
  [v3 setBackgroundColor:v5];

  v6 = objc_opt_new();
  [v3 setBackgroundImage:v6 forState:0];

  v7 = +[UIColor whiteColor];
  [v3 setTitleColor:v7 forState:0];

  sendButtonFont = [(_RAPPrivacyInformationController *)self sendButtonFont];
  titleLabel = [v3 titleLabel];
  [titleLabel setFont:sendButtonFont];

  [v3 setTitleEdgeInsets:{0.0, 10.0, 0.0, 10.0}];
  titleLabel2 = [v3 titleLabel];
  [titleLabel2 setAdjustsFontSizeToFitWidth:1];

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

- (id)_setupBottomViewInView:(id)view commonConstraints:(id)constraints portraitSpecificConstraints:(id)specificConstraints landscapeSpecificConstraints:(id)landscapeSpecificConstraints
{
  landscapeSpecificConstraintsCopy = landscapeSpecificConstraints;
  specificConstraintsCopy = specificConstraints;
  constraintsCopy = constraints;
  viewCopy = view;
  v12 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  view = [(_RAPPrivacyInformationController *)self view];
  backgroundColor = [view backgroundColor];
  [(UIView *)v12 setBackgroundColor:backgroundColor];

  [(UIView *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [viewCopy addSubview:v12];
  _createSendButton = [(_RAPPrivacyInformationController *)self _createSendButton];
  [(UIView *)v12 addSubview:_createSendButton];
  _createSkipButton = [(_RAPPrivacyInformationController *)self _createSkipButton];
  [(UIView *)v12 addSubview:self->_skipButton];
  leadingAnchor = [(UIView *)v12 leadingAnchor];
  safeAreaLayoutGuide = [viewCopy safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v19 setActive:1];

  trailingAnchor = [(UIView *)v12 trailingAnchor];
  safeAreaLayoutGuide2 = [viewCopy safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
  v23 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v23 setActive:1];

  bottomAnchor = [(UIView *)v12 bottomAnchor];
  safeAreaLayoutGuide3 = [viewCopy safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide3 bottomAnchor];
  v27 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v27 setActive:1];

  v28 = _NSDictionaryOfVariableBindings(@"sendButton", _createSendButton, 0);
  v29 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[sendButton(288)]" options:0 metrics:0 views:v28];
  [specificConstraintsCopy addObjectsFromArray:v29];

  v30 = _NSDictionaryOfVariableBindings(@"sendButton", _createSendButton, 0);
  v31 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-44-[sendButton]-44-|", 0, 0, v30);
  [landscapeSpecificConstraintsCopy addObjectsFromArray:v31];

  centerXAnchor = [_createSendButton centerXAnchor];
  centerXAnchor2 = [viewCopy centerXAnchor];
  v34 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [constraintsCopy addObject:v34];

  centerXAnchor3 = [_createSkipButton centerXAnchor];
  centerXAnchor4 = [viewCopy centerXAnchor];

  v37 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  [constraintsCopy addObject:v37];

  v38 = _NSDictionaryOfVariableBindings(@"sendButton", _createSendButton, 0);
  v39 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[sendButton(50)]" options:0 metrics:0 views:v38];
  [constraintsCopy addObjectsFromArray:v39];

  topAnchor = [(UIView *)v12 topAnchor];
  topAnchor2 = [_createSendButton topAnchor];
  v42 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:-25.0];
  [constraintsCopy addObject:v42];

  bottomAnchor3 = [_createSendButton bottomAnchor];
  topAnchor3 = [_createSkipButton topAnchor];
  v45 = [bottomAnchor3 constraintEqualToAnchor:topAnchor3 constant:-20.0];
  [constraintsCopy addObject:v45];

  lastBaselineAnchor = [_createSkipButton lastBaselineAnchor];
  bottomAnchor4 = [(UIView *)v12 bottomAnchor];
  v48 = [lastBaselineAnchor constraintEqualToAnchor:bottomAnchor4 constant:-27.0];
  [constraintsCopy addObject:v48];

  widthAnchor = [_createSendButton widthAnchor];
  widthAnchor2 = [_createSkipButton widthAnchor];
  v51 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  [constraintsCopy addObject:v51];

  bottomView = self->_bottomView;
  self->_bottomView = v12;
  v53 = v12;

  v54 = self->_bottomView;
  v55 = v54;

  return v54;
}

- (id)_createDetailsViewInView:(id)view constraints:(id)constraints
{
  constraintsCopy = constraints;
  viewCopy = view;
  v8 = objc_opt_new();
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [viewCopy addSubview:v8];

  v9 = _NSDictionaryOfVariableBindings(@"detailsView", v8, 0);
  v10 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[detailsView]|" options:0 metrics:0 views:v9];
  [constraintsCopy addObjectsFromArray:v10];

  v11 = objc_alloc_init(UILabel);
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = +[UIColor clearColor];
  [v11 setBackgroundColor:v12];

  followUpDetailFont = [(_RAPPrivacyInformationController *)self followUpDetailFont];
  [v11 setFont:followUpDetailFont];

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
  [constraintsCopy addObjectsFromArray:v18];

  v19 = objc_opt_new();
  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 addSubview:v19];
  v20 = _NSDictionaryOfVariableBindings(@"privacyView", v19, 0);
  v21 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[privacyView]|" options:0 metrics:0 views:v20];
  [constraintsCopy addObjectsFromArray:v21];

  v22 = [OBPrivacyLinkController linkWithBundleIdentifier:@"com.apple.onboarding.mapsrap"];
  [(_RAPPrivacyInformationController *)self addChildViewController:v22];
  view = [v22 view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  [v19 addSubview:view];
  [v22 didMoveToParentViewController:self];
  v24 = _NSDictionaryOfVariableBindings(@"privacyLinkView", view, 0);
  v25 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[privacyLinkView]|" options:0 metrics:0 views:v24];
  [constraintsCopy addObjectsFromArray:v25];

  v26 = _NSDictionaryOfVariableBindings(@"privacyLinkView", view, 0);
  v27 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[privacyLinkView]|" options:0 metrics:0 views:v26];
  [constraintsCopy addObjectsFromArray:v27];

  v28 = _NSDictionaryOfVariableBindings(@"followUpDescription, privacyView", v11, v19, 0);
  v29 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|[followUpDescription]-40-[privacyView]|", 0, 0, v28);
  [constraintsCopy addObjectsFromArray:v29];

  return v8;
}

- (id)_createSwitchViewInView:(id)view constraints:(id)constraints
{
  constraintsCopy = constraints;
  viewCopy = view;
  v8 = objc_opt_new();
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [viewCopy addSubview:v8];

  v9 = objc_alloc_init(UIView);
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = +[UIColor separatorColor];
  [v9 setBackgroundColor:v10];

  [v8 addSubview:v9];
  v11 = objc_alloc_init(UILabel);
  followUpLabelFont = [(_RAPPrivacyInformationController *)self followUpLabelFont];
  [v11 setFont:followUpLabelFont];

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
  leadingAnchor = [v9 leadingAnchor];
  view = [(_RAPPrivacyInformationController *)self view];
  leadingAnchor2 = [view leadingAnchor];
  v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [constraintsCopy addObject:v23];

  trailingAnchor = [v9 trailingAnchor];
  view2 = [(_RAPPrivacyInformationController *)self view];
  trailingAnchor2 = [view2 trailingAnchor];
  v27 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [constraintsCopy addObject:v27];

  v28 = _NSDictionaryOfVariableBindings(@"followUpLabel, _followUpSwitch", v11, self->_followUpSwitch, 0);
  v29 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-[followUpLabel]-(>=0)-[_followUpSwitch]-|", 0, 0, v28);
  [constraintsCopy addObjectsFromArray:v29];

  leadingAnchor3 = [v18 leadingAnchor];
  leadingAnchor4 = [v9 leadingAnchor];
  v32 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [constraintsCopy addObject:v32];

  trailingAnchor3 = [v18 trailingAnchor];
  trailingAnchor4 = [v9 trailingAnchor];
  v35 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [constraintsCopy addObject:v35];

  v36 = _NSDictionaryOfVariableBindings(@"topLineView, followUpLabel, bottomLineView", v9, v11, v18, 0);
  v37 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|[topLineView(1)]-(spacing)-[followUpLabel]-(spacing)-[bottomLineView(==topLineView)]|", 0, &off_1016EE740, v36);
  [constraintsCopy addObjectsFromArray:v37];

  centerYAnchor = [(UISwitch *)self->_followUpSwitch centerYAnchor];
  centerYAnchor2 = [v11 centerYAnchor];
  v40 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [constraintsCopy addObject:v40];

  return v42;
}

- (id)setupContactViewsInContainer:(id)container constraints:(id)constraints portraitSpecificConstraints:(id)specificConstraints landscapeSpecificConstraints:(id)landscapeSpecificConstraints
{
  constraintsCopy = constraints;
  containerCopy = container;
  v10 = objc_alloc_init(UIView);
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [containerCopy addSubview:v10];

  v11 = [(_RAPPrivacyInformationController *)self _createDetailsViewInView:v10 constraints:constraintsCopy];
  v12 = _NSDictionaryOfVariableBindings(@"detailsView", v11, 0);
  v13 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[detailsView]|" options:0 metrics:0 views:v12];
  [constraintsCopy addObjectsFromArray:v13];

  if (self->_isUserEnteredEmailAddress || !sub_1007418E4(self->_emailAddress) || (MapsFeature_IsEnabled_RAPCommunityID() & 1) != 0)
  {
    v14 = _NSDictionaryOfVariableBindings(@"detailsView", v11, 0);
    v15 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-[detailsView]-|", 0, 0, v14);
    [constraintsCopy addObjectsFromArray:v15];
  }

  else
  {
    v14 = [(_RAPPrivacyInformationController *)self _createSwitchViewInView:v10 constraints:constraintsCopy];
    v19 = _NSDictionaryOfVariableBindings(@"switchView", v14, 0);
    v20 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[switchView]|" options:0 metrics:0 views:v19];
    [constraintsCopy addObjectsFromArray:v20];

    v15 = _NSDictionaryOfVariableBindings(@"switchView, detailsView", v14, v11, 0);
    v21 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-[switchView]-(spacing)-[detailsView]-|", 0, &off_1016EE718, v15);
    [constraintsCopy addObjectsFromArray:v21];
  }

  v16 = _NSDictionaryOfVariableBindings(@"contactView", v10, 0);
  v17 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-[contactView]-|", 0, 0, v16);
  [constraintsCopy addObjectsFromArray:v17];

  return v10;
}

- (id)setupTitleViewsInContainer:(id)container constraints:(id)constraints portraitSpecificConstraints:(id)specificConstraints landscapeSpecificConstraints:(id)landscapeSpecificConstraints
{
  constraintsCopy = constraints;
  containerCopy = container;
  v10 = objc_alloc_init(UIView);
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [containerCopy addSubview:v10];

  v11 = [[UIImageView alloc] initWithImage:self->_portraitIcon];
  iconView = self->_iconView;
  self->_iconView = v11;

  [(UIImageView *)self->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
  [v10 addSubview:self->_iconView];
  v13 = objc_alloc_init(UILabel);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v13;

  titleFont = [(_RAPPrivacyInformationController *)self titleFont];
  [(UILabel *)self->_titleLabel setFont:titleFont];

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
  centerXAnchor = [(UIImageView *)self->_iconView centerXAnchor];
  view = [(_RAPPrivacyInformationController *)self view];
  centerXAnchor2 = [view centerXAnchor];
  v27 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [constraintsCopy addObject:v27];

  centerXAnchor3 = [(UILabel *)self->_titleLabel centerXAnchor];
  centerXAnchor4 = [(UIImageView *)self->_iconView centerXAnchor];
  v30 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  [constraintsCopy addObject:v30];

  centerXAnchor5 = [(UILabel *)self->_subtitleLabel centerXAnchor];
  centerXAnchor6 = [(UILabel *)self->_titleLabel centerXAnchor];
  v33 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
  [constraintsCopy addObject:v33];

  v34 = _NSDictionaryOfVariableBindings(@"_titleLabel", self->_titleLabel, 0);
  v35 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-[_titleLabel]-|", 0, 0, v34);
  [constraintsCopy addObjectsFromArray:v35];

  v36 = _NSDictionaryOfVariableBindings(@"_subtitleLabel", self->_subtitleLabel, 0);
  v37 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-35-[_subtitleLabel]-35-|", 0, 0, v36);
  [constraintsCopy addObjectsFromArray:v37];

  topAnchor = [(UIImageView *)self->_iconView topAnchor];
  topAnchor2 = [v10 topAnchor];
  v40 = [topAnchor constraintEqualToSystemSpacingBelowAnchor:topAnchor2 multiplier:1.0];
  [constraintsCopy addObject:v40];

  topAnchor3 = [(UILabel *)self->_titleLabel topAnchor];
  bottomAnchor = [(UIImageView *)self->_iconView bottomAnchor];
  v43 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:20.0];
  [constraintsCopy addObject:v43];

  v44 = _NSDictionaryOfVariableBindings(@"_titleLabel, _subtitleLabel", self->_titleLabel, self->_subtitleLabel, 0);
  v45 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:[_titleLabel]-(spacing)-[_subtitleLabel]|", 0, &off_1016EE6F0, v44);
  [constraintsCopy addObjectsFromArray:v45];

  return v10;
}

- (id)_setupContainerViewInView:(id)view constraints:(id)constraints portraitSpecificConstraints:(id)specificConstraints landscapeSpecificConstraints:(id)landscapeSpecificConstraints
{
  constraintsCopy = constraints;
  specificConstraintsCopy = specificConstraints;
  landscapeSpecificConstraintsCopy = landscapeSpecificConstraints;
  viewCopy = view;
  v13 = objc_alloc_init(UIScrollView);
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  view = [(_RAPPrivacyInformationController *)self view];
  [view addSubview:v13];

  [v13 setScrollEnabled:1];
  [v13 setShowsVerticalScrollIndicator:1];
  topAnchor = [v13 topAnchor];
  view2 = [(_RAPPrivacyInformationController *)self view];
  safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v19 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v19 setActive:1];

  leadingAnchor = [v13 leadingAnchor];
  view3 = [(_RAPPrivacyInformationController *)self view];
  safeAreaLayoutGuide2 = [view3 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide2 leadingAnchor];
  v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v24 setActive:1];

  trailingAnchor = [v13 trailingAnchor];
  view4 = [(_RAPPrivacyInformationController *)self view];
  safeAreaLayoutGuide3 = [view4 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide3 trailingAnchor];
  v29 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v29 setActive:1];

  bottomAnchor = [v13 bottomAnchor];
  view5 = [(_RAPPrivacyInformationController *)self view];
  safeAreaLayoutGuide4 = [view5 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide4 bottomAnchor];
  v34 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v34 setActive:1];

  selfCopy = self;
  objc_storeStrong(&self->_scrollView, v13);
  v36 = objc_alloc_init(UIView);
  [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
  objc_storeStrong(&selfCopy->_containerView, v36);
  [v13 addSubview:v36];
  v91 = specificConstraintsCopy;
  v37 = specificConstraintsCopy;
  v38 = landscapeSpecificConstraintsCopy;
  firstValue = [(_RAPPrivacyInformationController *)selfCopy setupTitleViewsInContainer:v36 constraints:constraintsCopy portraitSpecificConstraints:v37 landscapeSpecificConstraints:landscapeSpecificConstraintsCopy];
  if (selfCopy->_appearance == 3 && !selfCopy->_shouldShowPrivacy)
  {
    v93 = 0;
    v39 = constraintsCopy;
  }

  else
  {
    v39 = constraintsCopy;
    v93 = [(_RAPPrivacyInformationController *)selfCopy setupContactViewsInContainer:v36 constraints:constraintsCopy portraitSpecificConstraints:v91 landscapeSpecificConstraints:v38];
  }

  leadingAnchor3 = [v36 leadingAnchor];
  safeAreaLayoutGuide5 = [viewCopy safeAreaLayoutGuide];
  leadingAnchor4 = [safeAreaLayoutGuide5 leadingAnchor];
  v43 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [v43 setActive:1];

  trailingAnchor3 = [v36 trailingAnchor];
  safeAreaLayoutGuide6 = [viewCopy safeAreaLayoutGuide];

  trailingAnchor4 = [safeAreaLayoutGuide6 trailingAnchor];
  v47 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [v47 setActive:1];

  topAnchor3 = [v36 topAnchor];
  topAnchor4 = [v13 topAnchor];
  v50 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4];
  [v50 setActive:1];

  bottomAnchor3 = [v36 bottomAnchor];
  bottomAnchor4 = [v13 bottomAnchor];
  v53 = [bottomAnchor3 constraintLessThanOrEqualToAnchor:bottomAnchor4];
  [v53 setActive:1];

  centerYAnchor = [v36 centerYAnchor];
  centerYAnchor2 = [v13 centerYAnchor];
  v56 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  portraitAccessibilityConstraint = selfCopy->_portraitAccessibilityConstraint;
  selfCopy->_portraitAccessibilityConstraint = v56;

  [(_RAPPrivacyInformationController *)selfCopy updateCenterYConstraintIfNeeded];
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

  leadingAnchor5 = [firstValue leadingAnchor];
  view6 = [(_RAPPrivacyInformationController *)selfCopy view];
  safeAreaLayoutGuide7 = [view6 safeAreaLayoutGuide];
  leadingAnchor6 = [safeAreaLayoutGuide7 leadingAnchor];
  v63 = [leadingAnchor5 constraintEqualToSystemSpacingAfterAnchor:leadingAnchor6 multiplier:1.0];
  v95[0] = v63;
  view7 = [(_RAPPrivacyInformationController *)selfCopy view];
  safeAreaLayoutGuide8 = [view7 safeAreaLayoutGuide];
  trailingAnchor5 = [safeAreaLayoutGuide8 trailingAnchor];
  [firstValue trailingAnchor];
  v67 = v82 = selfCopy;
  v68 = [trailingAnchor5 constraintEqualToSystemSpacingAfterAnchor:v67 multiplier:1.0];
  v95[1] = v68;
  v69 = [NSArray arrayWithObjects:v95 count:2];
  v88 = v39;
  [v39 addObjectsFromArray:v69];

  v70 = v93;
  if (v93)
  {
    leadingAnchor7 = [v93 leadingAnchor];
    safeAreaLayoutGuide9 = [v90 safeAreaLayoutGuide];
    leadingAnchor8 = [safeAreaLayoutGuide9 leadingAnchor];
    v73 = [leadingAnchor7 constraintEqualToSystemSpacingAfterAnchor:leadingAnchor8 multiplier:1.0];
    v94[0] = v73;
    view8 = [(_RAPPrivacyInformationController *)v82 view];
    safeAreaLayoutGuide10 = [view8 safeAreaLayoutGuide];
    trailingAnchor6 = [safeAreaLayoutGuide10 trailingAnchor];
    safeAreaLayoutGuide11 = [v90 safeAreaLayoutGuide];
    trailingAnchor7 = [safeAreaLayoutGuide11 trailingAnchor];
    v79 = [trailingAnchor6 constraintEqualToSystemSpacingAfterAnchor:trailingAnchor7 multiplier:1.0];
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
  view = [(_RAPPrivacyInformationController *)self view];
  v8 = [(_RAPPrivacyInformationController *)self _setupContainerViewInView:view constraints:v11 portraitSpecificConstraints:self->_portraitSpecificConstraints landscapeSpecificConstraints:self->_landscapeSpecificConstraints];

  if (self->_appearance == 3)
  {
    view2 = [(_RAPPrivacyInformationController *)self view];
    v10 = [(_RAPPrivacyInformationController *)self _setupBottomViewInView:view2 commonConstraints:v11 portraitSpecificConstraints:self->_portraitSpecificConstraints landscapeSpecificConstraints:self->_landscapeSpecificConstraints];
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
  titleLabel = [(UIButton *)self->_skipButton titleLabel];
  [titleLabel setFont:v5];
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

- (void)contentSizeDidChange:(id)change
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

- (void)traitCollectionDidChange:(id)change
{
  v12.receiver = self;
  v12.super_class = _RAPPrivacyInformationController;
  [(_RAPPrivacyInformationController *)&v12 traitCollectionDidChange:change];
  view = [(_RAPPrivacyInformationController *)self view];
  traitCollection = [view traitCollection];
  verticalSizeClass = [traitCollection verticalSizeClass];

  iconView = self->_iconView;
  if (iconView)
  {
    v8 = &OBJC_IVAR____RAPPrivacyInformationController__portraitIcon;
    if (verticalSizeClass == 1)
    {
      v8 = &OBJC_IVAR____RAPPrivacyInformationController__landscapeIcon;
    }

    [(UIImageView *)iconView setImage:*(&self->super.super.super.isa + *v8)];
  }

  v9 = &OBJC_IVAR____RAPPrivacyInformationController__portraitSpecificConstraints;
  v10 = verticalSizeClass == 1;
  if (verticalSizeClass == 1)
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
  headerView = [v7 headerView];
  [headerView setAccessibilityIdentifier:@"RAPPrivacyConsentHeader"];

  buttonTray = [v7 buttonTray];
  [buttonTray setAccessibilityIdentifier:@"RAPPrivacyConsentButtonTray"];

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
  buttonTray2 = [v7 buttonTray];
  [buttonTray2 addButton:v10];

  buttonTray3 = [v7 buttonTray];
  [buttonTray3 addButton:v13];

  buttonTray4 = [v7 buttonTray];
  v21 = @"com.apple.onboarding.mapsrap";
  v19 = [NSArray arrayWithObjects:&v21 count:1];
  [buttonTray4 setPrivacyLinkForBundles:v19];

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
    view = [(_RAPPrivacyInformationController *)self view];
    [view setBackgroundColor:v10];

    v12 = +[UIColor systemBackgroundColor];
    navigationController = [(_RAPPrivacyInformationController *)self navigationController];
    view2 = [navigationController view];
    [view2 setBackgroundColor:v12];

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
      navigationItem = [(_RAPPrivacyInformationController *)self navigationItem];
      [navigationItem setLeftBarButtonItem:v22];

      v24 = [UIBarButtonItem alloc];
      v25 = +[NSBundle mainBundle];
      v26 = [v25 localizedStringForKey:@"Agree [Report an Issue]" value:@"localized string not found" table:0];
      v27 = [v24 initWithTitle:v26 style:0 target:self action:"acceptPrivacyAgreement"];
      navigationItem2 = [(_RAPPrivacyInformationController *)self navigationItem];
      [navigationItem2 setRightBarButtonItem:v27];

LABEL_22:
      self->_accessibilityEnabled = +[UIFont accessibilityTextEnabled];
      [(_RAPPrivacyInformationController *)self setupViews];
      _obViewController = +[NSNotificationCenter defaultCenter];
      [_obViewController addObserver:self selector:"contentSizeDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];
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

    traitCollection = [(_RAPPrivacyInformationController *)self traitCollection];
    v33 = [traitCollection userInterfaceStyle] == 2;

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
      countryCode = [v49 countryCode];
      v51 = [v48 objectForKey:countryCode];

      if (v51)
      {
        bOOLValue = [v51 BOOLValue];

        if (bOOLValue)
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

  _obViewController = [(_RAPPrivacyInformationController *)self _obViewController];
  [(_RAPPrivacyInformationController *)self addChildViewController:_obViewController];
  view3 = [(_RAPPrivacyInformationController *)self view];
  view4 = [_obViewController view];
  [view3 addSubview:view4];

  [_obViewController didMoveToParentViewController:self];
  view5 = [_obViewController view];
  [view5 setTranslatesAutoresizingMaskIntoConstraints:0];

  view6 = [_obViewController view];
  view7 = [(_RAPPrivacyInformationController *)self view];
  v9 = [view6 _maps_constraintsForCenteringInView:view7];
  [NSLayoutConstraint activateConstraints:v9];

LABEL_23:
}

- (_RAPPrivacyInformationController)initWithShortcutType:(int64_t)type completion:(id)completion
{
  result = [(_RAPPrivacyInformationController *)self initWithCompletion:completion];
  if (result)
  {
    result->_appearance = 3;
    result->_shortcutType = type;
  }

  return result;
}

- (_RAPPrivacyInformationController)initWithCompletion:(id)completion emailAddress:(id)address isUserEnteredEmailAddress:(BOOL)emailAddress
{
  addressCopy = address;
  v10 = [(_RAPPrivacyInformationController *)self initWithCompletion:completion];
  v11 = v10;
  if (v10)
  {
    v10->_isUserEnteredEmailAddress = emailAddress;
    objc_storeStrong(&v10->_emailAddress, address);
  }

  return v11;
}

- (_RAPPrivacyInformationController)initWithCompletion:(id)completion
{
  completionCopy = completion;
  v11.receiver = self;
  v11.super_class = _RAPPrivacyInformationController;
  v5 = [(_RAPPrivacyInformationController *)&v11 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [completionCopy copy];
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