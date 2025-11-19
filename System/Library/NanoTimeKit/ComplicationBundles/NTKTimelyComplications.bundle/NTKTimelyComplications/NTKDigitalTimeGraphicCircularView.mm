@interface NTKDigitalTimeGraphicCircularView
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
@end

@implementation NTKDigitalTimeGraphicCircularView

- (void)layoutSubviews
{
  v28.receiver = self;
  v28.super_class = NTKDigitalTimeGraphicCircularView;
  [(NTKDigitalTimeGraphicCircularView *)&v28 layoutSubviews];
  [(NTKDigitalTimeGraphicCircularView *)self bounds];
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
  v10 = [(NTKDigitalTimeGraphicCircularView *)self layer];
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
  v15 = [(NTKDigitalTimeGraphicCircularView *)self unfilledSecondsDialView];
  v29[0] = v15;
  v16 = [(NTKDigitalTimeGraphicCircularView *)self filledSecondsDialView];
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

  v23 = [(NTKDigitalTimeGraphicCircularView *)self timeLabel];
  [v23 setBounds:{0.0, 0.0, v11, v12}];
  [v23 setCenter:{MidX, MidY}];
}

- (id)initFullColorImageViewWithDevice:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = NTKDigitalTimeGraphicCircularView;
  v5 = [(NTKDigitalTimeGraphicCircularView *)&v29 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v5)
  {
    [objc_opt_class() _layoutConstantsForDevice:v4];
    v7 = v6;
    v5->_layoutConstants.secondsTickSize.width = v8;
    v5->_layoutConstants.secondsTickSize.height = v9;
    v5->_layoutConstants.secondsDialDiameter = v10;
    v5->_layoutConstants.timeFontSize = v6;
    v5->_inactiveTickAccentAlpha = 0.25;
    v5->_activeTickAccentAlpha = 0.9;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_5A38;
    v27[3] = &unk_10508;
    v27[4] = 60;
    *&v27[5] = v8;
    *&v27[6] = v9;
    v28 = xmmword_CC80;
    v11 = objc_retainBlock(v27);
    v12 = [UIColor colorWithWhite:1.0 alpha:v5->_inactiveTickAccentAlpha];
    v13 = (v11[2])(v11, v12);
    unfilledSecondsDialView = v5->_unfilledSecondsDialView;
    v5->_unfilledSecondsDialView = v13;

    [(NTKDigitalTimeGraphicCircularView *)v5 addSubview:v5->_unfilledSecondsDialView];
    v15 = [UIColor colorWithWhite:1.0 alpha:v5->_activeTickAccentAlpha];
    v16 = (v11[2])(v11, v15);
    filledSecondsDialView = v5->_filledSecondsDialView;
    v5->_filledSecondsDialView = v16;

    LODWORD(v18) = 0.5;
    [(NTKRichComplicationDialView *)v5->_filledSecondsDialView setProgress:v18];
    [(NTKDigitalTimeGraphicCircularView *)v5 addSubview:v5->_filledSecondsDialView];
    v19 = [CLKFont systemFontOfSize:CLKRoundedFontDesignName weight:v7 design:UIFontWeightSemibold];
    v20 = [v19 CLKFontWithAlternativePunctuation];

    v21 = [[NTKDigitalTimeLabel alloc] initWithTimeLabelOptions:1 forDevice:v4];
    [v21 setFont:v20];
    v22 = +[UIColor whiteColor];
    [v21 setColor:v22];

    v23 = +[UIColor systemOrangeColor];
    [v21 setTextColor:v23];

    timeLabel = v5->_timeLabel;
    v5->_timeLabel = v21;
    v25 = v21;

    [(NTKDigitalTimeGraphicCircularView *)v5 addSubview:v5->_timeLabel];
  }

  return v5;
}

