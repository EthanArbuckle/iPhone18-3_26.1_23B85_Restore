@interface MPSCNNCrossChannelNormalizationNode
+ (MPSCNNCrossChannelNormalizationNode)nodeWithSource:(MPSNNImageNode *)sourceNode kernelSize:(NSUInteger)kernelSize;
- (MPSCNNCrossChannelNormalizationNode)initWithSource:(MPSNNImageNode *)sourceNode;
- (MPSCNNCrossChannelNormalizationNode)initWithSource:(MPSNNImageNode *)sourceNode kernelSize:(NSUInteger)kernelSize;
@end

@implementation MPSCNNCrossChannelNormalizationNode

- (MPSCNNCrossChannelNormalizationNode)initWithSource:(MPSNNImageNode *)sourceNode
{
  v4.receiver = self;
  v4.super_class = MPSCNNCrossChannelNormalizationNode;
  result = [(MPSCNNNormalizationNode *)&v4 initWithSource:sourceNode];
  if (result)
  {
    result->super._alpha = 1.0;
    result->super._beta = 5.0;
    result->super._delta = 1.0;
    result->_kernelSizeInFeatureChannels = 5;
  }

  return result;
}

+ (MPSCNNCrossChannelNormalizationNode)nodeWithSource:(MPSNNImageNode *)sourceNode kernelSize:(NSUInteger)kernelSize
{
  v6 = objc_alloc(objc_opt_class());
  v12 = objc_msgSend_initWithSource_kernelSize_(v6, v7, sourceNode, kernelSize, v8, v9, v10, v11);

  return v12;
}

- (MPSCNNCrossChannelNormalizationNode)initWithSource:(MPSNNImageNode *)sourceNode kernelSize:(NSUInteger)kernelSize
{
  v6.receiver = self;
  v6.super_class = MPSCNNCrossChannelNormalizationNode;
  result = [(MPSCNNNormalizationNode *)&v6 initWithSource:sourceNode];
  if (result)
  {
    result->super._alpha = 1.0;
    result->super._beta = 5.0;
    result->super._delta = 1.0;
    result->_kernelSizeInFeatureChannels = kernelSize;
  }

  return result;
}

@end