@interface NTKDolomiteContentView
- (NTKDolomiteContentView)initWithFrame:(CGRect)a3 role:(unint64_t)a4 numeral:(unint64_t)a5 style:(unint64_t)a6 palette:(id)a7 backgroundStyle:(unint64_t)a8 digitStyle:(unint64_t)a9 dateProvider:(id)a10 is24HourMode:(BOOL)a11 forceDynamicIndexZero:(BOOL)a12 contentOption:(unint64_t)a13 device:(id)a14;
- (id)_createFillShapeLayerOfSize:(CGSize)a3 parent:(id)a4;
- (id)_createLayerOfSize:(CGSize)a3 parent:(id)a4;
- (id)_createSwipeLayerOfSize:(CGSize)a3 parent:(id)a4;
- (id)_createTritiumStrip:(int)a3 size:(CGSize)a4 parentLayer:(id)a5;
- (id)_createViewOfSize:(CGSize)a3 parent:(id)a4;
- (id)_newSwipeAnimationWithKeyPath:(id)a3 fromValue:(id)a4 toValue:(id)a5 beginTime:(double)a6 duration:(double)a7;
- (id)backgroundColor;
- (void)_hideTritiumStrips;
- (void)_setupSceneWithSize:(CGSize)a3;
- (void)_showTritiumStrips:(int)a3;
- (void)_updateDigitsAnimated:(BOOL)a3 hour:(int)a4 minute:(int)a5 partialSeconds:(double)a6;
- (void)_updateHorizontalLineAnimated:(BOOL)a3 seconds:(int)a4 partialSeconds:(double)a5;
- (void)_updateOpticalAnimated:(BOOL)a3 seconds:(int)a4 partialSeconds:(double)a5;
- (void)_updateTritiumOpticalAnimationsForSeconds:(int)a3;
- (void)addForegroundView:(id)a3;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)dealloc;
- (void)forceColorRefresh:(BOOL)a3;
- (void)set24HourMode:(BOOL)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setBackgroundStyle:(unint64_t)a3;
- (void)setDigitFadeFraction:(double)a3;
- (void)setNumeral:(unint64_t)a3;
- (void)setPalette:(id)a3;
- (void)setStyle:(unint64_t)a3;
- (void)setTimeZone:(id)a3;
- (void)updateDate;
- (void)waitForAnimationsWithCompletion:(id)a3;
@end

@implementation NTKDolomiteContentView

- (NTKDolomiteContentView)initWithFrame:(CGRect)a3 role:(unint64_t)a4 numeral:(unint64_t)a5 style:(unint64_t)a6 palette:(id)a7 backgroundStyle:(unint64_t)a8 digitStyle:(unint64_t)a9 dateProvider:(id)a10 is24HourMode:(BOOL)a11 forceDynamicIndexZero:(BOOL)a12 contentOption:(unint64_t)a13 device:(id)a14
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v25 = a7;
  v26 = a10;
  v56 = a14;
  v57.receiver = self;
  v57.super_class = NTKDolomiteContentView;
  v27 = [(NTKDolomiteContentView *)&v57 initWithFrame:x, y, width, height];
  v28 = v27;
  if (v27)
  {
    objc_storeStrong(&v27->_device, a14);
    v28->_role = a4;
    v28->_numeral = a5;
    v28->_style = a6;
    objc_storeStrong(&v28->_palette, a7);
    v28->_backgroundStyle = a8;
    v28->_digitStyle = a9;
    v29 = objc_retainBlock(v26);
    dateProvider = v28->_dateProvider;
    v28->_dateProvider = v29;

    v28->_currentDay = -1;
    v28->_currentHour = -1;
    v28->_currentMinute = -1;
    v28->_currentDigitSet = 609;
    v28->_is24HourMode = a11;
    v28->_forceDynamicIndexZero = a12;
    v28->_contentOption = a13;
    LODWORD(v31) = 1057803469;
    LODWORD(v32) = 1055286886;
    LODWORD(v33) = 1.0;
    v34 = [CAMediaTimingFunction functionWithControlPoints:v31];
    timingFunction = v28->_timingFunction;
    v28->_timingFunction = v34;

    v36 = 0;
    v28->_stripLayersHidden = 1;
    v28->_forceDynamicIndexZero = 1;
    v37 = &qword_D56740;
    v38 = &unk_D565E8;
    do
    {
      v39 = [UIColor colorWithRed:*(v38 - 1) green:*v38 blue:v38[1] alpha:1.0];
      v40 = v28->_backgroundDynamicColors[v36];
      v28->_backgroundDynamicColors[v36] = v39;

      v41 = *(v37 - 2);
      v42 = *(v37 - 1);
      v43 = *v37;
      v37 += 3;
      v44 = [UIColor colorWithRed:v41 green:v42 blue:v43 alpha:1.0];
      v45 = v28->_foregroundDynamicColors[v36];
      v28->_foregroundDynamicColors[v36] = v44;

      ++v36;
      v38 += 3;
    }

    while (v36 != 14);
    v46 = [v25 isHardwareColor];
    [v46 floatValue];
    v48 = v47;

    v49 = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    v50 = v28->_foregroundColors[0];
    v28->_foregroundColors[0] = v49;

    if (v48 >= 0.5)
    {
      v51 = 0.760784314;
    }

    else
    {
      v51 = 0.847058824;
    }

    v52 = [UIColor colorWithRed:v51 green:v51 blue:v51 alpha:1.0];
    v53 = v28->_foregroundColors[1];
    v28->_foregroundColors[1] = v52;

    [0 setMasksToBounds:1];
    v54 = sub_3FB4();
    [0 setActions:v54];

    [(NTKDolomiteContentView *)v28 _setupSceneWithSize:width, height];
  }

  return v28;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = NTKDolomiteContentView;
  [(NTKDolomiteContentView *)&v2 dealloc];
}

