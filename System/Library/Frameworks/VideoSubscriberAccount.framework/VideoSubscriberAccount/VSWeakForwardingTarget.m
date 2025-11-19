@interface VSWeakForwardingTarget
- (BOOL)respondsToSelector:(SEL)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (id)object;
@end

@implementation VSWeakForwardingTarget

- (BOOL)respondsToSelector:(SEL)a3
{
  v7.receiver = self;
  v7.super_class = VSWeakForwardingTarget;
  if ([(VSWeakForwardingTarget *)&v7 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(VSWeakForwardingTarget *)self object];
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v8.receiver = self;
  v8.super_class = VSWeakForwardingTarget;
  v5 = [(VSWeakForwardingTarget *)&v8 methodSignatureForSelector:?];
  if (!v5)
  {
    v6 = [(VSWeakForwardingTarget *)self object];
    v5 = [v6 methodSignatureForSelector:a3];
  }

  return v5;
}

- (id)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

@end