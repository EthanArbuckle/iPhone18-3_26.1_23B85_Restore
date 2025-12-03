@interface NTKDigitalWorldClockGraphicCircularView
+ (BOOL)_shouldUseDaytimeColoringForTransitInfo:(id)info atDate:(id)date;
+ (void)initialize;
- ($8502DCEA08BBBE1AB2005217B3838BBD)layoutConstants;
- (CLKMonochromeFilterProvider)filterProvider;
- (id)_transitInfoForDate:(id)date;
- (id)initFullColorImageViewWithDevice:(id)device;
- (void)_startClockUpdates;
- (void)_stopClockUpdates;
- (void)_updateColors;
- (void)_updateDayTimeColoring;
- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason;
- (void)layoutSubviews;
- (void)setLayoutConstants:(id *)constants;
- (void)transitionToMonochromeWithFraction:(double)fraction;
- (void)updateMonochromeColor;
@end

@implementation NTKDigitalWorldClockGraphicCircularView

+ (void)initialize
{
  if (qword_17DB0 != -1)
  {
    sub_80B8();
  }
}

- (void)layoutSubviews
{
  v29.receiver = self;
  v29.super_class = NTKDigitalWorldClockGraphicCircularView;
  [(NTKDigitalWorldClockGraphicCircularView *)&v29 layoutSubviews];
  [(NTKDigitalWorldClockGraphicCircularView *)self bounds];
  Width = CGRectGetWidth(v30);
  [(NTKDigitalWorldClockGraphicCircularView *)self bounds];
  Height = CGRectGetHeight(v31);
  v32.origin.x = 0.0;
  v32.origin.y = 0.0;
  v32.size.width = Width;
  v32.size.height = Height;
  v5 = CGRectGetWidth(v32);
  v33.origin.x = 0.0;
  v33.origin.y = 0.0;
  v33.size.width = Width;
  v33.size.height = Height;
  v6 = CGRectGetHeight(v33);
  if (v5 < v6)
  {
    v6 = v5;
  }

  v7 = v6 * 0.5;
  layer = [(NTKDigitalWorldClockGraphicCircularView *)self layer];
  [layer setCornerRadius:v7];
  timeLabelBottom = self->_layoutConstants.timeLabelBottom;
  cityLabelBottom = self->_layoutConstants.cityLabelBottom;
  v34.origin.x = 0.0;
  v34.origin.y = 0.0;
  v34.size.width = Width;
  v34.size.height = Height;
  v11 = CGRectGetWidth(v34);
  timeLabel = [(NTKDigitalWorldClockGraphicCircularView *)self timeLabel];
  [timeLabel setBounds:{0.0, 0.0, Width, Height}];
  [timeLabel sizeToFit];
  [timeLabel frame];
  v14 = v13;
  v15 = (Width - v11) * 0.5;
  font = [timeLabel font];
  [font ascender];
  *&v17 = timeLabelBottom - v17;
  v18 = ceilf(*&v17);

  [timeLabel setFrame:{v15, v18, v11, v14}];
  cityLabel = [(NTKDigitalWorldClockGraphicCircularView *)self cityLabel];
  [cityLabel sizeToFit];
  [cityLabel frame];
  v21 = v20;
  font2 = [cityLabel font];
  [font2 ascender];
  *&v23 = cityLabelBottom - v23;
  v24 = ceilf(*&v23);

  [cityLabel setFrame:{v15, v24, v11, v21}];
  [(NTKDigitalWorldClockGraphicCircularView *)self layoutConstants:0];
  v35.origin.x = 0.0;
  v35.origin.y = 0.0;
  v35.size.width = Width;
  v35.size.height = Height;
  MidX = CGRectGetMidX(v35);
  sunImageView = [(NTKDigitalWorldClockGraphicCircularView *)self sunImageView];
  [sunImageView setCenter:{MidX, 0.0}];
  v36.origin.x = 0.0;
  v36.origin.y = 0.0;
  v36.size.width = Width;
  v36.size.height = Height;
  v27 = CGRectGetMidX(v36);
  moonImageView = [(NTKDigitalWorldClockGraphicCircularView *)self moonImageView];
  [moonImageView setCenter:{v27, 0.0}];
}

