@interface MTAWorldClockView
+ (double)preferredHeight;
- (MTAWorldClockView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setCity:(id)a3;
- (void)start;
- (void)stop;
- (void)updateCityNameAndTime;
- (void)updateDetails;
- (void)updateLabelAdjustFontSize;
- (void)updateSunriseAndSunsetLabel;
- (void)updateTime;
- (void)updateTimeContinuously:(int64_t)a3;
@end

@implementation MTAWorldClockView

- (MTAWorldClockView)initWithFrame:(CGRect)a3
{
  v44.receiver = self;
  v44.super_class = MTAWorldClockView;
  v3 = [(MTAWorldClockView *)&v44 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MTUIAnalogClockView analogClockWithStyle:1];
    [(MTAWorldClockView *)v3 setAnalogClock:v4];

    v5 = [(MTAWorldClockView *)v3 analogClock];
    [v5 setRunMode:2];

    v6 = [(MTAWorldClockView *)v3 analogClock];
    [(MTAWorldClockView *)v3 addSubview:v6];

    v7 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    v8 = objc_opt_new();
    [(MTAWorldClockView *)v3 setCityNameLabel:v8];

    v9 = [(MTAWorldClockView *)v3 cityNameLabel];
    [v9 setFont:v7];

    v10 = [(MTAWorldClockView *)v3 cityNameLabel];
    [v10 setAdjustsFontForContentSizeCategory:1];

    v11 = +[UIColor mtui_primaryTextColor];
    v12 = [(MTAWorldClockView *)v3 cityNameLabel];
    [v12 setTextColor:v11];

    v13 = [(MTAWorldClockView *)v3 cityNameLabel];
    [v13 setTextAlignment:1];

    v14 = [(MTAWorldClockView *)v3 cityNameLabel];
    [(MTAWorldClockView *)v3 addSubview:v14];

    v15 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    v16 = objc_opt_new();
    [(MTAWorldClockView *)v3 setTimeZoneOffsetLabel:v16];

    v17 = [(MTAWorldClockView *)v3 timeZoneOffsetLabel];
    [v17 setFont:v15];

    v18 = [(MTAWorldClockView *)v3 timeZoneOffsetLabel];
    [v18 setAdjustsFontForContentSizeCategory:1];

    v19 = +[UIColor mtui_secondaryTextColor];
    v20 = [(MTAWorldClockView *)v3 timeZoneOffsetLabel];
    [v20 setTextColor:v19];

    v21 = [(MTAWorldClockView *)v3 timeZoneOffsetLabel];
    [v21 setTextAlignment:1];

    v22 = [(MTAWorldClockView *)v3 timeZoneOffsetLabel];
    [(MTAWorldClockView *)v3 addSubview:v22];

    v23 = objc_opt_new();
    [(MTAWorldClockView *)v3 setSunriseLabel:v23];

    v24 = [(MTAWorldClockView *)v3 sunriseLabel];
    [v24 setFont:v15];

    v25 = [(MTAWorldClockView *)v3 sunriseLabel];
    [v25 setAdjustsFontForContentSizeCategory:1];

    v26 = +[UIColor mtui_secondaryTextColor];
    v27 = [(MTAWorldClockView *)v3 sunriseLabel];
    [v27 setTextColor:v26];

    v28 = [(MTAWorldClockView *)v3 sunriseLabel];
    [v28 setTextAlignment:1];

    v29 = [(MTAWorldClockView *)v3 sunriseLabel];
    [v29 setAdjustsFontSizeToFitWidth:1];

    v30 = [(MTAWorldClockView *)v3 sunriseLabel];
    [(MTAWorldClockView *)v3 addSubview:v30];

    v31 = objc_opt_new();
    [(MTAWorldClockView *)v3 setSunsetLabel:v31];

    v32 = [(MTAWorldClockView *)v3 sunsetLabel];
    [v32 setFont:v15];

    v33 = [(MTAWorldClockView *)v3 sunsetLabel];
    [v33 setAdjustsFontForContentSizeCategory:1];

    v34 = +[UIColor mtui_secondaryTextColor];
    v35 = [(MTAWorldClockView *)v3 sunsetLabel];
    [v35 setTextColor:v34];

    v36 = [(MTAWorldClockView *)v3 sunsetLabel];
    [v36 setTextAlignment:1];

    v37 = [(MTAWorldClockView *)v3 sunsetLabel];
    [(MTAWorldClockView *)v3 addSubview:v37];

    v38 = objc_opt_new();
    [(MTAWorldClockView *)v3 setTimeFormatter:v38];

    v39 = [(MTAWorldClockView *)v3 timeFormatter];
    [v39 setDateStyle:0];

    v40 = [(MTAWorldClockView *)v3 timeFormatter];
    [v40 setTimeStyle:1];

    v41 = +[NSLocale autoupdatingCurrentLocale];
    v42 = [(MTAWorldClockView *)v3 timeFormatter];
    [v42 setLocale:v41];
  }

  return v3;
}

