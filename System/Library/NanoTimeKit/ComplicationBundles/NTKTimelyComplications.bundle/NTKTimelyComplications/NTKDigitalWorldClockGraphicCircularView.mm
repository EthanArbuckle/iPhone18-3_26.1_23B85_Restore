@interface NTKDigitalWorldClockGraphicCircularView
+ (BOOL)_shouldUseDaytimeColoringForTransitInfo:(id)a3 atDate:(id)a4;
+ (void)initialize;
- ($8502DCEA08BBBE1AB2005217B3838BBD)layoutConstants;
- (CLKMonochromeFilterProvider)filterProvider;
- (id)_transitInfoForDate:(id)a3;
- (id)initFullColorImageViewWithDevice:(id)a3;
- (void)_startClockUpdates;
- (void)_stopClockUpdates;
- (void)_updateColors;
- (void)_updateDayTimeColoring;
- (void)configureWithImageProvider:(id)a3 reason:(int64_t)a4;
- (void)layoutSubviews;
- (void)setLayoutConstants:(id *)a3;
- (void)transitionToMonochromeWithFraction:(double)a3;
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
  v8 = [(NTKDigitalWorldClockGraphicCircularView *)self layer];
  [v8 setCornerRadius:v7];
  timeLabelBottom = self->_layoutConstants.timeLabelBottom;
  cityLabelBottom = self->_layoutConstants.cityLabelBottom;
  v34.origin.x = 0.0;
  v34.origin.y = 0.0;
  v34.size.width = Width;
  v34.size.height = Height;
  v11 = CGRectGetWidth(v34);
  v12 = [(NTKDigitalWorldClockGraphicCircularView *)self timeLabel];
  [v12 setBounds:{0.0, 0.0, Width, Height}];
  [v12 sizeToFit];
  [v12 frame];
  v14 = v13;
  v15 = (Width - v11) * 0.5;
  v16 = [v12 font];
  [v16 ascender];
  *&v17 = timeLabelBottom - v17;
  v18 = ceilf(*&v17);

  [v12 setFrame:{v15, v18, v11, v14}];
  v19 = [(NTKDigitalWorldClockGraphicCircularView *)self cityLabel];
  [v19 sizeToFit];
  [v19 frame];
  v21 = v20;
  v22 = [v19 font];
  [v22 ascender];
  *&v23 = cityLabelBottom - v23;
  v24 = ceilf(*&v23);

  [v19 setFrame:{v15, v24, v11, v21}];
  [(NTKDigitalWorldClockGraphicCircularView *)self layoutConstants:0];
  v35.origin.x = 0.0;
  v35.origin.y = 0.0;
  v35.size.width = Width;
  v35.size.height = Height;
  MidX = CGRectGetMidX(v35);
  v26 = [(NTKDigitalWorldClockGraphicCircularView *)self sunImageView];
  [v26 setCenter:{MidX, 0.0}];
  v36.origin.x = 0.0;
  v36.origin.y = 0.0;
  v36.size.width = Width;
  v36.size.height = Height;
  v27 = CGRectGetMidX(v36);
  v28 = [(NTKDigitalWorldClockGraphicCircularView *)self moonImageView];
  [v28 setCenter:{v27, 0.0}];
}

- (id)initFullColorImageViewWithDevice:(id)a3
{
  v4 = a3;
  v41.receiver = self;
  v41.super_class = NTKDigitalWorldClockGraphicCircularView;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v8 = [(NTKDigitalWorldClockGraphicCircularView *)&v41 initWithFrame:CGRectZero.origin.x, y, width, height];
  if (v8)
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v9 = objc_opt_class();
    if (v9)
    {
      [v9 _layoutConstantsForDevice:v4];
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
    *(v8 + 120) = v39;
    *(v8 + 136) = v10;
    *(v8 + 88) = v12;
    *(v8 + 104) = v11;
    v13 = NTKShowGossamerUI();
    v8[16] = v13;
    if ((v13 & 1) == 0)
    {
      [v8 setBackgroundColor:qword_17DA8];
    }

    v14 = [CLKFont systemFontOfSize:CLKRoundedFontDesignName weight:*&v37 design:UIFontWeightSemibold];
    v15 = [v14 CLKFontWithAlternativePunctuation];

    v16 = [[CLKUIColoringLabel alloc] initWithFrame:4 options:{CGRectZero.origin.x, y, width, height}];
    [v16 setFont:v15];
    [v16 setTextAlignment:1];
    [v16 setFont:v15];
    v17 = +[UIColor whiteColor];
    [v16 setColor:v17];

    v18 = +[UIColor whiteColor];
    [v16 setTextColor:v18];

    objc_initWeak(&location, v8);
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_36FC;
    v34[3] = &unk_10478;
    objc_copyWeak(&v35, &location);
    [v16 setNowProvider:v34];
    objc_storeStrong(v8 + 6, v16);
    [v8 addSubview:*(v8 + 6)];
    v19 = [CLKFont systemFontOfSize:CLKRoundedFontDesignName weight:*&v38 design:UIFontWeightSemibold];
    v20 = [v19 CLKFontWithAlternativePunctuation];
    v32 = v15;
    v33 = v4;

    v21 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [v21 setTextAlignment:1];
    [v21 setFont:v20];
    v22 = +[UIColor systemOrangeColor];
    [v21 setTextColor:v22];

    objc_storeStrong(v8 + 7, v21);
    [v8 addSubview:*(v8 + 7)];
    v23 = [UIImage systemImageNamed:@"sun.max.fill"];
    v24 = [[UIImageView alloc] initWithImage:v23];
    [v24 setContentMode:1];
    [v24 setFrame:{0.0, 0.0, *&v39, *&v39}];
    v25 = +[UIColor systemYellowColor];
    [v24 setTintColor:v25];

    v26 = [v24 layer];
    [v26 setAnchorPoint:{0.5, 0.0}];

    [v24 setHidden:1];
    objc_storeStrong(v8 + 9, v24);
    [v8 addSubview:*(v8 + 9)];
    v27 = [UIImage systemImageNamed:@"moon.fill"];
    v28 = [[UIImageView alloc] initWithImage:v27];
    [v28 setContentMode:1];
    [v28 setFrame:{0.0, 0.0, *(&v39 + 1), *(&v39 + 1)}];
    v29 = +[UIColor systemTealColor];
    [v28 setTintColor:v29];

    v30 = [v28 layer];
    [v30 setAnchorPoint:{0.5, 0.0}];

    objc_storeStrong(v8 + 10, v28);
    [v8 addSubview:*(v8 + 10)];
    [v8 _updateColors];

    objc_destroyWeak(&v35);
    objc_destroyWeak(&location);

    v4 = v33;
  }

  return v8;
}

