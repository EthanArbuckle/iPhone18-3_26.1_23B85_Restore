@interface _MLCGPUConvolution
+ (BOOL)compileWithDevice:(id)a3 deviceOps:(id)a4 sourceTensors:(id)a5 resultTensor:(id)a6;
+ (BOOL)setOptimizerDataForDevice:(id)a3 deviceOps:(id)a4 weights:(id)a5 bias:(id)a6;
+ (id)layerWithDevice:(id)a3 weights:(id)a4 biasTerms:(id)a5 descriptor:(id)a6 neuronDescriptor:(id)a7;
+ (void)setGradientComputeWeightsAndBiasOnly:(id)a3 deviceOps:(id)a4;
- (_MLCGPUConvolution)initWithDevice:(id)a3 weights:(id)a4 biasTerms:(id)a5 descriptor:(id)a6 neuronDescriptor:(id)a7;
@end

@implementation _MLCGPUConvolution

- (_MLCGPUConvolution)initWithDevice:(id)a3 weights:(id)a4 biasTerms:(id)a5 descriptor:(id)a6 neuronDescriptor:(id)a7
{
  v169[1] = *MEMORY[0x277D85DE8];
  v155 = a3;
  v154 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v158.receiver = self;
  v158.super_class = _MLCGPUConvolution;
  v16 = [(_MLCGPUConvolution *)&v158 init];
  v17 = v16;
  if (!v16)
  {
LABEL_89:
    v131 = v17;
    goto LABEL_90;
  }

  v136 = v16;
  v141 = [MEMORY[0x277CBEBF8] mutableCopy];
  v18 = 0x277CBE000;
  v140 = v15;
  v149 = +[MLCPlatformInfo gpuUseMPSGraphConvolution];
  if (v149)
  {
    v137 = 0;
    v138 = 0;
    v142 = 1;
LABEL_25:
    v37 = [v155 deviceList];
    v38 = [v37 count];

    if (v38)
    {
      v39 = 0;
      v150 = v13;
      do
      {
        if (v149)
        {
          v40 = objc_opt_new();
          v147 = objc_opt_new();
          v41 = [MLCConvolutionGPUDeviceOps deviceOpsWithForwardMPSGraph:v40 gradientMPSGraph:?];
          [v41 setIsMPSGraph:1];
          v42 = [v14 paddingPolicy];
          v43 = v42 == 1;
          if (!v42)
          {
            v43 = 2;
          }

          v143 = v43;
          v152 = v40;
          if ([v14 isConvolutionTranspose])
          {
            v44 = [v14 outputFeatureChannelCount];
          }

          else
          {
            v44 = [v14 inputFeatureChannelCount];
          }

          v49 = v44;
          v50 = [v14 groupCount];
          if ([v14 isConvolutionTranspose])
          {
            v51 = [v14 inputFeatureChannelCount];
          }

          else
          {
            v51 = [v14 outputFeatureChannelCount];
          }

          v60 = v51;
          v151 = v39;
          if ([v14 usesDepthwiseConvolution])
          {
            v145 = [MEMORY[0x277CD7828] descriptorWithStrideInX:objc_msgSend(v14 strideInY:"strideInX") dilationRateInX:objc_msgSend(v14 dilationRateInY:"strideInY") paddingLeft:objc_msgSend(v14 paddingRight:"dilationRateInX") paddingTop:objc_msgSend(v14 paddingBottom:"dilationRateInY") paddingStyle:objc_msgSend(v14 dataLayout:"paddingSizeInX") weightsLayout:{objc_msgSend(v14, "paddingSizeInX"), objc_msgSend(v14, "paddingSizeInY"), objc_msgSend(v14, "paddingSizeInY"), v143, 0, 3}];
            v61 = [MEMORY[0x277CD7828] descriptorWithStrideInX:objc_msgSend(v14 strideInY:"strideInX") dilationRateInX:objc_msgSend(v14 dilationRateInY:"strideInY") paddingLeft:objc_msgSend(v14 paddingRight:"dilationRateInX") paddingTop:objc_msgSend(v14 paddingBottom:"dilationRateInY") paddingStyle:objc_msgSend(v14 dataLayout:"paddingSizeInX") weightsLayout:{objc_msgSend(v14, "paddingSizeInX"), objc_msgSend(v14, "paddingSizeInY"), objc_msgSend(v14, "paddingSizeInY"), v143, 1, 3}];
            v62 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v14, "kernelHeight")}];
            v168[0] = v62;
            v63 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v14, "kernelWidth")}];
            v168[1] = v63;
            v64 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v14, "inputFeatureChannelCount")}];
            v168[2] = v64;
            v65 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v14, "outputFeatureChannelCount") / objc_msgSend(v14, "inputFeatureChannelCount")}];
            v168[3] = v65;
            v66 = [MEMORY[0x277CBEA60] arrayWithObjects:v168 count:4];
            v67 = [v154 descriptor];
            v68 = [v152 placeholderWithShape:v66 dataType:GPU_GetDataType(objc_msgSend(v67 name:{"dataType")), 0}];

            [v41 setDepthWiseConvolution:1];
          }

          else
          {
            v139 = v49 / v50;
            v145 = [MEMORY[0x277CD7818] descriptorWithStrideInX:objc_msgSend(v14 strideInY:"strideInX") dilationRateInX:objc_msgSend(v14 dilationRateInY:"strideInY") groups:objc_msgSend(v14 paddingLeft:"dilationRateInX") paddingRight:objc_msgSend(v14 paddingTop:"dilationRateInY") paddingBottom:objc_msgSend(v14 paddingStyle:"groupCount") dataLayout:objc_msgSend(v14 weightsLayout:{"paddingSizeInX"), objc_msgSend(v14, "paddingSizeInX"), objc_msgSend(v14, "paddingSizeInY"), objc_msgSend(v14, "paddingSizeInY"), v143, 0, 3}];
            v61 = [MEMORY[0x277CD7818] descriptorWithStrideInX:objc_msgSend(v14 strideInY:"strideInX") dilationRateInX:objc_msgSend(v14 dilationRateInY:"strideInY") groups:objc_msgSend(v14 paddingLeft:"dilationRateInX") paddingRight:objc_msgSend(v14 paddingTop:"dilationRateInY") paddingBottom:objc_msgSend(v14 paddingStyle:"groupCount") dataLayout:objc_msgSend(v14 weightsLayout:{"paddingSizeInX"), objc_msgSend(v14, "paddingSizeInX"), objc_msgSend(v14, "paddingSizeInY"), objc_msgSend(v14, "paddingSizeInY"), v143, 1, 3}];
            [v41 setConvolutionTranspose:{objc_msgSend(v14, "isConvolutionTranspose")}];
            v69 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v14, "kernelHeight")}];
            v167[0] = v69;
            v70 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v14, "kernelWidth")}];
            v167[1] = v70;
            v71 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v139];
            v167[2] = v71;
            v72 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v60];
            v167[3] = v72;
            v73 = [MEMORY[0x277CBEA60] arrayWithObjects:v167 count:4];
            v74 = [v154 descriptor];
            v68 = [v152 placeholderWithShape:v73 dataType:GPU_GetDataType(objc_msgSend(v74 name:{"dataType")), 0}];
          }

          v75 = [v41 descriptorsForMPSGraph];
          v46 = v145;
          [v75 setObject:? atIndexedSubscript:?];

          v76 = [v41 descriptorsForMPSGraph];
          v77 = v61;
          [v76 setObject:v61 atIndexedSubscript:1];

          v13 = v150;
          if (v140)
          {
            v78 = [v41 descriptorsForMPSGraph];
            [v78 setObject:v140 atIndexedSubscript:2];
          }

          v166 = v68;
          v18 = 0x277CBE000uLL;
          v79 = [MEMORY[0x277CBEA60] arrayWithObjects:&v166 count:1];
          v80 = [v79 mutableCopy];
          [v41 setMpsGraphTensors:v80];

          if (v150)
          {
            [v41 setBiasChannelCount:{objc_msgSend(v14, "outputFeatureChannelCount")}];
            v165[0] = &unk_284BA5738;
            v81 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v41, "biasChannelCount")}];
            v165[1] = v81;
            v165[2] = &unk_284BA5738;
            v165[3] = &unk_284BA5738;
            v82 = [MEMORY[0x277CBEA60] arrayWithObjects:v165 count:4];
            v83 = [v150 descriptor];
            v84 = [v152 placeholderWithShape:v82 dataType:GPU_GetDataType(objc_msgSend(v83 name:{"dataType")), 0}];

            v85 = [v41 mpsGraphTensors];
            [v85 addObject:v84];

            [v41 setHasBias:1];
            v18 = 0x277CBE000;
          }

          else
          {
            [v41 setHasBias:0];
          }

          v39 = v151;
          v59 = v147;

          v47 = v152;
        }

        else
        {
          v45 = [v155 deviceList];
          v46 = [v45 objectAtIndexedSubscript:v39];

          if (v142)
          {
            if ([v14 isConvolutionTranspose])
            {
              v47 = [objc_alloc(MEMORY[0x277CD7640]) initWithDevice:v46 weights:v138];
              v48 = MEMORY[0x277CD7648];
            }

            else
            {
              v47 = [objc_alloc(MEMORY[0x277CD7618]) initWithDevice:v46 weights:v138];
              v48 = MEMORY[0x277CD7628];
            }

            v59 = [[v48 alloc] initWithDevice:v46 weights:v138];
          }

          else
          {
            v52 = [v154 childLayers];
            v53 = [v52 objectAtIndexedSubscript:v137];
            v54 = [v53 deviceOps];
            v55 = [v54 objectAtIndexedSubscript:v39];

            [v14 isConvolutionTranspose];
            v56 = [v55 forwardKernel];
            v57 = [v55 gradientKernel];
            v47 = [v56 copy];
            v58 = [v57 copy];

            v59 = v58;
            v13 = v150;
          }

          v41 = 0;
          if (v47 && v59)
          {
            v41 = [MLCGPUDeviceOps deviceOpsWithForwardKernel:v47 gradientKernel:v59];
          }
        }

        if (!v41)
        {
          goto LABEL_87;
        }

        v86 = [v155 deviceList];
        v87 = [v86 count];

        if (v87 >= 2)
        {
          if (v13)
          {
            v163[0] = v154;
            v163[1] = v13;
            v88 = *(v18 + 2656);
            v89 = v163;
            v90 = 2;
          }

          else
          {
            v164 = v154;
            v88 = *(v18 + 2656);
            v89 = &v164;
            v90 = 1;
          }

          v91 = [v88 arrayWithObjects:v89 count:v90];
          v92 = [v41 isMPSGraph];
          v93 = [MLCMultiGPUDeviceOps multiGPUDeviceOpsWithGPUDeviceOps:v41];
          if (v92)
          {
            [v41 setConvolutionMultiGPUChildOps:v93];
            GPU_AllocateResourceForMultiGPUTraining(v155, v93, v91, v39);
          }

          else
          {

            GPU_AllocateResourceForMultiGPUTraining(v155, v93, v91, v39);
            v41 = v93;
          }
        }

        [v41 setLayer:objc_opt_class()];
        [v41 setSourceOfForwardNeededForGradient:1];
        [v41 setResultOfForwardNeededForGradient:0];
        if (![v41 isMPSGraph])
        {
          if ([v14 isConvolutionTranspose])
          {
            [v41 setLayer:objc_opt_class()];
          }

          goto LABEL_86;
        }

        if (v39)
        {
          if (!v13)
          {
            goto LABEL_85;
          }
        }

        else
        {
          if ([v155 needToAllocateDeviceMemoryForTensor:v154])
          {
            [v155 allocateDeviceMemoryForTensor:v154];
          }

          v94 = [v154 deviceMemory];
          v95 = [v94 objectAtIndexedSubscript:0];

          v96 = [v14 isConvolutionTranspose];
          v97 = [v154 data];
          v153 = [v97 bytes];
          v98 = [v95 contents];
          v99 = [v14 kernelWidth];
          v100 = [v14 kernelHeight];
          v101 = [v14 inputFeatureChannelCount];
          if (v96)
          {
            v102 = [v14 outputFeatureChannelCount];
            v148 = v102 / [v14 groupCount];
            v103 = [v154 descriptor];
            LODWORD(v135) = [v103 dataType];
            v104 = [MLCDataHelper convertSourceOIHW:v153 toResultHWOI:v98 width:v99 height:v100 inputFeatureChannelCount:v101 outputFeatureChannelCount:v148 dataType:v135];
          }

          else
          {
            v144 = v100;
            v146 = v99;
            v105 = [v14 groupCount];
            v106 = [v14 usesDepthwiseConvolution];
            v107 = [v14 outputFeatureChannelCount];
            if (v106)
            {
              v107 /= [v14 inputFeatureChannelCount];
            }

            v108 = [v154 descriptor];
            LODWORD(v135) = [v108 dataType];
            v104 = [MLCDataHelper convertSourceOIHW:v153 toResultHWIO:v98 width:v146 height:v144 inputFeatureChannelCount:v101 / v105 outputFeatureChannelCount:v107 dataType:v135];
          }

          v13 = v150;
          v39 = 0;
          v18 = 0x277CBE000uLL;
          if (!v104)
          {
            v109 = +[MLCLog framework];
            if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
            {
              [_MLCGPUConvolution initWithDevice:buf weights:&v162 biasTerms:v109 descriptor:? neuronDescriptor:?];
            }
          }

          +[MLCGPUHelper didModifyRange:buffer:](MLCGPUHelper, "didModifyRange:buffer:", 0, [v95 length], v95);

          if (!v150)
          {
LABEL_85:
            v117 = [v154 deviceMemory];
            v118 = [v117 objectAtIndexedSubscript:v39];
            v159 = v118;
            v119 = [*(v18 + 2656) arrayWithObjects:&v159 count:1];
            v120 = v13;
            v121 = v39;
            v122 = [v119 copy];
            [v41 setExportableState:v122];

            v39 = v121;
            v13 = v120;

            goto LABEL_86;
          }

          if ([v155 needToAllocateDeviceMemoryForTensor:v150])
          {
            [v155 allocateDeviceMemoryForTensor:v150];
          }

          [v155 broadcastTensor:v150];
        }

        v110 = [v154 deviceMemory];
        v111 = [v110 objectAtIndexedSubscript:v39];
        v160[0] = v111;
        v112 = [v13 deviceMemory];
        [v112 objectAtIndexedSubscript:v39];
        v114 = v113 = v39;
        v160[1] = v114;
        v115 = [*(v18 + 2656) arrayWithObjects:v160 count:2];
        v116 = [v115 copy];
        [v41 setExportableState:v116];

        v18 = 0x277CBE000;
        v39 = v113;
        v13 = v150;

