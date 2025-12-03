@interface MPSNNInitialGradientNode
+ (MPSNNInitialGradientNode)nodeWithSource:(MPSNNImageNode *)source;
- (MPSNNGradientFilterNode)gradientFilterWithSources:(NSArray *)gradientImages;
- (MPSNNInitialGradientNode)initWithSource:(MPSNNImageNode *)source;
- (id)trainingGraphWithSourceGradient:(id)gradient nodeHandler:(id)handler;
@end

@implementation MPSNNInitialGradientNode

+ (MPSNNInitialGradientNode)nodeWithSource:(MPSNNImageNode *)source
{
  v4 = [self alloc];
  v11 = objc_msgSend_initWithSource_(v4, v5, source, v6, v7, v8, v9, v10);

  return v11;
}

- (MPSNNInitialGradientNode)initWithSource:(MPSNNImageNode *)source
{
  v11[1] = *MEMORY[0x277D85DE8];
  v11[0] = source;
  v8 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v11, 1, v3, v4, v5, v6);
  v10.receiver = self;
  v10.super_class = MPSNNInitialGradientNode;
  return [(MPSNNFilterNode *)&v10 initWithSourceImages:v8 sourceStates:0 paddingPolicy:0];
}

- (MPSNNGradientFilterNode)gradientFilterWithSources:(NSArray *)gradientImages
{
  if (MTLReportFailureTypeEnabled())
  {
    v3 = objc_opt_class();
    NSStringFromClass(v3);
    MTLReportFailure();
  }

  return 0;
}

- (id)trainingGraphWithSourceGradient:(id)gradient nodeHandler:(id)handler
{
  gradientCopy = gradient;
  v25[1] = *MEMORY[0x277D85DE8];
  v11 = objc_msgSend_resultImage(self, a2, gradient, handler, v4, v5, v6, v7);
  if (gradientCopy)
  {
    if (v11 != gradientCopy && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  else
  {
    gradientCopy = v11;
  }

  v18 = *(objc_msgSend_objectAtIndexedSubscript_(self->super._sourceImages, v12, 0, v13, v14, v15, v16, v17) + 16);
  if (v18)
  {

    return MEMORY[0x2821F9670](v18, sel_trainingGraphWithSourceGradient_nodeHandler_, gradientCopy, handler, v20, v21, v22, v23);
  }

  else
  {
    v25[0] = self;
    return objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v19, v25, 1, v20, v21, v22, v23);
  }
}

@end