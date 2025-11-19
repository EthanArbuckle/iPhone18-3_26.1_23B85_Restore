@interface MTL4ArgumentTableDescriptor
- (BOOL)isEqual:(id)a3;
- (MTL4ArgumentTableDescriptor)init;
- (id)copyWithZone:(_NSZone *)a3;
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

- (id)copyWithZone:(_NSZone *)a3
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

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  Class = object_getClass(self);
  if (Class != object_getClass(a3) || *(a3 + 1) != self->_maxBufferBindCount || *(a3 + 2) != self->_maxTextureBindCount || *(a3 + 3) != self->_maxSamplerStateBindCount || *(a3 + 32) != self->_initializeBindings || *(a3 + 33) != self->_supportAttributeStrides)
  {
    return 0;
  }

  label = self->_label;
  if (label == *(a3 + 5))
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