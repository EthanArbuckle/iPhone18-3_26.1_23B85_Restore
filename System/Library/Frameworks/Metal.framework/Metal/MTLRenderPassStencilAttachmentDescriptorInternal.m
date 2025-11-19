@interface MTLRenderPassStencilAttachmentDescriptorInternal
+ (id)attachmentDescriptor;
- (BOOL)isEqual:(id)a3;
- (MTLRenderPassStencilAttachmentDescriptorInternal)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)formattedDescription:(unint64_t)a3;
- (void)dealloc;
- (void)setResolveTexture:(id)a3;
- (void)setTexture:(id)a3;
@end

@implementation MTLRenderPassStencilAttachmentDescriptorInternal

- (MTLRenderPassStencilAttachmentDescriptorInternal)init
{
  v3.receiver = self;
  v3.super_class = MTLRenderPassStencilAttachmentDescriptorInternal;
  result = [(MTLRenderPassStencilAttachmentDescriptorInternal *)&v3 init];
  if (result)
  {
    *&result->_private.clearColor.red = _defaultClearColor;
    result->_private.storeAction = 0;
    result->_private.storeActionOptions = 0;
    result->_private.loadAction = 2;
    *&result->_private.clearColor.blue = unk_185DE3430;
    result->_private.clearDepth = 1.0;
    result->_private.clearStencil = 0;
    result->_private.stencilResolveFilter = 0;
  }

  return result;
}

- (void)dealloc
{
  p_private = &self->_private;

  v4.receiver = self;
  v4.super_class = MTLRenderPassStencilAttachmentDescriptorInternal;
  [(MTLRenderPassStencilAttachmentDescriptorInternal *)&v4 dealloc];
}

+ (id)attachmentDescriptor
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  copyAttachmentPrivate(&self->_private, (v4 + 8));
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  Class = object_getClass(self);
  return Class == object_getClass(a3) && memcmp(&self->_private, a3 + 8, 0xB0uLL) == 0;
}

- (id)formattedDescription:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MTLRenderPassStencilAttachmentDescriptorInternal;
  v6 = [(MTLRenderPassStencilAttachmentDescriptorInternal *)&v8 description];
  return [v5 stringWithFormat:@"%@%@", v6, stencilAttachmentFormattedDescription(a3, &self->_private)];
}

- (void)setTexture:(id)a3
{
  v5 = a3;

  if (a3 && MTLFailureTypeGetEnabled(1uLL))
  {
    [(MTLRenderPassStencilAttachmentDescriptorInternal *)a3 setTexture:v6, v7, v8, v9, v10, v11, v12, v13];
  }

  self->_private.texture = a3;
}

- (void)setResolveTexture:(id)a3
{
  v5 = a3;
  p_private = &self->_private;

  if (a3 && MTLFailureTypeGetEnabled(1uLL))
  {
    [(MTLRenderPassStencilAttachmentDescriptorInternal *)a3 setResolveTexture:v7, v8, v9, v10, v11, v12, v13, v14];
  }

  p_private->resolveTexture = a3;
}

- (void)setTexture:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (([a1 conformsToProtocol:&unk_1EF505468] & 1) == 0)
  {

    MTLReportFailure(1, "[MTLRenderPassStencilAttachmentDescriptorInternal setTexture:]", 1213, @"texture is not a MTLTextureImplementation.", v9, v10, v11, v12, a9);
  }
}

- (void)setResolveTexture:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (([a1 conformsToProtocol:&unk_1EF505468] & 1) == 0)
  {

    MTLReportFailure(1, "[MTLRenderPassStencilAttachmentDescriptorInternal setResolveTexture:]", 1214, @"resolveTexture is not a MTLTextureImplementation.", v9, v10, v11, v12, a9);
  }
}

@end