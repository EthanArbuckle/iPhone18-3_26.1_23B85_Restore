@interface _MLCGPUMatMul
+ (BOOL)compileWithDevice:(id)a3 deviceOps:(id)a4 sourceTensors:(id)a5 resultTensor:(id)a6;
+ (id)layerWithDevice:(id)a3 descriptor:(id)a4 sourceTensors:(id)a5 resultTensor:(id)a6;
- (_MLCGPUMatMul)initWithDevice:(id)a3 descriptor:(id)a4 sourceTensors:(id)a5 resultTensor:(id)a6;
@end

@implementation _MLCGPUMatMul

+ (id)layerWithDevice:(id)a3 descriptor:(id)a4 sourceTensors:(id)a5 resultTensor:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[a1 alloc] initWithDevice:v13 descriptor:v12 sourceTensors:v11 resultTensor:v10];

  return v14;
}

- (_MLCGPUMatMul)initWithDevice:(id)a3 descriptor:(id)a4 sourceTensors:(id)a5 resultTensor:(id)a6
{
  v150[3] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v147.receiver = self;
  v147.super_class = _MLCGPUMatMul;
  v14 = [(_MLCGPUMatMul *)&v147 init];
  if (v14)
  {
    v113 = v13;
    v15 = [v10 deviceList];
    v133 = [v15 count];

    v117 = [MEMORY[0x277CBEBF8] mutableCopy];
    if (([v11 transposesX] & 1) != 0 || objc_msgSend(v11, "transposesY"))
    {
      if ([v11 transposesX] && !objc_msgSend(v11, "transposesY"))
      {
        v140 = 0;
        v134 = 1;
      }

      else if (([v11 transposesX] & 1) != 0 || (objc_msgSend(v11, "transposesY") & 1) == 0)
      {
        if ([v11 transposesX] && objc_msgSend(v11, "transposesY"))
        {
          v134 = 0x100000001;
          v140 = 1;
        }

        else
        {
          v134 = 0;
          v140 = 0;
        }
      }

      else
      {
        v140 = 0;
        v134 = 0x100000000;
      }
    }

    else
    {
      v140 = 0;
      v134 = 0x100000001;
    }

    v116 = ([v11 transposesX] & 1) == 0 && (objc_msgSend(v11, "transposesY") & 1) != 0 || (objc_msgSend(v11, "transposesX") & 1) == 0 && (objc_msgSend(v11, "transposesY") & 1) == 0;
    v135 = v10;
    v143 = v11;
    v115 = [v11 transposesX] && !objc_msgSend(v11, "transposesY") || (objc_msgSend(v11, "transposesX") & 1) == 0 && (objc_msgSend(v11, "transposesY") & 1) == 0;
    v114 = v14;
    v16 = 0;
    v17 = &v146;
    v18 = 1;
    do
    {
      v19 = 0;
      v20 = v18;
      *v17 = 1;
      v21 = 1;
      while (1)
      {
        v22 = [v12 objectAtIndexedSubscript:v16];
        v23 = [v22 descriptor];
        v24 = [v23 dimensionCount] - 2;

        if (v19 >= v24)
        {
          break;
        }

        v25 = [v12 objectAtIndexedSubscript:v16];
        v26 = [v25 descriptor];
        v27 = [v26 shape];
        v28 = [v27 objectAtIndexedSubscript:v19];
        v21 *= [v28 unsignedIntegerValue];
        *v17 = v21;

        ++v19;
      }

      v18 = 0;
      v17 = &v145;
      v16 = 1;
    }

    while ((v20 & 1) != 0);
    v10 = v135;
    v11 = v143;
    if (v133)
    {
      v29 = 0;
      v131 = v145;
      v132 = v146;
      do
      {
        v30 = [v10 deviceList];
        v141 = v29;
        v31 = [v30 objectAtIndexedSubscript:v29];

        v142 = v31;
        if (v132 == v131)
        {
          v32 = [v12 objectAtIndexedSubscript:0];
          v33 = [v32 descriptor];
          v34 = v11;
          v35 = [v33 dimensionCount] - 2;

          v36 = [v12 objectAtIndexedSubscript:0];
          v37 = [v36 descriptor];
          v137 = [v37 dimensionCount] - 1;

          v38 = [v12 objectAtIndexedSubscript:1];
          v39 = [v38 descriptor];
          v40 = [v39 dimensionCount];

          v41 = [v12 objectAtIndexedSubscript:1];
          v42 = [v41 descriptor];
          v43 = [v42 dimensionCount] - 1;

          v44 = [v12 objectAtIndexedSubscript:0];
          v45 = [v44 descriptor];
          v46 = [v45 shape];
          v47 = [v46 objectAtIndexedSubscript:v35];

          v48 = [v12 objectAtIndexedSubscript:1];
          v49 = [v48 descriptor];
          v50 = [v49 shape];
          v130 = v43;
          v51 = [v50 objectAtIndexedSubscript:v43];

          LODWORD(v50) = [v34 transposesX];
          v52 = [v12 objectAtIndexedSubscript:0];
          v53 = [v52 descriptor];
          v54 = [v53 shape];
          v55 = v54;
          v128 = v35;
          if (v50)
          {
            v56 = [v54 objectAtIndexedSubscript:v35];
            v126 = [v56 unsignedIntegerValue];

            v52 = [v12 objectAtIndexedSubscript:0];
            v53 = [v52 descriptor];
            v55 = [v53 shape];
            v57 = v137;
            [v55 objectAtIndexedSubscript:?];
            v47 = v58 = v47;
          }

          else
          {
            v57 = v137;
            v58 = [v54 objectAtIndexedSubscript:?];
            v126 = [v58 unsignedIntegerValue];
          }

          v136 = v40 - 2;

          if ([v143 transposesY])
          {
            v63 = [v12 objectAtIndexedSubscript:1];
            v64 = [v63 descriptor];
            v65 = [v64 shape];
            v66 = [v65 objectAtIndexedSubscript:v136];

            v51 = v66;
          }

          v67 = v57;
          v68 = objc_alloc(MEMORY[0x277CD75E0]);
          v69 = [v143 transposesX];
          v70 = [v143 transposesY];
          v71 = [v47 unsignedIntegerValue];
          v138 = v47;
          v72 = [v51 unsignedIntegerValue];
          [v143 alpha];
          v127 = [v68 initWithDevice:v142 transposeLeft:v69 transposeRight:v70 resultRows:v71 resultColumns:v72 interiorColumns:v126 alpha:v73 beta:0.0];
          v118 = objc_alloc(MEMORY[0x277CD75E0]);
          v123 = [v12 objectAtIndexedSubscript:0];
          v121 = [v123 descriptor];
          v119 = [v121 shape];
          v74 = [v119 objectAtIndexedSubscript:v128];
          v75 = [v74 unsignedIntegerValue];
          v76 = [v12 objectAtIndexedSubscript:0];
          v77 = [v76 descriptor];
          v78 = [v77 shape];
          [v78 objectAtIndexedSubscript:v67];
          v79 = v51;
          v80 = v125 = v51;
          v81 = [v80 unsignedIntegerValue];
          v82 = [v79 unsignedIntegerValue];
          [v143 alpha];
          v129 = [v118 initWithDevice:v142 transposeLeft:v140 transposeRight:v134 resultRows:v75 resultColumns:v81 interiorColumns:v82 alpha:v83 beta:0.0];

          v120 = objc_alloc(MEMORY[0x277CD75E0]);
          v124 = [v12 objectAtIndexedSubscript:1];
          v122 = [v124 descriptor];
          v84 = [v122 shape];
          v85 = [v84 objectAtIndexedSubscript:v136];
          v86 = [v85 unsignedIntegerValue];
          v87 = [v12 objectAtIndexedSubscript:1];
          v88 = [v87 descriptor];
          v89 = [v88 shape];
          v90 = [v89 objectAtIndexedSubscript:v130];
          v91 = [v90 unsignedIntegerValue];
          v92 = [v138 unsignedIntegerValue];
          [v143 alpha];
          v94 = v86;
          v11 = v143;
          v95 = [v120 initWithDevice:v142 transposeLeft:HIDWORD(v134) transposeRight:v140 resultRows:v94 resultColumns:v91 interiorColumns:v92 alpha:v93 beta:0.0];

          v62 = [MLCMatMulGPUDeviceOps deviceOpsWithForwardKernel:v127 gradientKernel:v129 secondaryGradientKernel:v95];

          v59 = 0;
          v61 = 0;
          v10 = v135;
          if (!v62)
          {
            goto LABEL_44;
          }
        }

        else
        {
          v59 = [objc_alloc(MEMORY[0x277CD7608]) initWithDevice:v31 sourceCount:2];
          [v11 alpha];
          [v59 setAlpha:v60];
          v61 = [objc_alloc(MEMORY[0x277CD7610]) initWithDevice:v31 axis:2];
          v62 = +[MLCMatMulGPUDeviceOps deviceOps];
          if (!v62)
          {
            goto LABEL_44;
          }
        }

        [v62 setLayer:objc_opt_class()];
        [v62 setMatmulKernel:v59];
        [v62 setReduceSumKernel:v61];
        v139 = v61;
        v96 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v11, "transposesX")}];
        v150[0] = v96;
        v97 = [MEMORY[0x277CCABB0] numberWithBool:v140];
        v150[1] = v97;
        v98 = [MEMORY[0x277CCABB0] numberWithBool:HIDWORD(v134)];
        v150[2] = v98;
        v99 = [MEMORY[0x277CBEA60] arrayWithObjects:v150 count:3];
        v100 = [v99 copy];
        [v62 setTransposeLeft:v100];

        v101 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v143, "transposesY")}];
        v149[0] = v101;
        v102 = [MEMORY[0x277CCABB0] numberWithBool:v134];
        v149[1] = v102;
        v103 = [MEMORY[0x277CCABB0] numberWithBool:v140];
        v149[2] = v103;
        v104 = [MEMORY[0x277CBEA60] arrayWithObjects:v149 count:3];
        v105 = [v104 copy];
        [v62 setTransposeRight:v105];

        v106 = [MEMORY[0x277CCABB0] numberWithBool:v116];
        v148[0] = v106;
        v107 = [MEMORY[0x277CCABB0] numberWithBool:v115];
        v148[1] = v107;
        v108 = [MEMORY[0x277CBEA60] arrayWithObjects:v148 count:2];
        v109 = [v108 copy];
        [v62 setGradientLeftRightMatrixSelectionFlags:v109];

        v10 = v135;
        v11 = v143;

        v61 = v139;
        [v62 setSourceOfForwardNeededForGradient:1];
        [v62 setResultOfForwardNeededForGradient:0];
        [v117 addObject:v62];
