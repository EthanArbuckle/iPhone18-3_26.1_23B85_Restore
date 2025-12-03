@interface AVWeakWrapper
- (AVWeakWrapper)initWithObject:(id)object;
- (id)object;
@end

@implementation AVWeakWrapper

- (id)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

- (AVWeakWrapper)initWithObject:(id)object
{
  objectCopy = object;
  v8.receiver = self;
  v8.super_class = AVWeakWrapper;
  v5 = [(AVWeakWrapper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_object, objectCopy);
  }

  return v6;
}

@end