@interface MPSCNNYOLOLossNode
+ (MPSCNNYOLOLossNode)nodeWithSource:(MPSNNImageNode *)source lossDescriptor:(MPSCNNYOLOLossDescriptor *)descriptor;
- (MPSCNNYOLOLossNode)initWithSource:(MPSNNImageNode *)source lossDescriptor:(MPSCNNYOLOLossDescriptor *)descriptor;
- (MPSNNGradientFilterNode)gradientFilterWithSources:(NSArray *)gradientImages;
- (id)trainingGraphWithSourceGradient:(id)a3 nodeHandler:(id)a4;
- (void)dealloc;
@end

@implementation MPSCNNYOLOLossNode

+ (MPSCNNYOLOLossNode)nodeWithSource:(MPSNNImageNode *)source lossDescriptor:(MPSCNNYOLOLossDescriptor *)descriptor
{
  v6 = [a1 alloc];
  v12 = objc_msgSend_initWithSource_lossDescriptor_(v6, v7, source, descriptor, v8, v9, v10, v11);

  return v12;
}

- (MPSCNNYOLOLossNode)initWithSource:(MPSNNImageNode *)source lossDescriptor:(MPSCNNYOLOLossDescriptor *)descriptor
{
  v33[1] = *MEMORY[0x277D85DE8];
  if (descriptor)
  {
    v7 = [MPSNNLabelsNode alloc];
    v14 = objc_msgSend_initWithParent_(v7, v8, 0, v9, v10, v11, v12, v13);
    v33[0] = source;
    v20 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v15, v33, 1, v16, v17, v18, v19);
    v32 = v14;
    v26 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v21, &v32, 1, v22, v23, v24, v25);
    v31.receiver = self;
    v31.super_class = MPSCNNYOLOLossNode;
    v27 = [(MPSNNFilterNode *)&v31 initWithSourceImages:v20 sourceStates:v26 paddingPolicy:0];
    v28 = descriptor;
    result = v27;
    v27->_descriptor = v28;
    v27->_labels = v14;
  }

  else
  {
    if (MTLReportFailureTypeEnabled())
    {
      v30 = objc_opt_class();
      NSStringFromClass(v30);
      MTLReportFailure();
    }

    return 0;
  }

  return result;
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

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSCNNYOLOLossNode;
  [(MPSNNFilterNode *)&v3 dealloc];
}

- (id)trainingGraphWithSourceGradient:(id)a3 nodeHandler:(id)a4
{
  v9 = a3;
  v25[1] = *MEMORY[0x277D85DE8];
  v11 = objc_msgSend_resultImage(self, a2, a3, a4, v4, v5, v6, v7);
  if (v9)
  {
    if (v11 != v9 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  else
  {
    v9 = v11;
  }

  v18 = *(objc_msgSend_objectAtIndexedSubscript_(self->super._sourceImages, v12, 0, v13, v14, v15, v16, v17) + 16);
  if (v18)
  {

    return MEMORY[0x2821F9670](v18, sel_trainingGraphWithSourceGradient_nodeHandler_, v9, a4, v20, v21, v22, v23);
  }

  else
  {
    v25[0] = self;
    return objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v19, v25, 1, v20, v21, v22, v23);
  }
}

@end