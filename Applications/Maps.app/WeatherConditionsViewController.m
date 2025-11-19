@interface WeatherConditionsViewController
- (BOOL)_shouldShowWeatherConditions;
- (BOOL)isVisible;
- (WeatherConditionsViewController)initWithWeatherLocationDataProvider:(id)a3;
- (WeatherConditionsViewControllerDelegate)delegate;
- (id)_titleFont;
- (void)_createSubviews;
- (void)_setupConstraints;
- (void)_toggleWeatherConditionsVisibility;
- (void)_updateSubviews;
- (void)clearSavedLocation;
- (void)loadView;
- (void)setVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)setWeatherConditions:(id)a3;
- (void)viewDidLoad;
@end

@implementation WeatherConditionsViewController

- (void)loadView
{
  v3 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(WeatherConditionsViewController *)self setView:v3];

  v4 = [(WeatherConditionsViewController *)self view];
  [v4 setAccessibilityIdentifier:@"WeatherConditionsView"];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = WeatherConditionsViewController;
  [(WeatherConditionsViewController *)&v6 viewDidLoad];
  [(WeatherConditionsViewController *)self _createSubviews];
  [(WeatherConditionsViewController *)self _updateSubviews];
  [(WeatherConditionsViewController *)self _setupConstraints];
  [(WeatherConditionsViewController *)self setVisible:0 animated:0];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_preferredContentSizeChanged:" name:UIContentSizeCategoryDidChangeNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  v5 = +[WeatherSettingsManager settingsUpdatedNotification];
  [v4 addObserver:self selector:"_toggleWeatherConditionsVisibility" name:v5 object:0];
}

- (void)_createSubviews
{
  v3 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(WeatherConditionsViewController *)self setContentView:v7];

  v8 = [(WeatherConditionsViewController *)self contentView];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  v9 = [(WeatherConditionsViewController *)self contentView];
  [v9 setAccessibilityIdentifier:@"WeatherConditionsContent"];

  v10 = [(WeatherConditionsViewController *)self view];
  v11 = [(WeatherConditionsViewController *)self contentView];
  [v10 addSubview:v11];

  v12 = [[MapsThemeImageView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  [(WeatherConditionsViewController *)self setImageView:v12];

  v13 = [(WeatherConditionsViewController *)self imageView];
  [v13 setContentMode:1];

  v14 = [(WeatherConditionsViewController *)self imageView];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

  v15 = [(WeatherConditionsViewController *)self imageView];
  [v15 setAccessibilityIdentifier:@"WeatherConditionsImageView"];

  if (sub_10000FA08(self) == 5 && (_UISolariumEnabled() & 1) == 0)
  {
    v16 = +[MapsTheme weatherWidgetTextColor];
    v17 = [(WeatherConditionsViewController *)self imageView];
    [v17 setTintColor:v16];
  }

  v18 = [[MapsThemeLabel alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  [(WeatherConditionsViewController *)self setTitleLabel:v18];

  v19 = [(WeatherConditionsViewController *)self titleLabel];
  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];

  if (_UISolariumEnabled())
  {
    +[_TtC4Maps23MapsDesignConstantsShim defaultButtonTintColor];
  }

  else
  {
    +[MapsTheme weatherWidgetTextColor];
  }
  v20 = ;
  v21 = [(WeatherConditionsViewController *)self titleLabel];
  [v21 setTextColor:v20];

  v22 = [(WeatherConditionsViewController *)self titleLabel];
  [v22 setAccessibilityIdentifier:@"WeatherConditionsTitleLabel"];

  v23 = [(WeatherConditionsViewController *)self titleLabel];
  LODWORD(v24) = 1148846080;
  [v23 setContentHuggingPriority:1 forAxis:v24];

  objc_initWeak(&location, self);
  objc_copyWeak(&v31, &location);
  v25 = [(WeatherConditionsViewController *)self imageView:_NSConcreteStackBlock];
  [v25 setImageProvider:&v30];

  v26 = [(WeatherConditionsViewController *)self contentView];
  v27 = [(WeatherConditionsViewController *)self imageView];
  [v26 addSubview:v27];

  v28 = [(WeatherConditionsViewController *)self contentView];
  v29 = [(WeatherConditionsViewController *)self titleLabel];
  [v28 addSubview:v29];

  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);
}

- (void)_updateSubviews
{
  v3 = [(WeatherConditionsViewController *)self _titleFont];
  v4 = [(WeatherConditionsViewController *)self titleLabel];
  [v4 setFont:v3];

  v5 = [(WeatherConditionsViewController *)self imageView];
  [v5 updateTheme];

  if ([(WeatherConditionsViewController *)self _shouldShowWeatherConditions])
  {
    v10 = [(WeatherConditionsViewController *)self weatherConditions];
    v6 = [v10 temperature];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = &stru_1016631F0;
    }

    v9 = [(WeatherConditionsViewController *)self titleLabel];
    [v9 setText:v8];
  }
}

