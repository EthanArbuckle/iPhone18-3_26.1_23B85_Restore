@interface NTKBigNumeralsDigitalTimeView
- (NTKBigNumeralsDigitalTimeView)initWithDevice:(id)device;
- (NTKBigNumeralsDigitalTimeViewDelegate)delegate;
- (void)_updateLabels;
- (void)applyColorPalette:(id)palette;
- (void)applyRainbowColorTransitionWithFraction:(double)fraction colorPalette:(id)palette;
- (void)applyStyle:(unint64_t)style;
- (void)applyTransitionFraction:(double)fraction fromStyle:(unint64_t)style toStyle:(unint64_t)toStyle;
- (void)applyTransitionFraction:(double)fraction fromTypeface:(unint64_t)typeface toTypeface:(unint64_t)toTypeface;
- (void)applyTypeface:(unint64_t)typeface;
- (void)cleanupTransition;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setOverrideDate:(id)date duration:(double)duration;
- (void)setShowingStatus:(BOOL)status;
@end

@implementation NTKBigNumeralsDigitalTimeView

- (NTKBigNumeralsDigitalTimeView)initWithDevice:(id)device
{
  deviceCopy = device;
  v38.receiver = self;
  v38.super_class = NTKBigNumeralsDigitalTimeView;
  v6 = [(NTKBigNumeralsDigitalTimeView *)&v38 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
    v7->_statusBarTransitionFraction = 0.0;
    v8 = objc_opt_new();
    timeLabelsContainerView = v7->_timeLabelsContainerView;
    v7->_timeLabelsContainerView = v8;

    [(NTKBigNumeralsDigitalTimeView *)v7 addSubview:v7->_timeLabelsContainerView];
    v10 = [NTKBigNumeralsDigitalColorPalette multicolorAxialGradientLayerForColor:3012 device:deviceCopy];
    gradientLayer = v7->_gradientLayer;
    v7->_gradientLayer = v10;

    layer = [(NTKBigNumeralsDigitalTimeView *)v7 layer];
    [layer insertSublayer:v7->_gradientLayer atIndex:0];

    v13 = objc_alloc_init(CALayer);
    topLabelColorLayer = v7->_topLabelColorLayer;
    v7->_topLabelColorLayer = v13;

    layer2 = [(NTKBigNumeralsDigitalTimeView *)v7 layer];
    [layer2 insertSublayer:v7->_topLabelColorLayer above:v7->_gradientLayer];

    v16 = objc_alloc_init(CALayer);
    bottomLabelColorLayer = v7->_bottomLabelColorLayer;
    v7->_bottomLabelColorLayer = v16;

    layer3 = [(NTKBigNumeralsDigitalTimeView *)v7 layer];
    [layer3 insertSublayer:v7->_bottomLabelColorLayer above:v7->_gradientLayer];

    sub_2D6C(deviceCopy, v36);
    v19 = v37;
    if ([deviceCopy deviceCategory] == &dword_0 + 3)
    {
      v20 = @"A";
    }

    else
    {
      if ([deviceCopy deviceCategory] != &dword_4)
      {
        v22 = @"__TokyoFontDO";
        v21 = @"__TokyoFontD";
        goto LABEL_8;
      }

      v20 = @"G";
    }

    v21 = [@"__TokyoFontD" stringByAppendingString:v20];
    v22 = [@"__TokyoFontDO" stringByAppendingString:v20];
LABEL_8:
    LOBYTE(v31) = 0;
    v23 = [[NTKBigNumeralsTimeComponentLabel alloc] initWithDevice:deviceCopy timeComponent:0 fontVariant:1 filledFontSectName:v21 outlineFontSectName:v22 dsoHandle:&dword_0 fontSize:v19 useLigatures:v31];
    topLabel = v7->_topLabel;
    v7->_topLabel = v23;

    [(NTKBigNumeralsTimeComponentLabel *)v7->_topLabel setTextAlignment:2];
    [(UIView *)v7->_timeLabelsContainerView addSubview:v7->_topLabel];
    LOBYTE(v32) = 0;
    v25 = [[NTKBigNumeralsTimeComponentLabel alloc] initWithDevice:deviceCopy timeComponent:1 fontVariant:1 filledFontSectName:v21 outlineFontSectName:v22 dsoHandle:&dword_0 fontSize:v19 useLigatures:v32];
    bottomLabel = v7->_bottomLabel;
    v7->_bottomLabel = v25;

    [(NTKBigNumeralsTimeComponentLabel *)v7->_bottomLabel setTextAlignment:2];
    [(UIView *)v7->_timeLabelsContainerView addSubview:v7->_bottomLabel];
    [(NTKBigNumeralsDigitalTimeView *)v7 setMaskView:v7->_timeLabelsContainerView];
    objc_initWeak(&location, v7);
    v27 = +[CLKClockTimer sharedInstance];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_2164;
    v33[3] = &unk_C400;
    objc_copyWeak(&v34, &location);
    v28 = [v27 startUpdatesWithUpdateFrequency:0 withHandler:v33 identificationLog:&stru_C440];
    timerToken = v7->_timerToken;
    v7->_timerToken = v28;

    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[CLKClockTimer sharedInstance];
  [v3 stopUpdatesForToken:self->_timerToken];

  v4.receiver = self;
  v4.super_class = NTKBigNumeralsDigitalTimeView;
  [(NTKBigNumeralsDigitalTimeView *)&v4 dealloc];
}

- (void)setShowingStatus:(BOOL)status
{
  if (self->_showingStatus != status)
  {
    v15 = v6;
    v16 = v5;
    v17 = v3;
    v18 = v4;
    statusCopy = status;
    self->_showingStatus = status;
    v14 = 0;
    v12 = 0u;
    memset(v13, 0, sizeof(v13));
    sub_2D6C(self->_device, &v12);
    v9 = &v13[1] + 1;
    if (!statusCopy)
    {
      v9 = v13;
    }

    v10 = *v9;
    v11 = 0.0;
    if (statusCopy)
    {
      v11 = 1.0;
    }

    self->_statusBarTransitionFraction = v11;
    [(NTKBigNumeralsTimeComponentLabel *)self->_topLabel setFontSize:v10];
    [(NTKBigNumeralsTimeComponentLabel *)self->_bottomLabel setFontSize:v10];
    [(NTKBigNumeralsDigitalTimeView *)self setNeedsLayout];
  }
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  objc_storeStrong(&self->_overrideDate, date);

  [(NTKBigNumeralsDigitalTimeView *)self _updateLabels];
}

- (void)_updateLabels
{
  overrideDate = self->_overrideDate;
  if (overrideDate)
  {
    v4 = overrideDate;
  }

  else
  {
    v4 = +[NTKDate faceDate];
  }

  v6 = v4;
  [(NTKBigNumeralsTimeComponentLabel *)self->_topLabel setDate:v4];
  [(NTKBigNumeralsTimeComponentLabel *)self->_bottomLabel setDate:v6];
  [(NTKBigNumeralsDigitalTimeView *)self setNeedsLayout];
  [(NTKBigNumeralsDigitalTimeView *)self layoutIfNeeded];
  delegate = [(NTKBigNumeralsDigitalTimeView *)self delegate];
  [delegate bigNumeralsDigitalTimeViewDidChangeTime];
}

- (void)layoutSubviews
{
  v47 = 0.0;
  memset(v46, 0, sizeof(v46));
  sub_2D6C(self->_device, v46);
  [(NTKBigNumeralsDigitalTimeView *)self bounds];
  v4 = v3;
  v42 = v5;
  statusBarTransitionFraction = self->_statusBarTransitionFraction;
  CLKInterpolateBetweenFloatsClipped();
  v8 = v7;
  v9 = self->_statusBarTransitionFraction;
  CLKInterpolateBetweenFloatsClipped();
  v39 = v10;
  v40 = *(v46 + 1);
  [(NTKBigNumeralsTimeComponentLabel *)self->_topLabel sizeToFit];
  [(NTKBigNumeralsTimeComponentLabel *)self->_bottomLabel sizeToFit];
  [(NTKBigNumeralsTimeComponentLabel *)self->_topLabel bounds];
  v12 = v11;
  v44 = v13;
  [(NTKBigNumeralsTimeComponentLabel *)self->_bottomLabel bounds];
  v15 = v14;
  v17 = v16;
  [(NTKBigNumeralsTimeComponentLabel *)self->_topLabel _lastLineBaseline];
  rect = v12;
  v18 = v4 - v12 - v8;
  v19 = v42 * 0.5;
  v43 = v42 * 0.5 + v39 - v20;
  [(NTKBigNumeralsTimeComponentLabel *)self->_topLabel setFrame:v18];
  [(NTKBigNumeralsTimeComponentLabel *)self->_bottomLabel _lastLineBaseline];
  v21 = v15;
  v41 = v15;
  v22 = v4 - v15 - v8;
  v24 = v19 + v40 - v23;
  [(NTKBigNumeralsTimeComponentLabel *)self->_bottomLabel setFrame:v22, v24, v21, v17];
  [CATransaction setDisableActions:1];
  v25 = v47;
  v26 = v43 - v47;
  v27 = v18 - v47;
  font = [(NTKBigNumeralsTimeComponentLabel *)self->_topLabel font];
  [font ascender];
  v30 = v29 + v25 * 2.0;

  [(CALayer *)self->_topLabelColorLayer setFrame:v27, v26, rect + v25 * 2.0, v30];
  v31 = v24 - v25;
  font2 = [(NTKBigNumeralsTimeComponentLabel *)self->_topLabel font];
  [font2 ascender];
  v34 = v33 + v25 * 2.0;

  [(CALayer *)self->_bottomLabelColorLayer setFrame:v22 - v25, v31, v41 + v25 * 2.0, v34];
  if (v18 >= v22)
  {
    v35 = v22;
  }

  else
  {
    v35 = v18;
  }

  v49.origin.x = v18;
  v49.size.height = v44;
  v49.origin.y = v43;
  v49.size.width = rect;
  v36 = CGRectGetMaxX(v49) - v35;
  [(CALayer *)self->_bottomLabelColorLayer frame];
  MaxY = CGRectGetMaxY(v50);
  [(CALayer *)self->_topLabelColorLayer frame];
  [(CAGradientLayer *)self->_gradientLayer setFrame:v35, v43, v36, MaxY - v38];

  [CATransaction setDisableActions:0];
}

- (void)applyTypeface:(unint64_t)typeface
{
  self->_typeface = typeface;
  [(NTKBigNumeralsTimeComponentLabel *)self->_topLabel setTypeface:?];
  bottomLabel = self->_bottomLabel;

  [(NTKBigNumeralsTimeComponentLabel *)bottomLabel setTypeface:typeface];
}

- (void)applyTransitionFraction:(double)fraction fromTypeface:(unint64_t)typeface toTypeface:(unint64_t)toTypeface
{
  if (fraction <= 0.5)
  {
    toTypefaceCopy = typeface;
  }

  else
  {
    toTypefaceCopy = toTypeface;
  }

  self->_typeface = toTypefaceCopy;
  [NTKBigNumeralsTimeComponentLabel applyTransitionFraction:"applyTransitionFraction:fromTypeface:toTypeface:" fromTypeface:fraction toTypeface:?];
  bottomLabel = self->_bottomLabel;

  [(NTKBigNumeralsTimeComponentLabel *)bottomLabel applyTransitionFraction:typeface fromTypeface:toTypeface toTypeface:fraction];
}

- (void)applyStyle:(unint64_t)style
{
  self->_style = style;
  [(NTKBigNumeralsTimeComponentLabel *)self->_topLabel setStyle:style == 2];
  bottomLabel = self->_bottomLabel;

  [(NTKBigNumeralsTimeComponentLabel *)bottomLabel setStyle:style - 1 < 2];
}

- (void)applyTransitionFraction:(double)fraction fromStyle:(unint64_t)style toStyle:(unint64_t)toStyle
{
  if (fraction <= 0.5)
  {
    toStyleCopy = style;
  }

  else
  {
    toStyleCopy = toStyle;
  }

  self->_style = toStyleCopy;
  [(NTKBigNumeralsTimeComponentLabel *)self->_topLabel applyTransitionFraction:style == 2 fromStyle:toStyle == 2 toStyle:fraction];
  bottomLabel = self->_bottomLabel;

  [(NTKBigNumeralsTimeComponentLabel *)bottomLabel applyTransitionFraction:style - 1 < 2 fromStyle:toStyle - 1 < 2 toStyle:fraction];
}

- (void)applyColorPalette:(id)palette
{
  paletteCopy = palette;
  objc_storeStrong(&self->_colorPalette, palette);
  hourDigits = [paletteCopy hourDigits];
  minuteDigits = [paletteCopy minuteDigits];
  [CATransaction setDisableActions:1];
  [(CALayer *)self->_topLabelColorLayer opacity];
  if (v7 == 1.0)
  {
    -[CALayer setBackgroundColor:](self->_topLabelColorLayer, "setBackgroundColor:", [hourDigits CGColor]);
  }

  else
  {
    [(CAGradientLayer *)self->_gradientLayer setHidden:0];
  }

  [(CALayer *)self->_bottomLabelColorLayer opacity];
  if (v8 == 1.0)
  {
    -[CALayer setBackgroundColor:](self->_bottomLabelColorLayer, "setBackgroundColor:", [minuteDigits CGColor]);
    [(CAGradientLayer *)self->_gradientLayer setHidden:1];
  }

  [CATransaction setDisableActions:0];
}

- (void)applyRainbowColorTransitionWithFraction:(double)fraction colorPalette:(id)palette
{
  paletteCopy = palette;
  [CATransaction setDisableActions:1];
  [(CAGradientLayer *)self->_gradientLayer setHidden:fabs(fraction) < 0.00000011920929];
  v6 = 1.0 - fraction;
  *&fraction = 1.0 - fraction;
  LODWORD(v6) = LODWORD(fraction);
  [(CALayer *)self->_topLabelColorLayer setOpacity:v6];
  LODWORD(v7) = LODWORD(fraction);
  [(CALayer *)self->_bottomLabelColorLayer setOpacity:v7];
  if (([(CAGradientLayer *)self->_gradientLayer isHidden]& 1) == 0)
  {
    hourDigits = [paletteCopy hourDigits];
    -[CALayer setBackgroundColor:](self->_topLabelColorLayer, "setBackgroundColor:", [hourDigits CGColor]);

    minuteDigits = [paletteCopy minuteDigits];
    -[CALayer setBackgroundColor:](self->_bottomLabelColorLayer, "setBackgroundColor:", [minuteDigits CGColor]);
  }

  [CATransaction setDisableActions:0];
}

- (void)cleanupTransition
{
  [(NTKBigNumeralsTimeComponentLabel *)self->_topLabel cleanupTransition];
  bottomLabel = self->_bottomLabel;

  [(NTKBigNumeralsTimeComponentLabel *)bottomLabel cleanupTransition];
}

- (NTKBigNumeralsDigitalTimeViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end