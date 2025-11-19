@interface VLFCrowdsourcingPermissionContaineeViewController
+ (BOOL)shouldShowPermissionViewController;
- (VLFCrowdsourcingPermissionContaineeViewController)init;
- (VLFCrowdsourcingPermissionContaineeViewController)initWithCoder:(id)a3;
- (VLFCrowdsourcingPermissionContaineeViewController)initWithCompletion:(id)a3;
- (VLFCrowdsourcingPermissionContaineeViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)heightForLayout:(unint64_t)a3;
- (void)_updateForCurrentState;
- (void)dealloc;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)willChangeContainerStyle:(unint64_t)a3;
@end

@implementation VLFCrowdsourcingPermissionContaineeViewController

- (double)heightForLayout:(unint64_t)a3
{
  if (a3 != 5)
  {
    return -1.0;
  }

  v3 = [(ContaineeViewController *)self cardPresentationController];
  [v3 availableHeight];
  v5 = v4;

  return v5;
}

- (void)willChangeContainerStyle:(unint64_t)a3
{
  if (a3 > 7 || ((1 << a3) & 0xA3) == 0)
  {
    v4 = sub_100603AF8();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = 134349056;
      v6 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Layout changed to landscape; dismissing", &v5, 0xCu);
    }

    [(ContaineeViewController *)self handleDismissAction:0];
  }
}

- (void)_updateForCurrentState
{
  v3 = [(VLFCrowdsourcingPermissionContaineeViewController *)self traitCollection];
  v4 = [UIFont _maps_fontWithTextStyle:UIFontTextStyleLargeTitle weight:v3 compatibleWithTraitCollection:UIFontWeightBold];
  v5 = [(VLFCrowdsourcingPermissionContaineeViewController *)self titleLabel];
  [v5 setFont:v4];

  v6 = [(VLFCrowdsourcingPermissionContaineeViewController *)self titleLabel];
  v7 = [v6 font];
  [v7 capHeight];
  v9 = v8 + 30.0;
  v10 = [(VLFCrowdsourcingPermissionContaineeViewController *)self titleLabelBaselineConstraint];
  [v10 setConstant:v9];

  v11 = [(VLFCrowdsourcingPermissionContaineeViewController *)self traitCollection];
  v12 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:v11];
  v13 = [UIFont fontWithDescriptor:v12 size:0.0];
  v14 = [(VLFCrowdsourcingPermissionContaineeViewController *)self descriptionLabel];
  [v14 setFont:v13];

  v15 = [(VLFCrowdsourcingPermissionContaineeViewController *)self traitCollection];
  v16 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:v15];
  v17 = [UIFont fontWithDescriptor:v16 size:0.0];
  v18 = [(VLFCrowdsourcingPermissionContaineeViewController *)self learnMoreButton];
  v19 = [v18 titleLabel];
  [v19 setFont:v17];

  v20 = [(VLFCrowdsourcingPermissionContaineeViewController *)self traitCollection];
  v21 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:v20];
  v22 = [UIFont fontWithDescriptor:v21 size:0.0];
  v23 = [(VLFCrowdsourcingPermissionContaineeViewController *)self topRow];
  v24 = [v23 infoLabel];
  [v24 setFont:v22];

  v25 = [(VLFCrowdsourcingPermissionContaineeViewController *)self traitCollection];
  v26 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:v25];
  v27 = [UIFont fontWithDescriptor:v26 size:0.0];
  v28 = [(VLFCrowdsourcingPermissionContaineeViewController *)self middleRow];
  v29 = [v28 infoLabel];
  [v29 setFont:v27];

  v30 = [(VLFCrowdsourcingPermissionContaineeViewController *)self traitCollection];
  v31 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:v30];
  v32 = [UIFont fontWithDescriptor:v31 size:0.0];
  v33 = [(VLFCrowdsourcingPermissionContaineeViewController *)self bottomRow];
  v34 = [v33 infoLabel];
  [v34 setFont:v32];

  v35 = [(VLFCrowdsourcingPermissionContaineeViewController *)self traitCollection];
  v36 = [UIFont _maps_fontWithTextStyle:UIFontTextStyleBody weight:v35 compatibleWithTraitCollection:UIFontWeightBold];
  v37 = [(VLFCrowdsourcingPermissionContaineeViewController *)self allowButton];
  v38 = [v37 titleLabel];
  [v38 setFont:v36];

  v39 = [(VLFCrowdsourcingPermissionContaineeViewController *)self traitCollection];
  v40 = [UIFont _maps_fontWithTextStyle:UIFontTextStyleBody weight:v39 compatibleWithTraitCollection:UIFontWeightBold];
  v41 = [(VLFCrowdsourcingPermissionContaineeViewController *)self denyButton];
  v42 = [v41 titleLabel];
  [v42 setFont:v40];

  v43 = [(VLFCrowdsourcingPermissionContaineeViewController *)self traitCollection];
  v44 = [v43 preferredContentSizeCategory];
  v45 = UIContentSizeCategoryCompareToCategory(v44, UIContentSizeCategoryAccessibilityExtraExtraExtraLarge);

  v46 = [(VLFCrowdsourcingPermissionContaineeViewController *)self iconStackView];
  v48 = v46;
  v47 = 52.0;
  if (v45)
  {
    v47 = 26.0;
  }

  [v46 setSpacing:v47];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = VLFCrowdsourcingPermissionContaineeViewController;
  [(MapsThemeViewController *)&v10 traitCollectionDidChange:v4];
  v5 = [v4 userInterfaceStyle];
  v6 = [(VLFCrowdsourcingPermissionContaineeViewController *)self traitCollection];
  if (v5 == [v6 userInterfaceStyle])
  {
    v7 = [v4 preferredContentSizeCategory];
    v8 = [(VLFCrowdsourcingPermissionContaineeViewController *)self traitCollection];
    v9 = [v8 preferredContentSizeCategory];

    if (v7 == v9)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  [(VLFCrowdsourcingPermissionContaineeViewController *)self _updateForCurrentState];
LABEL_6:
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = VLFCrowdsourcingPermissionContaineeViewController;
  [(VLFCrowdsourcingPermissionContaineeViewController *)&v5 viewDidAppear:a3];
  v4 = sub_100603AF8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v7 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] VLF Crowdsourcing Permission Card has been shown", buf, 0xCu);
  }

  [GEOAPPortal captureUserAction:45 target:75 value:0];
  byte_10195CC90 = 1;
}

