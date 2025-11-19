@interface MPSNNReduceFeatureChannelsAndWeightsSum
- (BOOL)doWeightedSumByNonZeroWeights;
- (MPSNNReduceFeatureChannelsAndWeightsSum)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSNNReduceFeatureChannelsAndWeightsSum)initWithDevice:(id)device doWeightedSumByNonZeroWeights:(BOOL)doWeightedSumByNonZeroWeights;
- (id)destinationImageDescriptorForSourceImages:(id)a3 sourceStates:(id)a4 paddingMethod:(unint64_t)a5 primaryOffset:(id *)a6 secondaryOffset:(id *)a7 kernelOffset:(id *)a8;
@end

@implementation MPSNNReduceFeatureChannelsAndWeightsSum

- (MPSNNReduceFeatureChannelsAndWeightsSum)initWithDevice:(id)device doWeightedSumByNonZeroWeights:(BOOL)doWeightedSumByNonZeroWeights
{
  if (doWeightedSumByNonZeroWeights)
  {
    v4 = 14;
  }

  else
  {
    v4 = 13;
  }

  v6.receiver = self;
  v6.super_class = MPSNNReduceFeatureChannelsAndWeightsSum;
  result = [(MPSNNReduceBinary *)&v6 initWithDevice:device reduceOperation:v4];
  if (result)
  {
    result->super.super._checkFlags |= 2u;
  }

  return result;
}

- (BOOL)doWeightedSumByNonZeroWeights
{
  v3.receiver = self;
  v3.super_class = MPSNNReduceFeatureChannelsAndWeightsSum;
  return [(MPSNNReduceBinary *)&v3 reduceOp]== 14;
}

- (id)destinationImageDescriptorForSourceImages:(id)a3 sourceStates:(id)a4 paddingMethod:(unint64_t)a5 primaryOffset:(id *)a6 secondaryOffset:(id *)a7 kernelOffset:(id *)a8
{
  v16.receiver = self;
  v16.super_class = MPSNNReduceFeatureChannelsAndWeightsSum;
  v8 = [(MPSCNNBinaryKernel *)&v16 destinationImageDescriptorForSourceImages:a3 sourceStates:a4 paddingMethod:a5 primaryOffset:a6 secondaryOffset:a7 kernelOffset:a8];
  objc_msgSend_setFeatureChannels_(v8, v9, 1, v10, v11, v12, v13, v14);
  return v8;
}

- (MPSNNReduceFeatureChannelsAndWeightsSum)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v5.receiver = self;
  v5.super_class = MPSNNReduceFeatureChannelsAndWeightsSum;
  return [(MPSNNReduceBinary *)&v5 initWithCoder:aDecoder device:device];
}

@end