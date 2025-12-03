@interface ICFolderListAllowNotificationsView
+ (double)backgroundBottomMargin;
+ (double)backgroundTopMargin;
+ (double)separatorTopMargin;
+ (double)titleTopMargin;
- (ICFolderListAllowNotificationsView)initWithFrame:(CGRect)frame;
- (id)constraints;
- (id)createBell;
- (id)createCloseButton;
- (id)createRoundedRectView;
- (id)createSeparator;
- (id)createSettingsButton;
- (id)createTitle;
- (void)updateCloseButtonImage;
- (void)updateColors;
@end

@implementation ICFolderListAllowNotificationsView

+ (double)backgroundTopMargin
{
  v2 = +[UIDevice ic_isVision];
  result = 16.0;
  if (v2)
  {
    return 0.0;
  }

  return result;
}

+ (double)backgroundBottomMargin
{
  v2 = +[UIDevice ic_isVision];
  result = 16.0;
  if (v2)
  {
    return 12.0;
  }

  return result;
}

+ (double)titleTopMargin
{
  v2 = +[UIDevice ic_isVision];
  result = 11.0;
  if (v2)
  {
    return 12.0;
  }

  return result;
}

+ (double)separatorTopMargin
{
  v2 = +[UIDevice ic_isVision];
  result = 11.0;
  if (v2)
  {
    return 12.0;
  }

  return result;
}

- (ICFolderListAllowNotificationsView)initWithFrame:(CGRect)frame
{
  v27.receiver = self;
  v27.super_class = ICFolderListAllowNotificationsView;
  v3 = [(ICFolderListAllowNotificationsView *)&v27 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(UIView);
    v5 = +[UIColor clearColor];
    [v4 setBackgroundColor:v5];

    [(ICFolderListAllowNotificationsView *)v3 setBackgroundView:v4];
    createRoundedRectView = [(ICFolderListAllowNotificationsView *)v3 createRoundedRectView];
    [(ICFolderListAllowNotificationsView *)v3 setRoundedRectView:createRoundedRectView];

    contentView = [(ICFolderListAllowNotificationsView *)v3 contentView];
    roundedRectView = [(ICFolderListAllowNotificationsView *)v3 roundedRectView];
    [contentView addSubview:roundedRectView];

    createBell = [(ICFolderListAllowNotificationsView *)v3 createBell];
    [(ICFolderListAllowNotificationsView *)v3 setBellBackgroundView:createBell];

    roundedRectView2 = [(ICFolderListAllowNotificationsView *)v3 roundedRectView];
    bellBackgroundView = [(ICFolderListAllowNotificationsView *)v3 bellBackgroundView];
    [roundedRectView2 addSubview:bellBackgroundView];

    createTitle = [(ICFolderListAllowNotificationsView *)v3 createTitle];
    [(ICFolderListAllowNotificationsView *)v3 setTitleLabel:createTitle];

    roundedRectView3 = [(ICFolderListAllowNotificationsView *)v3 roundedRectView];
    titleLabel = [(ICFolderListAllowNotificationsView *)v3 titleLabel];
    [roundedRectView3 addSubview:titleLabel];

    createSeparator = [(ICFolderListAllowNotificationsView *)v3 createSeparator];
    [(ICFolderListAllowNotificationsView *)v3 setSeparatorView:createSeparator];

    roundedRectView4 = [(ICFolderListAllowNotificationsView *)v3 roundedRectView];
    separatorView = [(ICFolderListAllowNotificationsView *)v3 separatorView];
    [roundedRectView4 addSubview:separatorView];

    createCloseButton = [(ICFolderListAllowNotificationsView *)v3 createCloseButton];
    [(ICFolderListAllowNotificationsView *)v3 setCloseButton:createCloseButton];

    roundedRectView5 = [(ICFolderListAllowNotificationsView *)v3 roundedRectView];
    closeButton = [(ICFolderListAllowNotificationsView *)v3 closeButton];
    [roundedRectView5 addSubview:closeButton];

    createSettingsButton = [(ICFolderListAllowNotificationsView *)v3 createSettingsButton];
    [(ICFolderListAllowNotificationsView *)v3 setSettingsButton:createSettingsButton];

    roundedRectView6 = [(ICFolderListAllowNotificationsView *)v3 roundedRectView];
    settingsButton = [(ICFolderListAllowNotificationsView *)v3 settingsButton];
    [roundedRectView6 addSubview:settingsButton];

    constraints = [(ICFolderListAllowNotificationsView *)v3 constraints];
    [NSLayoutConstraint activateConstraints:constraints];

    [(ICFolderListAllowNotificationsView *)v3 updateCloseButtonImage];
    [(ICFolderListAllowNotificationsView *)v3 updateColors];
    v25 = +[NSNotificationCenter defaultCenter];
    [v25 addObserver:v3 selector:"contentSizeCategoryDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  return v3;
}

- (id)createRoundedRectView
{
  v3 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  traitCollection = [(ICFolderListAllowNotificationsView *)self traitCollection];
  _UITableViewDefaultSectionCornerRadiusForTraitCollection();
  v6 = v5;

  [v3 ic_applyRoundedCornersWithRadius:v6];

  return v3;
}

- (id)createBell
{
  v3 = [[UIView alloc] initWithFrame:{0.0, 0.0, 32.0, 32.0}];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  if ((+[UIDevice ic_isVision]& 1) == 0)
  {
    v4 = +[UIColor secondaryLabelColor];
    [v3 setBackgroundColor:v4];

    [v3 ic_applyRoundedCornersWithRadius:16.0];
  }

  v5 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:-1 scale:20.0];
  v6 = [UIImage systemImageNamed:@"bell.badge.fill" withConfiguration:v5];

  v7 = [[UIImageView alloc] initWithImage:v6];
  v8 = +[UIColor whiteColor];
  [v7 setTintColor:v8];

  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addSubview:v7];
  [(ICFolderListAllowNotificationsView *)self setBellImageView:v7];

  return v3;
}

