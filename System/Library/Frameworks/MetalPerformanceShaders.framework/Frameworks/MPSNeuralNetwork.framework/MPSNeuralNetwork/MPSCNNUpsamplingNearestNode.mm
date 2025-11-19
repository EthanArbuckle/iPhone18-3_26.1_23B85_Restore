@interface MPSCNNUpsamplingNearestNode
+ (MPSCNNUpsamplingNearestNode)nodeWithSource:(MPSNNImageNode *)sourceNode integerScaleFactorX:(NSUInteger)integerScaleFactorX integerScaleFactorY:(NSUInteger)integerScaleFactorY;
- (MPSCNNUpsamplingNearestNode)initWithSource:(MPSNNImageNode *)sourceNode integerScaleFactorX:(NSUInteger)integerScaleFactorX integerScaleFactorY:(NSUInteger)integerScaleFactorY;
@end

@implementation MPSCNNUpsamplingNearestNode

+ (MPSCNNUpsamplingNearestNode)nodeWithSource:(MPSNNImageNode *)sourceNode integerScaleFactorX:(NSUInteger)integerScaleFactorX integerScaleFactorY:(NSUInteger)integerScaleFactorY
{
  v8 = [a1 alloc];
  v13 = objc_msgSend_initWithSource_integerScaleFactorX_integerScaleFactorY_(v8, v9, sourceNode, integerScaleFactorX, integerScaleFactorY, v10, v11, v12);

  return v13;
}

- (MPSCNNUpsamplingNearestNode)initWithSource:(MPSNNImageNode *)sourceNode integerScaleFactorX:(NSUInteger)integerScaleFactorX integerScaleFactorY:(NSUInteger)integerScaleFactorY
{
  v14[1] = *MEMORY[0x277D85DE8];
  v14[0] = sourceNode;
  v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v14, 1, integerScaleFactorY, v5, v6, v7);
  v13.receiver = self;
  v13.super_class = MPSCNNUpsamplingNearestNode;
  result = [(MPSNNFilterNode *)&v13 initWithSourceImages:v11 sourceStates:0 paddingPolicy:0];
  if (result)
  {
    result->_scaleFactorX = integerScaleFactorX;
    result->_scaleFactorY = integerScaleFactorY;
  }

  return result;
}

@end