@interface MKCALayerCompletionDelegate
+ (id)delegateWithCompletion:(id)a3;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
@end

@implementation MKCALayerCompletionDelegate

+ (id)delegateWithCompletion:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setCompletion:v3];

  return v4;
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  completion = self->_completion;
  if (completion)
  {
    completion[2](completion, a4, a3);
    completion = self->_completion;
  }

  self->_completion = 0;
}

@end