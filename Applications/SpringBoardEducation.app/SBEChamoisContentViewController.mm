@interface SBEChamoisContentViewController
- (id)_tutorialVideoURL;
- (void)dismissEducationViewController:(id)controller;
- (void)enableExternalDisplaySupport:(id)support;
- (void)viewDidLoad;
@end

@implementation SBEChamoisContentViewController

- (void)viewDidLoad
{
  v144.receiver = self;
  v144.super_class = SBEChamoisContentViewController;
  [(SBEChamoisContentViewController *)&v144 viewDidLoad];
  [(SBEChamoisContentViewController *)self setModalInPresentation:1];
  [(SBEChamoisContentViewController *)self setModalPresentationStyle:2];
  view = [(SBEChamoisContentViewController *)self view];
  v4 = +[UIColor systemBackgroundColor];
  [view setBackgroundColor:v4];

  v5 = objc_alloc_init(UIView);
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  view2 = [(SBEChamoisContentViewController *)self view];
  [view2 addSubview:v5];

  leadingAnchor = [v5 leadingAnchor];
  view3 = [(SBEChamoisContentViewController *)self view];
  leadingAnchor2 = [view3 leadingAnchor];
  v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:88.0];
  [v10 setActive:1];

  trailingAnchor = [v5 trailingAnchor];
  view4 = [(SBEChamoisContentViewController *)self view];
  trailingAnchor2 = [view4 trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-88.0];
  [v14 setActive:1];

  topAnchor = [v5 topAnchor];
  view5 = [(SBEChamoisContentViewController *)self view];
  topAnchor2 = [view5 topAnchor];
  v18 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:56.0];
  [v18 setActive:1];

  bottomAnchor = [v5 bottomAnchor];
  view6 = [(SBEChamoisContentViewController *)self view];
  bottomAnchor2 = [view6 bottomAnchor];
  v22 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-5.0];
  [v22 setActive:1];

  v23 = objc_alloc_init(UIScrollView);
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
  view7 = [(SBEChamoisContentViewController *)self view];
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

  v34 = [UIButton buttonWithType:1];
  v35 = +[UIColor systemBlueColor];
  [v34 setTitleColor:v35 forState:0];

  v36 = [NSBundle bundleForClass:objc_opt_class()];
  v37 = [v36 localizedStringForKey:@"STAGE_MANAGER_OPT_OUT_BUTTON" value:&stru_10000C2E0 table:0];
  [v34 setTitle:v37 forState:0];

  titleLabel = [v34 titleLabel];
  +[UIFont buttonFontSize];
  v39 = [UIFont systemFontOfSize:"systemFontOfSize:weight:" weight:?];
  [titleLabel setFont:v39];

  [v34 addTarget:self action:"dismissEducationViewController:" forControlEvents:64];
  titleLabel2 = [v34 titleLabel];
  [titleLabel2 setTextAlignment:1];

  [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v41) = 1148846080;
  [v34 setContentCompressionResistancePriority:1 forAxis:v41];
  [v5 addSubview:v34];
  bottomAnchor3 = [v34 bottomAnchor];
  bottomAnchor4 = [v5 bottomAnchor];
  v44 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-10.0];
  [v44 setActive:1];

  leadingAnchor5 = [v34 leadingAnchor];
  leadingAnchor6 = [v5 leadingAnchor];
  v47 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  [v47 setActive:1];

  trailingAnchor5 = [v34 trailingAnchor];
  trailingAnchor6 = [v5 trailingAnchor];
  v50 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  [v50 setActive:1];

  v51 = +[UIButtonConfiguration filledButtonConfiguration];
  v52 = [NSAttributedString alloc];
  v53 = [NSBundle bundleForClass:objc_opt_class()];
  v54 = [v53 localizedStringForKey:@"STAGE_MANAGER_OPT_IN_BUTTON" value:&stru_10000C2E0 table:0];
  v145 = NSFontAttributeName;
  +[UIFont buttonFontSize];
  v55 = [UIFont systemFontOfSize:"systemFontOfSize:weight:" weight:?];
  v146 = v55;
  v56 = [NSDictionary dictionaryWithObjects:&v146 forKeys:&v145 count:1];
  v57 = [v52 initWithString:v54 attributes:v56];
  [v51 setAttributedTitle:v57];

  [v51 setContentInsets:{17.0, 0.0, 17.0, 0.0}];
  [v51 setCornerStyle:3];
  v142 = v51;
  v58 = [UIButton buttonWithConfiguration:v51 primaryAction:0];
  [v58 addTarget:self action:"enableExternalDisplaySupport:" forControlEvents:64];
  titleLabel3 = [v58 titleLabel];
  [titleLabel3 setTextAlignment:1];

  [v58 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v60) = 1148846080;
  [v58 setContentCompressionResistancePriority:1 forAxis:v60];
  [v5 addSubview:v58];
  bottomAnchor5 = [v58 bottomAnchor];
  topAnchor5 = [v34 topAnchor];
  v63 = [bottomAnchor5 constraintEqualToAnchor:topAnchor5 constant:-15.0];
  [v63 setActive:1];

  leadingAnchor7 = [v58 leadingAnchor];
  leadingAnchor8 = [v5 leadingAnchor];
  v66 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:80.0];
  [v66 setActive:1];

  trailingAnchor7 = [v58 trailingAnchor];
  trailingAnchor8 = [v5 trailingAnchor];
  v69 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:-80.0];
  [v69 setActive:1];

  topAnchor6 = [v58 topAnchor];
  bottomAnchor6 = [v23 bottomAnchor];
  v72 = [topAnchor6 constraintEqualToAnchor:bottomAnchor6 constant:30.0];
  [v72 setActive:1];

  v73 = [SBCAAutoPlayingPackageView alloc];
  _tutorialVideoURL = [(SBEChamoisContentViewController *)self _tutorialVideoURL];
  v75 = [v73 initWithURL:_tutorialVideoURL startingState:@"start" endingState:@"return"];
  videoView = self->_videoView;
  self->_videoView = v75;

  layer = [(SBCAAutoPlayingPackageView *)self->_videoView layer];
  [layer setCornerRadius:13.0];

  layer2 = [(SBCAAutoPlayingPackageView *)self->_videoView layer];
  [layer2 setGeometryFlipped:1];

  layer3 = [(SBCAAutoPlayingPackageView *)self->_videoView layer];
  [layer3 setMasksToBounds:1];

  [(SBCAAutoPlayingPackageView *)self->_videoView setTranslatesAutoresizingMaskIntoConstraints:0];
  [v23 addSubview:self->_videoView];
  presentingViewController = [(SBEChamoisContentViewController *)self presentingViewController];
  view8 = [presentingViewController view];
  effectiveUserInterfaceLayoutDirection = [view8 effectiveUserInterfaceLayoutDirection];

  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    layer4 = [(SBCAAutoPlayingPackageView *)self->_videoView layer];
    CATransform3DMakeRotation(&v143, 3.14159265, 0.0, 1.0, 0.0);
    [layer4 setTransform:&v143];
  }

  topAnchor7 = [(SBCAAutoPlayingPackageView *)self->_videoView topAnchor];
  contentLayoutGuide = [v23 contentLayoutGuide];
  topAnchor8 = [contentLayoutGuide topAnchor];
  v87 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
  [v87 setActive:1];

  leftAnchor = [(SBCAAutoPlayingPackageView *)self->_videoView leftAnchor];
  frameLayoutGuide = [v23 frameLayoutGuide];
  leftAnchor2 = [frameLayoutGuide leftAnchor];
  v91 = [leftAnchor constraintGreaterThanOrEqualToAnchor:leftAnchor2 constant:60.0];
  [v91 setActive:1];

  rightAnchor = [(SBCAAutoPlayingPackageView *)self->_videoView rightAnchor];
  frameLayoutGuide2 = [v23 frameLayoutGuide];
  rightAnchor2 = [frameLayoutGuide2 rightAnchor];
  v95 = [rightAnchor constraintLessThanOrEqualToAnchor:rightAnchor2 constant:-60.0];
  [v95 setActive:1];

  centerXAnchor = [(SBCAAutoPlayingPackageView *)self->_videoView centerXAnchor];
  centerXAnchor2 = [v5 centerXAnchor];
  v98 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v98 setActive:1];

  heightAnchor = [(SBCAAutoPlayingPackageView *)self->_videoView heightAnchor];
  widthAnchor = [(SBCAAutoPlayingPackageView *)self->_videoView widthAnchor];
  v101 = [heightAnchor constraintEqualToAnchor:widthAnchor multiplier:0.75];
  [v101 setActive:1];

  heightAnchor2 = [(SBCAAutoPlayingPackageView *)self->_videoView heightAnchor];
  v103 = [heightAnchor2 constraintLessThanOrEqualToConstant:400.0];
  [v103 setActive:1];

  LODWORD(v104) = 1148846080;
  [(SBCAAutoPlayingPackageView *)self->_videoView setContentCompressionResistancePriority:0 forAxis:v104];
  LODWORD(v105) = 1148846080;
  [(SBCAAutoPlayingPackageView *)self->_videoView setContentCompressionResistancePriority:1 forAxis:v105];
  v106 = objc_alloc_init(UILabel);
  [v106 setNumberOfLines:0];
  LODWORD(v107) = 1148846080;
  [v106 setContentCompressionResistancePriority:1 forAxis:v107];
  [v106 setTextAlignment:1];
  v108 = [UIFont _preferredFontForTextStyle:UIFontTextStyleLargeTitle weight:UIFontWeightBold];
  [v106 setFont:v108];

  v109 = [NSBundle bundleForClass:objc_opt_class()];
  v110 = [v109 localizedStringForKey:@"STAGE_MANAGER_FIRST_TIME_ONBOARDING_TITLE" value:&stru_10000C2E0 table:0];
  [v106 setText:v110];

  [v106 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v23 addSubview:v106];
  leadingAnchor9 = [v106 leadingAnchor];
  frameLayoutGuide3 = [v23 frameLayoutGuide];
  leadingAnchor10 = [frameLayoutGuide3 leadingAnchor];
  v114 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10 constant:60.0];
  [v114 setActive:1];

  trailingAnchor9 = [v106 trailingAnchor];
  frameLayoutGuide4 = [v23 frameLayoutGuide];
  trailingAnchor10 = [frameLayoutGuide4 trailingAnchor];
  v118 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10 constant:-60.0];
  [v118 setActive:1];

  topAnchor9 = [v106 topAnchor];
  bottomAnchor7 = [(SBCAAutoPlayingPackageView *)self->_videoView bottomAnchor];
  v121 = [topAnchor9 constraintEqualToAnchor:bottomAnchor7 constant:56.0];
  [v121 setActive:1];

  v122 = objc_alloc_init(UILabel);
  [v122 setNumberOfLines:0];
  LODWORD(v123) = 1148846080;
  [v122 setContentCompressionResistancePriority:1 forAxis:v123];
  [v122 setTextAlignment:1];
  v124 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v122 setFont:v124];

  v125 = [NSBundle bundleForClass:objc_opt_class()];
  v126 = [v125 localizedStringForKey:@"STAGE_MANAGER_FIRST_TIME_ONBOARDING_BODY" value:&stru_10000C2E0 table:0];
  [v122 setText:v126];

  [v122 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v23 addSubview:v122];
  leadingAnchor11 = [v122 leadingAnchor];
  frameLayoutGuide5 = [v23 frameLayoutGuide];
  leadingAnchor12 = [frameLayoutGuide5 leadingAnchor];
  v130 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12 constant:60.0];
  [v130 setActive:1];

  trailingAnchor11 = [v122 trailingAnchor];
  frameLayoutGuide6 = [v23 frameLayoutGuide];
  trailingAnchor12 = [frameLayoutGuide6 trailingAnchor];
  v134 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12 constant:-60.0];
  [v134 setActive:1];

  topAnchor10 = [v122 topAnchor];
  bottomAnchor8 = [v106 bottomAnchor];
  v137 = [topAnchor10 constraintEqualToAnchor:bottomAnchor8 constant:15.0];
  [v137 setActive:1];

  bottomAnchor9 = [v122 bottomAnchor];
  contentLayoutGuide2 = [v23 contentLayoutGuide];
  bottomAnchor10 = [contentLayoutGuide2 bottomAnchor];
  v141 = [bottomAnchor9 constraintLessThanOrEqualToAnchor:bottomAnchor10 constant:-30.0];
  [v141 setActive:1];
}

- (id)_tutorialVideoURL
{
  traitCollection = [(SBEChamoisContentViewController *)self traitCollection];
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
  v3[2] = sub_100001F08;
  v3[3] = &unk_10000C218;
  v3[4] = self;
  [(SBEChamoisContentViewController *)self dismissViewControllerAnimated:1 completion:v3];
}

- (void)dismissEducationViewController:(id)controller
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100001F98;
  v3[3] = &unk_10000C218;
  v3[4] = self;
  [(SBEChamoisContentViewController *)self dismissViewControllerAnimated:1 completion:v3];
}

@end