- (id)backgroundColor
{
  v2 = [[UIColor alloc] initWithCGColor:{-[CALayer backgroundColor](self->_backgroundLayer, "backgroundColor")}];

  return v2;
}

- (void)addForegroundView:(id)a3
{
  textGroupView = self->_textGroupView;
  v5 = a3;
  [(UIView *)textGroupView addSubview:v5];
  [(UIView *)self->_textGroupView sendSubviewToBack:v5];
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v5 = objc_retainBlock(self->_animationCompletion);
  if (v5)
  {
    animationCompletion = self->_animationCompletion;
    self->_animationCompletion = 0;
    v7 = v5;

    v7[2](v7);
    v5 = v7;
  }
}

- (void)set24HourMode:(BOOL)a3
{
  if (self->_is24HourMode != a3)
  {
    self->_is24HourMode = a3;
    self->_currentDay = -1;
    self->_currentHour = -1;
    self->_currentMinute = -1;
  }
}

- (void)setNumeral:(unint64_t)a3
{
  if (self->_numeral != a3)
  {
    self->_numeral = a3;
    self->_currentDay = -1;
    self->_currentHour = -1;
    self->_currentMinute = -1;
  }
}

- (void)setStyle:(unint64_t)a3
{
  if (self->_style != a3)
  {
    self->_style = a3;
    self->_currentDay = -1;
    self->_currentHour = -1;
    self->_currentMinute = -1;
  }
}

- (void)setBackgroundStyle:(unint64_t)a3
{
  if (self->_backgroundStyle != a3)
  {
    self->_backgroundStyle = a3;
    [(CAShapeLayer *)self->_horizontalLineLayer setHidden:a3 != 2];
  }
}

- (void)setPalette:(id)a3
{
  v57 = a3;
  objc_storeStrong(&self->_palette, a3);
  currentDay = self->_currentDay;
  currentHour = self->_currentHour;
  v7 = self->_currentMinute & ~(self->_currentMinute >> 31);
  v8 = [v57 dynamicPercent];
  [v8 floatValue];
  v10 = v9;

  if (v10 < 0.5)
  {
    if (v7)
    {
      v24 = [v57 southColor];
      v13 = [v24 CGColor];

      v25 = [v57 northColor];
      v14 = [v25 CGColor];

      v26 = [v57 digitSouthColor];
      v15 = [v26 CGColor];

      v27 = [v57 digitNorthColor];
      v16 = [v27 CGColor];

      [v57 digitSouthColor];
    }

    else
    {
      v19 = [v57 northColor];
      v13 = [v19 CGColor];

      v20 = [v57 southColor];
      v14 = [v20 CGColor];

      v21 = [v57 digitNorthColor];
      v15 = [v21 CGColor];

      v22 = [v57 digitSouthColor];
      v16 = [v22 CGColor];

      [v57 digitNorthColor];
    }
    v23 = ;
    foregroundColor = self->_foregroundColor;
    self->_foregroundColor = v23;
  }

  else
  {
    v11 = (11 * (currentDay & ~(currentDay >> 31)) + 60 * (currentHour & ~(currentHour >> 31)) + v7) % 0xE;
    if ((self->_forceDynamicIndexZero || self->_isEditing) && !self->_ignoreForceDynamicIndexZero)
    {
      v11 = 0;
    }

    if (v11 == 13)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 + 1;
    }

    v13 = [(UIColor *)self->_backgroundDynamicColors[v11] CGColor];
    v14 = [(UIColor *)self->_backgroundDynamicColors[v12] CGColor];
    v15 = [(UIColor *)self->_foregroundDynamicColors[v11] CGColor];
    v16 = [(UIColor *)self->_foregroundDynamicColors[v12] CGColor];
    v17 = self->_foregroundDynamicColors[v11];
    foregroundColor = self->_foregroundColor;
    self->_foregroundColor = v17;
  }

  v28 = v13;
  v29 = v14;
  if (self->_backgroundStyle)
  {
    if (self->_digitStyle)
    {
      v16 = v13;
    }

    else
    {
      v16 = v14;
    }

    v30 = +[UIColor blackColor];
    v28 = [v30 CGColor];

    v31 = +[UIColor blackColor];
    v29 = [v31 CGColor];

    v15 = v13;
  }

  if (self->_backgroundStyle - 1 <= 2)
  {
    Components = CGColorGetComponents(v13);
    v33 = *(Components + 1);
    v34 = vcvt_f32_f64(*Components);
    CLKUIConvertRGBtoLAB();
    v54 = v35;
    v36 = CGColorGetComponents(v14);
    v37 = *(v36 + 1);
    v38 = vcvt_f32_f64(*v36);
    CLKUIConvertRGBtoLAB();
    backgroundStyle = self->_backgroundStyle;
    if (backgroundStyle == 3)
    {
      v42 = 60.0;
    }

    else
    {
      v42 = 75.0;
    }

    if (backgroundStyle == 3)
    {
      *&v40 = 80.0;
    }

    else
    {
      *&v40 = 85.0;
    }

    if (vmovn_s32(vcgtq_f32(v39, v54)).u8[0])
    {
      if (v54.f32[0] >= v42 || (v53 = v40, v55 = v39.f32[0], v15 = sub_486C(), v55 >= *&v53))
      {
        v44 = v16;
        goto LABEL_36;
      }

      v43 = sub_486C();
      v16 = v43;
    }

    else
    {
      if (v39.f32[0] >= v42 || (v53 = v40, v16 = sub_486C(), v54.f32[0] >= *&v53))
      {
        v44 = v15;
        goto LABEL_36;
      }

      v43 = sub_486C();
      v15 = v43;
    }

    v44 = v43;
LABEL_36:
    if (backgroundStyle == 3 && self->_digitStyle == 1)
    {
      v15 = v44;
      v16 = v44;
    }
  }

  if (v10 < 0.5)
  {
    v56 = v28;
    v45 = v16;
    v46 = v29;
  }

  else
  {
    v45 = v15;
    v15 = v16;
    v46 = v28;
    v56 = v29;
  }

  style = self->_style;
  if (style)
  {
    v48 = 0;
  }

  else
  {
    v48 = v45;
  }

  if (style)
  {
    v49 = v45;
  }

  else
  {
    v49 = 0;
  }

  v50 = 4;
  v51 = self;
  do
  {
    [(CAShapeLayer *)v51->_digitLayers[0] setFillColor:v48, v53];
    [(CAShapeLayer *)v51->_digitLayers[0] setStrokeColor:v49];
    [(CAShapeLayer *)v51->_opticalDigitLayers[0] setFillColor:v48];
    [(CAShapeLayer *)v51->_opticalDigitLayers[0] setStrokeColor:v49];
    v51 = (v51 + 8);
    --v50;
  }

  while (v50);
  [(CALayer *)self->_backgroundLayer setBackgroundColor:v46];
  [(CAShapeLayer *)self->_backgroundSwipeLayer setFillColor:v56];
  [(CAShapeLayer *)self->_foregroundSwipeLayer setFillColor:v15];
  [(CAShapeLayer *)self->_opticalSwipeLayer setFillColor:v15];
  if ((self->_contentOption & 4) != 0)
  {
    for (i = 0; i != 60; ++i)
    {
      [(CAShapeLayer *)self->_stripLayers[i] setFillColor:v15];
    }
  }

  [(CAShapeLayer *)self->_horizontalLineLayer setFillColor:v15];
}

