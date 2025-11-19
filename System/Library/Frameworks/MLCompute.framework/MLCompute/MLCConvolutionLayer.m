@interface MLCConvolutionLayer
+ (MLCConvolutionLayer)layerWithWeights:(MLCTensor *)weights biases:(MLCTensor *)biases descriptor:(MLCConvolutionDescriptor *)descriptor;
- (BOOL)allocateDataForOptimizer:(id)a3;
- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5;
- (MLCConvolutionLayer)initWithWeights:(id)a3 biases:(id)a4 descriptor:(id)a5;
- (id)description;
- (id)resultTensorFromSources:(id)a3;
- (id)summarizedDOTDescription;
- (unint64_t)allocatedDataSizeForTraining:(BOOL)a3 optimizer:(id)a4;
- (unint64_t)parametersCount;
- (unint64_t)resultSizeFromSourceSize:(unint64_t)a3 dimension:(unint64_t)a4;
- (void)allocateGradientsForParameters;
- (void)linkAssociatedTensors;
- (void)unlinkAssociatedTensors;
@end

@implementation MLCConvolutionLayer

+ (MLCConvolutionLayer)layerWithWeights:(MLCTensor *)weights biases:(MLCTensor *)biases descriptor:(MLCConvolutionDescriptor *)descriptor
{
  v8 = descriptor;
  v9 = biases;
  v10 = weights;
  v11 = [[a1 alloc] initWithWeights:v10 biases:v9 descriptor:v8];

  return v11;
}

- (MLCConvolutionLayer)initWithWeights:(id)a3 biases:(id)a4 descriptor:(id)a5
{
  v9 = a3;
  v10 = a4;
  v73 = a5;
  v11 = [v9 descriptor];
  v12 = [v11 shape];
  v13 = [v12 objectAtIndexedSubscript:0];
  v14 = [v13 unsignedIntegerValue];

  if (v14 < 2)
  {
    v16 = [v9 data];

    if (!v16)
    {
      v15 = +[MLCLog framework];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [MLCConvolutionLayer initWithWeights:a2 biases:? descriptor:?];
      }

      goto LABEL_11;
    }

    v71 = v10;
    if (v10)
    {
      v17 = [v10 descriptor];
      v18 = [v17 shape];
      v19 = [v18 objectAtIndexedSubscript:0];
      v20 = [v19 unsignedIntegerValue];

      if (v20 >= 2)
      {
        v15 = +[MLCLog framework];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [MLCConvolutionLayer initWithWeights:a2 biases:? descriptor:?];
        }

        goto LABEL_11;
      }

      v70 = self;
      v22 = [v10 descriptor];
      v23 = [v22 shape];
      v24 = [v23 objectAtIndexedSubscript:1];
      v25 = [v24 unsignedIntegerValue];
      v26 = v10;
      v27 = [v73 outputFeatureChannelCount];

      if (v25 != v27)
      {
        v33 = +[MLCLog framework];
        self = v70;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          [MLCConvolutionLayer initWithWeights:a2 biases:? descriptor:?];
        }

        goto LABEL_42;
      }

      v69 = [v26 descriptor];
      v28 = [v69 shape];
      v68 = [v28 count];
      v29 = v26;
      self = v70;
      if (v68 >= 4)
      {
        v30 = [v29 descriptor];
        v31 = [v30 shape];
        v32 = [v31 objectAtIndexedSubscript:3];
        if ([v32 unsignedIntegerValue] > 1)
        {

LABEL_25:
          v33 = +[MLCLog framework];
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            [MLCConvolutionLayer initWithWeights:a2 biases:? descriptor:?];
          }

          goto LABEL_42;
        }

        v67 = v32;
        v62 = v31;
        v64 = v30;
      }

      v34 = [v29 descriptor];
      v35 = [v34 shape];
      if ([v35 count] < 3)
      {
        v39 = 0;
      }

      else
      {
        v65 = [v29 descriptor];
        v36 = [v65 shape];
        [v36 objectAtIndexedSubscript:2];
        v37 = v66 = v28;
        v38 = [v37 unsignedIntegerValue] > 1;

        v28 = v66;
        v39 = v38;
      }

      if (v68 >= 4)
      {
      }

      if (v39)
      {
        goto LABEL_25;
      }

      v40 = [v9 childLayers];
      v41 = [v40 count];
      v42 = [v71 childLayers];
      v43 = [v42 count];

      if (v41 != v43)
      {
        v33 = +[MLCLog framework];
        if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
LABEL_42:

          v21 = 0;
LABEL_43:
          v10 = v71;
          goto LABEL_44;
        }

