@interface AVCaptureSystemExposureBiasSlider
- (AVCaptureSystemExposureBiasSlider)initWithDevice:(id)device;
- (AVCaptureSystemExposureBiasSlider)initWithDevice:(id)device action:(id)action;
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
@end

@implementation AVCaptureSystemExposureBiasSlider

- (AVCaptureSystemExposureBiasSlider)initWithDevice:(id)device
{
  v9.receiver = self;
  v9.super_class = AVCaptureSystemExposureBiasSlider;
  initSubclass = [(AVCaptureControl *)&v9 initSubclass];
  if (initSubclass)
  {
    [device minExposureTargetBias];
    if (v5 == 0.0 || ([device maxExposureTargetBias], v6 == 0.0))
    {
      v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:{0, objc_msgSend(device, "localizedName")}];

      if (AVCaptureShouldThrowForAPIViolations())
      {
        objc_exception_throw(v7);
      }

      NSLog(&cfstr_SuppressingExc.isa, v7);
      return 0;
    }

    else
    {
      initSubclass->_device = device;
      initSubclass->_actionLock._os_unfair_lock_opaque = 0;
      initSubclass->_changeExposureBiasInProcess = 1;
    }
  }

  return initSubclass;
}

- (AVCaptureSystemExposureBiasSlider)initWithDevice:(id)device action:(id)action
{
  v11.receiver = self;
  v11.super_class = AVCaptureSystemExposureBiasSlider;
  initSubclass = [(AVCaptureControl *)&v11 initSubclass];
  if (initSubclass)
  {
    [device minExposureTargetBias];
    if (v7 == 0.0 || ([device maxExposureTargetBias], v8 == 0.0))
    {
      v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:{0, objc_msgSend(device, "localizedName")}];

      if (AVCaptureShouldThrowForAPIViolations())
      {
        objc_exception_throw(v9);
      }

      NSLog(&cfstr_SuppressingExc.isa, v9);
      return 0;
    }

    else
    {
      initSubclass->_device = device;
      initSubclass->_action = [action copy];
      initSubclass->_actionLock._os_unfair_lock_opaque = 0;
      initSubclass->_changeExposureBiasInProcess = 1;
    }
  }

  return initSubclass;
}

- (void)dealloc
{
  os_unfair_lock_lock(&self->_actionLock);

  os_unfair_lock_unlock(&self->_actionLock);
  v3.receiver = self;
  v3.super_class = AVCaptureSystemExposureBiasSlider;
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
    self->_overlayControl = [objc_alloc(MEMORY[0x1E6993910]) initWithIdentifier:-[AVCaptureControl identifier](self sliderType:"identifier") captureUniqueID:{1, -[AVCaptureDevice uniqueID](self->_device, "uniqueID")}];
  }

  os_unfair_lock_unlock(&self->_actionLock);
  return self->_overlayControl;
}

- (id)overlayUpdate
{
  overlayControl = [(AVCaptureSystemExposureBiasSlider *)self overlayControl];
  [(AVCaptureDevice *)self->_device exposureTargetBias];

  return [overlayControl updateWithFloatValue:?];
}

- (id)device
{
  v2 = self->_device;

  return v2;
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
    [(AVCaptureDevice *)self->_device addObserver:self forKeyPath:@"exposureTargetBias" options:5 context:0];
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
    [(AVCaptureDevice *)self->_device removeObserver:self forKeyPath:@"exposureTargetBias"];
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
  if ([path isEqualToString:@"exposureTargetBias"] && self->_device == object)
  {
    v11 = [change objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    if (observing && v11 != 0)
    {
      overlayControl = self->_overlayControl;
      [v11 floatValue];
      v14 = [(CAMOverlayServiceSlider *)overlayControl updateWithFloatValue:?];
      overlay = [(AVCaptureControl *)self overlay];

      [(AVCaptureControlsOverlay *)overlay updateControl:v14];
    }
  }
}

- (void)enqueueActionWithUpdate:(id)update
{
  [update floatValue];
  v5 = v4;
  [(AVCaptureDevice *)self->_device minExposureTargetBias];
  if (v5 >= v6)
  {
    [(AVCaptureDevice *)self->_device maxExposureTargetBias];
    if (v5 <= v7)
    {
      if (self->_changeExposureBiasInProcess)
      {
        [(AVCaptureDevice *)self->_device lockForConfiguration:0];
        *&v8 = v5;
        [(AVCaptureDevice *)self->_device setExposureTargetBias:0 completionHandler:v8];
        [(AVCaptureDevice *)self->_device unlockForConfiguration];
      }

      if (self->_action)
      {
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __61__AVCaptureSystemExposureBiasSlider_enqueueActionWithUpdate___block_invoke;
        v9[3] = &unk_1E78704A0;
        v9[4] = self;
        v10 = v5;
        dispatch_async(MEMORY[0x1E69E96A0], v9);
      }
    }
  }
}

@end