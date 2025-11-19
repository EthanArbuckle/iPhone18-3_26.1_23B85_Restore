@interface AVCaptureToggle
- (AVCaptureToggle)initWithLocalizedTitle:(id)a3 onSymbolName:(id)a4 offSymbolName:(id)a5;
- (OS_dispatch_queue)actionQueue;
- (id)description;
- (id)overlayControl;
- (id)overlayUpdate;
- (void)dealloc;
- (void)enqueueActionWithUpdate:(id)a3;
- (void)setActionQueue:(id)a3 action:(id)a4;
- (void)setOn:(BOOL)a3;
@end

@implementation AVCaptureToggle

- (AVCaptureToggle)initWithLocalizedTitle:(id)a3 onSymbolName:(id)a4 offSymbolName:(id)a5
{
  v10.receiver = self;
  v10.super_class = AVCaptureToggle;
  v8 = [(AVCaptureControl *)&v10 initSubclass];
  if (v8)
  {
    v8->_localizedTitle = [a3 copy];
    v8->_onSymbolName = [a4 copy];
    v8->_offSymbolName = [a5 copy];
    v8->_actionLock._os_unfair_lock_opaque = 0;
  }

  return v8;
}

- (void)dealloc
{
  os_unfair_lock_lock(&self->_actionLock);

  os_unfair_lock_unlock(&self->_actionLock);
  v3.receiver = self;
  v3.super_class = AVCaptureToggle;
  [(AVCaptureControl *)&v3 dealloc];
}

- (id)description
{
  accessibilityIdentifier = self->_accessibilityIdentifier;
  if (accessibilityIdentifier)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@]", accessibilityIdentifier];
  }

  else
  {
    v4 = &stru_1F1CBCFE8;
  }

  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  return [v5 stringWithFormat:@"<%@: %p [%@]%@>", NSStringFromClass(v6), self, self->_localizedTitle, v4];
}

- (id)overlayControl
{
  os_unfair_lock_lock(&self->_actionLock);
  if (!self->_overlayControl)
  {
    self->_overlayControl = [objc_alloc(MEMORY[0x1E6993918]) initWithIdentifier:-[AVCaptureControl identifier](self title:"identifier") imageName:-[AVCaptureToggle localizedTitle](self onImageName:"localizedTitle") offImageName:{-[AVCaptureToggle onSymbolName](self, "onSymbolName"), -[AVCaptureToggle onSymbolName](self, "onSymbolName"), -[AVCaptureToggle offSymbolName](self, "offSymbolName")}];
  }

  os_unfair_lock_unlock(&self->_actionLock);
  return self->_overlayControl;
}

- (id)overlayUpdate
{
  v3 = [(AVCaptureToggle *)self overlayControl];
  v4 = [(AVCaptureToggle *)self isOn];

  return [v3 updateWithBooleanValue:v4];
}

- (void)setOn:(BOOL)a3
{
  v3 = a3;
  v5 = [(AVCaptureToggle *)self actionQueue];
  if (v5)
  {
    dispatch_assert_queue_V2(v5);
  }

  if (self->_on != v3)
  {
    self->_on = v3;
    v6 = [(AVCaptureControl *)self overlay];
    v7 = [(AVCaptureToggle *)self overlayUpdate];

    [(AVCaptureControlsOverlay *)v6 updateControl:v7];
  }
}

- (OS_dispatch_queue)actionQueue
{
  os_unfair_lock_lock(&self->_actionLock);
  v3 = self->_actionQueue;
  os_unfair_lock_unlock(&self->_actionLock);
  return v3;
}

- (void)setActionQueue:(id)a3 action:(id)a4
{
  os_unfair_lock_lock(&self->_actionLock);

  self->_actionQueue = a3;
  self->_action = [a4 copy];

  os_unfair_lock_unlock(&self->_actionLock);
}

- (void)enqueueActionWithUpdate:(id)a3
{
  v5 = [(AVCaptureToggle *)self actionQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__AVCaptureToggle_enqueueActionWithUpdate___block_invoke;
  v6[3] = &unk_1E786EAA8;
  v6[4] = a3;
  v6[5] = self;
  dispatch_async(v5, v6);
}

uint64_t __43__AVCaptureToggle_enqueueActionWithUpdate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) BOOLeanValue];
  [*(a1 + 40) willChangeValueForKey:@"on"];
  *(*(a1 + 40) + 64) = v2;
  [*(a1 + 40) didChangeValueForKey:@"on"];
  v3 = *(*(*(a1 + 40) + 96) + 16);

  return v3();
}

@end