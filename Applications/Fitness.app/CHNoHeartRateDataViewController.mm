@interface CHNoHeartRateDataViewController
+ (id)heartRateModalNavigationController;
- (id)_constructKBURLWithLocale:(id)locale;
- (void)_openKBURLWithLocale:(id)locale completionHandler:(id)handler;
- (void)_openKBURLWithRetry;
- (void)doneTapped:(id)tapped;
- (void)loadView;
@end

@implementation CHNoHeartRateDataViewController

+ (id)heartRateModalNavigationController
{
  v2 = [[CHNoHeartRateDataViewController alloc] initWithNibName:0 bundle:0];
  v3 = [[UINavigationController alloc] initWithRootViewController:v2];

  return v3;
}

- (void)loadView
{
  v207.receiver = self;
  v207.super_class = CHNoHeartRateDataViewController;
  [(CHNoHeartRateDataViewController *)&v207 loadView];
  [(CHNoHeartRateDataViewController *)self setUrlRetryCount:0];
  v3 = +[UIColor systemBackgroundColor];
  view = [(CHNoHeartRateDataViewController *)self view];
  [view setBackgroundColor:v3];

  v5 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"doneTapped:"];
  navigationItem = [(CHNoHeartRateDataViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v5];

  v7 = objc_alloc_init(UILayoutGuide);
  [(CHNoHeartRateDataViewController *)self setContainerGuide:v7];

  view2 = [(CHNoHeartRateDataViewController *)self view];
  containerGuide = [(CHNoHeartRateDataViewController *)self containerGuide];
  [view2 addLayoutGuide:containerGuide];

  containerGuide2 = [(CHNoHeartRateDataViewController *)self containerGuide];
  centerYAnchor = [containerGuide2 centerYAnchor];
  view3 = [(CHNoHeartRateDataViewController *)self view];
  safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
  centerYAnchor2 = [safeAreaLayoutGuide centerYAnchor];
  v206 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];

  containerGuide3 = [(CHNoHeartRateDataViewController *)self containerGuide];
  leadingAnchor = [containerGuide3 leadingAnchor];
  view4 = [(CHNoHeartRateDataViewController *)self view];
  safeAreaLayoutGuide2 = [view4 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide2 leadingAnchor];
  v205 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

  containerGuide4 = [(CHNoHeartRateDataViewController *)self containerGuide];
  trailingAnchor = [containerGuide4 trailingAnchor];
  view5 = [(CHNoHeartRateDataViewController *)self view];
  safeAreaLayoutGuide3 = [view5 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide3 trailingAnchor];
  v204 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

  v213[0] = v206;
  v213[1] = v205;
  v213[2] = v204;
  v25 = [NSArray arrayWithObjects:v213 count:3];
  [NSLayoutConstraint activateConstraints:v25];

  v26 = [UIImage systemImageNamed:@"info.circle"];
  v27 = [UIImageSymbolConfiguration configurationWithTextStyle:?];
  v203 = [v26 imageWithSymbolConfiguration:v27];

  v28 = [[UIImageView alloc] initWithImage:v203];
  [(CHNoHeartRateDataViewController *)self setIconImageView:v28];

  iconImageView = [(CHNoHeartRateDataViewController *)self iconImageView];
  [iconImageView setTranslatesAutoresizingMaskIntoConstraints:0];

  iconImageView2 = [(CHNoHeartRateDataViewController *)self iconImageView];
  LODWORD(v31) = 1148846080;
  [iconImageView2 setContentHuggingPriority:1 forAxis:v31];

  iconImageView3 = [(CHNoHeartRateDataViewController *)self iconImageView];
  LODWORD(v33) = 1148846080;
  [iconImageView3 setContentCompressionResistancePriority:1 forAxis:v33];

  view6 = [(CHNoHeartRateDataViewController *)self view];
  iconImageView4 = [(CHNoHeartRateDataViewController *)self iconImageView];
  [view6 addSubview:iconImageView4];

  iconImageView5 = [(CHNoHeartRateDataViewController *)self iconImageView];
  centerXAnchor = [iconImageView5 centerXAnchor];
  containerGuide5 = [(CHNoHeartRateDataViewController *)self containerGuide];
  centerXAnchor2 = [containerGuide5 centerXAnchor];
  v202 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

  iconImageView6 = [(CHNoHeartRateDataViewController *)self iconImageView];
  topAnchor = [iconImageView6 topAnchor];
  containerGuide6 = [(CHNoHeartRateDataViewController *)self containerGuide];
  topAnchor2 = [containerGuide6 topAnchor];
  v201 = [topAnchor constraintEqualToAnchor:topAnchor2];

  v212[0] = v202;
  v212[1] = v201;
  v44 = [NSArray arrayWithObjects:v212 count:2];
  [NSLayoutConstraint activateConstraints:v44];

  v45 = [UILabel alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v49 = [v45 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(CHNoHeartRateDataViewController *)self setTitleLabel:v49];

  titleLabel = [(CHNoHeartRateDataViewController *)self titleLabel];
  [titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  v200 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle2 addingSymbolicTraits:2 options:0];
  v51 = [UIFont fontWithDescriptor:v200 size:0.0];
  titleLabel2 = [(CHNoHeartRateDataViewController *)self titleLabel];
  [titleLabel2 setFont:v51];

  v53 = +[UIColor labelColor];
  titleLabel3 = [(CHNoHeartRateDataViewController *)self titleLabel];
  [titleLabel3 setTextColor:v53];

  titleLabel4 = [(CHNoHeartRateDataViewController *)self titleLabel];
  [titleLabel4 setAllowsDefaultTighteningForTruncation:1];

  titleLabel5 = [(CHNoHeartRateDataViewController *)self titleLabel];
  [titleLabel5 setTextAlignment:1];

  titleLabel6 = [(CHNoHeartRateDataViewController *)self titleLabel];
  LODWORD(v58) = 1148846080;
  [titleLabel6 setContentCompressionResistancePriority:1 forAxis:v58];

  titleLabel7 = [(CHNoHeartRateDataViewController *)self titleLabel];
  LODWORD(v60) = 1148846080;
  [titleLabel7 setContentHuggingPriority:1 forAxis:v60];

  v61 = +[NSBundle mainBundle];
  v62 = [v61 localizedStringForKey:@"HEART_RATE_NO_DATA_MODAL_TITLE" value:&stru_1008680E8 table:@"Localizable"];
  titleLabel8 = [(CHNoHeartRateDataViewController *)self titleLabel];
  [titleLabel8 setText:v62];

  view7 = [(CHNoHeartRateDataViewController *)self view];
  titleLabel9 = [(CHNoHeartRateDataViewController *)self titleLabel];
  [view7 addSubview:titleLabel9];

  titleLabel10 = [(CHNoHeartRateDataViewController *)self titleLabel];
  centerXAnchor3 = [titleLabel10 centerXAnchor];
  containerGuide7 = [(CHNoHeartRateDataViewController *)self containerGuide];
  centerXAnchor4 = [containerGuide7 centerXAnchor];
  v199 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];

  titleLabel11 = [(CHNoHeartRateDataViewController *)self titleLabel];
  firstBaselineAnchor = [titleLabel11 firstBaselineAnchor];
  iconImageView7 = [(CHNoHeartRateDataViewController *)self iconImageView];
  bottomAnchor = [iconImageView7 bottomAnchor];
  titleLabel12 = [(CHNoHeartRateDataViewController *)self titleLabel];
  font = [titleLabel12 font];
  [font _scaledValueForValue:44.0];
  v198 = [firstBaselineAnchor constraintEqualToAnchor:bottomAnchor constant:?];

  titleLabel13 = [(CHNoHeartRateDataViewController *)self titleLabel];
  leadingAnchor3 = [titleLabel13 leadingAnchor];
  containerGuide8 = [(CHNoHeartRateDataViewController *)self containerGuide];
  leadingAnchor4 = [containerGuide8 leadingAnchor];
  v197 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:leadingAnchor4 constant:12.0];

  titleLabel14 = [(CHNoHeartRateDataViewController *)self titleLabel];
  trailingAnchor3 = [titleLabel14 trailingAnchor];
  containerGuide9 = [(CHNoHeartRateDataViewController *)self containerGuide];
  trailingAnchor4 = [containerGuide9 trailingAnchor];
  v196 = [trailingAnchor3 constraintGreaterThanOrEqualToAnchor:trailingAnchor4 constant:-12.0];

  v211[0] = v199;
  v211[1] = v198;
  v211[2] = v197;
  v211[3] = v196;
  v84 = [NSArray arrayWithObjects:v211 count:4];
  [NSLayoutConstraint activateConstraints:v84];

  v85 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(CHNoHeartRateDataViewController *)self setBodyLabel:v85];

  bodyLabel = [(CHNoHeartRateDataViewController *)self bodyLabel];
  [bodyLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  bodyLabel2 = [(CHNoHeartRateDataViewController *)self bodyLabel];
  [bodyLabel2 setNumberOfLines:0];

  v88 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  bodyLabel3 = [(CHNoHeartRateDataViewController *)self bodyLabel];
  [bodyLabel3 setFont:v88];

  v90 = +[UIColor labelColor];
  bodyLabel4 = [(CHNoHeartRateDataViewController *)self bodyLabel];
  [bodyLabel4 setTextColor:v90];

  bodyLabel5 = [(CHNoHeartRateDataViewController *)self bodyLabel];
  [bodyLabel5 setAllowsDefaultTighteningForTruncation:1];

  bodyLabel6 = [(CHNoHeartRateDataViewController *)self bodyLabel];
  [bodyLabel6 setTextAlignment:1];

  bodyLabel7 = [(CHNoHeartRateDataViewController *)self bodyLabel];
  LODWORD(v95) = 1148846080;
  [bodyLabel7 setContentCompressionResistancePriority:1 forAxis:v95];

  bodyLabel8 = [(CHNoHeartRateDataViewController *)self bodyLabel];
  LODWORD(v97) = 1148846080;
  [bodyLabel8 setContentHuggingPriority:1 forAxis:v97];

  v98 = +[NSBundle mainBundle];
  v99 = [v98 localizedStringForKey:@"HEART_RATE_NO_DATA_MODAL_BODY" value:&stru_1008680E8 table:@"Localizable"];
  bodyLabel9 = [(CHNoHeartRateDataViewController *)self bodyLabel];
  [bodyLabel9 setText:v99];

  view8 = [(CHNoHeartRateDataViewController *)self view];
  bodyLabel10 = [(CHNoHeartRateDataViewController *)self bodyLabel];
  [view8 addSubview:bodyLabel10];

  bodyLabel11 = [(CHNoHeartRateDataViewController *)self bodyLabel];
  centerXAnchor5 = [bodyLabel11 centerXAnchor];
  containerGuide10 = [(CHNoHeartRateDataViewController *)self containerGuide];
  centerXAnchor6 = [containerGuide10 centerXAnchor];
  v195 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];

  bodyLabel12 = [(CHNoHeartRateDataViewController *)self bodyLabel];
  firstBaselineAnchor2 = [bodyLabel12 firstBaselineAnchor];
  titleLabel15 = [(CHNoHeartRateDataViewController *)self titleLabel];
  lastBaselineAnchor = [titleLabel15 lastBaselineAnchor];
  bodyLabel13 = [(CHNoHeartRateDataViewController *)self bodyLabel];
  font2 = [bodyLabel13 font];
  [font2 _scaledValueForValue:32.0];
  v194 = [firstBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor constant:?];

  bodyLabel14 = [(CHNoHeartRateDataViewController *)self bodyLabel];
  leadingAnchor5 = [bodyLabel14 leadingAnchor];
  containerGuide11 = [(CHNoHeartRateDataViewController *)self containerGuide];
  leadingAnchor6 = [containerGuide11 leadingAnchor];
  v193 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:12.0];

  bodyLabel15 = [(CHNoHeartRateDataViewController *)self bodyLabel];
  trailingAnchor5 = [bodyLabel15 trailingAnchor];
  containerGuide12 = [(CHNoHeartRateDataViewController *)self containerGuide];
  trailingAnchor6 = [containerGuide12 trailingAnchor];
  v192 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-12.0];

  v210[0] = v195;
  v210[1] = v194;
  v210[2] = v193;
  v210[3] = v192;
  v121 = [NSArray arrayWithObjects:v210 count:4];
  [NSLayoutConstraint activateConstraints:v121];

  v122 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(CHNoHeartRateDataViewController *)self setLinkLabel:v122];

  linkLabel = [(CHNoHeartRateDataViewController *)self linkLabel];
  [linkLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  v124 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  linkLabel2 = [(CHNoHeartRateDataViewController *)self linkLabel];
  [linkLabel2 setFont:v124];

  v126 = +[ARUIMetricColors energyColors];
  nonGradientTextColor = [v126 nonGradientTextColor];
  linkLabel3 = [(CHNoHeartRateDataViewController *)self linkLabel];
  [linkLabel3 setTextColor:nonGradientTextColor];

  linkLabel4 = [(CHNoHeartRateDataViewController *)self linkLabel];
  [linkLabel4 setAllowsDefaultTighteningForTruncation:1];

  linkLabel5 = [(CHNoHeartRateDataViewController *)self linkLabel];
  [linkLabel5 setTextAlignment:1];

  linkLabel6 = [(CHNoHeartRateDataViewController *)self linkLabel];
  LODWORD(v132) = 1148846080;
  [linkLabel6 setContentCompressionResistancePriority:1 forAxis:v132];

  linkLabel7 = [(CHNoHeartRateDataViewController *)self linkLabel];
  LODWORD(v134) = 1148846080;
  [linkLabel7 setContentHuggingPriority:1 forAxis:v134];

  v135 = +[NSBundle mainBundle];
  v136 = [v135 localizedStringForKey:@"HEART_RATE_KB_LINK_TITLE" value:&stru_1008680E8 table:@"Localizable"];
  linkLabel8 = [(CHNoHeartRateDataViewController *)self linkLabel];
  [linkLabel8 setText:v136];

  view9 = [(CHNoHeartRateDataViewController *)self view];
  linkLabel9 = [(CHNoHeartRateDataViewController *)self linkLabel];
  [view9 addSubview:linkLabel9];

  linkLabel10 = [(CHNoHeartRateDataViewController *)self linkLabel];
  centerXAnchor7 = [linkLabel10 centerXAnchor];
  containerGuide13 = [(CHNoHeartRateDataViewController *)self containerGuide];
  centerXAnchor8 = [containerGuide13 centerXAnchor];
  v191 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8];

  linkLabel11 = [(CHNoHeartRateDataViewController *)self linkLabel];
  firstBaselineAnchor3 = [linkLabel11 firstBaselineAnchor];
  bodyLabel16 = [(CHNoHeartRateDataViewController *)self bodyLabel];
  lastBaselineAnchor2 = [bodyLabel16 lastBaselineAnchor];
  linkLabel12 = [(CHNoHeartRateDataViewController *)self linkLabel];
  font3 = [linkLabel12 font];
  [font3 _scaledValueForValue:30.0];
  v190 = [firstBaselineAnchor3 constraintEqualToAnchor:lastBaselineAnchor2 constant:?];

  linkLabel13 = [(CHNoHeartRateDataViewController *)self linkLabel];
  lastBaselineAnchor3 = [linkLabel13 lastBaselineAnchor];
  containerGuide14 = [(CHNoHeartRateDataViewController *)self containerGuide];
  bottomAnchor2 = [containerGuide14 bottomAnchor];
  v189 = [lastBaselineAnchor3 constraintEqualToAnchor:bottomAnchor2];

  linkLabel14 = [(CHNoHeartRateDataViewController *)self linkLabel];
  leadingAnchor7 = [linkLabel14 leadingAnchor];
  containerGuide15 = [(CHNoHeartRateDataViewController *)self containerGuide];
  leadingAnchor8 = [containerGuide15 leadingAnchor];
  v158 = [leadingAnchor7 constraintGreaterThanOrEqualToAnchor:leadingAnchor8 constant:12.0];

  linkLabel15 = [(CHNoHeartRateDataViewController *)self linkLabel];
  trailingAnchor7 = [linkLabel15 trailingAnchor];
  containerGuide16 = [(CHNoHeartRateDataViewController *)self containerGuide];
  trailingAnchor8 = [containerGuide16 trailingAnchor];
  v163 = [trailingAnchor7 constraintGreaterThanOrEqualToAnchor:trailingAnchor8 constant:-12.0];

  v209[0] = v191;
  v209[1] = v190;
  v209[2] = v189;
  v209[3] = v158;
  v209[4] = v163;
  v164 = [NSArray arrayWithObjects:v209 count:5];
  [NSLayoutConstraint activateConstraints:v164];

  v165 = [UIButton buttonWithType:0];
  [(CHNoHeartRateDataViewController *)self setLinkButton:v165];

  linkButton = [(CHNoHeartRateDataViewController *)self linkButton];
  [linkButton setTranslatesAutoresizingMaskIntoConstraints:0];

  linkButton2 = [(CHNoHeartRateDataViewController *)self linkButton];
  [linkButton2 addTarget:self action:"kbLinkTapped:" forControlEvents:64];

  view10 = [(CHNoHeartRateDataViewController *)self view];
  linkButton3 = [(CHNoHeartRateDataViewController *)self linkButton];
  [view10 addSubview:linkButton3];

  linkButton4 = [(CHNoHeartRateDataViewController *)self linkButton];
  centerXAnchor9 = [linkButton4 centerXAnchor];
  linkLabel16 = [(CHNoHeartRateDataViewController *)self linkLabel];
  centerXAnchor10 = [linkLabel16 centerXAnchor];
  v174 = [centerXAnchor9 constraintEqualToAnchor:centerXAnchor10];

  linkButton5 = [(CHNoHeartRateDataViewController *)self linkButton];
  centerYAnchor3 = [linkButton5 centerYAnchor];
  linkLabel17 = [(CHNoHeartRateDataViewController *)self linkLabel];
  centerYAnchor4 = [linkLabel17 centerYAnchor];
  v179 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];

  linkButton6 = [(CHNoHeartRateDataViewController *)self linkButton];
  heightAnchor = [linkButton6 heightAnchor];
  v182 = [heightAnchor constraintEqualToConstant:44.0];

  linkButton7 = [(CHNoHeartRateDataViewController *)self linkButton];
  widthAnchor = [linkButton7 widthAnchor];
  containerGuide17 = [(CHNoHeartRateDataViewController *)self containerGuide];
  widthAnchor2 = [containerGuide17 widthAnchor];
  v187 = [widthAnchor constraintEqualToAnchor:widthAnchor2 constant:-24.0];

  v208[0] = v174;
  v208[1] = v179;
  v208[2] = v182;
  v208[3] = v187;
  v188 = [NSArray arrayWithObjects:v208 count:4];
  [NSLayoutConstraint activateConstraints:v188];
}

