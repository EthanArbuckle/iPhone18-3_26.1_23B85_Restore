@interface MTLImageBlockDataArgument
- (BOOL)isEqual:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && self->_dataSize == *(a3 + 42) && self->_aliasImplicitImageBlock == *(a3 + 184) && self->_aliasImplicitImageBlockRenderTarget == *(a3 + 47))
    {
      masterStructMembers = self->_masterStructMembers;
      if (!(masterStructMembers | *(a3 + 22)) || (v6 = [(MTLStructTypeInternal *)masterStructMembers isEqual:?]))
      {
        v8.receiver = self;
        v8.super_class = MTLImageBlockDataArgument;
        LOBYTE(v6) = [(MTLBindingInternal *)&v8 isEqual:a3];
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