@interface MTKTextureIOBufferMap
- (MTKTextureIOBufferMap)initWithContents:(void *)contents;
@end

@implementation MTKTextureIOBufferMap

- (MTKTextureIOBufferMap)initWithContents:(void *)contents
{
  v5.receiver = self;
  v5.super_class = MTKTextureIOBufferMap;
  result = [(MTKTextureIOBufferMap *)&v5 init];
  if (result)
  {
    result->_bytes = contents;
  }

  return result;
}

@end