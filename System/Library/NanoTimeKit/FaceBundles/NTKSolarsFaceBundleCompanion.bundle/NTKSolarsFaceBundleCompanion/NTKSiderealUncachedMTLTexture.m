@interface NTKSiderealUncachedMTLTexture
- (NTKSiderealUncachedMTLTexture)initWithTextureGenerationBlock:(id)a3;
- (id)loadTextureWithCommandBuffer:(id)a3 usingBlitEncoder:(id)a4;
@end

@implementation NTKSiderealUncachedMTLTexture

- (NTKSiderealUncachedMTLTexture)initWithTextureGenerationBlock:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = NTKSiderealUncachedMTLTexture;
  v5 = [(NTKSiderealUncachedMTLTexture *)&v10 init];
  if (v5)
  {
    v6 = objc_retainBlock(v4);
    loaderBlock = v5->_loaderBlock;
    v5->_loaderBlock = v6;

    mtlTexture = v5->_mtlTexture;
    v5->_mtlTexture = 0;
  }

  return v5;
}

- (id)loadTextureWithCommandBuffer:(id)a3 usingBlitEncoder:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!self->_mtlTexture)
  {
    if (!v7)
    {
      v8 = [v6 blitCommandEncoder];
    }

    v9 = (*(self->_loaderBlock + 2))();
    mtlTexture = self->_mtlTexture;
    self->_mtlTexture = v9;

    loaderBlock = self->_loaderBlock;
    self->_loaderBlock = 0;
  }

  v12 = v8;

  return v8;
}

@end