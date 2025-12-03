@interface MPSNNPermuteGradientNode
+ (id)nodeWithSourceGradient:(id)gradient sourceImage:(id)image gradientState:(id)state;
- (MPSNNPermuteGradientNode)initWithSourceGradient:(id)gradient sourceImage:(id)image gradientState:(id)state;
@end

@implementation MPSNNPermuteGradientNode

+ (id)nodeWithSourceGradient:(id)gradient sourceImage:(id)image gradientState:(id)state
{
  v8 = [self alloc];
  v13 = objc_msgSend_initWithSourceGradient_sourceImage_gradientState_(v8, v9, gradient, image, state, v10, v11, v12);

  return v13;
}

- (MPSNNPermuteGradientNode)initWithSourceGradient:(id)gradient sourceImage:(id)image gradientState:(id)state
{
  v21[1] = *MEMORY[0x277D85DE8];
  v21[0] = gradient;
  v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v21, 1, state, v5, v6, v7);
  imageCopy = image;
  v17 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v12, &imageCopy, 1, v13, v14, v15, v16);
  v19.receiver = self;
  v19.super_class = MPSNNPermuteGradientNode;
  return [(MPSNNGradientFilterNode *)&v19 initWithGradientImages:v11 sourceImages:v17 gradientState:state paddingPolicy:0];
}

@end