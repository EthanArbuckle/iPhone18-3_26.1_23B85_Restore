@interface AAUIBadgeView
- (AAUIBadgeModelConfiguration)configuration;
- (AAUIBadgeViewDelegate)badgeDelegate;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)isPaused;
- (NSNumber)overrideEarnedShader;
- (double)_attenuatedSpinRate:(double)rate;
- (double)_attenuatedVelocity:(double)velocity;
- (double)playFlipInAnimation;
- (double)playFlipOutAnimation;
- (double)timeSinceLastUpdate;
- (float)_normalizeAngle:(float)angle;
- (id)_defaultTweaks;
- (id)_unearnedShaderDefaultTweaks;
- (id)_valueForTweak:(id)tweak;
- (id)initUsingEarnedShader:(BOOL)shader;
- (id)snapshot;
- (id)updateBadgeModelForDrawable:(id)drawable;
- (void)_applyImpulse:(double)impulse;
- (void)_generateBackTextureImage;
- (void)_longPressInternalOnly:(id)only;
- (void)_panned:(id)_panned;
- (void)_setBackTextureNeedsRegeneration;
- (void)_spin360Degrees;
- (void)_tapped:(id)_tapped;
- (void)cleanupAfterSnapshot;
- (void)resizeBadgeForCurrentViewSize;
- (void)setBadgeBacksideAttributedString:(id)string;
- (void)setBadgeBacksideIcon:(id)icon;
- (void)setConfiguration:(id)configuration;
- (void)setFixedBadgeAngle:(double)angle;
- (void)setPaused:(BOOL)paused;
@end

@implementation AAUIBadgeView

- (NSNumber)overrideEarnedShader
{
  overrideEarnedShader = self->_overrideEarnedShader;
  if (!overrideEarnedShader)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v5 = [standardUserDefaults objectForKey:@"UseEarnedShader"];
    v6 = self->_overrideEarnedShader;
    self->_overrideEarnedShader = v5;

    overrideEarnedShader = self->_overrideEarnedShader;
  }

  return overrideEarnedShader;
}

- (id)_defaultTweaks
{
  v13[8] = *MEMORY[0x277D85DE8];
  v12[0] = @"springMass";
  v2 = [&unk_2850CFCE0 mutableCopy];
  v13[0] = v2;
  v12[1] = @"springStiffness";
  v3 = [&unk_2850CFD08 mutableCopy];
  v13[1] = v3;
  v12[2] = @"springDamping";
  v4 = [&unk_2850CFD30 mutableCopy];
  v13[2] = v4;
  v12[3] = @"spinDrag";
  v5 = [&unk_2850CFD58 mutableCopy];
  v13[3] = v5;
  v12[4] = @"magneticForce";
  v6 = [&unk_2850CFD80 mutableCopy];
  v13[4] = v6;
  v12[5] = @"velocityForce";
  v7 = [&unk_2850CFDA8 mutableCopy];
  v13[5] = v7;
  v12[6] = @"unstickingForce";
  v8 = [&unk_2850CFDD0 mutableCopy];
  v13[6] = v8;
  v12[7] = @"velocityForcePower";
  v9 = [&unk_2850CFDF8 mutableCopy];
  v13[7] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:8];

  return v10;
}

