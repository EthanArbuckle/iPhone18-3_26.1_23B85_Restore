@interface MPSCNNLogSoftMaxGradientNode
+ (MPSCNNLogSoftMaxGradientNode)nodeWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNGradientStateNode *)gradientState;
- (MPSCNNLogSoftMaxGradientNode)initWithGradientImages:(id)images forwardFilter:(id)filter;
- (MPSCNNLogSoftMaxGradientNode)initWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNGradientStateNode *)gradientState;
@end

@implementation MPSCNNLogSoftMaxGradientNode

+ (MPSCNNLogSoftMaxGradientNode)nodeWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNGradientStateNode *)gradientState
{
  v8 = [self alloc];
  v13 = objc_msgSend_initWithSourceGradient_sourceImage_gradientState_(v8, v9, sourceGradient, sourceImage, gradientState, v10, v11, v12);

  return v13;
}

- (MPSCNNLogSoftMaxGradientNode)initWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNGradientStateNode *)gradientState
{
  v21[1] = *MEMORY[0x277D85DE8];
  v21[0] = sourceGradient;
  v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v21, 1, gradientState, v5, v6, v7);
  v20 = sourceImage;
  v17 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v12, &v20, 1, v13, v14, v15, v16);
  v19.receiver = self;
  v19.super_class = MPSCNNLogSoftMaxGradientNode;
  return [(MPSNNGradientFilterNode *)&v19 initWithGradientImages:v11 sourceImages:v17 gradientState:gradientState paddingPolicy:0];
}

- (MPSCNNLogSoftMaxGradientNode)initWithGradientImages:(id)images forwardFilter:(id)filter
{
  v10 = objc_msgSend_objectAtIndexedSubscript_(images, a2, 0, filter, v4, v5, v6, v7);
  v18 = objc_msgSend_resultImage(filter, v11, v12, v13, v14, v15, v16, v17);
  v27 = objc_msgSend_resultState(filter, v19, v20, v21, v22, v23, v24, v25);

  return objc_msgSend_initWithSourceGradient_sourceImage_gradientState_(self, v26, v10, v18, v27, v28, v29, v30);
}

@end