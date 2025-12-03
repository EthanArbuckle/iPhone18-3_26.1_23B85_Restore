@interface ARCoachingMotionTracker
- (ARCoachingMotionTracker)init;
- (double)calcAverageVelocity;
- (void)clear;
- (void)updateWithFrame:(id)frame;
@end

@implementation ARCoachingMotionTracker

- (ARCoachingMotionTracker)init
{
  v5.receiver = self;
  v5.super_class = ARCoachingMotionTracker;
  v2 = [(ARCoachingMotionTracker *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ARCoachingMotionTracker *)v2 clear];
  }

  return v3;
}

- (double)calcAverageVelocity
{
  v1 = 0uLL;
  for (i = 16; i != 96; i += 16)
  {
    v1 = vaddq_f32(v1, *(self + i));
  }

  __asm { FMOV            V1.4S, #5.0 }

  *&result = vdivq_f32(v1, _Q1).u64[0];
  return result;
}

- (void)updateWithFrame:(id)frame
{
  v30 = *MEMORY[0x277D85DE8];
  frameCopy = frame;
  v5 = frameCopy;
  if (frameCopy)
  {
    camera = [frameCopy camera];
    [camera transform];
    v25 = v7;

    [v5 timestamp];
    v9 = lastTime;
    velocityIndex = self->_velocityIndex;
    if (velocityIndex < 0)
    {
      self->_lastThresholdBreakTime = lastTime;
      v12 = v25;
      v11 = v25;
    }

    else
    {
      v11 = *self->_lastPosition;
      lastTime = self->_lastTime;
      v12 = v25;
    }

    self->_wasMoving = self->_isMoving;
    *self->_lastPosition = v12;
    v13 = v9 - lastTime;
    self->_lastTime = v9;
    *&v13 = v13;
    v14 = (velocityIndex + 1) % 5;
    self->_velocityIndex = v14;
    *&self->_velocities[16 * v14] = vdivq_f32(vsubq_f32(v12, v11), vdupq_lane_s32(*&v13, 0));
    [(ARCoachingMotionTracker *)self calcAverageVelocity];
    v16 = vmulq_f32(v15, v15);
    thresholdBreakCount = self->_thresholdBreakCount;
    if ((v16.f32[2] + vaddv_f32(*v16.f32)) <= 0.01)
    {
      if (thresholdBreakCount <= 1)
      {
        thresholdBreakCount = 1;
      }

      v18 = thresholdBreakCount - 1;
      self->_thresholdBreakCount = v18;
    }

    else
    {
      v18 = thresholdBreakCount + 1;
      self->_thresholdBreakCount = v18;
      self->_lastThresholdBreakTime = v9;
    }

    if (self->_wasMoving)
    {
      if (v9 - self->_lastThresholdBreakTime > 0.5)
      {
        self->_isMoving = 0;
        self->_thresholdBreakCount = 0;
        v19 = _ARLogCoaching_5();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = objc_opt_class();
          v21 = NSStringFromClass(v20);
          *buf = 138543618;
          v27 = v21;
          v28 = 2048;
          selfCopy2 = self;
          v22 = "%{public}@ <%p>: Coaching view stopped moving";
LABEL_17:
          _os_log_impl(&dword_23D3AE000, v19, OS_LOG_TYPE_INFO, v22, buf, 0x16u);

          goto LABEL_18;
        }

        goto LABEL_18;
      }

      if (v18 > 15)
      {
        self->_isMoving = 1;
      }
    }

    else if (v18 > 15)
    {
      self->_isMoving = 1;
      v19 = _ARLogCoaching_5();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v23 = objc_opt_class();
        v21 = NSStringFromClass(v23);
        *buf = 138543618;
        v27 = v21;
        v28 = 2048;
        selfCopy2 = self;
        v22 = "%{public}@ <%p>: Coaching view started moving";
        goto LABEL_17;
      }

LABEL_18:
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)clear
{
  *&self->_velocities[48] = 0u;
  *&self->_velocities[64] = 0u;
  *&self->_velocities[16] = 0u;
  *&self->_velocities[32] = 0u;
  *self->_velocities = 0u;
  *&self->_lastPosition[8] = 0;
  self->_lastTime = 0.0;
  *self->_lastPosition = 0;
  self->_velocityIndex = -1;
  self->_lastThresholdBreakTime = 0.0;
  *(&self->_lastThresholdBreakTime + 6) = 0.0;
}

@end