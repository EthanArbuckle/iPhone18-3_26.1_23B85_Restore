@interface AVCaptureSystemLensSelector
- (BOOL)changesVideoZoomFactor;
- (NSDictionary)displayValuesByZoomFactorValue;
- (id)_initWithDevice:(id)device action:(id)action;
- (id)_overlayUpdateWithVideoZoomFactor:(double)factor;
- (id)actionQueue;
- (id)description;
- (id)device;
- (id)overlayControl;
- (id)overlayUpdate;
- (void)dealloc;
- (void)enqueueActionWithUpdate:(id)update;
- (void)installObservers;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)removeObservers;
- (void)setChangesVideoZoomFactor:(BOOL)factor;
- (void)setDisplayValuesByZoomFactorValue:(id)value;
@end

@implementation AVCaptureSystemLensSelector

- (id)_initWithDevice:(id)device action:(id)action
{
  v9.receiver = self;
  v9.super_class = AVCaptureSystemLensSelector;
  initSubclass = [(AVCaptureControl *)&v9 initSubclass];
  if (initSubclass)
  {
    if ([device hasMediaType:*MEMORY[0x1E6987608]])
    {
      initSubclass[5] = device;
      initSubclass[6] = [action copy];
      *(initSubclass + 16) = 0;
      *(initSubclass + 81) = 1;
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
  os_unfair_lock_lock(&self->_actionLock);

  os_unfair_lock_unlock(&self->_actionLock);
  v3.receiver = self;
  v3.super_class = AVCaptureSystemLensSelector;
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
    v3 = [objc_alloc(MEMORY[0x1E6993910]) initWithIdentifier:-[AVCaptureControl identifier](self sliderType:"identifier") captureUniqueID:{7, -[AVCaptureDevice uniqueID](self->_device, "uniqueID")}];
    self->_overlayControl = v3;
    if (self->_displayValuesByZoomFactorValue)
    {
      [(CAMOverlayServiceSlider *)v3 setDisplayValuesByValue:?];
    }
  }

  os_unfair_lock_unlock(&self->_actionLock);
  return self->_overlayControl;
}

- (id)overlayUpdate
{
  [(AVCaptureDevice *)self->_device videoZoomFactor];

  return [(AVCaptureSystemLensSelector *)self _overlayUpdateWithVideoZoomFactor:?];
}

- (id)_overlayUpdateWithVideoZoomFactor:(double)factor
{
  if (![(AVCaptureSystemLensSelector *)self changesVideoZoomFactor]&& [(AVCaptureDevice *)self->_device position]== AVCaptureDevicePositionFront)
  {
    factor = 0.0;
  }

  overlayControl = [(AVCaptureSystemLensSelector *)self overlayControl];

  *&v6 = factor;
  return [overlayControl updateWithFloatValue:v6];
}

- (id)device
{
  v2 = self->_device;

  return v2;
}

- (NSDictionary)displayValuesByZoomFactorValue
{
  v2 = [(NSDictionary *)self->_displayValuesByZoomFactorValue copy];

  return v2;
}

- (void)setDisplayValuesByZoomFactorValue:(id)value
{
  if (([(NSDictionary *)self->_displayValuesByZoomFactorValue isEqual:?]& 1) == 0)
  {

    self->_displayValuesByZoomFactorValue = [value copy];
    os_unfair_lock_lock(&self->_actionLock);

    self->_overlayControl = 0;
    os_unfair_lock_unlock(&self->_actionLock);
    session = [(AVCaptureControl *)self session];
    if (session)
    {
      if (![(AVCaptureSession *)session isBeingConfigured])
      {
        overlay = [(AVCaptureControl *)self overlay];

        [(AVCaptureControlsOverlay *)overlay rebuildControls];
      }
    }
  }
}

- (BOOL)changesVideoZoomFactor
{
  os_unfair_lock_lock(&self->_actionLock);
  changesVideoZoomFactor = self->_changesVideoZoomFactor;
  os_unfair_lock_unlock(&self->_actionLock);
  return changesVideoZoomFactor;
}

- (void)setChangesVideoZoomFactor:(BOOL)factor
{
  os_unfair_lock_lock(&self->_actionLock);
  if (self->_action)
  {
    self->_changesVideoZoomFactor = factor;

    os_unfair_lock_unlock(&self->_actionLock);
  }

  else
  {
    os_unfair_lock_unlock(&self->_actionLock);
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"AVCaptureSystemLensSelector must be initialized with an action for selectorChangesVideoZoomFactor to be set to YES" userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v5);
    }

    NSLog(&cfstr_SuppressingExc.isa, v5);
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
  observing = self->_observing;
  os_unfair_lock_unlock(&self->_actionLock);
  if (!observing)
  {
    [(AVCaptureDevice *)self->_device addObserver:self forKeyPath:@"videoZoomFactor" options:5 context:AVCaptureSystemLensSelectorDeviceVideoZoomFactorChangedContext];
  }

  os_unfair_lock_lock(&self->_actionLock);
  self->_observing = 1;

  os_unfair_lock_unlock(&self->_actionLock);
}

- (void)removeObservers
{
  os_unfair_lock_lock(&self->_actionLock);
  observing = self->_observing;
  os_unfair_lock_unlock(&self->_actionLock);
  if (observing)
  {
    [(AVCaptureDevice *)self->_device removeObserver:self forKeyPath:@"videoZoomFactor" context:AVCaptureSystemLensSelectorDeviceVideoZoomFactorChangedContext];
  }

  os_unfair_lock_lock(&self->_actionLock);
  self->_observing = 0;

  os_unfair_lock_unlock(&self->_actionLock);
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  os_unfair_lock_lock(&self->_actionLock);
  observing = self->_observing;
  os_unfair_lock_unlock(&self->_actionLock);
  if (AVCaptureSystemLensSelectorDeviceVideoZoomFactorChangedContext == context && self->_device == object)
  {
    v11 = [change objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    if (observing && v11 != 0)
    {
      [v11 floatValue];
      v14 = [(AVCaptureSystemLensSelector *)self _overlayUpdateWithVideoZoomFactor:v13];
      overlay = [(AVCaptureControl *)self overlay];

      [(AVCaptureControlsOverlay *)overlay updateControl:v14];
    }
  }
}

- (void)enqueueActionWithUpdate:(id)update
{
  [update floatValue];
  v5 = v4;
  v6 = v4;
  if (![(AVCaptureSystemLensSelector *)self changesVideoZoomFactor])
  {
    goto LABEL_5;
  }

  if (v5 >= 1.0)
  {
    [(AVCaptureDeviceFormat *)[(AVCaptureDevice *)self->_device activeFormat] videoMaxZoomFactor];
    if (v7 >= v6)
    {
      [(AVCaptureDevice *)self->_device lockForConfiguration:0];
      *&v8 = v5;
      [(AVCaptureDevice *)self->_device rampToVideoZoomFactor:0 withTuning:v8];
      [(AVCaptureDevice *)self->_device unlockForConfiguration];
LABEL_5:
      if (self->_action)
      {
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __55__AVCaptureSystemLensSelector_enqueueActionWithUpdate___block_invoke;
        v9[3] = &unk_1E786ECD0;
        v9[4] = self;
        *&v9[5] = v6;
        dispatch_async(MEMORY[0x1E69E96A0], v9);
      }
    }
  }
}

@end