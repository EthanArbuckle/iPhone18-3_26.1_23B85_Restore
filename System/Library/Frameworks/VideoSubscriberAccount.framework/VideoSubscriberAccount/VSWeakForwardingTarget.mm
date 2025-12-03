@interface VSWeakForwardingTarget
- (BOOL)respondsToSelector:(SEL)selector;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)object;
@end

@implementation VSWeakForwardingTarget

- (BOOL)respondsToSelector:(SEL)selector
{
  v7.receiver = self;
  v7.super_class = VSWeakForwardingTarget;
  if ([(VSWeakForwardingTarget *)&v7 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    object = [(VSWeakForwardingTarget *)self object];
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v8.receiver = self;
  v8.super_class = VSWeakForwardingTarget;
  v5 = [(VSWeakForwardingTarget *)&v8 methodSignatureForSelector:?];
  if (!v5)
  {
    object = [(VSWeakForwardingTarget *)self object];
    v5 = [object methodSignatureForSelector:selector];
  }

  return v5;
}

- (id)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

@end