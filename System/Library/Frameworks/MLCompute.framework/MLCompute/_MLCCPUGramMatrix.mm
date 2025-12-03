@interface _MLCCPUGramMatrix
+ (BOOL)compileWithDevice:(id)device deviceOps:(id)ops sourceTensors:(id)tensors resultTensor:(id)tensor;
+ (id)layerWithDevice:(id)device scale:(float)scale;
- (_MLCCPUGramMatrix)initWithDevice:(id)device scale:(float)scale;
@end

@implementation _MLCCPUGramMatrix

- (_MLCCPUGramMatrix)initWithDevice:(id)device scale:(float)scale
{
  v24[1] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v7 = [MEMORY[0x277CBEBF8] mutableCopy];
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  *v21 = scale;
  v8 = [MEMORY[0x277CBEA90] dataWithBytes:v21 length:360];
  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  v9 = [MEMORY[0x277CBEA90] dataWithBytes:v20 length:176];
  v10 = [MEMORY[0x277CBEA90] dataWithBytes:v19 length:176];
  v24[0] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  v23 = v10;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
  v13 = [MLCCPUDeviceOps deviceOpsWithType:19 params:v8 inDeltaData:v11 outDeltaData:v12 weightsDeltaData:0 biasDeltaData:0 weightsMomentumData:0 biasMomentumData:0];

  if (v13)
  {
    [v7 addObject:v13];
  }

  v14 = [v7 copy];
  v18.receiver = self;
  v18.super_class = _MLCCPUGramMatrix;
  v15 = [(_MLCCPULayer *)&v18 initWithDevice:deviceCopy deviceOps:v14];

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

+ (id)layerWithDevice:(id)device scale:(float)scale
{
  deviceCopy = device;
  v7 = [self alloc];
  *&v8 = scale;
  v9 = [v7 initWithDevice:deviceCopy scale:v8];

  return v9;
}

+ (BOOL)compileWithDevice:(id)device deviceOps:(id)ops sourceTensors:(id)tensors resultTensor:(id)tensor
{
  v8 = 65552;
  tensorsCopy = tensors;
  tensorCopy = tensor;
  v11 = [ops objectAtIndexedSubscript:0];
  params = [v11 params];
  bytes = [params bytes];
  v14 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor = [v14 descriptor];
  dataType = [descriptor dataType];

  v17 = 65568;
  if (dataType == 1)
  {
    v67 = params;
    v18 = 4;
LABEL_5:
    *(bytes + 152) = v17;
    *(bytes + 12) = 196608;
    v19 = [tensorsCopy objectAtIndexedSubscript:0];
    descriptor2 = [v19 descriptor];
    shape = [descriptor2 shape];
    v22 = [shape objectAtIndexedSubscript:3];
    *(bytes + 16) = [v22 unsignedIntegerValue];

    v23 = [tensorsCopy objectAtIndexedSubscript:0];
    descriptor3 = [v23 descriptor];
    shape2 = [descriptor3 shape];
    v26 = [shape2 objectAtIndexedSubscript:2];
    *(bytes + 24) = [v26 unsignedIntegerValue];

    v27 = [tensorsCopy objectAtIndexedSubscript:0];
    descriptor4 = [v27 descriptor];
    shape3 = [descriptor4 shape];
    v30 = [shape3 objectAtIndexedSubscript:1];
    *(bytes + 32) = [v30 unsignedIntegerValue];

    v31 = [tensorsCopy objectAtIndexedSubscript:0];
    descriptor5 = [v31 descriptor];
    stride = [descriptor5 stride];
    v34 = [stride objectAtIndexedSubscript:3];
    *(bytes + 80) = [v34 unsignedIntegerValue] / v18;

    v35 = [tensorsCopy objectAtIndexedSubscript:0];
    descriptor6 = [v35 descriptor];
    stride2 = [descriptor6 stride];
    v38 = [stride2 objectAtIndexedSubscript:2];
    *(bytes + 88) = [v38 unsignedIntegerValue] / v18;

    v39 = [tensorsCopy objectAtIndexedSubscript:0];
    descriptor7 = [v39 descriptor];
    stride3 = [descriptor7 stride];
    v42 = [stride3 objectAtIndexedSubscript:1];
    *(bytes + 96) = [v42 unsignedIntegerValue] / v18;

    *(bytes + 172) = 1065353216;
    descriptor8 = [tensorCopy descriptor];
    dataType2 = [descriptor8 dataType];

    if (dataType2 == 1)
    {
      v45 = 4;
      v8 = 65568;
    }

    else
    {
      if (dataType2 != 3)
      {
        v64 = +[MLCLog framework];
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          [_MLCCPUGramMatrix compileWithDevice:a2 deviceOps:tensorCopy sourceTensors:v64 resultTensor:?];
        }

        v47 = 0;
        goto LABEL_18;
      }

      v45 = 2;
    }

    *(bytes + 328) = v8;
    *(bytes + 188) = 163840;
    descriptor9 = [tensorCopy descriptor];
    shape4 = [descriptor9 shape];
    v50 = [shape4 objectAtIndexedSubscript:1];
    *(bytes + 192) = [v50 unsignedIntegerValue];

    descriptor10 = [tensorCopy descriptor];
    shape5 = [descriptor10 shape];
    v53 = [shape5 objectAtIndexedSubscript:1];
    *(bytes + 200) = [v53 unsignedIntegerValue];

    *(bytes + 208) = 1;
    descriptor11 = [tensorCopy descriptor];
    stride4 = [descriptor11 stride];
    v56 = [stride4 objectAtIndexedSubscript:3];
    *(bytes + 256) = [v56 unsignedIntegerValue] / v45;

    descriptor12 = [tensorCopy descriptor];
    stride5 = [descriptor12 stride];
    v59 = [stride5 objectAtIndexedSubscript:2];
    *(bytes + 264) = [v59 unsignedIntegerValue] / v45;

    *(bytes + 272) = 0;
    *(bytes + 348) = 1065353216;
    memset(&filter_params, 0, sizeof(filter_params));
    filter_params.flags = 1;
    v60 = BNNSFilterCreateLayerGram(bytes, &filter_params);
    if (v60)
    {
      v61 = [tensorsCopy objectAtIndexedSubscript:0];
      [v11 setSourceStride:CPU_SetBatchStride(v61)];

      [v11 setResultStride:CPU_SetBatchStride(tensorCopy)];
    }

    objc_opt_class();
    v62 = objc_opt_new();
    [v11 setLayer:v62];

    layer = [v11 layer];
    [layer setFilter:v60];

    v47 = 1;
LABEL_18:
    params = v67;
    goto LABEL_19;
  }

  if (dataType == 3)
  {
    v67 = params;
    v18 = 2;
    v17 = 65552;
    goto LABEL_5;
  }

  v46 = +[MLCLog framework];
  if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
  {
    [_MLCCPUGramMatrix compileWithDevice:a2 deviceOps:tensorsCopy sourceTensors:v46 resultTensor:?];
  }

  v47 = 0;
LABEL_19:

  return v47;
}

+ (void)compileWithDevice:(NSObject *)a3 deviceOps:sourceTensors:resultTensor:.cold.1(const char *a1, void *a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromSelector(a1);
  v6 = [a2 descriptor];
  v8 = 138412546;
  v9 = v5;
  v10 = 1024;
  v11 = [v6 dataType];
  _os_log_error_impl(&dword_238C1D000, a3, OS_LOG_TYPE_ERROR, "%@: Unsupported result data type (%d)", &v8, 0x12u);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)compileWithDevice:(NSObject *)a3 deviceOps:sourceTensors:resultTensor:.cold.2(const char *a1, void *a2, NSObject *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromSelector(a1);
  v6 = [a2 objectAtIndexedSubscript:0];
  v7 = [v6 descriptor];
  v9 = 138412546;
  v10 = v5;
  v11 = 1024;
  v12 = [v7 dataType];
  _os_log_error_impl(&dword_238C1D000, a3, OS_LOG_TYPE_ERROR, "%@: Unsupported sources data type (%d)", &v9, 0x12u);

  v8 = *MEMORY[0x277D85DE8];
}

@end