LABEL_86:
        [v141 addObject:v41];

LABEL_87:
        ++v39;
        v123 = [v155 deviceList];
        v124 = [v123 count];
      }

      while (v39 < v124);
    }

    v125 = [v141 copy];
    v157.receiver = v136;
    v157.super_class = _MLCGPUConvolution;
    [(_MLCGPULayer *)&v157 setDeviceOps:v125];

    v156.receiver = v136;
    v156.super_class = _MLCGPUConvolution;
    v126 = [(_MLCGPULayer *)&v156 deviceOps];
    v127 = [v14 paddingPolicy];
    v128 = [v14 paddingSizeInX];
    v129 = [v14 paddingSizeInY];
    v130 = v127;
    v17 = v136;
    GPU_SetPaddingPolicyForLayer(v155, v126, v130, v128, v129);

    v15 = v140;
    goto LABEL_89;
  }

  v19 = [v154 childLayers];
  v20 = [v19 count];

  if (v20)
  {
    v21 = 0;
    while (1)
    {
      v22 = [v154 childLayers];
      v23 = [v22 objectAtIndexedSubscript:v21];
      v24 = [v23 deviceOps];
      v25 = v21;
      v26 = [v24 count];

      v142 = v26 == 0;
      if (v26)
      {
        break;
      }

      v27 = [v154 childLayers];
      v28 = [v27 count];

      v21 = v25 + 1;
      if (v25 + 1 >= v28)
      {
        v137 = 0;
        goto LABEL_11;
      }
    }

    v137 = v25;
LABEL_11:
    v15 = v140;
    v18 = 0x277CBE000uLL;
  }

  else
  {
    v137 = 0;
    v142 = 1;
  }

  v169[0] = v154;
  v29 = [*(v18 + 2656) arrayWithObjects:v169 count:1];
  v30 = [v29 mutableCopy];

  if (v13)
  {
    [v30 addObject:v13];
  }

  v31 = GPU_GetDataSourceFromTensors(v30);
  v32 = v31;
  if (v31)
  {
    v33 = [v31 neuronDesc];
    v34 = v33 != 0;

    v35 = (v140 != 0) ^ v34;
    v15 = v140;
    if ((v35 & 1) == 0)
    {
      v138 = v32;
LABEL_24:

      goto LABEL_25;
    }
  }

  else if (!v142)
  {
    v138 = 0;
    goto LABEL_24;
  }

  if (v15)
  {
    [_MLCGPUWeightsConvolution weightWithDescriptor:v14 biasTerms:v13 weights:v154 neuronDescriptor:v15];
  }

  else
  {
    [_MLCGPUWeightsConvolution weightWithDescriptor:v14 biasTerms:v13 weights:v154];
  }
  v36 = ;

  if (v36)
  {
    v138 = v36;
    GPU_AssociateDataSourceToTensors(v36, v30);
    goto LABEL_24;
  }

  v134 = +[MLCLog framework];
  if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
  {
    [_MLCGPUConvolution initWithDevice:a2 weights:v134 biasTerms:? descriptor:? neuronDescriptor:?];
  }

  v131 = 0;
  v17 = v136;
