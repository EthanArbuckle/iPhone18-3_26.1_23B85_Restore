@interface AVCaptureToggle
- (AVCaptureToggle)initWithLocalizedTitle:(id)title onSymbolName:(id)name offSymbolName:(id)symbolName;
- (OS_dispatch_queue)actionQueue;
- (id)description;
- (id)overlayControl;
- (id)overlayUpdate;
- (void)dealloc;
- (void)enqueueActionWithUpdate:(id)update;
- (void)setActionQueue:(id)queue action:(id)action;
- (void)setOn:(BOOL)on;
@end

@implementation AVCaptureToggle

- (AVCaptureToggle)initWithLocalizedTitle:(id)title onSymbolName:(id)name offSymbolName:(id)symbolName
{
  v10.receiver = self;
  v10.super_class = AVCaptureToggle;
  initSubclass = [(AVCaptureControl *)&v10 initSubclass];
  if (initSubclass)
  {
    initSubclass->_localizedTitle = [title copy];
    initSubclass->_onSymbolName = [name copy];
    initSubclass->_offSymbolName = [symbolName copy];
    initSubclass->_actionLock._os_unfair_lock_opaque = 0;
  }

  return initSubclass;
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
    accessibilityIdentifier = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@]", accessibilityIdentifier];
  }

  else
  {
    accessibilityIdentifier = &stru_1F1CBCFE8;
  }

  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  return [v5 stringWithFormat:@"<%@: %p [%@]%@>", NSStringFromClass(v6), self, self->_localizedTitle, accessibilityIdentifier];
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
  overlayControl = [(AVCaptureToggle *)self overlayControl];
  isOn = [(AVCaptureToggle *)self isOn];

  return [overlayControl updateWithBooleanValue:isOn];
}

- (void)setOn:(BOOL)on
{
  onCopy = on;
  actionQueue = [(AVCaptureToggle *)self actionQueue];
  if (actionQueue)
  {
    dispatch_assert_queue_V2(actionQueue);
  }

  if (self->_on != onCopy)
  {
    self->_on = onCopy;
    overlay = [(AVCaptureControl *)self overlay];
    overlayUpdate = [(AVCaptureToggle *)self overlayUpdate];

    [(AVCaptureControlsOverlay *)overlay updateControl:overlayUpdate];
  }
}

- (OS_dispatch_queue)actionQueue
{
  os_unfair_lock_lock(&self->_actionLock);
  v3 = self->_actionQueue;
  os_unfair_lock_unlock(&self->_actionLock);
  return v3;
}

- (void)setActionQueue:(id)queue action:(id)action
{
  os_unfair_lock_lock(&self->_actionLock);

  self->_actionQueue = queue;
  self->_action = [action copy];

  os_unfair_lock_unlock(&self->_actionLock);
}

- (void)enqueueActionWithUpdate:(id)update
{
  actionQueue = [(AVCaptureToggle *)self actionQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__AVCaptureToggle_enqueueActionWithUpdate___block_invoke;
  v6[3] = &unk_1E786EAA8;
  v6[4] = update;
  v6[5] = self;
  dispatch_async(actionQueue, v6);
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