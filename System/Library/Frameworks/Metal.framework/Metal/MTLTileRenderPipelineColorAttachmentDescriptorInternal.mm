@interface MTLTileRenderPipelineColorAttachmentDescriptorInternal
- (BOOL)isEqual:(id)equal;
- (MTLTileRenderPipelineColorAttachmentDescriptorInternal)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)formattedDescription:(unint64_t)description;
- (uint64_t)_descriptorPrivate;
- (uint64_t)reset;
- (void)dealloc;
- (void)setPixelFormat:(unint64_t)format;
@end

@implementation MTLTileRenderPipelineColorAttachmentDescriptorInternal

- (MTLTileRenderPipelineColorAttachmentDescriptorInternal)init
{
  v3.receiver = self;
  v3.super_class = MTLTileRenderPipelineColorAttachmentDescriptorInternal;
  result = [(MTLTileRenderPipelineColorAttachmentDescriptorInternal *)&v3 init];
  if (result)
  {
    result->_private.var0.var0.pixelFormat = 0;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MTLTileRenderPipelineColorAttachmentDescriptorInternal;
  [(MTLTileRenderPipelineColorAttachmentDescriptorInternal *)&v2 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  Class = object_getClass(self);
  return Class == object_getClass(equal) && self->_private.var0.var0.pixelFormat == *(equal + 2);
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (result)
  {
    *(result + 2) = self->_private.var0.var0.pixelFormat;
  }

  return result;
}

- (id)formattedDescription:(unint64_t)description
{
  v5 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MTLTileRenderPipelineColorAttachmentDescriptorInternal;
  v6 = [(MTLTileRenderPipelineColorAttachmentDescriptorInternal *)&v8 description];
  return [v5 stringWithFormat:@"%@%@", v6, tileColorAttachmentFormattedDescription(description + 4, &self->super)];
}

- (void)setPixelFormat:(unint64_t)format
{
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  MTLPixelFormatGetInfoForDevice(0, format, v13);
  if (format && (BYTE8(v13[0]) & 1) == 0)
  {
    [(MTLTileRenderPipelineColorAttachmentDescriptorInternal *)v5 setPixelFormat:v6, v7, v8, v9, v10, v11, v12];
  }

  self->_private.var0.var0.pixelFormat = format;
}

- (uint64_t)reset
{
  if (result)
  {
    *(result + 8) = 0;
  }

  return result;
}

- (uint64_t)_descriptorPrivate
{
  if (result)
  {
    result += 8;
  }

  return result;
}

@end