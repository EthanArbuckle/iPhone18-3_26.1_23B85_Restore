@interface MPSCNNGroupNormalizationNode
+ (MPSCNNGroupNormalizationNode)nodeWithSource:(MPSNNImageNode *)source dataSource:(id)dataSource;
- (MPSCNNGroupNormalizationNode)initWithSource:(MPSNNImageNode *)source dataSource:(id)dataSource;
- (void)dealloc;
@end

@implementation MPSCNNGroupNormalizationNode

+ (MPSCNNGroupNormalizationNode)nodeWithSource:(MPSNNImageNode *)source dataSource:(id)dataSource
{
  v6 = [self alloc];
  v12 = objc_msgSend_initWithSource_dataSource_(v6, v7, source, dataSource, v8, v9, v10, v11);

  return v12;
}

- (MPSCNNGroupNormalizationNode)initWithSource:(MPSNNImageNode *)source dataSource:(id)dataSource
{
  v16[1] = *MEMORY[0x277D85DE8];
  if (dataSource)
  {
    v16[0] = source;
    v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v16, 1, v4, v5, v6, v7);
    v15.receiver = self;
    v15.super_class = MPSCNNGroupNormalizationNode;
    result = [(MPSNNFilterNode *)&v15 initWithSourceImages:v10 sourceStates:0 paddingPolicy:0];
    if (result)
    {
      v12 = result;
      v13 = dataSource;
      result = v12;
      v12->_dataSource = v13;
      v12->_trainingStyle = 2;
    }
  }

  else
  {
    if (MTLReportFailureTypeEnabled())
    {
      v14 = objc_opt_class();
      NSStringFromClass(v14);
      MTLReportFailure();
    }

    return 0;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSCNNGroupNormalizationNode;
  [(MPSNNFilterNode *)&v3 dealloc];
}

@end