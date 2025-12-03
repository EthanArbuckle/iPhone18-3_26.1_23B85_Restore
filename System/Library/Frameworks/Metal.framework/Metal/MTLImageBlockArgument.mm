@interface MTLImageBlockArgument
- (BOOL)isEqual:(id)equal;
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

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && self->_kind == *(equal + 21) && self->_dataSize == *(equal + 44) && self->_aliasImplicitImageBlock == *(equal + 192) && self->_aliasImplicitImageBlockRenderTarget == *(equal + 49))
    {
      masterStructMembers = self->_masterStructMembers;
      if (!(masterStructMembers | *(equal + 23)) || (v6 = [(MTLStructTypeInternal *)masterStructMembers isEqual:?]))
      {
        v8.receiver = self;
        v8.super_class = MTLImageBlockArgument;
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