@interface _MLCCPULSTM
+ (BOOL)compileWithDevice:(id)a3 deviceOps:(id)a4 sourceTensors:(id)a5 resultTensor:(id)a6;
+ (BOOL)setOptimizerDataForDevice:(id)a3 deviceOps:(id)a4 dataForInputWeights:(id)a5 dataForHiddenWeights:(id)a6 dataForPeepholeWeights:(id)a7 dataForBias:(id)a8;
+ (id)layerWithDevice:(id)a3 lstmDescriptor:(id)a4 inputWeights:(id)a5 hiddenWeights:(id)a6 peepholeWeights:(id)a7 biasTerms:(id)a8 gateActivations:(id)a9 ouputResultActivation:(id)a10 inferenceOnly:(BOOL)a11;
- (_MLCCPULSTM)initWithDevice:(id)a3 lstmDescriptor:(id)a4 inputWeights:(id)a5 hiddenWeights:(id)a6 peepholeWeights:(id)a7 biasTerms:(id)a8 gateActivations:(id)a9 outputResultActivation:(id)a10 inferenceOnly:(BOOL)a11;
@end

@implementation _MLCCPULSTM

- (_MLCCPULSTM)initWithDevice:(id)a3 lstmDescriptor:(id)a4 inputWeights:(id)a5 hiddenWeights:(id)a6 peepholeWeights:(id)a7 biasTerms:(id)a8 gateActivations:(id)a9 outputResultActivation:(id)a10 inferenceOnly:(BOOL)a11
{
  v11 = MEMORY[0x28223BE20](self);
  v13 = v12;
  v128 = v14;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v123 = v11;
  v178[1] = *MEMORY[0x277D85DE8];
  v126 = v21;
  v22 = v20;
  v23 = v18;
  v24 = v16;
  v25 = v13;
  v26 = a9;
  v27 = a10;
  v28 = MEMORY[0x277CBEBF8];
  v125 = [MEMORY[0x277CBEBF8] mutableCopy];
  bzero(v157, 0x13A0uLL);
  bzero(v144, 0x13B0uLL);
  v29 = [v28 mutableCopy];
  v30 = [v28 mutableCopy];
  v31 = v22;
  v32 = v23;
  v129 = v25;
  v137 = v30;
  v33 = v29;
  v34 = v31;
  v139 = v33;
  v35 = v24;
  v138 = v26;
  v136 = v27;
  v156[0] = [v31 inputSize];
  v156[1] = [v31 hiddenSize];
  v36 = [v31 hiddenSize];
  v37 = [v31 layerCount];
  v38 = [v31 isBidirectional];
  v39 = 1;
  if (v38)
  {
    v159 = 1;
    v39 = 2;
  }

  [v34 dropout];
  v158 = v40;
  v157[1] = [v34 layerCount];
  v41 = [v138 objectAtIndexedSubscript:0];
  setBNNSActivation(&v163, v41);

  v42 = [v138 objectAtIndexedSubscript:1];
  setBNNSActivation(&v167, v42);

  v43 = [v138 objectAtIndexedSubscript:2];
  setBNNSActivation(&v171, v43);

  v44 = [v138 objectAtIndexedSubscript:3];

  setBNNSActivation(&v175, v44);
  setBNNSActivation(&v176, v136);

  setBNNSLSTMGateDesc(v160, v34);
  setBNNSLSTMGateDesc(v164, v34);
  setBNNSLSTMGateDesc(v168, v34);
  setBNNSLSTMGateDesc(v172, v34);
  addInputWeightPointersToGate(v160, v32, v38, v37, 0, v137, 1);
  addInputWeightPointersToGate(v164, v32, v38, v37, 1, v137, 1);
  addInputWeightPointersToGate(v168, v32, v38, v37, 2, v137, 1);
  addInputWeightPointersToGate(v172, v32, v38, v37, 3, v137, 1);
  if (v37 >= 2)
  {
    addInputWeightPointersToGate(v160, v32, v38, v37, 0, v137, 0);
    addInputWeightPointersToGate(v164, v32, v38, v37, 1, v137, 0);
    addInputWeightPointersToGate(v168, v32, v38, v37, 2, v137, 0);
    addInputWeightPointersToGate(v172, v32, v38, v37, 3, v137, 0);
  }

  v45 = createParameterPointersForGate(v35, 0, v37, v38, v137);
  v160[61] = [v45 bytes];

  v46 = createParameterPointersForGate(v35, 1, v37, v38, v137);
  v164[61] = [v46 bytes];

  v47 = createParameterPointersForGate(v35, 2, v37, v38, v137);
  v168[61] = [v47 bytes];

  v48 = createParameterPointersForGate(v35, 3, v37, v38, v137);

  v172[61] = [v48 bytes];
  if (v129)
  {
    if (v37 == 1)
    {
      v49 = v38;
    }

    else
    {
      v49 = 1;
    }

    if (v49)
    {
      v50 = 4 * v36 * v37 * v39;
      v51 = createBiDirectionalAndStackedGateWeightData(v50, v129, [v34 isBidirectional], v37, 0, v36, v139);
      v162 = [v51 bytes];

      v52 = createBiDirectionalAndStackedGateWeightData(v50, v129, [v34 isBidirectional], v37, 1, v36, v139);
      v166 = [v52 bytes];

      v53 = createBiDirectionalAndStackedGateWeightData(v50, v129, [v34 isBidirectional], v37, 2, v36, v139);
      v170 = [v53 bytes];

      v54 = createBiDirectionalAndStackedGateWeightData(v50, v129, [v34 isBidirectional], v37, 3, v36, v139);
      v174 = [v54 bytes];
    }

    else
    {
      v55 = [v129 objectAtIndexedSubscript:0];
      v56 = [v55 data];
      v162 = [v56 bytes];

      v57 = [v129 objectAtIndexedSubscript:1];
      v58 = [v57 data];
      v166 = [v58 bytes];

      v59 = [v129 objectAtIndexedSubscript:2];
      v60 = [v59 data];
      v170 = [v60 bytes];

      v54 = [v129 objectAtIndexedSubscript:3];
      v61 = [v54 data];
      v174 = [v61 bytes];
    }
  }

  v122 = v35;

  if (a11)
  {
    v158 = 0;
  }

  v124 = v32;
  v134 = [MEMORY[0x277CBEA90] dataWithBytes:v156 length:5040];
  memset(v143, 0, sizeof(v143));
  memset(v142, 0, sizeof(v142));
  v133 = [MEMORY[0x277CBEA90] dataWithBytes:v143 length:176];
  v132 = [MEMORY[0x277CBEA90] dataWithBytes:v142 length:176];
  v62 = MEMORY[0x23EE75B70](v156);
  v127 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:malloc_type_valloc(v62 length:0x457F4D2EuLL) freeWhenDone:{v62, 1}];
  v63 = [v34 inputSize];
  v64 = [v34 hiddenSize];
  v65 = [v34 layerCount];
  v66 = [v34 isBidirectional];
  v67 = [v34 usesBiases];
  v68 = 8;
  if (v67)
  {
    v68 = 12;
  }

  if (v128)
  {
    v68 += 4;
  }

  if (v65 > 1)
  {
    v68 += 4;
  }

  v121 = v68;
  v69 = MEMORY[0x277CBEBF8];
  v131 = [MEMORY[0x277CBEBF8] mutableCopy];
  v140 = [v69 mutableCopy];
  v135 = [v69 mutableCopy];
  v130 = [v69 mutableCopy];
  v70 = v34;
  v71 = 3;
  v72 = [v34 isBidirectional];
  v120 = v70;
  v73 = 0;
  v74 = (v65 << v66) * v64;
  do
  {
    v75 = [v69 mutableCopy];
    v76 = buildBNNSDescInputWeightMomentumForOneGate(v63, v64, v65, v72, 1);
    [v75 setObject:v76 atIndexedSubscript:0];

    v77 = buildBNNSDescInputWeightMomentumForOneGate(v63, v64, v65, v72, 1);
    [v75 setObject:v77 atIndexedSubscript:1];

    v78 = buildBNNSDescInputWeightMomentumForOneGate(v63, v64, v65, v72, 1);
    [v75 setObject:v78 atIndexedSubscript:2];

    v79 = buildBNNSDescInputWeightMomentumForOneGate(v63, v64, v65, v72, 1);
    [v75 setObject:v79 atIndexedSubscript:3];

    if (v65 >= 2)
    {
      v80 = buildBNNSDescInputWeightMomentumForOneGate(v63, v64, v65, v72, 0);
      [v75 setObject:v80 atIndexedSubscript:4];

      v81 = buildBNNSDescInputWeightMomentumForOneGate(v63, v64, v65, v72, 0);
      [v75 setObject:v81 atIndexedSubscript:5];

      v82 = buildBNNSDescInputWeightMomentumForOneGate(v63, v64, v65, v72, 0);
      [v75 setObject:v82 atIndexedSubscript:6];

      v83 = buildBNNSDescInputWeightMomentumForOneGate(v63, v64, v65, v72, 0);
      [v75 setObject:v83 atIndexedSubscript:7];
    }

    [v140 setObject:v75 atIndexedSubscript:v73];

    ++v73;
  }

  while (v73 != 3);
  v84 = 0;
  v85 = MEMORY[0x277CBEBF8];
  do
  {
    v86 = [v85 mutableCopy];
    v87 = buildBNNSDescHiddenWeightMomentumForOneGate(v64, v65, v72);
    [v86 setObject:v87 atIndexedSubscript:0];

    v88 = buildBNNSDescHiddenWeightMomentumForOneGate(v64, v65, v72);
    [v86 setObject:v88 atIndexedSubscript:1];

    v89 = buildBNNSDescHiddenWeightMomentumForOneGate(v64, v65, v72);
    [v86 setObject:v89 atIndexedSubscript:2];

    v90 = buildBNNSDescHiddenWeightMomentumForOneGate(v64, v65, v72);
    [v86 setObject:v90 atIndexedSubscript:3];

    [v135 setObject:v86 atIndexedSubscript:v84];
    ++v84;
  }

  while (v84 != 3);
  if ([v120 usesBiases])
  {
    v91 = 3;
    do
    {
      v92 = createNewBNNSNDArrayForLSTM(v74, v161);
      [v130 setObject:v92 atIndexedSubscript:v91 - 3];

      v93 = createNewBNNSNDArrayForLSTM(v74, v165);
      [v130 setObject:v93 atIndexedSubscript:v91 - 2];

      v94 = createNewBNNSNDArrayForLSTM(v74, v169);
      [v130 setObject:v94 atIndexedSubscript:v91 - 1];

      v95 = createNewBNNSNDArrayForLSTM(v74, v173);
      [v130 setObject:v95 atIndexedSubscript:v91];

      v91 += 4;
      --v71;
    }

    while (v71);
  }

  v178[0] = v133;
  v96 = [MEMORY[0x277CBEA60] arrayWithObjects:v178 count:1];
  v177 = v132;
  v97 = [MEMORY[0x277CBEA60] arrayWithObjects:&v177 count:1];
  v98 = [MLCRNNCPUDeviceOps deviceOpsWithType:17 params:v134 inDeltaData:v96 outDeltaData:v97 weightsDeltaData:0 biasDeltaData:0 weightsMomentumData:v131 biasMomentumData:v130];

  v99 = v137;
  if (v98)
  {
    [v125 addObject:v98];
    [v98 setBatchFirst:{objc_msgSend(v120, "batchFirst")}];
    [v98 setHasBias:{objc_msgSend(v120, "usesBiases")}];
    [v98 setHasPeephole:v128 != 0];
    v100 = v120;
    v101 = v138;
    v102 = v136;
    v103 = [v100 layerCount];
    v144[0] = [v100 inputSize];
    v144[1] = [v100 hiddenSize];
    v144[3] = v103;
    if ([v100 isBidirectional])
    {
      v146 = 1;
    }

    [v100 dropout];
    v145 = v104;
    v105 = [v101 objectAtIndexedSubscript:0];
    setBNNSActivation(&v148, v105);

    v106 = [v101 objectAtIndexedSubscript:1];
    setBNNSActivation(&v150, v106);

    v107 = [v101 objectAtIndexedSubscript:2];
    setBNNSActivation(&v152, v107);

    v108 = [v101 objectAtIndexedSubscript:3];

    setBNNSActivation(&v154, v108);
    setBNNSActivation(&v155, v102);

    setBNNSLSTMGateDesc(&v147, v100);
    setBNNSLSTMGateDesc(&v149, v100);
    setBNNSLSTMGateDesc(&v151, v100);
    setBNNSLSTMGateDesc(&v153, v100);

    v109 = [MEMORY[0x277CBEA90] dataWithBytes:v144 length:5040];
    [v98 setLstmDeltaParams:v109];
    [v98 setTrainingCache:v127];
    [v98 setCombinedGateWeightsAndBias:v139];
    v99 = v137;
    [v98 setParameterPointers:v137];
    [v98 setReturnsSequences:{objc_msgSend(v100, "returnsSequences")}];
    [v98 setNumLayers:{objc_msgSend(v100, "layerCount")}];
    [v98 setBiDirectional:{objc_msgSend(v100, "isBidirectional")}];
    [v98 setInputSize:{objc_msgSend(v100, "inputSize")}];
    [v98 setHiddenSize:{objc_msgSend(v100, "hiddenSize")}];
    [v98 setNumParametersForSingleLSTM:v121];
    v110 = MEMORY[0x277CBEBF8];
    v111 = [MEMORY[0x277CBEBF8] mutableCopy];
    [v98 setCombinedInputsBuffer:v111];

    v112 = [v110 mutableCopy];
    [v98 setCombinedOutputsBuffer:v112];

    [v98 setInputWeightsMomentumDescData:v140];
    [v98 setHiddenWeightsMomentumDescData:v135];
    if (!a11)
    {
      v113 = MEMORY[0x277CBEBF8];
      v114 = [MEMORY[0x277CBEBF8] mutableCopy];
      [v98 setInputWeightsDeltaPointers:v114];

      v115 = [v113 mutableCopy];
      [v98 setHiddenWeightsDeltaPointers:v115];
    }
  }

  v116 = [v125 copy];
  v141.receiver = v123;
  v141.super_class = _MLCCPULSTM;
  v117 = [(_MLCCPULayer *)&v141 initWithDevice:v126 deviceOps:v116];

  v118 = *MEMORY[0x277D85DE8];
  return v117;
}

