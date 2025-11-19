@interface _MLCCPUMHAttention
+ (BOOL)compileWithDevice:(id)a3 deviceOps:(id)a4 sourceTensors:(id)a5 resultTensor:(id)a6;
+ (BOOL)setOptimizerDataForDevice:(id)a3 deviceOps:(id)a4 dataForWeights:(id)a5 dataForBias:(id)a6;
- (_MLCCPUMHAttention)initWithDevice:(id)a3 descriptor:(id)a4 weights:(id)a5 bias:(id)a6 attnBias:(id)a7 inferenceOnly:(BOOL)a8;
@end

@implementation _MLCCPUMHAttention

- (_MLCCPUMHAttention)initWithDevice:(id)a3 descriptor:(id)a4 weights:(id)a5 bias:(id)a6 attnBias:(id)a7 inferenceOnly:(BOOL)a8
{
  v167 = a8;
  v193[3] = *MEMORY[0x277D85DE8];
  v178 = a3;
  v12 = a4;
  v13 = a5;
  v183 = a6;
  v180 = a7;
  v182 = [MEMORY[0x277CBEBF8] mutableCopy];
  bzero(v187, 0x9B0uLL);
  v181 = [MEMORY[0x277CBEA90] dataWithBytes:v187 length:2480];
  v14 = [v181 bytes];
  v15 = [v12 modelDimension];
  v170 = [v12 keyDimension];
  v168 = [v12 valueDimension];
  v184 = v12;
  v16 = [v12 headCount];
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v15];
  v193[0] = v17;
  v172 = v15 / v16;
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v193[1] = v18;
  v173 = v16;
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v16];
  v193[2] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v193 count:3];

  v21 = [v13 objectAtIndexedSubscript:0];
  v22 = [v21 descriptor];
  v23 = +[MLCTensor tensorWithShape:dataType:](MLCTensor, "tensorWithShape:dataType:", v20, [v22 dataType]);

  v24 = [v23 descriptor];
  v25 = [v24 shape];
  v176 = v23;
  v26 = [v23 descriptor];
  v27 = [v26 stride];
  v28 = [v13 objectAtIndexedSubscript:0];
  v29 = [v28 data];
  v185 = v13;
  v30 = [v13 objectAtIndexedSubscript:0];
  v31 = [v30 descriptor];
  v175 = v14;
  LODWORD(v14) = CPU_BuildBNNSNDArrayDescriptorColMajor(v14 + 176, v25, v27, v29, [v31 dataType], 3);

  if (v14)
  {
    v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v170];
    v192[0] = v32;
    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v172];
    v192[1] = v33;
    v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v173];
    v192[2] = v34;
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v192 count:3];

    v36 = [v185 objectAtIndexedSubscript:1];
    v37 = [v36 descriptor];
    v38 = +[MLCTensor tensorWithShape:dataType:](MLCTensor, "tensorWithShape:dataType:", v35, [v37 dataType]);

    v39 = [v38 descriptor];
    v40 = [v39 shape];
    v171 = v38;
    v41 = [v38 descriptor];
    v42 = [v41 stride];
    v43 = [v185 objectAtIndexedSubscript:1];
    v44 = [v43 data];
    v45 = [v185 objectAtIndexedSubscript:1];
    v46 = [v45 descriptor];
    v47 = CPU_BuildBNNSNDArrayDescriptorColMajor(v175 + 704, v40, v42, v44, [v46 dataType], 3);

    if (!v47)
    {
      v142 = 0;
      v143 = self;
      v141 = v178;
      v73 = v184;
      v144 = v180;
LABEL_32:

      v20 = v35;
      goto LABEL_33;
    }

    v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v168];
    v191[0] = v48;
    v49 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v172];
    v191[1] = v49;
    v50 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v173];
    v191[2] = v50;
    v51 = [MEMORY[0x277CBEA60] arrayWithObjects:v191 count:3];

    v52 = [v185 objectAtIndexedSubscript:2];
    v53 = [v52 descriptor];
    v165 = v51;
    v54 = +[MLCTensor tensorWithShape:dataType:](MLCTensor, "tensorWithShape:dataType:", v51, [v53 dataType]);

    v162 = [v54 descriptor];
    v55 = [v162 shape];
    v169 = v54;
    v56 = [v54 descriptor];
    v57 = [v56 stride];
    v58 = [v185 objectAtIndexedSubscript:2];
    v59 = [v58 data];
    v60 = [v185 objectAtIndexedSubscript:2];
    v61 = [v60 descriptor];
    v62 = CPU_BuildBNNSNDArrayDescriptorColMajor(v175 + 1232, v55, v57, v59, [v61 dataType], 3);

    if (!v62)
    {
      goto LABEL_17;
    }

    v163 = [v185 objectAtIndexedSubscript:3];
    v63 = [v163 descriptor];
    v64 = [v63 shape];
    v65 = [v185 objectAtIndexedSubscript:3];
    v66 = [v65 descriptor];
    v67 = [v66 stride];
    v68 = [v185 objectAtIndexedSubscript:3];
    v69 = [v68 data];
    v70 = [v185 objectAtIndexedSubscript:3];
    v71 = [v70 descriptor];
    v72 = CPU_BuildBNNSNDArrayDescriptorColMajor(v175 + 2120, v64, v67, v69, [v71 dataType], 2);

    if (!v72)
    {
LABEL_17:
      v142 = 0;
      v143 = self;
      v141 = v178;
      v73 = v184;
      v144 = v180;
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

      v78 = [v183 objectAtIndexedSubscript:0];
      v79 = [v78 descriptor];
      v166 = v77;
      v80 = +[MLCTensor tensorWithShape:dataType:](MLCTensor, "tensorWithShape:dataType:", v77, [v79 dataType]);

      v81 = [v80 descriptor];
      v82 = [v81 shape];
      v164 = v80;
      v83 = [v80 descriptor];
      v84 = [v83 stride];
      v85 = [v183 objectAtIndexedSubscript:0];
      v86 = [v85 data];
      v87 = [v183 objectAtIndexedSubscript:0];
      v88 = [v87 descriptor];
      v89 = CPU_BuildBNNSNDArrayDescriptorColMajor(v175 + 352, v82, v84, v86, [v88 dataType], 2);

      if (!v89)
      {
        goto LABEL_18;
      }

      v90 = [v164 descriptor];
      v91 = [v90 shape];
      v92 = [v164 descriptor];
      v93 = [v92 stride];
      v94 = [v183 objectAtIndexedSubscript:1];
      v95 = [v94 data];
      v96 = [v183 objectAtIndexedSubscript:1];
      v97 = [v96 descriptor];
      v98 = CPU_BuildBNNSNDArrayDescriptorColMajor(v175 + 880, v91, v93, v95, [v97 dataType], 2);

      if (!v98)
      {
        goto LABEL_18;
      }

      v99 = [v164 descriptor];
      v100 = [v99 shape];
      v101 = [v164 descriptor];
      v102 = [v101 stride];
      v103 = [v183 objectAtIndexedSubscript:2];
      v104 = [v103 data];
      v105 = [v183 objectAtIndexedSubscript:2];
      v106 = [v105 descriptor];
      v107 = CPU_BuildBNNSNDArrayDescriptorColMajor(v175 + 1408, v100, v102, v104, [v106 dataType], 2);

      if (!v107)
      {
        goto LABEL_18;
      }

      v161 = [v183 objectAtIndexedSubscript:3];
      v108 = [v161 descriptor];
      v109 = [v108 shape];
      v110 = [v183 objectAtIndexedSubscript:3];
      v111 = [v110 descriptor];
      v112 = [v111 stride];
      v113 = [v183 objectAtIndexedSubscript:3];
      v114 = [v113 data];
      v115 = [v183 objectAtIndexedSubscript:3];
      v116 = [v115 descriptor];
      v117 = CPU_BuildBNNSNDArrayDescriptorColMajor(v175 + 2296, v109, v112, v114, [v116 dataType], 1);

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
      v141 = v178;
      goto LABEL_20;
    }

    v118 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v172];
    v189[0] = v118;
    v119 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v173];
    v189[1] = v119;
    v120 = [MEMORY[0x277CBEA60] arrayWithObjects:v189 count:2];

    v121 = [v180 objectAtIndexedSubscript:0];
    v122 = [v121 descriptor];
    v166 = v120;
    v123 = +[MLCTensor tensorWithShape:dataType:](MLCTensor, "tensorWithShape:dataType:", v120, [v122 dataType]);

    v124 = [v123 descriptor];
    v125 = [v124 shape];
    v164 = v123;
    v126 = [v123 descriptor];
    v127 = [v126 stride];
    v128 = [v180 objectAtIndexedSubscript:0];
    v129 = [v128 data];
    v130 = [v180 objectAtIndexedSubscript:0];
    v131 = [v130 descriptor];
    v132 = CPU_BuildBNNSNDArrayDescriptorColMajor(v175 + 1592, v125, v127, v129, [v131 dataType], 2);

    if (v132)
    {
      v174 = [v164 descriptor];
      v133 = [v174 shape];
      v134 = [v164 descriptor];
      v135 = [v134 stride];
      v136 = [v180 objectAtIndexedSubscript:1];
      v137 = [v136 data];
      v138 = [v180 objectAtIndexedSubscript:1];
      v139 = [v138 descriptor];
      v140 = CPU_BuildBNNSNDArrayDescriptorColMajor(v175 + 1768, v133, v135, v137, [v139 dataType], 2);

      if (v140)
      {
        v141 = v178;
        v73 = v184;
LABEL_20:
        v146 = v167;
        *(v175 + 1584) = [v73 addsZeroAttention];
        [v73 dropout];
        *(v175 + 2472) = v147;
        v148 = MEMORY[0x277CBEBF8];
        v145 = [MEMORY[0x277CBEBF8] mutableCopy];
        v149 = [v148 mutableCopy];
        v179 = [v148 mutableCopy];
        v150 = [v148 mutableCopy];
        v151 = [v148 mutableCopy];
        if (!v167)
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

          v146 = v167;
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
        v143 = [(_MLCCPULayer *)&v186 initWithDevice:v141 deviceOps:v158];

        v142 = v143;
        goto LABEL_29;
      }

LABEL_34:
      v142 = 0;
      v35 = v166;
      v143 = self;
      v141 = v178;
      v73 = v184;
      goto LABEL_30;
    }