- (void)viewDidLoad
{
  v288.receiver = self;
  v288.super_class = VLFCrowdsourcingPermissionContaineeViewController;
  [(ContaineeViewController *)&v288 viewDidLoad];
  v3 = [(ContaineeViewController *)self headerView];
  [v3 removeFromSuperview];

  v4 = [(ContaineeViewController *)self contentView];
  v5 = [v4 topAnchor];
  v6 = [(VLFCrowdsourcingPermissionContaineeViewController *)self view];
  v7 = [v6 topAnchor];
  v8 = [v5 constraintEqualToAnchor:v7];
  v299 = v8;
  v9 = [NSArray arrayWithObjects:&v299 count:1];
  [NSLayoutConstraint activateConstraints:v9];

  v10 = [UIColor colorNamed:@"TeachableMomentCardBackgoundColor"];
  v11 = [(ContaineeViewController *)self contentView];
  [v11 setBackgroundColor:v10];

  v12 = [(ContaineeViewController *)self contentView];
  LODWORD(v13) = 1148846080;
  [v12 setContentCompressionResistancePriority:1 forAxis:v13];

  v14 = [(ContaineeViewController *)self contentView];
  LODWORD(v15) = 1148846080;
  [v14 setContentHuggingPriority:1 forAxis:v15];

  v16 = [UIScrollView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v278 = [v16 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v278 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v20) = 1148846080;
  [v278 setContentCompressionResistancePriority:1 forAxis:v20];
  LODWORD(v21) = 1148846080;
  [v278 setContentHuggingPriority:1 forAxis:v21];
  v22 = [(ContaineeViewController *)self contentView];
  [v22 addSubview:v278];

  v275 = [v278 leadingAnchor];
  v279 = [(ContaineeViewController *)self contentView];
  v266 = [v279 leadingAnchor];
  v258 = [v275 constraintEqualToAnchor:v266];
  v298[0] = v258;
  v23 = [v278 trailingAnchor];
  v24 = [(ContaineeViewController *)self contentView];
  v25 = [v24 trailingAnchor];
  v26 = [v23 constraintEqualToAnchor:v25];
  v298[1] = v26;
  v27 = [v278 topAnchor];
  v28 = [(ContaineeViewController *)self contentView];
  v29 = [v28 topAnchor];
  v30 = [v27 constraintEqualToAnchor:v29];
  v298[2] = v30;
  v31 = [NSArray arrayWithObjects:v298 count:3];
  [NSLayoutConstraint activateConstraints:v31];

  v280 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v280 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v278 addSubview:v280];
  v276 = [v280 leadingAnchor];
  v267 = [v278 leadingAnchor];
  v259 = [v276 constraintEqualToAnchor:v267];
  v297[0] = v259;
  v251 = [v280 trailingAnchor];
  v245 = [v278 trailingAnchor];
  v239 = [v251 constraintEqualToAnchor:v245];
  v297[1] = v239;
  v234 = [v280 topAnchor];
  v229 = [v278 topAnchor];
  v32 = [v234 constraintEqualToAnchor:v229];
  v297[2] = v32;
  v33 = [v280 bottomAnchor];
  v34 = [v278 bottomAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];
  v297[3] = v35;
  v36 = [v280 widthAnchor];
  v37 = [(ContaineeViewController *)self contentView];
  v38 = [v37 widthAnchor];
  v39 = [v36 constraintEqualToAnchor:v38];
  v297[4] = v39;
  v40 = [NSArray arrayWithObjects:v297 count:5];
  [NSLayoutConstraint activateConstraints:v40];

  v41 = [UIImageView alloc];
  v42 = [UIImage systemImageNamed:@"arkit"];
  v277 = [v41 initWithImage:v42];

  [v277 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v280 addSubview:v277];
  v268 = [v277 centerXAnchor];
  v260 = [v280 centerXAnchor];
  v252 = [v268 constraintEqualToAnchor:v260];
  v296[0] = v252;
  v43 = [v277 topAnchor];
  v44 = [v280 topAnchor];
  v45 = [v43 constraintEqualToAnchor:v44 constant:30.0];
  v296[1] = v45;
  v46 = [v277 widthAnchor];
  v47 = [v277 heightAnchor];
  v48 = [v46 constraintEqualToAnchor:v47];
  v296[2] = v48;
  v49 = [v277 heightAnchor];
  v50 = [v49 constraintEqualToConstant:80.0];
  v296[3] = v50;
  v51 = [NSArray arrayWithObjects:v296 count:4];
  [NSLayoutConstraint activateConstraints:v51];

  v52 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(VLFCrowdsourcingPermissionContaineeViewController *)self setTitleLabel:v52];

  v53 = [(VLFCrowdsourcingPermissionContaineeViewController *)self titleLabel];
  [v53 setTranslatesAutoresizingMaskIntoConstraints:0];

  v54 = [(VLFCrowdsourcingPermissionContaineeViewController *)self titleLabel];
  LODWORD(v55) = 1148846080;
  [v54 setContentCompressionResistancePriority:1 forAxis:v55];

  v56 = [(VLFCrowdsourcingPermissionContaineeViewController *)self titleLabel];
  LODWORD(v57) = 1148846080;
  [v56 setContentHuggingPriority:1 forAxis:v57];

  v58 = [(VLFCrowdsourcingPermissionContaineeViewController *)self titleLabel];
  [v58 setNumberOfLines:0];

  v59 = +[UIColor labelColor];
  v60 = [(VLFCrowdsourcingPermissionContaineeViewController *)self titleLabel];
  [v60 setTextColor:v59];

  v61 = +[NSBundle mainBundle];
  v62 = [v61 localizedStringForKey:@"[VLF Crowdsourcing] permission card title" value:@"localized string not found" table:0];
  v63 = [(VLFCrowdsourcingPermissionContaineeViewController *)self titleLabel];
  [v63 setText:v62];

  v64 = [(VLFCrowdsourcingPermissionContaineeViewController *)self titleLabel];
  [v64 setTextAlignment:1];

  v65 = [(VLFCrowdsourcingPermissionContaineeViewController *)self titleLabel];
  v66 = [v65 firstBaselineAnchor];
  v67 = [v277 bottomAnchor];
  v68 = [v66 constraintEqualToAnchor:v67 constant:30.0];
  [(VLFCrowdsourcingPermissionContaineeViewController *)self setTitleLabelBaselineConstraint:v68];

  v69 = [(VLFCrowdsourcingPermissionContaineeViewController *)self titleLabel];
  [v280 addSubview:v69];

  v269 = [(VLFCrowdsourcingPermissionContaineeViewController *)self titleLabel];
  v70 = [v269 leadingAnchor];
  v71 = [v280 leadingAnchor];
  v72 = [v70 constraintEqualToAnchor:v71 constant:24.0];
  v295[0] = v72;
  v73 = [(VLFCrowdsourcingPermissionContaineeViewController *)self titleLabel];
  v74 = [v73 trailingAnchor];
  v75 = [v280 trailingAnchor];
  v76 = [v74 constraintEqualToAnchor:v75 constant:-24.0];
  v295[1] = v76;
  v77 = [(VLFCrowdsourcingPermissionContaineeViewController *)self titleLabelBaselineConstraint];
  v295[2] = v77;
  v78 = [NSArray arrayWithObjects:v295 count:3];
  [NSLayoutConstraint activateConstraints:v78];

  v79 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(VLFCrowdsourcingPermissionContaineeViewController *)self setDescriptionLabel:v79];

  v80 = [(VLFCrowdsourcingPermissionContaineeViewController *)self descriptionLabel];
  [v80 setTranslatesAutoresizingMaskIntoConstraints:0];

  v81 = [(VLFCrowdsourcingPermissionContaineeViewController *)self descriptionLabel];
  LODWORD(v82) = 1148846080;
  [v81 setContentCompressionResistancePriority:1 forAxis:v82];

  v83 = [(VLFCrowdsourcingPermissionContaineeViewController *)self descriptionLabel];
  LODWORD(v84) = 1148846080;
  [v83 setContentHuggingPriority:1 forAxis:v84];

  v85 = +[NSBundle mainBundle];
  v86 = [v85 localizedStringForKey:@"[VLF Crowdsourcing] permission card description" value:@"localized string not found" table:0];
  v87 = [(VLFCrowdsourcingPermissionContaineeViewController *)self descriptionLabel];
  [v87 setText:v86];

  v88 = +[UIColor labelColor];
  v89 = [(VLFCrowdsourcingPermissionContaineeViewController *)self descriptionLabel];
  [v89 setTextColor:v88];

  v90 = [(VLFCrowdsourcingPermissionContaineeViewController *)self descriptionLabel];
  [v90 setTextAlignment:1];

  v91 = [(VLFCrowdsourcingPermissionContaineeViewController *)self descriptionLabel];
  [v91 setNumberOfLines:0];

  v92 = [(VLFCrowdsourcingPermissionContaineeViewController *)self descriptionLabel];
  [v280 addSubview:v92];

  v270 = [(VLFCrowdsourcingPermissionContaineeViewController *)self descriptionLabel];
  v261 = [v270 leadingAnchor];
  v253 = [v280 leadingAnchor];
  v246 = [v261 constraintEqualToAnchor:v253 constant:24.0];
  v294[0] = v246;
  v240 = [(VLFCrowdsourcingPermissionContaineeViewController *)self descriptionLabel];
  v93 = [v240 trailingAnchor];
  v94 = [v280 trailingAnchor];
  v95 = [v93 constraintEqualToAnchor:v94 constant:-24.0];
  v294[1] = v95;
  v96 = [(VLFCrowdsourcingPermissionContaineeViewController *)self descriptionLabel];
  v97 = [v96 topAnchor];
  v98 = [(VLFCrowdsourcingPermissionContaineeViewController *)self titleLabel];
  v99 = [v98 bottomAnchor];
  v100 = [v97 constraintEqualToAnchor:v99 constant:16.0];
  v294[2] = v100;
  v101 = [NSArray arrayWithObjects:v294 count:3];
  [NSLayoutConstraint activateConstraints:v101];

  objc_initWeak(&location, self);
  v285[0] = _NSConcreteStackBlock;
  v285[1] = 3221225472;
  v285[2] = sub_100606140;
  v285[3] = &unk_101661900;
  objc_copyWeak(&v286, &location);
  v102 = [UIAction actionWithHandler:v285];
  v103 = [UIButton buttonWithType:1 primaryAction:v102];
  [(VLFCrowdsourcingPermissionContaineeViewController *)self setLearnMoreButton:v103];

  v104 = [(VLFCrowdsourcingPermissionContaineeViewController *)self learnMoreButton];
  [v104 setTranslatesAutoresizingMaskIntoConstraints:0];

  v105 = [(VLFCrowdsourcingPermissionContaineeViewController *)self learnMoreButton];
  LODWORD(v106) = 1148846080;
  [v105 setContentCompressionResistancePriority:1 forAxis:v106];

  v107 = [(VLFCrowdsourcingPermissionContaineeViewController *)self learnMoreButton];
  LODWORD(v108) = 1148846080;
  [v107 setContentHuggingPriority:1 forAxis:v108];

  v109 = [(VLFCrowdsourcingPermissionContaineeViewController *)self learnMoreButton];
  v110 = +[NSBundle mainBundle];
  v111 = [v110 localizedStringForKey:@"[VLF Crowdsourcing] permission card learn more link" value:@"localized string not found" table:0];
  [v109 setTitle:v111 forState:0];

  v112 = [(VLFCrowdsourcingPermissionContaineeViewController *)self learnMoreButton];
  [v280 addSubview:v112];

  v271 = [(VLFCrowdsourcingPermissionContaineeViewController *)self learnMoreButton];
  v262 = [v271 leadingAnchor];
  v254 = [v280 leadingAnchor];
  v247 = [v262 constraintGreaterThanOrEqualToAnchor:v254 constant:24.0];
  v293[0] = v247;
  v241 = [(VLFCrowdsourcingPermissionContaineeViewController *)self learnMoreButton];
  v235 = [v241 trailingAnchor];
  v230 = [v280 trailingAnchor];
  v225 = [v235 constraintLessThanOrEqualToAnchor:v230 constant:-24.0];
  v293[1] = v225;
  v221 = [(VLFCrowdsourcingPermissionContaineeViewController *)self learnMoreButton];
  v219 = [v221 centerXAnchor];
  v113 = [(VLFCrowdsourcingPermissionContaineeViewController *)self descriptionLabel];
  v114 = [v113 centerXAnchor];
  v115 = [v219 constraintEqualToAnchor:v114];
  v293[2] = v115;
  v116 = [(VLFCrowdsourcingPermissionContaineeViewController *)self learnMoreButton];
  v117 = [v116 topAnchor];
  v118 = [(VLFCrowdsourcingPermissionContaineeViewController *)self descriptionLabel];
  v119 = [v118 bottomAnchor];
  v120 = [v117 constraintEqualToAnchor:v119 constant:16.0];
  v293[3] = v120;
  v121 = [NSArray arrayWithObjects:v293 count:4];
  [NSLayoutConstraint activateConstraints:v121];

  v122 = [UIImage systemImageNamed:@"person.3.fill"];
  v123 = [v122 imageWithRenderingMode:2];
  v124 = +[NSBundle mainBundle];
  v125 = [v124 localizedStringForKey:@"[VLF Crowdsourcing] permission card top info text" value:@"localized string not found" table:0];
  v126 = [VLFInfoRowView infoRowWithImage:v123 text:v125];
  [(VLFCrowdsourcingPermissionContaineeViewController *)self setTopRow:v126];

  v127 = [UIImage systemImageNamed:@"camera.viewfinder"];
  v128 = [v127 imageWithRenderingMode:2];
  v129 = +[NSBundle mainBundle];
  v130 = [v129 localizedStringForKey:@"[VLF Crowdsourcing] permission card middle info text" value:@"localized string not found" table:0];
  v131 = [VLFInfoRowView infoRowWithImage:v128 text:v130];
  [(VLFCrowdsourcingPermissionContaineeViewController *)self setMiddleRow:v131];

  v132 = [UIImage systemImageNamed:@"lock.fill"];
  v133 = [v132 imageWithRenderingMode:2];
  v134 = +[NSBundle mainBundle];
  v135 = [v134 localizedStringForKey:@"[VLF Crowdsourcing] permission card bottom info text" value:@"localized string not found" table:0];
  v136 = [VLFInfoRowView infoRowWithImage:v133 text:v135];
  [(VLFCrowdsourcingPermissionContaineeViewController *)self setBottomRow:v136];

  v137 = [UIStackView alloc];
  v138 = [(VLFCrowdsourcingPermissionContaineeViewController *)self topRow];
  v292[0] = v138;
  v139 = [(VLFCrowdsourcingPermissionContaineeViewController *)self middleRow];
  v292[1] = v139;
  v140 = [(VLFCrowdsourcingPermissionContaineeViewController *)self bottomRow];
  v292[2] = v140;
  v141 = [NSArray arrayWithObjects:v292 count:3];
  v142 = [v137 initWithArrangedSubviews:v141];
  [(VLFCrowdsourcingPermissionContaineeViewController *)self setIconStackView:v142];

  v143 = [(VLFCrowdsourcingPermissionContaineeViewController *)self iconStackView];
  [v143 setTranslatesAutoresizingMaskIntoConstraints:0];

  v144 = [(VLFCrowdsourcingPermissionContaineeViewController *)self iconStackView];
  [v144 setAxis:1];

  v145 = [(VLFCrowdsourcingPermissionContaineeViewController *)self iconStackView];
  [v145 setAlignment:0];

  v146 = [(VLFCrowdsourcingPermissionContaineeViewController *)self iconStackView];
  [v146 setSpacing:26.0];

  v147 = [(VLFCrowdsourcingPermissionContaineeViewController *)self iconStackView];
  LODWORD(v148) = 1148846080;
  [v147 setContentCompressionResistancePriority:1 forAxis:v148];

  v149 = [(VLFCrowdsourcingPermissionContaineeViewController *)self iconStackView];
  LODWORD(v150) = 1148846080;
  [v149 setContentHuggingPriority:1 forAxis:v150];

  v151 = [(VLFCrowdsourcingPermissionContaineeViewController *)self iconStackView];
  [v280 addSubview:v151];

  v272 = [(VLFCrowdsourcingPermissionContaineeViewController *)self iconStackView];
  v263 = [v272 leadingAnchor];
  v255 = [v280 leadingAnchor];
  v248 = [v263 constraintEqualToAnchor:v255 constant:48.0];
  v291[0] = v248;
  v242 = [(VLFCrowdsourcingPermissionContaineeViewController *)self iconStackView];
  v236 = [v242 trailingAnchor];
  v231 = [v280 trailingAnchor];
  v226 = [v236 constraintEqualToAnchor:v231 constant:-48.0];
  v291[1] = v226;
  v222 = [(VLFCrowdsourcingPermissionContaineeViewController *)self iconStackView];
  v152 = [v222 topAnchor];
  v153 = [(VLFCrowdsourcingPermissionContaineeViewController *)self learnMoreButton];
  v154 = [v153 bottomAnchor];
  v155 = [v152 constraintEqualToAnchor:v154 constant:16.0];
  v291[2] = v155;
  v156 = [(VLFCrowdsourcingPermissionContaineeViewController *)self iconStackView];
  v157 = [v156 bottomAnchor];
  v158 = [v280 bottomAnchor];
  v159 = [v157 constraintLessThanOrEqualToAnchor:v158];
  v291[3] = v159;
  v160 = [NSArray arrayWithObjects:v291 count:4];
  [NSLayoutConstraint activateConstraints:v160];

  v283[0] = _NSConcreteStackBlock;
  v283[1] = 3221225472;
  v283[2] = sub_100606230;
  v283[3] = &unk_101661900;
  objc_copyWeak(&v284, &location);
  v161 = [UIAction actionWithHandler:v283];
  v162 = [UIButton buttonWithType:1 primaryAction:v161];
  [(VLFCrowdsourcingPermissionContaineeViewController *)self setAllowButton:v162];

  v163 = [(VLFCrowdsourcingPermissionContaineeViewController *)self allowButton];
  [v163 setTranslatesAutoresizingMaskIntoConstraints:0];

  v164 = [(VLFCrowdsourcingPermissionContaineeViewController *)self allowButton];
  v165 = +[NSBundle mainBundle];
  v166 = [v165 localizedStringForKey:@"[VLF Crowdsourcing] permission card allow button" value:@"localized string not found" table:0];
  [v164 setTitle:v166 forState:0];

  v167 = +[UIColor systemBlueColor];
  v168 = [(VLFCrowdsourcingPermissionContaineeViewController *)self allowButton];
  [v168 setBackgroundColor:v167];

  v169 = [(VLFCrowdsourcingPermissionContaineeViewController *)self allowButton];
  v170 = +[UIColor whiteColor];
  [v169 setTitleColor:v170 forState:0];

  v171 = [(VLFCrowdsourcingPermissionContaineeViewController *)self allowButton];
  v172 = [v171 layer];
  [v172 setCornerRadius:12.0];

  v173 = [(VLFCrowdsourcingPermissionContaineeViewController *)self allowButton];
  LODWORD(v174) = 1148846080;
  [v173 setContentCompressionResistancePriority:1 forAxis:v174];

  v175 = [(ContaineeViewController *)self contentView];
  v176 = [(VLFCrowdsourcingPermissionContaineeViewController *)self allowButton];
  [v175 addSubview:v176];

  v273 = [(VLFCrowdsourcingPermissionContaineeViewController *)self allowButton];
  v256 = [v273 leadingAnchor];
  v264 = [(ContaineeViewController *)self contentView];
  v249 = [v264 leadingAnchor];
  v243 = [v256 constraintEqualToAnchor:v249 constant:24.0];
  v290[0] = v243;
  v237 = [(VLFCrowdsourcingPermissionContaineeViewController *)self allowButton];
  v227 = [v237 trailingAnchor];
  v232 = [(ContaineeViewController *)self contentView];
  v223 = [v232 trailingAnchor];
  v177 = [v227 constraintEqualToAnchor:v223 constant:-24.0];
  v290[1] = v177;
  v178 = [(VLFCrowdsourcingPermissionContaineeViewController *)self allowButton];
  v179 = [v178 topAnchor];
  v180 = [v278 bottomAnchor];
  v181 = [v179 constraintEqualToAnchor:v180 constant:24.0];
  v290[2] = v181;
  v182 = [(VLFCrowdsourcingPermissionContaineeViewController *)self allowButton];
  v183 = [v182 heightAnchor];
  v184 = [v183 constraintEqualToConstant:60.0];
  v290[3] = v184;
  v185 = [NSArray arrayWithObjects:v290 count:4];
  [NSLayoutConstraint activateConstraints:v185];

  v281[0] = _NSConcreteStackBlock;
  v281[1] = 3221225472;
  v281[2] = sub_100606384;
  v281[3] = &unk_101661900;
  objc_copyWeak(&v282, &location);
  v186 = [UIAction actionWithHandler:v281];
  v187 = [UIButton buttonWithType:1 primaryAction:v186];
  [(VLFCrowdsourcingPermissionContaineeViewController *)self setDenyButton:v187];

  v188 = [(VLFCrowdsourcingPermissionContaineeViewController *)self denyButton];
  [v188 setTranslatesAutoresizingMaskIntoConstraints:0];

  v189 = [(VLFCrowdsourcingPermissionContaineeViewController *)self denyButton];
  v190 = +[NSBundle mainBundle];
  v191 = [v190 localizedStringForKey:@"[VLF Crowdsourcing] permission card deny button" value:@"localized string not found" table:0];
  [v189 setTitle:v191 forState:0];

  v192 = [(VLFCrowdsourcingPermissionContaineeViewController *)self denyButton];
  v193 = [v192 layer];
  [v193 setCornerRadius:12.0];

  v194 = [(VLFCrowdsourcingPermissionContaineeViewController *)self denyButton];
  LODWORD(v195) = 1148846080;
  [v194 setContentCompressionResistancePriority:1 forAxis:v195];

  v196 = [(ContaineeViewController *)self contentView];
  v197 = [(VLFCrowdsourcingPermissionContaineeViewController *)self denyButton];
  [v196 addSubview:v197];

  v274 = [(VLFCrowdsourcingPermissionContaineeViewController *)self denyButton];
  v257 = [v274 leadingAnchor];
  v265 = [(ContaineeViewController *)self contentView];
  v250 = [v265 leadingAnchor];
  v244 = [v257 constraintEqualToAnchor:v250 constant:24.0];
  v289[0] = v244;
  v238 = [(VLFCrowdsourcingPermissionContaineeViewController *)self denyButton];
  v228 = [v238 trailingAnchor];
  v233 = [(ContaineeViewController *)self contentView];
  v224 = [v233 trailingAnchor];
  v220 = [v228 constraintEqualToAnchor:v224 constant:-24.0];
  v289[1] = v220;
  v218 = [(VLFCrowdsourcingPermissionContaineeViewController *)self denyButton];
  v216 = [v218 topAnchor];
  v217 = [(VLFCrowdsourcingPermissionContaineeViewController *)self allowButton];
  v215 = [v217 bottomAnchor];
  v214 = [v216 constraintEqualToAnchor:v215 constant:6.0];
  v289[2] = v214;
  v213 = [(VLFCrowdsourcingPermissionContaineeViewController *)self denyButton];
  v212 = [v213 heightAnchor];
  v211 = [v212 constraintEqualToConstant:60.0];
  v289[3] = v211;
  v210 = [(VLFCrowdsourcingPermissionContaineeViewController *)self denyButton];
  v208 = [v210 bottomAnchor];
  v209 = [(ContaineeViewController *)self contentView];
  v198 = [v209 safeAreaLayoutGuide];
  v199 = [v198 bottomAnchor];
  LODWORD(v200) = 1148829696;
  v201 = [v208 constraintEqualToAnchor:v199 constant:0.0 priority:v200];
  v289[4] = v201;
  v202 = [(VLFCrowdsourcingPermissionContaineeViewController *)self denyButton];
  v203 = [v202 bottomAnchor];
  v204 = [(ContaineeViewController *)self contentView];
  v205 = [v204 bottomAnchor];
  v206 = [v203 constraintLessThanOrEqualToAnchor:v205 constant:-16.0];
  v289[5] = v206;
  v207 = [NSArray arrayWithObjects:v289 count:6];
  [NSLayoutConstraint activateConstraints:v207];

  [(VLFCrowdsourcingPermissionContaineeViewController *)self _updateForCurrentState];
  objc_destroyWeak(&v282);
  objc_destroyWeak(&v284);
  objc_destroyWeak(&v286);
  objc_destroyWeak(&location);
}

