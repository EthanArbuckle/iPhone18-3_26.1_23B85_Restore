@interface _MLCGPUCompare
+ (BOOL)compileWithDevice:(id)device deviceOps:(id)ops sourceTensors:(id)tensors resultTensor:(id)tensor;
- (_MLCGPUCompare)initWithDevice:(id)device operation:(int)operation;
@end

@implementation _MLCGPUCompare

- (_MLCGPUCompare)initWithDevice:(id)device operation:(int)operation
{
  v28 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v23.receiver = self;
  v23.super_class = _MLCGPUCompare;
  v8 = [(_MLCGPUCompare *)&v23 init];
  if (v8)
  {
    deviceList = [deviceCopy deviceList];
    v10 = [deviceList count];

    v11 = [MEMORY[0x277CBEBF8] mutableCopy];
    if (v10)
    {
      v13 = 0;
      *&v12 = 138412546;
      v21 = v12;
      do
      {
        if ((operation - 6) < 6)
        {
          gpuPipelineStatesCompareLogicalOpForward = [deviceCopy gpuPipelineStatesCompareLogicalOpForward];
        }

        else
        {
          if (operation > 5)
          {
            v16 = +[MLCLog framework];
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              v17 = NSStringFromSelector(a2);
              *buf = v21;
              v25 = v17;
              v26 = 1024;
              operationCopy = operation;
              _os_log_error_impl(&dword_238C1D000, v16, OS_LOG_TYPE_ERROR, "%@: unknown comparison type = %d", buf, 0x12u);
              goto LABEL_11;
            }

LABEL_12:

            goto LABEL_13;
          }

          gpuPipelineStatesCompareLogicalOpForward = [deviceCopy gpuPipelineStatesCompareRelationalOpForward];
        }

        v15 = gpuPipelineStatesCompareLogicalOpForward;
        v16 = [gpuPipelineStatesCompareLogicalOpForward objectAtIndexedSubscript:{v13, v21}];

        if (v16)
        {
          v17 = [MLCGPUDeviceOps deviceOpsWithForwardKernel:v16];
          [v17 setSourceOfForwardNeededForGradient:0];
          [v17 setResultOfForwardNeededForGradient:0];
          if (v17)
          {
            [v17 setLayer:objc_opt_class()];
            [v11 addObject:v17];
          }

LABEL_11:

          goto LABEL_12;
        }

LABEL_13:
        ++v13;
      }

      while (v10 != v13);
    }

    v18 = [v11 copy];
    v22.receiver = v8;
    v22.super_class = _MLCGPUCompare;
    [(_MLCGPULayer *)&v22 setDeviceOps:v18];
  }

  v19 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (BOOL)compileWithDevice:(id)device deviceOps:(id)ops sourceTensors:(id)tensors resultTensor:(id)tensor
{
  deviceCopy = device;
  opsCopy = ops;
  tensorsCopy = tensors;
  v10 = MEMORY[0x277CBEBF8];
  v71 = [MEMORY[0x277CBEBF8] mutableCopy];
  v69 = [v10 mutableCopy];
  v11 = [tensorsCopy count];
  v12 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor = [v12 descriptor];
  shape = [descriptor shape];
  v15 = shape;
  if (v11 != 2)
  {
    v32 = [shape copy];
LABEL_17:

LABEL_18:
    v49 = v69;
    goto LABEL_19;
  }

  v16 = [shape count];

  v17 = [tensorsCopy objectAtIndexedSubscript:1];
  descriptor2 = [v17 descriptor];
  shape2 = [descriptor2 shape];
  v20 = [shape2 count];

  if (v20 > v16)
  {
    v21 = [tensorsCopy objectAtIndexedSubscript:1];
    descriptor3 = [v21 descriptor];
    shape3 = [descriptor3 shape];
    v16 = [shape3 count];
  }

  v24 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor4 = [v24 descriptor];
  shape4 = [descriptor4 shape];
  v27 = [shape4 count];

  v28 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor5 = [v28 descriptor];
  shape5 = [descriptor5 shape];
  v31 = shape5;
  v70 = v16;
  if (v16 == v27)
  {
    v32 = [shape5 copy];
  }

  else
  {
    v33 = [shape5 count];

    if (v16)
    {
      v34 = v16;
      v65 = opsCopy;
      v35 = 0;
      v36 = v16 - v33;
      v68 = v33 - v16;
      do
      {
        if (v35 >= v36)
        {
          v38 = [tensorsCopy objectAtIndexedSubscript:0];
          descriptor6 = [v38 descriptor];
          shape6 = [descriptor6 shape];
          v41 = [shape6 objectAtIndexedSubscript:v68 + v35];
          unsignedIntegerValue = [v41 unsignedIntegerValue];

          v34 = v70;
        }

        else
        {
          unsignedIntegerValue = 1;
        }

        v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{unsignedIntegerValue, v65}];
        [v71 setObject:v42 atIndexedSubscript:v35];

        ++v35;
      }

      while (v34 != v35);
      v32 = v71;
      opsCopy = v65;
    }

    else
    {
      v32 = v71;
    }
  }

  v43 = [tensorsCopy objectAtIndexedSubscript:1];
  descriptor7 = [v43 descriptor];
  shape7 = [descriptor7 shape];
  v46 = [shape7 count];

  v12 = [tensorsCopy objectAtIndexedSubscript:1];
  descriptor = [v12 descriptor];
  shape8 = [descriptor shape];
  v15 = shape8;
  v48 = v70;
  if (v70 == v46)
  {
    v71 = v69;
    v69 = [shape8 copy];
    goto LABEL_17;
  }

  v57 = [shape8 count];

  if (!v70)
  {
    goto LABEL_18;
  }

  v66 = opsCopy;
  v58 = 0;
  v49 = v69;
  do
  {
    if (v58 >= v70 - v57)
    {
      v60 = [tensorsCopy objectAtIndexedSubscript:1];
      descriptor8 = [v60 descriptor];
      shape9 = [descriptor8 shape];
      v63 = [shape9 objectAtIndexedSubscript:v57 - v70 + v58];
      unsignedIntegerValue2 = [v63 unsignedIntegerValue];

      v48 = v70;
      v49 = v69;
    }

    else
    {
      unsignedIntegerValue2 = 1;
    }

    v64 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{unsignedIntegerValue2, v66}];
    [v49 setObject:v64 atIndexedSubscript:v58];

    ++v58;
  }

  while (v48 != v58);
  opsCopy = v66;
LABEL_19:
  deviceList = [deviceCopy deviceList];
  v51 = [deviceList count];

  if (v51)
  {
    v52 = 0;
    do
    {
      v53 = [opsCopy objectAtIndexedSubscript:v52];
      [v53 setSource0Shape:v32];
      if ([tensorsCopy count] == 2)
      {
        [v53 setSource1Shape:v49];
      }

      ++v52;
      deviceList2 = [deviceCopy deviceList];
      v55 = [deviceList2 count];
    }

    while (v52 < v55);
  }

  return 1;
}

@end