@interface NTKMagmaEffectsView
- (NTKMagmaEffectsView)initWithFrame:(CGRect)a3 device:(id)a4;
- (id)_buttonColor;
- (void)_addEffect:(id)a3;
- (void)_loadBackgroundIfNeeded;
- (void)_loadSwoosh;
- (void)_setupQuadView;
- (void)_tapAtPoint:(CGPoint)a3;
- (void)_triggerDanceAnimation;
- (void)_triggerTimeChangeAnimation;
- (void)_updatePaused;
- (void)applyDeviceMotion:(id)a3;
- (void)buttonHighlightedChanged:(BOOL)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)magmaRendererPrepareForFrameWithTime:(double)a3;
- (void)setColorPalette:(id)a3;
- (void)setEditing:(BOOL)a3;
- (void)timeFormatterTextDidChange:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation NTKMagmaEffectsView

- (NTKMagmaEffectsView)initWithFrame:(CGRect)a3 device:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v22.receiver = self;
  v22.super_class = NTKMagmaEffectsView;
  v11 = [(NTKMagmaEffectsView *)&v22 initWithFrame:x, y, width, height];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_device, a4);
    v12->_distortionMultiplier = 1.0;
    v12->_lastTapTime = 0.0;
    [(NTKMagmaEffectsView *)v12 _setupQuadView];
    v13 = objc_alloc_init(NTKMagmaMotionEffect);
    motionEffect = v12->_motionEffect;
    v12->_motionEffect = v13;

    v15 = objc_alloc_init(NTKMagmaCrownEffect);
    crownEffect = v12->_crownEffect;
    v12->_crownEffect = v15;

    v17 = objc_opt_new();
    effects = v12->_effects;
    v12->_effects = v17;

    [(NTKMagmaEffectsView *)v12 _addEffect:v12->_motionEffect];
    [(NTKMagmaEffectsView *)v12 _addEffect:v12->_crownEffect];
    v19 = [[CLKTimeFormatter alloc] initWithForcesLatinNumbers:1];
    timeFormatter = v12->_timeFormatter;
    v12->_timeFormatter = v19;

    [(CLKTimeFormatter *)v12->_timeFormatter setIncludeSeparatorInTimeSubstringFromSeparatorText:0];
    [(CLKTimeFormatter *)v12->_timeFormatter setZeroPadTimeSubstringToSeparatorText:1];
    [(CLKTimeFormatter *)v12->_timeFormatter addObserver:v12];
  }

  return v12;
}

- (void)dealloc
{
  [(CLKTimeFormatter *)self->_timeFormatter removeObserver:self];
  v3.receiver = self;
  v3.super_class = NTKMagmaEffectsView;
  [(NTKMagmaEffectsView *)&v3 dealloc];
}

- (void)layoutSubviews
{
  v2.receiver = self;
  v2.super_class = NTKMagmaEffectsView;
  [(NTKMagmaEffectsView *)&v2 layoutSubviews];
}

- (void)setEditing:(BOOL)a3
{
  if (self->_editing != a3)
  {
    self->_editing = a3;
    [(NTKMagmaQuad *)self->_quad setRunPhysics:!a3];
  }
}

- (void)_updatePaused
{
  paused = self->_paused;
  [(CLKUIQuadView *)self->_quadView setPaused:paused];

  [(NTKMagmaEffectsView *)self setUserInteractionEnabled:paused ^ 1];
}

- (void)_setupQuadView
{
  [(NTKMagmaEffectsView *)self bounds];
  v3 = [CLKUIQuadView quadViewWithFrame:@"Mgma" identifier:?];
  quadView = self->_quadView;
  self->_quadView = v3;

  v5 = [NTKMagmaQuad alloc];
  [(CLKDevice *)self->_device screenScale];
  v6 = [(NTKMagmaQuad *)v5 initWithScale:?];
  quad = self->_quad;
  self->_quad = v6;

  [(CLKUIQuadView *)self->_quadView addQuad:self->_quad];
  [(NTKMagmaQuad *)self->_quad setRunPhysics:0];
  [(NTKMagmaQuad *)self->_quad setDelegate:self];
  [(NTKMagmaEffectsView *)self _loadSwoosh];
  v8 = self->_quadView;

  [(NTKMagmaEffectsView *)self addSubview:v8];
}

