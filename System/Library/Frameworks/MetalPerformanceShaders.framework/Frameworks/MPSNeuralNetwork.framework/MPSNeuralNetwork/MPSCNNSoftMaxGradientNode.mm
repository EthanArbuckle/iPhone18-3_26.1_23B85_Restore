@interface MPSCNNSoftMaxGradientNode
+ (MPSCNNSoftMaxGradientNode)nodeWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNGradientStateNode *)gradientState;
- (MPSCNNSoftMaxGradientNode)initWithGradientImages:(id)a3 forwardFilter:(id)a4;
- (MPSCNNSoftMaxGradientNode)initWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNGradientStateNode *)gradientState;
@end

@implementation MPSCNNSoftMaxGradientNode

+ (MPSCNNSoftMaxGradientNode)nodeWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNGradientStateNode *)gradientState
{
  v8 = [a1 alloc];
  v13 = objc_msgSend_initWithSourceGradient_sourceImage_gradientState_(v8, v9, sourceGradient, sourceImage, gradientState, v10, v11, v12);

  return v13;
}

- (MPSCNNSoftMaxGradientNode)initWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNGradientStateNode *)gradientState
{
  v21[1] = *MEMORY[0x277D85DE8];
  v21[0] = sourceGradient;
  v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v21, 1, gradientState, v5, v6, v7);
  v20 = sourceImage;
  v17 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v12, &v20, 1, v13, v14, v15, v16);
  v19.receiver = self;
  v19.super_class = MPSCNNSoftMaxGradientNode;
  return [(MPSNNGradientFilterNode *)&v19 initWithGradientImages:v11 sourceImages:v17 gradientState:gradientState paddingPolicy:0];
}

- (MPSCNNSoftMaxGradientNode)initWithGradientImages:(id)a3 forwardFilter:(id)a4
{
  v10 = objc_msgSend_objectAtIndexedSubscript_(a3, a2, 0, a4, v4, v5, v6, v7);
  v18 = objc_msgSend_resultImage(a4, v11, v12, v13, v14, v15, v16, v17);
  v27 = objc_msgSend_resultState(a4, v19, v20, v21, v22, v23, v24, v25);

  return objc_msgSend_initWithSourceGradient_sourceImage_gradientState_(self, v26, v10, v18, v27, v28, v29, v30);
}

@end