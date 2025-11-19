@interface MLCTensorParameter
+ (MLCTensorParameter)parameterWithTensor:(MLCTensor *)tensor;
+ (MLCTensorParameter)parameterWithTensor:(MLCTensor *)tensor optimizerData:(NSArray *)optimizerData;
- (MLCTensorParameter)initWithTensor:(id)a3 optimizerData:(id)a4;
@end

@implementation MLCTensorParameter

+ (MLCTensorParameter)parameterWithTensor:(MLCTensor *)tensor
{
  v4 = tensor;
  v5 = [[a1 alloc] initWithTensor:v4 optimizerData:0];

  return v5;
}

+ (MLCTensorParameter)parameterWithTensor:(MLCTensor *)tensor optimizerData:(NSArray *)optimizerData
{
  v6 = optimizerData;
  v7 = tensor;
  v8 = [[a1 alloc] initWithTensor:v7 optimizerData:v6];

  return v8;
}

- (MLCTensorParameter)initWithTensor:(id)a3 optimizerData:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = MLCTensorParameter;
  v9 = [(MLCTensorParameter *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_tensor, a3);
    if (v8)
    {
      v11 = [v8 copy];
      [v7 setOptimizerData:v11];
    }

    device = v10->_device;
    v10->_device = 0;

    v10->_isUpdatable = 1;
  }

  return v10;
}

- (void)allocateDataForOptimizer:(const char *)a1 device:(uint64_t)a2 isVector:(NSObject *)a3 .cold.1(const char *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromSelector(a1);
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_238C1D000, a3, OS_LOG_TYPE_ERROR, "%@: failure to create deviceParameter=%@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end