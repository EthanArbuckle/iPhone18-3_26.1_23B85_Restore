@interface _GCAppleTVRemoteControllerProfile
- (BOOL)ownershipClaimingElementsZero;
- (_GCAppleTVRemoteControllerProfile)initWithController:(id)a3;
- (void)getPositionInSlidingWindowForRealX:(double)a3 realY:(double)a4 outXInWindow:(double *)a5 outYInWindow:(double *)a6;
- (void)handleReport:(unsigned int)a3 data:(id)a4;
- (void)initCommon:(id)a3;
- (void)processOrientationData:(id)a3;
- (void)setDeviceType:(int64_t)a3;
- (void)setDpad:(id)a3 x:(double)a4 y:(double)a5 timestamp:(unint64_t)a6 forceSkipDpadRotation:(BOOL)a7;
- (void)setOwner:(unint64_t)a3;
@end

@implementation _GCAppleTVRemoteControllerProfile

- (void)setOwner:(unint64_t)a3
{
  if (self->_owner != a3)
  {
    v5 = [(GCPhysicalInputProfile *)self _motion];
    [v5 _setGravity:{0.0, 0.0, -1.0}];

    v6 = [(GCPhysicalInputProfile *)self _motion];
    [v6 _setUserAcceleration:{0.0, 0.0, 0.0}];

    v7 = [(GCPhysicalInputProfile *)self _motion];
    [v7 _setAttitude:{0.0, 0.0, 0.0, 1.0}];

    v8 = [(GCPhysicalInputProfile *)self _motion];
    [v8 _setRotationRate:{0.0, 0.0, 0.0}];

    v9 = [(GCPhysicalInputProfile *)self _motion];
    v10 = [v9 valueChangedHandler];
    if (v10)
    {
      v11 = v10;
      v12 = [(GCPhysicalInputProfile *)self controller];
      v13 = [v12 handlerQueue];

      if (!v13)
      {
        goto LABEL_6;
      }

      v9 = [(GCPhysicalInputProfile *)self controller];
      v14 = [v9 handlerQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __46___GCAppleTVRemoteControllerProfile_setOwner___block_invoke;
      block[3] = &unk_1E8418C28;
      block[4] = self;
      dispatch_async(v14, block);
    }

LABEL_6:
    v15 = [(GCPhysicalInputProfile *)self _motion];
    v16 = [v15 internalValueChangedHandler];
    if (v16)
    {
      v17 = v16;
      v18 = [(GCPhysicalInputProfile *)self controller];
      v19 = [v18 handlerQueue];

      if (!v19)
      {
LABEL_10:
        self->_owner = a3;
        return;
      }

      v15 = [(GCPhysicalInputProfile *)self controller];
      v20 = [v15 handlerQueue];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __46___GCAppleTVRemoteControllerProfile_setOwner___block_invoke_2;
      v21[3] = &unk_1E8418C28;
      v21[4] = self;
      dispatch_async(v20, v21);
    }

    goto LABEL_10;
  }
}

- (BOOL)ownershipClaimingElementsZero
{
  v3 = [(GCMicroGamepad *)self buttonA];
  [v3 value];
  if (v4 == 0.0)
  {
    v5 = [(GCMicroGamepad *)self buttonX];
    [v5 value];
    if (v6 == 0.0)
    {
      v7 = [(GCMicroGamepad *)self dpad];
      v8 = [v7 xAxis];
      [v8 value];
      if (v9 == 0.0)
      {
        v10 = [(GCMicroGamepad *)self dpad];
        v11 = [v10 yAxis];
        [v11 value];
        v13 = v12 == 0.0;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)handleReport:(unsigned int)a3 data:(id)a4
{
  if (a3 == 226)
  {
    v5 = [a4 bytes];
    v6 = (*(v5 + 10) << 7);
    if (8 * *(v5 + 8) && v6 != 0)
    {
      v8 = v5;
      v9 = NormalizedLogicalAxisValueRaw((8 * *(v5 + 8)) / 10240.0, -0.5, 0.5);
      v10 = NormalizedLogicalAxisValueRaw(v6 / 10240.0, 2.7, 5.0);
      v11 = *(v8 + 12);
      v12 = [(GCMicroGamepad *)self dpad];
      v15 = v12;
      if (v11)
      {
        v13 = v9;
      }

      else
      {
        v13 = 0.0;
      }

      v14 = -v10;
      if (!v11)
      {
        v14 = -0.0;
      }

      [(GCPhysicalInputProfile *)self setDpad:v12 x:v14 y:v13];
    }
  }
}

- (void)processOrientationData:(id)a3
{
  [a3 gravity];
  v6 = fabs(v4);
  if (v5 <= -1.0 || v5 >= -0.55 || v6 >= 0.2)
  {
    if (fabs(v5) >= 0.2 || (v6 > 0.55 ? (v8 = v6 < 1.0) : (v8 = 0), !v8))
    {
      if (self->_candidateOrientation == -1)
      {
        return;
      }

      v12 = 0;
      self->_candidateOrientation = -1;
      v13 = 1;
      goto LABEL_21;
    }

    if (v4 < 0.0)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  else
  {
    v7 = 0;
  }

  if (v7 == self->_candidateOrientation)
  {
    if (v7 != self->_orientation)
    {
      v9 = [MEMORY[0x1E695DF00] date];
      [v9 timeIntervalSinceDate:self->_candidateOrientationTimestamp];
      v11 = v10;

      if (v11 >= 1.2)
      {
        self->_orientation = self->_candidateOrientation;
      }
    }

    return;
  }

  self->_candidateOrientation = v7;
  v12 = [MEMORY[0x1E695DF00] date];
  v13 = 0;
LABEL_21:
  v14 = v12;
  objc_storeStrong(&self->_candidateOrientationTimestamp, v12);
  if ((v13 & 1) == 0)
  {
  }
}

- (void)getPositionInSlidingWindowForRealX:(double)a3 realY:(double)a4 outXInWindow:(double *)a5 outYInWindow:(double *)a6
{
  *a5 = 0.0;
  *a6 = 0.0;
  v6 = a3 - self->_windowX;
  v7 = a4 - self->_windowY;
  deadzoneSize = self->_deadzoneSize;
  if (sqrt(v7 * v7 + v6 * v6) >= deadzoneSize)
  {
    v12 = atan2(a4 - self->_windowY, v6);
    v13 = __sincos_stret(v12);
    *a5 = v6 - deadzoneSize * v13.__cosval;
    *a6 = v7 - self->_deadzoneSize * v13.__sinval;
    *a5 = clamp(*a5 / (self->_windowSize - self->_deadzoneSize), -1.0, 1.0);
    *a6 = clamp(*a6 / (self->_windowSize - self->_deadzoneSize), -1.0, 1.0);
  }
}

- (void)setDpad:(id)a3 x:(double)a4 y:(double)a5 timestamp:(unint64_t)a6 forceSkipDpadRotation:(BOOL)a7
{
  v11 = a3;
  if ([(GCMicroGamepad *)self reportsAbsoluteDpadValues])
  {
    goto LABEL_28;
  }

  v27 = 0.0;
  v28 = 0.0;
  digitizerTouchState = self->_digitizerTouchState;
  if (digitizerTouchState)
  {
    if (digitizerTouchState == 1)
    {
      self->_windowSize = 0.5;
      self->_deadzoneSize = 0.03;
      memset_pattern16(self->_windowBufferSize, &unk_1D2DEE340, 0x20uLL);
      self->_windowX = a4;
      self->_windowY = a5;
      goto LABEL_26;
    }

    windowX = self->_windowX;
    windowSize = self->_windowSize;
    if (vabdd_f64(a4, windowX) > windowSize)
    {
      if (windowX <= a4)
      {
        v17 = self->_windowBufferSize[3];
        if (windowX + windowSize > 1.0 - v17)
        {
          goto LABEL_16;
        }

        v16 = a4 - windowSize;
        if (v16 >= 0.5 - v17)
        {
          v16 = 0.5 - v17;
        }
      }

      else
      {
        v15 = self->_windowBufferSize[2];
        if (windowX - windowSize < v15 + -1.0)
        {
          goto LABEL_16;
        }

        v16 = windowSize + a4;
        if (v16 < v15 + -0.5)
        {
          v16 = v15 + -0.5;
        }
      }

      self->_windowX = v16;
    }

LABEL_16:
    windowY = self->_windowY;
    v19 = self->_windowSize;
    if (vabdd_f64(a5, windowY) > v19)
    {
      windowBufferSize = self->_windowBufferSize;
      if (windowY <= a5)
      {
        v23 = *windowBufferSize;
        if (windowY + v19 > 1.0 - *windowBufferSize)
        {
          goto LABEL_26;
        }

        v22 = a5 - v19;
        if (v22 >= 0.5 - v23)
        {
          v22 = 0.5 - v23;
        }
      }

      else
      {
        v21 = self->_windowBufferSize[1];
        if (windowY - v19 < v21 + -1.0)
        {
          goto LABEL_26;
        }

        v22 = v19 + a5;
        if (v22 < v21 + -0.5)
        {
          v22 = v21 + -0.5;
        }
      }

      self->_windowY = v22;
    }

LABEL_26:
    [(_GCAppleTVRemoteControllerProfile *)self getPositionInSlidingWindowForRealX:&v28 realY:&v27 outXInWindow:a4 outYInWindow:a5];
    goto LABEL_27;
  }

  self->_windowX = 0.0;
  self->_windowY = 0.0;
  self->_windowSize = 0.0;
  self->_deadzoneSize = 0.0;
  *self->_windowBufferSize = 0u;
  *&self->_windowBufferSize[2] = 0u;
LABEL_27:
  a5 = v27;
  a4 = v28;
  if (a7 || ![(GCMicroGamepad *)self allowsRotation])
  {
    goto LABEL_33;
  }

LABEL_28:
  orientation = self->_orientation;
  if (orientation == 1)
  {
    a5 = -a5;
    v25 = a4;
    goto LABEL_34;
  }

  if (orientation == 2)
  {
    v25 = -a4;
  }

  else
  {
LABEL_33:
    v25 = a5;
    a5 = a4;
  }

LABEL_34:
  v26.receiver = self;
  v26.super_class = _GCAppleTVRemoteControllerProfile;
  [(GCPhysicalInputProfile *)&v26 setDpad:v11 x:a5 y:v25];
}

- (void)initCommon:(id)a3
{
  self->_orientation = 0;
  self->_candidateOrientation = 0;
  candidateOrientationTimestamp = self->_candidateOrientationTimestamp;
  self->_candidateOrientationTimestamp = 0;
  v5 = a3;

  v6 = [[_GCAppleTVRemoteMotionProfile alloc] initWithController:v5];
  [(_GCAppleTVRemoteMotionProfile *)v6 _setMotionLite:1];
  [(GCPhysicalInputProfile *)self set_motion:v6];
  self->_digitizerTouchState = 0;
  self->_windowX = 0.0;
  self->_windowY = 0.0;
}

- (_GCAppleTVRemoteControllerProfile)initWithController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _GCAppleTVRemoteControllerProfile;
  v5 = [(GCPhysicalInputProfile *)&v8 initWithController:v4];
  v6 = v5;
  if (v5)
  {
    [(_GCAppleTVRemoteControllerProfile *)v5 initCommon:v4];
  }

  return v6;
}

- (void)setDeviceType:(int64_t)a3
{
  if (gc_isInternalBuild())
  {
    [(_GCAppleTVRemoteControllerProfile *)self setDeviceType:a3];
  }

  v5 = [(GCPhysicalInputProfile *)self controller];
  [v5 setForwarded:a3 == 3];

  self->_deviceType = a3;
  v6 = [(GCPhysicalInputProfile *)self controller];
  [v6 setVendorName:0];
}

- (void)setDeviceType:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = getGCLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    v7 = a1;
    v8 = 2048;
    v9 = a2;
    _os_log_impl(&dword_1D2CD5000, v4, OS_LOG_TYPE_DEFAULT, "Setting %@ device type to %ld", &v6, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

@end