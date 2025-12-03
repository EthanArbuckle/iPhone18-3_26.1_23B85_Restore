@interface MPSNNReduceFeatureChannelsSum
- (MPSNNReduceFeatureChannelsSum)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSNNReduceFeatureChannelsSum)initWithDevice:(id)device;
- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states paddingMethod:(unint64_t)method sourceOffset:(id *)offset;
- (void)weight:(float)weight;
@end

@implementation MPSNNReduceFeatureChannelsSum

- (MPSNNReduceFeatureChannelsSum)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNNReduceFeatureChannelsSum;
  result = [(MPSNNReduceUnary *)&v4 initWithDevice:device reduceOperation:13];
  if (result)
  {
    result->super.super._checkFlags |= 2u;
    result->_weight = 1.0;
  }

  return result;
}

- (void)weight:(float)weight
{
  self->_weight = weight;
  v3.receiver = self;
  v3.super_class = MPSNNReduceFeatureChannelsSum;
  [(MPSNNReduceUnary *)&v3 setWeightValue:?];
}

- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states paddingMethod:(unint64_t)method sourceOffset:(id *)offset
{
  v14.receiver = self;
  v14.super_class = MPSNNReduceFeatureChannelsSum;
  v6 = [(MPSCNNKernel *)&v14 destinationImageDescriptorForSourceImages:images sourceStates:states paddingMethod:method sourceOffset:offset];
  objc_msgSend_setFeatureChannels_(v6, v7, 1, v8, v9, v10, v11, v12);
  return v6;
}

- (MPSNNReduceFeatureChannelsSum)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v5.receiver = self;
  v5.super_class = MPSNNReduceFeatureChannelsSum;
  return [(MPSNNReduceUnary *)&v5 initWithCoder:aDecoder device:device];
}

@end