LABEL_41:
        [MLCFullyConnectedLayer initWithWeights:a2 biases:? descriptor:?];
        goto LABEL_42;
      }

      v44 = [v9 childLayers];
      v45 = [v44 count];

      v46 = v71;
      if (v45)
      {
        v47 = 0;
        while (1)
        {
          v48 = [v9 childLayers];
          v49 = [v48 objectAtIndexedSubscript:v47];
          v50 = [v46 childLayers];
          v51 = [v50 objectAtIndexedSubscript:v47];

          if (v49 != v51)
          {
            break;
          }

          ++v47;
          v52 = [v9 childLayers];
          v53 = [v52 count];

          v46 = v71;
          if (v47 >= v53)
          {
            goto LABEL_32;
          }
        }

        v33 = +[MLCLog framework];
        if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_42;
        }

        goto LABEL_41;
      }
    }

LABEL_32:
    v84.receiver = self;
    v84.super_class = MLCConvolutionLayer;
    v54 = [(MLCLayer *)&v84 initWithLabel:@"Convolution"];
    v55 = v54;
    if (v54)
    {
      v54->_accumulatorPrecisionOption = 0;
      objc_storeStrong(&v54->_weights, a3);
      objc_storeStrong(&v55->_descriptor, a5);
      objc_storeStrong(&v55->_biases, a4);
      v56 = [MLCTensorParameter parameterWithTensor:v9];
      weightsParameter = v55->_weightsParameter;
      v55->_weightsParameter = v56;

      [(MLCTensor *)v55->_weights setIsLayerParameter:1];
      if (v71)
      {
        v58 = [MLCTensorParameter parameterWithTensor:?];
        biasesParameter = v55->_biasesParameter;
        v55->_biasesParameter = v58;

        [(MLCTensor *)v55->_biases setIsLayerParameter:1];
      }

      else
      {
        v60 = v55->_biasesParameter;
        v55->_biasesParameter = 0;
      }

      v83.receiver = v55;
      v83.super_class = MLCConvolutionLayer;
      -[MLCLayer setKernelWidth:](&v83, sel_setKernelWidth_, [v73 kernelWidth]);
      v82.receiver = v55;
      v82.super_class = MLCConvolutionLayer;
      -[MLCLayer setKernelHeight:](&v82, sel_setKernelHeight_, [v73 kernelHeight]);
      v81.receiver = v55;
      v81.super_class = MLCConvolutionLayer;
      -[MLCLayer setDilationRateInX:](&v81, sel_setDilationRateInX_, [v73 dilationRateInX]);
      v80.receiver = v55;
      v80.super_class = MLCConvolutionLayer;
      -[MLCLayer setDilationRateInY:](&v80, sel_setDilationRateInY_, [v73 dilationRateInY]);
      v79.receiver = v55;
      v79.super_class = MLCConvolutionLayer;
      -[MLCLayer setStrideInX:](&v79, sel_setStrideInX_, [v73 strideInX]);
      v78.receiver = v55;
      v78.super_class = MLCConvolutionLayer;
      -[MLCLayer setStrideInY:](&v78, sel_setStrideInY_, [v73 strideInY]);
      v77.receiver = v55;
      v77.super_class = MLCConvolutionLayer;
      -[MLCLayer setPaddingPolicy:](&v77, sel_setPaddingPolicy_, [v73 paddingPolicy]);
      v76.receiver = v55;
      v76.super_class = MLCConvolutionLayer;
      -[MLCLayer setPaddingSizeInX:](&v76, sel_setPaddingSizeInX_, [v73 paddingSizeInX]);
      v75.receiver = v55;
      v75.super_class = MLCConvolutionLayer;
      -[MLCLayer setPaddingSizeInY:](&v75, sel_setPaddingSizeInY_, [v73 paddingSizeInY]);
      v74.receiver = v55;
      v74.super_class = MLCConvolutionLayer;
      [(MLCLayer *)&v74 setIsUpdatable:1];
    }

    self = v55;
    v21 = self;
    goto LABEL_43;
  }

  v15 = +[MLCLog framework];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [MLCConvolutionLayer initWithWeights:a2 biases:? descriptor:?];
  }

LABEL_11:

  v21 = 0;
