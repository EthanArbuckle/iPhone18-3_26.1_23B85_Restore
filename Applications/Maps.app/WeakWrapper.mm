@interface WeakWrapper
- (WeakWrapper)initWithWeakObject:(id)object;
- (id)weakObject;
@end

@implementation WeakWrapper

- (id)weakObject
{
  WeakRetained = objc_loadWeakRetained(&self->_weakObject);

  return WeakRetained;
}

- (WeakWrapper)initWithWeakObject:(id)object
{
  objectCopy = object;
  v8.receiver = self;
  v8.super_class = WeakWrapper;
  v5 = [(WeakWrapper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_weakObject, objectCopy);
  }

  return v6;
}

@end