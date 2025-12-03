@interface AirQualityConditionsViewController
- (AirQualityConditionsViewController)initWithWeatherLocationDataProvider:(id)provider;
- (AirQualityConditionsViewControllerDelegate)delegate;
- (BOOL)_shouldShowAirQualityConditions;
- (BOOL)isVisible;
- (id)_airQualityIndex;
- (id)_font;
- (void)_createSubviews;
- (void)_setupConstraints;
- (void)_toggleAirQualityConditionsVisibility;
- (void)_updateSubviews;
- (void)clearSavedLocation;
- (void)loadView;
- (void)setAirQualityConditions:(id)conditions;
- (void)setVisible:(BOOL)visible animated:(BOOL)animated;
- (void)viewDidLoad;
@end

@implementation AirQualityConditionsViewController

- (void)loadView
{
  v3 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(AirQualityConditionsViewController *)self setView:v3];

  view = [(AirQualityConditionsViewController *)self view];
  [view setAccessibilityIdentifier:@"AirQualityConditionsView"];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = AirQualityConditionsViewController;
  [(AirQualityConditionsViewController *)&v6 viewDidLoad];
  [(AirQualityConditionsViewController *)self _createSubviews];
  [(AirQualityConditionsViewController *)self _updateSubviews];
  [(AirQualityConditionsViewController *)self _setupConstraints];
  [(AirQualityConditionsViewController *)self setVisible:0 animated:0];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_preferredContentSizeChanged:" name:UIContentSizeCategoryDidChangeNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  v5 = +[WeatherSettingsManager settingsUpdatedNotification];
  [v4 addObserver:self selector:"_toggleAirQualityConditionsVisibility" name:v5 object:0];
}

- (void)_createSubviews
{
  v3 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(AirQualityConditionsViewController *)self setContentView:v7];

  contentView = [(AirQualityConditionsViewController *)self contentView];
  [contentView setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView2 = [(AirQualityConditionsViewController *)self contentView];
  layer = [contentView2 layer];
  [layer setCornerRadius:5.0];

  contentView3 = [(AirQualityConditionsViewController *)self contentView];
  [contentView3 setAccessibilityIdentifier:@"AirQualityConditionsContent"];

  view = [(AirQualityConditionsViewController *)self view];
  contentView4 = [(AirQualityConditionsViewController *)self contentView];
  [view addSubview:contentView4];

  v14 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(AirQualityConditionsViewController *)self setAqiCircleView:v14];

  aqiCircleView = [(AirQualityConditionsViewController *)self aqiCircleView];
  [aqiCircleView setTranslatesAutoresizingMaskIntoConstraints:0];

  aqiCircleView2 = [(AirQualityConditionsViewController *)self aqiCircleView];
  [aqiCircleView2 setAccessibilityIdentifier:@"AirQualityConditionsCircleView"];

  contentView5 = [(AirQualityConditionsViewController *)self contentView];
  aqiCircleView3 = [(AirQualityConditionsViewController *)self aqiCircleView];
  [contentView5 addSubview:aqiCircleView3];

  v19 = [[_MKUILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(AirQualityConditionsViewController *)self setAirQualityLabel:v19];

  airQualityLabel = [(AirQualityConditionsViewController *)self airQualityLabel];
  [airQualityLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  v21 = +[UIColor clearColor];
  cGColor = [v21 CGColor];
  airQualityLabel2 = [(AirQualityConditionsViewController *)self airQualityLabel];
  layer2 = [airQualityLabel2 layer];
  [layer2 setBackgroundColor:cGColor];

  airQualityLabel3 = [(AirQualityConditionsViewController *)self airQualityLabel];
  [airQualityLabel3 setTextAlignment:1];

  _airQualityIndex = [(AirQualityConditionsViewController *)self _airQualityIndex];
  airQualityLabel4 = [(AirQualityConditionsViewController *)self airQualityLabel];
  [airQualityLabel4 setText:_airQualityIndex];

  airQualityLabel5 = [(AirQualityConditionsViewController *)self airQualityLabel];
  [airQualityLabel5 setAccessibilityIdentifier:@"AirQualityConditionsTitleLabel"];

  contentView6 = [(AirQualityConditionsViewController *)self contentView];
  airQualityLabel6 = [(AirQualityConditionsViewController *)self airQualityLabel];
  [contentView6 addSubview:airQualityLabel6];
}

- (id)_airQualityIndex
{
  airQualityConditions = [(AirQualityConditionsViewController *)self airQualityConditions];

  if (airQualityConditions)
  {
    airQualityConditions2 = [(AirQualityConditionsViewController *)self airQualityConditions];
    hasNumericalAirQualityIndex = [airQualityConditions2 hasNumericalAirQualityIndex];

    if (hasNumericalAirQualityIndex)
    {
      airQualityConditions3 = [(AirQualityConditionsViewController *)self airQualityConditions];
      v7 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", @"%ld", [airQualityConditions3 airQualityIndex]);
    }

    else
    {
      v7 = &stru_1016631F0;
    }

    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"AQI" value:@"localized string not found" table:0];
    v11 = [NSString localizedStringWithFormat:v10];

    v12 = [NSString stringWithFormat:@"%@ %@", v11, v7];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100A182B4;
    block[3] = &unk_101661B18;
    v13 = v11;
    v18 = v13;
    if (qword_10195E1B8 != -1)
    {
      dispatch_once(&qword_10195E1B8, block);
    }

    if (hasNumericalAirQualityIndex)
    {
      v14 = v12;
    }

    else
    {
      v14 = v13;
    }

    if (byte_10195E1B0)
    {
      v15 = v7;
    }

    else
    {
      v15 = v14;
    }

    v8 = v15;
  }

  else
  {
    v8 = &stru_1016631F0;
  }

  return v8;
}

