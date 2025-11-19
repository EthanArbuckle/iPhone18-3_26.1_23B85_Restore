@interface HOiCloudDisabledViewController
- (void)preferencesButtonTapped;
- (void)setDataSyncState:(unint64_t)a3;
- (void)setStatus:(unint64_t)a3;
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
  v4 = [(HOiCloudDisabledViewController *)self view];
  [v4 setBackgroundColor:v3];

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
  v27 = [(HOiCloudDisabledViewController *)self view];
  [v27 addSubview:self->_containerView];

  v28 = [(HOiCloudDisabledViewController *)self containerView];
  [v28 addSubview:self->_imageView];

  v29 = [(HOiCloudDisabledViewController *)self containerView];
  [v29 addSubview:self->_titleLabel];

  v30 = [(HOiCloudDisabledViewController *)self containerView];
  [v30 addSubview:self->_bodyLabel];

  v31 = [(HOiCloudDisabledViewController *)self containerView];
  [v31 addSubview:self->_preferencesButton];

  v32 = objc_opt_new();
  v33 = [(UIView *)self->_containerView centerYAnchor];
  v34 = [(HOiCloudDisabledViewController *)self view];
  v35 = [v34 centerYAnchor];
  v36 = [v33 constraintEqualToAnchor:v35];
  [v32 addObject:v36];

  v37 = [(UIView *)self->_containerView widthAnchor];
  v38 = [(HOiCloudDisabledViewController *)self view];
  v39 = [v38 widthAnchor];
  v40 = [v37 constraintEqualToAnchor:v39];
  [v32 addObject:v40];

  v41 = [(UIView *)self->_containerView leadingAnchor];
  v42 = [(HOiCloudDisabledViewController *)self view];
  v43 = [v42 leadingAnchor];
  v44 = [v41 constraintEqualToAnchor:v43];
  [v32 addObject:v44];

  v45 = [(UIView *)self->_containerView trailingAnchor];
  v46 = [(HOiCloudDisabledViewController *)self view];
  v47 = [v46 trailingAnchor];
  v48 = [v45 constraintEqualToAnchor:v47];
  [v32 addObject:v48];

  v49 = [(UIImageView *)self->_imageView topAnchor];
  v50 = [(HOiCloudDisabledViewController *)self containerView];
  v51 = [v50 topAnchor];
  v52 = [v49 constraintEqualToAnchor:v51];
  [v32 addObject:v52];

  v53 = [(UIImageView *)self->_imageView widthAnchor];
  v54 = [v53 constraintEqualToConstant:256.0];
  [v32 addObject:v54];

  v55 = [(UIImageView *)self->_imageView heightAnchor];
  v56 = [v55 constraintEqualToConstant:256.0];
  [v32 addObject:v56];

  v57 = [(UIImageView *)self->_imageView centerXAnchor];
  v58 = [(HOiCloudDisabledViewController *)self containerView];
  v59 = [v58 centerXAnchor];
  v60 = [v57 constraintEqualToAnchor:v59];
  [v32 addObject:v60];

  v61 = [(UILabel *)self->_titleLabel leadingAnchor];
  v62 = [(HOiCloudDisabledViewController *)self containerView];
  v63 = [v62 leadingAnchor];
  v64 = [v61 constraintEqualToAnchor:v63];
  [v32 addObject:v64];

  v65 = [(UILabel *)self->_titleLabel trailingAnchor];
  v66 = [(HOiCloudDisabledViewController *)self containerView];
  v67 = [v66 trailingAnchor];
  v68 = [v65 constraintEqualToAnchor:v67];
  [v32 addObject:v68];

  v69 = [(UILabel *)self->_titleLabel topAnchor];
  v70 = [(HOiCloudDisabledViewController *)self imageView];
  v71 = [v70 bottomAnchor];
  v72 = [v69 constraintEqualToAnchor:v71 constant:10.0];
  [v32 addObject:v72];

  v73 = [(UILabel *)self->_bodyLabel topAnchor];
  v74 = [(HOiCloudDisabledViewController *)self titleLabel];
  v75 = [v74 bottomAnchor];
  v76 = [v73 constraintEqualToSystemSpacingBelowAnchor:v75 multiplier:1.0];
  [v32 addObject:v76];

  v77 = [(UILabel *)self->_bodyLabel centerXAnchor];
  v78 = [(HOiCloudDisabledViewController *)self containerView];
  v79 = [v78 centerXAnchor];
  v80 = [v77 constraintEqualToAnchor:v79];
  [v32 addObject:v80];

  v81 = [(UILabel *)self->_bodyLabel widthAnchor];
  v82 = [(HOiCloudDisabledViewController *)self view];
  [v82 frame];
  v84 = [v81 constraintEqualToConstant:v83];
  [(HOiCloudDisabledViewController *)self setBodyWidthConstraint:v84];

  v85 = [(HOiCloudDisabledViewController *)self bodyWidthConstraint];
  [v32 addObject:v85];

  v86 = [(HUColoredButton *)self->_preferencesButton centerXAnchor];
  v87 = [(HOiCloudDisabledViewController *)self containerView];
  v88 = [v87 centerXAnchor];
  v89 = [v86 constraintEqualToAnchor:v88];
  [v32 addObject:v89];

  v90 = [(HUColoredButton *)self->_preferencesButton topAnchor];
  v91 = [(HOiCloudDisabledViewController *)self bodyLabel];
  v92 = [v91 bottomAnchor];
  v93 = [v90 constraintEqualToAnchor:v92 constant:40.0];
  [v32 addObject:v93];

  v94 = [(HUColoredButton *)self->_preferencesButton bottomAnchor];
  v95 = [(HOiCloudDisabledViewController *)self containerView];
  v96 = [v95 bottomAnchor];
  v97 = [v94 constraintEqualToAnchor:v96];
  [v32 addObject:v97];

  v98 = [(HUColoredButton *)self->_preferencesButton leadingAnchor];
  v99 = [(HOiCloudDisabledViewController *)self view];
  v100 = [v99 layoutMarginsGuide];
  v101 = [v100 leadingAnchor];
  v102 = [v98 constraintGreaterThanOrEqualToAnchor:v101];

  LODWORD(v103) = 1132068864;
  [v102 setPriority:v103];
  v104 = [(HUColoredButton *)self->_preferencesButton trailingAnchor];
  v105 = [(HOiCloudDisabledViewController *)self view];
  v106 = [v105 layoutMarginsGuide];
  v107 = [v106 trailingAnchor];
  v108 = [v104 constraintLessThanOrEqualToAnchor:v107];

  LODWORD(v109) = 1132068864;
  [v108 setPriority:v109];
  v110 = [(HUColoredButton *)self->_preferencesButton widthAnchor];
  v111 = [v110 constraintGreaterThanOrEqualToConstant:250.0];
  v119[0] = v111;
  v112 = [(HUColoredButton *)self->_preferencesButton heightAnchor];
  +[HUColoredButton defaultHeight];
  v113 = [v112 constraintGreaterThanOrEqualToConstant:?];
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