- (void)configureWithImageProvider:(id)a3 reason:(int64_t)a4
{
  v5 = [a3 metadata];
  v6 = [v5 objectForKey:@"NTKDigitalWorldClockGraphicCircularViewOverrideDateKey"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = self;
    v8 = v6;
  }

  else
  {
    v7 = self;
    v8 = 0;
  }

  [(NTKDigitalWorldClockGraphicCircularView *)v7 setOverrideDate:v8];
  v9 = [v5 objectForKey:@"NTKDigitalWorldClockGraphicCircularViewCityKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = self;
    v11 = v9;
  }

  else
  {
    v12 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_80CC(self, v5, v12);
    }

    v10 = self;
    v11 = 0;
  }

  [(NTKDigitalWorldClockGraphicCircularView *)v10 setCity:v11];
  v13 = [(NTKDigitalWorldClockGraphicCircularView *)self timeLabel];
  v14 = [v5 objectForKey:@"NTKDigitalWorldClockGraphicCircularViewTimeTextProviderKey"];
  if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v13 setTextProvider:v14];
  }

  else
  {
    v15 = [CLKSimpleTextProvider textProviderWithText:&stru_105F8];
    [v13 setTextProvider:v15];
  }

  v16 = [(NTKDigitalWorldClockGraphicCircularView *)self cityLabel];
  v17 = [v5 objectForKey:@"NTKDigitalWorldClockGraphicCircularViewCityNameKey"];
  if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v18 = v16;
    v19 = v17;
  }

  else
  {
    v18 = v16;
    v19 = 0;
  }

  [v18 setText:v19];
  [(NTKDigitalWorldClockGraphicCircularView *)self _updateDayTimeColoring];
  [(NTKDigitalWorldClockGraphicCircularView *)self setNeedsLayout];
}

- (void)transitionToMonochromeWithFraction:(double)a3
{
  v5 = [(NTKDigitalWorldClockGraphicCircularView *)self filterProvider];
  v16 = [v5 filtersForView:self style:2 fraction:a3];

  v6 = [(NTKDigitalWorldClockGraphicCircularView *)self cityLabel];
  v7 = [v6 layer];
  [v7 setFilters:v16];
  v8 = [(NTKDigitalWorldClockGraphicCircularView *)self sunImageView];
  v9 = [v8 layer];
  [v9 setFilters:v16];
  v10 = [(NTKDigitalWorldClockGraphicCircularView *)self moonImageView];
  v11 = [v10 layer];
  [v11 setFilters:v16];
  v12 = [(NTKDigitalWorldClockGraphicCircularView *)self filterProvider];
  v13 = [v12 filtersForView:self style:0 fraction:a3];

  v14 = [(NTKDigitalWorldClockGraphicCircularView *)self timeLabel];
  v15 = [v14 layer];
  [v15 setFilters:v13];
}

- (void)updateMonochromeColor
{
  v3 = [(NTKDigitalWorldClockGraphicCircularView *)self filterProvider];
  v14 = [v3 filtersForView:self style:2];

  v4 = [(NTKDigitalWorldClockGraphicCircularView *)self cityLabel];
  v5 = [v4 layer];
  [v5 setFilters:v14];
  v6 = [(NTKDigitalWorldClockGraphicCircularView *)self sunImageView];
  v7 = [v6 layer];
  [v7 setFilters:v14];
  v8 = [(NTKDigitalWorldClockGraphicCircularView *)self moonImageView];
  v9 = [v8 layer];
  [v9 setFilters:v14];
  v10 = [(NTKDigitalWorldClockGraphicCircularView *)self filterProvider];
  v11 = [v10 filtersForView:self style:0];

  v12 = [(NTKDigitalWorldClockGraphicCircularView *)self timeLabel];
  v13 = [v12 layer];
  [v13 setFilters:v11];
}