- (void)dealloc
{
  v3 = sub_100603AF8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = VLFCrowdsourcingPermissionContaineeViewController;
  [(VLFCrowdsourcingPermissionContaineeViewController *)&v4 dealloc];
}

- (VLFCrowdsourcingPermissionContaineeViewController)initWithCompletion:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = VLFCrowdsourcingPermissionContaineeViewController;
  v5 = [(VLFCrowdsourcingPermissionContaineeViewController *)&v15 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = sub_100603AF8();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Initializing", buf, 0xCu);
    }

    v7 = [v4 copy];
    completion = v5->_completion;
    v5->_completion = v7;

    v9 = [(ContaineeViewController *)v5 cardPresentationController];
    [v9 setHideGrabber:1];

    v10 = [(ContaineeViewController *)v5 cardPresentationController];
    [v10 setAllowsSwipeToDismiss:0];

    v11 = [(ContaineeViewController *)v5 cardPresentationController];
    [v11 setPresentedModally:1];

    v12 = [(ContaineeViewController *)v5 cardPresentationController];
    [v12 setEdgeAttachedRegularHeightDimmingBehavior:2];

    v13 = [(ContaineeViewController *)v5 cardPresentationController];
    [v13 setTakesAvailableHeight:1];
  }

  return v5;
}

