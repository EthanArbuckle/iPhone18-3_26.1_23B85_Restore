@interface CLVanillaWhenInUseAuthPromptPluginViewController
- (void)_addPillButton;
- (void)_setConstraints;
- (void)_setDynamicTitleAndIconForButton;
- (void)_setPreciseButtonPadding;
- (void)_stylePreciseOnButton;
- (void)loadView;
- (void)pillButtonOnAction:(id)action;
- (void)viewWillLayoutSubviews;
@end

@implementation CLVanillaWhenInUseAuthPromptPluginViewController

- (void)loadView
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "#CLVanillaWhenInUseAuthPromptPluginViewController loadView<Start>", buf, 2u);
  }

  v10.receiver = self;
  v10.super_class = CLVanillaWhenInUseAuthPromptPluginViewController;
  [(CLAuthWithPreciseSettingBaseViewController *)&v10 loadView];
  locationDictionary = [(CLAuthBaseViewController *)self locationDictionary];
  v4 = [locationDictionary objectForKeyedSubscript:@"PreciseButtonOnTitle"];
  [(CLVanillaWhenInUseAuthPromptPluginViewController *)self setPillButtonTitlePreciseOn:v4];

  locationDictionary2 = [(CLAuthBaseViewController *)self locationDictionary];
  v6 = [locationDictionary2 objectForKeyedSubscript:@"PreciseButtonOffTitle"];
  [(CLVanillaWhenInUseAuthPromptPluginViewController *)self setPillButtonTitlePreciseOff:v6];

  locationDictionary3 = [(CLAuthBaseViewController *)self locationDictionary];
  v8 = [locationDictionary3 objectForKeyedSubscript:@"OnlyHereTitle"];
  [(CLVanillaWhenInUseAuthPromptPluginViewController *)self setPillButtonTitleOnlyHere:v8];

  [(CLVanillaWhenInUseAuthPromptPluginViewController *)self _addPillButton];
  [(CLAuthWithPreciseSettingBaseViewController *)self updateMapZoomAccordinglyForPreciseSetting];
  mapView = [(CLAuthBaseViewController *)self mapView];
  [mapView setUserTrackingMode:1 animated:0];
}

- (void)pillButtonOnAction:(id)action
{
  [(CLAuthWithPreciseSettingBaseViewController *)self pillButtonToggled];

  [(CLVanillaWhenInUseAuthPromptPluginViewController *)self _stylePreciseOnButton];
}

- (void)_setDynamicTitleAndIconForButton
{
  v18 = [UIFont systemFontOfSize:13.0 weight:UIFontWeightSemibold];
  v3 = [UIFontMetrics metricsForTextStyle:UIFontTextStyleSubheadline];
  v4 = [v3 scaledFontForFont:v18];
  pillButton = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  titleLabel = [pillButton titleLabel];
  [titleLabel setFont:v4];

  pillButton2 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  titleLabel2 = [pillButton2 titleLabel];
  [titleLabel2 setAdjustsFontForContentSizeCategory:1];

  pillButton3 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  titleLabel3 = [pillButton3 titleLabel];
  [titleLabel3 setLineBreakMode:4];

  v11 = +[UIColor systemBackgroundColor];
  pillButton4 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  [pillButton4 setBackgroundColor:v11];

  v13 = [UIFont systemFontOfSize:10.0 weight:UIFontWeightSemibold];
  v14 = [UIFontMetrics metricsForTextStyle:UIFontTextStyleSubheadline];
  v15 = [v14 scaledFontForFont:v13];

  [v15 pointSize];
  v16 = [UIImageSymbolConfiguration configurationWithPointSize:6 weight:-1 scale:?];
  v17 = [UIImage systemImageNamed:@"location.fill" withConfiguration:v16];
  [(CLVanillaWhenInUseAuthPromptPluginViewController *)self setLocationIcon:v17];
}

