@interface AVCaptureIndexPicker
- (AVCaptureIndexPicker)initWithLocalizedTitle:(id)a3 symbolName:(id)a4 localizedIndexTitles:(id)a5;
- (AVCaptureIndexPicker)initWithLocalizedTitle:(id)a3 symbolName:(id)a4 numberOfIndexes:(int64_t)a5;
- (AVCaptureIndexPicker)initWithLocalizedTitle:(id)a3 symbolName:(id)a4 numberOfIndexes:(int64_t)a5 localizedTitleTransform:(id)a6;
- (OS_dispatch_queue)actionQueue;
- (id)description;
- (id)overlayControl;
- (id)overlayUpdate;
- (void)dealloc;
- (void)enqueueActionWithUpdate:(id)a3;
- (void)setActionQueue:(id)a3 action:(id)a4;
- (void)setSelectedIndex:(int64_t)a3;
@end

@implementation AVCaptureIndexPicker

- (AVCaptureIndexPicker)initWithLocalizedTitle:(id)a3 symbolName:(id)a4 numberOfIndexes:(int64_t)a5
{
  if (a5 <= 0)
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
    v6 = a5;
    v9 = [MEMORY[0x1E695DF70] array];
    do
    {
      [v9 addObject:&stru_1F1CBCFE8];
      --v6;
    }

    while (v6);

    return [(AVCaptureIndexPicker *)self initWithLocalizedTitle:a3 symbolName:a4 localizedIndexTitles:v9];
  }
}

- (AVCaptureIndexPicker)initWithLocalizedTitle:(id)a3 symbolName:(id)a4 localizedIndexTitles:(id)a5
{
  v11.receiver = self;
  v11.super_class = AVCaptureIndexPicker;
  v8 = [(AVCaptureControl *)&v11 initSubclass];
  if (v8)
  {
    if ([a5 count])
    {
      v8->_localizedTitle = [a3 copy];
      v8->_symbolName = [a4 copy];
      v8->_numberOfIndexes = [a5 count];
      v8->_localizedIndexTitles = [a5 copy];
      v8->_actionLock._os_unfair_lock_opaque = 0;
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

  return v8;
}

- (AVCaptureIndexPicker)initWithLocalizedTitle:(id)a3 symbolName:(id)a4 numberOfIndexes:(int64_t)a5 localizedTitleTransform:(id)a6
{
  if (a5 <= 0)
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
    v11 = [MEMORY[0x1E695DF70] array];
    v12 = 0;
    do
    {
      [v11 addObject:{(*(a6 + 2))(a6, v12++)}];
    }

    while (a5 != v12);

    return [(AVCaptureIndexPicker *)self initWithLocalizedTitle:a3 symbolName:a4 localizedIndexTitles:v11];
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
    self->_overlayControl = [objc_alloc(MEMORY[0x1E6993908]) initWithIdentifier:-[AVCaptureControl identifier](self title:"identifier") imageName:-[AVCaptureIndexPicker localizedTitle](self valueTitles:{"localizedTitle"), -[AVCaptureIndexPicker symbolName](self, "symbolName"), -[AVCaptureIndexPicker localizedIndexTitles](self, "localizedIndexTitles")}];
  }

  os_unfair_lock_unlock(&self->_actionLock);
  return self->_overlayControl;
}

- (id)overlayUpdate
{
  v3 = [(AVCaptureIndexPicker *)self overlayControl];
  v4 = [(AVCaptureIndexPicker *)self selectedIndex];

  return [v3 updateWithIndexValue:v4];
}

- (void)setSelectedIndex:(int64_t)a3
{
  v5 = [(AVCaptureIndexPicker *)self actionQueue];
  if (v5)
  {
    dispatch_assert_queue_V2(v5);
  }

  if (self->_selectedIndex != a3)
  {
    if (a3 < 0)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Selected index %ld is less than 0", a3, v10];
    }

    else
    {
      numberOfIndexes = self->_numberOfIndexes;
      if (numberOfIndexes > a3)
      {
        self->_selectedIndex = a3;
        v7 = [(AVCaptureControl *)self overlay];
        v8 = [(AVCaptureIndexPicker *)self overlayUpdate];

        [(AVCaptureControlsOverlay *)v7 updateControl:v8];
        return;
      }

      [MEMORY[0x1E696AEC0] stringWithFormat:@"Selected index %ld is larger than the largest supported index %ld", a3, numberOfIndexes - 1];
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

- (void)setActionQueue:(id)a3 action:(id)a4
{
  os_unfair_lock_lock(&self->_actionLock);

  self->_actionQueue = a3;
  self->_action = [a4 copy];

  os_unfair_lock_unlock(&self->_actionLock);
}

- (void)enqueueActionWithUpdate:(id)a3
{
  v5 = [(AVCaptureIndexPicker *)self actionQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__AVCaptureIndexPicker_enqueueActionWithUpdate___block_invoke;
  v6[3] = &unk_1E786EAA8;
  v6[4] = a3;
  v6[5] = self;
  dispatch_async(v5, v6);
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