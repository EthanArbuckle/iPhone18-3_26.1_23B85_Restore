@interface _MLCCPUFullyConnected
+ (BOOL)compileWithDevice:(id)a3 deviceOps:(id)a4 sourceTensors:(id)a5 resultTensor:(id)a6 fusedBatchNormAndNeuron:(BOOL)a7;
+ (id)layerWithDevice:(id)a3 weights:(id)a4 biasTerms:(id)a5 convolutionDescriptor:(id)a6 neuronDescriptor:(id)a7 fusedBatchNormAndNeuronLayers:(BOOL)a8 mean:(id)a9 variance:(id)a10 beta:(id)a11 gamma:(id)a12 varianceEpsilon:(float)a13 momentum:(float)a14 opType:(int)a15;
+ (id)layerWithDevice:(id)a3 weights:(id)a4 biasTerms:(id)a5 convolutionDescriptor:(id)a6 neuronDescriptor:(id)a7 opType:(int)a8;
- (_MLCCPUFullyConnected)initWithDevice:(id)a3 weights:(id)a4 biasTerms:(id)a5 convolutionDescriptor:(id)a6 neuronDescriptor:(id)a7 fusedBatchNormAndNeuronLayers:(BOOL)a8 mean:(id)a9 variance:(id)a10 beta:(id)a11 gamma:(id)a12 varianceEpsilon:(float)a13 momentum:(float)a14 opType:(int)a15;
@end

@implementation _MLCCPUFullyConnected

- (_MLCCPUFullyConnected)initWithDevice:(id)a3 weights:(id)a4 biasTerms:(id)a5 convolutionDescriptor:(id)a6 neuronDescriptor:(id)a7 fusedBatchNormAndNeuronLayers:(BOOL)a8 mean:(id)a9 variance:(id)a10 beta:(id)a11 gamma:(id)a12 varianceEpsilon:(float)a13 momentum:(float)a14 opType:(int)a15
{
  v135 = a8;
  v171[1] = *MEMORY[0x277D85DE8];
  v138 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v137 = a7;
  v24 = a9;
  v139 = a10;
  v140 = a11;
  v25 = a12;
  v134 = a15;
  v26 = [MEMORY[0x277CBEBF8] mutableCopy];
  if ((a15 - 32) > 6)
  {
    v27 = 0;
  }

  else
  {
    v27 = dword_238D45CF0[a15 - 32];
  }

  v28 = 65552;
  bzero(v149, 0x2F0uLL);
  v29 = v23;
  v30 = v21;
  v144 = v22;
  v150 = 0x20000;
  v151 = [v29 inputFeatureChannelCount];
  v152 = [v29 outputFeatureChannelCount];
  v153 = 1;
  v154 = [v29 inputFeatureChannelCount];
  v31 = [v30 data];
  v155 = [v31 bytes];

  v141 = v30;
  v32 = [v30 descriptor];
  v33 = [v32 dataType];

  if (v33 == 1)
  {
    v34 = 65568;
  }

  else
  {
    v34 = 65552;
    if (v33 != 3)
    {
      v35 = +[MLCLog framework];
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        [_MLCCPUFullyConnected initWithDevice:v30 weights:? biasTerms:? convolutionDescriptor:? neuronDescriptor:? fusedBatchNormAndNeuronLayers:? mean:? variance:? beta:? gamma:? varianceEpsilon:? momentum:? opType:?];
      }

LABEL_14:
      v41 = self;
      v40 = v137;
      v42 = v140;

      v43 = v144;
      v44 = v141;

      v45 = 0;
      goto LABEL_58;
    }
  }

  v156 = v34;
  v157 = 1065353216;
  v36 = v144;
  if (v144)
  {
    v158 = 0x10000;
    v159 = [v29 outputFeatureChannelCount];
    v160 = 1;
    v37 = [v144 data];
    v161 = [v37 bytes];

    v38 = [v144 descriptor];
    v39 = [v38 dataType];

    if (v39 == 1)
    {
      v28 = 65568;
    }

    else if (v39 != 3)
    {
      v35 = +[MLCLog framework];
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        [_MLCCPUFullyConnected initWithDevice:v144 weights:? biasTerms:? convolutionDescriptor:? neuronDescriptor:? fusedBatchNormAndNeuronLayers:? mean:? variance:? beta:? gamma:? varianceEpsilon:? momentum:? opType:?];
      }

      goto LABEL_14;
    }

    v162 = v28;
    v163 = 1065353216;
    v36 = v144;
  }

  v46 = v141;
  v47 = [v29 outputFeatureChannelCount];
  v48 = v47;
  if (v135)
  {
    bzero(v147, 0x468uLL);
    v49 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v48];
    v171[0] = v49;
    v50 = [MEMORY[0x277CBEA60] arrayWithObjects:v171 count:1];
    v51 = CPU_BuildBNNSNormalizationParams(v27, v147, v50, v24, v139, v140, v25, a13, a14);

    v41 = self;
    v40 = v137;
    if (v51)
    {
      if (!v137)
      {
LABEL_22:
        count = v48;
        v143 = v25;
        v123 = v24;
        v119 = [MEMORY[0x277CBEA90] dataWithBytes:v147 length:1128];
        v46 = v141;
        goto LABEL_34;
      }

      if (setBNNSActivation(&v148, v137))
      {
        v134 = 11;
        goto LABEL_22;
      }
    }

    v45 = 0;
    v42 = v140;
    v44 = v141;
