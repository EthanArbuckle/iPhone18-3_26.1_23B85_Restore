@interface MPSNNPermuteNode
+ (id)nodeWithSource:(id)source dimensionOrder:(MPSNNDimensionOrder *)order;
- (MPSNNPermuteNode)initWithSource:(id)source dimensionOrder:(MPSNNDimensionOrder *)order;
@end

@implementation MPSNNPermuteNode

+ (id)nodeWithSource:(id)source dimensionOrder:(MPSNNDimensionOrder *)order
{
  v6 = [self alloc];
  v7 = *&order->dimensions[2];
  v14[0] = *order->dimensions;
  v14[1] = v7;
  return objc_msgSend_initWithSource_dimensionOrder_(v6, v8, source, v14, v9, v10, v11, v12);
}

- (MPSNNPermuteNode)initWithSource:(id)source dimensionOrder:(MPSNNDimensionOrder *)order
{
  v14[1] = *MEMORY[0x277D85DE8];
  v14[0] = source;
  v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v14, 1, v4, v5, v6, v7);
  v13.receiver = self;
  v13.super_class = MPSNNPermuteNode;
  result = [(MPSNNFilterNode *)&v13 initWithSourceImages:v10 sourceStates:0 paddingPolicy:0];
  v12 = *&order->dimensions[2];
  *result->_order.dimensions = *order->dimensions;
  *&result->_order.dimensions[2] = v12;
  return result;
}

@end