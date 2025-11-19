@interface MPSCNNNeuronPReLUNode
+ (MPSCNNNeuronPReLUNode)nodeWithSource:(MPSNNImageNode *)sourceNode aData:(NSData *)aData;
- (MPSCNNNeuronPReLUNode)initWithSource:(MPSNNImageNode *)sourceNode aData:(NSData *)aData;
- (void)dealloc;
@end

@implementation MPSCNNNeuronPReLUNode

+ (MPSCNNNeuronPReLUNode)nodeWithSource:(MPSNNImageNode *)sourceNode aData:(NSData *)aData
{
  v6 = [a1 alloc];
  v12 = objc_msgSend_initWithSource_aData_(v6, v7, sourceNode, aData, v8, v9, v10, v11);

  return v12;
}

- (MPSCNNNeuronPReLUNode)initWithSource:(MPSNNImageNode *)sourceNode aData:(NSData *)aData
{
  v8.receiver = self;
  v8.super_class = MPSCNNNeuronPReLUNode;
  result = [(MPSCNNNeuronNode *)&v8 initWithSource:sourceNode type:10 a:0.0 b:0.0 c:0.0];
  if (result)
  {
    v6 = result;
    v7 = aData;
    result = v6;
    v6->_aData = v7;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSCNNNeuronPReLUNode;
  [(MPSNNFilterNode *)&v3 dealloc];
}

@end