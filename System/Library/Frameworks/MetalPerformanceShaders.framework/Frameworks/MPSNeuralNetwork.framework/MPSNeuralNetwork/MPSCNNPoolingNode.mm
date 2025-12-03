@interface MPSCNNPoolingNode
+ (MPSCNNPoolingNode)nodeWithSource:(MPSNNImageNode *)sourceNode filterSize:(NSUInteger)size;
+ (MPSCNNPoolingNode)nodeWithSource:(MPSNNImageNode *)sourceNode filterSize:(NSUInteger)size stride:(NSUInteger)stride;
- (MPSCNNPoolingNode)initWithSource:(MPSNNImageNode *)sourceNode kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight strideInPixelsX:(NSUInteger)strideInPixelsX strideInPixelsY:(NSUInteger)strideInPixelsY;
- (void)newFilterNode;
@end

@implementation MPSCNNPoolingNode

+ (MPSCNNPoolingNode)nodeWithSource:(MPSNNImageNode *)sourceNode filterSize:(NSUInteger)size
{
  v6 = [self alloc];
  v12 = objc_msgSend_initWithSource_filterSize_(v6, v7, sourceNode, size, v8, v9, v10, v11);

  return v12;
}

+ (MPSCNNPoolingNode)nodeWithSource:(MPSNNImageNode *)sourceNode filterSize:(NSUInteger)size stride:(NSUInteger)stride
{
  v8 = [self alloc];
  v13 = objc_msgSend_initWithSource_filterSize_stride_(v8, v9, sourceNode, size, stride, v10, v11, v12);

  return v13;
}

- (MPSCNNPoolingNode)initWithSource:(MPSNNImageNode *)sourceNode kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight strideInPixelsX:(NSUInteger)strideInPixelsX strideInPixelsY:(NSUInteger)strideInPixelsY
{
  v17[1] = *MEMORY[0x277D85DE8];
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
      v15 = objc_opt_class();
      NSStringFromClass(v15);
      MTLReportFailure();
    }

LABEL_10:

    return 0;
  }

  v17[0] = sourceNode;
  v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v17, 1, kernelHeight, strideInPixelsX, strideInPixelsY, v7);
  v16.receiver = self;
  v16.super_class = MPSCNNPoolingNode;
  result = [(MPSNNFilterNode *)&v16 initWithSourceImages:v13 sourceStates:0 paddingPolicy:0];
  if (result)
  {
    result->_kernelWidth = kernelWidth;
    result->_kernelHeight = kernelHeight;
    result->_strideInPixelsX = strideInPixelsX;
    result->_strideInPixelsY = strideInPixelsY;
  }

  return result;
}

- (void)newFilterNode
{
  if (MTLReportFailureTypeEnabled())
  {
    v2 = objc_opt_class();
    NSStringFromClass(v2);
    MTLReportFailure();
  }

  return 0;
}

@end