LABEL_90:

  v132 = *MEMORY[0x277D85DE8];
  return v131;
}

+ (BOOL)setOptimizerDataForDevice:(id)a3 deviceOps:(id)a4 weights:(id)a5 bias:(id)a6
{
  v73[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v63 = a4;
  v10 = a5;
  v11 = a6;
  v64 = v9;
  v12 = [v9 deviceList];
  v13 = [v12 count];

  if (v13)
  {
    v14 = 0;
    while (1)
    {
      v15 = [v63 objectAtIndexedSubscript:v14];
      v16 = [v10 optimizerDeviceData];
      v17 = [v16 objectAtIndexedSubscript:v14];
      v18 = [v17 momentumVectors];

      v19 = [v10 optimizerDeviceData];
      v20 = [v19 objectAtIndexedSubscript:v14];
      v21 = [v20 velocityVectors];

      v22 = [v10 optimizerDeviceData];
      v23 = [v22 objectAtIndexedSubscript:v14];
      v24 = [v23 centerWeightVectors];

      if (v11)
      {
        break;
      }

      v51 = [v10 optimizerData];
      v52 = [v51 count];

      if (!v52)
      {
        goto LABEL_14;
      }

      v53 = [v18 objectAtIndexedSubscript:0];
      v73[0] = v53;
      v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:1];
      [v15 setMomentumVectors:v54];

      v55 = [v10 optimizerData];
      v56 = [v55 count];

      if (v56 < 2)
      {
        goto LABEL_14;
      }

      v57 = [v21 objectAtIndexedSubscript:0];
      v72 = v57;
      v58 = [MEMORY[0x277CBEA60] arrayWithObjects:&v72 count:1];
      [v15 setVelocityVectors:v58];

      v59 = [v10 optimizerData];
      v60 = [v59 count];

      if (v60 < 3)
      {
        goto LABEL_14;
      }

      v27 = [v24 objectAtIndexedSubscript:0];
      v71 = v27;
      v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v71 count:1];
      [v15 setCenterWeightVectors:v30];
LABEL_13:

LABEL_14:
      ++v14;
      v49 = [v64 deviceList];
      v50 = [v49 count];

      if (v14 >= v50)
      {
        goto LABEL_20;
      }
    }

    v65 = v24;
    v66 = v21;
    v67 = v18;
    v25 = [v11 optimizerDeviceData];
    v26 = [v25 objectAtIndexedSubscript:v14];
    v27 = [v26 momentumVectors];

    v28 = [v11 optimizerDeviceData];
    v29 = [v28 objectAtIndexedSubscript:v14];
    v30 = [v29 velocityVectors];

    v31 = [v11 optimizerDeviceData];
    v32 = [v31 objectAtIndexedSubscript:v14];
    v33 = [v32 centerWeightVectors];

    v34 = [v10 optimizerData];
    if (![v34 count])
    {
      goto LABEL_11;
    }

    v35 = [v11 optimizerData];
    v36 = [v35 count];

    if (v36)
    {
      v37 = [v67 objectAtIndexedSubscript:0];
      v70[0] = v37;
      v38 = [v27 objectAtIndexedSubscript:0];
      v70[1] = v38;
      v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:2];
      [v15 setMomentumVectors:v39];

      v34 = [v10 optimizerData];
      if ([v34 count] < 2)
      {
        goto LABEL_11;
      }

      v40 = [v11 optimizerData];
      v41 = [v40 count];

      if (v41 < 2)
      {
        goto LABEL_12;
      }

      v42 = [v66 objectAtIndexedSubscript:0];
      v69[0] = v42;
      v43 = [v30 objectAtIndexedSubscript:0];
      v69[1] = v43;
      v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:2];
      [v15 setVelocityVectors:v44];

      v34 = [v10 optimizerData];
      if ([v34 count] < 3)
      {
LABEL_11:

        goto LABEL_12;
      }

      v45 = [v11 optimizerData];
      v46 = [v45 count];

      if (v46 >= 3)
      {
        v34 = [v65 objectAtIndexedSubscript:0];
        v68[0] = v34;
        v47 = [v33 objectAtIndexedSubscript:0];
        v68[1] = v47;
        v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:2];
        [v15 setCenterWeightVectors:v48];

        goto LABEL_11;
      }
    }

