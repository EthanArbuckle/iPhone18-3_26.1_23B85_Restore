@interface MPSNNReduceFeatureChannelsArgumentMax
- (MPSNNReduceFeatureChannelsArgumentMax)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSNNReduceFeatureChannelsArgumentMax)initWithDevice:(id)device;
- (id)destinationImageDescriptorForSourceImages:(id)a3 sourceStates:(id)a4 paddingMethod:(unint64_t)a5 sourceOffset:(id *)a6;
@end

@implementation MPSNNReduceFeatureChannelsArgumentMax

- (MPSNNReduceFeatureChannelsArgumentMax)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNNReduceFeatureChannelsArgumentMax;
  result = [(MPSNNReduceUnary *)&v4 initWithDevice:device reduceOperation:7];
  if (result)
  {
    result->super.super._checkFlags |= 2u;
  }

  return result;
}

- (id)destinationImageDescriptorForSourceImages:(id)a3 sourceStates:(id)a4 paddingMethod:(unint64_t)a5 sourceOffset:(id *)a6
{
  v14.receiver = self;
  v14.super_class = MPSNNReduceFeatureChannelsArgumentMax;
  v6 = [(MPSCNNKernel *)&v14 destinationImageDescriptorForSourceImages:a3 sourceStates:a4 paddingMethod:a5 sourceOffset:a6];
  objc_msgSend_setFeatureChannels_(v6, v7, 1, v8, v9, v10, v11, v12);
  return v6;
}

- (MPSNNReduceFeatureChannelsArgumentMax)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v5.receiver = self;
  v5.super_class = MPSNNReduceFeatureChannelsArgumentMax;
  return [(MPSNNReduceUnary *)&v5 initWithCoder:aDecoder device:device];
}

@end