- (id)createTitle
{
  v2 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 setNumberOfLines:0];
  if (+[UIDevice ic_isVision])
  {
    v3 = +[UIColor secondaryLabelColor];
    v4 = &UIFontTextStyleFootnote;
  }

  else
  {
    v3 = +[UIColor labelColor];
    v4 = &UIFontTextStyleHeadline;
  }

  [v2 setTextColor:v3];

  v5 = [UIFont preferredFontForTextStyle:*v4];
  [v2 setFont:v5];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"Do you want to be notified when mentioned in shared notes?" value:&stru_100661CF0 table:0];
  [v2 setText:v7];

  return v2;
}

- (id)createSeparator
{
  v2 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = +[UIColor separatorColor];
  [v2 setBackgroundColor:v3];

  return v2;
}

- (id)createCloseButton
{
  v3 = +[UIButtonConfiguration borderlessButtonConfiguration];
  [v3 contentInsets];
  [v3 setContentInsets:{4.0, 4.0, 4.0, 4.0}];
  v4 = +[UIColor tertiaryLabelColor];
  [v3 setBaseForegroundColor:v4];

  objc_initWeak(&location, self);
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100140288;
  v15 = &unk_100647A30;
  objc_copyWeak(&v16, &location);
  v5 = [UIAction actionWithHandler:&v12];
  v6 = [UIButton buttonWithConfiguration:v3 primaryAction:v5, v12, v13, v14, v15];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v7) = 1148846080;
  [v6 setContentCompressionResistancePriority:1 forAxis:v7];
  LODWORD(v8) = 1148846080;
  [v6 setContentCompressionResistancePriority:0 forAxis:v8];
  LODWORD(v9) = 1148846080;
  [v6 setContentHuggingPriority:1 forAxis:v9];
  LODWORD(v10) = 1148846080;
  [v6 setContentHuggingPriority:0 forAxis:v10];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v6;
}

- (id)createSettingsButton
{
  v2 = +[UIButtonConfiguration ic_plainButtonConfiguration];
  [v2 contentInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (+[UIDevice ic_isVision])
  {
    v8 = 0.0;
    v4 = 0.0;
  }

  else
  {
    [v2 setTitleAlignment:1];
    v10 = 0.0;
    v6 = 0.0;
  }

  [v2 setContentInsets:{v4, v6, v8, v10}];
  [v2 setCornerStyle:4];
  v11 = +[UIDevice ic_isVision];
  v12 = &UIFontTextStyleBody;
  if (!v11)
  {
    v12 = &UIFontTextStyleSubheadline;
  }

  v13 = *v12;
  v24 = NSFontAttributeName;
  v14 = v13;
  v15 = [UIFont preferredFontForTextStyle:v14];
  v25 = v15;
  v16 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];

  v17 = +[NSBundle mainBundle];
  v18 = [v17 localizedStringForKey:@"Go to Settings" value:&stru_100661CF0 table:0];

  v19 = [[NSAttributedString alloc] initWithString:v18 attributes:v16];
  [v2 setAttributedTitle:v19];
  v20 = [UIAction actionWithHandler:&stru_10064AF90];
  v21 = [UIButton buttonWithConfiguration:v2 primaryAction:v20];
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v22) = 1148846080;
  [v21 setContentCompressionResistancePriority:1 forAxis:v22];

  return v21;
}

