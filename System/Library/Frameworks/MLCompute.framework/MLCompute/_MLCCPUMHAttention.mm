@interface _MLCCPUMHAttention
+ (BOOL)compileWithDevice:(id)device deviceOps:(id)ops sourceTensors:(id)tensors resultTensor:(id)tensor;
+ (BOOL)setOptimizerDataForDevice:(id)device deviceOps:(id)ops dataForWeights:(id)weights dataForBias:(id)bias;
- (_MLCCPUMHAttention)initWithDevice:(id)device descriptor:(id)descriptor weights:(id)weights bias:(id)bias attnBias:(id)attnBias inferenceOnly:(BOOL)only;
@end

@implementation _MLCCPUMHAttention

- (_MLCCPUMHAttention)initWithDevice:(id)device descriptor:(id)descriptor weights:(id)weights bias:(id)bias attnBias:(id)attnBias inferenceOnly:(BOOL)only
{
  onlyCopy = only;
  v193[3] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  descriptorCopy = descriptor;
  weightsCopy = weights;
  biasCopy = bias;
  attnBiasCopy = attnBias;
  v182 = [MEMORY[0x277CBEBF8] mutableCopy];
  bzero(v187, 0x9B0uLL);
  v181 = [MEMORY[0x277CBEA90] dataWithBytes:v187 length:2480];
  bytes = [v181 bytes];
  modelDimension = [descriptorCopy modelDimension];
  keyDimension = [descriptorCopy keyDimension];
  valueDimension = [descriptorCopy valueDimension];
  v184 = descriptorCopy;
  headCount = [descriptorCopy headCount];
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:modelDimension];
  v193[0] = v17;
  v172 = modelDimension / headCount;
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v193[1] = v18;
  v173 = headCount;
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:headCount];
  v193[2] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v193 count:3];

  v21 = [weightsCopy objectAtIndexedSubscript:0];
  descriptor = [v21 descriptor];
  v23 = +[MLCTensor tensorWithShape:dataType:](MLCTensor, "tensorWithShape:dataType:", v20, [descriptor dataType]);

  descriptor2 = [v23 descriptor];
  shape = [descriptor2 shape];
  v176 = v23;
  descriptor3 = [v23 descriptor];
  stride = [descriptor3 stride];
  v28 = [weightsCopy objectAtIndexedSubscript:0];
  data = [v28 data];
  v185 = weightsCopy;
  v30 = [weightsCopy objectAtIndexedSubscript:0];
  descriptor4 = [v30 descriptor];
  v175 = bytes;
  LODWORD(bytes) = CPU_BuildBNNSNDArrayDescriptorColMajor(bytes + 176, shape, stride, data, [descriptor4 dataType], 3);

  if (bytes)
  {
    v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:keyDimension];
    v192[0] = v32;
    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v172];
    v192[1] = v33;
    v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v173];
    v192[2] = v34;
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v192 count:3];

    v36 = [v185 objectAtIndexedSubscript:1];
    descriptor5 = [v36 descriptor];
    v38 = +[MLCTensor tensorWithShape:dataType:](MLCTensor, "tensorWithShape:dataType:", v35, [descriptor5 dataType]);

    descriptor6 = [v38 descriptor];
    shape2 = [descriptor6 shape];
    v171 = v38;
    descriptor7 = [v38 descriptor];
    stride2 = [descriptor7 stride];
    v43 = [v185 objectAtIndexedSubscript:1];
    data2 = [v43 data];
    v45 = [v185 objectAtIndexedSubscript:1];
    descriptor8 = [v45 descriptor];
    v47 = CPU_BuildBNNSNDArrayDescriptorColMajor(v175 + 704, shape2, stride2, data2, [descriptor8 dataType], 3);

    if (!v47)
    {
      v142 = 0;
      selfCopy5 = self;
      v141 = deviceCopy;
      v73 = v184;
      v144 = attnBiasCopy;
LABEL_32:

      v20 = v35;
      goto LABEL_33;
    }

    v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:valueDimension];
    v191[0] = v48;
    v49 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v172];
    v191[1] = v49;
    v50 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v173];
    v191[2] = v50;
    v51 = [MEMORY[0x277CBEA60] arrayWithObjects:v191 count:3];

    v52 = [v185 objectAtIndexedSubscript:2];
    descriptor9 = [v52 descriptor];
    v165 = v51;
    v54 = +[MLCTensor tensorWithShape:dataType:](MLCTensor, "tensorWithShape:dataType:", v51, [descriptor9 dataType]);

    descriptor10 = [v54 descriptor];
    shape3 = [descriptor10 shape];
    v169 = v54;
    descriptor11 = [v54 descriptor];
    stride3 = [descriptor11 stride];
    v58 = [v185 objectAtIndexedSubscript:2];
    data3 = [v58 data];
    v60 = [v185 objectAtIndexedSubscript:2];
    descriptor12 = [v60 descriptor];
    v62 = CPU_BuildBNNSNDArrayDescriptorColMajor(v175 + 1232, shape3, stride3, data3, [descriptor12 dataType], 3);

    if (!v62)
    {
      goto LABEL_17;
    }

    v163 = [v185 objectAtIndexedSubscript:3];
    descriptor13 = [v163 descriptor];
    shape4 = [descriptor13 shape];
    v65 = [v185 objectAtIndexedSubscript:3];
    descriptor14 = [v65 descriptor];
    stride4 = [descriptor14 stride];
    v68 = [v185 objectAtIndexedSubscript:3];
    data4 = [v68 data];
    v70 = [v185 objectAtIndexedSubscript:3];
    descriptor15 = [v70 descriptor];
    v72 = CPU_BuildBNNSNDArrayDescriptorColMajor(v175 + 2120, shape4, stride4, data4, [descriptor15 dataType], 2);

    if (!v72)
    {
LABEL_17:
      v142 = 0;
      selfCopy5 = self;
      v141 = deviceCopy;
      v73 = v184;
      v144 = attnBiasCopy;
      v35 = v165;
LABEL_31:

      goto LABEL_32;
    }

    v73 = v184;
    v74 = v165;
    if ([v184 hasBiases])
    {
      v75 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v172];
      v190[0] = v75;
      v76 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v173];
      v190[1] = v76;
      v77 = [MEMORY[0x277CBEA60] arrayWithObjects:v190 count:2];

      v78 = [biasCopy objectAtIndexedSubscript:0];
      descriptor16 = [v78 descriptor];
      v166 = v77;
      v80 = +[MLCTensor tensorWithShape:dataType:](MLCTensor, "tensorWithShape:dataType:", v77, [descriptor16 dataType]);

      descriptor17 = [v80 descriptor];
      shape5 = [descriptor17 shape];
      v164 = v80;
      descriptor18 = [v80 descriptor];
      stride5 = [descriptor18 stride];
      v85 = [biasCopy objectAtIndexedSubscript:0];
      data5 = [v85 data];
      v87 = [biasCopy objectAtIndexedSubscript:0];
      descriptor19 = [v87 descriptor];
      v89 = CPU_BuildBNNSNDArrayDescriptorColMajor(v175 + 352, shape5, stride5, data5, [descriptor19 dataType], 2);

      if (!v89)
      {
        goto LABEL_18;
      }

      descriptor20 = [v164 descriptor];
      shape6 = [descriptor20 shape];
      descriptor21 = [v164 descriptor];
      stride6 = [descriptor21 stride];
      v94 = [biasCopy objectAtIndexedSubscript:1];
      data6 = [v94 data];
      v96 = [biasCopy objectAtIndexedSubscript:1];
      descriptor22 = [v96 descriptor];
      v98 = CPU_BuildBNNSNDArrayDescriptorColMajor(v175 + 880, shape6, stride6, data6, [descriptor22 dataType], 2);

      if (!v98)
      {
        goto LABEL_18;
      }

      descriptor23 = [v164 descriptor];
      shape7 = [descriptor23 shape];
      descriptor24 = [v164 descriptor];
      stride7 = [descriptor24 stride];
      v103 = [biasCopy objectAtIndexedSubscript:2];
      data7 = [v103 data];
      v105 = [biasCopy objectAtIndexedSubscript:2];
      descriptor25 = [v105 descriptor];
      v107 = CPU_BuildBNNSNDArrayDescriptorColMajor(v175 + 1408, shape7, stride7, data7, [descriptor25 dataType], 2);

      if (!v107)
      {
        goto LABEL_18;
      }

      v161 = [biasCopy objectAtIndexedSubscript:3];
      descriptor26 = [v161 descriptor];
      shape8 = [descriptor26 shape];
      v110 = [biasCopy objectAtIndexedSubscript:3];
      descriptor27 = [v110 descriptor];
      stride8 = [descriptor27 stride];
      v113 = [biasCopy objectAtIndexedSubscript:3];
      data8 = [v113 data];
      v115 = [biasCopy objectAtIndexedSubscript:3];
      descriptor28 = [v115 descriptor];
      v117 = CPU_BuildBNNSNDArrayDescriptorColMajor(v175 + 2296, shape8, stride8, data8, [descriptor28 dataType], 1);

      if (!v117)
      {
        goto LABEL_34;
      }

      v74 = v166;
      v73 = v184;
    }

    if (![v73 hasAttentionBiases])
    {
      v166 = v74;
      v141 = deviceCopy;
      goto LABEL_20;
    }

    v118 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v172];
    v189[0] = v118;
    v119 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v173];
    v189[1] = v119;
    v120 = [MEMORY[0x277CBEA60] arrayWithObjects:v189 count:2];

    v121 = [attnBiasCopy objectAtIndexedSubscript:0];
    descriptor29 = [v121 descriptor];
    v166 = v120;
    v123 = +[MLCTensor tensorWithShape:dataType:](MLCTensor, "tensorWithShape:dataType:", v120, [descriptor29 dataType]);

    descriptor30 = [v123 descriptor];
    shape9 = [descriptor30 shape];
    v164 = v123;
    descriptor31 = [v123 descriptor];
    stride9 = [descriptor31 stride];
    v128 = [attnBiasCopy objectAtIndexedSubscript:0];
    data9 = [v128 data];
    v130 = [attnBiasCopy objectAtIndexedSubscript:0];
    descriptor32 = [v130 descriptor];
    v132 = CPU_BuildBNNSNDArrayDescriptorColMajor(v175 + 1592, shape9, stride9, data9, [descriptor32 dataType], 2);

    if (v132)
    {
      descriptor33 = [v164 descriptor];
      shape10 = [descriptor33 shape];
      descriptor34 = [v164 descriptor];
      stride10 = [descriptor34 stride];
      v136 = [attnBiasCopy objectAtIndexedSubscript:1];
      data10 = [v136 data];
      v138 = [attnBiasCopy objectAtIndexedSubscript:1];
      descriptor35 = [v138 descriptor];
      v140 = CPU_BuildBNNSNDArrayDescriptorColMajor(v175 + 1768, shape10, stride10, data10, [descriptor35 dataType], 2);

      if (v140)
      {
        v141 = deviceCopy;
        v73 = v184;
LABEL_20:
        v146 = onlyCopy;
        *(v175 + 1584) = [v73 addsZeroAttention];
        [v73 dropout];
        *(v175 + 2472) = v147;
        v148 = MEMORY[0x277CBEBF8];
        v145 = [MEMORY[0x277CBEBF8] mutableCopy];
        v149 = [v148 mutableCopy];
        v179 = [v148 mutableCopy];
        v150 = [v148 mutableCopy];
        v151 = [v148 mutableCopy];
        if (!onlyCopy)
        {
          v152 = 0;
          v188[0] = v175;
          v188[1] = v175 + 528;
          v188[2] = v175 + 1056;
          v188[3] = v175 + 1944;
          do
          {
            v153 = [MEMORY[0x277CBEA90] dataWithBytes:v188[v152] length:528];
            [v145 addObject:v153];

            ++v152;
          }

          while (v152 != 4);
          v154 = [v145 objectAtIndexedSubscript:3];
          [v149 addObject:v154];

          [v145 removeLastObject];
          v73 = v184;
          if ([v184 hasAttentionBiases])
          {
            v155 = [MEMORY[0x277CBEA90] dataWithBytes:v175 + 1592 length:176];
            [v151 addObject:v155];

            v156 = [MEMORY[0x277CBEA90] dataWithBytes:v175 + 1768 length:176];
            [v151 addObject:v156];
          }

          v146 = onlyCopy;
        }

        v157 = [MLCMHACPUDeviceOps deviceOpsWithType:44 params:v181 inDeltaData:v145 outDeltaData:v149 weightsDeltaData:0 biasDeltaData:0 weightsMomentumData:0 biasMomentumData:0];
        if (v157)
        {
          [v182 addObject:v157];
          [v157 setHasBias:{objc_msgSend(v73, "hasBiases")}];
          [v157 setHasAttnBias:{objc_msgSend(v73, "hasAttentionBiases")}];
          [v157 setHasKeyMask:{objc_msgSend(v73, "hasKeyPaddingMask")}];
          [v157 setHasAttnMask:{objc_msgSend(v73, "hasAttentionMask")}];
          [v157 setInferenceOnly:v146];
          [v157 setAttnBiasDeltaData:v151];
          [v157 setWeightsDeltaDataBytesArray:v179];
          [v157 setBiasDeltaDataBytesArray:v150];
        }

        v158 = [v182 copy];
        v186.receiver = self;
        v186.super_class = _MLCCPUMHAttention;
        selfCopy5 = [(_MLCCPULayer *)&v186 initWithDevice:v141 deviceOps:v158];

        v142 = selfCopy5;
        goto LABEL_29;
      }

LABEL_34:
      v142 = 0;
      v35 = v166;
      selfCopy5 = self;
      v141 = deviceCopy;
      v73 = v184;
      goto LABEL_30;
    }

