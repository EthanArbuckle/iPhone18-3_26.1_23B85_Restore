@interface MPSNNReductionSpatialMeanGradientNode
+ (MPSNNReductionSpatialMeanGradientNode)nodeWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNGradientStateNode *)gradientState;
- (MPSNNReductionSpatialMeanGradientNode)initWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNGradientStateNode *)gradientState;
@end

@implementation MPSNNReductionSpatialMeanGradientNode

+ (MPSNNReductionSpatialMeanGradientNode)nodeWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNGradientStateNode *)gradientState
{
  v8 = [a1 alloc];
  v13 = objc_msgSend_initWithSourceGradient_sourceImage_gradientState_(v8, v9, sourceGradient, sourceImage, gradientState, v10, v11, v12);

  return v13;
}

- (MPSNNReductionSpatialMeanGradientNode)initWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNGradientStateNode *)gradientState
{
  v21[1] = *MEMORY[0x277D85DE8];
  v21[0] = sourceGradient;
  v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v21, 1, gradientState, v5, v6, v7);
  v20 = sourceImage;
  v17 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v12, &v20, 1, v13, v14, v15, v16);
  v19.receiver = self;
  v19.super_class = MPSNNReductionSpatialMeanGradientNode;
  return [(MPSNNGradientFilterNode *)&v19 initWithGradientImages:v11 sourceImages:v17 gradientState:gradientState paddingPolicy:0];
}

@end