- (void)magmaRendererPrepareForFrameWithTime:(double)a3
{
  if (self->_buttonHighlightAnimating)
  {
    v5 = (a3 - self->_buttonHighlightLastChange) / 0.15;
    if (v5 > 1.0)
    {
      v5 = 1.0;
    }

    self->_buttonHighlightFraction = 1.0 - v5;
    if (fabs(v5 + -1.0) < 0.00000011920929)
    {
      self->_buttonHighlightFraction = 0.0;
      self->_buttonHighlightAnimating = 0;
    }

    quad = self->_quad;
    v7 = [(NTKMagmaEffectsView *)self _buttonColor];
    [(NTKMagmaQuad *)quad setLogoColor:v7];
  }

  obj = self->_effects;
  objc_sync_enter(obj);
  v8 = [(NSMutableArray *)self->_effects copy];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v10)
  {
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        [v13 applyForTime:self->_quad quad:a3];
        if ([v13 isComplete])
        {
          [(NSMutableArray *)self->_effects removeObject:v13];
          v14 = _NTKLoggingObjectForDomain();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [objc_opt_class() description];
            *buf = 138412290;
            v22 = v15;
            _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Magma effect %@ completed", buf, 0xCu);
          }
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v10);
  }

  objc_sync_exit(obj);
}

- (void)timeFormatterTextDidChange:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_shouldSkipTimeFormatterTextChange)
  {
    self->_shouldSkipTimeFormatterTextChange = 0;
  }

  else
  {
    v6 = [v4 timeSubstringToSeparatorText];
    v7 = [v5 timeSubstringFromSeparatorText];
    if (![v6 isEqual:self->_displayedUpperLabelText] || (objc_msgSend(v7, "isEqual:", self->_displayedLowerLabelText) & 1) == 0)
    {
      objc_storeStrong(&self->_displayedUpperLabelText, v6);
      objc_storeStrong(&self->_displayedLowerLabelText, v7);
      sub_3768(self->_device, &v27);
      v8 = *(&v27 + 1);
      sub_3768(self->_device, &v25);
      v9 = v8 - v26;
      v23 = 0u;
      v24 = 0u;
      sub_3768(self->_device, v22);
      [NTKMagmaTimeRenderer renderTimeWithHour:v6 minute:v7 fontSize:v22[0] lineSpacing:v9];
      [(NTKMagmaEffectsView *)self bounds];
      [v23 size];
      [(NTKMagmaEffectsView *)self bounds];
      sub_3768(self->_device, &v21);
      device = self->_device;
      CLKPointRoundForDevice();
      v12 = v11;
      v14 = v13;
      quad = self->_quad;
      [v23 size];
      [(NTKMagmaQuad *)quad setScreenBoundRect:v12, v14, v16, v17];
      [(NTKMagmaQuad *)self->_quad updateTimeTextureWithImage:v23 tritiumImage:v12 origin:v14];
      if (self->_showingOverrideTime)
      {
        v18 = 1;
      }

      else
      {
        v19 = [v5 overrideDate];
        v18 = v19 != 0;
      }

      if (!self->_inTritium && !self->_paused && !v18)
      {
        [(NTKMagmaEffectsView *)self _triggerTimeChangeAnimation];
      }
    }

    v20 = [v5 overrideDate];
    self->_showingOverrideTime = v20 != 0;
  }
}

- (void)_addEffect:(id)a3
{
  v4 = a3;
  v5 = self->_effects;
  objc_sync_enter(v5);
  [(NSMutableArray *)self->_effects addObject:v4];
  v6 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [objc_opt_class() description];
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Magma effect %@ started", &v8, 0xCu);
  }

  objc_sync_exit(v5);
}

- (void)_triggerTimeChangeAnimation
{
  v3 = [[NTKMagmaTimeChangeEffect alloc] initWithStart:CACurrentMediaTime() duration:0.5 magnitude:11.5 radius:0.3];
  [(NTKMagmaEffectsView *)self _addEffect:v3];
}

- (void)_triggerDanceAnimation
{
  v3 = [[NTKMagmaTritiumOffEffect alloc] initWithStart:CACurrentMediaTime() duration:0.4 magnitude:1.25 radius:0.3 speed:0.5];
  [(NTKMagmaEffectsView *)self _addEffect:v3];
}