- (id)initUsingEarnedShader:(BOOL)shader
{
  v33 = *MEMORY[0x277D85DE8];
  v30.receiver = self;
  v30.super_class = AAUIBadgeView;
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  v8 = [(AAUIBadgeView *)&v30 initWithFrame:*MEMORY[0x277CBF3A0], v5, v6, v7];
  v9 = v8;
  if (!v8)
  {
    return v9;
  }

  v8->_magnetsEngaged = 1;
  overrideEarnedShader = [(AAUIBadgeView *)v8 overrideEarnedShader];

  if (overrideEarnedShader)
  {
    overrideEarnedShader2 = [(AAUIBadgeView *)v9 overrideEarnedShader];
    p_useEarnedShader = &v9->_useEarnedShader;
    v9->_useEarnedShader = [overrideEarnedShader2 BOOLValue];

    v13 = ACHLogDefault();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      overrideEarnedShader3 = [(AAUIBadgeView *)v9 overrideEarnedShader];
      *buf = 138543362;
      v32 = overrideEarnedShader3;
      _os_log_impl(&dword_23E4A3000, v13, OS_LOG_TYPE_DEFAULT, "Overriding earned shader value: %{public}@", buf, 0xCu);
    }

    if (*p_useEarnedShader)
    {
      goto LABEL_6;
    }

LABEL_8:
    _unearnedShaderDefaultTweaks = [(AAUIBadgeView *)v9 _unearnedShaderDefaultTweaks];
    goto LABEL_9;
  }

  p_useEarnedShader = &v9->_useEarnedShader;
  v9->_useEarnedShader = shader;
  if (!shader)
  {
    goto LABEL_8;
  }

LABEL_6:
  _unearnedShaderDefaultTweaks = [(AAUIBadgeView *)v9 _defaultTweaks];
LABEL_9:
  tweakableUniforms = v9->_tweakableUniforms;
  v9->_tweakableUniforms = _unearnedShaderDefaultTweaks;

  v17 = objc_alloc_init(AAUIBadge);
  badge = v9->_badge;
  v9->_badge = v17;

  if ((*p_useEarnedShader & 1) == 0)
  {
    [(AAUIBadge *)v9->_badge setMaxRotationY:1.48352986];
  }

  [(AAUIBadgeView *)v9 _invalidateLastUpdateTime];
  v19 = [[AAUIMetalBadgeView alloc] initUsingEarnedShader:*p_useEarnedShader delegate:v9];
  drawable = v9->_drawable;
  v9->_drawable = v19;

  if (v9->_drawable)
  {
    [(AAUIBadgeView *)v9 setAutoresizingMask:18];
    view = [(AAUIBadgeViewDrawable *)v9->_drawable view];
    [view setFrame:{v4, v5, v6, v7}];

    view2 = [(AAUIBadgeViewDrawable *)v9->_drawable view];
    [(AAUIBadgeView *)v9 addSubview:view2];
  }

  v23 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:v9 action:sel__panned_];
  spinRecognizer = v9->_spinRecognizer;
  v9->_spinRecognizer = v23;

  [(UIPanGestureRecognizer *)v9->_spinRecognizer setDelegate:v9];
  [(AAUIBadgeView *)v9 addGestureRecognizer:v9->_spinRecognizer];
  v25 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v9 action:sel__tapped_];
  tapRecognizer = v9->_tapRecognizer;
  v9->_tapRecognizer = v25;

  [(AAUIBadgeView *)v9 addGestureRecognizer:v9->_tapRecognizer];
  if ([MEMORY[0x277CCDD30] isAppleInternalInstall])
  {
    v27 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:v9 action:sel__longPressInternalOnly_];
    longPressRecognizer = v9->_longPressRecognizer;
    v9->_longPressRecognizer = v27;

    [(UILongPressGestureRecognizer *)v9->_longPressRecognizer setNumberOfTouchesRequired:2];
    [(AAUIBadgeView *)v9 addGestureRecognizer:v9->_longPressRecognizer];
  }

  return v9;
}

- (id)_unearnedShaderDefaultTweaks
{
  v13[8] = *MEMORY[0x277D85DE8];
  v12[0] = @"springMass";
  v2 = [&unk_2850CFE20 mutableCopy];
  v13[0] = v2;
  v12[1] = @"springStiffness";
  v3 = [&unk_2850CFE48 mutableCopy];
  v13[1] = v3;
  v12[2] = @"springDamping";
  v4 = [&unk_2850CFE70 mutableCopy];
  v13[2] = v4;
  v12[3] = @"spinDrag";
  v5 = [&unk_2850CFE98 mutableCopy];
  v13[3] = v5;
  v12[4] = @"magneticForce";
  v6 = [&unk_2850CFEC0 mutableCopy];
  v13[4] = v6;
  v12[5] = @"velocityForce";
  v7 = [&unk_2850CFEE8 mutableCopy];
  v13[5] = v7;
  v12[6] = @"unstickingForce";
  v8 = [&unk_2850CFF10 mutableCopy];
  v13[6] = v8;
  v12[7] = @"velocityForcePower";
  v9 = [&unk_2850CFF38 mutableCopy];
  v13[7] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:8];

  return v10;
}