LABEL_18:
    v142 = 0;
    v143 = self;
    v141 = v178;
    v73 = v184;
    v145 = v164;
LABEL_29:

    v35 = v166;
LABEL_30:
    v144 = v180;
    goto LABEL_31;
  }

  v142 = 0;
  v143 = self;
  v141 = v178;
  v73 = v184;
  v144 = v180;
LABEL_33:

  v159 = *MEMORY[0x277D85DE8];
  return v142;
}

+ (BOOL)compileWithDevice:(id)a3 deviceOps:(id)a4 sourceTensors:(id)a5 resultTensor:(id)a6
{
  v8 = a5;
  v202 = a6;
  v203 = [a4 objectAtIndexedSubscript:0];
  v201 = [v203 params];
  v9 = [v201 bytes];
  v198 = [v8 objectAtIndexedSubscript:0];
  v10 = [v198 descriptor];
  v11 = [v10 shape];
  v12 = [v8 objectAtIndexedSubscript:0];
  v13 = [v12 descriptor];
  v14 = [v13 stride];
  v204 = v8;
  v15 = [v8 objectAtIndexedSubscript:0];
  v16 = [v15 descriptor];
  v17 = [v16 dataType];
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
  v197 = v9;
  LODWORD(v19) = CPU_BuildBNNSNDArrayDescriptorRowMajor(v9, v11, v14, 0, v17, 2, v18);

  if (!v19)
  {
    goto LABEL_28;
  }

  v20 = [v204 objectAtIndexedSubscript:1];
  v21 = [v20 descriptor];
  v22 = [v21 shape];
  v23 = [v204 objectAtIndexedSubscript:1];
  v24 = [v23 descriptor];
  v25 = [v24 stride];
  v26 = [v204 objectAtIndexedSubscript:1];
  v27 = [v26 descriptor];
  v28 = [v27 dataType];
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
  v30 = CPU_BuildBNNSNDArrayDescriptorRowMajor((v197 + 33), v22, v25, 0, v28, 2, v29);

  if (!v30)
  {
    goto LABEL_27;
  }

  v199 = [v204 objectAtIndexedSubscript:2];
  v31 = [v199 descriptor];
  v32 = [v31 shape];
  v33 = [v204 objectAtIndexedSubscript:2];
  v34 = [v33 descriptor];
  v35 = [v34 stride];
  v36 = [v204 objectAtIndexedSubscript:2];
  v37 = [v36 descriptor];
  v38 = [v37 dataType];
  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
  v40 = CPU_BuildBNNSNDArrayDescriptorRowMajor((v197 + 66), v32, v35, 0, v38, 2, v39);

  if (!v40)
  {
LABEL_27:
    LOBYTE(v19) = 0;
LABEL_28:
    v91 = v204;
    v41 = v202;
    goto LABEL_29;
  }

  v41 = v202;
  v42 = [v202 descriptor];
  v43 = [v42 shape];
  v44 = [v202 descriptor];
  v45 = [v44 stride];
  v46 = [v202 descriptor];
  v47 = [v46 dataType];
  v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
  v49 = CPU_BuildBNNSNDArrayDescriptorRowMajor(v197 + 1944, v43, v45, 0, v47, 2, v48);

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
    v190 = [v193 descriptor];
    v54 = [v190 stride];
    v55 = [v54 objectAtIndexedSubscript:0];
    v56 = [v55 unsignedIntegerValue];
    v57 = [v204 objectAtIndexedSubscript:0];
    v58 = [v57 descriptor];
    [v58 stride];
    v59 = v196 = v52;
    v60 = [v204 objectAtIndexedSubscript:0];
    v61 = [v60 descriptor];
    v62 = [v59 objectAtIndexedSubscript:{objc_msgSend(v61, "dimensionCount") - 1}];
    [v203 setSourceStride:{v56 / objc_msgSend(v62, "unsignedIntegerValue")}];

    v194 = [v204 objectAtIndexedSubscript:1];
    v191 = [v194 descriptor];
    v63 = [v191 stride];
    v64 = [v63 objectAtIndexedSubscript:0];
    v65 = [v64 unsignedIntegerValue];
    v66 = [v204 objectAtIndexedSubscript:1];
    v67 = [v66 descriptor];
    v68 = [v67 stride];
    v69 = [v204 objectAtIndexedSubscript:1];
    v70 = [v69 descriptor];
    v71 = [v68 objectAtIndexedSubscript:{objc_msgSend(v70, "dimensionCount") - 1}];
    [v203 setSourceStrideSecondary:{v65 / objc_msgSend(v71, "unsignedIntegerValue")}];

    v195 = [v204 objectAtIndexedSubscript:2];
    v192 = [v195 descriptor];
    v72 = [v192 stride];
    v73 = [v72 objectAtIndexedSubscript:0];
    v74 = [v73 unsignedIntegerValue];
    v75 = [v204 objectAtIndexedSubscript:2];
    v76 = [v75 descriptor];
    v77 = [v76 stride];
    v78 = [v204 objectAtIndexedSubscript:2];
    v79 = [v78 descriptor];
    v80 = [v77 objectAtIndexedSubscript:{objc_msgSend(v79, "dimensionCount") - 1}];
    [v203 setSourceStrideTertiary:{v74 / objc_msgSend(v80, "unsignedIntegerValue")}];

    v53 = v203;
    v41 = v202;

    v81 = [v202 descriptor];
    v82 = [v81 stride];
    v83 = [v82 objectAtIndexedSubscript:0];
    v84 = [v83 unsignedIntegerValue];
    v85 = [v202 descriptor];
    v86 = [v85 stride];
    v87 = [v202 descriptor];
    v88 = [v86 objectAtIndexedSubscript:{objc_msgSend(v87, "dimensionCount") - 1}];
    [v203 setResultStride:{v84 / objc_msgSend(v88, "unsignedIntegerValue")}];

    v52 = v196;
    v51 = v197;

    v50 = 0x277CCA000;
  }

  objc_opt_class();
  v89 = objc_opt_new();
  [v53 setLayer:v89];

  v90 = [v53 layer];
  [v90 setFilter:v52];

  v91 = v204;
  v92 = v53;
  if (([v53 inferenceOnly] & 1) == 0)
  {
    v93 = [v53 inDeltaData];
    v94 = [v93 objectAtIndexedSubscript:0];
    v95 = [v94 bytes];

    v96 = *v51;
    v97 = v51[2];
    *(v95 + 16) = v51[1];
    *(v95 + 32) = v97;
    *v95 = v96;
    v98 = v51[3];
    v99 = v51[4];
    v100 = v51[6];
    *(v95 + 80) = v51[5];
    *(v95 + 96) = v100;
    *(v95 + 48) = v98;
    *(v95 + 64) = v99;
    v101 = v51[7];
    v102 = v51[8];
    v103 = v51[10];
    *(v95 + 144) = v51[9];
    *(v95 + 160) = v103;
    *(v95 + 112) = v101;
    *(v95 + 128) = v102;
    *(v95 + 88) = [v53 sourceStride];
    v104 = [v53 inDeltaData];
    v105 = [v104 objectAtIndexedSubscript:1];
    v106 = [v105 bytes];

    v107 = v51[33];
    v108 = v51[35];
    *(v106 + 16) = v51[34];
    *(v106 + 32) = v108;
    *v106 = v107;
    v109 = v51[36];
    v110 = v51[37];
    v111 = v51[39];
    *(v106 + 80) = v51[38];
    *(v106 + 96) = v111;
    *(v106 + 48) = v109;
    *(v106 + 64) = v110;
    v112 = v51[40];
    v113 = v51[41];
    v114 = v51[43];
    *(v106 + 144) = v51[42];
    *(v106 + 160) = v114;
    *(v106 + 112) = v112;
    *(v106 + 128) = v113;
    *(v106 + 88) = [v53 sourceStrideSecondary];
    v115 = [v53 inDeltaData];
    v116 = [v115 objectAtIndexedSubscript:2];
    v117 = [v116 bytes];

    v118 = v197[66];
    v119 = v197[68];
    *(v117 + 16) = v197[67];
    *(v117 + 32) = v119;
    *v117 = v118;
    v120 = v197[69];
    v121 = v197[70];
    v122 = v197[72];
    *(v117 + 80) = v197[71];
    *(v117 + 96) = v122;
    *(v117 + 48) = v120;
    *(v117 + 64) = v121;
    v123 = v197[73];
    v124 = v197[74];
    v125 = v197[76];
    *(v117 + 144) = v197[75];
    *(v117 + 160) = v125;
    *(v117 + 112) = v123;
    *(v117 + 128) = v124;
    *(v117 + 88) = [v53 sourceStrideTertiary];
    v126 = [v53 outDeltaData];
    v127 = [v126 objectAtIndexedSubscript:0];
    v128 = [v127 bytes];

    v129 = *(v197 + 1944);
    v130 = *(v197 + 1976);
    *(v128 + 16) = *(v197 + 1960);
    *(v128 + 32) = v130;
    *v128 = v129;
    v131 = *(v197 + 1992);
    v132 = *(v197 + 2008);
    v133 = *(v197 + 2040);
    *(v128 + 80) = *(v197 + 2024);
    *(v128 + 96) = v133;
    *(v128 + 48) = v131;
    *(v128 + 64) = v132;
    v134 = *(v197 + 2056);
    v135 = *(v197 + 2072);
    v136 = *(v197 + 2104);
    *(v128 + 144) = *(v197 + 2088);
    *(v128 + 160) = v136;
    *(v128 + 112) = v134;
    *(v128 + 128) = v135;
    *(v128 + 88) = [v53 resultStride];
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
    v137 = [v19 bytes];
    v138 = [v204 objectAtIndexedSubscript:3];
    v139 = [v138 descriptor];
    v140 = [v139 shape];
    v141 = [v204 objectAtIndexedSubscript:3];
    v142 = [v141 descriptor];
    v143 = [v142 stride];
    LODWORD(v137) = CPU_BuildBNNSNDArrayDescriptorRowMajor(v137, v140, v143, 0, 4, 1, &unk_284BA59F0);

    if (v137)
    {
      v144 = [v204 objectAtIndexedSubscript:3];
      v145 = [v144 descriptor];
      v146 = [v145 dimensionCount];

      v147 = [v204 objectAtIndexedSubscript:3];
      v148 = [v147 descriptor];
      v149 = [v148 shape];
      v150 = [v149 objectAtIndexedSubscript:v146 - 1];
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
    v155 = [v154 descriptor];
    v156 = [v155 shape];
    v157 = [v156 objectAtIndexedSubscript:0];
    v158 = [v157 unsignedIntegerValue];

    v159 = v204;
    v160 = [v204 objectAtIndexedSubscript:v151];
    v161 = [v160 descriptor];
    v162 = [v161 shape];
    v163 = [v162 mutableCopy];

    if (v158 == 1)
    {
      v164 = 2;
    }

    else
    {
      v165 = [v204 objectAtIndexedSubscript:v151];
      v166 = [v165 descriptor];
      v167 = [v166 shape];
      v168 = [v167 objectAtIndexedSubscript:0];
      v169 = [v168 unsignedIntegerValue];

      v170 = [v204 objectAtIndexedSubscript:0];
      v171 = [v170 descriptor];
      v172 = [v171 shape];
      v173 = [v172 objectAtIndexedSubscript:0];
      v174 = [v173 unsignedIntegerValue];

      v159 = v204;
      [v163 removeObjectAtIndex:0];
      v175 = [*(v152 + 2992) numberWithUnsignedInteger:v169 / v174];
      [v163 insertObject:v175 atIndex:0];

      v176 = [*(v152 + 2992) numberWithUnsignedInteger:v174];
      [v163 insertObject:v176 atIndex:0];

      v164 = 4;
    }

    v200 = v164;
    v177 = [v159 objectAtIndexedSubscript:v151];
    v178 = [v177 descriptor];
    v179 = +[MLCTensor tensorWithShape:dataType:](MLCTensor, "tensorWithShape:dataType:", v163, [v178 dataType]);

    v180 = [v153 bytes];
    [v179 descriptor];
    v181 = v163;
    v183 = v182 = v153;
    v184 = [v183 shape];
    v185 = [v179 descriptor];
    v186 = [v185 stride];
    v187 = [v159 objectAtIndexedSubscript:v151];
    v188 = [v187 descriptor];
    LODWORD(v180) = CPU_BuildBNNSNDArrayDescriptorRowMajor(v180, v184, v186, 0, [v188 dataType], v200, 0);

    if (v180)
    {
      [v203 setAttnMask:v182];

      v92 = v203;
      LOBYTE(v19) = 1;
      v91 = v204;
      v41 = v202;
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  LOBYTE(v19) = 1;
LABEL_30:

  return v19;
}

+ (BOOL)setOptimizerDataForDevice:(id)a3 deviceOps:(id)a4 dataForWeights:(id)a5 dataForBias:(id)a6
{
  v74[4] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a6;
  v10 = [a4 objectAtIndexedSubscript:0];
  if (([v10 inferenceOnly] & 1) == 0)
  {
    v70 = v9;
    v65 = [v10 params];
    v11 = [v65 bytes];
    v12 = MEMORY[0x277CBEBF8];
    v67 = [MEMORY[0x277CBEBF8] mutableCopy];
    v66 = [v12 mutableCopy];
    v74[0] = v11 + 176;
    v74[1] = v11 + 704;
    v64 = v11;
    v74[2] = v11 + 1232;
    v74[3] = v11 + 2120;
    v71 = v10;
    v72 = v8;
    if ([v8 count])
    {
      v13 = 0;
      do
      {
        v68 = [MEMORY[0x277CBEBF8] mutableCopy];
        v14 = [v8 objectAtIndexedSubscript:v13];
        v15 = [v14 optimizerData];
        v16 = [v15 count];

        if (v16)
        {
          v17 = 0;
          do
          {
            v18 = MEMORY[0x277CBEA90];
            v19 = [v8 objectAtIndexedSubscript:v13];
            v20 = [v19 optimizerData];
            v21 = [v20 objectAtIndexedSubscript:v17];
            v22 = [v21 bytes];
            v23 = [v72 objectAtIndexedSubscript:v13];
            v24 = [v23 optimizerData];
            v25 = [v24 objectAtIndexedSubscript:v17];
            v26 = [v18 dataWithBytesNoCopy:v22 length:objc_msgSend(v25 freeWhenDone:{"length"), 0}];

            v10 = v71;
            v27 = [v71 weightsMomentumDataBytesArray];
            v28 = [v27 objectAtIndexedSubscript:v13];
            [v28 addObject:v26];

            v29 = [MEMORY[0x277CBEA90] dataWithBytes:v74[v13] length:176];
            v30 = [v72 objectAtIndexedSubscript:v13];
            v31 = [v30 optimizerData];
            v32 = [v31 objectAtIndexedSubscript:v17];
            v33 = [v32 bytes];
            *([v29 bytes] + 136) = v33;

            v8 = v72;
            [v68 addObject:v29];

            ++v17;
            v34 = [v72 objectAtIndexedSubscript:v13];
            v35 = [v34 optimizerData];
            v36 = [v35 count];
          }

          while (v17 < v36);
        }

        [v67 addObject:v68];

        ++v13;
      }

      while (v13 < [v8 count]);
    }

    v9 = v70;
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
          v39 = [v9 objectAtIndexedSubscript:v37];
          v40 = [v39 optimizerData];
          v41 = [v40 count];

          if (v41)
          {
            v42 = 0;
            v69 = v38;
            do
            {
              v43 = MEMORY[0x277CBEA90];
              v44 = [v9 objectAtIndexedSubscript:v37];
              v45 = [v44 optimizerData];
              v46 = [v45 objectAtIndexedSubscript:v42];
              v47 = [v46 bytes];
              v48 = [v9 objectAtIndexedSubscript:v37];
              v49 = [v48 optimizerData];
              v50 = [v49 objectAtIndexedSubscript:v42];
              v51 = [v43 dataWithBytesNoCopy:v47 length:objc_msgSend(v50 freeWhenDone:{"length"), 0}];

              v10 = v71;
              v52 = [v71 biasMomentumDataBytesArray];
              v53 = [v52 objectAtIndexedSubscript:v37];
              [v53 addObject:v51];

              v54 = [MEMORY[0x277CBEA90] dataWithBytes:v73[v37] length:176];
              v55 = [v70 objectAtIndexedSubscript:v37];
              v56 = [v55 optimizerData];
              v57 = [v56 objectAtIndexedSubscript:v42];
              v58 = [v57 bytes];
              *([v54 bytes] + 136) = v58;

              v9 = v70;
              v38 = v69;

              [v69 addObject:v54];
              ++v42;
              v59 = [v70 objectAtIndexedSubscript:v37];
              v60 = [v59 optimizerData];
              v61 = [v60 count];
            }

            while (v42 < v61);
          }

          [v66 addObject:v38];

          ++v37;
        }

        while (v37 < [v9 count]);
      }

      v8 = v72;
    }

    [v10 setWeightsMomentumDeltaDataArray:v67];
    [v10 setBiasMomentumDeltaDataArray:v66];
  }

  v62 = *MEMORY[0x277D85DE8];
  return 1;
}

@end