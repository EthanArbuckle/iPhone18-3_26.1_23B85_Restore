@interface ARCoachingAnimationView
- (ARCoachingAnimationView)initWithCoder:(id)a3;
- (ARCoachingAnimationView)initWithFrame:(CGRect)a3;
- (CGSize)intrinsicContentSize;
- (double)calcNextAnimationSwitchTime:(double)a3 forState:(unint64_t)a4;
- (void)clampCubeToQuarterRotation;
- (void)killCoachingAnimation;
- (void)layoutSubviews;
- (void)setAnimationState:(int64_t)a3;
- (void)startCoachingAnimation:(int64_t)a3;
- (void)updateAlternatingPlanes:(double)a3;
- (void)updateCubeRotation:(id)a3 motionTracker:(id)a4;
- (void)updateForCurrentTime:(double)a3 timeDelta:(double)a4;
- (void)updateMetalLayer;
- (void)updateVerticalClamp:(double)a3;
- (void)updateWithFrame:(id)a3 motionTracker:(id)a4;
@end

@implementation ARCoachingAnimationView

- (ARCoachingAnimationView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = ARCoachingAnimationView;
  v3 = [(ARCoachingAnimationView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(ARCoachingAnimationView *)v3 setupView];
  }

  return v4;
}

- (ARCoachingAnimationView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = ARCoachingAnimationView;
  v3 = [(ARCoachingAnimationView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(ARCoachingAnimationView *)v3 setupView];
  }

  return v4;
}

- (void)setAnimationState:(int64_t)a3
{
  v31 = *MEMORY[0x277D85DE8];
  if (self->_animationState == a3)
  {
    goto LABEL_26;
  }

  self->_animationState = a3;
  if (self->_isDeactivating)
  {
    goto LABEL_26;
  }

  v4 = 0;
  if (a3 > 3)
  {
    if (a3 <= 5)
    {
      if (a3 != 4)
      {
        self->_nextStateTime = -1.0;
        v5 = [(ARCoachingRenderer *)self->_renderer state];
        v4 = [v5 snapState];

        goto LABEL_25;
      }

      goto LABEL_20;
    }

    if (a3 != 6)
    {
      if (a3 != 7)
      {
        goto LABEL_25;
      }

      if (self->_currentCoachingGoal == 4)
      {
LABEL_26:
        v20 = *MEMORY[0x277D85DE8];
        return;
      }

      if (ARShouldUseLogTypeError_onceToken_0 != -1)
      {
        [ARCoachingAnimationView setAnimationState:];
      }

      v8 = ARShouldUseLogTypeError_internalOSVersion_0;
      v9 = _ARLogCoaching_1();
      v10 = v9;
      if (v8 == 1)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v11 = objc_opt_class();
          v12 = NSStringFromClass(v11);
          currentCoachingGoal = self->_currentCoachingGoal;
          *buf = 138543874;
          v26 = v12;
          v27 = 2048;
          v28 = self;
          v29 = 2048;
          v30 = currentCoachingGoal;
          v14 = "%{public}@ <%p>: Trying to set animation state to geo tracking but geo tracking is not the current goal, goal is: %ld";
          v15 = v10;
          v16 = OS_LOG_TYPE_ERROR;
LABEL_32:
          _os_log_impl(&dword_23D3AE000, v15, v16, v14, buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v22 = objc_opt_class();
        v12 = NSStringFromClass(v22);
        v23 = self->_currentCoachingGoal;
        *buf = 138543874;
        v26 = v12;
        v27 = 2048;
        v28 = self;
        v29 = 2048;
        v30 = v23;
        v14 = "Error: %{public}@ <%p>: Trying to set animation state to geo tracking but geo tracking is not the current goal, goal is: %ld";
        v15 = v10;
        v16 = OS_LOG_TYPE_INFO;
        goto LABEL_32;
      }

      goto LABEL_26;
    }

    [(ARCoachingAnimationView *)self clampCubeToQuarterRotation];
    *&v17 = self->_cubeAngle;
    [(ARCoachingRenderer *)self->_renderer setOrientationAngle:v17];
    goto LABEL_23;
  }

  if (!a3)
  {
    v4 = 1;
    goto LABEL_25;
  }

  if (a3 == 2)
  {
LABEL_20:
    v4 = a3;
    goto LABEL_25;
  }

  if (a3 != 3)
  {
    goto LABEL_25;
  }

  v6 = [(ARCoachingRenderer *)self->_renderer state];
  v7 = [v6 snapState];

  if (v7 == 4)
  {
    self->_nextStateTime = -1.0;
LABEL_23:
    v4 = 4;
    goto LABEL_25;
  }

  v4 = 3;
LABEL_25:
  v18 = [(ARCoachingRenderer *)self->_renderer state];
  v19 = [v18 snapState];

  if (v19 == v4)
  {
    goto LABEL_26;
  }

  v24 = [(ARCoachingRenderer *)self->_renderer state];
  [v24 setSnapState:v4];
  v21 = *MEMORY[0x277D85DE8];
}

