@interface ASCLazy
- (ASCLazy)initWithFactory:(id)a3;
- (id)description;
- (id)object;
@end

@implementation ASCLazy

- (ASCLazy)initWithFactory:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ASCLazy;
  v5 = [(ASCLazy *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    factory = v5->_factory;
    v5->_factory = v6;

    v5->_loadingGuard._os_unfair_lock_opaque = 0;
  }

  return v5;
}

- (id)object
{
  v3 = [(ASCLazy *)self objectIfLoaded];

  if (!v3)
  {
    os_unfair_lock_lock(&self->_loadingGuard);
    v4 = [(ASCLazy *)self objectIfLoaded];

    if (!v4)
    {
      v5 = [(ASCLazy *)self factory];
      v6 = v5[2]();
      [(ASCLazy *)self setObjectIfLoaded:v6];
    }

    os_unfair_lock_unlock(&self->_loadingGuard);
  }

  return [(ASCLazy *)self objectIfLoaded];
}

- (id)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  v4 = [(ASCLazy *)self objectIfLoaded];
  [(ASCDescriber *)v3 addObject:v4 withName:@"object"];

  v5 = [(ASCDescriber *)v3 finalizeDescription];

  return v5;
}

@end