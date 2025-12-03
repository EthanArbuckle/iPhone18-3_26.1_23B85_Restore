@interface MTAWorldClockView
+ (double)preferredHeight;
- (MTAWorldClockView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setCity:(id)city;
- (void)start;
- (void)stop;
- (void)updateCityNameAndTime;
- (void)updateDetails;
- (void)updateLabelAdjustFontSize;
- (void)updateSunriseAndSunsetLabel;
- (void)updateTime;
- (void)updateTimeContinuously:(int64_t)continuously;
@end

@implementation MTAWorldClockView

- (MTAWorldClockView)initWithFrame:(CGRect)frame
{
  v44.receiver = self;
  v44.super_class = MTAWorldClockView;
  v3 = [(MTAWorldClockView *)&v44 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MTUIAnalogClockView analogClockWithStyle:1];
    [(MTAWorldClockView *)v3 setAnalogClock:v4];

    analogClock = [(MTAWorldClockView *)v3 analogClock];
    [analogClock setRunMode:2];

    analogClock2 = [(MTAWorldClockView *)v3 analogClock];
    [(MTAWorldClockView *)v3 addSubview:analogClock2];

    v7 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    v8 = objc_opt_new();
    [(MTAWorldClockView *)v3 setCityNameLabel:v8];

    cityNameLabel = [(MTAWorldClockView *)v3 cityNameLabel];
    [cityNameLabel setFont:v7];

    cityNameLabel2 = [(MTAWorldClockView *)v3 cityNameLabel];
    [cityNameLabel2 setAdjustsFontForContentSizeCategory:1];

    v11 = +[UIColor mtui_primaryTextColor];
    cityNameLabel3 = [(MTAWorldClockView *)v3 cityNameLabel];
    [cityNameLabel3 setTextColor:v11];

    cityNameLabel4 = [(MTAWorldClockView *)v3 cityNameLabel];
    [cityNameLabel4 setTextAlignment:1];

    cityNameLabel5 = [(MTAWorldClockView *)v3 cityNameLabel];
    [(MTAWorldClockView *)v3 addSubview:cityNameLabel5];

    v15 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    v16 = objc_opt_new();
    [(MTAWorldClockView *)v3 setTimeZoneOffsetLabel:v16];

    timeZoneOffsetLabel = [(MTAWorldClockView *)v3 timeZoneOffsetLabel];
    [timeZoneOffsetLabel setFont:v15];

    timeZoneOffsetLabel2 = [(MTAWorldClockView *)v3 timeZoneOffsetLabel];
    [timeZoneOffsetLabel2 setAdjustsFontForContentSizeCategory:1];

    v19 = +[UIColor mtui_secondaryTextColor];
    timeZoneOffsetLabel3 = [(MTAWorldClockView *)v3 timeZoneOffsetLabel];
    [timeZoneOffsetLabel3 setTextColor:v19];

    timeZoneOffsetLabel4 = [(MTAWorldClockView *)v3 timeZoneOffsetLabel];
    [timeZoneOffsetLabel4 setTextAlignment:1];

    timeZoneOffsetLabel5 = [(MTAWorldClockView *)v3 timeZoneOffsetLabel];
    [(MTAWorldClockView *)v3 addSubview:timeZoneOffsetLabel5];

    v23 = objc_opt_new();
    [(MTAWorldClockView *)v3 setSunriseLabel:v23];

    sunriseLabel = [(MTAWorldClockView *)v3 sunriseLabel];
    [sunriseLabel setFont:v15];

    sunriseLabel2 = [(MTAWorldClockView *)v3 sunriseLabel];
    [sunriseLabel2 setAdjustsFontForContentSizeCategory:1];

    v26 = +[UIColor mtui_secondaryTextColor];
    sunriseLabel3 = [(MTAWorldClockView *)v3 sunriseLabel];
    [sunriseLabel3 setTextColor:v26];

    sunriseLabel4 = [(MTAWorldClockView *)v3 sunriseLabel];
    [sunriseLabel4 setTextAlignment:1];

    sunriseLabel5 = [(MTAWorldClockView *)v3 sunriseLabel];
    [sunriseLabel5 setAdjustsFontSizeToFitWidth:1];

    sunriseLabel6 = [(MTAWorldClockView *)v3 sunriseLabel];
    [(MTAWorldClockView *)v3 addSubview:sunriseLabel6];

    v31 = objc_opt_new();
    [(MTAWorldClockView *)v3 setSunsetLabel:v31];

    sunsetLabel = [(MTAWorldClockView *)v3 sunsetLabel];
    [sunsetLabel setFont:v15];

    sunsetLabel2 = [(MTAWorldClockView *)v3 sunsetLabel];
    [sunsetLabel2 setAdjustsFontForContentSizeCategory:1];

    v34 = +[UIColor mtui_secondaryTextColor];
    sunsetLabel3 = [(MTAWorldClockView *)v3 sunsetLabel];
    [sunsetLabel3 setTextColor:v34];

    sunsetLabel4 = [(MTAWorldClockView *)v3 sunsetLabel];
    [sunsetLabel4 setTextAlignment:1];

    sunsetLabel5 = [(MTAWorldClockView *)v3 sunsetLabel];
    [(MTAWorldClockView *)v3 addSubview:sunsetLabel5];

    v38 = objc_opt_new();
    [(MTAWorldClockView *)v3 setTimeFormatter:v38];

    timeFormatter = [(MTAWorldClockView *)v3 timeFormatter];
    [timeFormatter setDateStyle:0];

    timeFormatter2 = [(MTAWorldClockView *)v3 timeFormatter];
    [timeFormatter2 setTimeStyle:1];

    v41 = +[NSLocale autoupdatingCurrentLocale];
    timeFormatter3 = [(MTAWorldClockView *)v3 timeFormatter];
    [timeFormatter3 setLocale:v41];
  }

  return v3;
}

