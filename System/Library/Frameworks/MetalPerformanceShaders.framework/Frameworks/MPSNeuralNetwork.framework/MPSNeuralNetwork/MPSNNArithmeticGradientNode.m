@interface MPSNNArithmeticGradientNode
+ (MPSNNArithmeticGradientNode)nodeWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNBinaryGradientStateNode *)gradientState isSecondarySourceFilter:(BOOL)isSecondarySourceFilter;
- (MPSNNArithmeticGradientNode)initWithGradientImages:(NSArray *)gradientImages forwardFilter:(MPSNNFilterNode *)filter isSecondarySourceFilter:(BOOL)isSecondarySourceFilter;
- (MPSNNArithmeticGradientNode)initWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNBinaryGradientStateNode *)gradientState isSecondarySourceFilter:(BOOL)isSecondarySourceFilter;
@end

@implementation MPSNNArithmeticGradientNode

+ (MPSNNArithmeticGradientNode)nodeWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNBinaryGradientStateNode *)gradientState isSecondarySourceFilter:(BOOL)isSecondarySourceFilter
{
  v6 = isSecondarySourceFilter;
  v10 = [a1 alloc];
  v14 = objc_msgSend_initWithSourceGradient_sourceImage_gradientState_isSecondarySourceFilter_(v10, v11, sourceGradient, sourceImage, gradientState, v6, v12, v13);

  return v14;
}

- (MPSNNArithmeticGradientNode)initWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNBinaryGradientStateNode *)gradientState isSecondarySourceFilter:(BOOL)isSecondarySourceFilter
{
  v22[1] = *MEMORY[0x277D85DE8];
  v22[0] = sourceGradient;
  v12 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v22, 1, gradientState, isSecondarySourceFilter, v6, v7);
  v21 = sourceImage;
  v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, &v21, 1, v14, v15, v16, v17);
  v20.receiver = self;
  v20.super_class = MPSNNArithmeticGradientNode;
  result = [(MPSNNGradientFilterNode *)&v20 initWithGradientImages:v12 sourceImages:v18 binaryGradientState:gradientState paddingPolicy:0];
  if (result)
  {
    result->_primaryScale = 1.0;
    result->_secondaryScale = 1.0;
    result->_bias = 0.0;
    result->_minimumValue = -INFINITY;
    result->_maximumValue = INFINITY;
    result->_secondaryStrideInPixelsX = 1;
    result->_secondaryStrideInPixelsY = 1;
    result->_secondaryStrideInFeatureChannels = 1;
    result->_isSecondarySourceFilter = isSecondarySourceFilter;
  }

  return result;
}

- (MPSNNArithmeticGradientNode)initWithGradientImages:(NSArray *)gradientImages forwardFilter:(MPSNNFilterNode *)filter isSecondarySourceFilter:(BOOL)isSecondarySourceFilter
{
  objc_opt_class();
  objc_opt_isKindOfClass();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = filter;
    MTLReportFailure();
  }

  v13.receiver = self;
  v13.super_class = MPSNNArithmeticGradientNode;
  result = [(MPSNNGradientFilterNode *)&v13 initWithGradientImages:gradientImages forwardFilter:filter, v11, v12];
  if (result)
  {
    result->_primaryScale = *&filter[1].super.isa;
    result->_secondaryScale = *(&filter[1].super.isa + 1);
    result->_bias = *&filter[1]._sourceImages;
    result->_minimumValue = *&filter[2]._sourceImages;
    result->_maximumValue = *(&filter[2]._sourceImages + 1);
    if (isSecondarySourceFilter)
    {
      result->_secondaryStrideInPixelsX = filter[1]._paddingPolicy;
      result->_secondaryStrideInPixelsY = filter[1]._label;
      result->_secondaryStrideInFeatureChannels = filter[2].super.isa;
      result->_isSecondarySourceFilter = 1;
    }

    else
    {
      result->_secondaryStrideInPixelsX = filter[1]._sourceStates;
      result->_secondaryStrideInPixelsY = filter[1]._resultImage;
      result->_secondaryStrideInFeatureChannels = filter[1]._resultStates;
    }
  }

  return result;
}

@end