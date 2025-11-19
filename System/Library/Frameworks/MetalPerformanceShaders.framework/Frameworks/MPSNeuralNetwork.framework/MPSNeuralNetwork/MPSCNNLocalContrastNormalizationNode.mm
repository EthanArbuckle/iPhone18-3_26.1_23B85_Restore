@interface MPSCNNLocalContrastNormalizationNode
+ (MPSCNNLocalContrastNormalizationNode)nodeWithSource:(MPSNNImageNode *)sourceNode kernelSize:(NSUInteger)kernelSize;
- (MPSCNNLocalContrastNormalizationNode)initWithSource:(MPSNNImageNode *)sourceNode;
- (MPSCNNLocalContrastNormalizationNode)initWithSource:(MPSNNImageNode *)sourceNode kernelSize:(NSUInteger)kernelSize;
@end

@implementation MPSCNNLocalContrastNormalizationNode

- (MPSCNNLocalContrastNormalizationNode)initWithSource:(MPSNNImageNode *)sourceNode
{
  v4.receiver = self;
  v4.super_class = MPSCNNLocalContrastNormalizationNode;
  result = [(MPSCNNNormalizationNode *)&v4 initWithSource:sourceNode];
  if (result)
  {
    result->super._alpha = 1.0;
    result->super._beta = 0.5;
    result->super._delta = 0.00097656;
    *(&result->super._delta + 1) = 0;
    result->_pm = 1.0;
    result->_ps = 1.0;
    result->_kernelWidth = 3;
    *&result->_p0 = 3;
  }

  return result;
}

+ (MPSCNNLocalContrastNormalizationNode)nodeWithSource:(MPSNNImageNode *)sourceNode kernelSize:(NSUInteger)kernelSize
{
  v6 = objc_alloc(objc_opt_class());
  v12 = objc_msgSend_initWithSource_kernelSize_(v6, v7, sourceNode, kernelSize, v8, v9, v10, v11);

  return v12;
}

- (MPSCNNLocalContrastNormalizationNode)initWithSource:(MPSNNImageNode *)sourceNode kernelSize:(NSUInteger)kernelSize
{
  v6.receiver = self;
  v6.super_class = MPSCNNLocalContrastNormalizationNode;
  result = [(MPSCNNNormalizationNode *)&v6 initWithSource:sourceNode];
  if (result)
  {
    result->super._alpha = 1.0;
    result->super._beta = 0.5;
    result->super._delta = 0.00097656;
    *(&result->super._delta + 1) = 0;
    result->_pm = 1.0;
    result->_ps = 1.0;
    result->_kernelWidth = kernelSize;
    *&result->_p0 = kernelSize;
  }

  return result;
}

@end