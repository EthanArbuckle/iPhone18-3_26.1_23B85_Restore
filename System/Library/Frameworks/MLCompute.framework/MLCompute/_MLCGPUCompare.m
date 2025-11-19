@interface _MLCGPUCompare
+ (BOOL)compileWithDevice:(id)a3 deviceOps:(id)a4 sourceTensors:(id)a5 resultTensor:(id)a6;
- (_MLCGPUCompare)initWithDevice:(id)a3 operation:(int)a4;
@end

@implementation _MLCGPUCompare

- (_MLCGPUCompare)initWithDevice:(id)a3 operation:(int)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v23.receiver = self;
  v23.super_class = _MLCGPUCompare;
  v8 = [(_MLCGPUCompare *)&v23 init];
  if (v8)
  {
    v9 = [v7 deviceList];
    v10 = [v9 count];

    v11 = [MEMORY[0x277CBEBF8] mutableCopy];
    if (v10)
    {
      v13 = 0;
      *&v12 = 138412546;
      v21 = v12;
      do
      {
        if ((a4 - 6) < 6)
        {
          v14 = [v7 gpuPipelineStatesCompareLogicalOpForward];
        }

        else
        {
          if (a4 > 5)
          {
            v16 = +[MLCLog framework];
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              v17 = NSStringFromSelector(a2);
              *buf = v21;
              v25 = v17;
              v26 = 1024;
              v27 = a4;
              _os_log_error_impl(&dword_238C1D000, v16, OS_LOG_TYPE_ERROR, "%@: unknown comparison type = %d", buf, 0x12u);
              goto LABEL_11;
            }

LABEL_12:

            goto LABEL_13;
          }

          v14 = [v7 gpuPipelineStatesCompareRelationalOpForward];
        }

        v15 = v14;
        v16 = [v14 objectAtIndexedSubscript:{v13, v21}];

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

+ (BOOL)compileWithDevice:(id)a3 deviceOps:(id)a4 sourceTensors:(id)a5 resultTensor:(id)a6
{
  v67 = a3;
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x277CBEBF8];
  v71 = [MEMORY[0x277CBEBF8] mutableCopy];
  v69 = [v10 mutableCopy];
  v11 = [v9 count];
  v12 = [v9 objectAtIndexedSubscript:0];
  v13 = [v12 descriptor];
  v14 = [v13 shape];
  v15 = v14;
  if (v11 != 2)
  {
    v32 = [v14 copy];
LABEL_17:

LABEL_18:
    v49 = v69;
    goto LABEL_19;
  }

  v16 = [v14 count];

  v17 = [v9 objectAtIndexedSubscript:1];
  v18 = [v17 descriptor];
  v19 = [v18 shape];
  v20 = [v19 count];

  if (v20 > v16)
  {
    v21 = [v9 objectAtIndexedSubscript:1];
    v22 = [v21 descriptor];
    v23 = [v22 shape];
    v16 = [v23 count];
  }

  v24 = [v9 objectAtIndexedSubscript:0];
  v25 = [v24 descriptor];
  v26 = [v25 shape];
  v27 = [v26 count];

  v28 = [v9 objectAtIndexedSubscript:0];
  v29 = [v28 descriptor];
  v30 = [v29 shape];
  v31 = v30;
  v70 = v16;
  if (v16 == v27)
  {
    v32 = [v30 copy];
  }

  else
  {
    v33 = [v30 count];

    if (v16)
    {
      v34 = v16;
      v65 = v8;
      v35 = 0;
      v36 = v16 - v33;
      v68 = v33 - v16;
      do
      {
        if (v35 >= v36)
        {
          v38 = [v9 objectAtIndexedSubscript:0];
          v39 = [v38 descriptor];
          v40 = [v39 shape];
          v41 = [v40 objectAtIndexedSubscript:v68 + v35];
          v37 = [v41 unsignedIntegerValue];

          v34 = v70;
        }

        else
        {
          v37 = 1;
        }

        v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{v37, v65}];
        [v71 setObject:v42 atIndexedSubscript:v35];

        ++v35;
      }

      while (v34 != v35);
      v32 = v71;
      v8 = v65;
    }

    else
    {
      v32 = v71;
    }
  }

  v43 = [v9 objectAtIndexedSubscript:1];
  v44 = [v43 descriptor];
  v45 = [v44 shape];
  v46 = [v45 count];

  v12 = [v9 objectAtIndexedSubscript:1];
  v13 = [v12 descriptor];
  v47 = [v13 shape];
  v15 = v47;
  v48 = v70;
  if (v70 == v46)
  {
    v71 = v69;
    v69 = [v47 copy];
    goto LABEL_17;
  }

  v57 = [v47 count];

  if (!v70)
  {
    goto LABEL_18;
  }

  v66 = v8;
  v58 = 0;
  v49 = v69;
  do
  {
    if (v58 >= v70 - v57)
    {
      v60 = [v9 objectAtIndexedSubscript:1];
      v61 = [v60 descriptor];
      v62 = [v61 shape];
      v63 = [v62 objectAtIndexedSubscript:v57 - v70 + v58];
      v59 = [v63 unsignedIntegerValue];

      v48 = v70;
      v49 = v69;
    }

    else
    {
      v59 = 1;
    }

    v64 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{v59, v66}];
    [v49 setObject:v64 atIndexedSubscript:v58];

    ++v58;
  }

  while (v48 != v58);
  v8 = v66;
LABEL_19:
  v50 = [v67 deviceList];
  v51 = [v50 count];

  if (v51)
  {
    v52 = 0;
    do
    {
      v53 = [v8 objectAtIndexedSubscript:v52];
      [v53 setSource0Shape:v32];
      if ([v9 count] == 2)
      {
        [v53 setSource1Shape:v49];
      }

      ++v52;
      v54 = [v67 deviceList];
      v55 = [v54 count];
    }

    while (v52 < v55);
  }

  return 1;
}

@end