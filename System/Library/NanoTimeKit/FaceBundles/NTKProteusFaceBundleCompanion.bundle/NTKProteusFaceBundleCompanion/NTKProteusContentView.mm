@interface NTKProteusContentView
+ (double)_backgroundFraction:(id)fraction;
+ (double)_rainbowFraction:(id)fraction;
- (CGPoint)_scaleForBackgroundFraction:(double)fraction;
- (NTKProteusContentView)initWithFrame:(CGRect)frame style:(unint64_t)style backgroundStyle:(unint64_t)backgroundStyle colorPalette:(id)palette device:(id)device;
- (double)_backgroundFraction;
- (double)_rainbowFraction;
- (id)_digitLayersForStyle:(unint64_t)style;
- (id)_fontLoader;
- (id)_fontWithWeight:(double)weight style:(unint64_t)style usesNotch:(BOOL)notch;
- (id)createProteusDigitAtIndex:(unint64_t)index style:(unint64_t)style;
- (void)_activate:(BOOL)_activate digitLayersForStyle:(unint64_t)style;
- (void)_applyRainbowFraction:(double)fraction backgroundFraction:(double)backgroundFraction;
- (void)_setLabelAlpha:(double)alpha forLabels:(id)labels;
- (void)_updateColorPalette;
- (void)_updateScale:(CGPoint)scale forLabels:(id)labels;
- (void)_updateScaleBackgroundFraction:(double)fraction;
- (void)_updateScaleTransitionFraction:(double)fraction forLabels:(id)labels;
- (void)_updateScaleTritiumFraction:(double)fraction;
- (void)applyTransitionFraction:(double)fraction fromStyle:(unint64_t)style toStyle:(unint64_t)toStyle;
- (void)applyTransitionTritiumOnWithFraction:(double)fraction;
- (void)layoutSubviews;
- (void)motionCompleted;
- (void)setColorPalette:(id)palette;
- (void)setDigitWeight:(double)weight forDigit:(unint64_t)digit;
- (void)setGradientMaskRotation:(double)rotation;
- (void)setStyle:(unint64_t)style;
@end

@implementation NTKProteusContentView