LABEL_44:

  return v21;
}

- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(MLCConvolutionLayer *)self weights];
  v13 = [v12 parentLayers];
  v14 = [v13 count];

  if (!v14)
  {
    v16 = [(MLCConvolutionLayer *)self biases];
    v17 = [v16 parentLayers];
    v18 = [v17 count];

    if (v18)
    {
      v15 = +[MLCLog framework];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [MLCConvolutionLayer compileForDevice:a2 sourceTensors:self resultTensor:?];
      }

      goto LABEL_7;
    }

    v138 = a2;
    v139 = v10;
    v21 = [(MLCConvolutionLayer *)self biases];
    v22 = [v21 childLayers];
    v23 = [v22 count];

    if (v23)
    {
      v24 = [(MLCConvolutionLayer *)self weights];
      v25 = [v24 childLayers];
      v26 = [v25 count];
      v27 = [(MLCConvolutionLayer *)self biases];
      v28 = [v27 childLayers];
      v29 = [v28 count];

      if (v26 != v29)
      {
        v15 = +[MLCLog framework];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [MLCFullyConnectedLayer compileForDevice:v138 sourceTensors:? resultTensor:?];
        }

        v19 = 0;
        goto LABEL_46;
      }

      v30 = [(MLCConvolutionLayer *)self weights];
      v31 = [v30 childLayers];
      v32 = [v31 count];

      if (v32)
      {
        v33 = 0;
        while (1)
        {
          v34 = [(MLCConvolutionLayer *)self weights];
          v35 = [v34 childLayers];
          v36 = [v35 objectAtIndexedSubscript:v33];
          v37 = [(MLCConvolutionLayer *)self biases];
          v38 = [v37 childLayers];
          v39 = [v38 objectAtIndexedSubscript:v33];

          if (v36 != v39)
          {
            break;
          }

          ++v33;
          v40 = [(MLCConvolutionLayer *)self weights];
          v41 = [v40 childLayers];
          v42 = [v41 count];

          if (v33 >= v42)
          {
            goto LABEL_15;
          }
        }

        v15 = +[MLCLog framework];
        v10 = v139;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [MLCFullyConnectedLayer compileForDevice:v138 sourceTensors:? resultTensor:?];
        }

        goto LABEL_7;
      }
    }