LABEL_12:

    v21 = v66;
    v18 = v67;
    v24 = v65;
    goto LABEL_13;
  }

LABEL_20:

  v61 = *MEMORY[0x277D85DE8];
  return 1;
}

+ (void)setGradientComputeWeightsAndBiasOnly:(id)a3 deviceOps:(id)a4
{
  v13 = a3;
  v5 = a4;
  v6 = [v13 deviceList];
  v7 = [v6 count];

  if (v7)
  {
    v8 = 0;
    do
    {
      v9 = [v5 objectAtIndexedSubscript:v8];
      [v9 setComputeWeightsAndBiasOnly:1];
      if (([v9 isMPSGraph] & 1) == 0)
      {
        v10 = [v9 gradientKernel];
        [v10 setGradientOption:2];
      }

      ++v8;
      v11 = [v13 deviceList];
      v12 = [v11 count];
    }

    while (v8 < v12);
  }
}

+ (BOOL)compileWithDevice:(id)a3 deviceOps:(id)a4 sourceTensors:(id)a5 resultTensor:(id)a6
{
  v288[4] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v255 = v9;
  v13 = [v9 deviceList];
  v14 = [v13 count];

  if (v14)
  {
    v15 = 0;
    v229 = v10;
    v268 = v12;
    v269 = v11;
    while (1)
    {
      v16 = [v10 objectAtIndexedSubscript:v15];
      if ([v16 isMPSGraph])
      {
        v242 = v16;
        v17 = [v10 objectAtIndexedSubscript:v15];
        v256 = [v17 forwardMPSGraph];
        v270 = v17;
        v267 = [v17 gradientMPSGraph];
        v18 = [v11 objectAtIndexedSubscript:0];
        v19 = [v18 descriptor];
        DataType = GPU_GetDataType([v19 dataType]);

        v20 = [v11 objectAtIndexedSubscript:0];
        v21 = [v20 descriptor];
        v22 = [v21 shape];
        v23 = [v22 count];

        v253 = v15;
        if (v23 > 2)
        {
          if (v23 == 3)
          {
            v263 = [v11 objectAtIndexedSubscript:0];
            v258 = [v263 descriptor];
            v252 = [v258 shape];
            v67 = [v252 objectAtIndexedSubscript:0];
            v284[0] = v67;
            v284[1] = &unk_284BA5738;
            v68 = [v11 objectAtIndexedSubscript:0];
            v69 = [v68 descriptor];
            v70 = [v69 shape];
            v71 = [v70 objectAtIndexedSubscript:2];
            v284[2] = v71;
            v72 = [v269 objectAtIndexedSubscript:0];
            v73 = [v72 descriptor];
            v74 = [v73 shape];
            v75 = [v74 objectAtIndexedSubscript:1];
            v284[3] = v75;
            v266 = [MEMORY[0x277CBEA60] arrayWithObjects:v284 count:4];

            v32 = [v269 objectAtIndexedSubscript:0];
            v33 = [v32 descriptor];
            v76 = [v33 shape];
            v264 = [v76 objectAtIndexedSubscript:0];
            v283[0] = v264;
            v259 = [v269 objectAtIndexedSubscript:0];
            v77 = [v259 descriptor];
            v78 = [v77 shape];
            v79 = [v78 objectAtIndexedSubscript:1];
            v283[1] = v79;
            v283[2] = &unk_284BA5738;
            v80 = [v269 objectAtIndexedSubscript:0];
            v81 = [v80 descriptor];
            v82 = [v81 shape];
            v83 = [v82 objectAtIndexedSubscript:2];
            v283[3] = v83;
            v250 = [MEMORY[0x277CBEA60] arrayWithObjects:v283 count:4];

            v11 = v269;
            v15 = v253;
          }

          else
          {
            if (v23 != 4)
            {
              goto LABEL_15;
            }

            v240 = [v11 objectAtIndexedSubscript:0];
            v262 = [v240 descriptor];
            v257 = [v262 shape];
            v251 = [v257 objectAtIndexedSubscript:0];
            v282[0] = v251;
            v247 = [v11 objectAtIndexedSubscript:0];
            v245 = [v247 descriptor];
            v243 = [v245 shape];
            v49 = [v243 objectAtIndexedSubscript:2];
            v282[1] = v49;
            v50 = [v269 objectAtIndexedSubscript:0];
            v51 = [v50 descriptor];
            v52 = [v51 shape];
            v53 = [v52 objectAtIndexedSubscript:3];
            v282[2] = v53;
            v54 = [v269 objectAtIndexedSubscript:0];
            v55 = [v54 descriptor];
            v56 = [v55 shape];
            [v56 objectAtIndexedSubscript:1];
            v58 = v57 = v15;
            v282[3] = v58;
            v266 = [MEMORY[0x277CBEA60] arrayWithObjects:v282 count:4];

            v15 = v57;
            v11 = v269;

LABEL_16:
            v32 = [v11 objectAtIndexedSubscript:0];
            v33 = [v32 descriptor];
            v250 = [v33 shape];
          }

LABEL_19:
          v12 = v268;
        }

        else
        {
          if (v23 != 1)
          {
            if (v23 == 2)
            {
              v24 = [v11 objectAtIndexedSubscript:0];
              v25 = [v24 descriptor];
              v26 = [v25 shape];
              v27 = [v26 objectAtIndexedSubscript:0];
              v286[0] = v27;
              v286[1] = &unk_284BA5738;
              v286[2] = &unk_284BA5738;
              v28 = [v11 objectAtIndexedSubscript:0];
              v29 = [v28 descriptor];
              v30 = [v29 shape];
              v31 = [v30 objectAtIndexedSubscript:1];
              v286[3] = v31;
              v266 = [MEMORY[0x277CBEA60] arrayWithObjects:v286 count:4];

              v32 = [v269 objectAtIndexedSubscript:0];
              v33 = [v32 descriptor];
              v34 = [v33 shape];
              v35 = [v34 objectAtIndexedSubscript:0];
              v285[0] = v35;
              v285[1] = &unk_284BA5738;
              v285[2] = &unk_284BA5738;
              v36 = [v269 objectAtIndexedSubscript:0];
              v37 = [v36 descriptor];
              v38 = [v37 shape];
              v39 = [v38 objectAtIndexedSubscript:1];
              v285[3] = v39;
              v250 = [MEMORY[0x277CBEA60] arrayWithObjects:v285 count:4];

              v11 = v269;
              v15 = v253;

              goto LABEL_19;
            }

LABEL_15:
            v59 = [v11 objectAtIndexedSubscript:0];
            v60 = [v59 descriptor];
            v266 = [v60 shape];

            goto LABEL_16;
          }

          v288[0] = &unk_284BA5738;
          v288[1] = &unk_284BA5738;
          v288[2] = &unk_284BA5738;
          v61 = [v11 objectAtIndexedSubscript:0];
          v62 = [v61 descriptor];
          v63 = [v62 shape];
          v64 = [v63 objectAtIndexedSubscript:0];
          v288[3] = v64;
          v266 = [MEMORY[0x277CBEA60] arrayWithObjects:v288 count:4];

          v287[0] = &unk_284BA5738;
          v287[1] = &unk_284BA5738;
          v287[2] = &unk_284BA5738;
          v32 = [v11 objectAtIndexedSubscript:0];
          v33 = [v32 descriptor];
          v65 = [v33 shape];
          v66 = [v65 objectAtIndexedSubscript:0];
          v287[3] = v66;
          v250 = [MEMORY[0x277CBEA60] arrayWithObjects:v287 count:4];
        }

        v84 = [v12 descriptor];
        v85 = [v84 shape];
        v86 = [v85 count];

        if (v86 > 2)
        {
          if (v86 == 3)
          {
            v113 = [v12 descriptor];
            v114 = [v113 shape];
            v115 = [v114 objectAtIndexedSubscript:0];
            v277[0] = v115;
            v277[1] = &unk_284BA5738;
            v116 = [v12 descriptor];
            v117 = [v116 shape];
            v118 = [v117 objectAtIndexedSubscript:2];
            v277[2] = v118;
            v119 = [v12 descriptor];
            v120 = [v119 shape];
            v121 = [v120 objectAtIndexedSubscript:1];
            v277[3] = v121;
            v265 = [MEMORY[0x277CBEA60] arrayWithObjects:v277 count:4];

            v93 = [v268 descriptor];
            v94 = [v93 shape];
            v95 = [v94 objectAtIndexedSubscript:0];
            v276[0] = v95;
            v96 = [v268 descriptor];
            v122 = [v96 shape];
            v123 = [v122 objectAtIndexedSubscript:1];
            v276[1] = v123;
            v276[2] = &unk_284BA5738;
            v124 = [v268 descriptor];
            v125 = [v124 shape];
            v126 = [v125 objectAtIndexedSubscript:2];
            v276[3] = v126;
            v239 = [MEMORY[0x277CBEA60] arrayWithObjects:v276 count:4];

            v11 = v269;
            v15 = v253;

LABEL_31:
            goto LABEL_32;
          }

          if (v86 != 4)
          {
            goto LABEL_27;
          }

          v99 = [v12 descriptor];
          v260 = [v99 shape];
          v248 = [v260 objectAtIndexedSubscript:0];
          v275[0] = v248;
          v100 = [v12 descriptor];
          v101 = [v100 shape];
          v102 = [v101 objectAtIndexedSubscript:2];
          v275[1] = v102;
          v103 = [v268 descriptor];
          v104 = [v103 shape];
          v105 = [v104 objectAtIndexedSubscript:3];
          v275[2] = v105;
          v106 = [v268 descriptor];
          v107 = [v106 shape];
          v108 = [v107 objectAtIndexedSubscript:1];
          v275[3] = v108;
          v265 = [MEMORY[0x277CBEA60] arrayWithObjects:v275 count:4];

          v11 = v269;
          v15 = v253;

          v12 = v268;
LABEL_28:
          v93 = [v12 descriptor];
          v239 = [v93 shape];
        }

        else
        {
          if (v86 != 1)
          {
            if (v86 == 2)
            {
              v87 = [v12 descriptor];
              v88 = [v87 shape];
              v89 = [v88 objectAtIndexedSubscript:0];
              v279[0] = v89;
              v279[1] = &unk_284BA5738;
              v279[2] = &unk_284BA5738;
              v90 = [v12 descriptor];
              v91 = [v90 shape];
              v92 = [v91 objectAtIndexedSubscript:1];
              v279[3] = v92;
              v265 = [MEMORY[0x277CBEA60] arrayWithObjects:v279 count:4];

              v93 = [v12 descriptor];
              v94 = [v93 shape];
              v95 = [v94 objectAtIndexedSubscript:0];
              v278[0] = v95;
              v278[1] = &unk_284BA5738;
              v278[2] = &unk_284BA5738;
              v96 = [v12 descriptor];
              v97 = [v96 shape];
              v98 = [v97 objectAtIndexedSubscript:1];
              v278[3] = v98;
              v239 = [MEMORY[0x277CBEA60] arrayWithObjects:v278 count:4];

              goto LABEL_31;
            }

LABEL_27:
            v109 = [v12 descriptor];
            v265 = [v109 shape];

            goto LABEL_28;
          }

          v281[0] = &unk_284BA5738;
          v281[1] = &unk_284BA5738;
          v281[2] = &unk_284BA5738;
          v110 = [v12 descriptor];
          v111 = [v110 shape];
          v112 = [v111 objectAtIndexedSubscript:0];
          v281[3] = v112;
          v265 = [MEMORY[0x277CBEA60] arrayWithObjects:v281 count:4];

          v280[0] = &unk_284BA5738;
          v280[1] = &unk_284BA5738;
          v280[2] = &unk_284BA5738;
          v93 = [v12 descriptor];
          v94 = [v93 shape];
          v95 = [v94 objectAtIndexedSubscript:0];
          v280[3] = v95;
          v239 = [MEMORY[0x277CBEA60] arrayWithObjects:v280 count:4];
LABEL_32:
        }

        v127 = [v255 deviceList];
        v128 = [v127 objectAtIndexedSubscript:v15];

        v129 = [v11 objectAtIndexedSubscript:0];
        v130 = [v129 descriptor];
        v131 = [v130 shape];
        v132 = [v131 count];

        v133 = [v255 gpuLibrary];
        v134 = [v133 objectAtIndexedSubscript:v15];
        v135 = v134;
        if (v132 == 3)
        {
          v136 = [v134 newFunctionWithName:@"transpose_three_dims"];

          v137 = [&unk_284BA5F60 copy];
          v138 = [v266 objectAtIndexedSubscript:0];
          v274[0] = v138;
          v139 = [v266 objectAtIndexedSubscript:2];
          v274[1] = v139;
          v140 = [v266 objectAtIndexedSubscript:3];
          v274[2] = v140;
          v141 = [MEMORY[0x277CBEA60] arrayWithObjects:v274 count:3];

          v249 = [&unk_284BA5F78 copy];
          v142 = [v265 objectAtIndexedSubscript:0];
          v273[0] = v142;
          v143 = [v265 objectAtIndexedSubscript:2];
          v273[1] = v143;
          v144 = [v265 objectAtIndexedSubscript:3];
          v273[2] = v144;
          v246 = [MEMORY[0x277CBEA60] arrayWithObjects:v273 count:3];
        }

        else
        {
          v136 = [v134 newFunctionWithName:@"transpose_four_dims"];

          v137 = [&unk_284BA5F90 copy];
          v141 = v266;
          v249 = [&unk_284BA5FA8 copy];
          v246 = v265;
        }

        v236 = v136;
        v237 = v128;
        v233 = [v128 newComputePipelineStateWithFunction:v136 error:0];
        v145 = [MLCGPUDeviceOps deviceOpsWithForwardKernel:?];
        v235 = v137;
        v146 = [v137 mutableCopy];
        [v145 setTransposeShape:v146];

        v147 = [v269 objectAtIndexedSubscript:0];
        v148 = [v147 descriptor];
        v149 = +[MLCTensor tensorWithShape:dataType:](MLCTensor, "tensorWithShape:dataType:", v141, [v148 dataType]);

        v150 = [v269 objectAtIndexedSubscript:0];
        v151 = [v150 descriptor];
        v234 = v141;
        v152 = +[MLCTensor tensorWithShape:dataType:](MLCTensor, "tensorWithShape:dataType:", v141, [v151 dataType]);

        v153 = [v249 mutableCopy];
        [v145 setTransposeGradientShape:v153];

        v154 = [v268 descriptor];
        v155 = +[MLCTensor tensorWithShape:dataType:](MLCTensor, "tensorWithShape:dataType:", v246, [v154 dataType]);

        v272[0] = v149;
        v272[1] = v155;
        v230 = v155;
        v231 = v152;
        v272[2] = v152;
        v156 = [MEMORY[0x277CBEA60] arrayWithObjects:v272 count:3];
        v157 = [v156 copy];
        v158 = v270;
        [v270 setTransposedTensors:v157];

        v232 = v145;
        [v270 setTransposeDeviceOps:v145];
        v159 = [v256 placeholderWithShape:v250 dataType:DataType name:0];
        v160 = [v270 mpsGraphTensors];
        v161 = [v160 objectAtIndexedSubscript:0];

        v162 = [v270 descriptorsForMPSGraph];
        v163 = [v162 objectAtIndexedSubscript:0];

        v164 = [v270 descriptorsForMPSGraph];
        v261 = [v164 objectAtIndexedSubscript:1];

        v241 = v163;
        if ([v270 depthWiseConvolution])
        {
          v244 = [v256 depthwiseConvolution2DWithSourceTensor:v159 weightsTensor:v161 descriptor:v163 name:0];
          v165 = v267;
        }

        else
        {
          v165 = v267;
          if ([v270 convolutionTranspose])
          {
            [v256 convolutionTranspose2DWithSourceTensor:v159 weightsTensor:v161 outputShape:v239 descriptor:v241 name:0];
          }

          else
          {
            [v256 convolution2DWithSourceTensor:v159 weightsTensor:v161 descriptor:v241 name:0];
          }
          v244 = ;
        }

        v166 = [v270 mpsGraphTensors];
        [v166 addObject:v159];

        v167 = [v270 hasBias];
        v168 = [v270 mpsGraphTensors];
        v169 = v168;
        if (v167)
        {
          v170 = [v168 objectAtIndexedSubscript:1];

          v171 = [v256 additionWithPrimaryTensor:v244 secondaryTensor:v170 name:0];
          v172 = [v270 mpsGraphTensors];
          [v172 addObject:v171];

          v158 = v270;
          v169 = v170;
        }

        else
        {
          [v168 addObject:v244];
        }

        v173 = [v158 descriptorsForMPSGraph];
        v174 = [v173 count];

        if (v174 >= 3)
        {
          v228 = v161;
          v175 = v159;
          v176 = [v158 descriptorsForMPSGraph];
          v177 = [v176 objectAtIndexedSubscript:2];

          v178 = [v158 mpsGraphTensors];
          v179 = v158;
          v180 = v178;
          v181 = [v179 mpsGraphTensors];
          v182 = [v180 objectAtIndexedSubscript:{objc_msgSend(v181, "count") - 1}];

          v183 = v149;
          if ([v177 activationType] == 1)
          {
            v184 = [v256 reLUWithTensor:v182 name:0];
          }

          else if ([v177 activationType] == 3)
          {
            v184 = [v256 sigmoidWithTensor:v182 name:0];
          }

          else
          {
            v184 = v182;
          }

          v185 = v184;
          v158 = v270;
          v186 = [v270 mpsGraphTensors];
          v187 = [v270 mpsGraphTensors];
          [v186 setObject:v185 atIndexedSubscript:{objc_msgSend(v187, "count") - 1}];

          v165 = v267;
          v149 = v183;
          v159 = v175;
          v161 = v228;
        }

        v188 = [v165 placeholderWithShape:v265 dataType:DataType name:0];
        v189 = [v161 shape];
        v190 = [v165 placeholderWithShape:v189 dataType:DataType name:0];

        if ([v158 depthWiseConvolution])
        {
          v191 = v266;
          v192 = [v165 depthwiseConvolution2DDataGradientWithIncomingGradientTensor:v188 weightsTensor:v190 outputShape:v266 descriptor:v261 name:0];
        }

        else
        {
          v191 = v266;
          if ([v158 convolutionTranspose])
          {
            [v165 convolutionTranspose2DDataGradientWithIncomingGradientTensor:v188 weightsTensor:v190 outputShape:v266 forwardConvolutionDescriptor:v261 name:0];
          }

          else
          {
            [v165 convolution2DDataGradientWithIncomingGradientTensor:v188 weightsTensor:v190 outputShape:v266 forwardConvolutionDescriptor:v261 name:0];
          }
          v192 = ;
        }

        v193 = v192;
        v194 = [v165 placeholderWithShape:v191 dataType:DataType name:0];
        if ([v158 depthWiseConvolution])
        {
          v195 = [v161 shape];
          v196 = [v165 depthwiseConvolution2DWeightsGradientWithIncomingGradientTensor:v188 sourceTensor:v194 outputShape:v195 descriptor:v261 name:0];
        }

        else
        {
          v197 = [v158 convolutionTranspose];
          v195 = [v161 shape];
          if (v197)
          {
            [v165 convolutionTranspose2DWeightsGradientWithIncomingGradientTensor:v188 sourceTensor:v194 outputShape:v195 forwardConvolutionDescriptor:v261 name:0];
          }

          else
          {
            [v165 convolution2DWeightsGradientWithIncomingGradientTensor:v188 sourceTensor:v194 outputShape:v195 forwardConvolutionDescriptor:v261 name:0];
          }
          v196 = ;
        }

        v198 = v196;

        v199 = [v270 mpsGraphTensors];
        [v199 addObject:v188];

        v200 = [v270 mpsGraphTensors];
        [v200 addObject:v190];

        v201 = [v270 mpsGraphTensors];
        [v201 addObject:v193];

        v202 = [v270 mpsGraphTensors];
        [v202 addObject:v194];

        v203 = [v270 mpsGraphTensors];
        [v203 addObject:v198];

        if ([v270 hasBias])
        {
          v204 = [v267 reductionSumWithTensor:v188 axes:&unk_284BA5FC0 name:0];
          v205 = [v270 mpsGraphTensors];
          [v205 addObject:v204];
        }

        v10 = v229;
        v12 = v268;
        v11 = v269;
        v15 = v253;
        v40 = v270;
        goto LABEL_67;
      }

      v40 = [v16 forwardKernel];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_68;
      }

      v41 = [v40 padding];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        goto LABEL_68;
      }

      v271 = v40;
      v242 = v16;
      v43 = [v11 objectAtIndexedSubscript:0];
      v44 = [v43 descriptor];
      v45 = [v44 shape];
      v46 = [v45 count];

      if (v46 == 4)
      {
        break;
      }

      v208 = [v11 objectAtIndexedSubscript:0];
      v209 = [v208 descriptor];
      v210 = [v209 shape];
      v211 = [v210 count];

      if (v211 == 3)
      {
        v254 = v15;
        v48 = 0;
        v47 = 2;
        goto LABEL_72;
      }

LABEL_75:
      [_MLCGPUConvolutionTransposePadding convolutionTransposeZeroPaddingWithTopAmount:"convolutionTransposeZeroPaddingWithTopAmount:bottomAmount:leftAmount:rightAmount:outputPaddingX:outputPaddingY:" bottomAmount:? leftAmount:? rightAmount:? outputPaddingX:? outputPaddingY:?];
      v256 = v40 = v271;
      [v271 setPadding:?];
LABEL_67:

      v16 = v242;
LABEL_68:

      ++v15;
      v206 = [v255 deviceList];
      v207 = [v206 count];

      if (v15 >= v207)
      {
        goto LABEL_76;
      }
    }

    v254 = v15;
    v47 = 3;
    v48 = 2;
