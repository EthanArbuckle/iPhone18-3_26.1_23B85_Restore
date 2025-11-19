@interface MLCMultiheadAttentionLayer
+ (MLCMultiheadAttentionLayer)layerWithDescriptor:(MLCMultiheadAttentionDescriptor *)descriptor weights:(NSArray *)weights biases:(NSArray *)biases attentionBiases:(NSArray *)attentionBiases;
- (BOOL)allocateDataForOptimizer:(id)a3;
- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5;
- (BOOL)isSupportedShapeForTensorSources:(id)a3;
- (MLCMultiheadAttentionLayer)initWithDescriptor:(id)a3 weights:(id)a4 bias:(id)a5 attentionBias:(id)a6;
- (id)description;
- (id)resultTensorFromSources:(id)a3;
- (id)summarizedDOTDescription;
- (unint64_t)allocatedDataSizeForTraining:(BOOL)a3 optimizer:(id)a4;
- (unint64_t)parametersCount;
- (void)allocateGradientsForParameters;
- (void)linkAssociatedTensors;
- (void)unlinkAssociatedTensors;
@end

@implementation MLCMultiheadAttentionLayer

+ (MLCMultiheadAttentionLayer)layerWithDescriptor:(MLCMultiheadAttentionDescriptor *)descriptor weights:(NSArray *)weights biases:(NSArray *)biases attentionBiases:(NSArray *)attentionBiases
{
  v10 = attentionBiases;
  v11 = biases;
  v12 = weights;
  v13 = descriptor;
  v14 = [[a1 alloc] initWithDescriptor:v13 weights:v12 bias:v11 attentionBias:v10];

  return v14;
}

- (MLCMultiheadAttentionLayer)initWithDescriptor:(id)a3 weights:(id)a4 bias:(id)a5 attentionBias:(id)a6
{
  v190[2] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if ([v13 count] != 4)
  {
    v17 = +[MLCLog framework];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [MLCMultiheadAttentionLayer initWithDescriptor:a2 weights:? bias:? attentionBias:?];
    }

    goto LABEL_11;
  }

  if ([v12 hasBiases])
  {
    if (!v14)
    {
      v17 = +[MLCLog framework];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [MLCMultiheadAttentionLayer initWithDescriptor:a2 weights:? bias:? attentionBias:?];
      }

      goto LABEL_11;
    }

    if ([v14 count] != 4)
    {
      v17 = +[MLCLog framework];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [MLCMultiheadAttentionLayer initWithDescriptor:a2 weights:? bias:? attentionBias:?];
      }

      goto LABEL_11;
    }
  }

  v16 = [v12 hasBiases];
  if (v14 && (v16 & 1) == 0)
  {
    v17 = +[MLCLog framework];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [MLCMultiheadAttentionLayer initWithDescriptor:a2 weights:? bias:? attentionBias:?];
    }