- (id)_constructKBURLWithLocale:(id)locale
{
  localeCopy = locale;
  v4 = objc_alloc_init(NSURLComponents);
  [v4 setScheme:@"https"];
  [v4 setHost:@"support.apple.com"];
  localeIdentifier = [localeCopy localeIdentifier];

  lowercaseString = [localeIdentifier lowercaseString];

  v7 = [lowercaseString stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

  v8 = [NSString stringWithFormat:@"/%@/%@", v7, @"HT204666"];
  [v4 setPath:v8];

  v9 = [v4 URL];

  return v9;
}

- (void)doneTapped:(id)tapped
{
  navigationController = [(CHNoHeartRateDataViewController *)self navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];
}

- (void)_openKBURLWithRetry
{
  if ([(CHNoHeartRateDataViewController *)self urlRetryCount]> 1)
  {
    v3 = [NSLocale localeWithLocaleIdentifier:@"en_US"];
    v4 = &stru_10083B920;
  }

  else
  {
    v3 = +[NSLocale currentLocale];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000D9B74;
    v5[3] = &unk_10083B8E0;
    v5[4] = self;
    v4 = v5;
  }

  [(CHNoHeartRateDataViewController *)self _openKBURLWithLocale:v3 completionHandler:v4];

  [(CHNoHeartRateDataViewController *)self setUrlRetryCount:[(CHNoHeartRateDataViewController *)self urlRetryCount]+ 1];
}

- (void)_openKBURLWithLocale:(id)locale completionHandler:(id)handler
{
  handlerCopy = handler;
  localeCopy = locale;
  v9 = +[UIApplication sharedApplication];
  v8 = [(CHNoHeartRateDataViewController *)self _constructKBURLWithLocale:localeCopy];

  [v9 openURL:v8 withCompletionHandler:handlerCopy];
}

@end