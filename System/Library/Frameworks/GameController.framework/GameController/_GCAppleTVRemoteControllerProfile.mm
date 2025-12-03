@interface _GCAppleTVRemoteControllerProfile
- (BOOL)ownershipClaimingElementsZero;
- (_GCAppleTVRemoteControllerProfile)initWithController:(id)controller;
- (void)getPositionInSlidingWindowForRealX:(double)x realY:(double)y outXInWindow:(double *)window outYInWindow:(double *)inWindow;
- (void)handleReport:(unsigned int)report data:(id)data;
- (void)initCommon:(id)common;
- (void)processOrientationData:(id)data;
- (void)setDeviceType:(int64_t)type;
- (void)setDpad:(id)dpad x:(double)x y:(double)y timestamp:(unint64_t)timestamp forceSkipDpadRotation:(BOOL)rotation;
- (void)setOwner:(unint64_t)owner;
@end

@implementation _GCAppleTVRemoteControllerProfile

- (void)setOwner:(unint64_t)owner
{
  if (self->_owner != owner)
  {
    _motion = [(GCPhysicalInputProfile *)self _motion];
    [_motion _setGravity:{0.0, 0.0, -1.0}];

    _motion2 = [(GCPhysicalInputProfile *)self _motion];
    [_motion2 _setUserAcceleration:{0.0, 0.0, 0.0}];

    _motion3 = [(GCPhysicalInputProfile *)self _motion];
    [_motion3 _setAttitude:{0.0, 0.0, 0.0, 1.0}];

    _motion4 = [(GCPhysicalInputProfile *)self _motion];
    [_motion4 _setRotationRate:{0.0, 0.0, 0.0}];

    _motion5 = [(GCPhysicalInputProfile *)self _motion];
    valueChangedHandler = [_motion5 valueChangedHandler];
    if (valueChangedHandler)
    {
      v11 = valueChangedHandler;
      controller = [(GCPhysicalInputProfile *)self controller];
      handlerQueue = [controller handlerQueue];

      if (!handlerQueue)
      {
        goto LABEL_6;
      }

      _motion5 = [(GCPhysicalInputProfile *)self controller];
      handlerQueue2 = [_motion5 handlerQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __46___GCAppleTVRemoteControllerProfile_setOwner___block_invoke;
      block[3] = &unk_1E8418C28;
      block[4] = self;
      dispatch_async(handlerQueue2, block);
    }

LABEL_6:
    _motion6 = [(GCPhysicalInputProfile *)self _motion];
    internalValueChangedHandler = [_motion6 internalValueChangedHandler];
    if (internalValueChangedHandler)
    {
      v17 = internalValueChangedHandler;
      controller2 = [(GCPhysicalInputProfile *)self controller];
      handlerQueue3 = [controller2 handlerQueue];

      if (!handlerQueue3)
      {
LABEL_10:
        self->_owner = owner;
        return;
      }

      _motion6 = [(GCPhysicalInputProfile *)self controller];
      handlerQueue4 = [_motion6 handlerQueue];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __46___GCAppleTVRemoteControllerProfile_setOwner___block_invoke_2;
      v21[3] = &unk_1E8418C28;
      v21[4] = self;
      dispatch_async(handlerQueue4, v21);
    }

    goto LABEL_10;
  }
}

- (BOOL)ownershipClaimingElementsZero
{
  buttonA = [(GCMicroGamepad *)self buttonA];
  [buttonA value];
  if (v4 == 0.0)
  {
    buttonX = [(GCMicroGamepad *)self buttonX];
    [buttonX value];
    if (v6 == 0.0)
    {
      dpad = [(GCMicroGamepad *)self dpad];
      xAxis = [dpad xAxis];
      [xAxis value];
      if (v9 == 0.0)
      {
        dpad2 = [(GCMicroGamepad *)self dpad];
        yAxis = [dpad2 yAxis];
        [yAxis value];
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

- (void)handleReport:(unsigned int)report data:(id)data
{
  if (report == 226)
  {
    bytes = [data bytes];
    v6 = (*(bytes + 10) << 7);
    if (8 * *(bytes + 8) && v6 != 0)
    {
      v8 = bytes;
      v9 = NormalizedLogicalAxisValueRaw((8 * *(bytes + 8)) / 10240.0, -0.5, 0.5);
      v10 = NormalizedLogicalAxisValueRaw(v6 / 10240.0, 2.7, 5.0);
      v11 = *(v8 + 12);
      dpad = [(GCMicroGamepad *)self dpad];
      v15 = dpad;
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

      [(GCPhysicalInputProfile *)self setDpad:dpad x:v14 y:v13];
    }
  }
}

- (void)processOrientationData:(id)data
{
  [data gravity];
  v6 = fabs(v4);
  if (v5 <= -1.0 || v5 >= -0.55 || v6 >= 0.2)
  {
    if (fabs(v5) >= 0.2 || (v6 > 0.55 ? (v8 = v6 < 1.0) : (v8 = 0), !v8))
    {
      if (self->_candidateOrientation == -1)
      {
        return;
      }

      date2 = 0;
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
      date = [MEMORY[0x1E695DF00] date];
      [date timeIntervalSinceDate:self->_candidateOrientationTimestamp];
      v11 = v10;

      if (v11 >= 1.2)
      {
        self->_orientation = self->_candidateOrientation;
      }
    }

    return;
  }

  self->_candidateOrientation = v7;
  date2 = [MEMORY[0x1E695DF00] date];
  v13 = 0;
LABEL_21:
  v14 = date2;
  objc_storeStrong(&self->_candidateOrientationTimestamp, date2);
  if ((v13 & 1) == 0)
  {
  }
}

- (void)getPositionInSlidingWindowForRealX:(double)x realY:(double)y outXInWindow:(double *)window outYInWindow:(double *)inWindow
{
  *window = 0.0;
  *inWindow = 0.0;
  v6 = x - self->_windowX;
  v7 = y - self->_windowY;
  deadzoneSize = self->_deadzoneSize;
  if (sqrt(v7 * v7 + v6 * v6) >= deadzoneSize)
  {
    v12 = atan2(y - self->_windowY, v6);
    v13 = __sincos_stret(v12);
    *window = v6 - deadzoneSize * v13.__cosval;
    *inWindow = v7 - self->_deadzoneSize * v13.__sinval;
    *window = clamp(*window / (self->_windowSize - self->_deadzoneSize), -1.0, 1.0);
    *inWindow = clamp(*inWindow / (self->_windowSize - self->_deadzoneSize), -1.0, 1.0);
  }
}

- (void)setDpad:(id)dpad x:(double)x y:(double)y timestamp:(unint64_t)timestamp forceSkipDpadRotation:(BOOL)rotation
{
  dpadCopy = dpad;
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
      self->_windowX = x;
      self->_windowY = y;
      goto LABEL_26;
    }

    windowX = self->_windowX;
    windowSize = self->_windowSize;
    if (vabdd_f64(x, windowX) > windowSize)
    {
      if (windowX <= x)
      {
        v17 = self->_windowBufferSize[3];
        if (windowX + windowSize > 1.0 - v17)
        {
          goto LABEL_16;
        }

        v16 = x - windowSize;
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

        v16 = windowSize + x;
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
    if (vabdd_f64(y, windowY) > v19)
    {
      windowBufferSize = self->_windowBufferSize;
      if (windowY <= y)
      {
        v23 = *windowBufferSize;
        if (windowY + v19 > 1.0 - *windowBufferSize)
        {
          goto LABEL_26;
        }

        v22 = y - v19;
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

        v22 = v19 + y;
        if (v22 < v21 + -0.5)
        {
          v22 = v21 + -0.5;
        }
      }

      self->_windowY = v22;
    }

LABEL_26:
    [(_GCAppleTVRemoteControllerProfile *)self getPositionInSlidingWindowForRealX:&v28 realY:&v27 outXInWindow:x outYInWindow:y];
    goto LABEL_27;
  }

  self->_windowX = 0.0;
  self->_windowY = 0.0;
  self->_windowSize = 0.0;
  self->_deadzoneSize = 0.0;
  *self->_windowBufferSize = 0u;
  *&self->_windowBufferSize[2] = 0u;
LABEL_27:
  y = v27;
  x = v28;
  if (rotation || ![(GCMicroGamepad *)self allowsRotation])
  {
    goto LABEL_33;
  }

LABEL_28:
  orientation = self->_orientation;
  if (orientation == 1)
  {
    y = -y;
    yCopy = x;
    goto LABEL_34;
  }

  if (orientation == 2)
  {
    yCopy = -x;
  }

  else
  {
LABEL_33:
    yCopy = y;
    y = x;
  }

LABEL_34:
  v26.receiver = self;
  v26.super_class = _GCAppleTVRemoteControllerProfile;
  [(GCPhysicalInputProfile *)&v26 setDpad:dpadCopy x:y y:yCopy];
}

- (void)initCommon:(id)common
{
  self->_orientation = 0;
  self->_candidateOrientation = 0;
  candidateOrientationTimestamp = self->_candidateOrientationTimestamp;
  self->_candidateOrientationTimestamp = 0;
  commonCopy = common;

  v6 = [[_GCAppleTVRemoteMotionProfile alloc] initWithController:commonCopy];
  [(_GCAppleTVRemoteMotionProfile *)v6 _setMotionLite:1];
  [(GCPhysicalInputProfile *)self set_motion:v6];
  self->_digitizerTouchState = 0;
  self->_windowX = 0.0;
  self->_windowY = 0.0;
}

- (_GCAppleTVRemoteControllerProfile)initWithController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = _GCAppleTVRemoteControllerProfile;
  v5 = [(GCPhysicalInputProfile *)&v8 initWithController:controllerCopy];
  v6 = v5;
  if (v5)
  {
    [(_GCAppleTVRemoteControllerProfile *)v5 initCommon:controllerCopy];
  }

  return v6;
}

- (void)setDeviceType:(int64_t)type
{
  if (gc_isInternalBuild())
  {
    [(_GCAppleTVRemoteControllerProfile *)self setDeviceType:type];
  }

  controller = [(GCPhysicalInputProfile *)self controller];
  [controller setForwarded:type == 3];

  self->_deviceType = type;
  controller2 = [(GCPhysicalInputProfile *)self controller];
  [controller2 setVendorName:0];
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