- (id)constraints
{
  v3 = +[NSMutableArray array];
  roundedRectView = [(ICFolderListAllowNotificationsView *)self roundedRectView];
  leadingAnchor = [roundedRectView leadingAnchor];
  contentView = [(ICFolderListAllowNotificationsView *)self contentView];
  layoutMarginsGuide = [contentView layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v3 addObject:v9];

  roundedRectView2 = [(ICFolderListAllowNotificationsView *)self roundedRectView];
  trailingAnchor = [roundedRectView2 trailingAnchor];
  contentView2 = [(ICFolderListAllowNotificationsView *)self contentView];
  layoutMarginsGuide2 = [contentView2 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v3 addObject:v15];

  roundedRectView3 = [(ICFolderListAllowNotificationsView *)self roundedRectView];
  topAnchor = [roundedRectView3 topAnchor];
  contentView3 = [(ICFolderListAllowNotificationsView *)self contentView];
  topAnchor2 = [contentView3 topAnchor];
  [objc_opt_class() backgroundTopMargin];
  v20 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
  [v3 addObject:v20];

  roundedRectView4 = [(ICFolderListAllowNotificationsView *)self roundedRectView];
  bottomAnchor = [roundedRectView4 bottomAnchor];
  contentView4 = [(ICFolderListAllowNotificationsView *)self contentView];
  bottomAnchor2 = [contentView4 bottomAnchor];
  [objc_opt_class() backgroundBottomMargin];
  v26 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-v25];
  [v3 addObject:v26];

  bellBackgroundView = [(ICFolderListAllowNotificationsView *)self bellBackgroundView];
  leadingAnchor3 = [bellBackgroundView leadingAnchor];
  roundedRectView5 = [(ICFolderListAllowNotificationsView *)self roundedRectView];
  leadingAnchor4 = [roundedRectView5 leadingAnchor];
  v31 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:12.0];
  [v3 addObject:v31];

  bellBackgroundView2 = [(ICFolderListAllowNotificationsView *)self bellBackgroundView];
  topAnchor3 = [bellBackgroundView2 topAnchor];
  roundedRectView6 = [(ICFolderListAllowNotificationsView *)self roundedRectView];
  topAnchor4 = [roundedRectView6 topAnchor];
  v36 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:16.0];
  [v3 addObject:v36];

  bellBackgroundView3 = [(ICFolderListAllowNotificationsView *)self bellBackgroundView];
  widthAnchor = [bellBackgroundView3 widthAnchor];
  v39 = [widthAnchor constraintEqualToConstant:32.0];
  [v3 addObject:v39];

  bellBackgroundView4 = [(ICFolderListAllowNotificationsView *)self bellBackgroundView];
  heightAnchor = [bellBackgroundView4 heightAnchor];
  v42 = [heightAnchor constraintEqualToConstant:32.0];
  [v3 addObject:v42];

  bellImageView = [(ICFolderListAllowNotificationsView *)self bellImageView];
  centerXAnchor = [bellImageView centerXAnchor];
  bellBackgroundView5 = [(ICFolderListAllowNotificationsView *)self bellBackgroundView];
  centerXAnchor2 = [bellBackgroundView5 centerXAnchor];
  v47 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v3 addObject:v47];

  bellImageView2 = [(ICFolderListAllowNotificationsView *)self bellImageView];
  centerYAnchor = [bellImageView2 centerYAnchor];
  bellBackgroundView6 = [(ICFolderListAllowNotificationsView *)self bellBackgroundView];
  centerYAnchor2 = [bellBackgroundView6 centerYAnchor];
  v52 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v3 addObject:v52];

  titleLabel = [(ICFolderListAllowNotificationsView *)self titleLabel];
  topAnchor5 = [titleLabel topAnchor];
  roundedRectView7 = [(ICFolderListAllowNotificationsView *)self roundedRectView];
  topAnchor6 = [roundedRectView7 topAnchor];
  [objc_opt_class() titleTopMargin];
  v57 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:?];
  [v3 addObject:v57];

  titleLabel2 = [(ICFolderListAllowNotificationsView *)self titleLabel];
  leadingAnchor5 = [titleLabel2 leadingAnchor];
  bellBackgroundView7 = [(ICFolderListAllowNotificationsView *)self bellBackgroundView];
  trailingAnchor3 = [bellBackgroundView7 trailingAnchor];
  v62 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor3 constant:12.0];
  [v3 addObject:v62];

  titleLabel3 = [(ICFolderListAllowNotificationsView *)self titleLabel];
  trailingAnchor4 = [titleLabel3 trailingAnchor];
  closeButton = [(ICFolderListAllowNotificationsView *)self closeButton];
  leadingAnchor6 = [closeButton leadingAnchor];
  v67 = [trailingAnchor4 constraintLessThanOrEqualToAnchor:leadingAnchor6 constant:-7.0];
  [v3 addObject:v67];

  titleLabel4 = [(ICFolderListAllowNotificationsView *)self titleLabel];
  font = [titleLabel4 font];
  [font ascender];
  v71 = v70;
  titleLabel5 = [(ICFolderListAllowNotificationsView *)self titleLabel];
  font2 = [titleLabel5 font];
  [font2 descender];
  v75 = v71 + v74;

  closeButton2 = [(ICFolderListAllowNotificationsView *)self closeButton];
  centerYAnchor3 = [closeButton2 centerYAnchor];
  titleLabel6 = [(ICFolderListAllowNotificationsView *)self titleLabel];
  firstBaselineAnchor = [titleLabel6 firstBaselineAnchor];
  v80 = [centerYAnchor3 constraintEqualToAnchor:firstBaselineAnchor constant:v75 * -0.5];
  [v3 addObject:v80];

  closeButton3 = [(ICFolderListAllowNotificationsView *)self closeButton];
  trailingAnchor5 = [closeButton3 trailingAnchor];
  roundedRectView8 = [(ICFolderListAllowNotificationsView *)self roundedRectView];
  trailingAnchor6 = [roundedRectView8 trailingAnchor];
  v85 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-7.0];
  [v3 addObject:v85];

  closeButton4 = [(ICFolderListAllowNotificationsView *)self closeButton];
  heightAnchor2 = [closeButton4 heightAnchor];
  closeButton5 = [(ICFolderListAllowNotificationsView *)self closeButton];
  widthAnchor2 = [closeButton5 widthAnchor];
  v90 = [heightAnchor2 constraintEqualToAnchor:widthAnchor2];
  [v3 addObject:v90];

  separatorView = [(ICFolderListAllowNotificationsView *)self separatorView];
  topAnchor7 = [separatorView topAnchor];
  titleLabel7 = [(ICFolderListAllowNotificationsView *)self titleLabel];
  bottomAnchor3 = [titleLabel7 bottomAnchor];
  [objc_opt_class() separatorTopMargin];
  v95 = [topAnchor7 constraintEqualToAnchor:bottomAnchor3 constant:?];
  [v3 addObject:v95];

  separatorView2 = [(ICFolderListAllowNotificationsView *)self separatorView];
  leadingAnchor7 = [separatorView2 leadingAnchor];
  titleLabel8 = [(ICFolderListAllowNotificationsView *)self titleLabel];
  leadingAnchor8 = [titleLabel8 leadingAnchor];
  v100 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  [v3 addObject:v100];

  separatorView3 = [(ICFolderListAllowNotificationsView *)self separatorView];
  trailingAnchor7 = [separatorView3 trailingAnchor];
  v103 = objc_opt_self();
  roundedRectView9 = [v103 roundedRectView];
  trailingAnchor8 = [roundedRectView9 trailingAnchor];
  v106 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:-13.0];
  [v3 addObject:v106];

  separatorView4 = [(ICFolderListAllowNotificationsView *)self separatorView];
  heightAnchor3 = [separatorView4 heightAnchor];
  [(ICFolderListAllowNotificationsView *)self ic_hairlineWidth];
  v109 = [heightAnchor3 constraintEqualToConstant:?];
  [v3 addObject:v109];

  if (+[UIDevice ic_isVision])
  {
    v110 = 12.0;
  }

  else
  {
    v110 = 0.0;
  }

  settingsButton = [(ICFolderListAllowNotificationsView *)self settingsButton];
  topAnchor8 = [settingsButton topAnchor];
  separatorView5 = [(ICFolderListAllowNotificationsView *)self separatorView];
  bottomAnchor4 = [separatorView5 bottomAnchor];
  v115 = [topAnchor8 constraintEqualToAnchor:bottomAnchor4 constant:v110];
  [v3 addObject:v115];

  if (+[UIDevice ic_isVision])
  {
    v116 = +[UIButtonConfiguration plainButtonConfiguration];
    [v116 contentInsets];
    v118 = v117;

    v119 = +[UIButtonConfiguration plainButtonConfiguration];
    [v119 contentInsets];
    v121 = v120;

    settingsButton2 = [(ICFolderListAllowNotificationsView *)self settingsButton];
    leadingAnchor9 = [settingsButton2 leadingAnchor];
    separatorView6 = [(ICFolderListAllowNotificationsView *)self separatorView];
    leadingAnchor10 = [separatorView6 leadingAnchor];
    v126 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10 constant:-v118];
    [v3 addObject:v126];

    settingsButton3 = [(ICFolderListAllowNotificationsView *)self settingsButton];
    trailingAnchor9 = [settingsButton3 trailingAnchor];
    separatorView7 = [(ICFolderListAllowNotificationsView *)self separatorView];
    trailingAnchor10 = [separatorView7 trailingAnchor];
    [trailingAnchor9 constraintLessThanOrEqualToAnchor:trailingAnchor10 constant:v121];
  }

  else
  {
    settingsButton4 = [(ICFolderListAllowNotificationsView *)self settingsButton];
    leadingAnchor11 = [settingsButton4 leadingAnchor];
    separatorView8 = [(ICFolderListAllowNotificationsView *)self separatorView];
    leadingAnchor12 = [separatorView8 leadingAnchor];
    v135 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12];
    [v3 addObject:v135];

    settingsButton3 = [(ICFolderListAllowNotificationsView *)self settingsButton];
    trailingAnchor9 = [settingsButton3 trailingAnchor];
    separatorView7 = [(ICFolderListAllowNotificationsView *)self separatorView];
    trailingAnchor10 = [separatorView7 trailingAnchor];
    [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
  }
  v136 = ;
  [v3 addObject:v136];

  settingsButton5 = [(ICFolderListAllowNotificationsView *)self settingsButton];
  heightAnchor4 = [settingsButton5 heightAnchor];
  v139 = [heightAnchor4 constraintEqualToConstant:44.0];

  LODWORD(v140) = 1144750080;
  [v139 setPriority:v140];
  [v3 addObject:v139];
  settingsButton6 = [(ICFolderListAllowNotificationsView *)self settingsButton];
  bottomAnchor5 = [settingsButton6 bottomAnchor];
  roundedRectView10 = [(ICFolderListAllowNotificationsView *)self roundedRectView];
  bottomAnchor6 = [roundedRectView10 bottomAnchor];
  v145 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:-v110];
  [v3 addObject:v145];

  v146 = [v3 copy];

  return v146;
}

