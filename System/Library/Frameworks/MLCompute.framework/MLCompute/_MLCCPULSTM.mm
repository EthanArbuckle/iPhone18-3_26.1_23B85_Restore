@interface _MLCCPULSTM
+ (BOOL)compileWithDevice:(id)device deviceOps:(id)ops sourceTensors:(id)tensors resultTensor:(id)tensor;
+ (BOOL)setOptimizerDataForDevice:(id)device deviceOps:(id)ops dataForInputWeights:(id)weights dataForHiddenWeights:(id)hiddenWeights dataForPeepholeWeights:(id)peepholeWeights dataForBias:(id)bias;
+ (id)layerWithDevice:(id)device lstmDescriptor:(id)descriptor inputWeights:(id)weights hiddenWeights:(id)hiddenWeights peepholeWeights:(id)peepholeWeights biasTerms:(id)terms gateActivations:(id)activations ouputResultActivation:(id)self0 inferenceOnly:(BOOL)self1;
- (_MLCCPULSTM)initWithDevice:(id)device lstmDescriptor:(id)descriptor inputWeights:(id)weights hiddenWeights:(id)hiddenWeights peepholeWeights:(id)peepholeWeights biasTerms:(id)terms gateActivations:(id)activations outputResultActivation:(id)self0 inferenceOnly:(BOOL)self1;
@end

@implementation _MLCCPULSTM

