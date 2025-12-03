@interface AVCaptureSystemZoomSlider
- (id)_initWithDevice:(id)device action:(id)action;
- (id)actionQueue;
- (id)description;
- (id)device;
- (id)displayValuesByZoomFactorValue;
- (id)overlayControl;
- (id)overlayUpdate;
- (void)_rebuildOverlayControlIfNecessary;
- (void)dealloc;
- (void)enqueueActionWithUpdate:(id)update;
- (void)installObservers;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)removeObservers;
- (void)setDisplayValuesByZoomFactorValue:(id)value;
- (void)setMaxVideoZoomFactor:(double)factor;
@end

@implementation AVCaptureSystemZoomSlider

- (id)_initWithDevice:(id)device action:(id)action
{
  v9.receiver = self;
  v9.super_class = AVCaptureSystemZoomSlider;
  initSubclass = [(AVCaptureControl *)&v9 initSubclass];
  if (initSubclass)
  {
    if ([device hasMediaType:*MEMORY[0x1E6987608]])
    {
      *(initSubclass + 5) = device;
      *(initSubclass + 6) = [action copy];
      *(initSubclass + 18) = 0;
      *(initSubclass + 89) = 1;
      [*(initSubclass + 5) addObserver:initSubclass forKeyPath:@"activeFormat" options:1 context:AVCaptureSystemZoomSliderDeviceActiveFormatChangedContext];
    }

    else
    {
      v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:{0, objc_msgSend(device, "localizedName")}];

      if (AVCaptureShouldThrowForAPIViolations())
      {
        objc_exception_throw(v7);
      }

      NSLog(&cfstr_SuppressingExc.isa, v7);
      return 0;
    }
  }

  return initSubclass;
}

