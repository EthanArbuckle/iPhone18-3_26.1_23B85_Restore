@interface SBEExternalDisplayContentViewController
- (id)_tutorialVideoURL;
- (void)_updateHardwareRequirementsAppearance;
- (void)dismissEducationViewController:(id)a3;
- (void)enableExternalDisplaySupport:(id)a3;
- (void)externalDisplayHardwareRequirementsSatisfiedChanged:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation SBEExternalDisplayContentViewController

- (void)viewDidLoad
{
  v152.receiver = self;
  v152.super_class = SBEExternalDisplayContentViewController;
  [(SBEExternalDisplayContentViewController *)&v152 viewDidLoad];
  [(SBEExternalDisplayContentViewController *)self setModalInPresentation:1];
  [(SBEExternalDisplayContentViewController *)self setModalPresentationStyle:2];
  v3 = [(SBEExternalDisplayContentViewController *)self view];
  v4 = +[UIColor systemBackgroundColor];
  [v3 setBackgroundColor:v4];

  v5 = objc_alloc_init(UIView);
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [(SBEExternalDisplayContentViewController *)self view];
  [v6 addSubview:v5];

  v7 = [v5 leadingAnchor];
  v8 = [(SBEExternalDisplayContentViewController *)self view];
  v9 = [v8 leadingAnchor];
  v10 = [v7 constraintEqualToAnchor:v9 constant:88.0];
  [v10 setActive:1];

  v11 = [v5 trailingAnchor];
  v12 = [(SBEExternalDisplayContentViewController *)self view];
  v13 = [v12 trailingAnchor];
  v14 = [v11 constraintEqualToAnchor:v13 constant:-88.0];
  [v14 setActive:1];

  v15 = [v5 topAnchor];
  v16 = [(SBEExternalDisplayContentViewController *)self view];
  v17 = [v16 topAnchor];
  v18 = [v15 constraintEqualToAnchor:v17 constant:56.0];
  [v18 setActive:1];

  v19 = [v5 bottomAnchor];
  v20 = [(SBEExternalDisplayContentViewController *)self view];
  v21 = [v20 bottomAnchor];
  v22 = [v19 constraintEqualToAnchor:v21 constant:-5.0];
  [v22 setActive:1];

  v23 = objc_alloc_init(UIScrollView);
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
  v24 = [(SBEExternalDisplayContentViewController *)self view];
  [v24 addSubview:v23];

  v25 = [v23 leadingAnchor];
  v26 = [v5 leadingAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];
  [v27 setActive:1];

  v28 = [v23 trailingAnchor];
  v29 = [v5 trailingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];
  [v30 setActive:1];

  v31 = [v23 topAnchor];
  v32 = [v5 topAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];
  [v33 setActive:1];

  v34 = objc_alloc_init(UIStackView);
  actionsStackView = self->_actionsStackView;
  self->_actionsStackView = v34;

  [(UIStackView *)self->_actionsStackView setAxis:1];
  [(UIStackView *)self->_actionsStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 addSubview:self->_actionsStackView];
  v36 = [(UIStackView *)self->_actionsStackView topAnchor];
  v37 = [v23 bottomAnchor];
  v38 = [v36 constraintEqualToAnchor:v37 constant:15.0];
  [v38 setActive:1];

  v39 = [(UIStackView *)self->_actionsStackView leadingAnchor];
  v40 = [v5 leadingAnchor];
  v41 = [v39 constraintEqualToAnchor:v40 constant:80.0];
  [v41 setActive:1];

  v42 = [(UIStackView *)self->_actionsStackView trailingAnchor];
  v43 = [v5 trailingAnchor];
  v44 = [v42 constraintEqualToAnchor:v43 constant:-80.0];
  [v44 setActive:1];

  v45 = [(UIStackView *)self->_actionsStackView bottomAnchor];
  v150 = v5;
  v46 = [v5 bottomAnchor];
  v47 = [v45 constraintEqualToAnchor:v46 constant:-10.0];
  [v47 setActive:1];

  v48 = +[UIButtonConfiguration filledButtonConfiguration];
  v49 = [NSAttributedString alloc];
  v50 = [NSBundle bundleForClass:objc_opt_class()];
  v51 = [v50 localizedStringForKey:@"EXTERNAL_DISPLAY_OPT_IN_BUTTON" value:&stru_10000C2E0 table:0];
  v153 = NSFontAttributeName;
  +[UIFont buttonFontSize];
  v52 = [UIFont systemFontOfSize:"systemFontOfSize:weight:" weight:?];
  v154 = v52;
  v53 = [NSDictionary dictionaryWithObjects:&v154 forKeys:&v153 count:1];
  v54 = [v49 initWithString:v51 attributes:v53];
  [v48 setAttributedTitle:v54];

  [v48 setContentInsets:{17.0, 0.0, 17.0, 0.0}];
  [v48 setCornerStyle:3];
  v55 = objc_alloc_init(UIImageView);
  externalHardwareImageView = self->_externalHardwareImageView;
  self->_externalHardwareImageView = v55;

  [(UIImageView *)self->_externalHardwareImageView setContentMode:1];
  v57 = self->_externalHardwareImageView;
  v58 = [UIImage systemImageNamed:@"display.trianglebadge.exclamationmark"];
  [(UIImageView *)v57 setImage:v58];

  [(UIStackView *)self->_actionsStackView addArrangedSubview:self->_externalHardwareImageView];
  v59 = objc_alloc_init(UILabel);
  externalHardwareRecLabel = self->_externalHardwareRecLabel;
  self->_externalHardwareRecLabel = v59;

  [(UILabel *)self->_externalHardwareRecLabel setNumberOfLines:0];
  v61 = self->_externalHardwareRecLabel;
  v62 = [NSBundle bundleForClass:objc_opt_class()];
  v63 = [v62 localizedStringForKey:@"EXTERNAL_DISPLAY_KEYBOARD_MOUSE_RECOMMENDATION" value:&stru_10000C2E0 table:0];
  [(UILabel *)v61 setText:v63];

  v64 = self->_externalHardwareRecLabel;
  v65 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
  [(UILabel *)v64 setFont:v65];

  v66 = self->_externalHardwareRecLabel;
  v67 = +[UIColor secondaryLabelColor];
  [(UILabel *)v66 setTextColor:v67];

  [(UILabel *)self->_externalHardwareRecLabel setTextAlignment:1];
  [(UIStackView *)self->_actionsStackView addArrangedSubview:self->_externalHardwareRecLabel];
  v149 = v48;
  v68 = [UIButton buttonWithConfiguration:v48 primaryAction:0];
  optInButton = self->_optInButton;
  self->_optInButton = v68;

  [(UIButton *)self->_optInButton addTarget:self action:"enableExternalDisplaySupport:" forControlEvents:64];
  v70 = [(UIButton *)self->_optInButton titleLabel];
  [v70 setTextAlignment:1];

  LODWORD(v71) = 1148846080;
  [(UIButton *)self->_optInButton setContentCompressionResistancePriority:1 forAxis:v71];
  [(UIStackView *)self->_actionsStackView addArrangedSubview:self->_optInButton];
  v72 = [UIButton buttonWithType:1];
  v73 = +[UIColor systemBlueColor];
  [v72 setTitleColor:v73 forState:0];

  v74 = [NSBundle bundleForClass:objc_opt_class()];
  v75 = [v74 localizedStringForKey:@"EXTERNAL_DISPLAY_OPT_OUT_BUTTON" value:&stru_10000C2E0 table:0];
  [v72 setTitle:v75 forState:0];

  v76 = [v72 titleLabel];
  +[UIFont buttonFontSize];
  v77 = [UIFont systemFontOfSize:"systemFontOfSize:weight:" weight:?];
  [v76 setFont:v77];

  [v72 addTarget:self action:"dismissEducationViewController:" forControlEvents:64];
  v78 = [v72 titleLabel];
  [v78 setTextAlignment:1];

  LODWORD(v79) = 1148846080;
  [v72 setContentCompressionResistancePriority:1 forAxis:v79];
  [(UIStackView *)self->_actionsStackView addArrangedSubview:v72];
  v80 = [SBCAAutoPlayingPackageView alloc];
  v81 = [(SBEExternalDisplayContentViewController *)self _tutorialVideoURL];
  v82 = [v80 initWithURL:v81 startingState:@"start" endingState:@"return"];
  videoView = self->_videoView;
  self->_videoView = v82;

  v84 = [(SBCAAutoPlayingPackageView *)self->_videoView layer];
  [v84 setCornerRadius:13.0];

  v85 = [(SBCAAutoPlayingPackageView *)self->_videoView layer];
  [v85 setGeometryFlipped:1];

  v86 = [(SBCAAutoPlayingPackageView *)self->_videoView layer];
  [v86 setMasksToBounds:1];

  [(SBCAAutoPlayingPackageView *)self->_videoView setTranslatesAutoresizingMaskIntoConstraints:0];
  [v23 addSubview:self->_videoView];
  v87 = [(SBEExternalDisplayContentViewController *)self presentingViewController];
  v88 = [v87 view];
  v89 = [v88 effectiveUserInterfaceLayoutDirection];

  if (v89 == 1)
  {
    v90 = [(SBCAAutoPlayingPackageView *)self->_videoView layer];
    CATransform3DMakeRotation(&v151, 3.14159265, 0.0, 1.0, 0.0);
    [v90 setTransform:&v151];
  }

  v91 = [(SBCAAutoPlayingPackageView *)self->_videoView topAnchor];
  v92 = [v23 contentLayoutGuide];
  v93 = [v92 topAnchor];
  v94 = [v91 constraintEqualToAnchor:v93];
  [v94 setActive:1];

  v95 = [(SBCAAutoPlayingPackageView *)self->_videoView leftAnchor];
  v96 = [v23 frameLayoutGuide];
  v97 = [v96 leftAnchor];
  v98 = [v95 constraintGreaterThanOrEqualToAnchor:v97 constant:60.0];
  [v98 setActive:1];

  v99 = [(SBCAAutoPlayingPackageView *)self->_videoView rightAnchor];
  v100 = [v23 frameLayoutGuide];
  v101 = [v100 rightAnchor];
  v102 = [v99 constraintLessThanOrEqualToAnchor:v101 constant:-60.0];
  [v102 setActive:1];

  v103 = [(SBCAAutoPlayingPackageView *)self->_videoView centerXAnchor];
  v104 = [v150 centerXAnchor];
  v105 = [v103 constraintEqualToAnchor:v104];
  [v105 setActive:1];

  v106 = [(SBCAAutoPlayingPackageView *)self->_videoView heightAnchor];
  v107 = [(SBCAAutoPlayingPackageView *)self->_videoView widthAnchor];
  v108 = [v106 constraintEqualToAnchor:v107 multiplier:0.75];
  [v108 setActive:1];

  v109 = [(SBCAAutoPlayingPackageView *)self->_videoView heightAnchor];
  v110 = [v109 constraintLessThanOrEqualToConstant:400.0];
  [v110 setActive:1];

  LODWORD(v111) = 1148846080;
  [(SBCAAutoPlayingPackageView *)self->_videoView setContentCompressionResistancePriority:0 forAxis:v111];
  LODWORD(v112) = 1148846080;
  [(SBCAAutoPlayingPackageView *)self->_videoView setContentCompressionResistancePriority:1 forAxis:v112];
  v113 = objc_alloc_init(UILabel);
  [v113 setNumberOfLines:0];
  LODWORD(v114) = 1148846080;
  [v113 setContentCompressionResistancePriority:1 forAxis:v114];
  [v113 setTextAlignment:1];
  v115 = [UIFont _preferredFontForTextStyle:UIFontTextStyleLargeTitle weight:UIFontWeightBold];
  [v113 setFont:v115];

  v116 = [NSBundle bundleForClass:objc_opt_class()];
  v117 = [v116 localizedStringForKey:@"EXTERNAL_DISPLAY_FIRST_TIME_ONBOARDING_TITLE" value:&stru_10000C2E0 table:0];
  [v113 setText:v117];

  [v113 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v23 addSubview:v113];
  v118 = [v113 leadingAnchor];
  v119 = [v23 frameLayoutGuide];
  v120 = [v119 leadingAnchor];
  v121 = [v118 constraintEqualToAnchor:v120 constant:60.0];
  [v121 setActive:1];

  v122 = [v113 trailingAnchor];
  v123 = [v23 frameLayoutGuide];
  v124 = [v123 trailingAnchor];
  v125 = [v122 constraintEqualToAnchor:v124 constant:-60.0];
  [v125 setActive:1];

  v126 = [v113 topAnchor];
  v127 = [(SBCAAutoPlayingPackageView *)self->_videoView bottomAnchor];
  v128 = [v126 constraintEqualToAnchor:v127 constant:56.0];
  [v128 setActive:1];

  v129 = objc_alloc_init(UILabel);
  [v129 setNumberOfLines:0];
  LODWORD(v130) = 1148846080;
  [v129 setContentCompressionResistancePriority:1 forAxis:v130];
  [v129 setTextAlignment:1];
  v131 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v129 setFont:v131];

  v132 = [NSBundle bundleForClass:objc_opt_class()];
  v133 = [v132 localizedStringForKey:@"EXTERNAL_DISPLAY_FIRST_TIME_ONBOARDING_BODY" value:&stru_10000C2E0 table:0];
  [v129 setText:v133];

  [v129 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v23 addSubview:v129];
  v134 = [v129 leadingAnchor];
  v135 = [v23 frameLayoutGuide];
  v136 = [v135 leadingAnchor];
  v137 = [v134 constraintEqualToAnchor:v136 constant:60.0];
  [v137 setActive:1];

  v138 = [v129 trailingAnchor];
  v139 = [v23 frameLayoutGuide];
  v140 = [v139 trailingAnchor];
  v141 = [v138 constraintEqualToAnchor:v140 constant:-60.0];
  [v141 setActive:1];

  v142 = [v129 topAnchor];
  v143 = [v113 bottomAnchor];
  v144 = [v142 constraintEqualToAnchor:v143 constant:15.0];
  [v144 setActive:1];

  v145 = [v129 bottomAnchor];
  v146 = [v23 contentLayoutGuide];
  v147 = [v146 bottomAnchor];
  v148 = [v145 constraintLessThanOrEqualToAnchor:v147 constant:-30.0];
  [v148 setActive:1];

  [(UIStackView *)self->_actionsStackView setCustomSpacing:self->_externalHardwareImageView afterView:5.0];
  [(UIStackView *)self->_actionsStackView setCustomSpacing:self->_externalHardwareRecLabel afterView:15.0];
  [(UIStackView *)self->_actionsStackView setCustomSpacing:self->_optInButton afterView:15.0];
  [(SBEExternalDisplayContentViewController *)self _updateHardwareRequirementsAppearance];
}

