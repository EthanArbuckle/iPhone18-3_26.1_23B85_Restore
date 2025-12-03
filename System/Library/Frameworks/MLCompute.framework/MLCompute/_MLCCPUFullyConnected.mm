@interface _MLCCPUFullyConnected
+ (BOOL)compileWithDevice:(id)device deviceOps:(id)ops sourceTensors:(id)tensors resultTensor:(id)tensor fusedBatchNormAndNeuron:(BOOL)neuron;
+ (id)layerWithDevice:(id)device weights:(id)weights biasTerms:(id)terms convolutionDescriptor:(id)descriptor neuronDescriptor:(id)neuronDescriptor fusedBatchNormAndNeuronLayers:(BOOL)layers mean:(id)mean variance:(id)self0 beta:(id)self1 gamma:(id)self2 varianceEpsilon:(float)self3 momentum:(float)self4 opType:(int)self5;
+ (id)layerWithDevice:(id)device weights:(id)weights biasTerms:(id)terms convolutionDescriptor:(id)descriptor neuronDescriptor:(id)neuronDescriptor opType:(int)type;
- (_MLCCPUFullyConnected)initWithDevice:(id)device weights:(id)weights biasTerms:(id)terms convolutionDescriptor:(id)descriptor neuronDescriptor:(id)neuronDescriptor fusedBatchNormAndNeuronLayers:(BOOL)layers mean:(id)mean variance:(id)self0 beta:(id)self1 gamma:(id)self2 varianceEpsilon:(float)self3 momentum:(float)self4 opType:(int)self5;
@end

@implementation _MLCCPUFullyConnected

