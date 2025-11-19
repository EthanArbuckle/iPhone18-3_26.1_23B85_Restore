@interface MTLImageBlockArgument
- (BOOL)isEqual:(id)a3;
- (void)dealloc;
@end

@implementation MTLImageBlockArgument

- (void)dealloc
{
  self->_masterStructMembers = 0;
  v3.receiver = self;
  v3.super_class = MTLImageBlockArgument;
  [(MTLBindingInternal *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && self->_kind == *(a3 + 21) && self->_dataSize == *(a3 + 44) && self->_aliasImplicitImageBlock == *(a3 + 192) && self->_aliasImplicitImageBlockRenderTarget == *(a3 + 49))
    {
      masterStructMembers = self->_masterStructMembers;
      if (!(masterStructMembers | *(a3 + 23)) || (v6 = [(MTLStructTypeInternal *)masterStructMembers isEqual:?]))
      {
        v8.receiver = self;
        v8.super_class = MTLImageBlockArgument;
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