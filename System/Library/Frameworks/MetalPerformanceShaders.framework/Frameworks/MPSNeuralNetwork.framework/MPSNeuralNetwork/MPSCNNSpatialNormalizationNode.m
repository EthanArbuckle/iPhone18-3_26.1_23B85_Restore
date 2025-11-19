@interface MPSCNNSpatialNormalizationNode
+ (MPSCNNSpatialNormalizationNode)nodeWithSource:(MPSNNImageNode *)sourceNode kernelSize:(NSUInteger)kernelSize;
- (MPSCNNSpatialNormalizationNode)initWithSource:(MPSNNImageNode *)sourceNode;
- (MPSCNNSpatialNormalizationNode)initWithSource:(MPSNNImageNode *)sourceNode kernelSize:(NSUInteger)kernelSize;
@end

@implementation MPSCNNSpatialNormalizationNode

- (MPSCNNSpatialNormalizationNode)initWithSource:(MPSNNImageNode *)sourceNode
{
  v4.receiver = self;
  v4.super_class = MPSCNNSpatialNormalizationNode;
  result = [(MPSCNNNormalizationNode *)&v4 initWithSource:sourceNode];
  if (result)
  {
    result->_kernelHeight = 3;
    result->_kernelWidth = 3;
  }

  return result;
}

+ (MPSCNNSpatialNormalizationNode)nodeWithSource:(MPSNNImageNode *)sourceNode kernelSize:(NSUInteger)kernelSize
{
  v6 = objc_alloc(objc_opt_class());
  v12 = objc_msgSend_initWithSource_kernelSize_(v6, v7, sourceNode, kernelSize, v8, v9, v10, v11);

  return v12;
}

- (MPSCNNSpatialNormalizationNode)initWithSource:(MPSNNImageNode *)sourceNode kernelSize:(NSUInteger)kernelSize
{
  v6.receiver = self;
  v6.super_class = MPSCNNSpatialNormalizationNode;
  result = [(MPSCNNNormalizationNode *)&v6 initWithSource:sourceNode];
  if (result)
  {
    result->_kernelHeight = kernelSize;
    result->_kernelWidth = kernelSize;
  }

  return result;
}

@end