- (NTKProteusContentView)initWithFrame:(CGRect)frame style:(unint64_t)style backgroundStyle:(unint64_t)backgroundStyle colorPalette:(id)palette device:(id)device
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  paletteCopy = palette;
  deviceCopy = device;
  v47.receiver = self;
  v47.super_class = NTKProteusContentView;
  height = [(NTKProteusContentView *)&v47 initWithFrame:x, y, width, height];
  v18 = height;
  if (height)
  {
    objc_storeStrong(&height->_device, device);
    v19 = [NSMutableArray arrayWithObjects:&off_10E70, &off_10E70, &off_10E70, &off_10E70, &off_10E70, &off_10E70, &off_10E70, &off_10E70, &off_10E70, &off_10E70, &off_10E70, 0];
    digitWeights = v18->_digitWeights;
    v18->_digitWeights = v19;

    v21 = objc_alloc_init(UIView);
    digitsMaskView = v18->_digitsMaskView;
    v18->_digitsMaskView = v21;

    v23 = objc_alloc_init(UIView);
    digitsSoftMaskView = v18->_digitsSoftMaskView;
    v18->_digitsSoftMaskView = v23;

    v25 = objc_alloc_init(UIView);
    digitsSharpMaskView = v18->_digitsSharpMaskView;
    v18->_digitsSharpMaskView = v25;

    [(UIView *)v18->_digitsMaskView addSubview:v18->_digitsSoftMaskView];
    [(UIView *)v18->_digitsMaskView addSubview:v18->_digitsSharpMaskView];
    v27 = NTKImageNamed();
    rainbowGradientBackgroundImage = v18->_rainbowGradientBackgroundImage;
    v18->_rainbowGradientBackgroundImage = v27;

    v29 = [NTKProteusFaceBundle imageWithName:@"Pride Gradient_626x626"];
    rainbowGradientMaskImage = v18->_rainbowGradientMaskImage;
    v18->_rainbowGradientMaskImage = v29;

    v31 = [[UIImageView alloc] initWithImage:v18->_rainbowGradientMaskImage];
    gradientMaskView = v18->_gradientMaskView;
    v18->_gradientMaskView = v31;

    [(UIView *)v18->_gradientMaskView setContentMode:4];
    v33 = [[UIImageView alloc] initWithImage:v18->_rainbowGradientBackgroundImage];
    gradientBackgroundView = v18->_gradientBackgroundView;
    v18->_gradientBackgroundView = v33;

    [(UIView *)v18->_gradientBackgroundView setContentMode:0];
    v35 = [UIView alloc];
    [(NTKProteusContentView *)v18 bounds];
    v36 = [v35 initWithFrame:?];
    colorBackgroundView = v18->_colorBackgroundView;
    v18->_colorBackgroundView = v36;

    v38 = v18->_colorBackgroundView;
    v39 = +[UIColor purpleColor];
    [(UIView *)v38 setBackgroundColor:v39];

    v40 = objc_alloc_init(UIView);
    colorMaskView = v18->_colorMaskView;
    v18->_colorMaskView = v40;

    v42 = objc_alloc_init(UIView);
    digitsView = v18->_digitsView;
    v18->_digitsView = v42;

    [(UIView *)v18->_digitsView addSubview:v18->_gradientMaskView];
    [(UIView *)v18->_digitsView addSubview:v18->_colorMaskView];
    [(UIView *)v18->_digitsView setMaskView:v18->_digitsMaskView];
    [(NTKProteusContentView *)v18 addSubview:v18->_gradientBackgroundView];
    [(NTKProteusContentView *)v18 addSubview:v18->_colorBackgroundView];
    [(NTKProteusContentView *)v18 addSubview:v18->_digitsView];
    v44 = 1.0;
    if (backgroundStyle != 1)
    {
      v44 = 0.0;
    }

    [(NTKProteusContentView *)v18 _applyRainbowFraction:0.0 backgroundFraction:v44];
    [(NTKProteusContentView *)v18 setColorPalette:paletteCopy];
    v18->_style = 2;
    [(NTKProteusContentView *)v18 setStyle:style];
    v45 = +[UIColor clearColor];
    [(NTKProteusContentView *)v18 setBackgroundColor:v45];
  }

  return v18;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = NTKProteusContentView;
  [(NTKProteusContentView *)&v3 layoutSubviews];
  [(NTKProteusContentView *)self bounds];
  [(UIView *)self->_gradientMaskView setBounds:?];
  [(NTKProteusContentView *)self center];
  [(UIView *)self->_gradientMaskView setCenter:?];
  [(NTKProteusContentView *)self bounds];
  [(UIView *)self->_gradientBackgroundView setBounds:?];
  [(NTKProteusContentView *)self center];
  [(UIView *)self->_gradientBackgroundView setCenter:?];
  [(NTKProteusContentView *)self bounds];
  [(UIView *)self->_colorBackgroundView setBounds:?];
  [(NTKProteusContentView *)self center];
  [(UIView *)self->_colorBackgroundView setCenter:?];
  [(NTKProteusContentView *)self bounds];
  [(UIView *)self->_colorMaskView setBounds:?];
  [(NTKProteusContentView *)self center];
  [(UIView *)self->_colorMaskView setCenter:?];
}