- (id)_valueForTweak:(id)tweak
{
  v3 = [(NSDictionary *)self->_tweakableUniforms objectForKey:tweak];
  v4 = [v3 objectForKey:@"value"];

  return v4;
}

- (float)_normalizeAngle:(float)angle
{
  result = fmodf(angle, 6.2832);
  v4 = result;
  if (result <= 3.14159265)
  {
    if (v4 < -3.14159265)
    {
      return v4 + 6.28318531;
    }
  }

  else
  {
    v5 = 6.28318531 - v4;
    return -v5;
  }

  return result;
}

- (id)updateBadgeModelForDrawable:(id)drawable
{
  drawableCopy = drawable;
  if (self->_useEarnedShader)
  {
    backTextureImage = [(AAUIBadgeView *)self backTextureImage];

    if (!backTextureImage)
    {
      [(AAUIBadgeView *)self _generateBackTextureImage];
    }
  }

  [(AAUIBadgeView *)self timeSinceLastUpdate];
  v7 = v6;
  [(AAUIBadge *)self->_badge rotationY];
  v9 = v8;
  if (![(AAUIBadgeView *)self magnetsEngaged])
  {
    [(ARUIAnimatableObject *)self->_badge update:v7];
  }

  magnetsEngaged = [(AAUIBadgeView *)self magnetsEngaged];
  [(AAUIBadge *)self->_badge rotationY];
  if (magnetsEngaged)
  {
    *&v11 = v11;
    [(AAUIBadgeView *)self _normalizeAngle:v11];
    v13 = v12;
    v14 = [(AAUIBadgeView *)self _valueForTweak:@"magneticForce"];
    [v14 doubleValue];
    v16 = v15;

    v17 = [(AAUIBadgeView *)self _valueForTweak:@"velocityForce"];
    [v17 doubleValue];
    v19 = v18;

    v20 = [(AAUIBadgeView *)self _valueForTweak:@"velocityForcePower"];
    [v20 doubleValue];
    v22 = v21;

    v23 = [(AAUIBadgeView *)self _valueForTweak:@"spinDrag"];
    [v23 doubleValue];
    v42 = v24;

    v25 = [(AAUIBadgeView *)self _valueForTweak:@"unstickingForce"];
    [v25 doubleValue];
    v27 = v26;

    spinRate = self->_spinRate;
    if (spinRate >= 0.0)
    {
      v29 = self->_spinRate;
    }

    else
    {
      v29 = -spinRate;
    }

    v30 = v13;
    v31 = v19 * pow(v29, v22);
    if (spinRate <= 0.0)
    {
      v32 = -v31;
    }

    else
    {
      v32 = v31;
    }

    v33 = v16 * cos(v30 * 2.0 + 1.57079633);
    v34 = v27 * (1.0 / pow(v29 + 1.0, 3.0));
    v35 = v33 - v32 + sin(v30) * v34;
    v36 = (1.0 - v42 * v7) * (spinRate + v35 * v7);
    self->_spinRate = v36;
    [(AAUIBadge *)self->_badge setRotationY:(v30 + v36 * v7)];
    v37 = self->_spinRate;
    if (v37 < 0.0)
    {
      v37 = -v37;
    }

    if (v37 < 0.01)
    {
      v38 = -v35;
      if (v35 >= 0.0)
      {
        v38 = v35;
      }

      if (v38 < 0.02)
      {
        [(AAUIBadgeView *)self setPaused:1];
      }
    }
  }

  else
  {
    self->_spinRate = (v11 - v9) / v7;
  }

  self->_lastUpdateTime = CACurrentMediaTime();
  badge = self->_badge;
  v40 = badge;

  return badge;
}

