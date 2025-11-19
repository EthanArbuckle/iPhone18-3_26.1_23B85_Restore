@interface C3DAnimationBinding
- (void)dealloc;
@end

@implementation C3DAnimationBinding

- (void)dealloc
{
  valueTransformer = self->_valueTransformer;
  if (valueTransformer)
  {
    _Block_release(valueTransformer);
  }

  v4.receiver = self;
  v4.super_class = C3DAnimationBinding;
  [(C3DAnimationBinding *)&v4 dealloc];
}

@end