LABEL_44:

        v29 = v141 + 1;
      }

      while (v133 != v141 + 1);
    }

    v110 = [v117 copy];
    v14 = v114;
    v144.receiver = v114;
    v144.super_class = _MLCGPUMatMul;
    [(_MLCGPULayer *)&v144 setDeviceOps:v110];

    v13 = v113;
  }

  v111 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (BOOL)compileWithDevice:(id)a3 deviceOps:(id)a4 sourceTensors:(id)a5 resultTensor:(id)a6
{
  v154[3] = *MEMORY[0x277D85DE8];
  v124 = a3;
  v133 = a4;
  v9 = a5;
  v10 = a6;
  v11 = [v9 objectAtIndexedSubscript:0];
  v154[0] = v11;
  v137 = v9;
  v12 = [v9 objectAtIndexedSubscript:1];
  v154[1] = v12;
  v154[2] = v10;
  v130 = v10;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v154 count:3];

  v14 = MEMORY[0x277CBEBF8];
  v139 = [MEMORY[0x277CBEBF8] mutableCopy];
  v15 = 0;
  v146 = [v14 mutableCopy];
  v138 = v13;
  do
  {
    v16 = [v13 objectAtIndexedSubscript:v15];
    v17 = [v16 descriptor];
    v18 = [v17 dimensionCount] - 1;

    v19 = [v13 objectAtIndexedSubscript:v15];
    v20 = [v19 descriptor];
    v21 = [v20 dimensionCount] - 2;

    v22 = [v13 objectAtIndexedSubscript:v15];
    v23 = [v22 descriptor];
    v24 = [v23 shape];
    v25 = [v24 objectAtIndexedSubscript:v21];
    v144 = [v25 unsignedIntegerValue];

    v26 = [v13 objectAtIndexedSubscript:v15];
    v27 = [v26 descriptor];
    v28 = [v27 shape];
    v29 = [v28 objectAtIndexedSubscript:v18];
    v142 = [v29 unsignedIntegerValue];

    v30 = [v13 objectAtIndexedSubscript:v15];
    v31 = [v30 descriptor];
    v32 = [v31 stride];
    v33 = [v32 objectAtIndexedSubscript:v18];
    v140 = [v33 unsignedIntegerValue];

    v153[v15] = 1;
    v34 = 1;
    if (v21)
    {
      v35 = 0;
      v34 = 1;
      do
      {
        v36 = [v13 objectAtIndexedSubscript:v15];
        v37 = [v36 descriptor];
        v38 = [v37 shape];
        v39 = [v38 objectAtIndexedSubscript:v35];
        v34 *= [v39 unsignedIntegerValue];
        v153[v15] = v34;

        ++v35;
      }

      while (v21 != v35);
    }

    v40 = [v13 objectAtIndexedSubscript:v15];
    v41 = [v40 descriptor];
    v42 = [v41 shape];
    v43 = [v42 mutableCopy];
    [v146 setObject:v43 atIndexedSubscript:v15];

    v44 = [v13 objectAtIndexedSubscript:v15];
    v45 = [v44 descriptor];
    v46 = [v45 shape];
    v47 = [v46 count];

    v48 = v146;
    if (v47 <= 3)
    {
      v49 = v47 - 4;
      do
      {
        v50 = [v146 objectAtIndexedSubscript:v15];
        [v50 insertObject:&unk_284BA57C8 atIndex:0];
      }

      while (!__CFADD__(v49++, 1));
    }

    v13 = v138;
    v52 = [v138 objectAtIndexedSubscript:v15];
    v53 = [v52 descriptor];
    DataType = GPU_GetDataType([v53 dataType]);

    v55 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v144 columns:v142 matrices:v34 rowBytes:v140 * v142 matrixBytes:v140 * v142 * v144 dataType:DataType];
    [v139 addObject:v55];

    ++v15;
  }

  while (v15 != 3);
  v145 = [MEMORY[0x277CBEBF8] mutableCopy];
  if (v153[0] == v153[1])
  {
    v147 = 0;
    v148 = 0;
  }

  else
  {
    v56 = 0;
    v57 = &v148;
    v58 = 1;
    do
    {
      v141 = v58;
      v59 = [v48 objectAtIndexedSubscript:v56];
      v60 = [v59 objectAtIndexedSubscript:1];
      v61 = [v60 unsignedIntegerValue];
      v62 = [v48 objectAtIndexedSubscript:2];
      v63 = [v62 objectAtIndexedSubscript:1];
      v64 = [v63 unsignedIntegerValue];

      v143 = v56;
      v65 = [v48 objectAtIndexedSubscript:v56];
      v66 = [v65 objectAtIndexedSubscript:0];
      v67 = [v66 unsignedIntegerValue];
      v68 = [v48 objectAtIndexedSubscript:2];
      v69 = [v68 objectAtIndexedSubscript:0];
      v70 = [v69 unsignedIntegerValue];

      *v57 = (v61 != v64) | (2 * (v67 != v70));
      if (v67 == v70)
      {
        v71 = [&unk_284BA5FF0 copy];
        [v145 setObject:v71 atIndexedSubscript:2 * v143];

        v72 = [&unk_284BA6008 copy];
        [v145 setObject:v72 atIndexedSubscript:(2 * (v143 & 0x3FFFFFFFFFFFFFFFLL)) | 1];
      }

      else
      {
        v131 = 2 * v143;
        if (v61 == v64)
        {
          v135 = [v146 objectAtIndexedSubscript:2];
          v129 = [v135 objectAtIndexedSubscript:0];
          v151[0] = v129;
          v83 = MEMORY[0x277CCABB0];
          v127 = [v146 objectAtIndexedSubscript:v143];
          v125 = [v127 objectAtIndexedSubscript:1];
          v84 = [v125 unsignedIntegerValue];
          v85 = [v146 objectAtIndexedSubscript:v143];
          v86 = [v85 objectAtIndexedSubscript:2];
          v87 = [v83 numberWithUnsignedInteger:{objc_msgSend(v86, "unsignedIntegerValue") * v84}];
          v151[1] = v87;
          v88 = [v146 objectAtIndexedSubscript:v143];
          v89 = [v88 objectAtIndexedSubscript:3];
          v151[2] = v89;
          v90 = [MEMORY[0x277CBEA60] arrayWithObjects:v151 count:3];
          v72 = [v90 copy];

          [v145 setObject:v72 atIndexedSubscript:v131];
          v150[0] = &unk_284BA57C8;
          v91 = MEMORY[0x277CCABB0];
          v136 = [v146 objectAtIndexedSubscript:v143];
          v132 = [v136 objectAtIndexedSubscript:1];
          v92 = [v132 unsignedIntegerValue];
          v93 = [v146 objectAtIndexedSubscript:v143];
          v94 = [v93 objectAtIndexedSubscript:2];
          v95 = [v91 numberWithUnsignedInteger:{objc_msgSend(v94, "unsignedIntegerValue") * v92}];
          v150[1] = v95;
          v96 = [v146 objectAtIndexedSubscript:v143];
          v97 = [v96 objectAtIndexedSubscript:3];
          v150[2] = v97;
          v98 = [MEMORY[0x277CBEA60] arrayWithObjects:v150 count:3];
          v99 = [v98 copy];

          [v145 setObject:v99 atIndexedSubscript:(2 * (v143 & 0x3FFFFFFFFFFFFFFFLL)) | 1];
        }

        else
        {
          v73 = MEMORY[0x277CCABB0];
          v134 = [v146 objectAtIndexedSubscript:2];
          v128 = [v134 objectAtIndexedSubscript:0];
          v74 = [v128 unsignedIntegerValue];
          v126 = [v146 objectAtIndexedSubscript:2];
          v75 = [v126 objectAtIndexedSubscript:1];
          v76 = [v73 numberWithUnsignedInteger:{objc_msgSend(v75, "unsignedIntegerValue") * v74}];
          v152[0] = v76;
          v77 = [v146 objectAtIndexedSubscript:v143];
          v78 = [v77 objectAtIndexedSubscript:2];
          v152[1] = v78;
          v79 = [v146 objectAtIndexedSubscript:v143];
          v80 = [v79 objectAtIndexedSubscript:3];
          v152[2] = v80;
          v81 = [MEMORY[0x277CBEA60] arrayWithObjects:v152 count:3];
          v72 = [v81 copy];

          [v145 setObject:v72 atIndexedSubscript:v131];
          v82 = [&unk_284BA6020 copy];
          [v145 setObject:v82 atIndexedSubscript:(2 * (v143 & 0x3FFFFFFFFFFFFFFFLL)) | 1];
        }
      }

      v58 = 0;
      v57 = &v147;
      v56 = 1;
      v48 = v146;
    }

    while ((v141 & 1) != 0);
  }

  v100 = [v124 deviceList];
  v101 = [v100 count];

  if (v101)
  {
    v102 = 0;
    v104 = v147;
    v103 = v148;
    do
    {
      v105 = [v133 objectAtIndexedSubscript:v102];
      v106 = objc_opt_new();
      [v105 setLayer:v106];

      [v105 setMatrixDescs:v139];
      v107 = [v48 copy];
      [v105 setShapes:v107];

      v108 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v103];
      v149[0] = v108;
      v109 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v104];
      v149[1] = v109;
      v110 = [MEMORY[0x277CBEA60] arrayWithObjects:v149 count:2];
      v111 = [v110 copy];
      [v105 setBroadcastingFlags:v111];

      [v105 setReductionShapes:v145];
      if ([v137 count] >= 3)
      {
        v112 = [v130 descriptor];
        v113 = [v112 shape];
        v114 = [v113 count];

        v115 = [v130 descriptor];
        v116 = [v115 newShapeWithCount:v114];
        [v105 setSource0Shape:v116];

        v117 = [v137 objectAtIndexedSubscript:2];
        v118 = [v117 descriptor];
        v119 = [v118 newShapeWithCount:v114];
        [v105 setSource1Shape:v119];

        [v105 setArithmeticOp:0];
        [v105 setUseSourceGradientDeviceMemoryForResultGradientTensor:1];
      }

      ++v102;
      v120 = [v124 deviceList];
      v121 = [v120 count];

      v48 = v146;
    }

    while (v102 < v121);
  }

  v122 = *MEMORY[0x277D85DE8];
  return 1;
}

@end