- (void)_activate:(BOOL)_activate digitLayersForStyle:(unint64_t)style
{
  _activateCopy = _activate;
  v7 = &OBJC_IVAR___NTKProteusContentView__roundedHourDigits;
  if (style != 1)
  {
    _activateCopy2 = _activate;
    if (style)
    {
      goto LABEL_5;
    }

    v7 = &OBJC_IVAR___NTKProteusContentView__regularHourDigits;
  }

  _activateCopy2 = *(&self->super.super.super.isa + *v7) != 0;
LABEL_5:
  if (_activateCopy2 != _activate)
  {
    v9 = _NTKLoggingObjectForDomain();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (_activateCopy)
    {
      if (v10)
      {
        *buf = 134218240;
        styleCopy2 = style;
        v26 = 2048;
        selfCopy2 = self;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Proteus content-Activating font style %lu [%p]", buf, 0x16u);
      }

      _fontLoader = [(NTKProteusContentView *)self _fontLoader];
      [_fontLoader cacheFonts:1 ofType:style != 0 forClient:self];

      v12 = [(NTKProteusContentView *)self _digitLayersForStyle:style];
      v13 = style == 1;
      if (style <= 1)
      {
        if (style == 1)
        {
          v20 = &OBJC_IVAR___NTKProteusContentView__digitsSoftMaskView;
        }

        else
        {
          v20 = &OBJC_IVAR___NTKProteusContentView__digitsSharpMaskView;
        }

        v21 = &OBJC_IVAR___NTKProteusContentView__regularHourDigits;
        if (v13)
        {
          v21 = &OBJC_IVAR___NTKProteusContentView__roundedHourDigits;
        }

        objc_storeStrong((&self->super.super.super.isa + *v21), v12);
        v14 = *(&self->super.super.super.isa + *v20);
      }

      else
      {
        v14 = 0;
      }

      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_7104;
      v22[3] = &unk_10570;
      v23 = v14;
      _fontLoader2 = v14;
      [v12 enumerateObjectsUsingBlock:v22];
    }

    else
    {
      if (v10)
      {
        *buf = 134218240;
        styleCopy2 = style;
        v26 = 2048;
        selfCopy2 = self;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Proteus content-Deactivating font style %lu [%p]", buf, 0x16u);
      }

      v15 = &OBJC_IVAR___NTKProteusContentView__regularHourDigits;
      v16 = style != 0;
      if (style == 1)
      {
        v15 = &OBJC_IVAR___NTKProteusContentView__roundedHourDigits;
      }

      v17 = *v15;
      v12 = *(&self->super.super.super.isa + v17);
      v18 = *(&self->super.super.super.isa + v17);
      *(&self->super.super.super.isa + v17) = 0;

      [v12 enumerateObjectsUsingBlock:&stru_105B0];
      _fontLoader2 = [(NTKProteusContentView *)self _fontLoader];
      [_fontLoader2 cacheFonts:0 ofType:v16 forClient:self];
    }
  }
}

- (id)_digitLayersForStyle:(unint64_t)style
{
  v5 = [NSMutableArray arrayWithCapacity:12];
  [(NTKProteusContentView *)self bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  for (i = 1; i != 13; ++i)
  {
    v15 = [(NTKProteusContentView *)self createProteusDigitAtIndex:i style:style];
    [v15 setFrame:{v7, v9, v11, v13}];
    [v5 addObject:v15];
  }

  return v5;
}

- (id)createProteusDigitAtIndex:(unint64_t)index style:(unint64_t)style
{
  v7 = objc_alloc_init(UILabel);
  v8 = index - 1;
  v10 = index == 1 || index == 12;
  v11 = [NSNumber numberWithUnsignedInteger:index];
  stringValue = [v11 stringValue];
  [v7 setText:stringValue];

  v13 = [(NSMutableArray *)self->_digitWeights objectAtIndexedSubscript:v8];
  [v13 floatValue];
  v15 = [(NTKProteusContentView *)self _fontWithWeight:style style:v10 usesNotch:v14];
  [v7 setFont:v15];

  v16 = +[UIColor whiteColor];
  [v7 setTextColor:v16];

  return v7;
}

- (void)setDigitWeight:(double)weight forDigit:(unint64_t)digit
{
  v6 = digit - 1;
  v8 = digit == 1 || digit == 12;
  regularHourDigits = self->_regularHourDigits;
  if (regularHourDigits)
  {
    v10 = [(NSArray *)regularHourDigits objectAtIndex:digit - 1];
    v11 = [(NTKProteusContentView *)self _fontWithWeight:0 style:v8 usesNotch:weight];
    [v10 setFont:v11];
  }

  roundedHourDigits = self->_roundedHourDigits;
  if (roundedHourDigits)
  {
    v13 = [(NSArray *)roundedHourDigits objectAtIndex:v6];
    v14 = [(NTKProteusContentView *)self _fontWithWeight:1 style:v8 usesNotch:weight];
    [v13 setFont:v14];
  }

  v15 = [NSNumber numberWithDouble:weight];
  [(NSMutableArray *)self->_digitWeights setObject:v15 atIndexedSubscript:v6];
}

- (id)_fontWithWeight:(double)weight style:(unint64_t)style usesNotch:(BOOL)notch
{
  notchCopy = notch;
  _fontLoader = [(NTKProteusContentView *)self _fontLoader];
  v10 = _fontLoader;
  notchFraction = 0.0;
  if (notchCopy)
  {
    notchFraction = self->_notchFraction;
  }

  v12 = [_fontLoader neptuneFont:style != 0 weight:weight notch:notchFraction];

  return v12;
}

- (void)setGradientMaskRotation:(double)rotation
{
  gradientMaskView = self->_gradientMaskView;
  CGAffineTransformMakeRotation(&v4, rotation);
  [(UIView *)gradientMaskView setTransform:&v4];
}

- (id)_fontLoader
{
  v3 = self->_fontLoader;
  if (!v3)
  {
    v4 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Proteus content-getting shared font loader [%p]", &v7, 0xCu);
    }

    [(NTKProteusContentView *)self frame];
    v3 = [NTKProteusFontLoader sharedInstanceWithSize:v5];
    objc_storeStrong(&self->_fontLoader, v3);
  }

  return v3;
}

