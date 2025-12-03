@interface NTKSiderealUncachedMTLTexture
- (NTKSiderealUncachedMTLTexture)initWithTextureGenerationBlock:(id)block;
- (id)loadTextureWithCommandBuffer:(id)buffer usingBlitEncoder:(id)encoder;
@end

@implementation NTKSiderealUncachedMTLTexture

- (NTKSiderealUncachedMTLTexture)initWithTextureGenerationBlock:(id)block
{
  blockCopy = block;
  v10.receiver = self;
  v10.super_class = NTKSiderealUncachedMTLTexture;
  v5 = [(NTKSiderealUncachedMTLTexture *)&v10 init];
  if (v5)
  {
    v6 = objc_retainBlock(blockCopy);
    loaderBlock = v5->_loaderBlock;
    v5->_loaderBlock = v6;

    mtlTexture = v5->_mtlTexture;
    v5->_mtlTexture = 0;
  }

  return v5;
}

- (id)loadTextureWithCommandBuffer:(id)buffer usingBlitEncoder:(id)encoder
{
  bufferCopy = buffer;
  encoderCopy = encoder;
  blitCommandEncoder = encoderCopy;
  if (!self->_mtlTexture)
  {
    if (!encoderCopy)
    {
      blitCommandEncoder = [bufferCopy blitCommandEncoder];
    }

    v9 = (*(self->_loaderBlock + 2))();
    mtlTexture = self->_mtlTexture;
    self->_mtlTexture = v9;

    loaderBlock = self->_loaderBlock;
    self->_loaderBlock = 0;
  }

  v12 = blitCommandEncoder;

  return blitCommandEncoder;
}

@end