- (void)forceColorRefresh:(BOOL)a3
{
  self->_ignoreForceDynamicIndexZero = a3;
  [(NTKDolomiteContentView *)self setPalette:self->_palette];
  self->_ignoreForceDynamicIndexZero = 0;
}

- (void)setTimeZone:(id)a3
{
  v6 = a3;
  v4 = [(NSCalendar *)self->_calendar timeZone];
  v5 = [v4 isEqualToTimeZone:v6];

  if ((v5 & 1) == 0)
  {
    [(NSCalendar *)self->_calendar setTimeZone:v6];
    self->_currentDay = -1;
    self->_currentHour = -1;
    self->_currentMinute = -1;
  }
}

- (void)_updateTritiumOpticalAnimationsForSeconds:(int)a3
{
  v4 = self;
  [(NTKDolomiteContentView *)self bounds];
  v6 = v5;
  v8 = v7;
  v9 = sub_4AD8(v4->_currentDigitSet, v4->_is24HourMode, v4->_numeral);
  v10 = +[CLKDevice currentDevice];
  [v10 screenScale];
  v12 = v11;

  v13 = 0;
  v14 = 60 - a3;
  do
  {
    v15 = *(v9 + v13);
    if (v15)
    {
      v16 = sub_4BAC(v15, v14, v6, v8, v12);
      v17 = v4->_opticalDigitLayers[0];
      if (v16)
      {
        [(CAShapeLayer *)v17 setPath:v16];
        CGPathRelease(v16);
      }

      else
      {
        [(CAShapeLayer *)v17 setPath:v4->_digitDefaultPathRefs[0]];
      }
    }

    v13 += 4;
    v4 = (v4 + 8);
  }

  while (v13 != 16);
}