- (CGSize)intrinsicContentSize
{
  v2 = ARCoachingLayoutScalar() * 600.0;
  v3 = v2;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)startCoachingAnimation:(int64_t)a3
{
  self->_currentCoachingGoal = a3;
  if (!self->_renderer)
  {
    v5 = [MEMORY[0x277CE5378] sharedInstance];
    v6 = [v5 device];

    v7 = [MEMORY[0x277CD9F10] layer];
    metalLayer = self->_metalLayer;
    self->_metalLayer = v7;

    [(CAMetalLayer *)self->_metalLayer setOpaque:0];
    v9 = [[ARCoachingUpdateManager alloc] init:v6 metalLayer:self->_metalLayer];
    updateManager = self->_updateManager;
    self->_updateManager = v9;

    [(ARCoachingUpdateManager *)self->_updateManager setDelegate:self];
    v11 = 8;
    if (([v6 supportsTextureSampleCount:8] & 1) == 0)
    {
      if ([v6 supportsTextureSampleCount:4])
      {
        v11 = 4;
      }

      else
      {
        v11 = 1;
      }
    }

    v12 = ARCoachingLoadDeviceGlyph();
    v13 = off_278BCCE90;
    if (a3 != 4)
    {
      v13 = off_278BCCE98;
    }

    v14 = [objc_alloc(*v13) initWithLayer:self->_metalLayer device:v6 pixelFormat:-[CAMetalLayer pixelFormat](self->_metalLayer sampleCount:"pixelFormat") deviceMaskImage:v11, v12];
    renderer = self->_renderer;
    self->_renderer = v14;

    v16 = self->_renderer;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __50__ARCoachingAnimationView_startCoachingAnimation___block_invoke;
    v21[3] = &unk_278BCD4D0;
    v21[4] = self;
    [(ARCoachingRenderer *)v16 prepareWithCompletionHandler:v21];
    v17 = [(ARCoachingAnimationView *)self layer];
    [v17 addSublayer:self->_metalLayer];

    [(ARCoachingAnimationView *)self updateMetalLayer];
  }

  self->_cubeAngle = 0.0;
  [(ARCoachingRenderer *)self->_renderer setOrientationAngle:0.0];
  v18 = [(ARCoachingRenderer *)self->_renderer state];
  [v18 setIsVertical:a3 == 2];

  v19 = [(ARCoachingRenderer *)self->_renderer state];
  [v19 setSnapState:1];

  v20 = 7;
  if (a3 != 4)
  {
    v20 = 0;
  }

  self->_animationState = v20;
}

