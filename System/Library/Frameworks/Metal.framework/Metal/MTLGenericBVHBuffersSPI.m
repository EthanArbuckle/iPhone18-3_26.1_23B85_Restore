@interface MTLGenericBVHBuffersSPI
- (MTLGenericBVHBuffersSPI)initWithVersion:(unint64_t)a3;
- (void)dealloc;
@end

@implementation MTLGenericBVHBuffersSPI

- (MTLGenericBVHBuffersSPI)initWithVersion:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = MTLGenericBVHBuffersSPI;
  result = [(MTLGenericBVHBuffersSPI *)&v5 init];
  if (result)
  {
    result->_version = a3;
    *&result->_headerBuffer = 0u;
    *&result->_innerNodeBuffer = 0u;
    *&result->_leafNodeBuffer = 0u;
    *&result->_primitiveBuffer = 0u;
    *&result->_geometryBuffer = 0u;
    *&result->_instanceTransformBuffer = 0u;
    *&result->_perPrimitiveDataBuffer = 0u;
    *&result->_controlPointBuffer = 0u;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLGenericBVHBuffersSPI;
  [(MTLGenericBVHBuffersSPI *)&v3 dealloc];
}

@end