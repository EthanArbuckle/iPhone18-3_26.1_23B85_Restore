@interface MPSGraphCreateSparseOpDescriptor
+ (MPSGraphCreateSparseOpDescriptor)descriptorWithStorageType:(MPSGraphSparseStorageType)sparseStorageType dataType:(MPSDataType)dataType;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation MPSGraphCreateSparseOpDescriptor

+ (MPSGraphCreateSparseOpDescriptor)descriptorWithStorageType:(MPSGraphSparseStorageType)sparseStorageType dataType:(MPSDataType)dataType
{
  v4 = *&dataType;
  v6 = objc_alloc_init(MPSGraphCreateSparseOpDescriptor);
  [(MPSGraphCreateSparseOpDescriptor *)v6 setSparseStorageType:sparseStorageType];
  [(MPSGraphCreateSparseOpDescriptor *)v6 setDataType:v4];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MPSGraphCreateSparseOpDescriptor alloc];
  [(MPSGraphCreateSparseOpDescriptor *)v4 setSparseStorageType:self->_sparseStorageType];
  [(MPSGraphCreateSparseOpDescriptor *)v4 setDataType:self->_dataType];
  return v4;
}

@end