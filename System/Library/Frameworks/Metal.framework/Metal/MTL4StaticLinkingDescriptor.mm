@interface MTL4StaticLinkingDescriptor
- (BOOL)isEqual:(id)equal;
- (MTL4StaticLinkingDescriptor)init;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation MTL4StaticLinkingDescriptor

- (MTL4StaticLinkingDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MTL4StaticLinkingDescriptor;
  return [(MTL4StaticLinkingDescriptor *)&v3 init];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTL4StaticLinkingDescriptor;
  [(MTL4StaticLinkingDescriptor *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setFunctionDescriptors:self->_functionDescriptors];
  [v4 setPrivateFunctionDescriptors:self->_privateFunctionDescriptors];
  [v4 setGroups:self->_groups];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    goto LABEL_10;
  }

  Class = object_getClass(self);
  if (Class != object_getClass(equal))
  {
    LOBYTE(v6) = 0;
    return v6;
  }

  v6 = MTLCompareArray(self->_functionDescriptors, *(equal + 1), 1, 0);
  if (v6)
  {
    v6 = MTLCompareArray(self->_privateFunctionDescriptors, *(equal + 2), 1, 0);
    if (v6)
    {
      groups = self->_groups;
      if (groups != *(equal + 3))
      {

        LOBYTE(v6) = [(NSDictionary *)groups isEqual:?];
        return v6;
      }

LABEL_10:
      LOBYTE(v6) = 1;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  bzero(v4, 0x18uLL);
  v4[0] = [(NSArray *)self->_functionDescriptors hash];
  v4[1] = [(NSArray *)self->_privateFunctionDescriptors hash];
  v4[2] = [(NSDictionary *)self->_groups hash];
  return _MTLHashState(v4, 0x18uLL);
}

@end