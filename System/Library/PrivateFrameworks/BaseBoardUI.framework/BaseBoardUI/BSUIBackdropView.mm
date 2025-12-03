@interface BSUIBackdropView
- (void)applySettings:(id)settings;
- (void)transitionComplete;
- (void)transitionIncrementallyToSettings:(id)settings weighting:(double)weighting;
@end

@implementation BSUIBackdropView

- (void)transitionIncrementallyToSettings:(id)settings weighting:(double)weighting
{
  v34 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  if (!BSFloatIsZero())
  {
    goto LABEL_15;
  }

  inputSettings = [(_UIBackdropView *)self inputSettings];
  [inputSettings blurRadius];
  v9 = v8;

  [settingsCopy blurRadius];
  v11 = v10;
  IsZero = BSFloatIsZero();
  v13 = BSFloatIsZero();
  v14 = v13;
  if (IsZero == v13)
  {
    if (self->_scaleForNoBlur <= 0.0)
    {
      scaleForNoBlur = 1.0;
    }

    else
    {
      scaleForNoBlur = self->_scaleForNoBlur;
    }

    if (IsZero)
    {
      self->_initialScale = scaleForNoBlur;
      if (v13)
      {
        goto LABEL_12;
      }
    }

    else
    {
      inputSettings2 = [(_UIBackdropView *)self inputSettings];
      [inputSettings2 scale];
      self->_initialScale = v20;

      if (v14)
      {
        goto LABEL_12;
      }
    }

    [settingsCopy scale];
    scaleForNoBlur = v21;
    goto LABEL_12;
  }

  inputSettings3 = [(_UIBackdropView *)self inputSettings];
  [inputSettings3 scale];
  self->_initialScale = v16 + v16;

  [settingsCopy scale];
  scaleForNoBlur = v17 + v17;
LABEL_12:
  self->_finalScale = scaleForNoBlur;
  v22 = BSLogCommon();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    initialScale = self->_initialScale;
    finalScale = self->_finalScale;
    *buf = 134218752;
    v27 = initialScale;
    v28 = 2048;
    v29 = finalScale;
    v30 = 2048;
    v31 = v9;
    v32 = 2048;
    v33 = v11;
    _os_log_debug_impl(&dword_1A2D36000, v22, OS_LOG_TYPE_DEBUG, "Setting initialScale:%f, finalScale: %f, initialRadius:%f, finalRadius: %f", buf, 0x2Au);
  }

LABEL_15:
  self->_transitionProgress = weighting;
  v25.receiver = self;
  v25.super_class = BSUIBackdropView;
  [(_UIBackdropView *)&v25 transitionIncrementallyToSettings:settingsCopy weighting:weighting];
}

- (void)applySettings:(id)settings
{
  v21 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  if (self->_rasterizationScale > 0.0)
  {
    effectView = [(_UIBackdropView *)self effectView];
    layer = [effectView layer];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = layer;
    }

    else
    {
      v7 = 0;
    }

    [v7 setRasterizationScale:self->_rasterizationScale];
  }

  if (self->_initialScale <= 0.0 || (v8 = self->_finalScale, v8 <= 0.0))
  {
    v13 = BSLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      finalScale = self->_finalScale;
      *buf = 134217984;
      *&buf[4] = finalScale;
      _os_log_debug_impl(&dword_1A2D36000, v13, OS_LOG_TYPE_DEBUG, "Not changing scale because _finalScale: %f", buf, 0xCu);
    }

    v17.receiver = self;
    v17.super_class = BSUIBackdropView;
    [(_UIBackdropView *)&v17 applySettings:settingsCopy];
  }

  else
  {
    *buf = self->_initialScale;
    buf[8] = 1;
    *&buf[9] = 0;
    *&buf[12] = 0;
    *&buf[16] = v8;
    LOBYTE(v20) = 1;
    *(&v20 + 1) = 0;
    HIDWORD(v20) = 0;
    BSIntervalValueForFraction();
    v10 = v9;
    [settingsCopy setScale:?];
    v11 = BSLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v15 = self->_finalScale;
      transitionProgress = self->_transitionProgress;
      *buf = 134218496;
      *&buf[4] = v10;
      *&buf[12] = 2048;
      *&buf[14] = v15;
      *&buf[22] = 2048;
      v20 = transitionProgress;
      _os_log_debug_impl(&dword_1A2D36000, v11, OS_LOG_TYPE_DEBUG, "Applying scale: %f for finalScale: %f, transitionProgress: %f", buf, 0x20u);
    }

    applyingTransition = [(_UIBackdropView *)self applyingTransition];
    [(_UIBackdropView *)self setApplyingTransition:0];
    v18.receiver = self;
    v18.super_class = BSUIBackdropView;
    [(_UIBackdropView *)&v18 applySettings:settingsCopy];
    [(_UIBackdropView *)self setApplyingTransition:applyingTransition];
  }
}

- (void)transitionComplete
{
  self->_transitionProgress = 0.0;
  self->_initialScale = 0.0;
  self->_finalScale = 0.0;
  v2.receiver = self;
  v2.super_class = BSUIBackdropView;
  [(_UIBackdropView *)&v2 transitionComplete];
}

@end