@interface _MLCCPUPooling
+ (BOOL)compileWithDevice:(id)device deviceOps:(id)ops sourceTensors:(id)tensors resultTensor:(id)tensor;
+ (id)layerWithDevice:(id)device descriptor:(id)descriptor;
- (_MLCCPUPooling)initWithDevice:(id)device descriptor:(id)descriptor;
@end

@implementation _MLCCPUPooling

- (_MLCCPUPooling)initWithDevice:(id)device descriptor:(id)descriptor
{
  v35[1] = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  deviceCopy = device;
  v8 = [MEMORY[0x277CBEBF8] mutableCopy];
  bzero(v24, 0x2A8uLL);
  poolingType = [descriptorCopy poolingType];
  switch(poolingType)
  {
    case 1:
      v10 = 0;
      break;
    case 3:
      v10 = 4;
      break;
    case 2:
      if ([descriptorCopy countIncludesPadding])
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
  kernelWidth = [descriptorCopy kernelWidth];
  kernelHeight = [descriptorCopy kernelHeight];
  strideInX = [descriptorCopy strideInX];
  strideInY = [descriptorCopy strideInY];
  dilationRateInX = [descriptorCopy dilationRateInX];
  dilationRateInY = [descriptorCopy dilationRateInY];
  if ([descriptorCopy paddingPolicy] == 2)
  {
    paddingSizeInX = [descriptorCopy paddingSizeInX];
    paddingSizeInY = [descriptorCopy paddingSizeInY];
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
    [v16 setPaddingPolicy:{objc_msgSend(descriptorCopy, "paddingPolicy")}];
    [v8 addObject:v16];
  }

  v17 = [v8 copy];
  v21.receiver = self;
  v21.super_class = _MLCCPUPooling;
  v18 = [(_MLCCPULayer *)&v21 initWithDevice:deviceCopy deviceOps:v17];

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

+ (id)layerWithDevice:(id)device descriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  deviceCopy = device;
  v8 = [[self alloc] initWithDevice:deviceCopy descriptor:descriptorCopy];

  return v8;
}

+ (BOOL)compileWithDevice:(id)device deviceOps:(id)ops sourceTensors:(id)tensors resultTensor:(id)tensor
{
  tensorsCopy = tensors;
  tensorCopy = tensor;
  v46 = [ops objectAtIndexedSubscript:0];
  params = [v46 params];
  bytes = [params bytes];
  v10 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor = [v10 descriptor];
  shape = [descriptor shape];
  v13 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor2 = [v13 descriptor];
  stride = [descriptor2 stride];
  v47 = tensorsCopy;
  v16 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor3 = [v16 descriptor];
  LODWORD(tensorsCopy) = CPU_BuildBNNSNDArrayDescriptor(bytes, shape, stride, 0, [descriptor3 dataType], 1, 0);

  if (tensorsCopy)
  {
    v18 = tensorCopy;
    descriptor4 = [tensorCopy descriptor];
    shape2 = [descriptor4 shape];
    descriptor5 = [tensorCopy descriptor];
    stride2 = [descriptor5 stride];
    descriptor6 = [tensorCopy descriptor];
    v24 = CPU_BuildBNNSNDArrayDescriptor(bytes + 176, shape2, stride2, 0, [descriptor6 dataType], 1, 0);

    if (v24)
    {
      v25 = v46;
      v26 = v47;
      if ([v46 paddingPolicy] != 2)
      {
        v27 = *(bytes + 600);
        v28 = (v27 * *(bytes + 184));
        v29 = *(bytes + 8);
        if (*(bytes + 576))
        {
          v30 = v28 - ((v29 - *(bytes + 584)) + v27);
          if (v30 < 0.0)
          {
            v30 = 0.0;
          }

          v31 = (v30 * 0.5);
          *(bytes + 648) = v31;
          *(bytes + 656) = (v30 - v31);
          v32 = *(bytes + 608);
          v33 = v32 * *(bytes + 192);
          v34 = *(bytes + 592);
        }

        else
        {
          v35 = v28 - ((v29 - ((*(bytes + 584) - 1) * *(bytes + 616) + 1)) + v27);
          if (v35 < 0.0)
          {
            v35 = 0.0;
          }

          v36 = (v35 * 0.5);
          *(bytes + 648) = v36;
          *(bytes + 656) = (v35 - v36);
          v32 = *(bytes + 608);
          v33 = v32 * *(bytes + 192);
          v34 = (*(bytes + 592) - 1) * *(bytes + 624) + 1;
        }

        v37 = v33 - ((*(bytes + 16) - v34) + v32);
        if (v37 < 0.0)
        {
          v37 = 0.0;
        }

        v38 = (v37 * 0.5);
        *(bytes + 664) = v38;
        *(bytes + 672) = (v37 - v38);
      }

      memset(v48, 0, sizeof(v48));
      LODWORD(v48[0]) = 1;
      v39 = MEMORY[0x23EE75CD0](bytes, v48);
      if (v39)
      {
        v40 = [v47 objectAtIndexedSubscript:0];
        [v46 setSourceStride:CPU_SetBatchStride(v40)];

        [v46 setResultStride:CPU_SetBatchStride(tensorCopy)];
      }

      objc_opt_class();
      v41 = objc_opt_new();
      [v46 setLayer:v41];

      layer = [v46 layer];
      [layer setFilter:v39];

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
    v18 = tensorCopy;
  }

  return v24;
}

@end