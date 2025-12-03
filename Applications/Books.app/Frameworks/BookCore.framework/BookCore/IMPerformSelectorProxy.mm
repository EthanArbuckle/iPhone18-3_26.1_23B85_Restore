@interface IMPerformSelectorProxy
- (BOOL)respondsToSelector:(SEL)selector;
- (IMPerformSelectorProxy)initWithTarget:(id)target;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)target;
- (id)weakTarget;
- (void)forwardInvocation:(id)invocation;
- (void)performSelector:(SEL)selector withObject:(id)object afterDelay:(double)delay;
- (void)performSelector:(SEL)selector withObject:(id)object afterDelay:(double)delay inModes:(id)modes;
- (void)teardown;
@end

@implementation IMPerformSelectorProxy

- (IMPerformSelectorProxy)initWithTarget:(id)target
{
  objc_storeWeak(&self->_weakTarget, target);
  v4 = objc_alloc_init(NSMutableDictionary);
  signatures = self->_signatures;
  self->_signatures = v4;

  return self;
}

- (void)performSelector:(SEL)selector withObject:(id)object afterDelay:(double)delay
{
  objectCopy = object;
  v9 = [NSArray arrayWithObject:NSDefaultRunLoopMode];
  [(IMPerformSelectorProxy *)self performSelector:selector withObject:objectCopy afterDelay:v9 inModes:delay];
}

- (void)performSelector:(SEL)selector withObject:(id)object afterDelay:(double)delay inModes:(id)modes
{
  modesCopy = modes;
  objectCopy = object;
  v16 = [NSString stringWithUTF8String:sel_getName(selector)];
  v13 = [(NSMutableDictionary *)self->_signatures objectForKey:?];

  if (!v13)
  {
    target = [(IMPerformSelectorProxy *)self target];
    v15 = [target methodSignatureForSelector:selector];

    [(NSMutableDictionary *)self->_signatures setObject:v15 forKey:v16];
  }

  ([NSObject instanceMethodForSelector:a2])(self, a2, selector, objectCopy, modesCopy, delay);
}

- (void)teardown
{
  objc_storeWeak(&self->_weakTarget, 0);

  [NSObject cancelPreviousPerformRequestsWithTarget:self];
}

- (BOOL)respondsToSelector:(SEL)selector
{
  if (objc_opt_respondsToSelector())
  {
    v5 = 1;
  }

  else
  {
    target = [(IMPerformSelectorProxy *)self target];
    if (target)
    {
      v5 = objc_opt_respondsToSelector();
    }

    else
    {
      v7 = [NSString stringWithUTF8String:sel_getName(selector)];
      v8 = [(NSMutableDictionary *)self->_signatures objectForKey:v7];
      v5 = v8 != 0;
    }
  }

  return v5 & 1;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v4 = [NSString stringWithUTF8String:sel_getName(selector)];
  v5 = [(NSMutableDictionary *)self->_signatures objectForKey:v4];

  return v5;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  methodSignature = [invocationCopy methodSignature];
  methodReturnType = [methodSignature methodReturnType];
  if (*methodReturnType == 64)
  {
    v6 = methodReturnType[1];

    if (!v6)
    {
      v7 = 0;
      [invocationCopy setReturnValue:&v7];
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