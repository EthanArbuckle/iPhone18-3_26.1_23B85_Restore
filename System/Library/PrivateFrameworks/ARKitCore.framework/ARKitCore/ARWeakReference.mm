@interface ARWeakReference
+ (ARWeakReference)weakReferenceWithObject:(id)a3;
+ (void)_noOp;
- (ARWeakReference)initWithObject:(id)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (id)object;
- (void)forwardInvocation:(id)a3;
@end

@implementation ARWeakReference

+ (ARWeakReference)weakReferenceWithObject:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithObject:v4];

  return v5;
}

- (ARWeakReference)initWithObject:(id)a3
{
  if (a3)
  {
    objc_storeWeak(&self->_object, a3);
    v4 = self;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)forwardInvocation:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_object);
  if (WeakRetained)
  {
    [v5 invokeWithTarget:WeakRetained];
  }
}

- (id)methodSignatureForSelector:(SEL)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_object);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = a3;
  }

  else
  {
    WeakRetained = objc_opt_class();
    v6 = sel__noOp;
  }

  v7 = [WeakRetained methodSignatureForSelector:v6];

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