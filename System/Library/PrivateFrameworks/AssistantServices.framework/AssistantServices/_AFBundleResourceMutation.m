@interface _AFBundleResourceMutation
- (_AFBundleResourceMutation)initWithBase:(id)a3;
- (id)getExtension;
- (id)getName;
@end

@implementation _AFBundleResourceMutation

- (id)getExtension
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    v2 = self->_extension;
  }

  else
  {
    v2 = [(AFBundleResource *)self->_base extension];
  }

  return v2;
}

- (id)getName
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    v2 = self->_name;
  }

  else
  {
    v2 = [(AFBundleResource *)self->_base name];
  }

  return v2;
}

- (_AFBundleResourceMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFBundleResourceMutation;
  v6 = [(_AFBundleResourceMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end