- (void)_updateScaleTransitionFraction:(double)fraction forLabels:(id)labels
{
  labelsCopy = labels;
  [(NTKProteusContentView *)self _backgroundFraction];
  [(NTKProteusContentView *)self _scaleForBackgroundFraction:?];
  CLKInterpolateBetweenPoints();
  [(NTKProteusContentView *)self _updateScale:labelsCopy forLabels:?];
}

- (void)_updateScaleBackgroundFraction:(double)fraction
{
  [(NTKProteusContentView *)self _scaleForBackgroundFraction:fraction];
  v5 = v4;
  v7 = v6;
  [(NTKProteusContentView *)self _updateScale:self->_regularHourDigits forLabels:?];
  roundedHourDigits = self->_roundedHourDigits;

  [(NTKProteusContentView *)self _updateScale:roundedHourDigits forLabels:v5, v7];
}

- (void)_updateScaleTritiumFraction:(double)fraction
{
  [(NTKProteusContentView *)self _backgroundFraction];
  [(NTKProteusContentView *)self _scaleForBackgroundFraction:?];
  device = [(NTKProteusContentView *)self device];
  NTKEnableAODVibrancy();

  CLKInterpolateBetweenPoints();
  v6 = v5;
  v8 = v7;
  [(NTKProteusContentView *)self _updateScale:self->_regularHourDigits forLabels:?];
  roundedHourDigits = self->_roundedHourDigits;

  [(NTKProteusContentView *)self _updateScale:roundedHourDigits forLabels:v6, v8];
}

- (CGPoint)_scaleForBackgroundFraction:(double)fraction
{
  v3 = 1.0;
  v4 = 1.0;
  if (fraction > 0.0)
  {
    sub_857C([(NTKProteusContentView *)self bounds], self->_device);
    CLKInterpolateBetweenFloatsClipped();
    v4 = v5;
    CLKInterpolateBetweenFloatsClipped();
    v3 = v6;
  }

  v7 = v4;
  result.y = v3;
  result.x = v7;
  return result;
}

- (void)_updateScale:(CGPoint)scale forLabels:(id)labels
{
  y = scale.y;
  x = scale.x;
  labelsCopy = labels;
  if (labelsCopy)
  {
    memset(&v10, 0, sizeof(v10));
    if (x == 0.0 && y == 0.0)
    {
      v7 = *&CGAffineTransformIdentity.c;
      *&v10.a = *&CGAffineTransformIdentity.a;
      *&v10.c = v7;
      *&v10.tx = *&CGAffineTransformIdentity.tx;
    }

    else
    {
      CGAffineTransformMakeScale(&v10, x, y);
    }

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_7974;
    v8[3] = &unk_105D0;
    v9 = v10;
    [labelsCopy enumerateObjectsUsingBlock:v8];
  }
}

