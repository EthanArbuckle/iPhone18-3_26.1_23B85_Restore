@interface ARCoachingAnimationView
- (ARCoachingAnimationView)initWithCoder:(id)coder;
- (ARCoachingAnimationView)initWithFrame:(CGRect)frame;
- (CGSize)intrinsicContentSize;
- (double)calcNextAnimationSwitchTime:(double)time forState:(unint64_t)state;
- (void)clampCubeToQuarterRotation;
- (void)killCoachingAnimation;
- (void)layoutSubviews;
- (void)setAnimationState:(int64_t)state;
- (void)startCoachingAnimation:(int64_t)animation;
- (void)updateAlternatingPlanes:(double)planes;
- (void)updateCubeRotation:(id)rotation motionTracker:(id)tracker;
- (void)updateForCurrentTime:(double)time timeDelta:(double)delta;
- (void)updateMetalLayer;
- (void)updateVerticalClamp:(double)clamp;
- (void)updateWithFrame:(id)frame motionTracker:(id)tracker;
@end

@implementation ARCoachingAnimationView

- (ARCoachingAnimationView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = ARCoachingAnimationView;
  v3 = [(ARCoachingAnimationView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(ARCoachingAnimationView *)v3 setupView];
  }

  return v4;
}

- (ARCoachingAnimationView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = ARCoachingAnimationView;
  v3 = [(ARCoachingAnimationView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(ARCoachingAnimationView *)v3 setupView];
  }

  return v4;
}