- (_MLCCPUFullyConnected)initWithDevice:(id)device weights:(id)weights biasTerms:(id)terms convolutionDescriptor:(id)descriptor neuronDescriptor:(id)neuronDescriptor fusedBatchNormAndNeuronLayers:(BOOL)layers mean:(id)mean variance:(id)self0 beta:(id)self1 gamma:(id)self2 varianceEpsilon:(float)self3 momentum:(float)self4 opType:(int)self5
{
  layersCopy = layers;
  v171[1] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  weightsCopy = weights;
  termsCopy = terms;
  descriptorCopy = descriptor;
  neuronDescriptorCopy = neuronDescriptor;
  meanCopy = mean;
  varianceCopy = variance;
  betaCopy = beta;
  gammaCopy = gamma;
  typeCopy = type;
  v26 = [MEMORY[0x277CBEBF8] mutableCopy];
  if ((type - 32) > 6)
  {
    v27 = 0;
  }

  else
  {
    v27 = dword_238D45CF0[type - 32];
  }

  v28 = 65552;
  bzero(v149, 0x2F0uLL);
  v29 = descriptorCopy;
  v30 = weightsCopy;
  v144 = termsCopy;
  v150 = 0x20000;
  inputFeatureChannelCount = [v29 inputFeatureChannelCount];
  outputFeatureChannelCount = [v29 outputFeatureChannelCount];
  v153 = 1;
  inputFeatureChannelCount2 = [v29 inputFeatureChannelCount];
  data = [v30 data];
  bytes = [data bytes];

  v141 = v30;
  descriptor = [v30 descriptor];
  dataType = [descriptor dataType];

  if (dataType == 1)
  {
    v34 = 65568;
  }

  else
  {
    v34 = 65552;
    if (dataType != 3)
    {
      v35 = +[MLCLog framework];
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        [_MLCCPUFullyConnected initWithDevice:v30 weights:? biasTerms:? convolutionDescriptor:? neuronDescriptor:? fusedBatchNormAndNeuronLayers:? mean:? variance:? beta:? gamma:? varianceEpsilon:? momentum:? opType:?];
      }

LABEL_14:
      selfCopy3 = self;
      v40 = neuronDescriptorCopy;
      v42 = betaCopy;

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
    outputFeatureChannelCount2 = [v29 outputFeatureChannelCount];
    v160 = 1;
    data2 = [v144 data];
    bytes2 = [data2 bytes];

    descriptor2 = [v144 descriptor];
    dataType2 = [descriptor2 dataType];

    if (dataType2 == 1)
    {
      v28 = 65568;
    }

    else if (dataType2 != 3)
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
  outputFeatureChannelCount3 = [v29 outputFeatureChannelCount];
  v48 = outputFeatureChannelCount3;
  if (layersCopy)
  {
    bzero(v147, 0x468uLL);
    v49 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v48];
    v171[0] = v49;
    v50 = [MEMORY[0x277CBEA60] arrayWithObjects:v171 count:1];
    v51 = CPU_BuildBNNSNormalizationParams(v27, v147, v50, meanCopy, varianceCopy, betaCopy, gammaCopy, epsilon, momentum);

    selfCopy3 = self;
    v40 = neuronDescriptorCopy;
    if (v51)
    {
      if (!neuronDescriptorCopy)
      {
LABEL_22:
        count = v48;
        v143 = gammaCopy;
        v123 = meanCopy;
        v119 = [MEMORY[0x277CBEA90] dataWithBytes:v147 length:1128];
        v46 = v141;
        goto LABEL_34;
      }

      if (setBNNSActivation(&v148, neuronDescriptorCopy))
      {
        typeCopy = 11;
        goto LABEL_22;
      }
    }

    v45 = 0;
    v42 = betaCopy;
    v44 = v141;
LABEL_31:
    v43 = v144;
    goto LABEL_58;
  }

  v40 = neuronDescriptorCopy;
  if (neuronDescriptorCopy)
  {
    v45 = 0;
    if ((setBNNSActivation(v164, neuronDescriptorCopy) & 1) == 0)
    {
      v44 = v141;
      selfCopy3 = self;
      v42 = betaCopy;
      goto LABEL_31;
    }

    count = v48;
    v119 = 0;
    v143 = gammaCopy;
    v123 = meanCopy;
    v52 = 10;
    goto LABEL_33;
  }

  v123 = meanCopy;
  v143 = gammaCopy;
  count = outputFeatureChannelCount3;
  if (type == 41)
  {
    v119 = 0;
    v164[0] = 21;
    v52 = 41;
    goto LABEL_33;
  }

  if (type == 40)
  {
    v119 = 0;
    v164[0] = 11;
    v52 = 40;
LABEL_33:
    typeCopy = v52;
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
  inputFeatureChannelCount3 = [v29 inputFeatureChannelCount];
  v55 = [v29 outputFeatureChannelCount] * inputFeatureChannelCount3;
  v56 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:malloc_type_calloc(v55 length:4uLL freeWhenDone:{0x100004052888210uLL), 4 * v55, 1}];
  descriptor3 = [v46 descriptor];
  v125 = v56;
  v130 = +[_MLCCPUConvolution createBNNSNDArrayDescriptorForDescriptor:weightsDelta:fullyConnected:dataType:](_MLCCPUConvolution, "createBNNSNDArrayDescriptorForDescriptor:weightsDelta:fullyConnected:dataType:", v29, v56, 1, [descriptor3 dataType]);

  v58 = [MEMORY[0x277CBEBF8] mutableCopy];
  for (i = 0; i != 3; ++i)
  {
    descriptor4 = [v46 descriptor];
    v61 = +[_MLCCPUConvolution createBNNSNDArrayDescriptorForDescriptor:weightsDelta:fullyConnected:dataType:](_MLCCPUConvolution, "createBNNSNDArrayDescriptorForDescriptor:weightsDelta:fullyConnected:dataType:", v29, 0, 1, [descriptor4 dataType]);
    [v58 setObject:v61 atIndexedSubscript:i];
  }

  v129 = v58;
  if (v144)
  {
    v62 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:malloc_type_calloc(objc_msgSend(v29 length:"outputFeatureChannelCount") freeWhenDone:{4uLL, 0x100004052888210uLL), 4 * objc_msgSend(v29, "outputFeatureChannelCount"), 1}];
    descriptor5 = [v144 descriptor];
    v128 = +[_MLCCPUConvolution createBNNSNDArrayDescriptorForDescriptor:biasDelta:dataType:](_MLCCPUConvolution, "createBNNSNDArrayDescriptorForDescriptor:biasDelta:dataType:", v29, v62, [descriptor5 dataType]);

    v117 = v26;
    v64 = 0;
    v65 = betaCopy;
    v66 = [MEMORY[0x277CBEBF8] mutableCopy];
    do
    {
      descriptor6 = [v144 descriptor];
      v68 = +[_MLCCPUConvolution createBNNSNDArrayDescriptorForDescriptor:biasDelta:dataType:](_MLCCPUConvolution, "createBNNSNDArrayDescriptorForDescriptor:biasDelta:dataType:", v29, 0, [descriptor6 dataType]);
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
    v65 = betaCopy;
  }

  v127 = v70;
  if (layersCopy)
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
    descriptor7 = [v65 descriptor];
    dataType3 = [descriptor7 dataType];
    v122 = v72;
    v79 = v72;
    v80 = v65;
    v121 = CPU_BuildBNNSNDArrayDescriptorForBetaOrGammaDeltas(v76, v79, dataType3, 0);

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
        descriptor8 = [v80 descriptor];
        CPU_BuildBNNSNDArrayDescriptorForBetaOrGammaDeltas(v85, 0, [descriptor8 dataType], 0);
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
    gammaCopy = v143;
    descriptor9 = [v143 descriptor];
    v120 = CPU_BuildBNNSNDArrayDescriptorForBetaOrGammaDeltas(v92, v126, [descriptor9 dataType], 0);

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
        descriptor10 = [v143 descriptor];
        v101 = CPU_BuildBNNSNDArrayDescriptorForBetaOrGammaDeltas(v99, 0, [descriptor10 dataType], 0);
        [v124 setObject:v101 atIndexedSubscript:v94];

        ++v94;
      }

      while (v94 != 3);
      gammaCopy = v143;
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
    gammaCopy = v143;
    v102 = v119;
  }

  v166 = v132;
  v103 = [MEMORY[0x277CBEA60] arrayWithObjects:&v166 count:1];
  v165 = v131;
  v104 = [MEMORY[0x277CBEA60] arrayWithObjects:&v165 count:1];
  v105 = [MLCCPUDeviceOps deviceOpsWithType:typeCopy params:v133 inDeltaData:v103 outDeltaData:v104 weightsDeltaData:v130 biasDeltaData:v128 weightsMomentumData:v129 biasMomentumData:v127];

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

    if (layersCopy)
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
      [v105 setMovingVariance:varianceCopy];
    }
  }

  v111 = [v26 copy];
  v145.receiver = self;
  v145.super_class = _MLCCPUFullyConnected;
  selfCopy3 = [(_MLCCPULayer *)&v145 initWithDevice:deviceCopy deviceOps:v111];

  v45 = selfCopy3;
  v40 = neuronDescriptorCopy;
  v43 = v53;
  meanCopy = v123;
  v42 = betaCopy;
  v44 = v141;