- (double)timeSinceLastUpdate
{
  v2 = 0.0;
  if (![(AAUIBadgeView *)self isPaused])
  {
    return CACurrentMediaTime() - self->_lastUpdateTime;
  }

  return v2;
}

- (void)setBadgeBacksideAttributedString:(id)string
{
  stringCopy = string;
  if (([stringCopy isEqualToAttributedString:self->_backsideAttributedString] & 1) == 0)
  {
    objc_storeStrong(&self->_backsideAttributedString, string);
    [(AAUIBadgeView *)self _setBackTextureNeedsRegeneration];
  }
}

- (void)setBadgeBacksideIcon:(id)icon
{
  iconCopy = icon;
  if (self->_backAppleLogo != iconCopy)
  {
    v6 = iconCopy;
    objc_storeStrong(&self->_backAppleLogo, icon);
    [(AAUIBadgeView *)self _setBackTextureNeedsRegeneration];
    iconCopy = v6;
  }
}

- (void)_setBackTextureNeedsRegeneration
{
  [(AAUIBadgeView *)self setBackTextureImage:0];

  [(AAUIBadgeView *)self setNeedsDisplay];
}

- (void)_generateBackTextureImage
{
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  configuration = [(AAUIBadgeView *)self configuration];
  badgeShape = [configuration badgeShape];

  *&v7 = 0.0;
  if (badgeShape <= 3)
  {
    if (badgeShape <= 1)
    {
      if (badgeShape)
      {
        if (badgeShape == 1)
        {
          v3 = 268.8;
          v8 = 134.4;
LABEL_14:
          v4 = v3;
          v55 = 1.16;
          goto LABEL_22;
        }

        goto LABEL_17;
      }

      goto LABEL_8;
    }

    if (badgeShape != 2)
    {
      v3 = 256.0;
      v8 = 128.0;
      v4 = 256.0;
      v55 = 1.16;
      goto LABEL_22;
    }

    goto LABEL_15;
  }

  if (badgeShape <= 5)
  {
    if (badgeShape != 4)
    {
LABEL_8:
      *&v7 = 1.20754717;
      v4 = 212.0;
LABEL_16:
      v3 = v4;
      goto LABEL_17;
    }

LABEL_15:
    *&v7 = 1.16;
    v4 = 278.0;
    goto LABEL_16;
  }

  if (badgeShape == 6)
  {
    v3 = 207.8;
    v8 = 86.95;
    v4 = 207.8;
    v55 = 1.16;
    goto LABEL_22;
  }

  if (badgeShape == 7)
  {
    v3 = 240.6;
    v8 = 120.3;
    goto LABEL_14;
  }

LABEL_17:
  v8 = v4 * 0.5;
  v55 = *&v7;
  if (badgeShape <= 3 && badgeShape > 1)
  {
    v8 = v8 + -26.0;
  }

LABEL_22:
  v60.width = v3;
  v60.height = v4;
  UIGraphicsBeginImageContextWithOptions(v60, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  v61.origin.x = 0.0;
  v61.origin.y = 0.0;
  v61.size.width = v3;
  v61.size.height = v4;
  CGContextClearRect(CurrentContext, v61);
  v10 = [(NSAttributedString *)self->_backsideAttributedString mutableCopy];
  if (!v10)
  {
    v10 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:&stru_2850CB9E8];
  }

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v13 = 2.0 / v12;

  v14 = v3 + v13 * -2.0;
  if ([v10 length])
  {
    v15 = [v10 attributesAtIndex:0 effectiveRange:0];
  }

  else
  {
    v15 = MEMORY[0x277CBEC10];
  }

  v16 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"X\nX\nX" attributes:v15];
  [v16 size];
  if (v17 >= v8)
  {
    v18 = v8;
  }

  else
  {
    v18 = v17;
  }

  v59 = 0;
  [v10 scaleFontAndKerningToFitSize:&v59 minimumFontSize:v14 minimumKerning:v18 stillDidntFit:{10.0, 0.7}];
  v20 = v19;
  v58 = v14;
  if (v59 == 1)
  {
    shortenedBadgeBacksideStringProvider = self->_shortenedBadgeBacksideStringProvider;
    if (shortenedBadgeBacksideStringProvider)
    {
      v22 = shortenedBadgeBacksideStringProvider[2]();
      v23 = v22;
      if (v22)
      {
        v24 = [v22 mutableCopy];

        [v24 scaleFontAndKerningToFitSize:0 minimumFontSize:v14 minimumKerning:v18 stillDidntFit:{10.0, 0.7}];
        v20 = v25;
        v10 = v24;
      }
    }
  }

  v26 = 0.0;
  if (badgeShape <= 2)
  {
    if (badgeShape)
    {
      if (badgeShape == 1)
      {
        v29 = 0;
        v30 = 21.0;
      }

      else if (badgeShape == 2)
      {
        v29 = 0;
        v30 = 154.0;
        v26 = 154.0;
      }

      else
      {
        v29 = 0;
        v30 = 0.0;
      }

      goto LABEL_50;
    }

    goto LABEL_49;
  }

  if ((badgeShape - 3) < 3)
  {
LABEL_49:
    v29 = 0;
    v30 = 26.0;
    goto LABEL_50;
  }

  v27 = 32.0;
  if (badgeShape != 6)
  {
    v27 = 0.0;
  }

  v28 = badgeShape == 7;
  v29 = badgeShape != 7 && badgeShape == 6;
  if (v28)
  {
    v30 = 20.0;
  }

  else
  {
    v30 = v27;
  }

