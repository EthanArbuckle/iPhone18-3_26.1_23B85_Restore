@interface AVCaptureControl
- (AVCaptureControlsOverlay)overlay;
- (AVCaptureSession)session;
- (CAMAbstractOverlayServiceControl)overlayControl;
- (OS_dispatch_queue)actionQueue;
- (id)_enabledUpdateWithEnabled:(BOOL)enabled;
- (id)enabledUpdate;
- (id)initSubclass;
- (id)overlayUpdate;
- (void)dealloc;
- (void)enqueueActionWithUpdate:(id)update;
- (void)overlayDidMakeControlActive:(BOOL)active;
- (void)setEnabled:(BOOL)enabled;
- (void)setOverlay:(id)overlay;
- (void)setSession:(id)session;
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

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  os_unfair_lock_lock(&self->_lock);
  enabled = self->_enabled;
  self->_enabled = enabledCopy;
  os_unfair_lock_unlock(&self->_lock);
  if (enabled != enabledCopy)
  {
    v6 = [(AVCaptureControl *)self _enabledUpdateWithEnabled:enabledCopy];
    if (v6)
    {
      v7 = v6;
      overlay = [(AVCaptureControl *)self overlay];

      [(AVCaptureControlsOverlay *)overlay updateControl:v7];
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
  referencedObject = [(AVWeakReference *)self->_overlayReference referencedObject];
  os_unfair_lock_unlock(&self->_lock);
  return referencedObject;
}

- (void)setOverlay:(id)overlay
{
  os_unfair_lock_lock(&self->_lock);

  self->_overlayReference = 0;
  if (overlay)
  {
    self->_overlayReference = [objc_alloc(MEMORY[0x1E6988198]) initWithReferencedObject:overlay];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (AVCaptureSession)session
{
  os_unfair_lock_lock(&self->_lock);
  referencedObject = [(AVWeakReference *)self->_sessionReference referencedObject];
  os_unfair_lock_unlock(&self->_lock);
  return referencedObject;
}

- (void)setSession:(id)session
{
  os_unfair_lock_lock(&self->_lock);

  self->_sessionReference = 0;
  if (session)
  {
    self->_sessionReference = [objc_alloc(MEMORY[0x1E6988198]) initWithReferencedObject:session];
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

- (id)_enabledUpdateWithEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  [(AVCaptureControl *)self overlayControl];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  overlayControl = [(AVCaptureControl *)self overlayControl];

  return [(CAMAbstractOverlayServiceControl *)overlayControl updateWithEnabled:enabledCopy];
}

- (void)enqueueActionWithUpdate:(id)update
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v3);
  }

  NSLog(&cfstr_SuppressingExc.isa, v3);
}

- (void)overlayDidMakeControlActive:(BOOL)active
{
  if (active)
  {
    [(AVCaptureControl *)self removeObservers];
  }

  else
  {
    [(AVCaptureControl *)self installObservers];
  }
}

@end