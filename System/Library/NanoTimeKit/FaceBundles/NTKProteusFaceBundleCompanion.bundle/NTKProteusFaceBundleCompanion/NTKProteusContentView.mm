@interface NTKProteusContentView
+ (double)_backgroundFraction:(id)a3;
+ (double)_rainbowFraction:(id)a3;
- (CGPoint)_scaleForBackgroundFraction:(double)a3;
- (NTKProteusContentView)initWithFrame:(CGRect)a3 style:(unint64_t)a4 backgroundStyle:(unint64_t)a5 colorPalette:(id)a6 device:(id)a7;
- (double)_backgroundFraction;
- (double)_rainbowFraction;
- (id)_digitLayersForStyle:(unint64_t)a3;
- (id)_fontLoader;
- (id)_fontWithWeight:(double)a3 style:(unint64_t)a4 usesNotch:(BOOL)a5;
- (id)createProteusDigitAtIndex:(unint64_t)a3 style:(unint64_t)a4;
- (void)_activate:(BOOL)a3 digitLayersForStyle:(unint64_t)a4;
- (void)_applyRainbowFraction:(double)a3 backgroundFraction:(double)a4;
- (void)_setLabelAlpha:(double)a3 forLabels:(id)a4;
- (void)_updateColorPalette;
- (void)_updateScale:(CGPoint)a3 forLabels:(id)a4;
- (void)_updateScaleBackgroundFraction:(double)a3;
- (void)_updateScaleTransitionFraction:(double)a3 forLabels:(id)a4;
- (void)_updateScaleTritiumFraction:(double)a3;
- (void)applyTransitionFraction:(double)a3 fromStyle:(unint64_t)a4 toStyle:(unint64_t)a5;
- (void)applyTransitionTritiumOnWithFraction:(double)a3;
- (void)layoutSubviews;
- (void)motionCompleted;
- (void)setColorPalette:(id)a3;
- (void)setDigitWeight:(double)a3 forDigit:(unint64_t)a4;
- (void)setGradientMaskRotation:(double)a3;
- (void)setStyle:(unint64_t)a3;
@end

@implementation NTKProteusContentView

- (NTKProteusContentView)initWithFrame:(CGRect)a3 style:(unint64_t)a4 backgroundStyle:(unint64_t)a5 colorPalette:(id)a6 device:(id)a7
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v15 = a6;
  v16 = a7;
  v47.receiver = self;
  v47.super_class = NTKProteusContentView;
  v17 = [(NTKProteusContentView *)&v47 initWithFrame:x, y, width, height];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_device, a7);
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
    if (a5 != 1)
    {
      v44 = 0.0;
    }

    [(NTKProteusContentView *)v18 _applyRainbowFraction:0.0 backgroundFraction:v44];
    [(NTKProteusContentView *)v18 setColorPalette:v15];
    v18->_style = 2;
    [(NTKProteusContentView *)v18 setStyle:a4];
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

