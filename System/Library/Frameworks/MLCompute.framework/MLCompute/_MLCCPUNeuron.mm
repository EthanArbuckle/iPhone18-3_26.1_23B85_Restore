@interface _MLCCPUNeuron
+ (BOOL)compileWithDevice:(id)device deviceOps:(id)ops sourceTensors:(id)tensors resultTensor:(id)tensor;
+ (id)layerWithDevice:(id)device descriptor:(id)descriptor;
- (_MLCCPUNeuron)initWithDevice:(id)device descriptor:(id)descriptor;
@end

@implementation _MLCCPUNeuron

- (_MLCCPUNeuron)initWithDevice:(id)device descriptor:(id)descriptor
{
  v27[1] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  descriptorCopy = descriptor;
  v9 = [MEMORY[0x277CBEBF8] mutableCopy];
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  memset(v23, 0, sizeof(v23));
  if (setBNNSActivation(v24, descriptorCopy))
  {
    v10 = [MEMORY[0x277CBEA90] dataWithBytes:v23 length:408];
    memset(v22, 0, sizeof(v22));
    memset(v21, 0, sizeof(v21));
    v11 = [MEMORY[0x277CBEA90] dataWithBytes:v22 length:176];
    v12 = [MEMORY[0x277CBEA90] dataWithBytes:v21 length:176];
    v27[0] = v11;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
    v26 = v12;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
    v15 = [MLCCPUDeviceOps deviceOpsWithType:13 params:v10 inDeltaData:v13 outDeltaData:v14 weightsDeltaData:0 biasDeltaData:0 weightsMomentumData:0 biasMomentumData:0];

    if (v15)
    {
      [v9 addObject:v15];
    }

    v16 = [v9 copy];
    v20.receiver = self;
    v20.super_class = _MLCCPUNeuron;
    self = [(_MLCCPULayer *)&v20 initWithDevice:deviceCopy deviceOps:v16];

    selfCopy = self;
  }

  else
  {
    v10 = +[MLCLog framework];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [_MLCCPUNeuron initWithDevice:a2 descriptor:descriptorCopy];
    }

    selfCopy = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return selfCopy;
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
  v130[1] = *MEMORY[0x277D85DE8];
  tensorsCopy = tensors;
  tensorCopy = tensor;
  v10 = [ops objectAtIndexedSubscript:0];
  params = [v10 params];
  bytes = [params bytes];
  v121 = params;
  if ([v10 deviceOpType] != 16)
  {
    goto LABEL_30;
  }

  descriptor = [tensorCopy descriptor];
  shape = [descriptor shape];
  v15 = [shape count];

  if (v15 > 2)
  {
    if (v15 == 4)
    {
      descriptor2 = [tensorCopy descriptor];
      shape2 = [descriptor2 shape];
      v66 = [shape2 objectAtIndexedSubscript:2];
      if ([v66 unsignedIntegerValue] == 1)
      {
        v113 = bytes;
        v67 = tensorsCopy;
        descriptor3 = [tensorCopy descriptor];
        shape3 = [descriptor3 shape];
        v70 = [shape3 objectAtIndexedSubscript:3];
        if ([v70 unsignedIntegerValue] == 1)
        {
          softmaxDimension = [v10 softmaxDimension];

          tensorsCopy = v67;
          bytes = v113;
          if (softmaxDimension < 2)
          {
            goto LABEL_5;
          }

          goto LABEL_28;
        }

        tensorsCopy = v67;
        bytes = v113;
      }
    }

    else
    {
      v16 = 0;
      if (v15 != 3)
      {
        goto LABEL_34;
      }

      descriptor4 = [tensorCopy descriptor];
      shape4 = [descriptor4 shape];
      v20 = [shape4 objectAtIndexedSubscript:2];
      if ([v20 unsignedIntegerValue] == 1)
      {
        softmaxDimension2 = [v10 softmaxDimension];

        if (softmaxDimension2 != 2)
        {
          goto LABEL_5;
        }
      }

      else
      {
      }

      if ([v10 softmaxDimension] == 2)
      {
        v71 = 0;
LABEL_29:
        *(bytes + 400) = 1 << v71;
LABEL_30:
        v120 = [tensorsCopy objectAtIndexedSubscript:0];
        descriptor5 = [v120 descriptor];
        shape5 = [descriptor5 shape];
        v73 = [tensorsCopy objectAtIndexedSubscript:0];
        descriptor6 = [v73 descriptor];
        [descriptor6 stride];
        v76 = v75 = bytes;
        [tensorsCopy objectAtIndexedSubscript:0];
        v77 = v10;
        v78 = tensorCopy;
        v80 = v79 = tensorsCopy;
        descriptor7 = [v80 descriptor];
        CPU_BuildBNNSNDArrayDescriptor(v75, shape5, v76, 0, [descriptor7 dataType], 1, 0);

        tensorsCopy = v79;
        tensorCopy = v78;
        v10 = v77;

        v56 = v75;
        descriptor8 = [tensorCopy descriptor];
        shape6 = [descriptor8 shape];
        descriptor9 = [tensorCopy descriptor];
        stride = [descriptor9 stride];
        descriptor10 = [tensorCopy descriptor];
        CPU_BuildBNNSNDArrayDescriptor(v56 + 176, shape6, stride, 0, [descriptor10 dataType], 1, 0);

        goto LABEL_31;
      }
    }

LABEL_28:
    v71 = 3 - [v10 softmaxDimension];
    goto LABEL_29;
  }

  if (v15 == 1)
  {
    v17 = 0;
    goto LABEL_12;
  }

  v16 = 0;
  if (v15 != 2)
  {
    goto LABEL_34;
  }

LABEL_5:
  v17 = 1 - [v10 softmaxDimension];
LABEL_12:
  *(bytes + 400) = 1 << v17;
  v22 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor11 = [v22 descriptor];
  shape7 = [descriptor11 shape];
  v25 = [shape7 count];

  v26 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor12 = [v26 descriptor];
  shape8 = [descriptor12 shape];
  v28 = [shape8 objectAtIndexedSubscript:0];
  v112 = bytes;
  v117 = v28;
  if (v25 == 1)
  {
    v130[0] = v28;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v130 count:1];
    descriptor15 = [tensorsCopy objectAtIndexedSubscript:0];
    descriptor13 = [descriptor15 descriptor];
    stride2 = [descriptor13 stride];
    [stride2 objectAtIndexedSubscript:0];
    v31 = v30 = bytes;
    v129 = v31;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v129 count:1];
    descriptor16 = [tensorsCopy objectAtIndexedSubscript:0];
    descriptor14 = [descriptor16 descriptor];
    dataType = [descriptor14 dataType];
    v35 = v30;
    v36 = v32;
    CPU_BuildBNNSNDArrayDescriptor(v35, v29, v32, 0, dataType, 1, 0);
  }

  else
  {
    v128[0] = v28;
    v98 = [tensorsCopy objectAtIndexedSubscript:0];
    descriptor15 = [v98 descriptor];
    descriptor13 = [descriptor15 shape];
    stride2 = [descriptor13 objectAtIndexedSubscript:1];
    v128[1] = stride2;
    v95 = [MEMORY[0x277CBEA60] arrayWithObjects:v128 count:2];
    v96 = [tensorsCopy objectAtIndexedSubscript:0];
    descriptor16 = [v96 descriptor];
    descriptor14 = [descriptor16 stride];
    v97 = [descriptor14 objectAtIndexedSubscript:0];
    v127[0] = v97;
    v94 = [tensorsCopy objectAtIndexedSubscript:0];
    descriptor17 = [v94 descriptor];
    [descriptor17 stride];
    v37 = v102 = v26;
    [v37 objectAtIndexedSubscript:1];
    v38 = v100 = shape8;
    v127[1] = v38;
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v127 count:2];
    v40 = [tensorsCopy objectAtIndexedSubscript:0];
    [v40 descriptor];
    v42 = v41 = tensorsCopy;
    dataType2 = [v42 dataType];
    v44 = bytes;
    v31 = v95;
    CPU_BuildBNNSNDArrayDescriptor(v44, v95, v39, 0, dataType2, 1, 0);

    tensorsCopy = v41;
    v36 = v96;

    v29 = v98;
    shape8 = v100;

    v26 = v102;
  }

  v45 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor18 = [v45 descriptor];
  shape9 = [descriptor18 shape];
  v48 = [shape9 count];

  descriptor19 = [tensorCopy descriptor];
  shape10 = [descriptor19 shape];
  v49 = [shape10 objectAtIndexedSubscript:0];
  v111 = v49;
  if (v48 == 1)
  {
    v126 = v49;
    v50 = [MEMORY[0x277CBEA60] arrayWithObjects:&v126 count:1];
    descriptor20 = [tensorCopy descriptor];
    stride3 = [descriptor20 stride];
    v53 = [stride3 objectAtIndexedSubscript:0];
    v125 = v53;
    v54 = [MEMORY[0x277CBEA60] arrayWithObjects:&v125 count:1];
    descriptor21 = [tensorCopy descriptor];
    CPU_BuildBNNSNDArrayDescriptor(v112 + 176, v50, v54, 0, [descriptor21 dataType], 1, 0);

    v56 = v112;
  }

  else
  {
    v124[0] = v49;
    descriptor22 = [tensorCopy descriptor];
    shape11 = [descriptor22 shape];
    v105 = [shape11 objectAtIndexedSubscript:1];
    v124[1] = v105;
    v57 = [MEMORY[0x277CBEA60] arrayWithObjects:v124 count:2];
    descriptor23 = [tensorCopy descriptor];
    stride4 = [descriptor23 stride];
    v99 = [stride4 objectAtIndexedSubscript:0];
    v123[0] = v99;
    descriptor24 = [tensorCopy descriptor];
    stride5 = [descriptor24 stride];
    v60 = [stride5 objectAtIndexedSubscript:1];
    v123[1] = v60;
    [MEMORY[0x277CBEA60] arrayWithObjects:v123 count:2];
    v62 = v61 = tensorsCopy;
    descriptor25 = [tensorCopy descriptor];
    v56 = v112;
    CPU_BuildBNNSNDArrayDescriptor(v112 + 176, v57, v62, 0, [descriptor25 dataType], 1, 0);

    tensorsCopy = v61;
  }

LABEL_31:
  memset(v122, 0, sizeof(v122));
  LODWORD(v122[0]) = 1;
  v87 = MEMORY[0x23EE75C20](v56, v122);
  if (v87)
  {
    v88 = [tensorsCopy objectAtIndexedSubscript:0];
    [v10 setSourceStride:CPU_SetBatchStride(v88)];

    [v10 setResultStride:CPU_SetBatchStride(tensorCopy)];
  }

  objc_opt_class();
  v89 = objc_opt_new();
  [v10 setLayer:v89];

  layer = [v10 layer];
  [layer setFilter:v87];

  v16 = 1;
  params = v121;
LABEL_34:

  v91 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)initWithDevice:(const char *)a1 descriptor:(void *)a2 .cold.1(const char *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromSelector(a1);
  [a2 activationType];
  OUTLINED_FUNCTION_8(&dword_238C1D000, v4, v5, "%@: Unknown neuron type %d", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x277D85DE8];
}

@end