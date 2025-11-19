@interface AVCaptureSlider
- (AVCaptureSlider)initWithLocalizedTitle:(id)a3 symbolName:(id)a4 minValue:(float)a5 maxValue:(float)a6;
- (AVCaptureSlider)initWithLocalizedTitle:(id)a3 symbolName:(id)a4 minValue:(float)a5 maxValue:(float)a6 step:(float)a7;
- (AVCaptureSlider)initWithLocalizedTitle:(id)a3 symbolName:(id)a4 values:(id)a5;
- (OS_dispatch_queue)actionQueue;
- (id)description;
- (id)overlayControl;
- (id)overlayUpdate;
- (void)dealloc;
- (void)enqueueActionWithUpdate:(id)a3;
- (void)setActionQueue:(id)a3 action:(id)a4;
- (void)setLocalizedValueValueFormat:(id)a3;
- (void)setProminentValues:(id)a3;
- (void)setValue:(float)a3;
@end

@implementation AVCaptureSlider

- (AVCaptureSlider)initWithLocalizedTitle:(id)a3 symbolName:(id)a4 values:(id)a5
{
  v14.receiver = self;
  v14.super_class = AVCaptureSlider;
  v8 = [(AVCaptureControl *)&v14 initSubclass];
  if (v8)
  {
    v9 = [a5 sortedArrayUsingSelector:sel_compare_];
    [objc_msgSend(v9 "firstObject")];
    v8->_minValue = v10;
    [objc_msgSend(v9 "lastObject")];
    v8->_maxValue = v11;
    v8->_value = v8->_minValue;
    v8->_prominentValues = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v8->_localizedTitle = [a3 copy];
    v8->_symbolName = [a4 copy];
    v12 = [a5 copy];
    v8->_discreteRange = [objc_alloc(MEMORY[0x1E69938F8]) initWithValues:v12];

    v8->_actionLock._os_unfair_lock_opaque = 0;
  }

  return v8;
}

- (AVCaptureSlider)initWithLocalizedTitle:(id)a3 symbolName:(id)a4 minValue:(float)a5 maxValue:(float)a6
{
  v14.receiver = self;
  v14.super_class = AVCaptureSlider;
  v10 = [(AVCaptureControl *)&v14 initSubclass];
  v11 = v10;
  if (v10)
  {
    if (a5 >= a6)
    {
      v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:{0, a5, a6}];

      if (AVCaptureShouldThrowForAPIViolations())
      {
        objc_exception_throw(v12);
      }

      NSLog(&cfstr_SuppressingExc.isa, v12);
      return 0;
    }

    else
    {
      v10->_value = a5;
      v10->_prominentValues = objc_alloc_init(MEMORY[0x1E695DEC8]);
      v11->_minValue = a5;
      v11->_maxValue = a6;
      v11->_localizedTitle = [a3 copy];
      v11->_symbolName = [a4 copy];
      v11->_continuousRange = [objc_alloc(MEMORY[0x1E69938F0]) initWithMinimum:a5 maximum:a6];
      v11->_actionLock._os_unfair_lock_opaque = 0;
    }
  }

  return v11;
}

- (AVCaptureSlider)initWithLocalizedTitle:(id)a3 symbolName:(id)a4 minValue:(float)a5 maxValue:(float)a6 step:(float)a7
{
  v19.receiver = self;
  v19.super_class = AVCaptureSlider;
  v12 = [(AVCaptureControl *)&v19 initSubclass];
  v13 = v12;
  if (v12)
  {
    if (a5 >= a6)
    {
      v14 = MEMORY[0x1E695DF30];
      v15 = *MEMORY[0x1E695D940];
      v18 = a5;
    }

    else
    {
      if (a7 > 0.0)
      {
        v12->_value = a5;
        v12->_prominentValues = objc_alloc_init(MEMORY[0x1E695DEC8]);
        v13->_minValue = a5;
        v13->_maxValue = a6;
        v13->_localizedTitle = [a3 copy];
        v13->_symbolName = [a4 copy];
        v13->_discreteRange = [objc_alloc(MEMORY[0x1E69938F8]) initWithMinimum:a5 maximum:a6 step:a7];
        v13->_actionLock._os_unfair_lock_opaque = 0;
        return v13;
      }

      v14 = MEMORY[0x1E695DF30];
      v15 = *MEMORY[0x1E695D940];
      v18 = a7;
    }

    v16 = [v14 exceptionWithName:v15 reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:{0, *&v18}];

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

- (id)overlayUpdate
{
  v3 = [(AVCaptureSlider *)self overlayControl];
  [(AVCaptureSlider *)self value];

  return [v3 updateWithFloatValue:?];
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

- (void)setValue:(float)a3
{
  v5 = [(AVCaptureSlider *)self actionQueue];
  if (v5)
  {
    dispatch_assert_queue_V2(v5);
  }

  if (self->_value != a3)
  {
    minValue = self->_minValue;
    if (minValue > a3)
    {
      v7 = @"Value %.2f is less than the slider's minimum value %.2f";
LABEL_8:
      [MEMORY[0x1E696AEC0] stringWithFormat:v7, a3, minValue];
      v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
      if (AVCaptureShouldThrowForAPIViolations())
      {
        objc_exception_throw(v8);
      }

      NSLog(&cfstr_SuppressingExc.isa, v8);
      return;
    }

    minValue = self->_maxValue;
    if (minValue < a3)
    {
      v7 = @"Value %.2f is greater than the slider's maximum value %.2f";
      goto LABEL_8;
    }

    self->_value = a3;
    v9 = [(AVCaptureControl *)self overlay];
    v10 = [(AVCaptureSlider *)self overlayUpdate];

    [(AVCaptureControlsOverlay *)v9 updateControl:v10];
  }
}

- (void)setLocalizedValueValueFormat:(id)a3
{
  localizedValueFormat = self->_localizedValueFormat;
  if (localizedValueFormat != a3 && ![(NSString *)localizedValueFormat isEqualToString:?])
  {

    self->_localizedValueFormat = [a3 copy];
    os_unfair_lock_lock(&self->_actionLock);

    self->_overlayControl = 0;
    os_unfair_lock_unlock(&self->_actionLock);
    v6 = [(AVCaptureControl *)self session];
    if (v6)
    {
      if (![(AVCaptureSession *)v6 isBeingConfigured])
      {
        v7 = [(AVCaptureControl *)self overlay];

        [(AVCaptureControlsOverlay *)v7 rebuildControls];
      }
    }
  }
}

- (void)setProminentValues:(id)a3
{
  if (![(NSArray *)self->_prominentValues isEqualToArray:?])
  {

    self->_prominentValues = [a3 copy];
    os_unfair_lock_lock(&self->_actionLock);

    self->_overlayControl = 0;
    os_unfair_lock_unlock(&self->_actionLock);
    v5 = [(AVCaptureControl *)self session];
    if (v5)
    {
      if (![(AVCaptureSession *)v5 isBeingConfigured])
      {
        v6 = [(AVCaptureControl *)self overlay];

        [(AVCaptureControlsOverlay *)v6 rebuildControls];
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

- (void)setActionQueue:(id)a3 action:(id)a4
{
  os_unfair_lock_lock(&self->_actionLock);

  self->_actionQueue = a3;
  self->_action = [a4 copy];

  os_unfair_lock_unlock(&self->_actionLock);
}

- (void)enqueueActionWithUpdate:(id)a3
{
  v5 = [(AVCaptureSlider *)self actionQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__AVCaptureSlider_enqueueActionWithUpdate___block_invoke;
  v6[3] = &unk_1E786EAA8;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(v5, v6);
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