@interface CLVanillaWhenInUseAuthPromptPluginViewController
- (void)_addPillButton;
- (void)_setConstraints;
- (void)_setDynamicTitleAndIconForButton;
- (void)_setPreciseButtonPadding;
- (void)_stylePreciseOnButton;
- (void)loadView;
- (void)pillButtonOnAction:(id)a3;
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
  v3 = [(CLAuthBaseViewController *)self locationDictionary];
  v4 = [v3 objectForKeyedSubscript:@"PreciseButtonOnTitle"];
  [(CLVanillaWhenInUseAuthPromptPluginViewController *)self setPillButtonTitlePreciseOn:v4];

  v5 = [(CLAuthBaseViewController *)self locationDictionary];
  v6 = [v5 objectForKeyedSubscript:@"PreciseButtonOffTitle"];
  [(CLVanillaWhenInUseAuthPromptPluginViewController *)self setPillButtonTitlePreciseOff:v6];

  v7 = [(CLAuthBaseViewController *)self locationDictionary];
  v8 = [v7 objectForKeyedSubscript:@"OnlyHereTitle"];
  [(CLVanillaWhenInUseAuthPromptPluginViewController *)self setPillButtonTitleOnlyHere:v8];

  [(CLVanillaWhenInUseAuthPromptPluginViewController *)self _addPillButton];
  [(CLAuthWithPreciseSettingBaseViewController *)self updateMapZoomAccordinglyForPreciseSetting];
  v9 = [(CLAuthBaseViewController *)self mapView];
  [v9 setUserTrackingMode:1 animated:0];
}

- (void)pillButtonOnAction:(id)a3
{
  [(CLAuthWithPreciseSettingBaseViewController *)self pillButtonToggled];

  [(CLVanillaWhenInUseAuthPromptPluginViewController *)self _stylePreciseOnButton];
}

- (void)_setDynamicTitleAndIconForButton
{
  v18 = [UIFont systemFontOfSize:13.0 weight:UIFontWeightSemibold];
  v3 = [UIFontMetrics metricsForTextStyle:UIFontTextStyleSubheadline];
  v4 = [v3 scaledFontForFont:v18];
  v5 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  v6 = [v5 titleLabel];
  [v6 setFont:v4];

  v7 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  v8 = [v7 titleLabel];
  [v8 setAdjustsFontForContentSizeCategory:1];

  v9 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  v10 = [v9 titleLabel];
  [v10 setLineBreakMode:4];

  v11 = +[UIColor systemBackgroundColor];
  v12 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  [v12 setBackgroundColor:v11];

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
  v46 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  v3 = [v46 imageView];
  [v3 setContentMode:1];

  v47 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  v4 = [v47 titleLabel];
  v5 = [v4 font];
  [v5 lineHeight];
  v7 = v6;

  v48 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  v8 = [v48 layer];
  v9 = v7 + 4.0 + 4.0;
  [v8 setCornerRadius:v9 * 0.5];

  v49 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  [v49 setClipsToBounds:1];

  v50 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  v10 = [v50 imageView];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

  v51 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  v11 = [v51 titleLabel];
  v12 = [v11 font];
  [v12 lineHeight];
  v14 = v13;

  v52 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  v15 = [v52 titleLabel];
  v16 = [v15 font];
  [v16 lineHeight];
  v18 = v17;

  v53 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  v19 = [v53 titleLabel];
  v20 = [v19 font];
  [v20 lineHeight];
  v22 = v21;

  v54 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self locationIcon];
  [v54 size];
  v24 = v23;

  v55 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  v25 = [v55 heightAnchor];
  v26 = [v25 constraintEqualToConstant:v9];
  [v26 setActive:1];

  v56 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  v27 = [v56 leadingAnchor];
  v28 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  v29 = [v28 imageView];
  v30 = [v29 leadingAnchor];
  v31 = [v27 constraintEqualToAnchor:v30 constant:-(v14 * 0.5)];
  [v31 setActive:1];

  v57 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  v32 = [v57 imageView];
  v33 = [v32 leadingAnchor];
  v34 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  v35 = [v34 titleLabel];
  v36 = [v35 leadingAnchor];
  v37 = v22 * 0.25;
  v38 = [v33 constraintEqualToAnchor:v36 constant:-(v37 + v24)];
  [v38 setActive:1];

  v58 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  [v58 setContentEdgeInsets:{0.0, v14 * 0.5 + v37, 0.0, v18 * 0.5}];

  v59 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  v39 = [v59 titleLabel];
  v40 = [v39 topAnchor];
  v41 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  v42 = [v41 topAnchor];
  v43 = [v40 constraintEqualToAnchor:v42 constant:4.0];
  [v43 setActive:1];

  v60 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self view];
  v44 = +[UIView userInterfaceLayoutDirectionForSemanticContentAttribute:](UIView, "userInterfaceLayoutDirectionForSemanticContentAttribute:", [v60 semanticContentAttribute]);

  v61 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  [v61 imageView];
  if (v44 == UIUserInterfaceLayoutDirectionRightToLeft)
    v45 = {;
    [v45 setContentMode:8];
  }

  else
    v45 = {;
    [v45 setContentMode:7];
  }

  v62 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  [v62 setContentMode:4];
}