- (void)dealloc
{
  [(AVCaptureDevice *)self->_device removeObserver:self forKeyPath:@"activeFormat" context:AVCaptureSystemZoomSliderDeviceActiveFormatChangedContext];

  os_unfair_lock_lock(&self->_actionLock);
  os_unfair_lock_unlock(&self->_actionLock);
  v3.receiver = self;
  v3.super_class = AVCaptureSystemZoomSlider;
  [(AVCaptureControl *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p [%@]>", NSStringFromClass(v4), self, -[AVCaptureDevice localizedName](self->_device, "localizedName")];
}

- (id)overlayControl
{
  os_unfair_lock_lock(&self->_actionLock);
  if (!self->_overlayControl)
  {
    activeFormat = [(AVCaptureDevice *)self->_device activeFormat];
    if (activeFormat)
    {
      v4 = activeFormat;
      maxVideoZoomFactor = self->_maxVideoZoomFactor;
      systemRecommendedVideoZoomRange = [(AVCaptureDeviceFormat *)activeFormat systemRecommendedVideoZoomRange];
      v7 = 1.0;
      if (maxVideoZoomFactor <= 1.0)
      {
        if (systemRecommendedVideoZoomRange)
        {
          [(AVZoomRange *)systemRecommendedVideoZoomRange maxZoomFactor];
          v7 = v9;
        }
      }

      else
      {
        [(AVCaptureDeviceFormat *)v4 videoMaxZoomFactor];
        v7 = fmin(maxVideoZoomFactor, v8);
      }
    }

    else
    {
      v7 = 1.0;
    }

    v10 = [objc_alloc(MEMORY[0x1E6993910]) initPhotoZoomSliderWithIdentifier:-[AVCaptureControl identifier](self maximumZoomFactor:"identifier") captureDeviceUniqueID:{-[AVCaptureDevice uniqueID](self->_device, "uniqueID"), v7}];
    self->_overlayControl = v10;
    if (self->_displayValuesByZoomFactorValue)
    {
      [(CAMOverlayServiceSlider *)v10 setDisplayValuesByValue:?];
    }
  }

  os_unfair_lock_unlock(&self->_actionLock);
  return self->_overlayControl;
}

- (void)_rebuildOverlayControlIfNecessary
{
  os_unfair_lock_lock(&self->_actionLock);
  overlayControl = self->_overlayControl;
  if (overlayControl)
  {

    self->_overlayControl = 0;
    os_unfair_lock_unlock(&self->_actionLock);
    session = [(AVCaptureControl *)self session];
    if (session && ![(AVCaptureSession *)session isBeingConfigured])
    {
      overlay = [(AVCaptureControl *)self overlay];

      [(AVCaptureControlsOverlay *)overlay rebuildControls];
    }
  }

  else
  {

    os_unfair_lock_unlock(&self->_actionLock);
  }
}

- (id)overlayUpdate
{
  overlayControl = [(AVCaptureSystemZoomSlider *)self overlayControl];
  [(AVCaptureDevice *)self->_device videoZoomFactor];
  *&v4 = v4;

  return [overlayControl updateWithFloatValue:v4];
}

- (id)device
{
  v2 = self->_device;

  return v2;
}

- (void)setMaxVideoZoomFactor:(double)factor
{
  if (self->_maxVideoZoomFactor != factor)
  {
    self->_maxVideoZoomFactor = factor;
    [(AVCaptureSystemZoomSlider *)self _rebuildOverlayControlIfNecessary];
  }
}

- (id)displayValuesByZoomFactorValue
{
  v2 = [(NSDictionary *)self->_displayValuesByZoomFactorValue copy];

  return v2;
}

- (void)setDisplayValuesByZoomFactorValue:(id)value
{
  if (([(NSDictionary *)self->_displayValuesByZoomFactorValue isEqual:?]& 1) == 0)
  {

    self->_displayValuesByZoomFactorValue = [value copy];

    [(AVCaptureSystemZoomSlider *)self _rebuildOverlayControlIfNecessary];
  }
}

- (id)actionQueue
{
  os_unfair_lock_lock(&self->_actionLock);
  v3 = MEMORY[0x1E69E96A0];
  os_unfair_lock_unlock(&self->_actionLock);
  return v3;
}

- (void)installObservers
{
  os_unfair_lock_lock(&self->_actionLock);
  observingDeviceVideoZoomFactor = self->_observingDeviceVideoZoomFactor;
  os_unfair_lock_unlock(&self->_actionLock);
  if (!observingDeviceVideoZoomFactor)
  {
    [(AVCaptureDevice *)self->_device addObserver:self forKeyPath:@"videoZoomFactor" options:5 context:AVCaptureSystemZoomSliderDeviceVideoZoomFactorChangedContext];
  }

  os_unfair_lock_lock(&self->_actionLock);
  self->_observingDeviceVideoZoomFactor = 1;

  os_unfair_lock_unlock(&self->_actionLock);
}

- (void)removeObservers
{
  os_unfair_lock_lock(&self->_actionLock);
  observingDeviceVideoZoomFactor = self->_observingDeviceVideoZoomFactor;
  os_unfair_lock_unlock(&self->_actionLock);
  if (observingDeviceVideoZoomFactor)
  {
    [(AVCaptureDevice *)self->_device removeObserver:self forKeyPath:@"videoZoomFactor" context:AVCaptureSystemZoomSliderDeviceVideoZoomFactorChangedContext];
  }

  os_unfair_lock_lock(&self->_actionLock);
  self->_observingDeviceVideoZoomFactor = 0;

  os_unfair_lock_unlock(&self->_actionLock);
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  os_unfair_lock_lock(&self->_actionLock);
  observingDeviceVideoZoomFactor = self->_observingDeviceVideoZoomFactor;
  os_unfair_lock_unlock(&self->_actionLock);
  if (AVCaptureSystemZoomSliderDeviceVideoZoomFactorChangedContext == context && self->_device == object)
  {
    v11 = [change objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    if (observingDeviceVideoZoomFactor && v11 != 0)
    {
      overlayControl = self->_overlayControl;
      [v11 floatValue];
      v14 = [(CAMOverlayServiceSlider *)overlayControl updateWithFloatValue:?];
      overlay = [(AVCaptureControl *)self overlay];

      [(AVCaptureControlsOverlay *)overlay updateControl:v14];
    }
  }

  else if (AVCaptureSystemZoomSliderDeviceActiveFormatChangedContext == context && self->_device == object)
  {

    [(AVCaptureSystemZoomSlider *)self _rebuildOverlayControlIfNecessary];
  }
}

- (void)enqueueActionWithUpdate:(id)update
{
  [update floatValue];
  v5 = v4;
  if (v4 >= 1.0)
  {
    [(AVCaptureDeviceFormat *)[(AVCaptureDevice *)self->_device activeFormat] videoMaxZoomFactor];
    if (v6 >= v5)
    {
      if (self->_changeZoomInProcess)
      {
        [(AVCaptureDevice *)self->_device lockForConfiguration:0];
        *&v7 = v5;
        [(AVCaptureDevice *)self->_device rampToVideoZoomFactor:2 withTuning:v7];
        [(AVCaptureDevice *)self->_device unlockForConfiguration];
      }

      if (self->_action)
      {
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __53__AVCaptureSystemZoomSlider_enqueueActionWithUpdate___block_invoke;
        v8[3] = &unk_1E786ECD0;
        v8[4] = self;
        *&v8[5] = v5;
        dispatch_async(MEMORY[0x1E69E96A0], v8);
      }
    }
  }
}

@end