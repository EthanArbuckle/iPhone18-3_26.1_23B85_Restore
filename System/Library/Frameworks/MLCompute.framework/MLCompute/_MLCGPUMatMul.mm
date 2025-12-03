@interface _MLCGPUMatMul
+ (BOOL)compileWithDevice:(id)device deviceOps:(id)ops sourceTensors:(id)tensors resultTensor:(id)tensor;
+ (id)layerWithDevice:(id)device descriptor:(id)descriptor sourceTensors:(id)tensors resultTensor:(id)tensor;
- (_MLCGPUMatMul)initWithDevice:(id)device descriptor:(id)descriptor sourceTensors:(id)tensors resultTensor:(id)tensor;
@end

@implementation _MLCGPUMatMul

+ (id)layerWithDevice:(id)device descriptor:(id)descriptor sourceTensors:(id)tensors resultTensor:(id)tensor
{
  tensorCopy = tensor;
  tensorsCopy = tensors;
  descriptorCopy = descriptor;
  deviceCopy = device;
  v14 = [[self alloc] initWithDevice:deviceCopy descriptor:descriptorCopy sourceTensors:tensorsCopy resultTensor:tensorCopy];

  return v14;
}

- (_MLCGPUMatMul)initWithDevice:(id)device descriptor:(id)descriptor sourceTensors:(id)tensors resultTensor:(id)tensor
{
  v150[3] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  descriptorCopy = descriptor;
  tensorsCopy = tensors;
  tensorCopy = tensor;
  v147.receiver = self;
  v147.super_class = _MLCGPUMatMul;
  v14 = [(_MLCGPUMatMul *)&v147 init];
  if (v14)
  {
    v113 = tensorCopy;
    deviceList = [deviceCopy deviceList];
    v133 = [deviceList count];

    v117 = [MEMORY[0x277CBEBF8] mutableCopy];
    if (([descriptorCopy transposesX] & 1) != 0 || objc_msgSend(descriptorCopy, "transposesY"))
    {
      if ([descriptorCopy transposesX] && !objc_msgSend(descriptorCopy, "transposesY"))
      {
        v140 = 0;
        v134 = 1;
      }

      else if (([descriptorCopy transposesX] & 1) != 0 || (objc_msgSend(descriptorCopy, "transposesY") & 1) == 0)
      {
        if ([descriptorCopy transposesX] && objc_msgSend(descriptorCopy, "transposesY"))
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

    v116 = ([descriptorCopy transposesX] & 1) == 0 && (objc_msgSend(descriptorCopy, "transposesY") & 1) != 0 || (objc_msgSend(descriptorCopy, "transposesX") & 1) == 0 && (objc_msgSend(descriptorCopy, "transposesY") & 1) == 0;
    v135 = deviceCopy;
    v143 = descriptorCopy;
    v115 = [descriptorCopy transposesX] && !objc_msgSend(descriptorCopy, "transposesY") || (objc_msgSend(descriptorCopy, "transposesX") & 1) == 0 && (objc_msgSend(descriptorCopy, "transposesY") & 1) == 0;
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
        v22 = [tensorsCopy objectAtIndexedSubscript:v16];
        descriptor = [v22 descriptor];
        v24 = [descriptor dimensionCount] - 2;

        if (v19 >= v24)
        {
          break;
        }

        v25 = [tensorsCopy objectAtIndexedSubscript:v16];
        descriptor2 = [v25 descriptor];
        shape = [descriptor2 shape];
        v28 = [shape objectAtIndexedSubscript:v19];
        v21 *= [v28 unsignedIntegerValue];
        *v17 = v21;

        ++v19;
      }

      v18 = 0;
      v17 = &v145;
      v16 = 1;
    }

    while ((v20 & 1) != 0);
    deviceCopy = v135;
    descriptorCopy = v143;
    if (v133)
    {
      v29 = 0;
      v131 = v145;
      v132 = v146;
      do
      {
        deviceList2 = [deviceCopy deviceList];
        v141 = v29;
        v31 = [deviceList2 objectAtIndexedSubscript:v29];

        v142 = v31;
        if (v132 == v131)
        {
          v32 = [tensorsCopy objectAtIndexedSubscript:0];
          descriptor3 = [v32 descriptor];
          v34 = descriptorCopy;
          v35 = [descriptor3 dimensionCount] - 2;

          v36 = [tensorsCopy objectAtIndexedSubscript:0];
          descriptor4 = [v36 descriptor];
          v137 = [descriptor4 dimensionCount] - 1;

          v38 = [tensorsCopy objectAtIndexedSubscript:1];
          descriptor5 = [v38 descriptor];
          dimensionCount = [descriptor5 dimensionCount];

          v41 = [tensorsCopy objectAtIndexedSubscript:1];
          descriptor6 = [v41 descriptor];
          v43 = [descriptor6 dimensionCount] - 1;

          v44 = [tensorsCopy objectAtIndexedSubscript:0];
          descriptor7 = [v44 descriptor];
          shape2 = [descriptor7 shape];
          v47 = [shape2 objectAtIndexedSubscript:v35];

          v48 = [tensorsCopy objectAtIndexedSubscript:1];
          descriptor8 = [v48 descriptor];
          shape3 = [descriptor8 shape];
          v130 = v43;
          v51 = [shape3 objectAtIndexedSubscript:v43];

          LODWORD(shape3) = [v34 transposesX];
          v52 = [tensorsCopy objectAtIndexedSubscript:0];
          descriptor9 = [v52 descriptor];
          shape4 = [descriptor9 shape];
          shape5 = shape4;
          v128 = v35;
          if (shape3)
          {
            v56 = [shape4 objectAtIndexedSubscript:v35];
            unsignedIntegerValue = [v56 unsignedIntegerValue];

            v52 = [tensorsCopy objectAtIndexedSubscript:0];
            descriptor9 = [v52 descriptor];
            shape5 = [descriptor9 shape];
            v57 = v137;
            [shape5 objectAtIndexedSubscript:?];
            v47 = v58 = v47;
          }

          else
          {
            v57 = v137;
            v58 = [shape4 objectAtIndexedSubscript:?];
            unsignedIntegerValue = [v58 unsignedIntegerValue];
          }

          v136 = dimensionCount - 2;

          if ([v143 transposesY])
          {
            v63 = [tensorsCopy objectAtIndexedSubscript:1];
            descriptor10 = [v63 descriptor];
            shape6 = [descriptor10 shape];
            v66 = [shape6 objectAtIndexedSubscript:v136];

            v51 = v66;
          }

          v67 = v57;
          v68 = objc_alloc(MEMORY[0x277CD75E0]);
          transposesX = [v143 transposesX];
          transposesY = [v143 transposesY];
          unsignedIntegerValue2 = [v47 unsignedIntegerValue];
          v138 = v47;
          unsignedIntegerValue3 = [v51 unsignedIntegerValue];
          [v143 alpha];
          v127 = [v68 initWithDevice:v142 transposeLeft:transposesX transposeRight:transposesY resultRows:unsignedIntegerValue2 resultColumns:unsignedIntegerValue3 interiorColumns:unsignedIntegerValue alpha:v73 beta:0.0];
          v118 = objc_alloc(MEMORY[0x277CD75E0]);
          v123 = [tensorsCopy objectAtIndexedSubscript:0];
          descriptor11 = [v123 descriptor];
          shape7 = [descriptor11 shape];
          v74 = [shape7 objectAtIndexedSubscript:v128];
          unsignedIntegerValue4 = [v74 unsignedIntegerValue];
          v76 = [tensorsCopy objectAtIndexedSubscript:0];
          descriptor12 = [v76 descriptor];
          shape8 = [descriptor12 shape];
          [shape8 objectAtIndexedSubscript:v67];
          v79 = v51;
          v80 = v125 = v51;
          unsignedIntegerValue5 = [v80 unsignedIntegerValue];
          unsignedIntegerValue6 = [v79 unsignedIntegerValue];
          [v143 alpha];
          v129 = [v118 initWithDevice:v142 transposeLeft:v140 transposeRight:v134 resultRows:unsignedIntegerValue4 resultColumns:unsignedIntegerValue5 interiorColumns:unsignedIntegerValue6 alpha:v83 beta:0.0];

          v120 = objc_alloc(MEMORY[0x277CD75E0]);
          v124 = [tensorsCopy objectAtIndexedSubscript:1];
          descriptor13 = [v124 descriptor];
          shape9 = [descriptor13 shape];
          v85 = [shape9 objectAtIndexedSubscript:v136];
          unsignedIntegerValue7 = [v85 unsignedIntegerValue];
          v87 = [tensorsCopy objectAtIndexedSubscript:1];
          descriptor14 = [v87 descriptor];
          shape10 = [descriptor14 shape];
          v90 = [shape10 objectAtIndexedSubscript:v130];
          unsignedIntegerValue8 = [v90 unsignedIntegerValue];
          unsignedIntegerValue9 = [v138 unsignedIntegerValue];
          [v143 alpha];
          v94 = unsignedIntegerValue7;
          descriptorCopy = v143;
          v95 = [v120 initWithDevice:v142 transposeLeft:HIDWORD(v134) transposeRight:v140 resultRows:v94 resultColumns:unsignedIntegerValue8 interiorColumns:unsignedIntegerValue9 alpha:v93 beta:0.0];

          v62 = [MLCMatMulGPUDeviceOps deviceOpsWithForwardKernel:v127 gradientKernel:v129 secondaryGradientKernel:v95];

          v59 = 0;
          v61 = 0;
          deviceCopy = v135;
          if (!v62)
          {
            goto LABEL_44;
          }
        }

        else
        {
          v59 = [objc_alloc(MEMORY[0x277CD7608]) initWithDevice:v31 sourceCount:2];
          [descriptorCopy alpha];
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
        v96 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(descriptorCopy, "transposesX")}];
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

        deviceCopy = v135;
        descriptorCopy = v143;

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

    tensorCopy = v113;
  }

  v111 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (BOOL)compileWithDevice:(id)device deviceOps:(id)ops sourceTensors:(id)tensors resultTensor:(id)tensor
{
  v154[3] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  opsCopy = ops;
  tensorsCopy = tensors;
  tensorCopy = tensor;
  v11 = [tensorsCopy objectAtIndexedSubscript:0];
  v154[0] = v11;
  v137 = tensorsCopy;
  v12 = [tensorsCopy objectAtIndexedSubscript:1];
  v154[1] = v12;
  v154[2] = tensorCopy;
  v130 = tensorCopy;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v154 count:3];

  v14 = MEMORY[0x277CBEBF8];
  v139 = [MEMORY[0x277CBEBF8] mutableCopy];
  v15 = 0;
  v146 = [v14 mutableCopy];
  v138 = v13;
  do
  {
    v16 = [v13 objectAtIndexedSubscript:v15];
    descriptor = [v16 descriptor];
    v18 = [descriptor dimensionCount] - 1;

    v19 = [v13 objectAtIndexedSubscript:v15];
    descriptor2 = [v19 descriptor];
    v21 = [descriptor2 dimensionCount] - 2;

    v22 = [v13 objectAtIndexedSubscript:v15];
    descriptor3 = [v22 descriptor];
    shape = [descriptor3 shape];
    v25 = [shape objectAtIndexedSubscript:v21];
    unsignedIntegerValue = [v25 unsignedIntegerValue];

    v26 = [v13 objectAtIndexedSubscript:v15];
    descriptor4 = [v26 descriptor];
    shape2 = [descriptor4 shape];
    v29 = [shape2 objectAtIndexedSubscript:v18];
    unsignedIntegerValue2 = [v29 unsignedIntegerValue];

    v30 = [v13 objectAtIndexedSubscript:v15];
    descriptor5 = [v30 descriptor];
    stride = [descriptor5 stride];
    v33 = [stride objectAtIndexedSubscript:v18];
    unsignedIntegerValue3 = [v33 unsignedIntegerValue];

    v153[v15] = 1;
    v34 = 1;
    if (v21)
    {
      v35 = 0;
      v34 = 1;
      do
      {
        v36 = [v13 objectAtIndexedSubscript:v15];
        descriptor6 = [v36 descriptor];
        shape3 = [descriptor6 shape];
        v39 = [shape3 objectAtIndexedSubscript:v35];
        v34 *= [v39 unsignedIntegerValue];
        v153[v15] = v34;

        ++v35;
      }

      while (v21 != v35);
    }

    v40 = [v13 objectAtIndexedSubscript:v15];
    descriptor7 = [v40 descriptor];
    shape4 = [descriptor7 shape];
    v43 = [shape4 mutableCopy];
    [v146 setObject:v43 atIndexedSubscript:v15];

    v44 = [v13 objectAtIndexedSubscript:v15];
    descriptor8 = [v44 descriptor];
    shape5 = [descriptor8 shape];
    v47 = [shape5 count];

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
    descriptor9 = [v52 descriptor];
    DataType = GPU_GetDataType([descriptor9 dataType]);

    v55 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:unsignedIntegerValue columns:unsignedIntegerValue2 matrices:v34 rowBytes:unsignedIntegerValue3 * unsignedIntegerValue2 matrixBytes:unsignedIntegerValue3 * unsignedIntegerValue2 * unsignedIntegerValue dataType:DataType];
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
      unsignedIntegerValue4 = [v60 unsignedIntegerValue];
      v62 = [v48 objectAtIndexedSubscript:2];
      v63 = [v62 objectAtIndexedSubscript:1];
      unsignedIntegerValue5 = [v63 unsignedIntegerValue];

      v143 = v56;
      v65 = [v48 objectAtIndexedSubscript:v56];
      v66 = [v65 objectAtIndexedSubscript:0];
      unsignedIntegerValue6 = [v66 unsignedIntegerValue];
      v68 = [v48 objectAtIndexedSubscript:2];
      v69 = [v68 objectAtIndexedSubscript:0];
      unsignedIntegerValue7 = [v69 unsignedIntegerValue];

      *v57 = (unsignedIntegerValue4 != unsignedIntegerValue5) | (2 * (unsignedIntegerValue6 != unsignedIntegerValue7));
      if (unsignedIntegerValue6 == unsignedIntegerValue7)
      {
        v71 = [&unk_284BA5FF0 copy];
        [v145 setObject:v71 atIndexedSubscript:2 * v143];

        v72 = [&unk_284BA6008 copy];
        [v145 setObject:v72 atIndexedSubscript:(2 * (v143 & 0x3FFFFFFFFFFFFFFFLL)) | 1];
      }

      else
      {
        v131 = 2 * v143;
        if (unsignedIntegerValue4 == unsignedIntegerValue5)
        {
          v135 = [v146 objectAtIndexedSubscript:2];
          v129 = [v135 objectAtIndexedSubscript:0];
          v151[0] = v129;
          v83 = MEMORY[0x277CCABB0];
          v127 = [v146 objectAtIndexedSubscript:v143];
          v125 = [v127 objectAtIndexedSubscript:1];
          unsignedIntegerValue8 = [v125 unsignedIntegerValue];
          v85 = [v146 objectAtIndexedSubscript:v143];
          v86 = [v85 objectAtIndexedSubscript:2];
          v87 = [v83 numberWithUnsignedInteger:{objc_msgSend(v86, "unsignedIntegerValue") * unsignedIntegerValue8}];
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
          unsignedIntegerValue9 = [v132 unsignedIntegerValue];
          v93 = [v146 objectAtIndexedSubscript:v143];
          v94 = [v93 objectAtIndexedSubscript:2];
          v95 = [v91 numberWithUnsignedInteger:{objc_msgSend(v94, "unsignedIntegerValue") * unsignedIntegerValue9}];
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
          unsignedIntegerValue10 = [v128 unsignedIntegerValue];
          v126 = [v146 objectAtIndexedSubscript:2];
          v75 = [v126 objectAtIndexedSubscript:1];
          v76 = [v73 numberWithUnsignedInteger:{objc_msgSend(v75, "unsignedIntegerValue") * unsignedIntegerValue10}];
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

  deviceList = [deviceCopy deviceList];
  v101 = [deviceList count];

  if (v101)
  {
    v102 = 0;
    v104 = v147;
    v103 = v148;
    do
    {
      v105 = [opsCopy objectAtIndexedSubscript:v102];
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
        descriptor10 = [v130 descriptor];
        shape6 = [descriptor10 shape];
        v114 = [shape6 count];

        descriptor11 = [v130 descriptor];
        v116 = [descriptor11 newShapeWithCount:v114];
        [v105 setSource0Shape:v116];

        v117 = [v137 objectAtIndexedSubscript:2];
        descriptor12 = [v117 descriptor];
        v119 = [descriptor12 newShapeWithCount:v114];
        [v105 setSource1Shape:v119];

        [v105 setArithmeticOp:0];
        [v105 setUseSourceGradientDeviceMemoryForResultGradientTensor:1];
      }

      ++v102;
      deviceList2 = [deviceCopy deviceList];
      v121 = [deviceList2 count];

      v48 = v146;
    }

    while (v102 < v121);
  }

  v122 = *MEMORY[0x277D85DE8];
  return 1;
}

@end