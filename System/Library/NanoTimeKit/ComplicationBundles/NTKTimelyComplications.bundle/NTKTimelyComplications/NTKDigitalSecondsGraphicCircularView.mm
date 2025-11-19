@interface NTKDigitalSecondsGraphicCircularView
- ($58D15C9700E10FDF418FBC0C790388C2)layoutConstants;
- (CLKMonochromeFilterProvider)filterProvider;
- (id)initFullColorImageViewWithDevice:(id)a3;
- (void)_startClockUpdates;
- (void)_stopClockUpdates;
- (void)_updateProgress;
- (void)configureWithImageProvider:(id)a3 reason:(int64_t)a4;
- (void)layoutSubviews;
- (void)setLayoutConstants:(id *)a3;
- (void)transitionToMonochromeWithFraction:(double)a3;
- (void)updateMonochromeColor;
@end

@implementation NTKDigitalSecondsGraphicCircularView

- (void)layoutSubviews
{
  v28.receiver = self;
  v28.super_class = NTKDigitalSecondsGraphicCircularView;
  [(NTKDigitalSecondsGraphicCircularView *)&v28 layoutSubviews];
  [(NTKDigitalSecondsGraphicCircularView *)self bounds];
  x = v31.origin.x;
  y = v31.origin.y;
  width = v31.size.width;
  height = v31.size.height;
  v7 = CGRectGetWidth(v31);
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  v8 = CGRectGetHeight(v32);
  if (v7 < v8)
  {
    v8 = v7;
  }

  v9 = v8 * 0.5;
  v10 = [(NTKDigitalSecondsGraphicCircularView *)self layer];
  [v10 setCornerRadius:v9];
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  v11 = CGRectGetWidth(v33);
  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = height;
  v12 = CGRectGetHeight(v34);
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  MidX = CGRectGetMidX(v35);
  v36.origin.x = x;
  v36.origin.y = y;
  v36.size.width = width;
  v36.size.height = height;
  MidY = CGRectGetMidY(v36);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v15 = [(NTKDigitalSecondsGraphicCircularView *)self unfilledSecondsDialView];
  v29[0] = v15;
  v16 = [(NTKDigitalSecondsGraphicCircularView *)self filledSecondsDialView];
  v29[1] = v16;
  v17 = [NSArray arrayWithObjects:v29 count:2];

  v18 = [v17 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v25;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v25 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v24 + 1) + 8 * i);
        [v22 setBounds:{0.0, 0.0, v11, v12}];
        [v22 setCenter:{MidX, MidY}];
      }

      v19 = [v17 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v19);
  }

  v23 = [(NTKDigitalSecondsGraphicCircularView *)self timeLabel];
  [v23 setBounds:{0.0, 0.0, v11, v12}];
  [v23 setCenter:{MidX, MidY}];
}

- (id)initFullColorImageViewWithDevice:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = NTKDigitalSecondsGraphicCircularView;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v8 = [(NTKDigitalSecondsGraphicCircularView *)&v32 initWithFrame:CGRectZero.origin.x, y, width, height];
  if (v8)
  {
    [objc_opt_class() _layoutConstantsForDevice:v4];
    v10 = v9;
    v8->_layoutConstants.secondsTickSize.width = v11;
    v8->_layoutConstants.secondsTickSize.height = v12;
    v8->_layoutConstants.secondsDialDiameter = v13;
    v8->_layoutConstants.timeFontSize = v9;
    v8->_inactiveTickAccentAlpha = 0.25;
    v8->_activeTickAccentAlpha = 0.9;
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_70F0;
    v30[3] = &unk_10508;
    v30[4] = 60;
    *&v30[5] = v11;
    *&v30[6] = v12;
    v31 = xmmword_CC80;
    v14 = objc_retainBlock(v30);
    v15 = [UIColor colorWithWhite:1.0 alpha:v8->_inactiveTickAccentAlpha];
    v16 = (v14[2])(v14, v15);
    unfilledSecondsDialView = v8->_unfilledSecondsDialView;
    v8->_unfilledSecondsDialView = v16;

    [(NTKDigitalSecondsGraphicCircularView *)v8 addSubview:v8->_unfilledSecondsDialView];
    v18 = +[UIColor systemOrangeColor];
    v19 = [v18 colorWithAlphaComponent:v8->_activeTickAccentAlpha];

    v20 = (v14[2])(v14, v19);
    filledSecondsDialView = v8->_filledSecondsDialView;
    v8->_filledSecondsDialView = v20;

    LODWORD(v22) = 0.5;
    [(NTKRichComplicationDialView *)v8->_filledSecondsDialView setProgress:v22];
    [(NTKDigitalSecondsGraphicCircularView *)v8 addSubview:v8->_filledSecondsDialView];
    v23 = [CLKFont systemFontOfSize:CLKRoundedFontDesignName weight:v10 design:UIFontWeightMedium];
    v24 = [v23 CLKFontWithAlternativePunctuation];

    v25 = [v24 CLKFontWithMonospacedNumbers];
    v26 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(UILabel *)v26 setTextAlignment:1];
    [(UILabel *)v26 setFont:v25];
    timeLabel = v8->_timeLabel;
    v8->_timeLabel = v26;
    v28 = v26;

    [(NTKDigitalSecondsGraphicCircularView *)v8 addSubview:v8->_timeLabel];
  }

  return v8;
}

