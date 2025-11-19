@interface MPSNNReduceFeatureChannelsSum
- (MPSNNReduceFeatureChannelsSum)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSNNReduceFeatureChannelsSum)initWithDevice:(id)device;
- (id)destinationImageDescriptorForSourceImages:(id)a3 sourceStates:(id)a4 paddingMethod:(unint64_t)a5 sourceOffset:(id *)a6;
- (void)weight:(float)a3;
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

- (void)weight:(float)a3
{
  self->_weight = a3;
  v3.receiver = self;
  v3.super_class = MPSNNReduceFeatureChannelsSum;
  [(MPSNNReduceUnary *)&v3 setWeightValue:?];
}

- (id)destinationImageDescriptorForSourceImages:(id)a3 sourceStates:(id)a4 paddingMethod:(unint64_t)a5 sourceOffset:(id *)a6
{
  v14.receiver = self;
  v14.super_class = MPSNNReduceFeatureChannelsSum;
  v6 = [(MPSCNNKernel *)&v14 destinationImageDescriptorForSourceImages:a3 sourceStates:a4 paddingMethod:a5 sourceOffset:a6];
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