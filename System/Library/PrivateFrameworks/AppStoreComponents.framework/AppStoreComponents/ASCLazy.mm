@interface ASCLazy
- (ASCLazy)initWithFactory:(id)factory;
- (id)description;
- (id)object;
@end

@implementation ASCLazy

- (ASCLazy)initWithFactory:(id)factory
{
  factoryCopy = factory;
  v9.receiver = self;
  v9.super_class = ASCLazy;
  v5 = [(ASCLazy *)&v9 init];
  if (v5)
  {
    v6 = [factoryCopy copy];
    factory = v5->_factory;
    v5->_factory = v6;

    v5->_loadingGuard._os_unfair_lock_opaque = 0;
  }

  return v5;
}

- (id)object
{
  objectIfLoaded = [(ASCLazy *)self objectIfLoaded];

  if (!objectIfLoaded)
  {
    os_unfair_lock_lock(&self->_loadingGuard);
    objectIfLoaded2 = [(ASCLazy *)self objectIfLoaded];

    if (!objectIfLoaded2)
    {
      factory = [(ASCLazy *)self factory];
      v6 = factory[2]();
      [(ASCLazy *)self setObjectIfLoaded:v6];
    }

    os_unfair_lock_unlock(&self->_loadingGuard);
  }

  return [(ASCLazy *)self objectIfLoaded];
}

- (id)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  objectIfLoaded = [(ASCLazy *)self objectIfLoaded];
  [(ASCDescriber *)v3 addObject:objectIfLoaded withName:@"object"];

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

@end