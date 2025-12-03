@interface MPSNNReduceColumnSum
- (MPSNNReduceColumnSum)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSNNReduceColumnSum)initWithDevice:(id)device;
- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states paddingMethod:(unint64_t)method sourceOffset:(id *)offset;
@end

@implementation MPSNNReduceColumnSum

- (MPSNNReduceColumnSum)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNNReduceColumnSum;
  return [(MPSNNReduceUnary *)&v4 initWithDevice:device reduceOperation:12];
}

- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states paddingMethod:(unint64_t)method sourceOffset:(id *)offset
{
  v14.receiver = self;
  v14.super_class = MPSNNReduceColumnSum;
  v6 = [(MPSCNNKernel *)&v14 destinationImageDescriptorForSourceImages:images sourceStates:states paddingMethod:method sourceOffset:offset];
  objc_msgSend_setHeight_(v6, v7, 1, v8, v9, v10, v11, v12);
  return v6;
}

- (MPSNNReduceColumnSum)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v5.receiver = self;
  v5.super_class = MPSNNReduceColumnSum;
  return [(MPSNNReduceUnary *)&v5 initWithCoder:aDecoder device:device];
}

@end