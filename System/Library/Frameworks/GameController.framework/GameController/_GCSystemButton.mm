@interface _GCSystemButton
- (NSString)description;
- (_GCSystemButton)init;
- (id)_initWithLocalizedName:(void *)name sfSymbolName:;
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

- (id)_initWithLocalizedName:(void *)name sfSymbolName:
{
  v6 = a2;
  nameCopy = name;
  if (self)
  {
    v9.receiver = self;
    v9.super_class = _GCSystemButton;
    self = objc_msgSendSuper2(&v9, sel_init);
    objc_storeStrong(self + 2, a2);
    objc_storeStrong(self + 3, name);
  }

  return self;
}

@end