- (void)applyDeviceMotion:(id)a3
{
  v4 = a3;
  v42 = v4;
  if (v4)
  {
    [v4 rotationRate];
    v40 = v6;
    v41 = v5;
    v8 = v7;
    [v42 userAcceleration];
    v38 = v10;
    v39 = v9;
    TuningWithDefault = NTKMagmaGetTuningWithDefault(@"MagmaSpinMax", 1.0);
    v12 = NTKMagmaGetTuningWithDefault(@"MagmaSpinMultiplier", 1.3);
    v13 = NTKMagmaGetTuningWithDefault(@"MagmaSpinNoise", 1.3);
    v14 = v8 * v12;
    if (v8 * v12 < -TuningWithDefault)
    {
      v14 = -TuningWithDefault;
    }

    if (v14 >= TuningWithDefault)
    {
      v15 = TuningWithDefault;
    }

    else
    {
      v15 = v14;
    }

    v16 = NTKMagmaGetTuningWithDefault(@"MagmaLateralMax", 2.0);
    v36 = NTKMagmaGetTuningWithDefault(@"MagmaLateralMultiplier", 1.0);
    v17 = NTKMagmaGetTuningWithDefault(@"MagmaLateralNoise", 1.0);
    v18.f64[0] = v40;
    v18.f64[1] = v41;
    v19 = vcvt_f32_f64(vmulq_n_f64(vnegq_f64(v18), v36));
    v20 = sqrtf(vaddv_f32(vmul_f32(v19, v19)));
    if (v20 > 0.0)
    {
      v21 = fmin(v16 / v20, 1.0);
      v19 = vmul_n_f32(v19, v21);
    }

    v22 = -v15;
    v23 = NTKMagmaGetTuningWithDefault(@"MagmaLinearMax", 2.0);
    v37 = NTKMagmaGetTuningWithDefault(@"MagmaLinearMultiplier", 1.0);
    v24 = NTKMagmaGetTuningWithDefault(@"MagmaLinearNoise", 1.0);
    v25.f64[0] = v39;
    v26.f64[0] = v39;
    v26.f64[1] = -v38;
    v27 = vcvt_f32_f64(vmulq_n_f64(v26, v37));
    v28 = sqrtf(vaddv_f32(vmul_f32(v27, v27)));
    if (v28 > 0.0)
    {
      v29 = fmin(v23 / v28, 1.0);
      v27 = vmul_n_f32(v27, v29);
    }

    v30.f64[0] = v41;
    v30.f64[1] = v40;
    *&v30.f64[0] = vcvt_f32_f64(v30);
    v25.f64[1] = v38;
    v31 = vcvt_f32_f64(v25);
    v32 = v13 * v22 + sqrtf(vaddv_f32(vmul_f32(*&v30.f64[0], *&v30.f64[0]))) * v17 + sqrtf(vaddv_f32(vmul_f32(v31, v31))) * v24;
    [(NTKMagmaMotionEffect *)self->_motionEffect setLinear:COERCE_DOUBLE(vadd_f32(v19, v27))];
    *&v33 = v22;
    [(NTKMagmaMotionEffect *)self->_motionEffect setSpin:v33];
    motionEffect = self->_motionEffect;
    *&v35 = v32;
  }

  else
  {
    [(NTKMagmaMotionEffect *)self->_motionEffect setLinear:0.0];
    [(NTKMagmaMotionEffect *)self->_motionEffect setSpin:0.0];
    motionEffect = self->_motionEffect;
    v35 = 0.0;
  }

  [(NTKMagmaMotionEffect *)motionEffect setNoise:v35];
}

