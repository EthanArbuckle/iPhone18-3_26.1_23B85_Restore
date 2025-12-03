@interface _MLCCPUArithmetic
+ (BOOL)compileWithDevice:(id)device deviceOps:(id)ops sourceTensors:(id)tensors resultTensor:(id)tensor;
+ (int)arithmeticOperatorTypeFor:(int)for;
+ (unsigned)bnnsArithmeticFunctionFor:(int)for;
@end

@implementation _MLCCPUArithmetic

+ (int)arithmeticOperatorTypeFor:(int)for
{
  if (for <= 0x1D && ((1 << for) & 0x3C20000F) != 0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

+ (unsigned)bnnsArithmeticFunctionFor:(int)for
{
  if (for < 0x1E)
  {
    return dword_238D45FD0[for];
  }

  v6 = +[MLCLog framework];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [(_MLCCPUArithmetic *)a2 bnnsArithmeticFunctionFor:for, v6];
  }

  return 0;
}

+ (BOOL)compileWithDevice:(id)device deviceOps:(id)ops sourceTensors:(id)tensors resultTensor:(id)tensor
{
  v172 = a2;
  tensorsCopy = tensors;
  tensorCopy = tensor;
  v10 = [ops objectAtIndexedSubscript:0];
  params = [v10 params];
  bytes = [params bytes];

  bzero(v186, 0x228uLL);
  v13 = [MEMORY[0x277CBEA90] dataWithBytes:v186 length:552];
  *(bytes + 8) = [v13 bytes];
  v176 = v13;
  [v10 setArithmeticParamsData:v13];
  v14 = MEMORY[0x277CBEBF8];
  v15 = [MEMORY[0x277CBEBF8] mutableCopy];
  v181 = [v14 mutableCopy];
  v177 = tensorCopy;
  v178 = v10;
  v175 = bytes;
  if ([v10 binaryOperation])
  {
    if (*bytes <= 1u)
    {
      v16 = [tensorsCopy objectAtIndexedSubscript:{0, v172}];
      v17 = [tensorCopy doesShapeMatchWithTensor:v16];

      if (v17)
      {
        [v10 setUseSourceGradientDeviceMemoryForResultGradientTensor:1];
      }

      if (!*bytes)
      {
        v18 = [tensorsCopy objectAtIndexedSubscript:1];
        v19 = [tensorCopy doesShapeMatchWithTensor:v18];

        if (v19)
        {
          [v10 setUseSourceGradientDeviceMemoryForSecondaryResultGradientTensor:1];
        }
      }
    }

    v179 = v15;
    v20 = *(bytes + 8);
    v21 = [tensorsCopy objectAtIndexedSubscript:{0, v172}];
    descriptor = [v21 descriptor];
    shape = [descriptor shape];
    v182 = [shape count];

    v24 = [tensorsCopy objectAtIndexedSubscript:1];
    descriptor2 = [v24 descriptor];
    shape2 = [descriptor2 shape];
    v27 = [shape2 count];
    v28 = [tensorsCopy objectAtIndexedSubscript:0];
    descriptor3 = [v28 descriptor];
    shape3 = [descriptor3 shape];
    v31 = tensorsCopy;
    v32 = [shape3 count];

    v33 = [v31 objectAtIndexedSubscript:1];
    descriptor4 = [v33 descriptor];
    shape4 = [descriptor4 shape];
    v36 = [shape4 count];
    v174 = v20;
    if (v27 <= v32)
    {
      v66 = [v31 objectAtIndexedSubscript:0];
      descriptor5 = [v66 descriptor];
      shape5 = [descriptor5 shape];
      v69 = [shape5 count];

      if (v36 >= v69)
      {
        v74 = [v31 objectAtIndexedSubscript:0];
        descriptor6 = [v74 descriptor];
        shape6 = [descriptor6 shape];
        v77 = [shape6 objectAtIndexedSubscript:0];
        unsignedIntValue = [v77 unsignedIntValue];

        v39 = v31;
        v40 = v178;
        v38 = v182;
        if (unsignedIntValue == 1)
        {
          v79 = [v31 objectAtIndexedSubscript:0];
          *(v20 + 176) = ~[v79 computeFlags] & 2;
        }

        else
        {
          *(v20 + 176) = 1;
        }

        v80 = [v31 objectAtIndexedSubscript:1];
        descriptor7 = [v80 descriptor];
        shape7 = [descriptor7 shape];
        v83 = [shape7 objectAtIndexedSubscript:0];
        unsignedIntValue2 = [v83 unsignedIntValue];

        if (unsignedIntValue2 == 1)
        {
          v85 = [v31 objectAtIndexedSubscript:1];
          v41 = v20;
          *(v20 + 360) = ~[v85 computeFlags] & 2;
        }

        else
        {
          *(v20 + 360) = 1;
          v41 = v20;
        }
      }

      else
      {
        *(v20 + 176) = 1;
        v70 = [v31 objectAtIndexedSubscript:1];
        *(v20 + 360) = ~[v70 computeFlags] & 2;

        v39 = v31;
        v41 = v20;
        v40 = v178;
        v38 = v182;
      }
    }

    else
    {

      v37 = [v31 objectAtIndexedSubscript:0];
      *(v20 + 176) = ~[v37 computeFlags] & 2;

      *(v20 + 360) = 1;
      v38 = v36;
      v39 = v31;
      v40 = v178;
      v41 = v20;
    }

    *(v41 + 544) = 1;
    v86 = [v39 objectAtIndexedSubscript:0];
    descriptor8 = [v86 descriptor];
    shape8 = [descriptor8 shape];
    v89 = [shape8 count];

    v90 = [v39 objectAtIndexedSubscript:0];
    descriptor9 = [v90 descriptor];
    shape9 = [descriptor9 shape];
    v93 = shape9;
    v184 = v38;
    if (v38 == v89)
    {
      v94 = [shape9 copy];

      v95 = [v39 objectAtIndexedSubscript:0];
      [v40 setSourceStride:CPU_SetBatchStride(v95)];

      v179 = v94;
    }

    else
    {
      v96 = v38;
      v97 = [shape9 count];

      v98 = v179;
      if (v96)
      {
        v99 = v39;
        v100 = 0;
        v101 = v96 - v97;
        v102 = v97 - v96;
        v38 = v96;
        do
        {
          if (v100 >= v101)
          {
            v104 = [v99 objectAtIndexedSubscript:0];
            descriptor10 = [v104 descriptor];
            shape10 = [descriptor10 shape];
            v100 = [shape10 objectAtIndexedSubscript:v102 + v100];
            unsignedIntegerValue = [v100 unsignedIntegerValue];

            v38 = v184;
            v98 = v179;
          }

          else
          {
            unsignedIntegerValue = 1;
          }

          v108 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue];
          [v98 setObject:v108 atIndexedSubscript:v100];

          ++v100;
        }

        while (v38 != v100);
        v109 = 1;
        if (v38 == 1)
        {
          v39 = v99;
          v40 = v178;
          v41 = v174;
        }

        else
        {
          v110 = 1;
          v39 = v99;
          v40 = v178;
          v41 = v174;
          do
          {
            v111 = [v98 objectAtIndexedSubscript:v110];
            v109 *= [v111 unsignedIntegerValue];

            ++v110;
          }

          while (v38 != v110);
        }
      }

      else
      {
        v109 = 1;
        v38 = 0;
      }

      [v40 setSourceStride:v109];
    }

    v112 = [v39 objectAtIndexedSubscript:1];
    descriptor11 = [v112 descriptor];
    shape11 = [descriptor11 shape];
    v115 = [shape11 count];

    v116 = [v39 objectAtIndexedSubscript:1];
    descriptor12 = [v116 descriptor];
    shape12 = [descriptor12 shape];
    v119 = shape12;
    if (v38 == v115)
    {
      v72 = [shape12 copy];

      v120 = [v39 objectAtIndexedSubscript:1];
      [v40 setSourceStrideSecondary:CPU_SetBatchStride(v120)];
    }

    else
    {
      v121 = v38;
      v122 = [shape12 count];

      v72 = v181;
      if (v121)
      {
        v123 = v39;
        v124 = 0;
        v125 = v121 - v122;
        v126 = v122 - v121;
        v127 = v121;
        do
        {
          if (v124 >= v125)
          {
            v129 = [v123 objectAtIndexedSubscript:1];
            descriptor13 = [v129 descriptor];
            shape13 = [descriptor13 shape];
            v124 = [shape13 objectAtIndexedSubscript:v126 + v124];
            unsignedIntegerValue2 = [v124 unsignedIntegerValue];

            v127 = v184;
            v72 = v181;
          }

          else
          {
            unsignedIntegerValue2 = 1;
          }

          v133 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue2];
          [v72 setObject:v133 atIndexedSubscript:v124];

          ++v124;
        }

        while (v127 != v124);
        v41 = v174;
        if (v127 == 1)
        {
          v134 = 1;
          v39 = v123;
          v40 = v178;
        }

        else
        {
          v135 = 1;
          v134 = 1;
          v39 = v123;
          v40 = v178;
          do
          {
            v136 = [v72 objectAtIndexedSubscript:v135];
            v134 *= [v136 unsignedIntegerValue];

            ++v135;
          }

          while (v127 != v135);
        }
      }

      else
      {
        v134 = 1;
      }

      [v40 setSourceStrideSecondary:v134];
    }

    v137 = [v39 objectAtIndexedSubscript:0];
    descriptor14 = [v137 descriptor];
    v139 = CPU_BuildBNNSNDArrayDescriptor(v41, v179, 0, 0, [descriptor14 dataType], 1, 0);

    if (!v139 || ([v39 objectAtIndexedSubscript:1], v140 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v140, "descriptor"), v141 = objc_claimAutoreleasedReturnValue(), v142 = CPU_BuildBNNSNDArrayDescriptor(v41 + 184, v72, 0, 0, objc_msgSend(v141, "dataType"), 1, 0), v141, v140, !v142))
    {
      v71 = 0;
      v73 = v176;
      v55 = v179;
      goto LABEL_64;
    }

    v181 = v72;
    v56 = v177;
    descriptor15 = [v177 descriptor];
    shape14 = [descriptor15 shape];
    descriptor16 = [v177 descriptor];
    stride = [descriptor16 stride];
    descriptor17 = [v177 descriptor];
    v148 = CPU_BuildBNNSNDArrayDescriptor(v41 + 368, shape14, stride, 0, [descriptor17 dataType], 1, 0);

    if ((v148 & 1) == 0)
    {
      v71 = 0;
      v40 = v178;
      v55 = v179;
      v73 = v176;
      v72 = v181;
      goto LABEL_64;
    }

    v64 = v178;
    v65 = v179;
    goto LABEL_56;
  }

  v42 = [tensorsCopy objectAtIndexedSubscript:{0, v172}];
  descriptor18 = [v42 descriptor];
  shape15 = [descriptor18 shape];
  v180 = [shape15 copy];

  v45 = tensorsCopy;
  v46 = *(bytes + 8);
  v47 = [v45 objectAtIndexedSubscript:0];
  descriptor19 = [v47 descriptor];
  shape16 = [descriptor19 shape];
  v50 = [v45 objectAtIndexedSubscript:0];
  descriptor20 = [v50 descriptor];
  stride2 = [descriptor20 stride];
  v183 = v45;
  v53 = [v45 objectAtIndexedSubscript:0];
  descriptor21 = [v53 descriptor];
  LODWORD(v45) = CPU_BuildBNNSNDArrayDescriptor(v46, shape16, stride2, 0, [descriptor21 dataType], 1, 0);

  if (!v45)
  {
    v71 = 0;
    v55 = v180;
LABEL_17:
    v72 = v181;
    v39 = v183;
    v40 = v178;
    v73 = v176;
    goto LABEL_64;
  }

  v55 = v180;
  *(v46 + 176) = 1;
  v56 = v177;
  descriptor22 = [v177 descriptor];
  shape17 = [descriptor22 shape];
  descriptor23 = [v177 descriptor];
  stride3 = [descriptor23 stride];
  descriptor24 = [v177 descriptor];
  v62 = CPU_BuildBNNSNDArrayDescriptor(v46 + 184, shape17, stride3, 0, [descriptor24 dataType], 1, 0);

  if (!v62)
  {
    v71 = 0;
    goto LABEL_17;
  }

  *(v46 + 360) = 1;
  v39 = v183;
  v63 = [v183 objectAtIndexedSubscript:0];
  v64 = v178;
  [v178 setSourceStride:CPU_SetBatchStride(v63)];

  v65 = v180;
