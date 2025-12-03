@interface VLFCrowdsourcingPermissionContaineeViewController
+ (BOOL)shouldShowPermissionViewController;
- (VLFCrowdsourcingPermissionContaineeViewController)init;
- (VLFCrowdsourcingPermissionContaineeViewController)initWithCoder:(id)coder;
- (VLFCrowdsourcingPermissionContaineeViewController)initWithCompletion:(id)completion;
- (VLFCrowdsourcingPermissionContaineeViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)heightForLayout:(unint64_t)layout;
- (void)_updateForCurrentState;
- (void)dealloc;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)willChangeContainerStyle:(unint64_t)style;
@end

@implementation VLFCrowdsourcingPermissionContaineeViewController

- (double)heightForLayout:(unint64_t)layout
{
  if (layout != 5)
  {
    return -1.0;
  }

  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController availableHeight];
  v5 = v4;

  return v5;
}

- (void)willChangeContainerStyle:(unint64_t)style
{
  if (style > 7 || ((1 << style) & 0xA3) == 0)
  {
    v4 = sub_100603AF8();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = 134349056;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Layout changed to landscape; dismissing", &v5, 0xCu);
    }

    [(ContaineeViewController *)self handleDismissAction:0];
  }
}

- (void)_updateForCurrentState
{
  traitCollection = [(VLFCrowdsourcingPermissionContaineeViewController *)self traitCollection];
  v4 = [UIFont _maps_fontWithTextStyle:UIFontTextStyleLargeTitle weight:traitCollection compatibleWithTraitCollection:UIFontWeightBold];
  titleLabel = [(VLFCrowdsourcingPermissionContaineeViewController *)self titleLabel];
  [titleLabel setFont:v4];

  titleLabel2 = [(VLFCrowdsourcingPermissionContaineeViewController *)self titleLabel];
  font = [titleLabel2 font];
  [font capHeight];
  v9 = v8 + 30.0;
  titleLabelBaselineConstraint = [(VLFCrowdsourcingPermissionContaineeViewController *)self titleLabelBaselineConstraint];
  [titleLabelBaselineConstraint setConstant:v9];

  traitCollection2 = [(VLFCrowdsourcingPermissionContaineeViewController *)self traitCollection];
  v12 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:traitCollection2];
  v13 = [UIFont fontWithDescriptor:v12 size:0.0];
  descriptionLabel = [(VLFCrowdsourcingPermissionContaineeViewController *)self descriptionLabel];
  [descriptionLabel setFont:v13];

  traitCollection3 = [(VLFCrowdsourcingPermissionContaineeViewController *)self traitCollection];
  v16 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:traitCollection3];
  v17 = [UIFont fontWithDescriptor:v16 size:0.0];
  learnMoreButton = [(VLFCrowdsourcingPermissionContaineeViewController *)self learnMoreButton];
  titleLabel3 = [learnMoreButton titleLabel];
  [titleLabel3 setFont:v17];

  traitCollection4 = [(VLFCrowdsourcingPermissionContaineeViewController *)self traitCollection];
  v21 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:traitCollection4];
  v22 = [UIFont fontWithDescriptor:v21 size:0.0];
  topRow = [(VLFCrowdsourcingPermissionContaineeViewController *)self topRow];
  infoLabel = [topRow infoLabel];
  [infoLabel setFont:v22];

  traitCollection5 = [(VLFCrowdsourcingPermissionContaineeViewController *)self traitCollection];
  v26 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:traitCollection5];
  v27 = [UIFont fontWithDescriptor:v26 size:0.0];
  middleRow = [(VLFCrowdsourcingPermissionContaineeViewController *)self middleRow];
  infoLabel2 = [middleRow infoLabel];
  [infoLabel2 setFont:v27];

  traitCollection6 = [(VLFCrowdsourcingPermissionContaineeViewController *)self traitCollection];
  v31 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:traitCollection6];
  v32 = [UIFont fontWithDescriptor:v31 size:0.0];
  bottomRow = [(VLFCrowdsourcingPermissionContaineeViewController *)self bottomRow];
  infoLabel3 = [bottomRow infoLabel];
  [infoLabel3 setFont:v32];

  traitCollection7 = [(VLFCrowdsourcingPermissionContaineeViewController *)self traitCollection];
  v36 = [UIFont _maps_fontWithTextStyle:UIFontTextStyleBody weight:traitCollection7 compatibleWithTraitCollection:UIFontWeightBold];
  allowButton = [(VLFCrowdsourcingPermissionContaineeViewController *)self allowButton];
  titleLabel4 = [allowButton titleLabel];
  [titleLabel4 setFont:v36];

  traitCollection8 = [(VLFCrowdsourcingPermissionContaineeViewController *)self traitCollection];
  v40 = [UIFont _maps_fontWithTextStyle:UIFontTextStyleBody weight:traitCollection8 compatibleWithTraitCollection:UIFontWeightBold];
  denyButton = [(VLFCrowdsourcingPermissionContaineeViewController *)self denyButton];
  titleLabel5 = [denyButton titleLabel];
  [titleLabel5 setFont:v40];

  traitCollection9 = [(VLFCrowdsourcingPermissionContaineeViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection9 preferredContentSizeCategory];
  v45 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, UIContentSizeCategoryAccessibilityExtraExtraExtraLarge);

  iconStackView = [(VLFCrowdsourcingPermissionContaineeViewController *)self iconStackView];
  v48 = iconStackView;
  v47 = 52.0;
  if (v45)
  {
    v47 = 26.0;
  }

  [iconStackView setSpacing:v47];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v10.receiver = self;
  v10.super_class = VLFCrowdsourcingPermissionContaineeViewController;
  [(MapsThemeViewController *)&v10 traitCollectionDidChange:changeCopy];
  userInterfaceStyle = [changeCopy userInterfaceStyle];
  traitCollection = [(VLFCrowdsourcingPermissionContaineeViewController *)self traitCollection];
  if (userInterfaceStyle == [traitCollection userInterfaceStyle])
  {
    preferredContentSizeCategory = [changeCopy preferredContentSizeCategory];
    traitCollection2 = [(VLFCrowdsourcingPermissionContaineeViewController *)self traitCollection];
    preferredContentSizeCategory2 = [traitCollection2 preferredContentSizeCategory];

    if (preferredContentSizeCategory == preferredContentSizeCategory2)
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

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = VLFCrowdsourcingPermissionContaineeViewController;
  [(VLFCrowdsourcingPermissionContaineeViewController *)&v5 viewDidAppear:appear];
  v4 = sub_100603AF8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy = self;
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
  headerView = [(ContaineeViewController *)self headerView];
  [headerView removeFromSuperview];

  contentView = [(ContaineeViewController *)self contentView];
  topAnchor = [contentView topAnchor];
  view = [(VLFCrowdsourcingPermissionContaineeViewController *)self view];
  topAnchor2 = [view topAnchor];
  v8 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v299 = v8;
  v9 = [NSArray arrayWithObjects:&v299 count:1];
  [NSLayoutConstraint activateConstraints:v9];

  v10 = [UIColor colorNamed:@"TeachableMomentCardBackgoundColor"];
  contentView2 = [(ContaineeViewController *)self contentView];
  [contentView2 setBackgroundColor:v10];

  contentView3 = [(ContaineeViewController *)self contentView];
  LODWORD(v13) = 1148846080;
  [contentView3 setContentCompressionResistancePriority:1 forAxis:v13];

  contentView4 = [(ContaineeViewController *)self contentView];
  LODWORD(v15) = 1148846080;
  [contentView4 setContentHuggingPriority:1 forAxis:v15];

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
  contentView5 = [(ContaineeViewController *)self contentView];
  [contentView5 addSubview:v278];

  leadingAnchor = [v278 leadingAnchor];
  contentView6 = [(ContaineeViewController *)self contentView];
  leadingAnchor2 = [contentView6 leadingAnchor];
  v258 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v298[0] = v258;
  trailingAnchor = [v278 trailingAnchor];
  contentView7 = [(ContaineeViewController *)self contentView];
  trailingAnchor2 = [contentView7 trailingAnchor];
  v26 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v298[1] = v26;
  topAnchor3 = [v278 topAnchor];
  contentView8 = [(ContaineeViewController *)self contentView];
  topAnchor4 = [contentView8 topAnchor];
  v30 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v298[2] = v30;
  v31 = [NSArray arrayWithObjects:v298 count:3];
  [NSLayoutConstraint activateConstraints:v31];

  v280 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v280 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v278 addSubview:v280];
  leadingAnchor3 = [v280 leadingAnchor];
  leadingAnchor4 = [v278 leadingAnchor];
  v259 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v297[0] = v259;
  trailingAnchor3 = [v280 trailingAnchor];
  trailingAnchor4 = [v278 trailingAnchor];
  v239 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v297[1] = v239;
  topAnchor5 = [v280 topAnchor];
  topAnchor6 = [v278 topAnchor];
  v32 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v297[2] = v32;
  bottomAnchor = [v280 bottomAnchor];
  bottomAnchor2 = [v278 bottomAnchor];
  v35 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v297[3] = v35;
  widthAnchor = [v280 widthAnchor];
  contentView9 = [(ContaineeViewController *)self contentView];
  widthAnchor2 = [contentView9 widthAnchor];
  v39 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v297[4] = v39;
  v40 = [NSArray arrayWithObjects:v297 count:5];
  [NSLayoutConstraint activateConstraints:v40];

  v41 = [UIImageView alloc];
  v42 = [UIImage systemImageNamed:@"arkit"];
  v277 = [v41 initWithImage:v42];

  [v277 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v280 addSubview:v277];
  centerXAnchor = [v277 centerXAnchor];
  centerXAnchor2 = [v280 centerXAnchor];
  v252 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v296[0] = v252;
  topAnchor7 = [v277 topAnchor];
  topAnchor8 = [v280 topAnchor];
  v45 = [topAnchor7 constraintEqualToAnchor:topAnchor8 constant:30.0];
  v296[1] = v45;
  widthAnchor3 = [v277 widthAnchor];
  heightAnchor = [v277 heightAnchor];
  v48 = [widthAnchor3 constraintEqualToAnchor:heightAnchor];
  v296[2] = v48;
  heightAnchor2 = [v277 heightAnchor];
  v50 = [heightAnchor2 constraintEqualToConstant:80.0];
  v296[3] = v50;
  v51 = [NSArray arrayWithObjects:v296 count:4];
  [NSLayoutConstraint activateConstraints:v51];

  v52 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(VLFCrowdsourcingPermissionContaineeViewController *)self setTitleLabel:v52];

  titleLabel = [(VLFCrowdsourcingPermissionContaineeViewController *)self titleLabel];
  [titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  titleLabel2 = [(VLFCrowdsourcingPermissionContaineeViewController *)self titleLabel];
  LODWORD(v55) = 1148846080;
  [titleLabel2 setContentCompressionResistancePriority:1 forAxis:v55];

  titleLabel3 = [(VLFCrowdsourcingPermissionContaineeViewController *)self titleLabel];
  LODWORD(v57) = 1148846080;
  [titleLabel3 setContentHuggingPriority:1 forAxis:v57];

  titleLabel4 = [(VLFCrowdsourcingPermissionContaineeViewController *)self titleLabel];
  [titleLabel4 setNumberOfLines:0];

  v59 = +[UIColor labelColor];
  titleLabel5 = [(VLFCrowdsourcingPermissionContaineeViewController *)self titleLabel];
  [titleLabel5 setTextColor:v59];

  v61 = +[NSBundle mainBundle];
  v62 = [v61 localizedStringForKey:@"[VLF Crowdsourcing] permission card title" value:@"localized string not found" table:0];
  titleLabel6 = [(VLFCrowdsourcingPermissionContaineeViewController *)self titleLabel];
  [titleLabel6 setText:v62];

  titleLabel7 = [(VLFCrowdsourcingPermissionContaineeViewController *)self titleLabel];
  [titleLabel7 setTextAlignment:1];

  titleLabel8 = [(VLFCrowdsourcingPermissionContaineeViewController *)self titleLabel];
  firstBaselineAnchor = [titleLabel8 firstBaselineAnchor];
  bottomAnchor3 = [v277 bottomAnchor];
  v68 = [firstBaselineAnchor constraintEqualToAnchor:bottomAnchor3 constant:30.0];
  [(VLFCrowdsourcingPermissionContaineeViewController *)self setTitleLabelBaselineConstraint:v68];

  titleLabel9 = [(VLFCrowdsourcingPermissionContaineeViewController *)self titleLabel];
  [v280 addSubview:titleLabel9];

  titleLabel10 = [(VLFCrowdsourcingPermissionContaineeViewController *)self titleLabel];
  leadingAnchor5 = [titleLabel10 leadingAnchor];
  leadingAnchor6 = [v280 leadingAnchor];
  v72 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:24.0];
  v295[0] = v72;
  titleLabel11 = [(VLFCrowdsourcingPermissionContaineeViewController *)self titleLabel];
  trailingAnchor5 = [titleLabel11 trailingAnchor];
  trailingAnchor6 = [v280 trailingAnchor];
  v76 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-24.0];
  v295[1] = v76;
  titleLabelBaselineConstraint = [(VLFCrowdsourcingPermissionContaineeViewController *)self titleLabelBaselineConstraint];
  v295[2] = titleLabelBaselineConstraint;
  v78 = [NSArray arrayWithObjects:v295 count:3];
  [NSLayoutConstraint activateConstraints:v78];

  v79 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(VLFCrowdsourcingPermissionContaineeViewController *)self setDescriptionLabel:v79];

  descriptionLabel = [(VLFCrowdsourcingPermissionContaineeViewController *)self descriptionLabel];
  [descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  descriptionLabel2 = [(VLFCrowdsourcingPermissionContaineeViewController *)self descriptionLabel];
  LODWORD(v82) = 1148846080;
  [descriptionLabel2 setContentCompressionResistancePriority:1 forAxis:v82];

  descriptionLabel3 = [(VLFCrowdsourcingPermissionContaineeViewController *)self descriptionLabel];
  LODWORD(v84) = 1148846080;
  [descriptionLabel3 setContentHuggingPriority:1 forAxis:v84];

  v85 = +[NSBundle mainBundle];
  v86 = [v85 localizedStringForKey:@"[VLF Crowdsourcing] permission card description" value:@"localized string not found" table:0];
  descriptionLabel4 = [(VLFCrowdsourcingPermissionContaineeViewController *)self descriptionLabel];
  [descriptionLabel4 setText:v86];

  v88 = +[UIColor labelColor];
  descriptionLabel5 = [(VLFCrowdsourcingPermissionContaineeViewController *)self descriptionLabel];
  [descriptionLabel5 setTextColor:v88];

  descriptionLabel6 = [(VLFCrowdsourcingPermissionContaineeViewController *)self descriptionLabel];
  [descriptionLabel6 setTextAlignment:1];

  descriptionLabel7 = [(VLFCrowdsourcingPermissionContaineeViewController *)self descriptionLabel];
  [descriptionLabel7 setNumberOfLines:0];

  descriptionLabel8 = [(VLFCrowdsourcingPermissionContaineeViewController *)self descriptionLabel];
  [v280 addSubview:descriptionLabel8];

  descriptionLabel9 = [(VLFCrowdsourcingPermissionContaineeViewController *)self descriptionLabel];
  leadingAnchor7 = [descriptionLabel9 leadingAnchor];
  leadingAnchor8 = [v280 leadingAnchor];
  v246 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:24.0];
  v294[0] = v246;
  descriptionLabel10 = [(VLFCrowdsourcingPermissionContaineeViewController *)self descriptionLabel];
  trailingAnchor7 = [descriptionLabel10 trailingAnchor];
  trailingAnchor8 = [v280 trailingAnchor];
  v95 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:-24.0];
  v294[1] = v95;
  descriptionLabel11 = [(VLFCrowdsourcingPermissionContaineeViewController *)self descriptionLabel];
  topAnchor9 = [descriptionLabel11 topAnchor];
  titleLabel12 = [(VLFCrowdsourcingPermissionContaineeViewController *)self titleLabel];
  bottomAnchor4 = [titleLabel12 bottomAnchor];
  v100 = [topAnchor9 constraintEqualToAnchor:bottomAnchor4 constant:16.0];
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

  learnMoreButton = [(VLFCrowdsourcingPermissionContaineeViewController *)self learnMoreButton];
  [learnMoreButton setTranslatesAutoresizingMaskIntoConstraints:0];

  learnMoreButton2 = [(VLFCrowdsourcingPermissionContaineeViewController *)self learnMoreButton];
  LODWORD(v106) = 1148846080;
  [learnMoreButton2 setContentCompressionResistancePriority:1 forAxis:v106];

  learnMoreButton3 = [(VLFCrowdsourcingPermissionContaineeViewController *)self learnMoreButton];
  LODWORD(v108) = 1148846080;
  [learnMoreButton3 setContentHuggingPriority:1 forAxis:v108];

  learnMoreButton4 = [(VLFCrowdsourcingPermissionContaineeViewController *)self learnMoreButton];
  v110 = +[NSBundle mainBundle];
  v111 = [v110 localizedStringForKey:@"[VLF Crowdsourcing] permission card learn more link" value:@"localized string not found" table:0];
  [learnMoreButton4 setTitle:v111 forState:0];

  learnMoreButton5 = [(VLFCrowdsourcingPermissionContaineeViewController *)self learnMoreButton];
  [v280 addSubview:learnMoreButton5];

  learnMoreButton6 = [(VLFCrowdsourcingPermissionContaineeViewController *)self learnMoreButton];
  leadingAnchor9 = [learnMoreButton6 leadingAnchor];
  leadingAnchor10 = [v280 leadingAnchor];
  v247 = [leadingAnchor9 constraintGreaterThanOrEqualToAnchor:leadingAnchor10 constant:24.0];
  v293[0] = v247;
  learnMoreButton7 = [(VLFCrowdsourcingPermissionContaineeViewController *)self learnMoreButton];
  trailingAnchor9 = [learnMoreButton7 trailingAnchor];
  trailingAnchor10 = [v280 trailingAnchor];
  v225 = [trailingAnchor9 constraintLessThanOrEqualToAnchor:trailingAnchor10 constant:-24.0];
  v293[1] = v225;
  learnMoreButton8 = [(VLFCrowdsourcingPermissionContaineeViewController *)self learnMoreButton];
  centerXAnchor3 = [learnMoreButton8 centerXAnchor];
  descriptionLabel12 = [(VLFCrowdsourcingPermissionContaineeViewController *)self descriptionLabel];
  centerXAnchor4 = [descriptionLabel12 centerXAnchor];
  v115 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v293[2] = v115;
  learnMoreButton9 = [(VLFCrowdsourcingPermissionContaineeViewController *)self learnMoreButton];
  topAnchor10 = [learnMoreButton9 topAnchor];
  descriptionLabel13 = [(VLFCrowdsourcingPermissionContaineeViewController *)self descriptionLabel];
  bottomAnchor5 = [descriptionLabel13 bottomAnchor];
  v120 = [topAnchor10 constraintEqualToAnchor:bottomAnchor5 constant:16.0];
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
  topRow = [(VLFCrowdsourcingPermissionContaineeViewController *)self topRow];
  v292[0] = topRow;
  middleRow = [(VLFCrowdsourcingPermissionContaineeViewController *)self middleRow];
  v292[1] = middleRow;
  bottomRow = [(VLFCrowdsourcingPermissionContaineeViewController *)self bottomRow];
  v292[2] = bottomRow;
  v141 = [NSArray arrayWithObjects:v292 count:3];
  v142 = [v137 initWithArrangedSubviews:v141];
  [(VLFCrowdsourcingPermissionContaineeViewController *)self setIconStackView:v142];

  iconStackView = [(VLFCrowdsourcingPermissionContaineeViewController *)self iconStackView];
  [iconStackView setTranslatesAutoresizingMaskIntoConstraints:0];

  iconStackView2 = [(VLFCrowdsourcingPermissionContaineeViewController *)self iconStackView];
  [iconStackView2 setAxis:1];

  iconStackView3 = [(VLFCrowdsourcingPermissionContaineeViewController *)self iconStackView];
  [iconStackView3 setAlignment:0];

  iconStackView4 = [(VLFCrowdsourcingPermissionContaineeViewController *)self iconStackView];
  [iconStackView4 setSpacing:26.0];

  iconStackView5 = [(VLFCrowdsourcingPermissionContaineeViewController *)self iconStackView];
  LODWORD(v148) = 1148846080;
  [iconStackView5 setContentCompressionResistancePriority:1 forAxis:v148];

  iconStackView6 = [(VLFCrowdsourcingPermissionContaineeViewController *)self iconStackView];
  LODWORD(v150) = 1148846080;
  [iconStackView6 setContentHuggingPriority:1 forAxis:v150];

  iconStackView7 = [(VLFCrowdsourcingPermissionContaineeViewController *)self iconStackView];
  [v280 addSubview:iconStackView7];

  iconStackView8 = [(VLFCrowdsourcingPermissionContaineeViewController *)self iconStackView];
  leadingAnchor11 = [iconStackView8 leadingAnchor];
  leadingAnchor12 = [v280 leadingAnchor];
  v248 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12 constant:48.0];
  v291[0] = v248;
  iconStackView9 = [(VLFCrowdsourcingPermissionContaineeViewController *)self iconStackView];
  trailingAnchor11 = [iconStackView9 trailingAnchor];
  trailingAnchor12 = [v280 trailingAnchor];
  v226 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12 constant:-48.0];
  v291[1] = v226;
  iconStackView10 = [(VLFCrowdsourcingPermissionContaineeViewController *)self iconStackView];
  topAnchor11 = [iconStackView10 topAnchor];
  learnMoreButton10 = [(VLFCrowdsourcingPermissionContaineeViewController *)self learnMoreButton];
  bottomAnchor6 = [learnMoreButton10 bottomAnchor];
  v155 = [topAnchor11 constraintEqualToAnchor:bottomAnchor6 constant:16.0];
  v291[2] = v155;
  iconStackView11 = [(VLFCrowdsourcingPermissionContaineeViewController *)self iconStackView];
  bottomAnchor7 = [iconStackView11 bottomAnchor];
  bottomAnchor8 = [v280 bottomAnchor];
  v159 = [bottomAnchor7 constraintLessThanOrEqualToAnchor:bottomAnchor8];
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

  allowButton = [(VLFCrowdsourcingPermissionContaineeViewController *)self allowButton];
  [allowButton setTranslatesAutoresizingMaskIntoConstraints:0];

  allowButton2 = [(VLFCrowdsourcingPermissionContaineeViewController *)self allowButton];
  v165 = +[NSBundle mainBundle];
  v166 = [v165 localizedStringForKey:@"[VLF Crowdsourcing] permission card allow button" value:@"localized string not found" table:0];
  [allowButton2 setTitle:v166 forState:0];

  v167 = +[UIColor systemBlueColor];
  allowButton3 = [(VLFCrowdsourcingPermissionContaineeViewController *)self allowButton];
  [allowButton3 setBackgroundColor:v167];

  allowButton4 = [(VLFCrowdsourcingPermissionContaineeViewController *)self allowButton];
  v170 = +[UIColor whiteColor];
  [allowButton4 setTitleColor:v170 forState:0];

  allowButton5 = [(VLFCrowdsourcingPermissionContaineeViewController *)self allowButton];
  layer = [allowButton5 layer];
  [layer setCornerRadius:12.0];

  allowButton6 = [(VLFCrowdsourcingPermissionContaineeViewController *)self allowButton];
  LODWORD(v174) = 1148846080;
  [allowButton6 setContentCompressionResistancePriority:1 forAxis:v174];

  contentView10 = [(ContaineeViewController *)self contentView];
  allowButton7 = [(VLFCrowdsourcingPermissionContaineeViewController *)self allowButton];
  [contentView10 addSubview:allowButton7];

  allowButton8 = [(VLFCrowdsourcingPermissionContaineeViewController *)self allowButton];
  leadingAnchor13 = [allowButton8 leadingAnchor];
  contentView11 = [(ContaineeViewController *)self contentView];
  leadingAnchor14 = [contentView11 leadingAnchor];
  v243 = [leadingAnchor13 constraintEqualToAnchor:leadingAnchor14 constant:24.0];
  v290[0] = v243;
  allowButton9 = [(VLFCrowdsourcingPermissionContaineeViewController *)self allowButton];
  trailingAnchor13 = [allowButton9 trailingAnchor];
  contentView12 = [(ContaineeViewController *)self contentView];
  trailingAnchor14 = [contentView12 trailingAnchor];
  v177 = [trailingAnchor13 constraintEqualToAnchor:trailingAnchor14 constant:-24.0];
  v290[1] = v177;
  allowButton10 = [(VLFCrowdsourcingPermissionContaineeViewController *)self allowButton];
  topAnchor12 = [allowButton10 topAnchor];
  bottomAnchor9 = [v278 bottomAnchor];
  v181 = [topAnchor12 constraintEqualToAnchor:bottomAnchor9 constant:24.0];
  v290[2] = v181;
  allowButton11 = [(VLFCrowdsourcingPermissionContaineeViewController *)self allowButton];
  heightAnchor3 = [allowButton11 heightAnchor];
  v184 = [heightAnchor3 constraintEqualToConstant:60.0];
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

  denyButton = [(VLFCrowdsourcingPermissionContaineeViewController *)self denyButton];
  [denyButton setTranslatesAutoresizingMaskIntoConstraints:0];

  denyButton2 = [(VLFCrowdsourcingPermissionContaineeViewController *)self denyButton];
  v190 = +[NSBundle mainBundle];
  v191 = [v190 localizedStringForKey:@"[VLF Crowdsourcing] permission card deny button" value:@"localized string not found" table:0];
  [denyButton2 setTitle:v191 forState:0];

  denyButton3 = [(VLFCrowdsourcingPermissionContaineeViewController *)self denyButton];
  layer2 = [denyButton3 layer];
  [layer2 setCornerRadius:12.0];

  denyButton4 = [(VLFCrowdsourcingPermissionContaineeViewController *)self denyButton];
  LODWORD(v195) = 1148846080;
  [denyButton4 setContentCompressionResistancePriority:1 forAxis:v195];

  contentView13 = [(ContaineeViewController *)self contentView];
  denyButton5 = [(VLFCrowdsourcingPermissionContaineeViewController *)self denyButton];
  [contentView13 addSubview:denyButton5];

  denyButton6 = [(VLFCrowdsourcingPermissionContaineeViewController *)self denyButton];
  leadingAnchor15 = [denyButton6 leadingAnchor];
  contentView14 = [(ContaineeViewController *)self contentView];
  leadingAnchor16 = [contentView14 leadingAnchor];
  v244 = [leadingAnchor15 constraintEqualToAnchor:leadingAnchor16 constant:24.0];
  v289[0] = v244;
  denyButton7 = [(VLFCrowdsourcingPermissionContaineeViewController *)self denyButton];
  trailingAnchor15 = [denyButton7 trailingAnchor];
  contentView15 = [(ContaineeViewController *)self contentView];
  trailingAnchor16 = [contentView15 trailingAnchor];
  v220 = [trailingAnchor15 constraintEqualToAnchor:trailingAnchor16 constant:-24.0];
  v289[1] = v220;
  denyButton8 = [(VLFCrowdsourcingPermissionContaineeViewController *)self denyButton];
  topAnchor13 = [denyButton8 topAnchor];
  allowButton12 = [(VLFCrowdsourcingPermissionContaineeViewController *)self allowButton];
  bottomAnchor10 = [allowButton12 bottomAnchor];
  v214 = [topAnchor13 constraintEqualToAnchor:bottomAnchor10 constant:6.0];
  v289[2] = v214;
  denyButton9 = [(VLFCrowdsourcingPermissionContaineeViewController *)self denyButton];
  heightAnchor4 = [denyButton9 heightAnchor];
  v211 = [heightAnchor4 constraintEqualToConstant:60.0];
  v289[3] = v211;
  denyButton10 = [(VLFCrowdsourcingPermissionContaineeViewController *)self denyButton];
  bottomAnchor11 = [denyButton10 bottomAnchor];
  contentView16 = [(ContaineeViewController *)self contentView];
  safeAreaLayoutGuide = [contentView16 safeAreaLayoutGuide];
  bottomAnchor12 = [safeAreaLayoutGuide bottomAnchor];
  LODWORD(v200) = 1148829696;
  v201 = [bottomAnchor11 constraintEqualToAnchor:bottomAnchor12 constant:0.0 priority:v200];
  v289[4] = v201;
  denyButton11 = [(VLFCrowdsourcingPermissionContaineeViewController *)self denyButton];
  bottomAnchor13 = [denyButton11 bottomAnchor];
  contentView17 = [(ContaineeViewController *)self contentView];
  bottomAnchor14 = [contentView17 bottomAnchor];
  v206 = [bottomAnchor13 constraintLessThanOrEqualToAnchor:bottomAnchor14 constant:-16.0];
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
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = VLFCrowdsourcingPermissionContaineeViewController;
  [(VLFCrowdsourcingPermissionContaineeViewController *)&v4 dealloc];
}

