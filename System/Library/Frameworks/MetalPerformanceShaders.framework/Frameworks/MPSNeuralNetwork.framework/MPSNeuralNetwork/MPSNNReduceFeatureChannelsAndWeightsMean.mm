@interface MPSNNReduceFeatureChannelsAndWeightsMean
- (MPSNNReduceFeatureChannelsAndWeightsMean)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSNNReduceFeatureChannelsAndWeightsMean)initWithDevice:(id)device;
- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states paddingMethod:(unint64_t)method primaryOffset:(id *)offset secondaryOffset:(id *)secondaryOffset kernelOffset:(id *)kernelOffset;
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

- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states paddingMethod:(unint64_t)method primaryOffset:(id *)offset secondaryOffset:(id *)secondaryOffset kernelOffset:(id *)kernelOffset
{
  v16.receiver = self;
  v16.super_class = MPSNNReduceFeatureChannelsAndWeightsMean;
  v8 = [(MPSCNNBinaryKernel *)&v16 destinationImageDescriptorForSourceImages:images sourceStates:states paddingMethod:method primaryOffset:offset secondaryOffset:secondaryOffset kernelOffset:kernelOffset];
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