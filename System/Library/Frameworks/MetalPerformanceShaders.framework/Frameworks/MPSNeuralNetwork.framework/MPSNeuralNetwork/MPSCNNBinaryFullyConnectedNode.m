@interface MPSCNNBinaryFullyConnectedNode
+ (MPSCNNBinaryFullyConnectedNode)nodeWithSource:(MPSNNImageNode *)sourceNode weights:(id)weights outputBiasTerms:(const float *)outputBiasTerms outputScaleTerms:(const float *)outputScaleTerms inputBiasTerms:(const float *)inputBiasTerms inputScaleTerms:(const float *)inputScaleTerms type:(MPSCNNBinaryConvolutionType)type flags:(MPSCNNBinaryConvolutionFlags)flags;
+ (MPSCNNBinaryFullyConnectedNode)nodeWithSource:(MPSNNImageNode *)sourceNode weights:(id)weights scaleValue:(float)scaleValue type:(MPSCNNBinaryConvolutionType)type flags:(MPSCNNBinaryConvolutionFlags)flags;
- (MPSCNNBinaryFullyConnectedNode)initWithSource:(MPSNNImageNode *)sourceNode weights:(id)weights outputBiasTerms:(const float *)outputBiasTerms outputScaleTerms:(const float *)outputScaleTerms inputBiasTerms:(const float *)inputBiasTerms inputScaleTerms:(const float *)inputScaleTerms type:(MPSCNNBinaryConvolutionType)type flags:(MPSCNNBinaryConvolutionFlags)flags;
- (MPSCNNBinaryFullyConnectedNode)initWithSource:(MPSNNImageNode *)sourceNode weights:(id)weights scaleValue:(float)scaleValue type:(MPSCNNBinaryConvolutionType)type flags:(MPSCNNBinaryConvolutionFlags)flags;
@end

@implementation MPSCNNBinaryFullyConnectedNode

+ (MPSCNNBinaryFullyConnectedNode)nodeWithSource:(MPSNNImageNode *)sourceNode weights:(id)weights scaleValue:(float)scaleValue type:(MPSCNNBinaryConvolutionType)type flags:(MPSCNNBinaryConvolutionFlags)flags
{
  v12 = [a1 alloc];
  *&v13 = scaleValue;
  v17 = objc_msgSend_initWithSource_weights_scaleValue_type_flags_(v12, v14, sourceNode, weights, type, flags, v15, v16, v13);

  return v17;
}

+ (MPSCNNBinaryFullyConnectedNode)nodeWithSource:(MPSNNImageNode *)sourceNode weights:(id)weights outputBiasTerms:(const float *)outputBiasTerms outputScaleTerms:(const float *)outputScaleTerms inputBiasTerms:(const float *)inputBiasTerms inputScaleTerms:(const float *)inputScaleTerms type:(MPSCNNBinaryConvolutionType)type flags:(MPSCNNBinaryConvolutionFlags)flags
{
  v16 = [a1 alloc];
  v18 = objc_msgSend_initWithSource_weights_outputBiasTerms_outputScaleTerms_inputBiasTerms_inputScaleTerms_type_flags_(v16, v17, sourceNode, weights, outputBiasTerms, outputScaleTerms, inputBiasTerms, inputScaleTerms, type, flags);

  return v18;
}

- (MPSCNNBinaryFullyConnectedNode)initWithSource:(MPSNNImageNode *)sourceNode weights:(id)weights scaleValue:(float)scaleValue type:(MPSCNNBinaryConvolutionType)type flags:(MPSCNNBinaryConvolutionFlags)flags
{
  *&v7 = self->super._scaleValue;
  v23.receiver = self;
  v23.super_class = MPSCNNBinaryFullyConnectedNode;
  v14 = [(MPSCNNBinaryConvolutionNode *)&v23 initWithSource:sourceNode weights:weights scaleValue:type type:flags flags:v7];
  if (v14)
  {
    v15 = objc_msgSend_paddingWithMethod_(MPSNNDefaultPadding, v8, 0, v9, v10, v11, v12, v13);
    objc_msgSend_setPaddingPolicy_(v14, v16, v15, v17, v18, v19, v20, v21);
  }

  return v14;
}

- (MPSCNNBinaryFullyConnectedNode)initWithSource:(MPSNNImageNode *)sourceNode weights:(id)weights outputBiasTerms:(const float *)outputBiasTerms outputScaleTerms:(const float *)outputScaleTerms inputBiasTerms:(const float *)inputBiasTerms inputScaleTerms:(const float *)inputScaleTerms type:(MPSCNNBinaryConvolutionType)type flags:(MPSCNNBinaryConvolutionFlags)flags
{
  v25.receiver = self;
  v25.super_class = MPSCNNBinaryFullyConnectedNode;
  v16 = [(MPSCNNBinaryConvolutionNode *)&v25 initWithSource:sourceNode weights:weights outputBiasTerms:outputBiasTerms outputScaleTerms:outputScaleTerms inputBiasTerms:inputBiasTerms inputScaleTerms:inputScaleTerms type:type flags:flags];
  if (v16)
  {
    v17 = objc_msgSend_paddingWithMethod_(MPSNNDefaultPadding, v10, 0, v11, v12, v13, v14, v15);
    objc_msgSend_setPaddingPolicy_(v16, v18, v17, v19, v20, v21, v22, v23);
  }

  return v16;
}

@end