LABEL_50:
  v31 = v13;
  v32 = [v10 length];
  if (v32)
  {
    v33 = v20;
  }

  else
  {
    v33 = 0.0;
  }

  if (v32)
  {
    v26 = v30;
  }

  backAppleLogo = self->_backAppleLogo;
  v57 = v26;
  if (backAppleLogo)
  {
    [(UIImage *)backAppleLogo size];
    v36 = v55 * v35;
    v38 = v55 * v37;
  }

  else
  {
    v36 = *(MEMORY[0x277CBF3A0] + 16);
    v38 = *(MEMORY[0x277CBF3A0] + 24);
  }

  UIRoundToViewScale();
  v53 = v39;
  v54 = v38;
  if (v29)
  {
    v40 = v39;
  }

  else
  {
    v40 = v31;
  }

  v56 = v36;
  if (v29)
  {
    v41 = v38;
  }

  else
  {
    v36 = v58;
    v41 = v33;
  }

  UIRoundToViewScale();
  v43 = v42;
  v62.origin.x = v40;
  v62.origin.y = v43;
  v62.size.width = v36;
  v62.size.height = v41;
  v44 = v57 + CGRectGetMaxY(v62);
  v45 = v43 + v31 - v43;
  if (v43 < v31)
  {
    v44 = v44 - (v31 - v43);
  }

  else
  {
    v45 = v43;
  }

  if (v29)
  {
    v46 = v44;
  }

  else
  {
    v46 = v45;
  }

  if (v29)
  {
    v47 = v45;
  }

  else
  {
    v47 = v44;
  }

  v63.origin.x = v31;
  v63.origin.y = v46;
  v63.size.width = v58;
  v63.size.height = v33;
  if (!CGRectIsEmpty(v63))
  {
    [v10 drawInRect:{v31, v46, v58, v33}];
  }

  v48 = self->_backAppleLogo;
  if (v48)
  {
    [(UIImage *)v48 drawInRect:0 blendMode:v53 alpha:v47, v56, v54, 0.75];
  }

  v49 = UIGraphicsGetImageFromCurrentImageContext();
  backTextureImage = self->_backTextureImage;
  self->_backTextureImage = v49;

  UIGraphicsEndImageContext();
  v51 = self->_backTextureImage;
  drawable = [(AAUIBadgeView *)self drawable];
  [drawable setBackTextureImage:v51];
}

