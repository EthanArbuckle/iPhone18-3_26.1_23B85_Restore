@interface MPSNNReduceFeatureChannelsArgumentMin
- (MPSNNReduceFeatureChannelsArgumentMin)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSNNReduceFeatureChannelsArgumentMin)initWithDevice:(id)device;
- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states paddingMethod:(unint64_t)method sourceOffset:(id *)offset;
@end

@implementation MPSNNReduceFeatureChannelsArgumentMin

- (MPSNNReduceFeatureChannelsArgumentMin)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNNReduceFeatureChannelsArgumentMin;
  result = [(MPSNNReduceUnary *)&v4 initWithDevice:device reduceOperation:3];
  if (result)
  {
    result->super.super._checkFlags |= 2u;
  }

  return result;
}

- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states paddingMethod:(unint64_t)method sourceOffset:(id *)offset
{
  v14.receiver = self;
  v14.super_class = MPSNNReduceFeatureChannelsArgumentMin;
  v6 = [(MPSCNNKernel *)&v14 destinationImageDescriptorForSourceImages:images sourceStates:states paddingMethod:method sourceOffset:offset];
  objc_msgSend_setFeatureChannels_(v6, v7, 1, v8, v9, v10, v11, v12);
  return v6;
}

- (MPSNNReduceFeatureChannelsArgumentMin)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v5.receiver = self;
  v5.super_class = MPSNNReduceFeatureChannelsArgumentMin;
  return [(MPSNNReduceUnary *)&v5 initWithCoder:aDecoder device:device];
}

@end