+ (id)layerWithDevice:(id)a3 lstmDescriptor:(id)a4 inputWeights:(id)a5 hiddenWeights:(id)a6 peepholeWeights:(id)a7 biasTerms:(id)a8 gateActivations:(id)a9 ouputResultActivation:(id)a10 inferenceOnly:(BOOL)a11
{
  v18 = a10;
  v19 = a9;
  v20 = a8;
  v21 = a7;
  v22 = a6;
  v23 = a5;
  v24 = a4;
  v25 = a3;
  LOBYTE(v28) = a11;
  v26 = [[a1 alloc] initWithDevice:v25 lstmDescriptor:v24 inputWeights:v23 hiddenWeights:v22 peepholeWeights:v21 biasTerms:v20 gateActivations:v19 outputResultActivation:v18 inferenceOnly:v28];

  return v26;
}

+ (BOOL)compileWithDevice:(id)a3 deviceOps:(id)a4 sourceTensors:(id)a5 resultTensor:(id)a6
{
  v7 = a5;
  v8 = [a4 objectAtIndexedSubscript:0];
  v9 = [v8 params];
  v10 = [v9 bytes];
  v11 = [v8 lstmDeltaParams];
  v12 = [v11 bytes];
  v13 = [v7 objectAtIndexedSubscript:0];

  v14 = [v13 descriptor];
  v15 = [v14 shape];

  v16 = [v15 objectAtIndexedSubscript:{objc_msgSend(v8, "batchFirst") ^ 1}];
  v17 = [v16 unsignedIntegerValue];

  if ([v8 batchFirst] && objc_msgSend(v15, "count") == 4)
  {
    v28 = v9;
    v18 = v12;
    v19 = 1;
    v20 = 3;
LABEL_11:
    v22 = [v15 objectAtIndexedSubscript:v20];
    v20 = [v22 unsignedIntegerValue];

    v23 = [v15 objectAtIndexedSubscript:v19];
    v21 = [v23 unsignedIntegerValue];

    v12 = v18;
    v9 = v28;
    goto LABEL_12;
  }

  if ([v8 batchFirst] && objc_msgSend(v15, "count") == 3)
  {
    v28 = v9;
    v18 = v12;
    v19 = 2;
    v20 = 1;
    goto LABEL_11;
  }

  if (([v8 batchFirst] & 1) == 0)
  {
    v20 = 0;
    if ([v15 count] != 3)
    {
      v21 = 0;
      goto LABEL_12;
    }

    v28 = v9;
    v18 = v12;
    v19 = 2;
    goto LABEL_11;
  }

  v20 = 0;
  v21 = 0;
LABEL_12:
  if (CPU_BuildBNNSLSTMInputAndOutput(v10, v17, v20, v21, v8) && CPU_BuildBNNSLSTMInputAndOutput(v12, v17, v20, v21, v8))
  {
    objc_opt_class();
    v24 = objc_opt_new();
    [v8 setLayer:v24];

    v25 = [v8 layer];
    [v25 setFilter:0];

    v26 = 1;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

+ (BOOL)setOptimizerDataForDevice:(id)a3 deviceOps:(id)a4 dataForInputWeights:(id)a5 dataForHiddenWeights:(id)a6 dataForPeepholeWeights:(id)a7 dataForBias:(id)a8
{
  v94 = a5;
  v95 = a6;
  v11 = a8;
  v12 = [a4 objectAtIndexedSubscript:0];
  if (([v12 inferenceOnly] & 1) == 0)
  {
    v13 = [v94 objectAtIndexedSubscript:0];
    v14 = [v13 optimizerData];
    v15 = [v14 count];

    [v12 setNumAccumulatorsPerParameter:v15];
    v16 = [v12 numLayers];
    v17 = [v12 biDirectional];
    if (v15)
    {
      v18 = 0;
      v19 = 8;
      if (v17)
      {
        v19 = 16;
      }

      size = v19;
      v91 = v16 - 1;
      v93 = v16;
      v20 = 8 * ((v16 - 1) << v17);
      v83 = 4 * v16;
      v78 = v11;
      v79 = 4 * v16 + 4;
      v96 = v17;
      v21 = v12;
      v81 = v15;
      v82 = v20;
      do
      {
        v89 = [MEMORY[0x277CBEBF8] mutableCopy];
        for (i = 0; i != 4; ++i)
        {
          v23 = malloc_type_malloc(size, 0x80040B8603338uLL);
          v24 = [v94 objectAtIndexedSubscript:i];
          v25 = [v24 optimizerData];
          v26 = [v25 objectAtIndexedSubscript:v18];
          *v23 = [v26 bytes];

          if ([v12 biDirectional])
          {
            v27 = [v94 objectAtIndexedSubscript:v83 + i];
            v28 = [v27 optimizerData];
            v29 = [v28 objectAtIndexedSubscript:v18];
            v23[1] = [v29 bytes];
          }

          v30 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v23 length:size freeWhenDone:0];
          [v89 addObject:v30];
          v31 = [v12 inputWeightsMomentumDescData];
          v32 = [v31 objectAtIndexedSubscript:v18];
          v33 = [v32 objectAtIndexedSubscript:i];
          v34 = [v33 bytes];

          *(v34 + 136) = [v30 bytes];
        }

        v35 = v82;
        v36 = v12;
        if (v93 >= 2)
        {
          v87 = 0;
          v37 = 4;
          v38 = v79;
          do
          {
            v39 = malloc_type_malloc(v35, 0x80040B8603338uLL);
            v40 = 0;
            v85 = v38;
            v86 = v37;
            do
            {
              v41 = [v94 objectAtIndexedSubscript:v37];
              v42 = [v41 optimizerData];
              v43 = [v42 objectAtIndexedSubscript:v18];
              v44 = &v39[8 * (v40 << v96)];
              *v44 = [v43 bytes];

              if ([v21 biDirectional])
              {
                v45 = [v94 objectAtIndexedSubscript:v38];
                v46 = [v45 optimizerData];
                v47 = [v46 objectAtIndexedSubscript:v18];
                *(v44 + 1) = [v47 bytes];
              }

              v38 += 4;
              ++v40;
              v37 += 4;
            }

            while (v91 != v40);
            v84 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v39 length:v82 freeWhenDone:0];
            v48 = v87;
            [v89 setObject:v84 atIndexedSubscript:v87 | 4];
            v36 = v21;
            v49 = [v21 inputWeightsMomentumDescData];
            v50 = [v49 objectAtIndexedSubscript:v18];
            v51 = [v50 objectAtIndexedSubscript:v87 | 4];
            v52 = [v51 bytes];

            v35 = v82;
            *(v52 + 136) = v39;

            v38 = v85 + 1;
            v37 = v86 + 1;
            ++v87;
          }

          while (v48 != 3);
        }

        v53 = [v36 bnnsInputWeightsMomentumPointers];
        [v53 setObject:v89 atIndexedSubscript:v18];

        ++v18;
        v12 = v36;
      }

      while (v18 != v81);
      v54 = 0;
      v55 = v93;
      v56 = 8 * (v93 << v96);
      do
      {
        v92 = 0;
        v88 = [MEMORY[0x277CBEBF8] mutableCopy];
        v90 = v83;
        do
        {
          v57 = malloc_type_malloc(v56, 0x80040B8603338uLL);
          if (v55)
          {
            v58 = 0;
            v60 = v90;
            v59 = v92;
            do
            {
              v61 = [v95 objectAtIndexedSubscript:v59];
              v62 = [v61 optimizerData];
              v63 = [v62 objectAtIndexedSubscript:v54];
              v64 = &v57[8 * (v58 << v96)];
              *v64 = [v63 bytes];

              if ([v21 biDirectional])
              {
                v65 = [v95 objectAtIndexedSubscript:v60];
                v66 = [v65 optimizerData];
                v67 = [v66 objectAtIndexedSubscript:v54];
                *(v64 + 1) = [v67 bytes];
              }

              ++v58;
              v60 += 4;
              v59 += 4;
            }

            while (v93 != v58);
          }

          v56 = 8 * (v93 << v96);
          v68 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v57 length:v56 freeWhenDone:0];
          v69 = v92;
          [v88 setObject:v68 atIndexedSubscript:v92];
          v70 = [v21 hiddenWeightsMomentumDescData];
          v71 = [v70 objectAtIndexedSubscript:v54];
          v72 = [v71 objectAtIndexedSubscript:v92];
          v73 = [v72 bytes];

          *(v73 + 136) = v57;
          ++v90;
          ++v92;
          v55 = v93;
        }

        while (v69 != 3);
        v12 = v21;
        v74 = [v21 bnnsHiddenWeightsMomentumPointers];
        [v74 setObject:v88 atIndexedSubscript:v54];

        ++v54;
      }

      while (v54 != v81);
      v11 = v78;
      if (v78)
      {
        v75 = 0;
        v76 = 3;
        do
        {
          setBiasOptimizerData(v21, v78, 0, v76 - 3, v75);
          setBiasOptimizerData(v21, v78, 1, v76 - 2, v75);
          setBiasOptimizerData(v21, v78, 2, v76 - 1, v75);
          setBiasOptimizerData(v21, v78, 3, v76, v75++);
          v76 += 4;
        }

        while (v81 != v75);
      }
    }
  }

  return 1;
}

@end