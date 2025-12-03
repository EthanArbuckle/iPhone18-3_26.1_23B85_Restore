@interface _MXExtensionRequestReceipt
- (_MXExtensionRequestReceipt)initWithCompletion:(id)completion;
- (void)cancel;
- (void)cancelWithTimeInterval:(double)interval;
- (void)dealloc;
@end

@implementation _MXExtensionRequestReceipt

- (void)cancelWithTimeInterval:(double)interval
{
  timer = self->_timer;
  if (timer)
  {
    [(NSTimer *)timer invalidate];
  }

  v6 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel_cancel selector:0 userInfo:0 repeats:interval];
  v7 = self->_timer;
  self->_timer = v6;
}

- (void)cancel
{
  completion = self->_completion;
  if (completion)
  {
    v5 = MEMORY[0x1A58E9F30](completion, a2);
    v4 = self->_completion;
    self->_completion = 0;

    if (v5)
    {
      v5[2](v5);
    }
  }
}

- (void)dealloc
{
  timer = self->_timer;
  if (timer)
  {
    [(NSTimer *)timer invalidate];
  }

  v4.receiver = self;
  v4.super_class = _MXExtensionRequestReceipt;
  [(_MXExtensionRequestReceipt *)&v4 dealloc];
}

- (_MXExtensionRequestReceipt)initWithCompletion:(id)completion
{
  completionCopy = completion;
  v9.receiver = self;
  v9.super_class = _MXExtensionRequestReceipt;
  v5 = [(_MXExtensionRequestReceipt *)&v9 init];
  if (v5)
  {
    v6 = [completionCopy copy];
    completion = v5->_completion;
    v5->_completion = v6;
  }

  return v5;
}

@end