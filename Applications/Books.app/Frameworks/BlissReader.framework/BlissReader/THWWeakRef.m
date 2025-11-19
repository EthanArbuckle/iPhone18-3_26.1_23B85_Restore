@interface THWWeakRef
+ (id)weakRefWithObject:(id)a3;
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

+ (id)weakRefWithObject:(id)a3
{
  v4 = objc_alloc_init(a1);
  objc_storeWeak(v4 + 1, a3);
  v4[2] = a3;

  return v4;
}

@end