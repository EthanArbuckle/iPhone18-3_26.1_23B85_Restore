@interface WeakWrapper
- (WeakWrapper)initWithWeakObject:(id)a3;
- (id)weakObject;
@end

@implementation WeakWrapper

- (id)weakObject
{
  WeakRetained = objc_loadWeakRetained(&self->_weakObject);

  return WeakRetained;
}

- (WeakWrapper)initWithWeakObject:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = WeakWrapper;
  v5 = [(WeakWrapper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_weakObject, v4);
  }

  return v6;
}

@end