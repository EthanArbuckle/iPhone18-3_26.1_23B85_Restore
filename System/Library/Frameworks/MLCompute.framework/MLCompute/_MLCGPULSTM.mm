@interface _MLCGPULSTM
+ (BOOL)compileWithDevice:(id)device deviceOps:(id)ops sourceTensors:(id)tensors resultTensor:(id)tensor;
+ (BOOL)setOptimizerDataForDevice:(id)device deviceOps:(id)ops inputWeights:(id)weights hiddenWeights:(id)hiddenWeights biasTerms:(id)terms;
+ (id)layerWithDevice:(id)device descriptor:(id)descriptor inputWeights:(id)weights hiddenWeights:(id)hiddenWeights peepholeWeights:(id)peepholeWeights biasTerms:(id)terms gateActivations:(id)activations outputResultActivation:(id)self0 inferenceOnly:(BOOL)self1;
+ (void)setBiasOptimizerDataForMomentumMatrices:(id)matrices velocityMatrices:(id)velocityMatrices centerWeightMatrices:(id)weightMatrices momentumArray:(id)array velocityArray:(id)velocityArray centerWeightArray:(id)weightArray accumulatorIndex:(unint64_t)index matrixId:(unint64_t)self0 bias:(id)self1 device:(id)self2 deviceOps:(id)self3 deviceNumber:(unint64_t)self4 lstmNumber:(unint64_t)self5;
+ (void)setOptimizerDataForMomentumMatrices:(id)matrices velocityMatrices:(id)velocityMatrices centerWeightMatrices:(id)weightMatrices momentumArray:(id)array velocityArray:(id)velocityArray centerWeightArray:(id)weightArray accumulatorIndex:(unint64_t)index matrixId:(unint64_t)self0 weight:(id)self1 device:(id)self2 deviceOps:(id)self3 deviceNumber:(unint64_t)self4 lstmNumber:(unint64_t)self5 isRecurrent:(BOOL)self6;
- (_MLCGPULSTM)initWithDevice:(id)device descriptor:(id)descriptor inputWeights:(id)weights hiddenWeights:(id)hiddenWeights peepholeWeights:(id)peepholeWeights biasTerms:(id)terms gateActivations:(id)activations outputResultActivation:(id)self0 inferenceOnly:(BOOL)self1;
@end

@implementation _MLCGPULSTM

+ (id)layerWithDevice:(id)device descriptor:(id)descriptor inputWeights:(id)weights hiddenWeights:(id)hiddenWeights peepholeWeights:(id)peepholeWeights biasTerms:(id)terms gateActivations:(id)activations outputResultActivation:(id)self0 inferenceOnly:(BOOL)self1
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
  v26 = [[self alloc] initWithDevice:deviceCopy descriptor:descriptorCopy inputWeights:weightsCopy hiddenWeights:hiddenWeightsCopy peepholeWeights:peepholeWeightsCopy biasTerms:termsCopy gateActivations:activationsCopy outputResultActivation:activationCopy inferenceOnly:v28];

  return v26;
}