- (id)_titleFont
{
  v3 = _UISolariumEnabled();
  v4 = sub_10000FA08(self);
  if (v3)
  {
    v5 = 18.0;
    if (v4 == 5)
    {
      v5 = 13.0;
    }

    v6 = [UIFont systemFontOfSize:UIFontSystemFontDesignRounded weight:v5 design:UIFontWeightMedium];
  }

  else
  {
    if (v4 == 5)
    {
      +[UIFont system20Light];
    }

    else
    {
      [UIFont systemFontOfSize:18.0 weight:UIFontWeightRegular];
    }
    v6 = ;
  }

  v7 = v6;
  v8 = [UIFontMetrics metricsForTextStyle:UIFontTextStyleBody];
  v9 = [v8 scaledFontForFont:v7 maximumPointSize:27.0];

  return v9;
}

- (BOOL)_shouldShowWeatherConditions
{
  v3 = +[WeatherSettingsManager sharedManager];
  v4 = [v3 shouldShowWeatherConditions];

  if (self->_weatherConditions)
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
  v52 = [(WeatherConditionsViewController *)self imageView];
  v53 = [(WeatherConditionsViewController *)self titleLabel];
  v54 = _NSDictionaryOfVariableBindings(@"imageView, titleLabel", v52, v53, 0);
  v55 = +[NSMutableArray array];
  v50 = [(WeatherConditionsViewController *)self contentView];
  v46 = [v50 leadingAnchor];
  v48 = [(WeatherConditionsViewController *)self view];
  v44 = [v48 leadingAnchor];
  v43 = [v46 constraintGreaterThanOrEqualToAnchor:v44];
  v58[0] = v43;
  v42 = [(WeatherConditionsViewController *)self contentView];
  v40 = [v42 trailingAnchor];
  v41 = [(WeatherConditionsViewController *)self view];
  v39 = [v41 trailingAnchor];
  v38 = [v40 constraintLessThanOrEqualToAnchor:v39];
  v58[1] = v38;
  v37 = [(WeatherConditionsViewController *)self contentView];
  v35 = [v37 centerXAnchor];
  v36 = [(WeatherConditionsViewController *)self view];
  v34 = [v36 centerXAnchor];
  v33 = [v35 constraintEqualToAnchor:v34];
  v58[2] = v33;
  v32 = [(WeatherConditionsViewController *)self contentView];
  v31 = [v32 topAnchor];
  v3 = [(WeatherConditionsViewController *)self view];
  v4 = [v3 topAnchor];
  v5 = [v31 constraintEqualToAnchor:v4];
  v58[3] = v5;
  v6 = [(WeatherConditionsViewController *)self contentView];
  v7 = [v6 bottomAnchor];
  v8 = [(WeatherConditionsViewController *)self view];
  v9 = [v8 bottomAnchor];
  v10 = [v7 constraintEqualToAnchor:v9];
  v58[4] = v10;
  v11 = [NSArray arrayWithObjects:v58 count:5];
  [v55 addObjectsFromArray:v11];

  if (sub_10000FA08(self) == 5)
  {
    v12 = @"H:|[imageView]-(3)-[titleLabel]|";
  }

  else
  {
    v12 = @"H:|[imageView][titleLabel]|";
  }

  v13 = [NSLayoutConstraint constraintsWithVisualFormat:v12 options:0 metrics:0 views:v54];
  [v55 addObjectsFromArray:v13];

  v49 = [v52 topAnchor];
  v51 = [(WeatherConditionsViewController *)self contentView];
  v47 = [v51 topAnchor];
  v45 = [v49 constraintEqualToAnchor:v47];
  v57[0] = v45;
  v14 = [v52 bottomAnchor];
  v15 = [(WeatherConditionsViewController *)self contentView];
  v16 = [v15 bottomAnchor];
  v17 = [v14 constraintEqualToAnchor:v16];
  v57[1] = v17;
  v18 = [v52 widthAnchor];
  v19 = [v52 heightAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 multiplier:1.0];
  v57[2] = v20;
  v21 = [NSArray arrayWithObjects:v57 count:3];
  [v55 addObjectsFromArray:v21];

  v22 = [v53 topAnchor];
  v23 = [(WeatherConditionsViewController *)self contentView];
  v24 = [v23 topAnchor];
  v25 = [v22 constraintEqualToAnchor:v24];
  v56[0] = v25;
  v26 = [v53 bottomAnchor];
  v27 = [(WeatherConditionsViewController *)self contentView];
  v28 = [v27 bottomAnchor];
  v29 = [v26 constraintEqualToAnchor:v28];
  v56[1] = v29;
  v30 = [NSArray arrayWithObjects:v56 count:2];
  [v55 addObjectsFromArray:v30];

  [NSLayoutConstraint activateConstraints:v55];
}