- (void)setStyle:(unint64_t)style
{
  v5 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218240;
    styleCopy = style;
    v9 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Proteus content-Setting style %lu [%p]", &v7, 0x16u);
  }

  if (self->_style != style)
  {
    self->_style = style;
    [(NTKProteusContentView *)self _activate:1 digitLayersForStyle:style];
    if (style)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = 1.0;
    }

    [(NTKProteusContentView *)self _activate:0 digitLayersForStyle:style == 0];
    [(NTKProteusContentView *)self _setLabelAlpha:self->_regularHourDigits forLabels:v6];
    [(NTKProteusContentView *)self _setLabelAlpha:self->_roundedHourDigits forLabels:1.0 - v6];
    [(NTKProteusContentView *)self _backgroundFraction];
    [(NTKProteusContentView *)self _updateScaleBackgroundFraction:?];
  }
}

- (void)_setLabelAlpha:(double)alpha forLabels:(id)labels
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_7B74;
  v4[3] = &unk_105F0;
  *&v4[4] = alpha;
  [labels enumerateObjectsUsingBlock:v4];
}

- (double)_rainbowFraction
{
  v3 = objc_opt_class();
  colorPalette = self->_colorPalette;

  [v3 _rainbowFraction:colorPalette];
  return result;
}

+ (double)_rainbowFraction:(id)fraction
{
  fractionCopy = fraction;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    configuration = [fractionCopy configuration];
    pigmentEditOption = [configuration pigmentEditOption];
    if ([pigmentEditOption isRainbowColor])
    {
      v6 = 1.0;
    }

    else
    {
      v6 = 0.0;
    }

    goto LABEL_7;
  }

  objc_opt_class();
  v6 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    v7 = fractionCopy;
    configuration = [v7 fromPalette];
    pigmentEditOption = [v7 toPalette];
    [configuration isRainbowColor];
    [pigmentEditOption isRainbowColor];
    [v7 transitionFraction];

    CLKInterpolateBetweenFloatsClipped();
    v6 = v8;
LABEL_7:
  }

  return v6;
}

- (double)_backgroundFraction
{
  v3 = objc_opt_class();
  colorPalette = self->_colorPalette;

  [v3 _backgroundFraction:colorPalette];
  return result;
}

+ (double)_backgroundFraction:(id)fraction
{
  fractionCopy = fraction;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([fractionCopy backgroundStyle] == &dword_0 + 1)
    {
      v4 = 1.0;
    }

    else
    {
      v4 = 0.0;
    }
  }

  else
  {
    objc_opt_class();
    v4 = 0.0;
    if (objc_opt_isKindOfClass())
    {
      v5 = fractionCopy;
      fromPalette = [v5 fromPalette];
      toPalette = [v5 toPalette];
      [fromPalette backgroundStyle];
      [toPalette backgroundStyle];
      [v5 transitionFraction];

      CLKInterpolateBetweenFloatsClipped();
      v4 = v8;
    }
  }

  return v4;
}

- (void)setColorPalette:(id)palette
{
  objc_storeStrong(&self->_colorPalette, palette);
  [(NTKProteusContentView *)self _rainbowFraction];
  v5 = v4;
  [(NTKProteusContentView *)self _backgroundFraction];
  [(NTKProteusContentView *)self _applyRainbowFraction:v5 backgroundFraction:v6];
  [(NTKProteusContentView *)self _backgroundFraction];
  [(NTKProteusContentView *)self _updateScaleBackgroundFraction:?];

  [(NTKProteusContentView *)self _updateColorPalette];
}

- (void)_updateColorPalette
{
  digitColor = [(NTKProteusColorPalette *)self->_colorPalette digitColor];
  background = [(NTKProteusColorPalette *)self->_colorPalette background];
  [(UIView *)self->_colorBackgroundView setBackgroundColor:background];

  [(UIView *)self->_colorMaskView setBackgroundColor:digitColor];
}