- (void)_updateSubviews
{
  _font = [(AirQualityConditionsViewController *)self _font];
  airQualityLabel = [(AirQualityConditionsViewController *)self airQualityLabel];
  [airQualityLabel setFont:_font];

  if (_UISolariumEnabled())
  {
    +[_TtC4Maps23MapsDesignConstantsShim defaultButtonTintColor];
  }

  else
  {
    +[MapsTheme weatherWidgetTextColor];
  }
  v4 = ;
  airQualityLabel2 = [(AirQualityConditionsViewController *)self airQualityLabel];
  [airQualityLabel2 setTextColor:v4];

  v6 = sub_10000FA08(self);
  v7 = 7.5;
  if (v6 == 5)
  {
    v7 = 8.5;
  }

  [_font _mapkit_scaledValueForValue:v7];
  v9 = v8;
  aqiCircleViewHeightConstraint = [(AirQualityConditionsViewController *)self aqiCircleViewHeightConstraint];
  [aqiCircleViewHeightConstraint setConstant:v9];

  aqiCircleView = [(AirQualityConditionsViewController *)self aqiCircleView];
  layer = [aqiCircleView layer];
  [layer setCornerRadius:v9 * 0.5];

  if ([(AirQualityConditionsViewController *)self _shouldShowAirQualityConditions])
  {
    _airQualityIndex = [(AirQualityConditionsViewController *)self _airQualityIndex];
    airQualityLabel3 = [(AirQualityConditionsViewController *)self airQualityLabel];
    [airQualityLabel3 setText:_airQualityIndex];

    color = [(AirQualityConditions *)self->_airQualityConditions color];
    cGColor = [color CGColor];
    aqiCircleView2 = [(AirQualityConditionsViewController *)self aqiCircleView];
    layer2 = [aqiCircleView2 layer];
    [layer2 setBackgroundColor:cGColor];
  }
}

- (id)_font
{
  v3 = _UISolariumEnabled();
  v4 = sub_10000FA08(self);
  if (v3)
  {
    v5 = 11.0;
    if (v4 == 5)
    {
      v5 = 8.0;
    }

    v6 = [UIFont systemFontOfSize:UIFontSystemFontDesignRounded weight:v5 design:UIFontWeightRegular];
  }

  else
  {
    v7 = 10.0;
    if (v4 == 5)
    {
      v7 = 12.0;
    }

    v6 = [UIFont _maps_systemFontWithSize:3 weight:v7 grade:UIFontWeightMedium];
  }

  v8 = v6;
  v9 = [UIFontMetrics metricsForTextStyle:UIFontTextStyleFootnote];
  v10 = [v9 scaledFontForFont:v8 maximumPointSize:18.0];

  return v10;
}

