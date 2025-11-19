@interface AVCaptureControl
- (AVCaptureControlsOverlay)overlay;
- (AVCaptureSession)session;
- (CAMAbstractOverlayServiceControl)overlayControl;
- (OS_dispatch_queue)actionQueue;
- (id)_enabledUpdateWithEnabled:(BOOL)a3;
- (id)enabledUpdate;
- (id)initSubclass;
- (id)overlayUpdate;
- (void)dealloc;
- (void)enqueueActionWithUpdate:(id)a3;
- (void)overlayDidMakeControlActive:(BOOL)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setOverlay:(id)a3;
- (void)setSession:(id)a3;
@end

@implementation AVCaptureControl

- (id)initSubclass
{
  v5.receiver = self;
  v5.super_class = AVCaptureControl;
  v2 = [(AVCaptureControl *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_enabled = 1;
    v2->_identifier = AVIdentifierForObject(v2);
    v3->_lock._os_unfair_lock_opaque = 0;
  }

  return v3;
}

- (void)dealloc
{
  os_unfair_lock_lock(&self->_lock);

  os_unfair_lock_unlock(&self->_lock);
  v3.receiver = self;
  v3.super_class = AVCaptureControl;
  [(AVCaptureControl *)&v3 dealloc];
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock(&self->_lock);
  enabled = self->_enabled;
  self->_enabled = v3;
  os_unfair_lock_unlock(&self->_lock);
  if (enabled != v3)
  {
    v6 = [(AVCaptureControl *)self _enabledUpdateWithEnabled:v3];
    if (v6)
    {
      v7 = v6;
      v8 = [(AVCaptureControl *)self overlay];

      [(AVCaptureControlsOverlay *)v8 updateControl:v7];
    }
  }
}

- (OS_dispatch_queue)actionQueue
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v2);
  }

  NSLog(&cfstr_SuppressingExc.isa, v2);
  return 0;
}

- (AVCaptureControlsOverlay)overlay
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(AVWeakReference *)self->_overlayReference referencedObject];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)setOverlay:(id)a3
{
  os_unfair_lock_lock(&self->_lock);

  self->_overlayReference = 0;
  if (a3)
  {
    self->_overlayReference = [objc_alloc(MEMORY[0x1E6988198]) initWithReferencedObject:a3];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (AVCaptureSession)session
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(AVWeakReference *)self->_sessionReference referencedObject];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)setSession:(id)a3
{
  os_unfair_lock_lock(&self->_lock);

  self->_sessionReference = 0;
  if (a3)
  {
    self->_sessionReference = [objc_alloc(MEMORY[0x1E6988198]) initWithReferencedObject:a3];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (CAMAbstractOverlayServiceControl)overlayControl
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v2);
  }

  NSLog(&cfstr_SuppressingExc.isa, v2);
  return 0;
}

- (id)overlayUpdate
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v2);
  }

  NSLog(&cfstr_SuppressingExc.isa, v2);
  return 0;
}

- (id)enabledUpdate
{
  os_unfair_lock_lock(&self->_lock);
  enabled = self->_enabled;
  os_unfair_lock_unlock(&self->_lock);

  return [(AVCaptureControl *)self _enabledUpdateWithEnabled:enabled];
}

- (id)_enabledUpdateWithEnabled:(BOOL)a3
{
  v3 = a3;
  [(AVCaptureControl *)self overlayControl];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v5 = [(AVCaptureControl *)self overlayControl];

  return [(CAMAbstractOverlayServiceControl *)v5 updateWithEnabled:v3];
}

- (void)enqueueActionWithUpdate:(id)a3
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v3);
  }

  NSLog(&cfstr_SuppressingExc.isa, v3);
}

- (void)overlayDidMakeControlActive:(BOOL)a3
{
  if (a3)
  {
    [(AVCaptureControl *)self removeObservers];
  }

  else
  {
    [(AVCaptureControl *)self installObservers];
  }
}

@end