- (id)snapshot
{
  drawable = [(AAUIBadgeView *)self drawable];
  snapshot = [drawable snapshot];

  return snapshot;
}

- (void)resizeBadgeForCurrentViewSize
{
  drawable = [(AAUIBadgeView *)self drawable];
  [drawable resizeBadgeForCurrentViewSize];
}

- (void)cleanupAfterSnapshot
{
  drawable = [(AAUIBadgeView *)self drawable];
  [drawable cleanupAfterSnapshot];
}

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  drawable = [(AAUIBadgeView *)self drawable];
  [drawable setConfiguration:configurationCopy];
}

- (AAUIBadgeModelConfiguration)configuration
{
  drawable = [(AAUIBadgeView *)self drawable];
  configuration = [drawable configuration];

  return configuration;
}

- (void)setPaused:(BOOL)paused
{
  pausedCopy = paused;
  isPaused = [(AAUIBadgeView *)self isPaused];
  drawable = [(AAUIBadgeView *)self drawable];
  [drawable setPaused:pausedCopy];

  if (isPaused && !pausedCopy)
  {
    [(AAUIBadgeView *)self _invalidateLastUpdateTime];

    [(AAUIBadgeView *)self setNeedsDisplay];
  }
}

- (BOOL)isPaused
{
  drawable = [(AAUIBadgeView *)self drawable];
  isPaused = [drawable isPaused];

  return isPaused;
}

- (void)setFixedBadgeAngle:(double)angle
{
  [(AAUIBadgeView *)self setPaused:0];
  [(AAUIBadgeView *)self setMagnetsEngaged:1];
  self->_spinRate = 0.0;
  [(AAUIBadge *)self->_badge removeAllAnimationsForBadgePropertyType:2];
  [(AAUIBadge *)self->_badge setRotationY:angle];

  [(AAUIBadgeView *)self setNeedsDisplay];
}

- (double)playFlipInAnimation
{
  [(AAUIBadgeView *)self setMagnetsEngaged:0];
  [(AAUIBadge *)self->_badge removeAllAnimationsForBadgePropertyType:2];
  [(AAUIBadge *)self->_badge setRotationY:0.0];
  animation = [MEMORY[0x277CD9FA0] animation];
  v4 = [(AAUIBadgeView *)self _valueForTweak:@"springMass"];
  [v4 floatValue];
  [animation setMass:v5];

  v6 = [(AAUIBadgeView *)self _valueForTweak:@"springStiffness"];
  [v6 floatValue];
  [animation setStiffness:v7];

  v8 = [(AAUIBadgeView *)self _valueForTweak:@"springDamping"];
  [v8 floatValue];
  [animation setDamping:v9];

  [animation durationForEpsilon:0.001];
  [animation setDuration:?];
  [(AAUIBadge *)self->_badge rotationY];
  v11 = v10;
  [(AAUIBadge *)self->_badge rotationY];
  v13 = v12;
  objc_initWeak(&location, self);
  v14 = MEMORY[0x277CE8E78];
  [animation duration];
  v16 = v15;
  *&v11 = v11 - fmod(v13 + 2.22044605e-16, 6.28318531) + 6.28318531;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __36__AAUIBadgeView_playFlipInAnimation__block_invoke;
  v25[3] = &unk_278C438D8;
  v17 = animation;
  v26 = v17;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __36__AAUIBadgeView_playFlipInAnimation__block_invoke_2;
  v23[3] = &unk_278C43900;
  objc_copyWeak(&v24, &location);
  LODWORD(v18) = LODWORD(v11);
  v19 = [v14 animationWithEndingFloatValue:v25 duration:v23 customTimingFunction:v18 completion:v16];
  [(AAUIBadge *)self->_badge addAnimation:v19 forBadgePropertyType:2];
  [v17 duration];
  v21 = v20;

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);

  return v21;
}

void __36__AAUIBadgeView_playFlipInAnimation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setMagnetsEngaged:1];
}

