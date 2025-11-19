@interface AVCaptureSystemLensSelector
- (BOOL)changesVideoZoomFactor;
- (NSDictionary)displayValuesByZoomFactorValue;
- (id)_initWithDevice:(id)a3 action:(id)a4;
- (id)_overlayUpdateWithVideoZoomFactor:(double)a3;
- (id)actionQueue;
- (id)description;
- (id)device;
- (id)overlayControl;
- (id)overlayUpdate;
- (void)dealloc;
- (void)enqueueActionWithUpdate:(id)a3;
- (void)installObservers;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)removeObservers;
- (void)setChangesVideoZoomFactor:(BOOL)a3;
- (void)setDisplayValuesByZoomFactorValue:(id)a3;
@end

@implementation AVCaptureSystemLensSelector

- (id)_initWithDevice:(id)a3 action:(id)a4
{
  v9.receiver = self;
  v9.super_class = AVCaptureSystemLensSelector;
  v6 = [(AVCaptureControl *)&v9 initSubclass];
  if (v6)
  {
    if ([a3 hasMediaType:*MEMORY[0x1E6987608]])
    {
      v6[5] = a3;
      v6[6] = [a4 copy];
      *(v6 + 16) = 0;
      *(v6 + 81) = 1;
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

- (id)_overlayUpdateWithVideoZoomFactor:(double)a3
{
  if (![(AVCaptureSystemLensSelector *)self changesVideoZoomFactor]&& [(AVCaptureDevice *)self->_device position]== AVCaptureDevicePositionFront)
  {
    a3 = 0.0;
  }

  v5 = [(AVCaptureSystemLensSelector *)self overlayControl];

  *&v6 = a3;
  return [v5 updateWithFloatValue:v6];
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

- (void)setDisplayValuesByZoomFactorValue:(id)a3
{
  if (([(NSDictionary *)self->_displayValuesByZoomFactorValue isEqual:?]& 1) == 0)
  {

    self->_displayValuesByZoomFactorValue = [a3 copy];
    os_unfair_lock_lock(&self->_actionLock);

    self->_overlayControl = 0;
    os_unfair_lock_unlock(&self->_actionLock);
    v5 = [(AVCaptureControl *)self session];
    if (v5)
    {
      if (![(AVCaptureSession *)v5 isBeingConfigured])
      {
        v6 = [(AVCaptureControl *)self overlay];

        [(AVCaptureControlsOverlay *)v6 rebuildControls];
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

- (void)setChangesVideoZoomFactor:(BOOL)a3
{
  os_unfair_lock_lock(&self->_actionLock);
  if (self->_action)
  {
    self->_changesVideoZoomFactor = a3;

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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  os_unfair_lock_lock(&self->_actionLock);
  observing = self->_observing;
  os_unfair_lock_unlock(&self->_actionLock);
  if (AVCaptureSystemLensSelectorDeviceVideoZoomFactorChangedContext == a6 && self->_device == a4)
  {
    v11 = [a5 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    if (observing && v11 != 0)
    {
      [v11 floatValue];
      v14 = [(AVCaptureSystemLensSelector *)self _overlayUpdateWithVideoZoomFactor:v13];
      v15 = [(AVCaptureControl *)self overlay];

      [(AVCaptureControlsOverlay *)v15 updateControl:v14];
    }
  }
}

- (void)enqueueActionWithUpdate:(id)a3
{
  [a3 floatValue];
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