LABEL_11:
    v18 = 0;
    goto LABEL_12;
  }

  if ([v12 hasAttentionBiases])
  {
    if (!v15)
    {
      v17 = +[MLCLog framework];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [MLCMultiheadAttentionLayer initWithDescriptor:a2 weights:? bias:? attentionBias:?];
      }

      goto LABEL_11;
    }

    if ([v15 count] != 2)
    {
      v17 = +[MLCLog framework];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [MLCMultiheadAttentionLayer initWithDescriptor:a2 weights:? bias:? attentionBias:?];
      }

      goto LABEL_11;
    }
  }

  v21 = [v12 hasAttentionBiases];
  if (v15 && (v21 & 1) == 0)
  {
    v17 = +[MLCLog framework];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [MLCMultiheadAttentionLayer initWithDescriptor:a2 weights:? bias:? attentionBias:?];
    }

    goto LABEL_11;
  }

  obj = a4;
  v145 = a6;
  v146 = a2;
  v163 = self;
  v167 = v14;
  v22 = [v12 modelDimension];
  v150 = [v12 keyDimension];
  v148 = [v12 valueDimension];
  v23 = [v12 headCount];
  v24 = [v13 objectAtIndexedSubscript:0];
  v25 = [v24 descriptor];
  v17 = [v25 shape];

  v156 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v22];
  v190[0] = v156;
  v168 = v22;
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v22];
  v190[1] = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v190 count:2];
  v164 = v23;
  v166 = v15;
  v147 = a5;
  if ([v17 isEqualToArray:v27])
  {

    v28 = 0x277CCA000;
  }

  else
  {
    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v22];
    v189[0] = v29;
    v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v168 / v23];
    v31 = v23;
    v32 = v30;
    v189[1] = v30;
    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v31];
    v189[2] = v33;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v189 count:3];
    v142 = [v17 isEqualToArray:v34];

    v15 = v166;
    v28 = 0x277CCA000uLL;
    if ((v142 & 1) == 0)
    {
      v62 = +[MLCLog framework];
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        [MLCMultiheadAttentionLayer initWithDescriptor:v146 weights:? bias:? attentionBias:?];
      }

      goto LABEL_54;
    }
  }

  v35 = [v13 objectAtIndexedSubscript:1];
  v36 = [v35 descriptor];
  v37 = [v36 shape];

  v38 = v168;
  v157 = [*(v28 + 2992) numberWithUnsignedInteger:v168];
  v188[0] = v157;
  v39 = [*(v28 + 2992) numberWithUnsignedInteger:v150];
  v188[1] = v39;
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v188 count:2];
  v41 = v28;
  if ([v37 isEqualToArray:v40])
  {
    v42 = v37;

    v43 = v41;
  }

  else
  {
    v151 = [*(v28 + 2992) numberWithUnsignedInteger:v168];
    v187[0] = v151;
    v44 = [*(v28 + 2992) numberWithUnsignedInteger:v168 / v164];
    v187[1] = v44;
    v45 = [*(v28 + 2992) numberWithUnsignedInteger:v164];
    v187[2] = v45;
    v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v187 count:3];
    v42 = v37;
    v143 = [v37 isEqualToArray:v46];

    v15 = v166;
    v38 = v168;

    v43 = 0x277CCA000uLL;
    if ((v143 & 1) == 0)
    {
      v74 = +[MLCLog framework];
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        [MLCMultiheadAttentionLayer initWithDescriptor:v146 weights:? bias:? attentionBias:?];
      }

      v18 = 0;
      v17 = v42;
      goto LABEL_55;
    }
  }

  v47 = [v13 objectAtIndexedSubscript:2];
  v48 = [v47 descriptor];
  v17 = [v48 shape];

  v49 = [*(v43 + 2992) numberWithUnsignedInteger:v38];
  v186[0] = v49;
  v50 = [*(v43 + 2992) numberWithUnsignedInteger:v148];
  v186[1] = v50;
  v51 = [MEMORY[0x277CBEA60] arrayWithObjects:v186 count:2];
  if ([v17 isEqualToArray:v51])
  {

    v52 = v43;
  }

  else
  {
    v152 = [*(v43 + 2992) numberWithUnsignedInteger:v38];
    v158 = v49;
    v185[0] = v152;
    v52 = v43;
    v53 = [*(v43 + 2992) numberWithUnsignedInteger:v38 / v164];
    v185[1] = v53;
    v54 = [*(v43 + 2992) numberWithUnsignedInteger:v164];
    v185[2] = v54;
    v55 = [MEMORY[0x277CBEA60] arrayWithObjects:v185 count:3];
    v149 = [v17 isEqualToArray:v55];

    v38 = v168;
    v15 = v166;

    if ((v149 & 1) == 0)
    {
      v62 = +[MLCLog framework];
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        [MLCMultiheadAttentionLayer initWithDescriptor:v146 weights:? bias:? attentionBias:?];
      }

      goto LABEL_54;
    }
  }

  v56 = [v13 objectAtIndexedSubscript:3];
  v57 = [v56 descriptor];
  v58 = [v57 shape];

  v153 = [*(v52 + 2992) numberWithUnsignedInteger:v38];
  v184[0] = v153;
  v59 = [*(v52 + 2992) numberWithUnsignedInteger:v38];
  v184[1] = v59;
  v60 = [MEMORY[0x277CBEA60] arrayWithObjects:v184 count:2];
  v159 = v58;
  if ([v58 isEqualToArray:v60])
  {

    v61 = v147;
  }

  else
  {
    v63 = v52;
    v64 = [*(v52 + 2992) numberWithUnsignedInteger:v38];
    v183[0] = v64;
    v65 = [*(v63 + 2992) numberWithUnsignedInteger:v38 / v164];
    v183[1] = v65;
    v66 = [*(v63 + 2992) numberWithUnsignedInteger:v164];
    v183[2] = v66;
    v67 = [MEMORY[0x277CBEA60] arrayWithObjects:v183 count:3];
    v68 = [v58 isEqualToArray:v67];

    v15 = v166;
    v61 = v147;
    if ((v68 & 1) == 0)
    {
      v80 = +[MLCLog framework];
      self = v163;
      if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
      {
        [MLCMultiheadAttentionLayer initWithDescriptor:v146 weights:? bias:? attentionBias:?];
      }

      goto LABEL_59;
    }
  }

  if (![v12 hasBiases])
  {
    v14 = v167;
    v75 = v163;
    goto LABEL_49;
  }

  v69 = [v167 objectAtIndexedSubscript:0];
  v70 = [v69 descriptor];
  v17 = [v70 shape];

  v71 = v168;
  v72 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v168];
  v182 = v72;
  v73 = [MEMORY[0x277CBEA60] arrayWithObjects:&v182 count:1];
  if ([v17 isEqualToArray:v73])
  {
  }

  else
  {
    v81 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v168 / v164];
    v181[0] = v81;
    v82 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v164];
    v181[1] = v82;
    v83 = [MEMORY[0x277CBEA60] arrayWithObjects:v181 count:2];
    v160 = [v17 isEqualToArray:v83];

    v71 = v168;
    if ((v160 & 1) == 0)
    {
      v112 = +[MLCLog framework];
      if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
      {
        [MLCMultiheadAttentionLayer initWithDescriptor:v146 weights:? bias:? attentionBias:?];
      }

      v18 = 0;
      goto LABEL_98;
    }
  }

  v84 = [v167 objectAtIndexedSubscript:1];
  v85 = [v84 descriptor];
  v86 = [v85 shape];

  v87 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v71];
  v180 = v87;
  v88 = [MEMORY[0x277CBEA60] arrayWithObjects:&v180 count:1];
  if ([v86 isEqualToArray:v88])
  {

    goto LABEL_65;
  }

  v89 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v71 / v164];
  v179[0] = v89;
  v90 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v164];
  v179[1] = v90;
  v91 = [MEMORY[0x277CBEA60] arrayWithObjects:v179 count:2];
  v154 = [v86 isEqualToArray:v91];

  v71 = v168;
  if ((v154 & 1) == 0)
  {
    v140 = +[MLCLog framework];
    if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
    {
      [MLCMultiheadAttentionLayer initWithDescriptor:v146 weights:? bias:? attentionBias:?];
    }

    v18 = 0;
    v17 = v86;
LABEL_98:
    v15 = v166;
    v14 = v167;
    goto LABEL_56;
  }