- (void)layoutSubviews
{
  v71.receiver = self;
  v71.super_class = MTAWorldClockView;
  [(MTAWorldClockView *)&v71 layoutSubviews];
  [(MTAWorldClockView *)self updateLabelAdjustFontSize];
  v3 = [(MTAWorldClockView *)self analogClock];
  [v3 frame];
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
  v12 = [(MTAWorldClockView *)self analogClock];
  [v12 setFrame:{v11, 24.0, v7, v9}];

  [(MTAWorldClockView *)self bounds];
  Width = CGRectGetWidth(v74);
  [(MTAWorldClockView *)self layoutMargins];
  v15 = Width - v14;
  [(MTAWorldClockView *)self layoutMargins];
  v17 = v15 - v16;
  v18 = [(MTAWorldClockView *)self cityNameLabel];
  [v18 sizeToFit];

  v75.origin.y = 24.0;
  v75.origin.x = v11;
  v75.size.width = v7;
  v75.size.height = v9;
  MaxY = CGRectGetMaxY(v75);
  v20 = [(MTAWorldClockView *)self cityNameLabel];
  v21 = [v20 font];
  [v21 _scaledValueForValue:30.0];
  v23 = MaxY + v22;

  [(MTAWorldClockView *)self layoutMargins];
  v25 = v24;
  v26 = [(MTAWorldClockView *)self cityNameLabel];
  [v26 _firstBaselineOffsetFromTop];
  v28 = v23 - v27;

  v29 = [(MTAWorldClockView *)self cityNameLabel];
  [v29 frame];
  Height = CGRectGetHeight(v76);

  v31 = [(MTAWorldClockView *)self cityNameLabel];
  [v31 setFrame:{v25, v28, v17, Height}];

  v32 = [(MTAWorldClockView *)self timeZoneOffsetLabel];
  [v32 sizeToFit];

  v33 = [(MTAWorldClockView *)self timeZoneOffsetLabel];
  v34 = [v33 font];
  [v34 _scaledValueForValue:20.0];
  v36 = v23 + v35;

  [(MTAWorldClockView *)self layoutMargins];
  v38 = v37;
  v39 = [(MTAWorldClockView *)self timeZoneOffsetLabel];
  [v39 _firstBaselineOffsetFromTop];
  v41 = v36 - v40;

  v42 = [(MTAWorldClockView *)self timeZoneOffsetLabel];
  [v42 frame];
  v43 = CGRectGetHeight(v77);

  v44 = [(MTAWorldClockView *)self timeZoneOffsetLabel];
  [v44 setFrame:{v38, v41, v17, v43}];

  v45 = [(MTAWorldClockView *)self sunriseLabel];
  [v45 sizeToFit];

  v46 = [(MTAWorldClockView *)self sunriseLabel];
  v47 = [v46 font];
  [v47 _scaledValueForValue:20.0];
  v49 = v36 + v48;

  [(MTAWorldClockView *)self layoutMargins];
  v51 = v50;
  v52 = [(MTAWorldClockView *)self sunriseLabel];
  [v52 _firstBaselineOffsetFromTop];
  v54 = v49 - v53;

  v55 = [(MTAWorldClockView *)self sunriseLabel];
  [v55 frame];
  v56 = CGRectGetHeight(v78);

  v57 = [(MTAWorldClockView *)self sunriseLabel];
  [v57 setFrame:{v51, v54, v17, v56}];

  v58 = [(MTAWorldClockView *)self sunsetLabel];
  [v58 sizeToFit];

  v59 = [(MTAWorldClockView *)self sunsetLabel];
  v60 = [v59 font];
  [v60 _scaledValueForValue:20.0];
  v62 = v49 + v61;

  [(MTAWorldClockView *)self layoutMargins];
  v64 = v63;
  v65 = [(MTAWorldClockView *)self sunsetLabel];
  [v65 _firstBaselineOffsetFromTop];
  v67 = v62 - v66;

  v68 = [(MTAWorldClockView *)self sunsetLabel];
  [v68 frame];
  v69 = CGRectGetHeight(v79);

  v70 = [(MTAWorldClockView *)self sunsetLabel];
  [v70 setFrame:{v64, v67, v17, v69}];
}