- (BOOL)_shouldShowAirQualityConditions
{
  v3 = +[WeatherSettingsManager sharedManager];
  shouldShowAirQualityConditions = [v3 shouldShowAirQualityConditions];

  if (self->_airQualityConditions)
  {
    return shouldShowAirQualityConditions;
  }

  else
  {
    return 0;
  }
}

- (void)_setupConstraints
{
  v69 = +[NSMutableArray array];
  aqiCircleView = [(AirQualityConditionsViewController *)self aqiCircleView];
  heightAnchor = [aqiCircleView heightAnchor];
  v5 = [heightAnchor constraintEqualToConstant:0.0];
  [(AirQualityConditionsViewController *)self setAqiCircleViewHeightConstraint:v5];

  airQualityLabel = [(AirQualityConditionsViewController *)self airQualityLabel];
  topAnchor = [airQualityLabel topAnchor];
  contentView = [(AirQualityConditionsViewController *)self contentView];
  topAnchor2 = [contentView topAnchor];
  v59 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v71[0] = v59;
  airQualityLabel2 = [(AirQualityConditionsViewController *)self airQualityLabel];
  bottomAnchor = [airQualityLabel2 bottomAnchor];
  contentView2 = [(AirQualityConditionsViewController *)self contentView];
  bottomAnchor2 = [contentView2 bottomAnchor];
  v49 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v71[1] = v49;
  airQualityLabel3 = [(AirQualityConditionsViewController *)self airQualityLabel];
  leadingAnchor = [airQualityLabel3 leadingAnchor];
  contentView3 = [(AirQualityConditionsViewController *)self contentView];
  leadingAnchor2 = [contentView3 leadingAnchor];
  v39 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v71[2] = v39;
  aqiCircleView2 = [(AirQualityConditionsViewController *)self aqiCircleView];
  leadingAnchor3 = [aqiCircleView2 leadingAnchor];
  airQualityLabel4 = [(AirQualityConditionsViewController *)self airQualityLabel];
  trailingAnchor = [airQualityLabel4 trailingAnchor];
  v33 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:4.0];
  v71[3] = v33;
  aqiCircleView3 = [(AirQualityConditionsViewController *)self aqiCircleView];
  trailingAnchor2 = [aqiCircleView3 trailingAnchor];
  contentView4 = [(AirQualityConditionsViewController *)self contentView];
  trailingAnchor3 = [contentView4 trailingAnchor];
  v28 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
  v71[4] = v28;
  aqiCircleView4 = [(AirQualityConditionsViewController *)self aqiCircleView];
  centerYAnchor = [aqiCircleView4 centerYAnchor];
  airQualityLabel5 = [(AirQualityConditionsViewController *)self airQualityLabel];
  centerYAnchor2 = [airQualityLabel5 centerYAnchor];
  v8 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v71[5] = v8;
  aqiCircleView5 = [(AirQualityConditionsViewController *)self aqiCircleView];
  widthAnchor = [aqiCircleView5 widthAnchor];
  aqiCircleView6 = [(AirQualityConditionsViewController *)self aqiCircleView];
  heightAnchor2 = [aqiCircleView6 heightAnchor];
  v13 = [widthAnchor constraintEqualToAnchor:heightAnchor2];
  aqiCircleViewHeightConstraint = self->_aqiCircleViewHeightConstraint;
  v71[6] = v13;
  v71[7] = aqiCircleViewHeightConstraint;
  v15 = [NSArray arrayWithObjects:v71 count:8];
  [v69 addObjectsFromArray:v15];

  contentView5 = [(AirQualityConditionsViewController *)self contentView];
  centerXAnchor = [contentView5 centerXAnchor];
  view = [(AirQualityConditionsViewController *)self view];
  centerXAnchor2 = [view centerXAnchor];
  v60 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v70[0] = v60;
  contentView6 = [(AirQualityConditionsViewController *)self contentView];
  topAnchor3 = [contentView6 topAnchor];
  view2 = [(AirQualityConditionsViewController *)self view];
  topAnchor4 = [view2 topAnchor];
  v50 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v70[1] = v50;
  contentView7 = [(AirQualityConditionsViewController *)self contentView];
  bottomAnchor3 = [contentView7 bottomAnchor];
  view3 = [(AirQualityConditionsViewController *)self view];
  bottomAnchor4 = [view3 bottomAnchor];
  v40 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v70[2] = v40;
  contentView8 = [(AirQualityConditionsViewController *)self contentView];
  leadingAnchor4 = [contentView8 leadingAnchor];
  view4 = [(AirQualityConditionsViewController *)self view];
  leadingAnchor5 = [view4 leadingAnchor];
  v19 = [leadingAnchor4 constraintGreaterThanOrEqualToAnchor:leadingAnchor5];
  v70[3] = v19;
  contentView9 = [(AirQualityConditionsViewController *)self contentView];
  trailingAnchor4 = [contentView9 trailingAnchor];
  view5 = [(AirQualityConditionsViewController *)self view];
  trailingAnchor5 = [view5 trailingAnchor];
  v24 = [trailingAnchor4 constraintLessThanOrEqualToAnchor:trailingAnchor5];
  v70[4] = v24;
  v25 = [NSArray arrayWithObjects:v70 count:5];
  [v69 addObjectsFromArray:v25];

  [NSLayoutConstraint activateConstraints:v69];
}

