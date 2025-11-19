@interface MPSCNNDilatedPoolingMaxNode
+ (MPSCNNDilatedPoolingMaxNode)nodeWithSource:(MPSNNImageNode *)sourceNode filterSize:(NSUInteger)size;
+ (MPSCNNDilatedPoolingMaxNode)nodeWithSource:(MPSNNImageNode *)sourceNode filterSize:(NSUInteger)size stride:(NSUInteger)stride dilationRate:(NSUInteger)dilationRate;
- (MPSCNNDilatedPoolingMaxNode)initWithSource:(MPSNNImageNode *)sourceNode kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight strideInPixelsX:(NSUInteger)strideInPixelsX strideInPixelsY:(NSUInteger)strideInPixelsY dilationRateX:(NSUInteger)dilationRateX dilationRateY:(NSUInteger)dilationRateY;
@end

@implementation MPSCNNDilatedPoolingMaxNode

+ (MPSCNNDilatedPoolingMaxNode)nodeWithSource:(MPSNNImageNode *)sourceNode filterSize:(NSUInteger)size
{
  v6 = [a1 alloc];
  v12 = objc_msgSend_initWithSource_filterSize_(v6, v7, sourceNode, size, v8, v9, v10, v11);

  return v12;
}

+ (MPSCNNDilatedPoolingMaxNode)nodeWithSource:(MPSNNImageNode *)sourceNode filterSize:(NSUInteger)size stride:(NSUInteger)stride dilationRate:(NSUInteger)dilationRate
{
  v10 = [a1 alloc];
  v14 = objc_msgSend_initWithSource_filterSize_stride_dilationRate_(v10, v11, sourceNode, size, stride, dilationRate, v12, v13);

  return v14;
}

- (MPSCNNDilatedPoolingMaxNode)initWithSource:(MPSNNImageNode *)sourceNode kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight strideInPixelsX:(NSUInteger)strideInPixelsX strideInPixelsY:(NSUInteger)strideInPixelsY dilationRateX:(NSUInteger)dilationRateX dilationRateY:(NSUInteger)dilationRateY
{
  v19[1] = *MEMORY[0x277D85DE8];
  if (!kernelWidth)
  {
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (!kernelHeight)
  {
    if (MTLReportFailureTypeEnabled())
    {
LABEL_9:
      v17 = objc_opt_class();
      NSStringFromClass(v17);
      MTLReportFailure();
    }

LABEL_10:

    return 0;
  }

  v19[0] = sourceNode;
  v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v19, 1, kernelHeight, strideInPixelsX, strideInPixelsY, dilationRateX);
  v18.receiver = self;
  v18.super_class = MPSCNNDilatedPoolingMaxNode;
  result = [(MPSNNFilterNode *)&v18 initWithSourceImages:v15 sourceStates:0 paddingPolicy:0];
  if (result)
  {
    result->_kernelWidth = kernelWidth;
    result->_kernelHeight = kernelHeight;
    result->_strideInPixelsX = strideInPixelsX;
    result->_strideInPixelsY = strideInPixelsY;
    result->_dilationRateX = dilationRateX;
    result->_dilationRateY = dilationRateY;
  }

  return result;
}

@end