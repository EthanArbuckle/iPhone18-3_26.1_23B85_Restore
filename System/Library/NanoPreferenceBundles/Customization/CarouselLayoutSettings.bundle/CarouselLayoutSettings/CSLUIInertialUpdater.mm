@interface CSLUIInertialUpdater
- (BOOL)_needsDisplayLink;
- (CGPoint)_constrainedOffset:(CGPoint)offset;
- (void)_beginDraggingIfNecessary;
- (void)_computeDecelerationTarget;
- (void)_decelerate:(double)_decelerate;
- (void)_displayLinkFired:(id)fired;
- (void)_finalizeOffset;
- (void)_handleDragDelta:(CGPoint)delta;
- (void)_updateDelegateWithDelta:(CGPoint)delta;
- (void)_updateDisplayLink;
- (void)addDragDelta:(CGPoint)delta;
- (void)endDragging;
- (void)endUpdating;
@end

@implementation CSLUIInertialUpdater

- (void)addDragDelta:(CGPoint)delta
{
  y = delta.y;
  x = delta.x;
  [(CSLUIInertialUpdater *)self _beginDraggingIfNecessary];

  [(CSLUIInertialUpdater *)self _handleDragDelta:x, y];
}

- (void)endDragging
{
  v3.f64[0] = self->_velocity.x;
  self->_dragging = 0;
  self->_offset = CGPointZero;
  __asm { FMOV            V3.2D, #0.25 }

  v3.f64[1] = self->_velocity.y;
  __asm { FMOV            V2.2D, #0.75 }

  self->_velocity = vmlaq_f64(vmulq_f64(self->_lastVelocity, _Q3), _Q2, v3);
  [(CSLUIInertialUpdater *)self _computeDecelerationTarget];
  [(CSLUIInertialUpdater *)self _updateDisplayLink];
  if (!self->_displayLink)
  {
    delegate = self->_delegate;

    [(CSLUIInertialUpdaterDelegate *)delegate inertialUpdaterFinishedScrolling:self];
  }
}

- (void)endUpdating
{
  if (self->_displayLink)
  {
    self->_dragging = 0;
    self->_target = vdupq_n_s64(0x7FF8000000000000uLL);
    [(CSLUIInertialUpdater *)self _updateDisplayLink];
    delegate = self->_delegate;

    [(CSLUIInertialUpdaterDelegate *)delegate inertialUpdaterFinishedScrolling:self];
  }
}

- (BOOL)_needsDisplayLink
{
  if (self->_dragging)
  {
    return 0;
  }

  x = self->_offset.x;
  v4 = vabdd_f64(x, self->_target.x) < 0.001 && vabdd_f64(self->_offset.y, self->_target.y) < 0.001;
  v5 = vabdd_f64(x, self->_clientTarget.x) < 0.001 && vabdd_f64(self->_offset.y, self->_clientTarget.y) < 0.001;
  return !v4 || !v5;
}

- (void)_updateDisplayLink
{
  _needsDisplayLink = [(CSLUIInertialUpdater *)self _needsDisplayLink];
  displayLink = self->_displayLink;
  if (_needsDisplayLink)
  {
    if (displayLink)
    {
      return;
    }

    v5 = [CADisplayLink displayLinkWithTarget:self selector:"_displayLinkFired:"];
    v6 = self->_displayLink;
    self->_displayLink = v5;

    v7 = self->_displayLink;
    v9 = +[NSRunLoop currentRunLoop];
    [(CADisplayLink *)v7 addToRunLoop:v9 forMode:NSRunLoopCommonModes];
    v8 = v9;
  }

  else
  {
    if (!displayLink)
    {
      return;
    }

    [(CADisplayLink *)displayLink invalidate];
    v8 = self->_displayLink;
    self->_displayLink = 0;
  }
}

- (void)_updateDelegateWithDelta:(CGPoint)delta
{
  y = delta.y;
  x = delta.x;
  v6 = cslprf_ui_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_243E0(v6, x, y);
  }

  [(CSLUIInertialUpdaterDelegate *)self->_delegate inertialUpdater:self scrolledWithDelta:x, y];
}

- (CGPoint)_constrainedOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  v6 = self->_clientTarget.x;
  if (offset.x > v6 && self->_target.x >= offset.x || offset.x < v6 && self->_target.x <= offset.x)
  {
    v7 = 1;
  }

  else
  {
    v7 = 0;
    v6 = offset.x;
  }

  v8 = self->_clientTarget.y;
  if (offset.y <= v8 || self->_target.y < offset.y)
  {
    if (offset.y >= v8)
    {
      v8 = offset.y;
      if (!v7)
      {
LABEL_14:
        v8 = offset.y;
        goto LABEL_19;
      }
    }

    else
    {
      if (self->_target.y > offset.y)
      {
        v8 = offset.y;
      }

      else
      {
        LOBYTE(v7) = 1;
      }

      if ((v7 & 1) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  v9 = cslprf_ui_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v12 = self->_target.x;
    v13 = self->_target.y;
    v14 = self->_clientTarget.x;
    v15 = self->_clientTarget.y;
    v16 = 134219776;
    v17 = x;
    v18 = 2048;
    v19 = y;
    v20 = 2048;
    v21 = v6;
    v22 = 2048;
    v23 = v8;
    v24 = 2048;
    v25 = v12;
    v26 = 2048;
    v27 = v13;
    v28 = 2048;
    v29 = v14;
    v30 = 2048;
    v31 = v15;
    _os_log_debug_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "inertial updater: did constrain offset:{%.4f, %.4f} to offset:{%.4f, %.4f} target:{%.4f, %.4f} clientTarget:{%.4f, %.4f}", &v16, 0x52u);
  }

LABEL_19:
  v10 = v6;
  v11 = v8;
  result.y = v11;
  result.x = v10;
  return result;
}

- (void)_decelerate:(double)_decelerate
{
  x = self->_offset.x;
  y = self->_offset.y;
  v6 = _decelerate * 1000.0;
  v7 = powf(0.975, v6);
  v8 = 1.0 - v7;
  v9 = x * v7 + (1.0 - v7) * self->_target.x;
  self->_offset.x = v9;
  v10 = powf(0.994, v6);
  self->_offset.y = y * v10 + (1.0 - v10) * self->_target.y;
  [(CSLUIInertialUpdater *)self _constrainedOffset:v9];
  v13 = v12;
  v14 = self->_offset.x;
  if (vabdd_f64(v11, v14) > 0.001)
  {
    v14 = v14 * v7 + v8 * v11;
    self->_offset.x = v14;
    self->_target.x = self->_target.x * v7 + v8 * v11;
  }

  v15 = self->_offset.y;
  if (vabdd_f64(v12, v15) > 0.001)
  {
    v16 = powf(0.985, v6);
    v15 = v15 * v16 + (1.0 - v16) * v13;
    self->_offset.y = v15;
    self->_target.y = self->_target.y * v16 + (1.0 - v16) * v13;
  }

  v17 = cslprf_ui_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = self->_offset.x;
    v20 = self->_target.x;
    v19 = self->_target.y;
    v21 = 134219264;
    v22 = v14 - x;
    v23 = 2048;
    v24 = v15 - y;
    v25 = 2048;
    v26 = v18;
    v27 = 2048;
    v28 = v19;
    v29 = 2048;
    v30 = v20;
    v31 = 2048;
    v32 = v19;
    _os_log_debug_impl(&dword_0, v17, OS_LOG_TYPE_DEBUG, "inertial updater: did decelerate with delta:{%.4f, %.4f} offset:{%.4f, %.4f} target:{%.4f, %.4f}", &v21, 0x3Eu);
  }

  [(CSLUIInertialUpdater *)self _updateDelegateWithDelta:v14 - x, v15 - y];
}