- (void)configureWithImageProvider:(id)a3 reason:(int64_t)a4
{
  v5 = a3;
  v6 = [v5 metadata];
  v7 = [v6 objectForKey:@"NTKDigitalSecondsGraphicCircularViewOverrideDateKey"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = self;
    v9 = v7;
  }

  else
  {
    v8 = self;
    v9 = 0;
  }

  [(NTKDigitalSecondsGraphicCircularView *)v8 setOverrideDate:v9];
  v10 = [v5 tritium_isTritiumInactiveFullColorImageProvider];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_72F4;
  v14[3] = &unk_10528;
  v15 = v10;
  v11 = objc_retainBlock(v14);
  v12 = [(NTKDigitalSecondsGraphicCircularView *)self timeLabel];
  (v11[2])(v11, v12);
  v13 = [(NTKDigitalSecondsGraphicCircularView *)self filledSecondsDialView];
  (v11[2])(v11, v13);
  [(NTKDigitalSecondsGraphicCircularView *)self _updateProgress];
}

- (void)transitionToMonochromeWithFraction:(double)a3
{
  v5 = [(NTKDigitalSecondsGraphicCircularView *)self filterProvider];
  v6 = [v5 device];
  v7 = NTKShowGossamerUI();

  if (v7)
  {
    v8 = [(NTKDigitalSecondsGraphicCircularView *)self filterProvider];
    v20 = [v8 colorForView:self accented:1];

    v9 = +[UIColor systemOrangeColor];
    v10 = NTKInterpolateBetweenColors();

    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    v11 = [(NTKDigitalSecondsGraphicCircularView *)self unfilledSecondsDialView];
    v12 = [v10 colorWithAlphaComponent:self->_inactiveTickAccentAlpha];
    [v11 setTickColor:v12];

    v13 = [(NTKDigitalSecondsGraphicCircularView *)self filledSecondsDialView];
    v14 = [v10 colorWithAlphaComponent:self->_activeTickAccentAlpha];
    [v13 setTickColor:v14];

    +[CATransaction commit];
    v15 = [(NTKDigitalSecondsGraphicCircularView *)self filterProvider];
    v16 = [v15 colorForView:self accented:0];

    [(UILabel *)self->_timeLabel setTextColor:v16];
  }

  else
  {
    v17 = [objc_opt_class() _filterStyle];
    v18 = [(NTKDigitalSecondsGraphicCircularView *)self filterProvider];
    v20 = [v18 filtersForView:self style:v17 fraction:a3];

    v19 = v20;
    if (!v20)
    {
      goto LABEL_6;
    }

    v10 = [(NTKDigitalSecondsGraphicCircularView *)self filledSecondsDialView];
    v16 = [v10 layer];
    [v16 setFilters:v20];
  }

  v19 = v20;
LABEL_6:
}

