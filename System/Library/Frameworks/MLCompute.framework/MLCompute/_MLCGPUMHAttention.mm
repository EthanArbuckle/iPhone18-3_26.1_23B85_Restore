@interface _MLCGPUMHAttention
+ (BOOL)compileWithDevice:(id)device deviceOps:(id)ops sourceTensors:(id)tensors resultTensor:(id)tensor;
+ (BOOL)setMHAOptimizerDataForDevice:(unint64_t)device deviceOps:(id)ops dataForWeights:(id)weights dataForBias:(id)bias momentumArray:(id)array velocityArray:(id)velocityArray centerWeightArray:(id)weightArray weightIndex:(unint64_t)self0 targetIndex:(unint64_t)self1 attnBias:(BOOL)self2;
+ (BOOL)setOptimizerDataForDevice:(id)device deviceOps:(id)ops dataForWeights:(id)weights dataForBias:(id)bias;
- (_MLCGPUMHAttention)initWithDevice:(id)device desciptor:(id)desciptor weights:(id)weights bias:(id)bias attnBias:(id)attnBias inferenceOnly:(BOOL)only;
@end

@implementation _MLCGPUMHAttention

- (_MLCGPUMHAttention)initWithDevice:(id)device desciptor:(id)desciptor weights:(id)weights bias:(id)bias attnBias:(id)attnBias inferenceOnly:(BOOL)only
{
  v149 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  desciptorCopy = desciptor;
  weightsCopy = weights;
  v17 = deviceCopy;
  v18 = weightsCopy;
  biasCopy = bias;
  attnBiasCopy = attnBias;
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
  deviceList = [v17 deviceList];
  v23 = [deviceList count];

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
  v141 = biasCopy;
  v142 = v18;
  v135 = desciptorCopy;
  v136 = v17;
  while (1)
  {
    deviceList2 = [v17 deviceList];
    v27 = [deviceList2 objectAtIndexedSubscript:v25];

    v28 = +[MLCMHAGPUDeviceOps deviceOps];
    [v28 setMhaHeadCount:{objc_msgSend(desciptorCopy, "headCount")}];
    v143 = v27;
    v29 = [objc_alloc(MEMORY[0x277CD7608]) initWithDevice:v27 sourceCount:2];
    [v28 setMhaMatMulKernel:v29];

    if ([desciptorCopy hasBiases])
    {
      v30 = [objc_alloc(MEMORY[0x277CD75F8]) initWithDevice:v27];
      [v28 setMhaBiasAddKernel:v30];
    }

    [desciptorCopy dropout];
    if (v31 > 0.0 && !only)
    {
      v32 = objc_alloc(MEMORY[0x277CD7660]);
      [desciptorCopy dropout];
      v138 = vdupq_n_s64(1uLL);
      *&v34 = 1.0 - v33;
      *buf = v138;
      *&buf[16] = 1;
      v35 = [v32 initWithDevice:v27 keepProbability:0 seed:buf maskStrideInPixels:v34];
      [v28 setMhaDropoutForwardKernel:v35];

      v36 = objc_alloc(MEMORY[0x277CD7668]);
      [desciptorCopy dropout];
      *&v38 = 1.0 - v37;
      *buf = v138;
      *&buf[16] = 1;
      v39 = [v36 initWithDevice:v27 keepProbability:0 seed:buf maskStrideInPixels:v38];
      [v28 setMhaDropoutGradientKernel:v39];
    }

    [v28 setMhaHasZeroAttention:{objc_msgSend(desciptorCopy, "addsZeroAttention")}];
    [v28 setMhaHasBias:{objc_msgSend(desciptorCopy, "hasBiases")}];
    [v28 setMhaHasAttnBias:{objc_msgSend(desciptorCopy, "hasAttentionBiases")}];
    [v28 setMhaModelDimension:{objc_msgSend(desciptorCopy, "modelDimension")}];
    v40 = [MEMORY[0x277CBEBF8] mutableCopy];
    [v28 setExportableState:v40];

    v41 = 0;
    v144 = v28;
    do
    {
      v42 = [v18 objectAtIndexedSubscript:v41];
      deviceMemory = [v42 deviceMemory];
      v44 = [deviceMemory count];

      if (v25 >= v44)
      {
        v45 = [v18 objectAtIndexedSubscript:v41];
        data = [v45 data];
        bytes = [data bytes];
        v48 = [v18 objectAtIndexedSubscript:v41];
        data2 = [v48 data];
        v50 = [v143 newBufferWithBytes:bytes length:objc_msgSend(data2 options:{"length"), +[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
        v51 = [v18 objectAtIndexedSubscript:v41];
        deviceMemory2 = [v51 deviceMemory];
        [deviceMemory2 setObject:v50 atIndexedSubscript:v25];

        v18 = v142;
      }

      v53 = v144;
      exportableState = [v144 exportableState];
      v55 = [v18 objectAtIndexedSubscript:v41];
      deviceMemory3 = [v55 deviceMemory];
      v57 = [deviceMemory3 objectAtIndexedSubscript:v25];
      [exportableState addObject:v57];

      ++v41;
    }

    while (v41 != 4);
    v58 = v141;
    if ([v144 mhaHasBias])
    {
      for (i = 0; i != 4; ++i)
      {
        v60 = [v58 objectAtIndexedSubscript:i];
        deviceMemory4 = [v60 deviceMemory];
        v62 = [deviceMemory4 count];

        if (v25 >= v62)
        {
          v63 = [v58 objectAtIndexedSubscript:i];
          data3 = [v63 data];
          bytes2 = [data3 bytes];
          v66 = [v58 objectAtIndexedSubscript:i];
          data4 = [v66 data];
          v68 = [v143 newBufferWithBytes:bytes2 length:objc_msgSend(data4 options:{"length"), +[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
          v69 = [v141 objectAtIndexedSubscript:i];
          deviceMemory5 = [v69 deviceMemory];
          [deviceMemory5 setObject:v68 atIndexedSubscript:v25];

          v18 = v142;
          v53 = v144;
          v58 = v141;
        }

        exportableState2 = [v53 exportableState];
        v72 = [v58 objectAtIndexedSubscript:i];
        deviceMemory6 = [v72 deviceMemory];
        v74 = [deviceMemory6 objectAtIndexedSubscript:v25];
        [exportableState2 addObject:v74];
      }
    }

    v75 = attnBiasCopy;
    if ([v53 mhaHasAttnBias])
    {
      v76 = 0;
      v77 = 1;
      do
      {
        v78 = v77;
        v79 = [v75 objectAtIndexedSubscript:v76];
        deviceMemory7 = [v79 deviceMemory];
        v81 = [deviceMemory7 count];

        if (v25 >= v81)
        {
          v82 = [v75 objectAtIndexedSubscript:v76];
          data5 = [v82 data];
          bytes3 = [data5 bytes];
          v85 = [v75 objectAtIndexedSubscript:v76];
          data6 = [v85 data];
          v87 = [v143 newBufferWithBytes:bytes3 length:objc_msgSend(data6 options:{"length"), +[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
          v88 = [attnBiasCopy objectAtIndexedSubscript:v76];
          deviceMemory8 = [v88 deviceMemory];
          [deviceMemory8 setObject:v87 atIndexedSubscript:v25];

          v18 = v142;
          v75 = attnBiasCopy;

          v53 = v144;
          v58 = v141;
        }

        exportableState3 = [v53 exportableState];
        v91 = [v75 objectAtIndexedSubscript:v76];
        deviceMemory9 = [v91 deviceMemory];
        v93 = [deviceMemory9 objectAtIndexedSubscript:v25];
        [exportableState3 addObject:v93];

        v77 = 0;
        v76 = 1;
      }

      while ((v78 & 1) != 0);
      [v53 setMhaAttentionBiasTensors:v75];
      v17 = v136;
    }

    v94 = MEMORY[0x277CBEB18];
    exportableState4 = [v53 exportableState];
    v96 = [v94 arrayWithCapacity:{objc_msgSend(exportableState4, "count")}];
    [v53 setGradientState:v96];

    deviceList3 = [v17 deviceList];
    v98 = [deviceList3 count];

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
        mhaAttentionBiasTensors = [v53 mhaAttentionBiasTensors];
        [v99 addObjectsFromArray:mhaAttentionBiasTensors];
      }

      v101 = +[MLCGPUDeviceOps deviceOps];
      v102 = [MLCMultiGPUDeviceOps multiGPUDeviceOpsWithGPUDeviceOps:v101];
      [v53 setMhaMultiGPUChildOps:v102];

      mhaMultiGPUChildOps = [v53 mhaMultiGPUChildOps];
      GPU_AllocateResourceForMultiGPUTraining(v17, mhaMultiGPUChildOps, v99, v25);
    }

    gpuLibrary = [v17 gpuLibrary];
    v105 = [gpuLibrary objectAtIndexedSubscript:v25];
    v106 = [v105 newFunctionWithName:@"mha_mask_softmax_forward"];

    gpuLibrary2 = [v17 gpuLibrary];
    v108 = [gpuLibrary2 objectAtIndexedSubscript:v25];
    v109 = [v108 newFunctionWithName:@"mha_mask_softmax_fast_forward"];

    gpuLibrary3 = [v17 gpuLibrary];
    v111 = [gpuLibrary3 objectAtIndexedSubscript:v25];
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
    deviceList4 = [v136 deviceList];
    v124 = [deviceList4 count];

    desciptorCopy = v135;
    biasCopy = v141;
    if (v25 >= v124)
    {
      goto LABEL_37;
    }
  }

  v127 = 0;
  desciptorCopy = v135;
  v17 = v136;
  biasCopy = v141;
  v21 = v133;
LABEL_39:

  v128 = *MEMORY[0x277D85DE8];
  return v127;
}

+ (BOOL)compileWithDevice:(id)device deviceOps:(id)ops sourceTensors:(id)tensors resultTensor:(id)tensor
{
  v197[3] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  opsCopy = ops;
  tensorsCopy = tensors;
  v10 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor = [v10 descriptor];
  shape = [descriptor shape];
  v162 = 1;
  v13 = [shape objectAtIndexedSubscript:1];
  unsignedIntegerValue = [v13 unsignedIntegerValue];

  v14 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor2 = [v14 descriptor];
  shape2 = [descriptor2 shape];
  v17 = [shape2 objectAtIndexedSubscript:0];
  unsignedIntegerValue2 = [v17 unsignedIntegerValue];

  v18 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor3 = [v18 descriptor];
  stride = [descriptor3 stride];
  v21 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor4 = [v21 descriptor];
  v23 = [stride objectAtIndexedSubscript:{objc_msgSend(descriptor4, "dimensionCount") - 1}];
  unsignedIntegerValue3 = [v23 unsignedIntegerValue];

  v24 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor5 = [v24 descriptor];
  DataType = GPU_GetDataType([descriptor5 dataType]);

  v161 = 1;
  if ([tensorsCopy count] != 5)
  {
    if ([tensorsCopy count] == 4)
    {
      v27 = [tensorsCopy objectAtIndexedSubscript:3];
      descriptor6 = [v27 descriptor];
      isFloatingPoint = [descriptor6 isFloatingPoint];

      v161 = isFloatingPoint;
      v162 = isFloatingPoint ^ 1;
    }

    else
    {
      v162 = 0;
      v161 = 0;
    }
  }

  v186 = DataType;
  deviceList = [deviceCopy deviceList];
  v31 = [deviceList count];

  v32 = unsignedIntegerValue3;
  if (v31)
  {
    v33 = 0;
    v160 = deviceCopy;
    v34 = 0x277CD7000uLL;
    v169 = tensorsCopy;
    do
    {
      deviceList2 = [deviceCopy deviceList];
      v36 = [deviceList2 objectAtIndexedSubscript:v33];

      v168 = v33;
      v37 = [opsCopy objectAtIndexedSubscript:v33];
      [v37 setMhaHasKeyMask:v162];
      [v37 setMhaHasAttentionMask:v161];
      v38 = objc_opt_new();
      [v37 setLayer:v38];

      mhaHeadCount = [v37 mhaHeadCount];
      v39 = [v37 mhaModelDimension] / mhaHeadCount;
      v167 = v36;
      v40 = [objc_alloc(MEMORY[0x277CD7608]) initWithDevice:v36 sourceCount:2];
      [v40 setAlpha:1.0 / sqrt(v39)];
      v187 = v37;
      v166 = v40;
      [v37 setMhaMatMulKernelWithScale:v40];
      v41 = 0;
      do
      {
        v42 = [tensorsCopy objectAtIndexedSubscript:v41];
        descriptor7 = [v42 descriptor];
        shape3 = [descriptor7 shape];
        v45 = [shape3 objectAtIndexedSubscript:1];
        unsignedIntegerValue4 = [v45 unsignedIntegerValue];

        v181 = v41;
        v47 = [tensorsCopy objectAtIndexedSubscript:v41];
        descriptor8 = [v47 descriptor];
        shape4 = [descriptor8 shape];
        v50 = [shape4 objectAtIndexedSubscript:2];
        unsignedIntegerValue5 = [v50 unsignedIntegerValue];

        mhaModelDimension = [v187 mhaModelDimension];
        v173 = unsignedIntegerValue4 * v32;
        v175 = unsignedIntegerValue5 * v32;
        v53 = [*(v34 + 600) matrixDescriptorWithRows:unsignedIntegerValue4 columns:unsignedIntegerValue5 matrices:unsignedIntegerValue2 rowBytes:? matrixBytes:? dataType:?];
        mhaMatrixDescriptors = [v187 mhaMatrixDescriptors];
        v179 = v53;
        [mhaMatrixDescriptors addObject:v53];

        v55 = MEMORY[0x277CD7268];
        [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue2];
        v57 = v56 = v34;
        v197[0] = v57;
        v58 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue4];
        v197[1] = v58;
        v59 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue5];
        v197[2] = v59;
        v60 = [MEMORY[0x277CBEA60] arrayWithObjects:v197 count:3];
        v61 = [v55 descriptorWithDataType:v186 shape:v60];

        [v61 setPreferPackedRows:1];
        mhaNDArrayDescriptors = [v187 mhaNDArrayDescriptors];
        v178 = v61;
        [mhaNDArrayDescriptors addObject:v61];

        v63 = [*(v56 + 600) matrixDescriptorWithRows:mhaModelDimension columns:unsignedIntegerValue5 rowBytes:v175 dataType:v186];
        mhaMatrixDescriptors2 = [v187 mhaMatrixDescriptors];
        v176 = v63;
        [mhaMatrixDescriptors2 addObject:v63];

        v65 = MEMORY[0x277CD7268];
        v66 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:mhaModelDimension];
        v196[0] = v66;
        v67 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue5];
        v196[1] = v67;
        v68 = [MEMORY[0x277CBEA60] arrayWithObjects:v196 count:2];
        v69 = [v65 descriptorWithDataType:v186 shape:v68];

        [v69 setPreferPackedRows:1];
        mhaNDArrayDescriptors2 = [v187 mhaNDArrayDescriptors];
        [mhaNDArrayDescriptors2 addObject:v69];

        v71 = [*(v56 + 600) matrixDescriptorWithRows:mhaModelDimension columns:unsignedIntegerValue4 matrices:unsignedIntegerValue2 rowBytes:v173 matrixBytes:v173 * mhaModelDimension dataType:v186];
        mhaMatrixDescriptors3 = [v187 mhaMatrixDescriptors];
        [mhaMatrixDescriptors3 addObject:v71];

        v73 = MEMORY[0x277CD7268];
        v74 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue2];
        v195[0] = v74;
        v75 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:mhaModelDimension];
        v195[1] = v75;
        v76 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue4];
        v195[2] = v76;
        v77 = [MEMORY[0x277CBEA60] arrayWithObjects:v195 count:3];
        v78 = [v73 descriptorWithDataType:v186 shape:v77];

        v32 = unsignedIntegerValue3;
        [v78 setPreferPackedRows:1];
        mhaNDArrayDescriptors3 = [v187 mhaNDArrayDescriptors];
        [mhaNDArrayDescriptors3 addObject:v78];

        if ([v187 mhaHasBias])
        {
          v80 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:mhaModelDimension columns:1 rowBytes:unsignedIntegerValue3 dataType:v186];
          mhaMatrixDescriptorsForBias = [v187 mhaMatrixDescriptorsForBias];
          [mhaMatrixDescriptorsForBias addObject:v80];

          v82 = MEMORY[0x277CD7268];
          v83 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:mhaModelDimension];
          v194[0] = v83;
          v194[1] = &unk_284BA5D20;
          v84 = [MEMORY[0x277CBEA60] arrayWithObjects:v194 count:2];
          v85 = [v82 descriptorWithDataType:v186 shape:v84];

          [v85 setPreferPackedRows:1];
          mhaNDArrayDescriptorsForBias = [v187 mhaNDArrayDescriptorsForBias];
          [mhaNDArrayDescriptorsForBias addObject:v85];
        }

        v41 = v181 + 1;
        tensorsCopy = v169;
        v34 = 0x277CD7000;
      }

      while (v181 != 2);
      v87 = v187;
      mhaHasZeroAttention = [v187 mhaHasZeroAttention];
      v89 = 0;
      v90 = mhaHeadCount * unsignedIntegerValue2;
      v182 = [v187 mhaHasAttnBias] + mhaHasZeroAttention;
      do
      {
        v91 = [v87 mhaModelDimension] / mhaHeadCount;
        v92 = [v169 objectAtIndexedSubscript:v89];
        descriptor9 = [v92 descriptor];
        shape5 = [descriptor9 shape];
        v95 = [shape5 objectAtIndexedSubscript:1];
        unsignedIntegerValue6 = [v95 unsignedIntegerValue];

        v97 = v182;
        if (!v89)
        {
          v97 = 0;
        }

        v98 = unsignedIntegerValue6 + v97;
        v99 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v91 columns:v98 matrices:v90 rowBytes:v98 * unsignedIntegerValue3 matrixBytes:v98 * unsignedIntegerValue3 * v91 dataType:v186];
        mhaMatrixDescriptors4 = [v187 mhaMatrixDescriptors];
        [mhaMatrixDescriptors4 addObject:v99];

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
        mhaNDArrayDescriptors4 = [v187 mhaNDArrayDescriptors];
        [mhaNDArrayDescriptors4 addObject:v106];

        ++v89;
      }

      while (v89 != 3);
      mhaMatrixDescriptors5 = [v187 mhaMatrixDescriptors];
      v109 = [mhaMatrixDescriptors5 objectAtIndexedSubscript:9];

      mhaMatrixDescriptors6 = [v187 mhaMatrixDescriptors];
      v111 = [mhaMatrixDescriptors6 objectAtIndexedSubscript:10];

      v183 = v109;
      v180 = v111;
      v112 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:objc_msgSend(v109 columns:"columns") matrices:objc_msgSend(v111 rowBytes:"columns") matrixBytes:objc_msgSend(v109 dataType:{"matrices"), objc_msgSend(v111, "columns") * unsignedIntegerValue3, objc_msgSend(v109, "columns") * unsignedIntegerValue3 * objc_msgSend(v111, "columns"), v186}];
      mhaMatrixDescriptors7 = [v187 mhaMatrixDescriptors];
      [mhaMatrixDescriptors7 addObject:v112];

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
      mhaNDArrayDescriptors5 = [v187 mhaNDArrayDescriptors];
      v177 = v119;
      [mhaNDArrayDescriptors5 addObject:v119];

      mhaMatrixDescriptors8 = [v187 mhaMatrixDescriptors];
      v122 = [mhaMatrixDescriptors8 objectAtIndexedSubscript:11];

      v123 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:objc_msgSend(v122 columns:"rows") matrices:objc_msgSend(v112 rowBytes:"rows") matrixBytes:objc_msgSend(v112 dataType:{"matrices"), objc_msgSend(v112, "rows") * unsignedIntegerValue3, objc_msgSend(v122, "rows") * unsignedIntegerValue3 * objc_msgSend(v112, "rows"), v186}];
      mhaMatrixDescriptors9 = [v187 mhaMatrixDescriptors];
      v172 = v123;
      [mhaMatrixDescriptors9 addObject:v123];

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
      mhaNDArrayDescriptors6 = [v187 mhaNDArrayDescriptors];
      v171 = v130;
      [mhaNDArrayDescriptors6 addObject:v130];

      v132 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:objc_msgSend(v187 columns:"mhaModelDimension") rowBytes:objc_msgSend(v187 dataType:{"mhaModelDimension"), objc_msgSend(v187, "mhaModelDimension") * unsignedIntegerValue3, v186}];
      mhaMatrixDescriptors10 = [v187 mhaMatrixDescriptors];
      v165 = v132;
      [mhaMatrixDescriptors10 addObject:v132];

      v134 = MEMORY[0x277CD7268];
      v135 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v187, "mhaModelDimension")}];
      v190[0] = v135;
      v136 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v187, "mhaModelDimension")}];
      v190[1] = v136;
      v137 = [MEMORY[0x277CBEA60] arrayWithObjects:v190 count:2];
      v138 = [v134 descriptorWithDataType:v186 shape:v137];

      [v138 setPreferPackedRows:1];
      mhaNDArrayDescriptors7 = [v187 mhaNDArrayDescriptors];
      [mhaNDArrayDescriptors7 addObject:v138];

      v140 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:unsignedIntegerValue columns:objc_msgSend(v187 matrices:"mhaModelDimension") rowBytes:unsignedIntegerValue2 matrixBytes:objc_msgSend(v187 dataType:{"mhaModelDimension") * unsignedIntegerValue3, unsignedIntegerValue3 * unsignedIntegerValue * objc_msgSend(v187, "mhaModelDimension"), v186}];
      mhaMatrixDescriptors11 = [v187 mhaMatrixDescriptors];
      [mhaMatrixDescriptors11 addObject:v140];

      v142 = MEMORY[0x277CD7268];
      v143 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue2];
      v189[0] = v143;
      v144 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue];
      v189[1] = v144;
      v145 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v187, "mhaModelDimension")}];
      v189[2] = v145;
      v146 = [MEMORY[0x277CBEA60] arrayWithObjects:v189 count:3];
      v147 = [v142 descriptorWithDataType:v186 shape:v146];

      [v147 setPreferPackedRows:1];
      mhaNDArrayDescriptors8 = [v187 mhaNDArrayDescriptors];
      [mhaNDArrayDescriptors8 addObject:v147];

      if ([v187 mhaHasBias])
      {
        v149 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:1 columns:objc_msgSend(v187 rowBytes:"mhaModelDimension") dataType:{objc_msgSend(v187, "mhaModelDimension") * unsignedIntegerValue3, v186}];
        mhaMatrixDescriptorsForBias2 = [v187 mhaMatrixDescriptorsForBias];
        [mhaMatrixDescriptorsForBias2 addObject:v149];

        v151 = MEMORY[0x277CD7268];
        v188[0] = &unk_284BA5D20;
        v152 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v187, "mhaModelDimension")}];
        v188[1] = v152;
        v153 = [MEMORY[0x277CBEA60] arrayWithObjects:v188 count:2];
        v154 = [v151 descriptorWithDataType:v186 shape:v153];

        [v154 setPreferPackedRows:1];
        mhaNDArrayDescriptorsForBias2 = [v187 mhaNDArrayDescriptorsForBias];
        [mhaNDArrayDescriptorsForBias2 addObject:v154];
      }

      v33 = v168 + 1;
      deviceCopy = v160;
      deviceList3 = [v160 deviceList];
      v157 = [deviceList3 count];

      tensorsCopy = v169;
      v32 = unsignedIntegerValue3;
      v34 = 0x277CD7000;
    }

    while (v168 + 1 < v157);
  }

  v158 = *MEMORY[0x277D85DE8];
  return 1;
}

