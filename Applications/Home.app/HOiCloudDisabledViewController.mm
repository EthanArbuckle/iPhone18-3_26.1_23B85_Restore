@interface HOiCloudDisabledViewController
- (void)preferencesButtonTapped;
- (void)setDataSyncState:(unint64_t)state;
- (void)setStatus:(unint64_t)status;
- (void)updateLabels;
- (void)viewDidLoad;
@end

@implementation HOiCloudDisabledViewController

- (void)viewDidLoad
{
  v118.receiver = self;
  v118.super_class = HOiCloudDisabledViewController;
  [(HOiCloudDisabledViewController *)&v118 viewDidLoad];
  v3 = +[UIColor systemBackgroundColor];
  view = [(HOiCloudDisabledViewController *)self view];
  [view setBackgroundColor:v3];

  v5 = objc_alloc_init(UIImageView);
  imageView = self->_imageView;
  self->_imageView = v5;

  [(UIImageView *)self->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_imageView setAccessibilityIdentifier:@"HOiCloudDisabledViewController.icon"];
  objc_initWeak(&location, self);
  v7 = +[UIScreen mainScreen];
  [v7 scale];
  v9 = [UIImage hu_homeAppIconWithSize:256.0 scale:256.0, v8];
  v115[0] = _NSConcreteStackBlock;
  v115[1] = 3221225472;
  v115[2] = sub_10002E0FC;
  v115[3] = &unk_1000C3A80;
  objc_copyWeak(&v116, &location);
  v10 = [v9 addSuccessBlock:v115];

  v11 = objc_alloc_init(UILabel);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v11;

  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = [UIFont boldSystemFontOfSize:20.0];
  [(UILabel *)self->_titleLabel setFont:v13];

  [(UILabel *)self->_titleLabel setTextAlignment:1];
  [(UILabel *)self->_titleLabel setAccessibilityIdentifier:@"HOiCloudDisabledViewController.titleLabel"];
  v14 = objc_alloc_init(UILabel);
  bodyLabel = self->_bodyLabel;
  self->_bodyLabel = v14;

  [(UILabel *)self->_bodyLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [(UILabel *)self->_bodyLabel setFont:v16];

  [(UILabel *)self->_bodyLabel setTextAlignment:1];
  [(UILabel *)self->_bodyLabel setNumberOfLines:0];
  [(UILabel *)self->_bodyLabel setAccessibilityIdentifier:@"HOiCloudDisabledViewController.bodyLabel"];
  v17 = objc_alloc_init(UIView);
  containerView = self->_containerView;
  self->_containerView = v17;

  [(UIView *)self->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
  v19 = [[HUColoredButton alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  preferencesButton = self->_preferencesButton;
  self->_preferencesButton = v19;

  [(HUColoredButton *)self->_preferencesButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v21 = self->_preferencesButton;
  v22 = sub_10002E168(@"HODataSycningNoAccountActionTitle");
  [(HUColoredButton *)v21 setTitle:v22 forState:0];

  [(HUColoredButton *)self->_preferencesButton addTarget:self action:"preferencesButtonTapped" forControlEvents:64];
  v23 = self->_preferencesButton;
  v24 = +[UIColor systemOrangeColor];
  [(HUColoredButton *)v23 setTintColor:v24];

  v25 = self->_preferencesButton;
  v26 = +[UIColor systemOrangeColor];
  [(HUColoredButton *)v25 setBackgroundColor:v26];

  [(HUColoredButton *)self->_preferencesButton setAccessibilityIdentifier:@"HOiCloudDisabledViewController.preferencesButton"];
  view2 = [(HOiCloudDisabledViewController *)self view];
  [view2 addSubview:self->_containerView];

  containerView = [(HOiCloudDisabledViewController *)self containerView];
  [containerView addSubview:self->_imageView];

  containerView2 = [(HOiCloudDisabledViewController *)self containerView];
  [containerView2 addSubview:self->_titleLabel];

  containerView3 = [(HOiCloudDisabledViewController *)self containerView];
  [containerView3 addSubview:self->_bodyLabel];

  containerView4 = [(HOiCloudDisabledViewController *)self containerView];
  [containerView4 addSubview:self->_preferencesButton];

  v32 = objc_opt_new();
  centerYAnchor = [(UIView *)self->_containerView centerYAnchor];
  view3 = [(HOiCloudDisabledViewController *)self view];
  centerYAnchor2 = [view3 centerYAnchor];
  v36 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v32 addObject:v36];

  widthAnchor = [(UIView *)self->_containerView widthAnchor];
  view4 = [(HOiCloudDisabledViewController *)self view];
  widthAnchor2 = [view4 widthAnchor];
  v40 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  [v32 addObject:v40];

  leadingAnchor = [(UIView *)self->_containerView leadingAnchor];
  view5 = [(HOiCloudDisabledViewController *)self view];
  leadingAnchor2 = [view5 leadingAnchor];
  v44 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v32 addObject:v44];

  trailingAnchor = [(UIView *)self->_containerView trailingAnchor];
  view6 = [(HOiCloudDisabledViewController *)self view];
  trailingAnchor2 = [view6 trailingAnchor];
  v48 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v32 addObject:v48];

  topAnchor = [(UIImageView *)self->_imageView topAnchor];
  containerView5 = [(HOiCloudDisabledViewController *)self containerView];
  topAnchor2 = [containerView5 topAnchor];
  v52 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v32 addObject:v52];

  widthAnchor3 = [(UIImageView *)self->_imageView widthAnchor];
  v54 = [widthAnchor3 constraintEqualToConstant:256.0];
  [v32 addObject:v54];

  heightAnchor = [(UIImageView *)self->_imageView heightAnchor];
  v56 = [heightAnchor constraintEqualToConstant:256.0];
  [v32 addObject:v56];

  centerXAnchor = [(UIImageView *)self->_imageView centerXAnchor];
  containerView6 = [(HOiCloudDisabledViewController *)self containerView];
  centerXAnchor2 = [containerView6 centerXAnchor];
  v60 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v32 addObject:v60];

  leadingAnchor3 = [(UILabel *)self->_titleLabel leadingAnchor];
  containerView7 = [(HOiCloudDisabledViewController *)self containerView];
  leadingAnchor4 = [containerView7 leadingAnchor];
  v64 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [v32 addObject:v64];

  trailingAnchor3 = [(UILabel *)self->_titleLabel trailingAnchor];
  containerView8 = [(HOiCloudDisabledViewController *)self containerView];
  trailingAnchor4 = [containerView8 trailingAnchor];
  v68 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [v32 addObject:v68];

  topAnchor3 = [(UILabel *)self->_titleLabel topAnchor];
  imageView = [(HOiCloudDisabledViewController *)self imageView];
  bottomAnchor = [imageView bottomAnchor];
  v72 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:10.0];
  [v32 addObject:v72];

  topAnchor4 = [(UILabel *)self->_bodyLabel topAnchor];
  titleLabel = [(HOiCloudDisabledViewController *)self titleLabel];
  bottomAnchor2 = [titleLabel bottomAnchor];
  v76 = [topAnchor4 constraintEqualToSystemSpacingBelowAnchor:bottomAnchor2 multiplier:1.0];
  [v32 addObject:v76];

  centerXAnchor3 = [(UILabel *)self->_bodyLabel centerXAnchor];
  containerView9 = [(HOiCloudDisabledViewController *)self containerView];
  centerXAnchor4 = [containerView9 centerXAnchor];
  v80 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  [v32 addObject:v80];

  widthAnchor4 = [(UILabel *)self->_bodyLabel widthAnchor];
  view7 = [(HOiCloudDisabledViewController *)self view];
  [view7 frame];
  v84 = [widthAnchor4 constraintEqualToConstant:v83];
  [(HOiCloudDisabledViewController *)self setBodyWidthConstraint:v84];

  bodyWidthConstraint = [(HOiCloudDisabledViewController *)self bodyWidthConstraint];
  [v32 addObject:bodyWidthConstraint];

  centerXAnchor5 = [(HUColoredButton *)self->_preferencesButton centerXAnchor];
  containerView10 = [(HOiCloudDisabledViewController *)self containerView];
  centerXAnchor6 = [containerView10 centerXAnchor];
  v89 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
  [v32 addObject:v89];

  topAnchor5 = [(HUColoredButton *)self->_preferencesButton topAnchor];
  bodyLabel = [(HOiCloudDisabledViewController *)self bodyLabel];
  bottomAnchor3 = [bodyLabel bottomAnchor];
  v93 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3 constant:40.0];
  [v32 addObject:v93];

  bottomAnchor4 = [(HUColoredButton *)self->_preferencesButton bottomAnchor];
  containerView11 = [(HOiCloudDisabledViewController *)self containerView];
  bottomAnchor5 = [containerView11 bottomAnchor];
  v97 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
  [v32 addObject:v97];

  leadingAnchor5 = [(HUColoredButton *)self->_preferencesButton leadingAnchor];
  view8 = [(HOiCloudDisabledViewController *)self view];
  layoutMarginsGuide = [view8 layoutMarginsGuide];
  leadingAnchor6 = [layoutMarginsGuide leadingAnchor];
  v102 = [leadingAnchor5 constraintGreaterThanOrEqualToAnchor:leadingAnchor6];

  LODWORD(v103) = 1132068864;
  [v102 setPriority:v103];
  trailingAnchor5 = [(HUColoredButton *)self->_preferencesButton trailingAnchor];
  view9 = [(HOiCloudDisabledViewController *)self view];
  layoutMarginsGuide2 = [view9 layoutMarginsGuide];
  trailingAnchor6 = [layoutMarginsGuide2 trailingAnchor];
  v108 = [trailingAnchor5 constraintLessThanOrEqualToAnchor:trailingAnchor6];

  LODWORD(v109) = 1132068864;
  [v108 setPriority:v109];
  widthAnchor5 = [(HUColoredButton *)self->_preferencesButton widthAnchor];
  v111 = [widthAnchor5 constraintGreaterThanOrEqualToConstant:250.0];
  v119[0] = v111;
  heightAnchor2 = [(HUColoredButton *)self->_preferencesButton heightAnchor];
  +[HUColoredButton defaultHeight];
  v113 = [heightAnchor2 constraintGreaterThanOrEqualToConstant:?];
  v119[1] = v113;
  v119[2] = v102;
  v119[3] = v108;
  v114 = [NSArray arrayWithObjects:v119 count:4];
  [v32 addObjectsFromArray:v114];

  [NSLayoutConstraint activateConstraints:v32];
  [(HOiCloudDisabledViewController *)self updateLabels];

  objc_destroyWeak(&v116);
  objc_destroyWeak(&location);
}

