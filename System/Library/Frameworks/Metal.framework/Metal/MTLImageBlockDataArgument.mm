@interface MTLImageBlockDataArgument
- (BOOL)isEqual:(id)equal;
- (void)dealloc;
@end

@implementation MTLImageBlockDataArgument

- (void)dealloc
{
  self->_masterStructMembers = 0;
  v3.receiver = self;
  v3.super_class = MTLImageBlockDataArgument;
  [(MTLBindingInternal *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && self->_dataSize == *(equal + 42) && self->_aliasImplicitImageBlock == *(equal + 184) && self->_aliasImplicitImageBlockRenderTarget == *(equal + 47))
    {
      masterStructMembers = self->_masterStructMembers;
      if (!(masterStructMembers | *(equal + 22)) || (v6 = [(MTLStructTypeInternal *)masterStructMembers isEqual:?]))
      {
        v8.receiver = self;
        v8.super_class = MTLImageBlockDataArgument;
        LOBYTE(v6) = [(MTLBindingInternal *)&v8 isEqual:equal];
      }
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

@end