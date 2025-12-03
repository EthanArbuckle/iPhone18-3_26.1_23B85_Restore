@interface NTKDolomitePicayuneView
- (NTKDolomitePicayuneView)initWithDevice:(id)device clockTimer:(id)timer;
- (void)_startTimer;
- (void)_stopTimer;
- (void)_updateDate;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setConfiguration:(id)configuration;
- (void)setOverrideDate:(id)date;
- (void)traitCollectionDidChange:(id)change previousTraitCollection:(id)collection;
@end

@implementation NTKDolomitePicayuneView

- (NTKDolomitePicayuneView)initWithDevice:(id)device clockTimer:(id)timer
{
  deviceCopy = device;
  timerCopy = timer;
  v38.receiver = self;
  v38.super_class = NTKDolomitePicayuneView;
  v8 = [(NTKDolomitePicayuneView *)&v38 initWithDevice:deviceCopy clockTimer:timerCopy];
  if (v8)
  {
    [deviceCopy screenBounds];
    x = v39.origin.x;
    y = v39.origin.y;
    width = v39.size.width;
    height = v39.size.height;
    v13 = CGRectGetHeight(v39);
    v40.origin.x = x;
    v40.origin.y = y;
    v40.size.width = width;
    v40.size.height = height;
    v14 = CGRectGetWidth(v40);
    v16 = sub_3AC4(v15, deviceCopy);
    objc_initWeak(&location, v8);
    v32 = _NSConcreteStackBlock;
    v33 = 3221225472;
    v34 = sub_33DC;
    v35 = &unk_D5C430;
    objc_copyWeak(&v36, &location);
    v17 = objc_retainBlock(&v32);
    v18 = [NTKDolomiteContentView alloc];
    v19 = +[NTKDolomiteColorPalette defaultColorPalette];
    v20 = +[NSLocale currentLocale];
    v21 = v14 * (v16 / v13);
    LOWORD(v30) = CLKLocaleIs24HourMode();
    v22 = [(NTKDolomiteContentView *)v18 initWithFrame:0 role:0 numeral:0 style:v19 palette:3 backgroundStyle:0 digitStyle:0.0 dateProvider:0.0 is24HourMode:v21 forceDynamicIndexZero:v16 contentOption:v17 device:v30, 9, deviceCopy, v32, v33, v34, v35];
    contentView = v8->_contentView;
    v8->_contentView = v22;

    v24 = [NTKDolomiteContentView alloc];
    v25 = +[NTKDolomiteColorPalette defaultColorPalette];
    v26 = +[NSLocale currentLocale];
    LOWORD(v31) = CLKLocaleIs24HourMode();
    deviceCopy = [(NTKDolomiteContentView *)v24 initWithFrame:1 role:0 numeral:0 style:v25 palette:3 backgroundStyle:1 digitStyle:0.0 dateProvider:0.0 is24HourMode:v21 forceDynamicIndexZero:v16 contentOption:v17 device:v31, 9, deviceCopy];
    inactiveContentView = v8->_inactiveContentView;
    v8->_inactiveContentView = deviceCopy;

    [(NTKDolomiteContentView *)v8->_inactiveContentView setAlpha:0.0];
    [(NTKDolomiteContentView *)v8->_inactiveContentView setPaused:1];
    [(NTKDolomitePicayuneView *)v8 _startTimer];
    [(NTKDolomitePicayuneView *)v8 addSubview:v8->_contentView];
    [(NTKDolomitePicayuneView *)v8 addSubview:v8->_inactiveContentView];

    objc_destroyWeak(&v36);
    objc_destroyWeak(&location);
  }

  return v8;
}