- (WeatherConditionsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_toggleWeatherConditionsVisibility
{
  v3 = [(WeatherConditionsViewController *)self _shouldShowWeatherConditions];

  [(WeatherConditionsViewController *)self setVisible:v3 animated:1];
}

- (void)clearSavedLocation
{
  [(WeatherConditionsDataProvider *)self->_weatherConditionsDataProvider weatherLocationDataProvider:self->_weatherLocationDataProvider didChangeLocation:0];

  [(WeatherConditionsViewController *)self setWeatherConditions:0];
}

- (void)setWeatherConditions:(id)a3
{
  v5 = a3;
  if (self->_weatherConditions != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_weatherConditions, a3);
    [(WeatherConditionsViewController *)self _updateSubviews];
    [(WeatherConditionsViewController *)self setVisible:[(WeatherConditionsViewController *)self _shouldShowWeatherConditions] animated:1];
    v5 = v6;
  }
}

- (void)setVisible:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(WeatherConditionsViewController *)self delegate];
  [v7 weatherConditionsViewController:self makeVisible:v5 animated:v4];
}

- (BOOL)isVisible
{
  v2 = [(WeatherConditionsViewController *)self view];
  v3 = [v2 isHidden];

  return v3 ^ 1;
}

- (WeatherConditionsViewController)initWithWeatherLocationDataProvider:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = WeatherConditionsViewController;
  v6 = [(WeatherConditionsViewController *)&v11 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_weatherLocationDataProvider, a3);
    v8 = [[_TtC4Maps29WeatherConditionsDataProvider alloc] initWithTraitEnvironment:v7];
    weatherConditionsDataProvider = v7->_weatherConditionsDataProvider;
    v7->_weatherConditionsDataProvider = v8;

    [(WeatherConditionsDataProvider *)v7->_weatherConditionsDataProvider addObserver:v7];
    [(WeatherLocationDataProvider *)v7->_weatherLocationDataProvider addObserver:v7->_weatherConditionsDataProvider];
  }

  return v7;
}

@end