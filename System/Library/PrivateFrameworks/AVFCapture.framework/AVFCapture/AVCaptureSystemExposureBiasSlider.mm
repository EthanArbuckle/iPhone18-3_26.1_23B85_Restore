@interface AVCaptureSystemExposureBiasSlider
- (AVCaptureSystemExposureBiasSlider)initWithDevice:(id)a3;
- (AVCaptureSystemExposureBiasSlider)initWithDevice:(id)a3 action:(id)a4;
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
@end

@implementation AVCaptureSystemExposureBiasSlider

- (AVCaptureSystemExposureBiasSlider)initWithDevice:(id)a3
{
  v9.receiver = self;
  v9.super_class = AVCaptureSystemExposureBiasSlider;
  v4 = [(AVCaptureControl *)&v9 initSubclass];
  if (v4)
  {
    [a3 minExposureTargetBias];
    if (v5 == 0.0 || ([a3 maxExposureTargetBias], v6 == 0.0))
    {
      v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:{0, objc_msgSend(a3, "localizedName")}];

      if (AVCaptureShouldThrowForAPIViolations())
      {
        objc_exception_throw(v7);
      }

      NSLog(&cfstr_SuppressingExc.isa, v7);
      return 0;
    }

    else
    {
      v4->_device = a3;
      v4->_actionLock._os_unfair_lock_opaque = 0;
      v4->_changeExposureBiasInProcess = 1;
    }
  }

  return v4;
}

- (AVCaptureSystemExposureBiasSlider)initWithDevice:(id)a3 action:(id)a4
{
  v11.receiver = self;
  v11.super_class = AVCaptureSystemExposureBiasSlider;
  v6 = [(AVCaptureControl *)&v11 initSubclass];
  if (v6)
  {
    [a3 minExposureTargetBias];
    if (v7 == 0.0 || ([a3 maxExposureTargetBias], v8 == 0.0))
    {
      v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:{0, objc_msgSend(a3, "localizedName")}];

      if (AVCaptureShouldThrowForAPIViolations())
      {
        objc_exception_throw(v9);
      }

      NSLog(&cfstr_SuppressingExc.isa, v9);
      return 0;
    }

    else
    {
      v6->_device = a3;
      v6->_action = [a4 copy];
      v6->_actionLock._os_unfair_lock_opaque = 0;
      v6->_changeExposureBiasInProcess = 1;
    }
  }

  return v6;
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
  v3 = [(AVCaptureSystemExposureBiasSlider *)self overlayControl];
  [(AVCaptureDevice *)self->_device exposureTargetBias];

  return [v3 updateWithFloatValue:?];
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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  os_unfair_lock_lock(&self->_actionLock);
  observing = self->_observing;
  os_unfair_lock_unlock(&self->_actionLock);
  if ([a3 isEqualToString:@"exposureTargetBias"] && self->_device == a4)
  {
    v11 = [a5 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    if (observing && v11 != 0)
    {
      overlayControl = self->_overlayControl;
      [v11 floatValue];
      v14 = [(CAMOverlayServiceSlider *)overlayControl updateWithFloatValue:?];
      v15 = [(AVCaptureControl *)self overlay];

      [(AVCaptureControlsOverlay *)v15 updateControl:v14];
    }
  }
}

- (void)enqueueActionWithUpdate:(id)a3
{
  [a3 floatValue];
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