- (double)playFlipOutAnimation
{
  spinRate = self->_spinRate;
  [(AAUIBadgeView *)self setPaused:0];
  [(AAUIBadgeView *)self setMagnetsEngaged:0];
  [(AAUIBadge *)self->_badge removeAllAnimationsForBadgePropertyType:2];
  [(AAUIBadge *)self->_badge rotationY];
  if (fabs(spinRate) > 1.35 && self->_useEarnedShader)
  {
    if (spinRate <= 0.0)
    {
      v5 = v4 + -6.28318531 + fmod(-v4, 6.28318531);
    }

    else
    {
      v5 = v4 + 6.28318531 - fmod(v4, 6.28318531);
    }

    v7 = 0.7;
  }

  else
  {
    v6 = round(v4 / 6.28318531);
    v5 = (v6 + v6) * 3.14159265;
    v7 = 0.14;
  }

  animation = [MEMORY[0x277CD9FA0] animation];
  v9 = [(AAUIBadgeView *)self _valueForTweak:@"springMass"];
  [v9 floatValue];
  [animation setMass:v7 * v10];

  v11 = [(AAUIBadgeView *)self _valueForTweak:@"springStiffness"];
  [v11 floatValue];
  [animation setStiffness:v12];

  v13 = [(AAUIBadgeView *)self _valueForTweak:@"springDamping"];
  [v13 floatValue];
  [animation setDamping:v14 * 1.14];

  v15 = -spinRate;
  if (spinRate >= 0.0)
  {
    v15 = spinRate;
  }

  [animation setInitialVelocity:v15 / 3.14159265];
  [animation durationForEpsilon:0.035];
  [animation setDuration:?];
  objc_initWeak(&location, self);
  v16 = MEMORY[0x277CE8E78];
  [animation duration];
  v18 = v17;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __37__AAUIBadgeView_playFlipOutAnimation__block_invoke;
  v28[3] = &unk_278C438D8;
  v20 = animation;
  v29 = v20;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __37__AAUIBadgeView_playFlipOutAnimation__block_invoke_2;
  v26[3] = &unk_278C43900;
  objc_copyWeak(&v27, &location);
  v19 = v5;
  *&v21 = v19;
  v22 = [v16 animationWithEndingFloatValue:v28 duration:v26 customTimingFunction:v21 completion:v18];
  [(AAUIBadge *)self->_badge addAnimation:v22 forBadgePropertyType:2];
  [v20 duration];
  v24 = v23;

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);

  return v24;
}

