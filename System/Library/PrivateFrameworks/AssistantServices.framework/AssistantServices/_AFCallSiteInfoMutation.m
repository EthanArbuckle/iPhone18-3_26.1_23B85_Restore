@interface _AFCallSiteInfoMutation
- (_AFCallSiteInfoMutation)initWithBase:(id)a3;
- (id)getImagePath;
- (id)getSymbolName;
@end

@implementation _AFCallSiteInfoMutation

- (id)getImagePath
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    v2 = self->_imagePath;
  }

  else
  {
    v2 = [(AFCallSiteInfo *)self->_base imagePath];
  }

  return v2;
}

- (id)getSymbolName
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    v2 = self->_symbolName;
  }

  else
  {
    v2 = [(AFCallSiteInfo *)self->_base symbolName];
  }

  return v2;
}

- (_AFCallSiteInfoMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFCallSiteInfoMutation;
  v6 = [(_AFCallSiteInfoMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end