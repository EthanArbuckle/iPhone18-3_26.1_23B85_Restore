@interface _MLCCPUSlice
+ (BOOL)compileWithDevice:(id)a3 deviceOps:(id)a4 sourceTensors:(id)a5 resultTensor:(id)a6;
+ (id)layerWithDevice:(id)a3 begin:(id)a4 end:(id)a5 stride:(id)a6;
- (_MLCCPUSlice)initWithDevice:(id)a3 begin:(id)a4 end:(id)a5 stride:(id)a6;
@end

@implementation _MLCCPUSlice

+ (id)layerWithDevice:(id)a3 begin:(id)a4 end:(id)a5 stride:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[a1 alloc] initWithDevice:v13 begin:v12 end:v11 stride:v10];

  return v14;
}

- (_MLCCPUSlice)initWithDevice:(id)a3 begin:(id)a4 end:(id)a5 stride:(id)a6
{
  v48[1] = *MEMORY[0x277D85DE8];
  v44 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = MEMORY[0x277CBEBF8];
  v13 = [MEMORY[0x277CBEBF8] mutableCopy];
  v14 = [v12 mutableCopy];
  if ([v9 count])
  {
    v15 = 0;
    do
    {
      v16 = [v11 objectAtIndexedSubscript:v15];
      v17 = [v16 integerValue];
      v18 = v14;
      v19 = v13;
      v20 = v11;
      if (v17 >= 0)
      {
        v21 = v17;
      }

      else
      {
        v21 = -v17;
      }

      v22 = [v10 objectAtIndexedSubscript:v15];
      v23 = [v22 unsignedIntegerValue];
      v24 = [v9 objectAtIndexedSubscript:v15];
      v25 = (v23 + ~[v24 unsignedIntegerValue]) / v21;

      v26 = v25 + 1;
      v11 = v20;
      v13 = v19;
      v14 = v18;
      v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v26];
      [v18 addObject:v27];

      v28 = MEMORY[0x277CCABB0];
      v29 = [v9 objectAtIndexedSubscript:v15];
      v30 = [v28 numberWithUnsignedInteger:{objc_msgSend(v29, "unsignedIntegerValue")}];
      [v13 addObject:v30];

      ++v15;
    }

    while (v15 < [v9 count]);
  }

  v42 = v10;
  v31 = [MEMORY[0x277CBEBF8] mutableCopy];
  memset(v46, 0, sizeof(v46));
  v32 = [MEMORY[0x277CBEA90] dataWithBytes:v46 length:176];
  v33 = [MEMORY[0x277CBEA90] dataWithBytes:v46 length:176];
  v41 = v32;
  v48[0] = v32;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:1];
  v47 = v33;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
  v36 = [MLCSliceCPUDeviceOps deviceOpsWithType:48 params:0 inDeltaData:v34 outDeltaData:v35 weightsDeltaData:0 biasDeltaData:0 weightsMomentumData:0 biasMomentumData:0];

  if (v36)
  {
    [v36 setBegin:v13];
    [v36 setCount:v14];
    [v36 setStride:v11];
    [v31 addObject:v36];
  }

  v37 = [v31 copy];
  v45.receiver = self;
  v45.super_class = _MLCCPUSlice;
  v38 = [(_MLCCPULayer *)&v45 initWithDevice:v44 deviceOps:v37];

  v39 = *MEMORY[0x277D85DE8];
  return v38;
}

+ (BOOL)compileWithDevice:(id)a3 deviceOps:(id)a4 sourceTensors:(id)a5 resultTensor:(id)a6
{
  v8 = a5;
  v9 = a6;
  v10 = [a4 objectAtIndexedSubscript:0];
  v11 = [v10 inDeltaData];
  v12 = [v11 objectAtIndexedSubscript:0];
  v59 = [v12 bytes];

  v63 = v10;
  v13 = [v10 outDeltaData];
  v14 = [v13 objectAtIndexedSubscript:0];
  v58 = [v14 bytes];

  v62 = [MEMORY[0x277CBEBF8] mutableCopy];
  v60 = v9;
  v15 = [v9 descriptor];
  v16 = [v15 dimensionCount];

  v61 = v8;
  if (v16)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = MEMORY[0x277CCABB0];
      v20 = [v8 objectAtIndexedSubscript:0];
      v21 = [v20 descriptor];
      v22 = [v21 stride];
      v23 = [v22 objectAtIndexedSubscript:v17];
      v24 = [v23 unsignedIntegerValue];
      v25 = [v63 stride];
      v26 = [v25 objectAtIndexedSubscript:v17];
      v27 = [v19 numberWithUnsignedInteger:{objc_msgSend(v26, "unsignedIntegerValue") * v24}];
      [v62 addObject:v27];

      v8 = v61;
      v28 = [v61 objectAtIndexedSubscript:0];
      v29 = [v28 descriptor];
      v30 = [v29 stride];
      v31 = [v30 objectAtIndexedSubscript:v17];
      v32 = [v31 unsignedIntegerValue];
      v33 = [v63 begin];
      v34 = [v33 objectAtIndexedSubscript:v17];
      v18 += [v34 unsignedIntegerValue] * v32;

      ++v17;
      v35 = [v60 descriptor];
      v36 = [v35 dimensionCount];
    }

    while (v17 < v36);
  }

  else
  {
    v18 = 0;
  }

  v37 = v63;
  [v63 setBeginOffset:v18];
  [v63 setStride:v62];
  v38 = [v63 count];
  v39 = [v8 objectAtIndexedSubscript:0];
  v40 = [v39 descriptor];
  v41 = [v40 dataType];
  v42 = [v8 objectAtIndexedSubscript:0];
  v43 = [v42 descriptor];
  LOBYTE(v41) = CPU_BuildBNNSNDArrayDescriptorRowMajor(v59, v38, v62, 0, v41, [v43 dimensionCount], 0);

  if (v41)
  {
    v44 = v60;
    v45 = [v60 descriptor];
    v46 = [v45 shape];
    v47 = [v60 descriptor];
    v48 = [v47 stride];
    v49 = [v60 descriptor];
    v50 = [v49 dataType];
    v51 = [v60 descriptor];
    v52 = CPU_BuildBNNSNDArrayDescriptorRowMajor(v58, v46, v48, 0, v50, [v51 dimensionCount], 0);

    if (v52)
    {
      objc_opt_class();
      v53 = objc_opt_new();
      v37 = v63;
      [v63 setLayer:v53];

      v54 = 1;
      v55 = v61;
    }

    else
    {
      v54 = 0;
      v55 = v61;
      v37 = v63;
    }

    v56 = v62;
  }

  else
  {
    v56 = v62;
    v54 = 0;
    v44 = v60;
    v55 = v61;
  }

  return v54;
}

@end