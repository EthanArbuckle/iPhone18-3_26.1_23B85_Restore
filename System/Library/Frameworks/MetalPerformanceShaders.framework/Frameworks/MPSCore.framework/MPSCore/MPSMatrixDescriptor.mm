@interface MPSMatrixDescriptor
+ (MPSMatrixDescriptor)matrixDescriptorWithDimensions:(NSUInteger)rows columns:(NSUInteger)columns rowBytes:(NSUInteger)rowBytes dataType:(MPSDataType)dataType;
+ (MPSMatrixDescriptor)matrixDescriptorWithRows:(NSUInteger)rows columns:(NSUInteger)columns matrices:(NSUInteger)matrices rowBytes:(NSUInteger)rowBytes matrixBytes:(NSUInteger)matrixBytes dataType:(MPSDataType)dataType;
+ (MPSMatrixDescriptor)matrixDescriptorWithRows:(NSUInteger)rows columns:(NSUInteger)columns rowBytes:(NSUInteger)rowBytes dataType:(MPSDataType)dataType;
+ (size_t)rowBytesForColumns:(NSUInteger)columns dataType:(MPSDataType)dataType;
- (MPSMatrixDescriptor)init;
@end

@implementation MPSMatrixDescriptor

+ (size_t)rowBytesForColumns:(NSUInteger)columns dataType:(MPSDataType)dataType
{
  result = columns;
  if (columns)
  {
    if (columns == 1)
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

      v6 = (v5 - 1) & columns;
      v7 = v5 + columns - v6;
      if (!v6)
      {
        v7 = columns;
      }

      return v7 * (dataType >> 3);
    }
  }

  return result;
}

- (MPSMatrixDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MPSMatrixDescriptor;
  result = [(MPSMatrixDescriptor *)&v3 init];
  if (result)
  {
    *&result->_rows = vdupq_n_s64(1uLL);
    result->_dataType = 268435488;
    result->_rowBytes = 4;
  }

  return result;
}

+ (MPSMatrixDescriptor)matrixDescriptorWithDimensions:(NSUInteger)rows columns:(NSUInteger)columns rowBytes:(NSUInteger)rowBytes dataType:(MPSDataType)dataType
{
  result = objc_alloc_init(objc_opt_class());
  if (result)
  {
    result->_rows = rows;
    result->_columns = columns;
    result->_dataType = dataType;
    result->_matrices = 1;
    result->_rowBytes = rowBytes;
    result->_matrixBytes = rowBytes * rows;
  }

  return result;
}

+ (MPSMatrixDescriptor)matrixDescriptorWithRows:(NSUInteger)rows columns:(NSUInteger)columns rowBytes:(NSUInteger)rowBytes dataType:(MPSDataType)dataType
{
  result = objc_alloc_init(objc_opt_class());
  if (result)
  {
    result->_rows = rows;
    result->_columns = columns;
    result->_dataType = dataType;
    result->_matrices = 1;
    result->_rowBytes = rowBytes;
    result->_matrixBytes = rowBytes * rows;
  }

  return result;
}

+ (MPSMatrixDescriptor)matrixDescriptorWithRows:(NSUInteger)rows columns:(NSUInteger)columns matrices:(NSUInteger)matrices rowBytes:(NSUInteger)rowBytes matrixBytes:(NSUInteger)matrixBytes dataType:(MPSDataType)dataType
{
  result = objc_alloc_init(objc_opt_class());
  if (result)
  {
    result->_rows = rows;
    result->_columns = columns;
    result->_dataType = dataType;
    result->_matrices = matrices;
    result->_rowBytes = rowBytes;
    result->_matrixBytes = matrixBytes;
  }

  return result;
}

@end