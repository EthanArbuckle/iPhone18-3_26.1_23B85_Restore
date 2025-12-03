@interface _MLCCPUMatMul
+ (BOOL)compileWithDevice:(id)device deviceOps:(id)ops sourceTensors:(id)tensors resultTensor:(id)tensor;
- (_MLCCPUMatMul)initWithDevice:(id)device descriptor:(id)descriptor inferenceOnly:(BOOL)only;
@end

@implementation _MLCCPUMatMul

- (_MLCCPUMatMul)initWithDevice:(id)device descriptor:(id)descriptor inferenceOnly:(BOOL)only
{
  onlyCopy = only;
  v28[2] = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  deviceCopy = device;
  v8 = [MEMORY[0x277CBEBF8] mutableCopy];
  bzero(v26, 0x220uLL);
  v9 = [MEMORY[0x277CBEA90] dataWithBytes:v26 length:544];
  bytes = [v9 bytes];
  [descriptorCopy alpha];
  *bytes = v11;
  *(bytes + 4) = 0;
  *(bytes + 8) = [descriptorCopy transposesX];
  *(bytes + 9) = [descriptorCopy transposesY];
  *(bytes + 10) = 0;
  *(bytes + 12) = 0;
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
    [v17 setInferenceOnly:onlyCopy];
    [v17 setTransposeX:{objc_msgSend(descriptorCopy, "transposesX")}];
    [v17 setTransposeY:{objc_msgSend(descriptorCopy, "transposesY")}];
  }

  v18 = [v8 copy];
  v24.receiver = self;
  v24.super_class = _MLCCPUMatMul;
  v19 = [(_MLCCPULayer *)&v24 initWithDevice:deviceCopy deviceOps:v18];

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

