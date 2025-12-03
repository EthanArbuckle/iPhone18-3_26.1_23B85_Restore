@interface AVCaptureSlider
- (AVCaptureSlider)initWithLocalizedTitle:(id)title symbolName:(id)name minValue:(float)value maxValue:(float)maxValue;
- (AVCaptureSlider)initWithLocalizedTitle:(id)title symbolName:(id)name minValue:(float)value maxValue:(float)maxValue step:(float)step;
- (AVCaptureSlider)initWithLocalizedTitle:(id)title symbolName:(id)name values:(id)values;
- (OS_dispatch_queue)actionQueue;
- (id)description;
- (id)overlayControl;
- (id)overlayUpdate;
- (void)dealloc;
- (void)enqueueActionWithUpdate:(id)update;
- (void)setActionQueue:(id)queue action:(id)action;
- (void)setLocalizedValueValueFormat:(id)format;
- (void)setProminentValues:(id)values;
- (void)setValue:(float)value;
@end

@implementation AVCaptureSlider

- (AVCaptureSlider)initWithLocalizedTitle:(id)title symbolName:(id)name values:(id)values
{
  v14.receiver = self;
  v14.super_class = AVCaptureSlider;
  initSubclass = [(AVCaptureControl *)&v14 initSubclass];
  if (initSubclass)
  {
    v9 = [values sortedArrayUsingSelector:sel_compare_];
    [objc_msgSend(v9 "firstObject")];
    initSubclass->_minValue = v10;
    [objc_msgSend(v9 "lastObject")];
    initSubclass->_maxValue = v11;
    initSubclass->_value = initSubclass->_minValue;
    initSubclass->_prominentValues = objc_alloc_init(MEMORY[0x1E695DEC8]);
    initSubclass->_localizedTitle = [title copy];
    initSubclass->_symbolName = [name copy];
    v12 = [values copy];
    initSubclass->_discreteRange = [objc_alloc(MEMORY[0x1E69938F8]) initWithValues:v12];

    initSubclass->_actionLock._os_unfair_lock_opaque = 0;
  }

  return initSubclass;
}

- (AVCaptureSlider)initWithLocalizedTitle:(id)title symbolName:(id)name minValue:(float)value maxValue:(float)maxValue
{
  v14.receiver = self;
  v14.super_class = AVCaptureSlider;
  initSubclass = [(AVCaptureControl *)&v14 initSubclass];
  v11 = initSubclass;
  if (initSubclass)
  {
    if (value >= maxValue)
    {
      v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:{0, value, maxValue}];

      if (AVCaptureShouldThrowForAPIViolations())
      {
        objc_exception_throw(v12);
      }

      NSLog(&cfstr_SuppressingExc.isa, v12);
      return 0;
    }

    else
    {
      initSubclass->_value = value;
      initSubclass->_prominentValues = objc_alloc_init(MEMORY[0x1E695DEC8]);
      v11->_minValue = value;
      v11->_maxValue = maxValue;
      v11->_localizedTitle = [title copy];
      v11->_symbolName = [name copy];
      v11->_continuousRange = [objc_alloc(MEMORY[0x1E69938F0]) initWithMinimum:value maximum:maxValue];
      v11->_actionLock._os_unfair_lock_opaque = 0;
    }
  }

  return v11;
}

- (AVCaptureSlider)initWithLocalizedTitle:(id)title symbolName:(id)name minValue:(float)value maxValue:(float)maxValue step:(float)step
{
  v19.receiver = self;
  v19.super_class = AVCaptureSlider;
  initSubclass = [(AVCaptureControl *)&v19 initSubclass];
  v13 = initSubclass;
  if (initSubclass)
  {
    if (value >= maxValue)
    {
      v14 = MEMORY[0x1E695DF30];
      v15 = *MEMORY[0x1E695D940];
      stepCopy = value;
    }

    else
    {
      if (step > 0.0)
      {
        initSubclass->_value = value;
        initSubclass->_prominentValues = objc_alloc_init(MEMORY[0x1E695DEC8]);
        v13->_minValue = value;
        v13->_maxValue = maxValue;
        v13->_localizedTitle = [title copy];
        v13->_symbolName = [name copy];
        v13->_discreteRange = [objc_alloc(MEMORY[0x1E69938F8]) initWithMinimum:value maximum:maxValue step:step];
        v13->_actionLock._os_unfair_lock_opaque = 0;
        return v13;
      }

      v14 = MEMORY[0x1E695DF30];
      v15 = *MEMORY[0x1E695D940];
      stepCopy = step;
    }

    v16 = [v14 exceptionWithName:v15 reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:{0, *&stepCopy}];

    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v16);
    }

    NSLog(&cfstr_SuppressingExc.isa, v16);
    return 0;
  }

  return v13;
}