- (void)layoutSubviews
{
  v71.receiver = self;
  v71.super_class = MTAWorldClockView;
  [(MTAWorldClockView *)&v71 layoutSubviews];
  [(MTAWorldClockView *)self updateLabelAdjustFontSize];
  analogClock = [(MTAWorldClockView *)self analogClock];
  [analogClock frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  [(MTAWorldClockView *)self bounds];
  MidX = CGRectGetMidX(v72);
  v73.origin.y = 24.0;
  v73.origin.x = v5;
  v73.size.width = v7;
  v73.size.height = v9;
  v11 = MidX + CGRectGetWidth(v73) * -0.5;
  analogClock2 = [(MTAWorldClockView *)self analogClock];
  [analogClock2 setFrame:{v11, 24.0, v7, v9}];

  [(MTAWorldClockView *)self bounds];
  Width = CGRectGetWidth(v74);
  [(MTAWorldClockView *)self layoutMargins];
  v15 = Width - v14;
  [(MTAWorldClockView *)self layoutMargins];
  v17 = v15 - v16;
  cityNameLabel = [(MTAWorldClockView *)self cityNameLabel];
  [cityNameLabel sizeToFit];

  v75.origin.y = 24.0;
  v75.origin.x = v11;
  v75.size.width = v7;
  v75.size.height = v9;
  MaxY = CGRectGetMaxY(v75);
  cityNameLabel2 = [(MTAWorldClockView *)self cityNameLabel];
  font = [cityNameLabel2 font];
  [font _scaledValueForValue:30.0];
  v23 = MaxY + v22;

  [(MTAWorldClockView *)self layoutMargins];
  v25 = v24;
  cityNameLabel3 = [(MTAWorldClockView *)self cityNameLabel];
  [cityNameLabel3 _firstBaselineOffsetFromTop];
  v28 = v23 - v27;

  cityNameLabel4 = [(MTAWorldClockView *)self cityNameLabel];
  [cityNameLabel4 frame];
  Height = CGRectGetHeight(v76);

  cityNameLabel5 = [(MTAWorldClockView *)self cityNameLabel];
  [cityNameLabel5 setFrame:{v25, v28, v17, Height}];

  timeZoneOffsetLabel = [(MTAWorldClockView *)self timeZoneOffsetLabel];
  [timeZoneOffsetLabel sizeToFit];

  timeZoneOffsetLabel2 = [(MTAWorldClockView *)self timeZoneOffsetLabel];
  font2 = [timeZoneOffsetLabel2 font];
  [font2 _scaledValueForValue:20.0];
  v36 = v23 + v35;

  [(MTAWorldClockView *)self layoutMargins];
  v38 = v37;
  timeZoneOffsetLabel3 = [(MTAWorldClockView *)self timeZoneOffsetLabel];
  [timeZoneOffsetLabel3 _firstBaselineOffsetFromTop];
  v41 = v36 - v40;

  timeZoneOffsetLabel4 = [(MTAWorldClockView *)self timeZoneOffsetLabel];
  [timeZoneOffsetLabel4 frame];
  v43 = CGRectGetHeight(v77);

  timeZoneOffsetLabel5 = [(MTAWorldClockView *)self timeZoneOffsetLabel];
  [timeZoneOffsetLabel5 setFrame:{v38, v41, v17, v43}];

  sunriseLabel = [(MTAWorldClockView *)self sunriseLabel];
  [sunriseLabel sizeToFit];

  sunriseLabel2 = [(MTAWorldClockView *)self sunriseLabel];
  font3 = [sunriseLabel2 font];
  [font3 _scaledValueForValue:20.0];
  v49 = v36 + v48;

  [(MTAWorldClockView *)self layoutMargins];
  v51 = v50;
  sunriseLabel3 = [(MTAWorldClockView *)self sunriseLabel];
  [sunriseLabel3 _firstBaselineOffsetFromTop];
  v54 = v49 - v53;

  sunriseLabel4 = [(MTAWorldClockView *)self sunriseLabel];
  [sunriseLabel4 frame];
  v56 = CGRectGetHeight(v78);

  sunriseLabel5 = [(MTAWorldClockView *)self sunriseLabel];
  [sunriseLabel5 setFrame:{v51, v54, v17, v56}];

  sunsetLabel = [(MTAWorldClockView *)self sunsetLabel];
  [sunsetLabel sizeToFit];

  sunsetLabel2 = [(MTAWorldClockView *)self sunsetLabel];
  font4 = [sunsetLabel2 font];
  [font4 _scaledValueForValue:20.0];
  v62 = v49 + v61;

  [(MTAWorldClockView *)self layoutMargins];
  v64 = v63;
  sunsetLabel3 = [(MTAWorldClockView *)self sunsetLabel];
  [sunsetLabel3 _firstBaselineOffsetFromTop];
  v67 = v62 - v66;

  sunsetLabel4 = [(MTAWorldClockView *)self sunsetLabel];
  [sunsetLabel4 frame];
  v69 = CGRectGetHeight(v79);

  sunsetLabel5 = [(MTAWorldClockView *)self sunsetLabel];
  [sunsetLabel5 setFrame:{v64, v67, v17, v69}];
}

- (void)updateLabelAdjustFontSize
{
  v3 = +[UIApplication sharedApplication];
  preferredContentSizeCategory = [v3 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  cityNameLabel = [(MTAWorldClockView *)self cityNameLabel];
  [cityNameLabel setAdjustsFontSizeToFitWidth:!IsAccessibilityCategory];

  sunsetLabel = [(MTAWorldClockView *)self sunsetLabel];
  [sunsetLabel setAdjustsFontSizeToFitWidth:!IsAccessibilityCategory];

  sunriseLabel = [(MTAWorldClockView *)self sunriseLabel];
  [sunriseLabel setAdjustsFontSizeToFitWidth:!IsAccessibilityCategory];

  timeZoneOffsetLabel = [(MTAWorldClockView *)self timeZoneOffsetLabel];
  [timeZoneOffsetLabel setAdjustsFontSizeToFitWidth:!IsAccessibilityCategory];
}

+ (double)preferredHeight
{
  v2 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  v3 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
  [MTUIAnalogClockView sizeForStyle:1];
  v5 = v4 + 24.0;
  [v2 _scaledValueForValue:30.0];
  v7 = v6 + v5;
  [v3 _scaledValueForValue:20.0];
  v9 = v8 + v7;
  [v3 _scaledValueForValue:20.0];
  v11 = v10 + v9;
  [v3 _scaledValueForValue:20.0];
  v13 = v12 + v11 + 26.0;

  return v13;
}

- (void)setCity:(id)city
{
  cityCopy = city;
  city = self->_city;
  if (city != cityCopy && ([(WorldClockCity *)city isEqual:cityCopy]& 1) == 0)
  {
    objc_storeStrong(&self->_city, city);
    v7 = [NSTimeZone alloc];
    timeZone = [(WorldClockCity *)self->_city timeZone];
    v9 = [v7 initWithName:timeZone];

    analogClock = [(MTAWorldClockView *)self analogClock];
    [analogClock setTimeZone:v9];

    analogClock2 = [(MTAWorldClockView *)self analogClock];
    isStarted = [analogClock2 isStarted];

    if ((isStarted & 1) == 0)
    {
      analogClock3 = [(MTAWorldClockView *)self analogClock];
      [analogClock3 updateTimeAnimated:0];
    }

    timeFormatter = [(MTAWorldClockView *)self timeFormatter];
    [timeFormatter setTimeZone:v9];

    [(MTAWorldClockView *)self updateDetails];
  }

  _objc_release_x1();
}

- (void)updateCityNameAndTime
{
  timeFormatter = [(MTAWorldClockView *)self timeFormatter];
  analogClock = [(MTAWorldClockView *)self analogClock];
  time = [analogClock time];
  v12 = [timeFormatter stringFromDate:time];

  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"CITY_AND_TIME_FORMAT" value:&stru_1000AEF10 table:@"Localizable"];
  city = [(MTAWorldClockView *)self city];
  name = [city name];
  v10 = [NSString stringWithFormat:v7, name, v12];

  cityNameLabel = [(MTAWorldClockView *)self cityNameLabel];
  [cityNameLabel setText:v10];
}

- (void)updateDetails
{
  [(MTAWorldClockView *)self updateCityNameAndTime];
  v12 = +[NSDate date];
  v3 = +[NSTimeZone systemTimeZone];
  analogClock = [(MTAWorldClockView *)self analogClock];
  timeZone = [analogClock timeZone];
  v6 = [timeZone secondsFromGMTForDate:v12];
  v7 = v6 - [v3 secondsFromGMTForDate:v12];

  analogClock2 = [(MTAWorldClockView *)self analogClock];
  time = [analogClock2 time];
  v10 = [MTUIWorldClockCellView dayAndTimeZoneOffsetStringFromDate:time withTimeZoneOffset:v7 timeZoneAbbreviation:0 spaceBeforeTimeDesignator:1];

  timeZoneOffsetLabel = [(MTAWorldClockView *)self timeZoneOffsetLabel];
  [timeZoneOffsetLabel setText:v10];

  [(MTAWorldClockView *)self updateSunriseAndSunsetLabel];
}

- (void)updateSunriseAndSunsetLabel
{
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000281CC;
  block[3] = &unk_1000AD9F0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)updateTime
{
  [(MTAWorldClockView *)self setMinute:vcvtmd_s64_f64(CFAbsoluteTimeGetCurrent() / 60.0)];

  [(MTAWorldClockView *)self updateCityNameAndTime];
}

- (void)start
{
  analogClock = [(MTAWorldClockView *)self analogClock];
  [analogClock start];

  [MTUIAnalogClockView registerClock:self];
}

- (void)stop
{
  analogClock = [(MTAWorldClockView *)self analogClock];
  [analogClock stop];

  [MTUIAnalogClockView unregisterClock:self];
}

- (void)updateTimeContinuously:(int64_t)continuously
{
  if ([(MTAWorldClockView *)self minute]!= continuously)
  {
    [(MTAWorldClockView *)self setMinute:continuously];

    [(MTAWorldClockView *)self updateTime];
  }
}

@end