- (void)_activate:(BOOL)a3 digitLayersForStyle:(unint64_t)a4
{
  v5 = a3;
  v7 = &OBJC_IVAR___NTKProteusContentView__roundedHourDigits;
  if (a4 != 1)
  {
    v8 = a3;
    if (a4)
    {
      goto LABEL_5;
    }

    v7 = &OBJC_IVAR___NTKProteusContentView__regularHourDigits;
  }

  v8 = *(&self->super.super.super.isa + *v7) != 0;
LABEL_5:
  if (v8 != a3)
  {
    v9 = _NTKLoggingObjectForDomain();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v10)
      {
        *buf = 134218240;
        v25 = a4;
        v26 = 2048;
        v27 = self;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Proteus content-Activating font style %lu [%p]", buf, 0x16u);
      }

      v11 = [(NTKProteusContentView *)self _fontLoader];
      [v11 cacheFonts:1 ofType:a4 != 0 forClient:self];

      v12 = [(NTKProteusContentView *)self _digitLayersForStyle:a4];
      v13 = a4 == 1;
      if (a4 <= 1)
      {
        if (a4 == 1)
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
      v19 = v14;
      [v12 enumerateObjectsUsingBlock:v22];
    }

    else
    {
      if (v10)
      {
        *buf = 134218240;
        v25 = a4;
        v26 = 2048;
        v27 = self;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Proteus content-Deactivating font style %lu [%p]", buf, 0x16u);
      }

      v15 = &OBJC_IVAR___NTKProteusContentView__regularHourDigits;
      v16 = a4 != 0;
      if (a4 == 1)
      {
        v15 = &OBJC_IVAR___NTKProteusContentView__roundedHourDigits;
      }

      v17 = *v15;
      v12 = *(&self->super.super.super.isa + v17);
      v18 = *(&self->super.super.super.isa + v17);
      *(&self->super.super.super.isa + v17) = 0;

      [v12 enumerateObjectsUsingBlock:&stru_105B0];
      v19 = [(NTKProteusContentView *)self _fontLoader];
      [v19 cacheFonts:0 ofType:v16 forClient:self];
    }
  }
}

- (id)_digitLayersForStyle:(unint64_t)a3
{
  v5 = [NSMutableArray arrayWithCapacity:12];
  [(NTKProteusContentView *)self bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  for (i = 1; i != 13; ++i)
  {
    v15 = [(NTKProteusContentView *)self createProteusDigitAtIndex:i style:a3];
    [v15 setFrame:{v7, v9, v11, v13}];
    [v5 addObject:v15];
  }

  return v5;
}

- (id)createProteusDigitAtIndex:(unint64_t)a3 style:(unint64_t)a4
{
  v7 = objc_alloc_init(UILabel);
  v8 = a3 - 1;
  v10 = a3 == 1 || a3 == 12;
  v11 = [NSNumber numberWithUnsignedInteger:a3];
  v12 = [v11 stringValue];
  [v7 setText:v12];

  v13 = [(NSMutableArray *)self->_digitWeights objectAtIndexedSubscript:v8];
  [v13 floatValue];
  v15 = [(NTKProteusContentView *)self _fontWithWeight:a4 style:v10 usesNotch:v14];
  [v7 setFont:v15];

  v16 = +[UIColor whiteColor];
  [v7 setTextColor:v16];

  return v7;
}

- (void)setDigitWeight:(double)a3 forDigit:(unint64_t)a4
{
  v6 = a4 - 1;
  v8 = a4 == 1 || a4 == 12;
  regularHourDigits = self->_regularHourDigits;
  if (regularHourDigits)
  {
    v10 = [(NSArray *)regularHourDigits objectAtIndex:a4 - 1];
    v11 = [(NTKProteusContentView *)self _fontWithWeight:0 style:v8 usesNotch:a3];
    [v10 setFont:v11];
  }

  roundedHourDigits = self->_roundedHourDigits;
  if (roundedHourDigits)
  {
    v13 = [(NSArray *)roundedHourDigits objectAtIndex:v6];
    v14 = [(NTKProteusContentView *)self _fontWithWeight:1 style:v8 usesNotch:a3];
    [v13 setFont:v14];
  }

  v15 = [NSNumber numberWithDouble:a3];
  [(NSMutableArray *)self->_digitWeights setObject:v15 atIndexedSubscript:v6];
}

- (id)_fontWithWeight:(double)a3 style:(unint64_t)a4 usesNotch:(BOOL)a5
{
  v5 = a5;
  v9 = [(NTKProteusContentView *)self _fontLoader];
  v10 = v9;
  notchFraction = 0.0;
  if (v5)
  {
    notchFraction = self->_notchFraction;
  }

  v12 = [v9 neptuneFont:a4 != 0 weight:a3 notch:notchFraction];

  return v12;
}

- (void)setGradientMaskRotation:(double)a3
{
  gradientMaskView = self->_gradientMaskView;
  CGAffineTransformMakeRotation(&v4, a3);
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
      v8 = self;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Proteus content-getting shared font loader [%p]", &v7, 0xCu);
    }

    [(NTKProteusContentView *)self frame];
    v3 = [NTKProteusFontLoader sharedInstanceWithSize:v5];
    objc_storeStrong(&self->_fontLoader, v3);
  }

  return v3;
}