- (void)_updateOpticalAnimated:(BOOL)a3 seconds:(int)a4 partialSeconds:(double)a5
{
  v8 = self;
  [(NTKDolomiteContentView *)self bounds];
  v10 = v9;
  v12 = v11;
  v13 = sub_4AD8(v8->_currentDigitSet, v8->_is24HourMode, v8->_numeral);
  v14 = +[CLKDevice currentDevice];
  [v14 screenScale];
  v16 = v15;

  if (a5 < 0.833 && a3)
  {
    v17 = 0;
    v18 = 59 - a4;
    for (i = v8; ; i = (i + 8))
    {
      v20 = *(v13 + v17);
      if (v20)
      {
        break;
      }

      [(CAShapeLayer *)i->_digitLayers[0] removeAnimationForKey:@"optical"];
LABEL_15:
      v17 += 4;
      if (v17 == 16)
      {
        return;
      }
    }

    v21 = i->_digitDefaultPathRefs[0];
    if (i->_digitSnappedPathRefs[0])
    {
      v22 = i->_digitSnappedPathRefs[0];
    }

    else
    {
      v22 = i->_digitDefaultPathRefs[0];
    }

    v23 = sub_4BAC(v20, v18, v10, v12, v16);
    if (v23)
    {
      v24 = v23;
      v25 = objc_opt_new();
      [v25 setKeyPath:@"path"];
      [v25 setFromValue:v22];
      [v25 setToValue:v24];
    }

    else
    {
      if (v22 == v21)
      {
        v25 = 0;
        goto LABEL_14;
      }

      v25 = objc_opt_new();
      [v25 setKeyPath:@"path"];
      [v25 setFromValue:v22];
      [v25 setToValue:v21];
      v24 = 0;
    }

    [v25 setTimingFunction:v8->_timingFunction];
    [v25 setBeginTime:CACurrentMediaTime() + 0.833 - a5];
    [v25 setDuration:0.167];
    [v25 setFillMode:kCAFillModeBoth];
    [v25 setRemovedOnCompletion:0];
    CGPathRelease(i->_digitSnappedPathRefs[0]);
    i->_digitSnappedPathRefs[0] = v24;
LABEL_14:
    [(CAShapeLayer *)i->_digitLayers[0] addAnimation:v25 forKey:@"optical"];

    goto LABEL_15;
  }

  v26 = 0;
  v27 = 60 - a4;
  do
  {
    [(CAShapeLayer *)v8->_digitLayers[0] removeAnimationForKey:@"optical"];
    v28 = *(v13 + v26);
    if (!v28)
    {
      goto LABEL_28;
    }

    v29 = v8->_digitDefaultPathRefs[0];
    v30 = v8->_digitSnappedPathRefs[0];
    v31 = sub_4BAC(v28, v27, v10, v12, v16);
    if (v31)
    {
      v32 = v31;
      [(CAShapeLayer *)v8->_digitLayers[0] setPath:v31];
LABEL_27:
      CGPathRelease(v8->_digitSnappedPathRefs[0]);
      v8->_digitSnappedPathRefs[0] = v32;
      goto LABEL_28;
    }

    if (v30)
    {
      v33 = v30 == v29;
    }

    else
    {
      v33 = 1;
    }

    if (!v33)
    {
      [(CAShapeLayer *)v8->_digitLayers[0] setPath:v29];
      v32 = 0;
      goto LABEL_27;
    }

LABEL_28:
    v26 += 4;
    v8 = (v8 + 8);
  }

  while (v26 != 16);
}

- (void)_updateHorizontalLineAnimated:(BOOL)a3 seconds:(int)a4 partialSeconds:(double)a5
{
  v7 = a3;
  [(NTKDolomiteContentView *)self bounds];
  v10 = v9;
  v11 = +[CLKDevice currentDevice];
  [v11 screenScale];
  v13 = v12;

  if (self->_contentOption)
  {
    v18 = v10 * 0.833333333 / -60.0;
    v15 = v18 * a4 + v10 * 0.916666667;
    v17 = v18 * (a4 + 1) + v10 * 0.916666667;
    goto LABEL_8;
  }

  if (!a4)
  {
    v15 = v10 + 2.0;
    v14 = v10 * v13;
    v16 = 1;
    goto LABEL_7;
  }

  v14 = v10 * v13;
  v15 = round(v10 * v13 * (60 - a4) / 60.0) / v13;
  v16 = a4 + 1;
  v17 = -2.0;
  if (a4 != 59)
  {
LABEL_7:
    v17 = round(v14 * (60 - v16) / 60.0) / v13;
  }

LABEL_8:
  if (a5 >= 0.833)
  {
    v19 = (a5 + -0.833) / 0.167;
    *&v19 = v19;
    [(CAMediaTimingFunction *)self->_timingFunction _solveForInput:v19];
    CLKInterpolateBetweenFloatsUnclipped();
    v15 = v20;
  }

  if (v7)
  {
    v25 = objc_opt_new();
    [v25 setKeyPath:@"transform.translation.y"];
    v21 = [NSNumber numberWithDouble:v17];
    [v25 setToValue:v21];

    v22 = [NSNumber numberWithDouble:v15];
    [v25 setFromValue:v22];

    if (a5 >= 0.833)
    {
      v23 = 0.167 - a5;
    }

    else
    {
      [v25 setBeginTime:CACurrentMediaTime() + 0.833 - a5];
      v23 = 0.167;
    }

    [v25 setDuration:v23];
    [v25 setDelegate:self];
    [v25 setTimingFunction:self->_timingFunction];
    [v25 setFillMode:kCAFillModeBoth];
    [v25 setRemovedOnCompletion:0];
    [(CAShapeLayer *)self->_horizontalLineLayer addAnimation:v25 forKey:@"second"];
  }

  else
  {
    [(CAShapeLayer *)self->_horizontalLineLayer removeAnimationForKey:@"second"];
    memset(&v27, 0, sizeof(v27));
    CGAffineTransformMakeTranslation(&v27, 0.0, v15);
    horizontalLineLayer = self->_horizontalLineLayer;
    v26 = v27;
    [(CAShapeLayer *)horizontalLineLayer setAffineTransform:&v26];
  }
}

- (id)_newSwipeAnimationWithKeyPath:(id)a3 fromValue:(id)a4 toValue:(id)a5 beginTime:(double)a6 duration:(double)a7
{
  v12 = a5;
  v13 = a4;
  v14 = [CABasicAnimation animationWithKeyPath:a3];
  [v14 setFromValue:v13];

  [v14 setToValue:v12];
  [v14 setBeginTime:a6];
  [v14 setDuration:a7];
  [v14 setDelegate:self];
  [v14 setTimingFunction:self->_timingFunction];
  [v14 setFillMode:kCAFillModeBoth];
  [v14 setRemovedOnCompletion:0];
  return v14;
}

