@interface MTL4ArgumentTableDescriptor
- (BOOL)isEqual:(id)equal;
- (MTL4ArgumentTableDescriptor)init;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation MTL4ArgumentTableDescriptor

- (MTL4ArgumentTableDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MTL4ArgumentTableDescriptor;
  return [(MTL4ArgumentTableDescriptor *)&v3 init];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTL4ArgumentTableDescriptor;
  [(MTL4ArgumentTableDescriptor *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  [v4 setLabel:{-[MTL4ArgumentTableDescriptor label](self, "label")}];
  [v4 setMaxBufferBindCount:{-[MTL4ArgumentTableDescriptor maxBufferBindCount](self, "maxBufferBindCount")}];
  [v4 setMaxTextureBindCount:{-[MTL4ArgumentTableDescriptor maxTextureBindCount](self, "maxTextureBindCount")}];
  [v4 setMaxSamplerStateBindCount:{-[MTL4ArgumentTableDescriptor maxSamplerStateBindCount](self, "maxSamplerStateBindCount")}];
  [v4 setInitializeBindings:{-[MTL4ArgumentTableDescriptor initializeBindings](self, "initializeBindings")}];
  [v4 setSupportAttributeStrides:{-[MTL4ArgumentTableDescriptor supportAttributeStrides](self, "supportAttributeStrides")}];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  Class = object_getClass(self);
  if (Class != object_getClass(equal) || *(equal + 1) != self->_maxBufferBindCount || *(equal + 2) != self->_maxTextureBindCount || *(equal + 3) != self->_maxSamplerStateBindCount || *(equal + 32) != self->_initializeBindings || *(equal + 33) != self->_supportAttributeStrides)
  {
    return 0;
  }

  label = self->_label;
  if (label == *(equal + 5))
  {
    return 1;
  }

  return [(NSString *)label isEqual:?];
}

- (unint64_t)hash
{
  bzero(&v4, 0x28uLL);
  v4 = [(NSString *)self->_label hash];
  v5 = *&self->_maxBufferBindCount;
  maxSamplerStateBindCount = self->_maxSamplerStateBindCount;
  v7 = *&self->_initializeBindings;
  return _MTLHashState(&v4, 0x28uLL);
}

@end