LABEL_58:

  v112 = *MEMORY[0x277D85DE8];
  return v45;
}

+ (id)layerWithDevice:(id)device weights:(id)weights biasTerms:(id)terms convolutionDescriptor:(id)descriptor neuronDescriptor:(id)neuronDescriptor opType:(int)type
{
  neuronDescriptorCopy = neuronDescriptor;
  descriptorCopy = descriptor;
  termsCopy = terms;
  weightsCopy = weights;
  deviceCopy = device;
  LODWORD(v21) = type;
  v19 = [[self alloc] initWithDevice:deviceCopy weights:weightsCopy biasTerms:termsCopy convolutionDescriptor:descriptorCopy neuronDescriptor:neuronDescriptorCopy fusedBatchNormAndNeuronLayers:0 mean:0.0 variance:0.0 beta:0 gamma:0 varianceEpsilon:0 momentum:0 opType:v21];

  return v19;
}

+ (id)layerWithDevice:(id)device weights:(id)weights biasTerms:(id)terms convolutionDescriptor:(id)descriptor neuronDescriptor:(id)neuronDescriptor fusedBatchNormAndNeuronLayers:(BOOL)layers mean:(id)mean variance:(id)self0 beta:(id)self1 gamma:(id)self2 varianceEpsilon:(float)self3 momentum:(float)self4 opType:(int)self5
{
  gammaCopy = gamma;
  betaCopy = beta;
  varianceCopy = variance;
  meanCopy = mean;
  neuronDescriptorCopy = neuronDescriptor;
  descriptorCopy = descriptor;
  termsCopy = terms;
  weightsCopy = weights;
  deviceCopy = device;
  v32 = [self alloc];
  LODWORD(v37) = type;
  *&v33 = epsilon;
  *&v34 = momentum;
  v35 = [v32 initWithDevice:deviceCopy weights:weightsCopy biasTerms:termsCopy convolutionDescriptor:descriptorCopy neuronDescriptor:neuronDescriptorCopy fusedBatchNormAndNeuronLayers:1 mean:v33 variance:v34 beta:meanCopy gamma:varianceCopy varianceEpsilon:betaCopy momentum:gammaCopy opType:v37];

  return v35;
}