+ (BOOL)compileWithDevice:(id)device deviceOps:(id)ops sourceTensors:(id)tensors resultTensor:(id)tensor
{
  tensorsCopy = tensors;
  tensorCopy = tensor;
  v169 = [ops objectAtIndexedSubscript:0];
  params = [v169 params];
  layer_params = [params bytes];
  v9 = [tensorsCopy objectAtIndexedSubscript:0];
  v10 = [tensorsCopy objectAtIndexedSubscript:1];
  descriptor = [v9 descriptor];
  dimensionCount = [descriptor dimensionCount];

  descriptor2 = [v10 descriptor];
  dimensionCount2 = [descriptor2 dimensionCount];

  if (dimensionCount == dimensionCount2)
  {
    v15 = v10;
  }

  else
  {
    v16 = v9;
    descriptor3 = [v9 descriptor];
    shape = [descriptor3 shape];
    v19 = [shape mutableCopy];

    descriptor4 = [v10 descriptor];
    shape2 = [descriptor4 shape];
    v22 = [shape2 mutableCopy];

    if (dimensionCount <= dimensionCount2)
    {
      v23 = dimensionCount2;
    }

    else
    {
      v23 = dimensionCount;
    }

    if (dimensionCount2 > dimensionCount)
    {
      v24 = v23 - dimensionCount;
      do
      {
        [v19 insertObject:&unk_284BA5870 atIndex:0];
        --v24;
      }

      while (v24);
    }

    if (dimensionCount > dimensionCount2)
    {
      v25 = v23 - dimensionCount2;
      do
      {
        [v22 insertObject:&unk_284BA5870 atIndex:0];
        --v25;
      }

      while (v25);
    }

    descriptor5 = [v16 descriptor];
    v27 = +[MLCTensorDescriptor descriptorWithShape:dataType:](MLCTensorDescriptor, "descriptorWithShape:dataType:", v19, [descriptor5 dataType]);
    v28 = [MLCTensor tensorWithDescriptor:v27];

    descriptor6 = [v10 descriptor];
    v30 = +[MLCTensorDescriptor descriptorWithShape:dataType:](MLCTensorDescriptor, "descriptorWithShape:dataType:", v22, [descriptor6 dataType]);
    v31 = [MLCTensor tensorWithDescriptor:v30];

    v15 = v31;
    v9 = v28;
  }

  descriptor7 = [v9 descriptor];
  shape3 = [descriptor7 shape];
  descriptor8 = [v9 descriptor];
  stride = [descriptor8 stride];
  descriptor9 = [v9 descriptor];
  dataType = [descriptor9 dataType];
  v165 = v9;
  descriptor10 = [v9 descriptor];
  v39 = CPU_BuildBNNSNDArrayDescriptorRowMajor(&layer_params->iA_desc, shape3, stride, 0, dataType, [descriptor10 dimensionCount], 0);

  if (!v39)
  {
    goto LABEL_23;
  }

  descriptor11 = [v15 descriptor];
  shape4 = [descriptor11 shape];
  descriptor12 = [v15 descriptor];
  stride2 = [descriptor12 stride];
  descriptor13 = [v15 descriptor];
  dataType2 = [descriptor13 dataType];
  descriptor14 = [v15 descriptor];
  v47 = CPU_BuildBNNSNDArrayDescriptorRowMajor(&layer_params->iB_desc, shape4, stride2, 0, dataType2, [descriptor14 dimensionCount], 0);

  if (!v47)
  {
    goto LABEL_23;
  }

  descriptor15 = [tensorCopy descriptor];
  shape5 = [descriptor15 shape];
  descriptor16 = [tensorCopy descriptor];
  stride3 = [descriptor16 stride];
  descriptor17 = [tensorCopy descriptor];
  dataType3 = [descriptor17 dataType];
  descriptor18 = [tensorCopy descriptor];
  v55 = CPU_BuildBNNSNDArrayDescriptorRowMajor(&layer_params->o_desc, shape5, stride3, 0, dataType3, [descriptor18 dimensionCount], 0);

  if (!v55)
  {
LABEL_23:
    v72 = 0;
    v59 = tensorCopy;
    v57 = v15;
LABEL_24:
    v73 = v165;
    goto LABEL_25;
  }

  p_alpha = &layer_params->alpha;
  v57 = v15;
  if ([tensorsCopy count] == 3)
  {
    layer_params->beta = 1.0;
  }

  memset(&filter_params, 0, sizeof(filter_params));
  filter_params.flags = 1;
  v58 = BNNSFilterCreateLayerBroadcastMatMul(layer_params, &filter_params);
  v59 = tensorCopy;
  if (v58)
  {
    v60 = [tensorsCopy objectAtIndexedSubscript:0];
    descriptor19 = [v60 descriptor];
    dimensionCount3 = [descriptor19 dimensionCount];

    if (dimensionCount3)
    {
      v63 = 0;
      v64 = 1;
      do
      {
        v65 = [tensorsCopy objectAtIndexedSubscript:0];
        descriptor20 = [v65 descriptor];
        shape6 = [descriptor20 shape];
        v68 = [shape6 objectAtIndexedSubscript:v63];
        v64 *= [v68 unsignedIntegerValue];

        ++v63;
        v69 = [tensorsCopy objectAtIndexedSubscript:0];
        descriptor21 = [v69 descriptor];
        dimensionCount4 = [descriptor21 dimensionCount];
      }

      while (v63 < dimensionCount4);
    }

    else
    {
      v64 = 1;
    }

    [v169 setSourceStride:v64];
    v75 = 1;
    v76 = [tensorsCopy objectAtIndexedSubscript:1];
    descriptor22 = [v76 descriptor];
    dimensionCount5 = [descriptor22 dimensionCount];

    if (dimensionCount5)
    {
      v79 = 0;
      v75 = 1;
      do
      {
        v80 = [tensorsCopy objectAtIndexedSubscript:1];
        descriptor23 = [v80 descriptor];
        shape7 = [descriptor23 shape];
        v83 = [shape7 objectAtIndexedSubscript:v79];
        v75 *= [v83 unsignedIntegerValue];

        ++v79;
        v84 = [tensorsCopy objectAtIndexedSubscript:1];
        descriptor24 = [v84 descriptor];
        dimensionCount6 = [descriptor24 dimensionCount];
      }

      while (v79 < dimensionCount6);
    }

    [v169 setSourceStrideSecondary:v75];
    v59 = tensorCopy;
    descriptor25 = [tensorCopy descriptor];
    dimensionCount7 = [descriptor25 dimensionCount];

    if (dimensionCount7)
    {
      v89 = 0;
      v90 = 1;
      do
      {
        descriptor26 = [tensorCopy descriptor];
        shape8 = [descriptor26 shape];
        v93 = [shape8 objectAtIndexedSubscript:v89];
        v90 *= [v93 unsignedIntegerValue];

        ++v89;
        descriptor27 = [tensorCopy descriptor];
        dimensionCount8 = [descriptor27 dimensionCount];
      }

      while (v89 < dimensionCount8);
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

  layer = [v169 layer];
  [layer setFilter:v58];

  if (([v169 inferenceOnly] & 1) == 0)
  {
    inDeltaData = [v169 inDeltaData];
    v99 = [inDeltaData objectAtIndexedSubscript:0];
    bytes = [v99 bytes];

    v101 = p_alpha[1];
    v102 = p_alpha[3];
    bytes[1] = p_alpha[2];
    bytes[2] = v102;
    *bytes = v101;
    v103 = p_alpha[4];
    v104 = p_alpha[5];
    v105 = p_alpha[7];
    bytes[5] = p_alpha[6];
    bytes[6] = v105;
    bytes[3] = v103;
    bytes[4] = v104;
    v106 = p_alpha[8];
    v107 = p_alpha[9];
    v108 = p_alpha[11];
    bytes[9] = p_alpha[10];
    bytes[10] = v108;
    bytes[7] = v106;
    bytes[8] = v107;
    inDeltaData2 = [v169 inDeltaData];
    v110 = [inDeltaData2 objectAtIndexedSubscript:1];
    bytes2 = [v110 bytes];

    v112 = p_alpha[12];
    v113 = p_alpha[14];
    bytes2[1] = p_alpha[13];
    bytes2[2] = v113;
    *bytes2 = v112;
    v114 = p_alpha[15];
    v115 = p_alpha[16];
    v116 = p_alpha[18];
    bytes2[5] = p_alpha[17];
    bytes2[6] = v116;
    bytes2[3] = v114;
    bytes2[4] = v115;
    v117 = p_alpha[19];
    v118 = p_alpha[20];
    v119 = p_alpha[22];
    bytes2[9] = p_alpha[21];
    bytes2[10] = v119;
    bytes2[7] = v117;
    bytes2[8] = v118;
    outDeltaData = [v169 outDeltaData];
    v121 = [outDeltaData objectAtIndexedSubscript:0];
    bytes3 = [v121 bytes];

    v123 = p_alpha[23];
    v124 = p_alpha[25];
    bytes3[1] = p_alpha[24];
    bytes3[2] = v124;
    *bytes3 = v123;
    v125 = p_alpha[26];
    v126 = p_alpha[27];
    v127 = p_alpha[29];
    bytes3[5] = p_alpha[28];
    bytes3[6] = v127;
    bytes3[3] = v125;
    bytes3[4] = v126;
    v128 = p_alpha[30];
    v129 = p_alpha[31];
    v130 = p_alpha[33];
    bytes3[9] = p_alpha[32];
    bytes3[10] = v130;
    bytes3[7] = v128;
    bytes3[8] = v129;
  }

  if ([tensorsCopy count] == 2)
  {
    v72 = 1;
    goto LABEL_24;
  }

  bzero(v170, 0x218uLL);
  v162 = [MEMORY[0x277CBEA90] dataWithBytes:v170 length:536];
  bytes4 = [v162 bytes];
  v131 = [tensorsCopy objectAtIndexedSubscript:2];
  descriptor28 = [v131 descriptor];
  shape9 = [descriptor28 shape];
  v134 = [shape9 mutableCopy];

  v135 = [v134 count];
  descriptor29 = [v59 descriptor];
  dimensionCount9 = [descriptor29 dimensionCount];

  if (v135 < dimensionCount9)
  {
    do
    {
      [v134 insertObject:&unk_284BA5870 atIndex:0];
      ++v135;
      descriptor30 = [v59 descriptor];
      dimensionCount10 = [descriptor30 dimensionCount];
    }

    while (v135 < dimensionCount10);
  }

  descriptor31 = [v59 descriptor];
  v141 = +[MLCTensorDescriptor descriptorWithShape:dataType:](MLCTensorDescriptor, "descriptorWithShape:dataType:", v134, [descriptor31 dataType]);
  v142 = [MLCTensor tensorWithDescriptor:v141];

  descriptor32 = [v142 descriptor];
  shape10 = [descriptor32 shape];
  descriptor33 = [v142 descriptor];
  stride4 = [descriptor33 stride];
  descriptor34 = [v142 descriptor];
  LODWORD(v141) = [descriptor34 dataType];
  v161 = v142;
  descriptor35 = [v142 descriptor];
  LOBYTE(v141) = CPU_BuildBNNSNDArrayDescriptorRowMajor(bytes4 + 176, shape10, stride4, 0, v141, [descriptor35 dimensionCount], 0);

  if (v141)
  {
    v148 = *&layer_params->o_desc.flags;
    v149 = *&layer_params->o_desc.size[3];
    *(bytes4 + 16) = *&layer_params->o_desc.size[1];
    *(bytes4 + 32) = v149;
    *bytes4 = v148;
    v150 = *&layer_params->o_desc.size[5];
    v151 = *&layer_params->o_desc.size[7];
    v152 = *&layer_params->o_desc.stride[3];
    *(bytes4 + 80) = *&layer_params->o_desc.stride[1];
    *(bytes4 + 96) = v152;
    *(bytes4 + 48) = v150;
    *(bytes4 + 64) = v151;
    v153 = *&layer_params->o_desc.stride[5];
    v154 = *&layer_params->o_desc.stride[7];
    v155 = *&layer_params->o_desc.table_data_type;
    *(bytes4 + 144) = *&layer_params->o_desc.data_type;
    *(bytes4 + 160) = v155;
    *(bytes4 + 112) = v153;
    *(bytes4 + 128) = v154;
    *(bytes4 + 528) = 6;
    v156 = MEMORY[0x23EE75CE0](bytes4, &filter_params);
    v72 = v156 != 0;
    v157 = v162;
    if (v156)
    {
      v158 = v156;
      [v169 setFusedPrimitiveParams:v162];
      layer2 = [v169 layer];
      [layer2 setSecondaryFilter:v158];
      v59 = tensorCopy;
    }

    else
    {
      layer2 = +[MLCLog framework];
      v59 = tensorCopy;
      if (os_log_type_enabled(layer2, OS_LOG_TYPE_ERROR))
      {
        [_MLCCPUMatMul compileWithDevice:a2 deviceOps:layer2 sourceTensors:? resultTensor:?];
      }
    }

    v73 = v165;
  }

  else
  {
    v72 = 0;
    v59 = tensorCopy;
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