- (void)_finalizeOffset
{
  v3 = vsubq_f64(self->_clientTarget, self->_offset);
  if (qword_416E8 != -1)
  {
    v13 = v3;
    sub_24468();
    v3 = v13;
  }

  *&v4.f64[0] = qword_416E0;
  *&v4.f64[1] = qword_416E0;
  v12 = vdivq_f64(vcvtq_f64_f32(vrnda_f32(vcvt_f32_f64(vmulq_f64(v3, v4)))), v4);
  v5 = cslprf_ui_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    x = self->_offset.x;
    y = self->_offset.y;
    v8 = self->_target.x;
    v9 = self->_target.y;
    v10 = self->_clientTarget.x;
    v11 = self->_clientTarget.y;
    *buf = 134219776;
    v15 = v12.f64[0];
    v16 = 2048;
    *(buf | 0xE) = v12.f64[1];
    v17 = 2048;
    v18 = x;
    v19 = 2048;
    v20 = y;
    v21 = 2048;
    v22 = v8;
    v23 = 2048;
    v24 = v9;
    v25 = 2048;
    v26 = v10;
    v27 = 2048;
    v28 = v11;
    _os_log_debug_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "inertial updater: did finalize delta:{%.4f, %.4f} with offset:{%.4f, %.4f} target:{%.4f, %.4f} clientTarget:{%.4f, %.4f}", buf, 0x52u);
  }

  if (v12.f64[0] != 0.0 || v12.f64[1] != 0.0)
  {
    [(CSLUIInertialUpdater *)self _handleDragDelta:*&v12, *&v12.f64[0]];
  }
}

