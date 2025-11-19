@interface _MLCGPUMHAttention
+ (BOOL)compileWithDevice:(id)a3 deviceOps:(id)a4 sourceTensors:(id)a5 resultTensor:(id)a6;
+ (BOOL)setMHAOptimizerDataForDevice:(unint64_t)a3 deviceOps:(id)a4 dataForWeights:(id)a5 dataForBias:(id)a6 momentumArray:(id)a7 velocityArray:(id)a8 centerWeightArray:(id)a9 weightIndex:(unint64_t)a10 targetIndex:(unint64_t)a11 attnBias:(BOOL)a12;
+ (BOOL)setOptimizerDataForDevice:(id)a3 deviceOps:(id)a4 dataForWeights:(id)a5 dataForBias:(id)a6;
- (_MLCGPUMHAttention)initWithDevice:(id)a3 desciptor:(id)a4 weights:(id)a5 bias:(id)a6 attnBias:(id)a7 inferenceOnly:(BOOL)a8;
@end

@implementation _MLCGPUMHAttention

- (_MLCGPUMHAttention)initWithDevice:(id)a3 desciptor:(id)a4 weights:(id)a5 bias:(id)a6 attnBias:(id)a7 inferenceOnly:(BOOL)a8
{
  v149 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = v14;
  v18 = v16;
  v19 = a6;
  v140 = a7;
  v146.receiver = self;
  v146.super_class = _MLCGPUMHAttention;
  v20 = [(_MLCGPUMHAttention *)&v146 init];
  v21 = v20;
  if (!v20)
  {
    goto LABEL_38;
  }

  aSelector = a2;
  v133 = v20;
  v132 = [MEMORY[0x277CBEBF8] mutableCopy];
  v22 = [v17 deviceList];
  v23 = [v22 count];

  if (!v23)
  {
LABEL_37:
    v126 = [v132 copy];
    v21 = v133;
    v145.receiver = v133;
    v145.super_class = _MLCGPUMHAttention;
    [(_MLCGPULayer *)&v145 setDeviceOps:v126];

LABEL_38:
    v127 = v21;
    goto LABEL_39;
  }

  v25 = 0;
  *&v24 = 138412546;
  v130 = v24;
  v141 = v19;
  v142 = v18;
  v135 = v15;
  v136 = v17;
  while (1)
  {
    v26 = [v17 deviceList];
    v27 = [v26 objectAtIndexedSubscript:v25];

    v28 = +[MLCMHAGPUDeviceOps deviceOps];
    [v28 setMhaHeadCount:{objc_msgSend(v15, "headCount")}];
    v143 = v27;
    v29 = [objc_alloc(MEMORY[0x277CD7608]) initWithDevice:v27 sourceCount:2];
    [v28 setMhaMatMulKernel:v29];

    if ([v15 hasBiases])
    {
      v30 = [objc_alloc(MEMORY[0x277CD75F8]) initWithDevice:v27];
      [v28 setMhaBiasAddKernel:v30];
    }

    [v15 dropout];
    if (v31 > 0.0 && !a8)
    {
      v32 = objc_alloc(MEMORY[0x277CD7660]);
      [v15 dropout];
      v138 = vdupq_n_s64(1uLL);
      *&v34 = 1.0 - v33;
      *buf = v138;
      *&buf[16] = 1;
      v35 = [v32 initWithDevice:v27 keepProbability:0 seed:buf maskStrideInPixels:v34];
      [v28 setMhaDropoutForwardKernel:v35];

      v36 = objc_alloc(MEMORY[0x277CD7668]);
      [v15 dropout];
      *&v38 = 1.0 - v37;
      *buf = v138;
      *&buf[16] = 1;
      v39 = [v36 initWithDevice:v27 keepProbability:0 seed:buf maskStrideInPixels:v38];
      [v28 setMhaDropoutGradientKernel:v39];
    }

    [v28 setMhaHasZeroAttention:{objc_msgSend(v15, "addsZeroAttention")}];
    [v28 setMhaHasBias:{objc_msgSend(v15, "hasBiases")}];
    [v28 setMhaHasAttnBias:{objc_msgSend(v15, "hasAttentionBiases")}];
    [v28 setMhaModelDimension:{objc_msgSend(v15, "modelDimension")}];
    v40 = [MEMORY[0x277CBEBF8] mutableCopy];
    [v28 setExportableState:v40];

    v41 = 0;
    v144 = v28;
    do
    {
      v42 = [v18 objectAtIndexedSubscript:v41];
      v43 = [v42 deviceMemory];
      v44 = [v43 count];

      if (v25 >= v44)
      {
        v45 = [v18 objectAtIndexedSubscript:v41];
        v46 = [v45 data];
        v47 = [v46 bytes];
        v48 = [v18 objectAtIndexedSubscript:v41];
        v49 = [v48 data];
        v50 = [v143 newBufferWithBytes:v47 length:objc_msgSend(v49 options:{"length"), +[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
        v51 = [v18 objectAtIndexedSubscript:v41];
        v52 = [v51 deviceMemory];
        [v52 setObject:v50 atIndexedSubscript:v25];

        v18 = v142;
      }

      v53 = v144;
      v54 = [v144 exportableState];
      v55 = [v18 objectAtIndexedSubscript:v41];
      v56 = [v55 deviceMemory];
      v57 = [v56 objectAtIndexedSubscript:v25];
      [v54 addObject:v57];

      ++v41;
    }

    while (v41 != 4);
    v58 = v141;
    if ([v144 mhaHasBias])
    {
      for (i = 0; i != 4; ++i)
      {
        v60 = [v58 objectAtIndexedSubscript:i];
        v61 = [v60 deviceMemory];
        v62 = [v61 count];

        if (v25 >= v62)
        {
          v63 = [v58 objectAtIndexedSubscript:i];
          v64 = [v63 data];
          v65 = [v64 bytes];
          v66 = [v58 objectAtIndexedSubscript:i];
          v67 = [v66 data];
          v68 = [v143 newBufferWithBytes:v65 length:objc_msgSend(v67 options:{"length"), +[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
          v69 = [v141 objectAtIndexedSubscript:i];
          v70 = [v69 deviceMemory];
          [v70 setObject:v68 atIndexedSubscript:v25];

          v18 = v142;
          v53 = v144;
          v58 = v141;
        }

        v71 = [v53 exportableState];
        v72 = [v58 objectAtIndexedSubscript:i];
        v73 = [v72 deviceMemory];
        v74 = [v73 objectAtIndexedSubscript:v25];
        [v71 addObject:v74];
      }
    }

    v75 = v140;
    if ([v53 mhaHasAttnBias])
    {
      v76 = 0;
      v77 = 1;
      do
      {
        v78 = v77;
        v79 = [v75 objectAtIndexedSubscript:v76];
        v80 = [v79 deviceMemory];
        v81 = [v80 count];

        if (v25 >= v81)
        {
          v82 = [v75 objectAtIndexedSubscript:v76];
          v83 = [v82 data];
          v84 = [v83 bytes];
          v85 = [v75 objectAtIndexedSubscript:v76];
          v86 = [v85 data];
          v87 = [v143 newBufferWithBytes:v84 length:objc_msgSend(v86 options:{"length"), +[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
          v88 = [v140 objectAtIndexedSubscript:v76];
          v89 = [v88 deviceMemory];
          [v89 setObject:v87 atIndexedSubscript:v25];

          v18 = v142;
          v75 = v140;

          v53 = v144;
          v58 = v141;
        }

        v90 = [v53 exportableState];
        v91 = [v75 objectAtIndexedSubscript:v76];
        v92 = [v91 deviceMemory];
        v93 = [v92 objectAtIndexedSubscript:v25];
        [v90 addObject:v93];

        v77 = 0;
        v76 = 1;
      }

      while ((v78 & 1) != 0);
      [v53 setMhaAttentionBiasTensors:v75];
      v17 = v136;
    }

    v94 = MEMORY[0x277CBEB18];
    v95 = [v53 exportableState];
    v96 = [v94 arrayWithCapacity:{objc_msgSend(v95, "count")}];
    [v53 setGradientState:v96];

    v97 = [v17 deviceList];
    v98 = [v97 count];

    if (v98 >= 2)
    {
      v99 = [MEMORY[0x277CBEBF8] mutableCopy];
      [v99 addObjectsFromArray:v18];
      if ([v53 mhaHasBias])
      {
        [v99 addObjectsFromArray:v58];
      }

      if ([v53 mhaHasAttnBias])
      {
        v100 = [v53 mhaAttentionBiasTensors];
        [v99 addObjectsFromArray:v100];
      }

      v101 = +[MLCGPUDeviceOps deviceOps];
      v102 = [MLCMultiGPUDeviceOps multiGPUDeviceOpsWithGPUDeviceOps:v101];
      [v53 setMhaMultiGPUChildOps:v102];

      v103 = [v53 mhaMultiGPUChildOps];
      GPU_AllocateResourceForMultiGPUTraining(v17, v103, v99, v25);
    }

    v104 = [v17 gpuLibrary];
    v105 = [v104 objectAtIndexedSubscript:v25];
    v106 = [v105 newFunctionWithName:@"mha_mask_softmax_forward"];

    v107 = [v17 gpuLibrary];
    v108 = [v107 objectAtIndexedSubscript:v25];
    v109 = [v108 newFunctionWithName:@"mha_mask_softmax_fast_forward"];

    v110 = [v17 gpuLibrary];
    v111 = [v110 objectAtIndexedSubscript:v25];
    v112 = [v111 newFunctionWithName:@"softmax_gradient"];

    v139 = v106;
    v113 = [v143 newComputePipelineStateWithFunction:v106 error:0];
    v137 = v109;
    v114 = v53;
    v115 = [v143 newComputePipelineStateWithFunction:v109 error:0];
    v116 = v112;
    v117 = [v143 newComputePipelineStateWithFunction:v112 error:0];
    [v114 setMhaMaskSoftmaxForwardKernel:v113];
    [v114 setMhaMaskSoftmaxFastForwardKernel:v115];
    [v114 setMhaSoftmaxGradientKernel:v117];
    v118 = [objc_alloc(MEMORY[0x277CD7610]) initWithDevice:v143 axis:2];
    v147[0] = v118;
    v119 = [objc_alloc(MEMORY[0x277CD7610]) initWithDevice:v143 axis:1];
    v147[1] = v119;
    v120 = [MEMORY[0x277CBEA60] arrayWithObjects:v147 count:2];
    v121 = [v120 copy];
    [v114 setMhaReduceSumKernels:v121];

    [v114 setSourceOfForwardNeededForGradient:1];
    [v114 setResultOfForwardNeededForGradient:0];
    if (v114)
    {
      [v114 setLayer:v133];
      [v132 addObject:v114];
      v18 = v142;
    }

    else
    {
      v122 = +[MLCLog framework];
      if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
      {
        v125 = NSStringFromSelector(aSelector);
        *buf = v130;
        *&buf[4] = v125;
        *&buf[12] = 2112;
        *&buf[14] = v143;
        _os_log_error_impl(&dword_238C1D000, v122, OS_LOG_TYPE_ERROR, "%@: Unable to create gpuOps for MultiHeadAttention layer for device %@", buf, 0x16u);
      }

      v18 = v142;
      v114 = v144;
    }

    if (!v114)
    {
      break;
    }

    ++v25;
    v17 = v136;
    v123 = [v136 deviceList];
    v124 = [v123 count];

    v15 = v135;
    v19 = v141;
    if (v25 >= v124)
    {
      goto LABEL_37;
    }
  }

  v127 = 0;
  v15 = v135;
  v17 = v136;
  v19 = v141;
  v21 = v133;
LABEL_39:

  v128 = *MEMORY[0x277D85DE8];
  return v127;
}

+ (BOOL)compileWithDevice:(id)a3 deviceOps:(id)a4 sourceTensors:(id)a5 resultTensor:(id)a6
{
  v197[3] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v164 = a4;
  v9 = a5;
  v10 = [v9 objectAtIndexedSubscript:0];
  v11 = [v10 descriptor];
  v12 = [v11 shape];
  v162 = 1;
  v13 = [v12 objectAtIndexedSubscript:1];
  v163 = [v13 unsignedIntegerValue];

  v14 = [v9 objectAtIndexedSubscript:0];
  v15 = [v14 descriptor];
  v16 = [v15 shape];
  v17 = [v16 objectAtIndexedSubscript:0];
  v184 = [v17 unsignedIntegerValue];

  v18 = [v9 objectAtIndexedSubscript:0];
  v19 = [v18 descriptor];
  v20 = [v19 stride];
  v21 = [v9 objectAtIndexedSubscript:0];
  v22 = [v21 descriptor];
  v23 = [v20 objectAtIndexedSubscript:{objc_msgSend(v22, "dimensionCount") - 1}];
  v185 = [v23 unsignedIntegerValue];

  v24 = [v9 objectAtIndexedSubscript:0];
  v25 = [v24 descriptor];
  DataType = GPU_GetDataType([v25 dataType]);

  v161 = 1;
  if ([v9 count] != 5)
  {
    if ([v9 count] == 4)
    {
      v27 = [v9 objectAtIndexedSubscript:3];
      v28 = [v27 descriptor];
      v29 = [v28 isFloatingPoint];

      v161 = v29;
      v162 = v29 ^ 1;
    }

    else
    {
      v162 = 0;
      v161 = 0;
    }
  }

  v186 = DataType;
  v30 = [v8 deviceList];
  v31 = [v30 count];

  v32 = v185;
  if (v31)
  {
    v33 = 0;
    v160 = v8;
    v34 = 0x277CD7000uLL;
    v169 = v9;
    do
    {
      v35 = [v8 deviceList];
      v36 = [v35 objectAtIndexedSubscript:v33];

      v168 = v33;
      v37 = [v164 objectAtIndexedSubscript:v33];
      [v37 setMhaHasKeyMask:v162];
      [v37 setMhaHasAttentionMask:v161];
      v38 = objc_opt_new();
      [v37 setLayer:v38];

      v170 = [v37 mhaHeadCount];
      v39 = [v37 mhaModelDimension] / v170;
      v167 = v36;
      v40 = [objc_alloc(MEMORY[0x277CD7608]) initWithDevice:v36 sourceCount:2];
      [v40 setAlpha:1.0 / sqrt(v39)];
      v187 = v37;
      v166 = v40;
      [v37 setMhaMatMulKernelWithScale:v40];
      v41 = 0;
      do
      {
        v42 = [v9 objectAtIndexedSubscript:v41];
        v43 = [v42 descriptor];
        v44 = [v43 shape];
        v45 = [v44 objectAtIndexedSubscript:1];
        v46 = [v45 unsignedIntegerValue];

        v181 = v41;
        v47 = [v9 objectAtIndexedSubscript:v41];
        v48 = [v47 descriptor];
        v49 = [v48 shape];
        v50 = [v49 objectAtIndexedSubscript:2];
        v51 = [v50 unsignedIntegerValue];

        v52 = [v187 mhaModelDimension];
        v173 = v46 * v32;
        v175 = v51 * v32;
        v53 = [*(v34 + 600) matrixDescriptorWithRows:v46 columns:v51 matrices:v184 rowBytes:? matrixBytes:? dataType:?];
        v54 = [v187 mhaMatrixDescriptors];
        v179 = v53;
        [v54 addObject:v53];

        v55 = MEMORY[0x277CD7268];
        [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v184];
        v57 = v56 = v34;
        v197[0] = v57;
        v58 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v46];
        v197[1] = v58;
        v59 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v51];
        v197[2] = v59;
        v60 = [MEMORY[0x277CBEA60] arrayWithObjects:v197 count:3];
        v61 = [v55 descriptorWithDataType:v186 shape:v60];

        [v61 setPreferPackedRows:1];
        v62 = [v187 mhaNDArrayDescriptors];
        v178 = v61;
        [v62 addObject:v61];

        v63 = [*(v56 + 600) matrixDescriptorWithRows:v52 columns:v51 rowBytes:v175 dataType:v186];
        v64 = [v187 mhaMatrixDescriptors];
        v176 = v63;
        [v64 addObject:v63];

        v65 = MEMORY[0x277CD7268];
        v66 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v52];
        v196[0] = v66;
        v67 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v51];
        v196[1] = v67;
        v68 = [MEMORY[0x277CBEA60] arrayWithObjects:v196 count:2];
        v69 = [v65 descriptorWithDataType:v186 shape:v68];

        [v69 setPreferPackedRows:1];
        v70 = [v187 mhaNDArrayDescriptors];
        [v70 addObject:v69];

        v71 = [*(v56 + 600) matrixDescriptorWithRows:v52 columns:v46 matrices:v184 rowBytes:v173 matrixBytes:v173 * v52 dataType:v186];
        v72 = [v187 mhaMatrixDescriptors];
        [v72 addObject:v71];

        v73 = MEMORY[0x277CD7268];
        v74 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v184];
        v195[0] = v74;
        v75 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v52];
        v195[1] = v75;
        v76 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v46];
        v195[2] = v76;
        v77 = [MEMORY[0x277CBEA60] arrayWithObjects:v195 count:3];
        v78 = [v73 descriptorWithDataType:v186 shape:v77];

        v32 = v185;
        [v78 setPreferPackedRows:1];
        v79 = [v187 mhaNDArrayDescriptors];
        [v79 addObject:v78];

        if ([v187 mhaHasBias])
        {
          v80 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v52 columns:1 rowBytes:v185 dataType:v186];
          v81 = [v187 mhaMatrixDescriptorsForBias];
          [v81 addObject:v80];

          v82 = MEMORY[0x277CD7268];
          v83 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v52];
          v194[0] = v83;
          v194[1] = &unk_284BA5D20;
          v84 = [MEMORY[0x277CBEA60] arrayWithObjects:v194 count:2];
          v85 = [v82 descriptorWithDataType:v186 shape:v84];

          [v85 setPreferPackedRows:1];
          v86 = [v187 mhaNDArrayDescriptorsForBias];
          [v86 addObject:v85];
        }

        v41 = v181 + 1;
        v9 = v169;
        v34 = 0x277CD7000;
      }

      while (v181 != 2);
      v87 = v187;
      v88 = [v187 mhaHasZeroAttention];
      v89 = 0;
      v90 = v170 * v184;
      v182 = [v187 mhaHasAttnBias] + v88;
      do
      {
        v91 = [v87 mhaModelDimension] / v170;
        v92 = [v169 objectAtIndexedSubscript:v89];
        v93 = [v92 descriptor];
        v94 = [v93 shape];
        v95 = [v94 objectAtIndexedSubscript:1];
        v96 = [v95 unsignedIntegerValue];

        v97 = v182;
        if (!v89)
        {
          v97 = 0;
        }

        v98 = v96 + v97;
        v99 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v91 columns:v98 matrices:v90 rowBytes:v98 * v185 matrixBytes:v98 * v185 * v91 dataType:v186];
        v100 = [v187 mhaMatrixDescriptors];
        [v100 addObject:v99];

        v101 = MEMORY[0x277CD7268];
        v102 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v90];
        v193[0] = v102;
        v103 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v91];
        v193[1] = v103;
        v104 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v98];
        v193[2] = v104;
        v105 = [MEMORY[0x277CBEA60] arrayWithObjects:v193 count:3];
        v106 = [v101 descriptorWithDataType:v186 shape:v105];

        v87 = v187;
        [v106 setPreferPackedRows:1];
        v107 = [v187 mhaNDArrayDescriptors];
        [v107 addObject:v106];

        ++v89;
      }

      while (v89 != 3);
      v108 = [v187 mhaMatrixDescriptors];
      v109 = [v108 objectAtIndexedSubscript:9];

      v110 = [v187 mhaMatrixDescriptors];
      v111 = [v110 objectAtIndexedSubscript:10];

      v183 = v109;
      v180 = v111;
      v112 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:objc_msgSend(v109 columns:"columns") matrices:objc_msgSend(v111 rowBytes:"columns") matrixBytes:objc_msgSend(v109 dataType:{"matrices"), objc_msgSend(v111, "columns") * v185, objc_msgSend(v109, "columns") * v185 * objc_msgSend(v111, "columns"), v186}];
      v113 = [v187 mhaMatrixDescriptors];
      [v113 addObject:v112];

      v114 = MEMORY[0x277CD7268];
      v115 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v112, "matrices")}];
      v192[0] = v115;
      v116 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v112, "rows")}];
      v192[1] = v116;
      v117 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v112, "columns")}];
      v192[2] = v117;
      v118 = [MEMORY[0x277CBEA60] arrayWithObjects:v192 count:3];
      v119 = [v114 descriptorWithDataType:v186 shape:v118];

      [v119 setPreferPackedRows:1];
      v120 = [v187 mhaNDArrayDescriptors];
      v177 = v119;
      [v120 addObject:v119];

      v121 = [v187 mhaMatrixDescriptors];
      v122 = [v121 objectAtIndexedSubscript:11];

      v123 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:objc_msgSend(v122 columns:"rows") matrices:objc_msgSend(v112 rowBytes:"rows") matrixBytes:objc_msgSend(v112 dataType:{"matrices"), objc_msgSend(v112, "rows") * v185, objc_msgSend(v122, "rows") * v185 * objc_msgSend(v112, "rows"), v186}];
      v124 = [v187 mhaMatrixDescriptors];
      v172 = v123;
      [v124 addObject:v123];

      v125 = MEMORY[0x277CD7268];
      v126 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v112, "matrices")}];
      v191[0] = v126;
      v174 = v122;
      v127 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v122, "rows")}];
      v191[1] = v127;
      v128 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v112, "rows")}];
      v191[2] = v128;
      v129 = [MEMORY[0x277CBEA60] arrayWithObjects:v191 count:3];
      v130 = [v125 descriptorWithDataType:v186 shape:v129];

      [v130 setPreferPackedRows:1];
      v131 = [v187 mhaNDArrayDescriptors];
      v171 = v130;
      [v131 addObject:v130];

      v132 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:objc_msgSend(v187 columns:"mhaModelDimension") rowBytes:objc_msgSend(v187 dataType:{"mhaModelDimension"), objc_msgSend(v187, "mhaModelDimension") * v185, v186}];
      v133 = [v187 mhaMatrixDescriptors];
      v165 = v132;
      [v133 addObject:v132];

      v134 = MEMORY[0x277CD7268];
      v135 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v187, "mhaModelDimension")}];
      v190[0] = v135;
      v136 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v187, "mhaModelDimension")}];
      v190[1] = v136;
      v137 = [MEMORY[0x277CBEA60] arrayWithObjects:v190 count:2];
      v138 = [v134 descriptorWithDataType:v186 shape:v137];

      [v138 setPreferPackedRows:1];
      v139 = [v187 mhaNDArrayDescriptors];
      [v139 addObject:v138];

      v140 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v163 columns:objc_msgSend(v187 matrices:"mhaModelDimension") rowBytes:v184 matrixBytes:objc_msgSend(v187 dataType:{"mhaModelDimension") * v185, v185 * v163 * objc_msgSend(v187, "mhaModelDimension"), v186}];
      v141 = [v187 mhaMatrixDescriptors];
      [v141 addObject:v140];

      v142 = MEMORY[0x277CD7268];
      v143 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v184];
      v189[0] = v143;
      v144 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v163];
      v189[1] = v144;
      v145 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v187, "mhaModelDimension")}];
      v189[2] = v145;
      v146 = [MEMORY[0x277CBEA60] arrayWithObjects:v189 count:3];
      v147 = [v142 descriptorWithDataType:v186 shape:v146];

      [v147 setPreferPackedRows:1];
      v148 = [v187 mhaNDArrayDescriptors];
      [v148 addObject:v147];

      if ([v187 mhaHasBias])
      {
        v149 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:1 columns:objc_msgSend(v187 rowBytes:"mhaModelDimension") dataType:{objc_msgSend(v187, "mhaModelDimension") * v185, v186}];
        v150 = [v187 mhaMatrixDescriptorsForBias];
        [v150 addObject:v149];

        v151 = MEMORY[0x277CD7268];
        v188[0] = &unk_284BA5D20;
        v152 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v187, "mhaModelDimension")}];
        v188[1] = v152;
        v153 = [MEMORY[0x277CBEA60] arrayWithObjects:v188 count:2];
        v154 = [v151 descriptorWithDataType:v186 shape:v153];

        [v154 setPreferPackedRows:1];
        v155 = [v187 mhaNDArrayDescriptorsForBias];
        [v155 addObject:v154];
      }

      v33 = v168 + 1;
      v8 = v160;
      v156 = [v160 deviceList];
      v157 = [v156 count];

      v9 = v169;
      v32 = v185;
      v34 = 0x277CD7000;
    }

    while (v168 + 1 < v157);
  }

  v158 = *MEMORY[0x277D85DE8];
  return 1;
}

