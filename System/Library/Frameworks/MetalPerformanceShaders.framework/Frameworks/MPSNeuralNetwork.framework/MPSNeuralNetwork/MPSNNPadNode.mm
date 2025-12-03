@interface MPSNNPadNode
+ (MPSNNPadNode)nodeWithSource:(MPSNNImageNode *)source paddingSizeBefore:(MPSImageCoordinate *)paddingSizeBefore paddingSizeAfter:(MPSImageCoordinate *)paddingSizeAfter edgeMode:(MPSImageEdgeMode)edgeMode;
- (MPSNNPadNode)initWithSource:(MPSNNImageNode *)source paddingSizeBefore:(MPSImageCoordinate *)paddingSizeBefore paddingSizeAfter:(MPSImageCoordinate *)paddingSizeAfter edgeMode:(MPSImageEdgeMode)edgeMode;
@end

@implementation MPSNNPadNode

+ (MPSNNPadNode)nodeWithSource:(MPSNNImageNode *)source paddingSizeBefore:(MPSImageCoordinate *)paddingSizeBefore paddingSizeAfter:(MPSImageCoordinate *)paddingSizeAfter edgeMode:(MPSImageEdgeMode)edgeMode
{
  v10 = [self alloc];
  v16 = *paddingSizeBefore;
  v15 = *paddingSizeAfter;
  return objc_msgSend_initWithSource_paddingSizeBefore_paddingSizeAfter_edgeMode_(v10, v11, source, &v16, &v15, edgeMode, v12, v13);
}

- (MPSNNPadNode)initWithSource:(MPSNNImageNode *)source paddingSizeBefore:(MPSImageCoordinate *)paddingSizeBefore paddingSizeAfter:(MPSImageCoordinate *)paddingSizeAfter edgeMode:(MPSImageEdgeMode)edgeMode
{
  v17[1] = *MEMORY[0x277D85DE8];
  v17[0] = source;
  v12 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v17, 1, paddingSizeAfter, edgeMode, v6, v7);
  v16.receiver = self;
  v16.super_class = MPSNNPadNode;
  result = [(MPSNNFilterNode *)&v16 initWithSourceImages:v12 sourceStates:0 paddingPolicy:0];
  v14 = *&paddingSizeBefore->x;
  result->_paddingSizeBefore.channel = paddingSizeBefore->channel;
  *&result->_paddingSizeBefore.x = v14;
  v15 = *&paddingSizeAfter->x;
  result->_paddingSizeAfter.channel = paddingSizeAfter->channel;
  *&result->_paddingSizeAfter.x = v15;
  result->_edgeMode = edgeMode;
  result->_fillValue = 0.0;
  return result;
}

@end