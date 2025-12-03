@interface MPSNDArrayMaterializeSparseTensor
- (MPSNDArrayMaterializeSparseTensor)initWithCoder:(id)coder device:(id)device;
- (MPSNDArrayMaterializeSparseTensor)initWithDevice:(id)device sourceCount:(unint64_t)count;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)workloadStatisticsForSourceArrays:(id)arrays destArrays:(id)destArrays kernel:(id)kernel kernelDAGObject:(id)object sourceState:(id)state;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSNDArrayMaterializeSparseTensor

- (MPSNDArrayMaterializeSparseTensor)initWithDevice:(id)device sourceCount:(unint64_t)count
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayMaterializeSparseTensor;
  result = [(MPSNDArrayMultiaryKernel *)&v5 initWithDevice:device sourceCount:count];
  if (result)
  {
    result->_sparseFormat = 2;
    result->super._encode = EncodeMaterializeSparseTensor;
    result->super.super._encodeData = result;
  }

  return result;
}

- (MPSNDArrayMaterializeSparseTensor)initWithCoder:(id)coder device:(id)device
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayMaterializeSparseTensor;
  result = [(MPSNDArrayMultiaryKernel *)&v5 initWithCoder:coder device:device];
  if (result)
  {
    result->_sparseFormat = 2;
    result->super._encode = EncodeMaterializeSparseTensor;
    result->super.super._encodeData = result;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayMaterializeSparseTensor;
  [(MPSNDArrayMultiaryBase *)&v3 encodeWithCoder:coder];
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayMaterializeSparseTensor;
  result = [(MPSNDArrayMultiaryKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 36) = self->_sparseFormat;
    self->super._encode = EncodeMaterializeSparseTensor;
    self->super.super._encodeData = self;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MPSNDArrayMaterializeSparseTensor;
  [(MPSNDArrayMultiaryBase *)&v2 dealloc];
}

- (id)workloadStatisticsForSourceArrays:(id)arrays destArrays:(id)destArrays kernel:(id)kernel kernelDAGObject:(id)object sourceState:(id)state
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayMaterializeSparseTensor;
  return [(MPSNDArrayMultiaryBase *)&v8 workloadStatisticsForSourceArrays:arrays destArrays:destArrays sourceState:state, object];
}

@end