LABEL_18:
    v142 = 0;
    selfCopy5 = self;
    v141 = deviceCopy;
    v73 = v184;
    v145 = v164;
LABEL_29:

    v35 = v166;
LABEL_30:
    v144 = attnBiasCopy;
    goto LABEL_31;
  }

  v142 = 0;
  selfCopy5 = self;
  v141 = deviceCopy;
  v73 = v184;
  v144 = attnBiasCopy;
LABEL_33:

  v159 = *MEMORY[0x277D85DE8];
  return v142;
}

+ (BOOL)compileWithDevice:(id)device deviceOps:(id)ops sourceTensors:(id)tensors resultTensor:(id)tensor
{
  tensorsCopy = tensors;
  tensorCopy = tensor;
  v203 = [ops objectAtIndexedSubscript:0];
  params = [v203 params];
  bytes = [params bytes];
  v198 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor = [v198 descriptor];
  shape = [descriptor shape];
  v12 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor2 = [v12 descriptor];
  stride = [descriptor2 stride];
  v204 = tensorsCopy;
  v15 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor3 = [v15 descriptor];
  dataType = [descriptor3 dataType];
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
  v197 = bytes;
  LODWORD(v19) = CPU_BuildBNNSNDArrayDescriptorRowMajor(bytes, shape, stride, 0, dataType, 2, v18);

  if (!v19)
  {
    goto LABEL_28;
  }

  v20 = [v204 objectAtIndexedSubscript:1];
  descriptor4 = [v20 descriptor];
  shape2 = [descriptor4 shape];
  v23 = [v204 objectAtIndexedSubscript:1];
  descriptor5 = [v23 descriptor];
  stride2 = [descriptor5 stride];
  v26 = [v204 objectAtIndexedSubscript:1];
  descriptor6 = [v26 descriptor];
  dataType2 = [descriptor6 dataType];
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
  v30 = CPU_BuildBNNSNDArrayDescriptorRowMajor((v197 + 33), shape2, stride2, 0, dataType2, 2, v29);

  if (!v30)
  {
    goto LABEL_27;
  }

  v199 = [v204 objectAtIndexedSubscript:2];
  descriptor7 = [v199 descriptor];
  shape3 = [descriptor7 shape];
  v33 = [v204 objectAtIndexedSubscript:2];
  descriptor8 = [v33 descriptor];
  stride3 = [descriptor8 stride];
  v36 = [v204 objectAtIndexedSubscript:2];
  descriptor9 = [v36 descriptor];
  dataType3 = [descriptor9 dataType];
  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
  v40 = CPU_BuildBNNSNDArrayDescriptorRowMajor((v197 + 66), shape3, stride3, 0, dataType3, 2, v39);

  if (!v40)
  {
LABEL_27:
    LOBYTE(v19) = 0;
LABEL_28:
    v91 = v204;
    v41 = tensorCopy;
    goto LABEL_29;
  }

  v41 = tensorCopy;
  descriptor10 = [tensorCopy descriptor];
  shape4 = [descriptor10 shape];
  descriptor11 = [tensorCopy descriptor];
  stride4 = [descriptor11 stride];
  descriptor12 = [tensorCopy descriptor];
  dataType4 = [descriptor12 dataType];
  v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
  v49 = CPU_BuildBNNSNDArrayDescriptorRowMajor(v197 + 1944, shape4, stride4, 0, dataType4, 2, v48);

  v50 = 0x277CCA000;
  if (!v49)
  {
    LOBYTE(v19) = 0;
    v91 = v204;
    goto LABEL_29;
  }

  v51 = v197;
  memset(v216, 0, 32);
  LODWORD(v216[0]) = 1;
  v52 = MEMORY[0x23EE75C90](v197, v216);
  v53 = v203;
  if (v52)
  {
    v193 = [v204 objectAtIndexedSubscript:0];
    descriptor13 = [v193 descriptor];
    stride5 = [descriptor13 stride];
    v55 = [stride5 objectAtIndexedSubscript:0];
    unsignedIntegerValue = [v55 unsignedIntegerValue];
    v57 = [v204 objectAtIndexedSubscript:0];
    descriptor14 = [v57 descriptor];
    [descriptor14 stride];
    v59 = v196 = v52;
    v60 = [v204 objectAtIndexedSubscript:0];
    descriptor15 = [v60 descriptor];
    v62 = [v59 objectAtIndexedSubscript:{objc_msgSend(descriptor15, "dimensionCount") - 1}];
    [v203 setSourceStride:{unsignedIntegerValue / objc_msgSend(v62, "unsignedIntegerValue")}];

    v194 = [v204 objectAtIndexedSubscript:1];
    descriptor16 = [v194 descriptor];
    stride6 = [descriptor16 stride];
    v64 = [stride6 objectAtIndexedSubscript:0];
    unsignedIntegerValue2 = [v64 unsignedIntegerValue];
    v66 = [v204 objectAtIndexedSubscript:1];
    descriptor17 = [v66 descriptor];
    stride7 = [descriptor17 stride];
    v69 = [v204 objectAtIndexedSubscript:1];
    descriptor18 = [v69 descriptor];
    v71 = [stride7 objectAtIndexedSubscript:{objc_msgSend(descriptor18, "dimensionCount") - 1}];
    [v203 setSourceStrideSecondary:{unsignedIntegerValue2 / objc_msgSend(v71, "unsignedIntegerValue")}];

    v195 = [v204 objectAtIndexedSubscript:2];
    descriptor19 = [v195 descriptor];
    stride8 = [descriptor19 stride];
    v73 = [stride8 objectAtIndexedSubscript:0];
    unsignedIntegerValue3 = [v73 unsignedIntegerValue];
    v75 = [v204 objectAtIndexedSubscript:2];
    descriptor20 = [v75 descriptor];
    stride9 = [descriptor20 stride];
    v78 = [v204 objectAtIndexedSubscript:2];
    descriptor21 = [v78 descriptor];
    v80 = [stride9 objectAtIndexedSubscript:{objc_msgSend(descriptor21, "dimensionCount") - 1}];
    [v203 setSourceStrideTertiary:{unsignedIntegerValue3 / objc_msgSend(v80, "unsignedIntegerValue")}];

    v53 = v203;
    v41 = tensorCopy;

    descriptor22 = [tensorCopy descriptor];
    stride10 = [descriptor22 stride];
    v83 = [stride10 objectAtIndexedSubscript:0];
    unsignedIntegerValue4 = [v83 unsignedIntegerValue];
    descriptor23 = [tensorCopy descriptor];
    stride11 = [descriptor23 stride];
    descriptor24 = [tensorCopy descriptor];
    v88 = [stride11 objectAtIndexedSubscript:{objc_msgSend(descriptor24, "dimensionCount") - 1}];
    [v203 setResultStride:{unsignedIntegerValue4 / objc_msgSend(v88, "unsignedIntegerValue")}];

    v52 = v196;
    v51 = v197;

    v50 = 0x277CCA000;
  }

  objc_opt_class();
  v89 = objc_opt_new();
  [v53 setLayer:v89];

  layer = [v53 layer];
  [layer setFilter:v52];

  v91 = v204;
  v92 = v53;
  if (([v53 inferenceOnly] & 1) == 0)
  {
    inDeltaData = [v53 inDeltaData];
    v94 = [inDeltaData objectAtIndexedSubscript:0];
    bytes2 = [v94 bytes];

    v96 = *v51;
    v97 = v51[2];
    *(bytes2 + 16) = v51[1];
    *(bytes2 + 32) = v97;
    *bytes2 = v96;
    v98 = v51[3];
    v99 = v51[4];
    v100 = v51[6];
    *(bytes2 + 80) = v51[5];
    *(bytes2 + 96) = v100;
    *(bytes2 + 48) = v98;
    *(bytes2 + 64) = v99;
    v101 = v51[7];
    v102 = v51[8];
    v103 = v51[10];
    *(bytes2 + 144) = v51[9];
    *(bytes2 + 160) = v103;
    *(bytes2 + 112) = v101;
    *(bytes2 + 128) = v102;
    *(bytes2 + 88) = [v53 sourceStride];
    inDeltaData2 = [v53 inDeltaData];
    v105 = [inDeltaData2 objectAtIndexedSubscript:1];
    bytes3 = [v105 bytes];

    v107 = v51[33];
    v108 = v51[35];
    *(bytes3 + 16) = v51[34];
    *(bytes3 + 32) = v108;
    *bytes3 = v107;
    v109 = v51[36];
    v110 = v51[37];
    v111 = v51[39];
    *(bytes3 + 80) = v51[38];
    *(bytes3 + 96) = v111;
    *(bytes3 + 48) = v109;
    *(bytes3 + 64) = v110;
    v112 = v51[40];
    v113 = v51[41];
    v114 = v51[43];
    *(bytes3 + 144) = v51[42];
    *(bytes3 + 160) = v114;
    *(bytes3 + 112) = v112;
    *(bytes3 + 128) = v113;
    *(bytes3 + 88) = [v53 sourceStrideSecondary];
    inDeltaData3 = [v53 inDeltaData];
    v116 = [inDeltaData3 objectAtIndexedSubscript:2];
    bytes4 = [v116 bytes];

    v118 = v197[66];
    v119 = v197[68];
    *(bytes4 + 16) = v197[67];
    *(bytes4 + 32) = v119;
    *bytes4 = v118;
    v120 = v197[69];
    v121 = v197[70];
    v122 = v197[72];
    *(bytes4 + 80) = v197[71];
    *(bytes4 + 96) = v122;
    *(bytes4 + 48) = v120;
    *(bytes4 + 64) = v121;
    v123 = v197[73];
    v124 = v197[74];
    v125 = v197[76];
    *(bytes4 + 144) = v197[75];
    *(bytes4 + 160) = v125;
    *(bytes4 + 112) = v123;
    *(bytes4 + 128) = v124;
    *(bytes4 + 88) = [v53 sourceStrideTertiary];
    outDeltaData = [v53 outDeltaData];
    v127 = [outDeltaData objectAtIndexedSubscript:0];
    bytes5 = [v127 bytes];

    v129 = *(v197 + 1944);
    v130 = *(v197 + 1976);
    *(bytes5 + 16) = *(v197 + 1960);
    *(bytes5 + 32) = v130;
    *bytes5 = v129;
    v131 = *(v197 + 1992);
    v132 = *(v197 + 2008);
    v133 = *(v197 + 2040);
    *(bytes5 + 80) = *(v197 + 2024);
    *(bytes5 + 96) = v133;
    *(bytes5 + 48) = v131;
    *(bytes5 + 64) = v132;
    v134 = *(v197 + 2056);
    v135 = *(v197 + 2072);
    v136 = *(v197 + 2104);
    *(bytes5 + 144) = *(v197 + 2088);
    *(bytes5 + 160) = v136;
    *(bytes5 + 112) = v134;
    *(bytes5 + 128) = v135;
    *(bytes5 + 88) = [v53 resultStride];
    v50 = 0x277CCA000;
  }

  if ([v53 hasKeyMask])
  {
    v214 = 0u;
    v215 = 0u;
    v212 = 0u;
    v213 = 0u;
    v210 = 0u;
    v211 = 0u;
    v208 = 0u;
    v209 = 0u;
    v206 = 0u;
    v207 = 0u;
    v205 = 0u;
    v19 = [MEMORY[0x277CBEA90] dataWithBytes:&v205 length:176];
    bytes6 = [v19 bytes];
    v138 = [v204 objectAtIndexedSubscript:3];
    descriptor25 = [v138 descriptor];
    shape5 = [descriptor25 shape];
    v141 = [v204 objectAtIndexedSubscript:3];
    descriptor26 = [v141 descriptor];
    stride12 = [descriptor26 stride];
    LODWORD(bytes6) = CPU_BuildBNNSNDArrayDescriptorRowMajor(bytes6, shape5, stride12, 0, 4, 1, &unk_284BA59F0);

    if (bytes6)
    {
      v144 = [v204 objectAtIndexedSubscript:3];
      descriptor27 = [v144 descriptor];
      dimensionCount = [descriptor27 dimensionCount];

      v147 = [v204 objectAtIndexedSubscript:3];
      descriptor28 = [v147 descriptor];
      shape6 = [descriptor28 shape];
      v150 = [shape6 objectAtIndexedSubscript:dimensionCount - 1];
      v92 = v203;
      [v203 setKeyMaskStride:{objc_msgSend(v150, "unsignedIntegerValue")}];

      [v203 setKeyMask:v19];
      v91 = v204;
      v50 = 0x277CCA000uLL;
      goto LABEL_12;
    }

    LOBYTE(v19) = 0;
    v91 = v204;
LABEL_29:
    v92 = v203;
    goto LABEL_30;
  }

LABEL_12:
  if ([v92 hasKeyMask])
  {
    v151 = 4;
  }

  else if ([v92 hasAttnMask])
  {
    v151 = 3;
  }

  else
  {
    v151 = 4;
  }

  if ([v92 hasAttnMask])
  {
    v152 = v50;
    v214 = 0u;
    v215 = 0u;
    v212 = 0u;
    v213 = 0u;
    v210 = 0u;
    v211 = 0u;
    v208 = 0u;
    v209 = 0u;
    v206 = 0u;
    v207 = 0u;
    v205 = 0u;
    v153 = [MEMORY[0x277CBEA90] dataWithBytes:&v205 length:176];
    v154 = [v91 objectAtIndexedSubscript:v151];
    descriptor29 = [v154 descriptor];
    shape7 = [descriptor29 shape];
    v157 = [shape7 objectAtIndexedSubscript:0];
    unsignedIntegerValue5 = [v157 unsignedIntegerValue];

    v159 = v204;
    v160 = [v204 objectAtIndexedSubscript:v151];
    descriptor30 = [v160 descriptor];
    shape8 = [descriptor30 shape];
    v163 = [shape8 mutableCopy];

    if (unsignedIntegerValue5 == 1)
    {
      v164 = 2;
    }

    else
    {
      v165 = [v204 objectAtIndexedSubscript:v151];
      descriptor31 = [v165 descriptor];
      shape9 = [descriptor31 shape];
      v168 = [shape9 objectAtIndexedSubscript:0];
      unsignedIntegerValue6 = [v168 unsignedIntegerValue];

      v170 = [v204 objectAtIndexedSubscript:0];
      descriptor32 = [v170 descriptor];
      shape10 = [descriptor32 shape];
      v173 = [shape10 objectAtIndexedSubscript:0];
      unsignedIntegerValue7 = [v173 unsignedIntegerValue];

      v159 = v204;
      [v163 removeObjectAtIndex:0];
      v174 = [*(v152 + 2992) numberWithUnsignedInteger:unsignedIntegerValue6 / unsignedIntegerValue7];
      [v163 insertObject:v174 atIndex:0];

      v176 = [*(v152 + 2992) numberWithUnsignedInteger:unsignedIntegerValue7];
      [v163 insertObject:v176 atIndex:0];

      v164 = 4;
    }

    v200 = v164;
    v177 = [v159 objectAtIndexedSubscript:v151];
    descriptor33 = [v177 descriptor];
    v179 = +[MLCTensor tensorWithShape:dataType:](MLCTensor, "tensorWithShape:dataType:", v163, [descriptor33 dataType]);

    bytes7 = [v153 bytes];
    [v179 descriptor];
    v181 = v163;
    v183 = v182 = v153;
    shape11 = [v183 shape];
    descriptor34 = [v179 descriptor];
    stride13 = [descriptor34 stride];
    v187 = [v159 objectAtIndexedSubscript:v151];
    descriptor35 = [v187 descriptor];
    LODWORD(bytes7) = CPU_BuildBNNSNDArrayDescriptorRowMajor(bytes7, shape11, stride13, 0, [descriptor35 dataType], v200, 0);

    if (bytes7)
    {
      [v203 setAttnMask:v182];

      v92 = v203;
      LOBYTE(v19) = 1;
      v91 = v204;
      v41 = tensorCopy;
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  LOBYTE(v19) = 1;
LABEL_30:

  return v19;
}

+ (BOOL)setOptimizerDataForDevice:(id)device deviceOps:(id)ops dataForWeights:(id)weights dataForBias:(id)bias
{
  v74[4] = *MEMORY[0x277D85DE8];
  weightsCopy = weights;
  biasCopy = bias;
  v10 = [ops objectAtIndexedSubscript:0];
  if (([v10 inferenceOnly] & 1) == 0)
  {
    v70 = biasCopy;
    params = [v10 params];
    bytes = [params bytes];
    v12 = MEMORY[0x277CBEBF8];
    v67 = [MEMORY[0x277CBEBF8] mutableCopy];
    v66 = [v12 mutableCopy];
    v74[0] = bytes + 176;
    v74[1] = bytes + 704;
    v64 = bytes;
    v74[2] = bytes + 1232;
    v74[3] = bytes + 2120;
    v71 = v10;
    v72 = weightsCopy;
    if ([weightsCopy count])
    {
      v13 = 0;
      do
      {
        v68 = [MEMORY[0x277CBEBF8] mutableCopy];
        v14 = [weightsCopy objectAtIndexedSubscript:v13];
        optimizerData = [v14 optimizerData];
        v16 = [optimizerData count];

        if (v16)
        {
          v17 = 0;
          do
          {
            v18 = MEMORY[0x277CBEA90];
            v19 = [weightsCopy objectAtIndexedSubscript:v13];
            optimizerData2 = [v19 optimizerData];
            v21 = [optimizerData2 objectAtIndexedSubscript:v17];
            bytes2 = [v21 bytes];
            v23 = [v72 objectAtIndexedSubscript:v13];
            optimizerData3 = [v23 optimizerData];
            v25 = [optimizerData3 objectAtIndexedSubscript:v17];
            v26 = [v18 dataWithBytesNoCopy:bytes2 length:objc_msgSend(v25 freeWhenDone:{"length"), 0}];

            v10 = v71;
            weightsMomentumDataBytesArray = [v71 weightsMomentumDataBytesArray];
            v28 = [weightsMomentumDataBytesArray objectAtIndexedSubscript:v13];
            [v28 addObject:v26];

            v29 = [MEMORY[0x277CBEA90] dataWithBytes:v74[v13] length:176];
            v30 = [v72 objectAtIndexedSubscript:v13];
            optimizerData4 = [v30 optimizerData];
            v32 = [optimizerData4 objectAtIndexedSubscript:v17];
            bytes3 = [v32 bytes];
            *([v29 bytes] + 136) = bytes3;

            weightsCopy = v72;
            [v68 addObject:v29];

            ++v17;
            v34 = [v72 objectAtIndexedSubscript:v13];
            optimizerData5 = [v34 optimizerData];
            v36 = [optimizerData5 count];
          }

          while (v17 < v36);
        }

        [v67 addObject:v68];

        ++v13;
      }

      while (v13 < [weightsCopy count]);
    }

    biasCopy = v70;
    if (v70)
    {
      v73[0] = v64 + 352;
      v73[1] = v64 + 880;
      v73[2] = v64 + 1408;
      v73[3] = v64 + 2296;
      v73[4] = v64 + 1592;
      v73[5] = v64 + 1768;
      if ([v70 count])
      {
        v37 = 0;
        do
        {
          v38 = [MEMORY[0x277CBEBF8] mutableCopy];
          v39 = [biasCopy objectAtIndexedSubscript:v37];
          optimizerData6 = [v39 optimizerData];
          v41 = [optimizerData6 count];

          if (v41)
          {
            v42 = 0;
            v69 = v38;
            do
            {
              v43 = MEMORY[0x277CBEA90];
              v44 = [biasCopy objectAtIndexedSubscript:v37];
              optimizerData7 = [v44 optimizerData];
              v46 = [optimizerData7 objectAtIndexedSubscript:v42];
              bytes4 = [v46 bytes];
              v48 = [biasCopy objectAtIndexedSubscript:v37];
              optimizerData8 = [v48 optimizerData];
              v50 = [optimizerData8 objectAtIndexedSubscript:v42];
              v51 = [v43 dataWithBytesNoCopy:bytes4 length:objc_msgSend(v50 freeWhenDone:{"length"), 0}];

              v10 = v71;
              biasMomentumDataBytesArray = [v71 biasMomentumDataBytesArray];
              v53 = [biasMomentumDataBytesArray objectAtIndexedSubscript:v37];
              [v53 addObject:v51];

              v54 = [MEMORY[0x277CBEA90] dataWithBytes:v73[v37] length:176];
              v55 = [v70 objectAtIndexedSubscript:v37];
              optimizerData9 = [v55 optimizerData];
              v57 = [optimizerData9 objectAtIndexedSubscript:v42];
              bytes5 = [v57 bytes];
              *([v54 bytes] + 136) = bytes5;

              biasCopy = v70;
              v38 = v69;

              [v69 addObject:v54];
              ++v42;
              v59 = [v70 objectAtIndexedSubscript:v37];
              optimizerData10 = [v59 optimizerData];
              v61 = [optimizerData10 count];
            }

            while (v42 < v61);
          }

          [v66 addObject:v38];

          ++v37;
        }

        while (v37 < [biasCopy count]);
      }

      weightsCopy = v72;
    }

    [v10 setWeightsMomentumDeltaDataArray:v67];
    [v10 setBiasMomentumDeltaDataArray:v66];
  }

  v62 = *MEMORY[0x277D85DE8];
  return 1;
}

@end