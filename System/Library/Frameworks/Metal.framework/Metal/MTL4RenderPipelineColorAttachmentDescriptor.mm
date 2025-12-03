@interface MTL4RenderPipelineColorAttachmentDescriptor
- (BOOL)isEqual:(id)equal;
- (MTL4RenderPipelineColorAttachmentDescriptor)init;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)reset;
@end

@implementation MTL4RenderPipelineColorAttachmentDescriptor

- (MTL4RenderPipelineColorAttachmentDescriptor)init
{
  v4.receiver = self;
  v4.super_class = MTL4RenderPipelineColorAttachmentDescriptor;
  v2 = [(MTL4RenderPipelineColorAttachmentDescriptor *)&v4 init];
  [(MTL4RenderPipelineColorAttachmentDescriptor *)v2 reset];
  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 8) = *&self->_pixelFormat;
  *(result + 3) = self->_sourceRGBBlendFactor;
  *(result + 6) = self->_sourceAlphaBlendFactor;
  *(result + 2) = *&self->_destinationRGBBlendFactor;
  *(result + 56) = *&self->_destinationAlphaBlendFactor;
  *(result + 9) = self->_writeMask;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  Class = object_getClass(self);
  return Class == object_getClass(equal) && *(equal + 1) == self->_pixelFormat && *(equal + 2) == self->_blendingState && *(equal + 3) == self->_sourceRGBBlendFactor && *(equal + 4) == self->_destinationRGBBlendFactor && *(equal + 5) == self->_rgbBlendOperation && *(equal + 6) == self->_sourceAlphaBlendFactor && *(equal + 7) == self->_destinationAlphaBlendFactor && *(equal + 8) == self->_alphaBlendOperation && *(equal + 9) == self->_writeMask;
}

- (unint64_t)hash
{
  bzero(v6, 0x48uLL);
  v3 = *&self->_sourceRGBBlendFactor;
  v6[0] = *&self->_pixelFormat;
  v6[1] = v3;
  v4 = *&self->_destinationAlphaBlendFactor;
  v6[2] = *&self->_rgbBlendOperation;
  v6[3] = v4;
  writeMask = self->_writeMask;
  return _MTLHashState(v6, 0x48uLL);
}

- (void)reset
{
  self->_pixelFormat = 0;
  self->_blendingState = 0;
  self->_sourceRGBBlendFactor = 1;
  self->_destinationRGBBlendFactor = 0;
  self->_rgbBlendOperation = 0;
  self->_sourceAlphaBlendFactor = 1;
  self->_destinationAlphaBlendFactor = 0;
  self->_alphaBlendOperation = 0;
  self->_writeMask = 15;
}

@end