LABEL_31:
    v43 = v144;
    goto LABEL_58;
  }

  v40 = v137;
  if (v137)
  {
    v45 = 0;
    if ((setBNNSActivation(v164, v137) & 1) == 0)
    {
      v44 = v141;
      v41 = self;
      v42 = v140;
      goto LABEL_31;
    }

    count = v48;
    v119 = 0;
    v143 = v25;
    v123 = v24;
    v52 = 10;
    goto LABEL_33;
  }

  v123 = v24;
  v143 = v25;
  count = v47;
  if (a15 == 41)
  {
    v119 = 0;
    v164[0] = 21;
    v52 = 41;
    goto LABEL_33;
  }

  if (a15 == 40)
  {
    v119 = 0;
    v164[0] = 11;
    v52 = 40;
LABEL_33:
    v134 = v52;
    goto LABEL_34;
  }

  v119 = 0;
LABEL_34:
  v53 = v144;
  v133 = [MEMORY[0x277CBEA90] dataWithBytes:v149 length:752];
  memset(v147, 0, 176);
  memset(v146, 0, sizeof(v146));
  v132 = [MEMORY[0x277CBEA90] dataWithBytes:v147 length:176];
  v131 = [MEMORY[0x277CBEA90] dataWithBytes:v146 length:176];
  v54 = [v29 inputFeatureChannelCount];
  v55 = [v29 outputFeatureChannelCount] * v54;
  v56 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:malloc_type_calloc(v55 length:4uLL freeWhenDone:{0x100004052888210uLL), 4 * v55, 1}];
  v57 = [v46 descriptor];
  v125 = v56;
  v130 = +[_MLCCPUConvolution createBNNSNDArrayDescriptorForDescriptor:weightsDelta:fullyConnected:dataType:](_MLCCPUConvolution, "createBNNSNDArrayDescriptorForDescriptor:weightsDelta:fullyConnected:dataType:", v29, v56, 1, [v57 dataType]);

  v58 = [MEMORY[0x277CBEBF8] mutableCopy];
  for (i = 0; i != 3; ++i)
  {
    v60 = [v46 descriptor];
    v61 = +[_MLCCPUConvolution createBNNSNDArrayDescriptorForDescriptor:weightsDelta:fullyConnected:dataType:](_MLCCPUConvolution, "createBNNSNDArrayDescriptorForDescriptor:weightsDelta:fullyConnected:dataType:", v29, 0, 1, [v60 dataType]);
    [v58 setObject:v61 atIndexedSubscript:i];
  }

  v129 = v58;
  if (v144)
  {
    v62 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:malloc_type_calloc(objc_msgSend(v29 length:"outputFeatureChannelCount") freeWhenDone:{4uLL, 0x100004052888210uLL), 4 * objc_msgSend(v29, "outputFeatureChannelCount"), 1}];
    v63 = [v144 descriptor];
    v128 = +[_MLCCPUConvolution createBNNSNDArrayDescriptorForDescriptor:biasDelta:dataType:](_MLCCPUConvolution, "createBNNSNDArrayDescriptorForDescriptor:biasDelta:dataType:", v29, v62, [v63 dataType]);

    v117 = v26;
    v64 = 0;
    v65 = v140;
    v66 = [MEMORY[0x277CBEBF8] mutableCopy];
    do
    {
      v67 = [v144 descriptor];
      v68 = +[_MLCCPUConvolution createBNNSNDArrayDescriptorForDescriptor:biasDelta:dataType:](_MLCCPUConvolution, "createBNNSNDArrayDescriptorForDescriptor:biasDelta:dataType:", v29, 0, [v67 dataType]);
      [v66 setObject:v68 atIndexedSubscript:v64];

      ++v64;
    }

    while (v64 != 3);
    v69 = v62;
    v70 = v66;
    v26 = v117;
  }

  else
  {
    v128 = 0;
    v69 = 0;
    v70 = 0;
    v65 = v140;
  }

  v127 = v70;
  if (v135)
  {
    v114 = v69;
    v115 = v29;
    v118 = v26;
    v71 = count;
    v72 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:malloc_type_calloc(count length:4uLL freeWhenDone:{0x100004052888210uLL), 4 * count, 1}];
    v126 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:malloc_type_calloc(count length:4uLL freeWhenDone:{0x100004052888210uLL), 4 * count, 1}];
    v73 = 0x277CCA000uLL;
    v74 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:count];
    v170 = v74;
    v75 = 0x277CBE000uLL;
    v76 = [MEMORY[0x277CBEA60] arrayWithObjects:&v170 count:1];
    v77 = [v65 descriptor];
    v78 = [v77 dataType];
    v122 = v72;
    v79 = v72;
    v80 = v65;
    v121 = CPU_BuildBNNSNDArrayDescriptorForBetaOrGammaDeltas(v76, v79, v78, 0);

    v142 = [MEMORY[0x277CBEBF8] mutableCopy];
    if (v65)
    {
      for (j = 0; j != 3; ++j)
      {
        v82 = [*(v73 + 2992) numberWithUnsignedInteger:v71];
        v169 = v82;
        [*(v75 + 2656) arrayWithObjects:&v169 count:1];
        v83 = v73;
        v85 = v84 = v75;
        v86 = [v80 descriptor];
        CPU_BuildBNNSNDArrayDescriptorForBetaOrGammaDeltas(v85, 0, [v86 dataType], 0);
        v87 = v71;
        v89 = v88 = v80;
        [v142 setObject:v89 atIndexedSubscript:j];

        v80 = v88;
        v71 = v87;

        v75 = v84;
        v73 = v83;
      }
    }

    v90 = v71;
    v91 = [*(v73 + 2992) numberWithUnsignedInteger:v71];
    v168 = v91;
    v92 = [*(v75 + 2656) arrayWithObjects:&v168 count:1];
    v25 = v143;
    v93 = [v143 descriptor];
    v120 = CPU_BuildBNNSNDArrayDescriptorForBetaOrGammaDeltas(v92, v126, [v93 dataType], 0);

    v124 = [MEMORY[0x277CBEBF8] mutableCopy];
    if (v143)
    {
      v94 = 0;
      v95 = v73;
      v96 = v75;
      v97 = v90;
      do
      {
        v98 = [*(v95 + 2992) numberWithUnsignedInteger:v97];
        v167 = v98;
        v99 = [*(v96 + 2656) arrayWithObjects:&v167 count:1];
        v100 = [v143 descriptor];
        v101 = CPU_BuildBNNSNDArrayDescriptorForBetaOrGammaDeltas(v99, 0, [v100 dataType], 0);
        [v124 setObject:v101 atIndexedSubscript:v94];

        ++v94;
      }

      while (v94 != 3);
      v25 = v143;
      v53 = v144;
      v26 = v118;
      v102 = v119;
    }

    else
    {
      v26 = v118;
      v102 = v119;
      v53 = v144;
    }

    v69 = v114;
    v29 = v115;
  }

  else
  {
    v121 = 0;
    v122 = 0;
    v120 = 0;
    v126 = 0;
    v142 = 0;
    v124 = 0;
    v25 = v143;
    v102 = v119;
  }

  v166 = v132;
  v103 = [MEMORY[0x277CBEA60] arrayWithObjects:&v166 count:1];
  v165 = v131;
  v104 = [MEMORY[0x277CBEA60] arrayWithObjects:&v165 count:1];
  v105 = [MLCCPUDeviceOps deviceOpsWithType:v134 params:v133 inDeltaData:v103 outDeltaData:v104 weightsDeltaData:v130 biasDeltaData:v128 weightsMomentumData:v129 biasMomentumData:v127];

  if (v105)
  {
    [v26 addObject:v105];
    [v105 setWeightsDeltaDataBytes:v125];
    [v105 setBiasDeltaDataBytes:v69];
    v106 = [MEMORY[0x277CBEBF8] mutableCopy];
    [v105 setWeightsMomentumDataBytes:v106];

    if (v53)
    {
      v107 = [MEMORY[0x277CBEBF8] mutableCopy];
      [v105 setBiasMomentumDataBytes:v107];
    }

    if (v135)
    {
      [v105 setFusedPrimitiveParams:v102];
      [v105 setBetaDeltaData:v121];
      [v105 setBetaMomentumData:v142];
      [v105 setGammaMomentumData:v124];
      v108 = MEMORY[0x277CBEBF8];
      v109 = [MEMORY[0x277CBEBF8] mutableCopy];
      [v105 setBetaMomentumDataBytes:v109];

      [v105 setGammaDeltaData:v120];
      [v105 setBetaDeltaDataBytes:v122];
      [v105 setGammaDeltaDataBytes:v126];
      v110 = [v108 mutableCopy];
      [v105 setGammaMomentumDataBytes:v110];

      [v105 setMovingMean:v123];
      [v105 setMovingVariance:v139];
    }
  }

  v111 = [v26 copy];
  v145.receiver = self;
  v145.super_class = _MLCCPUFullyConnected;
  v41 = [(_MLCCPULayer *)&v145 initWithDevice:v138 deviceOps:v111];

  v45 = v41;
  v40 = v137;
  v43 = v53;
  v24 = v123;
  v42 = v140;
  v44 = v141;
