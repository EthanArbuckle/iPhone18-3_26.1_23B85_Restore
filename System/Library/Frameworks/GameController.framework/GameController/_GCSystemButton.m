@interface _GCSystemButton
- (NSString)description;
- (_GCSystemButton)init;
- (id)_initWithLocalizedName:(void *)a3 sfSymbolName:;
- (void)invalidate;
@end

@implementation _GCSystemButton

- (_GCSystemButton)init
{
  [(_GCSystemButton *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)invalidate
{
  [(_GCSystemButton *)self willChangeValueForKey:@"invalid"];
  atomic_store(1u, &self->_invalid);

  [(_GCSystemButton *)self didChangeValueForKey:@"invalid"];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(GCFLocalizedString *)self->_localizedName key];
  v5 = [v3 stringWithFormat:@"%@ (%@)", v4, self->_sfSymbolName];

  return v5;
}

- (id)_initWithLocalizedName:(void *)a3 sfSymbolName:
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = _GCSystemButton;
    a1 = objc_msgSendSuper2(&v9, sel_init);
    objc_storeStrong(a1 + 2, a2);
    objc_storeStrong(a1 + 3, a3);
  }

  return a1;
}

@end