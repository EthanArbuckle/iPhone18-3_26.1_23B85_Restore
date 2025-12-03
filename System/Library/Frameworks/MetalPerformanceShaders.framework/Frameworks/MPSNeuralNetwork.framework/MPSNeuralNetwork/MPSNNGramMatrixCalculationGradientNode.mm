@interface MPSNNGramMatrixCalculationGradientNode
+ (MPSNNGramMatrixCalculationGradientNode)nodeWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNGradientStateNode *)gradientState;
+ (MPSNNGramMatrixCalculationGradientNode)nodeWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNGradientStateNode *)gradientState alpha:(float)alpha;
- (MPSNNGramMatrixCalculationGradientNode)initWithGradientImages:(id)images forwardFilter:(id)filter;
- (MPSNNGramMatrixCalculationGradientNode)initWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNGradientStateNode *)gradientState alpha:(float)alpha;
@end

@implementation MPSNNGramMatrixCalculationGradientNode

+ (MPSNNGramMatrixCalculationGradientNode)nodeWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNGradientStateNode *)gradientState alpha:(float)alpha
{
  v10 = [self alloc];
  *&v11 = alpha;
  v16 = objc_msgSend_initWithSourceGradient_sourceImage_gradientState_alpha_(v10, v12, sourceGradient, sourceImage, gradientState, v13, v14, v15, v11);

  return v16;
}

- (MPSNNGramMatrixCalculationGradientNode)initWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNGradientStateNode *)gradientState alpha:(float)alpha
{
  v23[1] = *MEMORY[0x277D85DE8];
  v23[0] = sourceGradient;
  v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v23, 1, gradientState, v6, v7, v8);
  v22 = sourceImage;
  v19 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v14, &v22, 1, v15, v16, v17, v18);
  v21.receiver = self;
  v21.super_class = MPSNNGramMatrixCalculationGradientNode;
  result = [(MPSNNGradientFilterNode *)&v21 initWithGradientImages:v13 sourceImages:v19 gradientState:gradientState paddingPolicy:0];
  result->_alpha = alpha;
  return result;
}

+ (MPSNNGramMatrixCalculationGradientNode)nodeWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNGradientStateNode *)gradientState
{
  v8 = [self alloc];
  v13 = objc_msgSend_initWithSourceGradient_sourceImage_gradientState_(v8, v9, sourceGradient, sourceImage, gradientState, v10, v11, v12);

  return v13;
}

- (MPSNNGramMatrixCalculationGradientNode)initWithGradientImages:(id)images forwardFilter:(id)filter
{
  v6.receiver = self;
  v6.super_class = MPSNNGramMatrixCalculationGradientNode;
  result = [(MPSNNGradientFilterNode *)&v6 initWithGradientImages:images forwardFilter:?];
  result->_alpha = *(filter + 14);
  return result;
}

@end