LABEL_65:
  v92 = [v167 objectAtIndexedSubscript:2];
  v93 = [v92 descriptor];
  v17 = [v93 shape];

  v94 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v71];
  v178 = v94;
  v95 = [MEMORY[0x277CBEA60] arrayWithObjects:&v178 count:1];
  if ([v17 isEqualToArray:v95])
  {

    v96 = v71;
  }

  else
  {
    v162 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v71 / v164];
    v177[0] = v162;
    [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v164];
    v105 = v96 = v71;
    v177[1] = v105;
    v106 = [MEMORY[0x277CBEA60] arrayWithObjects:v177 count:2];
    v155 = [v17 isEqualToArray:v106];

    if ((v155 & 1) == 0)
    {
      v62 = +[MLCLog framework];
      v15 = v166;
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        [MLCMultiheadAttentionLayer initWithDescriptor:v146 weights:? bias:? attentionBias:?];
      }

      goto LABEL_54;
    }
  }

  v107 = [v167 objectAtIndexedSubscript:3];
  v108 = [v107 descriptor];
  v109 = [v108 shape];

  v110 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v96];
  v176 = v110;
  v111 = [MEMORY[0x277CBEA60] arrayWithObjects:&v176 count:1];
  v15 = v166;
  v159 = v109;
  if ([v109 isEqualToArray:v111])
  {

    v14 = v167;
    v75 = v163;
    v61 = v147;
    goto LABEL_49;
  }

  v175[0] = &unk_284BA5D08;
  v137 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v96];
  v175[1] = v137;
  v138 = [MEMORY[0x277CBEA60] arrayWithObjects:v175 count:2];
  v139 = [v109 isEqualToArray:v138];

  if ((v139 & 1) == 0)
  {
    v80 = +[MLCLog framework];
    self = v163;
    if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
    {
      [MLCMultiheadAttentionLayer initWithDescriptor:v146 weights:? bias:? attentionBias:?];
    }

LABEL_59:

    v18 = 0;
    v17 = v159;
    v14 = v167;
    goto LABEL_12;
  }

  v14 = v167;
  v75 = v163;
  v61 = v147;
LABEL_49:
  if (![v12 hasAttentionBiases])
  {
    v17 = v159;
LABEL_79:
    v170.receiver = v75;
    v170.super_class = MLCMultiheadAttentionLayer;
    v117 = [(MLCLayer *)&v170 initWithLabel:@"MultiheadAttention"];
    v118 = v117;
    if (v117)
    {
      objc_storeStrong(&v117->_descriptor, a3);
      objc_storeStrong(&v118->_weights, obj);
      objc_storeStrong(&v118->_biases, v61);
      objc_storeStrong(&v118->_attentionBiases, v145);
      v119 = MEMORY[0x277CBEBF8];
      v120 = [MEMORY[0x277CBEBF8] mutableCopy];
      v165 = [v119 mutableCopy];
      if ([v13 count])
      {
        v121 = 0;
        do
        {
          v122 = [v13 objectAtIndexedSubscript:v121];
          v123 = [MLCTensorParameter parameterWithTensor:v122];
          [v120 setObject:v123 atIndexedSubscript:v121];

          v124 = [(NSArray *)v118->_weights objectAtIndexedSubscript:v121];
          [v124 setIsLayerParameter:1];

          ++v121;
        }

        while (v121 < [v13 count]);
      }

      v125 = [v120 copy];
      weightsParameters = v118->_weightsParameters;
      v118->_weightsParameters = v125;

      if ([v12 hasBiases] && objc_msgSend(v167, "count"))
      {
        v127 = 0;
        do
        {
          v128 = [v167 objectAtIndexedSubscript:v127];
          v129 = [MLCTensorParameter parameterWithTensor:v128];
          [v165 addObject:v129];

          v130 = [(NSArray *)v118->_biases objectAtIndexedSubscript:v127];
          [v130 setIsLayerParameter:1];

          ++v127;
        }

        while (v127 < [v167 count]);
      }

      if ([v12 hasAttentionBiases] && objc_msgSend(v166, "count"))
      {
        v131 = 0;
        do
        {
          v132 = [v166 objectAtIndexedSubscript:v131];
          v133 = [MLCTensorParameter parameterWithTensor:v132];
          [v165 addObject:v133];

          v134 = [(NSArray *)v118->_attentionBiases objectAtIndexedSubscript:v131];
          [v134 setIsLayerParameter:1];

          ++v131;
        }

        while (v131 < [v166 count]);
      }

      v135 = [v165 copy];
      biasesParameters = v118->_biasesParameters;
      v118->_biasesParameters = v135;

      v169.receiver = v118;
      v169.super_class = MLCMultiheadAttentionLayer;
      [(MLCLayer *)&v169 setIsUpdatable:1];

      v14 = v167;
      v15 = v166;
    }

    self = v118;
    v18 = self;
    goto LABEL_12;
  }

  v76 = [v15 objectAtIndexedSubscript:0];
  v77 = [v76 descriptor];
  v17 = [v77 shape];

  v78 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v168];
  v174 = v78;
  v79 = [MEMORY[0x277CBEA60] arrayWithObjects:&v174 count:1];
  if ([v17 isEqualToArray:v79])
  {

    goto LABEL_68;
  }

  v97 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v168 / v164];
  v173[0] = v97;
  v98 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v164];
  v173[1] = v98;
  v99 = [MEMORY[0x277CBEA60] arrayWithObjects:v173 count:2];
  v161 = [v17 isEqualToArray:v99];

  v15 = v166;
  if ((v161 & 1) == 0)
  {
    v62 = +[MLCLog framework];
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      [MLCMultiheadAttentionLayer initWithDescriptor:v146 weights:? bias:? attentionBias:?];
    }

LABEL_54:

    v18 = 0;
LABEL_55:
    v14 = v167;
LABEL_56:
    self = v163;
    goto LABEL_12;
  }

