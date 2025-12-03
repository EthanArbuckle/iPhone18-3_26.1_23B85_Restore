@interface AVCaptureSystemStyleSlider
- (AVCaptureSystemStyleSlider)initWithSession:(id)session parameter:(int64_t)parameter action:(id)action;
- (id)actionQueue;
- (id)overlayControl;
- (id)overlayUpdate;
- (void)dealloc;
- (void)enqueueActionWithUpdate:(id)update;
- (void)installObservers;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)overlayVisibilityDidChange:(BOOL)change;
- (void)removeObservers;
@end

@implementation AVCaptureSystemStyleSlider

- (AVCaptureSystemStyleSlider)initWithSession:(id)session parameter:(int64_t)parameter action:(id)action
{
  v10.receiver = self;
  v10.super_class = AVCaptureSystemStyleSlider;
  initSubclass = [(AVCaptureControl *)&v10 initSubclass];
  if (initSubclass)
  {
    initSubclass->_sessionReference = [objc_alloc(MEMORY[0x1E6988198]) initWithReferencedObject:session];
    initSubclass->_action = [action copy];
    initSubclass->_parameter = parameter;
    initSubclass->_actionLock._os_unfair_lock_opaque = 0;
    initSubclass->_changeSmartStyleInProcess = 1;
  }

  return initSubclass;
}

- (void)dealloc
{
  os_unfair_lock_lock(&self->_actionLock);

  os_unfair_lock_unlock(&self->_actionLock);
  v3.receiver = self;
  v3.super_class = AVCaptureSystemStyleSlider;
  [(AVCaptureControl *)&v3 dealloc];
}

- (id)overlayControl
{
  os_unfair_lock_lock(&self->_actionLock);
  if (!self->_overlayControl)
  {
    parameter = self->_parameter;
    if (parameter <= 2)
    {
      self->_overlayControl = [objc_alloc(MEMORY[0x1E6993910]) initWithIdentifier:-[AVCaptureControl identifier](self sliderType:"identifier") captureUniqueID:{qword_1A92AB998[parameter], &stru_1F1CBCFE8}];
    }
  }

  os_unfair_lock_unlock(&self->_actionLock);
  return self->_overlayControl;
}

- (id)overlayUpdate
{
  v3 = [-[AVWeakReference referencedObject](self->_sessionReference "referencedObject")];
  parameter = self->_parameter;
  if (parameter)
  {
    if (parameter == 2)
    {
      [v3 toneBias];
    }

    else
    {
      v5 = 0;
      if (parameter != 1)
      {
        goto LABEL_8;
      }

      [v3 colorBias];
    }
  }

  else
  {
    [v3 intensity];
  }

  v5 = v6;
LABEL_8:
  overlayControl = [(AVCaptureSystemStyleSlider *)self overlayControl];
  LODWORD(v8) = v5;

  return [overlayControl updateWithFloatValue:v8];
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
    [-[AVWeakReference referencedObject](self->_sessionReference "referencedObject")];
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
    [-[AVWeakReference referencedObject](self->_sessionReference "referencedObject")];
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
  if ([path isEqualToString:@"smartStyle"] && -[AVWeakReference referencedObject](self->_sessionReference, "referencedObject") == object)
  {
    v11 = [change objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    if (observing && v11 != 0)
    {
      v13 = v11;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        parameter = self->_parameter;
        if (parameter)
        {
          if (parameter == 2)
          {
            [v13 toneBias];
          }

          else
          {
            v15 = 0.0;
            if (parameter == 1)
            {
              [v13 colorBias];
            }
          }
        }

        else
        {
          [v13 intensity];
        }

        v16 = [(CAMOverlayServiceSlider *)self->_overlayControl updateWithFloatValue:v15];
        overlay = [(AVCaptureControl *)self overlay];

        [(AVCaptureControlsOverlay *)overlay updateControl:v16];
      }
    }
  }
}

- (void)enqueueActionWithUpdate:(id)update
{
  [update floatValue];
  v5 = v4;
  referencedObject = [(AVWeakReference *)self->_sessionReference referencedObject];
  if (!referencedObject)
  {
    return;
  }

  v7 = referencedObject;
  activeSmartStyle = [referencedObject activeSmartStyle];
  v9 = activeSmartStyle;
  parameter = self->_parameter;
  switch(parameter)
  {
    case 0:
      cast = [(AVCaptureSmartStyle *)activeSmartStyle cast];
      [(AVCaptureSmartStyle *)v9 toneBias];
      v23 = v22;
      [(AVCaptureSmartStyle *)v9 colorBias];
      LODWORD(v17) = LODWORD(v16);
      v15 = cast;
      LODWORD(v16) = v5;
      LODWORD(v14) = v23;
      goto LABEL_8;
    case 2:
      cast2 = [(AVCaptureSmartStyle *)activeSmartStyle cast];
      [(AVCaptureSmartStyle *)v9 intensity];
      v20 = v19;
      [(AVCaptureSmartStyle *)v9 colorBias];
      LODWORD(v17) = LODWORD(v16);
      v15 = cast2;
      LODWORD(v16) = v20;
      LODWORD(v14) = v5;
      goto LABEL_8;
    case 1:
      cast3 = [(AVCaptureSmartStyle *)activeSmartStyle cast];
      [(AVCaptureSmartStyle *)v9 intensity];
      v13 = v12;
      [(AVCaptureSmartStyle *)v9 toneBias];
      LODWORD(v14) = LODWORD(v16);
      v15 = cast3;
      LODWORD(v16) = v13;
      LODWORD(v17) = v5;
LABEL_8:
      v9 = [AVCaptureSmartStyle styleWithCast:v15 intensity:v16 toneBias:v14 colorBias:v17];
      break;
  }

  if (self->_changeSmartStyleInProcess)
  {
    [v7 setSmartStyle:v9];
    self->_smartStyleHasChanged = 1;
  }

  if (self->_action)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __54__AVCaptureSystemStyleSlider_enqueueActionWithUpdate___block_invoke;
    v24[3] = &unk_1E786EAA8;
    v24[4] = self;
    v24[5] = v9;
    dispatch_async(MEMORY[0x1E69E96A0], v24);
  }
}

- (void)overlayVisibilityDidChange:(BOOL)change
{
  v6.receiver = self;
  v6.super_class = AVCaptureSystemStyleSlider;
  [(AVCaptureControl *)&v6 overlayVisibilityDidChange:?];
  if (!change)
  {
    referencedObject = [(AVWeakReference *)self->_sessionReference referencedObject];
    if (referencedObject)
    {
      if (self->_changeSmartStyleInProcess && self->_smartStyleHasChanged)
      {
        [referencedObject saveSystemStyleOverrideToDefaults:{objc_msgSend(referencedObject, "smartStyle")}];
        self->_smartStyleHasChanged = 0;
      }
    }
  }
}

@end