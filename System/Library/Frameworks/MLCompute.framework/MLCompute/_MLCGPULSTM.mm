@interface _MLCGPULSTM
+ (BOOL)compileWithDevice:(id)a3 deviceOps:(id)a4 sourceTensors:(id)a5 resultTensor:(id)a6;
+ (BOOL)setOptimizerDataForDevice:(id)a3 deviceOps:(id)a4 inputWeights:(id)a5 hiddenWeights:(id)a6 biasTerms:(id)a7;
+ (id)layerWithDevice:(id)a3 descriptor:(id)a4 inputWeights:(id)a5 hiddenWeights:(id)a6 peepholeWeights:(id)a7 biasTerms:(id)a8 gateActivations:(id)a9 outputResultActivation:(id)a10 inferenceOnly:(BOOL)a11;
+ (void)setBiasOptimizerDataForMomentumMatrices:(id)a3 velocityMatrices:(id)a4 centerWeightMatrices:(id)a5 momentumArray:(id)a6 velocityArray:(id)a7 centerWeightArray:(id)a8 accumulatorIndex:(unint64_t)a9 matrixId:(unint64_t)a10 bias:(id)a11 device:(id)a12 deviceOps:(id)a13 deviceNumber:(unint64_t)a14 lstmNumber:(unint64_t)a15;
+ (void)setOptimizerDataForMomentumMatrices:(id)a3 velocityMatrices:(id)a4 centerWeightMatrices:(id)a5 momentumArray:(id)a6 velocityArray:(id)a7 centerWeightArray:(id)a8 accumulatorIndex:(unint64_t)a9 matrixId:(unint64_t)a10 weight:(id)a11 device:(id)a12 deviceOps:(id)a13 deviceNumber:(unint64_t)a14 lstmNumber:(unint64_t)a15 isRecurrent:(BOOL)a16;
- (_MLCGPULSTM)initWithDevice:(id)a3 descriptor:(id)a4 inputWeights:(id)a5 hiddenWeights:(id)a6 peepholeWeights:(id)a7 biasTerms:(id)a8 gateActivations:(id)a9 outputResultActivation:(id)a10 inferenceOnly:(BOOL)a11;
@end

@implementation _MLCGPULSTM

+ (id)layerWithDevice:(id)a3 descriptor:(id)a4 inputWeights:(id)a5 hiddenWeights:(id)a6 peepholeWeights:(id)a7 biasTerms:(id)a8 gateActivations:(id)a9 outputResultActivation:(id)a10 inferenceOnly:(BOOL)a11
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
  v26 = [[a1 alloc] initWithDevice:v25 descriptor:v24 inputWeights:v23 hiddenWeights:v22 peepholeWeights:v21 biasTerms:v20 gateActivations:v19 outputResultActivation:v18 inferenceOnly:v28];

  return v26;
}