+ (BOOL)setMHAOptimizerDataForDevice:(unint64_t)device deviceOps:(id)ops dataForWeights:(id)weights dataForBias:(id)bias momentumArray:(id)array velocityArray:(id)velocityArray centerWeightArray:(id)weightArray weightIndex:(unint64_t)self0 targetIndex:(unint64_t)self1 attnBias:(BOOL)self2
{
  v94[1] = *MEMORY[0x277D85DE8];
  weightsCopy = weights;
  biasCopy = bias;
  arrayCopy = array;
  velocityArrayCopy = velocityArray;
  weightArrayCopy = weightArray;
  v19 = [weightsCopy objectAtIndexedSubscript:index];
  optimizerDeviceData = [v19 optimizerDeviceData];
  v21 = [optimizerDeviceData objectAtIndexedSubscript:device];
  momentumVectors = [v21 momentumVectors];

  v23 = [weightsCopy objectAtIndexedSubscript:index];
  optimizerDeviceData2 = [v23 optimizerDeviceData];
  v25 = [optimizerDeviceData2 objectAtIndexedSubscript:device];
  velocityVectors = [v25 velocityVectors];

  v27 = [weightsCopy objectAtIndexedSubscript:index];
  optimizerDeviceData3 = [v27 optimizerDeviceData];
  v29 = [optimizerDeviceData3 objectAtIndexedSubscript:device];
  centerWeightVectors = [v29 centerWeightVectors];

  v83 = momentumVectors;
  v30 = [momentumVectors objectAtIndexedSubscript:0];
  v31 = [weightsCopy objectAtIndexedSubscript:index];
  optimizerData = [v31 optimizerData];
  v33 = [optimizerData count];

  v82 = velocityVectors;
  if (v33 < 2)
  {
    v86 = 0;
    v87 = 0;
  }

  else
  {
    v86 = [velocityVectors objectAtIndexedSubscript:0];
    v34 = [weightsCopy objectAtIndexedSubscript:index];
    optimizerData2 = [v34 optimizerData];
    v36 = [optimizerData2 count];

    if (v36 < 3)
    {
      v87 = 0;
    }

    else
    {
      v87 = [centerWeightVectors objectAtIndexedSubscript:0];
    }
  }

  if (biasCopy)
  {
    v77 = arrayCopy;
    v78 = velocityArrayCopy;
    v37 = [biasCopy objectAtIndexedSubscript:index];
    optimizerDeviceData4 = [v37 optimizerDeviceData];
    v39 = [optimizerDeviceData4 objectAtIndexedSubscript:device];
    momentumVectors2 = [v39 momentumVectors];

    v41 = [biasCopy objectAtIndexedSubscript:index];
    optimizerDeviceData5 = [v41 optimizerDeviceData];
    v43 = [optimizerDeviceData5 objectAtIndexedSubscript:device];
    velocityVectors2 = [v43 velocityVectors];

    v45 = [biasCopy objectAtIndexedSubscript:index];
    optimizerDeviceData6 = [v45 optimizerDeviceData];
    v47 = [optimizerDeviceData6 objectAtIndexedSubscript:device];
    centerWeightVectors2 = [v47 centerWeightVectors];

    v76 = momentumVectors2;
    v75 = [momentumVectors2 objectAtIndexedSubscript:0];
    v48 = [biasCopy objectAtIndexedSubscript:index];
    optimizerData3 = [v48 optimizerData];
    v50 = [optimizerData3 count];

    if (v50 < 2)
    {
      v51 = velocityVectors2;
      v81 = 0;
    }

    else
    {
      v51 = velocityVectors2;
      v81 = [velocityVectors2 objectAtIndexedSubscript:0];
      v52 = [biasCopy objectAtIndexedSubscript:index];
      optimizerData4 = [v52 optimizerData];
      v54 = [optimizerData4 count];

      if (v54 >= 3)
      {
        v55 = [centerWeightVectors2 objectAtIndexedSubscript:0];
LABEL_17:
        v59 = weightArrayCopy;
        v80 = v30;
        v64 = [weightsCopy objectAtIndexedSubscript:index];
        optimizerData5 = [v64 optimizerData];
        if ([optimizerData5 count])
        {
          v66 = [biasCopy objectAtIndexedSubscript:index];
          optimizerData6 = [v66 optimizerData];
          v68 = [optimizerData6 count];

          arrayCopy = v77;
          v69 = v75;
          if (v68)
          {
            v91[0] = v80;
            v91[1] = v75;
            v70 = [MEMORY[0x277CBEA60] arrayWithObjects:v91 count:2];
            [v77 setObject:v70 atIndexedSubscript:targetIndex];

            if (v86 && v81)
            {
              v90[0] = v86;
              v90[1] = v81;
              v71 = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:2];
              [v78 setObject:v71 atIndexedSubscript:targetIndex];
            }

            if (v87 && v55)
            {
              v89[0] = v87;
              v89[1] = v55;
              v72 = [MEMORY[0x277CBEA60] arrayWithObjects:v89 count:2];
              [weightArrayCopy setObject:v72 atIndexedSubscript:targetIndex];
            }
          }
        }

        else
        {

          arrayCopy = v77;
          v69 = v75;
        }

        velocityArrayCopy = v78;
        velocityVectors = v82;
        v30 = v80;
        v60 = v86;
        v63 = v76;
        goto LABEL_27;
      }
    }

    v55 = 0;
    goto LABEL_17;
  }

  v56 = [weightsCopy objectAtIndexedSubscript:index];
  optimizerData7 = [v56 optimizerData];
  v58 = [optimizerData7 count];

  v59 = weightArrayCopy;
  v60 = v86;
  if (v58)
  {
    v94[0] = v30;
    v61 = [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:1];
    [arrayCopy setObject:v61 atIndexedSubscript:targetIndex];

    if (v86)
    {
      v93 = v86;
      v62 = [MEMORY[0x277CBEA60] arrayWithObjects:&v93 count:1];
      [velocityArrayCopy setObject:v62 atIndexedSubscript:targetIndex];
    }

    v59 = weightArrayCopy;
    if (v87)
    {
      v92 = v87;
      v63 = [MEMORY[0x277CBEA60] arrayWithObjects:&v92 count:1];
      [weightArrayCopy setObject:v63 atIndexedSubscript:targetIndex];
LABEL_27:
    }
  }

  v73 = *MEMORY[0x277D85DE8];
  return 1;
}

