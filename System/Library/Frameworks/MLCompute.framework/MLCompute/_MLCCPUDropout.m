@interface _MLCCPUDropout
+ (BOOL)compileWithDevice:(id)a3 deviceOps:(id)a4 sourceTensors:(id)a5 resultTensor:(id)a6;
+ (id)layerWithDevice:(id)a3 rate:(float)a4 seed:(unint64_t)a5;
- (_MLCCPUDropout)initWithDevice:(id)a3 rate:(float)a4 seed:(unint64_t)a5;
@end

@implementation _MLCCPUDropout

- (_MLCCPUDropout)initWithDevice:(id)a3 rate:(float)a4 seed:(unint64_t)a5
{
  v5 = a5;
  v28[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [MEMORY[0x277CBEBF8] mutableCopy];
  v26 = 0;
  memset(v23, 0, sizeof(v23));
  v24 = a4;
  v25 = v5;
  v10 = [MEMORY[0x277CBEA90] dataWithBytes:v23 length:368];
  memset(v22, 0, sizeof(v22));
  memset(v21, 0, sizeof(v21));
  v11 = [MEMORY[0x277CBEA90] dataWithBytes:v22 length:176];
  v12 = [MEMORY[0x277CBEA90] dataWithBytes:v21 length:176];
  v28[0] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
  v27 = v12;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
  v15 = [MLCCPUDeviceOps deviceOpsWithType:8 params:v10 inDeltaData:v13 outDeltaData:v14 weightsDeltaData:0 biasDeltaData:0 weightsMomentumData:0 biasMomentumData:0];

  if (v15)
  {
    [v9 addObject:v15];
  }

  v16 = [v9 copy];
  v20.receiver = self;
  v20.super_class = _MLCCPUDropout;
  v17 = [(_MLCCPULayer *)&v20 initWithDevice:v8 deviceOps:v16];

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

+ (id)layerWithDevice:(id)a3 rate:(float)a4 seed:(unint64_t)a5
{
  v8 = a3;
  v9 = [a1 alloc];
  *&v10 = a4;
  v11 = [v9 initWithDevice:v8 rate:a5 seed:v10];

  return v11;
}

+ (BOOL)compileWithDevice:(id)a3 deviceOps:(id)a4 sourceTensors:(id)a5 resultTensor:(id)a6
{
  v8 = a5;
  v9 = a6;
  v35 = [a4 objectAtIndexedSubscript:0];
  v34 = [v35 params];
  v10 = [v34 bytes];
  v11 = [v8 objectAtIndexedSubscript:0];
  v12 = [v11 descriptor];
  v13 = [v12 shape];
  v14 = [v8 objectAtIndexedSubscript:0];
  v15 = [v14 descriptor];
  v16 = [v15 stride];
  v36 = v8;
  v17 = [v8 objectAtIndexedSubscript:0];
  v18 = [v17 descriptor];
  v33 = v10;
  LODWORD(v10) = CPU_BuildBNNSNDArrayDescriptor(v10, v13, v16, 0, [v18 dataType], 1, 0);

  if (!v10)
  {
    goto LABEL_6;
  }

  v19 = [v9 descriptor];
  v20 = [v19 shape];
  v21 = [v9 descriptor];
  v22 = [v21 stride];
  v23 = [v9 descriptor];
  v24 = CPU_BuildBNNSNDArrayDescriptor(v33 + 176, v20, v22, 0, [v23 dataType], 1, 0);

  if (v24)
  {
    memset(v37, 0, sizeof(v37));
    LODWORD(v37[0]) = 1;
    v25 = MEMORY[0x23EE75C60](v33, v37);
    v27 = v35;
    v26 = v36;
    if (v25)
    {
      v28 = [v36 objectAtIndexedSubscript:0];
      [v35 setSourceStride:CPU_SetBatchStride(v28)];

      [v35 setResultStride:CPU_SetBatchStride(v9)];
    }

    objc_opt_class();
    v29 = objc_opt_new();
    [v35 setLayer:v29];

    v30 = [v35 layer];
    [v30 setFilter:v25];

    v31 = 1;
  }

  else
  {
LABEL_6:
    v31 = 0;
    v27 = v35;
    v26 = v36;
  }

  return v31;
}

@end