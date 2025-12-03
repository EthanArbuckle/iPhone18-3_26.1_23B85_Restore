@interface _AFCallSiteInfoMutation
- (_AFCallSiteInfoMutation)initWithBase:(id)base;
- (id)getImagePath;
- (id)getSymbolName;
@end

@implementation _AFCallSiteInfoMutation

- (id)getImagePath
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    imagePath = self->_imagePath;
  }

  else
  {
    imagePath = [(AFCallSiteInfo *)self->_base imagePath];
  }

  return imagePath;
}

- (id)getSymbolName
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    symbolName = self->_symbolName;
  }

  else
  {
    symbolName = [(AFCallSiteInfo *)self->_base symbolName];
  }

  return symbolName;
}

- (_AFCallSiteInfoMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFCallSiteInfoMutation;
  v6 = [(_AFCallSiteInfoMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end