- (void)configureWithImageProvider:(id)a3 reason:(int64_t)a4
{
  v5 = a3;
  v6 = [v5 metadata];
  v7 = [v6 objectForKey:@"NTKDigitalTimeGraphicCircularViewOverrideDateKey"];
  v8 = [v5 tritium_isTritiumInactiveFullColorImageProvider];

  if (v8 && !v7)
  {
    v7 = +[CLKDate complicationDate];
  }

  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = self;
    v10 = v7;
  }

  else
  {
    v9 = self;
    v10 = 0;
  }

  [(NTKDigitalTimeGraphicCircularView *)v9 setOverrideDate:v10];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_5C2C;
  v13[3] = &unk_10528;
  v14 = v8;
  v11 = objc_retainBlock(v13);
  v12 = [(NTKDigitalTimeGraphicCircularView *)self filledSecondsDialView];
  (v11[2])(v11, v12);
  [(NTKDigitalTimeGraphicCircularView *)self _updateProgress];
}

- (void)transitionToMonochromeWithFraction:(double)a3
{
  v5 = [objc_opt_class() _filterStyle];
  v6 = [(NTKDigitalTimeGraphicCircularView *)self filterProvider];
  v7 = [v6 device];
  v8 = NTKShowGossamerUI();

  if (v8)
  {
    v5 = 0;
  }

  v9 = [(NTKDigitalTimeGraphicCircularView *)self filterProvider];
  v23 = [v9 filtersForView:self style:v5 fraction:a3];

  if (v23)
  {
    v10 = [(NTKDigitalTimeGraphicCircularView *)self timeLabel];
    v11 = [v10 layer];
    [v11 setFilters:v23];
  }

  v12 = [(NTKDigitalTimeGraphicCircularView *)self filterProvider];
  v13 = [v12 device];
  v14 = NTKShowGossamerUI();

  if (v14)
  {
    v15 = [(NTKDigitalTimeGraphicCircularView *)self filterProvider];
    v16 = [v15 colorForView:self accented:1];

    v17 = +[UIColor whiteColor];
    v18 = NTKInterpolateBetweenColors();

    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    v19 = [(NTKDigitalTimeGraphicCircularView *)self unfilledSecondsDialView];
    v20 = [v18 colorWithAlphaComponent:self->_inactiveTickAccentAlpha];
    [v19 setTickColor:v20];

    v21 = [(NTKDigitalTimeGraphicCircularView *)self filledSecondsDialView];
    v22 = [v18 colorWithAlphaComponent:self->_activeTickAccentAlpha];
    [v21 setTickColor:v22];

    +[CATransaction commit];
  }
}

- (void)_startClockUpdates
{
  v3 = [(NTKDigitalTimeGraphicCircularView *)self clockTimerToken];
  if (!v3)
  {
    objc_initWeak(&location, self);
    v4 = +[CLKClockTimer sharedInstance];
    v5 = _NSConcreteStackBlock;
    v6 = 3221225472;
    v7 = sub_5FE8;
    v8 = &unk_104A0;
    objc_copyWeak(&v9, &location);
    v3 = [v4 startUpdatesWithUpdateFrequency:1 withHandler:&v5 identificationLog:&stru_10548];

    [(NTKDigitalTimeGraphicCircularView *)self setClockTimerToken:v3, v5, v6, v7, v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)_stopClockUpdates
{
  v3 = [(NTKDigitalTimeGraphicCircularView *)self clockTimerToken];
  if (v3)
  {
    v5 = v3;
    v4 = +[CLKClockTimer sharedInstance];
    [v4 stopUpdatesForToken:v5];

    [(NTKDigitalTimeGraphicCircularView *)self setClockTimerToken:0];
    v3 = v5;
  }
}

- (void)_updateProgress
{
  v3 = [(NTKDigitalTimeGraphicCircularView *)self overrideDate];
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
  v8 = ([v7 component:128 fromDate:v6] % 60) / 60.0;
  v9 = [(NTKDigitalTimeGraphicCircularView *)self timeLabel];
  v10 = [v9 timeFormatter];
  v11 = [(NTKDigitalTimeGraphicCircularView *)self filledSecondsDialView];
  +[CATransaction begin];
  [CATransaction setAnimationDuration:0.0];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_62A0;
  v18 = &unk_10570;
  v22 = v8;
  v19 = v11;
  v20 = v10;
  v21 = v4;
  v12 = v4;
  v13 = v10;
  v14 = v11;
  [UIView performWithoutAnimation:&v15];
  [CATransaction commit:v15];
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