void __50__ARCoachingAnimationView_startCoachingAnimation___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (ARShouldUseLogTypeError_onceToken_0 != -1)
    {
      [ARCoachingAnimationView setAnimationState:];
    }

    v4 = ARShouldUseLogTypeError_internalOSVersion_0;
    v5 = _ARLogCoaching_1();
    v6 = v5;
    if (v4 == 1)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v7 = *(a1 + 32);
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v10 = *(a1 + 32);
        *buf = 138543874;
        v20 = v9;
        v21 = 2048;
        v22 = v10;
        v23 = 2112;
        v24 = v3;
        v11 = "%{public}@ <%p>: Failed to create coaching renderer: %@";
        v12 = v6;
        v13 = OS_LOG_TYPE_ERROR;
LABEL_10:
        _os_log_impl(&dword_23D3AE000, v12, v13, v11, buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v14 = *(a1 + 32);
      v15 = objc_opt_class();
      v9 = NSStringFromClass(v15);
      v16 = *(a1 + 32);
      *buf = 138543874;
      v20 = v9;
      v21 = 2048;
      v22 = v16;
      v23 = 2112;
      v24 = v3;
      v11 = "Error: %{public}@ <%p>: Failed to create coaching renderer: %@";
      v12 = v6;
      v13 = OS_LOG_TYPE_INFO;
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__ARCoachingAnimationView_startCoachingAnimation___block_invoke_23;
  block[3] = &unk_278BCD4A8;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
LABEL_12:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)killCoachingAnimation
{
  renderer = self->_renderer;
  self->_renderer = 0;

  [(ARCoachingUpdateManager *)self->_updateManager stop];
  updateManager = self->_updateManager;
  self->_updateManager = 0;

  [(CAMetalLayer *)self->_metalLayer removeFromSuperlayer];
  metalLayer = self->_metalLayer;
  self->_metalLayer = 0;
}

- (void)updateWithFrame:(id)a3 motionTracker:(id)a4
{
  [(ARCoachingAnimationView *)self updateCubeRotation:a3 motionTracker:a4];
  if (self->_isRotating || self->_wasRotating)
  {
    renderer = self->_renderer;
    *&v5 = self->_cubeAngle;

    [(ARCoachingRenderer *)renderer setOrientationAngle:v5];
  }
}

- (void)updateCubeRotation:(id)a3 motionTracker:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [v7 camera];
  [v8 viewMatrixForOrientation:{objc_msgSend(v7, "interfaceOrientation")}];
  v33 = v9;
  v34 = v10;
  v31 = v11;
  v32 = v12;

  v13 = vzip1q_s32(v33, v31);
  v14 = vzip2q_s32(v33, v31);
  v15 = vzip1q_s32(v34, v32);
  v16 = vzip2q_s32(v34, v32);
  *self->_lastCameraRight = vmlaq_f32(vmlaq_f32(vmlaq_f32(vzip1q_s32(v13, v15), 0, vzip2q_s32(v13, v15)), 0, vzip1q_s32(v14, v16)), 0, vzip2q_s32(v14, v16));
  v17 = [v7 camera];

  [v17 transform];
  *self->_lastCameraTranslation = v18;

  self->_wasRotating = self->_isRotating;
  if (self->_animationState == 4)
  {
    v19 = [v6 isMoving];
    self->_isRotating = v19;
    if (v19)
    {
      if (self->_wasRotating)
      {
        goto LABEL_7;
      }

      v20 = _ARLogCoaching_1();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        *buf = 138543618;
        v36 = v22;
        v37 = 2048;
        v38 = self;
        _os_log_impl(&dword_23D3AE000, v20, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Coaching animation began rotation", buf, 0x16u);
      }

      *self->_rotationStartCameraRight = *self->_lastCameraRight;
      *self->_rotationStartCameraTranslation = *self->_lastCameraTranslation;
      if (self->_isRotating)
      {
LABEL_7:
        v23 = vsubq_f32(*self->_lastCameraTranslation, *self->_rotationStartCameraTranslation);
        v24 = vmulq_f32(v23, v23);
        *&v25 = v24.f32[2] + vaddv_f32(*v24.f32);
        *v24.f32 = vrsqrte_f32(v25);
        *v24.f32 = vmul_f32(*v24.f32, vrsqrts_f32(v25, vmul_f32(*v24.f32, *v24.f32)));
        v26 = vmulq_f32(*self->_rotationStartCameraRight, vmulq_n_f32(v23, vmul_f32(*v24.f32, vrsqrts_f32(v25, vmul_f32(*v24.f32, *v24.f32))).f32[0]));
        self->_cubeAngle = self->_cubeAngle + fminf(fmaxf(((v26.f32[2] + vaddv_f32(*v26.f32)) * 5.0) - self->_cubeAngle, -0.05), 0.05);
        goto LABEL_13;
      }
    }
  }

  else
  {
    self->_isRotating = 0;
  }

  if (self->_wasRotating)
  {
    v27 = _ARLogCoaching_1();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      *buf = 138543618;
      v36 = v29;
      v37 = 2048;
      v38 = self;
      _os_log_impl(&dword_23D3AE000, v27, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Coaching animation ended rotation", buf, 0x16u);
    }

    [(ARCoachingAnimationView *)self clampCubeToQuarterRotation];
  }

