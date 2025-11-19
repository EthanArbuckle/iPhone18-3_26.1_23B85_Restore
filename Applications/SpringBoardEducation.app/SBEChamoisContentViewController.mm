@interface SBEChamoisContentViewController
- (id)_tutorialVideoURL;
- (void)dismissEducationViewController:(id)a3;
- (void)enableExternalDisplaySupport:(id)a3;
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
  v3 = [(SBEChamoisContentViewController *)self view];
  v4 = +[UIColor systemBackgroundColor];
  [v3 setBackgroundColor:v4];

  v5 = objc_alloc_init(UIView);
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [(SBEChamoisContentViewController *)self view];
  [v6 addSubview:v5];

  v7 = [v5 leadingAnchor];
  v8 = [(SBEChamoisContentViewController *)self view];
  v9 = [v8 leadingAnchor];
  v10 = [v7 constraintEqualToAnchor:v9 constant:88.0];
  [v10 setActive:1];

  v11 = [v5 trailingAnchor];
  v12 = [(SBEChamoisContentViewController *)self view];
  v13 = [v12 trailingAnchor];
  v14 = [v11 constraintEqualToAnchor:v13 constant:-88.0];
  [v14 setActive:1];

  v15 = [v5 topAnchor];
  v16 = [(SBEChamoisContentViewController *)self view];
  v17 = [v16 topAnchor];
  v18 = [v15 constraintEqualToAnchor:v17 constant:56.0];
  [v18 setActive:1];

  v19 = [v5 bottomAnchor];
  v20 = [(SBEChamoisContentViewController *)self view];
  v21 = [v20 bottomAnchor];
  v22 = [v19 constraintEqualToAnchor:v21 constant:-5.0];
  [v22 setActive:1];

  v23 = objc_alloc_init(UIScrollView);
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
  v24 = [(SBEChamoisContentViewController *)self view];
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

  v34 = [UIButton buttonWithType:1];
  v35 = +[UIColor systemBlueColor];
  [v34 setTitleColor:v35 forState:0];

  v36 = [NSBundle bundleForClass:objc_opt_class()];
  v37 = [v36 localizedStringForKey:@"STAGE_MANAGER_OPT_OUT_BUTTON" value:&stru_10000C2E0 table:0];
  [v34 setTitle:v37 forState:0];

  v38 = [v34 titleLabel];
  +[UIFont buttonFontSize];
  v39 = [UIFont systemFontOfSize:"systemFontOfSize:weight:" weight:?];
  [v38 setFont:v39];

  [v34 addTarget:self action:"dismissEducationViewController:" forControlEvents:64];
  v40 = [v34 titleLabel];
  [v40 setTextAlignment:1];

  [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v41) = 1148846080;
  [v34 setContentCompressionResistancePriority:1 forAxis:v41];
  [v5 addSubview:v34];
  v42 = [v34 bottomAnchor];
  v43 = [v5 bottomAnchor];
  v44 = [v42 constraintEqualToAnchor:v43 constant:-10.0];
  [v44 setActive:1];

  v45 = [v34 leadingAnchor];
  v46 = [v5 leadingAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];
  [v47 setActive:1];

  v48 = [v34 trailingAnchor];
  v49 = [v5 trailingAnchor];
  v50 = [v48 constraintEqualToAnchor:v49];
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
  v59 = [v58 titleLabel];
  [v59 setTextAlignment:1];

  [v58 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v60) = 1148846080;
  [v58 setContentCompressionResistancePriority:1 forAxis:v60];
  [v5 addSubview:v58];
  v61 = [v58 bottomAnchor];
  v62 = [v34 topAnchor];
  v63 = [v61 constraintEqualToAnchor:v62 constant:-15.0];
  [v63 setActive:1];

  v64 = [v58 leadingAnchor];
  v65 = [v5 leadingAnchor];
  v66 = [v64 constraintEqualToAnchor:v65 constant:80.0];
  [v66 setActive:1];

  v67 = [v58 trailingAnchor];
  v68 = [v5 trailingAnchor];
  v69 = [v67 constraintEqualToAnchor:v68 constant:-80.0];
  [v69 setActive:1];

  v70 = [v58 topAnchor];
  v71 = [v23 bottomAnchor];
  v72 = [v70 constraintEqualToAnchor:v71 constant:30.0];
  [v72 setActive:1];

  v73 = [SBCAAutoPlayingPackageView alloc];
  v74 = [(SBEChamoisContentViewController *)self _tutorialVideoURL];
  v75 = [v73 initWithURL:v74 startingState:@"start" endingState:@"return"];
  videoView = self->_videoView;
  self->_videoView = v75;

  v77 = [(SBCAAutoPlayingPackageView *)self->_videoView layer];
  [v77 setCornerRadius:13.0];

  v78 = [(SBCAAutoPlayingPackageView *)self->_videoView layer];
  [v78 setGeometryFlipped:1];

  v79 = [(SBCAAutoPlayingPackageView *)self->_videoView layer];
  [v79 setMasksToBounds:1];

  [(SBCAAutoPlayingPackageView *)self->_videoView setTranslatesAutoresizingMaskIntoConstraints:0];
  [v23 addSubview:self->_videoView];
  v80 = [(SBEChamoisContentViewController *)self presentingViewController];
  v81 = [v80 view];
  v82 = [v81 effectiveUserInterfaceLayoutDirection];

  if (v82 == 1)
  {
    v83 = [(SBCAAutoPlayingPackageView *)self->_videoView layer];
    CATransform3DMakeRotation(&v143, 3.14159265, 0.0, 1.0, 0.0);
    [v83 setTransform:&v143];
  }

  v84 = [(SBCAAutoPlayingPackageView *)self->_videoView topAnchor];
  v85 = [v23 contentLayoutGuide];
  v86 = [v85 topAnchor];
  v87 = [v84 constraintEqualToAnchor:v86];
  [v87 setActive:1];

  v88 = [(SBCAAutoPlayingPackageView *)self->_videoView leftAnchor];
  v89 = [v23 frameLayoutGuide];
  v90 = [v89 leftAnchor];
  v91 = [v88 constraintGreaterThanOrEqualToAnchor:v90 constant:60.0];
  [v91 setActive:1];

  v92 = [(SBCAAutoPlayingPackageView *)self->_videoView rightAnchor];
  v93 = [v23 frameLayoutGuide];
  v94 = [v93 rightAnchor];
  v95 = [v92 constraintLessThanOrEqualToAnchor:v94 constant:-60.0];
  [v95 setActive:1];

  v96 = [(SBCAAutoPlayingPackageView *)self->_videoView centerXAnchor];
  v97 = [v5 centerXAnchor];
  v98 = [v96 constraintEqualToAnchor:v97];
  [v98 setActive:1];

  v99 = [(SBCAAutoPlayingPackageView *)self->_videoView heightAnchor];
  v100 = [(SBCAAutoPlayingPackageView *)self->_videoView widthAnchor];
  v101 = [v99 constraintEqualToAnchor:v100 multiplier:0.75];
  [v101 setActive:1];

  v102 = [(SBCAAutoPlayingPackageView *)self->_videoView heightAnchor];
  v103 = [v102 constraintLessThanOrEqualToConstant:400.0];
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
  v111 = [v106 leadingAnchor];
  v112 = [v23 frameLayoutGuide];
  v113 = [v112 leadingAnchor];
  v114 = [v111 constraintEqualToAnchor:v113 constant:60.0];
  [v114 setActive:1];

  v115 = [v106 trailingAnchor];
  v116 = [v23 frameLayoutGuide];
  v117 = [v116 trailingAnchor];
  v118 = [v115 constraintEqualToAnchor:v117 constant:-60.0];
  [v118 setActive:1];

  v119 = [v106 topAnchor];
  v120 = [(SBCAAutoPlayingPackageView *)self->_videoView bottomAnchor];
  v121 = [v119 constraintEqualToAnchor:v120 constant:56.0];
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
  v127 = [v122 leadingAnchor];
  v128 = [v23 frameLayoutGuide];
  v129 = [v128 leadingAnchor];
  v130 = [v127 constraintEqualToAnchor:v129 constant:60.0];
  [v130 setActive:1];

  v131 = [v122 trailingAnchor];
  v132 = [v23 frameLayoutGuide];
  v133 = [v132 trailingAnchor];
  v134 = [v131 constraintEqualToAnchor:v133 constant:-60.0];
  [v134 setActive:1];

  v135 = [v122 topAnchor];
  v136 = [v106 bottomAnchor];
  v137 = [v135 constraintEqualToAnchor:v136 constant:15.0];
  [v137 setActive:1];

  v138 = [v122 bottomAnchor];
  v139 = [v23 contentLayoutGuide];
  v140 = [v139 bottomAnchor];
  v141 = [v138 constraintLessThanOrEqualToAnchor:v140 constant:-30.0];
  [v141 setActive:1];
}

- (id)_tutorialVideoURL
{
  v2 = [(SBEChamoisContentViewController *)self traitCollection];
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
  v3[2] = sub_100001F08;
  v3[3] = &unk_10000C218;
  v3[4] = self;
  [(SBEChamoisContentViewController *)self dismissViewControllerAnimated:1 completion:v3];
}

- (void)dismissEducationViewController:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100001F98;
  v3[3] = &unk_10000C218;
  v3[4] = self;
  [(SBEChamoisContentViewController *)self dismissViewControllerAnimated:1 completion:v3];
}

@end