- (void)setDataSyncState:(unint64_t)a3
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
    v14 = a3;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[HODataSyncingViewController:setDataSyncState] prev state = %lu (%@) | new state = %lu (%@)", &v9, 0x2Au);
  }

  if (self->_dataSyncState != a3)
  {
    self->_dataSyncState = a3;
    [(HOiCloudDisabledViewController *)self updateLabels];
  }
}

- (void)setStatus:(unint64_t)a3
{
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    status = self->_status;
    v7 = HMHomeManagerStatusToString();
    v8 = HMHomeManagerStatusToString();
    v9 = 134218754;
    v10 = status;
    v11 = 2112;
    v12 = v7;
    v13 = 2048;
    v14 = a3;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[HODataSyncingViewController:setStatus] prev status = %lu (%@) | new status = %lu | (%@)", &v9, 0x2Au);
  }

  if (self->_status != a3)
  {
    self->_status = a3;
    [(HOiCloudDisabledViewController *)self updateLabels];
  }
}

- (void)updateLabels
{
  v3 = [(HOiCloudDisabledViewController *)self titleLabel];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = [(HOiCloudDisabledViewController *)self bodyLabel];

  if (!v5)
  {
    return;
  }

  if (([(HOiCloudDisabledViewController *)self status]& 0x20) != 0)
  {
    v14 = sub_10002E168(@"HODataSyncingNoAccountAlertTitle");
    v15 = [(HOiCloudDisabledViewController *)self titleLabel];
    [v15 setText:v14];

    v16 = sub_10002E168(@"HODataSyncingNoAccountAlertBody");
    v17 = [(HOiCloudDisabledViewController *)self bodyLabel];
    [v17 setText:v16];

    v10 = [(HOiCloudDisabledViewController *)self bodyWidthConstraint];
    [v10 setConstant:380.0];
    goto LABEL_8;
  }

  if ([(HOiCloudDisabledViewController *)self dataSyncState]== 3)
  {
    v6 = sub_10002E168(@"HODataSyncingTurnedOffAlertTitle");
    v7 = [(HOiCloudDisabledViewController *)self titleLabel];
    [v7 setText:v6];

    v8 = sub_10002E168(@"HODataSyncingTurnedOffAlertBody");
    v9 = [(HOiCloudDisabledViewController *)self bodyLabel];
    [v9 setText:v8];

    v10 = [(HOiCloudDisabledViewController *)self view];
    [v10 frame];
    v12 = v11;
    v13 = [(HOiCloudDisabledViewController *)self bodyWidthConstraint];
    [v13 setConstant:v12];

LABEL_8:
  }

  v18 = [(HOiCloudDisabledViewController *)self view];
  [v18 layoutIfNeeded];
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