- (void)updateDate
{
  v3 = (*(self->_dateProvider + 2))();
  is24HourMode = self->_is24HourMode;
  v5 = [(NSCalendar *)self->_calendar components:65760 fromDate:v3];
  v6 = [v5 dayOfYear];
  LODWORD(v7) = [v5 hour];
  v8 = [v5 minute];
  v9 = [v5 second];
  v10 = v7 % 12;
  if (!(v7 % 12))
  {
    v10 = 12;
  }

  if (is24HourMode)
  {
    v7 = v7;
  }

  else
  {
    v7 = v10;
  }

  if ((self->_contentOption & 2) != 0)
  {
    v9 = 0;
    v12 = 0.0;
  }

  else
  {
    [v3 timeIntervalSince1970];
    v12 = v11 - floor(v11);
  }

  if (self->_currentHour == v7 && self->_currentMinute == v8)
  {
    v13 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      currentDay = self->_currentDay;
      v19 = 136315650;
      v20 = "[NTKDolomiteContentView updateDate]";
      v21 = 1024;
      v22 = currentDay;
      v23 = 1024;
      v24 = v6;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "[%s] Applying day only (%d->%d)", &v19, 0x18u);
    }

    self->_currentDay = v6;
    if (!v9)
    {
      [(NTKDolomiteContentView *)self setPalette:self->_palette];
    }
  }

  else
  {
    v15 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      currentHour = self->_currentHour;
      currentMinute = self->_currentMinute;
      v18 = self->_currentDay;
      v19 = 136316674;
      v20 = "[NTKDolomiteContentView updateDate]";
      v21 = 1024;
      v22 = currentHour;
      v23 = 1024;
      v24 = v7;
      v25 = 1024;
      v26 = currentMinute;
      v27 = 1024;
      v28 = v8;
      v29 = 1024;
      v30 = v18;
      v31 = 1024;
      v32 = v6;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "[%s] Got into a random time state (hour: %d->%d, minute: %d->%d, day: %d->%d)", &v19, 0x30u);
    }

    self->_currentHour = v7;
    self->_currentMinute = v8;
    self->_currentDay = v6;
    [(NTKDolomiteContentView *)self setPalette:self->_palette];
    v12 = 0.0;
    [(NTKDolomiteContentView *)self _updateDigitsAnimated:0 hour:v7 minute:v8 partialSeconds:0.0];
  }

  [(NTKDolomiteContentView *)self _updateSwipeAnimated:0 seconds:v9 partialSeconds:v12];
}

- (void)waitForAnimationsWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8 = v4;
    v5 = [(CAShapeLayer *)self->_digitLayers[0] animationForKey:@"second"];

    if (v5)
    {
      v6 = objc_retainBlock(v8);
      animationCompletion = self->_animationCompletion;
      self->_animationCompletion = v6;
    }

    else
    {
      v8[2]();
    }

    v4 = v8;
  }
}

- (void)setBackgroundColor:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = +[UIColor blackColor];
  }

  v6 = v5;
  v7 = [(NTKDolomiteContentView *)self layer];
  [v7 setBackgroundColor:{objc_msgSend(v6, "CGColor")}];
}

