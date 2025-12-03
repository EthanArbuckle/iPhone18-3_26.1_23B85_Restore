@interface NTKDigitalSecondsGraphicCircularView
- ($58D15C9700E10FDF418FBC0C790388C2)layoutConstants;
- (CLKMonochromeFilterProvider)filterProvider;
- (id)initFullColorImageViewWithDevice:(id)device;
- (void)_startClockUpdates;
- (void)_stopClockUpdates;
- (void)_updateProgress;
- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason;
- (void)layoutSubviews;
- (void)setLayoutConstants:(id *)constants;
- (void)transitionToMonochromeWithFraction:(double)fraction;
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
  layer = [(NTKDigitalSecondsGraphicCircularView *)self layer];
  [layer setCornerRadius:v9];
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
  unfilledSecondsDialView = [(NTKDigitalSecondsGraphicCircularView *)self unfilledSecondsDialView];
  v29[0] = unfilledSecondsDialView;
  filledSecondsDialView = [(NTKDigitalSecondsGraphicCircularView *)self filledSecondsDialView];
  v29[1] = filledSecondsDialView;
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

  timeLabel = [(NTKDigitalSecondsGraphicCircularView *)self timeLabel];
  [timeLabel setBounds:{0.0, 0.0, v11, v12}];
  [timeLabel setCenter:{MidX, MidY}];
}

- (id)initFullColorImageViewWithDevice:(id)device
{
  deviceCopy = device;
  v32.receiver = self;
  v32.super_class = NTKDigitalSecondsGraphicCircularView;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(NTKDigitalSecondsGraphicCircularView *)&v32 initWithFrame:CGRectZero.origin.x, y, width, height];
  if (height)
  {
    [objc_opt_class() _layoutConstantsForDevice:deviceCopy];
    v10 = v9;
    height->_layoutConstants.secondsTickSize.width = v11;
    height->_layoutConstants.secondsTickSize.height = v12;
    height->_layoutConstants.secondsDialDiameter = v13;
    height->_layoutConstants.timeFontSize = v9;
    height->_inactiveTickAccentAlpha = 0.25;
    height->_activeTickAccentAlpha = 0.9;
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_70F0;
    v30[3] = &unk_10508;
    v30[4] = 60;
    *&v30[5] = v11;
    *&v30[6] = v12;
    v31 = xmmword_CC80;
    v14 = objc_retainBlock(v30);
    v15 = [UIColor colorWithWhite:1.0 alpha:height->_inactiveTickAccentAlpha];
    v16 = (v14[2])(v14, v15);
    unfilledSecondsDialView = height->_unfilledSecondsDialView;
    height->_unfilledSecondsDialView = v16;

    [(NTKDigitalSecondsGraphicCircularView *)height addSubview:height->_unfilledSecondsDialView];
    v18 = +[UIColor systemOrangeColor];
    v19 = [v18 colorWithAlphaComponent:height->_activeTickAccentAlpha];

    v20 = (v14[2])(v14, v19);
    filledSecondsDialView = height->_filledSecondsDialView;
    height->_filledSecondsDialView = v20;

    LODWORD(v22) = 0.5;
    [(NTKRichComplicationDialView *)height->_filledSecondsDialView setProgress:v22];
    [(NTKDigitalSecondsGraphicCircularView *)height addSubview:height->_filledSecondsDialView];
    v23 = [CLKFont systemFontOfSize:CLKRoundedFontDesignName weight:v10 design:UIFontWeightMedium];
    cLKFontWithAlternativePunctuation = [v23 CLKFontWithAlternativePunctuation];

    cLKFontWithMonospacedNumbers = [cLKFontWithAlternativePunctuation CLKFontWithMonospacedNumbers];
    v26 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(UILabel *)v26 setTextAlignment:1];
    [(UILabel *)v26 setFont:cLKFontWithMonospacedNumbers];
    timeLabel = height->_timeLabel;
    height->_timeLabel = v26;
    v28 = v26;

    [(NTKDigitalSecondsGraphicCircularView *)height addSubview:height->_timeLabel];
  }

  return height;
}

- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason
{
  providerCopy = provider;
  metadata = [providerCopy metadata];
  v7 = [metadata objectForKey:@"NTKDigitalSecondsGraphicCircularViewOverrideDateKey"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    selfCopy2 = self;
    v9 = v7;
  }

  else
  {
    selfCopy2 = self;
    v9 = 0;
  }

  [(NTKDigitalSecondsGraphicCircularView *)selfCopy2 setOverrideDate:v9];
  tritium_isTritiumInactiveFullColorImageProvider = [providerCopy tritium_isTritiumInactiveFullColorImageProvider];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_72F4;
  v14[3] = &unk_10528;
  v15 = tritium_isTritiumInactiveFullColorImageProvider;
  v11 = objc_retainBlock(v14);
  timeLabel = [(NTKDigitalSecondsGraphicCircularView *)self timeLabel];
  (v11[2])(v11, timeLabel);
  filledSecondsDialView = [(NTKDigitalSecondsGraphicCircularView *)self filledSecondsDialView];
  (v11[2])(v11, filledSecondsDialView);
  [(NTKDigitalSecondsGraphicCircularView *)self _updateProgress];
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  filterProvider = [(NTKDigitalSecondsGraphicCircularView *)self filterProvider];
  device = [filterProvider device];
  v7 = NTKShowGossamerUI();

  if (v7)
  {
    filterProvider2 = [(NTKDigitalSecondsGraphicCircularView *)self filterProvider];
    v20 = [filterProvider2 colorForView:self accented:1];

    v9 = +[UIColor systemOrangeColor];
    filledSecondsDialView2 = NTKInterpolateBetweenColors();

    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    unfilledSecondsDialView = [(NTKDigitalSecondsGraphicCircularView *)self unfilledSecondsDialView];
    v12 = [filledSecondsDialView2 colorWithAlphaComponent:self->_inactiveTickAccentAlpha];
    [unfilledSecondsDialView setTickColor:v12];

    filledSecondsDialView = [(NTKDigitalSecondsGraphicCircularView *)self filledSecondsDialView];
    v14 = [filledSecondsDialView2 colorWithAlphaComponent:self->_activeTickAccentAlpha];
    [filledSecondsDialView setTickColor:v14];

    +[CATransaction commit];
    filterProvider3 = [(NTKDigitalSecondsGraphicCircularView *)self filterProvider];
    layer = [filterProvider3 colorForView:self accented:0];

    [(UILabel *)self->_timeLabel setTextColor:layer];
  }

  else
  {
    _filterStyle = [objc_opt_class() _filterStyle];
    filterProvider4 = [(NTKDigitalSecondsGraphicCircularView *)self filterProvider];
    v20 = [filterProvider4 filtersForView:self style:_filterStyle fraction:fraction];

    v19 = v20;
    if (!v20)
    {
      goto LABEL_6;
    }

    filledSecondsDialView2 = [(NTKDigitalSecondsGraphicCircularView *)self filledSecondsDialView];
    layer = [filledSecondsDialView2 layer];
    [layer setFilters:v20];
  }

  v19 = v20;
LABEL_6:
}