- (void)_updateScaleTransitionFraction:(double)a3 forLabels:(id)a4
{
  v5 = a4;
  [(NTKProteusContentView *)self _backgroundFraction];
  [(NTKProteusContentView *)self _scaleForBackgroundFraction:?];
  CLKInterpolateBetweenPoints();
  [(NTKProteusContentView *)self _updateScale:v5 forLabels:?];
}

- (void)_updateScaleBackgroundFraction:(double)a3
{
  [(NTKProteusContentView *)self _scaleForBackgroundFraction:a3];
  v5 = v4;
  v7 = v6;
  [(NTKProteusContentView *)self _updateScale:self->_regularHourDigits forLabels:?];
  roundedHourDigits = self->_roundedHourDigits;

  [(NTKProteusContentView *)self _updateScale:roundedHourDigits forLabels:v5, v7];
}

- (void)_updateScaleTritiumFraction:(double)a3
{
  [(NTKProteusContentView *)self _backgroundFraction];
  [(NTKProteusContentView *)self _scaleForBackgroundFraction:?];
  v4 = [(NTKProteusContentView *)self device];
  NTKEnableAODVibrancy();

  CLKInterpolateBetweenPoints();
  v6 = v5;
  v8 = v7;
  [(NTKProteusContentView *)self _updateScale:self->_regularHourDigits forLabels:?];
  roundedHourDigits = self->_roundedHourDigits;

  [(NTKProteusContentView *)self _updateScale:roundedHourDigits forLabels:v6, v8];
}

- (CGPoint)_scaleForBackgroundFraction:(double)a3
{
  v3 = 1.0;
  v4 = 1.0;
  if (a3 > 0.0)
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

- (void)_updateScale:(CGPoint)a3 forLabels:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = a4;
  if (v6)
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
    [v6 enumerateObjectsUsingBlock:v8];
  }
}

- (void)setStyle:(unint64_t)a3
{
  v5 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218240;
    v8 = a3;
    v9 = 2048;
    v10 = self;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Proteus content-Setting style %lu [%p]", &v7, 0x16u);
  }

  if (self->_style != a3)
  {
    self->_style = a3;
    [(NTKProteusContentView *)self _activate:1 digitLayersForStyle:a3];
    if (a3)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = 1.0;
    }

    [(NTKProteusContentView *)self _activate:0 digitLayersForStyle:a3 == 0];
    [(NTKProteusContentView *)self _setLabelAlpha:self->_regularHourDigits forLabels:v6];
    [(NTKProteusContentView *)self _setLabelAlpha:self->_roundedHourDigits forLabels:1.0 - v6];
    [(NTKProteusContentView *)self _backgroundFraction];
    [(NTKProteusContentView *)self _updateScaleBackgroundFraction:?];
  }
}

- (void)_setLabelAlpha:(double)a3 forLabels:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_7B74;
  v4[3] = &unk_105F0;
  *&v4[4] = a3;
  [a4 enumerateObjectsUsingBlock:v4];
}

- (double)_rainbowFraction
{
  v3 = objc_opt_class();
  colorPalette = self->_colorPalette;

  [v3 _rainbowFraction:colorPalette];
  return result;
}

+ (double)_rainbowFraction:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 configuration];
    v5 = [v4 pigmentEditOption];
    if ([v5 isRainbowColor])
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
    v7 = v3;
    v4 = [v7 fromPalette];
    v5 = [v7 toPalette];
    [v4 isRainbowColor];
    [v5 isRainbowColor];
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

