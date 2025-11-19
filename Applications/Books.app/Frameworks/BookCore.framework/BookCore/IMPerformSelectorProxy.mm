@interface IMPerformSelectorProxy
- (BOOL)respondsToSelector:(SEL)a3;
- (IMPerformSelectorProxy)initWithTarget:(id)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (id)target;
- (id)weakTarget;
- (void)forwardInvocation:(id)a3;
- (void)performSelector:(SEL)a3 withObject:(id)a4 afterDelay:(double)a5;
- (void)performSelector:(SEL)a3 withObject:(id)a4 afterDelay:(double)a5 inModes:(id)a6;
- (void)teardown;
@end

@implementation IMPerformSelectorProxy

- (IMPerformSelectorProxy)initWithTarget:(id)a3
{
  objc_storeWeak(&self->_weakTarget, a3);
  v4 = objc_alloc_init(NSMutableDictionary);
  signatures = self->_signatures;
  self->_signatures = v4;

  return self;
}

- (void)performSelector:(SEL)a3 withObject:(id)a4 afterDelay:(double)a5
{
  v8 = a4;
  v9 = [NSArray arrayWithObject:NSDefaultRunLoopMode];
  [(IMPerformSelectorProxy *)self performSelector:a3 withObject:v8 afterDelay:v9 inModes:a5];
}

- (void)performSelector:(SEL)a3 withObject:(id)a4 afterDelay:(double)a5 inModes:(id)a6
{
  v11 = a6;
  v12 = a4;
  v16 = [NSString stringWithUTF8String:sel_getName(a3)];
  v13 = [(NSMutableDictionary *)self->_signatures objectForKey:?];

  if (!v13)
  {
    v14 = [(IMPerformSelectorProxy *)self target];
    v15 = [v14 methodSignatureForSelector:a3];

    [(NSMutableDictionary *)self->_signatures setObject:v15 forKey:v16];
  }

  ([NSObject instanceMethodForSelector:a2])(self, a2, a3, v12, v11, a5);
}

- (void)teardown
{
  objc_storeWeak(&self->_weakTarget, 0);

  [NSObject cancelPreviousPerformRequestsWithTarget:self];
}

- (BOOL)respondsToSelector:(SEL)a3
{
  if (objc_opt_respondsToSelector())
  {
    v5 = 1;
  }

  else
  {
    v6 = [(IMPerformSelectorProxy *)self target];
    if (v6)
    {
      v5 = objc_opt_respondsToSelector();
    }

    else
    {
      v7 = [NSString stringWithUTF8String:sel_getName(a3)];
      v8 = [(NSMutableDictionary *)self->_signatures objectForKey:v7];
      v5 = v8 != 0;
    }
  }

  return v5 & 1;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v4 = [NSString stringWithUTF8String:sel_getName(a3)];
  v5 = [(NSMutableDictionary *)self->_signatures objectForKey:v4];

  return v5;
}

- (void)forwardInvocation:(id)a3
{
  v3 = a3;
  v4 = [v3 methodSignature];
  v5 = [v4 methodReturnType];
  if (*v5 == 64)
  {
    v6 = v5[1];

    if (!v6)
    {
      v7 = 0;
      [v3 setReturnValue:&v7];
    }
  }

  else
  {
  }
}

- (id)target
{
  v2 = objc_loadWeakRetained(&self->_weakTarget);

  return v2;
}

- (id)weakTarget
{
  WeakRetained = objc_loadWeakRetained(&self->_weakTarget);

  return WeakRetained;
}

@end