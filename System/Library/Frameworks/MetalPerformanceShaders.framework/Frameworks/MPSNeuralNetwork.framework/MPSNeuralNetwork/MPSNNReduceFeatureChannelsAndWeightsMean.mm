@interface MPSNNReduceFeatureChannelsAndWeightsMean
- (MPSNNReduceFeatureChannelsAndWeightsMean)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSNNReduceFeatureChannelsAndWeightsMean)initWithDevice:(id)device;
- (id)destinationImageDescriptorForSourceImages:(id)a3 sourceStates:(id)a4 paddingMethod:(unint64_t)a5 primaryOffset:(id *)a6 secondaryOffset:(id *)a7 kernelOffset:(id *)a8;
@end

@implementation MPSNNReduceFeatureChannelsAndWeightsMean

- (MPSNNReduceFeatureChannelsAndWeightsMean)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNNReduceFeatureChannelsAndWeightsMean;
  result = [(MPSNNReduceBinary *)&v4 initWithDevice:device reduceOperation:10];
  if (result)
  {
    result->super.super._checkFlags |= 2u;
  }

  return result;
}

- (id)destinationImageDescriptorForSourceImages:(id)a3 sourceStates:(id)a4 paddingMethod:(unint64_t)a5 primaryOffset:(id *)a6 secondaryOffset:(id *)a7 kernelOffset:(id *)a8
{
  v16.receiver = self;
  v16.super_class = MPSNNReduceFeatureChannelsAndWeightsMean;
  v8 = [(MPSCNNBinaryKernel *)&v16 destinationImageDescriptorForSourceImages:a3 sourceStates:a4 paddingMethod:a5 primaryOffset:a6 secondaryOffset:a7 kernelOffset:a8];
  objc_msgSend_setFeatureChannels_(v8, v9, 1, v10, v11, v12, v13, v14);
  return v8;
}

- (MPSNNReduceFeatureChannelsAndWeightsMean)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v5.receiver = self;
  v5.super_class = MPSNNReduceFeatureChannelsAndWeightsMean;
  return [(MPSNNReduceBinary *)&v5 initWithCoder:aDecoder device:device];
}

@end