+ (double)_backgroundFraction:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v3 backgroundStyle] == &dword_0 + 1)
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
      v5 = v3;
      v6 = [v5 fromPalette];
      v7 = [v5 toPalette];
      [v6 backgroundStyle];
      [v7 backgroundStyle];
      [v5 transitionFraction];

      CLKInterpolateBetweenFloatsClipped();
      v4 = v8;
    }
  }

  return v4;
}

- (void)setColorPalette:(id)a3
{
  objc_storeStrong(&self->_colorPalette, a3);
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
  v4 = [(NTKProteusColorPalette *)self->_colorPalette digitColor];
  v3 = [(NTKProteusColorPalette *)self->_colorPalette background];
  [(UIView *)self->_colorBackgroundView setBackgroundColor:v3];

  [(UIView *)self->_colorMaskView setBackgroundColor:v4];
}

- (void)applyTransitionFraction:(double)a3 fromStyle:(unint64_t)a4 toStyle:(unint64_t)a5
{
  if (a5)
  {
    v19 = self->_regularHourDigits;
    v9 = self->_roundedHourDigits;
    v10 = a3 < 1.0;
    v11 = a3 > 0.0;
  }

  else
  {
    v19 = self->_roundedHourDigits;
    v9 = self->_regularHourDigits;
    v10 = a3 > 0.0;
    v11 = a3 < 1.0;
  }

  v12 = a4 == a5;
  if (a4 == a5)
  {
    v13 = a4 == 1;
  }

  else
  {
    v13 = v11;
  }

  if (v12)
  {
    v14 = a4 == 0;
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

- (void)_applyRainbowFraction:(double)a3 backgroundFraction:(double)a4
{
  v7 = a3 == 0.0;
  v8 = a4 == 1.0 && a3 == 0.0;
  v9 = a4 == 0.0 || a3 == 0.0;
  v10 = a4 == 0.0 || a3 == 1.0;
  v11 = a4 == 0.0 && a3 == 1.0;
  gradientBackgroundView = self->_gradientBackgroundView;
  v13 = a4 == 1.0 && a3 == 1.0;
  v14 = a4 == 1.0 || a3 == 0.0;
  [(UIView *)gradientBackgroundView setHidden:v9];
  [(UIView *)self->_gradientBackgroundView setOpaque:v13];
  [(UIView *)self->_gradientBackgroundView setAlpha:a3 * a4];
  [(UIView *)self->_colorBackgroundView setHidden:v10];
  [(UIView *)self->_colorBackgroundView setOpaque:v8];
  [(UIView *)self->_colorBackgroundView setAlpha:(1.0 - a3) * a4];
  [(UIView *)self->_gradientMaskView setHidden:v14];
  [(UIView *)self->_gradientMaskView setOpaque:v11];
  v15 = 1.0 - a4;
  [(UIView *)self->_gradientMaskView setAlpha:v15 * a3];
  [(UIView *)self->_colorMaskView setHidden:v11];
  [(UIView *)self->_colorMaskView setOpaque:v7];
  colorMaskView = self->_colorMaskView;

  [(UIView *)colorMaskView setAlpha:1.0 - a3 * v15];
}

- (void)applyTransitionTritiumOnWithFraction:(double)a3
{
  [(NTKProteusContentView *)self _backgroundFraction];
  [(NTKProteusContentView *)self _rainbowFraction];
  v6 = v5;
  CLKInterpolateBetweenFloatsClipped();
  v8 = v7;
  [(NTKProteusContentView *)self _updateScaleTritiumFraction:a3];
  [(NTKProteusContentView *)self _updateColorPalette];
  [(NTKProteusContentView *)self _applyRainbowFraction:v6 backgroundFraction:v8];
  if (a3 == 1.0)
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
    v6 = self;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Proteus content-passivating [%p]", &v5, 0xCu);
  }

  v4 = [(NTKProteusContentView *)self _fontLoader];
  [v4 clearStatusCache];
  [v4 clearMotionCache];
}

@end