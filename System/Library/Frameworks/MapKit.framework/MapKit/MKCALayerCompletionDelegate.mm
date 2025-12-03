@interface MKCALayerCompletionDelegate
+ (id)delegateWithCompletion:(id)completion;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
@end

@implementation MKCALayerCompletionDelegate

+ (id)delegateWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setCompletion:completionCopy];

  return v4;
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  completion = self->_completion;
  if (completion)
  {
    completion[2](completion, finished, stop);
    completion = self->_completion;
  }

  self->_completion = 0;
}

@end