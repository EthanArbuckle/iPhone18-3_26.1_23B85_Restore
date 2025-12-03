@interface MPSNNReduceRowMax
- (MPSNNReduceRowMax)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSNNReduceRowMax)initWithDevice:(id)device;
- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states paddingMethod:(unint64_t)method sourceOffset:(id *)offset;
@end

@implementation MPSNNReduceRowMax

- (MPSNNReduceRowMax)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNNReduceRowMax;
  return [(MPSNNReduceUnary *)&v4 initWithDevice:device reduceOperation:4];
}

- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states paddingMethod:(unint64_t)method sourceOffset:(id *)offset
{
  v14.receiver = self;
  v14.super_class = MPSNNReduceRowMax;
  v6 = [(MPSCNNKernel *)&v14 destinationImageDescriptorForSourceImages:images sourceStates:states paddingMethod:method sourceOffset:offset];
  objc_msgSend_setWidth_(v6, v7, 1, v8, v9, v10, v11, v12);
  return v6;
}

- (MPSNNReduceRowMax)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v5.receiver = self;
  v5.super_class = MPSNNReduceRowMax;
  return [(MPSNNReduceUnary *)&v5 initWithCoder:aDecoder device:device];
}

@end