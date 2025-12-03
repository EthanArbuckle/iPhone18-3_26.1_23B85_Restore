@interface MPSCNNNeuronGradientNode
+ (MPSCNNNeuronGradientNode)nodeWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNGradientStateNode *)gradientState descriptor:(MPSNNNeuronDescriptor *)descriptor;
- (MPSCNNNeuronGradientNode)initWithGradientImages:(id)images forwardFilter:(id)filter;
- (MPSCNNNeuronGradientNode)initWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNGradientStateNode *)gradientState descriptor:(MPSNNNeuronDescriptor *)descriptor;
- (void)dealloc;
@end

@implementation MPSCNNNeuronGradientNode

+ (MPSCNNNeuronGradientNode)nodeWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNGradientStateNode *)gradientState descriptor:(MPSNNNeuronDescriptor *)descriptor
{
  v10 = [self alloc];
  v14 = objc_msgSend_initWithSourceGradient_sourceImage_gradientState_descriptor_(v10, v11, sourceGradient, sourceImage, gradientState, descriptor, v12, v13);

  return v14;
}

- (MPSCNNNeuronGradientNode)initWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNGradientStateNode *)gradientState descriptor:(MPSNNNeuronDescriptor *)descriptor
{
  v24[1] = *MEMORY[0x277D85DE8];
  v24[0] = sourceGradient;
  v12 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v24, 1, gradientState, descriptor, v6, v7);
  v23 = sourceImage;
  v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, &v23, 1, v14, v15, v16, v17);
  v22.receiver = self;
  v22.super_class = MPSCNNNeuronGradientNode;
  result = [(MPSNNGradientFilterNode *)&v22 initWithGradientImages:v12 sourceImages:v18 gradientState:gradientState paddingPolicy:0];
  if (result)
  {
    v20 = result;
    v21 = descriptor;
    result = v20;
    v20->_descriptor = v21;
  }

  return result;
}

- (MPSCNNNeuronGradientNode)initWithGradientImages:(id)images forwardFilter:(id)filter
{
  v15.receiver = self;
  v15.super_class = MPSCNNNeuronGradientNode;
  result = [(MPSNNGradientFilterNode *)&v15 initWithGradientImages:images forwardFilter:?];
  if (result)
  {
    v13 = result;
    v14 = objc_msgSend_descriptor(filter, v6, v7, v8, v9, v10, v11, v12);
    result = v13;
    v13->_descriptor = v14;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSCNNNeuronGradientNode;
  [(MPSNNFilterNode *)&v3 dealloc];
}

@end