LABEL_15:
    v43 = [(MLCConvolutionLayer *)self descriptor];
    v133 = [v43 paddingPolicy];

    v44 = [(MLCConvolutionLayer *)self descriptor];
    v132 = [v44 paddingSizeInX];

    v45 = [(MLCConvolutionLayer *)self descriptor];
    v134 = [v45 paddingSizeInY];

    v46 = [(MLCLayer *)self paddingPolicy];
    v47 = [(MLCConvolutionLayer *)self descriptor];
    v48 = [v47 paddingPolicy];

    v135 = v48;
    v136 = v46;
    if (v46 != v48)
    {
      v49 = [(MLCLayer *)self paddingPolicy];
      v50 = [(MLCConvolutionLayer *)self descriptor];
      [v50 setPaddingPolicy:v49];

      v51 = [(MLCLayer *)self paddingSizeInX];
      v52 = [(MLCConvolutionLayer *)self descriptor];
      [v52 setPaddingSizeInX:v51];

      v53 = [(MLCLayer *)self paddingSizeInY];
      v54 = [(MLCConvolutionLayer *)self descriptor];
      [v54 setPaddingSizeInY:v53];
    }

    v55 = [(MLCLayer *)self fusedLayers];
    v56 = [v55 count];

    if (v56)
    {
      v57 = [(MLCLayer *)self fusedLayers];
      v58 = [v57 objectAtIndexedSubscript:0];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      v60 = [(MLCLayer *)self fusedLayers];
      v61 = [v60 objectAtIndexedSubscript:0];
      if (isKindOfClass)
      {

        v62 = [(MLCLayer *)self fusedLayers];
        v63 = [v62 count];

        v128 = v11;
        if (v63 < 2)
        {
          v137 = 0;
        }

        else
        {
          v64 = [(MLCLayer *)self fusedLayers];
          v65 = [v64 objectAtIndexedSubscript:1];
          v137 = [v65 descriptor];
        }

        v129 = [v9 computeEngine];
        v126 = [(MLCConvolutionLayer *)self descriptor];
        v125 = [v61 mean];
        v75 = [v61 variance];
        v76 = [v61 beta];
        v77 = [v61 gamma];
        [v61 varianceEpsilon];
        v79 = v78;
        [v61 momentum];
        v81 = v80;
        v82 = [(MLCConvolutionLayer *)self weights];
        v83 = [(MLCConvolutionLayer *)self biases];
        v68 = v126;
        LODWORD(v84) = v79;
        LODWORD(v85) = v81;
        v15 = [v129 fusedConvolutionBatchNormalizationAndNeuronLayerWithDescriptor:v126 mean:v125 variance:v75 beta:v76 gamma:v77 varianceEpsilon:v137 momentum:v84 neuronDescriptor:v85 weights:v82 biasTerms:v83];

        v67 = v129;
        v11 = v128;
      }

      else
      {
        objc_opt_class();
        v69 = objc_opt_isKindOfClass();

        v70 = [(MLCLayer *)self fusedLayers];
        v61 = [v70 objectAtIndexedSubscript:0];
        if (v69)
        {

          v71 = [(MLCLayer *)self fusedLayers];
          v72 = [v71 count];

          if (v72 < 2)
          {
            v137 = 0;
          }

          else
          {
            v73 = [(MLCLayer *)self fusedLayers];
            v74 = [v73 objectAtIndexedSubscript:1];
            v137 = [v74 descriptor];
          }

          v130 = [v9 computeEngine];
          v92 = [(MLCConvolutionLayer *)self descriptor];
          v93 = [v61 beta];
          v94 = [v61 gamma];
          [v61 varianceEpsilon];
          v96 = v95;
          [v61 momentum];
          v98 = v97;
          v99 = [(MLCConvolutionLayer *)self weights];
          v100 = [(MLCConvolutionLayer *)self biases];
          v101 = v93;
          LODWORD(v102) = v96;
          LODWORD(v103) = v98;
          v15 = [v130 fusedConvolutionInstanceNormalizationAndNeuronLayerWithDescriptor:v92 beta:v93 gamma:v94 varianceEpsilon:v137 momentum:v99 neuronDescriptor:v100 weights:v102 biasTerms:v103];

          v68 = v92;
          v67 = v130;
        }

        else
        {
          objc_opt_class();
          v86 = objc_opt_isKindOfClass();

          v87 = [(MLCLayer *)self fusedLayers];
          v61 = [v87 objectAtIndexedSubscript:0];

          if (v86)
          {
            v88 = [(MLCLayer *)self fusedLayers];
            v89 = [v88 count];

            if (v89 < 2)
            {
              v137 = 0;
            }

            else
            {
              v90 = [(MLCLayer *)self fusedLayers];
              v91 = [v90 objectAtIndexedSubscript:1];
              v137 = [v91 descriptor];
            }

            v67 = [v9 computeEngine];
            v68 = [(MLCConvolutionLayer *)self descriptor];
            v127 = [v61 beta];
            v108 = [v61 gamma];
            [v61 varianceEpsilon];
            v110 = v109;
            v131 = [v61 groupCount];
            v111 = [(MLCConvolutionLayer *)self weights];
            v112 = [(MLCConvolutionLayer *)self biases];
            LODWORD(v113) = v110;
            v15 = [v67 fusedConvolutionGroupNormalizationAndNeuronLayerWithDescriptor:v68 beta:v127 gamma:v108 varianceEpsilon:v131 momentum:v137 groupCount:v111 neuronDescriptor:v113 weights:0.0 biasTerms:v112];
          }

          else
          {
            v104 = [v9 computeEngine];
            v67 = [v61 descriptor];
            v105 = [(MLCConvolutionLayer *)self descriptor];
            v106 = [(MLCConvolutionLayer *)self weights];
            v107 = [(MLCConvolutionLayer *)self biases];
            v137 = v104;
            v15 = [v104 fusedConvolutionAndNeuronLayerWithDescriptor:v67 convolutionDescriptor:v105 weights:v106 biasTerms:v107];

            v68 = v105;
          }
        }
      }
    }

    else
    {
      v61 = [v9 computeEngine];
      v66 = [(MLCConvolutionLayer *)self descriptor];
      v67 = [(MLCConvolutionLayer *)self weights];
      v68 = [(MLCConvolutionLayer *)self biases];
      v137 = v66;
      v15 = [v61 convolutionLayerWithDescriptor:v66 weights:v67 biasTerms:v68];
    }

    if (v15 && [v15 count])
    {
      v114 = [v9 computeEngine];
      v19 = [v114 compileLayerDeviceOps:v15 sourceTensors:v139 resultTensor:v11];

      v140.receiver = self;
      v140.super_class = MLCConvolutionLayer;
      [(MLCLayer *)&v140 bindDevice:v9 deviceOps:v15];
      v115 = [(MLCLayer *)self fusedLayers];
      v116 = [v115 count];

      if (v116)
      {
        v117 = 0;
        do
        {
          v118 = [(MLCLayer *)self fusedLayers];
          v119 = [v118 objectAtIndexedSubscript:v117];
          [v119 bindDevice:v9 deviceOps:v15];

          ++v117;
          v120 = [(MLCLayer *)self fusedLayers];
          v121 = [v120 count];
        }

        while (v117 < v121);
      }

      if (v136 == v135)
      {
LABEL_46:
        v10 = v139;
        goto LABEL_8;
      }

      v123 = [(MLCConvolutionLayer *)self descriptor];
      [v123 setPaddingPolicy:v133];

      v124 = [(MLCConvolutionLayer *)self descriptor];
      [v124 setPaddingSizeInX:v132];

      v122 = [(MLCConvolutionLayer *)self descriptor];
      [v122 setPaddingSizeInY:v134];
    }

    else
    {
      v122 = +[MLCLog framework];
      if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
      {
        [MLCScatterLayer compileForDevice:v138 sourceTensors:? resultTensor:?];
      }

      v19 = 0;
    }

    v10 = v139;

    goto LABEL_8;
  }

  v15 = +[MLCLog framework];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [MLCConvolutionLayer compileForDevice:a2 sourceTensors:self resultTensor:?];
  }

