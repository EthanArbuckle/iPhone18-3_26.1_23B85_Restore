@interface THWWeakRef
+ (id)weakRefWithObject:(id)object;
- (void)dealloc;
@end

@implementation THWWeakRef

- (void)dealloc
{
  objc_storeWeak(&self->_object, 0);
  v3.receiver = self;
  v3.super_class = THWWeakRef;
  [(THWWeakRef *)&v3 dealloc];
}

+ (id)weakRefWithObject:(id)object
{
  v4 = objc_alloc_init(self);
  objc_storeWeak(v4 + 1, object);
  v4[2] = object;

  return v4;
}

@end