- (void)_updateHardwareRequirementsAppearance
{
  [(UIImageView *)self->_externalHardwareImageView setHidden:self->_hardwareRequirementsSatisfied];
  [(UILabel *)self->_externalHardwareRecLabel setHidden:self->_hardwareRequirementsSatisfied];
  [(UIButton *)self->_optInButton setHidden:!self->_hardwareRequirementsSatisfied];
  actionsStackView = self->_actionsStackView;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100003250;
  v4[3] = &unk_10000C218;
  v4[4] = self;
  [UIView transitionWithView:actionsStackView duration:5242880 options:v4 animations:0 completion:0.2];
}

- (id)_tutorialVideoURL
{
  v2 = [(SBEExternalDisplayContentViewController *)self traitCollection];
  v3 = [v2 userInterfaceStyle];

  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (v3 == 2)
  {
    v6 = @"ChamoisTutorial_DK";
  }

  else
  {
    v6 = @"ChamoisTutorial";
  }

  v7 = [v4 URLForResource:v6 withExtension:@"ca"];

  return v7;
}

- (void)enableExternalDisplaySupport:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100003360;
  v3[3] = &unk_10000C218;
  v3[4] = self;
  [(SBEExternalDisplayContentViewController *)self dismissViewControllerAnimated:1 completion:v3];
}

- (void)dismissEducationViewController:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000033F0;
  v3[3] = &unk_10000C218;
  v3[4] = self;
  [(SBEExternalDisplayContentViewController *)self dismissViewControllerAnimated:1 completion:v3];
}

- (void)externalDisplayHardwareRequirementsSatisfiedChanged:(BOOL)a3
{
  if (self->_hardwareRequirementsSatisfied != a3)
  {
    self->_hardwareRequirementsSatisfied = a3;
    [(SBEExternalDisplayContentViewController *)self _updateHardwareRequirementsAppearance];
  }
}

@end