void __37__AAUIBadgeView_playFlipOutAnimation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setMagnetsEngaged:1];
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  if ([(AAUIBadgeView *)self verticalPanningDisabled]&& self->_spinRecognizer == beginCopy)
  {
    [(UIPanGestureRecognizer *)beginCopy velocityInView:self];
    v5 = fabs(v7) > fabs(v8);
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (double)_attenuatedSpinRate:(double)rate
{
  [(AAUIBadge *)self->_badge maxRotationY];
  if (v5 > 0.0)
  {
    [(AAUIBadge *)self->_badge rotationY];
    if (v6 >= 0.0)
    {
      v7 = v6;
    }

    else
    {
      v7 = -v6;
    }

    [(AAUIBadge *)self->_badge maxRotationY];
    if (v8 < 0.0)
    {
      v8 = -v8;
    }

    v9 = v7 - v8;
    if (v9 >= 0.0)
    {
      v10 = v9;
    }

    else
    {
      v10 = -v9;
    }

    [(AAUIBadge *)self->_badge maxRotationY];
    if (v11 < 0.0)
    {
      v11 = -v11;
    }

    return v10 / v11 * rate;
  }

  return rate;
}

- (double)_attenuatedVelocity:(double)velocity
{
  [(AAUIBadge *)self->_badge maxRotationY];
  velocityCopy = -1.0;
  if (velocity >= -1.0)
  {
    velocityCopy = velocity;
  }

  if (velocity > 1.0)
  {
    velocityCopy = 1.0;
  }

  if (v4 <= 0.0)
  {
    return velocity;
  }

  else
  {
    return velocityCopy;
  }
}

- (void)_panned:(id)_panned
{
  _pannedCopy = _panned;
  view = [_pannedCopy view];
  [view bounds];
  v6 = v5;
  [(AAUIBadgeView *)self _attenuatedSpinRate:3.30693964];
  v8 = v7;
  state = [_pannedCopy state];
  switch(state)
  {
    case 3:
      [(AAUIBadgeView *)self setMagnetsEngaged:1];
      view2 = [_pannedCopy view];
      [_pannedCopy velocityInView:view2];
      [(AAUIBadgeView *)self _attenuatedVelocity:v14 / v6];
      v16 = v15;

      v17 = -(v8 * v16);
      if (v8 * v16 >= 0.0)
      {
        v17 = v8 * v16;
      }

      if (v17 >= 2.22044605e-16)
      {
        v8 = v8 * v16;
      }

      else
      {
        v8 = 2.22044605e-16;
      }

      break;
    case 2:
      [(AAUIBadge *)self->_badge rotationY];
      v11 = v10;
      [_pannedCopy translationInView:view];
      [(AAUIBadge *)self->_badge setRotationY:v11 + v8 * v12 / v6];
      [_pannedCopy setTranslation:view inView:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
      break;
    case 1:
      [(AAUIBadgeView *)self setMagnetsEngaged:0];
      [(AAUIBadge *)self->_badge removeAllAnimationsForBadgePropertyType:2];
      v8 = 0.0;
      break;
  }

  self->_spinRate = v8;
  [(AAUIBadgeView *)self setPaused:0];
  badgeDelegate = [(AAUIBadgeView *)self badgeDelegate];
  [badgeDelegate badgeViewDidSpin:self];
}

- (void)_longPressInternalOnly:(id)only
{
  if ([only state] == 1)
  {

    [(AAUIBadgeView *)self _spin360Degrees];
  }
}

- (void)_spin360Degrees
{
  [(AAUIBadgeView *)self setPaused:0];
  [(AAUIBadgeView *)self setMagnetsEngaged:0];
  [(AAUIBadge *)self->_badge removeAllAnimationsForBadgePropertyType:2];
  [(AAUIBadge *)self->_badge setRotationY:0.0];
  [(AAUIBadge *)self->_badge rotationY];
  v4 = v3;
  [(AAUIBadge *)self->_badge rotationY];
  v6 = v4 - fmod(v5 + 2.22044605e-16, 6.28318531) + 31.4159265;
  objc_initWeak(&location, self);
  v7 = MEMORY[0x277CE8E78];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __32__AAUIBadgeView__spin360Degrees__block_invoke_2;
  v13 = &unk_278C43900;
  objc_copyWeak(&v14, &location);
  *&v6 = v6;
  LODWORD(v8) = LODWORD(v6);
  v9 = [v7 animationWithEndingFloatValue:&__block_literal_global_4 duration:&v10 customTimingFunction:v8 completion:10.0];
  [(AAUIBadge *)self->_badge addAnimation:v9 forBadgePropertyType:2, v10, v11, v12, v13];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __32__AAUIBadgeView__spin360Degrees__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setMagnetsEngaged:1];
}

- (void)_tapped:(id)_tapped
{
  [_tapped locationInView:self];
  v5 = v4;
  [(AAUIBadgeView *)self frame];
  v7 = v5 + v6 * -0.5;
  [(AAUIBadgeView *)self frame];
  v9 = sin(v7 / v8 + v7 / v8) * 12.0;

  [(AAUIBadgeView *)self _applyImpulse:v9];
}

- (void)_applyImpulse:(double)impulse
{
  [(AAUIBadgeView *)self setPaused:0];
  [(AAUIBadgeView *)self setMagnetsEngaged:1];
  self->_spinRate = self->_spinRate + impulse;
}

- (AAUIBadgeViewDelegate)badgeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_badgeDelegate);

  return WeakRetained;
}

@end