- (_MLCGPULSTM)initWithDevice:(id)device descriptor:(id)descriptor inputWeights:(id)weights hiddenWeights:(id)hiddenWeights peepholeWeights:(id)peepholeWeights biasTerms:(id)terms gateActivations:(id)activations outputResultActivation:(id)self0 inferenceOnly:(BOOL)self1
{
  v259 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  descriptorCopy = descriptor;
  weightsCopy = weights;
  hiddenWeightsCopy = hiddenWeights;
  peepholeWeightsCopy = peepholeWeights;
  termsCopy = terms;
  activationsCopy = activations;
  activationCopy = activation;
  v257.receiver = self;
  v257.super_class = _MLCGPULSTM;
  v18 = [(_MLCGPULSTM *)&v257 init];
  v19 = v18;
  if (!v18)
  {
    goto LABEL_82;
  }

  v187 = v18;
  v186 = [MEMORY[0x277CBEBF8] mutableCopy];
  inputSize = [descriptorCopy inputSize];
  hiddenSize = [descriptorCopy hiddenSize];
  layerCount = [descriptorCopy layerCount];
  isBidirectional = [descriptorCopy isBidirectional];
  v21 = layerCount << isBidirectional;
  v203 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:layerCount << isBidirectional];
  v195 = descriptorCopy;
  v199 = v203;
  v253 = hiddenSize;
  v202 = layerCount << isBidirectional;
  if (layerCount << isBidirectional)
  {
    v23 = 0;
    v24 = 3;
    do
    {
      if (layerCount == v23)
      {
        v25 = isBidirectional;
      }

      else
      {
        v25 = 0;
      }

      if (!v23)
      {
        v25 = 1;
      }

      if (v25)
      {
        v26 = inputSize;
      }

      else
      {
        v26 = hiddenSize;
      }

      v27 = [MEMORY[0x277CD76F0] createLSTMDescriptorWithInputFeatureChannels:v26 outputFeatureChannels:hiddenSize];
      [v203 setObject:v27 atIndexedSubscript:v23];

      v28 = [v203 objectAtIndexedSubscript:v23];
      [v28 setUseFloat32Weights:1];

      v29 = [MLCConvolutionDescriptor descriptorWithKernelWidth:1 kernelHeight:1 inputFeatureChannelCount:v26 outputFeatureChannelCount:hiddenSize];
      v220 = [MLCConvolutionDescriptor descriptorWithKernelWidth:1 kernelHeight:1 inputFeatureChannelCount:hiddenSize outputFeatureChannelCount:hiddenSize];
      v233 = v24;
      v216 = v23;
      v244 = v29;
      if (termsCopy)
      {
        v254 = [termsCopy objectAtIndexedSubscript:v24 - 3];
        v30 = (4 * v23) | 1;
        v237 = [termsCopy objectAtIndexedSubscript:v24 - 2];
        v243 = (4 * v23) | 2;
        v251 = [termsCopy objectAtIndexedSubscript:v24 - 1];
        v218 = (4 * v23) | 3;
        v235 = [termsCopy objectAtIndexedSubscript:v24];
      }

      else
      {
        v235 = 0;
        v251 = 0;
        v237 = 0;
        v254 = 0;
        v30 = v24 - 2;
        v243 = v24 - 1;
        v218 = v24;
      }

      v226 = v24 - 3;
      v31 = [weightsCopy objectAtIndexedSubscript:v24 - 3];
      v32 = [activationsCopy objectAtIndexedSubscript:0];
      v33 = [_MLCGPUWeightsConvolution weightWithDescriptor:v29 biasTerms:v254 weights:v31 neuronDescriptor:v32];

      v228 = v30;
      v34 = [weightsCopy objectAtIndexedSubscript:v30];
      v35 = [activationsCopy objectAtIndexedSubscript:1];
      v248 = [_MLCGPUWeightsConvolution weightWithDescriptor:v29 biasTerms:v237 weights:v34 neuronDescriptor:v35];

      v36 = [weightsCopy objectAtIndexedSubscript:v243];
      v37 = [activationsCopy objectAtIndexedSubscript:2];
      v246 = [_MLCGPUWeightsConvolution weightWithDescriptor:v29 biasTerms:v251 weights:v36 neuronDescriptor:v37];

      v38 = [weightsCopy objectAtIndexedSubscript:?];
      v39 = [activationsCopy objectAtIndexedSubscript:3];
      v40 = [_MLCGPUWeightsConvolution weightWithDescriptor:v244 biasTerms:v235 weights:v38 neuronDescriptor:v39];

      v231 = v33;
      if (!v33 || !v248 || !v246 || !v40)
      {

        descriptorCopy = v195;
        v203 = v199;
        goto LABEL_84;
      }

      v41 = [hiddenWeightsCopy objectAtIndexedSubscript:v226];
      v42 = [_MLCGPUWeightsConvolution weightWithDescriptor:v220 biasTerms:0 weights:v41];

      v43 = [hiddenWeightsCopy objectAtIndexedSubscript:v228];
      v44 = [_MLCGPUWeightsConvolution weightWithDescriptor:v220 biasTerms:0 weights:v43];

      v45 = [hiddenWeightsCopy objectAtIndexedSubscript:v243];
      v241 = [_MLCGPUWeightsConvolution weightWithDescriptor:v220 biasTerms:0 weights:v45];

      v46 = [hiddenWeightsCopy objectAtIndexedSubscript:v218];
      v239 = [_MLCGPUWeightsConvolution weightWithDescriptor:v220 biasTerms:0 weights:v46];

      v47 = 0;
      v222 = v40;
      v224 = v44;
      if (!v42)
      {
        v48 = v233;
        v49 = v251;
        v50 = v216;
        goto LABEL_32;
      }

      v48 = v233;
      v49 = v251;
      v50 = v216;
      if (!v44 || !v241 || !v239)
      {
        goto LABEL_32;
      }

      v214 = v42;
      if (peepholeWeightsCopy)
      {
        v51 = [peepholeWeightsCopy objectAtIndexedSubscript:v226];
        v52 = [_MLCGPUWeightsConvolution weightWithDescriptor:v244 biasTerms:0 weights:v51];

        v53 = [peepholeWeightsCopy objectAtIndexedSubscript:v228];
        v229 = [_MLCGPUWeightsConvolution weightWithDescriptor:v244 biasTerms:0 weights:v53];

        v54 = [peepholeWeightsCopy objectAtIndexedSubscript:v243];
        v55 = [_MLCGPUWeightsConvolution weightWithDescriptor:v244 biasTerms:0 weights:v54];

        v56 = [peepholeWeightsCopy objectAtIndexedSubscript:v218];
        v57 = [_MLCGPUWeightsConvolution weightWithDescriptor:v244 biasTerms:0 weights:v56];

        v47 = 0;
        v58 = v52;
        if (!v52)
        {
          v48 = v233;
          v49 = v251;
          v59 = v229;
          goto LABEL_31;
        }

        v48 = v233;
        v59 = v229;
        if (!v229)
        {
          v49 = v251;
          goto LABEL_31;
        }

        v49 = v251;
        if (!v55 || !v57)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v57 = 0;
        v55 = 0;
        v59 = 0;
        v58 = 0;
        v48 = v233;
      }

      v60 = [v199 objectAtIndexedSubscript:v216];
      [v60 setInputGateInputWeights:v231];

      v61 = [v199 objectAtIndexedSubscript:v216];
      [v61 setInputGateRecurrentWeights:v214];

      v62 = [v199 objectAtIndexedSubscript:v216];
      [v62 setInputGateMemoryWeights:v58];

      v63 = [v199 objectAtIndexedSubscript:v216];
      [v63 setForgetGateInputWeights:v248];

      v64 = [v199 objectAtIndexedSubscript:v216];
      [v64 setForgetGateRecurrentWeights:v224];

      v65 = [v199 objectAtIndexedSubscript:v216];
      [v65 setForgetGateMemoryWeights:v59];

      v66 = [v199 objectAtIndexedSubscript:v216];
      [v66 setCellGateInputWeights:v246];

      v67 = [v199 objectAtIndexedSubscript:v216];
      [v67 setCellGateRecurrentWeights:v241];

      v68 = [v199 objectAtIndexedSubscript:v216];
      [v68 setCellGateMemoryWeights:v55];

      v69 = [v199 objectAtIndexedSubscript:v216];
      [v69 setOutputGateInputWeights:v222];

      v70 = [v199 objectAtIndexedSubscript:v216];
      [v70 setOutputGateRecurrentWeights:v239];

      v71 = [v199 objectAtIndexedSubscript:v216];
      [v71 setOutputGateMemoryWeights:v57];

      v72 = +[_MLCGPUNeuron mpsNeurontypeFrom:](_MLCGPUNeuron, "mpsNeurontypeFrom:", [activationCopy activationType]);
      v73 = [v199 objectAtIndexedSubscript:v216];
      [v73 setCellToOutputNeuronType:v72];

      v49 = v251;
      [activationCopy a];
      v75 = v74;
      v76 = [v199 objectAtIndexedSubscript:v216];
      LODWORD(v77) = v75;
      [v76 setCellToOutputNeuronParamA:v77];

      [activationCopy b];
      v79 = v78;
      v80 = [v199 objectAtIndexedSubscript:v216];
      LODWORD(v81) = v79;
      [v80 setCellToOutputNeuronParamB:v81];

      [activationCopy c];
      v83 = v82;
      v84 = [v199 objectAtIndexedSubscript:v216];
      LODWORD(v85) = v83;
      [v84 setCellToOutputNeuronParamC:v85];

      v47 = 1;
LABEL_31:

      v42 = v214;
LABEL_32:

      descriptorCopy = v195;
      v203 = v199;
      v21 = layerCount << isBidirectional;
      if ((v47 & 1) == 0)
      {
        goto LABEL_84;
      }

      v23 = v50 + 1;
      v24 = v48 + 4;
      hiddenSize = v253;
    }

    while (v202 != v23);
  }

  v86 = deviceCopy;
  deviceList = [deviceCopy deviceList];
  v88 = [deviceList count];

  if (!v88)
  {
LABEL_81:
    v180 = [v186 copy];
    v19 = v187;
    v256.receiver = v187;
    v256.super_class = _MLCGPULSTM;
    [(_MLCGPULayer *)&v256 setDeviceOps:v180];

LABEL_82:
    v181 = v19;
    goto LABEL_85;
  }

  v90 = 0;
  v219 = 4 * v253;
  v201 = 4 * v253 * v253;
  v91 = MEMORY[0x277CBEBF8];
  *&v89 = 138412546;
  v184 = v89;
  while (1)
  {
    v200 = [v91 mutableCopy];
    deviceList2 = [v86 deviceList];
    v196 = v90;
    v255 = [deviceList2 objectAtIndexedSubscript:v90];

    v210 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v21];
    v93 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v21];
    v94 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v21];
    v209 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v21];
    v208 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v21];
    v207 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v21];
    if (v21)
    {
      for (i = 0; i != v21; ++i)
      {
        v96 = [v91 mutableCopy];
        [v210 setObject:v96 atIndexedSubscript:i];

        v97 = [v91 mutableCopy];
        [v93 setObject:v97 atIndexedSubscript:i];

        v98 = [v91 mutableCopy];
        [v94 setObject:v98 atIndexedSubscript:i];

        v99 = [v91 mutableCopy];
        [v209 setObject:v99 atIndexedSubscript:i];

        v100 = [v91 mutableCopy];
        [v208 setObject:v100 atIndexedSubscript:i];

        v101 = [v91 mutableCopy];
        [v207 setObject:v101 atIndexedSubscript:i];

        v102 = objc_alloc(MEMORY[0x277CD77A0]);
        v103 = [v203 objectAtIndexedSubscript:i];
        v104 = [v210 objectAtIndexedSubscript:i];
        v105 = [v102 initWithDevice:v255 rnnDescriptor:v103 trainableWeights:v104];

        if (v105)
        {
          v106 = [v93 objectAtIndexedSubscript:i];
          [v105 createWeightGradientMatrices:v106 dataType:268435488];

          v107 = [v94 objectAtIndexedSubscript:i];
          [v105 createWeightGradientMatrices:v107 dataType:268435488];

          [v200 addObject:v105];
        }
      }
    }

    v193 = v94;
    v197 = [v200 copy];
    v252 = [MLCRNNGPUDeviceOps deviceOpsWithForwardKernel:"deviceOpsWithForwardKernel:gradientKernel:" gradientKernel:?];
    v194 = v93;
    [v252 setRnnTrainableWeightGradients:v93];
    deviceList3 = [deviceCopy deviceList];
    v109 = [deviceList3 count];

    if (v109 > 1)
    {
      v110 = [MLCMultiGPUDeviceOps multiGPUDeviceOpsWithGPUDeviceOps:v252];
      [v252 setLstmMultiGPUChildOps:v110];

      lstmMultiGPUChildOps = [v252 lstmMultiGPUChildOps];
      GPU_AllocateResourceForMultiGPUTraining(deviceCopy, lstmMultiGPUChildOps, MEMORY[0x277CBEBF8], v196);
    }

    v112 = v255;
    if (!only)
    {
      [descriptorCopy dropout];
      if (v113 > 0.0 && layerCount >= 2)
      {
        [descriptorCopy dropout];
        [v252 setLstmDropout:?];
        v114 = layerCount - 1;
        do
        {
          v115 = objc_alloc(MEMORY[0x277CD7660]);
          [descriptorCopy dropout];
          v249 = vdupq_n_s64(1uLL);
          *&v117 = 1.0 - v116;
          *buf = v249;
          *&buf[16] = 1;
          v118 = [v115 initWithDevice:v112 keepProbability:0 seed:buf maskStrideInPixels:v117];
          lstmDropoutForwardKernel = [v252 lstmDropoutForwardKernel];
          [lstmDropoutForwardKernel addObject:v118];

          v120 = objc_alloc(MEMORY[0x277CD7668]);
          [descriptorCopy dropout];
          *&v122 = 1.0 - v121;
          *buf = v249;
          *&buf[16] = 1;
          v123 = [v120 initWithDevice:v255 keepProbability:0 seed:buf maskStrideInPixels:v122];
          lstmDropoutGradientKernel = [v252 lstmDropoutGradientKernel];
          [lstmDropoutGradientKernel addObject:v123];

          v112 = v255;
          --v114;
        }

        while (v114);
      }
    }

    v125 = v253;
    v126 = 0x277CD7000uLL;
    v127 = 0x277CD7000uLL;
    if (v21)
    {
      v128 = 0;
      do
      {
        if (layerCount == v128)
        {
          v129 = isBidirectional;
        }

        else
        {
          v129 = 0;
        }

        v242 = v128;
        if (!v128)
        {
          v129 = 1;
        }

        if (v129)
        {
          v130 = inputSize;
        }

        else
        {
          v130 = v125;
        }

        v131 = [*(v126 + 600) matrixDescriptorWithRows:v125 columns:v130 rowBytes:4 * v130 dataType:268435488];
        v132 = v219 * v130;
        v133 = [v112 newBufferWithLength:v132 options:0];
        v134 = [v112 newBufferWithLength:v132 options:0];
        v135 = [v112 newBufferWithLength:v132 options:0];
        v136 = [v112 newBufferWithLength:v132 options:0];
        v247 = v133;
        v137 = [objc_alloc(*(v127 + 592)) initWithBuffer:v133 descriptor:v131];
        v245 = v134;
        v138 = [objc_alloc(*(v127 + 592)) initWithBuffer:v134 descriptor:v131];
        v139 = [objc_alloc(*(v127 + 592)) initWithBuffer:v135 descriptor:v131];
        v240 = v136;
        v250 = v131;
        v140 = [objc_alloc(*(v127 + 592)) initWithBuffer:v136 descriptor:v131];
        rnnExportedInputWeightGradientMatrices = [v252 rnnExportedInputWeightGradientMatrices];
        v238 = v137;
        [rnnExportedInputWeightGradientMatrices addObject:v137];

        rnnExportedInputWeightGradientMatrices2 = [v252 rnnExportedInputWeightGradientMatrices];
        v232 = v138;
        [rnnExportedInputWeightGradientMatrices2 addObject:v138];

        rnnExportedInputWeightGradientMatrices3 = [v252 rnnExportedInputWeightGradientMatrices];
        v236 = v139;
        [rnnExportedInputWeightGradientMatrices3 addObject:v139];

        rnnExportedInputWeightGradientMatrices4 = [v252 rnnExportedInputWeightGradientMatrices];
        v234 = v140;
        [rnnExportedInputWeightGradientMatrices4 addObject:v140];

        v145 = [*(v126 + 600) matrixDescriptorWithRows:v253 columns:v253 rowBytes:v219 dataType:268435488];
        v146 = [v112 newBufferWithLength:v201 options:0];
        v147 = [v112 newBufferWithLength:v201 options:0];
        v148 = [v112 newBufferWithLength:v201 options:0];
        v149 = [v112 newBufferWithLength:v201 options:0];
        v150 = [objc_alloc(*(v127 + 592)) initWithBuffer:v146 descriptor:v145];
        v151 = objc_alloc(*(v127 + 592));
        v230 = v147;
        v152 = v147;
        v153 = v148;
        v154 = [v151 initWithBuffer:v152 descriptor:v145];
        v223 = v153;
        v155 = [objc_alloc(*(v127 + 592)) initWithBuffer:v153 descriptor:v145];
        v227 = v149;
        v156 = [objc_alloc(*(v127 + 592)) initWithBuffer:v149 descriptor:v145];
        rnnExportedHiddenWeightGradientMatrices = [v252 rnnExportedHiddenWeightGradientMatrices];
        v225 = v150;
        [rnnExportedHiddenWeightGradientMatrices addObject:v150];

        rnnExportedHiddenWeightGradientMatrices2 = [v252 rnnExportedHiddenWeightGradientMatrices];
        [rnnExportedHiddenWeightGradientMatrices2 addObject:v154];

        rnnExportedHiddenWeightGradientMatrices3 = [v252 rnnExportedHiddenWeightGradientMatrices];
        [rnnExportedHiddenWeightGradientMatrices3 addObject:v155];

        rnnExportedHiddenWeightGradientMatrices4 = [v252 rnnExportedHiddenWeightGradientMatrices];
        v221 = v156;
        [rnnExportedHiddenWeightGradientMatrices4 addObject:v156];

        if (termsCopy)
        {
          v161 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:1 columns:v253 rowBytes:v219 dataType:268435488];
          v213 = [v255 newBufferWithLength:v219 options:0];
          v212 = [v255 newBufferWithLength:v219 options:0];
          v211 = [v255 newBufferWithLength:v219 options:0];
          v162 = [v255 newBufferWithLength:v219 options:0];
          v217 = v146;
          v163 = [objc_alloc(*(v127 + 592)) initWithBuffer:v213 descriptor:v161];
          v164 = [objc_alloc(*(v127 + 592)) initWithBuffer:v212 descriptor:v161];
          v215 = v155;
          v165 = v154;
          v166 = [objc_alloc(*(v127 + 592)) initWithBuffer:v211 descriptor:v161];
          v167 = [objc_alloc(*(v127 + 592)) initWithBuffer:v162 descriptor:v161];
          rnnExportedBiasGradientMatrices = [v252 rnnExportedBiasGradientMatrices];
          [rnnExportedBiasGradientMatrices addObject:v163];

          rnnExportedBiasGradientMatrices2 = [v252 rnnExportedBiasGradientMatrices];
          [rnnExportedBiasGradientMatrices2 addObject:v164];

          rnnExportedBiasGradientMatrices3 = [v252 rnnExportedBiasGradientMatrices];
          [rnnExportedBiasGradientMatrices3 addObject:v166];

          rnnExportedBiasGradientMatrices4 = [v252 rnnExportedBiasGradientMatrices];
          [rnnExportedBiasGradientMatrices4 addObject:v167];

          v127 = 0x277CD7000;
          v154 = v165;
          v155 = v215;

          v146 = v217;
          v112 = v255;
        }

        v128 = v242 + 1;
        v21 = layerCount << isBidirectional;
        v125 = v253;
        v126 = 0x277CD7000;
      }

      while (v202 != v242 + 1);
    }

    [v252 setRnnTrainableWeights:v210];
    [v252 setRnnMomentumMatrices:v193];
    [v252 setRnnVelocityMatrices:v209];
    [v252 setRnnCenterWeightMatrices:v208];
    [v252 setRnnTrainableStates:v207];
    v172 = v197;
    v173 = !v197 || v200 == 0;
    v174 = v173 || v252 == 0;
    v175 = !v174;
    if (v174)
    {
      v176 = +[MLCLog framework];
      descriptorCopy = v195;
      v203 = v199;
      if (os_log_type_enabled(v176, OS_LOG_TYPE_ERROR))
      {
        v179 = NSStringFromSelector(a2);
        *buf = v184;
        *&buf[4] = v179;
        *&buf[12] = 2112;
        *&buf[14] = v255;
        _os_log_error_impl(&dword_238C1D000, v176, OS_LOG_TYPE_ERROR, "%@: Unable to create gpuOps for LSTM layer for device %@", buf, 0x16u);

        v112 = v255;
      }

      v172 = v197;
    }

    else
    {
      [v252 setLayer:v187];
      [v186 addObject:v252];
      descriptorCopy = v195;
      [v252 setIsBidirectional:{objc_msgSend(v195, "isBidirectional")}];
      [v252 setBatchFirst:{objc_msgSend(v195, "batchFirst")}];
      [v252 setReturnsSequences:{objc_msgSend(v195, "returnsSequences")}];
      [v252 setHiddenSize:{objc_msgSend(v195, "hiddenSize")}];
      [v252 setInputSize:{objc_msgSend(v195, "inputSize")}];
      [v252 setNumLayers:{objc_msgSend(v195, "layerCount")}];
      [v252 setSourceOfForwardNeededForGradient:1];
      [v252 setResultOfForwardNeededForGradient:0];
      v203 = v199;
    }

    if (!v175)
    {
      break;
    }

    v90 = v196 + 1;
    v86 = deviceCopy;
    deviceList4 = [deviceCopy deviceList];
    v178 = [deviceList4 count];

    v91 = MEMORY[0x277CBEBF8];
    if (v196 + 1 >= v178)
    {
      goto LABEL_81;
    }
  }

