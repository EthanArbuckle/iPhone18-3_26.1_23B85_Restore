@interface _MLCCPUPooling
+ (BOOL)compileWithDevice:(id)a3 deviceOps:(id)a4 sourceTensors:(id)a5 resultTensor:(id)a6;
+ (id)layerWithDevice:(id)a3 descriptor:(id)a4;
- (_MLCCPUPooling)initWithDevice:(id)a3 descriptor:(id)a4;
@end

@implementation _MLCCPUPooling

- (_MLCCPUPooling)initWithDevice:(id)a3 descriptor:(id)a4
{
  v35[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [MEMORY[0x277CBEBF8] mutableCopy];
  bzero(v24, 0x2A8uLL);
  v9 = [v6 poolingType];
  switch(v9)
  {
    case 1:
      v10 = 0;
      break;
    case 3:
      v10 = 4;
      break;
    case 2:
      if ([v6 countIncludesPadding])
      {
        v10 = 1;
      }

      else
      {
        v10 = 2;
      }

      break;
    default:
      goto LABEL_10;
  }

  v25 = v10;
LABEL_10:
  v26 = [v6 kernelWidth];
  v27 = [v6 kernelHeight];
  v28 = [v6 strideInX];
  v29 = [v6 strideInY];
  v30 = [v6 dilationRateInX];
  v31 = [v6 dilationRateInY];
  if ([v6 paddingPolicy] == 2)
  {
    v32 = [v6 paddingSizeInX];
    v33 = [v6 paddingSizeInY];
  }

  v11 = [MEMORY[0x277CBEA90] dataWithBytes:v24 length:680];
  memset(v23, 0, sizeof(v23));
  memset(v22, 0, sizeof(v22));
  v12 = [MEMORY[0x277CBEA90] dataWithBytes:v23 length:176];
  v13 = [MEMORY[0x277CBEA90] dataWithBytes:v22 length:176];
  v35[0] = v12;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
  v34 = v13;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
  v16 = [MLCCPUDeviceOps deviceOpsWithType:15 params:v11 inDeltaData:v14 outDeltaData:v15 weightsDeltaData:0 biasDeltaData:0 weightsMomentumData:0 biasMomentumData:0];

  if (v16)
  {
    [v16 setPaddingPolicy:{objc_msgSend(v6, "paddingPolicy")}];
    [v8 addObject:v16];
  }

  v17 = [v8 copy];
  v21.receiver = self;
  v21.super_class = _MLCCPUPooling;
  v18 = [(_MLCCPULayer *)&v21 initWithDevice:v7 deviceOps:v17];

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

+ (id)layerWithDevice:(id)a3 descriptor:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithDevice:v7 descriptor:v6];

  return v8;
}

+ (BOOL)compileWithDevice:(id)a3 deviceOps:(id)a4 sourceTensors:(id)a5 resultTensor:(id)a6
{
  v8 = a5;
  v44 = a6;
  v46 = [a4 objectAtIndexedSubscript:0];
  v45 = [v46 params];
  v9 = [v45 bytes];
  v10 = [v8 objectAtIndexedSubscript:0];
  v11 = [v10 descriptor];
  v12 = [v11 shape];
  v13 = [v8 objectAtIndexedSubscript:0];
  v14 = [v13 descriptor];
  v15 = [v14 stride];
  v47 = v8;
  v16 = [v8 objectAtIndexedSubscript:0];
  v17 = [v16 descriptor];
  LODWORD(v8) = CPU_BuildBNNSNDArrayDescriptor(v9, v12, v15, 0, [v17 dataType], 1, 0);

  if (v8)
  {
    v18 = v44;
    v19 = [v44 descriptor];
    v20 = [v19 shape];
    v21 = [v44 descriptor];
    v22 = [v21 stride];
    v23 = [v44 descriptor];
    v24 = CPU_BuildBNNSNDArrayDescriptor(v9 + 176, v20, v22, 0, [v23 dataType], 1, 0);

    if (v24)
    {
      v25 = v46;
      v26 = v47;
      if ([v46 paddingPolicy] != 2)
      {
        v27 = *(v9 + 600);
        v28 = (v27 * *(v9 + 184));
        v29 = *(v9 + 8);
        if (*(v9 + 576))
        {
          v30 = v28 - ((v29 - *(v9 + 584)) + v27);
          if (v30 < 0.0)
          {
            v30 = 0.0;
          }

          v31 = (v30 * 0.5);
          *(v9 + 648) = v31;
          *(v9 + 656) = (v30 - v31);
          v32 = *(v9 + 608);
          v33 = v32 * *(v9 + 192);
          v34 = *(v9 + 592);
        }

        else
        {
          v35 = v28 - ((v29 - ((*(v9 + 584) - 1) * *(v9 + 616) + 1)) + v27);
          if (v35 < 0.0)
          {
            v35 = 0.0;
          }

          v36 = (v35 * 0.5);
          *(v9 + 648) = v36;
          *(v9 + 656) = (v35 - v36);
          v32 = *(v9 + 608);
          v33 = v32 * *(v9 + 192);
          v34 = (*(v9 + 592) - 1) * *(v9 + 624) + 1;
        }

        v37 = v33 - ((*(v9 + 16) - v34) + v32);
        if (v37 < 0.0)
        {
          v37 = 0.0;
        }

        v38 = (v37 * 0.5);
        *(v9 + 664) = v38;
        *(v9 + 672) = (v37 - v38);
      }

      memset(v48, 0, sizeof(v48));
      LODWORD(v48[0]) = 1;
      v39 = MEMORY[0x23EE75CD0](v9, v48);
      if (v39)
      {
        v40 = [v47 objectAtIndexedSubscript:0];
        [v46 setSourceStride:CPU_SetBatchStride(v40)];

        [v46 setResultStride:CPU_SetBatchStride(v44)];
      }

      objc_opt_class();
      v41 = objc_opt_new();
      [v46 setLayer:v41];

      v42 = [v46 layer];
      [v42 setFilter:v39];

      LOBYTE(v24) = 1;
    }

    else
    {
      v25 = v46;
      v26 = v47;
    }
  }

  else
  {
    LOBYTE(v24) = 0;
    v25 = v46;
    v26 = v47;
    v18 = v44;
  }

  return v24;
}

@end