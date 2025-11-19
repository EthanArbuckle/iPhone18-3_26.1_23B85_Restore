@interface MPSCNNUpsamplingBilinearNode
+ (MPSCNNUpsamplingBilinearNode)nodeWithSource:(MPSNNImageNode *)sourceNode integerScaleFactorX:(NSUInteger)integerScaleFactorX integerScaleFactorY:(NSUInteger)integerScaleFactorY;
+ (MPSCNNUpsamplingBilinearNode)nodeWithSource:(MPSNNImageNode *)sourceNode integerScaleFactorX:(NSUInteger)integerScaleFactorX integerScaleFactorY:(NSUInteger)integerScaleFactorY alignCorners:(BOOL)alignCorners;
- (MPSCNNUpsamplingBilinearNode)initWithSource:(MPSNNImageNode *)sourceNode integerScaleFactorX:(NSUInteger)integerScaleFactorX integerScaleFactorY:(NSUInteger)integerScaleFactorY alignCorners:(BOOL)alignCorners;
@end

@implementation MPSCNNUpsamplingBilinearNode

+ (MPSCNNUpsamplingBilinearNode)nodeWithSource:(MPSNNImageNode *)sourceNode integerScaleFactorX:(NSUInteger)integerScaleFactorX integerScaleFactorY:(NSUInteger)integerScaleFactorY
{
  v8 = [a1 alloc];
  v12 = objc_msgSend_initWithSource_integerScaleFactorX_integerScaleFactorY_alignCorners_(v8, v9, sourceNode, integerScaleFactorX, integerScaleFactorY, 0, v10, v11);

  return v12;
}

+ (MPSCNNUpsamplingBilinearNode)nodeWithSource:(MPSNNImageNode *)sourceNode integerScaleFactorX:(NSUInteger)integerScaleFactorX integerScaleFactorY:(NSUInteger)integerScaleFactorY alignCorners:(BOOL)alignCorners
{
  v6 = alignCorners;
  v10 = [a1 alloc];
  v14 = objc_msgSend_initWithSource_integerScaleFactorX_integerScaleFactorY_alignCorners_(v10, v11, sourceNode, integerScaleFactorX, integerScaleFactorY, v6, v12, v13);

  return v14;
}

- (MPSCNNUpsamplingBilinearNode)initWithSource:(MPSNNImageNode *)sourceNode integerScaleFactorX:(NSUInteger)integerScaleFactorX integerScaleFactorY:(NSUInteger)integerScaleFactorY alignCorners:(BOOL)alignCorners
{
  v15[1] = *MEMORY[0x277D85DE8];
  v15[0] = sourceNode;
  v12 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v15, 1, integerScaleFactorY, alignCorners, v6, v7);
  v14.receiver = self;
  v14.super_class = MPSCNNUpsamplingBilinearNode;
  result = [(MPSNNFilterNode *)&v14 initWithSourceImages:v12 sourceStates:0 paddingPolicy:0];
  if (result)
  {
    result->_scaleFactorX = integerScaleFactorX;
    result->_scaleFactorY = integerScaleFactorY;
    result->_alignCorners = alignCorners;
  }

  return result;
}

@end