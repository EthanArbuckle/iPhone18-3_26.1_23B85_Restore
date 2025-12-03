@interface SBEExternalDisplayContentViewController
- (id)_tutorialVideoURL;
- (void)_updateHardwareRequirementsAppearance;
- (void)dismissEducationViewController:(id)controller;
- (void)enableExternalDisplaySupport:(id)support;
- (void)externalDisplayHardwareRequirementsSatisfiedChanged:(BOOL)changed;
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
  view = [(SBEExternalDisplayContentViewController *)self view];
  v4 = +[UIColor systemBackgroundColor];
  [view setBackgroundColor:v4];

  v5 = objc_alloc_init(UIView);
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  view2 = [(SBEExternalDisplayContentViewController *)self view];
  [view2 addSubview:v5];

  leadingAnchor = [v5 leadingAnchor];
  view3 = [(SBEExternalDisplayContentViewController *)self view];
  leadingAnchor2 = [view3 leadingAnchor];
  v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:88.0];
  [v10 setActive:1];

  trailingAnchor = [v5 trailingAnchor];
  view4 = [(SBEExternalDisplayContentViewController *)self view];
  trailingAnchor2 = [view4 trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-88.0];
  [v14 setActive:1];

  topAnchor = [v5 topAnchor];
  view5 = [(SBEExternalDisplayContentViewController *)self view];
  topAnchor2 = [view5 topAnchor];
  v18 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:56.0];
  [v18 setActive:1];

  bottomAnchor = [v5 bottomAnchor];
  view6 = [(SBEExternalDisplayContentViewController *)self view];
  bottomAnchor2 = [view6 bottomAnchor];
  v22 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-5.0];
  [v22 setActive:1];

  v23 = objc_alloc_init(UIScrollView);
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
  view7 = [(SBEExternalDisplayContentViewController *)self view];
  [view7 addSubview:v23];

  leadingAnchor3 = [v23 leadingAnchor];
  leadingAnchor4 = [v5 leadingAnchor];
  v27 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [v27 setActive:1];

  trailingAnchor3 = [v23 trailingAnchor];
  trailingAnchor4 = [v5 trailingAnchor];
  v30 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [v30 setActive:1];

  topAnchor3 = [v23 topAnchor];
  topAnchor4 = [v5 topAnchor];
  v33 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  [v33 setActive:1];

  v34 = objc_alloc_init(UIStackView);
  actionsStackView = self->_actionsStackView;
  self->_actionsStackView = v34;

  [(UIStackView *)self->_actionsStackView setAxis:1];
  [(UIStackView *)self->_actionsStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 addSubview:self->_actionsStackView];
  topAnchor5 = [(UIStackView *)self->_actionsStackView topAnchor];
  bottomAnchor3 = [v23 bottomAnchor];
  v38 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3 constant:15.0];
  [v38 setActive:1];

  leadingAnchor5 = [(UIStackView *)self->_actionsStackView leadingAnchor];
  leadingAnchor6 = [v5 leadingAnchor];
  v41 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:80.0];
  [v41 setActive:1];

  trailingAnchor5 = [(UIStackView *)self->_actionsStackView trailingAnchor];
  trailingAnchor6 = [v5 trailingAnchor];
  v44 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-80.0];
  [v44 setActive:1];

  bottomAnchor4 = [(UIStackView *)self->_actionsStackView bottomAnchor];
  v150 = v5;
  bottomAnchor5 = [v5 bottomAnchor];
  v47 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5 constant:-10.0];
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
  titleLabel = [(UIButton *)self->_optInButton titleLabel];
  [titleLabel setTextAlignment:1];

  LODWORD(v71) = 1148846080;
  [(UIButton *)self->_optInButton setContentCompressionResistancePriority:1 forAxis:v71];
  [(UIStackView *)self->_actionsStackView addArrangedSubview:self->_optInButton];
  v72 = [UIButton buttonWithType:1];
  v73 = +[UIColor systemBlueColor];
  [v72 setTitleColor:v73 forState:0];

  v74 = [NSBundle bundleForClass:objc_opt_class()];
  v75 = [v74 localizedStringForKey:@"EXTERNAL_DISPLAY_OPT_OUT_BUTTON" value:&stru_10000C2E0 table:0];
  [v72 setTitle:v75 forState:0];

  titleLabel2 = [v72 titleLabel];
  +[UIFont buttonFontSize];
  v77 = [UIFont systemFontOfSize:"systemFontOfSize:weight:" weight:?];
  [titleLabel2 setFont:v77];

  [v72 addTarget:self action:"dismissEducationViewController:" forControlEvents:64];
  titleLabel3 = [v72 titleLabel];
  [titleLabel3 setTextAlignment:1];

  LODWORD(v79) = 1148846080;
  [v72 setContentCompressionResistancePriority:1 forAxis:v79];
  [(UIStackView *)self->_actionsStackView addArrangedSubview:v72];
  v80 = [SBCAAutoPlayingPackageView alloc];
  _tutorialVideoURL = [(SBEExternalDisplayContentViewController *)self _tutorialVideoURL];
  v82 = [v80 initWithURL:_tutorialVideoURL startingState:@"start" endingState:@"return"];
  videoView = self->_videoView;
  self->_videoView = v82;

  layer = [(SBCAAutoPlayingPackageView *)self->_videoView layer];
  [layer setCornerRadius:13.0];

  layer2 = [(SBCAAutoPlayingPackageView *)self->_videoView layer];
  [layer2 setGeometryFlipped:1];

  layer3 = [(SBCAAutoPlayingPackageView *)self->_videoView layer];
  [layer3 setMasksToBounds:1];

  [(SBCAAutoPlayingPackageView *)self->_videoView setTranslatesAutoresizingMaskIntoConstraints:0];
  [v23 addSubview:self->_videoView];
  presentingViewController = [(SBEExternalDisplayContentViewController *)self presentingViewController];
  view8 = [presentingViewController view];
  effectiveUserInterfaceLayoutDirection = [view8 effectiveUserInterfaceLayoutDirection];

  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    layer4 = [(SBCAAutoPlayingPackageView *)self->_videoView layer];
    CATransform3DMakeRotation(&v151, 3.14159265, 0.0, 1.0, 0.0);
    [layer4 setTransform:&v151];
  }

  topAnchor6 = [(SBCAAutoPlayingPackageView *)self->_videoView topAnchor];
  contentLayoutGuide = [v23 contentLayoutGuide];
  topAnchor7 = [contentLayoutGuide topAnchor];
  v94 = [topAnchor6 constraintEqualToAnchor:topAnchor7];
  [v94 setActive:1];

  leftAnchor = [(SBCAAutoPlayingPackageView *)self->_videoView leftAnchor];
  frameLayoutGuide = [v23 frameLayoutGuide];
  leftAnchor2 = [frameLayoutGuide leftAnchor];
  v98 = [leftAnchor constraintGreaterThanOrEqualToAnchor:leftAnchor2 constant:60.0];
  [v98 setActive:1];

  rightAnchor = [(SBCAAutoPlayingPackageView *)self->_videoView rightAnchor];
  frameLayoutGuide2 = [v23 frameLayoutGuide];
  rightAnchor2 = [frameLayoutGuide2 rightAnchor];
  v102 = [rightAnchor constraintLessThanOrEqualToAnchor:rightAnchor2 constant:-60.0];
  [v102 setActive:1];

  centerXAnchor = [(SBCAAutoPlayingPackageView *)self->_videoView centerXAnchor];
  centerXAnchor2 = [v150 centerXAnchor];
  v105 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v105 setActive:1];

  heightAnchor = [(SBCAAutoPlayingPackageView *)self->_videoView heightAnchor];
  widthAnchor = [(SBCAAutoPlayingPackageView *)self->_videoView widthAnchor];
  v108 = [heightAnchor constraintEqualToAnchor:widthAnchor multiplier:0.75];
  [v108 setActive:1];

  heightAnchor2 = [(SBCAAutoPlayingPackageView *)self->_videoView heightAnchor];
  v110 = [heightAnchor2 constraintLessThanOrEqualToConstant:400.0];
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
  leadingAnchor7 = [v113 leadingAnchor];
  frameLayoutGuide3 = [v23 frameLayoutGuide];
  leadingAnchor8 = [frameLayoutGuide3 leadingAnchor];
  v121 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:60.0];
  [v121 setActive:1];

  trailingAnchor7 = [v113 trailingAnchor];
  frameLayoutGuide4 = [v23 frameLayoutGuide];
  trailingAnchor8 = [frameLayoutGuide4 trailingAnchor];
  v125 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:-60.0];
  [v125 setActive:1];

  topAnchor8 = [v113 topAnchor];
  bottomAnchor6 = [(SBCAAutoPlayingPackageView *)self->_videoView bottomAnchor];
  v128 = [topAnchor8 constraintEqualToAnchor:bottomAnchor6 constant:56.0];
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
  leadingAnchor9 = [v129 leadingAnchor];
  frameLayoutGuide5 = [v23 frameLayoutGuide];
  leadingAnchor10 = [frameLayoutGuide5 leadingAnchor];
  v137 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10 constant:60.0];
  [v137 setActive:1];

  trailingAnchor9 = [v129 trailingAnchor];
  frameLayoutGuide6 = [v23 frameLayoutGuide];
  trailingAnchor10 = [frameLayoutGuide6 trailingAnchor];
  v141 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10 constant:-60.0];
  [v141 setActive:1];

  topAnchor9 = [v129 topAnchor];
  bottomAnchor7 = [v113 bottomAnchor];
  v144 = [topAnchor9 constraintEqualToAnchor:bottomAnchor7 constant:15.0];
  [v144 setActive:1];

  bottomAnchor8 = [v129 bottomAnchor];
  contentLayoutGuide2 = [v23 contentLayoutGuide];
  bottomAnchor9 = [contentLayoutGuide2 bottomAnchor];
  v148 = [bottomAnchor8 constraintLessThanOrEqualToAnchor:bottomAnchor9 constant:-30.0];
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
  traitCollection = [(SBEExternalDisplayContentViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (userInterfaceStyle == 2)
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

- (void)enableExternalDisplaySupport:(id)support
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100003360;
  v3[3] = &unk_10000C218;
  v3[4] = self;
  [(SBEExternalDisplayContentViewController *)self dismissViewControllerAnimated:1 completion:v3];
}

- (void)dismissEducationViewController:(id)controller
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000033F0;
  v3[3] = &unk_10000C218;
  v3[4] = self;
  [(SBEExternalDisplayContentViewController *)self dismissViewControllerAnimated:1 completion:v3];
}

- (void)externalDisplayHardwareRequirementsSatisfiedChanged:(BOOL)changed
{
  if (self->_hardwareRequirementsSatisfied != changed)
  {
    self->_hardwareRequirementsSatisfied = changed;
    [(SBEExternalDisplayContentViewController *)self _updateHardwareRequirementsAppearance];
  }
}

@end