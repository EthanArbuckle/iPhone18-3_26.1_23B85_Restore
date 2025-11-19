@interface MPSNNUnaryReductionNode
+ (MPSNNUnaryReductionNode)nodeWithSource:(MPSNNImageNode *)sourceNode;
- (MPSNNUnaryReductionNode)initWithSource:(MPSNNImageNode *)sourceNode;
- (MTLRegion)clipRectSource;
- (id)gradientFilterWithSource:(id)a3;
- (void)setClipRectSource:(MTLRegion *)clipRectSource;
@end

@implementation MPSNNUnaryReductionNode

+ (MPSNNUnaryReductionNode)nodeWithSource:(MPSNNImageNode *)sourceNode
{
  v4 = [a1 alloc];
  v11 = objc_msgSend_initWithSource_(v4, v5, sourceNode, v6, v7, v8, v9, v10);

  return v11;
}

- (MPSNNUnaryReductionNode)initWithSource:(MPSNNImageNode *)sourceNode
{
  v11[1] = *MEMORY[0x277D85DE8];
  v11[0] = sourceNode;
  v8 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v11, 1, v3, v4, v5, v6);
  v10.receiver = self;
  v10.super_class = MPSNNUnaryReductionNode;
  return [(MPSNNFilterNode *)&v10 initWithSourceImages:v8 sourceStates:0 paddingPolicy:0];
}

- (id)gradientFilterWithSource:(id)a3
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (MTLRegion)clipRectSource
{
  v3 = *&self[1].size.width;
  *&retstr->origin.x = *&self[1].origin.y;
  *&retstr->origin.z = v3;
  *&retstr->size.height = *&self[1].size.depth;
  return self;
}

- (void)setClipRectSource:(MTLRegion *)clipRectSource
{
  v4 = *&clipRectSource->origin.z;
  v3 = *&clipRectSource->size.height;
  *&self->_clipRectSource.origin.x = *&clipRectSource->origin.x;
  *&self->_clipRectSource.origin.z = v4;
  *&self->_clipRectSource.size.height = v3;
}

@end