+ (BOOL)setMHAOptimizerDataForDevice:(unint64_t)a3 deviceOps:(id)a4 dataForWeights:(id)a5 dataForBias:(id)a6 momentumArray:(id)a7 velocityArray:(id)a8 centerWeightArray:(id)a9 weightIndex:(unint64_t)a10 targetIndex:(unint64_t)a11 attnBias:(BOOL)a12
{
  v94[1] = *MEMORY[0x277D85DE8];
  v16 = a5;
  v88 = a6;
  v17 = a7;
  v18 = a8;
  v84 = a9;
  v19 = [v16 objectAtIndexedSubscript:a10];
  v20 = [v19 optimizerDeviceData];
  v21 = [v20 objectAtIndexedSubscript:a3];
  v22 = [v21 momentumVectors];

  v23 = [v16 objectAtIndexedSubscript:a10];
  v24 = [v23 optimizerDeviceData];
  v25 = [v24 objectAtIndexedSubscript:a3];
  v26 = [v25 velocityVectors];

  v27 = [v16 objectAtIndexedSubscript:a10];
  v28 = [v27 optimizerDeviceData];
  v29 = [v28 objectAtIndexedSubscript:a3];
  v85 = [v29 centerWeightVectors];

  v83 = v22;
  v30 = [v22 objectAtIndexedSubscript:0];
  v31 = [v16 objectAtIndexedSubscript:a10];
  v32 = [v31 optimizerData];
  v33 = [v32 count];

  v82 = v26;
  if (v33 < 2)
  {
    v86 = 0;
    v87 = 0;
  }

  else
  {
    v86 = [v26 objectAtIndexedSubscript:0];
    v34 = [v16 objectAtIndexedSubscript:a10];
    v35 = [v34 optimizerData];
    v36 = [v35 count];

    if (v36 < 3)
    {
      v87 = 0;
    }

    else
    {
      v87 = [v85 objectAtIndexedSubscript:0];
    }
  }

  if (v88)
  {
    v77 = v17;
    v78 = v18;
    v37 = [v88 objectAtIndexedSubscript:a10];
    v38 = [v37 optimizerDeviceData];
    v39 = [v38 objectAtIndexedSubscript:a3];
    v40 = [v39 momentumVectors];

    v41 = [v88 objectAtIndexedSubscript:a10];
    v42 = [v41 optimizerDeviceData];
    v43 = [v42 objectAtIndexedSubscript:a3];
    v44 = [v43 velocityVectors];

    v45 = [v88 objectAtIndexedSubscript:a10];
    v46 = [v45 optimizerDeviceData];
    v47 = [v46 objectAtIndexedSubscript:a3];
    v79 = [v47 centerWeightVectors];

    v76 = v40;
    v75 = [v40 objectAtIndexedSubscript:0];
    v48 = [v88 objectAtIndexedSubscript:a10];
    v49 = [v48 optimizerData];
    v50 = [v49 count];

    if (v50 < 2)
    {
      v51 = v44;
      v81 = 0;
    }

    else
    {
      v51 = v44;
      v81 = [v44 objectAtIndexedSubscript:0];
      v52 = [v88 objectAtIndexedSubscript:a10];
      v53 = [v52 optimizerData];
      v54 = [v53 count];

      if (v54 >= 3)
      {
        v55 = [v79 objectAtIndexedSubscript:0];
LABEL_17:
        v59 = v84;
        v80 = v30;
        v64 = [v16 objectAtIndexedSubscript:a10];
        v65 = [v64 optimizerData];
        if ([v65 count])
        {
          v66 = [v88 objectAtIndexedSubscript:a10];
          v67 = [v66 optimizerData];
          v68 = [v67 count];

          v17 = v77;
          v69 = v75;
          if (v68)
          {
            v91[0] = v80;
            v91[1] = v75;
            v70 = [MEMORY[0x277CBEA60] arrayWithObjects:v91 count:2];
            [v77 setObject:v70 atIndexedSubscript:a11];

            if (v86 && v81)
            {
              v90[0] = v86;
              v90[1] = v81;
              v71 = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:2];
              [v78 setObject:v71 atIndexedSubscript:a11];
            }

            if (v87 && v55)
            {
              v89[0] = v87;
              v89[1] = v55;
              v72 = [MEMORY[0x277CBEA60] arrayWithObjects:v89 count:2];
              [v84 setObject:v72 atIndexedSubscript:a11];
            }
          }
        }

        else
        {

          v17 = v77;
          v69 = v75;
        }

        v18 = v78;
        v26 = v82;
        v30 = v80;
        v60 = v86;
        v63 = v76;
        goto LABEL_27;
      }
    }

    v55 = 0;
    goto LABEL_17;
  }

  v56 = [v16 objectAtIndexedSubscript:a10];
  v57 = [v56 optimizerData];
  v58 = [v57 count];

  v59 = v84;
  v60 = v86;
  if (v58)
  {
    v94[0] = v30;
    v61 = [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:1];
    [v17 setObject:v61 atIndexedSubscript:a11];

    if (v86)
    {
      v93 = v86;
      v62 = [MEMORY[0x277CBEA60] arrayWithObjects:&v93 count:1];
      [v18 setObject:v62 atIndexedSubscript:a11];
    }

    v59 = v84;
    if (v87)
    {
      v92 = v87;
      v63 = [MEMORY[0x277CBEA60] arrayWithObjects:&v92 count:1];
      [v84 setObject:v63 atIndexedSubscript:a11];
LABEL_27:
    }
  }

  v73 = *MEMORY[0x277D85DE8];
  return 1;
}

