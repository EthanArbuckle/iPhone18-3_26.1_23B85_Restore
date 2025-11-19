@interface MTLGenericBVHBufferSizesSPI
- (MTLGenericBVHBufferSizesSPI)initWithVersion:(unint64_t)a3;
@end

@implementation MTLGenericBVHBufferSizesSPI

- (MTLGenericBVHBufferSizesSPI)initWithVersion:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = MTLGenericBVHBufferSizesSPI;
  result = [(MTLGenericBVHBufferSizesSPI *)&v5 init];
  if (result)
  {
    result->_version = a3;
    *&result->_headerBufferSize = 0u;
    *&result->_leafNodeBufferSize = 0u;
    *&result->_geometryBufferSize = 0u;
    *&result->_perPrimitiveDataBufferSize = 0u;
  }

  return result;
}

@end