LABEL_68:
  v100 = [v15 objectAtIndexedSubscript:1];
  v101 = [v100 descriptor];
  v102 = [v101 shape];

  v103 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v168];
  v172 = v103;
  v104 = [MEMORY[0x277CBEA60] arrayWithObjects:&v172 count:1];
  if ([v102 isEqualToArray:v104])
  {

    v17 = v102;
    v14 = v167;
LABEL_78:
    v75 = v163;
    v61 = v147;
    goto LABEL_79;
  }

  v113 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v168 / v164];
  v171[0] = v113;
  v114 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v164];
  v171[1] = v114;
  v115 = [MEMORY[0x277CBEA60] arrayWithObjects:v171 count:2];
  v116 = [v102 isEqualToArray:v115];

  if (v116)
  {
    v17 = v102;
    v15 = v166;
    v14 = v167;
    goto LABEL_78;
  }

  v141 = +[MLCLog framework];
  self = v163;
  if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
  {
    [MLCMultiheadAttentionLayer initWithDescriptor:v146 weights:? bias:? attentionBias:?];
  }

  v18 = 0;
  v17 = v102;
  v15 = v166;
  v14 = v167;
LABEL_12:

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5
{
  v163 = *MEMORY[0x277D85DE8];
  v155 = a3;
  v8 = a4;
  v154 = a5;
  v9 = [v8 objectAtIndexedSubscript:0];
  v10 = [v9 descriptor];
  v11 = [v10 dimensionCount];

  v12 = [(MLCMultiheadAttentionLayer *)self descriptor];
  v13 = [v12 modelDimension];
  v14 = [v8 objectAtIndexedSubscript:0];
  v15 = [v14 descriptor];
  v16 = [v15 shape];
  v17 = v11 - 1;
  v18 = [v16 objectAtIndexedSubscript:v11 - 1];
  v19 = [v18 unsignedIntegerValue];

  if (v13 != v19)
  {
    v78 = +[MLCLog framework];
    if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
    {
      [MLCMultiheadAttentionLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
    }

    v79 = 0;
    v34 = v154;
    v43 = v155;
    goto LABEL_56;
  }

  v20 = [(MLCMultiheadAttentionLayer *)self descriptor];
  v21 = [v20 keyDimension];
  v22 = [v8 objectAtIndexedSubscript:1];
  v23 = [v22 descriptor];
  v24 = [v23 shape];
  v25 = [v24 objectAtIndexedSubscript:v17];
  v26 = [v25 unsignedIntegerValue];

  if (v21 != v26)
  {
    v78 = +[MLCLog framework];
    v34 = v154;
    v43 = v155;
    if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
    {
      [MLCMultiheadAttentionLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
    }

    goto LABEL_55;
  }

  v27 = [(MLCMultiheadAttentionLayer *)self descriptor];
  v28 = [v27 valueDimension];
  v29 = [v8 objectAtIndexedSubscript:2];
  v30 = [v29 descriptor];
  v31 = [v30 shape];
  v32 = [v31 objectAtIndexedSubscript:v17];
  v33 = [v32 unsignedIntegerValue];

  v34 = v154;
  if (v28 != v33)
  {
    v78 = +[MLCLog framework];
    v43 = v155;
    if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
    {
      [MLCMultiheadAttentionLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
    }

    goto LABEL_55;
  }

  v35 = [v154 descriptor];
  v36 = [v35 dimensionCount];

  v37 = [(MLCMultiheadAttentionLayer *)self descriptor];
  v38 = [v37 modelDimension];
  v39 = [v154 descriptor];
  v40 = [v39 shape];
  v41 = [v40 objectAtIndexedSubscript:v36 - 1];
  v42 = [v41 unsignedIntegerValue];

  v43 = v155;
  if (v38 != v42)
  {
    v78 = +[MLCLog framework];
    if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
    {
      [MLCMultiheadAttentionLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
    }

    goto LABEL_55;
  }

  v44 = [v8 objectAtIndexedSubscript:0];
  v45 = [v44 descriptor];
  v46 = [v45 dataType];

  if (![(MLCLayer *)MLCMultiheadAttentionLayer supportsDataType:v46 onDevice:v155])
  {
    v78 = +[MLCLog framework];
    if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
    {
      v80 = NSStringFromSelector(a2);
      *buf = 138412802;
      v158 = v80;
      v159 = 1024;
      v160 = v46;
      v161 = 2112;
      v162 = v155;
      _os_log_error_impl(&dword_238C1D000, v78, OS_LOG_TYPE_ERROR, "%@: MultiheadAttention layer with data type = %d is not supported on a device = %@", buf, 0x1Cu);
    }

    goto LABEL_55;
  }

  if ([v8 count] == 5)
  {
    v47 = [v8 objectAtIndexedSubscript:3];
    v48 = [v47 descriptor];
    v49 = [v48 dimensionCount];

    if (v49 == 2)
    {
      v50 = [v8 objectAtIndexedSubscript:1];
      v51 = [v50 descriptor];
      v52 = [v51 shape];
      v147 = [v8 objectAtIndexedSubscript:1];
      v143 = [v147 descriptor];
      v150 = v52;
      v53 = [v52 objectAtIndexedSubscript:{objc_msgSend(v143, "dimensionCount") - 2}];
      v54 = [v53 unsignedIntegerValue];
      v55 = [v8 objectAtIndexedSubscript:3];
      v56 = [v55 descriptor];
      v57 = [v56 shape];
      v58 = [v57 objectAtIndexedSubscript:1];
      if (v54 == [v58 unsignedIntegerValue])
      {
        v59 = [v8 objectAtIndexedSubscript:3];
        [v59 descriptor];
        v60 = v139 = v50;
        v135 = [v60 dataType];

        v34 = v154;
        v43 = v155;
        if (v135 == 4)
        {
          v61 = [(MLCMultiheadAttentionLayer *)self descriptor];
          [v61 setHasKeyPaddingMask:1];

          v62 = [v8 objectAtIndexedSubscript:4];
          v63 = [v62 descriptor];
          v64 = [v63 dimensionCount];

          if (v64 != 3)
          {
            goto LABEL_53;
          }

          v65 = [v8 objectAtIndexedSubscript:1];
          v66 = [v65 descriptor];
          v67 = [v66 shape];
          v68 = [v8 objectAtIndexedSubscript:1];
          v151 = [v68 descriptor];
          v148 = [v67 objectAtIndexedSubscript:{objc_msgSend(v151, "dimensionCount") - 2}];
          v69 = [v148 unsignedIntegerValue];
          v144 = [v8 objectAtIndexedSubscript:4];
          v70 = [v144 descriptor];
          v71 = [v70 shape];
          v72 = [v71 objectAtIndexedSubscript:2];
          if (v69 != [v72 unsignedIntegerValue])
          {

            v34 = v154;
            v43 = v155;
            goto LABEL_53;
          }

          v136 = [v8 objectAtIndexedSubscript:0];
          v129 = [v136 descriptor];
          v119 = [v129 shape];
          v123 = [v8 objectAtIndexedSubscript:0];
          v117 = [v123 descriptor];
          [v119 objectAtIndexedSubscript:{objc_msgSend(v117, "dimensionCount") - 2}];
          v73 = v133 = v68;
          v140 = [v73 unsignedIntegerValue];
          v74 = [v8 objectAtIndexedSubscript:4];
          [v74 descriptor];
          v75 = v131 = v65;
          [v75 shape];
          v76 = v127 = v66;
          [v76 objectAtIndexedSubscript:1];
          v77 = v121 = v67;
          v125 = [v77 unsignedIntegerValue];

          v34 = v154;
          v43 = v155;
          if (v140 != v125)
          {
LABEL_53:
            v78 = +[MLCLog framework];
            if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
            {
              [MLCMultiheadAttentionLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
            }

LABEL_55:
            v79 = 0;
            goto LABEL_56;
          }

          goto LABEL_36;
        }
      }

      else
      {

        v34 = v154;
        v43 = v155;
      }
    }

    v78 = +[MLCLog framework];
    if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
    {
      [MLCMultiheadAttentionLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
    }

    goto LABEL_55;
  }

  if ([v8 count] == 4)
  {
    v81 = [v8 objectAtIndexedSubscript:3];
    v82 = [v81 descriptor];
    v83 = [v82 dimensionCount];

    if (v83 == 3)
    {
      v152 = [v8 objectAtIndexedSubscript:1];
      v84 = [v152 descriptor];
      v96 = [v84 shape];
      v97 = [v8 objectAtIndexedSubscript:1];
      v142 = [v97 descriptor];
      v149 = v96;
      v98 = [v96 objectAtIndexedSubscript:{objc_msgSend(v142, "dimensionCount") - 2}];
      v99 = [v98 unsignedIntegerValue];
      v100 = [v8 objectAtIndexedSubscript:3];
      v90 = [v100 descriptor];
      v91 = [v90 shape];
      v92 = [v91 objectAtIndexedSubscript:2];
      if (v99 == [v92 unsignedIntegerValue])
      {
        v132 = [v8 objectAtIndexedSubscript:0];
        v130 = [v132 descriptor];
        v124 = [v130 shape];
        v126 = [v8 objectAtIndexedSubscript:0];
        v122 = [v126 descriptor];
        v118 = [v124 objectAtIndexedSubscript:{objc_msgSend(v122, "dimensionCount") - 2}];
        v134 = [v118 unsignedIntegerValue];
        v101 = [v8 objectAtIndexedSubscript:3];
        [v101 descriptor];
        v102 = v138 = v84;
        [v102 shape];
        v103 = v120 = v90;
        [v103 objectAtIndexedSubscript:1];
        v104 = v146 = v97;
        v128 = [v104 unsignedIntegerValue];

        v34 = v154;
        v43 = v155;
        if (v134 == v128)
        {
LABEL_36:
          v95 = [(MLCMultiheadAttentionLayer *)self descriptor];
          [v95 setHasAttentionMask:1];
          goto LABEL_37;
        }

LABEL_50:
        v78 = +[MLCLog framework];
        if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
        {
          [MLCMultiheadAttentionLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
        }

        goto LABEL_55;
      }

      v114 = v100;
      v87 = v98;
      v86 = v142;
    }

    else
    {
      if (v83 != 2)
      {
        goto LABEL_50;
      }

      v152 = [v8 objectAtIndexedSubscript:1];
      v84 = [v152 descriptor];
      v85 = [v84 shape];
      v145 = [v8 objectAtIndexedSubscript:1];
      v86 = [v145 descriptor];
      v149 = v85;
      v87 = [v85 objectAtIndexedSubscript:{objc_msgSend(v86, "dimensionCount") - 2}];
      v88 = [v87 unsignedIntegerValue];
      v89 = [v8 objectAtIndexedSubscript:3];
      v90 = [v89 descriptor];
      v91 = [v90 shape];
      v92 = [v91 objectAtIndexedSubscript:1];
      if (v88 == [v92 unsignedIntegerValue])
      {
        v93 = [v8 objectAtIndexedSubscript:3];
        [v93 descriptor];
        v94 = v137 = v84;
        v141 = [v94 dataType];

        v34 = v154;
        v43 = v155;
        if (v141 == 4)
        {
          v95 = [(MLCMultiheadAttentionLayer *)self descriptor];
          [v95 setHasKeyPaddingMask:1];
LABEL_37:

          goto LABEL_38;
        }

        goto LABEL_50;
      }

      v114 = v89;
      v97 = v145;
    }

    v34 = v154;
    v43 = v155;
    goto LABEL_50;
  }

LABEL_38:
  if ([v8 count] >= 4)
  {
    v105 = 3;
    do
    {
      v106 = [v8 objectAtIndexedSubscript:v105];
      [v106 setComputeFlags:{objc_msgSend(v106, "computeFlags") | 8}];

      ++v105;
    }

    while (v105 < [v8 count]);
  }

  v107 = [v43 computeEngine];
  v108 = [(MLCMultiheadAttentionLayer *)self descriptor];
  v109 = [(MLCMultiheadAttentionLayer *)self weights];
  v110 = [(MLCMultiheadAttentionLayer *)self biases];
  v111 = [(MLCMultiheadAttentionLayer *)self attentionBiases];
  v78 = [v107 multiheadAttentionLayerWithDescriptor:v108 weights:v109 bias:v110 attnBias:v111 inferenceOnly:{-[MLCLayer compileForInferenceOnly](self, "compileForInferenceOnly")}];

  if (!v78 || ![v78 count])
  {
    v113 = +[MLCLog framework];
    if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
    {
      [MLCScatterLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
    }

    goto LABEL_55;
  }

  v112 = [v43 computeEngine];
  v79 = [v112 compileLayerDeviceOps:v78 sourceTensors:v8 resultTensor:v34];

  v156.receiver = self;
  v156.super_class = MLCMultiheadAttentionLayer;
  [(MLCLayer *)&v156 bindDevice:v43 deviceOps:v78];
LABEL_56:

  v115 = *MEMORY[0x277D85DE8];
  return v79;
}

- (BOOL)allocateDataForOptimizer:(id)a3
{
  v4 = a3;
  v5 = [(MLCMultiheadAttentionLayer *)self biases];
  v6 = [v5 mutableCopy];

  v7 = [(MLCMultiheadAttentionLayer *)self descriptor];
  v8 = [v7 hasAttentionBiases];

  if (v8)
  {
    if (!v6)
    {
      v6 = [MEMORY[0x277CBEBF8] mutableCopy];
    }

    v9 = [(MLCMultiheadAttentionLayer *)self attentionBiases];
    [v6 addObjectsFromArray:v9];
  }

  v10 = [(MLCMultiheadAttentionLayer *)self weights];
  v11 = [v10 count];

  if (v11)
  {
    v12 = 0;
    do
    {
      v13 = [(MLCMultiheadAttentionLayer *)self weightsParameters];
      v14 = [v13 objectAtIndexedSubscript:v12];
      v15 = [(MLCLayer *)self device];
      [v14 allocateDataForOptimizer:v4 device:v15 isVector:0];

      ++v12;
      v16 = [(MLCMultiheadAttentionLayer *)self weights];
      v17 = [v16 count];
    }

    while (v12 < v17);
  }

  v18 = [(MLCMultiheadAttentionLayer *)self descriptor];
  if ([v18 hasBiases])
  {

    goto LABEL_11;
  }

  v19 = [(MLCMultiheadAttentionLayer *)self descriptor];
  v20 = [v19 hasAttentionBiases];

  if (v20)
  {
LABEL_11:
    for (i = 0; ; ++i)
    {
      v22 = [(MLCMultiheadAttentionLayer *)self biases];
      v23 = [v22 count];
      v24 = [(MLCMultiheadAttentionLayer *)self attentionBiases];
      v25 = [v24 count] + v23;

      if (i >= v25)
      {
        break;
      }

      v26 = [(MLCMultiheadAttentionLayer *)self biasesParameters];
      v27 = [v26 objectAtIndexedSubscript:i];
      v28 = [(MLCLayer *)self device];
      [v27 allocateDataForOptimizer:v4 device:v28 isVector:0];
    }
  }

  v29 = [(MLCLayer *)self device];
  v30 = [v29 computeEngine];
  v31 = [(MLCLayer *)self deviceOps];
  v32 = [(MLCMultiheadAttentionLayer *)self weights];
  if ([v6 count])
  {
    v33 = v6;
  }

  else
  {
    v33 = 0;
  }

  [v30 setMHALayerOptimizerDataForDeviceOps:v31 optimizerDataForWeights:v32 optimizerDataForBias:v33];

  return 1;
}

- (unint64_t)allocatedDataSizeForTraining:(BOOL)a3 optimizer:(id)a4
{
  v4 = a3;
  v34 = a4;
  v6 = [(MLCMultiheadAttentionLayer *)self weights];
  v7 = [v6 count];

  v8 = 0;
  if (v7)
  {
    v9 = 0;
    do
    {
      v10 = [(MLCMultiheadAttentionLayer *)self weights];
      v11 = [v10 objectAtIndexedSubscript:v9];
      v12 = [v11 descriptor];
      v8 += [v12 tensorAllocationSizeInBytes];

      if (v4)
      {
        v13 = [(MLCMultiheadAttentionLayer *)self weights];
        v14 = [v13 objectAtIndexedSubscript:v9];
        v15 = [v14 descriptor];
        v16 = [v15 tensorAllocationSizeInBytes];
        v8 += [v34 numOptimizerDataBuffers] * v16;
      }

      ++v9;
      v17 = [(MLCMultiheadAttentionLayer *)self weights];
      v18 = [v17 count];
    }

    while (v9 < v18);
  }

  v19 = [(MLCMultiheadAttentionLayer *)self descriptor];
  if ([v19 hasBiases])
  {
  }

  else
  {
    v20 = [(MLCMultiheadAttentionLayer *)self descriptor];
    v21 = [v20 hasAttentionBiases];

    if (!v21)
    {
      v22 = 0;
      goto LABEL_15;
    }
  }

  v22 = 0;
  for (i = 0; ; ++i)
  {
    v24 = [(MLCMultiheadAttentionLayer *)self biases];
    v25 = [v24 count];
    v26 = [(MLCMultiheadAttentionLayer *)self attentionBiases];
    v27 = [v26 count] + v25;

    if (i >= v27)
    {
      break;
    }

    v28 = [(MLCMultiheadAttentionLayer *)self biasesParameters];
    v29 = [v28 objectAtIndexedSubscript:i];
    v30 = [v29 tensor];
    v31 = [v30 descriptor];
    v32 = [v31 tensorAllocationSizeInBytes];

    v22 += v32;
    if (v4)
    {
      v22 += [v34 numOptimizerDataBuffers] * v32;
    }
  }

LABEL_15:

  return v22 + v8;
}

- (id)resultTensorFromSources:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEBF8] mutableCopy];
  for (i = 0; ; ++i)
  {
    v7 = [v4 objectAtIndexedSubscript:0];
    v8 = [v7 descriptor];
    v9 = [v8 shape];
    v10 = [v9 count];

    if (i >= v10)
    {
      break;
    }

    v11 = [v4 objectAtIndexedSubscript:0];
    v12 = [v11 descriptor];
    v13 = [v12 shape];
    v14 = [v13 objectAtIndexedSubscript:i];
    v15 = -[MLCLayer resultSizeFromSourceSize:dimension:](self, "resultSizeFromSourceSize:dimension:", [v14 unsignedIntegerValue], i);

    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v15];
    [v5 setObject:v16 atIndexedSubscript:i];
  }

  v17 = [v5 copy];
  v18 = [v4 objectAtIndexedSubscript:0];
  v19 = [v18 descriptor];
  v20 = +[MLCTensorDescriptor descriptorWithShape:dataType:](MLCTensorDescriptor, "descriptorWithShape:dataType:", v17, [v19 dataType]);

  v21 = [MLCTensor tensorWithDescriptor:v20];

  return v21;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MLCMultiheadAttentionLayer *)self descriptor];
  v7 = [(MLCMultiheadAttentionLayer *)self weights];
  v8 = [(MLCMultiheadAttentionLayer *)self biases];
  v9 = [(MLCMultiheadAttentionLayer *)self attentionBiases];
  v10 = [(MLCLayer *)self resultTensors];
  v11 = [v3 stringWithFormat:@"%@: { descriptor=%@ : weights=%@ : biases=%@ : attentioBias=%@ : resultTensor=%@ }", v5, v6, v7, v8, v9, v10];

  return v11;
}

- (id)summarizedDOTDescription
{
  v23 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v21 = NSStringFromClass(v3);
  v20 = [(MLCLayer *)self layerID];
  v24 = [(MLCMultiheadAttentionLayer *)self descriptor];
  v19 = [v24 modelDimension];
  v22 = [(MLCMultiheadAttentionLayer *)self descriptor];
  v18 = [v22 keyDimension];
  v4 = [(MLCMultiheadAttentionLayer *)self descriptor];
  v5 = [v4 valueDimension];
  v6 = [(MLCMultiheadAttentionLayer *)self descriptor];
  v7 = [v6 headCount];
  v8 = [(MLCMultiheadAttentionLayer *)self descriptor];
  [v8 dropout];
  v10 = v9;
  v11 = [(MLCMultiheadAttentionLayer *)self descriptor];
  v12 = [v11 hasBiases];
  v13 = [(MLCMultiheadAttentionLayer *)self descriptor];
  v14 = [v13 hasAttentionBiases];
  v15 = [(MLCMultiheadAttentionLayer *)self descriptor];
  v16 = [v23 stringWithFormat:@"<%@ (%lu)<BR /><FONT POINT-SIZE=10>Model Dimension: %lu    Key Dimension: %lu    Value Dimension: %lu<BR />Head Count: %lu          Dropout: %.03f           Has Biases: %hhd<BR />Has Attention Biases: %hhd    Adds Zero Attention: %hhd</FONT>>", v21, v20, v19, v18, v5, v7, *&v10, v12, v14, objc_msgSend(v15, "addsZeroAttention")];

  return v16;
}

- (BOOL)isSupportedShapeForTensorSources:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    for (i = 0; i < [v3 count]; ++i)
    {
      v5 = [v3 objectAtIndexedSubscript:i];
      v6 = [v5 descriptor];
      v7 = [v6 shape];
      v8 = [v7 count];

      if (i > 2)
      {
        if (v8 < 2)
        {
LABEL_9:
          v9 = 0;
          goto LABEL_10;
        }
      }

      else if (v8 < 3)
      {
        goto LABEL_9;
      }
    }
  }

  v9 = 1;
LABEL_10:

  return v9;
}