- (void)dealloc
{
  os_unfair_lock_lock(&self->_actionLock);

  os_unfair_lock_unlock(&self->_actionLock);
  v3.receiver = self;
  v3.super_class = AVCaptureSlider;
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

- (id)overlayUpdate
{
  overlayControl = [(AVCaptureSlider *)self overlayControl];
  [(AVCaptureSlider *)self value];

  return [overlayControl updateWithFloatValue:?];
}

- (id)overlayControl
{
  os_unfair_lock_lock(&self->_actionLock);
  if (!self->_overlayControl)
  {
    v3 = [objc_alloc(MEMORY[0x1E69938F8]) initWithValues:{-[AVCaptureSlider prominentValues](self, "prominentValues")}];
    p_discreteRange = &self->_discreteRange;
    if (self->_discreteRange || (p_discreteRange = &self->_continuousRange, self->_continuousRange))
    {
      self->_overlayControl = [objc_alloc(MEMORY[0x1E6993910]) initWithIdentifier:-[AVCaptureControl identifier](self title:"identifier") imageName:-[AVCaptureSlider localizedTitle](self rangeScale:"localizedTitle") valueRange:-[AVCaptureSlider symbolName](self primaryValues:{"symbolName"), 0, *p_discreteRange, v3}];
    }

    if (self->_localizedValueFormat)
    {
      [(CAMOverlayServiceSlider *)self->_overlayControl setValueFormat:?];
    }
  }

  os_unfair_lock_unlock(&self->_actionLock);
  return self->_overlayControl;
}

- (void)setValue:(float)value
{
  actionQueue = [(AVCaptureSlider *)self actionQueue];
  if (actionQueue)
  {
    dispatch_assert_queue_V2(actionQueue);
  }

  if (self->_value != value)
  {
    minValue = self->_minValue;
    if (minValue > value)
    {
      v7 = @"Value %.2f is less than the slider's minimum value %.2f";
LABEL_8:
      [MEMORY[0x1E696AEC0] stringWithFormat:v7, value, minValue];
      v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
      if (AVCaptureShouldThrowForAPIViolations())
      {
        objc_exception_throw(v8);
      }

      NSLog(&cfstr_SuppressingExc.isa, v8);
      return;
    }

    minValue = self->_maxValue;
    if (minValue < value)
    {
      v7 = @"Value %.2f is greater than the slider's maximum value %.2f";
      goto LABEL_8;
    }

    self->_value = value;
    overlay = [(AVCaptureControl *)self overlay];
    overlayUpdate = [(AVCaptureSlider *)self overlayUpdate];

    [(AVCaptureControlsOverlay *)overlay updateControl:overlayUpdate];
  }
}

- (void)setLocalizedValueValueFormat:(id)format
{
  localizedValueFormat = self->_localizedValueFormat;
  if (localizedValueFormat != format && ![(NSString *)localizedValueFormat isEqualToString:?])
  {

    self->_localizedValueFormat = [format copy];
    os_unfair_lock_lock(&self->_actionLock);

    self->_overlayControl = 0;
    os_unfair_lock_unlock(&self->_actionLock);
    session = [(AVCaptureControl *)self session];
    if (session)
    {
      if (![(AVCaptureSession *)session isBeingConfigured])
      {
        overlay = [(AVCaptureControl *)self overlay];

        [(AVCaptureControlsOverlay *)overlay rebuildControls];
      }
    }
  }
}

- (void)setProminentValues:(id)values
{
  if (![(NSArray *)self->_prominentValues isEqualToArray:?])
  {

    self->_prominentValues = [values copy];
    os_unfair_lock_lock(&self->_actionLock);

    self->_overlayControl = 0;
    os_unfair_lock_unlock(&self->_actionLock);
    session = [(AVCaptureControl *)self session];
    if (session)
    {
      if (![(AVCaptureSession *)session isBeingConfigured])
      {
        overlay = [(AVCaptureControl *)self overlay];

        [(AVCaptureControlsOverlay *)overlay rebuildControls];
      }
    }
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
  actionQueue = [(AVCaptureSlider *)self actionQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__AVCaptureSlider_enqueueActionWithUpdate___block_invoke;
  v6[3] = &unk_1E786EAA8;
  v6[4] = self;
  v6[5] = update;
  dispatch_async(actionQueue, v6);
}

uint64_t __43__AVCaptureSlider_enqueueActionWithUpdate___block_invoke(uint64_t a1)
{
  [*(a1 + 32) willChangeValueForKey:@"value"];
  [*(a1 + 40) floatValue];
  *(*(a1 + 32) + 40) = v2;
  [*(a1 + 32) didChangeValueForKey:@"value"];
  v3 = *(a1 + 32);
  v4.n128_u32[0] = *(v3 + 40);
  v5 = *(*(v3 + 128) + 16);

  return v5(v4);
}

@end