- (void)_setPreciseButtonPadding
{
  [(CLVanillaWhenInUseAuthPromptPluginViewController *)self _setDynamicTitleAndIconForButton];
  pillButton = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  imageView = [pillButton imageView];
  [imageView setContentMode:1];

  pillButton2 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  titleLabel = [pillButton2 titleLabel];
  font = [titleLabel font];
  [font lineHeight];
  v7 = v6;

  pillButton3 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  layer = [pillButton3 layer];
  v9 = v7 + 4.0 + 4.0;
  [layer setCornerRadius:v9 * 0.5];

  pillButton4 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  [pillButton4 setClipsToBounds:1];

  pillButton5 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  imageView2 = [pillButton5 imageView];
  [imageView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  pillButton6 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  titleLabel2 = [pillButton6 titleLabel];
  font2 = [titleLabel2 font];
  [font2 lineHeight];
  v14 = v13;

  pillButton7 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  titleLabel3 = [pillButton7 titleLabel];
  font3 = [titleLabel3 font];
  [font3 lineHeight];
  v18 = v17;

  pillButton8 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  titleLabel4 = [pillButton8 titleLabel];
  font4 = [titleLabel4 font];
  [font4 lineHeight];
  v22 = v21;

  locationIcon = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self locationIcon];
  [locationIcon size];
  v24 = v23;

  pillButton9 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  heightAnchor = [pillButton9 heightAnchor];
  v26 = [heightAnchor constraintEqualToConstant:v9];
  [v26 setActive:1];

  pillButton10 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  leadingAnchor = [pillButton10 leadingAnchor];
  pillButton11 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  imageView3 = [pillButton11 imageView];
  leadingAnchor2 = [imageView3 leadingAnchor];
  v31 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:-(v14 * 0.5)];
  [v31 setActive:1];

  pillButton12 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  imageView4 = [pillButton12 imageView];
  leadingAnchor3 = [imageView4 leadingAnchor];
  pillButton13 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  titleLabel5 = [pillButton13 titleLabel];
  leadingAnchor4 = [titleLabel5 leadingAnchor];
  v37 = v22 * 0.25;
  v38 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:-(v37 + v24)];
  [v38 setActive:1];

  pillButton14 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  [pillButton14 setContentEdgeInsets:{0.0, v14 * 0.5 + v37, 0.0, v18 * 0.5}];

  pillButton15 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  titleLabel6 = [pillButton15 titleLabel];
  topAnchor = [titleLabel6 topAnchor];
  pillButton16 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  topAnchor2 = [pillButton16 topAnchor];
  v43 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:4.0];
  [v43 setActive:1];

  view = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self view];
  v44 = +[UIView userInterfaceLayoutDirectionForSemanticContentAttribute:](UIView, "userInterfaceLayoutDirectionForSemanticContentAttribute:", [view semanticContentAttribute]);

  pillButton17 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  [pillButton17 imageView];
  if (v44 == UIUserInterfaceLayoutDirectionRightToLeft)
    v45 = {;
    [v45 setContentMode:8];
  }

  else
    v45 = {;
    [v45 setContentMode:7];
  }

  pillButton18 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  [pillButton18 setContentMode:4];
}