- (_MLCCPULSTM)initWithDevice:(id)device lstmDescriptor:(id)descriptor inputWeights:(id)weights hiddenWeights:(id)hiddenWeights peepholeWeights:(id)peepholeWeights biasTerms:(id)terms gateActivations:(id)activations outputResultActivation:(id)self0 inferenceOnly:(BOOL)self1
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
  activationsCopy = activations;
  activationCopy = activation;
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
  v138 = activationsCopy;
  v136 = activationCopy;
  v156[0] = [v31 inputSize];
  v156[1] = [v31 hiddenSize];
  hiddenSize = [v31 hiddenSize];
  layerCount = [v31 layerCount];
  isBidirectional = [v31 isBidirectional];
  v39 = 1;
  if (isBidirectional)
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
  addInputWeightPointersToGate(v160, v32, isBidirectional, layerCount, 0, v137, 1);
  addInputWeightPointersToGate(v164, v32, isBidirectional, layerCount, 1, v137, 1);
  addInputWeightPointersToGate(v168, v32, isBidirectional, layerCount, 2, v137, 1);
  addInputWeightPointersToGate(v172, v32, isBidirectional, layerCount, 3, v137, 1);
  if (layerCount >= 2)
  {
    addInputWeightPointersToGate(v160, v32, isBidirectional, layerCount, 0, v137, 0);
    addInputWeightPointersToGate(v164, v32, isBidirectional, layerCount, 1, v137, 0);
    addInputWeightPointersToGate(v168, v32, isBidirectional, layerCount, 2, v137, 0);
    addInputWeightPointersToGate(v172, v32, isBidirectional, layerCount, 3, v137, 0);
  }

  v45 = createParameterPointersForGate(v35, 0, layerCount, isBidirectional, v137);
  v160[61] = [v45 bytes];

  v46 = createParameterPointersForGate(v35, 1, layerCount, isBidirectional, v137);
  v164[61] = [v46 bytes];

  v47 = createParameterPointersForGate(v35, 2, layerCount, isBidirectional, v137);
  v168[61] = [v47 bytes];

  v48 = createParameterPointersForGate(v35, 3, layerCount, isBidirectional, v137);

  v172[61] = [v48 bytes];
  if (v129)
  {
    if (layerCount == 1)
    {
      v49 = isBidirectional;
    }

    else
    {
      v49 = 1;
    }

    if (v49)
    {
      v50 = 4 * hiddenSize * layerCount * v39;
      v51 = createBiDirectionalAndStackedGateWeightData(v50, v129, [v34 isBidirectional], layerCount, 0, hiddenSize, v139);
      bytes = [v51 bytes];

      v52 = createBiDirectionalAndStackedGateWeightData(v50, v129, [v34 isBidirectional], layerCount, 1, hiddenSize, v139);
      bytes2 = [v52 bytes];

      v53 = createBiDirectionalAndStackedGateWeightData(v50, v129, [v34 isBidirectional], layerCount, 2, hiddenSize, v139);
      bytes3 = [v53 bytes];

      v54 = createBiDirectionalAndStackedGateWeightData(v50, v129, [v34 isBidirectional], layerCount, 3, hiddenSize, v139);
      bytes4 = [v54 bytes];
    }

    else
    {
      v55 = [v129 objectAtIndexedSubscript:0];
      data = [v55 data];
      bytes = [data bytes];

      v57 = [v129 objectAtIndexedSubscript:1];
      data2 = [v57 data];
      bytes2 = [data2 bytes];

      v59 = [v129 objectAtIndexedSubscript:2];
      data3 = [v59 data];
      bytes3 = [data3 bytes];

      v54 = [v129 objectAtIndexedSubscript:3];
      data4 = [v54 data];
      bytes4 = [data4 bytes];
    }
  }

  v122 = v35;

  if (only)
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
  inputSize = [v34 inputSize];
  hiddenSize2 = [v34 hiddenSize];
  layerCount2 = [v34 layerCount];
  isBidirectional2 = [v34 isBidirectional];
  usesBiases = [v34 usesBiases];
  v68 = 8;
  if (usesBiases)
  {
    v68 = 12;
  }

  if (v128)
  {
    v68 += 4;
  }

  if (layerCount2 > 1)
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
  isBidirectional3 = [v34 isBidirectional];
  v120 = v70;
  v73 = 0;
  v74 = (layerCount2 << isBidirectional2) * hiddenSize2;
  do
  {
    v75 = [v69 mutableCopy];
    v76 = buildBNNSDescInputWeightMomentumForOneGate(inputSize, hiddenSize2, layerCount2, isBidirectional3, 1);
    [v75 setObject:v76 atIndexedSubscript:0];

    v77 = buildBNNSDescInputWeightMomentumForOneGate(inputSize, hiddenSize2, layerCount2, isBidirectional3, 1);
    [v75 setObject:v77 atIndexedSubscript:1];

    v78 = buildBNNSDescInputWeightMomentumForOneGate(inputSize, hiddenSize2, layerCount2, isBidirectional3, 1);
    [v75 setObject:v78 atIndexedSubscript:2];

    v79 = buildBNNSDescInputWeightMomentumForOneGate(inputSize, hiddenSize2, layerCount2, isBidirectional3, 1);
    [v75 setObject:v79 atIndexedSubscript:3];

    if (layerCount2 >= 2)
    {
      v80 = buildBNNSDescInputWeightMomentumForOneGate(inputSize, hiddenSize2, layerCount2, isBidirectional3, 0);
      [v75 setObject:v80 atIndexedSubscript:4];

      v81 = buildBNNSDescInputWeightMomentumForOneGate(inputSize, hiddenSize2, layerCount2, isBidirectional3, 0);
      [v75 setObject:v81 atIndexedSubscript:5];

      v82 = buildBNNSDescInputWeightMomentumForOneGate(inputSize, hiddenSize2, layerCount2, isBidirectional3, 0);
      [v75 setObject:v82 atIndexedSubscript:6];

      v83 = buildBNNSDescInputWeightMomentumForOneGate(inputSize, hiddenSize2, layerCount2, isBidirectional3, 0);
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
    v87 = buildBNNSDescHiddenWeightMomentumForOneGate(hiddenSize2, layerCount2, isBidirectional3);
    [v86 setObject:v87 atIndexedSubscript:0];

    v88 = buildBNNSDescHiddenWeightMomentumForOneGate(hiddenSize2, layerCount2, isBidirectional3);
    [v86 setObject:v88 atIndexedSubscript:1];

    v89 = buildBNNSDescHiddenWeightMomentumForOneGate(hiddenSize2, layerCount2, isBidirectional3);
    [v86 setObject:v89 atIndexedSubscript:2];

    v90 = buildBNNSDescHiddenWeightMomentumForOneGate(hiddenSize2, layerCount2, isBidirectional3);
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
    layerCount3 = [v100 layerCount];
    v144[0] = [v100 inputSize];
    v144[1] = [v100 hiddenSize];
    v144[3] = layerCount3;
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
    if (!only)
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

+ (id)layerWithDevice:(id)device lstmDescriptor:(id)descriptor inputWeights:(id)weights hiddenWeights:(id)hiddenWeights peepholeWeights:(id)peepholeWeights biasTerms:(id)terms gateActivations:(id)activations ouputResultActivation:(id)self0 inferenceOnly:(BOOL)self1
{
  activationCopy = activation;
  activationsCopy = activations;
  termsCopy = terms;
  peepholeWeightsCopy = peepholeWeights;
  hiddenWeightsCopy = hiddenWeights;
  weightsCopy = weights;
  descriptorCopy = descriptor;
  deviceCopy = device;
  LOBYTE(v28) = only;
  v26 = [[self alloc] initWithDevice:deviceCopy lstmDescriptor:descriptorCopy inputWeights:weightsCopy hiddenWeights:hiddenWeightsCopy peepholeWeights:peepholeWeightsCopy biasTerms:termsCopy gateActivations:activationsCopy outputResultActivation:activationCopy inferenceOnly:v28];

  return v26;
}

+ (BOOL)compileWithDevice:(id)device deviceOps:(id)ops sourceTensors:(id)tensors resultTensor:(id)tensor
{
  tensorsCopy = tensors;
  v8 = [ops objectAtIndexedSubscript:0];
  params = [v8 params];
  bytes = [params bytes];
  lstmDeltaParams = [v8 lstmDeltaParams];
  bytes2 = [lstmDeltaParams bytes];
  v13 = [tensorsCopy objectAtIndexedSubscript:0];

  descriptor = [v13 descriptor];
  shape = [descriptor shape];

  v16 = [shape objectAtIndexedSubscript:{objc_msgSend(v8, "batchFirst") ^ 1}];
  unsignedIntegerValue = [v16 unsignedIntegerValue];

  if ([v8 batchFirst] && objc_msgSend(shape, "count") == 4)
  {
    v28 = params;
    v18 = bytes2;
    v19 = 1;
    unsignedIntegerValue2 = 3;
LABEL_11:
    v22 = [shape objectAtIndexedSubscript:unsignedIntegerValue2];
    unsignedIntegerValue2 = [v22 unsignedIntegerValue];

    v23 = [shape objectAtIndexedSubscript:v19];
    unsignedIntegerValue3 = [v23 unsignedIntegerValue];

    bytes2 = v18;
    params = v28;
    goto LABEL_12;
  }

  if ([v8 batchFirst] && objc_msgSend(shape, "count") == 3)
  {
    v28 = params;
    v18 = bytes2;
    v19 = 2;
    unsignedIntegerValue2 = 1;
    goto LABEL_11;
  }

  if (([v8 batchFirst] & 1) == 0)
  {
    unsignedIntegerValue2 = 0;
    if ([shape count] != 3)
    {
      unsignedIntegerValue3 = 0;
      goto LABEL_12;
    }

    v28 = params;
    v18 = bytes2;
    v19 = 2;
    goto LABEL_11;
  }

  unsignedIntegerValue2 = 0;
  unsignedIntegerValue3 = 0;
LABEL_12:
  if (CPU_BuildBNNSLSTMInputAndOutput(bytes, unsignedIntegerValue, unsignedIntegerValue2, unsignedIntegerValue3, v8) && CPU_BuildBNNSLSTMInputAndOutput(bytes2, unsignedIntegerValue, unsignedIntegerValue2, unsignedIntegerValue3, v8))
  {
    objc_opt_class();
    v24 = objc_opt_new();
    [v8 setLayer:v24];

    layer = [v8 layer];
    [layer setFilter:0];

    v26 = 1;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

+ (BOOL)setOptimizerDataForDevice:(id)device deviceOps:(id)ops dataForInputWeights:(id)weights dataForHiddenWeights:(id)hiddenWeights dataForPeepholeWeights:(id)peepholeWeights dataForBias:(id)bias
{
  weightsCopy = weights;
  hiddenWeightsCopy = hiddenWeights;
  biasCopy = bias;
  v12 = [ops objectAtIndexedSubscript:0];
  if (([v12 inferenceOnly] & 1) == 0)
  {
    v13 = [weightsCopy objectAtIndexedSubscript:0];
    optimizerData = [v13 optimizerData];
    v15 = [optimizerData count];

    [v12 setNumAccumulatorsPerParameter:v15];
    numLayers = [v12 numLayers];
    biDirectional = [v12 biDirectional];
    if (v15)
    {
      v18 = 0;
      v19 = 8;
      if (biDirectional)
      {
        v19 = 16;
      }

      size = v19;
      v91 = numLayers - 1;
      v93 = numLayers;
      v20 = 8 * ((numLayers - 1) << biDirectional);
      v83 = 4 * numLayers;
      v78 = biasCopy;
      v79 = 4 * numLayers + 4;
      v96 = biDirectional;
      v21 = v12;
      v81 = v15;
      v82 = v20;
      do
      {
        v89 = [MEMORY[0x277CBEBF8] mutableCopy];
        for (i = 0; i != 4; ++i)
        {
          v23 = malloc_type_malloc(size, 0x80040B8603338uLL);
          v24 = [weightsCopy objectAtIndexedSubscript:i];
          optimizerData2 = [v24 optimizerData];
          v26 = [optimizerData2 objectAtIndexedSubscript:v18];
          *v23 = [v26 bytes];

          if ([v12 biDirectional])
          {
            v27 = [weightsCopy objectAtIndexedSubscript:v83 + i];
            optimizerData3 = [v27 optimizerData];
            v29 = [optimizerData3 objectAtIndexedSubscript:v18];
            v23[1] = [v29 bytes];
          }

          v30 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v23 length:size freeWhenDone:0];
          [v89 addObject:v30];
          inputWeightsMomentumDescData = [v12 inputWeightsMomentumDescData];
          v32 = [inputWeightsMomentumDescData objectAtIndexedSubscript:v18];
          v33 = [v32 objectAtIndexedSubscript:i];
          bytes = [v33 bytes];

          *(bytes + 136) = [v30 bytes];
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
              v41 = [weightsCopy objectAtIndexedSubscript:v37];
              optimizerData4 = [v41 optimizerData];
              v43 = [optimizerData4 objectAtIndexedSubscript:v18];
              v44 = &v39[8 * (v40 << v96)];
              *v44 = [v43 bytes];

              if ([v21 biDirectional])
              {
                v45 = [weightsCopy objectAtIndexedSubscript:v38];
                optimizerData5 = [v45 optimizerData];
                v47 = [optimizerData5 objectAtIndexedSubscript:v18];
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
            inputWeightsMomentumDescData2 = [v21 inputWeightsMomentumDescData];
            v50 = [inputWeightsMomentumDescData2 objectAtIndexedSubscript:v18];
            v51 = [v50 objectAtIndexedSubscript:v87 | 4];
            bytes2 = [v51 bytes];

            v35 = v82;
            *(bytes2 + 136) = v39;

            v38 = v85 + 1;
            v37 = v86 + 1;
            ++v87;
          }

          while (v48 != 3);
        }

        bnnsInputWeightsMomentumPointers = [v36 bnnsInputWeightsMomentumPointers];
        [bnnsInputWeightsMomentumPointers setObject:v89 atIndexedSubscript:v18];

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
              v61 = [hiddenWeightsCopy objectAtIndexedSubscript:v59];
              optimizerData6 = [v61 optimizerData];
              v63 = [optimizerData6 objectAtIndexedSubscript:v54];
              v64 = &v57[8 * (v58 << v96)];
              *v64 = [v63 bytes];

              if ([v21 biDirectional])
              {
                v65 = [hiddenWeightsCopy objectAtIndexedSubscript:v60];
                optimizerData7 = [v65 optimizerData];
                v67 = [optimizerData7 objectAtIndexedSubscript:v54];
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
          hiddenWeightsMomentumDescData = [v21 hiddenWeightsMomentumDescData];
          v71 = [hiddenWeightsMomentumDescData objectAtIndexedSubscript:v54];
          v72 = [v71 objectAtIndexedSubscript:v92];
          bytes3 = [v72 bytes];

          *(bytes3 + 136) = v57;
          ++v90;
          ++v92;
          v55 = v93;
        }

        while (v69 != 3);
        v12 = v21;
        bnnsHiddenWeightsMomentumPointers = [v21 bnnsHiddenWeightsMomentumPointers];
        [bnnsHiddenWeightsMomentumPointers setObject:v88 atIndexedSubscript:v54];

        ++v54;
      }

      while (v54 != v81);
      biasCopy = v78;
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