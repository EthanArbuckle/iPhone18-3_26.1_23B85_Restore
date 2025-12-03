@interface _AFBundleResourceMutation
- (_AFBundleResourceMutation)initWithBase:(id)base;
- (id)getExtension;
- (id)getName;
@end

@implementation _AFBundleResourceMutation

- (id)getExtension
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    extension = self->_extension;
  }

  else
  {
    extension = [(AFBundleResource *)self->_base extension];
  }

  return extension;
}

- (id)getName
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    name = self->_name;
  }

  else
  {
    name = [(AFBundleResource *)self->_base name];
  }

  return name;
}

- (_AFBundleResourceMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFBundleResourceMutation;
  v6 = [(_AFBundleResourceMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end