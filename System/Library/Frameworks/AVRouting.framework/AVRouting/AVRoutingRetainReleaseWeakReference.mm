@interface AVRoutingRetainReleaseWeakReference
- (AVRoutingRetainReleaseWeakReference)initWithReferencedObject:(id)object;
- (id)description;
- (void)dealloc;
@end

@implementation AVRoutingRetainReleaseWeakReference

- (void)dealloc
{
  objc_storeWeak(&self->_weakStorage, 0);
  v3.receiver = self;
  v3.super_class = AVRoutingRetainReleaseWeakReference;
  [(AVRoutingRetainReleaseWeakReference *)&v3 dealloc];
}

- (AVRoutingRetainReleaseWeakReference)initWithReferencedObject:(id)object
{
  v8.receiver = self;
  v8.super_class = AVRoutingRetainReleaseWeakReference;
  v4 = [(AVRoutingRetainReleaseWeakReference *)&v8 init];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = objc_opt_class();
    v4->_cachedReferencedObjectDescription = [v5 initWithFormat:@"<%@: %p>", NSStringFromClass(v6), object];
    objc_storeWeak(&v4->_weakStorage, object);
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p, referencedObject = %@>", NSStringFromClass(v4), self, self->_cachedReferencedObjectDescription];
}

@end