@interface MLCConditionalLayer
+ (id)layerWithTrueBranch:(id)branch falseBranch:(id)falseBranch;
- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor;
- (MLCConditionalLayer)initWithTrueBranch:(id)branch falseBranch:(id)falseBranch;
- (id)description;
- (id)resultTensorFromSources:(id)sources;
- (unint64_t)resultSizeForOutputIndex:(unint64_t)index dimension:(unint64_t)dimension;
@end

@implementation MLCConditionalLayer

+ (id)layerWithTrueBranch:(id)branch falseBranch:(id)falseBranch
{
  falseBranchCopy = falseBranch;
  branchCopy = branch;
  v8 = [[self alloc] initWithTrueBranch:branchCopy falseBranch:falseBranchCopy];

  return v8;
}

- (MLCConditionalLayer)initWithTrueBranch:(id)branch falseBranch:(id)falseBranch
{
  branchCopy = branch;
  falseBranchCopy = falseBranch;
  v12.receiver = self;
  v12.super_class = MLCConditionalLayer;
  v9 = [(MLCLayer *)&v12 initWithLabel:@"Conditonal"];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_trueBranch, branch);
    objc_storeStrong(&v10->_falseBranch, falseBranch);
  }

  return v10;
}

- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor
{
  v6 = [MLCLog framework:device];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MLCConditionalLayer compileForDevice:a2 sourceTensors:v6 resultTensor:?];
  }

  return 0;
}

- (unint64_t)resultSizeForOutputIndex:(unint64_t)index dimension:(unint64_t)dimension
{
  trueBranch = [(MLCConditionalLayer *)self trueBranch];
  graphLayerList = [trueBranch graphLayerList];
  trueBranch2 = [(MLCConditionalLayer *)self trueBranch];
  graphLayerList2 = [trueBranch2 graphLayerList];
  v11 = [graphLayerList objectAtIndexedSubscript:{objc_msgSend(graphLayerList2, "count") - 1}];
  resultTensors = [v11 resultTensors];

  v13 = [resultTensors objectAtIndexedSubscript:0];
  descriptor = [v13 descriptor];
  shape = [descriptor shape];
  v16 = [shape objectAtIndexedSubscript:dimension];
  unsignedIntegerValue = [v16 unsignedIntegerValue];

  falseBranch = [(MLCConditionalLayer *)self falseBranch];
  graphLayerList3 = [falseBranch graphLayerList];
  falseBranch2 = [(MLCConditionalLayer *)self falseBranch];
  graphLayerList4 = [falseBranch2 graphLayerList];
  v22 = [graphLayerList3 objectAtIndexedSubscript:{objc_msgSend(graphLayerList4, "count") - 1}];
  resultTensors2 = [v22 resultTensors];

  v24 = [resultTensors2 objectAtIndexedSubscript:0];
  descriptor2 = [v24 descriptor];
  shape2 = [descriptor2 shape];
  v27 = [shape2 objectAtIndexedSubscript:dimension];
  unsignedIntegerValue2 = [v27 unsignedIntegerValue];

  if (unsignedIntegerValue != unsignedIntegerValue2)
  {
    v29 = +[MLCLog framework];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [(MLCConditionalLayer *)a2 resultSizeForOutputIndex:dimension dimension:v29];
    }

    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (id)resultTensorFromSources:(id)sources
{
  sourcesCopy = sources;
  v5 = [MEMORY[0x277CBEBF8] mutableCopy];
  for (i = 0; ; ++i)
  {
    v7 = [sourcesCopy objectAtIndexedSubscript:0];
    descriptor = [v7 descriptor];
    shape = [descriptor shape];
    v10 = [shape count];

    if (i >= v10)
    {
      break;
    }

    v11 = [(MLCConditionalLayer *)self resultSizeForOutputIndex:0 dimension:i];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
    [v5 setObject:v12 atIndexedSubscript:i];
  }

  v13 = [v5 copy];
  v14 = [MLCTensorDescriptor descriptorWithShape:v13 dataType:4];

  v15 = [MLCTensor tensorWithDescriptor:v14];

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  sourceTensors = [(MLCLayer *)self sourceTensors];
  v7 = [sourceTensors objectAtIndexedSubscript:0];
  trueBranch = [(MLCConditionalLayer *)self trueBranch];
  falseBranch = [(MLCConditionalLayer *)self falseBranch];
  conditionalTreeNode = [(MLCLayer *)self conditionalTreeNode];
  resultTensors = [(MLCLayer *)self resultTensors];
  v12 = [v3 stringWithFormat:@"%@: { predicate=%@ : trueBranch=%p : falseBranch=%p : conditionalTreeNode=%@ : resultTensor=%@ }", v5, v7, trueBranch, falseBranch, conditionalTreeNode, resultTensors];

  return v12;
}

- (void)compileForDevice:(const char *)a1 sourceTensors:(NSObject *)a2 resultTensor:.cold.1(const char *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromSelector(a1);
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_238C1D000, a2, OS_LOG_TYPE_ERROR, "%@: Conditional must not be present in the graph during compilation.", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)resultSizeForOutputIndex:(NSObject *)a3 dimension:.cold.1(const char *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromSelector(a1);
  v7 = 138412546;
  v8 = v5;
  v9 = 2048;
  v10 = a2;
  _os_log_error_impl(&dword_238C1D000, a3, OS_LOG_TYPE_ERROR, "%@: Result tensors of true and false branches have different shape at dimension = %lu", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end