+ (BOOL)_shouldUseDaytimeColoringForTransitInfo:(id)a3 atDate:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 rise];
  if (v7)
  {
  }

  else
  {
    v8 = [v5 set];

    if (!v8)
    {
      v16 = [v5 constantSun] == &dword_0 + 2;
LABEL_14:
      v20 = v16;
      goto LABEL_17;
    }
  }

  v9 = [v5 rise];
  if (v9)
  {
    v10 = v9;
    v11 = [v5 set];

    if (v11)
    {
      v12 = [v5 rise];
      v13 = [v6 compare:v12];

      v14 = [v5 set];
      v15 = [v6 compare:v14];

      v16 = v13 < 2 && v15 + 1 == 0;
      goto LABEL_14;
    }
  }

  v17 = [v5 rise];

  if (v17)
  {
    v18 = [v5 rise];
    v19 = [v6 compare:v18];

    v20 = v19 < 2;
    goto LABEL_17;
  }

  v21 = [v5 set];

  if (v21)
  {
    v22 = [v5 set];
    v23 = [v6 compare:v22];

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
  v3 = [(NTKDigitalWorldClockGraphicCircularView *)self clockTimerToken];
  if (!v3)
  {
    objc_initWeak(&location, self);
    v4 = +[CLKClockTimer sharedInstance];
    v5 = _NSConcreteStackBlock;
    v6 = 3221225472;
    v7 = sub_3F74;
    v8 = &unk_104A0;
    objc_copyWeak(&v9, &location);
    v3 = [v4 startUpdatesWithUpdateFrequency:1 withHandler:&v5 identificationLog:&stru_104E0];

    [(NTKDigitalWorldClockGraphicCircularView *)self setClockTimerToken:v3, v5, v6, v7, v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)_stopClockUpdates
{
  v3 = [(NTKDigitalWorldClockGraphicCircularView *)self clockTimerToken];
  if (v3)
  {
    v5 = v3;
    v4 = +[CLKClockTimer sharedInstance];
    [v4 stopUpdatesForToken:v5];

    [(NTKDigitalWorldClockGraphicCircularView *)self setClockTimerToken:0];
    v3 = v5;
  }
}

- (void)_updateDayTimeColoring
{
  v3 = [(NTKDigitalWorldClockGraphicCircularView *)self overrideDate];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
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
    v13 = [(NTKDigitalWorldClockGraphicCircularView *)self sunImageView];
    [v13 setHidden:v8 ^ 1];
    v14 = [(NTKDigitalWorldClockGraphicCircularView *)self moonImageView];
    [v14 setHidden:v8];
  }
}

- (void)_updateColors
{
  if (!self->_showGossamerUI)
  {
    v3 = [(NTKDigitalWorldClockGraphicCircularView *)self _complicationBackgroundColor];
    [(NTKDigitalWorldClockGraphicCircularView *)self setBackgroundColor:v3];
  }

  v7 = [(NTKDigitalWorldClockGraphicCircularView *)self _timeTextColor];
  v4 = [(NTKDigitalWorldClockGraphicCircularView *)self timeLabel];
  [v4 setColor:v7];
  [v4 setTextColor:v7];
  v5 = [(NTKDigitalWorldClockGraphicCircularView *)self _cityLabelColor];
  v6 = [(NTKDigitalWorldClockGraphicCircularView *)self cityLabel];
  [v6 setTextColor:v5];
}

- (id)_transitInfoForDate:(id)a3
{
  v4 = a3;
  v5 = [(NTKDigitalWorldClockGraphicCircularView *)self city];
  if (v5)
  {
    v6 = self->_transitInfo;
    if (([(CLKUIAlmanacTransitInfo *)v6 isDateWithinTransitInfo:v4]& 1) == 0)
    {
      v7 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v12 = 138543362;
        v13 = objc_opt_class();
        v8 = v13;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "%{public}@ Calculate updated CLKUIAlmanacTransitInfo.", &v12, 0xCu);
      }

      v9 = [(NTKDigitalWorldClockGraphicCircularView *)self city];
      v10 = [CLKUIAlmanacTransitInfo transitInfoForDate:v4 city:v9];

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

- (void)setLayoutConstants:(id *)a3
{
  v3 = *&a3->var6;
  v5 = *&a3->var0;
  v4 = *&a3->var2;
  *&self->_layoutConstants.sunGlyphLength = *&a3->var4;
  *&self->_layoutConstants.sunGlyphPadding = v3;
  *&self->_layoutConstants.timeFontSize = v5;
  *&self->_layoutConstants.cityFontSize = v4;
}

@end