@interface MPSGraphPruningDescriptor
+ (id)descriptorWithPruningMetric:(int64_t)a3 sparsityFormat:(int64_t)a4 sparsity:(float)a5;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation MPSGraphPruningDescriptor

+ (id)descriptorWithPruningMetric:(int64_t)a3 sparsityFormat:(int64_t)a4 sparsity:(float)a5
{
  v8 = objc_alloc_init(MPSGraphPruningDescriptor);
  [(MPSGraphPruningDescriptor *)v8 setPruningMetric:a3];
  [(MPSGraphPruningDescriptor *)v8 setPruningStructure:a4];
  *&v9 = a5;
  [(MPSGraphPruningDescriptor *)v8 setSparsity:v9];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MPSGraphPruningDescriptor);
  [(MPSGraphPruningDescriptor *)v4 setPruningMetric:self->_pruningMetric];
  [(MPSGraphPruningDescriptor *)v4 setPruningStructure:self->_pruningStructure];
  *&v5 = self->_sparsity;
  [(MPSGraphPruningDescriptor *)v4 setSparsity:v5];
  return v4;
}

@end