LABEL_7:
  v19 = 0;
LABEL_8:

  return v19;
}

- (BOOL)allocateDataForOptimizer:(id)a3
{
  v4 = a3;
  v5 = [(MLCConvolutionLayer *)self weightsParameter];
  v6 = [(MLCLayer *)self device];
  [v5 allocateDataForOptimizer:v4 device:v6 isVector:1];

  v7 = [(MLCConvolutionLayer *)self biases];

  if (v7)
  {
    v8 = [(MLCConvolutionLayer *)self biasesParameter];
    v9 = [(MLCLayer *)self device];
    [v8 allocateDataForOptimizer:v4 device:v9 isVector:1];
  }

  v10 = [(MLCLayer *)self device];
  v11 = [v10 computeEngine];
  v12 = [(MLCLayer *)self deviceOps];
  v13 = [(MLCConvolutionLayer *)self weights];
  v14 = [(MLCConvolutionLayer *)self biases];
  [v11 setConvolutionLayerOptimizerDataForDeviceOps:v12 weights:v13 bias:v14];

  return 1;
}

- (unint64_t)allocatedDataSizeForTraining:(BOOL)a3 optimizer:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(MLCConvolutionLayer *)self weights];
  v8 = [v7 descriptor];
  v9 = [v8 tensorAllocationSizeInBytes];

  v10 = [(MLCConvolutionLayer *)self biases];
  v11 = [v10 descriptor];
  v12 = [v11 tensorAllocationSizeInBytes];

  if (v4)
  {
    v13 = v12 + v9;
    v9 += v9 * [v6 numOptimizerDataBuffers];
    v12 += v12 * [v6 numOptimizerDataBuffers];
  }

  else
  {
    v13 = 0;
  }

  v14 = [(MLCConvolutionLayer *)self weights];
  v15 = [v14 childLayers];
  v16 = [v15 count];

  v17 = [(MLCConvolutionLayer *)self biases];
  v18 = [v17 childLayers];
  v19 = [v18 count];

  if (v19)
  {
    v20 = [(MLCConvolutionLayer *)self biases];
    v21 = [v20 childLayers];
    v12 /= [v21 count];
  }

  return v12 + v13 + v9 / v16;
}

- (void)allocateGradientsForParameters
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = [(MLCConvolutionLayer *)self biases];
  v4 = [(MLCConvolutionLayer *)self weights];
  v5 = v4;
  if (v3)
  {
    v13[0] = v4;
    v6 = [(MLCConvolutionLayer *)self biases];
    v13[1] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  }

  else
  {
    v12 = v4;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
  }

  v8 = [(MLCLayer *)self device];
  v9 = [v8 computeEngine];
  v10 = [(MLCLayer *)self deviceOps];
  [v9 allocateParameterGradientsForDeviceOps:v10 parameters:v7];

  v11 = *MEMORY[0x277D85DE8];
}