- (void)linkAssociatedTensors
{
  v3 = [(MLCMultiheadAttentionLayer *)self weights];
  v4 = [v3 count];

  if (v4)
  {
    v5 = 0;
    do
    {
      v6 = [(MLCMultiheadAttentionLayer *)self weights];
      v7 = [v6 objectAtIndexedSubscript:v5];
      v8 = [v7 childLayers];
      [v8 addObject:self];

      ++v5;
      v9 = [(MLCMultiheadAttentionLayer *)self weights];
      v10 = [v9 count];
    }

    while (v5 < v10);
  }

  v11 = [(MLCMultiheadAttentionLayer *)self descriptor];
  v12 = [v11 hasBiases];

  if (v12)
  {
    v13 = [(MLCMultiheadAttentionLayer *)self biases];
    v14 = [v13 count];

    if (v14)
    {
      v15 = 0;
      do
      {
        v16 = [(MLCMultiheadAttentionLayer *)self biases];
        v17 = [v16 objectAtIndexedSubscript:v15];
        v18 = [v17 childLayers];
        [v18 addObject:self];

        ++v15;
        v19 = [(MLCMultiheadAttentionLayer *)self biases];
        v20 = [v19 count];
      }

      while (v15 < v20);
    }
  }

  v21 = [(MLCMultiheadAttentionLayer *)self descriptor];
  v22 = [v21 hasAttentionBiases];

  if (v22)
  {
    v23 = [(MLCMultiheadAttentionLayer *)self attentionBiases];
    v24 = [v23 count];

    if (v24)
    {
      v25 = 0;
      do
      {
        v26 = [(MLCMultiheadAttentionLayer *)self attentionBiases];
        v27 = [v26 objectAtIndexedSubscript:v25];
        v28 = [v27 childLayers];
        [v28 addObject:self];

        ++v25;
        v29 = [(MLCMultiheadAttentionLayer *)self attentionBiases];
        v30 = [v29 count];
      }

      while (v25 < v30);
    }
  }
}