LABEL_58:

  v112 = *MEMORY[0x277D85DE8];
  return v45;
}

+ (id)layerWithDevice:(id)a3 weights:(id)a4 biasTerms:(id)a5 convolutionDescriptor:(id)a6 neuronDescriptor:(id)a7 opType:(int)a8
{
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  LODWORD(v21) = a8;
  v19 = [[a1 alloc] initWithDevice:v18 weights:v17 biasTerms:v16 convolutionDescriptor:v15 neuronDescriptor:v14 fusedBatchNormAndNeuronLayers:0 mean:0.0 variance:0.0 beta:0 gamma:0 varianceEpsilon:0 momentum:0 opType:v21];

  return v19;
}

+ (id)layerWithDevice:(id)a3 weights:(id)a4 biasTerms:(id)a5 convolutionDescriptor:(id)a6 neuronDescriptor:(id)a7 fusedBatchNormAndNeuronLayers:(BOOL)a8 mean:(id)a9 variance:(id)a10 beta:(id)a11 gamma:(id)a12 varianceEpsilon:(float)a13 momentum:(float)a14 opType:(int)a15
{
  v23 = a12;
  v24 = a11;
  v25 = a10;
  v26 = a9;
  v27 = a7;
  v28 = a6;
  v29 = a5;
  v30 = a4;
  v31 = a3;
  v32 = [a1 alloc];
  LODWORD(v37) = a15;
  *&v33 = a13;
  *&v34 = a14;
  v35 = [v32 initWithDevice:v31 weights:v30 biasTerms:v29 convolutionDescriptor:v28 neuronDescriptor:v27 fusedBatchNormAndNeuronLayers:1 mean:v33 variance:v34 beta:v26 gamma:v25 varianceEpsilon:v24 momentum:v23 opType:v37];

  return v35;
}