+ (BOOL)compileWithDevice:(id)device deviceOps:(id)ops sourceTensors:(id)tensors resultTensor:(id)tensor fusedBatchNormAndNeuron:(BOOL)neuron
{
  neuronCopy = neuron;
  v116 = *MEMORY[0x277D85DE8];
  tensorsCopy = tensors;
  tensorCopy = tensor;
  v107 = [ops objectAtIndexedSubscript:0];
  params = [v107 params];
  bytes = [params bytes];
  v11 = tensorsCopy;
  v106 = tensorCopy;
  v12 = [v11 objectAtIndexedSubscript:0];
  descriptor = [v12 descriptor];
  shape = [descriptor shape];
  v15 = [shape count];

  v16 = [v11 objectAtIndexedSubscript:0];
  descriptor2 = [v16 descriptor];
  shape2 = [descriptor2 shape];
  v19 = [shape2 objectAtIndexedSubscript:v15 - 1];
  unsignedIntegerValue = [v19 unsignedIntegerValue];

  v21 = [v11 objectAtIndexedSubscript:0];
  descriptor3 = [v21 descriptor];
  stride = [descriptor3 stride];
  v103 = v15 - 1;
  v24 = [stride objectAtIndexedSubscript:v15 - 1];
  unsignedIntegerValue2 = [v24 unsignedIntegerValue];

  if (v15 == 4)
  {
    v26 = [v11 objectAtIndexedSubscript:0];
    descriptor4 = [v26 descriptor];
    shape3 = [descriptor4 shape];
    v29 = [shape3 objectAtIndexedSubscript:3];
    unsignedIntegerValue3 = [v29 unsignedIntegerValue];
    v31 = unsignedIntegerValue3 == 1;
    if (unsignedIntegerValue3 != 1)
    {
LABEL_5:

      goto LABEL_7;
    }

    v32 = unsignedIntegerValue;
    v110 = unsignedIntegerValue2;
    [v11 objectAtIndexedSubscript:0];
    v34 = v33 = v11;
    descriptor5 = [v34 descriptor];
    shape4 = [descriptor5 shape];
    v37 = [shape4 objectAtIndexedSubscript:2];
    unsignedIntegerValue4 = [v37 unsignedIntegerValue];

    if (unsignedIntegerValue4 == 1)
    {
      v26 = [v33 objectAtIndexedSubscript:0];
      descriptor4 = [v26 descriptor];
      shape3 = [descriptor4 shape];
      v29 = [shape3 objectAtIndexedSubscript:1];
      unsignedIntegerValue = [v29 unsignedIntegerValue];
      v11 = v33;
      unsignedIntegerValue2 = v110;
      v31 = 1;
      goto LABEL_5;
    }

    v11 = v33;
    unsignedIntegerValue2 = v110;
    v31 = 0;
    unsignedIntegerValue = v32;
  }

  else
  {
    v31 = 0;
  }

LABEL_7:
  v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue];
  *&filter_params.flags = v38;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&filter_params count:1];
  v40 = unsignedIntegerValue2;
  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue2];
  layer_params[0] = v41;
  v42 = [MEMORY[0x277CBEA60] arrayWithObjects:layer_params count:1];
  v111 = v11;
  v43 = [v11 objectAtIndexedSubscript:0];
  descriptor6 = [v43 descriptor];
  CPU_BuildBNNSNDArrayDescriptor(bytes, v39, v42, 0, [descriptor6 dataType], v31, 0);

  descriptor7 = [v106 descriptor];
  shape5 = [descriptor7 shape];
  v47 = [shape5 objectAtIndexedSubscript:v103];
  unsignedIntegerValue5 = [v47 unsignedIntegerValue];

  v49 = v31;
  if (v31)
  {
    descriptor8 = [v106 descriptor];
    shape6 = [descriptor8 shape];
    v52 = [shape6 objectAtIndexedSubscript:1];
    unsignedIntegerValue5 = [v52 unsignedIntegerValue];
  }

  v53 = v106;
  v54 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue5];
  *filter_type = v54;
  v55 = [MEMORY[0x277CBEA60] arrayWithObjects:filter_type count:1];
  v56 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v40];
  v114 = v56;
  v57 = [MEMORY[0x277CBEA60] arrayWithObjects:&v114 count:1];
  descriptor9 = [v106 descriptor];
  CPU_BuildBNNSNDArrayDescriptor(bytes + 352, v55, v57, 0, [descriptor9 dataType], v49, 0);

  memset(&filter_params, 0, sizeof(filter_params));
  filter_params.flags = 1;
  v59 = [v111 objectAtIndexedSubscript:0];
  v60 = [v111 objectAtIndexedSubscript:0];
  descriptor10 = [v60 descriptor];
  shape7 = [descriptor10 shape];
  v63 = [shape7 objectAtIndexedSubscript:0];
  v64 = adjustBatchSizeForFC(v59, [v63 unsignedIntegerValue]);

  if (!neuronCopy)
  {
    v73 = MEMORY[0x23EE75C00](bytes, &filter_params, v64);
    v65 = v107;
    if (v73)
    {
      v72 = v111;
      v75 = [v111 objectAtIndexedSubscript:0];
      descriptor11 = [v75 descriptor];
      shape8 = [descriptor11 shape];
      v78 = [shape8 count];

      if (v78 == 4)
      {
        v79 = [v111 objectAtIndexedSubscript:0];
        descriptor12 = [v79 descriptor];
        shape9 = [descriptor12 shape];
        v82 = [shape9 objectAtIndexedSubscript:3];
        if ([v82 unsignedIntegerValue] == 1)
        {
          v83 = [v111 objectAtIndexedSubscript:0];
          descriptor13 = [v83 descriptor];
          shape10 = [descriptor13 shape];
          v86 = [shape10 objectAtIndexedSubscript:2];
          unsignedIntegerValue6 = [v86 unsignedIntegerValue];

          v53 = v106;
          v65 = v107;

          v72 = v111;
          if (unsignedIntegerValue6 == 1)
          {
            v87 = [v111 objectAtIndexedSubscript:0];
            [v107 setSourceStride:CPU_SetBatchStride(v87)];

            [v107 setResultStride:CPU_SetBatchStride(v106)];
LABEL_23:
            v67 = params;
LABEL_24:
            objc_opt_class();
            v98 = objc_opt_new();
            [v65 setLayer:v98];

            layer = [v65 layer];
            [layer setFilter:v73];

            v88 = 1;
            goto LABEL_25;
          }
        }

        else
        {
        }
      }

      v89 = [v72 objectAtIndexedSubscript:0];
      descriptor14 = [v89 descriptor];
      shape11 = [descriptor14 shape];
      v92 = v78 - 1;
      v93 = [shape11 objectAtIndexedSubscript:v78 - 1];
      [v65 setSourceStride:{objc_msgSend(v93, "unsignedIntegerValue")}];

      descriptor15 = [v53 descriptor];
      shape12 = [descriptor15 shape];
      v96 = v92;
      v72 = v111;
      v97 = [shape12 objectAtIndexedSubscript:v96];
      [v65 setResultStride:{objc_msgSend(v97, "unsignedIntegerValue")}];

      goto LABEL_23;
    }

    v72 = v111;
    goto LABEL_23;
  }

  v65 = v107;
  fusedPrimitiveParams = [v107 fusedPrimitiveParams];

  v67 = fusedPrimitiveParams;
  bytes2 = [fusedPrimitiveParams bytes];
  if (CPU_BuildBNNSNormalizationInputOutputParams(bytes2, v111, v106, 0))
  {
    descriptor16 = [v106 descriptor];
    shape13 = [descriptor16 shape];
    v71 = [shape13 objectAtIndexedSubscript:1];
    bytes2[3] = [v71 unsignedIntegerValue];

    v72 = v111;
    *filter_type = 0x200000001;
    layer_params[0] = bytes;
    layer_params[1] = bytes2;
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