- (void)_loadSwoosh
{
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  sub_3768(self->_device, &v19);
  v18 = [NTKMagmaFaceBundle imageWithName:@"victory-logo"];
  v3 = *(&v21 + 1);
  v4 = *&v21;
  [(CLKDevice *)self->_device screenScale];
  v6 = v4 * v5;
  v7 = (v4 * v5);
  [(CLKDevice *)self->_device screenScale];
  v9 = v3 * v8;
  v10 = (v3 * v8);
  DeviceGray = CGColorSpaceCreateDeviceGray();
  v12 = CGBitmapContextCreate(0, v7, v10, 8uLL, v7, DeviceGray, 7u);
  v13 = v18;
  v14 = [v18 CGImage];
  v23.origin.x = 0.0;
  v23.origin.y = 0.0;
  v23.size.width = v6;
  v23.size.height = v9;
  CGContextDrawImage(v12, v23, v14);
  Image = CGBitmapContextCreateImage(v12);
  [(CLKDevice *)self->_device screenScale];
  v16 = [UIImage imageWithCGImage:Image scale:0 orientation:?];
  CGImageRelease(Image);
  CGColorSpaceRelease(DeviceGray);
  CGContextRelease(v12);
  [(NTKMagmaEffectsView *)self bounds];
  v17 = CGRectGetMidX(v24) - v4 * 0.5;
  [(NTKMagmaEffectsView *)self bounds];
  [(NTKMagmaQuad *)self->_quad updateLogoTextureWithImage:v16 origin:v17, CGRectGetHeight(v25) * 0.5 + *(&v20 + 1) - v3];
}

