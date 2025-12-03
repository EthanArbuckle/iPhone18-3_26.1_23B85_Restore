@interface MPSGraphMatrixDecompositionDescriptor
+ (id)descriptorWithDecompositionType:(unint64_t)type dataType:(unsigned int)dataType;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation MPSGraphMatrixDecompositionDescriptor

+ (id)descriptorWithDecompositionType:(unint64_t)type dataType:(unsigned int)dataType
{
  v4 = *&dataType;
  v6 = objc_alloc_init(MPSGraphMatrixDecompositionDescriptor);
  [(MPSGraphMatrixDecompositionDescriptor *)v6 setDataType:v4];
  [(MPSGraphMatrixDecompositionDescriptor *)v6 setDecompositionType:type];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MPSGraphMatrixDecompositionDescriptor alloc];
  [(MPSGraphMatrixDecompositionDescriptor *)v4 setDataType:self->_dataType];
  [(MPSGraphMatrixDecompositionDescriptor *)v4 setDecompositionType:self->_decompositionType];
  return v4;
}

@end