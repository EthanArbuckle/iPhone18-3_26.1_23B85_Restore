@interface MPSGraphMatrixDecompositionDescriptor
+ (id)descriptorWithDecompositionType:(unint64_t)a3 dataType:(unsigned int)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation MPSGraphMatrixDecompositionDescriptor

+ (id)descriptorWithDecompositionType:(unint64_t)a3 dataType:(unsigned int)a4
{
  v4 = *&a4;
  v6 = objc_alloc_init(MPSGraphMatrixDecompositionDescriptor);
  [(MPSGraphMatrixDecompositionDescriptor *)v6 setDataType:v4];
  [(MPSGraphMatrixDecompositionDescriptor *)v6 setDecompositionType:a3];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MPSGraphMatrixDecompositionDescriptor alloc];
  [(MPSGraphMatrixDecompositionDescriptor *)v4 setDataType:self->_dataType];
  [(MPSGraphMatrixDecompositionDescriptor *)v4 setDecompositionType:self->_decompositionType];
  return v4;
}

@end