LABEL_72:
    v212 = [v11 objectAtIndexedSubscript:0];
    v213 = [v212 descriptor];
    v214 = [v213 shape];
    v215 = [v214 objectAtIndexedSubscript:v47];
    [v215 floatValue];
    [v271 strideInPixelsX];
    [v271 dilationRateX];
    [v271 kernelWidth];

    v12 = v268;
    v216 = [v268 descriptor];
    v217 = [v216 shape];
    v218 = [v217 objectAtIndexedSubscript:v47];
    [v218 floatValue];

    if (v46 == 4)
    {
      v219 = [v11 objectAtIndexedSubscript:0];
      v220 = [v219 descriptor];
      v221 = [v220 shape];
      v222 = [v221 objectAtIndexedSubscript:v48];
      [v222 floatValue];
      [v271 strideInPixelsY];
      [v271 dilationRateY];
      [v271 kernelHeight];

      v223 = [v268 descriptor];
      v224 = [v223 shape];
      v225 = [v224 objectAtIndexedSubscript:v48];
      [v225 floatValue];
    }

    v15 = v254;
    goto LABEL_75;
  }

LABEL_76:

  v226 = *MEMORY[0x277D85DE8];
  return 1;
}

+ (id)layerWithDevice:(id)a3 weights:(id)a4 biasTerms:(id)a5 descriptor:(id)a6 neuronDescriptor:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[a1 alloc] initWithDevice:v16 weights:v15 biasTerms:v14 descriptor:v13 neuronDescriptor:v12];

  return v17;
}

- (void)initWithDevice:(const char *)a1 weights:(NSObject *)a2 biasTerms:descriptor:neuronDescriptor:.cold.1(const char *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromSelector(a1);
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_238C1D000, a2, OS_LOG_TYPE_ERROR, "%@: mpsWeightsConvolution creation failed", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)initWithDevice:(os_log_t)log weights:biasTerms:descriptor:neuronDescriptor:.cold.2(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "[_MLCGPUConvolution initWithDevice:weights:biasTerms:descriptor:neuronDescriptor:]";
  _os_log_error_impl(&dword_238C1D000, log, OS_LOG_TYPE_ERROR, "%s: failed to convert weight layout for a convolution layer", buf, 0xCu);
}

@end