- (void)_setupSceneWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = +[NSCalendar autoupdatingCurrentCalendar];
  calendar = self->_calendar;
  self->_calendar = v6;

  v8 = self->_calendar;
  v9 = +[NSTimeZone systemTimeZone];
  [(NSCalendar *)v8 setTimeZone:v9];

  v10 = [(NTKDolomiteContentView *)self _createViewOfSize:self parent:width, height];
  backgroundView = self->_backgroundView;
  self->_backgroundView = v10;

  v12 = [(UIView *)self->_backgroundView layer];
  backgroundLayer = self->_backgroundLayer;
  self->_backgroundLayer = v12;

  [(CALayer *)self->_backgroundLayer setBackgroundColor:[(UIColor *)self->_backgroundDynamicColors[0] CGColor]];
  v14 = [(NTKDolomiteContentView *)self _createSwipeLayerOfSize:self->_backgroundLayer parent:width, height];
  backgroundSwipeLayer = self->_backgroundSwipeLayer;
  self->_backgroundSwipeLayer = v14;

  v16 = [(NTKDolomiteContentView *)self _createViewOfSize:self parent:width, height];
  textGroupView = self->_textGroupView;
  self->_textGroupView = v16;

  v18 = [(UIView *)self->_textGroupView layer];
  textGroupLayer = self->_textGroupLayer;
  self->_textGroupLayer = v18;

  v20 = [(NTKDolomiteContentView *)self _createLayerOfSize:self->_textGroupLayer parent:width, height];
  digitGroupLayer = self->_digitGroupLayer;
  self->_digitGroupLayer = v20;

  v22 = [(NTKDolomiteContentView *)self _createLayerOfSize:self->_textGroupLayer parent:width, height];
  opticalGroupLayer = self->_opticalGroupLayer;
  self->_opticalGroupLayer = v22;

  v24 = [(NTKDolomiteContentView *)self _createLayerOfSize:self->_opticalGroupLayer parent:width, height];
  opticalBackgroundLayer = self->_opticalBackgroundLayer;
  self->_opticalBackgroundLayer = v24;

  v26 = self->_opticalBackgroundLayer;
  v27 = +[UIColor blackColor];
  -[CALayer setBackgroundColor:](v26, "setBackgroundColor:", [v27 CGColor]);

  v28 = [(NTKDolomiteContentView *)self _createLayerOfSize:self->_opticalGroupLayer parent:width, height];
  opticalDigitGroupLayer = self->_opticalDigitGroupLayer;
  self->_opticalDigitGroupLayer = v28;

  v30 = ceil(height / 60.0);
  v31 = [(NTKDolomiteContentView *)self _createFillShapeLayerOfSize:0 parent:width, v30 * 4.0];
  opticalMaskLayer = self->_opticalMaskLayer;
  self->_opticalMaskLayer = v31;

  v33 = self->_opticalMaskLayer;
  v34 = +[UIColor whiteColor];
  -[CAShapeLayer setFillColor:](v33, "setFillColor:", [v34 CGColor]);

  v68.origin.y = v30 * -2.0;
  v68.origin.x = 0.0;
  v68.size.width = width;
  v68.size.height = v30 * 4.0;
  v35 = CGPathCreateWithRect(v68, 0);
  [(CAShapeLayer *)self->_opticalMaskLayer setPath:v35];
  CGPathRelease(v35);
  [(CALayer *)self->_opticalGroupLayer setHidden:1];
  [(CALayer *)self->_opticalGroupLayer setMask:self->_opticalMaskLayer];
  v36 = sub_662C(self->_currentDigitSet, 0, self->_is24HourMode, self->_numeral, width, height);
  objc_storeStrong(&self->_foregroundColor, self->_foregroundColors[0]);
  style = self->_style;
  v38 = [(UIColor *)self->_foregroundColor CGColor];
  v39 = 0;
  v40 = style == 0;
  if (style)
  {
    v41 = v38;
  }

  else
  {
    v41 = 0;
  }

  if (v40)
  {
    v42 = v38;
  }

  else
  {
    v42 = 0;
  }

  do
  {
    v43 = [(NTKDolomiteContentView *)self _createFillShapeLayerOfSize:self->_digitGroupLayer parent:width, height];
    v44 = self->_digitLayers[v39];
    self->_digitLayers[v39] = v43;

    [(CAShapeLayer *)self->_digitLayers[v39] setFillColor:v42];
    [(CAShapeLayer *)self->_digitLayers[v39] setStrokeColor:v41];
    v45 = self->_digitLayers[v39];
    v46 = [v36 objectAtIndexedSubscript:v39];
    [(CAShapeLayer *)v45 setPath:v46];

    self->_digitDefaultPathRefs[v39] = [v36 objectAtIndexedSubscript:v39];
    v47 = [(NTKDolomiteContentView *)self _createFillShapeLayerOfSize:self->_opticalDigitGroupLayer parent:width, height];
    v48 = self->_opticalDigitLayers[v39];
    self->_opticalDigitLayers[v39] = v47;

    [(CAShapeLayer *)self->_opticalDigitLayers[v39] setFillColor:v42];
    [(CAShapeLayer *)self->_opticalDigitLayers[v39] setStrokeColor:v41];
    v49 = self->_opticalDigitLayers[v39];
    v50 = [v36 objectAtIndexedSubscript:v39];
    [(CAShapeLayer *)v49 setPath:v50];

    ++v39;
  }

  while (v39 != 4);
  v51 = [(NTKDolomiteContentView *)self _createSwipeLayerOfSize:self->_digitGroupLayer parent:width, height];
  foregroundSwipeLayer = self->_foregroundSwipeLayer;
  self->_foregroundSwipeLayer = v51;

  v53 = [(NTKDolomiteContentView *)self _createFillShapeLayerOfSize:self->_opticalDigitGroupLayer parent:width, height];
  opticalSwipeLayer = self->_opticalSwipeLayer;
  self->_opticalSwipeLayer = v53;

  v55 = [CAFilter filterWithType:kCAFilterSourceAtop];
  [(CAShapeLayer *)self->_foregroundSwipeLayer setCompositingFilter:v55];
  [(CAShapeLayer *)self->_backgroundSwipeLayer setCompositingFilter:v55];
  [(CAShapeLayer *)self->_opticalSwipeLayer setCompositingFilter:v55];
  [(CAShapeLayer *)self->_backgroundSwipeLayer setFillColor:[(UIColor *)self->_backgroundDynamicColors[1] CGColor]];
  v56 = [(UIColor *)self->_foregroundColors[1] CGColor];
  [(CAShapeLayer *)self->_foregroundSwipeLayer setFillColor:v56];
  [(CAShapeLayer *)self->_opticalSwipeLayer setFillColor:v56];
  v69.origin.x = 0.0;
  v69.origin.y = 0.0;
  v69.size.width = width;
  v69.size.height = height;
  v57 = CGPathCreateWithRect(v69, 0);
  [(CAShapeLayer *)self->_opticalSwipeLayer setPath:v57];
  CGPathRelease(v57);
  if ((self->_contentOption & 4) != 0)
  {
    v58 = [(UIColor *)self->_foregroundColors[1] CGColor];
    for (i = 0; i != 60; ++i)
    {
      v60 = [(NTKDolomiteContentView *)self _createTritiumStrip:i size:self->_digitGroupLayer parentLayer:width, height];
      v61 = self->_stripLayers[i];
      self->_stripLayers[i] = v60;

      [(CAShapeLayer *)self->_stripLayers[i] setHidden:1];
      [(CAShapeLayer *)self->_stripLayers[i] setCompositingFilter:v55];
      [(CAShapeLayer *)self->_stripLayers[i] setFillColor:v58];
    }
  }

  v62 = [(NTKDolomiteContentView *)self _createFillShapeLayerOfSize:self->_textGroupLayer parent:width, 2.0];
  horizontalLineLayer = self->_horizontalLineLayer;
  self->_horizontalLineLayer = v62;

  [(CAShapeLayer *)self->_horizontalLineLayer setFillColor:[(UIColor *)self->_foregroundColors[1] CGColor]];
  v70.origin.x = 0.0;
  v70.origin.y = -1.0;
  v70.size.height = 2.0;
  v70.size.width = width;
  v64 = CGPathCreateWithRect(v70, 0);
  [(CAShapeLayer *)self->_horizontalLineLayer setPath:v64];
  CGPathRelease(v64);
  [(CAShapeLayer *)self->_horizontalLineLayer setHidden:self->_backgroundStyle != 2];
  v65 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v67 = "[NTKDolomiteContentView _setupSceneWithSize:]";
    _os_log_impl(&dword_0, v65, OS_LOG_TYPE_DEFAULT, "[%s] Updating date", buf, 0xCu);
  }

  [(NTKDolomiteContentView *)self updateDate];
}