- (void)_stylePreciseOnButton
{
  [(CLVanillaWhenInUseAuthPromptPluginViewController *)self _setDynamicTitleAndIconForButton];
  pillButton = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  layer = [pillButton layer];
  LODWORD(v4) = 4.0;
  [layer setShadowOpacity:v4];

  pillButton2 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  layer2 = [pillButton2 layer];
  [layer2 setShadowRadius:2.0];

  v26 = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.08];
  cGColor = [v26 CGColor];
  pillButton3 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  layer3 = [pillButton3 layer];
  [layer3 setShadowColor:cGColor];

  pillButton4 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  layer4 = [pillButton4 layer];
  [layer4 setShadowOffset:{0.0, 2.0}];

  pillButton5 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  layer5 = [pillButton5 layer];
  [layer5 setMasksToBounds:0];

  pillButton6 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  titleLabel = [pillButton6 titleLabel];
  LODWORD(v12) = 1036831949;
  [titleLabel _setHyphenationFactor:v12];

  if ([(CLAuthWithPreciseSettingBaseViewController *)self pillButtonState]== 1)
  {
    pillButton7 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
    imageView = [pillButton7 imageView];
    v14 = +[UIColor systemBlueColor];
    [imageView setTintColor:v14];

    pillButton8 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
    pillButtonTitlePreciseOn = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButtonTitlePreciseOn];
    [pillButton8 setTitle:pillButtonTitlePreciseOn forState:0];

    pillButton9 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
    v16 = +[UIColor systemBlueColor];
    [pillButton9 setTitleColor:v16 forState:0];
  }

  else if ([(CLAuthWithPreciseSettingBaseViewController *)self pillButtonState]== 2)
  {
    pillButton10 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
    imageView2 = [pillButton10 imageView];
    v18 = +[UIColor grayColor];
    [imageView2 setTintColor:v18];

    pillButton11 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
    pillButtonTitlePreciseOff = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButtonTitlePreciseOff];
    [pillButton11 setTitle:pillButtonTitlePreciseOff forState:0];

    pillButton9 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
    v16 = +[UIColor systemGrayColor];
    [pillButton9 setTitleColor:v16 forState:0];
  }

  else
  {
    if ([(CLAuthWithPreciseSettingBaseViewController *)self pillButtonState]!= 3)
    {
      goto LABEL_8;
    }

    pillButton12 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
    imageView3 = [pillButton12 imageView];
    v21 = +[UIColor systemBlueColor];
    [imageView3 setTintColor:v21];

    pillButton13 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
    pillButtonTitleOnlyHere = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButtonTitleOnlyHere];
    [pillButton13 setTitle:pillButtonTitleOnlyHere forState:0];

    pillButton9 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
    v16 = +[UIColor systemBlueColor];
    [pillButton9 setTitleColor:v16 forState:0];
  }

LABEL_8:
  pillButton14 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  locationIcon = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self locationIcon];
  [pillButton14 setImage:locationIcon forState:0];
}

- (void)_addPillButton
{
  v3 = objc_alloc_init(UIButton);
  [(CLVanillaWhenInUseAuthPromptPluginViewController *)self setPillButton:v3];

  [(CLVanillaWhenInUseAuthPromptPluginViewController *)self _setPreciseButtonPadding];
  [(CLVanillaWhenInUseAuthPromptPluginViewController *)self _stylePreciseOnButton];
  pillButton = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  [pillButton addTarget:self action:"pillButtonOnAction:" forControlEvents:64];

  view = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self view];
  pillButton2 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  [view addSubview:pillButton2];

  [(CLVanillaWhenInUseAuthPromptPluginViewController *)self _setConstraints];
}

- (void)_setConstraints
{
  pillButton = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  [pillButton setTranslatesAutoresizingMaskIntoConstraints:0];

  pillButton2 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  leadingAnchor = [pillButton2 leadingAnchor];
  view = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self view];
  leadingAnchor2 = [view leadingAnchor];
  v6 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:8.0];
  [v6 setActive:1];

  pillButton3 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  topAnchor = [pillButton3 topAnchor];
  view2 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self view];
  topAnchor2 = [view2 topAnchor];
  v10 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:8.0];
  [v10 setActive:1];

  view3 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self view];
  trailingAnchor = [view3 trailingAnchor];
  pillButton4 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  trailingAnchor2 = [pillButton4 trailingAnchor];
  v14 = [trailingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor2 constant:8.0];
  [v14 setActive:1];

  view4 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self view];
  trailingAnchor3 = [view4 trailingAnchor];
  pillButton5 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  titleLabel = [pillButton5 titleLabel];
  trailingAnchor4 = [titleLabel trailingAnchor];
  v19 = [trailingAnchor3 constraintGreaterThanOrEqualToAnchor:trailingAnchor4 constant:8.0];
  [v19 setActive:1];

  pillButton6 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  LODWORD(v21) = 1144750080;
  v27 = pillButton6;
  [pillButton6 setContentCompressionResistancePriority:0 forAxis:v21];
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = CLVanillaWhenInUseAuthPromptPluginViewController;
  [(CLAuthWithPreciseSettingBaseViewController *)&v3 viewWillLayoutSubviews];
  [(CLVanillaWhenInUseAuthPromptPluginViewController *)self _stylePreciseOnButton];
  [(CLVanillaWhenInUseAuthPromptPluginViewController *)self _setPreciseButtonPadding];
}

@end