- (void)unlinkAssociatedTensors
{
  v3 = [(MLCMultiheadAttentionLayer *)self weights];
  v4 = [v3 count];

  if (v4)
  {
    v5 = 0;
    do
    {
      v6 = [(MLCMultiheadAttentionLayer *)self weights];
      v7 = [v6 objectAtIndexedSubscript:v5];
      v8 = [v7 childLayers];
      [v8 removeObject:self];

      ++v5;
      v9 = [(MLCMultiheadAttentionLayer *)self weights];
      v10 = [v9 count];
    }

    while (v5 < v10);
  }

  v11 = [(MLCMultiheadAttentionLayer *)self descriptor];
  v12 = [v11 hasBiases];

  if (v12)
  {
    v13 = [(MLCMultiheadAttentionLayer *)self biases];
    v14 = [v13 count];

    if (v14)
    {
      v15 = 0;
      do
      {
        v16 = [(MLCMultiheadAttentionLayer *)self biases];
        v17 = [v16 objectAtIndexedSubscript:v15];
        v18 = [v17 childLayers];
        [v18 removeObject:self];

        ++v15;
        v19 = [(MLCMultiheadAttentionLayer *)self biases];
        v20 = [v19 count];
      }

      while (v15 < v20);
    }
  }

  v21 = [(MLCMultiheadAttentionLayer *)self descriptor];
  v22 = [v21 hasAttentionBiases];

  if (v22)
  {
    v23 = [(MLCMultiheadAttentionLayer *)self attentionBiases];
    v24 = [v23 count];

    if (v24)
    {
      v25 = 0;
      do
      {
        v26 = [(MLCMultiheadAttentionLayer *)self attentionBiases];
        v27 = [v26 objectAtIndexedSubscript:v25];
        v28 = [v27 childLayers];
        [v28 removeObject:self];

        ++v25;
        v29 = [(MLCMultiheadAttentionLayer *)self attentionBiases];
        v30 = [v29 count];
      }

      while (v25 < v30);
    }
  }
}