- (id)initFullColorImageViewWithDevice:(id)device
{
  deviceCopy = device;
  v41.receiver = self;
  v41.super_class = NTKDigitalWorldClockGraphicCircularView;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(NTKDigitalWorldClockGraphicCircularView *)&v41 initWithFrame:CGRectZero.origin.x, y, width, height];
  if (height)
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v9 = objc_opt_class();
    if (v9)
    {
      [v9 _layoutConstantsForDevice:deviceCopy];
    }

    else
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
    }

    v10 = v40;
    v12 = v37;
    v11 = v38;
    *(height + 120) = v39;
    *(height + 136) = v10;
    *(height + 88) = v12;
    *(height + 104) = v11;
    v13 = NTKShowGossamerUI();
    height[16] = v13;
    if ((v13 & 1) == 0)
    {
      [height setBackgroundColor:qword_17DA8];
    }

    v14 = [CLKFont systemFontOfSize:CLKRoundedFontDesignName weight:*&v37 design:UIFontWeightSemibold];
    cLKFontWithAlternativePunctuation = [v14 CLKFontWithAlternativePunctuation];

    v16 = [[CLKUIColoringLabel alloc] initWithFrame:4 options:{CGRectZero.origin.x, y, width, height}];
    [v16 setFont:cLKFontWithAlternativePunctuation];
    [v16 setTextAlignment:1];
    [v16 setFont:cLKFontWithAlternativePunctuation];
    v17 = +[UIColor whiteColor];
    [v16 setColor:v17];

    v18 = +[UIColor whiteColor];
    [v16 setTextColor:v18];

    objc_initWeak(&location, height);
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_36FC;
    v34[3] = &unk_10478;
    objc_copyWeak(&v35, &location);
    [v16 setNowProvider:v34];
    objc_storeStrong(height + 6, v16);
    [height addSubview:*(height + 6)];
    v19 = [CLKFont systemFontOfSize:CLKRoundedFontDesignName weight:*&v38 design:UIFontWeightSemibold];
    cLKFontWithAlternativePunctuation2 = [v19 CLKFontWithAlternativePunctuation];
    v32 = cLKFontWithAlternativePunctuation;
    v33 = deviceCopy;

    v21 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [v21 setTextAlignment:1];
    [v21 setFont:cLKFontWithAlternativePunctuation2];
    v22 = +[UIColor systemOrangeColor];
    [v21 setTextColor:v22];

    objc_storeStrong(height + 7, v21);
    [height addSubview:*(height + 7)];
    v23 = [UIImage systemImageNamed:@"sun.max.fill"];
    v24 = [[UIImageView alloc] initWithImage:v23];
    [v24 setContentMode:1];
    [v24 setFrame:{0.0, 0.0, *&v39, *&v39}];
    v25 = +[UIColor systemYellowColor];
    [v24 setTintColor:v25];

    layer = [v24 layer];
    [layer setAnchorPoint:{0.5, 0.0}];

    [v24 setHidden:1];
    objc_storeStrong(height + 9, v24);
    [height addSubview:*(height + 9)];
    v27 = [UIImage systemImageNamed:@"moon.fill"];
    v28 = [[UIImageView alloc] initWithImage:v27];
    [v28 setContentMode:1];
    [v28 setFrame:{0.0, 0.0, *(&v39 + 1), *(&v39 + 1)}];
    v29 = +[UIColor systemTealColor];
    [v28 setTintColor:v29];

    layer2 = [v28 layer];
    [layer2 setAnchorPoint:{0.5, 0.0}];

    objc_storeStrong(height + 10, v28);
    [height addSubview:*(height + 10)];
    [height _updateColors];

    objc_destroyWeak(&v35);
    objc_destroyWeak(&location);

    deviceCopy = v33;
  }

  return height;
}

- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason
{
  metadata = [provider metadata];
  v6 = [metadata objectForKey:@"NTKDigitalWorldClockGraphicCircularViewOverrideDateKey"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    selfCopy2 = self;
    v8 = v6;
  }

  else
  {
    selfCopy2 = self;
    v8 = 0;
  }

  [(NTKDigitalWorldClockGraphicCircularView *)selfCopy2 setOverrideDate:v8];
  v9 = [metadata objectForKey:@"NTKDigitalWorldClockGraphicCircularViewCityKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy4 = self;
    v11 = v9;
  }

  else
  {
    v12 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_80CC(self, metadata, v12);
    }

    selfCopy4 = self;
    v11 = 0;
  }

  [(NTKDigitalWorldClockGraphicCircularView *)selfCopy4 setCity:v11];
  timeLabel = [(NTKDigitalWorldClockGraphicCircularView *)self timeLabel];
  v14 = [metadata objectForKey:@"NTKDigitalWorldClockGraphicCircularViewTimeTextProviderKey"];
  if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [timeLabel setTextProvider:v14];
  }

  else
  {
    v15 = [CLKSimpleTextProvider textProviderWithText:&stru_105F8];
    [timeLabel setTextProvider:v15];
  }

  cityLabel = [(NTKDigitalWorldClockGraphicCircularView *)self cityLabel];
  v17 = [metadata objectForKey:@"NTKDigitalWorldClockGraphicCircularViewCityNameKey"];
  if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v18 = cityLabel;
    v19 = v17;
  }

  else
  {
    v18 = cityLabel;
    v19 = 0;
  }

  [v18 setText:v19];
  [(NTKDigitalWorldClockGraphicCircularView *)self _updateDayTimeColoring];
  [(NTKDigitalWorldClockGraphicCircularView *)self setNeedsLayout];
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  filterProvider = [(NTKDigitalWorldClockGraphicCircularView *)self filterProvider];
  v16 = [filterProvider filtersForView:self style:2 fraction:fraction];

  cityLabel = [(NTKDigitalWorldClockGraphicCircularView *)self cityLabel];
  layer = [cityLabel layer];
  [layer setFilters:v16];
  sunImageView = [(NTKDigitalWorldClockGraphicCircularView *)self sunImageView];
  layer2 = [sunImageView layer];
  [layer2 setFilters:v16];
  moonImageView = [(NTKDigitalWorldClockGraphicCircularView *)self moonImageView];
  layer3 = [moonImageView layer];
  [layer3 setFilters:v16];
  filterProvider2 = [(NTKDigitalWorldClockGraphicCircularView *)self filterProvider];
  v13 = [filterProvider2 filtersForView:self style:0 fraction:fraction];

  timeLabel = [(NTKDigitalWorldClockGraphicCircularView *)self timeLabel];
  layer4 = [timeLabel layer];
  [layer4 setFilters:v13];
}

- (void)updateMonochromeColor
{
  filterProvider = [(NTKDigitalWorldClockGraphicCircularView *)self filterProvider];
  v14 = [filterProvider filtersForView:self style:2];

  cityLabel = [(NTKDigitalWorldClockGraphicCircularView *)self cityLabel];
  layer = [cityLabel layer];
  [layer setFilters:v14];
  sunImageView = [(NTKDigitalWorldClockGraphicCircularView *)self sunImageView];
  layer2 = [sunImageView layer];
  [layer2 setFilters:v14];
  moonImageView = [(NTKDigitalWorldClockGraphicCircularView *)self moonImageView];
  layer3 = [moonImageView layer];
  [layer3 setFilters:v14];
  filterProvider2 = [(NTKDigitalWorldClockGraphicCircularView *)self filterProvider];
  v11 = [filterProvider2 filtersForView:self style:0];

  timeLabel = [(NTKDigitalWorldClockGraphicCircularView *)self timeLabel];
  layer4 = [timeLabel layer];
  [layer4 setFilters:v11];
}

+ (BOOL)_shouldUseDaytimeColoringForTransitInfo:(id)info atDate:(id)date
{
  infoCopy = info;
  dateCopy = date;
  rise = [infoCopy rise];
  if (rise)
  {
  }

  else
  {
    v8 = [infoCopy set];

    if (!v8)
    {
      v16 = [infoCopy constantSun] == &dword_0 + 2;
LABEL_14:
      v20 = v16;
      goto LABEL_17;
    }
  }

  rise2 = [infoCopy rise];
  if (rise2)
  {
    v10 = rise2;
    v11 = [infoCopy set];

    if (v11)
    {
      rise3 = [infoCopy rise];
      v13 = [dateCopy compare:rise3];

      v14 = [infoCopy set];
      v15 = [dateCopy compare:v14];

      v16 = v13 < 2 && v15 + 1 == 0;
      goto LABEL_14;
    }
  }

  rise4 = [infoCopy rise];

  if (rise4)
  {
    rise5 = [infoCopy rise];
    v19 = [dateCopy compare:rise5];

    v20 = v19 < 2;
    goto LABEL_17;
  }

  v21 = [infoCopy set];

  if (v21)
  {
    v22 = [infoCopy set];
    v23 = [dateCopy compare:v22];

    v16 = v23 + 1 == 0;
    goto LABEL_14;
  }

  v25 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    sub_81B4(v25);
  }

  v20 = 1;
LABEL_17:

  return v20;
}

