@interface WeatherConditionsViewController
- (BOOL)_shouldShowWeatherConditions;
- (BOOL)isVisible;
- (WeatherConditionsViewController)initWithWeatherLocationDataProvider:(id)provider;
- (WeatherConditionsViewControllerDelegate)delegate;
- (id)_titleFont;
- (void)_createSubviews;
- (void)_setupConstraints;
- (void)_toggleWeatherConditionsVisibility;
- (void)_updateSubviews;
- (void)clearSavedLocation;
- (void)loadView;
- (void)setVisible:(BOOL)visible animated:(BOOL)animated;
- (void)setWeatherConditions:(id)conditions;
- (void)viewDidLoad;
@end

@implementation WeatherConditionsViewController

- (void)loadView
{
  v3 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(WeatherConditionsViewController *)self setView:v3];

  view = [(WeatherConditionsViewController *)self view];
  [view setAccessibilityIdentifier:@"WeatherConditionsView"];
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

  contentView = [(WeatherConditionsViewController *)self contentView];
  [contentView setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView2 = [(WeatherConditionsViewController *)self contentView];
  [contentView2 setAccessibilityIdentifier:@"WeatherConditionsContent"];

  view = [(WeatherConditionsViewController *)self view];
  contentView3 = [(WeatherConditionsViewController *)self contentView];
  [view addSubview:contentView3];

  height = [[MapsThemeImageView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  [(WeatherConditionsViewController *)self setImageView:height];

  imageView = [(WeatherConditionsViewController *)self imageView];
  [imageView setContentMode:1];

  imageView2 = [(WeatherConditionsViewController *)self imageView];
  [imageView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  imageView3 = [(WeatherConditionsViewController *)self imageView];
  [imageView3 setAccessibilityIdentifier:@"WeatherConditionsImageView"];

  if (sub_10000FA08(self) == 5 && (_UISolariumEnabled() & 1) == 0)
  {
    v16 = +[MapsTheme weatherWidgetTextColor];
    imageView4 = [(WeatherConditionsViewController *)self imageView];
    [imageView4 setTintColor:v16];
  }

  height2 = [[MapsThemeLabel alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  [(WeatherConditionsViewController *)self setTitleLabel:height2];

  titleLabel = [(WeatherConditionsViewController *)self titleLabel];
  [titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  if (_UISolariumEnabled())
  {
    +[_TtC4Maps23MapsDesignConstantsShim defaultButtonTintColor];
  }

  else
  {
    +[MapsTheme weatherWidgetTextColor];
  }
  v20 = ;
  titleLabel2 = [(WeatherConditionsViewController *)self titleLabel];
  [titleLabel2 setTextColor:v20];

  titleLabel3 = [(WeatherConditionsViewController *)self titleLabel];
  [titleLabel3 setAccessibilityIdentifier:@"WeatherConditionsTitleLabel"];

  titleLabel4 = [(WeatherConditionsViewController *)self titleLabel];
  LODWORD(v24) = 1148846080;
  [titleLabel4 setContentHuggingPriority:1 forAxis:v24];

  objc_initWeak(&location, self);
  objc_copyWeak(&v31, &location);
  v25 = [(WeatherConditionsViewController *)self imageView:_NSConcreteStackBlock];
  [v25 setImageProvider:&v30];

  contentView4 = [(WeatherConditionsViewController *)self contentView];
  imageView5 = [(WeatherConditionsViewController *)self imageView];
  [contentView4 addSubview:imageView5];

  contentView5 = [(WeatherConditionsViewController *)self contentView];
  titleLabel5 = [(WeatherConditionsViewController *)self titleLabel];
  [contentView5 addSubview:titleLabel5];

  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);
}

- (void)_updateSubviews
{
  _titleFont = [(WeatherConditionsViewController *)self _titleFont];
  titleLabel = [(WeatherConditionsViewController *)self titleLabel];
  [titleLabel setFont:_titleFont];

  imageView = [(WeatherConditionsViewController *)self imageView];
  [imageView updateTheme];

  if ([(WeatherConditionsViewController *)self _shouldShowWeatherConditions])
  {
    weatherConditions = [(WeatherConditionsViewController *)self weatherConditions];
    temperature = [weatherConditions temperature];
    v7 = temperature;
    if (temperature)
    {
      v8 = temperature;
    }

    else
    {
      v8 = &stru_1016631F0;
    }

    titleLabel2 = [(WeatherConditionsViewController *)self titleLabel];
    [titleLabel2 setText:v8];
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
  shouldShowWeatherConditions = [v3 shouldShowWeatherConditions];

  if (self->_weatherConditions)
  {
    return shouldShowWeatherConditions;
  }

  else
  {
    return 0;
  }
}

- (void)_setupConstraints
{
  imageView = [(WeatherConditionsViewController *)self imageView];
  titleLabel = [(WeatherConditionsViewController *)self titleLabel];
  v54 = _NSDictionaryOfVariableBindings(@"imageView, titleLabel", imageView, titleLabel, 0);
  v55 = +[NSMutableArray array];
  contentView = [(WeatherConditionsViewController *)self contentView];
  leadingAnchor = [contentView leadingAnchor];
  view = [(WeatherConditionsViewController *)self view];
  leadingAnchor2 = [view leadingAnchor];
  v43 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
  v58[0] = v43;
  contentView2 = [(WeatherConditionsViewController *)self contentView];
  trailingAnchor = [contentView2 trailingAnchor];
  view2 = [(WeatherConditionsViewController *)self view];
  trailingAnchor2 = [view2 trailingAnchor];
  v38 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
  v58[1] = v38;
  contentView3 = [(WeatherConditionsViewController *)self contentView];
  centerXAnchor = [contentView3 centerXAnchor];
  view3 = [(WeatherConditionsViewController *)self view];
  centerXAnchor2 = [view3 centerXAnchor];
  v33 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v58[2] = v33;
  contentView4 = [(WeatherConditionsViewController *)self contentView];
  topAnchor = [contentView4 topAnchor];
  view4 = [(WeatherConditionsViewController *)self view];
  topAnchor2 = [view4 topAnchor];
  v5 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v58[3] = v5;
  contentView5 = [(WeatherConditionsViewController *)self contentView];
  bottomAnchor = [contentView5 bottomAnchor];
  view5 = [(WeatherConditionsViewController *)self view];
  bottomAnchor2 = [view5 bottomAnchor];
  v10 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
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

  topAnchor3 = [imageView topAnchor];
  contentView6 = [(WeatherConditionsViewController *)self contentView];
  topAnchor4 = [contentView6 topAnchor];
  v45 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v57[0] = v45;
  bottomAnchor3 = [imageView bottomAnchor];
  contentView7 = [(WeatherConditionsViewController *)self contentView];
  bottomAnchor4 = [contentView7 bottomAnchor];
  v17 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v57[1] = v17;
  widthAnchor = [imageView widthAnchor];
  heightAnchor = [imageView heightAnchor];
  v20 = [widthAnchor constraintEqualToAnchor:heightAnchor multiplier:1.0];
  v57[2] = v20;
  v21 = [NSArray arrayWithObjects:v57 count:3];
  [v55 addObjectsFromArray:v21];

  topAnchor5 = [titleLabel topAnchor];
  contentView8 = [(WeatherConditionsViewController *)self contentView];
  topAnchor6 = [contentView8 topAnchor];
  v25 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v56[0] = v25;
  bottomAnchor5 = [titleLabel bottomAnchor];
  contentView9 = [(WeatherConditionsViewController *)self contentView];
  bottomAnchor6 = [contentView9 bottomAnchor];
  v29 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
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
  _shouldShowWeatherConditions = [(WeatherConditionsViewController *)self _shouldShowWeatherConditions];

  [(WeatherConditionsViewController *)self setVisible:_shouldShowWeatherConditions animated:1];
}

- (void)clearSavedLocation
{
  [(WeatherConditionsDataProvider *)self->_weatherConditionsDataProvider weatherLocationDataProvider:self->_weatherLocationDataProvider didChangeLocation:0];

  [(WeatherConditionsViewController *)self setWeatherConditions:0];
}

- (void)setWeatherConditions:(id)conditions
{
  conditionsCopy = conditions;
  if (self->_weatherConditions != conditionsCopy)
  {
    v6 = conditionsCopy;
    objc_storeStrong(&self->_weatherConditions, conditions);
    [(WeatherConditionsViewController *)self _updateSubviews];
    [(WeatherConditionsViewController *)self setVisible:[(WeatherConditionsViewController *)self _shouldShowWeatherConditions] animated:1];
    conditionsCopy = v6;
  }
}

- (void)setVisible:(BOOL)visible animated:(BOOL)animated
{
  animatedCopy = animated;
  visibleCopy = visible;
  delegate = [(WeatherConditionsViewController *)self delegate];
  [delegate weatherConditionsViewController:self makeVisible:visibleCopy animated:animatedCopy];
}

- (BOOL)isVisible
{
  view = [(WeatherConditionsViewController *)self view];
  isHidden = [view isHidden];

  return isHidden ^ 1;
}

- (WeatherConditionsViewController)initWithWeatherLocationDataProvider:(id)provider
{
  providerCopy = provider;
  v11.receiver = self;
  v11.super_class = WeatherConditionsViewController;
  v6 = [(WeatherConditionsViewController *)&v11 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_weatherLocationDataProvider, provider);
    v8 = [[_TtC4Maps29WeatherConditionsDataProvider alloc] initWithTraitEnvironment:v7];
    weatherConditionsDataProvider = v7->_weatherConditionsDataProvider;
    v7->_weatherConditionsDataProvider = v8;

    [(WeatherConditionsDataProvider *)v7->_weatherConditionsDataProvider addObserver:v7];
    [(WeatherLocationDataProvider *)v7->_weatherLocationDataProvider addObserver:v7->_weatherConditionsDataProvider];
  }

  return v7;
}

@end