- (VLFCrowdsourcingPermissionContaineeViewController)initWithCompletion:(id)completion
{
  completionCopy = completion;
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

    v7 = [completionCopy copy];
    completion = v5->_completion;
    v5->_completion = v7;

    cardPresentationController = [(ContaineeViewController *)v5 cardPresentationController];
    [cardPresentationController setHideGrabber:1];

    cardPresentationController2 = [(ContaineeViewController *)v5 cardPresentationController];
    [cardPresentationController2 setAllowsSwipeToDismiss:0];

    cardPresentationController3 = [(ContaineeViewController *)v5 cardPresentationController];
    [cardPresentationController3 setPresentedModally:1];

    cardPresentationController4 = [(ContaineeViewController *)v5 cardPresentationController];
    [cardPresentationController4 setEdgeAttachedRegularHeightDimmingBehavior:2];

    cardPresentationController5 = [(ContaineeViewController *)v5 cardPresentationController];
    [cardPresentationController5 setTakesAvailableHeight:1];
  }

  return v5;
}

- (VLFCrowdsourcingPermissionContaineeViewController)init
{
  result = [NSException raise:@"MethodNotAvailableException" format:@"This method is unavailable."];
  __break(1u);
  return result;
}

- (VLFCrowdsourcingPermissionContaineeViewController)initWithCoder:(id)coder
{
  coderCopy = coder;
  result = [NSException raise:@"MethodNotAvailableException" format:@"This method is unavailable."];
  __break(1u);
  return result;
}

- (VLFCrowdsourcingPermissionContaineeViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
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
          selfCopy4 = self;
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
          numberOfTimesARLocalized = [v7 numberOfTimesARLocalized];
          v9 = +[VLFSessionUsageTracker sharedInstance];
          v10 = &numberOfTimesARLocalized[[v9 numberOfTimesVLFLocalized]];
          v5 = v10 >= GEOConfigGetInteger();

          return v5;
        }

        v3 = sub_100603AF8();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
        {
          v11 = 134349056;
          selfCopy4 = self;
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
        selfCopy4 = self;
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
      selfCopy4 = self;
      v4 = "[%{public}p] Not showing VLF Crowdsourcing Permission Card because the feature is not enabled";
      goto LABEL_10;
    }
  }

  return 0;
}

@end