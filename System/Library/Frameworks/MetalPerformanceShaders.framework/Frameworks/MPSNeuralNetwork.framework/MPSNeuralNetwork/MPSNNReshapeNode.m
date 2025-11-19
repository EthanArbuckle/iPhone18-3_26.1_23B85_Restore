@interface MPSNNReshapeNode
+ (MPSNNReshapeNode)nodeWithSource:(MPSNNImageNode *)source resultWidth:(NSUInteger)resultWidth resultHeight:(NSUInteger)resultHeight resultFeatureChannels:(NSUInteger)resultFeatureChannels;
- (MPSNNReshapeNode)initWithSource:(MPSNNImageNode *)source resultWidth:(NSUInteger)resultWidth resultHeight:(NSUInteger)resultHeight resultFeatureChannels:(NSUInteger)resultFeatureChannels;
@end

@implementation MPSNNReshapeNode

+ (MPSNNReshapeNode)nodeWithSource:(MPSNNImageNode *)source resultWidth:(NSUInteger)resultWidth resultHeight:(NSUInteger)resultHeight resultFeatureChannels:(NSUInteger)resultFeatureChannels
{
  v10 = [a1 alloc];
  v14 = objc_msgSend_initWithSource_resultWidth_resultHeight_resultFeatureChannels_(v10, v11, source, resultWidth, resultHeight, resultFeatureChannels, v12, v13);

  return v14;
}

- (MPSNNReshapeNode)initWithSource:(MPSNNImageNode *)source resultWidth:(NSUInteger)resultWidth resultHeight:(NSUInteger)resultHeight resultFeatureChannels:(NSUInteger)resultFeatureChannels
{
  v15[1] = *MEMORY[0x277D85DE8];
  v15[0] = source;
  v12 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v15, 1, resultHeight, resultFeatureChannels, v6, v7);
  v14.receiver = self;
  v14.super_class = MPSNNReshapeNode;
  result = [(MPSNNFilterNode *)&v14 initWithSourceImages:v12 sourceStates:0 paddingPolicy:0];
  result->_resultWidth = resultWidth;
  result->_resultHeight = resultHeight;
  result->_resultFeatureChannels = resultFeatureChannels;
  return result;
}

@end