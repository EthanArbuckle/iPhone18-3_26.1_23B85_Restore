@interface NTKBigNumeralsAnalogBackgroundView
- (NTKBigNumeralsAnalogBackgroundView)initWithDevice:(id)device;
- (void)_updateHourLabelText;
- (void)applyDataMode:(int64_t)mode;
- (void)applyTransitionFraction:(double)fraction fromPigmentOption:(id)option toPigmentOption:(id)pigmentOption palette:(id)palette;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setOverrideDate:(id)date duration:(double)duration;
- (void)setShowingStatus:(BOOL)status;
- (void)updateHourLabelColorForColorOption:(id)option palette:(id)palette;
@end

@implementation NTKBigNumeralsAnalogBackgroundView

- (NTKBigNumeralsAnalogBackgroundView)initWithDevice:(id)device
{
  deviceCopy = device;
  v32.receiver = self;
  v32.super_class = NTKBigNumeralsAnalogBackgroundView;
  v6 = [(NTKBigNumeralsAnalogBackgroundView *)&v32 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
    v8 = [NTKBigNumeralsAnalogColorPalette multicolorAxialGradientLayerForColor:3000 device:deviceCopy];
    gradientLayer = v7->_gradientLayer;
    v7->_gradientLayer = v8;

    v10 = +[CALayer layer];
    labelColorLayer = v7->_labelColorLayer;
    v7->_labelColorLayer = v10;

    layer = [(NTKBigNumeralsAnalogBackgroundView *)v7 layer];
    [layer insertSublayer:v7->_gradientLayer atIndex:0];

    layer2 = [(NTKBigNumeralsAnalogBackgroundView *)v7 layer];
    [layer2 insertSublayer:v7->_labelColorLayer above:v7->_gradientLayer];

    v15 = sub_2B50(v14, deviceCopy);
    if ([(CLKDevice *)v7->_device deviceCategory]== &dword_0 + 3)
    {
      v16 = @"A";
    }

    else
    {
      if ([deviceCopy deviceCategory] != &dword_4)
      {
        v18 = @"__TokyoFontAO";
        v17 = @"__TokyoFontA";
        goto LABEL_8;
      }

      v16 = @"G";
    }

    v17 = [@"__TokyoFontA" stringByAppendingString:v16];
    v18 = [@"__TokyoFontAO" stringByAppendingString:v16];
LABEL_8:
    LOBYTE(v28) = 1;
    v19 = [[NTKBigNumeralsTimeComponentLabel alloc] initWithDevice:deviceCopy timeComponent:0 fontVariant:0 filledFontSectName:v17 outlineFontSectName:v18 dsoHandle:&dword_0 fontSize:v15 useLigatures:v28];
    hourLabel = v7->_hourLabel;
    v7->_hourLabel = v19;

    [(NTKBigNumeralsTimeComponentLabel *)v7->_hourLabel setTextAlignment:1];
    v21 = objc_opt_new();
    maskView = v7->_maskView;
    v7->_maskView = v21;

    [(UIView *)v7->_maskView addSubview:v7->_hourLabel];
    [(NTKBigNumeralsAnalogBackgroundView *)v7 setMaskView:v7->_maskView];
    v23 = +[NSNotificationCenter defaultCenter];
    [v23 addObserver:v7 selector:"_updateHourLabelText" name:UIApplicationSignificantTimeChangeNotification object:0];

    objc_initWeak(&location, v7);
    v24 = +[CLKClockTimer sharedInstance];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_2450;
    v29[3] = &unk_C340;
    objc_copyWeak(&v30, &location);
    v25 = [v24 startUpdatesWithUpdateFrequency:0 withHandler:v29 identificationLog:&stru_C380];
    timerToken = v7->_timerToken;
    v7->_timerToken = v25;

    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[CLKClockTimer sharedInstance];
  [v3 stopUpdatesForToken:self->_timerToken];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = NTKBigNumeralsAnalogBackgroundView;
  [(NTKBigNumeralsAnalogBackgroundView *)&v5 dealloc];
}

- (void)layoutSubviews
{
  v22.receiver = self;
  v22.super_class = NTKBigNumeralsAnalogBackgroundView;
  [(NTKBigNumeralsAnalogBackgroundView *)&v22 layoutSubviews];
  [(NTKBigNumeralsTimeComponentLabel *)self->_hourLabel sizeToFit];
  [(NTKBigNumeralsAnalogBackgroundView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(NTKBigNumeralsTimeComponentLabel *)self->_hourLabel frame];
  v23.origin.x = v4;
  v23.origin.y = v6;
  v23.size.width = v8;
  v23.size.height = v10;
  CGRectGetHeight(v23);
  [(NTKBigNumeralsTimeComponentLabel *)self->_hourLabel _lastLineBaseline:sub_2B50(v11];
  device = self->_device;
  CLKRectCenteredXInRectForDevice();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [(NTKBigNumeralsTimeComponentLabel *)self->_hourLabel setFrame:?];
  font = [(NTKBigNumeralsTimeComponentLabel *)self->_hourLabel font];
  [font ascender];
  v21 = v20 + 2.0;

  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  [(CAGradientLayer *)self->_gradientLayer setFrame:v14, v16, v18, v21];
  [(CALayer *)self->_labelColorLayer setFrame:v14, v16, v18, v21];
  +[CATransaction commit];
}

- (void)_updateHourLabelText
{
  hourLabel = self->_hourLabel;
  if (self->_overrideDate)
  {
    [(NTKBigNumeralsTimeComponentLabel *)self->_hourLabel setDate:?];
  }

  else
  {
    v4 = +[NTKDate faceDate];
    [(NTKBigNumeralsTimeComponentLabel *)hourLabel setDate:v4];
  }

  [(NTKBigNumeralsAnalogBackgroundView *)self setNeedsLayout];

  [(NTKBigNumeralsAnalogBackgroundView *)self layoutIfNeeded];
}

- (void)updateHourLabelColorForColorOption:(id)option palette:(id)palette
{
  paletteCopy = palette;
  optionCopy = option;
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  [NTKBigNumeralsAnalogColorPalette timeColorOpacityForEditOption:optionCopy];
  v8 = v7;

  *&v9 = v8;
  [(CALayer *)self->_labelColorLayer setOpacity:v9];
  [(CALayer *)self->_labelColorLayer opacity];
  gradientLayer = self->_gradientLayer;
  if (v11 == 1.0)
  {
    [(CAGradientLayer *)gradientLayer setHidden:1];
    primaryColor = [paletteCopy primaryColor];
    -[CALayer setBackgroundColor:](self->_labelColorLayer, "setBackgroundColor:", [primaryColor CGColor]);
  }

  else
  {
    [(CAGradientLayer *)gradientLayer setHidden:0];
  }

  +[CATransaction commit];
}

- (void)applyTransitionFraction:(double)fraction fromPigmentOption:(id)option toPigmentOption:(id)pigmentOption palette:(id)palette
{
  paletteCopy = palette;
  [NTKBigNumeralsAnalogColorPalette timeColorOpacityForFraction:option fromEditOption:pigmentOption toEditOption:fraction];
  v12 = v11;
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  [(CAGradientLayer *)self->_gradientLayer setHidden:v12 == 1.0];
  primaryColor = [paletteCopy primaryColor];

  -[CALayer setBackgroundColor:](self->_labelColorLayer, "setBackgroundColor:", [primaryColor CGColor]);
  *&v14 = v12;
  [(CALayer *)self->_labelColorLayer setOpacity:v14];

  +[CATransaction commit];
}

- (void)setShowingStatus:(BOOL)status
{
  if (self->_showingStatus != status)
  {
    v11 = v4;
    v12 = v3;
    statusCopy = status;
    self->_showingStatus = status;
    v9 = sub_2B50(self, self->_device);
    if (statusCopy)
    {
      v9 = v10;
    }

    [(NTKBigNumeralsTimeComponentLabel *)self->_hourLabel setFontSize:v9, v11, v12, v5];

    [(NTKBigNumeralsAnalogBackgroundView *)self setNeedsLayout];
  }
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  objc_storeStrong(&self->_overrideDate, date);

  [(NTKBigNumeralsAnalogBackgroundView *)self _updateHourLabelText];
}

- (void)applyDataMode:(int64_t)mode
{
  if (mode <= 5 && ((1 << mode) & 0x32) != 0)
  {
    [(NTKBigNumeralsAnalogBackgroundView *)self _updateHourLabelText];
  }
}

@end