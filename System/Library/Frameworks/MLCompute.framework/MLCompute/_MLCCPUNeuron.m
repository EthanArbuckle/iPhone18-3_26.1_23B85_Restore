@interface _MLCCPUNeuron
+ (BOOL)compileWithDevice:(id)a3 deviceOps:(id)a4 sourceTensors:(id)a5 resultTensor:(id)a6;
+ (id)layerWithDevice:(id)a3 descriptor:(id)a4;
- (_MLCCPUNeuron)initWithDevice:(id)a3 descriptor:(id)a4;
@end

@implementation _MLCCPUNeuron

- (_MLCCPUNeuron)initWithDevice:(id)a3 descriptor:(id)a4
{
  v27[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x277CBEBF8] mutableCopy];
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  memset(v23, 0, sizeof(v23));
  if (setBNNSActivation(v24, v8))
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
    self = [(_MLCCPULayer *)&v20 initWithDevice:v7 deviceOps:v16];

    v17 = self;
  }

  else
  {
    v10 = +[MLCLog framework];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [_MLCCPUNeuron initWithDevice:a2 descriptor:v8];
    }

    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
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
  v130[1] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a6;
  v10 = [a4 objectAtIndexedSubscript:0];
  v11 = [v10 params];
  v12 = [v11 bytes];
  v121 = v11;
  if ([v10 deviceOpType] != 16)
  {
    goto LABEL_30;
  }

  v13 = [v9 descriptor];
  v14 = [v13 shape];
  v15 = [v14 count];

  if (v15 > 2)
  {
    if (v15 == 4)
    {
      v64 = [v9 descriptor];
      v65 = [v64 shape];
      v66 = [v65 objectAtIndexedSubscript:2];
      if ([v66 unsignedIntegerValue] == 1)
      {
        v113 = v12;
        v67 = v8;
        v68 = [v9 descriptor];
        v69 = [v68 shape];
        v70 = [v69 objectAtIndexedSubscript:3];
        if ([v70 unsignedIntegerValue] == 1)
        {
          v119 = [v10 softmaxDimension];

          v8 = v67;
          v12 = v113;
          if (v119 < 2)
          {
            goto LABEL_5;
          }

          goto LABEL_28;
        }

        v8 = v67;
        v12 = v113;
      }
    }

    else
    {
      v16 = 0;
      if (v15 != 3)
      {
        goto LABEL_34;
      }

      v18 = [v9 descriptor];
      v19 = [v18 shape];
      v20 = [v19 objectAtIndexedSubscript:2];
      if ([v20 unsignedIntegerValue] == 1)
      {
        v21 = [v10 softmaxDimension];

        if (v21 != 2)
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
        *(v12 + 400) = 1 << v71;
LABEL_30:
        v120 = [v8 objectAtIndexedSubscript:0];
        v116 = [v120 descriptor];
        v72 = [v116 shape];
        v73 = [v8 objectAtIndexedSubscript:0];
        v74 = [v73 descriptor];
        [v74 stride];
        v76 = v75 = v12;
        [v8 objectAtIndexedSubscript:0];
        v77 = v10;
        v78 = v9;
        v80 = v79 = v8;
        v81 = [v80 descriptor];
        CPU_BuildBNNSNDArrayDescriptor(v75, v72, v76, 0, [v81 dataType], 1, 0);

        v8 = v79;
        v9 = v78;
        v10 = v77;

        v56 = v75;
        v82 = [v9 descriptor];
        v83 = [v82 shape];
        v84 = [v9 descriptor];
        v85 = [v84 stride];
        v86 = [v9 descriptor];
        CPU_BuildBNNSNDArrayDescriptor(v56 + 176, v83, v85, 0, [v86 dataType], 1, 0);

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
  *(v12 + 400) = 1 << v17;
  v22 = [v8 objectAtIndexedSubscript:0];
  v23 = [v22 descriptor];
  v24 = [v23 shape];
  v25 = [v24 count];

  v26 = [v8 objectAtIndexedSubscript:0];
  v106 = [v26 descriptor];
  v27 = [v106 shape];
  v28 = [v27 objectAtIndexedSubscript:0];
  v112 = v12;
  v117 = v28;
  if (v25 == 1)
  {
    v130[0] = v28;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v130 count:1];
    v114 = [v8 objectAtIndexedSubscript:0];
    v110 = [v114 descriptor];
    v108 = [v110 stride];
    [v108 objectAtIndexedSubscript:0];
    v31 = v30 = v12;
    v129 = v31;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v129 count:1];
    v104 = [v8 objectAtIndexedSubscript:0];
    v33 = [v104 descriptor];
    v34 = [v33 dataType];
    v35 = v30;
    v36 = v32;
    CPU_BuildBNNSNDArrayDescriptor(v35, v29, v32, 0, v34, 1, 0);
  }

  else
  {
    v128[0] = v28;
    v98 = [v8 objectAtIndexedSubscript:0];
    v114 = [v98 descriptor];
    v110 = [v114 shape];
    v108 = [v110 objectAtIndexedSubscript:1];
    v128[1] = v108;
    v95 = [MEMORY[0x277CBEA60] arrayWithObjects:v128 count:2];
    v96 = [v8 objectAtIndexedSubscript:0];
    v104 = [v96 descriptor];
    v33 = [v104 stride];
    v97 = [v33 objectAtIndexedSubscript:0];
    v127[0] = v97;
    v94 = [v8 objectAtIndexedSubscript:0];
    v93 = [v94 descriptor];
    [v93 stride];
    v37 = v102 = v26;
    [v37 objectAtIndexedSubscript:1];
    v38 = v100 = v27;
    v127[1] = v38;
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v127 count:2];
    v40 = [v8 objectAtIndexedSubscript:0];
    [v40 descriptor];
    v42 = v41 = v8;
    v43 = [v42 dataType];
    v44 = v12;
    v31 = v95;
    CPU_BuildBNNSNDArrayDescriptor(v44, v95, v39, 0, v43, 1, 0);

    v8 = v41;
    v36 = v96;

    v29 = v98;
    v27 = v100;

    v26 = v102;
  }

  v45 = [v8 objectAtIndexedSubscript:0];
  v46 = [v45 descriptor];
  v47 = [v46 shape];
  v48 = [v47 count];

  v118 = [v9 descriptor];
  v115 = [v118 shape];
  v49 = [v115 objectAtIndexedSubscript:0];
  v111 = v49;
  if (v48 == 1)
  {
    v126 = v49;
    v50 = [MEMORY[0x277CBEA60] arrayWithObjects:&v126 count:1];
    v51 = [v9 descriptor];
    v52 = [v51 stride];
    v53 = [v52 objectAtIndexedSubscript:0];
    v125 = v53;
    v54 = [MEMORY[0x277CBEA60] arrayWithObjects:&v125 count:1];
    v55 = [v9 descriptor];
    CPU_BuildBNNSNDArrayDescriptor(v112 + 176, v50, v54, 0, [v55 dataType], 1, 0);

    v56 = v112;
  }

  else
  {
    v124[0] = v49;
    v109 = [v9 descriptor];
    v107 = [v109 shape];
    v105 = [v107 objectAtIndexedSubscript:1];
    v124[1] = v105;
    v57 = [MEMORY[0x277CBEA60] arrayWithObjects:v124 count:2];
    v103 = [v9 descriptor];
    v101 = [v103 stride];
    v99 = [v101 objectAtIndexedSubscript:0];
    v123[0] = v99;
    v58 = [v9 descriptor];
    v59 = [v58 stride];
    v60 = [v59 objectAtIndexedSubscript:1];
    v123[1] = v60;
    [MEMORY[0x277CBEA60] arrayWithObjects:v123 count:2];
    v62 = v61 = v8;
    v63 = [v9 descriptor];
    v56 = v112;
    CPU_BuildBNNSNDArrayDescriptor(v112 + 176, v57, v62, 0, [v63 dataType], 1, 0);

    v8 = v61;
  }

LABEL_31:
  memset(v122, 0, sizeof(v122));
  LODWORD(v122[0]) = 1;
  v87 = MEMORY[0x23EE75C20](v56, v122);
  if (v87)
  {
    v88 = [v8 objectAtIndexedSubscript:0];
    [v10 setSourceStride:CPU_SetBatchStride(v88)];

    [v10 setResultStride:CPU_SetBatchStride(v9)];
  }

  objc_opt_class();
  v89 = objc_opt_new();
  [v10 setLayer:v89];

  v90 = [v10 layer];
  [v90 setFilter:v87];

  v16 = 1;
  v11 = v121;
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