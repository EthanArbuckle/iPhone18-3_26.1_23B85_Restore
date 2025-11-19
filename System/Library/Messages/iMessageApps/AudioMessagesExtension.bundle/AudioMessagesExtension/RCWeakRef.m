@interface RCWeakRef
+ (id)weakRefWithObject:(id)a3;
- (id)object;
- (void)dealloc;
@end

@implementation RCWeakRef

- (void)dealloc
{
  objc_storeWeak(&self->_weakStorage, 0);
  v3.receiver = self;
  v3.super_class = RCWeakRef;
  [(RCWeakRef *)&v3 dealloc];
}

+ (id)weakRefWithObject:(id)a3
{
  v4 = objc_alloc_init(a1);
  if ([a3 allowsWeakReference])
  {
    *(v4 + 24) = 1;
    objc_storeWeak(v4 + 1, a3);
  }

  *(v4 + 2) = a3;

  return v4;
}

- (id)object
{
  if (self->_useWeakStorage)
  {
    return objc_loadWeak(&self->_weakStorage);
  }

  else
  {
    return self->_weakPointer;
  }
}

@end