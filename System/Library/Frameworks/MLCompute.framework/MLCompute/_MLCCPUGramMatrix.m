@interface _MLCCPUGramMatrix
+ (BOOL)compileWithDevice:(id)a3 deviceOps:(id)a4 sourceTensors:(id)a5 resultTensor:(id)a6;
+ (id)layerWithDevice:(id)a3 scale:(float)a4;
- (_MLCCPUGramMatrix)initWithDevice:(id)a3 scale:(float)a4;
@end

@implementation _MLCCPUGramMatrix

- (_MLCCPUGramMatrix)initWithDevice:(id)a3 scale:(float)a4
{
  v24[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277CBEBF8] mutableCopy];
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  *v21 = a4;
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
  v15 = [(_MLCCPULayer *)&v18 initWithDevice:v6 deviceOps:v14];

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

+ (id)layerWithDevice:(id)a3 scale:(float)a4
{
  v6 = a3;
  v7 = [a1 alloc];
  *&v8 = a4;
  v9 = [v7 initWithDevice:v6 scale:v8];

  return v9;
}

+ (BOOL)compileWithDevice:(id)a3 deviceOps:(id)a4 sourceTensors:(id)a5 resultTensor:(id)a6
{
  v8 = 65552;
  v9 = a5;
  v10 = a6;
  v11 = [a4 objectAtIndexedSubscript:0];
  v12 = [v11 params];
  v13 = [v12 bytes];
  v14 = [v9 objectAtIndexedSubscript:0];
  v15 = [v14 descriptor];
  v16 = [v15 dataType];

  v17 = 65568;
  if (v16 == 1)
  {
    v67 = v12;
    v18 = 4;
LABEL_5:
    *(v13 + 152) = v17;
    *(v13 + 12) = 196608;
    v19 = [v9 objectAtIndexedSubscript:0];
    v20 = [v19 descriptor];
    v21 = [v20 shape];
    v22 = [v21 objectAtIndexedSubscript:3];
    *(v13 + 16) = [v22 unsignedIntegerValue];

    v23 = [v9 objectAtIndexedSubscript:0];
    v24 = [v23 descriptor];
    v25 = [v24 shape];
    v26 = [v25 objectAtIndexedSubscript:2];
    *(v13 + 24) = [v26 unsignedIntegerValue];

    v27 = [v9 objectAtIndexedSubscript:0];
    v28 = [v27 descriptor];
    v29 = [v28 shape];
    v30 = [v29 objectAtIndexedSubscript:1];
    *(v13 + 32) = [v30 unsignedIntegerValue];

    v31 = [v9 objectAtIndexedSubscript:0];
    v32 = [v31 descriptor];
    v33 = [v32 stride];
    v34 = [v33 objectAtIndexedSubscript:3];
    *(v13 + 80) = [v34 unsignedIntegerValue] / v18;

    v35 = [v9 objectAtIndexedSubscript:0];
    v36 = [v35 descriptor];
    v37 = [v36 stride];
    v38 = [v37 objectAtIndexedSubscript:2];
    *(v13 + 88) = [v38 unsignedIntegerValue] / v18;

    v39 = [v9 objectAtIndexedSubscript:0];
    v40 = [v39 descriptor];
    v41 = [v40 stride];
    v42 = [v41 objectAtIndexedSubscript:1];
    *(v13 + 96) = [v42 unsignedIntegerValue] / v18;

    *(v13 + 172) = 1065353216;
    v43 = [v10 descriptor];
    v44 = [v43 dataType];

    if (v44 == 1)
    {
      v45 = 4;
      v8 = 65568;
    }

    else
    {
      if (v44 != 3)
      {
        v64 = +[MLCLog framework];
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          [_MLCCPUGramMatrix compileWithDevice:a2 deviceOps:v10 sourceTensors:v64 resultTensor:?];
        }

        v47 = 0;
        goto LABEL_18;
      }

      v45 = 2;
    }

    *(v13 + 328) = v8;
    *(v13 + 188) = 163840;
    v48 = [v10 descriptor];
    v49 = [v48 shape];
    v50 = [v49 objectAtIndexedSubscript:1];
    *(v13 + 192) = [v50 unsignedIntegerValue];

    v51 = [v10 descriptor];
    v52 = [v51 shape];
    v53 = [v52 objectAtIndexedSubscript:1];
    *(v13 + 200) = [v53 unsignedIntegerValue];

    *(v13 + 208) = 1;
    v54 = [v10 descriptor];
    v55 = [v54 stride];
    v56 = [v55 objectAtIndexedSubscript:3];
    *(v13 + 256) = [v56 unsignedIntegerValue] / v45;

    v57 = [v10 descriptor];
    v58 = [v57 stride];
    v59 = [v58 objectAtIndexedSubscript:2];
    *(v13 + 264) = [v59 unsignedIntegerValue] / v45;

    *(v13 + 272) = 0;
    *(v13 + 348) = 1065353216;
    memset(&filter_params, 0, sizeof(filter_params));
    filter_params.flags = 1;
    v60 = BNNSFilterCreateLayerGram(v13, &filter_params);
    if (v60)
    {
      v61 = [v9 objectAtIndexedSubscript:0];
      [v11 setSourceStride:CPU_SetBatchStride(v61)];

      [v11 setResultStride:CPU_SetBatchStride(v10)];
    }

    objc_opt_class();
    v62 = objc_opt_new();
    [v11 setLayer:v62];

    v63 = [v11 layer];
    [v63 setFilter:v60];

    v47 = 1;
LABEL_18:
    v12 = v67;
    goto LABEL_19;
  }

  if (v16 == 3)
  {
    v67 = v12;
    v18 = 2;
    v17 = 65552;
    goto LABEL_5;
  }

  v46 = +[MLCLog framework];
  if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
  {
    [_MLCCPUGramMatrix compileWithDevice:a2 deviceOps:v9 sourceTensors:v46 resultTensor:?];
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