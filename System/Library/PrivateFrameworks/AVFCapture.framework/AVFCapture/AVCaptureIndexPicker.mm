@interface AVCaptureIndexPicker
- (AVCaptureIndexPicker)initWithLocalizedTitle:(id)title symbolName:(id)name localizedIndexTitles:(id)titles;
- (AVCaptureIndexPicker)initWithLocalizedTitle:(id)title symbolName:(id)name numberOfIndexes:(int64_t)indexes;
- (AVCaptureIndexPicker)initWithLocalizedTitle:(id)title symbolName:(id)name numberOfIndexes:(int64_t)indexes localizedTitleTransform:(id)transform;
- (OS_dispatch_queue)actionQueue;
- (id)description;
- (id)overlayControl;
- (id)overlayUpdate;
- (void)dealloc;
- (void)enqueueActionWithUpdate:(id)update;
- (void)setActionQueue:(id)queue action:(id)action;
- (void)setSelectedIndex:(int64_t)index;
@end

@implementation AVCaptureIndexPicker

- (AVCaptureIndexPicker)initWithLocalizedTitle:(id)title symbolName:(id)name numberOfIndexes:(int64_t)indexes
{
  if (indexes <= 0)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];

    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v11);
    }

    NSLog(&cfstr_SuppressingExc.isa, v11);
    return 0;
  }

  else
  {
    indexesCopy = indexes;
    array = [MEMORY[0x1E695DF70] array];
    do
    {
      [array addObject:&stru_1F1CBCFE8];
      --indexesCopy;
    }

    while (indexesCopy);

    return [(AVCaptureIndexPicker *)self initWithLocalizedTitle:title symbolName:name localizedIndexTitles:array];
  }
}

- (AVCaptureIndexPicker)initWithLocalizedTitle:(id)title symbolName:(id)name localizedIndexTitles:(id)titles
{
  v11.receiver = self;
  v11.super_class = AVCaptureIndexPicker;
  initSubclass = [(AVCaptureControl *)&v11 initSubclass];
  if (initSubclass)
  {
    if ([titles count])
    {
      initSubclass->_localizedTitle = [title copy];
      initSubclass->_symbolName = [name copy];
      initSubclass->_numberOfIndexes = [titles count];
      initSubclass->_localizedIndexTitles = [titles copy];
      initSubclass->_actionLock._os_unfair_lock_opaque = 0;
    }

    else
    {
      v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];

      if (AVCaptureShouldThrowForAPIViolations())
      {
        objc_exception_throw(v9);
      }

      NSLog(&cfstr_SuppressingExc.isa, v9);
      return 0;
    }
  }

  return initSubclass;
}

- (AVCaptureIndexPicker)initWithLocalizedTitle:(id)title symbolName:(id)name numberOfIndexes:(int64_t)indexes localizedTitleTransform:(id)transform
{
  if (indexes <= 0)
  {
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];

    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v14);
    }

    NSLog(&cfstr_SuppressingExc.isa, v14);
    return 0;
  }

  else
  {
    array = [MEMORY[0x1E695DF70] array];
    v12 = 0;
    do
    {
      [array addObject:{(*(transform + 2))(transform, v12++)}];
    }

    while (indexes != v12);

    return [(AVCaptureIndexPicker *)self initWithLocalizedTitle:title symbolName:name localizedIndexTitles:array];
  }
}

- (void)dealloc
{
  os_unfair_lock_lock(&self->_actionLock);

  os_unfair_lock_unlock(&self->_actionLock);
  v3.receiver = self;
  v3.super_class = AVCaptureIndexPicker;
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
    self->_overlayControl = [objc_alloc(MEMORY[0x1E6993908]) initWithIdentifier:-[AVCaptureControl identifier](self title:"identifier") imageName:-[AVCaptureIndexPicker localizedTitle](self valueTitles:{"localizedTitle"), -[AVCaptureIndexPicker symbolName](self, "symbolName"), -[AVCaptureIndexPicker localizedIndexTitles](self, "localizedIndexTitles")}];
  }

  os_unfair_lock_unlock(&self->_actionLock);
  return self->_overlayControl;
}

- (id)overlayUpdate
{
  overlayControl = [(AVCaptureIndexPicker *)self overlayControl];
  selectedIndex = [(AVCaptureIndexPicker *)self selectedIndex];

  return [overlayControl updateWithIndexValue:selectedIndex];
}

- (void)setSelectedIndex:(int64_t)index
{
  actionQueue = [(AVCaptureIndexPicker *)self actionQueue];
  if (actionQueue)
  {
    dispatch_assert_queue_V2(actionQueue);
  }

  if (self->_selectedIndex != index)
  {
    if (index < 0)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Selected index %ld is less than 0", index, v10];
    }

    else
    {
      numberOfIndexes = self->_numberOfIndexes;
      if (numberOfIndexes > index)
      {
        self->_selectedIndex = index;
        overlay = [(AVCaptureControl *)self overlay];
        overlayUpdate = [(AVCaptureIndexPicker *)self overlayUpdate];

        [(AVCaptureControlsOverlay *)overlay updateControl:overlayUpdate];
        return;
      }

      [MEMORY[0x1E696AEC0] stringWithFormat:@"Selected index %ld is larger than the largest supported index %ld", index, numberOfIndexes - 1];
    }

    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v9);
    }

    NSLog(&cfstr_SuppressingExc.isa, v9);
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
  actionQueue = [(AVCaptureIndexPicker *)self actionQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__AVCaptureIndexPicker_enqueueActionWithUpdate___block_invoke;
  v6[3] = &unk_1E786EAA8;
  v6[4] = update;
  v6[5] = self;
  dispatch_async(actionQueue, v6);
}

uint64_t __48__AVCaptureIndexPicker_enqueueActionWithUpdate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) indexValue];
  [*(a1 + 40) willChangeValueForKey:@"selectedIndex"];
  *(*(a1 + 40) + 40) = v2;
  [*(a1 + 40) didChangeValueForKey:@"selectedIndex"];
  v3 = *(*(*(a1 + 40) + 104) + 16);

  return v3();
}

@end