- (void)_displayLinkFired:(id)fired
{
  [fired timestamp];
  v5 = v4 - self->_lastDecelerationUpdate;
  self->_lastDecelerationUpdate = v4;
  [(CSLUIInertialUpdater *)self _decelerate:v5];
  [(CSLUIInertialUpdater *)self _updateDisplayLink];
  if (!self->_displayLink)
  {
    [(CSLUIInertialUpdater *)self _finalizeOffset];
    delegate = self->_delegate;

    [(CSLUIInertialUpdaterDelegate *)delegate inertialUpdaterFinishedScrolling:self];
  }
}

- (void)_beginDraggingIfNecessary
{
  if (!self->_dragging)
  {
    self->_dragging = 1;
    v4 = vdupq_n_s64(0x7FF8000000000000uLL);
    self->_velocity = v4;
    self->_lastVelocity = v4;
    self->_clientTarget = v4;
    self->_offset = v4;
    self->_lastInteractionTime = CACurrentMediaTime();
    self->_lastDecelerationUpdate = NAN;

    [(CSLUIInertialUpdater *)self _updateDisplayLink];
  }
}

- (void)_handleDragDelta:(CGPoint)delta
{
  y = delta.y;
  x = delta.x;
  v6 = CACurrentMediaTime();
  self->_lastVelocity = self->_velocity;
  v7 = v6 - self->_lastInteractionTime;
  self->_lastInteractionTime = v6;
  v8 = 0.0166666667;
  if (v7 >= 0.001)
  {
    v8 = v7;
  }

  self->_velocity.x = x / v8;
  self->_velocity.y = y / v8;
  v9 = self->_lastVelocity.x;
  v10 = self->_lastVelocity.y;

  [(CSLUIInertialUpdater *)self _updateDelegateWithDelta:x, y];
}

- (void)_computeDecelerationTarget
{
  v3 = vmulq_f64(self->_velocity, xmmword_2A360);
  if (qword_416E8 != -1)
  {
    v30 = v3;
    sub_24468();
    v3 = v30;
  }

  *&v4.f64[0] = qword_416E0;
  *&v4.f64[1] = qword_416E0;
  v5 = vdivq_f64(vcvtq_f64_f32(vrnda_f32(vcvt_f32_f64(vmulq_f64(v3, v4)))), v4);
  self->_target = v5;
  y = v5.y;
  [(CSLUIInertialUpdaterDelegate *)self->_delegate inertialUpdater:self willDecelerateWithTarget:v5];
  v8 = v7;
  v10 = v9;
  self->_clientTarget.x = v7;
  self->_clientTarget.y = v9;
  v11 = v7 >= 0.0;
  x = self->_target.x;
  v13 = x < 0.0;
  v14 = fabs(x);
  v15 = fabs(v8);
  if (v11 == v13 || v14 < v15)
  {
    self->_target.x = v8;
    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  v18 = self->_target.y;
  v19 = v18 < 0.0;
  v20 = fabs(v18);
  v21 = fabs(v10);
  if (v10 >= 0.0 == v19 || v20 < v21)
  {
    self->_target.y = v10;
  }

  else if (!v17)
  {
    v23 = cslprf_ui_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134219264;
      v32 = v29;
      v33 = 2048;
      v34 = y;
      v35 = 2048;
      v36 = v8;
      v37 = 2048;
      v38 = v10;
      v39 = 2048;
      v40 = v8;
      v41 = 2048;
      v42 = v10;
      v24 = "inertial updater: computed deceleration target:{%.4f, %.4f} NOT constrained to clientTarget:{%.4f, %.4f} from correctedTarget:{%.4f, %.4f}";
      v25 = v23;
      v26 = 62;
LABEL_21:
      _os_log_debug_impl(&dword_0, v25, OS_LOG_TYPE_DEBUG, v24, buf, v26);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  v23 = cslprf_ui_log();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v27 = self->_target.x;
    v28 = self->_target.y;
    *buf = 134219776;
    v32 = v29;
    v33 = 2048;
    v34 = y;
    v35 = 2048;
    v36 = v8;
    v37 = 2048;
    v38 = v10;
    v39 = 2048;
    v40 = v8;
    v41 = 2048;
    v42 = v10;
    v43 = 2048;
    v44 = v27;
    v45 = 2048;
    v46 = v28;
    v24 = "inertial updater: computed deceleration target:{%.4f, %.4f} constrained to clientTarget:{%.4f, %.4f} from correctedTarget:{%.4f, %.4f} resulting target:{%.4f, %.4f}";
    v25 = v23;
    v26 = 82;
    goto LABEL_21;
  }

LABEL_16:
}

@end