- (AirQualityConditionsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_toggleAirQualityConditionsVisibility
{
  _shouldShowAirQualityConditions = [(AirQualityConditionsViewController *)self _shouldShowAirQualityConditions];

  [(AirQualityConditionsViewController *)self setVisible:_shouldShowAirQualityConditions animated:1];
}

- (void)clearSavedLocation
{
  [(AirQualityConditionsDataProvider *)self->_airQualityConditionsDataProvider weatherLocationDataProvider:self->_weatherLocationDataProvider didChangeLocation:0];

  [(AirQualityConditionsViewController *)self setAirQualityConditions:0];
}

- (void)setAirQualityConditions:(id)conditions
{
  conditionsCopy = conditions;
  if (self->_airQualityConditions != conditionsCopy)
  {
    v6 = conditionsCopy;
    objc_storeStrong(&self->_airQualityConditions, conditions);
    [(AirQualityConditionsViewController *)self _updateSubviews];
    [(AirQualityConditionsViewController *)self setVisible:[(AirQualityConditionsViewController *)self _shouldShowAirQualityConditions] animated:1];
    conditionsCopy = v6;
  }
}

- (void)setVisible:(BOOL)visible animated:(BOOL)animated
{
  animatedCopy = animated;
  visibleCopy = visible;
  delegate = [(AirQualityConditionsViewController *)self delegate];
  [delegate airQualityConditionsViewController:self makeVisible:visibleCopy animated:animatedCopy];
}

- (BOOL)isVisible
{
  view = [(AirQualityConditionsViewController *)self view];
  isHidden = [view isHidden];

  return isHidden ^ 1;
}

- (AirQualityConditionsViewController)initWithWeatherLocationDataProvider:(id)provider
{
  providerCopy = provider;
  v11.receiver = self;
  v11.super_class = AirQualityConditionsViewController;
  v6 = [(AirQualityConditionsViewController *)&v11 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_weatherLocationDataProvider, provider);
    v8 = objc_alloc_init(_TtC4Maps32AirQualityConditionsDataProvider);
    airQualityConditionsDataProvider = v7->_airQualityConditionsDataProvider;
    v7->_airQualityConditionsDataProvider = v8;

    [(AirQualityConditionsDataProvider *)v7->_airQualityConditionsDataProvider addObserver:v7];
    [(WeatherLocationDataProvider *)v7->_weatherLocationDataProvider addObserver:v7->_airQualityConditionsDataProvider];
  }

  return v7;
}

@end