@interface _MLCCPUArithmetic
+ (BOOL)compileWithDevice:(id)a3 deviceOps:(id)a4 sourceTensors:(id)a5 resultTensor:(id)a6;
+ (int)arithmeticOperatorTypeFor:(int)a3;
+ (unsigned)bnnsArithmeticFunctionFor:(int)a3;
@end

@implementation _MLCCPUArithmetic

+ (int)arithmeticOperatorTypeFor:(int)a3
{
  if (a3 <= 0x1D && ((1 << a3) & 0x3C20000F) != 0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

+ (unsigned)bnnsArithmeticFunctionFor:(int)a3
{
  if (a3 < 0x1E)
  {
    return dword_238D45FD0[a3];
  }

  v6 = +[MLCLog framework];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [(_MLCCPUArithmetic *)a2 bnnsArithmeticFunctionFor:a3, v6];
  }

  return 0;
}

+ (BOOL)compileWithDevice:(id)a3 deviceOps:(id)a4 sourceTensors:(id)a5 resultTensor:(id)a6
{
  v172 = a2;
  v8 = a5;
  v9 = a6;
  v10 = [a4 objectAtIndexedSubscript:0];
  v11 = [v10 params];
  v12 = [v11 bytes];

  bzero(v186, 0x228uLL);
  v13 = [MEMORY[0x277CBEA90] dataWithBytes:v186 length:552];
  *(v12 + 8) = [v13 bytes];
  v176 = v13;
  [v10 setArithmeticParamsData:v13];
  v14 = MEMORY[0x277CBEBF8];
  v15 = [MEMORY[0x277CBEBF8] mutableCopy];
  v181 = [v14 mutableCopy];
  v177 = v9;
  v178 = v10;
  v175 = v12;
  if ([v10 binaryOperation])
  {
    if (*v12 <= 1u)
    {
      v16 = [v8 objectAtIndexedSubscript:{0, v172}];
      v17 = [v9 doesShapeMatchWithTensor:v16];

      if (v17)
      {
        [v10 setUseSourceGradientDeviceMemoryForResultGradientTensor:1];
      }

      if (!*v12)
      {
        v18 = [v8 objectAtIndexedSubscript:1];
        v19 = [v9 doesShapeMatchWithTensor:v18];

        if (v19)
        {
          [v10 setUseSourceGradientDeviceMemoryForSecondaryResultGradientTensor:1];
        }
      }
    }

    v179 = v15;
    v20 = *(v12 + 8);
    v21 = [v8 objectAtIndexedSubscript:{0, v172}];
    v22 = [v21 descriptor];
    v23 = [v22 shape];
    v182 = [v23 count];

    v24 = [v8 objectAtIndexedSubscript:1];
    v25 = [v24 descriptor];
    v26 = [v25 shape];
    v27 = [v26 count];
    v28 = [v8 objectAtIndexedSubscript:0];
    v29 = [v28 descriptor];
    v30 = [v29 shape];
    v31 = v8;
    v32 = [v30 count];

    v33 = [v31 objectAtIndexedSubscript:1];
    v34 = [v33 descriptor];
    v35 = [v34 shape];
    v36 = [v35 count];
    v174 = v20;
    if (v27 <= v32)
    {
      v66 = [v31 objectAtIndexedSubscript:0];
      v67 = [v66 descriptor];
      v68 = [v67 shape];
      v69 = [v68 count];

      if (v36 >= v69)
      {
        v74 = [v31 objectAtIndexedSubscript:0];
        v75 = [v74 descriptor];
        v76 = [v75 shape];
        v77 = [v76 objectAtIndexedSubscript:0];
        v78 = [v77 unsignedIntValue];

        v39 = v31;
        v40 = v178;
        v38 = v182;
        if (v78 == 1)
        {
          v79 = [v31 objectAtIndexedSubscript:0];
          *(v20 + 176) = ~[v79 computeFlags] & 2;
        }

        else
        {
          *(v20 + 176) = 1;
        }

        v80 = [v31 objectAtIndexedSubscript:1];
        v81 = [v80 descriptor];
        v82 = [v81 shape];
        v83 = [v82 objectAtIndexedSubscript:0];
        v84 = [v83 unsignedIntValue];

        if (v84 == 1)
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
    v87 = [v86 descriptor];
    v88 = [v87 shape];
    v89 = [v88 count];

    v90 = [v39 objectAtIndexedSubscript:0];
    v91 = [v90 descriptor];
    v92 = [v91 shape];
    v93 = v92;
    v184 = v38;
    if (v38 == v89)
    {
      v94 = [v92 copy];

      v95 = [v39 objectAtIndexedSubscript:0];
      [v40 setSourceStride:CPU_SetBatchStride(v95)];

      v179 = v94;
    }

    else
    {
      v96 = v38;
      v97 = [v92 count];

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
            v105 = [v104 descriptor];
            v106 = [v105 shape];
            v107 = [v106 objectAtIndexedSubscript:v102 + v100];
            v103 = [v107 unsignedIntegerValue];

            v38 = v184;
            v98 = v179;
          }

          else
          {
            v103 = 1;
          }

          v108 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v103];
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
    v113 = [v112 descriptor];
    v114 = [v113 shape];
    v115 = [v114 count];

    v116 = [v39 objectAtIndexedSubscript:1];
    v117 = [v116 descriptor];
    v118 = [v117 shape];
    v119 = v118;
    if (v38 == v115)
    {
      v72 = [v118 copy];

      v120 = [v39 objectAtIndexedSubscript:1];
      [v40 setSourceStrideSecondary:CPU_SetBatchStride(v120)];
    }

    else
    {
      v121 = v38;
      v122 = [v118 count];

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
            v130 = [v129 descriptor];
            v131 = [v130 shape];
            v132 = [v131 objectAtIndexedSubscript:v126 + v124];
            v128 = [v132 unsignedIntegerValue];

            v127 = v184;
            v72 = v181;
          }

          else
          {
            v128 = 1;
          }

          v133 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v128];
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
    v138 = [v137 descriptor];
    v139 = CPU_BuildBNNSNDArrayDescriptor(v41, v179, 0, 0, [v138 dataType], 1, 0);

    if (!v139 || ([v39 objectAtIndexedSubscript:1], v140 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v140, "descriptor"), v141 = objc_claimAutoreleasedReturnValue(), v142 = CPU_BuildBNNSNDArrayDescriptor(v41 + 184, v72, 0, 0, objc_msgSend(v141, "dataType"), 1, 0), v141, v140, !v142))
    {
      v71 = 0;
      v73 = v176;
      v55 = v179;
      goto LABEL_64;
    }

    v181 = v72;
    v56 = v177;
    v143 = [v177 descriptor];
    v144 = [v143 shape];
    v145 = [v177 descriptor];
    v146 = [v145 stride];
    v147 = [v177 descriptor];
    v148 = CPU_BuildBNNSNDArrayDescriptor(v41 + 368, v144, v146, 0, [v147 dataType], 1, 0);

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

  v42 = [v8 objectAtIndexedSubscript:{0, v172}];
  v43 = [v42 descriptor];
  v44 = [v43 shape];
  v180 = [v44 copy];

  v45 = v8;
  v46 = *(v12 + 8);
  v47 = [v45 objectAtIndexedSubscript:0];
  v48 = [v47 descriptor];
  v49 = [v48 shape];
  v50 = [v45 objectAtIndexedSubscript:0];
  v51 = [v50 descriptor];
  v52 = [v51 stride];
  v183 = v45;
  v53 = [v45 objectAtIndexedSubscript:0];
  v54 = [v53 descriptor];
  LODWORD(v45) = CPU_BuildBNNSNDArrayDescriptor(v46, v49, v52, 0, [v54 dataType], 1, 0);

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
  v57 = [v177 descriptor];
  v58 = [v57 shape];
  v59 = [v177 descriptor];
  v60 = [v59 stride];
  v61 = [v177 descriptor];
  v62 = CPU_BuildBNNSNDArrayDescriptor(v46 + 184, v58, v60, 0, [v61 dataType], 1, 0);

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
  v149 = [v64 inDeltaData];
  v150 = [v149 objectAtIndexedSubscript:0];
  v151 = [v150 bytes];

  v152 = [v64 outDeltaData];
  v153 = [v152 objectAtIndexedSubscript:0];
  v154 = [v153 bytes];

  v155 = [v39 objectAtIndexedSubscript:0];
  v156 = [v155 descriptor];
  v55 = v65;
  CPU_BuildBNNSNDArrayDescriptor(v151, v65, 0, 0, [v156 dataType], 1, 0);

  if ([v64 binaryOperation])
  {
    v157 = [v178 inDeltaData];
    v158 = [v157 objectAtIndexedSubscript:1];
    v159 = [v158 bytes];

    v160 = [v39 objectAtIndexedSubscript:1];
    v161 = [v160 descriptor];
    CPU_BuildBNNSNDArrayDescriptor(v159, v181, 0, 0, [v161 dataType], 1, 0);
  }

  v162 = [v56 descriptor];
  v163 = [v162 shape];
  v164 = [v56 descriptor];
  v165 = [v164 stride];
  v166 = [v56 descriptor];
  CPU_BuildBNNSNDArrayDescriptor(v154, v163, v165, 0, [v166 dataType], 1, 0);

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

  v170 = [v178 layer];
  [v170 setFilter:v167];

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