- (void)allocateGradientsForParameters
{
  v3 = [(MLCMultiheadAttentionLayer *)self weights];
  v13 = [v3 mutableCopy];

  v4 = [(MLCMultiheadAttentionLayer *)self descriptor];
  v5 = [v4 hasBiases];

  if (v5)
  {
    v6 = [(MLCMultiheadAttentionLayer *)self biases];
    [v13 addObjectsFromArray:v6];
  }

  v7 = [(MLCMultiheadAttentionLayer *)self descriptor];
  v8 = [v7 hasAttentionBiases];

  if (v8)
  {
    v9 = [(MLCMultiheadAttentionLayer *)self attentionBiases];
    [v13 addObjectsFromArray:v9];
  }

  v10 = [(MLCLayer *)self device];
  v11 = [v10 computeEngine];
  v12 = [(MLCLayer *)self deviceOps];
  [v11 allocateParameterGradientsForDeviceOps:v12 parameters:v13];
}

- (unint64_t)parametersCount
{
  v3 = [(MLCMultiheadAttentionLayer *)self weightsParameters];
  v4 = [v3 count];

  v5 = [(MLCMultiheadAttentionLayer *)self biasesParameters];

  if (v5)
  {
    v6 = [(MLCMultiheadAttentionLayer *)self biasesParameters];
    v4 += [v6 count];
  }

  return v4;
}