- (void)_updateDigitsAnimated:(BOOL)a3 hour:(int)a4 minute:(int)a5 partialSeconds:(double)a6
{
  v10 = self;
  [(NTKDolomiteContentView *)self bounds];
  v12 = v11;
  v14 = v13;
  v15 = a5 + 60 * a4;
  sub_662C(v15, 0, v10->_is24HourMode, v10->_numeral, v11, v13);
  v45 = v43 = v15;
  if (a3)
  {
    v44 = sub_662C(v10->_currentDigitSet, 0, v10->_is24HourMode, v10->_numeral, v12, v14);
    v16 = sub_662C(v10->_currentDigitSet, 1, v10->_is24HourMode, v10->_numeral, v12, v14);
    v17 = sub_662C(v15, 2, v10->_is24HourMode, v10->_numeral, v12, v14);
    v18 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    v42 = v10;
    v19 = 0;
    if (a6 >= 0.875)
    {
      v31 = 0.25 - a6;
      v32 = v10;
      do
      {
        v33 = [v44 objectAtIndexedSubscript:v19];
        v34 = [v16 objectAtIndexedSubscript:v19];
        v35 = [v17 objectAtIndexedSubscript:v19];
        v36 = [v45 objectAtIndexedSubscript:v19];
        v37 = sub_6C04(v33, v34, v35, v36, v18, 0.0, v31);
        [(CAShapeLayer *)v32->_digitLayers[0] addAnimation:v37 forKey:@"digit"];

        ++v19;
        v32 = (v32 + 8);
      }

      while (v19 != 4);
    }

    else
    {
      v20 = 0.875 - a6;
      v21 = v10;
      do
      {
        v22 = [v44 objectAtIndexedSubscript:v19];
        v23 = [v16 objectAtIndexedSubscript:v19];
        v24 = [v17 objectAtIndexedSubscript:v19];
        v25 = [v45 objectAtIndexedSubscript:v19];
        v26 = sub_6C04(v22, v23, v24, v25, v18, v20, 0.25);
        [(CAShapeLayer *)v21->_digitLayers[0] addAnimation:v26 forKey:@"digit"];

        ++v19;
        v21 = (v21 + 8);
      }

      while (v19 != 4);
    }

    v41 = v18;
    v38 = 0;
    v39 = v42;
    do
    {
      v40 = [v45 objectAtIndexedSubscript:{v38, v41}];
      [(CAShapeLayer *)v39->_opticalDigitLayers[0] removeAnimationForKey:@"digit"];
      [(CAShapeLayer *)v39->_opticalDigitLayers[0] setPath:v40];
      CGPathRelease(v39->_digitDefaultPathRefs[0]);
      v39->_digitDefaultPathRefs[0] = v40;
      CGPathRelease(v39->_digitSnappedPathRefs[0]);
      v39->_digitSnappedPathRefs[0] = 0;
      ++v38;
      v39 = (v39 + 8);
    }

    while (v38 != 4);
    +[CATransaction commit];

    v10 = v42;
    v30 = v45;
  }

  else
  {
    v27 = 0;
    v28 = v10;
    do
    {
      v29 = [v45 objectAtIndexedSubscript:v27];
      [(CAShapeLayer *)v28->_digitLayers[0] removeAnimationForKey:@"digit"];
      [(CAShapeLayer *)v28->_digitLayers[0] setPath:v29];
      [(CAShapeLayer *)v28->_opticalDigitLayers[0] removeAnimationForKey:@"digit"];
      [(CAShapeLayer *)v28->_opticalDigitLayers[0] setPath:v29];
      CGPathRelease(v28->_digitDefaultPathRefs[0]);
      v28->_digitDefaultPathRefs[0] = v29;
      CGPathRelease(v28->_digitSnappedPathRefs[0]);
      v30 = v45;
      v28->_digitSnappedPathRefs[0] = 0;
      ++v27;
      v28 = (v28 + 8);
    }

    while (v27 != 4);
  }

  v10->_currentDigitSet = v43;
}

- (void)_hideTritiumStrips
{
  if (!self->_stripLayersHidden)
  {
    [(CAShapeLayer *)self->_backgroundSwipeLayer setHidden:0];
    [(CAShapeLayer *)self->_foregroundSwipeLayer setHidden:0];
    [(CAShapeLayer *)self->_horizontalLineLayer setHidden:1];
    [(CALayer *)self->_opticalGroupLayer setHidden:1];
    for (i = self->_stripSeconds; (i & 0x80000000) == 0; i = self->_stripSeconds)
    {
      self->_stripSeconds = i - 1;
      [(CAShapeLayer *)self->_stripLayers[i] setHidden:1];
    }

    self->_stripSeconds = 0;
    self->_stripLayersHidden = 1;
  }
}

