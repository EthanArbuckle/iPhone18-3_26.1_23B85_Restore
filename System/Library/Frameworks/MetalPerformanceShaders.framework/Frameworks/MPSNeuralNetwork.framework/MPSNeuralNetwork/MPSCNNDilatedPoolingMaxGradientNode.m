@interface MPSCNNDilatedPoolingMaxGradientNode
+ (MPSCNNDilatedPoolingMaxGradientNode)nodeWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNGradientStateNode *)gradientState kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight strideInPixelsX:(NSUInteger)strideInPixelsX strideInPixelsY:(NSUInteger)strideInPixelsY dilationRateX:(NSUInteger)dilationRateX dilationRateY:(NSUInteger)dilationRateY;
- (MPSCNNDilatedPoolingMaxGradientNode)initWithGradientImages:(id)a3 forwardFilter:(id)a4;
- (MPSCNNDilatedPoolingMaxGradientNode)initWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNGradientStateNode *)gradientState kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight strideInPixelsX:(NSUInteger)strideInPixelsX strideInPixelsY:(NSUInteger)strideInPixelsY dilationRateX:(NSUInteger)dilationRateX dilationRateY:(NSUInteger)dilationRateY;
@end

@implementation MPSCNNDilatedPoolingMaxGradientNode

+ (MPSCNNDilatedPoolingMaxGradientNode)nodeWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNGradientStateNode *)gradientState kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight strideInPixelsX:(NSUInteger)strideInPixelsX strideInPixelsY:(NSUInteger)strideInPixelsY dilationRateX:(NSUInteger)dilationRateX dilationRateY:(NSUInteger)dilationRateY
{
  v17 = [a1 alloc];
  v19 = objc_msgSend_initWithSourceGradient_sourceImage_gradientState_kernelWidth_kernelHeight_strideInPixelsX_strideInPixelsY_dilationRateX_dilationRateY_(v17, v18, sourceGradient, sourceImage, gradientState, kernelWidth, kernelHeight, strideInPixelsX, strideInPixelsY, dilationRateX, dilationRateY);

  return v19;
}

- (MPSCNNDilatedPoolingMaxGradientNode)initWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNGradientStateNode *)gradientState kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight strideInPixelsX:(NSUInteger)strideInPixelsX strideInPixelsY:(NSUInteger)strideInPixelsY dilationRateX:(NSUInteger)dilationRateX dilationRateY:(NSUInteger)dilationRateY
{
  v12.receiver = self;
  v12.super_class = MPSCNNDilatedPoolingMaxGradientNode;
  result = [(MPSCNNPoolingGradientNode *)&v12 initWithSourceGradient:sourceGradient sourceImage:sourceImage gradientState:gradientState kernelWidth:kernelWidth kernelHeight:kernelHeight strideInPixelsX:strideInPixelsX strideInPixelsY:strideInPixelsY paddingPolicy:0];
  if (result)
  {
    result->_dilationRateX = dilationRateX;
    result->_dilationRateY = dilationRateY;
  }

  return result;
}

- (MPSCNNDilatedPoolingMaxGradientNode)initWithGradientImages:(id)a3 forwardFilter:(id)a4
{
  objc_opt_class();
  objc_opt_isKindOfClass();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = a4;
    MTLReportFailure();
  }

  v11.receiver = self;
  v11.super_class = MPSCNNDilatedPoolingMaxGradientNode;
  result = [(MPSCNNPoolingGradientNode *)&v11 initWithGradientImages:a3 forwardFilter:a4, v9, v10];
  if (result)
  {
    result->_dilationRateX = *(a4 + 11);
    result->_dilationRateY = *(a4 + 12);
  }

  return result;
}

@end