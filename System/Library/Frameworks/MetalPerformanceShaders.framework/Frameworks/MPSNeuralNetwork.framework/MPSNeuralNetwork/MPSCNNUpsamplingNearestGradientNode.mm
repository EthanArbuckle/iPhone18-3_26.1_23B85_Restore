@interface MPSCNNUpsamplingNearestGradientNode
+ (MPSCNNUpsamplingNearestGradientNode)nodeWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNGradientStateNode *)gradientState scaleFactorX:(double)scaleFactorX scaleFactorY:(double)scaleFactorY;
- (MPSCNNUpsamplingNearestGradientNode)initWithGradientImages:(id)images forwardFilter:(id)filter;
- (MPSCNNUpsamplingNearestGradientNode)initWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNGradientStateNode *)gradientState scaleFactorX:(double)scaleFactorX scaleFactorY:(double)scaleFactorY;
@end

@implementation MPSCNNUpsamplingNearestGradientNode

+ (MPSCNNUpsamplingNearestGradientNode)nodeWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNGradientStateNode *)gradientState scaleFactorX:(double)scaleFactorX scaleFactorY:(double)scaleFactorY
{
  v12 = [self alloc];
  v17 = objc_msgSend_initWithSourceGradient_sourceImage_gradientState_scaleFactorX_scaleFactorY_(v12, v13, sourceGradient, sourceImage, gradientState, v14, v15, v16, scaleFactorX, scaleFactorY);

  return v17;
}

- (MPSCNNUpsamplingNearestGradientNode)initWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNGradientStateNode *)gradientState scaleFactorX:(double)scaleFactorX scaleFactorY:(double)scaleFactorY
{
  v25[1] = *MEMORY[0x277D85DE8];
  v25[0] = sourceGradient;
  v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v25, 1, gradientState, v7, v8, v9);
  v24 = sourceImage;
  v21 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v16, &v24, 1, v17, v18, v19, v20);
  v23.receiver = self;
  v23.super_class = MPSCNNUpsamplingNearestGradientNode;
  result = [(MPSNNGradientFilterNode *)&v23 initWithGradientImages:v15 sourceImages:v21 gradientState:gradientState paddingPolicy:0];
  if (result)
  {
    result->_scaleFactorX = scaleFactorX;
    result->_scaleFactorY = scaleFactorY;
  }

  return result;
}

- (MPSCNNUpsamplingNearestGradientNode)initWithGradientImages:(id)images forwardFilter:(id)filter
{
  objc_opt_class();
  objc_opt_isKindOfClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10.receiver = self;
    v10.super_class = MPSCNNUpsamplingNearestGradientNode;
    result = [(MPSNNGradientFilterNode *)&v10 initWithGradientImages:images forwardFilter:filter];
    result->_scaleFactorX = *(filter + 7);
    result->_scaleFactorY = *(filter + 8);
  }

  else
  {
    if (MTLReportFailureTypeEnabled())
    {
      v8 = objc_opt_class();
      NSStringFromClass(v8);
      v9 = objc_opt_class();
      NSStringFromClass(v9);
      MTLReportFailure();
    }

    return 0;
  }

  return result;
}

@end