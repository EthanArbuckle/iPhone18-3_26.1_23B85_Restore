@interface MTKTextureIOBufferMap
- (MTKTextureIOBufferMap)initWithContents:(void *)a3;
@end

@implementation MTKTextureIOBufferMap

- (MTKTextureIOBufferMap)initWithContents:(void *)a3
{
  v5.receiver = self;
  v5.super_class = MTKTextureIOBufferMap;
  result = [(MTKTextureIOBufferMap *)&v5 init];
  if (result)
  {
    result->_bytes = a3;
  }

  return result;
}

@end