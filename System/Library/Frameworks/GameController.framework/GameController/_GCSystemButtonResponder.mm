@interface _GCSystemButtonResponder
- (_GCSystemButtonResponder)init;
- (id)_initWithBundleIdentifier:(id *)identifier;
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

- (id)_initWithBundleIdentifier:(id *)identifier
{
  v4 = a2;
  if (identifier)
  {
    v6.receiver = identifier;
    v6.super_class = _GCSystemButtonResponder;
    identifier = objc_msgSendSuper2(&v6, sel_init);
    objc_storeStrong(identifier + 2, a2);
  }

  return identifier;
}

@end