- (void)_loadBackgroundIfNeeded
{
  if (![(NTKMagmaColorPalette *)self->_palette isSpecialColor])
  {
    return;
  }

  palette = self->_palette;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = self->_palette;
  if ((isKindOfClass & 1) == 0)
  {
    if (([(NTKMagmaColorPalette *)v5 isRainbowColor]& 1) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  v35 = v5;
  v6 = [(NTKMagmaColorPalette *)v35 fromPalette];
  v7 = [(NTKMagmaColorPalette *)v35 toPalette];
  if (([v7 isTritium] & 1) == 0)
  {
    v8 = [v6 backgroundStyle];
    if (v8 == [v7 backgroundStyle])
    {
      [(NTKMagmaColorPalette *)v35 transitionFraction];
      if (v9 < 0.5)
      {
        v10 = [v6 isRainbowColor];

        if (!v10)
        {
          goto LABEL_15;
        }

LABEL_9:
        if (self->_rainbowIsLoaded)
        {
          return;
        }

        v11 = 1;
        goto LABEL_16;
      }

      v12 = [v7 isRainbowColor];

      if (v12)
      {
        goto LABEL_9;
      }

LABEL_15:
      v11 = 0;
LABEL_16:
      [(CLKDevice *)self->_device screenBounds];
      v14 = v13;
      v16 = v15;
      [(CLKDevice *)self->_device screenScale];
      v18 = v17;
      v19 = (v14 * v17);
      v20 = (v16 * v17);
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      v22 = CGBitmapContextCreate(0, v19, v20, 8uLL, 4 * v19, DeviceRGB, 0x4001u);
      if (v11)
      {
        v23 = NTKImageNamed();
        v24 = [v23 CGImage];
        v40.origin.x = 0.0;
        v40.origin.y = 0.0;
        v40.size.width = v19;
        v40.size.height = v20;
        CGContextDrawImage(v22, v40, v24);
        self->_rainbowIsLoaded = 1;
      }

      else
      {
        v25 = +[CAGradientLayer layer];
        v37[0] = @"frame";
        v26 = +[NSNull null];
        v38[0] = v26;
        v37[1] = @"contentsScale";
        v27 = +[NSNull null];
        v38[1] = v27;
        v37[2] = @"colors";
        v28 = +[NSNull null];
        v38[2] = v28;
        v29 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:3];
        [v25 setActions:v29];

        [(NTKMagmaEffectsView *)self bounds];
        [v25 setFrame:?];
        [v25 setContentsScale:v18];
        v30 = [(NTKMagmaColorPalette *)self->_palette maskedBackgroundStart];
        v36[0] = [v30 CGColor];
        v31 = [(NTKMagmaColorPalette *)self->_palette maskedBackgroundEnd];
        v36[1] = [v31 CGColor];
        v32 = [NSArray arrayWithObjects:v36 count:2];
        [v25 setColors:v32];

        CGContextTranslateCTM(v22, 0.0, v20);
        CGContextScaleCTM(v22, v18, -v18);
        [v25 renderInContext:v22];
        self->_rainbowIsLoaded = 0;
      }

      Image = CGBitmapContextCreateImage(v22);
      v34 = [UIImage imageWithCGImage:Image scale:0 orientation:v18];
      CGImageRelease(Image);
      CGColorSpaceRelease(DeviceRGB);
      CGContextRelease(v22);
      [(NTKMagmaQuad *)self->_quad updateBackgroundTextureWithImage:v34];

      return;
    }
  }
}

- (id)_buttonColor
{
  v3 = [(NTKMagmaColorPalette *)self->_palette swoosh];
  v4 = [v3 colorWithAlphaComponent:0.6];

  v5 = [(NTKMagmaColorPalette *)self->_palette swoosh];
  buttonHighlightFraction = self->_buttonHighlightFraction;
  v7 = NTKInterpolateBetweenColors();

  return v7;
}

- (void)setColorPalette:(id)a3
{
  objc_storeStrong(&self->_palette, a3);
  v23 = a3;
  [(NTKMagmaEffectsView *)self _loadBackgroundIfNeeded];
  v5 = [v23 backgroundTextureAlpha];
  [v5 doubleValue];
  v7 = v6;

  v8 = [v23 backgroundMask];
  [v8 doubleValue];
  v10 = v9;

  quad = self->_quad;
  v12 = [v23 digitsOutline];
  [(NTKMagmaQuad *)quad setTimeOutlineColor:v12];

  v13 = self->_quad;
  v14 = [v23 digits];
  [(NTKMagmaQuad *)v13 setTimeFillColor:v14];

  *&v15 = v7;
  [(NTKMagmaQuad *)self->_quad setBackgroundTextureAlpha:v15];
  v16 = self->_quad;
  v17 = [v23 backgroundStart];
  [(NTKMagmaQuad *)v16 setBackgroundTopColor:v17];

  v18 = self->_quad;
  v19 = [v23 backgroundEnd];
  [(NTKMagmaQuad *)v18 setBackgroundBottomColor:v19];

  v20 = self->_quad;
  v21 = [(NTKMagmaEffectsView *)self _buttonColor];
  [(NTKMagmaQuad *)v20 setLogoColor:v21];

  *&v22 = v10;
  [(NTKMagmaQuad *)self->_quad setMaskingFraction:v22];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v5 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) locationInView:self];
        [(NTKMagmaEffectsView *)self _tapAtPoint:?];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_tapAtPoint:(CGPoint)a3
{
  x = a3.x;
  y = a3.y;
  v4 = CACurrentMediaTime();
  if (v4 - self->_lastTapTime >= 0.1)
  {
    self->_lastTapTime = v4;
    TuningWithDefault = NTKMagmaGetTuningWithDefault(@"MagmaTouchMultiplier", -138.0);
    v9 = NTKMagmaGetTuningWithDefault(@"MagmaTouchSize", 0.35);
    v8.f64[0] = x;
    v8.f64[1] = y;
    v6 = COERCE_DOUBLE(vcvt_f32_f64(v8));
    quad = self->_quad;
    *v8.f64 = TuningWithDefault;
    *&v9 = v9;
    if (TuningWithDefault <= 0.0)
    {

      [(NTKMagmaQuad *)quad applyQuadraticRepuslorWithOrigin:v6 magnitude:v8.f64[0] radius:v9];
    }

    else
    {

      [(NTKMagmaQuad *)quad applyUniformRepuslorWithOrigin:v6 magnitude:v8.f64[0] radius:v9];
    }
  }
}

- (void)buttonHighlightedChanged:(BOOL)a3
{
  self->_buttonHighlighted = a3;
  if (a3)
  {
    v4 = 0;
    v5 = 1.0;
    v6 = &OBJC_IVAR___NTKMagmaEffectsView__buttonHighlightFraction;
  }

  else
  {
    v4 = 1;
    v6 = &OBJC_IVAR___NTKMagmaEffectsView__buttonHighlightLastChange;
    v5 = CACurrentMediaTime();
  }

  *(&self->super.super.super.isa + *v6) = v5;
  self->_buttonHighlightAnimating = v4;
  quad = self->_quad;
  v8 = [(NTKMagmaEffectsView *)self _buttonColor];
  [(NTKMagmaQuad *)quad setLogoColor:v8];
}

@end