- (void)updateLabelAdjustFontSize
{
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v4);

  v6 = [(MTAWorldClockView *)self cityNameLabel];
  [v6 setAdjustsFontSizeToFitWidth:!IsAccessibilityCategory];

  v7 = [(MTAWorldClockView *)self sunsetLabel];
  [v7 setAdjustsFontSizeToFitWidth:!IsAccessibilityCategory];

  v8 = [(MTAWorldClockView *)self sunriseLabel];
  [v8 setAdjustsFontSizeToFitWidth:!IsAccessibilityCategory];

  v9 = [(MTAWorldClockView *)self timeZoneOffsetLabel];
  [v9 setAdjustsFontSizeToFitWidth:!IsAccessibilityCategory];
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

- (void)setCity:(id)a3
{
  v5 = a3;
  city = self->_city;
  if (city != v5 && ([(WorldClockCity *)city isEqual:v5]& 1) == 0)
  {
    objc_storeStrong(&self->_city, a3);
    v7 = [NSTimeZone alloc];
    v8 = [(WorldClockCity *)self->_city timeZone];
    v9 = [v7 initWithName:v8];

    v10 = [(MTAWorldClockView *)self analogClock];
    [v10 setTimeZone:v9];

    v11 = [(MTAWorldClockView *)self analogClock];
    v12 = [v11 isStarted];

    if ((v12 & 1) == 0)
    {
      v13 = [(MTAWorldClockView *)self analogClock];
      [v13 updateTimeAnimated:0];
    }

    v14 = [(MTAWorldClockView *)self timeFormatter];
    [v14 setTimeZone:v9];

    [(MTAWorldClockView *)self updateDetails];
  }

  _objc_release_x1();
}

- (void)updateCityNameAndTime
{
  v3 = [(MTAWorldClockView *)self timeFormatter];
  v4 = [(MTAWorldClockView *)self analogClock];
  v5 = [v4 time];
  v12 = [v3 stringFromDate:v5];

  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"CITY_AND_TIME_FORMAT" value:&stru_1000AEF10 table:@"Localizable"];
  v8 = [(MTAWorldClockView *)self city];
  v9 = [v8 name];
  v10 = [NSString stringWithFormat:v7, v9, v12];

  v11 = [(MTAWorldClockView *)self cityNameLabel];
  [v11 setText:v10];
}

- (void)updateDetails
{
  [(MTAWorldClockView *)self updateCityNameAndTime];
  v12 = +[NSDate date];
  v3 = +[NSTimeZone systemTimeZone];
  v4 = [(MTAWorldClockView *)self analogClock];
  v5 = [v4 timeZone];
  v6 = [v5 secondsFromGMTForDate:v12];
  v7 = v6 - [v3 secondsFromGMTForDate:v12];

  v8 = [(MTAWorldClockView *)self analogClock];
  v9 = [v8 time];
  v10 = [MTUIWorldClockCellView dayAndTimeZoneOffsetStringFromDate:v9 withTimeZoneOffset:v7 timeZoneAbbreviation:0 spaceBeforeTimeDesignator:1];

  v11 = [(MTAWorldClockView *)self timeZoneOffsetLabel];
  [v11 setText:v10];

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
  v3 = [(MTAWorldClockView *)self analogClock];
  [v3 start];

  [MTUIAnalogClockView registerClock:self];
}

- (void)stop
{
  v3 = [(MTAWorldClockView *)self analogClock];
  [v3 stop];

  [MTUIAnalogClockView unregisterClock:self];
}

- (void)updateTimeContinuously:(int64_t)a3
{
  if ([(MTAWorldClockView *)self minute]!= a3)
  {
    [(MTAWorldClockView *)self setMinute:a3];

    [(MTAWorldClockView *)self updateTime];
  }
}

@end