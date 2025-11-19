@interface _GCSystemButtonResponder
- (_GCSystemButtonResponder)init;
- (id)_initWithBundleIdentifier:(id *)a1;
- (void)invalidate;
@end

@implementation _GCSystemButtonResponder

- (_GCSystemButtonResponder)init
{
  [(_GCSystemButtonResponder *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)invalidate
{
  [(_GCSystemButtonResponder *)self willChangeValueForKey:@"invalid"];
  atomic_store(1u, &self->_invalid);

  [(_GCSystemButtonResponder *)self didChangeValueForKey:@"invalid"];
}

- (id)_initWithBundleIdentifier:(id *)a1
{
  v4 = a2;
  if (a1)
  {
    v6.receiver = a1;
    v6.super_class = _GCSystemButtonResponder;
    a1 = objc_msgSendSuper2(&v6, sel_init);
    objc_storeStrong(a1 + 2, a2);
  }

  return a1;
}

@end