+ (BOOL)compileWithDevice:(id)a3 deviceOps:(id)a4 sourceTensors:(id)a5 resultTensor:(id)a6 fusedBatchNormAndNeuron:(BOOL)a7
{
  v104 = a7;
  v116 = *MEMORY[0x277D85DE8];
  v9 = a5;
  v10 = a6;
  v107 = [a4 objectAtIndexedSubscript:0];
  v105 = [v107 params];
  v108 = [v105 bytes];
  v11 = v9;
  v106 = v10;
  v12 = [v11 objectAtIndexedSubscript:0];
  v13 = [v12 descriptor];
  v14 = [v13 shape];
  v15 = [v14 count];

  v16 = [v11 objectAtIndexedSubscript:0];
  v17 = [v16 descriptor];
  v18 = [v17 shape];
  v19 = [v18 objectAtIndexedSubscript:v15 - 1];
  v20 = [v19 unsignedIntegerValue];

  v21 = [v11 objectAtIndexedSubscript:0];
  v22 = [v21 descriptor];
  v23 = [v22 stride];
  v103 = v15 - 1;
  v24 = [v23 objectAtIndexedSubscript:v15 - 1];
  v25 = [v24 unsignedIntegerValue];

  if (v15 == 4)
  {
    v26 = [v11 objectAtIndexedSubscript:0];
    v27 = [v26 descriptor];
    v28 = [v27 shape];
    v29 = [v28 objectAtIndexedSubscript:3];
    v30 = [v29 unsignedIntegerValue];
    v31 = v30 == 1;
    if (v30 != 1)
    {
LABEL_5:

      goto LABEL_7;
    }

    v32 = v20;
    v110 = v25;
    [v11 objectAtIndexedSubscript:0];
    v34 = v33 = v11;
    v35 = [v34 descriptor];
    v36 = [v35 shape];
    v37 = [v36 objectAtIndexedSubscript:2];
    v102 = [v37 unsignedIntegerValue];

    if (v102 == 1)
    {
      v26 = [v33 objectAtIndexedSubscript:0];
      v27 = [v26 descriptor];
      v28 = [v27 shape];
      v29 = [v28 objectAtIndexedSubscript:1];
      v20 = [v29 unsignedIntegerValue];
      v11 = v33;
      v25 = v110;
      v31 = 1;
      goto LABEL_5;
    }

    v11 = v33;
    v25 = v110;
    v31 = 0;
    v20 = v32;
  }

  else
  {
    v31 = 0;
  }

LABEL_7:
  v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v20];
  *&filter_params.flags = v38;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&filter_params count:1];
  v40 = v25;
  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v25];
  layer_params[0] = v41;
  v42 = [MEMORY[0x277CBEA60] arrayWithObjects:layer_params count:1];
  v111 = v11;
  v43 = [v11 objectAtIndexedSubscript:0];
  v44 = [v43 descriptor];
  CPU_BuildBNNSNDArrayDescriptor(v108, v39, v42, 0, [v44 dataType], v31, 0);

  v45 = [v106 descriptor];
  v46 = [v45 shape];
  v47 = [v46 objectAtIndexedSubscript:v103];
  v48 = [v47 unsignedIntegerValue];

  v49 = v31;
  if (v31)
  {
    v50 = [v106 descriptor];
    v51 = [v50 shape];
    v52 = [v51 objectAtIndexedSubscript:1];
    v48 = [v52 unsignedIntegerValue];
  }

  v53 = v106;
  v54 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v48];
  *filter_type = v54;
  v55 = [MEMORY[0x277CBEA60] arrayWithObjects:filter_type count:1];
  v56 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v40];
  v114 = v56;
  v57 = [MEMORY[0x277CBEA60] arrayWithObjects:&v114 count:1];
  v58 = [v106 descriptor];
  CPU_BuildBNNSNDArrayDescriptor(v108 + 352, v55, v57, 0, [v58 dataType], v49, 0);

  memset(&filter_params, 0, sizeof(filter_params));
  filter_params.flags = 1;
  v59 = [v111 objectAtIndexedSubscript:0];
  v60 = [v111 objectAtIndexedSubscript:0];
  v61 = [v60 descriptor];
  v62 = [v61 shape];
  v63 = [v62 objectAtIndexedSubscript:0];
  v64 = adjustBatchSizeForFC(v59, [v63 unsignedIntegerValue]);

  if (!v104)
  {
    v73 = MEMORY[0x23EE75C00](v108, &filter_params, v64);
    v65 = v107;
    if (v73)
    {
      v72 = v111;
      v75 = [v111 objectAtIndexedSubscript:0];
      v76 = [v75 descriptor];
      v77 = [v76 shape];
      v78 = [v77 count];

      if (v78 == 4)
      {
        v79 = [v111 objectAtIndexedSubscript:0];
        v80 = [v79 descriptor];
        v81 = [v80 shape];
        v82 = [v81 objectAtIndexedSubscript:3];
        if ([v82 unsignedIntegerValue] == 1)
        {
          v83 = [v111 objectAtIndexedSubscript:0];
          v84 = [v83 descriptor];
          v85 = [v84 shape];
          v86 = [v85 objectAtIndexedSubscript:2];
          v109 = [v86 unsignedIntegerValue];

          v53 = v106;
          v65 = v107;

          v72 = v111;
          if (v109 == 1)
          {
            v87 = [v111 objectAtIndexedSubscript:0];
            [v107 setSourceStride:CPU_SetBatchStride(v87)];

            [v107 setResultStride:CPU_SetBatchStride(v106)];
LABEL_23:
            v67 = v105;
LABEL_24:
            objc_opt_class();
            v98 = objc_opt_new();
            [v65 setLayer:v98];

            v99 = [v65 layer];
            [v99 setFilter:v73];

            v88 = 1;
            goto LABEL_25;
          }
        }

        else
        {
        }
      }

      v89 = [v72 objectAtIndexedSubscript:0];
      v90 = [v89 descriptor];
      v91 = [v90 shape];
      v92 = v78 - 1;
      v93 = [v91 objectAtIndexedSubscript:v78 - 1];
      [v65 setSourceStride:{objc_msgSend(v93, "unsignedIntegerValue")}];

      v94 = [v53 descriptor];
      v95 = [v94 shape];
      v96 = v92;
      v72 = v111;
      v97 = [v95 objectAtIndexedSubscript:v96];
      [v65 setResultStride:{objc_msgSend(v97, "unsignedIntegerValue")}];

      goto LABEL_23;
    }

    v72 = v111;
    goto LABEL_23;
  }

  v65 = v107;
  v66 = [v107 fusedPrimitiveParams];

  v67 = v66;
  v68 = [v66 bytes];
  if (CPU_BuildBNNSNormalizationInputOutputParams(v68, v111, v106, 0))
  {
    v69 = [v106 descriptor];
    v70 = [v69 shape];
    v71 = [v70 objectAtIndexedSubscript:1];
    v68[3] = [v71 unsignedIntegerValue];

    v72 = v111;
    *filter_type = 0x200000001;
    layer_params[0] = v108;
    layer_params[1] = v68;
    v73 = BNNSFilterCreateFusedLayer(2uLL, filter_type, layer_params, &filter_params);
    if (v73)
    {
      v74 = [v111 objectAtIndexedSubscript:0];
      [v107 setSourceStride:CPU_SetBatchStride(v74)];

      [v107 setResultStride:CPU_SetBatchStride(v106)];
      [v107 setIsFusedBNNSFilter:1];
    }

    goto LABEL_24;
  }

  v88 = 0;
  v72 = v111;
LABEL_25:

  v100 = *MEMORY[0x277D85DE8];
  return v88;
}

- (void)initWithDevice:(void *)a1 weights:biasTerms:convolutionDescriptor:neuronDescriptor:fusedBatchNormAndNeuronLayers:mean:variance:beta:gamma:varianceEpsilon:momentum:opType:.cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 descriptor];
  [v1 dataType];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8(&dword_238C1D000, v2, v3, "%s: Unsupported biasTerms data type (%d)", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithDevice:(void *)a1 weights:biasTerms:convolutionDescriptor:neuronDescriptor:fusedBatchNormAndNeuronLayers:mean:variance:beta:gamma:varianceEpsilon:momentum:opType:.cold.2(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 descriptor];
  [v1 dataType];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8(&dword_238C1D000, v2, v3, "%s: Unsupported weights data type (%d)", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

@end