+ (BOOL)setOptimizerDataForDevice:(id)device deviceOps:(id)ops dataForWeights:(id)weights dataForBias:(id)bias
{
  deviceCopy = device;
  opsCopy = ops;
  weightsCopy = weights;
  biasCopy = bias;
  v37 = deviceCopy;
  deviceList = [deviceCopy deviceList];
  v13 = [deviceList count];

  v35 = weightsCopy;
  if (v13)
  {
    v14 = 0;
    v15 = 1;
    v16 = biasCopy;
    do
    {
      v17 = [opsCopy objectAtIndexedSubscript:v14];
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
        v15 &= [self setMHAOptimizerDataForDevice:v14 deviceOps:v17 dataForWeights:v35 dataForBias:v25 momentumArray:v21 velocityArray:v22 centerWeightArray:v23 weightIndex:v24 targetIndex:v24 attnBias:v34];
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
          v15 &= [self setMHAOptimizerDataForDevice:v14 deviceOps:v17 dataForWeights:biasCopy dataForBias:0 momentumArray:v21 velocityArray:v22 centerWeightArray:v23 weightIndex:v27 targetIndex:i + 4 attnBias:v34];
        }
      }

      v28 = [v21 copy];
      [v17 setMomentumVectors:v28];

      v29 = [v22 copy];
      [v17 setVelocityVectors:v29];

      v30 = [v23 copy];
      [v17 setCenterWeightVectors:v30];

      ++v14;
      deviceList2 = [v37 deviceList];
      v32 = [deviceList2 count];

      v16 = biasCopy;
    }

    while (v14 < v32);
  }

  else
  {
    LOBYTE(v15) = 1;
    v16 = biasCopy;
  }

  return v15;
}

@end