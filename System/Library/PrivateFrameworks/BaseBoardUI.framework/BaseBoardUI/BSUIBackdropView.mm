@interface BSUIBackdropView
- (void)applySettings:(id)a3;
- (void)transitionComplete;
- (void)transitionIncrementallyToSettings:(id)a3 weighting:(double)a4;
@end

@implementation BSUIBackdropView

- (void)transitionIncrementallyToSettings:(id)a3 weighting:(double)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!BSFloatIsZero())
  {
    goto LABEL_15;
  }

  v7 = [(_UIBackdropView *)self inputSettings];
  [v7 blurRadius];
  v9 = v8;

  [v6 blurRadius];
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
      v19 = [(_UIBackdropView *)self inputSettings];
      [v19 scale];
      self->_initialScale = v20;

      if (v14)
      {
        goto LABEL_12;
      }
    }

    [v6 scale];
    scaleForNoBlur = v21;
    goto LABEL_12;
  }

  v15 = [(_UIBackdropView *)self inputSettings];
  [v15 scale];
  self->_initialScale = v16 + v16;

  [v6 scale];
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
  self->_transitionProgress = a4;
  v25.receiver = self;
  v25.super_class = BSUIBackdropView;
  [(_UIBackdropView *)&v25 transitionIncrementallyToSettings:v6 weighting:a4];
}

- (void)applySettings:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_rasterizationScale > 0.0)
  {
    v5 = [(_UIBackdropView *)self effectView];
    v6 = [v5 layer];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
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
    [(_UIBackdropView *)&v17 applySettings:v4];
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
    [v4 setScale:?];
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

    v12 = [(_UIBackdropView *)self applyingTransition];
    [(_UIBackdropView *)self setApplyingTransition:0];
    v18.receiver = self;
    v18.super_class = BSUIBackdropView;
    [(_UIBackdropView *)&v18 applySettings:v4];
    [(_UIBackdropView *)self setApplyingTransition:v12];
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