- (unint64_t)resultSizeFromSourceSize:(unint64_t)a3 dimension:(unint64_t)a4
{
  if (a4 >= 2)
  {
    if (a4 == 3)
    {
      v7 = [(MLCLayer *)self kernelWidth];
      v8 = [(MLCLayer *)self dilationRateInX];
      v9 = [(MLCLayer *)self strideInX];
      v10 = [(MLCLayer *)self paddingSizeInX];
    }

    else
    {
      v7 = [(MLCLayer *)self kernelHeight];
      v8 = [(MLCLayer *)self dilationRateInY];
      v9 = [(MLCLayer *)self strideInY];
      v10 = [(MLCLayer *)self paddingSizeInY];
    }

    v11 = v10;
    v12 = [(MLCConvolutionLayer *)self descriptor];
    v13 = [v12 isConvolutionTranspose];

    if (v13)
    {
      if ([(MLCLayer *)self paddingPolicy])
      {
        a3 = v8 * (v7 - 1) + v9 * (a3 - 1) + 1;
        if ([(MLCLayer *)self paddingPolicy]!= 1)
        {
          a3 -= 2 * v11;
        }
      }

      else
      {
        a3 *= v9;
      }
    }

    else
    {
      v15.receiver = self;
      v15.super_class = MLCConvolutionLayer;
      return [(MLCLayer *)&v15 resultSizeFromSourceSize:a3 dimension:a4];
    }
  }

  return a3;
}

