@interface AirQualityConditionsViewController
- (AirQualityConditionsViewController)initWithWeatherLocationDataProvider:(id)a3;
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
- (void)setAirQualityConditions:(id)a3;
- (void)setVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)viewDidLoad;
@end

@implementation AirQualityConditionsViewController

- (void)loadView
{
  v3 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(AirQualityConditionsViewController *)self setView:v3];

  v4 = [(AirQualityConditionsViewController *)self view];
  [v4 setAccessibilityIdentifier:@"AirQualityConditionsView"];
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

  v8 = [(AirQualityConditionsViewController *)self contentView];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  v9 = [(AirQualityConditionsViewController *)self contentView];
  v10 = [v9 layer];
  [v10 setCornerRadius:5.0];

  v11 = [(AirQualityConditionsViewController *)self contentView];
  [v11 setAccessibilityIdentifier:@"AirQualityConditionsContent"];

  v12 = [(AirQualityConditionsViewController *)self view];
  v13 = [(AirQualityConditionsViewController *)self contentView];
  [v12 addSubview:v13];

  v14 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(AirQualityConditionsViewController *)self setAqiCircleView:v14];

  v15 = [(AirQualityConditionsViewController *)self aqiCircleView];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

  v16 = [(AirQualityConditionsViewController *)self aqiCircleView];
  [v16 setAccessibilityIdentifier:@"AirQualityConditionsCircleView"];

  v17 = [(AirQualityConditionsViewController *)self contentView];
  v18 = [(AirQualityConditionsViewController *)self aqiCircleView];
  [v17 addSubview:v18];

  v19 = [[_MKUILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(AirQualityConditionsViewController *)self setAirQualityLabel:v19];

  v20 = [(AirQualityConditionsViewController *)self airQualityLabel];
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];

  v21 = +[UIColor clearColor];
  v22 = [v21 CGColor];
  v23 = [(AirQualityConditionsViewController *)self airQualityLabel];
  v24 = [v23 layer];
  [v24 setBackgroundColor:v22];

  v25 = [(AirQualityConditionsViewController *)self airQualityLabel];
  [v25 setTextAlignment:1];

  v26 = [(AirQualityConditionsViewController *)self _airQualityIndex];
  v27 = [(AirQualityConditionsViewController *)self airQualityLabel];
  [v27 setText:v26];

  v28 = [(AirQualityConditionsViewController *)self airQualityLabel];
  [v28 setAccessibilityIdentifier:@"AirQualityConditionsTitleLabel"];

  v30 = [(AirQualityConditionsViewController *)self contentView];
  v29 = [(AirQualityConditionsViewController *)self airQualityLabel];
  [v30 addSubview:v29];
}

