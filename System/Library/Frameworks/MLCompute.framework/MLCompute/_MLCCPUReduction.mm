@interface _MLCCPUReduction
+ (BOOL)compileWithDevice:(id)device deviceOps:(id)ops sourceTensors:(id)tensors resultTensor:(id)tensor;
- (_MLCCPUReduction)initWithDevice:(id)device reduceType:(int)type dimensions:(id)dimensions;
@end

@implementation _MLCCPUReduction

- (_MLCCPUReduction)initWithDevice:(id)device reduceType:(int)type dimensions:(id)dimensions
{
  v30 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v9 = [MEMORY[0x277CBEBF8] mutableCopy];
  bzero(v24, 0x218uLL);
  if (type <= 4)
  {
    if (type > 2)
    {
      if (type == 3)
      {
LABEL_20:
        v11 = [MEMORY[0x277CBEA90] dataWithBytes:v24 length:536];
        memset(v29, 0, sizeof(v29));
        memset(v28, 0, sizeof(v28));
        v12 = [MEMORY[0x277CBEA90] dataWithBytes:v28 length:176];
        v13 = [MEMORY[0x277CBEA90] dataWithBytes:v29 length:176];
        memset(v23, 0, sizeof(v23));
        v14 = [MEMORY[0x277CBEA90] dataWithBytes:v23 length:176];
        v27[0] = v12;
        v27[1] = v13;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
        v26 = v14;
        v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
        v17 = [MLCCPUDeviceOps deviceOpsWithType:43 params:v11 inDeltaData:v15 outDeltaData:v16 weightsDeltaData:0 biasDeltaData:0 weightsMomentumData:0 biasMomentumData:0];

        [v17 setBinaryOperation:0];
        if (v17)
        {
          [v9 addObject:v17];
        }

        v18 = [v9 copy];
        v22.receiver = self;
        v22.super_class = _MLCCPUReduction;
        self = [(_MLCCPULayer *)&v22 initWithDevice:deviceCopy deviceOps:v18];

        selfCopy = self;
        goto LABEL_23;
      }

      v10 = 1;
LABEL_19:
      v25 = v10;
      goto LABEL_20;
    }

    if (type == 1)
    {
      v10 = 6;
      goto LABEL_19;
    }

    if (type == 2)
    {
      v10 = 4;
      goto LABEL_19;
    }
  }

  else
  {
    if (type <= 6)
    {
      if (type == 5)
      {
        v10 = 2;
      }

      else
      {
        v10 = 3;
      }

      goto LABEL_19;
    }

    switch(type)
    {
      case 7:
        v10 = 9;
        goto LABEL_19;
      case 8:
        v10 = 10;
        goto LABEL_19;
      case 9:
        v10 = 11;
        goto LABEL_19;
    }
  }

  v11 = +[MLCLog framework];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [_MLCCPUReduction initWithDevice:a2 reduceType:type dimensions:v11];
  }

  selfCopy = 0;
LABEL_23:

  v20 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

+ (BOOL)compileWithDevice:(id)device deviceOps:(id)ops sourceTensors:(id)tensors resultTensor:(id)tensor
{
  tensorsCopy = tensors;
  tensorCopy = tensor;
  v36 = [ops objectAtIndexedSubscript:0];
  params = [v36 params];
  bytes = [params bytes];

  v11 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor = [v11 descriptor];
  shape = [descriptor shape];
  v14 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor2 = [v14 descriptor];
  stride = [descriptor2 stride];
  v37 = tensorsCopy;
  v17 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor3 = [v17 descriptor];
  v34 = bytes;
  LODWORD(tensorsCopy) = CPU_BuildBNNSNDArrayLastMajorDescriptor(bytes, shape, stride, 0, [descriptor3 dataType]);

  if (!tensorsCopy)
  {
    v32 = 0;
    v19 = tensorCopy;
LABEL_8:
    v28 = v36;
    v27 = v37;
    goto LABEL_9;
  }

  v19 = tensorCopy;
  descriptor4 = [tensorCopy descriptor];
  shape2 = [descriptor4 shape];
  descriptor5 = [tensorCopy descriptor];
  stride2 = [descriptor5 stride];
  descriptor6 = [tensorCopy descriptor];
  MajorDescriptor = CPU_BuildBNNSNDArrayLastMajorDescriptor(v34 + 176, shape2, stride2, 0, [descriptor6 dataType]);

  if (!MajorDescriptor)
  {
    v32 = 0;
    goto LABEL_8;
  }

  memset(v38, 0, sizeof(v38));
  LODWORD(v38[0]) = 1;
  v26 = MEMORY[0x23EE75CE0](v34, v38);
  v28 = v36;
  v27 = v37;
  if (v26)
  {
    v29 = [v37 objectAtIndexedSubscript:0];
    [v36 setSourceStride:CPU_SetBatchStride(v29)];

    [v36 setResultStride:CPU_SetBatchStride(tensorCopy)];
  }

  objc_opt_class();
  v30 = objc_opt_new();
  [v36 setLayer:v30];

  layer = [v36 layer];
  [layer setFilter:v26];

  v32 = 1;
LABEL_9:

  return v32;
}

- (void)initWithDevice:(const char *)a1 reduceType:(int)a2 dimensions:(NSObject *)a3 .cold.1(const char *a1, int a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromSelector(a1);
  v7 = 138412546;
  v8 = v5;
  v9 = 1024;
  v10 = a2;
  _os_log_error_impl(&dword_238C1D000, a3, OS_LOG_TYPE_ERROR, "%@: unknown reduceType type = %d", &v7, 0x12u);

  v6 = *MEMORY[0x277D85DE8];
}

@end