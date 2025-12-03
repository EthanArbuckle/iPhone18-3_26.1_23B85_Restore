@interface ARWeakReference
+ (ARWeakReference)weakReferenceWithObject:(id)object;
+ (void)_noOp;
- (ARWeakReference)initWithObject:(id)object;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)object;
- (void)forwardInvocation:(id)invocation;
@end

@implementation ARWeakReference

+ (ARWeakReference)weakReferenceWithObject:(id)object
{
  objectCopy = object;
  v5 = [[self alloc] initWithObject:objectCopy];

  return v5;
}

- (ARWeakReference)initWithObject:(id)object
{
  if (object)
  {
    objc_storeWeak(&self->_object, object);
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  WeakRetained = objc_loadWeakRetained(&self->_object);
  if (WeakRetained)
  {
    [invocationCopy invokeWithTarget:WeakRetained];
  }
}

- (id)methodSignatureForSelector:(SEL)selector
{
  WeakRetained = objc_loadWeakRetained(&self->_object);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    selectorCopy = selector;
  }

  else
  {
    WeakRetained = objc_opt_class();
    selectorCopy = sel__noOp;
  }

  v7 = [WeakRetained methodSignatureForSelector:selectorCopy];

  return v7;
}

+ (void)_noOp
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"This method is used as a dummy method signature and should never be called under any circumstances." userInfo:0];
  objc_exception_throw(v2);
}

- (id)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

@end