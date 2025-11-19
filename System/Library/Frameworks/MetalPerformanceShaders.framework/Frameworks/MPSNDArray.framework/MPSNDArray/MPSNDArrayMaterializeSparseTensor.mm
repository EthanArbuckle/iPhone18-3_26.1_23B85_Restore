@interface MPSNDArrayMaterializeSparseTensor
- (MPSNDArrayMaterializeSparseTensor)initWithCoder:(id)a3 device:(id)a4;
- (MPSNDArrayMaterializeSparseTensor)initWithDevice:(id)a3 sourceCount:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)workloadStatisticsForSourceArrays:(id)a3 destArrays:(id)a4 kernel:(id)a5 kernelDAGObject:(id)a6 sourceState:(id)a7;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSNDArrayMaterializeSparseTensor

- (MPSNDArrayMaterializeSparseTensor)initWithDevice:(id)a3 sourceCount:(unint64_t)a4
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayMaterializeSparseTensor;
  result = [(MPSNDArrayMultiaryKernel *)&v5 initWithDevice:a3 sourceCount:a4];
  if (result)
  {
    result->_sparseFormat = 2;
    result->super._encode = EncodeMaterializeSparseTensor;
    result->super.super._encodeData = result;
  }

  return result;
}

- (MPSNDArrayMaterializeSparseTensor)initWithCoder:(id)a3 device:(id)a4
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayMaterializeSparseTensor;
  result = [(MPSNDArrayMultiaryKernel *)&v5 initWithCoder:a3 device:a4];
  if (result)
  {
    result->_sparseFormat = 2;
    result->super._encode = EncodeMaterializeSparseTensor;
    result->super.super._encodeData = result;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayMaterializeSparseTensor;
  [(MPSNDArrayMultiaryBase *)&v3 encodeWithCoder:a3];
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayMaterializeSparseTensor;
  result = [(MPSNDArrayMultiaryKernel *)&v6 copyWithZone:a3 device:a4];
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

- (id)workloadStatisticsForSourceArrays:(id)a3 destArrays:(id)a4 kernel:(id)a5 kernelDAGObject:(id)a6 sourceState:(id)a7
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayMaterializeSparseTensor;
  return [(MPSNDArrayMultiaryBase *)&v8 workloadStatisticsForSourceArrays:a3 destArrays:a4 sourceState:a7, a6];
}

@end