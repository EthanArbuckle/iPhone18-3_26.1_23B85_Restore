@interface _PFWeakReference
+ (id)weakReferenceWithObject:(uint64_t)a1;
- (_PFWeakReference)initWithObject:(id)a3;
- (void)dealloc;
@end

@implementation _PFWeakReference

- (void)dealloc
{
  if (self->_objectAddress)
  {
    objc_storeWeakOrNil(&self->_object, 0);
  }

  v3.receiver = self;
  v3.super_class = _PFWeakReference;
  [(_PFWeakReference *)&v3 dealloc];
}

- (_PFWeakReference)initWithObject:(id)a3
{
  v7.receiver = self;
  v7.super_class = _PFWeakReference;
  v4 = [(_PFWeakReference *)&v7 init];
  v5 = v4;
  if (!a3)
  {
    goto LABEL_5;
  }

  if (v4)
  {
    if (objc_storeWeakOrNil(&v4->_object, a3))
    {
      v5->_objectAddress = a3;
      return v5;
    }

LABEL_5:

    return 0;
  }

  return v5;
}

+ (id)weakReferenceWithObject:(uint64_t)a1
{
  v3 = objc_opt_self();
  if (!a2)
  {
    return 0;
  }

  v4 = [[v3 alloc] initWithObject:a2];

  return v4;
}

@end