- (void)applyTransitionFraction:(double)fraction fromStyle:(unint64_t)style toStyle:(unint64_t)toStyle
{
  if (toStyle)
  {
    v19 = self->_regularHourDigits;
    v9 = self->_roundedHourDigits;
    v10 = fraction < 1.0;
    v11 = fraction > 0.0;
  }

  else
  {
    v19 = self->_roundedHourDigits;
    v9 = self->_regularHourDigits;
    v10 = fraction > 0.0;
    v11 = fraction < 1.0;
  }

  v12 = style == toStyle;
  if (style == toStyle)
  {
    v13 = style == 1;
  }

  else
  {
    v13 = v11;
  }

  if (v12)
  {
    v14 = style == 0;
  }

  else
  {
    v14 = v10;
  }

  [(NTKProteusContentView *)self _activate:v14 digitLayersForStyle:0];
  [(NTKProteusContentView *)self _activate:v13 digitLayersForStyle:1];
  CLKInterpolateBetweenFloatsClipped();
  v16 = v15;
  CLKInterpolateBetweenFloatsClipped();
  v18 = v17;
  [(NTKProteusContentView *)self _setLabelAlpha:v9 forLabels:?];
  [(NTKProteusContentView *)self _updateScaleTransitionFraction:v9 forLabels:1.0 - v18];
  [(NTKProteusContentView *)self _setLabelAlpha:v19 forLabels:v16];
  [(NTKProteusContentView *)self _updateScaleTransitionFraction:v19 forLabels:1.0 - v16];
}

- (void)_applyRainbowFraction:(double)fraction backgroundFraction:(double)backgroundFraction
{
  v7 = fraction == 0.0;
  v8 = backgroundFraction == 1.0 && fraction == 0.0;
  v9 = backgroundFraction == 0.0 || fraction == 0.0;
  v10 = backgroundFraction == 0.0 || fraction == 1.0;
  v11 = backgroundFraction == 0.0 && fraction == 1.0;
  gradientBackgroundView = self->_gradientBackgroundView;
  v13 = backgroundFraction == 1.0 && fraction == 1.0;
  v14 = backgroundFraction == 1.0 || fraction == 0.0;
  [(UIView *)gradientBackgroundView setHidden:v9];
  [(UIView *)self->_gradientBackgroundView setOpaque:v13];
  [(UIView *)self->_gradientBackgroundView setAlpha:fraction * backgroundFraction];
  [(UIView *)self->_colorBackgroundView setHidden:v10];
  [(UIView *)self->_colorBackgroundView setOpaque:v8];
  [(UIView *)self->_colorBackgroundView setAlpha:(1.0 - fraction) * backgroundFraction];
  [(UIView *)self->_gradientMaskView setHidden:v14];
  [(UIView *)self->_gradientMaskView setOpaque:v11];
  v15 = 1.0 - backgroundFraction;
  [(UIView *)self->_gradientMaskView setAlpha:v15 * fraction];
  [(UIView *)self->_colorMaskView setHidden:v11];
  [(UIView *)self->_colorMaskView setOpaque:v7];
  colorMaskView = self->_colorMaskView;

  [(UIView *)colorMaskView setAlpha:1.0 - fraction * v15];
}

- (void)applyTransitionTritiumOnWithFraction:(double)fraction
{
  [(NTKProteusContentView *)self _backgroundFraction];
  [(NTKProteusContentView *)self _rainbowFraction];
  v6 = v5;
  CLKInterpolateBetweenFloatsClipped();
  v8 = v7;
  [(NTKProteusContentView *)self _updateScaleTritiumFraction:fraction];
  [(NTKProteusContentView *)self _updateColorPalette];
  [(NTKProteusContentView *)self _applyRainbowFraction:v6 backgroundFraction:v8];
  if (fraction == 1.0)
  {

    [(NTKProteusContentView *)self motionCompleted];
  }
}

- (void)motionCompleted
{
  v3 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Proteus content-passivating [%p]", &v5, 0xCu);
  }

  _fontLoader = [(NTKProteusContentView *)self _fontLoader];
  [_fontLoader clearStatusCache];
  [_fontLoader clearMotionCache];
}

@end