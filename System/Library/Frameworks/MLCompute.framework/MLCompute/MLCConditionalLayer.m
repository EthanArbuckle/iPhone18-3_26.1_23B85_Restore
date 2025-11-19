@interface MLCConditionalLayer
+ (id)layerWithTrueBranch:(id)a3 falseBranch:(id)a4;
- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5;
- (MLCConditionalLayer)initWithTrueBranch:(id)a3 falseBranch:(id)a4;
- (id)description;
- (id)resultTensorFromSources:(id)a3;
- (unint64_t)resultSizeForOutputIndex:(unint64_t)a3 dimension:(unint64_t)a4;
@end

@implementation MLCConditionalLayer

+ (id)layerWithTrueBranch:(id)a3 falseBranch:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithTrueBranch:v7 falseBranch:v6];

  return v8;
}

- (MLCConditionalLayer)initWithTrueBranch:(id)a3 falseBranch:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MLCConditionalLayer;
  v9 = [(MLCLayer *)&v12 initWithLabel:@"Conditonal"];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_trueBranch, a3);
    objc_storeStrong(&v10->_falseBranch, a4);
  }

  return v10;
}

- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5
{
  v6 = [MLCLog framework:a3];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MLCConditionalLayer compileForDevice:a2 sourceTensors:v6 resultTensor:?];
  }

  return 0;
}

- (unint64_t)resultSizeForOutputIndex:(unint64_t)a3 dimension:(unint64_t)a4
{
  v7 = [(MLCConditionalLayer *)self trueBranch];
  v8 = [v7 graphLayerList];
  v9 = [(MLCConditionalLayer *)self trueBranch];
  v10 = [v9 graphLayerList];
  v11 = [v8 objectAtIndexedSubscript:{objc_msgSend(v10, "count") - 1}];
  v12 = [v11 resultTensors];

  v13 = [v12 objectAtIndexedSubscript:0];
  v14 = [v13 descriptor];
  v15 = [v14 shape];
  v16 = [v15 objectAtIndexedSubscript:a4];
  v17 = [v16 unsignedIntegerValue];

  v18 = [(MLCConditionalLayer *)self falseBranch];
  v19 = [v18 graphLayerList];
  v20 = [(MLCConditionalLayer *)self falseBranch];
  v21 = [v20 graphLayerList];
  v22 = [v19 objectAtIndexedSubscript:{objc_msgSend(v21, "count") - 1}];
  v23 = [v22 resultTensors];

  v24 = [v23 objectAtIndexedSubscript:0];
  v25 = [v24 descriptor];
  v26 = [v25 shape];
  v27 = [v26 objectAtIndexedSubscript:a4];
  v28 = [v27 unsignedIntegerValue];

  if (v17 != v28)
  {
    v29 = +[MLCLog framework];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [(MLCConditionalLayer *)a2 resultSizeForOutputIndex:a4 dimension:v29];
    }

    v17 = 0;
  }

  return v17;
}

- (id)resultTensorFromSources:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEBF8] mutableCopy];
  for (i = 0; ; ++i)
  {
    v7 = [v4 objectAtIndexedSubscript:0];
    v8 = [v7 descriptor];
    v9 = [v8 shape];
    v10 = [v9 count];

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
  v6 = [(MLCLayer *)self sourceTensors];
  v7 = [v6 objectAtIndexedSubscript:0];
  v8 = [(MLCConditionalLayer *)self trueBranch];
  v9 = [(MLCConditionalLayer *)self falseBranch];
  v10 = [(MLCLayer *)self conditionalTreeNode];
  v11 = [(MLCLayer *)self resultTensors];
  v12 = [v3 stringWithFormat:@"%@: { predicate=%@ : trueBranch=%p : falseBranch=%p : conditionalTreeNode=%@ : resultTensor=%@ }", v5, v7, v8, v9, v10, v11];

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