- (void)setDataSyncState:(unint64_t)state
{
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    dataSyncState = self->_dataSyncState;
    v7 = HMHomeManagerDataSyncStateToString();
    v8 = HMHomeManagerDataSyncStateToString();
    v9 = 134218754;
    v10 = dataSyncState;
    v11 = 2112;
    v12 = v7;
    v13 = 2048;
    stateCopy = state;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[HODataSyncingViewController:setDataSyncState] prev state = %lu (%@) | new state = %lu (%@)", &v9, 0x2Au);
  }

  if (self->_dataSyncState != state)
  {
    self->_dataSyncState = state;
    [(HOiCloudDisabledViewController *)self updateLabels];
  }
}

- (void)setStatus:(unint64_t)status
{
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    status = self->_status;
    v7 = HMHomeManagerStatusToString();
    v8 = HMHomeManagerStatusToString();
    v9 = 134218754;
    statusCopy = status;
    v11 = 2112;
    v12 = v7;
    v13 = 2048;
    statusCopy2 = status;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[HODataSyncingViewController:setStatus] prev status = %lu (%@) | new status = %lu | (%@)", &v9, 0x2Au);
  }

  if (self->_status != status)
  {
    self->_status = status;
    [(HOiCloudDisabledViewController *)self updateLabels];
  }
}