- (void)_showTritiumStrips:(int)a3
{
  if (self->_stripLayersHidden)
  {
    [(CAShapeLayer *)self->_backgroundSwipeLayer setHidden:1];
    [(CAShapeLayer *)self->_foregroundSwipeLayer setHidden:1];
    [(CAShapeLayer *)self->_horizontalLineLayer setHidden:0];
    [(CALayer *)self->_opticalGroupLayer setHidden:0];
    self->_stripLayersHidden = 0;
  }

  for (i = self->_stripSeconds; i > a3; i = self->_stripSeconds)
  {
    self->_stripSeconds = i - 1;
    [(CAShapeLayer *)self->_stripLayers[i] setHidden:1];
  }

  for (; i <= a3; i = self->_stripSeconds)
  {
    self->_stripSeconds = i + 1;
    [(CAShapeLayer *)self->_stripLayers[i] setHidden:0];
  }

  [(CAShapeLayer *)self->_stripLayers[a3] frame];
  memset(&v10, 0, sizeof(v10));
  CGAffineTransformMakeTranslation(&v10, 0.0, v6);
  opticalMaskLayer = self->_opticalMaskLayer;
  v9 = v10;
  [(CAShapeLayer *)opticalMaskLayer setAffineTransform:&v9];
  opticalSwipeLayer = self->_opticalSwipeLayer;
  v9 = v10;
  [(CAShapeLayer *)opticalSwipeLayer setAffineTransform:&v9];
  self->_stripSeconds = a3;
}

- (id)_createTritiumStrip:(int)a3 size:(CGSize)a4 parentLayer:(id)a5
{
  width = a4.width;
  v8 = a5;
  [(NTKDolomiteContentView *)self bounds];
  v10 = v9;
  if (self->_contentOption)
  {
    v16 = v9 * 0.833333333 / -60.0;
    v14 = v16 * a3 + v9 * 0.916666667;
    v15 = v16 * (a3 + 1) + v9 * 0.916666667;
  }

  else
  {
    v11 = +[CLKDevice currentDevice];
    [v11 screenScale];
    v13 = v12;

    v14 = round(v10 * v13 * (60 - a3) / 60.0) / v13 + -1.0;
    v15 = round(v10 * v13 * (59 - a3) / 60.0) / v13;
  }

  v17 = v14 - v15 + 2.0;
  v18 = objc_opt_new();
  [v18 setFrame:{0.0, v14, width, v17}];
  v19 = sub_3FB4();
  [v18 setActions:v19];

  v23.origin.x = 0.0;
  v23.origin.y = 0.0;
  v23.size.width = width;
  v23.size.height = v17;
  v20 = CGPathCreateWithRect(v23, 0);
  [v18 setPath:v20];
  CGPathRelease(v20);
  [v8 addSublayer:v18];

  return v18;
}

- (id)_createSwipeLayerOfSize:(CGSize)a3 parent:(id)a4
{
  width = a3.width;
  v5 = a4;
  v6 = +[CAShapeLayer layer];
  [v6 setPosition:{width * 0.5, 0.0}];
  [v6 setBounds:{0.0, 0.0, width, 0.0}];
  v10.origin.x = 0.0;
  v10.origin.y = 0.0;
  v10.size.height = 0.0;
  v10.size.width = width;
  [v6 setPath:{CGPathCreateWithRect(v10, 0)}];
  [v6 setAnchorPoint:{0.5, 0.0}];
  [v6 setLineCap:kCALineCapRound];
  [v6 setLineWidth:2.0];
  v7 = sub_3FB4();
  [v6 setActions:v7];

  [v5 addSublayer:v6];

  return v6;
}

- (id)_createFillShapeLayerOfSize:(CGSize)a3 parent:(id)a4
{
  height = a3.height;
  width = a3.width;
  v6 = a4;
  v7 = objc_opt_new();
  [v7 setPosition:{width * 0.5, height * 0.5}];
  [v7 setBounds:{0.0, 0.0, width, height}];
  [v7 setLineCap:kCALineCapRound];
  [v7 setLineWidth:2.0];
  v8 = sub_3FB4();
  [v7 setActions:v8];

  [v6 addSublayer:v7];

  return v7;
}

- (id)_createLayerOfSize:(CGSize)a3 parent:(id)a4
{
  height = a3.height;
  width = a3.width;
  v6 = a4;
  v7 = +[CALayer layer];
  [v7 setPosition:{width * 0.5, height * 0.5}];
  [v7 setBounds:{0.0, 0.0, width, height}];
  v8 = sub_3FB4();
  [v7 setActions:v8];

  [v6 addSublayer:v7];

  return v7;
}

- (id)_createViewOfSize:(CGSize)a3 parent:(id)a4
{
  height = a3.height;
  width = a3.width;
  v6 = a4;
  v7 = [[UIView alloc] initWithFrame:{0.0, 0.0, width, height}];
  v8 = [v7 layer];
  [v8 setPosition:{width * 0.5, height * 0.5}];
  [v8 setBounds:{0.0, 0.0, width, height}];
  v9 = sub_3FB4();
  [v8 setActions:v9];

  [v6 addSubview:v7];

  return v7;
}

- (void)setDigitFadeFraction:(double)a3
{
  if (self->_digitFadeFraction != a3)
  {
    self->_digitFadeFraction = a3;
    CLKMapFractionIntoRange();
    memset(&v8, 0, sizeof(v8));
    CGAffineTransformMakeScale(&v8, v5, v5);
    textGroupView = self->_textGroupView;
    v7 = v8;
    [(UIView *)textGroupView setTransform:&v7];
    [(UIView *)self->_textGroupView setAlpha:a3];
  }
}

@end