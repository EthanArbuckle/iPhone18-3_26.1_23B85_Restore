@interface MPSVectorDescriptor
+ (MPSVectorDescriptor)vectorDescriptorWithLength:(NSUInteger)length vectors:(NSUInteger)vectors vectorBytes:(NSUInteger)vectorBytes dataType:(MPSDataType)dataType;
+ (size_t)vectorBytesForLength:(NSUInteger)length dataType:(MPSDataType)dataType;
- (MPSVectorDescriptor)init;
@end

@implementation MPSVectorDescriptor

+ (size_t)vectorBytesForLength:(NSUInteger)length dataType:(MPSDataType)dataType
{
  result = length;
  if (length)
  {
    if (length == 1)
    {
      return dataType >> 3;
    }

    else
    {
      v5 = 4;
      if (dataType == MPSDataTypeFloat16)
      {
        v5 = 8;
      }

      v6 = (v5 - 1) & length;
      v7 = v5 + length - v6;
      if (!v6)
      {
        v7 = length;
      }

      return v7 * (dataType >> 3);
    }
  }

  return result;
}

- (MPSVectorDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MPSVectorDescriptor;
  result = [(MPSVectorDescriptor *)&v3 init];
  if (result)
  {
    *&result->_length = vdupq_n_s64(1uLL);
    result->_dataType = 268435488;
    result->_vectorBytes = 4;
  }

  return result;
}

+ (MPSVectorDescriptor)vectorDescriptorWithLength:(NSUInteger)length vectors:(NSUInteger)vectors vectorBytes:(NSUInteger)vectorBytes dataType:(MPSDataType)dataType
{
  result = objc_alloc_init(objc_opt_class());
  if (result)
  {
    result->_length = length;
    result->_vectors = vectors;
    result->_dataType = dataType;
    result->_vectorBytes = vectorBytes;
  }

  return result;
}

@end