LABEL_56:
  [v64 setResultStride:CPU_SetBatchStride(v56)];
  inDeltaData = [v64 inDeltaData];
  v150 = [inDeltaData objectAtIndexedSubscript:0];
  bytes2 = [v150 bytes];

  outDeltaData = [v64 outDeltaData];
  v153 = [outDeltaData objectAtIndexedSubscript:0];
  bytes3 = [v153 bytes];

  v155 = [v39 objectAtIndexedSubscript:0];
  descriptor25 = [v155 descriptor];
  v55 = v65;
  CPU_BuildBNNSNDArrayDescriptor(bytes2, v65, 0, 0, [descriptor25 dataType], 1, 0);

  if ([v64 binaryOperation])
  {
    inDeltaData2 = [v178 inDeltaData];
    v158 = [inDeltaData2 objectAtIndexedSubscript:1];
    bytes4 = [v158 bytes];

    v160 = [v39 objectAtIndexedSubscript:1];
    descriptor26 = [v160 descriptor];
    CPU_BuildBNNSNDArrayDescriptor(bytes4, v181, 0, 0, [descriptor26 dataType], 1, 0);
  }

  descriptor27 = [v56 descriptor];
  shape18 = [descriptor27 shape];
  descriptor28 = [v56 descriptor];
  stride4 = [descriptor28 stride];
  descriptor29 = [v56 descriptor];
  CPU_BuildBNNSNDArrayDescriptor(bytes3, shape18, stride4, 0, [descriptor29 dataType], 1, 0);

  memset(v185, 0, sizeof(v185));
  LODWORD(v185[0]) = 1;
  v167 = MEMORY[0x23EE75C30](v175, v185);
  v40 = v178;
  v73 = v176;
  v72 = v181;
  if (!v167)
  {
    v168 = +[MLCLog framework];
    if (os_log_type_enabled(v168, OS_LOG_TYPE_ERROR))
    {
      [_MLCCPUConvolution compileWithDevice:v173 deviceOps:v168 sourceTensors:? resultTensor:? convolutionTranspose:?];
    }
  }

  objc_opt_class();
  v169 = objc_opt_new();
  [v178 setLayer:v169];

  layer = [v178 layer];
  [layer setFilter:v167];

  v71 = 1;
LABEL_64:

  return v71;
}

+ (void)bnnsArithmeticFunctionFor:(NSObject *)a3 .cold.1(const char *a1, int a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromSelector(a1);
  v7 = 138412546;
  v8 = v5;
  v9 = 1024;
  v10 = a2;
  _os_log_error_impl(&dword_238C1D000, a3, OS_LOG_TYPE_ERROR, "%@: Unknown arithmetic operation type %d", &v7, 0x12u);

  v6 = *MEMORY[0x277D85DE8];
}

@end