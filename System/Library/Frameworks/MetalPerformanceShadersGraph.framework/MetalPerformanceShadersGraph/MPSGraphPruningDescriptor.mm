@interface MPSGraphPruningDescriptor
+ (id)descriptorWithPruningMetric:(int64_t)metric sparsityFormat:(int64_t)format sparsity:(float)sparsity;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation MPSGraphPruningDescriptor

+ (id)descriptorWithPruningMetric:(int64_t)metric sparsityFormat:(int64_t)format sparsity:(float)sparsity
{
  v8 = objc_alloc_init(MPSGraphPruningDescriptor);
  [(MPSGraphPruningDescriptor *)v8 setPruningMetric:metric];
  [(MPSGraphPruningDescriptor *)v8 setPruningStructure:format];
  *&v9 = sparsity;
  [(MPSGraphPruningDescriptor *)v8 setSparsity:v9];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MPSGraphPruningDescriptor);
  [(MPSGraphPruningDescriptor *)v4 setPruningMetric:self->_pruningMetric];
  [(MPSGraphPruningDescriptor *)v4 setPruningStructure:self->_pruningStructure];
  *&v5 = self->_sparsity;
  [(MPSGraphPruningDescriptor *)v4 setSparsity:v5];
  return v4;
}

@end