@interface MTKTextureLoaderData
- (MTKTextureLoaderData)init;
- (void)dealloc;
@end

@implementation MTKTextureLoaderData

- (MTKTextureLoaderData)init
{
  v4.receiver = self;
  v4.super_class = MTKTextureLoaderData;
  result = [(MTKTextureLoaderData *)&v4 init];
  if (result)
  {
    v3 = vdupq_n_s64(1uLL);
    *&result->_numMipmapLevels = v3;
    *&result->_height = v3;
    *&result->_numArrayElements = v3;
    result->_textureType = 2;
    result->_imageOrigin = @"MTKTextureLoaderOriginTopLeft";
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MTKTextureLoaderData;
  [(MTKTextureLoaderData *)&v2 dealloc];
}

@end