- (id)resultTensorFromSources:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEBF8] mutableCopy];
  v6 = [v4 objectAtIndexedSubscript:0];
  v7 = [v6 descriptor];
  v8 = [v7 shape];
  v9 = [v8 objectAtIndexedSubscript:0];
  [v5 setObject:v9 atIndexedSubscript:0];

  v10 = MEMORY[0x277CCABB0];
  v11 = [(MLCConvolutionLayer *)self descriptor];
  v12 = [v10 numberWithUnsignedInteger:{objc_msgSend(v11, "outputFeatureChannelCount")}];
  [v5 setObject:v12 atIndexedSubscript:1];

  v13 = [v4 objectAtIndexedSubscript:0];
  v14 = [v13 descriptor];
  v15 = [v14 shape];
  v16 = [v15 count];

  v17 = [v4 objectAtIndexedSubscript:0];
  v18 = [v17 descriptor];
  v19 = [v18 shape];
  v20 = 2;
  v21 = [v19 objectAtIndexedSubscript:2];
  v22 = [v21 unsignedIntegerValue];
  if (v16 != 3)
  {
    v23 = [(MLCConvolutionLayer *)self resultSizeFromSourceSize:v22 dimension:2];

    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v23];
    [v5 setObject:v24 atIndexedSubscript:2];

    v17 = [v4 objectAtIndexedSubscript:0];
    v18 = [v17 descriptor];
    v19 = [v18 shape];
    v20 = 3;
    v21 = [v19 objectAtIndexedSubscript:3];
    v22 = [v21 unsignedIntegerValue];
  }

  v25 = [(MLCConvolutionLayer *)self resultSizeFromSourceSize:v22 dimension:3];

  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v25];
  [v5 setObject:v26 atIndexedSubscript:v20];

  v27 = [v5 copy];
  v28 = [v4 objectAtIndexedSubscript:0];
  v29 = [v28 descriptor];
  v30 = +[MLCTensorDescriptor descriptorWithShape:dataType:](MLCTensorDescriptor, "descriptorWithShape:dataType:", v27, [v29 dataType]);

  v31 = [MLCTensor tensorWithDescriptor:v30];

  return v31;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MLCConvolutionLayer *)self accumulatorPrecisionOption];
  v7 = [(MLCConvolutionLayer *)self weights];
  v8 = [(MLCConvolutionLayer *)self biases];
  v9 = [(MLCConvolutionLayer *)self descriptor];
  v10 = [(MLCLayer *)self conditionalTreeNode];
  v11 = [(MLCLayer *)self resultTensors];
  v12 = [v3 stringWithFormat:@"%@: { accumulatorPrecisionOption=%d : weights=%@ : biasTerms=%@ : descriptor=%@ : conditionalTreeNode=%@ : resultTensor=%@ }", v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (id)summarizedDOTDescription
{
  v3 = objc_opt_class();
  v34 = NSStringFromClass(v3);
  v4 = [(MLCConvolutionLayer *)self descriptor];
  v5 = [v4 paddingPolicy];

  if (v5 >= 2)
  {
    if (v5 != 2)
    {
      v33 = 0;
      goto LABEL_7;
    }

    v7 = MEMORY[0x277CCACA8];
    v6 = [(MLCConvolutionLayer *)self descriptor];
    v8 = MLCPaddingPolicyDebugDescription([v6 paddingPolicy]);
    v9 = [(MLCConvolutionLayer *)self descriptor];
    v10 = [v9 paddingSizeInX];
    v11 = [(MLCConvolutionLayer *)self descriptor];
    v33 = [v7 stringWithFormat:@"%@ (%lu, %lu)", v8, v10, objc_msgSend(v11, "paddingSizeInY")];
  }

  else
  {
    v6 = [(MLCConvolutionLayer *)self descriptor];
    v33 = MLCPaddingPolicyDebugDescription([v6 paddingPolicy]);
  }

LABEL_7:
  v30 = MEMORY[0x277CCACA8];
  v28 = [(MLCLayer *)self layerID];
  v32 = [(MLCConvolutionLayer *)self descriptor];
  v26 = MLCConvolutionTypeDebugDescription([v32 convolutionType]);
  v31 = [(MLCConvolutionLayer *)self descriptor];
  v25 = [v31 kernelWidth];
  v29 = [(MLCConvolutionLayer *)self descriptor];
  v24 = [v29 kernelWidth];
  v27 = [(MLCConvolutionLayer *)self descriptor];
  v23 = [v27 strideInX];
  v12 = [(MLCConvolutionLayer *)self descriptor];
  v13 = [v12 strideInY];
  v14 = [(MLCConvolutionLayer *)self descriptor];
  v15 = [v14 inputFeatureChannelCount];
  v16 = [(MLCConvolutionLayer *)self descriptor];
  v17 = [v16 outputFeatureChannelCount];
  v18 = [(MLCConvolutionLayer *)self descriptor];
  v19 = [v18 dilationRateInX];
  v20 = [(MLCConvolutionLayer *)self descriptor];
  v21 = [v30 stringWithFormat:@"<%@ (%lu)<BR /><FONT POINT-SIZE=10>Convolution Type: %@<BR />Kernel: (%lu, %lu)     Stride: (%lu, %lu)<BR />Input Feature Channel Count: %lu<BR />Output Feature Channel Count: %lu<BR />Dilation: (%lu, %lu)   Padding: %@</FONT>>", v34, v28, v26, v25, v24, v23, v13, v15, v17, v19, objc_msgSend(v20, "dilationRateInY"), v33];

  return v21;
}

- (void)linkAssociatedTensors
{
  v3 = [(MLCConvolutionLayer *)self weights];
  v4 = [v3 childLayers];
  [v4 addObject:self];

  v5 = [(MLCConvolutionLayer *)self biases];

  if (v5)
  {
    v7 = [(MLCConvolutionLayer *)self biases];
    v6 = [v7 childLayers];
    [v6 addObject:self];
  }
}

- (void)unlinkAssociatedTensors
{
  v3 = [(MLCConvolutionLayer *)self weights];
  v4 = [v3 childLayers];
  [v4 removeObject:self];

  v5 = [(MLCConvolutionLayer *)self biases];

  if (v5)
  {
    v7 = [(MLCConvolutionLayer *)self biases];
    v6 = [v7 childLayers];
    [v6 removeObject:self];
  }
}

- (unint64_t)parametersCount
{
  v2 = [(MLCConvolutionLayer *)self biasesParameter];

  if (v2)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)initWithWeights:(const char *)a1 biases:descriptor:.cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithWeights:(const char *)a1 biases:descriptor:.cold.4(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithWeights:(const char *)a1 biases:descriptor:.cold.5(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithWeights:(const char *)a1 biases:descriptor:.cold.6(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithWeights:(const char *)a1 biases:descriptor:.cold.7(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)compileForDevice:(const char *)a1 sourceTensors:(void *)a2 resultTensor:.cold.1(const char *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromSelector(a1);
  v4 = [a2 weights];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)compileForDevice:(const char *)a1 sourceTensors:(void *)a2 resultTensor:.cold.2(const char *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromSelector(a1);
  v4 = [a2 biases];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

@end