- (void)dealloc
{
  [(NTKDolomitePicayuneView *)self _stopTimer];
  v3.receiver = self;
  v3.super_class = NTKDolomitePicayuneView;
  [(NTKDolomitePicayuneView *)&v3 dealloc];
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = NTKDolomitePicayuneView;
  [(NTKDolomitePicayuneView *)&v7 layoutSubviews];
  [(NTKDolomitePicayuneView *)self bounds];
  CLKRectGetCenter();
  v4 = v3;
  v6 = v5;
  [(NTKDolomiteContentView *)self->_contentView setCenter:?];
  [(NTKDolomiteContentView *)self->_inactiveContentView setCenter:v4, v6];
}

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v10.receiver = self;
  v10.super_class = NTKDolomitePicayuneView;
  [(NTKDolomitePicayuneView *)&v10 setConfiguration:configurationCopy];
  v5 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[NTKDolomitePicayuneView setConfiguration:]";
    v13 = 2112;
    v14 = configurationCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[miniclock: %s] Updating date, configuration: %@", buf, 0x16u);
  }

  -[NTKDolomiteContentView setNumeral:](self->_contentView, "setNumeral:", [configurationCopy numeral]);
  -[NTKDolomiteContentView setNumeral:](self->_inactiveContentView, "setNumeral:", [configurationCopy numeral]);
  contentView = self->_contentView;
  palette = [configurationCopy palette];
  [(NTKDolomiteContentView *)contentView setPalette:palette];

  inactiveContentView = self->_inactiveContentView;
  palette2 = [configurationCopy palette];
  [(NTKDolomiteContentView *)inactiveContentView setPalette:palette2];

  [(NTKDolomiteContentView *)self->_contentView updateDate];
  [(NTKDolomiteContentView *)self->_inactiveContentView updateDate];
}

- (void)setOverrideDate:(id)date
{
  v5.receiver = self;
  v5.super_class = NTKDolomitePicayuneView;
  [(NTKDolomitePicayuneView *)&v5 setOverrideDate:?];
  if (date)
  {
    [(NTKDolomitePicayuneView *)self _stopTimer];
  }

  else
  {
    [(NTKDolomitePicayuneView *)self _startTimer];
  }

  [(NTKDolomitePicayuneView *)self _updateDate];
}

- (void)_startTimer
{
  if (!self->_clockTimerToken)
  {
    objc_initWeak(&location, self);
    clockTimer = [(NTKDolomitePicayuneView *)self clockTimer];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_382C;
    v6[3] = &unk_D5C4A8;
    objc_copyWeak(&v7, &location);
    v4 = [clockTimer startUpdatesWithUpdateFrequency:1 withHandler:v6 identificationLog:&stru_D5C4E8];
    clockTimerToken = self->_clockTimerToken;
    self->_clockTimerToken = v4;

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

- (void)_stopTimer
{
  if (self->_clockTimerToken)
  {
    clockTimer = [(NTKDolomitePicayuneView *)self clockTimer];
    [clockTimer stopUpdatesForToken:self->_clockTimerToken];

    clockTimerToken = self->_clockTimerToken;
    self->_clockTimerToken = 0;
  }
}

- (void)_updateDate
{
  [(NTKDolomiteContentView *)self->_contentView updateDate];
  inactiveContentView = self->_inactiveContentView;

  [(NTKDolomiteContentView *)inactiveContentView updateDate];
}

- (void)traitCollectionDidChange:(id)change previousTraitCollection:(id)collection
{
  collectionCopy = collection;
  traitCollection = [(NTKDolomitePicayuneView *)self traitCollection];
  activeAppearance = [traitCollection activeAppearance];
  activeAppearance2 = [collectionCopy activeAppearance];

  if (activeAppearance != activeAppearance2)
  {
    traitCollection2 = [(NTKDolomitePicayuneView *)self traitCollection];
    if ([traitCollection2 activeAppearance])
    {
      v10 = 1.0;
    }

    else
    {
      v10 = 0.0;
    }

    [(NTKDolomiteContentView *)self->_contentView setAlpha:v10];
    inactiveContentView = self->_inactiveContentView;

    [(NTKDolomiteContentView *)inactiveContentView setAlpha:1.0 - v10];
  }
}

@end