+ (BOOL)setOptimizerDataForDevice:(id)a3 deviceOps:(id)a4 dataForWeights:(id)a5 dataForBias:(id)a6
{
  v10 = a3;
  v36 = a4;
  v11 = a5;
  v39 = a6;
  v37 = v10;
  v12 = [v10 deviceList];
  v13 = [v12 count];

  v35 = v11;
  if (v13)
  {
    v14 = 0;
    v15 = 1;
    v16 = v39;
    do
    {
      v17 = [v36 objectAtIndexedSubscript:v14];
      if (v16)
      {
        v18 = [v16 count] > 3;
        v19 = [v16 count];
        LODWORD(v38) = v19 > 4 * v18;
        HIDWORD(v38) = v18;
        if (v19 <= 4 * v18)
        {
          v20 = 4;
        }

        else
        {
          v20 = 6;
        }
      }

      else
      {
        v38 = 0;
        v20 = 4;
      }

      v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:v20];
      v22 = [MEMORY[0x277CBEB18] arrayWithCapacity:v20];
      v23 = [MEMORY[0x277CBEB18] arrayWithCapacity:v20];
      v24 = 0;
      if (HIDWORD(v38))
      {
        v25 = v16;
      }

      else
      {
        v25 = 0;
      }

      do
      {
        LOBYTE(v34) = 0;
        v15 &= [a1 setMHAOptimizerDataForDevice:v14 deviceOps:v17 dataForWeights:v35 dataForBias:v25 momentumArray:v21 velocityArray:v22 centerWeightArray:v23 weightIndex:v24 targetIndex:v24 attnBias:v34];
        ++v24;
      }

      while (v24 != 4);
      if (v38)
      {
        for (i = 0; i != 2; ++i)
        {
          if (HIDWORD(v38))
          {
            v27 = i + 4;
          }

          else
          {
            v27 = i;
          }

          LOBYTE(v34) = 1;
          v15 &= [a1 setMHAOptimizerDataForDevice:v14 deviceOps:v17 dataForWeights:v39 dataForBias:0 momentumArray:v21 velocityArray:v22 centerWeightArray:v23 weightIndex:v27 targetIndex:i + 4 attnBias:v34];
        }
      }

      v28 = [v21 copy];
      [v17 setMomentumVectors:v28];

      v29 = [v22 copy];
      [v17 setVelocityVectors:v29];

      v30 = [v23 copy];
      [v17 setCenterWeightVectors:v30];

      ++v14;
      v31 = [v37 deviceList];
      v32 = [v31 count];

      v16 = v39;
    }

    while (v14 < v32);
  }

  else
  {
    LOBYTE(v15) = 1;
    v16 = v39;
  }

  return v15;
}

@end