- (void)updateMonochromeColor
{
  filterProvider = [(NTKDigitalSecondsGraphicCircularView *)self filterProvider];
  device = [filterProvider device];
  v5 = NTKShowGossamerUI();

  if (v5)
  {
    filterProvider2 = [(NTKDigitalSecondsGraphicCircularView *)self filterProvider];
    v17 = [filterProvider2 colorForView:self accented:1];

    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    unfilledSecondsDialView = [(NTKDigitalSecondsGraphicCircularView *)self unfilledSecondsDialView];
    v8 = [v17 colorWithAlphaComponent:self->_inactiveTickAccentAlpha];
    [unfilledSecondsDialView setTickColor:v8];

    filledSecondsDialView = [(NTKDigitalSecondsGraphicCircularView *)self filledSecondsDialView];
    v10 = [v17 colorWithAlphaComponent:self->_activeTickAccentAlpha];
    [filledSecondsDialView setTickColor:v10];

    +[CATransaction commit];
    filterProvider3 = [(NTKDigitalSecondsGraphicCircularView *)self filterProvider];
    filledSecondsDialView2 = [filterProvider3 colorForView:self accented:0];

    [(UILabel *)self->_timeLabel setTextColor:filledSecondsDialView2];
  }

  else
  {
    _filterStyle = [objc_opt_class() _filterStyle];
    filterProvider4 = [(NTKDigitalSecondsGraphicCircularView *)self filterProvider];
    v17 = [filterProvider4 filtersForView:self style:_filterStyle];

    v15 = v17;
    if (!v17)
    {
      goto LABEL_6;
    }

    filledSecondsDialView2 = [(NTKDigitalSecondsGraphicCircularView *)self filledSecondsDialView];
    layer = [filledSecondsDialView2 layer];
    [layer setFilters:v17];
  }

  v15 = v17;
LABEL_6:
}

- (void)_startClockUpdates
{
  clockTimerToken = [(NTKDigitalSecondsGraphicCircularView *)self clockTimerToken];
  if (!clockTimerToken)
  {
    objc_initWeak(&location, self);
    v4 = +[CLKClockTimer sharedInstance];
    v5 = _NSConcreteStackBlock;
    v6 = 3221225472;
    v7 = sub_7888;
    v8 = &unk_104A0;
    objc_copyWeak(&v9, &location);
    clockTimerToken = [v4 startUpdatesWithUpdateFrequency:1 withHandler:&v5 identificationLog:&stru_10598];

    [(NTKDigitalSecondsGraphicCircularView *)self setClockTimerToken:clockTimerToken, v5, v6, v7, v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)_stopClockUpdates
{
  clockTimerToken = [(NTKDigitalSecondsGraphicCircularView *)self clockTimerToken];
  if (clockTimerToken)
  {
    v5 = clockTimerToken;
    v4 = +[CLKClockTimer sharedInstance];
    [v4 stopUpdatesForToken:v5];

    [(NTKDigitalSecondsGraphicCircularView *)self setClockTimerToken:0];
    clockTimerToken = v5;
  }
}

- (void)_updateProgress
{
  overrideDate = [(NTKDigitalSecondsGraphicCircularView *)self overrideDate];
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
  v7 = +[NSCalendar currentCalendar];
  v8 = [v7 component:128 fromDate:v6];
  v9 = (v8 % 60) / 60.0;
  timeLabel = [(NTKDigitalSecondsGraphicCircularView *)self timeLabel];
  v11 = [NSNumber numberWithInteger:v8];
  v12 = [NSNumberFormatter localizedStringFromNumber:v11 numberStyle:0];

  filledSecondsDialView = [(NTKDigitalSecondsGraphicCircularView *)self filledSecondsDialView];
  +[CATransaction begin];
  [CATransaction setAnimationDuration:0.0];
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_7B74;
  v20 = &unk_10570;
  v24 = v9;
  v21 = filledSecondsDialView;
  v22 = timeLabel;
  v23 = v12;
  v14 = v12;
  v15 = timeLabel;
  v16 = filledSecondsDialView;
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

- (void)setLayoutConstants:(id *)constants
{
  self->_layoutConstants.secondsTickSize.width = v3;
  self->_layoutConstants.secondsTickSize.height = v4;
  self->_layoutConstants.secondsDialDiameter = v5;
  self->_layoutConstants.timeFontSize = v6;
}

@end