- (void)updateMonochromeColor
{
  v3 = [(NTKDigitalSecondsGraphicCircularView *)self filterProvider];
  v4 = [v3 device];
  v5 = NTKShowGossamerUI();

  if (v5)
  {
    v6 = [(NTKDigitalSecondsGraphicCircularView *)self filterProvider];
    v17 = [v6 colorForView:self accented:1];

    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    v7 = [(NTKDigitalSecondsGraphicCircularView *)self unfilledSecondsDialView];
    v8 = [v17 colorWithAlphaComponent:self->_inactiveTickAccentAlpha];
    [v7 setTickColor:v8];

    v9 = [(NTKDigitalSecondsGraphicCircularView *)self filledSecondsDialView];
    v10 = [v17 colorWithAlphaComponent:self->_activeTickAccentAlpha];
    [v9 setTickColor:v10];

    +[CATransaction commit];
    v11 = [(NTKDigitalSecondsGraphicCircularView *)self filterProvider];
    v12 = [v11 colorForView:self accented:0];

    [(UILabel *)self->_timeLabel setTextColor:v12];
  }

  else
  {
    v13 = [objc_opt_class() _filterStyle];
    v14 = [(NTKDigitalSecondsGraphicCircularView *)self filterProvider];
    v17 = [v14 filtersForView:self style:v13];

    v15 = v17;
    if (!v17)
    {
      goto LABEL_6;
    }

    v12 = [(NTKDigitalSecondsGraphicCircularView *)self filledSecondsDialView];
    v16 = [v12 layer];
    [v16 setFilters:v17];
  }

  v15 = v17;
LABEL_6:
}

- (void)_startClockUpdates
{
  v3 = [(NTKDigitalSecondsGraphicCircularView *)self clockTimerToken];
  if (!v3)
  {
    objc_initWeak(&location, self);
    v4 = +[CLKClockTimer sharedInstance];
    v5 = _NSConcreteStackBlock;
    v6 = 3221225472;
    v7 = sub_7888;
    v8 = &unk_104A0;
    objc_copyWeak(&v9, &location);
    v3 = [v4 startUpdatesWithUpdateFrequency:1 withHandler:&v5 identificationLog:&stru_10598];

    [(NTKDigitalSecondsGraphicCircularView *)self setClockTimerToken:v3, v5, v6, v7, v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)_stopClockUpdates
{
  v3 = [(NTKDigitalSecondsGraphicCircularView *)self clockTimerToken];
  if (v3)
  {
    v5 = v3;
    v4 = +[CLKClockTimer sharedInstance];
    [v4 stopUpdatesForToken:v5];

    [(NTKDigitalSecondsGraphicCircularView *)self setClockTimerToken:0];
    v3 = v5;
  }
}

- (void)_updateProgress
{
  v3 = [(NTKDigitalSecondsGraphicCircularView *)self overrideDate];
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
  v7 = +[NSCalendar currentCalendar];
  v8 = [v7 component:128 fromDate:v6];
  v9 = (v8 % 60) / 60.0;
  v10 = [(NTKDigitalSecondsGraphicCircularView *)self timeLabel];
  v11 = [NSNumber numberWithInteger:v8];
  v12 = [NSNumberFormatter localizedStringFromNumber:v11 numberStyle:0];

  v13 = [(NTKDigitalSecondsGraphicCircularView *)self filledSecondsDialView];
  +[CATransaction begin];
  [CATransaction setAnimationDuration:0.0];
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_7B74;
  v20 = &unk_10570;
  v24 = v9;
  v21 = v13;
  v22 = v10;
  v23 = v12;
  v14 = v12;
  v15 = v10;
  v16 = v13;
  [UIView performWithoutAnimation:&v17];
  [CATransaction commit:v17];
}

- (CLKMonochromeFilterProvider)filterProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);

  return WeakRetained;
}

- ($58D15C9700E10FDF418FBC0C790388C2)layoutConstants
{
  height = self[2].var0.height;
  var1 = self[2].var1;
  var2 = self[2].var2;
  width = self[3].var0.width;
  return self;
}

- (void)setLayoutConstants:(id *)a3
{
  self->_layoutConstants.secondsTickSize.width = v3;
  self->_layoutConstants.secondsTickSize.height = v4;
  self->_layoutConstants.secondsDialDiameter = v5;
  self->_layoutConstants.timeFontSize = v6;
}

@end