- (void)initWithDescriptor:(const char *)a1 weights:bias:attentionBias:.cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithDescriptor:(const char *)a1 weights:bias:attentionBias:.cold.2(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithDescriptor:(const char *)a1 weights:bias:attentionBias:.cold.3(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithDescriptor:(const char *)a1 weights:bias:attentionBias:.cold.4(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithDescriptor:(const char *)a1 weights:bias:attentionBias:.cold.5(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithDescriptor:(const char *)a1 weights:bias:attentionBias:.cold.6(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithDescriptor:(const char *)a1 weights:bias:attentionBias:.cold.7(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithDescriptor:(const char *)a1 weights:bias:attentionBias:.cold.8(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithDescriptor:(const char *)a1 weights:bias:attentionBias:.cold.9(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithDescriptor:(const char *)a1 weights:bias:attentionBias:.cold.10(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithDescriptor:(const char *)a1 weights:bias:attentionBias:.cold.11(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithDescriptor:(const char *)a1 weights:bias:attentionBias:.cold.12(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithDescriptor:(const char *)a1 weights:bias:attentionBias:.cold.13(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithDescriptor:(const char *)a1 weights:bias:attentionBias:.cold.14(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithDescriptor:(const char *)a1 weights:bias:attentionBias:.cold.15(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithDescriptor:(const char *)a1 weights:bias:attentionBias:.cold.16(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithDescriptor:(const char *)a1 weights:bias:attentionBias:.cold.17(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)compileForDevice:(const char *)a1 sourceTensors:resultTensor:.cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)compileForDevice:(const char *)a1 sourceTensors:resultTensor:.cold.2(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)compileForDevice:(const char *)a1 sourceTensors:resultTensor:.cold.3(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)compileForDevice:(const char *)a1 sourceTensors:resultTensor:.cold.4(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)compileForDevice:(const char *)a1 sourceTensors:resultTensor:.cold.5(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)compileForDevice:(const char *)a1 sourceTensors:resultTensor:.cold.6(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)compileForDevice:(const char *)a1 sourceTensors:resultTensor:.cold.7(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

@end