- (void)_stylePreciseOnButton
{
  [(CLVanillaWhenInUseAuthPromptPluginViewController *)self _setDynamicTitleAndIconForButton];
  v24 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  v3 = [v24 layer];
  LODWORD(v4) = 4.0;
  [v3 setShadowOpacity:v4];

  v25 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  v5 = [v25 layer];
  [v5 setShadowRadius:2.0];

  v26 = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.08];
  v6 = [v26 CGColor];
  v7 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  v8 = [v7 layer];
  [v8 setShadowColor:v6];

  v27 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  v9 = [v27 layer];
  [v9 setShadowOffset:{0.0, 2.0}];

  v28 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  v10 = [v28 layer];
  [v10 setMasksToBounds:0];

  v29 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  v11 = [v29 titleLabel];
  LODWORD(v12) = 1036831949;
  [v11 _setHyphenationFactor:v12];

  if ([(CLAuthWithPreciseSettingBaseViewController *)self pillButtonState]== 1)
  {
    v30 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
    v13 = [v30 imageView];
    v14 = +[UIColor systemBlueColor];
    [v13 setTintColor:v14];

    v31 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
    v15 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButtonTitlePreciseOn];
    [v31 setTitle:v15 forState:0];

    v32 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
    v16 = +[UIColor systemBlueColor];
    [v32 setTitleColor:v16 forState:0];
  }

  else if ([(CLAuthWithPreciseSettingBaseViewController *)self pillButtonState]== 2)
  {
    v33 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
    v17 = [v33 imageView];
    v18 = +[UIColor grayColor];
    [v17 setTintColor:v18];

    v34 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
    v19 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButtonTitlePreciseOff];
    [v34 setTitle:v19 forState:0];

    v32 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
    v16 = +[UIColor systemGrayColor];
    [v32 setTitleColor:v16 forState:0];
  }

  else
  {
    if ([(CLAuthWithPreciseSettingBaseViewController *)self pillButtonState]!= 3)
    {
      goto LABEL_8;
    }

    v35 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
    v20 = [v35 imageView];
    v21 = +[UIColor systemBlueColor];
    [v20 setTintColor:v21];

    v36 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
    v22 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButtonTitleOnlyHere];
    [v36 setTitle:v22 forState:0];

    v32 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
    v16 = +[UIColor systemBlueColor];
    [v32 setTitleColor:v16 forState:0];
  }

LABEL_8:
  v37 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  v23 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self locationIcon];
  [v37 setImage:v23 forState:0];
}

- (void)_addPillButton
{
  v3 = objc_alloc_init(UIButton);
  [(CLVanillaWhenInUseAuthPromptPluginViewController *)self setPillButton:v3];

  [(CLVanillaWhenInUseAuthPromptPluginViewController *)self _setPreciseButtonPadding];
  [(CLVanillaWhenInUseAuthPromptPluginViewController *)self _stylePreciseOnButton];
  v4 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  [v4 addTarget:self action:"pillButtonOnAction:" forControlEvents:64];

  v5 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self view];
  v6 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  [v5 addSubview:v6];

  [(CLVanillaWhenInUseAuthPromptPluginViewController *)self _setConstraints];
}

- (void)_setConstraints
{
  v22 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];

  v23 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  v3 = [v23 leadingAnchor];
  v4 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self view];
  v5 = [v4 leadingAnchor];
  v6 = [v3 constraintEqualToAnchor:v5 constant:8.0];
  [v6 setActive:1];

  v24 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  v7 = [v24 topAnchor];
  v8 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self view];
  v9 = [v8 topAnchor];
  v10 = [v7 constraintEqualToAnchor:v9 constant:8.0];
  [v10 setActive:1];

  v25 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self view];
  v11 = [v25 trailingAnchor];
  v12 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  v13 = [v12 trailingAnchor];
  v14 = [v11 constraintGreaterThanOrEqualToAnchor:v13 constant:8.0];
  [v14 setActive:1];

  v26 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self view];
  v15 = [v26 trailingAnchor];
  v16 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  v17 = [v16 titleLabel];
  v18 = [v17 trailingAnchor];
  v19 = [v15 constraintGreaterThanOrEqualToAnchor:v18 constant:8.0];
  [v19 setActive:1];

  v20 = [(CLVanillaWhenInUseAuthPromptPluginViewController *)self pillButton];
  LODWORD(v21) = 1144750080;
  v27 = v20;
  [v20 setContentCompressionResistancePriority:0 forAxis:v21];
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