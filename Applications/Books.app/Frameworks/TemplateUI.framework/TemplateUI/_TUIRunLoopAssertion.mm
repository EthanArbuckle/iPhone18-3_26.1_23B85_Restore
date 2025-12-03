@interface _TUIRunLoopAssertion
- (_TUIRunLoopAssertion)initWithCompletion:(id)completion;
- (void)dealloc;
- (void)invalidate;
- (void)onInvalidate:(id)invalidate;
@end

@implementation _TUIRunLoopAssertion

- (_TUIRunLoopAssertion)initWithCompletion:(id)completion
{
  completionCopy = completion;
  v10.receiver = self;
  v10.super_class = _TUIRunLoopAssertion;
  v5 = [(_TUIRunLoopAssertion *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = [completionCopy copy];
    completion = v6->_completion;
    v6->_completion = v7;
  }

  return v6;
}

- (void)dealloc
{
  [(_TUIRunLoopAssertion *)self invalidate];
  v3.receiver = self;
  v3.super_class = _TUIRunLoopAssertion;
  [(_TUIRunLoopAssertion *)&v3 dealloc];
}

- (void)onInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  os_unfair_lock_lock(&self->_lock);
  if (self->_completion)
  {
    v4 = [invalidateCopy copy];
    onInvalidate = self->_onInvalidate;
    self->_onInvalidate = v4;

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    if (invalidateCopy)
    {
      invalidateCopy[2]();
    }
  }
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  v6 = objc_retainBlock(self->_completion);
  v3 = objc_retainBlock(self->_onInvalidate);
  completion = self->_completion;
  self->_completion = 0;

  onInvalidate = self->_onInvalidate;
  self->_onInvalidate = 0;

  os_unfair_lock_unlock(&self->_lock);
  if (v6)
  {
    v6[2](v6);
  }

  if (v3)
  {
    v3[2](v3);
  }
}

@end