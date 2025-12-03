@interface _TUIInteractiveBasePressAnimationDelegate
- (_TUIInteractiveBasePressAnimationDelegate)initWithCompletion:(id)completion;
- (void)_decrementCount;
@end

@implementation _TUIInteractiveBasePressAnimationDelegate

- (_TUIInteractiveBasePressAnimationDelegate)initWithCompletion:(id)completion
{
  completionCopy = completion;
  v9.receiver = self;
  v9.super_class = _TUIInteractiveBasePressAnimationDelegate;
  v5 = [(_TUIInteractiveBasePressAnimationDelegate *)&v9 init];
  if (v5)
  {
    v6 = [completionCopy copy];
    completion = v5->_completion;
    v5->_completion = v6;
  }

  return v5;
}

- (void)_decrementCount
{
  animationCount = self->_animationCount;
  if (animationCount)
  {
    v4 = animationCount - 1;
    self->_animationCount = v4;
    if (!v4)
    {
      completion = self->_completion;
      if (completion)
      {
        completion[2](completion, a2);
        v6 = self->_completion;
        self->_completion = 0;
      }
    }
  }
}

@end