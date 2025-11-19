@interface _MLCCPUMatMul
+ (BOOL)compileWithDevice:(id)a3 deviceOps:(id)a4 sourceTensors:(id)a5 resultTensor:(id)a6;
- (_MLCCPUMatMul)initWithDevice:(id)a3 descriptor:(id)a4 inferenceOnly:(BOOL)a5;
@end

@implementation _MLCCPUMatMul

- (_MLCCPUMatMul)initWithDevice:(id)a3 descriptor:(id)a4 inferenceOnly:(BOOL)a5
{
  v22 = a5;
  v28[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [MEMORY[0x277CBEBF8] mutableCopy];
  bzero(v26, 0x220uLL);
  v9 = [MEMORY[0x277CBEA90] dataWithBytes:v26 length:544];
  v10 = [v9 bytes];
  [v6 alpha];
  *v10 = v11;
  *(v10 + 4) = 0;
  *(v10 + 8) = [v6 transposesX];
  *(v10 + 9) = [v6 transposesY];
  *(v10 + 10) = 0;
  *(v10 + 12) = 0;
  memset(v25, 0, sizeof(v25));
  v12 = [MEMORY[0x277CBEA90] dataWithBytes:v25 length:176];
  v13 = [MEMORY[0x277CBEA90] dataWithBytes:v25 length:176];
  v14 = [MEMORY[0x277CBEA90] dataWithBytes:v25 length:176];
  v28[0] = v12;
  v28[1] = v13;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  v27 = v14;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
  v17 = [MLCCPUDeviceOps deviceOpsWithType:45 params:v9 inDeltaData:v15 outDeltaData:v16 weightsDeltaData:0 biasDeltaData:0 weightsMomentumData:0 biasMomentumData:0];

  if (v17)
  {
    [v8 addObject:v17];
    [v17 setInferenceOnly:v22];
    [v17 setTransposeX:{objc_msgSend(v6, "transposesX")}];
    [v17 setTransposeY:{objc_msgSend(v6, "transposesY")}];
  }

  v18 = [v8 copy];
  v24.receiver = self;
  v24.super_class = _MLCCPUMatMul;
  v19 = [(_MLCCPULayer *)&v24 initWithDevice:v7 deviceOps:v18];

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

+ (BOOL)compileWithDevice:(id)a3 deviceOps:(id)a4 sourceTensors:(id)a5 resultTensor:(id)a6
{
  v8 = a5;
  v168 = a6;
  v169 = [a4 objectAtIndexedSubscript:0];
  v166 = [v169 params];
  layer_params = [v166 bytes];
  v9 = [v8 objectAtIndexedSubscript:0];
  v10 = [v8 objectAtIndexedSubscript:1];
  v11 = [v9 descriptor];
  v12 = [v11 dimensionCount];

  v13 = [v10 descriptor];
  v14 = [v13 dimensionCount];

  if (v12 == v14)
  {
    v15 = v10;
  }

  else
  {
    v16 = v9;
    v17 = [v9 descriptor];
    v18 = [v17 shape];
    v19 = [v18 mutableCopy];

    v20 = [v10 descriptor];
    v21 = [v20 shape];
    v22 = [v21 mutableCopy];

    if (v12 <= v14)
    {
      v23 = v14;
    }

    else
    {
      v23 = v12;
    }

    if (v14 > v12)
    {
      v24 = v23 - v12;
      do
      {
        [v19 insertObject:&unk_284BA5870 atIndex:0];
        --v24;
      }

      while (v24);
    }

    if (v12 > v14)
    {
      v25 = v23 - v14;
      do
      {
        [v22 insertObject:&unk_284BA5870 atIndex:0];
        --v25;
      }

      while (v25);
    }

    v26 = [v16 descriptor];
    v27 = +[MLCTensorDescriptor descriptorWithShape:dataType:](MLCTensorDescriptor, "descriptorWithShape:dataType:", v19, [v26 dataType]);
    v28 = [MLCTensor tensorWithDescriptor:v27];

    v29 = [v10 descriptor];
    v30 = +[MLCTensorDescriptor descriptorWithShape:dataType:](MLCTensorDescriptor, "descriptorWithShape:dataType:", v22, [v29 dataType]);
    v31 = [MLCTensor tensorWithDescriptor:v30];

    v15 = v31;
    v9 = v28;
  }

  v32 = [v9 descriptor];
  v33 = [v32 shape];
  v34 = [v9 descriptor];
  v35 = [v34 stride];
  v36 = [v9 descriptor];
  v37 = [v36 dataType];
  v165 = v9;
  v38 = [v9 descriptor];
  v39 = CPU_BuildBNNSNDArrayDescriptorRowMajor(&layer_params->iA_desc, v33, v35, 0, v37, [v38 dimensionCount], 0);

  if (!v39)
  {
    goto LABEL_23;
  }

  v40 = [v15 descriptor];
  v41 = [v40 shape];
  v42 = [v15 descriptor];
  v43 = [v42 stride];
  v44 = [v15 descriptor];
  v45 = [v44 dataType];
  v46 = [v15 descriptor];
  v47 = CPU_BuildBNNSNDArrayDescriptorRowMajor(&layer_params->iB_desc, v41, v43, 0, v45, [v46 dimensionCount], 0);

  if (!v47)
  {
    goto LABEL_23;
  }

  v48 = [v168 descriptor];
  v49 = [v48 shape];
  v50 = [v168 descriptor];
  v51 = [v50 stride];
  v52 = [v168 descriptor];
  v53 = [v52 dataType];
  v54 = [v168 descriptor];
  v55 = CPU_BuildBNNSNDArrayDescriptorRowMajor(&layer_params->o_desc, v49, v51, 0, v53, [v54 dimensionCount], 0);

  if (!v55)
  {
LABEL_23:
    v72 = 0;
    v59 = v168;
    v57 = v15;
LABEL_24:
    v73 = v165;
    goto LABEL_25;
  }

  p_alpha = &layer_params->alpha;
  v57 = v15;
  if ([v8 count] == 3)
  {
    layer_params->beta = 1.0;
  }

  memset(&filter_params, 0, sizeof(filter_params));
  filter_params.flags = 1;
  v58 = BNNSFilterCreateLayerBroadcastMatMul(layer_params, &filter_params);
  v59 = v168;
  if (v58)
  {
    v60 = [v8 objectAtIndexedSubscript:0];
    v61 = [v60 descriptor];
    v62 = [v61 dimensionCount];

    if (v62)
    {
      v63 = 0;
      v64 = 1;
      do
      {
        v65 = [v8 objectAtIndexedSubscript:0];
        v66 = [v65 descriptor];
        v67 = [v66 shape];
        v68 = [v67 objectAtIndexedSubscript:v63];
        v64 *= [v68 unsignedIntegerValue];

        ++v63;
        v69 = [v8 objectAtIndexedSubscript:0];
        v70 = [v69 descriptor];
        v71 = [v70 dimensionCount];
      }

      while (v63 < v71);
    }

    else
    {
      v64 = 1;
    }

    [v169 setSourceStride:v64];
    v75 = 1;
    v76 = [v8 objectAtIndexedSubscript:1];
    v77 = [v76 descriptor];
    v78 = [v77 dimensionCount];

    if (v78)
    {
      v79 = 0;
      v75 = 1;
      do
      {
        v80 = [v8 objectAtIndexedSubscript:1];
        v81 = [v80 descriptor];
        v82 = [v81 shape];
        v83 = [v82 objectAtIndexedSubscript:v79];
        v75 *= [v83 unsignedIntegerValue];

        ++v79;
        v84 = [v8 objectAtIndexedSubscript:1];
        v85 = [v84 descriptor];
        v86 = [v85 dimensionCount];
      }

      while (v79 < v86);
    }

    [v169 setSourceStrideSecondary:v75];
    v59 = v168;
    v87 = [v168 descriptor];
    v88 = [v87 dimensionCount];

    if (v88)
    {
      v89 = 0;
      v90 = 1;
      do
      {
        v91 = [v168 descriptor];
        v92 = [v91 shape];
        v93 = [v92 objectAtIndexedSubscript:v89];
        v90 *= [v93 unsignedIntegerValue];

        ++v89;
        v94 = [v168 descriptor];
        v95 = [v94 dimensionCount];
      }

      while (v89 < v95);
    }

    else
    {
      v90 = 1;
    }

    [v169 setResultStride:v90];
    p_alpha = &layer_params->alpha;
  }

  objc_opt_class();
  v96 = objc_opt_new();
  [v169 setLayer:v96];

  v97 = [v169 layer];
  [v97 setFilter:v58];

  if (([v169 inferenceOnly] & 1) == 0)
  {
    v98 = [v169 inDeltaData];
    v99 = [v98 objectAtIndexedSubscript:0];
    v100 = [v99 bytes];

    v101 = p_alpha[1];
    v102 = p_alpha[3];
    v100[1] = p_alpha[2];
    v100[2] = v102;
    *v100 = v101;
    v103 = p_alpha[4];
    v104 = p_alpha[5];
    v105 = p_alpha[7];
    v100[5] = p_alpha[6];
    v100[6] = v105;
    v100[3] = v103;
    v100[4] = v104;
    v106 = p_alpha[8];
    v107 = p_alpha[9];
    v108 = p_alpha[11];
    v100[9] = p_alpha[10];
    v100[10] = v108;
    v100[7] = v106;
    v100[8] = v107;
    v109 = [v169 inDeltaData];
    v110 = [v109 objectAtIndexedSubscript:1];
    v111 = [v110 bytes];

    v112 = p_alpha[12];
    v113 = p_alpha[14];
    v111[1] = p_alpha[13];
    v111[2] = v113;
    *v111 = v112;
    v114 = p_alpha[15];
    v115 = p_alpha[16];
    v116 = p_alpha[18];
    v111[5] = p_alpha[17];
    v111[6] = v116;
    v111[3] = v114;
    v111[4] = v115;
    v117 = p_alpha[19];
    v118 = p_alpha[20];
    v119 = p_alpha[22];
    v111[9] = p_alpha[21];
    v111[10] = v119;
    v111[7] = v117;
    v111[8] = v118;
    v120 = [v169 outDeltaData];
    v121 = [v120 objectAtIndexedSubscript:0];
    v122 = [v121 bytes];

    v123 = p_alpha[23];
    v124 = p_alpha[25];
    v122[1] = p_alpha[24];
    v122[2] = v124;
    *v122 = v123;
    v125 = p_alpha[26];
    v126 = p_alpha[27];
    v127 = p_alpha[29];
    v122[5] = p_alpha[28];
    v122[6] = v127;
    v122[3] = v125;
    v122[4] = v126;
    v128 = p_alpha[30];
    v129 = p_alpha[31];
    v130 = p_alpha[33];
    v122[9] = p_alpha[32];
    v122[10] = v130;
    v122[7] = v128;
    v122[8] = v129;
  }

  if ([v8 count] == 2)
  {
    v72 = 1;
    goto LABEL_24;
  }

  bzero(v170, 0x218uLL);
  v162 = [MEMORY[0x277CBEA90] dataWithBytes:v170 length:536];
  v164 = [v162 bytes];
  v131 = [v8 objectAtIndexedSubscript:2];
  v132 = [v131 descriptor];
  v133 = [v132 shape];
  v134 = [v133 mutableCopy];

  v135 = [v134 count];
  v136 = [v59 descriptor];
  v137 = [v136 dimensionCount];

  if (v135 < v137)
  {
    do
    {
      [v134 insertObject:&unk_284BA5870 atIndex:0];
      ++v135;
      v138 = [v59 descriptor];
      v139 = [v138 dimensionCount];
    }

    while (v135 < v139);
  }

  v140 = [v59 descriptor];
  v141 = +[MLCTensorDescriptor descriptorWithShape:dataType:](MLCTensorDescriptor, "descriptorWithShape:dataType:", v134, [v140 dataType]);
  v142 = [MLCTensor tensorWithDescriptor:v141];

  v160 = [v142 descriptor];
  v143 = [v160 shape];
  v144 = [v142 descriptor];
  v145 = [v144 stride];
  v146 = [v142 descriptor];
  LODWORD(v141) = [v146 dataType];
  v161 = v142;
  v147 = [v142 descriptor];
  LOBYTE(v141) = CPU_BuildBNNSNDArrayDescriptorRowMajor(v164 + 176, v143, v145, 0, v141, [v147 dimensionCount], 0);

  if (v141)
  {
    v148 = *&layer_params->o_desc.flags;
    v149 = *&layer_params->o_desc.size[3];
    *(v164 + 16) = *&layer_params->o_desc.size[1];
    *(v164 + 32) = v149;
    *v164 = v148;
    v150 = *&layer_params->o_desc.size[5];
    v151 = *&layer_params->o_desc.size[7];
    v152 = *&layer_params->o_desc.stride[3];
    *(v164 + 80) = *&layer_params->o_desc.stride[1];
    *(v164 + 96) = v152;
    *(v164 + 48) = v150;
    *(v164 + 64) = v151;
    v153 = *&layer_params->o_desc.stride[5];
    v154 = *&layer_params->o_desc.stride[7];
    v155 = *&layer_params->o_desc.table_data_type;
    *(v164 + 144) = *&layer_params->o_desc.data_type;
    *(v164 + 160) = v155;
    *(v164 + 112) = v153;
    *(v164 + 128) = v154;
    *(v164 + 528) = 6;
    v156 = MEMORY[0x23EE75CE0](v164, &filter_params);
    v72 = v156 != 0;
    v157 = v162;
    if (v156)
    {
      v158 = v156;
      [v169 setFusedPrimitiveParams:v162];
      v159 = [v169 layer];
      [v159 setSecondaryFilter:v158];
      v59 = v168;
    }

    else
    {
      v159 = +[MLCLog framework];
      v59 = v168;
      if (os_log_type_enabled(v159, OS_LOG_TYPE_ERROR))
      {
        [_MLCCPUMatMul compileWithDevice:a2 deviceOps:v159 sourceTensors:? resultTensor:?];
      }
    }

    v73 = v165;
  }

  else
  {
    v72 = 0;
    v59 = v168;
    v73 = v165;
    v157 = v162;
  }

LABEL_25:
  return v72;
}

+ (void)compileWithDevice:(const char *)a1 deviceOps:(NSObject *)a2 sourceTensors:resultTensor:.cold.1(const char *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromSelector(a1);
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_238C1D000, a2, OS_LOG_TYPE_ERROR, "%@: failed to create reduction filter", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end