LABEL_13:

  v30 = *MEMORY[0x277D85DE8];
}

- (void)clampCubeToQuarterRotation
{
  cubeAngle = self->_cubeAngle;
  v4 = (fabs(cubeAngle / 1.57079633) + 0.5);
  if (cubeAngle < 0.0)
  {
    v4 = -v4;
  }

  v5 = v4 * 1.57079633;
  self->_cubeAngle = v5;
  v6 = [(ARCoachingRenderer *)self->_renderer state];
  v7 = [v6 isVertical];

  if (v7)
  {
    v10 = self->_cubeAngle;
    *v8.i64 = v10 / 1.57079633;
    *v9.i64 = v10 / 1.57079633 + trunc(v10 / 1.57079633 * 0.25) * -4.0;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v12 = llround(*vbslq_s8(vnegq_f64(v11), v9, v8).i64);
    if (((v12 + 4 * (v12 >> 31)) | 2) == 3)
    {
      v13 = v10 + -1.57079633;
      self->_cubeAngle = v13;
    }
  }
}

- (double)calcNextAnimationSwitchTime:(double)a3 forState:(unint64_t)a4
{
  v5 = dbl_23D3DC190[a4 == 3];
  [(ARCoachingRenderer *)self->_renderer currentAnimationTime];
  v7 = fmod(v6, 6.28318531);
  return fmod(v5 - v7 + 6.28318531, 6.28318531) + a3;
}

- (void)updateAlternatingPlanes:(double)a3
{
  if (self->_animationState != 5)
  {
    return;
  }

  nextStateTime = self->_nextStateTime;
  if (nextStateTime < 0.0)
  {
    v6 = [(ARCoachingRenderer *)self->_renderer state];
    v7 = [v6 snapState];

    if (v7 == 2)
    {
      v8 = 3;
    }

    else
    {
      nextStateTime = a3;
      if (v7 != 3)
      {
LABEL_8:
        self->_nextStateTime = nextStateTime;
        goto LABEL_9;
      }

      v8 = 2;
    }

    [(ARCoachingAnimationView *)self calcNextAnimationSwitchTime:v8 forState:a3];
    goto LABEL_8;
  }

LABEL_9:
  if (nextStateTime > a3)
  {
    return;
  }

  v9 = [(ARCoachingRenderer *)self->_renderer state];
  v10 = [v9 snapState];

  if (v10 == 3)
  {
    [(ARCoachingAnimationView *)self calcNextAnimationSwitchTime:3 forState:a3];
    v12 = 0;
LABEL_19:
    v13 = 2;
    goto LABEL_20;
  }

  if (v10 == 2)
  {
    goto LABEL_13;
  }

  v14 = [(ARCoachingRenderer *)self->_renderer state];
  v12 = [v14 isVertical];

  if (!v12)
  {
    [(ARCoachingRenderer *)self->_renderer resetAnimationTime:2.84159265];
    [(ARCoachingAnimationView *)self calcNextAnimationSwitchTime:3 forState:a3];
    goto LABEL_19;
  }

  if (self->_lastUpdateState == 4)
  {
    v11 = a3 + 0.5;
    v12 = 1;
    v13 = 4;
    goto LABEL_20;
  }

  [(ARCoachingRenderer *)self->_renderer resetAnimationTime:5.98318531];
LABEL_13:
  [(ARCoachingAnimationView *)self calcNextAnimationSwitchTime:2 forState:a3];
  v12 = 1;
  v13 = 3;
LABEL_20:
  self->_nextStateTime = v11;
  v15 = [(ARCoachingRenderer *)self->_renderer state];
  [v15 setIsVertical:v12];

  v16 = [(ARCoachingRenderer *)self->_renderer state];
  [v16 setSnapState:v13];
}