- (void)_startClockUpdates
{
  clockTimerToken = [(NTKDigitalWorldClockGraphicCircularView *)self clockTimerToken];
  if (!clockTimerToken)
  {
    objc_initWeak(&location, self);
    v4 = +[CLKClockTimer sharedInstance];
    v5 = _NSConcreteStackBlock;
    v6 = 3221225472;
    v7 = sub_3F74;
    v8 = &unk_104A0;
    objc_copyWeak(&v9, &location);
    clockTimerToken = [v4 startUpdatesWithUpdateFrequency:1 withHandler:&v5 identificationLog:&stru_104E0];

    [(NTKDigitalWorldClockGraphicCircularView *)self setClockTimerToken:clockTimerToken, v5, v6, v7, v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)_stopClockUpdates
{
  clockTimerToken = [(NTKDigitalWorldClockGraphicCircularView *)self clockTimerToken];
  if (clockTimerToken)
  {
    v5 = clockTimerToken;
    v4 = +[CLKClockTimer sharedInstance];
    [v4 stopUpdatesForToken:v5];

    [(NTKDigitalWorldClockGraphicCircularView *)self setClockTimerToken:0];
    clockTimerToken = v5;
  }
}

- (void)_updateDayTimeColoring
{
  overrideDate = [(NTKDigitalWorldClockGraphicCircularView *)self overrideDate];
  v4 = overrideDate;
  if (overrideDate)
  {
    v5 = overrideDate;
  }

  else
  {
    v5 = +[NTKDate faceDate];
  }

  v6 = v5;
  v7 = [(NTKDigitalWorldClockGraphicCircularView *)self _transitInfoForDate:v5];
  v8 = [objc_opt_class() _shouldUseDaytimeColoringForTransitInfo:v7 atDate:v6];
  if (v8 != [(NTKDigitalWorldClockGraphicCircularView *)self isSunUp])
  {
    v9 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = @"nighttime";
      if (v8)
      {
        v11 = @"daytime";
      }

      v15 = 138543618;
      v16 = v10;
      v17 = 2114;
      v18 = v11;
      v12 = v10;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "%{public}@ Switch to %{public}@.", &v15, 0x16u);
    }

    [(NTKDigitalWorldClockGraphicCircularView *)self setIsSunUp:v8];
    sunImageView = [(NTKDigitalWorldClockGraphicCircularView *)self sunImageView];
    [sunImageView setHidden:v8 ^ 1];
    moonImageView = [(NTKDigitalWorldClockGraphicCircularView *)self moonImageView];
    [moonImageView setHidden:v8];
  }
}

- (void)_updateColors
{
  if (!self->_showGossamerUI)
  {
    _complicationBackgroundColor = [(NTKDigitalWorldClockGraphicCircularView *)self _complicationBackgroundColor];
    [(NTKDigitalWorldClockGraphicCircularView *)self setBackgroundColor:_complicationBackgroundColor];
  }

  _timeTextColor = [(NTKDigitalWorldClockGraphicCircularView *)self _timeTextColor];
  timeLabel = [(NTKDigitalWorldClockGraphicCircularView *)self timeLabel];
  [timeLabel setColor:_timeTextColor];
  [timeLabel setTextColor:_timeTextColor];
  _cityLabelColor = [(NTKDigitalWorldClockGraphicCircularView *)self _cityLabelColor];
  cityLabel = [(NTKDigitalWorldClockGraphicCircularView *)self cityLabel];
  [cityLabel setTextColor:_cityLabelColor];
}

- (id)_transitInfoForDate:(id)date
{
  dateCopy = date;
  city = [(NTKDigitalWorldClockGraphicCircularView *)self city];
  if (city)
  {
    v6 = self->_transitInfo;
    if (([(CLKUIAlmanacTransitInfo *)v6 isDateWithinTransitInfo:dateCopy]& 1) == 0)
    {
      v7 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v12 = 138543362;
        v13 = objc_opt_class();
        v8 = v13;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "%{public}@ Calculate updated CLKUIAlmanacTransitInfo.", &v12, 0xCu);
      }

      city2 = [(NTKDigitalWorldClockGraphicCircularView *)self city];
      v10 = [CLKUIAlmanacTransitInfo transitInfoForDate:dateCopy city:city2];

      objc_storeStrong(&self->_transitInfo, v10);
      v6 = v10;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (CLKMonochromeFilterProvider)filterProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);

  return WeakRetained;
}

- ($8502DCEA08BBBE1AB2005217B3838BBD)layoutConstants
{
  v3 = *&self[1].var5;
  *&retstr->var0 = *&self[1].var3;
  *&retstr->var2 = v3;
  v4 = *&self[2].var1;
  *&retstr->var4 = *&self[1].var7;
  *&retstr->var6 = v4;
  return self;
}

- (void)setLayoutConstants:(id *)constants
{
  v3 = *&constants->var6;
  v5 = *&constants->var0;
  v4 = *&constants->var2;
  *&self->_layoutConstants.sunGlyphLength = *&constants->var4;
  *&self->_layoutConstants.sunGlyphPadding = v3;
  *&self->_layoutConstants.timeFontSize = v5;
  *&self->_layoutConstants.cityFontSize = v4;
}

@end