- (VLFCrowdsourcingPermissionContaineeViewController)init
{
  result = [NSException raise:@"MethodNotAvailableException" format:@"This method is unavailable."];
  __break(1u);
  return result;
}

- (VLFCrowdsourcingPermissionContaineeViewController)initWithCoder:(id)a3
{
  v3 = a3;
  result = [NSException raise:@"MethodNotAvailableException" format:@"This method is unavailable."];
  __break(1u);
  return result;
}

- (VLFCrowdsourcingPermissionContaineeViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5 = a3;
  v6 = a4;
  result = [NSException raise:@"MethodNotAvailableException" format:@"This method is unavailable."];
  __break(1u);
  return result;
}

+ (BOOL)shouldShowPermissionViewController
{
  if (GEOVisualLocalizationCrowdsourcingIsSupported())
  {
    if (GEOVisualLocalizationCrowdsourcingIsAllowed())
    {
      if (_GEOConfigHasValue())
      {
        v3 = sub_100603AF8();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
        {
          v11 = 134349056;
          v12 = a1;
          v4 = "[%{public}p] Not showing VLF Crowdsourcing Permission Card because the user has already made a decision";
LABEL_10:
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, v4, &v11, 0xCu);
        }
      }

      else
      {
        if (byte_10195CC90 != 1)
        {
          v7 = +[PedestrianARSessionUsageTracker sharedInstance];
          v8 = [v7 numberOfTimesARLocalized];
          v9 = +[VLFSessionUsageTracker sharedInstance];
          v10 = &v8[[v9 numberOfTimesVLFLocalized]];
          v5 = v10 >= GEOConfigGetInteger();

          return v5;
        }

        v3 = sub_100603AF8();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
        {
          v11 = 134349056;
          v12 = a1;
          v4 = "[%{public}p] Not showing VLF Crowdsourcing Permission Card because the user has already seen the crowdsourcing permission card";
          goto LABEL_10;
        }
      }
    }

    else
    {
      v3 = sub_100603AF8();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v11 = 134349056;
        v12 = a1;
        v4 = "[%{public}p] Not showing VLF Crowdsourcing Permission Card because the feature is not supported for the current device posture";
        goto LABEL_10;
      }
    }
  }

  else
  {
    v3 = sub_100603AF8();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v11 = 134349056;
      v12 = a1;
      v4 = "[%{public}p] Not showing VLF Crowdsourcing Permission Card because the feature is not enabled";
      goto LABEL_10;
    }
  }

  return 0;
}

@end