- (void)updateColors
{
  v3 = +[UIColor clearColor];
  [(ICFolderListAllowNotificationsView *)self setBackgroundColor:v3];

  if ([(ICFolderListAllowNotificationsView *)self hasGroupInset])
  {
    +[UIColor tableCellGroupedBackgroundColor];
  }

  else
  {
    +[UIColor quaternarySystemFillColor];
  }
  v5 = ;
  roundedRectView = [(ICFolderListAllowNotificationsView *)self roundedRectView];
  [roundedRectView setBackgroundColor:v5];
}

- (void)updateCloseButtonImage
{
  v3 = +[UIDevice ic_isVision];
  v4 = &UIFontTextStyleBody;
  if (v3)
  {
    v4 = &UIFontTextStyleTitle2;
  }

  v5 = *v4;
  v6 = &UIFontWeightRegular;
  if (!v3)
  {
    v6 = &UIFontWeightSemibold;
  }

  v12 = [UIFont ic_preferredFontForStyle:v5 withFontWeight:UIContentSizeCategoryExtraExtraLarge maxContentSizeCategory:*v6];
  [v12 pointSize];
  v7 = [UIImageSymbolConfiguration configurationWithPointSize:6 weight:1 scale:?];
  v8 = [UIImage systemImageNamed:@"xmark" withConfiguration:v7];
  closeButton = [(ICFolderListAllowNotificationsView *)self closeButton];
  configuration = [closeButton configuration];

  [configuration setImage:v8];
  closeButton2 = [(ICFolderListAllowNotificationsView *)self closeButton];
  [closeButton2 setConfiguration:configuration];
}

@end