- (id)_airQualityIndex
{
  v3 = [(AirQualityConditionsViewController *)self airQualityConditions];

  if (v3)
  {
    v4 = [(AirQualityConditionsViewController *)self airQualityConditions];
    v5 = [v4 hasNumericalAirQualityIndex];

    if (v5)
    {
      v6 = [(AirQualityConditionsViewController *)self airQualityConditions];
      v7 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", @"%ld", [v6 airQualityIndex]);
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

    if (v5)
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
  v19 = [(AirQualityConditionsViewController *)self _font];
  v3 = [(AirQualityConditionsViewController *)self airQualityLabel];
  [v3 setFont:v19];

  if (_UISolariumEnabled())
  {
    +[_TtC4Maps23MapsDesignConstantsShim defaultButtonTintColor];
  }

  else
  {
    +[MapsTheme weatherWidgetTextColor];
  }
  v4 = ;
  v5 = [(AirQualityConditionsViewController *)self airQualityLabel];
  [v5 setTextColor:v4];

  v6 = sub_10000FA08(self);
  v7 = 7.5;
  if (v6 == 5)
  {
    v7 = 8.5;
  }

  [v19 _mapkit_scaledValueForValue:v7];
  v9 = v8;
  v10 = [(AirQualityConditionsViewController *)self aqiCircleViewHeightConstraint];
  [v10 setConstant:v9];

  v11 = [(AirQualityConditionsViewController *)self aqiCircleView];
  v12 = [v11 layer];
  [v12 setCornerRadius:v9 * 0.5];

  if ([(AirQualityConditionsViewController *)self _shouldShowAirQualityConditions])
  {
    v13 = [(AirQualityConditionsViewController *)self _airQualityIndex];
    v14 = [(AirQualityConditionsViewController *)self airQualityLabel];
    [v14 setText:v13];

    v15 = [(AirQualityConditions *)self->_airQualityConditions color];
    v16 = [v15 CGColor];
    v17 = [(AirQualityConditionsViewController *)self aqiCircleView];
    v18 = [v17 layer];
    [v18 setBackgroundColor:v16];
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
  v4 = [v3 shouldShowAirQualityConditions];

  if (self->_airQualityConditions)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

- (void)_setupConstraints
{
  v69 = +[NSMutableArray array];
  v3 = [(AirQualityConditionsViewController *)self aqiCircleView];
  v4 = [v3 heightAnchor];
  v5 = [v4 constraintEqualToConstant:0.0];
  [(AirQualityConditionsViewController *)self setAqiCircleViewHeightConstraint:v5];

  v67 = [(AirQualityConditionsViewController *)self airQualityLabel];
  v63 = [v67 topAnchor];
  v65 = [(AirQualityConditionsViewController *)self contentView];
  v61 = [v65 topAnchor];
  v59 = [v63 constraintEqualToAnchor:v61];
  v71[0] = v59;
  v57 = [(AirQualityConditionsViewController *)self airQualityLabel];
  v53 = [v57 bottomAnchor];
  v55 = [(AirQualityConditionsViewController *)self contentView];
  v51 = [v55 bottomAnchor];
  v49 = [v53 constraintEqualToAnchor:v51];
  v71[1] = v49;
  v47 = [(AirQualityConditionsViewController *)self airQualityLabel];
  v43 = [v47 leadingAnchor];
  v45 = [(AirQualityConditionsViewController *)self contentView];
  v41 = [v45 leadingAnchor];
  v39 = [v43 constraintEqualToAnchor:v41];
  v71[2] = v39;
  v37 = [(AirQualityConditionsViewController *)self aqiCircleView];
  v35 = [v37 leadingAnchor];
  v36 = [(AirQualityConditionsViewController *)self airQualityLabel];
  v34 = [v36 trailingAnchor];
  v33 = [v35 constraintEqualToAnchor:v34 constant:4.0];
  v71[3] = v33;
  v32 = [(AirQualityConditionsViewController *)self aqiCircleView];
  v30 = [v32 trailingAnchor];
  v31 = [(AirQualityConditionsViewController *)self contentView];
  v29 = [v31 trailingAnchor];
  v28 = [v30 constraintEqualToAnchor:v29];
  v71[4] = v28;
  v27 = [(AirQualityConditionsViewController *)self aqiCircleView];
  v26 = [v27 centerYAnchor];
  v6 = [(AirQualityConditionsViewController *)self airQualityLabel];
  v7 = [v6 centerYAnchor];
  v8 = [v26 constraintEqualToAnchor:v7];
  v71[5] = v8;
  v9 = [(AirQualityConditionsViewController *)self aqiCircleView];
  v10 = [v9 widthAnchor];
  v11 = [(AirQualityConditionsViewController *)self aqiCircleView];
  v12 = [v11 heightAnchor];
  v13 = [v10 constraintEqualToAnchor:v12];
  aqiCircleViewHeightConstraint = self->_aqiCircleViewHeightConstraint;
  v71[6] = v13;
  v71[7] = aqiCircleViewHeightConstraint;
  v15 = [NSArray arrayWithObjects:v71 count:8];
  [v69 addObjectsFromArray:v15];

  v68 = [(AirQualityConditionsViewController *)self contentView];
  v64 = [v68 centerXAnchor];
  v66 = [(AirQualityConditionsViewController *)self view];
  v62 = [v66 centerXAnchor];
  v60 = [v64 constraintEqualToAnchor:v62];
  v70[0] = v60;
  v58 = [(AirQualityConditionsViewController *)self contentView];
  v54 = [v58 topAnchor];
  v56 = [(AirQualityConditionsViewController *)self view];
  v52 = [v56 topAnchor];
  v50 = [v54 constraintEqualToAnchor:v52];
  v70[1] = v50;
  v48 = [(AirQualityConditionsViewController *)self contentView];
  v44 = [v48 bottomAnchor];
  v46 = [(AirQualityConditionsViewController *)self view];
  v42 = [v46 bottomAnchor];
  v40 = [v44 constraintEqualToAnchor:v42];
  v70[2] = v40;
  v38 = [(AirQualityConditionsViewController *)self contentView];
  v16 = [v38 leadingAnchor];
  v17 = [(AirQualityConditionsViewController *)self view];
  v18 = [v17 leadingAnchor];
  v19 = [v16 constraintGreaterThanOrEqualToAnchor:v18];
  v70[3] = v19;
  v20 = [(AirQualityConditionsViewController *)self contentView];
  v21 = [v20 trailingAnchor];
  v22 = [(AirQualityConditionsViewController *)self view];
  v23 = [v22 trailingAnchor];
  v24 = [v21 constraintLessThanOrEqualToAnchor:v23];
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
  v3 = [(AirQualityConditionsViewController *)self _shouldShowAirQualityConditions];

  [(AirQualityConditionsViewController *)self setVisible:v3 animated:1];
}

- (void)clearSavedLocation
{
  [(AirQualityConditionsDataProvider *)self->_airQualityConditionsDataProvider weatherLocationDataProvider:self->_weatherLocationDataProvider didChangeLocation:0];

  [(AirQualityConditionsViewController *)self setAirQualityConditions:0];
}

- (void)setAirQualityConditions:(id)a3
{
  v5 = a3;
  if (self->_airQualityConditions != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_airQualityConditions, a3);
    [(AirQualityConditionsViewController *)self _updateSubviews];
    [(AirQualityConditionsViewController *)self setVisible:[(AirQualityConditionsViewController *)self _shouldShowAirQualityConditions] animated:1];
    v5 = v6;
  }
}

- (void)setVisible:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(AirQualityConditionsViewController *)self delegate];
  [v7 airQualityConditionsViewController:self makeVisible:v5 animated:v4];
}

- (BOOL)isVisible
{
  v2 = [(AirQualityConditionsViewController *)self view];
  v3 = [v2 isHidden];

  return v3 ^ 1;
}

- (AirQualityConditionsViewController)initWithWeatherLocationDataProvider:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = AirQualityConditionsViewController;
  v6 = [(AirQualityConditionsViewController *)&v11 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_weatherLocationDataProvider, a3);
    v8 = objc_alloc_init(_TtC4Maps32AirQualityConditionsDataProvider);
    airQualityConditionsDataProvider = v7->_airQualityConditionsDataProvider;
    v7->_airQualityConditionsDataProvider = v8;

    [(AirQualityConditionsDataProvider *)v7->_airQualityConditionsDataProvider addObserver:v7];
    [(WeatherLocationDataProvider *)v7->_weatherLocationDataProvider addObserver:v7->_airQualityConditionsDataProvider];
  }

  return v7;
}

@end