@interface AVCaptureSystemZoomSlider
- (id)_initWithDevice:(id)a3 action:(id)a4;
- (id)actionQueue;
- (id)description;
- (id)device;
- (id)displayValuesByZoomFactorValue;
- (id)overlayControl;
- (id)overlayUpdate;
- (void)_rebuildOverlayControlIfNecessary;
- (void)dealloc;
- (void)enqueueActionWithUpdate:(id)a3;
- (void)installObservers;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)removeObservers;
- (void)setDisplayValuesByZoomFactorValue:(id)a3;
- (void)setMaxVideoZoomFactor:(double)a3;
@end

@implementation AVCaptureSystemZoomSlider

- (id)_initWithDevice:(id)a3 action:(id)a4
{
  v9.receiver = self;
  v9.super_class = AVCaptureSystemZoomSlider;
  v6 = [(AVCaptureControl *)&v9 initSubclass];
  if (v6)
  {
    if ([a3 hasMediaType:*MEMORY[0x1E6987608]])
    {
      *(v6 + 5) = a3;
      *(v6 + 6) = [a4 copy];
      *(v6 + 18) = 0;
      *(v6 + 89) = 1;
      [*(v6 + 5) addObserver:v6 forKeyPath:@"activeFormat" options:1 context:AVCaptureSystemZoomSliderDeviceActiveFormatChangedContext];
    }

    else
    {
      v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:{0, objc_msgSend(a3, "localizedName")}];

      if (AVCaptureShouldThrowForAPIViolations())
      {
        objc_exception_throw(v7);
      }

      NSLog(&cfstr_SuppressingExc.isa, v7);
      return 0;
    }
  }

  return v6;
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
    v3 = [(AVCaptureDevice *)self->_device activeFormat];
    if (v3)
    {
      v4 = v3;
      maxVideoZoomFactor = self->_maxVideoZoomFactor;
      v6 = [(AVCaptureDeviceFormat *)v3 systemRecommendedVideoZoomRange];
      v7 = 1.0;
      if (maxVideoZoomFactor <= 1.0)
      {
        if (v6)
        {
          [(AVZoomRange *)v6 maxZoomFactor];
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
    v4 = [(AVCaptureControl *)self session];
    if (v4 && ![(AVCaptureSession *)v4 isBeingConfigured])
    {
      v5 = [(AVCaptureControl *)self overlay];

      [(AVCaptureControlsOverlay *)v5 rebuildControls];
    }
  }

  else
  {

    os_unfair_lock_unlock(&self->_actionLock);
  }
}

- (id)overlayUpdate
{
  v3 = [(AVCaptureSystemZoomSlider *)self overlayControl];
  [(AVCaptureDevice *)self->_device videoZoomFactor];
  *&v4 = v4;

  return [v3 updateWithFloatValue:v4];
}

- (id)device
{
  v2 = self->_device;

  return v2;
}

- (void)setMaxVideoZoomFactor:(double)a3
{
  if (self->_maxVideoZoomFactor != a3)
  {
    self->_maxVideoZoomFactor = a3;
    [(AVCaptureSystemZoomSlider *)self _rebuildOverlayControlIfNecessary];
  }
}

- (id)displayValuesByZoomFactorValue
{
  v2 = [(NSDictionary *)self->_displayValuesByZoomFactorValue copy];

  return v2;
}

- (void)setDisplayValuesByZoomFactorValue:(id)a3
{
  if (([(NSDictionary *)self->_displayValuesByZoomFactorValue isEqual:?]& 1) == 0)
  {

    self->_displayValuesByZoomFactorValue = [a3 copy];

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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  os_unfair_lock_lock(&self->_actionLock);
  observingDeviceVideoZoomFactor = self->_observingDeviceVideoZoomFactor;
  os_unfair_lock_unlock(&self->_actionLock);
  if (AVCaptureSystemZoomSliderDeviceVideoZoomFactorChangedContext == a6 && self->_device == a4)
  {
    v11 = [a5 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    if (observingDeviceVideoZoomFactor && v11 != 0)
    {
      overlayControl = self->_overlayControl;
      [v11 floatValue];
      v14 = [(CAMOverlayServiceSlider *)overlayControl updateWithFloatValue:?];
      v15 = [(AVCaptureControl *)self overlay];

      [(AVCaptureControlsOverlay *)v15 updateControl:v14];
    }
  }

  else if (AVCaptureSystemZoomSliderDeviceActiveFormatChangedContext == a6 && self->_device == a4)
  {

    [(AVCaptureSystemZoomSlider *)self _rebuildOverlayControlIfNecessary];
  }
}

- (void)enqueueActionWithUpdate:(id)a3
{
  [a3 floatValue];
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