LABEL_84:

  v181 = 0;
  v19 = v187;
LABEL_85:

  v182 = *MEMORY[0x277D85DE8];
  return v181;
}

+ (BOOL)compileWithDevice:(id)device deviceOps:(id)ops sourceTensors:(id)tensors resultTensor:(id)tensor
{
  selfCopy = self;
  deviceCopy = device;
  opsCopy = ops;
  tensorsCopy = tensors;
  tensorCopy = tensor;
  deviceList = [deviceCopy deviceList];
  v12 = [deviceList count];

  if (v12)
  {
    v13 = 0;
    v118 = tensorsCopy;
    v119 = deviceCopy;
    do
    {
      v127 = v13;
      v126 = [opsCopy objectAtIndexedSubscript:{v13, selfCopy}];
      if ([v126 batchFirst])
      {
        v14 = [tensorsCopy objectAtIndexedSubscript:0];
        descriptor = [v14 descriptor];
        shape = [descriptor shape];
        v17 = [shape count];

        v18 = 3;
        if (v17 != 4)
        {
          v18 = 1;
        }

        v124 = v18;
        v19 = 1;
        if (v17 != 4)
        {
          v19 = 2;
        }

        v120 = 0;
        v122 = v19;
      }

      else
      {
        v122 = 2;
        v124 = 0;
        v120 = 1;
      }

      v116 = [tensorsCopy objectAtIndexedSubscript:0];
      descriptor2 = [v116 descriptor];
      shape2 = [descriptor2 shape];
      v108 = [shape2 objectAtIndexedSubscript:v120];
      unsignedIntegerValue = [v108 unsignedIntegerValue];
      v21 = [tensorsCopy objectAtIndexedSubscript:0];
      descriptor3 = [v21 descriptor];
      shape3 = [descriptor3 shape];
      v24 = [shape3 objectAtIndexedSubscript:v122];
      unsignedIntegerValue2 = [v24 unsignedIntegerValue];
      v26 = tensorsCopy;
      v27 = unsignedIntegerValue2;
      v28 = [v26 objectAtIndexedSubscript:0];
      descriptor4 = [v28 descriptor];
      shape4 = [descriptor4 shape];
      v31 = [shape4 objectAtIndexedSubscript:v124];
      v32 = 4 * unsignedIntegerValue * v27 * [v31 unsignedIntegerValue];

      deviceList2 = [v119 deviceList];
      v34 = [deviceList2 objectAtIndexedSubscript:v127];
      v117 = [v34 newBufferWithLength:v32 options:{+[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];

      deviceList3 = [v119 deviceList];
      v36 = [deviceList3 objectAtIndexedSubscript:v127];
      v115 = [v36 newBufferWithLength:v32 options:{+[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];

      descriptor5 = [tensorCopy descriptor];
      shape5 = [descriptor5 shape];
      v37 = [shape5 objectAtIndexedSubscript:v120];
      unsignedIntegerValue3 = [v37 unsignedIntegerValue];
      descriptor6 = [tensorCopy descriptor];
      shape6 = [descriptor6 shape];
      v41 = [shape6 objectAtIndexedSubscript:v122];
      unsignedIntegerValue4 = [v41 unsignedIntegerValue];
      v43 = [v118 objectAtIndexedSubscript:0];
      descriptor7 = [v43 descriptor];
      shape7 = [descriptor7 shape];
      v46 = [shape7 objectAtIndexedSubscript:v124];
      v47 = 4 * unsignedIntegerValue3 * unsignedIntegerValue4 * [v46 unsignedIntegerValue];

      v48 = v117;
      v49 = v127;

      deviceCopy = v119;
      deviceList4 = [v119 deviceList];
      v51 = [deviceList4 objectAtIndexedSubscript:v127];
      v52 = [v51 newBufferWithLength:v47 options:{+[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];

      deviceList5 = [v119 deviceList];
      v54 = [deviceList5 objectAtIndexedSubscript:v127];
      v55 = +[MLCGPUHelper mtlResourceOptions];
      v56 = v47;
      v57 = v115;
      v58 = [v54 newBufferWithLength:v56 options:v55];

      v59 = v126;
      rnnBuffers = [v126 rnnBuffers];
      [rnnBuffers addObject:v117];

      rnnBuffers2 = [v126 rnnBuffers];
      [rnnBuffers2 addObject:v52];

      rnnBuffers3 = [v126 rnnBuffers];
      [rnnBuffers3 addObject:v58];

      rnnBuffers4 = [v126 rnnBuffers];
      [rnnBuffers4 addObject:v115];

      if ([v126 isBidirectional])
      {
        v113 = v58;
        v64 = [v118 objectAtIndexedSubscript:0];
        descriptor8 = [v64 descriptor];
        shape8 = [descriptor8 shape];
        v67 = [shape8 objectAtIndexedSubscript:v120];
        unsignedIntegerValue5 = [v67 unsignedIntegerValue];

        v69 = [v118 objectAtIndexedSubscript:0];
        descriptor9 = [v69 descriptor];
        shape9 = [descriptor9 shape];
        [shape9 objectAtIndexedSubscript:v122];
        v72 = v123 = v52;
        unsignedIntegerValue6 = [v72 unsignedIntegerValue];

        v74 = [v118 objectAtIndexedSubscript:0];
        descriptor10 = [v74 descriptor];
        shape10 = [descriptor10 shape];
        v77 = [shape10 objectAtIndexedSubscript:v124];
        unsignedIntegerValue7 = [v77 unsignedIntegerValue];

        deviceList6 = [v119 deviceList];
        v80 = [deviceList6 objectAtIndexedSubscript:v127];
        v81 = unsignedIntegerValue7 * unsignedIntegerValue6;
        v82 = 4 * unsignedIntegerValue7 * unsignedIntegerValue6;
        v83 = [v80 newBufferWithLength:v82 * unsignedIntegerValue5 options:{+[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];

        rnnBuffers5 = [v126 rnnBuffers];
        v125 = v83;
        [rnnBuffers5 addObject:v83];

        v121 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:unsignedIntegerValue5 columns:unsignedIntegerValue7 * unsignedIntegerValue6 rowBytes:v82 dataType:268435488];
        v110 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v83 descriptor:v121];
        deviceList7 = [v119 deviceList];
        v86 = [deviceList7 objectAtIndexedSubscript:v127];
        v87 = [v86 newBufferWithLength:v82 * unsignedIntegerValue5 options:{+[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];

        rnnBuffers6 = [v126 rnnBuffers];
        [rnnBuffers6 addObject:v87];

        v89 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:unsignedIntegerValue5 columns:v81 rowBytes:v82 dataType:268435488];
        v90 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v87 descriptor:v89];
        v91 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:unsignedIntegerValue5 columns:v81 rowBytes:v82 dataType:268435488];
        v92 = objc_alloc(MEMORY[0x277CD7250]);
        rnnBuffers7 = [v126 rnnBuffers];
        v94 = [rnnBuffers7 objectAtIndexedSubscript:3];
        v95 = [v92 initWithBuffer:v94 descriptor:v91];

        v96 = objc_alloc(MEMORY[0x277CD76F8]);
        deviceList8 = [v119 deviceList];
        v98 = [deviceList8 objectAtIndexedSubscript:v127];
        v99 = v81;
        v49 = v127;
        v100 = [v96 initWithDevice:v98 count:2 rows:unsignedIntegerValue5 columns:v99 transpose:0];
        [v126 setBiDirectionalSumKernel:v100];

        v58 = v113;
        v59 = v126;

        deviceCopy = v119;
        [v126 setForwardTimeGradientResult:v110];
        [v126 setReverseTimeGradientResult:v90];
        [v126 setBiDirectionalGradientResult:v95];

        v48 = v117;
        v57 = v115;

        v52 = v123;
      }

      v101 = objc_opt_new();
      [v59 setLayer:v101];

      v13 = v49 + 1;
      deviceList9 = [deviceCopy deviceList];
      v103 = [deviceList9 count];

      tensorsCopy = v118;
    }

    while (v13 < v103);
  }

  return 1;
}

+ (void)setOptimizerDataForMomentumMatrices:(id)matrices velocityMatrices:(id)velocityMatrices centerWeightMatrices:(id)weightMatrices momentumArray:(id)array velocityArray:(id)velocityArray centerWeightArray:(id)weightArray accumulatorIndex:(unint64_t)index matrixId:(unint64_t)self0 weight:(id)self1 device:(id)self2 deviceOps:(id)self3 deviceNumber:(unint64_t)self4 lstmNumber:(unint64_t)self5 isRecurrent:(BOOL)self6
{
  matricesCopy = matrices;
  velocityMatricesCopy = velocityMatrices;
  weightMatricesCopy = weightMatrices;
  arrayCopy = array;
  velocityArrayCopy = velocityArray;
  weightArrayCopy = weightArray;
  weightCopy = weight;
  opsCopy = ops;
  gpuCommandBufferList = [device gpuCommandBufferList];
  v25 = [gpuCommandBufferList objectAtIndexedSubscript:number];

  v26 = [opsCopy objectAtIndexedSubscript:number];

  gradientKernel = [v26 gradientKernel];
  hiddenSize = [v26 hiddenSize];
  inputSize = [v26 inputSize];
  if (recurrent || (hiddenSize2 = inputSize, lstmNumber % [v26 numLayers]))
  {
    hiddenSize2 = [v26 hiddenSize];
  }

  v30 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:hiddenSize columns:hiddenSize2 rowBytes:4 * hiddenSize2 dataType:268435488];
  optimizerData = [weightCopy optimizerData];
  v32 = [optimizerData count];

  v33 = matricesCopy;
  v34 = velocityMatricesCopy;
  if (v32)
  {
    v68 = weightMatricesCopy;
    optimizerDeviceData = [weightCopy optimizerDeviceData];
    v36 = [optimizerDeviceData objectAtIndexedSubscript:number];
    momentumVectors = [v36 momentumVectors];

    v38 = objc_alloc(MEMORY[0x277CD7250]);
    v67 = momentumVectors;
    v39 = [momentumVectors objectAtIndexedSubscript:0];
    [v39 data];
    v40 = v69 = v25;
    v41 = [v38 initWithBuffer:v40 descriptor:v30];

    v25 = v69;
    v42 = [gradientKernel objectAtIndexedSubscript:lstmNumber];
    v76 = 0;
    v77 = 0;
    v78 = 0;
    [v42 encodeCopyWeightsToCommandBuffer:v69 weights:matricesCopy matrixId:id matrix:v41 copyFromWeightsToMatrix:0 matrixOffset:&v76];

    v66 = v41;
    [arrayCopy setObject:v41 atIndexedSubscript:index];
    optimizerData2 = [weightCopy optimizerData];
    v44 = [optimizerData2 count];

    if (v44 >= 2)
    {
      optimizerDeviceData2 = [weightCopy optimizerDeviceData];
      v46 = [optimizerDeviceData2 objectAtIndexedSubscript:number];
      velocityVectors = [v46 velocityVectors];

      v48 = objc_alloc(MEMORY[0x277CD7250]);
      v49 = [velocityVectors objectAtIndexedSubscript:0];
      data = [v49 data];
      v51 = [v48 initWithBuffer:data descriptor:v30];

      if (![velocityMatricesCopy count])
      {
        v52 = [gradientKernel objectAtIndexedSubscript:lstmNumber];
        [v52 createWeightGradientMatrices:velocityMatricesCopy dataType:268435488];
      }

      v53 = [gradientKernel objectAtIndexedSubscript:lstmNumber];
      v76 = 0;
      v77 = 0;
      v78 = 0;
      [v53 encodeCopyWeightsToCommandBuffer:v69 weights:velocityMatricesCopy matrixId:id matrix:v51 copyFromWeightsToMatrix:0 matrixOffset:&v76];

      [velocityArrayCopy setObject:v51 atIndexedSubscript:index];
      optimizerData3 = [weightCopy optimizerData];
      v55 = [optimizerData3 count];

      if (v55 >= 3)
      {
        v65 = velocityVectors;
        optimizerDeviceData3 = [weightCopy optimizerDeviceData];
        v57 = [optimizerDeviceData3 objectAtIndexedSubscript:number];
        centerWeightVectors = [v57 centerWeightVectors];

        v59 = objc_alloc(MEMORY[0x277CD7250]);
        v60 = [centerWeightVectors objectAtIndexedSubscript:0];
        data2 = [v60 data];
        v62 = [v59 initWithBuffer:data2 descriptor:v30];

        if (![v68 count])
        {
          v63 = [gradientKernel objectAtIndexedSubscript:lstmNumber];
          [v63 createWeightGradientMatrices:v68 dataType:268435488];
        }

        v64 = [gradientKernel objectAtIndexedSubscript:lstmNumber];
        v76 = 0;
        v77 = 0;
        v78 = 0;
        [v64 encodeCopyWeightsToCommandBuffer:v69 weights:v68 matrixId:id matrix:v62 copyFromWeightsToMatrix:0 matrixOffset:&v76];

        [weightArrayCopy setObject:v62 atIndexedSubscript:index];
        velocityVectors = v65;
      }

      v25 = v69;
    }

    weightMatricesCopy = v68;
    v33 = matricesCopy;
    v34 = velocityMatricesCopy;
  }
}

+ (void)setBiasOptimizerDataForMomentumMatrices:(id)matrices velocityMatrices:(id)velocityMatrices centerWeightMatrices:(id)weightMatrices momentumArray:(id)array velocityArray:(id)velocityArray centerWeightArray:(id)weightArray accumulatorIndex:(unint64_t)index matrixId:(unint64_t)self0 bias:(id)self1 device:(id)self2 deviceOps:(id)self3 deviceNumber:(unint64_t)self4 lstmNumber:(unint64_t)self5
{
  matricesCopy = matrices;
  velocityMatricesCopy = velocityMatrices;
  weightMatricesCopy = weightMatrices;
  arrayCopy = array;
  velocityArrayCopy = velocityArray;
  weightArrayCopy = weightArray;
  biasCopy = bias;
  opsCopy = ops;
  gpuCommandBufferList = [device gpuCommandBufferList];
  v26 = [gpuCommandBufferList objectAtIndexedSubscript:number];

  v27 = [opsCopy objectAtIndexedSubscript:number];

  gradientKernel = [v27 gradientKernel];
  v66 = v27;
  hiddenSize = [v27 hiddenSize];
  v30 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:1 columns:hiddenSize rowBytes:4 * hiddenSize dataType:268435488];
  optimizerData = [biasCopy optimizerData];
  v32 = [optimizerData count];

  if (v32)
  {
    v63 = velocityMatricesCopy;
    v64 = matricesCopy;
    v65 = arrayCopy;
    optimizerDeviceData = [biasCopy optimizerDeviceData];
    v34 = [optimizerDeviceData objectAtIndexedSubscript:number];
    momentumVectors = [v34 momentumVectors];

    v36 = objc_alloc(MEMORY[0x277CD7250]);
    v61 = momentumVectors;
    v37 = [momentumVectors objectAtIndexedSubscript:0];
    data = [v37 data];
    v39 = [v36 initWithBuffer:data descriptor:v30];

    v62 = gradientKernel;
    v40 = [gradientKernel objectAtIndexedSubscript:lstmNumber];
    v70 = 0;
    v71 = 0;
    v72 = 0;
    [v40 encodeCopyWeightsToCommandBuffer:v26 weights:matricesCopy matrixId:id matrix:v39 copyFromWeightsToMatrix:0 matrixOffset:&v70];

    [arrayCopy setObject:v39 atIndexedSubscript:index];
    optimizerData2 = [biasCopy optimizerData];
    v42 = [optimizerData2 count];

    if (v42 >= 2)
    {
      optimizerDeviceData2 = [biasCopy optimizerDeviceData];
      v44 = [optimizerDeviceData2 objectAtIndexedSubscript:number];
      velocityVectors = [v44 velocityVectors];

      v46 = objc_alloc(MEMORY[0x277CD7250]);
      v47 = [velocityVectors objectAtIndexedSubscript:0];
      data2 = [v47 data];
      v49 = [v46 initWithBuffer:data2 descriptor:v30];

      v50 = [v62 objectAtIndexedSubscript:lstmNumber];
      v70 = 0;
      v71 = 0;
      v72 = 0;
      [v50 encodeCopyWeightsToCommandBuffer:v26 weights:v63 matrixId:id matrix:v49 copyFromWeightsToMatrix:0 matrixOffset:&v70];

      [velocityArrayCopy setObject:v49 atIndexedSubscript:index];
      optimizerData3 = [biasCopy optimizerData];
      v52 = [optimizerData3 count];

      if (v52 >= 3)
      {
        optimizerDeviceData3 = [biasCopy optimizerDeviceData];
        v54 = [optimizerDeviceData3 objectAtIndexedSubscript:number];
        centerWeightVectors = [v54 centerWeightVectors];

        v56 = objc_alloc(MEMORY[0x277CD7250]);
        v57 = [centerWeightVectors objectAtIndexedSubscript:0];
        data3 = [v57 data];
        v59 = [v56 initWithBuffer:data3 descriptor:v30];

        v60 = [v62 objectAtIndexedSubscript:lstmNumber];
        v70 = 0;
        v71 = 0;
        v72 = 0;
        [v60 encodeCopyWeightsToCommandBuffer:v26 weights:weightMatricesCopy matrixId:id matrix:v59 copyFromWeightsToMatrix:0 matrixOffset:&v70];

        [weightArrayCopy setObject:v59 atIndexedSubscript:index];
      }

      matricesCopy = v64;
    }

    velocityMatricesCopy = v63;
    arrayCopy = v65;
    gradientKernel = v62;
  }
}

+ (BOOL)setOptimizerDataForDevice:(id)device deviceOps:(id)ops inputWeights:(id)weights hiddenWeights:(id)hiddenWeights biasTerms:(id)terms
{
  deviceCopy = device;
  opsCopy = ops;
  weightsCopy = weights;
  hiddenWeightsCopy = hiddenWeights;
  termsCopy = terms;
  deviceList = [deviceCopy deviceList];
  v18 = [deviceList count];

  if (v18)
  {
    v19 = 0;
    v76 = deviceCopy;
    v75 = opsCopy;
    selfCopy = self;
    v66 = hiddenWeightsCopy;
    v67 = weightsCopy;
    v65 = termsCopy;
    do
    {
      v79 = v19;
      v20 = [opsCopy objectAtIndexedSubscript:v19];
      gradientKernel = [v20 gradientKernel];
      v64 = [gradientKernel count];
      v21 = [weightsCopy count];
      v22 = [hiddenWeightsCopy count] + v21;
      if (termsCopy)
      {
        v22 += [termsCopy count];
      }

      v23 = [MEMORY[0x277CBEB18] arrayWithCapacity:v22];
      v78 = [MEMORY[0x277CBEB18] arrayWithCapacity:v22];
      v77 = [MEMORY[0x277CBEB18] arrayWithCapacity:v22];
      if (v64)
      {
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v74 = v20;
        v80 = v23;
        do
        {
          v81 = v24;
          v82 = v26;
          v27 = 0;
          v28 = v25;
          do
          {
            v69 = v26 + v27;
            rnnMomentumMatrices = [v20 rnnMomentumMatrices];
            v29 = [rnnMomentumMatrices objectAtIndexedSubscript:v28];
            rnnVelocityMatrices = [v20 rnnVelocityMatrices];
            v31 = [rnnVelocityMatrices objectAtIndexedSubscript:v28];
            rnnCenterWeightMatrices = [v20 rnnCenterWeightMatrices];
            v33 = [rnnCenterWeightMatrices objectAtIndexedSubscript:v28];
            v34 = [&unk_284BA60E0 objectAtIndexedSubscript:v27];
            unsignedIntegerValue = [v34 unsignedIntegerValue];
            v36 = [v67 objectAtIndexedSubscript:v81 + v27];
            LOBYTE(v62) = 0;
            [selfCopy setOptimizerDataForMomentumMatrices:v29 velocityMatrices:v31 centerWeightMatrices:v33 momentumArray:v80 velocityArray:v78 centerWeightArray:v77 accumulatorIndex:v69 matrixId:unsignedIntegerValue weight:v36 device:v76 deviceOps:v75 deviceNumber:v79 lstmNumber:v28 isRecurrent:v62];

            v20 = v74;
            v26 = v82;
            ++v27;
          }

          while (v27 != 4);
          for (i = 0; i != 4; ++i)
          {
            rnnMomentumMatrices2 = [v20 rnnMomentumMatrices];
            v68 = [rnnMomentumMatrices2 objectAtIndexedSubscript:v28];
            rnnVelocityMatrices2 = [v20 rnnVelocityMatrices];
            v39 = [rnnVelocityMatrices2 objectAtIndexedSubscript:v28];
            rnnCenterWeightMatrices2 = [v20 rnnCenterWeightMatrices];
            v41 = [rnnCenterWeightMatrices2 objectAtIndexedSubscript:v28];
            v42 = [&unk_284BA60F8 objectAtIndexedSubscript:i];
            unsignedIntegerValue2 = [v42 unsignedIntegerValue];
            v44 = [v66 objectAtIndexedSubscript:v81 + i];
            LOBYTE(v62) = 1;
            [selfCopy setOptimizerDataForMomentumMatrices:v68 velocityMatrices:v39 centerWeightMatrices:v41 momentumArray:v80 velocityArray:v78 centerWeightArray:v77 accumulatorIndex:v82 + 4 + i matrixId:unsignedIntegerValue2 weight:v44 device:v76 deviceOps:v75 deviceNumber:v79 lstmNumber:v28 isRecurrent:v62];

            v20 = v74;
          }

          v45 = v28;
          v26 = v82 + 8;
          termsCopy = v65;
          if (v65)
          {
            for (j = 0; j != 4; ++j)
            {
              v83 = v26;
              rnnMomentumMatrices3 = [v20 rnnMomentumMatrices];
              v47 = [rnnMomentumMatrices3 objectAtIndexedSubscript:v45];
              rnnVelocityMatrices3 = [v20 rnnVelocityMatrices];
              v49 = [rnnVelocityMatrices3 objectAtIndexedSubscript:v45];
              rnnCenterWeightMatrices3 = [v20 rnnCenterWeightMatrices];
              v51 = [rnnCenterWeightMatrices3 objectAtIndexedSubscript:v45];
              v52 = [&unk_284BA6110 objectAtIndexedSubscript:j];
              unsignedIntegerValue3 = [v52 unsignedIntegerValue];
              v54 = [termsCopy objectAtIndexedSubscript:v81 + j];
              v61 = unsignedIntegerValue3;
              v23 = v80;
              [selfCopy setBiasOptimizerDataForMomentumMatrices:v47 velocityMatrices:v49 centerWeightMatrices:v51 momentumArray:v80 velocityArray:v78 centerWeightArray:v77 accumulatorIndex:v83 matrixId:v61 bias:v54 device:v76 deviceOps:v75 deviceNumber:v79 lstmNumber:v45];

              termsCopy = v65;
              v20 = v74;

              v26 = v83 + 1;
            }
          }

          else
          {
            v23 = v80;
          }

          v25 = v45 + 1;
          v24 = v81 + 4;
        }

        while (v25 != v64);
      }

      v55 = [v23 copy];
      [v20 setMomentumVectors:v55];

      v56 = [v78 copy];
      [v20 setVelocityVectors:v56];

      v57 = [v77 copy];
      [v20 setCenterWeightVectors:v57];

      v19 = v79 + 1;
      deviceCopy = v76;
      deviceList2 = [v76 deviceList];
      v59 = [deviceList2 count];

      opsCopy = v75;
      hiddenWeightsCopy = v66;
      weightsCopy = v67;
    }

    while (v79 + 1 < v59);
  }

  return 1;
}

@end