- (void)setAnimationState:(int64_t)state
{
  v31 = *MEMORY[0x277D85DE8];
  if (self->_animationState == state)
  {
    goto LABEL_26;
  }

  self->_animationState = state;
  if (self->_isDeactivating)
  {
    goto LABEL_26;
  }

  stateCopy = 0;
  if (state > 3)
  {
    if (state <= 5)
    {
      if (state != 4)
      {
        self->_nextStateTime = -1.0;
        state = [(ARCoachingRenderer *)self->_renderer state];
        stateCopy = [state snapState];

        goto LABEL_25;
      }

      goto LABEL_20;
    }

    if (state != 6)
    {
      if (state != 7)
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
          selfCopy2 = self;
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
        selfCopy2 = self;
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

  if (!state)
  {
    stateCopy = 1;
    goto LABEL_25;
  }

  if (state == 2)
  {
LABEL_20:
    stateCopy = state;
    goto LABEL_25;
  }

  if (state != 3)
  {
    goto LABEL_25;
  }

  state2 = [(ARCoachingRenderer *)self->_renderer state];
  snapState = [state2 snapState];

  if (snapState == 4)
  {
    self->_nextStateTime = -1.0;
LABEL_23:
    stateCopy = 4;
    goto LABEL_25;
  }

  stateCopy = 3;
LABEL_25:
  state3 = [(ARCoachingRenderer *)self->_renderer state];
  snapState2 = [state3 snapState];

  if (snapState2 == stateCopy)
  {
    goto LABEL_26;
  }

  state4 = [(ARCoachingRenderer *)self->_renderer state];
  [state4 setSnapState:stateCopy];
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

- (void)startCoachingAnimation:(int64_t)animation
{
  self->_currentCoachingGoal = animation;
  if (!self->_renderer)
  {
    mEMORY[0x277CE5378] = [MEMORY[0x277CE5378] sharedInstance];
    device = [mEMORY[0x277CE5378] device];

    layer = [MEMORY[0x277CD9F10] layer];
    metalLayer = self->_metalLayer;
    self->_metalLayer = layer;

    [(CAMetalLayer *)self->_metalLayer setOpaque:0];
    v9 = [[ARCoachingUpdateManager alloc] init:device metalLayer:self->_metalLayer];
    updateManager = self->_updateManager;
    self->_updateManager = v9;

    [(ARCoachingUpdateManager *)self->_updateManager setDelegate:self];
    v11 = 8;
    if (([device supportsTextureSampleCount:8] & 1) == 0)
    {
      if ([device supportsTextureSampleCount:4])
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
    if (animation != 4)
    {
      v13 = off_278BCCE98;
    }

    v14 = [objc_alloc(*v13) initWithLayer:self->_metalLayer device:device pixelFormat:-[CAMetalLayer pixelFormat](self->_metalLayer sampleCount:"pixelFormat") deviceMaskImage:v11, v12];
    renderer = self->_renderer;
    self->_renderer = v14;

    v16 = self->_renderer;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __50__ARCoachingAnimationView_startCoachingAnimation___block_invoke;
    v21[3] = &unk_278BCD4D0;
    v21[4] = self;
    [(ARCoachingRenderer *)v16 prepareWithCompletionHandler:v21];
    layer2 = [(ARCoachingAnimationView *)self layer];
    [layer2 addSublayer:self->_metalLayer];

    [(ARCoachingAnimationView *)self updateMetalLayer];
  }

  self->_cubeAngle = 0.0;
  [(ARCoachingRenderer *)self->_renderer setOrientationAngle:0.0];
  state = [(ARCoachingRenderer *)self->_renderer state];
  [state setIsVertical:animation == 2];

  state2 = [(ARCoachingRenderer *)self->_renderer state];
  [state2 setSnapState:1];

  v20 = 7;
  if (animation != 4)
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

- (void)updateWithFrame:(id)frame motionTracker:(id)tracker
{
  [(ARCoachingAnimationView *)self updateCubeRotation:frame motionTracker:tracker];
  if (self->_isRotating || self->_wasRotating)
  {
    renderer = self->_renderer;
    *&v5 = self->_cubeAngle;

    [(ARCoachingRenderer *)renderer setOrientationAngle:v5];
  }
}

- (void)updateCubeRotation:(id)rotation motionTracker:(id)tracker
{
  v39 = *MEMORY[0x277D85DE8];
  trackerCopy = tracker;
  rotationCopy = rotation;
  camera = [rotationCopy camera];
  [camera viewMatrixForOrientation:{objc_msgSend(rotationCopy, "interfaceOrientation")}];
  v33 = v9;
  v34 = v10;
  v31 = v11;
  v32 = v12;

  v13 = vzip1q_s32(v33, v31);
  v14 = vzip2q_s32(v33, v31);
  v15 = vzip1q_s32(v34, v32);
  v16 = vzip2q_s32(v34, v32);
  *self->_lastCameraRight = vmlaq_f32(vmlaq_f32(vmlaq_f32(vzip1q_s32(v13, v15), 0, vzip2q_s32(v13, v15)), 0, vzip1q_s32(v14, v16)), 0, vzip2q_s32(v14, v16));
  camera2 = [rotationCopy camera];

  [camera2 transform];
  *self->_lastCameraTranslation = v18;

  self->_wasRotating = self->_isRotating;
  if (self->_animationState == 4)
  {
    isMoving = [trackerCopy isMoving];
    self->_isRotating = isMoving;
    if (isMoving)
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
        selfCopy2 = self;
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
      selfCopy2 = self;
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
  state = [(ARCoachingRenderer *)self->_renderer state];
  isVertical = [state isVertical];

  if (isVertical)
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

- (double)calcNextAnimationSwitchTime:(double)time forState:(unint64_t)state
{
  v5 = dbl_23D3DC190[state == 3];
  [(ARCoachingRenderer *)self->_renderer currentAnimationTime];
  v7 = fmod(v6, 6.28318531);
  return fmod(v5 - v7 + 6.28318531, 6.28318531) + time;
}

- (void)updateAlternatingPlanes:(double)planes
{
  if (self->_animationState != 5)
  {
    return;
  }

  nextStateTime = self->_nextStateTime;
  if (nextStateTime < 0.0)
  {
    state = [(ARCoachingRenderer *)self->_renderer state];
    snapState = [state snapState];

    if (snapState == 2)
    {
      v8 = 3;
    }

    else
    {
      nextStateTime = planes;
      if (snapState != 3)
      {
LABEL_8:
        self->_nextStateTime = nextStateTime;
        goto LABEL_9;
      }

      v8 = 2;
    }

    [(ARCoachingAnimationView *)self calcNextAnimationSwitchTime:v8 forState:planes];
    goto LABEL_8;
  }

LABEL_9:
  if (nextStateTime > planes)
  {
    return;
  }

  state2 = [(ARCoachingRenderer *)self->_renderer state];
  snapState2 = [state2 snapState];

  if (snapState2 == 3)
  {
    [(ARCoachingAnimationView *)self calcNextAnimationSwitchTime:3 forState:planes];
    isVertical = 0;
LABEL_19:
    v13 = 2;
    goto LABEL_20;
  }

  if (snapState2 == 2)
  {
    goto LABEL_13;
  }

  state3 = [(ARCoachingRenderer *)self->_renderer state];
  isVertical = [state3 isVertical];

  if (!isVertical)
  {
    [(ARCoachingRenderer *)self->_renderer resetAnimationTime:2.84159265];
    [(ARCoachingAnimationView *)self calcNextAnimationSwitchTime:3 forState:planes];
    goto LABEL_19;
  }

  if (self->_lastUpdateState == 4)
  {
    v11 = planes + 0.5;
    isVertical = 1;
    v13 = 4;
    goto LABEL_20;
  }

  [(ARCoachingRenderer *)self->_renderer resetAnimationTime:5.98318531];
LABEL_13:
  [(ARCoachingAnimationView *)self calcNextAnimationSwitchTime:2 forState:planes];
  isVertical = 1;
  v13 = 3;
LABEL_20:
  self->_nextStateTime = v11;
  state4 = [(ARCoachingRenderer *)self->_renderer state];
  [state4 setIsVertical:isVertical];

  state5 = [(ARCoachingRenderer *)self->_renderer state];
  [state5 setSnapState:v13];
}

- (void)updateVerticalClamp:(double)clamp
{
  if (self->_animationState == 3)
  {
    state = [(ARCoachingRenderer *)self->_renderer state];
    snapState = [state snapState];

    if (snapState != 3)
    {
      nextStateTime = self->_nextStateTime;
      if (nextStateTime < 0.0)
      {
        state2 = [(ARCoachingRenderer *)self->_renderer state];
        snapState2 = [state2 snapState];

        nextStateTime = clamp + 0.5;
        if (snapState2 != 4)
        {
          nextStateTime = clamp;
        }

        self->_nextStateTime = nextStateTime;
      }

      if (nextStateTime <= clamp)
      {
        state3 = [(ARCoachingRenderer *)self->_renderer state];
        [state3 setSnapState:3];
      }
    }
  }
}

- (void)updateForCurrentTime:(double)time timeDelta:(double)delta
{
  [(ARCoachingAnimationView *)self updateAlternatingPlanes:time, delta];
  [(ARCoachingAnimationView *)self updateVerticalClamp:time];
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
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v10 = v7 * v9;
    [(CAMetalLayer *)self->_metalLayer bounds];
    v12 = v11;
    mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen2 scale];
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