- (_MLCGPULSTM)initWithDevice:(id)a3 descriptor:(id)a4 inputWeights:(id)a5 hiddenWeights:(id)a6 peepholeWeights:(id)a7 biasTerms:(id)a8 gateActivations:(id)a9 outputResultActivation:(id)a10 inferenceOnly:(BOOL)a11
{
  v259 = *MEMORY[0x277D85DE8];
  v198 = a3;
  v17 = a4;
  v192 = a5;
  v190 = a6;
  v189 = a7;
  v206 = a8;
  v191 = a9;
  v188 = a10;
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
  v204 = [v17 inputSize];
  v20 = [v17 hiddenSize];
  v205 = [v17 layerCount];
  v203 = [v17 isBidirectional];
  v21 = v205 << v203;
  v22 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v205 << v203];
  v195 = v17;
  v199 = v22;
  v253 = v20;
  v202 = v205 << v203;
  if (v205 << v203)
  {
    v23 = 0;
    v24 = 3;
    do
    {
      if (v205 == v23)
      {
        v25 = v203;
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
        v26 = v204;
      }

      else
      {
        v26 = v20;
      }

      v27 = [MEMORY[0x277CD76F0] createLSTMDescriptorWithInputFeatureChannels:v26 outputFeatureChannels:v20];
      [v22 setObject:v27 atIndexedSubscript:v23];

      v28 = [v22 objectAtIndexedSubscript:v23];
      [v28 setUseFloat32Weights:1];

      v29 = [MLCConvolutionDescriptor descriptorWithKernelWidth:1 kernelHeight:1 inputFeatureChannelCount:v26 outputFeatureChannelCount:v20];
      v220 = [MLCConvolutionDescriptor descriptorWithKernelWidth:1 kernelHeight:1 inputFeatureChannelCount:v20 outputFeatureChannelCount:v20];
      v233 = v24;
      v216 = v23;
      v244 = v29;
      if (v206)
      {
        v254 = [v206 objectAtIndexedSubscript:v24 - 3];
        v30 = (4 * v23) | 1;
        v237 = [v206 objectAtIndexedSubscript:v24 - 2];
        v243 = (4 * v23) | 2;
        v251 = [v206 objectAtIndexedSubscript:v24 - 1];
        v218 = (4 * v23) | 3;
        v235 = [v206 objectAtIndexedSubscript:v24];
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
      v31 = [v192 objectAtIndexedSubscript:v24 - 3];
      v32 = [v191 objectAtIndexedSubscript:0];
      v33 = [_MLCGPUWeightsConvolution weightWithDescriptor:v29 biasTerms:v254 weights:v31 neuronDescriptor:v32];

      v228 = v30;
      v34 = [v192 objectAtIndexedSubscript:v30];
      v35 = [v191 objectAtIndexedSubscript:1];
      v248 = [_MLCGPUWeightsConvolution weightWithDescriptor:v29 biasTerms:v237 weights:v34 neuronDescriptor:v35];

      v36 = [v192 objectAtIndexedSubscript:v243];
      v37 = [v191 objectAtIndexedSubscript:2];
      v246 = [_MLCGPUWeightsConvolution weightWithDescriptor:v29 biasTerms:v251 weights:v36 neuronDescriptor:v37];

      v38 = [v192 objectAtIndexedSubscript:?];
      v39 = [v191 objectAtIndexedSubscript:3];
      v40 = [_MLCGPUWeightsConvolution weightWithDescriptor:v244 biasTerms:v235 weights:v38 neuronDescriptor:v39];

      v231 = v33;
      if (!v33 || !v248 || !v246 || !v40)
      {

        v17 = v195;
        v22 = v199;
        goto LABEL_84;
      }

      v41 = [v190 objectAtIndexedSubscript:v226];
      v42 = [_MLCGPUWeightsConvolution weightWithDescriptor:v220 biasTerms:0 weights:v41];

      v43 = [v190 objectAtIndexedSubscript:v228];
      v44 = [_MLCGPUWeightsConvolution weightWithDescriptor:v220 biasTerms:0 weights:v43];

      v45 = [v190 objectAtIndexedSubscript:v243];
      v241 = [_MLCGPUWeightsConvolution weightWithDescriptor:v220 biasTerms:0 weights:v45];

      v46 = [v190 objectAtIndexedSubscript:v218];
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
      if (v189)
      {
        v51 = [v189 objectAtIndexedSubscript:v226];
        v52 = [_MLCGPUWeightsConvolution weightWithDescriptor:v244 biasTerms:0 weights:v51];

        v53 = [v189 objectAtIndexedSubscript:v228];
        v229 = [_MLCGPUWeightsConvolution weightWithDescriptor:v244 biasTerms:0 weights:v53];

        v54 = [v189 objectAtIndexedSubscript:v243];
        v55 = [_MLCGPUWeightsConvolution weightWithDescriptor:v244 biasTerms:0 weights:v54];

        v56 = [v189 objectAtIndexedSubscript:v218];
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

      v72 = +[_MLCGPUNeuron mpsNeurontypeFrom:](_MLCGPUNeuron, "mpsNeurontypeFrom:", [v188 activationType]);
      v73 = [v199 objectAtIndexedSubscript:v216];
      [v73 setCellToOutputNeuronType:v72];

      v49 = v251;
      [v188 a];
      v75 = v74;
      v76 = [v199 objectAtIndexedSubscript:v216];
      LODWORD(v77) = v75;
      [v76 setCellToOutputNeuronParamA:v77];

      [v188 b];
      v79 = v78;
      v80 = [v199 objectAtIndexedSubscript:v216];
      LODWORD(v81) = v79;
      [v80 setCellToOutputNeuronParamB:v81];

      [v188 c];
      v83 = v82;
      v84 = [v199 objectAtIndexedSubscript:v216];
      LODWORD(v85) = v83;
      [v84 setCellToOutputNeuronParamC:v85];

      v47 = 1;
LABEL_31:

      v42 = v214;
LABEL_32:

      v17 = v195;
      v22 = v199;
      v21 = v205 << v203;
      if ((v47 & 1) == 0)
      {
        goto LABEL_84;
      }

      v23 = v50 + 1;
      v24 = v48 + 4;
      v20 = v253;
    }

    while (v202 != v23);
  }

  v86 = v198;
  v87 = [v198 deviceList];
  v88 = [v87 count];

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
    v92 = [v86 deviceList];
    v196 = v90;
    v255 = [v92 objectAtIndexedSubscript:v90];

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
        v103 = [v22 objectAtIndexedSubscript:i];
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
    v108 = [v198 deviceList];
    v109 = [v108 count];

    if (v109 > 1)
    {
      v110 = [MLCMultiGPUDeviceOps multiGPUDeviceOpsWithGPUDeviceOps:v252];
      [v252 setLstmMultiGPUChildOps:v110];

      v111 = [v252 lstmMultiGPUChildOps];
      GPU_AllocateResourceForMultiGPUTraining(v198, v111, MEMORY[0x277CBEBF8], v196);
    }

    v112 = v255;
    if (!a11)
    {
      [v17 dropout];
      if (v113 > 0.0 && v205 >= 2)
      {
        [v17 dropout];
        [v252 setLstmDropout:?];
        v114 = v205 - 1;
        do
        {
          v115 = objc_alloc(MEMORY[0x277CD7660]);
          [v17 dropout];
          v249 = vdupq_n_s64(1uLL);
          *&v117 = 1.0 - v116;
          *buf = v249;
          *&buf[16] = 1;
          v118 = [v115 initWithDevice:v112 keepProbability:0 seed:buf maskStrideInPixels:v117];
          v119 = [v252 lstmDropoutForwardKernel];
          [v119 addObject:v118];

          v120 = objc_alloc(MEMORY[0x277CD7668]);
          [v17 dropout];
          *&v122 = 1.0 - v121;
          *buf = v249;
          *&buf[16] = 1;
          v123 = [v120 initWithDevice:v255 keepProbability:0 seed:buf maskStrideInPixels:v122];
          v124 = [v252 lstmDropoutGradientKernel];
          [v124 addObject:v123];

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
        if (v205 == v128)
        {
          v129 = v203;
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
          v130 = v204;
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
        v141 = [v252 rnnExportedInputWeightGradientMatrices];
        v238 = v137;
        [v141 addObject:v137];

        v142 = [v252 rnnExportedInputWeightGradientMatrices];
        v232 = v138;
        [v142 addObject:v138];

        v143 = [v252 rnnExportedInputWeightGradientMatrices];
        v236 = v139;
        [v143 addObject:v139];

        v144 = [v252 rnnExportedInputWeightGradientMatrices];
        v234 = v140;
        [v144 addObject:v140];

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
        v157 = [v252 rnnExportedHiddenWeightGradientMatrices];
        v225 = v150;
        [v157 addObject:v150];

        v158 = [v252 rnnExportedHiddenWeightGradientMatrices];
        [v158 addObject:v154];

        v159 = [v252 rnnExportedHiddenWeightGradientMatrices];
        [v159 addObject:v155];

        v160 = [v252 rnnExportedHiddenWeightGradientMatrices];
        v221 = v156;
        [v160 addObject:v156];

        if (v206)
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
          v168 = [v252 rnnExportedBiasGradientMatrices];
          [v168 addObject:v163];

          v169 = [v252 rnnExportedBiasGradientMatrices];
          [v169 addObject:v164];

          v170 = [v252 rnnExportedBiasGradientMatrices];
          [v170 addObject:v166];

          v171 = [v252 rnnExportedBiasGradientMatrices];
          [v171 addObject:v167];

          v127 = 0x277CD7000;
          v154 = v165;
          v155 = v215;

          v146 = v217;
          v112 = v255;
        }

        v128 = v242 + 1;
        v21 = v205 << v203;
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
      v17 = v195;
      v22 = v199;
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
      v17 = v195;
      [v252 setIsBidirectional:{objc_msgSend(v195, "isBidirectional")}];
      [v252 setBatchFirst:{objc_msgSend(v195, "batchFirst")}];
      [v252 setReturnsSequences:{objc_msgSend(v195, "returnsSequences")}];
      [v252 setHiddenSize:{objc_msgSend(v195, "hiddenSize")}];
      [v252 setInputSize:{objc_msgSend(v195, "inputSize")}];
      [v252 setNumLayers:{objc_msgSend(v195, "layerCount")}];
      [v252 setSourceOfForwardNeededForGradient:1];
      [v252 setResultOfForwardNeededForGradient:0];
      v22 = v199;
    }

    if (!v175)
    {
      break;
    }

    v90 = v196 + 1;
    v86 = v198;
    v177 = [v198 deviceList];
    v178 = [v177 count];

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

+ (BOOL)compileWithDevice:(id)a3 deviceOps:(id)a4 sourceTensors:(id)a5 resultTensor:(id)a6
{
  v105 = a1;
  v9 = a3;
  v107 = a4;
  v10 = a5;
  v106 = a6;
  v11 = [v9 deviceList];
  v12 = [v11 count];

  if (v12)
  {
    v13 = 0;
    v118 = v10;
    v119 = v9;
    do
    {
      v127 = v13;
      v126 = [v107 objectAtIndexedSubscript:{v13, v105}];
      if ([v126 batchFirst])
      {
        v14 = [v10 objectAtIndexedSubscript:0];
        v15 = [v14 descriptor];
        v16 = [v15 shape];
        v17 = [v16 count];

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

      v116 = [v10 objectAtIndexedSubscript:0];
      v114 = [v116 descriptor];
      v111 = [v114 shape];
      v108 = [v111 objectAtIndexedSubscript:v120];
      v20 = [v108 unsignedIntegerValue];
      v21 = [v10 objectAtIndexedSubscript:0];
      v22 = [v21 descriptor];
      v23 = [v22 shape];
      v24 = [v23 objectAtIndexedSubscript:v122];
      v25 = [v24 unsignedIntegerValue];
      v26 = v10;
      v27 = v25;
      v28 = [v26 objectAtIndexedSubscript:0];
      v29 = [v28 descriptor];
      v30 = [v29 shape];
      v31 = [v30 objectAtIndexedSubscript:v124];
      v32 = 4 * v20 * v27 * [v31 unsignedIntegerValue];

      v33 = [v119 deviceList];
      v34 = [v33 objectAtIndexedSubscript:v127];
      v117 = [v34 newBufferWithLength:v32 options:{+[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];

      v35 = [v119 deviceList];
      v36 = [v35 objectAtIndexedSubscript:v127];
      v115 = [v36 newBufferWithLength:v32 options:{+[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];

      v112 = [v106 descriptor];
      v109 = [v112 shape];
      v37 = [v109 objectAtIndexedSubscript:v120];
      v38 = [v37 unsignedIntegerValue];
      v39 = [v106 descriptor];
      v40 = [v39 shape];
      v41 = [v40 objectAtIndexedSubscript:v122];
      v42 = [v41 unsignedIntegerValue];
      v43 = [v118 objectAtIndexedSubscript:0];
      v44 = [v43 descriptor];
      v45 = [v44 shape];
      v46 = [v45 objectAtIndexedSubscript:v124];
      v47 = 4 * v38 * v42 * [v46 unsignedIntegerValue];

      v48 = v117;
      v49 = v127;

      v9 = v119;
      v50 = [v119 deviceList];
      v51 = [v50 objectAtIndexedSubscript:v127];
      v52 = [v51 newBufferWithLength:v47 options:{+[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];

      v53 = [v119 deviceList];
      v54 = [v53 objectAtIndexedSubscript:v127];
      v55 = +[MLCGPUHelper mtlResourceOptions];
      v56 = v47;
      v57 = v115;
      v58 = [v54 newBufferWithLength:v56 options:v55];

      v59 = v126;
      v60 = [v126 rnnBuffers];
      [v60 addObject:v117];

      v61 = [v126 rnnBuffers];
      [v61 addObject:v52];

      v62 = [v126 rnnBuffers];
      [v62 addObject:v58];

      v63 = [v126 rnnBuffers];
      [v63 addObject:v115];

      if ([v126 isBidirectional])
      {
        v113 = v58;
        v64 = [v118 objectAtIndexedSubscript:0];
        v65 = [v64 descriptor];
        v66 = [v65 shape];
        v67 = [v66 objectAtIndexedSubscript:v120];
        v68 = [v67 unsignedIntegerValue];

        v69 = [v118 objectAtIndexedSubscript:0];
        v70 = [v69 descriptor];
        v71 = [v70 shape];
        [v71 objectAtIndexedSubscript:v122];
        v72 = v123 = v52;
        v73 = [v72 unsignedIntegerValue];

        v74 = [v118 objectAtIndexedSubscript:0];
        v75 = [v74 descriptor];
        v76 = [v75 shape];
        v77 = [v76 objectAtIndexedSubscript:v124];
        v78 = [v77 unsignedIntegerValue];

        v79 = [v119 deviceList];
        v80 = [v79 objectAtIndexedSubscript:v127];
        v81 = v78 * v73;
        v82 = 4 * v78 * v73;
        v83 = [v80 newBufferWithLength:v82 * v68 options:{+[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];

        v84 = [v126 rnnBuffers];
        v125 = v83;
        [v84 addObject:v83];

        v121 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v68 columns:v78 * v73 rowBytes:v82 dataType:268435488];
        v110 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v83 descriptor:v121];
        v85 = [v119 deviceList];
        v86 = [v85 objectAtIndexedSubscript:v127];
        v87 = [v86 newBufferWithLength:v82 * v68 options:{+[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];

        v88 = [v126 rnnBuffers];
        [v88 addObject:v87];

        v89 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v68 columns:v81 rowBytes:v82 dataType:268435488];
        v90 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v87 descriptor:v89];
        v91 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v68 columns:v81 rowBytes:v82 dataType:268435488];
        v92 = objc_alloc(MEMORY[0x277CD7250]);
        v93 = [v126 rnnBuffers];
        v94 = [v93 objectAtIndexedSubscript:3];
        v95 = [v92 initWithBuffer:v94 descriptor:v91];

        v96 = objc_alloc(MEMORY[0x277CD76F8]);
        v97 = [v119 deviceList];
        v98 = [v97 objectAtIndexedSubscript:v127];
        v99 = v81;
        v49 = v127;
        v100 = [v96 initWithDevice:v98 count:2 rows:v68 columns:v99 transpose:0];
        [v126 setBiDirectionalSumKernel:v100];

        v58 = v113;
        v59 = v126;

        v9 = v119;
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
      v102 = [v9 deviceList];
      v103 = [v102 count];

      v10 = v118;
    }

    while (v13 < v103);
  }

  return 1;
}

+ (void)setOptimizerDataForMomentumMatrices:(id)a3 velocityMatrices:(id)a4 centerWeightMatrices:(id)a5 momentumArray:(id)a6 velocityArray:(id)a7 centerWeightArray:(id)a8 accumulatorIndex:(unint64_t)a9 matrixId:(unint64_t)a10 weight:(id)a11 device:(id)a12 deviceOps:(id)a13 deviceNumber:(unint64_t)a14 lstmNumber:(unint64_t)a15 isRecurrent:(BOOL)a16
{
  v72 = a3;
  v74 = a4;
  v21 = a5;
  v73 = a6;
  v71 = a7;
  v70 = a8;
  v22 = a11;
  v23 = a13;
  v24 = [a12 gpuCommandBufferList];
  v25 = [v24 objectAtIndexedSubscript:a14];

  v26 = [v23 objectAtIndexedSubscript:a14];

  v75 = [v26 gradientKernel];
  v27 = [v26 hiddenSize];
  v28 = [v26 inputSize];
  if (a16 || (v29 = v28, a15 % [v26 numLayers]))
  {
    v29 = [v26 hiddenSize];
  }

  v30 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v27 columns:v29 rowBytes:4 * v29 dataType:268435488];
  v31 = [v22 optimizerData];
  v32 = [v31 count];

  v33 = v72;
  v34 = v74;
  if (v32)
  {
    v68 = v21;
    v35 = [v22 optimizerDeviceData];
    v36 = [v35 objectAtIndexedSubscript:a14];
    v37 = [v36 momentumVectors];

    v38 = objc_alloc(MEMORY[0x277CD7250]);
    v67 = v37;
    v39 = [v37 objectAtIndexedSubscript:0];
    [v39 data];
    v40 = v69 = v25;
    v41 = [v38 initWithBuffer:v40 descriptor:v30];

    v25 = v69;
    v42 = [v75 objectAtIndexedSubscript:a15];
    v76 = 0;
    v77 = 0;
    v78 = 0;
    [v42 encodeCopyWeightsToCommandBuffer:v69 weights:v72 matrixId:a10 matrix:v41 copyFromWeightsToMatrix:0 matrixOffset:&v76];

    v66 = v41;
    [v73 setObject:v41 atIndexedSubscript:a9];
    v43 = [v22 optimizerData];
    v44 = [v43 count];

    if (v44 >= 2)
    {
      v45 = [v22 optimizerDeviceData];
      v46 = [v45 objectAtIndexedSubscript:a14];
      v47 = [v46 velocityVectors];

      v48 = objc_alloc(MEMORY[0x277CD7250]);
      v49 = [v47 objectAtIndexedSubscript:0];
      v50 = [v49 data];
      v51 = [v48 initWithBuffer:v50 descriptor:v30];

      if (![v74 count])
      {
        v52 = [v75 objectAtIndexedSubscript:a15];
        [v52 createWeightGradientMatrices:v74 dataType:268435488];
      }

      v53 = [v75 objectAtIndexedSubscript:a15];
      v76 = 0;
      v77 = 0;
      v78 = 0;
      [v53 encodeCopyWeightsToCommandBuffer:v69 weights:v74 matrixId:a10 matrix:v51 copyFromWeightsToMatrix:0 matrixOffset:&v76];

      [v71 setObject:v51 atIndexedSubscript:a9];
      v54 = [v22 optimizerData];
      v55 = [v54 count];

      if (v55 >= 3)
      {
        v65 = v47;
        v56 = [v22 optimizerDeviceData];
        v57 = [v56 objectAtIndexedSubscript:a14];
        v58 = [v57 centerWeightVectors];

        v59 = objc_alloc(MEMORY[0x277CD7250]);
        v60 = [v58 objectAtIndexedSubscript:0];
        v61 = [v60 data];
        v62 = [v59 initWithBuffer:v61 descriptor:v30];

        if (![v68 count])
        {
          v63 = [v75 objectAtIndexedSubscript:a15];
          [v63 createWeightGradientMatrices:v68 dataType:268435488];
        }

        v64 = [v75 objectAtIndexedSubscript:a15];
        v76 = 0;
        v77 = 0;
        v78 = 0;
        [v64 encodeCopyWeightsToCommandBuffer:v69 weights:v68 matrixId:a10 matrix:v62 copyFromWeightsToMatrix:0 matrixOffset:&v76];

        [v70 setObject:v62 atIndexedSubscript:a9];
        v47 = v65;
      }

      v25 = v69;
    }

    v21 = v68;
    v33 = v72;
    v34 = v74;
  }
}

+ (void)setBiasOptimizerDataForMomentumMatrices:(id)a3 velocityMatrices:(id)a4 centerWeightMatrices:(id)a5 momentumArray:(id)a6 velocityArray:(id)a7 centerWeightArray:(id)a8 accumulatorIndex:(unint64_t)a9 matrixId:(unint64_t)a10 bias:(id)a11 device:(id)a12 deviceOps:(id)a13 deviceNumber:(unint64_t)a14 lstmNumber:(unint64_t)a15
{
  v20 = a3;
  v21 = a4;
  v68 = a5;
  v22 = a6;
  v69 = a7;
  v67 = a8;
  v23 = a11;
  v24 = a13;
  v25 = [a12 gpuCommandBufferList];
  v26 = [v25 objectAtIndexedSubscript:a14];

  v27 = [v24 objectAtIndexedSubscript:a14];

  v28 = [v27 gradientKernel];
  v66 = v27;
  v29 = [v27 hiddenSize];
  v30 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:1 columns:v29 rowBytes:4 * v29 dataType:268435488];
  v31 = [v23 optimizerData];
  v32 = [v31 count];

  if (v32)
  {
    v63 = v21;
    v64 = v20;
    v65 = v22;
    v33 = [v23 optimizerDeviceData];
    v34 = [v33 objectAtIndexedSubscript:a14];
    v35 = [v34 momentumVectors];

    v36 = objc_alloc(MEMORY[0x277CD7250]);
    v61 = v35;
    v37 = [v35 objectAtIndexedSubscript:0];
    v38 = [v37 data];
    v39 = [v36 initWithBuffer:v38 descriptor:v30];

    v62 = v28;
    v40 = [v28 objectAtIndexedSubscript:a15];
    v70 = 0;
    v71 = 0;
    v72 = 0;
    [v40 encodeCopyWeightsToCommandBuffer:v26 weights:v20 matrixId:a10 matrix:v39 copyFromWeightsToMatrix:0 matrixOffset:&v70];

    [v22 setObject:v39 atIndexedSubscript:a9];
    v41 = [v23 optimizerData];
    v42 = [v41 count];

    if (v42 >= 2)
    {
      v43 = [v23 optimizerDeviceData];
      v44 = [v43 objectAtIndexedSubscript:a14];
      v45 = [v44 velocityVectors];

      v46 = objc_alloc(MEMORY[0x277CD7250]);
      v47 = [v45 objectAtIndexedSubscript:0];
      v48 = [v47 data];
      v49 = [v46 initWithBuffer:v48 descriptor:v30];

      v50 = [v62 objectAtIndexedSubscript:a15];
      v70 = 0;
      v71 = 0;
      v72 = 0;
      [v50 encodeCopyWeightsToCommandBuffer:v26 weights:v63 matrixId:a10 matrix:v49 copyFromWeightsToMatrix:0 matrixOffset:&v70];

      [v69 setObject:v49 atIndexedSubscript:a9];
      v51 = [v23 optimizerData];
      v52 = [v51 count];

      if (v52 >= 3)
      {
        v53 = [v23 optimizerDeviceData];
        v54 = [v53 objectAtIndexedSubscript:a14];
        v55 = [v54 centerWeightVectors];

        v56 = objc_alloc(MEMORY[0x277CD7250]);
        v57 = [v55 objectAtIndexedSubscript:0];
        v58 = [v57 data];
        v59 = [v56 initWithBuffer:v58 descriptor:v30];

        v60 = [v62 objectAtIndexedSubscript:a15];
        v70 = 0;
        v71 = 0;
        v72 = 0;
        [v60 encodeCopyWeightsToCommandBuffer:v26 weights:v68 matrixId:a10 matrix:v59 copyFromWeightsToMatrix:0 matrixOffset:&v70];

        [v67 setObject:v59 atIndexedSubscript:a9];
      }

      v20 = v64;
    }

    v21 = v63;
    v22 = v65;
    v28 = v62;
  }
}

+ (BOOL)setOptimizerDataForDevice:(id)a3 deviceOps:(id)a4 inputWeights:(id)a5 hiddenWeights:(id)a6 biasTerms:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [v12 deviceList];
  v18 = [v17 count];

  if (v18)
  {
    v19 = 0;
    v76 = v12;
    v75 = v13;
    v73 = a1;
    v66 = v15;
    v67 = v14;
    v65 = v16;
    do
    {
      v79 = v19;
      v20 = [v13 objectAtIndexedSubscript:v19];
      v63 = [v20 gradientKernel];
      v64 = [v63 count];
      v21 = [v14 count];
      v22 = [v15 count] + v21;
      if (v16)
      {
        v22 += [v16 count];
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
            v70 = [v20 rnnMomentumMatrices];
            v29 = [v70 objectAtIndexedSubscript:v28];
            v30 = [v20 rnnVelocityMatrices];
            v31 = [v30 objectAtIndexedSubscript:v28];
            v32 = [v20 rnnCenterWeightMatrices];
            v33 = [v32 objectAtIndexedSubscript:v28];
            v34 = [&unk_284BA60E0 objectAtIndexedSubscript:v27];
            v35 = [v34 unsignedIntegerValue];
            v36 = [v67 objectAtIndexedSubscript:v81 + v27];
            LOBYTE(v62) = 0;
            [v73 setOptimizerDataForMomentumMatrices:v29 velocityMatrices:v31 centerWeightMatrices:v33 momentumArray:v80 velocityArray:v78 centerWeightArray:v77 accumulatorIndex:v69 matrixId:v35 weight:v36 device:v76 deviceOps:v75 deviceNumber:v79 lstmNumber:v28 isRecurrent:v62];

            v20 = v74;
            v26 = v82;
            ++v27;
          }

          while (v27 != 4);
          for (i = 0; i != 4; ++i)
          {
            v71 = [v20 rnnMomentumMatrices];
            v68 = [v71 objectAtIndexedSubscript:v28];
            v38 = [v20 rnnVelocityMatrices];
            v39 = [v38 objectAtIndexedSubscript:v28];
            v40 = [v20 rnnCenterWeightMatrices];
            v41 = [v40 objectAtIndexedSubscript:v28];
            v42 = [&unk_284BA60F8 objectAtIndexedSubscript:i];
            v43 = [v42 unsignedIntegerValue];
            v44 = [v66 objectAtIndexedSubscript:v81 + i];
            LOBYTE(v62) = 1;
            [v73 setOptimizerDataForMomentumMatrices:v68 velocityMatrices:v39 centerWeightMatrices:v41 momentumArray:v80 velocityArray:v78 centerWeightArray:v77 accumulatorIndex:v82 + 4 + i matrixId:v43 weight:v44 device:v76 deviceOps:v75 deviceNumber:v79 lstmNumber:v28 isRecurrent:v62];

            v20 = v74;
          }

          v45 = v28;
          v26 = v82 + 8;
          v16 = v65;
          if (v65)
          {
            for (j = 0; j != 4; ++j)
            {
              v83 = v26;
              v72 = [v20 rnnMomentumMatrices];
              v47 = [v72 objectAtIndexedSubscript:v45];
              v48 = [v20 rnnVelocityMatrices];
              v49 = [v48 objectAtIndexedSubscript:v45];
              v50 = [v20 rnnCenterWeightMatrices];
              v51 = [v50 objectAtIndexedSubscript:v45];
              v52 = [&unk_284BA6110 objectAtIndexedSubscript:j];
              v53 = [v52 unsignedIntegerValue];
              v54 = [v16 objectAtIndexedSubscript:v81 + j];
              v61 = v53;
              v23 = v80;
              [v73 setBiasOptimizerDataForMomentumMatrices:v47 velocityMatrices:v49 centerWeightMatrices:v51 momentumArray:v80 velocityArray:v78 centerWeightArray:v77 accumulatorIndex:v83 matrixId:v61 bias:v54 device:v76 deviceOps:v75 deviceNumber:v79 lstmNumber:v45];

              v16 = v65;
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
      v12 = v76;
      v58 = [v76 deviceList];
      v59 = [v58 count];

      v13 = v75;
      v15 = v66;
      v14 = v67;
    }

    while (v79 + 1 < v59);
  }

  return 1;
}

@end