- (void)updateLabels
{
  titleLabel = [(HOiCloudDisabledViewController *)self titleLabel];
  if (!titleLabel)
  {
    return;
  }

  v4 = titleLabel;
  bodyLabel = [(HOiCloudDisabledViewController *)self bodyLabel];

  if (!bodyLabel)
  {
    return;
  }

  if (([(HOiCloudDisabledViewController *)self status]& 0x20) != 0)
  {
    v14 = sub_10002E168(@"HODataSyncingNoAccountAlertTitle");
    titleLabel2 = [(HOiCloudDisabledViewController *)self titleLabel];
    [titleLabel2 setText:v14];

    v16 = sub_10002E168(@"HODataSyncingNoAccountAlertBody");
    bodyLabel2 = [(HOiCloudDisabledViewController *)self bodyLabel];
    [bodyLabel2 setText:v16];

    bodyWidthConstraint = [(HOiCloudDisabledViewController *)self bodyWidthConstraint];
    [bodyWidthConstraint setConstant:380.0];
    goto LABEL_8;
  }

  if ([(HOiCloudDisabledViewController *)self dataSyncState]== 3)
  {
    v6 = sub_10002E168(@"HODataSyncingTurnedOffAlertTitle");
    titleLabel3 = [(HOiCloudDisabledViewController *)self titleLabel];
    [titleLabel3 setText:v6];

    v8 = sub_10002E168(@"HODataSyncingTurnedOffAlertBody");
    bodyLabel3 = [(HOiCloudDisabledViewController *)self bodyLabel];
    [bodyLabel3 setText:v8];

    bodyWidthConstraint = [(HOiCloudDisabledViewController *)self view];
    [bodyWidthConstraint frame];
    v12 = v11;
    bodyWidthConstraint2 = [(HOiCloudDisabledViewController *)self bodyWidthConstraint];
    [bodyWidthConstraint2 setConstant:v12];

LABEL_8:
  }

  view = [(HOiCloudDisabledViewController *)self view];
  [view layoutIfNeeded];
}

- (void)preferencesButtonTapped
{
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[HOiCloudDisabledViewController-preferencesButtonTapped] User tapped button", v6, 2u);
  }

  v3 = +[HFOpenURLRouter sharedInstance];
  v4 = +[NSURL hf_openiCloudPreferencesURL];
  v5 = [v3 openURL:v4];
}

@end