- (void)updateVerticalClamp:(double)a3
{
  if (self->_animationState == 3)
  {
    v5 = [(ARCoachingRenderer *)self->_renderer state];
    v6 = [v5 snapState];

    if (v6 != 3)
    {
      nextStateTime = self->_nextStateTime;
      if (nextStateTime < 0.0)
      {
        v8 = [(ARCoachingRenderer *)self->_renderer state];
        v9 = [v8 snapState];

        nextStateTime = a3 + 0.5;
        if (v9 != 4)
        {
          nextStateTime = a3;
        }

        self->_nextStateTime = nextStateTime;
      }

      if (nextStateTime <= a3)
      {
        v10 = [(ARCoachingRenderer *)self->_renderer state];
        [v10 setSnapState:3];
      }
    }
  }
}

- (void)updateForCurrentTime:(double)a3 timeDelta:(double)a4
{
  [(ARCoachingAnimationView *)self updateAlternatingPlanes:a3, a4];
  [(ARCoachingAnimationView *)self updateVerticalClamp:a3];
  self->_lastUpdateState = self->_animationState;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = ARCoachingAnimationView;
  [(ARCoachingAnimationView *)&v3 layoutSubviews];
  [(ARCoachingAnimationView *)self updateMetalLayer];
}

- (void)updateMetalLayer
{
  if (self->_metalLayer)
  {
    v3 = ARCoachingLayoutScalar();
    [(ARCoachingAnimationView *)self intrinsicContentSize];
    [(CAMetalLayer *)self->_metalLayer setBounds:0.0, 0.0, v4, v5];
    [(CAMetalLayer *)self->_metalLayer bounds];
    v7 = v6;
    v8 = [MEMORY[0x277D759A0] mainScreen];
    [v8 scale];
    v10 = v7 * v9;
    [(CAMetalLayer *)self->_metalLayer bounds];
    v12 = v11;
    v13 = [MEMORY[0x277D759A0] mainScreen];
    [v13 scale];
    [(CAMetalLayer *)self->_metalLayer setDrawableSize:v10, v12 * v14];

    [(ARCoachingAnimationView *)self bounds];
    v16 = v15;
    [(ARCoachingAnimationView *)self bounds];
    v18 = v16 + v17 * 0.5;
    [(ARCoachingAnimationView *)self bounds];
    v20 = v19;
    [(ARCoachingAnimationView *)self bounds];
    v22 = v20 + v21 * 0.5;
    [(CAMetalLayer *)self->_metalLayer bounds];
    v24 = v3 * 230.0 - v23 * 0.5;
    if (self->_currentCoachingGoal == 4)
    {
      v24 = v24 + 85.0;
    }

    metalLayer = self->_metalLayer;

    [(CAMetalLayer *)metalLayer setPosition:v18, v22 + v24];
  }
}

@end