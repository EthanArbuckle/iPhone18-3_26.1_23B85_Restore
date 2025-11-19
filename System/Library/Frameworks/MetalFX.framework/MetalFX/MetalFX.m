void sub_23989F768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, void *a29, void *a30, void *a31, void *a32, void *a33, uint64_t a34, void *a35, void *a36, void *a37, void *a38, void *a39, void *a40)
{
  MFXDevice3::~MFXDevice3((v42 - 160));

  _Unwind_Resume(a1);
}

id WEAK_CADeveloperHUDProperties(void)
{
  v0 = NSSelectorFromString(&cfstr_Instance.isa);
  v1 = NSClassFromString(&cfstr_Cadeveloperhud.isa);
  if (v1)
  {
    v1 = ([v1 methodForSelector:v0])(v1, v0);
  }

  return v1;
}

id EmitUBF_Net_V3_getMPSGraphExecutable(void *a1, void *a2, void *a3, void *a4, unsigned int *a5)
{
  v210[4] = *MEMORY[0x277D85DE8];
  v200 = a1;
  v129 = a2;
  v9 = a3;
  v167 = a4;
  v128 = v9;
  v10 = objc_opt_new();
  v12 = a5[3];
  v11 = a5[4];
  v210[0] = &unk_284C62118;
  v210[1] = &unk_284C62130;
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v11];
  v210[2] = v13;
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v12];
  v210[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v210 count:4];
  v198 = [v10 placeholderWithShape:v15 dataType:268435472 name:@"tensor0"];

  v209 = xmmword_2398F2710;
  v16 = [MEMORY[0x277CBEA90] dataWithBytes:&v209 length:16];
  v199 = [v10 constantWithData:v16 shape:&unk_284C623E8 dataType:536870944];

  v17 = [v200 subdataWithRange:{0, 16}];
  v194 = [v10 constantWithData:v17 shape:&unk_284C62400 dataType:268435472];

  v18 = [v200 subdataWithRange:{16, 2880}];
  v193 = [v10 constantWithData:v18 shape:&unk_284C62418 dataType:268435472];

  v19 = [v200 subdataWithRange:{2896, 64}];
  v192 = [v10 constantWithData:v19 shape:&unk_284C62430 dataType:268435472];

  v20 = [v200 subdataWithRange:{2960, 18432}];
  v191 = [v10 constantWithData:v20 shape:&unk_284C62448 dataType:268435472];

  v21 = [v200 subdataWithRange:{21392, 64}];
  v190 = [v10 constantWithData:v21 shape:&unk_284C62460 dataType:268435472];

  v22 = [v200 subdataWithRange:{21456, 18432}];
  v189 = [v10 constantWithData:v22 shape:&unk_284C62478 dataType:268435472];

  v23 = [v200 subdataWithRange:{39888, 128}];
  v188 = [v10 constantWithData:v23 shape:&unk_284C62490 dataType:268435472];

  v24 = [v200 subdataWithRange:{40016, 36864}];
  v187 = [v10 constantWithData:v24 shape:&unk_284C624A8 dataType:268435472];

  v25 = [v200 subdataWithRange:{76880, 256}];
  v186 = [v10 constantWithData:v25 shape:&unk_284C624C0 dataType:268435472];

  v26 = [v200 subdataWithRange:{77136, 147456}];
  v185 = [v10 constantWithData:v26 shape:&unk_284C624D8 dataType:268435472];

  v27 = [v200 subdataWithRange:{224592, 256}];
  v184 = [v10 constantWithData:v27 shape:&unk_284C624F0 dataType:268435472];

  v28 = [v200 subdataWithRange:{224848, 0x8000}];
  v183 = [v10 constantWithData:v28 shape:&unk_284C62508 dataType:268435472];

  v29 = [v200 subdataWithRange:{257616, 128}];
  v182 = [v10 constantWithData:v29 shape:&unk_284C62520 dataType:268435472];

  v30 = [v200 subdataWithRange:{257744, 0x4000}];
  v181 = [v10 constantWithData:v30 shape:&unk_284C62538 dataType:268435472];

  v31 = [v200 subdataWithRange:{274128, 16}];
  v127 = [v10 constantWithData:v31 shape:&unk_284C62550 dataType:536870944];

  v32 = [v200 subdataWithRange:{274144, 128}];
  v178 = [v10 constantWithData:v32 shape:&unk_284C62568 dataType:268435472];

  v33 = [v200 subdataWithRange:{274272, 0x2000}];
  v177 = [v10 constantWithData:v33 shape:&unk_284C62580 dataType:268435472];

  v34 = [v200 subdataWithRange:{282464, 64}];
  v173 = [v10 constantWithData:v34 shape:&unk_284C62598 dataType:268435472];

  v35 = [v200 subdataWithRange:{282528, 4096}];
  v172 = [v10 constantWithData:v35 shape:&unk_284C625B0 dataType:268435472];

  v36 = [v200 subdataWithRange:{286624, 16}];
  v126 = [v10 constantWithData:v36 shape:&unk_284C625C8 dataType:536870944];

  v37 = [v200 subdataWithRange:{286640, 64}];
  v164 = [v10 constantWithData:v37 shape:&unk_284C625E0 dataType:268435472];

  v38 = [v200 subdataWithRange:{286704, 2048}];
  v163 = [v10 constantWithData:v38 shape:&unk_284C625F8 dataType:268435472];

  v39 = [v200 subdataWithRange:{288752, 32}];
  v159 = [v10 constantWithData:v39 shape:&unk_284C62610 dataType:268435472];

  v40 = [v200 subdataWithRange:{288784, 1024}];
  v157 = [v10 constantWithData:v40 shape:&unk_284C62628 dataType:268435472];

  v41 = [v200 subdataWithRange:{289808, 16}];
  v125 = [v10 constantWithData:v41 shape:&unk_284C62640 dataType:536870944];

  v42 = [v200 subdataWithRange:{289824, 64}];
  v154 = [v10 constantWithData:v42 shape:&unk_284C62658 dataType:268435472];

  v43 = [v200 subdataWithRange:{289888, 1024}];
  v152 = [v10 constantWithData:v43 shape:&unk_284C62670 dataType:268435472];

  v44 = [v200 subdataWithRange:{290912, 32}];
  v150 = [v10 constantWithData:v44 shape:&unk_284C62688 dataType:268435472];

  v45 = [v200 subdataWithRange:{290944, 1024}];
  v149 = [v10 constantWithData:v45 shape:&unk_284C626A0 dataType:268435472];

  v124 = [v10 constantWithScalar:&unk_284C626B8 shape:536870944 dataType:0.0];
  v46 = [v200 subdataWithRange:{291968, 32}];
  v145 = [v10 constantWithData:v46 shape:&unk_284C626D0 dataType:268435472];

  v47 = [v200 subdataWithRange:{292000, 512}];
  v143 = [v10 constantWithData:v47 shape:&unk_284C626E8 dataType:268435472];

  v123 = [v10 constantWithScalar:&unk_284C62700 shape:536870944 dataType:1.0];
  v48 = [v200 subdataWithRange:{292512, 88}];
  v139 = [v10 constantWithData:v48 shape:&unk_284C62718 dataType:268435472];

  v49 = [v200 subdataWithRange:{292600, 12672}];
  v138 = [v10 constantWithData:v49 shape:&unk_284C62730 dataType:268435472];

  v136 = [v10 constantWithScalar:MEMORY[0x277CBEBF8] shape:536870944 dataType:-1.0];
  v135 = [v10 constantWithScalar:MEMORY[0x277CBEBF8] shape:536870944 dataType:-2.0];
  v134 = [v10 constantWithScalar:MEMORY[0x277CBEBF8] shape:536870944 dataType:-3.0];
  v180 = [v10 castTensor:v198 toType:268435472 name:@"tensor39"];
  v119 = [MEMORY[0x277CD7818] descriptorWithStrideInX:2 strideInY:2 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:2 paddingRight:2 paddingTop:2 paddingBottom:2 paddingStyle:0 dataLayout:0 weightsLayout:3];
  v179 = [v10 convolution2DWithSourceTensor:v180 weightsTensor:v193 descriptor:? name:?];
  v118 = [v10 reshapeTensor:v194 withShape:&unk_284C62748 name:@"tensor41_biasReshape"];
  v117 = [v10 additionWithPrimaryTensor:v179 secondaryTensor:? name:?];
  v176 = [v10 reLUWithTensor:? name:?];
  v116 = [MEMORY[0x277CD7818] descriptorWithStrideInX:2 strideInY:2 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:2 paddingRight:2 paddingTop:2 paddingBottom:2 paddingStyle:0 dataLayout:0 weightsLayout:3];
  v175 = [v10 convolution2DWithSourceTensor:v176 weightsTensor:v191 descriptor:? name:?];
  v115 = [v10 reshapeTensor:v192 withShape:&unk_284C62760 name:@"tensor44_biasReshape"];
  v114 = [v10 additionWithPrimaryTensor:v175 secondaryTensor:? name:?];
  v196 = [v10 reLUWithTensor:? name:?];
  v113 = [MEMORY[0x277CD7818] descriptorWithStrideInX:2 strideInY:2 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:1 paddingRight:1 paddingTop:1 paddingBottom:1 paddingStyle:0 dataLayout:0 weightsLayout:3];
  v174 = [v10 convolution2DWithSourceTensor:v196 weightsTensor:v189 descriptor:? name:?];
  v112 = [v10 reshapeTensor:v190 withShape:&unk_284C62778 name:@"tensor47_biasReshape"];
  v111 = [v10 additionWithPrimaryTensor:v174 secondaryTensor:? name:?];
  v195 = [v10 reLUWithTensor:? name:?];
  v110 = [MEMORY[0x277CD7818] descriptorWithStrideInX:2 strideInY:2 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:1 paddingRight:1 paddingTop:1 paddingBottom:1 paddingStyle:0 dataLayout:0 weightsLayout:3];
  v171 = [v10 convolution2DWithSourceTensor:v195 weightsTensor:v187 descriptor:? name:?];
  v109 = [v10 reshapeTensor:v188 withShape:&unk_284C62790 name:@"tensor50_biasReshape"];
  v108 = [v10 additionWithPrimaryTensor:v171 secondaryTensor:? name:?];
  v197 = [v10 reLUWithTensor:? name:?];
  v107 = [MEMORY[0x277CD7818] descriptorWithStrideInX:2 strideInY:2 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:1 paddingRight:1 paddingTop:1 paddingBottom:1 paddingStyle:0 dataLayout:0 weightsLayout:3];
  v170 = [v10 convolution2DWithSourceTensor:v197 weightsTensor:v185 descriptor:? name:?];
  v106 = [v10 reshapeTensor:v186 withShape:&unk_284C627A8 name:@"tensor53_biasReshape"];
  v105 = [v10 additionWithPrimaryTensor:v170 secondaryTensor:? name:?];
  v169 = [v10 reLUWithTensor:? name:?];
  v104 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:1 dataLayout:0 weightsLayout:3];
  v168 = [v10 convolution2DWithSourceTensor:v169 weightsTensor:v183 descriptor:? name:?];
  v103 = [v10 reshapeTensor:v184 withShape:&unk_284C627C0 name:@"tensor56_biasReshape"];
  v102 = [v10 additionWithPrimaryTensor:v168 secondaryTensor:? name:?];
  v166 = [v10 reLUWithTensor:? name:?];
  v101 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:1 dataLayout:0 weightsLayout:3];
  v165 = [v10 convolution2DWithSourceTensor:v166 weightsTensor:v181 descriptor:? name:?];
  v100 = [v10 reshapeTensor:v182 withShape:&unk_284C627D8 name:@"tensor59_biasReshape"];
  v99 = [v10 additionWithPrimaryTensor:v165 secondaryTensor:? name:?];
  v162 = [v10 reLUWithTensor:? name:?];
  v98 = [v10 shapeOfTensor:? name:?];
  v97 = [v10 multiplicationWithPrimaryTensor:? secondaryTensor:? name:?];
  v96 = [v10 resizeBilinearWithTensor:v162 sizeTensor:? centerResult:? alignCorners:? name:?];
  v161 = [v10 additionWithPrimaryTensor:? secondaryTensor:? name:?];
  v95 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:1 dataLayout:0 weightsLayout:3];
  v160 = [v10 convolution2DWithSourceTensor:v161 weightsTensor:v177 descriptor:? name:?];
  v94 = [v10 reshapeTensor:v178 withShape:&unk_284C627F0 name:@"tensor64_biasReshape"];
  v93 = [v10 additionWithPrimaryTensor:v160 secondaryTensor:? name:?];
  v158 = [v10 reLUWithTensor:? name:?];
  v92 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:1 dataLayout:0 weightsLayout:3];
  v156 = [v10 convolution2DWithSourceTensor:v158 weightsTensor:v172 descriptor:? name:?];
  v91 = [v10 reshapeTensor:v173 withShape:&unk_284C62808 name:@"tensor67_biasReshape"];
  v90 = [v10 additionWithPrimaryTensor:v156 secondaryTensor:? name:?];
  v155 = [v10 reLUWithTensor:? name:?];
  v120 = [v10 shapeOfTensor:? name:?];
  v121 = [v10 multiplicationWithPrimaryTensor:? secondaryTensor:? name:?];
  v122 = [v10 resizeBilinearWithTensor:v155 sizeTensor:? centerResult:? alignCorners:? name:?];
  v153 = [v10 additionWithPrimaryTensor:? secondaryTensor:? name:?];
  v208[0] = &unk_284C62118;
  v208[1] = &unk_284C621F0;
  v50 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a5[12] >> 1];
  v208[2] = v50;
  v51 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a5[11] >> 1];
  v208[3] = v51;
  v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v208 count:4];
  LODWORD(v68) = 0;
  v146 = [v10 sliceTensor:v196 starts:&unk_284C62820 ends:v52 strides:&unk_284C62838 startMask:0 endMask:13 squeezeMask:v68 name:@"tensor71"];

  v89 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:1 dataLayout:0 weightsLayout:3];
  v151 = [v10 convolution2DWithSourceTensor:v153 weightsTensor:v163 descriptor:? name:?];
  v88 = [v10 reshapeTensor:v164 withShape:&unk_284C62850 name:@"tensor73_biasReshape"];
  v87 = [v10 additionWithPrimaryTensor:v151 secondaryTensor:? name:?];
  v148 = [v10 reLUWithTensor:? name:?];
  v86 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:1 dataLayout:0 weightsLayout:3];
  v147 = [v10 convolution2DWithSourceTensor:v148 weightsTensor:v157 descriptor:? name:?];
  v85 = [v10 reshapeTensor:v159 withShape:&unk_284C62868 name:@"tensor76_biasReshape"];
  v84 = [v10 additionWithPrimaryTensor:v147 secondaryTensor:? name:?];
  v144 = [v10 reLUWithTensor:? name:?];
  v83 = [v10 shapeOfTensor:? name:?];
  v82 = [v10 multiplicationWithPrimaryTensor:? secondaryTensor:? name:?];
  v81 = [v10 resizeBilinearWithTensor:v144 sizeTensor:? centerResult:? alignCorners:? name:?];
  v142 = [v10 additionWithPrimaryTensor:? secondaryTensor:? name:?];
  v80 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:1 dataLayout:0 weightsLayout:3];
  v141 = [v10 convolution2DWithSourceTensor:v142 weightsTensor:v152 descriptor:? name:?];
  v79 = [v10 reshapeTensor:v154 withShape:&unk_284C62880 name:@"tensor81_biasReshape"];
  v78 = [v10 additionWithPrimaryTensor:v141 secondaryTensor:? name:?];
  v140 = [v10 reLUWithTensor:? name:?];
  v77 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:1 dataLayout:0 weightsLayout:3];
  v76 = [v10 convolution2DWithSourceTensor:v140 weightsTensor:v149 descriptor:v77 name:@"tensor83"];
  v75 = [v10 reshapeTensor:v150 withShape:&unk_284C62898 name:@"tensor84_biasReshape"];
  v74 = [v10 additionWithPrimaryTensor:v76 secondaryTensor:? name:?];
  v137 = [v10 reLUWithTensor:? name:?];
  v73 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:1 dataLayout:0 weightsLayout:3];
  v133 = [v10 convolution2DWithSourceTensor:v137 weightsTensor:v143 descriptor:? name:?];
  v72 = [v10 reshapeTensor:v145 withShape:&unk_284C628B0 name:@"tensor87_biasReshape"];
  v71 = [v10 additionWithPrimaryTensor:v133 secondaryTensor:? name:?];
  v132 = [v10 reLUWithTensor:? name:?];
  v70 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:1 paddingRight:1 paddingTop:1 paddingBottom:1 paddingStyle:0 dataLayout:0 weightsLayout:3];
  v131 = [v10 convolution2DWithSourceTensor:v132 weightsTensor:v138 descriptor:? name:?];
  v53 = [v10 reshapeTensor:v139 withShape:&unk_284C628C8 name:@"tensor90_biasReshape"];
  v54 = [v10 additionWithPrimaryTensor:v131 secondaryTensor:v53 name:@"tensor90"];
  v55 = [v10 depthToSpace2DTensor:v54 widthAxisTensor:v136 heightAxisTensor:v135 depthAxisTensor:v134 blockSize:2 usePixelShuffleOrder:1 name:@"tensor91"];
  v56 = [v10 sigmoidWithTensor:v55 name:@"tensor92"];
  v57 = [v10 castTensor:v56 toType:268435472 name:@"tensor93"];
  v207 = v57;
  v58 = [MEMORY[0x277CBEA60] arrayWithObjects:&v207 count:1];
  v205 = v198;
  v59 = objc_alloc(MEMORY[0x277CD7880]);
  v60 = [v198 shape];
  v61 = [v59 initWithShape:v60 dataType:{objc_msgSend(v198, "dataType")}];
  v206 = v61;
  v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v206 forKeys:&v205 count:1];

  v130 = [v10 compileWithDevice:0 feeds:v62 targetTensors:v58 targetOperations:0 compilationDescriptor:v167];
  v63 = [v130 feedTensors];
  v203[0] = MEMORY[0x277D85DD0];
  v203[1] = 3221225472;
  v203[2] = ___ZL36EmitUBF_Net_V3_getMPSGraphExecutableP6NSDataP14NSMutableArrayIP18MPSGraphShapedTypeES5_P29MPSGraphCompilationDescriptorRK16UBFNetDescriptor_block_invoke;
  v203[3] = &unk_278AA4BE8;
  v69 = v129;
  v204 = v69;
  [v63 enumerateObjectsUsingBlock:v203];

  v64 = [v130 targetTensors];
  v201[0] = MEMORY[0x277D85DD0];
  v201[1] = 3221225472;
  v201[2] = ___ZL36EmitUBF_Net_V3_getMPSGraphExecutableP6NSDataP14NSMutableArrayIP18MPSGraphShapedTypeES5_P29MPSGraphCompilationDescriptorRK16UBFNetDescriptor_block_invoke_2;
  v201[3] = &unk_278AA4BE8;
  v65 = v128;
  v202 = v65;
  [v64 enumerateObjectsUsingBlock:v201];

  v66 = *MEMORY[0x277D85DE8];

  return v130;
}

void MPSGraphMPSGraphExecutableWrapper::prewarm(uint64_t a1, void *a2, void *a3, void *a4, char a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10)
{
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a7;
  v21 = a8;
  if (a5)
  {
    v22 = dispatch_group_create();
    v23 = *(a1 + 40);
    *(a1 + 40) = v22;

    *(a1 + 48) = 0;
    dispatch_group_enter(*(a1 + 40));
    v24 = *(a1 + 40);
    v25 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___ZN33MPSGraphMPSGraphExecutableWrapper7prewarmEPU26objcproto15MTLCommandQueue11objc_objectP18MPSGraphTensorDataS3_byPU18objcproto8MTLEvent11objc_objectS5_yy_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    dispatch_group_notify(v24, v25, block);

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = ___ZN33MPSGraphMPSGraphExecutableWrapper7prewarmEPU26objcproto15MTLCommandQueue11objc_objectP18MPSGraphTensorDataS3_byPU18objcproto8MTLEvent11objc_objectS5_yy_block_invoke_2;
    v26[3] = &unk_278AA4C30;
    v32 = a1;
    v33 = a6;
    v27 = v19;
    v28 = v18;
    v36 = 1;
    v29 = v20;
    v34 = a9;
    v30 = v21;
    v35 = a10;
    v31 = v17;
    dispatch_async(v25, v26);
  }

  else
  {
    *(a1 + 48) = 1;
  }
}

void MPSGraphMPSGraphExecutableWrapper::run(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, int a6, void *a7, void *a8, uint64_t a9, uint64_t a10)
{
  v42[1] = *MEMORY[0x277D85DE8];
  v33 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a7;
  v20 = a8;
  if (*a1)
  {
    v21 = objc_opt_new();
    [v21 setWaitUntilCompleted:a5];
    if (v19 && a6)
    {
      [v21 waitForANEPrePowerUpEvent:v19 value:a9];
    }

    if (v20)
    {
      [v21 waitForEvent:v20 value:a9];
      [v21 signalEvent:v20 atExecutionEvent:0 value:a10];
    }

    if (a6)
    {
      NSSelectorFromString(&cfstr_Compilationdes.isa);
      if (objc_opt_respondsToSelector())
      {
        v22 = objc_opt_new();
        [v22 setOptimizationLevel:1];
        [v22 setOptimizationProfile:1];
        [v22 setAneCompilerSpatialSplitting:3];
        [v22 setEnableANELateLatch:1];
        [v22 setEnableANEFWToFWSignal:1];
        [v21 setCompilationDescriptor:v22];
      }
    }

    v41 = *(a1 + 32);
    v42[0] = v18;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:&v41 count:{1, v33}];
    v39 = *(a1 + 24);
    v40 = v17;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    [*a1 runAsyncWithMTLCommandQueue:v34 feeds:v24 targetOperations:0 resultsDictionary:v23 executionDescriptor:v21];
  }

  else if (a6)
  {
    v25 = objc_alloc(MEMORY[0x277CD7850]);
    v26 = objc_opt_new();
    v21 = [v25 initWithGraphExecutionDescriptor:v26];

    [v21 setWaitUntilCompleted:a5];
    if (v19 && *(a1 + 48) == 1)
    {
      [v21 waitForANEPrePowerUpEvent:v19 value:a9];
    }

    if (v20)
    {
      [v21 waitForEvent:v20 value:a9];
      [v21 signalEvent:v20 atExecutionEvent:0 value:a10];
    }

    v38 = v18;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:{1, v33}];
    v37 = v17;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
    v27 = 16;
    if (*(a1 + 48))
    {
      v27 = 8;
    }

    v28 = [*(a1 + v27) runAsyncWithMTLCommandQueue:v34 inputsArray:v24 resultsArray:v23 executionDescriptor:v21];
  }

  else
  {
    v29 = objc_alloc(MEMORY[0x277CD7850]);
    v30 = objc_opt_new();
    v21 = [v29 initWithGraphExecutionDescriptor:v30];

    [v21 setWaitUntilCompleted:a5];
    if (v20)
    {
      [v21 waitForEvent:v20 value:a9];
      [v21 signalEvent:v20 atExecutionEvent:0 value:a10];
    }

    v36 = v18;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:{1, v33}];
    v35 = v17;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
    v31 = [*(a1 + 16) runAsyncWithMTLCommandQueue:v34 inputsArray:v24 resultsArray:v23 executionDescriptor:v21];
  }

  v32 = *MEMORY[0x277D85DE8];
}

id EmitDBF_Net_V3_2_getMPSGraphExecutable(void *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v203[4] = *MEMORY[0x277D85DE8];
  v194 = a1;
  v124 = a2;
  v9 = a3;
  v162 = a4;
  v123 = v9;
  v10 = objc_opt_new();
  v203[0] = &unk_284C62118;
  v203[1] = &unk_284C62250;
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a5 + 16)];
  v203[2] = v11;
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a5 + 12)];
  v203[3] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v203 count:4];
  v192 = [v10 placeholderWithShape:v13 dataType:268435472 name:@"tensor0"];

  v202 = xmmword_2398F2710;
  v14 = [MEMORY[0x277CBEA90] dataWithBytes:&v202 length:16];
  v193 = [v10 constantWithData:v14 shape:&unk_284C628E0 dataType:536870944];

  v15 = [v194 subdataWithRange:{0, 64}];
  v188 = [v10 constantWithData:v15 shape:&unk_284C628F8 dataType:268435472];

  v16 = [v194 subdataWithRange:{64, 7488}];
  v187 = [v10 constantWithData:v16 shape:&unk_284C62910 dataType:268435472];

  v17 = [v194 subdataWithRange:{7552, 64}];
  v186 = [v10 constantWithData:v17 shape:&unk_284C62928 dataType:268435472];

  v18 = [v194 subdataWithRange:{7616, 2048}];
  v185 = [v10 constantWithData:v18 shape:&unk_284C62940 dataType:268435472];

  v19 = [v194 subdataWithRange:{9664, 128}];
  v184 = [v10 constantWithData:v19 shape:&unk_284C62958 dataType:268435472];

  v20 = [v194 subdataWithRange:{9792, 36864}];
  v183 = [v10 constantWithData:v20 shape:&unk_284C62970 dataType:268435472];

  v21 = [v194 subdataWithRange:{46656, 128}];
  v182 = [v10 constantWithData:v21 shape:&unk_284C62988 dataType:268435472];

  v22 = [v194 subdataWithRange:{46784, 0x2000}];
  v181 = [v10 constantWithData:v22 shape:&unk_284C629A0 dataType:268435472];

  v23 = [v194 subdataWithRange:{54976, 128}];
  v180 = [v10 constantWithData:v23 shape:&unk_284C629B8 dataType:268435472];

  v24 = [v194 subdataWithRange:{55104, 73728}];
  v179 = [v10 constantWithData:v24 shape:&unk_284C629D0 dataType:268435472];

  v25 = [v194 subdataWithRange:{128832, 128}];
  v178 = [v10 constantWithData:v25 shape:&unk_284C629E8 dataType:268435472];

  v26 = [v194 subdataWithRange:{128960, 0x2000}];
  v177 = [v10 constantWithData:v26 shape:&unk_284C62A00 dataType:268435472];

  v27 = [v194 subdataWithRange:{137152, 128}];
  v176 = [v10 constantWithData:v27 shape:&unk_284C62A18 dataType:268435472];

  v28 = [v194 subdataWithRange:{137280, 73728}];
  v175 = [v10 constantWithData:v28 shape:&unk_284C62A30 dataType:268435472];

  v29 = [v194 subdataWithRange:{211008, 128}];
  v170 = [v10 constantWithData:v29 shape:&unk_284C62A48 dataType:268435472];

  v30 = [v194 subdataWithRange:{211136, 0x2000}];
  v169 = [v10 constantWithData:v30 shape:&unk_284C62A60 dataType:268435472];

  v31 = [v194 subdataWithRange:{219328, 16}];
  v122 = [v10 constantWithData:v31 shape:&unk_284C62A78 dataType:536870944];

  v32 = [v194 subdataWithRange:{219344, 128}];
  v165 = [v10 constantWithData:v32 shape:&unk_284C62A90 dataType:268435472];

  v33 = [v194 subdataWithRange:{219472, 73728}];
  v163 = [v10 constantWithData:v33 shape:&unk_284C62AA8 dataType:268435472];

  v34 = [v194 subdataWithRange:{293200, 128}];
  v161 = [v10 constantWithData:v34 shape:&unk_284C62AC0 dataType:268435472];

  v35 = [v194 subdataWithRange:{293328, 0x2000}];
  v159 = [v10 constantWithData:v35 shape:&unk_284C62AD8 dataType:268435472];

  v36 = [v194 subdataWithRange:{301520, 16}];
  v121 = [v10 constantWithData:v36 shape:&unk_284C62AF0 dataType:536870944];

  v37 = [v194 subdataWithRange:{301536, 128}];
  v155 = [v10 constantWithData:v37 shape:&unk_284C62B08 dataType:268435472];

  v38 = [v194 subdataWithRange:{301664, 73728}];
  v154 = [v10 constantWithData:v38 shape:&unk_284C62B20 dataType:268435472];

  v39 = [v194 subdataWithRange:{375392, 64}];
  v149 = [v10 constantWithData:v39 shape:&unk_284C62B38 dataType:268435472];

  v40 = [v194 subdataWithRange:{375456, 4096}];
  v148 = [v10 constantWithData:v40 shape:&unk_284C62B50 dataType:268435472];

  v41 = [v194 subdataWithRange:{379552, 16}];
  v120 = [v10 constantWithData:v41 shape:&unk_284C62B68 dataType:536870944];

  v42 = [v194 subdataWithRange:{379568, 64}];
  v142 = [v10 constantWithData:v42 shape:&unk_284C62B80 dataType:268435472];

  v43 = [v194 subdataWithRange:{379632, 18432}];
  v141 = [v10 constantWithData:v43 shape:&unk_284C62B98 dataType:268435472];

  v44 = [v194 subdataWithRange:{398064, 32}];
  v137 = [v10 constantWithData:v44 shape:&unk_284C62BB0 dataType:268435472];

  v45 = [v194 subdataWithRange:{398096, 1024}];
  v135 = [v10 constantWithData:v45 shape:&unk_284C62BC8 dataType:268435472];

  v46 = [v194 subdataWithRange:{399120, 14}];
  v132 = [v10 constantWithData:v46 shape:&unk_284C62BE0 dataType:268435472];

  v47 = [v194 subdataWithRange:{399134, 224}];
  v130 = [v10 constantWithData:v47 shape:&unk_284C62BF8 dataType:268435472];

  v48 = [v194 subdataWithRange:{399358, 16}];
  v119 = [v10 constantWithData:v48 shape:&unk_284C62C10 dataType:536870944];

  v174 = [v10 castTensor:v192 toType:268435472 name:@"tensor36"];
  v115 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:1 paddingRight:1 paddingTop:1 paddingBottom:1 paddingStyle:0 dataLayout:0 weightsLayout:3];
  v173 = [v10 convolution2DWithSourceTensor:v174 weightsTensor:v187 descriptor:? name:?];
  v114 = [v10 reshapeTensor:v188 withShape:&unk_284C62C28 name:@"tensor38_biasReshape"];
  v113 = [v10 additionWithPrimaryTensor:v173 secondaryTensor:? name:?];
  v172 = [v10 reLUWithTensor:? name:?];
  v112 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:1 dataLayout:0 weightsLayout:3];
  v171 = [v10 convolution2DWithSourceTensor:v172 weightsTensor:v185 descriptor:? name:?];
  v116 = [v10 reshapeTensor:v186 withShape:&unk_284C62C40 name:@"tensor41_biasReshape"];
  v117 = [v10 additionWithPrimaryTensor:v171 secondaryTensor:? name:?];
  v191 = [v10 reLUWithTensor:? name:?];
  v118 = [MEMORY[0x277CD7870] descriptorWithKernelSizes:&unk_284C62C58 strides:&unk_284C62C70 dilationRates:&unk_284C62C88 paddingValues:&unk_284C62CA0 paddingStyle:0];
  [v118 setCeilMode:0];
  [v118 setIncludeZeroPadToAverage:0];
  v168 = [v10 maxPooling4DWithSourceTensor:v191 descriptor:v118 name:@"tensor43"];
  v108 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:1 paddingRight:1 paddingTop:1 paddingBottom:1 paddingStyle:0 dataLayout:0 weightsLayout:3];
  v167 = [v10 convolution2DWithSourceTensor:v168 weightsTensor:v183 descriptor:? name:?];
  v107 = [v10 reshapeTensor:v184 withShape:&unk_284C62CB8 name:@"tensor45_biasReshape"];
  v106 = [v10 additionWithPrimaryTensor:v167 secondaryTensor:? name:?];
  v166 = [v10 reLUWithTensor:? name:?];
  v105 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:1 dataLayout:0 weightsLayout:3];
  v164 = [v10 convolution2DWithSourceTensor:v166 weightsTensor:v181 descriptor:? name:?];
  v109 = [v10 reshapeTensor:v182 withShape:&unk_284C62CD0 name:@"tensor48_biasReshape"];
  v110 = [v10 additionWithPrimaryTensor:v164 secondaryTensor:? name:?];
  v190 = [v10 reLUWithTensor:? name:?];
  v111 = [MEMORY[0x277CD7870] descriptorWithKernelSizes:&unk_284C62CE8 strides:&unk_284C62D00 dilationRates:&unk_284C62D18 paddingValues:&unk_284C62D30 paddingStyle:0];
  [v111 setCeilMode:0];
  [v111 setIncludeZeroPadToAverage:0];
  v160 = [v10 maxPooling4DWithSourceTensor:v190 descriptor:v111 name:@"tensor50"];
  v101 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:1 paddingRight:1 paddingTop:1 paddingBottom:1 paddingStyle:0 dataLayout:0 weightsLayout:3];
  v158 = [v10 convolution2DWithSourceTensor:v160 weightsTensor:v179 descriptor:? name:?];
  v100 = [v10 reshapeTensor:v180 withShape:&unk_284C62D48 name:@"tensor52_biasReshape"];
  v99 = [v10 additionWithPrimaryTensor:v158 secondaryTensor:? name:?];
  v157 = [v10 reLUWithTensor:? name:?];
  v98 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:1 dataLayout:0 weightsLayout:3];
  v156 = [v10 convolution2DWithSourceTensor:v157 weightsTensor:v177 descriptor:? name:?];
  v102 = [v10 reshapeTensor:v178 withShape:&unk_284C62D60 name:@"tensor55_biasReshape"];
  v103 = [v10 additionWithPrimaryTensor:v156 secondaryTensor:? name:?];
  v189 = [v10 reLUWithTensor:? name:?];
  v104 = [MEMORY[0x277CD7870] descriptorWithKernelSizes:&unk_284C62D78 strides:&unk_284C62D90 dilationRates:&unk_284C62DA8 paddingValues:&unk_284C62DC0 paddingStyle:0];
  [v104 setCeilMode:0];
  [v104 setIncludeZeroPadToAverage:0];
  v153 = [v10 maxPooling4DWithSourceTensor:v189 descriptor:v104 name:@"tensor57"];
  v97 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:1 paddingRight:1 paddingTop:1 paddingBottom:1 paddingStyle:0 dataLayout:0 weightsLayout:3];
  v152 = [v10 convolution2DWithSourceTensor:v153 weightsTensor:v175 descriptor:? name:?];
  v96 = [v10 reshapeTensor:v176 withShape:&unk_284C62DD8 name:@"tensor59_biasReshape"];
  v95 = [v10 additionWithPrimaryTensor:v152 secondaryTensor:? name:?];
  v151 = [v10 reLUWithTensor:? name:?];
  v94 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:1 dataLayout:0 weightsLayout:3];
  v150 = [v10 convolution2DWithSourceTensor:v151 weightsTensor:v169 descriptor:? name:?];
  v93 = [v10 reshapeTensor:v170 withShape:&unk_284C62DF0 name:@"tensor62_biasReshape"];
  v92 = [v10 additionWithPrimaryTensor:v150 secondaryTensor:? name:?];
  v147 = [v10 reLUWithTensor:? name:?];
  v91 = [v10 shapeOfTensor:? name:?];
  v90 = [v10 multiplicationWithPrimaryTensor:? secondaryTensor:? name:?];
  v89 = [v10 resizeBilinearWithTensor:v147 sizeTensor:? centerResult:? alignCorners:? name:?];
  v146 = [v10 additionWithPrimaryTensor:v189 secondaryTensor:? name:?];
  v88 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:1 paddingRight:1 paddingTop:1 paddingBottom:1 paddingStyle:0 dataLayout:0 weightsLayout:3];
  v145 = [v10 convolution2DWithSourceTensor:v146 weightsTensor:v163 descriptor:? name:?];
  v87 = [v10 reshapeTensor:v165 withShape:&unk_284C62E08 name:@"tensor67_biasReshape"];
  v86 = [v10 additionWithPrimaryTensor:v145 secondaryTensor:? name:?];
  v144 = [v10 reLUWithTensor:? name:?];
  v85 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:1 dataLayout:0 weightsLayout:3];
  v143 = [v10 convolution2DWithSourceTensor:v144 weightsTensor:v159 descriptor:? name:?];
  v84 = [v10 reshapeTensor:v161 withShape:&unk_284C62E20 name:@"tensor70_biasReshape"];
  v83 = [v10 additionWithPrimaryTensor:v143 secondaryTensor:? name:?];
  v140 = [v10 reLUWithTensor:? name:?];
  v82 = [v10 shapeOfTensor:? name:?];
  v81 = [v10 multiplicationWithPrimaryTensor:? secondaryTensor:? name:?];
  v80 = [v10 resizeBilinearWithTensor:v140 sizeTensor:? centerResult:? alignCorners:? name:?];
  v139 = [v10 additionWithPrimaryTensor:v190 secondaryTensor:? name:?];
  v79 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:1 paddingRight:1 paddingTop:1 paddingBottom:1 paddingStyle:0 dataLayout:0 weightsLayout:3];
  v138 = [v10 convolution2DWithSourceTensor:v139 weightsTensor:v154 descriptor:? name:?];
  v78 = [v10 reshapeTensor:v155 withShape:&unk_284C62E38 name:@"tensor75_biasReshape"];
  v77 = [v10 additionWithPrimaryTensor:v138 secondaryTensor:? name:?];
  v136 = [v10 reLUWithTensor:? name:?];
  v76 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:1 dataLayout:0 weightsLayout:3];
  v134 = [v10 convolution2DWithSourceTensor:v136 weightsTensor:v148 descriptor:? name:?];
  v75 = [v10 reshapeTensor:v149 withShape:&unk_284C62E50 name:@"tensor78_biasReshape"];
  v74 = [v10 additionWithPrimaryTensor:v134 secondaryTensor:? name:?];
  v133 = [v10 reLUWithTensor:? name:?];
  v73 = [v10 shapeOfTensor:? name:?];
  v72 = [v10 multiplicationWithPrimaryTensor:? secondaryTensor:? name:?];
  v71 = [v10 resizeBilinearWithTensor:v133 sizeTensor:? centerResult:? alignCorners:? name:?];
  v131 = [v10 additionWithPrimaryTensor:v191 secondaryTensor:? name:?];
  v70 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:1 paddingRight:1 paddingTop:1 paddingBottom:1 paddingStyle:0 dataLayout:0 weightsLayout:3];
  v129 = [v10 convolution2DWithSourceTensor:v131 weightsTensor:v141 descriptor:? name:?];
  v69 = [v10 reshapeTensor:v142 withShape:&unk_284C62E68 name:@"tensor83_biasReshape"];
  v68 = [v10 additionWithPrimaryTensor:v129 secondaryTensor:? name:?];
  v128 = [v10 reLUWithTensor:? name:?];
  v67 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:1 dataLayout:0 weightsLayout:3];
  v127 = [v10 convolution2DWithSourceTensor:v128 weightsTensor:v135 descriptor:? name:?];
  v66 = [v10 reshapeTensor:v137 withShape:&unk_284C62E80 name:@"tensor86_biasReshape"];
  v65 = [v10 additionWithPrimaryTensor:v127 secondaryTensor:? name:?];
  v126 = [v10 reLUWithTensor:? name:?];
  v49 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:1 dataLayout:0 weightsLayout:3];
  v50 = [v10 convolution2DWithSourceTensor:v126 weightsTensor:v130 descriptor:v49 name:@"tensor88"];
  v51 = [v10 reshapeTensor:v132 withShape:&unk_284C62E98 name:@"tensor89_biasReshape"];
  v52 = [v10 additionWithPrimaryTensor:v50 secondaryTensor:v51 name:@"tensor90"];
  v53 = [v10 castTensor:v52 toType:268435472 name:@"tensor91"];
  v201 = v53;
  v54 = [MEMORY[0x277CBEA60] arrayWithObjects:&v201 count:1];
  v199 = v192;
  v55 = objc_alloc(MEMORY[0x277CD7880]);
  v56 = [v192 shape];
  v57 = [v55 initWithShape:v56 dataType:{objc_msgSend(v192, "dataType")}];
  v200 = v57;
  v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v200 forKeys:&v199 count:1];

  v125 = [v10 compileWithDevice:0 feeds:v58 targetTensors:v54 targetOperations:0 compilationDescriptor:v162];
  v59 = [v125 feedTensors];
  v197[0] = MEMORY[0x277D85DD0];
  v197[1] = 3221225472;
  v197[2] = ___ZL38EmitDBF_Net_V3_2_getMPSGraphExecutableP6NSDataP14NSMutableArrayIP18MPSGraphShapedTypeES5_P29MPSGraphCompilationDescriptorRK16DBFNetDescriptor_block_invoke;
  v197[3] = &unk_278AA4BE8;
  v64 = v124;
  v198 = v64;
  [v59 enumerateObjectsUsingBlock:v197];

  v60 = [v125 targetTensors];
  v195[0] = MEMORY[0x277D85DD0];
  v195[1] = 3221225472;
  v195[2] = ___ZL38EmitDBF_Net_V3_2_getMPSGraphExecutableP6NSDataP14NSMutableArrayIP18MPSGraphShapedTypeES5_P29MPSGraphCompilationDescriptorRK16DBFNetDescriptor_block_invoke_2;
  v195[3] = &unk_278AA4BE8;
  v61 = v123;
  v196 = v61;
  [v60 enumerateObjectsUsingBlock:v195];

  v62 = *MEMORY[0x277D85DE8];

  return v125;
}

void sub_2398A6A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, void *a50, void *a51, void *a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  MFXDevice3::~MFXDevice3(&STACK[0x390]);

  _Unwind_Resume(a1);
}

void checkInputOutputTexturesForDenoiser(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, unint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v48 = a30;
  v49 = a29;
  v50 = a28;
  v53 = a1;
  v37 = a2;
  v38 = a3;
  v39 = a4;
  v40 = a5;
  v41 = v39;
  v42 = v40;
  v43 = a6;
  v44 = a7;
  v45 = a8;
  v46 = a9;
  v52 = a10;
  v47 = a11;
  v51 = a12;
  checkTexture(v53, a13, a14, @"Color", 1, 1, a15, @"Color");
  checkTexture(v51, a18, a19, @"Output", 1, 0, a20, @"Color");
  checkTexture(v37, [v53 width], objc_msgSend(v53, "height"), @"Depth", 1, 1, a21, @"Color");
  checkTexture(v38, [v53 width], objc_msgSend(v53, "height"), @"Motion", 1, 1, a22, @"Color");
  checkTexture(v41, [v53 width], objc_msgSend(v53, "height"), @"Normal", 1, 1, a23, @"Color");
  checkTexture(v42, [v53 width], objc_msgSend(v53, "height"), @"DiffuseAlbedo", 1, 1, a24, @"Color");
  checkTexture(v43, [v53 width], objc_msgSend(v53, "height"), @"SpecularAlbedo", 1, 1, a25, @"Color");
  checkTexture(v44, [v53 width], objc_msgSend(v53, "height"), @"Roughness", 1, 1, a26, @"Color");
  if (v45)
  {
    checkTexture(v45, [v53 width], objc_msgSend(v53, "height"), @"SpecularHitDistance", 1, 1, a27, @"Color");
  }

  if (v46)
  {
    checkTexture(v46, [v53 width], objc_msgSend(v53, "height"), @"DenoiseStrengthMask", 1, 1, v50, @"Color");
  }

  if (v52)
  {
    checkTexture(v52, [v53 width], objc_msgSend(v53, "height"), @"TransparencyOverlay", 1, 1, v49, @"Color");
  }

  if (v47)
  {
    checkTexture(v47, [v53 width], objc_msgSend(v53, "height"), @"ReactiveMask", 1, 1, v48, @"Color");
  }

  if ([v53 width] < a16)
  {
    MTLReportFailure();
  }

  if ([v53 height] < a17)
  {
    MTLReportFailure();
  }
}

void MPSGraphMPSGraphExecutableWrapper::run(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  if (*(a1 + 16))
  {
    v12 = objc_alloc(MEMORY[0x277CD7850]);
    v13 = objc_opt_new();
    v14 = [v12 initWithGraphExecutionDescriptor:v13];

    [v14 setWaitUntilCompleted:a5];
    [v14 setEnableCommitAndContinue:0];
    v21[0] = v11;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    v20 = v10;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
    v17 = [MEMORY[0x277CD7208] commandBufferWithCommandBuffer:v9];
    v18 = [*(a1 + 16) encodeToCommandBuffer:v17 inputsArray:v16 resultsArray:v15 executionDescriptor:v14];
    if ([v17 status] && objc_msgSend(v17, "status") != 1)
    {
      MTLReportFailure();
      abort();
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void sub_2398A78E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id a14)
{

  _Unwind_Resume(a1);
}

id MetalFXHUDInstanceV3(void)
{
  {
    MetalFXHUDInstanceV3(void)::v3 = WEAK_HUDServiceV3();
  }

  v0 = MetalFXHUDInstanceV3(void)::v3;

  return v0;
}

{
  {
    MetalFXHUDInstanceV3(void)::v3 = WEAK_HUDServiceV3();
  }

  v0 = MetalFXHUDInstanceV3(void)::v3;

  return v0;
}

CHistoryRecord *CHistoryRecord::Add(CHistoryRecord *this, unsigned int a2, float a3)
{
  v3 = 0;
  v4 = a2 % 0x78;
  v5 = 999.99;
  v6 = 0.0;
  if (a3 > 999.99 || a3 < 0.0)
  {
    a3 = 0.0;
  }

  this->var1 = v4;
  this->var2 = v4;
  v8 = &this->var0 + v4;
  v9 = this->var3 + (a3 - v8[5]);
  v8[5] = a3;
  this->var3 = v9;
  this->var4 = v9 / 120.0;
  for (i = 20; i != 500; i += 4)
  {
    v11 = *(&this->var0 + i);
    v12 = fminf(v5, v11);
    v13 = fmaxf(v6, v11);
    if (v11 > 0.0)
    {
      v6 = v13;
      ++v3;
      v5 = v12;
    }
  }

  v14 = 0.0;
  if (v3)
  {
    v14 = v5;
  }

  else
  {
    v6 = 0.0;
  }

  this->var7 = v6;
  this->var6 = v14;
  return this;
}

void sub_2398A8984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37)
{

  MetalFxScopedSignpost::~MetalFxScopedSignpost((v39 - 192));
  MFXDevice3::~MFXDevice3((v39 - 152));
  _Unwind_Resume(a1);
}

void loadTensorData(NSString *a1, void *a2, MPSGraphTensorData *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@_%04d.dat", @"/tmp/metalfx/ref", @"brnet_in", a1];
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = v7;
  if (v7)
  {
    if ([v7 fileExistsAtPath:v6])
    {
      v9 = [v4 mpsndarray];
      if (v9)
      {
        [v4 dataType];
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        v10 = [v4 shape];
        v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v11)
        {
          v12 = *v18;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v18 != v12)
              {
                objc_enumerationMutation(v10);
              }

              [*(*(&v17 + 1) + 8 * i) unsignedLongValue];
            }

            v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
          }

          while (v11);
        }

        v14 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v6];
        v15 = v14;
        [v9 writeBytes:objc_msgSend(v14 strideBytes:{"bytes"), 0}];
        NSLog(&cfstr_TensorLoadedFr.isa, v6, a1);
      }

      else
      {
        NSLog(&cfstr_FailedToLoadTe.isa, v6, a1);
      }
    }

    else
    {
      NSLog(&cfstr_FailedToLoadTe_0.isa, v6, a1);
    }
  }

  else
  {
    NSLog(&cfstr_FailedToLoadTe_1.isa, v6, a1);
  }

  objc_autoreleasePoolPop(v5);
  v16 = *MEMORY[0x277D85DE8];
}

{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@_%04d.dat", @"/tmp/metalfx/ref", @"brnet_in", a1];
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = v7;
  if (v7)
  {
    if ([v7 fileExistsAtPath:v6])
    {
      v9 = [v4 mpsndarray];
      if (v9)
      {
        [v4 dataType];
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        v10 = [v4 shape];
        v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v11)
        {
          v12 = *v18;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v18 != v12)
              {
                objc_enumerationMutation(v10);
              }

              [*(*(&v17 + 1) + 8 * i) unsignedLongValue];
            }

            v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
          }

          while (v11);
        }

        v14 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v6];
        v15 = v14;
        [v9 writeBytes:objc_msgSend(v14 strideBytes:{"bytes"), 0}];
        NSLog(&cfstr_TensorLoadedFr.isa, v6, a1);
      }

      else
      {
        NSLog(&cfstr_FailedToLoadTe.isa, v6, a1);
      }
    }

    else
    {
      NSLog(&cfstr_FailedToLoadTe_0.isa, v6, a1);
    }
  }

  else
  {
    NSLog(&cfstr_FailedToLoadTe_1.isa, v6, a1);
  }

  objc_autoreleasePoolPop(v5);
  v16 = *MEMORY[0x277D85DE8];
}

{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@_%04d.dat", @"/tmp/metalfx/ref", @"brnet_in", a1];
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = v7;
  if (v7)
  {
    if ([v7 fileExistsAtPath:v6])
    {
      v9 = [v4 mpsndarray];
      if (v9)
      {
        [v4 dataType];
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        v10 = [v4 shape];
        v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v11)
        {
          v12 = *v18;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v18 != v12)
              {
                objc_enumerationMutation(v10);
              }

              [*(*(&v17 + 1) + 8 * i) unsignedLongValue];
            }

            v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
          }

          while (v11);
        }

        v14 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v6];
        v15 = v14;
        [v9 writeBytes:objc_msgSend(v14 strideBytes:{"bytes"), 0}];
        NSLog(&cfstr_TensorLoadedFr.isa, v6, a1);
      }

      else
      {
        NSLog(&cfstr_FailedToLoadTe.isa, v6, a1);
      }
    }

    else
    {
      NSLog(&cfstr_FailedToLoadTe_0.isa, v6, a1);
    }
  }

  else
  {
    NSLog(&cfstr_FailedToLoadTe_1.isa, v6, a1);
  }

  objc_autoreleasePoolPop(v5);
  v16 = *MEMORY[0x277D85DE8];
}

void saveTensorData(NSString *a1, NSString *a2, uint64_t a3, MPSGraphTensorData *a4)
{
  v40 = *MEMORY[0x277D85DE8];
  v32 = a1;
  v33 = a2;
  v7 = a4;
  context = objc_autoreleasePoolPush();
  v31 = [(MPSGraphTensorData *)v7 mpsndarray];
  if (v31)
  {
    v8 = [(MPSGraphTensorData *)v7 dataType];
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v9 = [(MPSGraphTensorData *)v7 shape];
    v10 = [v9 countByEnumeratingWithState:&v35 objects:v39 count:16];
    v11 = v8 >> 3;
    if (v10)
    {
      v12 = *v36;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v36 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v11 *= [*(*(&v35 + 1) + 8 * i) unsignedLongValue];
        }

        v10 = [v9 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v10);
    }

    v14 = [MEMORY[0x277CCAC38] processInfo];
    v29 = [v14 processName];

    v15 = MEMORY[0x277CCACA8];
    v16 = [(MPSGraphTensorData *)v7 shape];
    v17 = [v16 componentsJoinedByString:@"_"];
    v18 = [v15 stringWithFormat:@"%@_%@_%04d_%@.dat", v29, v33, a3, v17];

    v19 = [(NSString *)v32 stringByAppendingPathComponent:v18];
    v20 = malloc_type_malloc(v11, 0xFF20D7FDuLL);
    v21 = [(MPSGraphTensorData *)v7 mpsndarray];
    [v21 readBytes:v20 strideBytes:0];

    v22 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v20 length:v11 freeWhenDone:0];
    v34 = 0;
    LOBYTE(v17) = [v22 writeToFile:v19 options:1 error:&v34];
    v23 = v34;
    v24 = v23;
    if (v17)
    {
      v25 = [(MPSGraphTensorData *)v7 shape];
      v26 = [v25 componentsJoinedByString:@"x"];
      [(MPSGraphTensorData *)v7 dataType];
      v27 = MPSGetDataTypeName();
      NSLog(&cfstr_SavedTensorFor.isa, a3, v19, v26, v27, v11);
    }

    else
    {
      v25 = [v23 localizedDescription];
      NSLog(&cfstr_ErrorWritingFi.isa, v19, v25);
    }

    free(v20);
  }

  else
  {
    NSLog(&cfstr_ErrorTensordat.isa, a3);
  }

  objc_autoreleasePoolPop(context);
  v28 = *MEMORY[0x277D85DE8];
}

{
  v40 = *MEMORY[0x277D85DE8];
  v32 = a1;
  v33 = a2;
  v7 = a4;
  context = objc_autoreleasePoolPush();
  v31 = [(MPSGraphTensorData *)v7 mpsndarray];
  if (v31)
  {
    v8 = [(MPSGraphTensorData *)v7 dataType];
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v9 = [(MPSGraphTensorData *)v7 shape];
    v10 = [v9 countByEnumeratingWithState:&v35 objects:v39 count:16];
    v11 = v8 >> 3;
    if (v10)
    {
      v12 = *v36;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v36 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v11 *= [*(*(&v35 + 1) + 8 * i) unsignedLongValue];
        }

        v10 = [v9 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v10);
    }

    v14 = [MEMORY[0x277CCAC38] processInfo];
    v29 = [v14 processName];

    v15 = MEMORY[0x277CCACA8];
    v16 = [(MPSGraphTensorData *)v7 shape];
    v17 = [v16 componentsJoinedByString:@"_"];
    v18 = [v15 stringWithFormat:@"%@_%@_%04d_%@.dat", v29, v33, a3, v17];

    v19 = [(NSString *)v32 stringByAppendingPathComponent:v18];
    v20 = malloc_type_malloc(v11, 0xFF20D7FDuLL);
    v21 = [(MPSGraphTensorData *)v7 mpsndarray];
    [v21 readBytes:v20 strideBytes:0];

    v22 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v20 length:v11 freeWhenDone:0];
    v34 = 0;
    LOBYTE(v17) = [v22 writeToFile:v19 options:1 error:&v34];
    v23 = v34;
    v24 = v23;
    if (v17)
    {
      v25 = [(MPSGraphTensorData *)v7 shape];
      v26 = [v25 componentsJoinedByString:@"x"];
      [(MPSGraphTensorData *)v7 dataType];
      v27 = MPSGetDataTypeName();
      NSLog(&cfstr_SavedTensorFor.isa, a3, v19, v26, v27, v11);
    }

    else
    {
      v25 = [v23 localizedDescription];
      NSLog(&cfstr_ErrorWritingFi.isa, v19, v25);
    }

    free(v20);
  }

  else
  {
    NSLog(&cfstr_ErrorTensordat.isa, a3);
  }

  objc_autoreleasePoolPop(context);
  v28 = *MEMORY[0x277D85DE8];
}

{
  v40 = *MEMORY[0x277D85DE8];
  v32 = a1;
  v33 = a2;
  v7 = a4;
  context = objc_autoreleasePoolPush();
  v31 = [(MPSGraphTensorData *)v7 mpsndarray];
  if (v31)
  {
    v8 = [(MPSGraphTensorData *)v7 dataType];
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v9 = [(MPSGraphTensorData *)v7 shape];
    v10 = [v9 countByEnumeratingWithState:&v35 objects:v39 count:16];
    v11 = v8 >> 3;
    if (v10)
    {
      v12 = *v36;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v36 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v11 *= [*(*(&v35 + 1) + 8 * i) unsignedLongValue];
        }

        v10 = [v9 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v10);
    }

    v14 = [MEMORY[0x277CCAC38] processInfo];
    v29 = [v14 processName];

    v15 = MEMORY[0x277CCACA8];
    v16 = [(MPSGraphTensorData *)v7 shape];
    v17 = [v16 componentsJoinedByString:@"_"];
    v18 = [v15 stringWithFormat:@"%@_%@_%04d_%@.dat", v29, v33, a3, v17];

    v19 = [(NSString *)v32 stringByAppendingPathComponent:v18];
    v20 = malloc_type_malloc(v11, 0xFF20D7FDuLL);
    v21 = [(MPSGraphTensorData *)v7 mpsndarray];
    [v21 readBytes:v20 strideBytes:0];

    v22 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v20 length:v11 freeWhenDone:0];
    v34 = 0;
    LOBYTE(v17) = [v22 writeToFile:v19 options:1 error:&v34];
    v23 = v34;
    v24 = v23;
    if (v17)
    {
      v25 = [(MPSGraphTensorData *)v7 shape];
      v26 = [v25 componentsJoinedByString:@"x"];
      [(MPSGraphTensorData *)v7 dataType];
      v27 = MPSGetDataTypeName();
      NSLog(&cfstr_SavedTensorFor.isa, a3, v19, v26, v27, v11);
    }

    else
    {
      v25 = [v23 localizedDescription];
      NSLog(&cfstr_ErrorWritingFi.isa, v19, v25);
    }

    free(v20);
  }

  else
  {
    NSLog(&cfstr_ErrorTensordat.isa, a3);
  }

  objc_autoreleasePoolPop(context);
  v28 = *MEMORY[0x277D85DE8];
}

uint64_t ___ZL15isInternalBuildv_block_invoke()
{
  result = MGGetBoolAnswer();
  isInternalBuild(void)::isInternal = result;
  return result;
}

void ___ZL36EmitUBF_Net_V3_getMPSGraphExecutableP6NSDataP14NSMutableArrayIP18MPSGraphShapedTypeES5_P29MPSGraphCompilationDescriptorRK16UBFNetDescriptor_block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = objc_alloc(MEMORY[0x277CD7880]);
  v4 = [v6 shape];
  v5 = [v3 initWithShape:v4 dataType:{objc_msgSend(v6, "dataType")}];

  [*(a1 + 32) addObject:v5];
}

void ___ZL36EmitUBF_Net_V3_getMPSGraphExecutableP6NSDataP14NSMutableArrayIP18MPSGraphShapedTypeES5_P29MPSGraphCompilationDescriptorRK16UBFNetDescriptor_block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = objc_alloc(MEMORY[0x277CD7880]);
  v4 = [v6 shape];
  v5 = [v3 initWithShape:v4 dataType:{objc_msgSend(v6, "dataType")}];

  [*(a1 + 32) addObject:v5];
}

void ___ZN33MPSGraphMPSGraphExecutableWrapper7prewarmEPU26objcproto15MTLCommandQueue11objc_objectP18MPSGraphTensorDataS3_byPU18objcproto8MTLEvent11objc_objectS5_yy_block_invoke_2(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 72);
  MetalFxScopedSignpost::MetalFxScopedSignpost(v12, 3, *(a1 + 80), 6, 0, 0);
  v3 = objc_alloc(MEMORY[0x277CD7850]);
  v4 = objc_opt_new();
  v5 = [v3 initWithGraphExecutionDescriptor:v4];

  [v5 setWaitUntilCompleted:1];
  v14[0] = *(a1 + 32);
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v13 = *(a1 + 40);
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  if (*(a1 + 48) && *(a1 + 104) == 1 && *(v2 + 48) == 1)
  {
    v8 = *(a1 + 88);
    [v5 waitForANEPrePowerUpEvent:? value:?];
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    [v5 waitForEvent:v9 value:*(a1 + 88)];
    [v5 signalEvent:*(a1 + 56) atExecutionEvent:0 value:*(a1 + 96)];
  }

  v10 = [*(v2 + 8) runAsyncWithMTLCommandQueue:*(a1 + 64) inputsArray:v7 resultsArray:v6 executionDescriptor:v5];
  dispatch_group_leave(*(v2 + 40));

  MetalFxScopedSignpost::~MetalFxScopedSignpost(v12);
  v11 = *MEMORY[0x277D85DE8];
}

void ___ZL38EmitDBF_Net_V3_2_getMPSGraphExecutableP6NSDataP14NSMutableArrayIP18MPSGraphShapedTypeES5_P29MPSGraphCompilationDescriptorRK16DBFNetDescriptor_block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = objc_alloc(MEMORY[0x277CD7880]);
  v4 = [v6 shape];
  v5 = [v3 initWithShape:v4 dataType:{objc_msgSend(v6, "dataType")}];

  [*(a1 + 32) addObject:v5];
}

void ___ZL38EmitDBF_Net_V3_2_getMPSGraphExecutableP6NSDataP14NSMutableArrayIP18MPSGraphShapedTypeES5_P29MPSGraphCompilationDescriptorRK16DBFNetDescriptor_block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = objc_alloc(MEMORY[0x277CD7880]);
  v4 = [v6 shape];
  v5 = [v3 initWithShape:v4 dataType:{objc_msgSend(v6, "dataType")}];

  [*(a1 + 32) addObject:v5];
}

void ___ZL24MetalFXHUDAddTAAUMetricsv_block_invoke()
{
  {
    MetalFXHUDInstance(void)::inst = WEAK_CADeveloperHUDProperties();
  }

  if (MetalFXHUDInstance(void)::inst)
  {
    v0 = NSSelectorFromString(&cfstr_Instance.isa);
    v1 = NSClassFromString(&cfstr_Cadeveloperhud.isa);
    if (v1)
    {
      v4 = ([(objc_class *)v1 methodForSelector:v0])(v1, v0);
      if (v4)
      {
        v2 = WEAK_HUDServiceV3();
        v3 = v2;
        if (v2)
        {
          [v2 addMetric:@"com.apple.hud-label.metalfx.v2.scaling" name:@"Scaling" unit:&stru_284C54C00 nameColor:0xFFFFFFFFLL valueColor:0xFFFFFFFFLL visualType:2048 options:8];
          [v3 addMetric:@"com.apple.hud-label.metalfx.v2.input_resolution" name:@"Scaling Input Res" unit:&stru_284C54C00 nameColor:0xFFFFFFFFLL valueColor:0xFFFFFFFFLL visualType:2048 options:8];
          [v3 addMetric:@"com.apple.hud-label.metalfx.v2.target_resolution" name:@"Scaling Target Res" unit:&stru_284C54C00 nameColor:0xFFFFFFFFLL valueColor:0xFFFFFFFFLL visualType:2048 options:8];
          [v3 addMetric:@"com.apple.hud-label.metalfx.v2.exposure" name:@"Exposure" unit:&stru_284C54C00 nameColor:0xFFFFFFFFLL valueColor:0xFFFFFFFFLL visualType:2048 options:8];
        }

        else
        {
          [v4 addLabel:@"com.apple.hud-label.metalfx" after:@"com.apple.hud-graph.default"];
          [v4 addLabel:@"com.apple.hud-label.metalfx.resolution" after:@"com.apple.hud-label.metalfx"];
          [v4 addLabel:@"com.apple.hud-label.metalfx.content_resolution" after:@"com.apple.hud-label.metalfx.resolution"];
          [v4 addLabel:@"com.apple.hud-label.metalfx.timing" after:@"com.apple.hud-label.metalfx.content_resolution"];
        }
      }
    }
  }
}

id WEAK_HUDServiceV3(void)
{
  v0 = NSSelectorFromString(&cfstr_Instance.isa);
  v1 = NSClassFromString(&cfstr_Cadeveloperhud.isa);
  if (v1)
  {
    v2 = ([(objc_class *)v1 methodForSelector:v0])(v1, v0);
  }

  else
  {
    v2 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

{
  v0 = NSSelectorFromString(&cfstr_Instance.isa);
  v1 = NSClassFromString(&cfstr_Cadeveloperhud.isa);
  if (v1)
  {
    v2 = ([(objc_class *)v1 methodForSelector:v0])(v1, v0);
  }

  else
  {
    v2 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

{
  v0 = NSSelectorFromString(&cfstr_Instance.isa);
  v1 = NSClassFromString(&cfstr_Cadeveloperhud.isa);
  if (v1)
  {
    v2 = ([(objc_class *)v1 methodForSelector:v0])(v1, v0);
  }

  else
  {
    v2 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

{
  v0 = NSSelectorFromString(&cfstr_Instance.isa);
  v1 = NSClassFromString(&cfstr_Cadeveloperhud.isa);
  if (v1)
  {
    v2 = ([(objc_class *)v1 methodForSelector:v0])(v1, v0);
  }

  else
  {
    v2 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

{
  v0 = NSSelectorFromString(&cfstr_Instance.isa);
  v1 = NSClassFromString(&cfstr_Cadeveloperhud.isa);
  if (v1)
  {
    v2 = ([(objc_class *)v1 methodForSelector:v0])(v1, v0);
  }

  else
  {
    v2 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

{
  v0 = NSSelectorFromString(&cfstr_Instance.isa);
  v1 = NSClassFromString(&cfstr_Cadeveloperhud.isa);
  if (v1)
  {
    v2 = ([(objc_class *)v1 methodForSelector:v0])(v1, v0);
  }

  else
  {
    v2 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void checkTexture(void *a1, uint64_t a2, uint64_t a3, void *a4, int a5, uint64_t a6, uint64_t a7, void *a8)
{
  v21 = a1;
  v14 = a4;
  v15 = a8;
  if (!v21 && (a5 & 1) != 0)
  {
    goto LABEL_24;
  }

  if (v21)
  {
    if ([v21 textureType] != 2)
    {
      MTLReportFailure();
    }

    if (a2 && a3)
    {
      if (a5)
      {
        v16 = @"%@ texture width mismatch from descriptor";
      }

      else
      {
        v16 = @"%@ and %@ should have the same width for MetalFX use";
      }

      v17 = [MEMORY[0x277CCACA8] stringWithFormat:v16, v14, v15];
      if (a5)
      {
        v18 = @"%@ texture height mismatch from descriptor";
      }

      else
      {
        v18 = @"%@ and %@ should have the same height for MetalFX use";
      }

      v19 = [MEMORY[0x277CCACA8] stringWithFormat:v18, v14, v15];
      if ([v21 width] != a2)
      {
        v20 = v17;
        MTLReportFailure();
      }

      if ([v21 height] != a3)
      {
        MTLReportFailure();
      }
    }

    if (a5 && [v21 pixelFormat] != a7)
    {
LABEL_24:
      MTLReportFailure();
    }
  }
}

void MFXComputeEncoder3::beginEncoding(void **a1, void *a2)
{
  v5 = a2;
  v3 = [v5 computeCommandEncoder];
  v4 = *a1;
  *a1 = v3;
}

void MetalFxScopedSignpost::MetalFxScopedSignpost(MetalFxScopedSignpost *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = a4;
  *(this + 3) = a5;
  *(this + 4) = a6;
  if (MTLTraceEnabledSPI())
  {
    if (MTLTraceEnabled())
    {
      v7 = *this;
      v8 = *(this + 1);
      v9 = *(this + 2);
      v10 = *(this + 3);
      v11 = *(this + 4);
      kdebug_trace();
    }
  }
}

void MetalFxScopedSignpost::~MetalFxScopedSignpost(MetalFxScopedSignpost *this)
{
  if (MTLTraceEnabledSPI())
  {
    if (MTLTraceEnabled())
    {
      v2 = *this;
      v3 = *(this + 1);
      v4 = *(this + 2);
      v5 = *(this + 3);
      v6 = *(this + 4);
      kdebug_trace();
    }
  }
}

id getDataFromFile(NSString *a1, NSString *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  if (v4)
  {
    v6 = [(NSString *)v4 stringByAppendingPathComponent:v3];
  }

  else
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = [MEMORY[0x277CCA8D8] mainBundle];
    v9 = [v8 bundlePath];
    v6 = [v7 stringWithFormat:@"%@/%@", v9, v3];
  }

  if ([v5 fileExistsAtPath:v6])
  {
    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v6;
  }

  else
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v13 resourcePath];
    v11 = [v12 stringWithFormat:@"%@/%@", v14, v3];

    if ([v5 fileExistsAtPath:v11])
    {
      v15 = v11;
    }

    else
    {
      v15 = 0;
    }

    v6 = v15;
  }

  v16 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v6];

  return v16;
}

id getDataFromData(void *a1, int a2, int a3, void *a4)
{
  v37 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a4;
  v9 = [v7 length];
  if (v8)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v11)
    {
      v12 = *v33;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v33 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v32 + 1) + 8 * i);
          [v14 unsignedLongValue];
        }

        v11 = [v10 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v11);
    }
  }

  if (a3 == a2)
  {
    v15 = v7;
LABEL_22:
    v29 = v15;
    goto LABEL_23;
  }

  v16 = v7;
  v17 = [v7 bytes];
  v18 = a2 >> 3;
  v19 = v9 / v18;
  if (a3 == 536870920)
  {
    v27 = malloc_type_malloc(v9 / v18, 0x100004077774924uLL);
    if (v9 >= v18)
    {
      v28 = 0;
      do
      {
        v27[v28] = *(v17 + 4 * v28);
        ++v28;
      }

      while (v28 < v19);
    }

    v15 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v27 length:v9 / v18 freeWhenDone:{1, v32}];
    goto LABEL_22;
  }

  if (a3 == 268435472)
  {
    v20 = malloc_type_malloc(2 * v19, 0x1000040BDFB0063uLL);
    if (v9 >= v18)
    {
      v21 = 0;
      do
      {
        _S0 = *(v17 + 4 * v21);
        __asm { FCVT            H0, S0 }

        v20[v21++] = _S0;
      }

      while (v21 < v19);
    }

    v15 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v20 length:2 * v19 freeWhenDone:{1, v32}];
    goto LABEL_22;
  }

  v29 = 0;
LABEL_23:

  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

id getDataFromFile(NSString *a1, NSString *a2, int a3, int a4, void *a5)
{
  v9 = a5;
  v10 = getDataFromFile(a1, a2);
  v11 = getDataFromData(v10, a3, a4, v9);

  return v11;
}

id makeMTLBufferForTensor(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, _DWORD *a6, int a7, uint64_t a8)
{
  v30[4] = *MEMORY[0x277D85DE8];
  v15 = a1;
  v16 = objc_opt_new();
  if (a7)
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  *a5 = v17;
  if (!a8)
  {
    v30[0] = &unk_284C62298;
    v18 = [MEMORY[0x277CCABB0] numberWithInt:a4];
    v30[1] = v18;
    v19 = [MEMORY[0x277CCABB0] numberWithInt:a3];
    v30[2] = v19;
    v20 = [MEMORY[0x277CCABB0] numberWithInt:a2];
    v30[3] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:4];
    goto LABEL_8;
  }

  if (a8 == 1)
  {
    v29[0] = &unk_284C62298;
    v18 = [MEMORY[0x277CCABB0] numberWithInt:a3];
    v29[1] = v18;
    v19 = [MEMORY[0x277CCABB0] numberWithInt:a2];
    v29[2] = v19;
    v20 = [MEMORY[0x277CCABB0] numberWithInt:a4];
    v29[3] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:4];
    LODWORD(a2) = a4;
LABEL_8:

    if (a7)
    {
      v22 = 16;
    }

    else
    {
      v22 = 49;
    }

    [v16 setDataType:v22];
    v23 = (a2 << a7) + 63;
    v24 = v23 & 0xFFFFFFFFFFFFFFC0;
    if (a7)
    {
      createMetalBufferRand<half>(v15, v21, v23 & 0xFFFFFFFFFFFFFFC0, 1.0);
    }

    else
    {
      createMetalBufferRand<unsigned char>(v15, v21, v24, 255.0);
    }
    v25 = ;
    *a6 = v24;
    v26 = v25;

    goto LABEL_16;
  }

  v26 = 0;
LABEL_16:

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

id createMetalBufferRand<half>(void *a1, void *a2, uint64_t a3, float a4)
{
  v32 = a1;
  v33 = a2;
  if ([v33 count] != 4)
  {
    MTLReportFailure();
LABEL_20:
    v28 = 0;
    goto LABEL_15;
  }

  v7 = [v33 objectAtIndexedSubscript:3];
  v8 = [v7 unsignedIntegerValue];

  v9 = [v33 objectAtIndexedSubscript:2];
  v10 = [v9 unsignedIntegerValue];

  v11 = [v33 objectAtIndexedSubscript:1];
  v38 = [v11 unsignedIntegerValue];

  v12 = [v33 objectAtIndexedSubscript:0];
  v13 = [v12 unsignedIntegerValue];

  v35 = v10 * a3 * v38;
  v14 = malloc_type_malloc(v35 * v13, 0x1000040BDFB0063uLL);
  if (!v14)
  {
    NSLog(&cfstr_MallocFailedBu.isa, v35 * v13);
    goto LABEL_20;
  }

  srand(1u);
  v30 = v35 * v13;
  v31 = v14;
  if (v13)
  {
    v15 = 0;
    v37 = v14;
    v34 = v13;
    do
    {
      v36 = v15;
      if (v38)
      {
        v16 = 0;
        v17 = v37;
        do
        {
          if (v10)
          {
            v18 = 0;
            v19 = v17;
            do
            {
              v20 = v8;
              for (i = v19; v20; --v20)
              {
                v22 = rand();
                _S0 = ((((v22 << 32 >> 2) + v22) >> 61) + (((v22 << 32 >> 2) + v22) >> 63)) * a4;
                __asm { FCVT            H0, S0 }

                *i++ = LOWORD(_S0);
              }

              ++v18;
              v19 = (v19 + a3);
            }

            while (v18 != v10);
          }

          ++v16;
          v17 = (v17 + v10 * a3);
        }

        while (v16 != v38);
      }

      v15 = v36 + 1;
      v37 += v35;
    }

    while (v36 + 1 != v34);
  }

  v28 = [v32 newBufferWithBytes:v31 length:v30 options:0];
  free(v31);
LABEL_15:

  return v28;
}

id createMetalBufferRand<unsigned char>(void *a1, void *a2, uint64_t a3, float a4)
{
  v27 = a1;
  v28 = a2;
  if ([v28 count] != 4)
  {
    MTLReportFailure();
LABEL_20:
    v23 = 0;
    goto LABEL_15;
  }

  v7 = [v28 objectAtIndexedSubscript:3];
  v8 = [v7 unsignedIntegerValue];

  v9 = [v28 objectAtIndexedSubscript:2];
  v10 = [v9 unsignedIntegerValue];

  v11 = [v28 objectAtIndexedSubscript:1];
  v33 = [v11 unsignedIntegerValue];

  v12 = [v28 objectAtIndexedSubscript:0];
  v13 = [v12 unsignedIntegerValue];

  v30 = v10 * a3 * v33;
  v14 = malloc_type_malloc(v30 * v13, 0x100004077774924uLL);
  if (!v14)
  {
    NSLog(&cfstr_MallocFailedBu.isa, v30 * v13);
    goto LABEL_20;
  }

  srand(1u);
  v25 = v30 * v13;
  v26 = v14;
  if (v13)
  {
    v15 = 0;
    v32 = v14;
    v29 = v13;
    do
    {
      v31 = v15;
      if (v33)
      {
        v16 = 0;
        v17 = v32;
        do
        {
          if (v10)
          {
            v18 = 0;
            v19 = v17;
            do
            {
              v20 = v8;
              for (i = v19; v20; --v20)
              {
                v22 = rand();
                *i++ = (((((v22 << 32 >> 2) + v22) >> 61) + (((v22 << 32 >> 2) + v22) >> 63)) * a4);
              }

              ++v18;
              v19 += a3;
            }

            while (v18 != v10);
          }

          ++v16;
          v17 += v10 * a3;
        }

        while (v16 != v33);
      }

      v15 = v31 + 1;
      v32 += v30;
    }

    while (v31 + 1 != v29);
  }

  v23 = [v27 newBufferWithBytes:v26 length:v25 options:0];
  free(v26);
LABEL_15:

  return v23;
}

id makeMPSTensorDataWithData(MPSGraphDevice *a1, uint64_t a2, uint64_t a3, uint64_t a4, NSString *a5, int *a6, int a7, MPSGraphTensorNamedDataLayout a8)
{
  v38[4] = *MEMORY[0x277D85DE8];
  v15 = a1;
  v36 = a5;
  if (a8 == MPSGraphTensorNamedDataLayoutNHWC)
  {
    v37[0] = &unk_284C62298;
    v23 = [MEMORY[0x277CCABB0] numberWithInt:a3];
    v37[1] = v23;
    v24 = [MEMORY[0x277CCABB0] numberWithInt:a2];
    v37[2] = v24;
    v25 = [MEMORY[0x277CCABB0] numberWithInt:a4];
    v37[3] = v25;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:4];

    v20 = a4 << a7;
    if (a7)
    {
      goto LABEL_4;
    }

    goto LABEL_6;
  }

  if (a8 == MPSGraphTensorNamedDataLayoutNCHW)
  {
    v38[0] = &unk_284C62298;
    v16 = [MEMORY[0x277CCABB0] numberWithInt:a4];
    v38[1] = v16;
    v17 = [MEMORY[0x277CCABB0] numberWithInt:a3];
    v38[2] = v17;
    v18 = [MEMORY[0x277CCABB0] numberWithInt:a2];
    v38[3] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:4];

    v20 = ((a2 << a7) + 63) & 0xFFFFFFFFFFFFFFC0;
    if (a7)
    {
LABEL_4:
      v21 = [(MPSGraphDevice *)v15 metalDevice];
      v22 = createMetalBufferRand<half>(v21, v19, v20, 1.0);
      goto LABEL_7;
    }

LABEL_6:
    v21 = [(MPSGraphDevice *)v15 metalDevice];
    v22 = createMetalBufferRand<unsigned char>(v21, v19, v20, 255.0);
LABEL_7:
    v26 = v22;

    if (v26)
    {
      if (a6)
      {
        *a6 = v20;
      }

      v27 = objc_alloc(MEMORY[0x277CD7890]);
      if (a7)
      {
        v28 = 268435472;
      }

      else
      {
        v28 = 8;
      }

      v29 = [v27 initWithMTLBuffer:v26 shape:v19 dataType:v28 rowBytes:v20];
      if (v29)
      {
        goto LABEL_14;
      }

      v32 = [v19 objectAtIndexedSubscript:0];
      [v32 unsignedIntegerValue];
      v35 = [v19 objectAtIndexedSubscript:1];
      [v35 unsignedIntegerValue];
      v33 = [v19 objectAtIndexedSubscript:2];
      [v33 unsignedIntegerValue];
      v34 = [v19 objectAtIndexedSubscript:3];
      [v34 unsignedIntegerValue];
      MTLReportFailure();
    }

    else
    {
      v26 = [v19 objectAtIndexedSubscript:0];
      [v26 unsignedIntegerValue];
      v32 = [v19 objectAtIndexedSubscript:1];
      [v32 unsignedIntegerValue];
      v35 = [v19 objectAtIndexedSubscript:2];
      [v35 unsignedIntegerValue];
      v33 = [v19 objectAtIndexedSubscript:3];
      [v33 unsignedIntegerValue];
      MTLReportFailure();
      v29 = 0;
    }

LABEL_14:
    goto LABEL_16;
  }

  v29 = 0;
LABEL_16:

  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

id makeTensorFromBuffer(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, void *a6, int a7, uint64_t a8)
{
  v40 = *MEMORY[0x277D85DE8];
  v15 = a1;
  v16 = a6;
  v35 = 0;
  v17 = makeMTLBufferForTensor(v15, a2, a3, a4, &v35, a5, a7, a8);
  [v16 addAllocation:v17];
  v18 = objc_opt_new();
  v19 = v18;
  if (a7)
  {
    v20 = 16;
  }

  else
  {
    v20 = 49;
  }

  [v18 setDataType:v20];
  if (a8 == 1)
  {
    v36 = a4;
    v37 = a2;
    v38 = a3;
    v39 = 1;
    v22 = [objc_alloc(MEMORY[0x277CD7048]) initWithRank:4 extents:&v36];
    [v19 setDimensions:v22];
  }

  else if (!a8)
  {
    v36 = a2;
    v37 = a3;
    v38 = a4;
    v39 = 1;
    v21 = [objc_alloc(MEMORY[0x277CD7048]) initWithRank:4 extents:&v36];
    [v19 setDimensions:v21];
  }

  [v19 setUsage:4];
  v23 = v35;
  v24 = [v19 dimensions];
  v25 = ([v24 extentAtDimensionIndex:0] + 0x40 / v23 - 1) & -(0x40 / v23);
  v38 = 0;
  v39 = 0;
  v26 = 1;
  v36 = 1;
  v37 = 0;
  while ([v24 rank] > v26)
  {
    *(&v36 + v26) = v25;
    v25 *= [v24 extentAtDimensionIndex:v26++];
  }

  v27 = [objc_alloc(MEMORY[0x277CD7048]) initWithRank:objc_msgSend(v24 extents:{"rank"), &v36}];

  [v19 setStrides:v27];
  v34 = 0;
  v28 = [v17 newTensorWithDescriptor:v19 offset:0 error:&v34];
  v29 = v34;
  v30 = v29;
  if (v29)
  {
    v31 = [v29 description];
    NSLog(&cfstr_ErrorAllocatin.isa, v31);
  }

  [v16 addAllocation:v28];

  v32 = *MEMORY[0x277D85DE8];

  return v28;
}

id getModelFileURL()
{
  v0 = [MEMORY[0x277CBEBC0] fileURLWithPath:0];

  return v0;
}

id getEmitModelWeightsPath()
{
  v0 = MEMORY[0x277CCACA8];
  v1 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v2 = [v1 resourcePath];
  v3 = [v0 stringWithFormat:@"%@/%@", v2, @"emit_dbfnet_v3_2_constants.dat"];

  return v3;
}

{
  v0 = MEMORY[0x277CCACA8];
  v1 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v2 = [v1 resourcePath];
  v3 = [v0 stringWithFormat:@"%@/%@", v2, @"emit_ubfnet_v3_2_constants.dat"];

  return v3;
}

id getEmitModelWeightsData()
{
  v0 = getEmitModelWeightsPath();
  v1 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v0];

  return v1;
}

{
  v0 = getEmitModelWeightsPath();
  v1 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v0];

  return v1;
}

id getEmitModelWeightsPath(uint64_t a1, uint64_t a2, int a3)
{
  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 resourcePath];
  v7 = v6;
  v8 = @"emit_v35_constants.dat";
  if (a3)
  {
    v8 = @"emit_v35_constants_2x.dat";
  }

  v9 = [v4 stringWithFormat:@"%@/%@", v6, v8];

  return v9;
}

id getEmitModelWeightsData(uint64_t a1, uint64_t a2, int a3)
{
  v3 = getEmitModelWeightsPath(a1, 0, a3);
  v4 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v3];

  return v4;
}

uint64_t parseNum<unsigned long long>(const char *a1, uint64_t a2)
{
  result = sscanf(a1, "0x%llx", a2);
  if (result != 1)
  {
    return sscanf(a1, "%llu", a2) == 1;
  }

  return result;
}

uint64_t parseNum<unsigned int>(const char *a1, uint64_t a2)
{
  result = sscanf(a1, "0x%x", a2);
  if (result != 1)
  {
    return sscanf(a1, "%u", a2) == 1;
  }

  return result;
}

uint64_t parseNum<BOOL>(unsigned __int8 *a1, char *a2)
{
  v2 = *a1;
  if (v2 == 48)
  {
    v3 = a1[1];
    if (!v3)
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (v2 != 49 || a1[1])
  {
    return 0;
  }

  v3 = 1;
LABEL_7:
  *a2 = v3;
  return 1;
}

uint64_t findEnvVarNum<BOOL>(const char *a1, char *a2, char a3, int a4)
{
  v8 = getenv(a1);
  if (!v8 || (v9 = *v8, !*v8))
  {
    v10 = 0;
    *a2 = a3;
    return v10;
  }

  if (v9 == 48)
  {
    if (!v8[1])
    {
      a3 = 0;
      goto LABEL_11;
    }
  }

  else if (v9 == 49 && !v8[1])
  {
    a3 = 1;
LABEL_11:
    v10 = 1;
    goto LABEL_13;
  }

  v10 = 0;
LABEL_13:
  *a2 = a3;
  if (a4)
  {
    setenv(a1, "", 1);
  }

  return v10;
}

BOOL findEnvVarNum<int>(const char *a1, _DWORD *a2, int a3, int a4)
{
  v8 = getenv(a1);
  if (!v8 || !*v8)
  {
    v10 = 0;
    *a2 = a3;
    return v10;
  }

  v9 = sscanf(v8, "%i", a2);
  v10 = v9 == 1;
  if (v9 != 1)
  {
    *a2 = a3;
    if (!a4)
    {
      return v10;
    }

    goto LABEL_5;
  }

  if (a4)
  {
LABEL_5:
    setenv(a1, "", 1);
  }

  return v10;
}

uint64_t findEnvVarNum<unsigned int>(const char *a1, _DWORD *a2, int a3, int a4)
{
  v8 = getenv(a1);
  if (!v8 || !*v8)
  {
    v9 = 0;
    *a2 = a3;
    return v9;
  }

  v9 = parseNum<unsigned int>(v8, a2);
  if ((v9 & 1) == 0)
  {
    *a2 = a3;
    if (!a4)
    {
      return v9;
    }

    goto LABEL_5;
  }

  if (a4)
  {
LABEL_5:
    setenv(a1, "", 1);
  }

  return v9;
}

uint64_t findEnvVarNum<unsigned long long>(const char *a1, void *a2, uint64_t a3, int a4)
{
  v8 = getenv(a1);
  if (!v8 || !*v8)
  {
    v9 = 0;
    *a2 = a3;
    return v9;
  }

  v9 = parseNum<unsigned long long>(v8, a2);
  if ((v9 & 1) == 0)
  {
    *a2 = a3;
    if (!a4)
    {
      return v9;
    }

    goto LABEL_5;
  }

  if (a4)
  {
LABEL_5:
    setenv(a1, "", 1);
  }

  return v9;
}

uint64_t getTemporalScalarBRNetVersionOverride(uint64_t a1)
{
  if (isInternalBuild(void)::once != -1)
  {
    getTemporalScalarBRNetVersionOverride();
  }

  if (isInternalBuild(void)::isInternal == 1)
  {
    findEnvVarNum<int>();
  }

  return a1;
}

id getMPSGraphExecutable(BRNetDescriptor *a1, MPSGraphCompilationDescriptor *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:a1->weight_file];
  v5 = v4;
  version = a1->version;
  if (a1->version <= 1)
  {
    if (version)
    {
      if (version != 1)
      {
        goto LABEL_15;
      }

      v7 = EmitBR_Net_V40_nhwc_getMPSGraphExecutable(v4, a1, v3);
    }

    else
    {
      v7 = EmitBR_Net_V35_getMPSGraphExecutable(v4, a1, v3);
    }
  }

  else
  {
    switch(version)
    {
      case 2:
        v7 = EmitBR_Net_V40_nchw_getMPSGraphExecutable(v4, a1, v3);
        break;
      case 3:
        v7 = EmitBR_Net_V41_nchw_getMPSGraphExecutable(v4, a1, v3);
        break;
      case 4:
        v7 = EmitBR_Net_V41_nhwc_getMPSGraphExecutable(v4, a1, v3);
        break;
      default:
LABEL_15:
        MTLReportFailure();
        abort();
    }
  }

  v8 = v7;

  return v8;
}

id EmitBR_Net_V35_getMPSGraphExecutable(NSData *a1, const BRNetDescriptor *a2, MPSGraphCompilationDescriptor *a3)
{
  v336[4] = *MEMORY[0x277D85DE8];
  v329 = a1;
  v259 = a3;
  v5 = objc_opt_new();
  v336[0] = &unk_284C62298;
  v336[1] = &unk_284C622B0;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2->input_height];
  v336[2] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2->input_width];
  v336[3] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v336 count:4];
  v319 = [v5 placeholderWithShape:v8 dataType:8 name:@"tensor0"];

  v314 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.007843];
  v9 = [(NSData *)v329 subdataWithRange:0, 1440];
  v313 = [v5 constantWithData:v9 shape:&unk_284C62EB0 dataType:536870920];

  v10 = [(NSData *)v329 subdataWithRange:1440, 16];
  v312 = [v5 constantWithData:v10 shape:&unk_284C62EC8 dataType:268435472];

  v11 = [(NSData *)v329 subdataWithRange:1456, 16];
  v311 = [v5 constantWithData:v11 shape:&unk_284C62EE0 dataType:268435472];

  v309 = [v5 constantWithScalar:&unk_284C62EF8 shape:268435472 dataType:0.0];
  v310 = [v5 constantWithScalar:&unk_284C62F10 shape:268435472 dataType:1.0];
  v308 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.216797];
  v12 = [(NSData *)v329 subdataWithRange:1472, 9216];
  v307 = [v5 constantWithData:v12 shape:&unk_284C62F28 dataType:536870920];

  v13 = [(NSData *)v329 subdataWithRange:10688, 64];
  v306 = [v5 constantWithData:v13 shape:&unk_284C62F40 dataType:268435472];

  v14 = [(NSData *)v329 subdataWithRange:10752, 64];
  v305 = [v5 constantWithData:v14 shape:&unk_284C62F58 dataType:268435472];

  v15 = [(NSData *)v329 subdataWithRange:10816, 9216];
  v304 = [v5 constantWithData:v15 shape:&unk_284C62F70 dataType:536870920];

  v16 = [(NSData *)v329 subdataWithRange:20032, 64];
  v303 = [v5 constantWithData:v16 shape:&unk_284C62F88 dataType:268435472];

  v17 = [(NSData *)v329 subdataWithRange:20096, 64];
  v302 = [v5 constantWithData:v17 shape:&unk_284C62FA0 dataType:268435472];

  v18 = [(NSData *)v329 subdataWithRange:20160, 18432];
  v301 = [v5 constantWithData:v18 shape:&unk_284C62FB8 dataType:536870920];

  v19 = [(NSData *)v329 subdataWithRange:38592, 128];
  v300 = [v5 constantWithData:v19 shape:&unk_284C62FD0 dataType:268435472];

  v20 = [(NSData *)v329 subdataWithRange:38720, 128];
  v299 = [v5 constantWithData:v20 shape:&unk_284C62FE8 dataType:268435472];

  v21 = [(NSData *)v329 subdataWithRange:38848, 73728];
  v298 = [v5 constantWithData:v21 shape:&unk_284C63000 dataType:536870920];

  v22 = [(NSData *)v329 subdataWithRange:112576, 256];
  v297 = [v5 constantWithData:v22 shape:&unk_284C63018 dataType:268435472];

  v23 = [(NSData *)v329 subdataWithRange:112832, 256];
  v296 = [v5 constantWithData:v23 shape:&unk_284C63030 dataType:268435472];

  v295 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:162.75];
  v24 = [(NSData *)v329 subdataWithRange:113088, 0x4000];
  v294 = [v5 constantWithData:v24 shape:&unk_284C63048 dataType:536870920];

  v25 = [(NSData *)v329 subdataWithRange:129472, 256];
  v293 = [v5 constantWithData:v25 shape:&unk_284C63060 dataType:268435472];

  v26 = [(NSData *)v329 subdataWithRange:129728, 256];
  v292 = [v5 constantWithData:v26 shape:&unk_284C63078 dataType:268435472];

  v320 = [v5 constantWithScalar:&unk_284C63090 shape:268435472 dataType:0.0];
  v321 = [v5 constantWithScalar:&unk_284C630A8 shape:268435472 dataType:1.0];
  v290 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:232.75];
  v27 = [(NSData *)v329 subdataWithRange:129984, 0x2000];
  v289 = [v5 constantWithData:v27 shape:&unk_284C630C0 dataType:536870920];

  v28 = [(NSData *)v329 subdataWithRange:138176, 128];
  v288 = [v5 constantWithData:v28 shape:&unk_284C630D8 dataType:268435472];

  v29 = [(NSData *)v329 subdataWithRange:138304, 128];
  v286 = [v5 constantWithData:v29 shape:&unk_284C630F0 dataType:268435472];

  v285 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:169.0];
  v30 = [(NSData *)v329 subdataWithRange:138432, 16];
  v195 = [v5 constantWithData:v30 shape:&unk_284C63108 dataType:536870944];

  v31 = [(NSData *)v329 subdataWithRange:138448, 1024];
  v284 = [v5 constantWithData:v31 shape:&unk_284C63120 dataType:536870920];

  v32 = [(NSData *)v329 subdataWithRange:139472, 128];
  v283 = [v5 constantWithData:v32 shape:&unk_284C63138 dataType:268435472];

  v282 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:172.0];
  v291 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:32.8125];
  v33 = [(NSData *)v329 subdataWithRange:139600, 4096];
  v281 = [v5 constantWithData:v33 shape:&unk_284C63150 dataType:536870920];

  v34 = [(NSData *)v329 subdataWithRange:143696, 128];
  v278 = [v5 constantWithData:v34 shape:&unk_284C63168 dataType:268435472];

  v35 = [(NSData *)v329 subdataWithRange:143824, 128];
  v275 = [v5 constantWithData:v35 shape:&unk_284C63180 dataType:268435472];

  v325 = [v5 constantWithScalar:&unk_284C63198 shape:268435472 dataType:0.0];
  v326 = [v5 constantWithScalar:&unk_284C631B0 shape:268435472 dataType:1.0];
  v274 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:43.71875];
  v36 = [(NSData *)v329 subdataWithRange:143952, 2048];
  v273 = [v5 constantWithData:v36 shape:&unk_284C631C8 dataType:536870920];

  v37 = [(NSData *)v329 subdataWithRange:146000, 64];
  v270 = [v5 constantWithData:v37 shape:&unk_284C631E0 dataType:268435472];

  v38 = [(NSData *)v329 subdataWithRange:146064, 64];
  v269 = [v5 constantWithData:v38 shape:&unk_284C631F8 dataType:268435472];

  v267 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:18.65625];
  v39 = [(NSData *)v329 subdataWithRange:146128, 16];
  v194 = [v5 constantWithData:v39 shape:&unk_284C63210 dataType:536870944];

  v40 = [(NSData *)v329 subdataWithRange:146144, 512];
  v265 = [v5 constantWithData:v40 shape:&unk_284C63228 dataType:536870920];

  v41 = [(NSData *)v329 subdataWithRange:146656, 64];
  v264 = [v5 constantWithData:v41 shape:&unk_284C63240 dataType:268435472];

  v258 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:12.539062];
  v287 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:5.898438];
  v191 = [v5 constantWithScalar:&unk_284C63258 shape:536870944 dataType:1.0];
  v192 = [v5 constantWithScalar:&unk_284C63270 shape:536870944 dataType:0.0];
  v193 = [v5 constantWithScalar:&unk_284C63288 shape:536870944 dataType:16.0];
  v318 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:1.546875];
  v42 = [(NSData *)v329 subdataWithRange:146720, 1024];
  v257 = [v5 constantWithData:v42 shape:&unk_284C632A0 dataType:536870920];

  v43 = [(NSData *)v329 subdataWithRange:147744, 64];
  v256 = [v5 constantWithData:v43 shape:&unk_284C632B8 dataType:268435472];

  v44 = [(NSData *)v329 subdataWithRange:147808, 64];
  v252 = [v5 constantWithData:v44 shape:&unk_284C632D0 dataType:268435472];

  v251 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:5.726562];
  v45 = [(NSData *)v329 subdataWithRange:147872, 512];
  v249 = [v5 constantWithData:v45 shape:&unk_284C632E8 dataType:536870920];

  v46 = [(NSData *)v329 subdataWithRange:148384, 32];
  v248 = [v5 constantWithData:v46 shape:&unk_284C63300 dataType:268435472];

  v47 = [(NSData *)v329 subdataWithRange:148416, 32];
  v247 = [v5 constantWithData:v47 shape:&unk_284C63318 dataType:268435472];

  v244 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:5.152344];
  v48 = [(NSData *)v329 subdataWithRange:148448, 32];
  v190 = [v5 constantWithData:v48 shape:&unk_284C63330 dataType:536870944];

  v189 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:536870944 dataType:0.0];
  v49 = [(NSData *)v329 subdataWithRange:148480, 16];
  v188 = [v5 constantWithData:v49 shape:&unk_284C63348 dataType:536870944];

  v50 = [(NSData *)v329 subdataWithRange:148496, 256];
  v241 = [v5 constantWithData:v50 shape:&unk_284C63360 dataType:536870920];

  v51 = [(NSData *)v329 subdataWithRange:148752, 32];
  v240 = [v5 constantWithData:v51 shape:&unk_284C63378 dataType:268435472];

  v235 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:5.457031];
  v324 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:49.75];
  v52 = [(NSData *)v329 subdataWithRange:148784, 512];
  v233 = [v5 constantWithData:v52 shape:&unk_284C63390 dataType:536870920];

  v53 = [(NSData *)v329 subdataWithRange:149296, 64];
  v232 = [v5 constantWithData:v53 shape:&unk_284C633A8 dataType:268435472];

  v54 = [(NSData *)v329 subdataWithRange:149360, 64];
  v231 = [v5 constantWithData:v54 shape:&unk_284C633C0 dataType:268435472];

  v327 = [v5 constantWithScalar:&unk_284C633D8 shape:268435472 dataType:0.0];
  v328 = [v5 constantWithScalar:&unk_284C633F0 shape:268435472 dataType:1.0];
  v228 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:2.353516];
  v55 = [(NSData *)v329 subdataWithRange:149424, 512];
  v227 = [v5 constantWithData:v55 shape:&unk_284C63408 dataType:536870920];

  v56 = [(NSData *)v329 subdataWithRange:149936, 32];
  v226 = [v5 constantWithData:v56 shape:&unk_284C63420 dataType:268435472];

  v57 = [(NSData *)v329 subdataWithRange:149968, 32];
  v223 = [v5 constantWithData:v57 shape:&unk_284C63438 dataType:268435472];

  v222 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.471436];
  v58 = [(NSData *)v329 subdataWithRange:150000, 256];
  v220 = [v5 constantWithData:v58 shape:&unk_284C63450 dataType:536870920];

  v59 = [(NSData *)v329 subdataWithRange:150256, 32];
  v217 = [v5 constantWithData:v59 shape:&unk_284C63468 dataType:268435472];

  v60 = [(NSData *)v329 subdataWithRange:150288, 32];
  v214 = [v5 constantWithData:v60 shape:&unk_284C63480 dataType:268435472];

  v322 = [v5 constantWithScalar:&unk_284C63498 shape:268435472 dataType:0.0];
  v323 = [v5 constantWithScalar:&unk_284C634B0 shape:268435472 dataType:1.0];
  v213 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.063416];
  v61 = [(NSData *)v329 subdataWithRange:150320, 6336];
  v212 = [v5 constantWithData:v61 shape:&unk_284C634C8 dataType:536870920];

  v62 = [(NSData *)v329 subdataWithRange:156656, 88];
  v211 = [v5 constantWithData:v62 shape:&unk_284C634E0 dataType:268435472];

  v63 = [(NSData *)v329 subdataWithRange:156744, 88];
  v208 = [v5 constantWithData:v63 shape:&unk_284C634F8 dataType:268435472];

  v207 = [v5 constantWithScalar:&unk_284C63510 shape:268435472 dataType:0.0];
  v206 = [v5 constantWithScalar:&unk_284C63528 shape:268435472 dataType:1.0];
  v205 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.003922];
  v315 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:8 dataType:0.0];
  v202 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:536870944 dataType:3.0];
  v201 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:536870944 dataType:2.0];
  v200 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:536870944 dataType:1.0];
  v64 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:536870920 dataType:0.0];
  v280 = [v5 dequantizeTensor:v319 scaleTensor:v314 zeroPointTensor:v315 dataType:268435472 axis:0 name:@"tensor97"];
  v279 = [v5 dequantizeTensor:v313 scaleTensor:v312 zeroPointTensor:v64 dataType:268435472 axis:0 name:@"tensor98"];
  v181 = [MEMORY[0x277CD7818] descriptorWithStrideInX:2 strideInY:2 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:2 paddingRight:2 paddingTop:2 paddingBottom:2 paddingStyle:0 dataLayout:0 weightsLayout:2];
  v180 = [v5 convolution2DWithSourceTensor:v280 weightsTensor:v279 descriptor:? name:?];
  LODWORD(v65) = 925353388;
  v179 = [v5 normalizationWithTensor:v65 meanTensor:? varianceTensor:? gammaTensor:? betaTensor:? epsilon:? name:?];
  v178 = [v5 reLUWithTensor:? name:?];
  v177 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v277 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v276 = [v5 dequantizeTensor:v307 scaleTensor:v306 zeroPointTensor:v64 dataType:268435472 axis:0 name:@"tensor104"];
  v176 = [MEMORY[0x277CD7818] descriptorWithStrideInX:2 strideInY:2 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:2 paddingRight:2 paddingTop:2 paddingBottom:2 paddingStyle:0 dataLayout:0 weightsLayout:2];
  v175 = [v5 convolution2DWithSourceTensor:v277 weightsTensor:v276 descriptor:? name:?];
  LODWORD(v66) = 925353388;
  v174 = [v5 normalizationWithTensor:v66 meanTensor:? varianceTensor:? gammaTensor:? betaTensor:? epsilon:? name:?];
  v173 = [v5 reLUWithTensor:? name:?];
  v236 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v272 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v271 = [v5 dequantizeTensor:v304 scaleTensor:v303 zeroPointTensor:v64 dataType:268435472 axis:0 name:@"tensor110"];
  v172 = [MEMORY[0x277CD7818] descriptorWithStrideInX:2 strideInY:2 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:1 paddingRight:1 paddingTop:1 paddingBottom:1 paddingStyle:0 dataLayout:0 weightsLayout:2];
  v171 = [v5 convolution2DWithSourceTensor:v272 weightsTensor:v271 descriptor:? name:?];
  LODWORD(v67) = 925353388;
  v170 = [v5 normalizationWithTensor:v67 meanTensor:? varianceTensor:? gammaTensor:? betaTensor:? epsilon:? name:?];
  v169 = [v5 reLUWithTensor:? name:?];
  v168 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v316 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v268 = [v5 dequantizeTensor:v301 scaleTensor:v300 zeroPointTensor:v64 dataType:268435472 axis:0 name:@"tensor116"];
  v167 = [MEMORY[0x277CD7818] descriptorWithStrideInX:2 strideInY:2 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:1 paddingRight:1 paddingTop:1 paddingBottom:1 paddingStyle:0 dataLayout:0 weightsLayout:2];
  v166 = [v5 convolution2DWithSourceTensor:v316 weightsTensor:v268 descriptor:? name:?];
  LODWORD(v68) = 925353388;
  v165 = [v5 normalizationWithTensor:v68 meanTensor:? varianceTensor:? gammaTensor:? betaTensor:? epsilon:? name:?];
  v164 = [v5 reLUWithTensor:? name:?];
  v163 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v317 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v266 = [v5 dequantizeTensor:v298 scaleTensor:v297 zeroPointTensor:v64 dataType:268435472 axis:0 name:@"tensor122"];
  v162 = [MEMORY[0x277CD7818] descriptorWithStrideInX:2 strideInY:2 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:1 paddingRight:1 paddingTop:1 paddingBottom:1 paddingStyle:0 dataLayout:0 weightsLayout:2];
  v161 = [v5 convolution2DWithSourceTensor:v317 weightsTensor:v266 descriptor:? name:?];
  LODWORD(v69) = 925353388;
  v160 = [v5 normalizationWithTensor:v69 meanTensor:? varianceTensor:? gammaTensor:? betaTensor:? epsilon:? name:?];
  v159 = [v5 reLUWithTensor:? name:?];
  v158 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v263 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v262 = [v5 dequantizeTensor:v294 scaleTensor:v293 zeroPointTensor:v64 dataType:268435472 axis:0 name:@"tensor128"];
  v157 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:0 dataLayout:0 weightsLayout:2];
  v156 = [v5 convolution2DWithSourceTensor:v263 weightsTensor:v262 descriptor:? name:?];
  LODWORD(v70) = 925353388;
  v155 = [v5 normalizationWithTensor:v70 meanTensor:? varianceTensor:? gammaTensor:? betaTensor:? epsilon:? name:?];
  v154 = [v5 reLUWithTensor:? name:?];
  v153 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v260 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v261 = [v5 dequantizeTensor:v289 scaleTensor:v288 zeroPointTensor:v64 dataType:268435472 axis:0 name:@"tensor134"];
  v186 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:0 dataLayout:0 weightsLayout:2];
  v185 = [v5 convolution2DWithSourceTensor:v260 weightsTensor:v261 descriptor:? name:?];
  LODWORD(v71) = 925353388;
  v184 = [v5 normalizationWithTensor:v71 meanTensor:? varianceTensor:? gammaTensor:? betaTensor:? epsilon:? name:?];
  v183 = [v5 reLUWithTensor:? name:?];
  v182 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v187 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v253 = [v5 padTensor:0.0 withPaddingMode:? leftPadding:? rightPadding:? constantValue:? name:?];
  v254 = [v5 dequantizeTensor:v284 scaleTensor:v283 zeroPointTensor:v64 dataType:268435472 axis:0 name:@"tensor141"];
  v255 = [MEMORY[0x277CD7818] descriptorWithStrideInX:2 strideInY:2 dilationRateInX:1 dilationRateInY:1 groups:64 paddingLeft:3 paddingRight:3 paddingTop:3 paddingBottom:3 paddingStyle:0 dataLayout:0 weightsLayout:2];
  v335[0] = &unk_284C62298;
  v335[1] = &unk_284C62328;
  v72 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2->output_height >> 3];
  v335[2] = v72;
  v73 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2->output_width >> 3];
  v335[3] = v73;
  v74 = [MEMORY[0x277CBEA60] arrayWithObjects:v335 count:4];
  v250 = [v5 convolutionTranspose2DWithSourceTensor:v253 weightsTensor:v254 outputShape:v74 descriptor:v255 name:@"tensor142"];

  v152 = [v5 quantizeTensor:v250 scaleTensor:v282 zeroPointTensor:v64 dataType:536870920 axis:0 name:@"tensor143"];
  v151 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v150 = [v5 additionWithPrimaryTensor:? secondaryTensor:? name:?];
  v149 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v246 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v245 = [v5 dequantizeTensor:v281 scaleTensor:v278 zeroPointTensor:v64 dataType:268435472 axis:0 name:@"tensor148"];
  v148 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:0 dataLayout:0 weightsLayout:2];
  v147 = [v5 convolution2DWithSourceTensor:v246 weightsTensor:v245 descriptor:? name:?];
  LODWORD(v75) = 925353388;
  v146 = [v5 normalizationWithTensor:v75 meanTensor:? varianceTensor:? gammaTensor:? betaTensor:? epsilon:? name:?];
  v145 = [v5 reLUWithTensor:? name:?];
  v144 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v243 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v242 = [v5 dequantizeTensor:v273 scaleTensor:v270 zeroPointTensor:v64 dataType:268435472 axis:0 name:@"tensor154"];
  v143 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:0 dataLayout:0 weightsLayout:2];
  v142 = [v5 convolution2DWithSourceTensor:v243 weightsTensor:v242 descriptor:? name:?];
  LODWORD(v76) = 925353388;
  v140 = [v5 normalizationWithTensor:v76 meanTensor:? varianceTensor:? gammaTensor:? betaTensor:? epsilon:? name:?];
  v139 = [v5 reLUWithTensor:? name:?];
  v138 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v141 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v237 = [v5 padTensor:0.0 withPaddingMode:? leftPadding:? rightPadding:? constantValue:? name:?];
  v238 = [v5 dequantizeTensor:v265 scaleTensor:v264 zeroPointTensor:v64 dataType:268435472 axis:0 name:@"tensor161"];
  v239 = [MEMORY[0x277CD7818] descriptorWithStrideInX:2 strideInY:2 dilationRateInX:1 dilationRateInY:1 groups:32 paddingLeft:3 paddingRight:3 paddingTop:3 paddingBottom:3 paddingStyle:0 dataLayout:0 weightsLayout:2];
  v334[0] = &unk_284C62298;
  v334[1] = &unk_284C622F8;
  v77 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2->output_height >> 2];
  v334[2] = v77;
  v78 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2->output_width >> 2];
  v334[3] = v78;
  v79 = [MEMORY[0x277CBEA60] arrayWithObjects:v334 count:4];
  v234 = [v5 convolutionTranspose2DWithSourceTensor:v237 weightsTensor:v238 outputShape:v79 descriptor:v239 name:@"tensor162"];

  v136 = [v5 quantizeTensor:v234 scaleTensor:v258 zeroPointTensor:v64 dataType:536870920 axis:0 name:@"tensor163"];
  v135 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v134 = [v5 additionWithPrimaryTensor:? secondaryTensor:? name:?];
  v133 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v230 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v132 = [v5 sliceTensor:v236 dimension:1 start:0 length:16 name:@"tensor168"];
  v216 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v229 = [v5 dequantizeTensor:v257 scaleTensor:v256 zeroPointTensor:v64 dataType:268435472 axis:0 name:@"tensor170"];
  v131 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:0 dataLayout:0 weightsLayout:2];
  v130 = [v5 convolution2DWithSourceTensor:v230 weightsTensor:v229 descriptor:? name:?];
  LODWORD(v80) = 925353388;
  v129 = [v5 normalizationWithTensor:v80 meanTensor:? varianceTensor:? gammaTensor:? betaTensor:? epsilon:? name:?];
  v128 = [v5 reLUWithTensor:? name:?];
  v127 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v225 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v224 = [v5 dequantizeTensor:v249 scaleTensor:v248 zeroPointTensor:v64 dataType:268435472 axis:0 name:@"tensor176"];
  v126 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:0 dataLayout:0 weightsLayout:2];
  v125 = [v5 convolution2DWithSourceTensor:v225 weightsTensor:v224 descriptor:? name:?];
  LODWORD(v81) = 925353388;
  v124 = [v5 normalizationWithTensor:v81 meanTensor:? varianceTensor:? gammaTensor:? betaTensor:? epsilon:? name:?];
  v123 = [v5 reLUWithTensor:? name:?];
  v122 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v137 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v218 = [v5 padTensor:0.0 withPaddingMode:? leftPadding:? rightPadding:? constantValue:? name:?];
  v219 = [v5 dequantizeTensor:v241 scaleTensor:v240 zeroPointTensor:v64 dataType:268435472 axis:0 name:@"tensor183"];
  v221 = [MEMORY[0x277CD7818] descriptorWithStrideInX:2 strideInY:2 dilationRateInX:1 dilationRateInY:1 groups:16 paddingLeft:3 paddingRight:3 paddingTop:3 paddingBottom:3 paddingStyle:0 dataLayout:0 weightsLayout:2];
  v333[0] = &unk_284C62298;
  v333[1] = &unk_284C62370;
  v82 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2->output_height >> 1];
  v333[2] = v82;
  v83 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2->output_width >> 1];
  v333[3] = v83;
  v84 = [MEMORY[0x277CBEA60] arrayWithObjects:v333 count:4];
  v215 = [v5 convolutionTranspose2DWithSourceTensor:v218 weightsTensor:v219 outputShape:v84 descriptor:v221 name:@"tensor184"];

  v121 = [v5 quantizeTensor:v215 scaleTensor:v235 zeroPointTensor:v64 dataType:536870920 axis:0 name:@"tensor185"];
  v120 = [v5 dequantizeTensor:v121 scaleTensor:v235 zeroPointTensor:v64 dataType:268435472 axis:0 name:@"tensor186"];
  v119 = [v5 additionWithPrimaryTensor:? secondaryTensor:? name:?];
  v118 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v210 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v209 = [v5 dequantizeTensor:v233 scaleTensor:v232 zeroPointTensor:v64 dataType:268435472 axis:0 name:@"tensor190"];
  v117 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:0 dataLayout:0 weightsLayout:2];
  v116 = [v5 convolution2DWithSourceTensor:v210 weightsTensor:v209 descriptor:? name:?];
  LODWORD(v85) = 925353388;
  v115 = [v5 normalizationWithTensor:v85 meanTensor:? varianceTensor:? gammaTensor:? betaTensor:? epsilon:? name:?];
  v114 = [v5 reLUWithTensor:? name:?];
  v113 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v204 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v203 = [v5 dequantizeTensor:v227 scaleTensor:v226 zeroPointTensor:v64 dataType:268435472 axis:0 name:@"tensor196"];
  v112 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:0 dataLayout:0 weightsLayout:2];
  v111 = [v5 convolution2DWithSourceTensor:v204 weightsTensor:v203 descriptor:? name:?];
  LODWORD(v86) = 925353388;
  v110 = [v5 normalizationWithTensor:v86 meanTensor:? varianceTensor:? gammaTensor:? betaTensor:? epsilon:? name:?];
  v109 = [v5 reLUWithTensor:? name:?];
  v108 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v199 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v198 = [v5 dequantizeTensor:v220 scaleTensor:v217 zeroPointTensor:v64 dataType:268435472 axis:0 name:@"tensor202"];
  v107 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:0 dataLayout:0 weightsLayout:2];
  v106 = [v5 convolution2DWithSourceTensor:v199 weightsTensor:v198 descriptor:? name:?];
  LODWORD(v87) = 925353388;
  v105 = [v5 normalizationWithTensor:v87 meanTensor:? varianceTensor:? gammaTensor:? betaTensor:? epsilon:? name:?];
  v104 = [v5 reLUWithTensor:? name:?];
  v103 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v197 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v196 = [v5 dequantizeTensor:v212 scaleTensor:v211 zeroPointTensor:v64 dataType:268435472 axis:0 name:@"tensor208"];
  v102 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:1 paddingRight:1 paddingTop:1 paddingBottom:1 paddingStyle:0 dataLayout:0 weightsLayout:2];
  v101 = [v5 convolution2DWithSourceTensor:v197 weightsTensor:v196 descriptor:? name:?];
  LODWORD(v88) = 925353388;
  v89 = [v5 normalizationWithTensor:v88 meanTensor:? varianceTensor:? gammaTensor:? betaTensor:? epsilon:? name:?];
  v90 = [v5 sigmoidWithTensor:v89 name:@"tensor211"];
  v91 = [v5 quantizeTensor:v90 scaleTensor:v205 zeroPointTensor:v315 dataType:8 axis:0 name:@"tensor212"];
  v92 = [v5 depthToSpace2DTensor:v91 widthAxisTensor:v202 heightAxisTensor:v201 depthAxisTensor:v200 blockSize:2 usePixelShuffleOrder:1 name:@"tensor213"];
  v332 = v92;
  v93 = [MEMORY[0x277CBEA60] arrayWithObjects:&v332 count:1];
  v330 = v319;
  v94 = objc_alloc(MEMORY[0x277CD7880]);
  v95 = [v319 shape];
  v96 = [v94 initWithShape:v95 dataType:{objc_msgSend(v319, "dataType")}];
  v331 = v96;
  v97 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v331 forKeys:&v330 count:1];

  v98 = [v5 compileWithDevice:0 feeds:v97 targetTensors:v93 targetOperations:0 compilationDescriptor:v259];

  v99 = *MEMORY[0x277D85DE8];

  return v98;
}

id EmitBR_Net_V40_nchw_getMPSGraphExecutable(NSData *a1, const BRNetDescriptor *a2, MPSGraphCompilationDescriptor *a3)
{
  v306[4] = *MEMORY[0x277D85DE8];
  v301 = a1;
  v243 = a3;
  v5 = objc_opt_new();
  v306[0] = &unk_284C62298;
  v306[1] = &unk_284C622B0;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2->input_height];
  v306[2] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2->input_width];
  v306[3] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v306 count:4];
  v298 = [v5 placeholderWithShape:v8 dataType:8 name:@"tensor0"];

  v305 = xmmword_2398F2710;
  v9 = [MEMORY[0x277CBEA90] dataWithBytes:&v305 length:16];
  v300 = [v5 constantWithData:v9 shape:&unk_284C635D0 dataType:536870944];

  v290 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.007843];
  v10 = [(NSData *)v301 subdataWithRange:0, 1440];
  v289 = [v5 constantWithData:v10 shape:&unk_284C635E8 dataType:536870920];

  v11 = [(NSData *)v301 subdataWithRange:1440, 16];
  v288 = [v5 constantWithData:v11 shape:&unk_284C63600 dataType:268435472];

  v12 = [(NSData *)v301 subdataWithRange:1456, 16];
  v287 = [v5 constantWithData:v12 shape:&unk_284C63618 dataType:268435472];

  v286 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.216797];
  v13 = [(NSData *)v301 subdataWithRange:1472, 9216];
  v285 = [v5 constantWithData:v13 shape:&unk_284C63630 dataType:536870920];

  v14 = [(NSData *)v301 subdataWithRange:10688, 64];
  v284 = [v5 constantWithData:v14 shape:&unk_284C63648 dataType:268435472];

  v15 = [(NSData *)v301 subdataWithRange:10752, 64];
  v283 = [v5 constantWithData:v15 shape:&unk_284C63660 dataType:268435472];

  v16 = [(NSData *)v301 subdataWithRange:10816, 9216];
  v282 = [v5 constantWithData:v16 shape:&unk_284C63678 dataType:536870920];

  v17 = [(NSData *)v301 subdataWithRange:20032, 64];
  v281 = [v5 constantWithData:v17 shape:&unk_284C63690 dataType:268435472];

  v18 = [(NSData *)v301 subdataWithRange:20096, 64];
  v280 = [v5 constantWithData:v18 shape:&unk_284C636A8 dataType:268435472];

  v19 = [(NSData *)v301 subdataWithRange:20160, 18432];
  v279 = [v5 constantWithData:v19 shape:&unk_284C636C0 dataType:536870920];

  v20 = [(NSData *)v301 subdataWithRange:38592, 128];
  v278 = [v5 constantWithData:v20 shape:&unk_284C636D8 dataType:268435472];

  v21 = [(NSData *)v301 subdataWithRange:38720, 128];
  v277 = [v5 constantWithData:v21 shape:&unk_284C636F0 dataType:268435472];

  v22 = [(NSData *)v301 subdataWithRange:38848, 73728];
  v276 = [v5 constantWithData:v22 shape:&unk_284C63708 dataType:536870920];

  v23 = [(NSData *)v301 subdataWithRange:112576, 256];
  v275 = [v5 constantWithData:v23 shape:&unk_284C63720 dataType:268435472];

  v24 = [(NSData *)v301 subdataWithRange:112832, 256];
  v274 = [v5 constantWithData:v24 shape:&unk_284C63738 dataType:268435472];

  v273 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:162.75];
  v25 = [(NSData *)v301 subdataWithRange:113088, 0x4000];
  v272 = [v5 constantWithData:v25 shape:&unk_284C63750 dataType:536870920];

  v26 = [(NSData *)v301 subdataWithRange:129472, 256];
  v271 = [v5 constantWithData:v26 shape:&unk_284C63768 dataType:268435472];

  v27 = [(NSData *)v301 subdataWithRange:129728, 256];
  v269 = [v5 constantWithData:v27 shape:&unk_284C63780 dataType:268435472];

  v268 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:232.75];
  v28 = [(NSData *)v301 subdataWithRange:129984, 0x2000];
  v267 = [v5 constantWithData:v28 shape:&unk_284C63798 dataType:536870920];

  v29 = [(NSData *)v301 subdataWithRange:138176, 128];
  v266 = [v5 constantWithData:v29 shape:&unk_284C637B0 dataType:268435472];

  v30 = [(NSData *)v301 subdataWithRange:138304, 128];
  v264 = [v5 constantWithData:v30 shape:&unk_284C637C8 dataType:268435472];

  v297 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:169.0];
  v31 = [(NSData *)v301 subdataWithRange:138432, 1024];
  v263 = [v5 constantWithData:v31 shape:&unk_284C637E0 dataType:536870920];

  v32 = [(NSData *)v301 subdataWithRange:139456, 128];
  v262 = [v5 constantWithData:v32 shape:&unk_284C637F8 dataType:268435472];

  v261 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:172.0];
  v270 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:32.8125];
  v33 = [(NSData *)v301 subdataWithRange:139584, 4096];
  v260 = [v5 constantWithData:v33 shape:&unk_284C63810 dataType:536870920];

  v34 = [(NSData *)v301 subdataWithRange:143680, 128];
  v259 = [v5 constantWithData:v34 shape:&unk_284C63828 dataType:268435472];

  v35 = [(NSData *)v301 subdataWithRange:143808, 128];
  v256 = [v5 constantWithData:v35 shape:&unk_284C63840 dataType:268435472];

  v255 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:43.71875];
  v36 = [(NSData *)v301 subdataWithRange:143936, 2048];
  v252 = [v5 constantWithData:v36 shape:&unk_284C63858 dataType:536870920];

  v37 = [(NSData *)v301 subdataWithRange:145984, 64];
  v251 = [v5 constantWithData:v37 shape:&unk_284C63870 dataType:268435472];

  v38 = [(NSData *)v301 subdataWithRange:146048, 64];
  v248 = [v5 constantWithData:v38 shape:&unk_284C63888 dataType:268435472];

  v294 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:18.65625];
  v39 = [(NSData *)v301 subdataWithRange:146112, 512];
  v246 = [v5 constantWithData:v39 shape:&unk_284C638A0 dataType:536870920];

  v40 = [(NSData *)v301 subdataWithRange:146624, 64];
  v245 = [v5 constantWithData:v40 shape:&unk_284C638B8 dataType:268435472];

  v242 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:12.539062];
  v265 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:5.898438];
  v296 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:1.546875];
  v41 = [(NSData *)v301 subdataWithRange:146688, 1024];
  v239 = [v5 constantWithData:v41 shape:&unk_284C638D0 dataType:536870920];

  v42 = [(NSData *)v301 subdataWithRange:147712, 64];
  v238 = [v5 constantWithData:v42 shape:&unk_284C638E8 dataType:268435472];

  v43 = [(NSData *)v301 subdataWithRange:147776, 64];
  v235 = [v5 constantWithData:v43 shape:&unk_284C63900 dataType:268435472];

  v234 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:5.726562];
  v44 = [(NSData *)v301 subdataWithRange:147840, 512];
  v232 = [v5 constantWithData:v44 shape:&unk_284C63918 dataType:536870920];

  v45 = [(NSData *)v301 subdataWithRange:148352, 32];
  v228 = [v5 constantWithData:v45 shape:&unk_284C63930 dataType:268435472];

  v46 = [(NSData *)v301 subdataWithRange:148384, 32];
  v227 = [v5 constantWithData:v46 shape:&unk_284C63948 dataType:268435472];

  v291 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:5.152344];
  v47 = [(NSData *)v301 subdataWithRange:148416, 256];
  v224 = [v5 constantWithData:v47 shape:&unk_284C63960 dataType:536870920];

  v48 = [(NSData *)v301 subdataWithRange:148672, 32];
  v221 = [v5 constantWithData:v48 shape:&unk_284C63978 dataType:268435472];

  v220 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:5.457031];
  v299 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:49.75];
  v49 = [(NSData *)v301 subdataWithRange:148704, 512];
  v215 = [v5 constantWithData:v49 shape:&unk_284C63990 dataType:536870920];

  v50 = [(NSData *)v301 subdataWithRange:149216, 64];
  v214 = [v5 constantWithData:v50 shape:&unk_284C639A8 dataType:268435472];

  v51 = [(NSData *)v301 subdataWithRange:149280, 64];
  v212 = [v5 constantWithData:v51 shape:&unk_284C639C0 dataType:268435472];

  v209 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:2.353516];
  v52 = [(NSData *)v301 subdataWithRange:149344, 512];
  v208 = [v5 constantWithData:v52 shape:&unk_284C639D8 dataType:536870920];

  v53 = [(NSData *)v301 subdataWithRange:149856, 32];
  v207 = [v5 constantWithData:v53 shape:&unk_284C639F0 dataType:268435472];

  v54 = [(NSData *)v301 subdataWithRange:149888, 32];
  v204 = [v5 constantWithData:v54 shape:&unk_284C63A08 dataType:268435472];

  v202 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.471436];
  v55 = [(NSData *)v301 subdataWithRange:149920, 256];
  v198 = [v5 constantWithData:v55 shape:&unk_284C63A20 dataType:536870920];

  v56 = [(NSData *)v301 subdataWithRange:150176, 32];
  v197 = [v5 constantWithData:v56 shape:&unk_284C63A38 dataType:268435472];

  v57 = [(NSData *)v301 subdataWithRange:150208, 32];
  v195 = [v5 constantWithData:v57 shape:&unk_284C63A50 dataType:268435472];

  v192 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.063416];
  v58 = [(NSData *)v301 subdataWithRange:150240, 6336];
  v191 = [v5 constantWithData:v58 shape:&unk_284C63A68 dataType:536870920];

  v59 = [(NSData *)v301 subdataWithRange:156576, 88];
  v188 = [v5 constantWithData:v59 shape:&unk_284C63A80 dataType:268435472];

  v60 = [(NSData *)v301 subdataWithRange:156664, 88];
  v187 = [v5 constantWithData:v60 shape:&unk_284C63A98 dataType:268435472];

  v184 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.003922];
  v292 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:8 dataType:0.0];
  v182 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:536870944 dataType:3.0];
  v181 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:536870944 dataType:2.0];
  v61 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:536870920 dataType:0.0];
  v183 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:536870944 dataType:1.0];
  v177 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:536870944 dataType:0.0];
  v178 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:536870944 dataType:16.0];
  v62 = [(NSData *)v301 subdataWithRange:156752, 32];
  v176 = [v5 constantWithData:v62 shape:&unk_284C63AB0 dataType:536870944];

  v174 = [v5 constantWithScalar:&unk_284C63AC8 shape:268435472 dataType:0.0];
  v175 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435488 dataType:0.0];
  v63 = [(NSData *)v301 subdataWithRange:156784, 16];
  v173 = [v5 constantWithData:v63 shape:&unk_284C63AE0 dataType:536870944];

  v64 = [(NSData *)v301 subdataWithRange:156800, 16];
  v172 = [v5 constantWithData:v64 shape:&unk_284C63AF8 dataType:536870944];

  v65 = [(NSData *)v301 subdataWithRange:156816, 16];
  v171 = [v5 constantWithData:v65 shape:&unk_284C63B10 dataType:536870944];

  v258 = [v5 dequantizeTensor:v298 scaleTensor:v290 zeroPointTensor:v292 dataType:268435472 axis:0 name:@"tensor85"];
  v257 = [v5 dequantizeTensor:v289 scaleTensor:v288 zeroPointTensor:v61 dataType:268435472 axis:0 name:@"tensor86"];
  v169 = [MEMORY[0x277CD7818] descriptorWithStrideInX:2 strideInY:2 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:2 paddingRight:2 paddingTop:2 paddingBottom:2 paddingStyle:0 dataLayout:0 weightsLayout:2];
  v168 = [v5 convolution2DWithSourceTensor:v258 weightsTensor:v257 descriptor:? name:?];
  v167 = [v5 additionWithPrimaryTensor:? secondaryTensor:? name:?];
  v166 = [v5 reLUWithTensor:? name:?];
  v165 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v254 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v253 = [v5 dequantizeTensor:v285 scaleTensor:v284 zeroPointTensor:v61 dataType:268435472 axis:0 name:@"tensor92"];
  v164 = [MEMORY[0x277CD7818] descriptorWithStrideInX:2 strideInY:2 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:2 paddingRight:2 paddingTop:2 paddingBottom:2 paddingStyle:0 dataLayout:0 weightsLayout:2];
  v163 = [v5 convolution2DWithSourceTensor:v254 weightsTensor:v253 descriptor:? name:?];
  v162 = [v5 additionWithPrimaryTensor:? secondaryTensor:? name:?];
  v161 = [v5 reLUWithTensor:? name:?];
  v213 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v250 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v249 = [v5 dequantizeTensor:v282 scaleTensor:v281 zeroPointTensor:v61 dataType:268435472 axis:0 name:@"tensor98"];
  v160 = [MEMORY[0x277CD7818] descriptorWithStrideInX:2 strideInY:2 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:1 paddingRight:1 paddingTop:1 paddingBottom:1 paddingStyle:0 dataLayout:0 weightsLayout:2];
  v159 = [v5 convolution2DWithSourceTensor:v250 weightsTensor:v249 descriptor:? name:?];
  v158 = [v5 additionWithPrimaryTensor:? secondaryTensor:? name:?];
  v157 = [v5 reLUWithTensor:? name:?];
  v156 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v293 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v247 = [v5 dequantizeTensor:v279 scaleTensor:v278 zeroPointTensor:v61 dataType:268435472 axis:0 name:@"tensor104"];
  v155 = [MEMORY[0x277CD7818] descriptorWithStrideInX:2 strideInY:2 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:1 paddingRight:1 paddingTop:1 paddingBottom:1 paddingStyle:0 dataLayout:0 weightsLayout:2];
  v154 = [v5 convolution2DWithSourceTensor:v293 weightsTensor:v247 descriptor:? name:?];
  v153 = [v5 additionWithPrimaryTensor:? secondaryTensor:? name:?];
  v152 = [v5 reLUWithTensor:? name:?];
  v151 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v295 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v244 = [v5 dequantizeTensor:v276 scaleTensor:v275 zeroPointTensor:v61 dataType:268435472 axis:0 name:@"tensor110"];
  v150 = [MEMORY[0x277CD7818] descriptorWithStrideInX:2 strideInY:2 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:1 paddingRight:1 paddingTop:1 paddingBottom:1 paddingStyle:0 dataLayout:0 weightsLayout:2];
  v149 = [v5 convolution2DWithSourceTensor:v295 weightsTensor:v244 descriptor:? name:?];
  v148 = [v5 additionWithPrimaryTensor:? secondaryTensor:? name:?];
  v147 = [v5 reLUWithTensor:? name:?];
  v146 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v241 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v240 = [v5 dequantizeTensor:v272 scaleTensor:v271 zeroPointTensor:v61 dataType:268435472 axis:0 name:@"tensor116"];
  v145 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:0 dataLayout:0 weightsLayout:2];
  v144 = [v5 convolution2DWithSourceTensor:v241 weightsTensor:v240 descriptor:? name:?];
  v143 = [v5 additionWithPrimaryTensor:? secondaryTensor:? name:?];
  v142 = [v5 reLUWithTensor:? name:?];
  v141 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v237 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v236 = [v5 dequantizeTensor:v267 scaleTensor:v266 zeroPointTensor:v61 dataType:268435472 axis:0 name:@"tensor122"];
  v140 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:0 dataLayout:0 weightsLayout:2];
  v139 = [v5 convolution2DWithSourceTensor:v237 weightsTensor:v236 descriptor:? name:?];
  v138 = [v5 additionWithPrimaryTensor:? secondaryTensor:? name:?];
  v137 = [v5 reLUWithTensor:? name:?];
  v233 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v136 = [v5 shapeOfTensor:? name:?];
  v229 = [v5 multiplicationWithPrimaryTensor:? secondaryTensor:? name:?];
  v170 = [v5 dequantizeTensor:v233 scaleTensor:v297 zeroPointTensor:v61 dataType:268435472 axis:0 name:@"tensor127"];
  v231 = [v5 padTensor:0.0 withPaddingMode:? leftPadding:? rightPadding:? constantValue:? name:?];
  v230 = [v5 dequantizeTensor:v263 scaleTensor:v262 zeroPointTensor:v61 dataType:268435472 axis:0 name:@"tensor129"];
  v135 = [MEMORY[0x277CD7818] descriptorWithStrideInX:2 strideInY:2 dilationRateInX:1 dilationRateInY:1 groups:64 paddingLeft:3 paddingRight:3 paddingTop:3 paddingBottom:3 paddingStyle:0 dataLayout:0 weightsLayout:2];
  v134 = [v5 convolutionTranspose2DWithSourceTensor:v231 weightsTensor:v230 outputShapeTensor:v229 descriptor:? name:?];
  v133 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v132 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v131 = [v5 additionWithPrimaryTensor:? secondaryTensor:? name:?];
  v130 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v226 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v225 = [v5 dequantizeTensor:v260 scaleTensor:v259 zeroPointTensor:v61 dataType:268435472 axis:0 name:@"tensor136"];
  v129 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:0 dataLayout:0 weightsLayout:2];
  v128 = [v5 convolution2DWithSourceTensor:v226 weightsTensor:v225 descriptor:? name:?];
  v127 = [v5 additionWithPrimaryTensor:? secondaryTensor:? name:?];
  v126 = [v5 reLUWithTensor:? name:?];
  v125 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v223 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v222 = [v5 dequantizeTensor:v252 scaleTensor:v251 zeroPointTensor:v61 dataType:268435472 axis:0 name:@"tensor142"];
  v124 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:0 dataLayout:0 weightsLayout:2];
  v123 = [v5 convolution2DWithSourceTensor:v223 weightsTensor:v222 descriptor:? name:?];
  v122 = [v5 additionWithPrimaryTensor:? secondaryTensor:? name:?];
  v121 = [v5 reLUWithTensor:? name:?];
  v219 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v120 = [v5 shapeOfTensor:? name:?];
  v218 = [v5 multiplicationWithPrimaryTensor:? secondaryTensor:? name:?];
  v119 = [v5 dequantizeTensor:v219 scaleTensor:v294 zeroPointTensor:v61 dataType:268435472 axis:0 name:@"tensor147"];
  v217 = [v5 padTensor:0.0 withPaddingMode:? leftPadding:? rightPadding:? constantValue:? name:?];
  v216 = [v5 dequantizeTensor:v246 scaleTensor:v245 zeroPointTensor:v61 dataType:268435472 axis:0 name:@"tensor149"];
  v118 = [MEMORY[0x277CD7818] descriptorWithStrideInX:2 strideInY:2 dilationRateInX:1 dilationRateInY:1 groups:32 paddingLeft:3 paddingRight:3 paddingTop:3 paddingBottom:3 paddingStyle:0 dataLayout:0 weightsLayout:2];
  v117 = [v5 convolutionTranspose2DWithSourceTensor:v217 weightsTensor:v216 outputShapeTensor:v218 descriptor:? name:?];
  v116 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v115 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v114 = [v5 additionWithPrimaryTensor:? secondaryTensor:? name:?];
  v113 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v211 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v112 = [v5 sliceTensor:v213 dimension:1 start:0 length:16 name:@"tensor156"];
  v196 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v210 = [v5 dequantizeTensor:v239 scaleTensor:v238 zeroPointTensor:v61 dataType:268435472 axis:0 name:@"tensor158"];
  v111 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:0 dataLayout:0 weightsLayout:2];
  v110 = [v5 convolution2DWithSourceTensor:v211 weightsTensor:v210 descriptor:? name:?];
  v109 = [v5 additionWithPrimaryTensor:? secondaryTensor:? name:?];
  v108 = [v5 reLUWithTensor:? name:?];
  v107 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v206 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v205 = [v5 dequantizeTensor:v232 scaleTensor:v228 zeroPointTensor:v61 dataType:268435472 axis:0 name:@"tensor164"];
  v106 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:0 dataLayout:0 weightsLayout:2];
  v105 = [v5 convolution2DWithSourceTensor:v206 weightsTensor:v205 descriptor:? name:?];
  v104 = [v5 additionWithPrimaryTensor:? secondaryTensor:? name:?];
  v103 = [v5 reLUWithTensor:? name:?];
  v203 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v102 = [v5 shapeOfTensor:? name:?];
  v201 = [v5 multiplicationWithPrimaryTensor:? secondaryTensor:? name:?];
  v101 = [v5 dequantizeTensor:v203 scaleTensor:v291 zeroPointTensor:v61 dataType:268435472 axis:0 name:@"tensor169"];
  v200 = [v5 padTensor:0.0 withPaddingMode:? leftPadding:? rightPadding:? constantValue:? name:?];
  v199 = [v5 dequantizeTensor:v224 scaleTensor:v221 zeroPointTensor:v61 dataType:268435472 axis:0 name:@"tensor171"];
  v100 = [MEMORY[0x277CD7818] descriptorWithStrideInX:2 strideInY:2 dilationRateInX:1 dilationRateInY:1 groups:16 paddingLeft:3 paddingRight:3 paddingTop:3 paddingBottom:3 paddingStyle:0 dataLayout:0 weightsLayout:2];
  v99 = [v5 convolutionTranspose2DWithSourceTensor:v200 weightsTensor:v199 outputShapeTensor:v201 descriptor:? name:?];
  v98 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v97 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v96 = [v5 additionWithPrimaryTensor:? secondaryTensor:? name:?];
  v95 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v194 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v193 = [v5 dequantizeTensor:v215 scaleTensor:v214 zeroPointTensor:v61 dataType:268435472 axis:0 name:@"tensor178"];
  v94 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:0 dataLayout:0 weightsLayout:2];
  v93 = [v5 convolution2DWithSourceTensor:v194 weightsTensor:v193 descriptor:? name:?];
  v92 = [v5 additionWithPrimaryTensor:? secondaryTensor:? name:?];
  v91 = [v5 reLUWithTensor:? name:?];
  v90 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v190 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v189 = [v5 dequantizeTensor:v208 scaleTensor:v207 zeroPointTensor:v61 dataType:268435472 axis:0 name:@"tensor184"];
  v89 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:0 dataLayout:0 weightsLayout:2];
  v88 = [v5 convolution2DWithSourceTensor:v190 weightsTensor:v189 descriptor:? name:?];
  v87 = [v5 additionWithPrimaryTensor:? secondaryTensor:? name:?];
  v86 = [v5 reLUWithTensor:? name:?];
  v85 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v186 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v185 = [v5 dequantizeTensor:v198 scaleTensor:v197 zeroPointTensor:v61 dataType:268435472 axis:0 name:@"tensor190"];
  v84 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:0 dataLayout:0 weightsLayout:2];
  v83 = [v5 convolution2DWithSourceTensor:v186 weightsTensor:v185 descriptor:? name:?];
  v82 = [v5 additionWithPrimaryTensor:? secondaryTensor:? name:?];
  v81 = [v5 reLUWithTensor:? name:?];
  v80 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v180 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v179 = [v5 dequantizeTensor:v191 scaleTensor:v188 zeroPointTensor:v61 dataType:268435472 axis:0 name:@"tensor196"];
  v79 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:1 paddingRight:1 paddingTop:1 paddingBottom:1 paddingStyle:0 dataLayout:0 weightsLayout:2];
  v78 = [v5 convolution2DWithSourceTensor:v180 weightsTensor:v179 descriptor:? name:?];
  v66 = [v5 additionWithPrimaryTensor:? secondaryTensor:? name:?];
  v67 = [v5 sigmoidWithTensor:v66 name:@"tensor199"];
  v68 = [v5 quantizeTensor:v67 scaleTensor:v184 zeroPointTensor:v292 dataType:8 axis:0 name:@"tensor200"];
  v69 = [v5 depthToSpace2DTensor:v68 widthAxisTensor:v182 heightAxisTensor:v181 depthAxisTensor:v183 blockSize:2 usePixelShuffleOrder:1 name:@"tensor201"];
  v304 = v69;
  v70 = [MEMORY[0x277CBEA60] arrayWithObjects:&v304 count:1];
  v302 = v298;
  v71 = objc_alloc(MEMORY[0x277CD7880]);
  v72 = [v298 shape];
  v73 = [v71 initWithShape:v72 dataType:{objc_msgSend(v298, "dataType")}];
  v303 = v73;
  v74 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v303 forKeys:&v302 count:1];

  v75 = [v5 compileWithDevice:0 feeds:v74 targetTensors:v70 targetOperations:0 compilationDescriptor:v243];

  v76 = *MEMORY[0x277D85DE8];

  return v75;
}

id EmitBR_Net_V40_nhwc_getMPSGraphExecutable(NSData *a1, const BRNetDescriptor *a2, MPSGraphCompilationDescriptor *a3)
{
  v317[4] = *MEMORY[0x277D85DE8];
  v313 = a1;
  v247 = a3;
  v5 = objc_opt_new();
  v317[0] = &unk_284C62298;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2->input_height];
  v317[1] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2->input_width];
  v317[2] = v7;
  v317[3] = &unk_284C622B0;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v317 count:4];
  v309 = [v5 placeholderWithShape:v8 dataType:8 name:@"tensor0"];

  v9 = [(NSData *)v313 subdataWithRange:0, 16];
  v312 = [v5 constantWithData:v9 shape:&unk_284C63BB8 dataType:536870944];

  v301 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.007843];
  v10 = [(NSData *)v313 subdataWithRange:16, 1440];
  v300 = [v5 constantWithData:v10 shape:&unk_284C63BD0 dataType:536870920];

  v11 = [(NSData *)v313 subdataWithRange:1456, 16];
  v299 = [v5 constantWithData:v11 shape:&unk_284C63BE8 dataType:268435472];

  v12 = [(NSData *)v313 subdataWithRange:1472, 16];
  v298 = [v5 constantWithData:v12 shape:&unk_284C63C00 dataType:268435472];

  v297 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.216797];
  v13 = [(NSData *)v313 subdataWithRange:1488, 9216];
  v296 = [v5 constantWithData:v13 shape:&unk_284C63C18 dataType:536870920];

  v14 = [(NSData *)v313 subdataWithRange:10704, 64];
  v295 = [v5 constantWithData:v14 shape:&unk_284C63C30 dataType:268435472];

  v15 = [(NSData *)v313 subdataWithRange:10768, 64];
  v294 = [v5 constantWithData:v15 shape:&unk_284C63C48 dataType:268435472];

  v16 = [(NSData *)v313 subdataWithRange:10832, 9216];
  v293 = [v5 constantWithData:v16 shape:&unk_284C63C60 dataType:536870920];

  v17 = [(NSData *)v313 subdataWithRange:20048, 64];
  v292 = [v5 constantWithData:v17 shape:&unk_284C63C78 dataType:268435472];

  v18 = [(NSData *)v313 subdataWithRange:20112, 64];
  v291 = [v5 constantWithData:v18 shape:&unk_284C63C90 dataType:268435472];

  v19 = [(NSData *)v313 subdataWithRange:20176, 18432];
  v290 = [v5 constantWithData:v19 shape:&unk_284C63CA8 dataType:536870920];

  v20 = [(NSData *)v313 subdataWithRange:38608, 128];
  v289 = [v5 constantWithData:v20 shape:&unk_284C63CC0 dataType:268435472];

  v21 = [(NSData *)v313 subdataWithRange:38736, 128];
  v288 = [v5 constantWithData:v21 shape:&unk_284C63CD8 dataType:268435472];

  v22 = [(NSData *)v313 subdataWithRange:38864, 73728];
  v287 = [v5 constantWithData:v22 shape:&unk_284C63CF0 dataType:536870920];

  v23 = [(NSData *)v313 subdataWithRange:112592, 256];
  v286 = [v5 constantWithData:v23 shape:&unk_284C63D08 dataType:268435472];

  v24 = [(NSData *)v313 subdataWithRange:112848, 256];
  v285 = [v5 constantWithData:v24 shape:&unk_284C63D20 dataType:268435472];

  v284 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:162.75];
  v25 = [(NSData *)v313 subdataWithRange:113104, 0x4000];
  v283 = [v5 constantWithData:v25 shape:&unk_284C63D38 dataType:536870920];

  v26 = [(NSData *)v313 subdataWithRange:129488, 256];
  v282 = [v5 constantWithData:v26 shape:&unk_284C63D50 dataType:268435472];

  v27 = [(NSData *)v313 subdataWithRange:129744, 256];
  v280 = [v5 constantWithData:v27 shape:&unk_284C63D68 dataType:268435472];

  v278 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:232.75];
  v28 = [(NSData *)v313 subdataWithRange:130000, 0x2000];
  v277 = [v5 constantWithData:v28 shape:&unk_284C63D80 dataType:536870920];

  v29 = [(NSData *)v313 subdataWithRange:138192, 128];
  v276 = [v5 constantWithData:v29 shape:&unk_284C63D98 dataType:268435472];

  v30 = [(NSData *)v313 subdataWithRange:138320, 128];
  v275 = [v5 constantWithData:v30 shape:&unk_284C63DB0 dataType:268435472];

  v310 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:169.0];
  v31 = [(NSData *)v313 subdataWithRange:138448, 1024];
  v273 = [v5 constantWithData:v31 shape:&unk_284C63DC8 dataType:536870920];

  v32 = [(NSData *)v313 subdataWithRange:139472, 128];
  v271 = [v5 constantWithData:v32 shape:&unk_284C63DE0 dataType:268435472];

  v270 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:172.0];
  v281 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:32.8125];
  v33 = [(NSData *)v313 subdataWithRange:139600, 4096];
  v267 = [v5 constantWithData:v33 shape:&unk_284C63DF8 dataType:536870920];

  v34 = [(NSData *)v313 subdataWithRange:143696, 128];
  v266 = [v5 constantWithData:v34 shape:&unk_284C63E10 dataType:268435472];

  v35 = [(NSData *)v313 subdataWithRange:143824, 128];
  v263 = [v5 constantWithData:v35 shape:&unk_284C63E28 dataType:268435472];

  v262 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:43.71875];
  v36 = [(NSData *)v313 subdataWithRange:143952, 2048];
  v261 = [v5 constantWithData:v36 shape:&unk_284C63E40 dataType:536870920];

  v37 = [(NSData *)v313 subdataWithRange:146000, 64];
  v260 = [v5 constantWithData:v37 shape:&unk_284C63E58 dataType:268435472];

  v38 = [(NSData *)v313 subdataWithRange:146064, 64];
  v258 = [v5 constantWithData:v38 shape:&unk_284C63E70 dataType:268435472];

  v306 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:18.65625];
  v39 = [(NSData *)v313 subdataWithRange:146128, 512];
  v256 = [v5 constantWithData:v39 shape:&unk_284C63E88 dataType:536870920];

  v40 = [(NSData *)v313 subdataWithRange:146640, 64];
  v255 = [v5 constantWithData:v40 shape:&unk_284C63EA0 dataType:268435472];

  v253 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:12.539062];
  v279 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:5.898438];
  v308 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:1.546875];
  v41 = [(NSData *)v313 subdataWithRange:146704, 1024];
  v251 = [v5 constantWithData:v41 shape:&unk_284C63EB8 dataType:536870920];

  v42 = [(NSData *)v313 subdataWithRange:147728, 64];
  v250 = [v5 constantWithData:v42 shape:&unk_284C63ED0 dataType:268435472];

  v43 = [(NSData *)v313 subdataWithRange:147792, 64];
  v246 = [v5 constantWithData:v43 shape:&unk_284C63EE8 dataType:268435472];

  v245 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:5.726562];
  v44 = [(NSData *)v313 subdataWithRange:147856, 512];
  v243 = [v5 constantWithData:v44 shape:&unk_284C63F00 dataType:536870920];

  v45 = [(NSData *)v313 subdataWithRange:148368, 32];
  v242 = [v5 constantWithData:v45 shape:&unk_284C63F18 dataType:268435472];

  v46 = [(NSData *)v313 subdataWithRange:148400, 32];
  v238 = [v5 constantWithData:v46 shape:&unk_284C63F30 dataType:268435472];

  v303 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:5.152344];
  v47 = [(NSData *)v313 subdataWithRange:148432, 256];
  v235 = [v5 constantWithData:v47 shape:&unk_284C63F48 dataType:536870920];

  v48 = [(NSData *)v313 subdataWithRange:148688, 32];
  v234 = [v5 constantWithData:v48 shape:&unk_284C63F60 dataType:268435472];

  v302 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:5.457031];
  v311 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:49.75];
  v49 = [(NSData *)v313 subdataWithRange:148720, 512];
  v231 = [v5 constantWithData:v49 shape:&unk_284C63F78 dataType:536870920];

  v50 = [(NSData *)v313 subdataWithRange:149232, 64];
  v229 = [v5 constantWithData:v50 shape:&unk_284C63F90 dataType:268435472];

  v51 = [(NSData *)v313 subdataWithRange:149296, 64];
  v225 = [v5 constantWithData:v51 shape:&unk_284C63FA8 dataType:268435472];

  v224 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:2.353516];
  v52 = [(NSData *)v313 subdataWithRange:149360, 512];
  v223 = [v5 constantWithData:v52 shape:&unk_284C63FC0 dataType:536870920];

  v53 = [(NSData *)v313 subdataWithRange:149872, 32];
  v222 = [v5 constantWithData:v53 shape:&unk_284C63FD8 dataType:268435472];

  v54 = [(NSData *)v313 subdataWithRange:149904, 32];
  v219 = [v5 constantWithData:v54 shape:&unk_284C63FF0 dataType:268435472];

  v217 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.471436];
  v55 = [(NSData *)v313 subdataWithRange:149936, 256];
  v215 = [v5 constantWithData:v55 shape:&unk_284C64008 dataType:536870920];

  v56 = [(NSData *)v313 subdataWithRange:150192, 32];
  v213 = [v5 constantWithData:v56 shape:&unk_284C64020 dataType:268435472];

  v57 = [(NSData *)v313 subdataWithRange:150224, 32];
  v211 = [v5 constantWithData:v57 shape:&unk_284C64038 dataType:268435472];

  v210 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.063416];
  v58 = [(NSData *)v313 subdataWithRange:150256, 6336];
  v206 = [v5 constantWithData:v58 shape:&unk_284C64050 dataType:536870920];

  v59 = [(NSData *)v313 subdataWithRange:156592, 88];
  v205 = [v5 constantWithData:v59 shape:&unk_284C64068 dataType:268435472];

  v60 = [(NSData *)v313 subdataWithRange:156680, 88];
  v204 = [v5 constantWithData:v60 shape:&unk_284C64080 dataType:268435472];

  v202 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.003922];
  v304 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:8 dataType:0.0];
  v61 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:536870920 dataType:0.0];
  v62 = [(NSData *)v313 subdataWithRange:156768, 32];
  v191 = [v5 constantWithData:v62 shape:&unk_284C64098 dataType:536870944];

  v190 = [v5 constantWithScalar:&unk_284C640B0 shape:268435472 dataType:0.0];
  v189 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435488 dataType:0.0];
  v188 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:536870944 dataType:0.0];
  v187 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:536870944 dataType:16.0];
  v198 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:536870944 dataType:2.0];
  v200 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:536870944 dataType:1.0];
  v199 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:536870944 dataType:3.0];
  v274 = [v5 dequantizeTensor:v309 scaleTensor:v301 zeroPointTensor:v304 dataType:268435472 axis:0 name:@"tensor83"];
  v63 = [v5 dequantizeTensor:v300 scaleTensor:v299 zeroPointTensor:v61 dataType:268435472 axis:0 name:@"tensor84"];
  v272 = [v5 transposeTensor:v63 permute:&unk_284C640C8 name:@"tensor84_hwio"];

  v183 = [MEMORY[0x277CD7818] descriptorWithStrideInX:2 strideInY:2 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:2 paddingRight:2 paddingTop:2 paddingBottom:2 paddingStyle:0 dataLayout:1 weightsLayout:3];
  v182 = [v5 convolution2DWithSourceTensor:v274 weightsTensor:v272 descriptor:? name:?];
  v185 = [v5 additionWithPrimaryTensor:? secondaryTensor:? name:?];
  v184 = [v5 reLUWithTensor:? name:?];
  v186 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v269 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v64 = [v5 dequantizeTensor:v296 scaleTensor:v295 zeroPointTensor:v61 dataType:268435472 axis:0 name:@"tensor90"];
  v268 = [v5 transposeTensor:v64 permute:&unk_284C640E0 name:@"tensor90_hwio"];

  v179 = [MEMORY[0x277CD7818] descriptorWithStrideInX:2 strideInY:2 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:2 paddingRight:2 paddingTop:2 paddingBottom:2 paddingStyle:0 dataLayout:1 weightsLayout:3];
  v178 = [v5 convolution2DWithSourceTensor:v269 weightsTensor:v268 descriptor:? name:?];
  v181 = [v5 additionWithPrimaryTensor:? secondaryTensor:? name:?];
  v180 = [v5 reLUWithTensor:? name:?];
  v218 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v265 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v65 = [v5 dequantizeTensor:v293 scaleTensor:v292 zeroPointTensor:v61 dataType:268435472 axis:0 name:@"tensor96"];
  v264 = [v5 transposeTensor:v65 permute:&unk_284C640F8 name:@"tensor96_hwio"];

  v174 = [MEMORY[0x277CD7818] descriptorWithStrideInX:2 strideInY:2 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:1 paddingRight:1 paddingTop:1 paddingBottom:1 paddingStyle:0 dataLayout:1 weightsLayout:3];
  v173 = [v5 convolution2DWithSourceTensor:v265 weightsTensor:v264 descriptor:? name:?];
  v176 = [v5 additionWithPrimaryTensor:? secondaryTensor:? name:?];
  v175 = [v5 reLUWithTensor:? name:?];
  v177 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v305 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v66 = [v5 dequantizeTensor:v290 scaleTensor:v289 zeroPointTensor:v61 dataType:268435472 axis:0 name:@"tensor102"];
  v259 = [v5 transposeTensor:v66 permute:&unk_284C64110 name:@"tensor102_hwio"];

  v169 = [MEMORY[0x277CD7818] descriptorWithStrideInX:2 strideInY:2 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:1 paddingRight:1 paddingTop:1 paddingBottom:1 paddingStyle:0 dataLayout:1 weightsLayout:3];
  v168 = [v5 convolution2DWithSourceTensor:v305 weightsTensor:v259 descriptor:? name:?];
  v171 = [v5 additionWithPrimaryTensor:? secondaryTensor:? name:?];
  v170 = [v5 reLUWithTensor:? name:?];
  v172 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v307 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v67 = [v5 dequantizeTensor:v287 scaleTensor:v286 zeroPointTensor:v61 dataType:268435472 axis:0 name:@"tensor108"];
  v257 = [v5 transposeTensor:v67 permute:&unk_284C64128 name:@"tensor108_hwio"];

  v164 = [MEMORY[0x277CD7818] descriptorWithStrideInX:2 strideInY:2 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:1 paddingRight:1 paddingTop:1 paddingBottom:1 paddingStyle:0 dataLayout:1 weightsLayout:3];
  v163 = [v5 convolution2DWithSourceTensor:v307 weightsTensor:v257 descriptor:? name:?];
  v166 = [v5 additionWithPrimaryTensor:? secondaryTensor:? name:?];
  v165 = [v5 reLUWithTensor:? name:?];
  v167 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v254 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v68 = [v5 dequantizeTensor:v283 scaleTensor:v282 zeroPointTensor:v61 dataType:268435472 axis:0 name:@"tensor114"];
  v252 = [v5 transposeTensor:v68 permute:&unk_284C64140 name:@"tensor114_hwio"];

  v160 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:0 dataLayout:1 weightsLayout:3];
  v159 = [v5 convolution2DWithSourceTensor:v254 weightsTensor:v252 descriptor:? name:?];
  v158 = [v5 additionWithPrimaryTensor:? secondaryTensor:? name:?];
  v161 = [v5 reLUWithTensor:? name:?];
  v162 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v249 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v69 = [v5 dequantizeTensor:v277 scaleTensor:v276 zeroPointTensor:v61 dataType:268435472 axis:0 name:@"tensor120"];
  v248 = [v5 transposeTensor:v69 permute:&unk_284C64158 name:@"tensor120_hwio"];

  v153 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:0 dataLayout:1 weightsLayout:3];
  v152 = [v5 convolution2DWithSourceTensor:v249 weightsTensor:v248 descriptor:? name:?];
  v156 = [v5 additionWithPrimaryTensor:? secondaryTensor:? name:?];
  v155 = [v5 reLUWithTensor:? name:?];
  v244 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v154 = [v5 shapeOfTensor:? name:?];
  v240 = [v5 multiplicationWithPrimaryTensor:? secondaryTensor:? name:?];
  v157 = [v5 dequantizeTensor:v244 scaleTensor:v310 zeroPointTensor:v61 dataType:268435472 axis:0 name:@"tensor127"];
  v241 = [v5 padTensor:0.0 withPaddingMode:? leftPadding:? rightPadding:? constantValue:? name:?];
  v70 = [v5 dequantizeTensor:v273 scaleTensor:v271 zeroPointTensor:v61 dataType:268435472 axis:0 name:@"tensor129"];
  v239 = [v5 transposeTensor:v70 permute:&unk_284C641A0 name:@"tensor129_hwio"];

  v149 = [MEMORY[0x277CD7818] descriptorWithStrideInX:2 strideInY:2 dilationRateInX:1 dilationRateInY:1 groups:64 paddingLeft:3 paddingRight:3 paddingTop:3 paddingBottom:3 paddingStyle:0 dataLayout:1 weightsLayout:3];
  v148 = [v5 convolutionTranspose2DWithSourceTensor:v241 weightsTensor:v239 outputShapeTensor:v240 descriptor:? name:?];
  v147 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v146 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v150 = [v5 additionWithPrimaryTensor:? secondaryTensor:? name:?];
  v151 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v237 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v71 = [v5 dequantizeTensor:v267 scaleTensor:v266 zeroPointTensor:v61 dataType:268435472 axis:0 name:@"tensor136"];
  v236 = [v5 transposeTensor:v71 permute:&unk_284C641B8 name:@"tensor136_hwio"];

  v143 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:0 dataLayout:1 weightsLayout:3];
  v142 = [v5 convolution2DWithSourceTensor:v237 weightsTensor:v236 descriptor:? name:?];
  v141 = [v5 additionWithPrimaryTensor:? secondaryTensor:? name:?];
  v144 = [v5 reLUWithTensor:? name:?];
  v145 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v233 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v72 = [v5 dequantizeTensor:v261 scaleTensor:v260 zeroPointTensor:v61 dataType:268435472 axis:0 name:@"tensor142"];
  v232 = [v5 transposeTensor:v72 permute:&unk_284C641D0 name:@"tensor142_hwio"];

  v139 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:0 dataLayout:1 weightsLayout:3];
  v138 = [v5 convolution2DWithSourceTensor:v233 weightsTensor:v232 descriptor:? name:?];
  v137 = [v5 additionWithPrimaryTensor:? secondaryTensor:? name:?];
  v136 = [v5 reLUWithTensor:? name:?];
  v230 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v135 = [v5 shapeOfTensor:? name:?];
  v227 = [v5 multiplicationWithPrimaryTensor:? secondaryTensor:? name:?];
  v140 = [v5 dequantizeTensor:v230 scaleTensor:v306 zeroPointTensor:v61 dataType:268435472 axis:0 name:@"tensor149"];
  v228 = [v5 padTensor:0.0 withPaddingMode:? leftPadding:? rightPadding:? constantValue:? name:?];
  v73 = [v5 dequantizeTensor:v256 scaleTensor:v255 zeroPointTensor:v61 dataType:268435472 axis:0 name:@"tensor151"];
  v226 = [v5 transposeTensor:v73 permute:&unk_284C64218 name:@"tensor151_hwio"];

  v133 = [MEMORY[0x277CD7818] descriptorWithStrideInX:2 strideInY:2 dilationRateInX:1 dilationRateInY:1 groups:32 paddingLeft:3 paddingRight:3 paddingTop:3 paddingBottom:3 paddingStyle:0 dataLayout:1 weightsLayout:3];
  v132 = [v5 convolutionTranspose2DWithSourceTensor:v228 weightsTensor:v226 outputShapeTensor:v227 descriptor:? name:?];
  v130 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v129 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v131 = [v5 additionWithPrimaryTensor:? secondaryTensor:? name:?];
  v134 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v221 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v74 = [v5 dequantizeTensor:v251 scaleTensor:v250 zeroPointTensor:v61 dataType:268435472 axis:0 name:@"tensor158"];
  v220 = [v5 transposeTensor:v74 permute:&unk_284C64230 name:@"tensor158_hwio"];

  v126 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:0 dataLayout:1 weightsLayout:3];
  v125 = [v5 convolution2DWithSourceTensor:v221 weightsTensor:v220 descriptor:? name:?];
  v124 = [v5 additionWithPrimaryTensor:? secondaryTensor:? name:?];
  v127 = [v5 reLUWithTensor:? name:?];
  v128 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v216 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v75 = [v5 dequantizeTensor:v243 scaleTensor:v242 zeroPointTensor:v61 dataType:268435472 axis:0 name:@"tensor164"];
  v214 = [v5 transposeTensor:v75 permute:&unk_284C64248 name:@"tensor164_hwio"];

  v122 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:0 dataLayout:1 weightsLayout:3];
  v121 = [v5 convolution2DWithSourceTensor:v216 weightsTensor:v214 descriptor:? name:?];
  v120 = [v5 additionWithPrimaryTensor:? secondaryTensor:? name:?];
  v119 = [v5 reLUWithTensor:? name:?];
  v212 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v118 = [v5 shapeOfTensor:? name:?];
  v208 = [v5 multiplicationWithPrimaryTensor:? secondaryTensor:? name:?];
  v123 = [v5 dequantizeTensor:v212 scaleTensor:v303 zeroPointTensor:v61 dataType:268435472 axis:0 name:@"tensor171"];
  v209 = [v5 padTensor:0.0 withPaddingMode:? leftPadding:? rightPadding:? constantValue:? name:?];
  v76 = [v5 dequantizeTensor:v235 scaleTensor:v234 zeroPointTensor:v61 dataType:268435472 axis:0 name:@"tensor173"];
  v207 = [v5 transposeTensor:v76 permute:&unk_284C64290 name:@"tensor173_hwio"];

  v115 = [MEMORY[0x277CD7818] descriptorWithStrideInX:2 strideInY:2 dilationRateInX:1 dilationRateInY:1 groups:16 paddingLeft:3 paddingRight:3 paddingTop:3 paddingBottom:3 paddingStyle:0 dataLayout:1 weightsLayout:3];
  v114 = [v5 convolutionTranspose2DWithSourceTensor:v209 weightsTensor:v207 outputShapeTensor:v208 descriptor:? name:?];
  v113 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v112 = [v5 sliceTensor:v218 dimension:3 start:0 length:16 name:@"tensor176"];
  v111 = [v5 dequantizeTensor:v112 scaleTensor:v308 zeroPointTensor:v61 dataType:268435472 axis:0 name:@"tensor177"];
  v110 = [v5 dequantizeTensor:v113 scaleTensor:v302 zeroPointTensor:v61 dataType:268435472 axis:0 name:@"tensor178"];
  v116 = [v5 additionWithPrimaryTensor:v110 secondaryTensor:v111 name:@"tensor179"];
  v117 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v203 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v77 = [v5 dequantizeTensor:v231 scaleTensor:v229 zeroPointTensor:v61 dataType:268435472 axis:0 name:@"tensor182"];
  v201 = [v5 transposeTensor:v77 permute:&unk_284C642A8 name:@"tensor182_hwio"];

  v107 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:0 dataLayout:1 weightsLayout:3];
  v106 = [v5 convolution2DWithSourceTensor:v203 weightsTensor:v201 descriptor:v107 name:@"tensor183"];
  v105 = [v5 additionWithPrimaryTensor:v106 secondaryTensor:v225 name:@"tensor184"];
  v108 = [v5 reLUWithTensor:v105 name:@"tensor185"];
  v109 = [v5 quantizeTensor:v108 scaleTensor:v224 zeroPointTensor:v61 dataType:536870920 axis:0 name:@"tensor186"];
  v197 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v78 = [v5 dequantizeTensor:v223 scaleTensor:v222 zeroPointTensor:v61 dataType:268435472 axis:0 name:@"tensor188"];
  v196 = [v5 transposeTensor:v78 permute:&unk_284C642C0 name:@"tensor188_hwio"];

  v102 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:0 dataLayout:1 weightsLayout:3];
  v101 = [v5 convolution2DWithSourceTensor:v197 weightsTensor:v196 descriptor:v102 name:@"tensor189"];
  v100 = [v5 additionWithPrimaryTensor:v101 secondaryTensor:v219 name:@"tensor190"];
  v103 = [v5 reLUWithTensor:v100 name:@"tensor191"];
  v104 = [v5 quantizeTensor:v103 scaleTensor:v217 zeroPointTensor:v61 dataType:536870920 axis:0 name:@"tensor192"];
  v195 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v79 = [v5 dequantizeTensor:v215 scaleTensor:v213 zeroPointTensor:v61 dataType:268435472 axis:0 name:@"tensor194"];
  v194 = [v5 transposeTensor:v79 permute:&unk_284C642D8 name:@"tensor194_hwio"];

  v96 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:0 dataLayout:1 weightsLayout:3];
  v95 = [v5 convolution2DWithSourceTensor:v195 weightsTensor:v194 descriptor:v96 name:@"tensor195"];
  v98 = [v5 additionWithPrimaryTensor:v95 secondaryTensor:v211 name:@"tensor196"];
  v97 = [v5 reLUWithTensor:v98 name:@"tensor197"];
  v99 = [v5 quantizeTensor:v97 scaleTensor:v210 zeroPointTensor:v61 dataType:536870920 axis:0 name:@"tensor198"];
  v193 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v80 = [v5 dequantizeTensor:v206 scaleTensor:v205 zeroPointTensor:v61 dataType:268435472 axis:0 name:@"tensor200"];
  v192 = [v5 transposeTensor:v80 permute:&unk_284C642F0 name:@"tensor200_hwio"];

  v94 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:1 paddingRight:1 paddingTop:1 paddingBottom:1 paddingStyle:0 dataLayout:1 weightsLayout:3];
  v93 = [v5 convolution2DWithSourceTensor:v193 weightsTensor:v192 descriptor:v94 name:@"tensor201"];
  v81 = [v5 additionWithPrimaryTensor:v93 secondaryTensor:v204 name:@"tensor202"];
  v82 = [v5 sigmoidWithTensor:v81 name:@"tensor203"];
  v83 = [v5 quantizeTensor:v82 scaleTensor:v202 zeroPointTensor:v304 dataType:8 axis:0 name:@"tensor204"];
  v84 = [v5 depthToSpace2DTensor:v83 widthAxisTensor:v198 heightAxisTensor:v200 depthAxisTensor:v199 blockSize:2 usePixelShuffleOrder:1 name:@"tensor205"];
  v316 = v84;
  v85 = [MEMORY[0x277CBEA60] arrayWithObjects:&v316 count:1];
  v314 = v309;
  v86 = objc_alloc(MEMORY[0x277CD7880]);
  v87 = [v309 shape];
  v88 = [v86 initWithShape:v87 dataType:{objc_msgSend(v309, "dataType")}];
  v315 = v88;
  v89 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v315 forKeys:&v314 count:1];

  v90 = [v5 compileWithDevice:0 feeds:v89 targetTensors:v85 targetOperations:0 compilationDescriptor:v247];

  v91 = *MEMORY[0x277D85DE8];

  return v90;
}

id EmitBR_Net_V41_nchw_getMPSGraphExecutable(NSData *a1, const BRNetDescriptor *a2, MPSGraphCompilationDescriptor *a3)
{
  v291[4] = *MEMORY[0x277D85DE8];
  v286 = a1;
  v225 = a3;
  v5 = objc_opt_new();
  v291[0] = &unk_284C62298;
  v291[1] = &unk_284C622B0;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2->input_height];
  v291[2] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2->input_width];
  v291[3] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v291 count:4];
  v280 = [v5 placeholderWithShape:v8 dataType:8 name:@"tensor0"];

  v290 = xmmword_2398F2710;
  v9 = [MEMORY[0x277CBEA90] dataWithBytes:&v290 length:16];
  v284 = [v5 constantWithData:v9 shape:&unk_284C64308 dataType:536870944];

  v10 = [(NSData *)v286 subdataWithRange:0, 64];
  v270 = [v5 constantWithData:v10 shape:&unk_284C64320 dataType:268435472];

  v11 = [(NSData *)v286 subdataWithRange:64, 64];
  v269 = [v5 constantWithData:v11 shape:&unk_284C64338 dataType:268435472];

  v268 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.118958];
  v12 = [(NSData *)v286 subdataWithRange:128, 64];
  v267 = [v5 constantWithData:v12 shape:&unk_284C64350 dataType:268435472];

  v13 = [(NSData *)v286 subdataWithRange:192, 64];
  v266 = [v5 constantWithData:v13 shape:&unk_284C64368 dataType:268435472];

  v265 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.131958];
  v14 = [(NSData *)v286 subdataWithRange:256, 128];
  v264 = [v5 constantWithData:v14 shape:&unk_284C64380 dataType:268435472];

  v15 = [(NSData *)v286 subdataWithRange:384, 128];
  v263 = [v5 constantWithData:v15 shape:&unk_284C64398 dataType:268435472];

  v262 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.170166];
  v16 = [(NSData *)v286 subdataWithRange:512, 256];
  v261 = [v5 constantWithData:v16 shape:&unk_284C643B0 dataType:268435472];

  v17 = [(NSData *)v286 subdataWithRange:768, 256];
  v260 = [v5 constantWithData:v17 shape:&unk_284C643C8 dataType:268435472];

  v259 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.331299];
  v18 = [(NSData *)v286 subdataWithRange:1024, 128];
  v282 = [v5 constantWithData:v18 shape:&unk_284C643E0 dataType:536870920];

  v19 = [(NSData *)v286 subdataWithRange:1152, 256];
  v258 = [v5 constantWithData:v19 shape:&unk_284C643F8 dataType:268435472];

  v20 = [(NSData *)v286 subdataWithRange:1408, 256];
  v257 = [v5 constantWithData:v20 shape:&unk_284C64410 dataType:268435472];

  v256 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.192749];
  v21 = [(NSData *)v286 subdataWithRange:1664, 128];
  v255 = [v5 constantWithData:v21 shape:&unk_284C64428 dataType:268435472];

  v22 = [(NSData *)v286 subdataWithRange:1792, 128];
  v254 = [v5 constantWithData:v22 shape:&unk_284C64440 dataType:268435472];

  v281 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.239746];
  v23 = [(NSData *)v286 subdataWithRange:1920, 16];
  v168 = [v5 constantWithData:v23 shape:&unk_284C64458 dataType:536870944];

  v250 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.180908];
  v249 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.236572];
  v24 = [(NSData *)v286 subdataWithRange:1936, 128];
  v248 = [v5 constantWithData:v24 shape:&unk_284C64470 dataType:268435472];

  v25 = [(NSData *)v286 subdataWithRange:2064, 128];
  v246 = [v5 constantWithData:v25 shape:&unk_284C64488 dataType:268435472];

  v245 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.157104];
  v26 = [(NSData *)v286 subdataWithRange:2192, 64];
  v244 = [v5 constantWithData:v26 shape:&unk_284C644A0 dataType:268435472];

  v27 = [(NSData *)v286 subdataWithRange:2256, 64];
  v242 = [v5 constantWithData:v27 shape:&unk_284C644B8 dataType:268435472];

  v279 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.152344];
  v28 = [(NSData *)v286 subdataWithRange:2320, 16];
  v167 = [v5 constantWithData:v28 shape:&unk_284C644D0 dataType:536870944];

  v237 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.140625];
  v235 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.179688];
  v29 = [(NSData *)v286 subdataWithRange:2336, 64];
  v233 = [v5 constantWithData:v29 shape:&unk_284C644E8 dataType:268435472];

  v30 = [(NSData *)v286 subdataWithRange:2400, 64];
  v232 = [v5 constantWithData:v30 shape:&unk_284C64500 dataType:268435472];

  v229 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.109802];
  v31 = [(NSData *)v286 subdataWithRange:2464, 32];
  v228 = [v5 constantWithData:v31 shape:&unk_284C64518 dataType:268435472];

  v32 = [(NSData *)v286 subdataWithRange:2496, 32];
  v224 = [v5 constantWithData:v32 shape:&unk_284C64530 dataType:268435472];

  v271 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.131104];
  v166 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.0];
  v33 = [(NSData *)v286 subdataWithRange:2528, 32];
  v165 = [v5 constantWithData:v33 shape:&unk_284C64548 dataType:536870944];

  v283 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.004429];
  v218 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.118774];
  v164 = [v5 constantWithScalar:&unk_284C64560 shape:536870944 dataType:0.0];
  v34 = [(NSData *)v286 subdataWithRange:2560, 16];
  v163 = [v5 constantWithData:v34 shape:&unk_284C64578 dataType:536870944];

  v162 = [v5 constantWithScalar:&unk_284C64590 shape:536870944 dataType:1.0];
  v214 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.131226];
  v35 = [(NSData *)v286 subdataWithRange:2576, 64];
  v212 = [v5 constantWithData:v35 shape:&unk_284C645A8 dataType:268435472];

  v36 = [(NSData *)v286 subdataWithRange:2640, 64];
  v209 = [v5 constantWithData:v36 shape:&unk_284C645C0 dataType:268435472];

  v206 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.080627];
  v37 = [(NSData *)v286 subdataWithRange:2704, 32];
  v204 = [v5 constantWithData:v37 shape:&unk_284C645D8 dataType:268435472];

  v38 = [(NSData *)v286 subdataWithRange:2736, 32];
  v202 = [v5 constantWithData:v38 shape:&unk_284C645F0 dataType:268435472];

  v197 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.07843];
  v39 = [(NSData *)v286 subdataWithRange:2768, 32];
  v196 = [v5 constantWithData:v39 shape:&unk_284C64608 dataType:268435472];

  v40 = [(NSData *)v286 subdataWithRange:2800, 32];
  v193 = [v5 constantWithData:v40 shape:&unk_284C64620 dataType:268435472];

  v192 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.054871];
  v285 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:536870920 dataType:0.0];
  v41 = [(NSData *)v286 subdataWithRange:2832, 88];
  v188 = [v5 constantWithData:v41 shape:&unk_284C64638 dataType:268435472];

  v42 = [(NSData *)v286 subdataWithRange:2920, 88];
  v187 = [v5 constantWithData:v42 shape:&unk_284C64650 dataType:268435472];

  v185 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.003922];
  v275 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:536870944 dataType:-1.0];
  v274 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:536870944 dataType:-2.0];
  v273 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:536870944 dataType:-3.0];
  v253 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.007843];
  v276 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:8 dataType:0.0];
  v161 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435488 dataType:0.0];
  v43 = [(NSData *)v286 subdataWithRange:3008, 23040];
  v252 = [v5 constantWithData:v43 shape:&unk_284C64668 dataType:536870920];

  v44 = [(NSData *)v286 subdataWithRange:26048, 9216];
  v251 = [v5 constantWithData:v44 shape:&unk_284C64680 dataType:536870920];

  v45 = [(NSData *)v286 subdataWithRange:35264, 18432];
  v247 = [v5 constantWithData:v45 shape:&unk_284C64698 dataType:536870920];

  v46 = [(NSData *)v286 subdataWithRange:53696, 73728];
  v243 = [v5 constantWithData:v46 shape:&unk_284C646B0 dataType:536870920];

  v47 = [(NSData *)v286 subdataWithRange:127424, 0x4000];
  v241 = [v5 constantWithData:v47 shape:&unk_284C646C8 dataType:536870920];

  v48 = [(NSData *)v286 subdataWithRange:143808, 0x2000];
  v236 = [v5 constantWithData:v48 shape:&unk_284C646E0 dataType:536870920];

  v49 = [(NSData *)v286 subdataWithRange:152000, 1024];
  v231 = [v5 constantWithData:v49 shape:&unk_284C646F8 dataType:536870920];

  v50 = [(NSData *)v286 subdataWithRange:153024, 4096];
  v223 = [v5 constantWithData:v50 shape:&unk_284C64710 dataType:536870920];

  v51 = [(NSData *)v286 subdataWithRange:157120, 2048];
  v220 = [v5 constantWithData:v51 shape:&unk_284C64728 dataType:536870920];

  v52 = [(NSData *)v286 subdataWithRange:159168, 512];
  v213 = [v5 constantWithData:v52 shape:&unk_284C64740 dataType:536870920];

  v53 = [(NSData *)v286 subdataWithRange:159680, 1024];
  v205 = [v5 constantWithData:v53 shape:&unk_284C64758 dataType:536870920];

  v54 = [(NSData *)v286 subdataWithRange:160704, 512];
  v198 = [v5 constantWithData:v54 shape:&unk_284C64770 dataType:536870920];

  v55 = [(NSData *)v286 subdataWithRange:161216, 256];
  v191 = [v5 constantWithData:v55 shape:&unk_284C64788 dataType:536870920];

  v56 = [(NSData *)v286 subdataWithRange:161472, 512];
  v184 = [v5 constantWithData:v56 shape:&unk_284C647A0 dataType:536870920];

  v57 = [(NSData *)v286 subdataWithRange:161984, 512];
  v179 = [v5 constantWithData:v57 shape:&unk_284C647B8 dataType:536870920];

  v58 = [(NSData *)v286 subdataWithRange:162496, 256];
  v174 = [v5 constantWithData:v58 shape:&unk_284C647D0 dataType:536870920];

  v59 = [(NSData *)v286 subdataWithRange:162752, 6336];
  v171 = [v5 constantWithData:v59 shape:&unk_284C647E8 dataType:536870920];

  v160 = [v5 dequantizeTensor:v280 scaleTensor:v253 zeroPointTensor:v276 dataType:268435472 axis:0 name:@"tensor83"];
  v240 = [v5 spaceToDepth2DTensor:@"tensor84" widthAxisTensor:? heightAxisTensor:? depthAxisTensor:? blockSize:? usePixelShuffleOrder:? name:?];
  v239 = [v5 dequantizeTensor:v252 scaleTensor:v270 zeroPointTensor:v285 dataType:268435472 axis:3 name:@"tensor86"];
  v159 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:1 paddingRight:1 paddingTop:1 paddingBottom:1 paddingStyle:0 dataLayout:0 weightsLayout:3];
  v158 = [v5 convolution2DWithSourceTensor:v240 weightsTensor:v239 descriptor:? name:?];
  v157 = [v5 additionWithPrimaryTensor:? secondaryTensor:? name:?];
  v156 = [v5 reLUWithTensor:? name:?];
  v155 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v272 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v238 = [v5 dequantizeTensor:v251 scaleTensor:v267 zeroPointTensor:v285 dataType:268435472 axis:3 name:@"tensor92"];
  v154 = [MEMORY[0x277CD7818] descriptorWithStrideInX:2 strideInY:2 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:1 paddingRight:1 paddingTop:1 paddingBottom:1 paddingStyle:0 dataLayout:0 weightsLayout:3];
  v153 = [v5 convolution2DWithSourceTensor:v272 weightsTensor:v238 descriptor:? name:?];
  v152 = [v5 additionWithPrimaryTensor:? secondaryTensor:? name:?];
  v151 = [v5 reLUWithTensor:? name:?];
  v150 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v277 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v234 = [v5 dequantizeTensor:v247 scaleTensor:v264 zeroPointTensor:v285 dataType:268435472 axis:3 name:@"tensor98"];
  v149 = [MEMORY[0x277CD7818] descriptorWithStrideInX:2 strideInY:2 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:1 paddingRight:1 paddingTop:1 paddingBottom:1 paddingStyle:0 dataLayout:0 weightsLayout:3];
  v148 = [v5 convolution2DWithSourceTensor:v277 weightsTensor:v234 descriptor:? name:?];
  v147 = [v5 additionWithPrimaryTensor:? secondaryTensor:? name:?];
  v146 = [v5 reLUWithTensor:? name:?];
  v145 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v278 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v230 = [v5 dequantizeTensor:v243 scaleTensor:v261 zeroPointTensor:v282 dataType:268435472 axis:3 name:@"tensor104"];
  v144 = [MEMORY[0x277CD7818] descriptorWithStrideInX:2 strideInY:2 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:1 paddingRight:1 paddingTop:1 paddingBottom:1 paddingStyle:0 dataLayout:0 weightsLayout:3];
  v143 = [v5 convolution2DWithSourceTensor:v278 weightsTensor:v230 descriptor:? name:?];
  v142 = [v5 additionWithPrimaryTensor:? secondaryTensor:? name:?];
  v97 = [v5 reLUWithTensor:? name:?];
  v96 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v227 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v226 = [v5 dequantizeTensor:v241 scaleTensor:v258 zeroPointTensor:v282 dataType:268435472 axis:3 name:@"tensor110"];
  v95 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:0 dataLayout:0 weightsLayout:3];
  v94 = [v5 convolution2DWithSourceTensor:v227 weightsTensor:v226 descriptor:? name:?];
  v93 = [v5 additionWithPrimaryTensor:? secondaryTensor:? name:?];
  v92 = [v5 reLUWithTensor:? name:?];
  v91 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v222 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v221 = [v5 dequantizeTensor:v236 scaleTensor:v255 zeroPointTensor:v285 dataType:268435472 axis:3 name:@"tensor116"];
  v90 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:0 dataLayout:0 weightsLayout:3];
  v89 = [v5 convolution2DWithSourceTensor:v222 weightsTensor:v221 descriptor:? name:?];
  v88 = [v5 additionWithPrimaryTensor:? secondaryTensor:? name:?];
  v87 = [v5 reLUWithTensor:? name:?];
  v219 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v86 = [v5 shapeOfTensor:? name:?];
  v217 = [v5 multiplicationWithPrimaryTensor:? secondaryTensor:? name:?];
  v85 = [v5 dequantizeTensor:v219 scaleTensor:v281 zeroPointTensor:v285 dataType:268435472 axis:0 name:@"tensor121"];
  v216 = [v5 padTensor:0.0 withPaddingMode:? leftPadding:? rightPadding:? constantValue:? name:?];
  v215 = [v5 dequantizeTensor:v231 scaleTensor:v283 zeroPointTensor:v285 dataType:268435472 axis:0 name:@"tensor123"];
  v84 = [MEMORY[0x277CD7818] descriptorWithStrideInX:2 strideInY:2 dilationRateInX:1 dilationRateInY:1 groups:64 paddingLeft:3 paddingRight:3 paddingTop:3 paddingBottom:3 paddingStyle:0 dataLayout:0 weightsLayout:3];
  v83 = [v5 convolutionTranspose2DWithSourceTensor:v216 weightsTensor:v215 outputShapeTensor:v217 descriptor:? name:?];
  v82 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v81 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v80 = [v5 additionWithPrimaryTensor:? secondaryTensor:? name:?];
  v79 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v211 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v210 = [v5 dequantizeTensor:v223 scaleTensor:v248 zeroPointTensor:v285 dataType:268435472 axis:3 name:@"tensor130"];
  v78 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:0 dataLayout:0 weightsLayout:3];
  v77 = [v5 convolution2DWithSourceTensor:v211 weightsTensor:v210 descriptor:? name:?];
  v76 = [v5 additionWithPrimaryTensor:? secondaryTensor:? name:?];
  v75 = [v5 reLUWithTensor:? name:?];
  v74 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v208 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v207 = [v5 dequantizeTensor:v220 scaleTensor:v244 zeroPointTensor:v285 dataType:268435472 axis:3 name:@"tensor136"];
  v73 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:0 dataLayout:0 weightsLayout:3];
  v141 = [v5 convolution2DWithSourceTensor:v208 weightsTensor:v207 descriptor:? name:?];
  v140 = [v5 additionWithPrimaryTensor:? secondaryTensor:? name:?];
  v139 = [v5 reLUWithTensor:? name:?];
  v203 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v138 = [v5 shapeOfTensor:? name:?];
  v201 = [v5 multiplicationWithPrimaryTensor:? secondaryTensor:? name:?];
  v137 = [v5 dequantizeTensor:v203 scaleTensor:v279 zeroPointTensor:v285 dataType:268435472 axis:0 name:@"tensor141"];
  v200 = [v5 padTensor:0.0 withPaddingMode:? leftPadding:? rightPadding:? constantValue:? name:?];
  v199 = [v5 dequantizeTensor:v213 scaleTensor:v283 zeroPointTensor:v285 dataType:268435472 axis:0 name:@"tensor143"];
  v136 = [MEMORY[0x277CD7818] descriptorWithStrideInX:2 strideInY:2 dilationRateInX:1 dilationRateInY:1 groups:32 paddingLeft:3 paddingRight:3 paddingTop:3 paddingBottom:3 paddingStyle:0 dataLayout:0 weightsLayout:3];
  v135 = [v5 convolutionTranspose2DWithSourceTensor:v200 weightsTensor:v199 outputShapeTensor:v201 descriptor:? name:?];
  v134 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v133 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v132 = [v5 additionWithPrimaryTensor:? secondaryTensor:? name:?];
  v131 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v195 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v194 = [v5 dequantizeTensor:v205 scaleTensor:v233 zeroPointTensor:v285 dataType:268435472 axis:3 name:@"tensor150"];
  v130 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:0 dataLayout:0 weightsLayout:3];
  v129 = [v5 convolution2DWithSourceTensor:v195 weightsTensor:v194 descriptor:? name:?];
  v128 = [v5 additionWithPrimaryTensor:? secondaryTensor:? name:?];
  v127 = [v5 reLUWithTensor:? name:?];
  v126 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v190 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v189 = [v5 dequantizeTensor:v198 scaleTensor:v228 zeroPointTensor:v285 dataType:268435472 axis:3 name:@"tensor156"];
  v125 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:0 dataLayout:0 weightsLayout:3];
  v124 = [v5 convolution2DWithSourceTensor:v190 weightsTensor:v189 descriptor:? name:?];
  v123 = [v5 additionWithPrimaryTensor:? secondaryTensor:? name:?];
  v122 = [v5 reLUWithTensor:? name:?];
  v186 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v121 = [v5 shapeOfTensor:? name:?];
  v183 = [v5 multiplicationWithPrimaryTensor:? secondaryTensor:? name:?];
  v120 = [v5 dequantizeTensor:v186 scaleTensor:v271 zeroPointTensor:v285 dataType:268435472 axis:0 name:@"tensor161"];
  v182 = [v5 padTensor:0.0 withPaddingMode:? leftPadding:? rightPadding:? constantValue:? name:?];
  v181 = [v5 dequantizeTensor:v191 scaleTensor:v283 zeroPointTensor:v285 dataType:268435472 axis:0 name:@"tensor163"];
  v119 = [MEMORY[0x277CD7818] descriptorWithStrideInX:2 strideInY:2 dilationRateInX:1 dilationRateInY:1 groups:16 paddingLeft:3 paddingRight:3 paddingTop:3 paddingBottom:3 paddingStyle:0 dataLayout:0 weightsLayout:3];
  v118 = [v5 convolutionTranspose2DWithSourceTensor:v182 weightsTensor:v181 outputShapeTensor:v183 descriptor:? name:?];
  v117 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v180 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v116 = [v5 sliceTensor:v272 dimension:1 start:0 length:16 name:@"tensor167"];
  v115 = [v5 additionWithPrimaryTensor:v180 secondaryTensor:? name:?];
  v114 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v178 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v177 = [v5 dequantizeTensor:v184 scaleTensor:v212 zeroPointTensor:v285 dataType:268435472 axis:3 name:@"tensor171"];
  v113 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:0 dataLayout:0 weightsLayout:3];
  v112 = [v5 convolution2DWithSourceTensor:v178 weightsTensor:v177 descriptor:? name:?];
  v111 = [v5 additionWithPrimaryTensor:? secondaryTensor:? name:?];
  v110 = [v5 reLUWithTensor:? name:?];
  v109 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v176 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v175 = [v5 dequantizeTensor:v179 scaleTensor:v204 zeroPointTensor:v285 dataType:268435472 axis:3 name:@"tensor177"];
  v108 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:0 dataLayout:0 weightsLayout:3];
  v107 = [v5 convolution2DWithSourceTensor:v176 weightsTensor:v175 descriptor:? name:?];
  v106 = [v5 additionWithPrimaryTensor:? secondaryTensor:? name:?];
  v105 = [v5 reLUWithTensor:? name:?];
  v104 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v173 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v172 = [v5 dequantizeTensor:v174 scaleTensor:v196 zeroPointTensor:v285 dataType:268435472 axis:3 name:@"tensor183"];
  v103 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:0 dataLayout:0 weightsLayout:3];
  v102 = [v5 convolution2DWithSourceTensor:v173 weightsTensor:v172 descriptor:? name:?];
  v101 = [v5 additionWithPrimaryTensor:? secondaryTensor:? name:?];
  v100 = [v5 reLUWithTensor:? name:?];
  v99 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v170 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v169 = [v5 dequantizeTensor:v171 scaleTensor:v188 zeroPointTensor:v285 dataType:268435472 axis:3 name:@"tensor189"];
  v98 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:1 paddingRight:1 paddingTop:1 paddingBottom:1 paddingStyle:0 dataLayout:0 weightsLayout:3];
  v60 = [v5 convolution2DWithSourceTensor:v170 weightsTensor:v169 descriptor:? name:?];
  v61 = [v5 additionWithPrimaryTensor:v60 secondaryTensor:v187 name:@"tensor191"];
  v62 = [v5 sigmoidWithTensor:v61 name:@"tensor192"];
  v63 = [v5 quantizeTensor:v62 scaleTensor:v185 zeroPointTensor:v276 dataType:8 axis:0 name:@"tensor193"];
  v64 = [v5 depthToSpace2DTensor:v63 widthAxisTensor:v275 heightAxisTensor:v274 depthAxisTensor:v273 blockSize:2 usePixelShuffleOrder:1 name:@"tensor195"];
  v289 = v64;
  v65 = [MEMORY[0x277CBEA60] arrayWithObjects:&v289 count:1];
  v287 = v280;
  v66 = objc_alloc(MEMORY[0x277CD7880]);
  v67 = [v280 shape];
  v68 = [v66 initWithShape:v67 dataType:{objc_msgSend(v280, "dataType")}];
  v288 = v68;
  v69 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v288 forKeys:&v287 count:1];

  v70 = [v5 compileWithDevice:0 feeds:v69 targetTensors:v65 targetOperations:0 compilationDescriptor:v225];

  v71 = *MEMORY[0x277D85DE8];

  return v70;
}

id EmitBR_Net_V41_nhwc_getMPSGraphExecutable(NSData *a1, const BRNetDescriptor *a2, MPSGraphCompilationDescriptor *a3)
{
  v291[4] = *MEMORY[0x277D85DE8];
  v286 = a1;
  v225 = a3;
  v5 = objc_opt_new();
  v291[0] = &unk_284C62298;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2->input_height];
  v291[1] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2->input_width];
  v291[2] = v7;
  v291[3] = &unk_284C622B0;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v291 count:4];
  v281 = [v5 placeholderWithShape:v8 dataType:8 name:@"tensor0"];

  v290 = xmmword_2398F2870;
  v9 = [MEMORY[0x277CBEA90] dataWithBytes:&v290 length:16];
  v284 = [v5 constantWithData:v9 shape:&unk_284C64890 dataType:536870944];

  v10 = [(NSData *)v286 subdataWithRange:0, 32];
  v232 = [v5 constantWithData:v10 shape:&unk_284C648A8 dataType:268435472];

  v11 = [(NSData *)v286 subdataWithRange:32, 32];
  v236 = [v5 constantWithData:v11 shape:&unk_284C648C0 dataType:268435472];

  v12 = [(NSData *)v286 subdataWithRange:64, 64];
  v239 = [v5 constantWithData:v12 shape:&unk_284C648D8 dataType:268435472];

  v13 = [(NSData *)v286 subdataWithRange:128, 32];
  v247 = [v5 constantWithData:v13 shape:&unk_284C648F0 dataType:268435472];

  v14 = [(NSData *)v286 subdataWithRange:160, 64];
  v249 = [v5 constantWithData:v14 shape:&unk_284C64908 dataType:268435472];

  v15 = [(NSData *)v286 subdataWithRange:224, 64];
  v254 = [v5 constantWithData:v15 shape:&unk_284C64920 dataType:268435472];

  v16 = [(NSData *)v286 subdataWithRange:288, 128];
  v257 = [v5 constantWithData:v16 shape:&unk_284C64938 dataType:268435472];

  v17 = [(NSData *)v286 subdataWithRange:416, 32];
  v163 = [v5 constantWithData:v17 shape:&unk_284C64950 dataType:536870944];

  v18 = [(NSData *)v286 subdataWithRange:448, 128];
  v262 = [v5 constantWithData:v18 shape:&unk_284C64968 dataType:268435472];

  v19 = [(NSData *)v286 subdataWithRange:576, 256];
  v264 = [v5 constantWithData:v19 shape:&unk_284C64980 dataType:268435472];

  v20 = [(NSData *)v286 subdataWithRange:832, 256];
  v266 = [v5 constantWithData:v20 shape:&unk_284C64998 dataType:268435472];

  v21 = [(NSData *)v286 subdataWithRange:1088, 128];
  v267 = [v5 constantWithData:v21 shape:&unk_284C649B0 dataType:268435472];

  v22 = [(NSData *)v286 subdataWithRange:1216, 64];
  v269 = [v5 constantWithData:v22 shape:&unk_284C649C8 dataType:268435472];

  v23 = [(NSData *)v286 subdataWithRange:1280, 64];
  v270 = [v5 constantWithData:v23 shape:&unk_284C649E0 dataType:268435472];

  v24 = [(NSData *)v286 subdataWithRange:1344, 16];
  v162 = [v5 constantWithData:v24 shape:&unk_284C649F8 dataType:536870944];

  v25 = [(NSData *)v286 subdataWithRange:1360, 16];
  v161 = [v5 constantWithData:v25 shape:&unk_284C64A10 dataType:536870944];

  v26 = [(NSData *)v286 subdataWithRange:1376, 16];
  v160 = [v5 constantWithData:v26 shape:&unk_284C64A28 dataType:536870944];

  v27 = [(NSData *)v286 subdataWithRange:1392, 16];
  v159 = [v5 constantWithData:v27 shape:&unk_284C64A40 dataType:536870944];

  v28 = [(NSData *)v286 subdataWithRange:1408, 16];
  v158 = [v5 constantWithData:v28 shape:&unk_284C64A58 dataType:536870944];

  v29 = [(NSData *)v286 subdataWithRange:1424, 64];
  v268 = [v5 constantWithData:v29 shape:&unk_284C64A70 dataType:268435472];

  v279 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.118958];
  v30 = [(NSData *)v286 subdataWithRange:1488, 64];
  v265 = [v5 constantWithData:v30 shape:&unk_284C64A88 dataType:268435472];

  v263 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.131958];
  v31 = [(NSData *)v286 subdataWithRange:1552, 128];
  v261 = [v5 constantWithData:v31 shape:&unk_284C64AA0 dataType:268435472];

  v260 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.170166];
  v32 = [(NSData *)v286 subdataWithRange:1680, 256];
  v259 = [v5 constantWithData:v32 shape:&unk_284C64AB8 dataType:268435472];

  v255 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.331299];
  v282 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:536870920 dataType:0.0];
  v33 = [(NSData *)v286 subdataWithRange:2064, 256];
  v253 = [v5 constantWithData:v33 shape:&unk_284C64AD0 dataType:268435472];

  v251 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.192749];
  v34 = [(NSData *)v286 subdataWithRange:2320, 128];
  v250 = [v5 constantWithData:v34 shape:&unk_284C64AE8 dataType:268435472];

  v280 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.239746];
  v245 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.180908];
  v243 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.236572];
  v35 = [(NSData *)v286 subdataWithRange:2448, 128];
  v244 = [v5 constantWithData:v35 shape:&unk_284C64B00 dataType:268435472];

  v237 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.157104];
  v36 = [(NSData *)v286 subdataWithRange:2576, 64];
  v238 = [v5 constantWithData:v36 shape:&unk_284C64B18 dataType:268435472];

  v277 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.152344];
  v229 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.140625];
  v227 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.179688];
  v37 = [(NSData *)v286 subdataWithRange:2640, 64];
  v228 = [v5 constantWithData:v37 shape:&unk_284C64B30 dataType:268435472];

  v220 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.109802];
  v38 = [(NSData *)v286 subdataWithRange:2704, 32];
  v223 = [v5 constantWithData:v38 shape:&unk_284C64B48 dataType:268435472];

  v271 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.131104];
  v283 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.004429];
  v212 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.118774];
  v209 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.131226];
  v39 = [(NSData *)v286 subdataWithRange:2736, 64];
  v211 = [v5 constantWithData:v39 shape:&unk_284C64B60 dataType:268435472];

  v201 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.080627];
  v40 = [(NSData *)v286 subdataWithRange:2800, 32];
  v204 = [v5 constantWithData:v40 shape:&unk_284C64B78 dataType:268435472];

  v195 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.07843];
  v41 = [(NSData *)v286 subdataWithRange:2832, 32];
  v198 = [v5 constantWithData:v41 shape:&unk_284C64B90 dataType:268435472];

  v188 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.054871];
  v285 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:536870920 dataType:0.0];
  v42 = [(NSData *)v286 subdataWithRange:2864, 88];
  v190 = [v5 constantWithData:v42 shape:&unk_284C64BA8 dataType:268435472];

  v43 = [(NSData *)v286 subdataWithRange:2952, 88];
  v183 = [v5 constantWithData:v43 shape:&unk_284C64BC0 dataType:268435472];

  v182 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.003922];
  v274 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:536870944 dataType:-1.0];
  v273 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:536870944 dataType:-2.0];
  v275 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:536870944 dataType:-3.0];
  v258 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435472 dataType:0.007843];
  v276 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:8 dataType:0.0];
  v44 = [(NSData *)v286 subdataWithRange:3040, 23040];
  v256 = [v5 constantWithData:v44 shape:&unk_284C64BD8 dataType:536870920];

  v45 = [(NSData *)v286 subdataWithRange:26080, 9216];
  v252 = [v5 constantWithData:v45 shape:&unk_284C64BF0 dataType:536870920];

  v46 = [(NSData *)v286 subdataWithRange:35296, 18432];
  v248 = [v5 constantWithData:v46 shape:&unk_284C64C08 dataType:536870920];

  v47 = [(NSData *)v286 subdataWithRange:53728, 73728];
  v246 = [v5 constantWithData:v47 shape:&unk_284C64C20 dataType:536870920];

  v48 = [(NSData *)v286 subdataWithRange:127456, 0x4000];
  v242 = [v5 constantWithData:v48 shape:&unk_284C64C38 dataType:536870920];

  v49 = [(NSData *)v286 subdataWithRange:143840, 0x2000];
  v235 = [v5 constantWithData:v49 shape:&unk_284C64C50 dataType:536870920];

  v50 = [(NSData *)v286 subdataWithRange:152032, 1024];
  v231 = [v5 constantWithData:v50 shape:&unk_284C64C68 dataType:536870920];

  v51 = [(NSData *)v286 subdataWithRange:153056, 4096];
  v224 = [v5 constantWithData:v51 shape:&unk_284C64C80 dataType:536870920];

  v52 = [(NSData *)v286 subdataWithRange:157152, 2048];
  v219 = [v5 constantWithData:v52 shape:&unk_284C64C98 dataType:536870920];

  v53 = [(NSData *)v286 subdataWithRange:159200, 512];
  v215 = [v5 constantWithData:v53 shape:&unk_284C64CB0 dataType:536870920];

  v54 = [(NSData *)v286 subdataWithRange:159712, 1024];
  v208 = [v5 constantWithData:v54 shape:&unk_284C64CC8 dataType:536870920];

  v55 = [(NSData *)v286 subdataWithRange:160736, 512];
  v199 = [v5 constantWithData:v55 shape:&unk_284C64CE0 dataType:536870920];

  v56 = [(NSData *)v286 subdataWithRange:161248, 256];
  v193 = [v5 constantWithData:v56 shape:&unk_284C64CF8 dataType:536870920];

  v57 = [(NSData *)v286 subdataWithRange:161504, 512];
  v187 = [v5 constantWithData:v57 shape:&unk_284C64D10 dataType:536870920];

  v58 = [(NSData *)v286 subdataWithRange:162016, 512];
  v179 = [v5 constantWithData:v58 shape:&unk_284C64D28 dataType:536870920];

  v59 = [(NSData *)v286 subdataWithRange:162528, 256];
  v173 = [v5 constantWithData:v59 shape:&unk_284C64D40 dataType:536870920];

  v60 = [(NSData *)v286 subdataWithRange:162784, 6336];
  v169 = [v5 constantWithData:v60 shape:&unk_284C64D58 dataType:536870920];

  v156 = [v5 constantWithScalar:&unk_284C64D70 shape:268435472 dataType:0.0];
  v157 = [v5 constantWithScalar:&unk_284C64D88 shape:536870944 dataType:0.0];
  v61 = [(NSData *)v286 subdataWithRange:169120, 16];
  v155 = [v5 constantWithData:v61 shape:&unk_284C64DA0 dataType:536870944];

  v154 = [v5 constantWithScalar:&unk_284C64DB8 shape:536870944 dataType:1.0];
  v153 = [v5 constantWithScalar:MEMORY[0x277CBEBF8] shape:268435488 dataType:0.0];
  v149 = [v5 spaceToDepth2DTensor:v281 widthAxisTensor:v273 heightAxisTensor:v275 depthAxisTensor:v274 blockSize:4 usePixelShuffleOrder:1 name:@"tensor86"];
  v241 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v240 = [v5 dequantizeTensor:v256 scaleTensor:v268 zeroPointTensor:v285 dataType:268435472 axis:3 name:@"tensor88"];
  v148 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:1 paddingRight:1 paddingTop:1 paddingBottom:1 paddingStyle:0 dataLayout:1 weightsLayout:3];
  v147 = [v5 convolution2DWithSourceTensor:v241 weightsTensor:v240 descriptor:? name:?];
  v146 = [v5 additionWithPrimaryTensor:? secondaryTensor:? name:?];
  v145 = [v5 reLUWithTensor:? name:?];
  v178 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v234 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v233 = [v5 dequantizeTensor:v252 scaleTensor:v265 zeroPointTensor:v285 dataType:268435472 axis:3 name:@"tensor90"];
  v144 = [MEMORY[0x277CD7818] descriptorWithStrideInX:2 strideInY:2 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:1 paddingRight:1 paddingTop:1 paddingBottom:1 paddingStyle:0 dataLayout:1 weightsLayout:3];
  v143 = [v5 convolution2DWithSourceTensor:v234 weightsTensor:v233 descriptor:? name:?];
  v142 = [v5 additionWithPrimaryTensor:? secondaryTensor:? name:?];
  v141 = [v5 reLUWithTensor:? name:?];
  v140 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v272 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v230 = [v5 dequantizeTensor:v248 scaleTensor:v261 zeroPointTensor:v285 dataType:268435472 axis:3 name:@"tensor98"];
  v139 = [MEMORY[0x277CD7818] descriptorWithStrideInX:2 strideInY:2 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:1 paddingRight:1 paddingTop:1 paddingBottom:1 paddingStyle:0 dataLayout:1 weightsLayout:3];
  v138 = [v5 convolution2DWithSourceTensor:v272 weightsTensor:v230 descriptor:? name:?];
  v137 = [v5 additionWithPrimaryTensor:? secondaryTensor:? name:?];
  v136 = [v5 reLUWithTensor:? name:?];
  v135 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v278 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v226 = [v5 dequantizeTensor:v246 scaleTensor:v259 zeroPointTensor:v282 dataType:268435472 axis:3 name:@"tensor104"];
  v94 = [MEMORY[0x277CD7818] descriptorWithStrideInX:2 strideInY:2 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:1 paddingRight:1 paddingTop:1 paddingBottom:1 paddingStyle:0 dataLayout:1 weightsLayout:3];
  v93 = [v5 convolution2DWithSourceTensor:v278 weightsTensor:v226 descriptor:? name:?];
  v92 = [v5 additionWithPrimaryTensor:? secondaryTensor:? name:?];
  v91 = [v5 reLUWithTensor:? name:?];
  v90 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v222 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v221 = [v5 dequantizeTensor:v242 scaleTensor:v253 zeroPointTensor:v282 dataType:268435472 axis:3 name:@"tensor110"];
  v89 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:0 dataLayout:1 weightsLayout:3];
  v88 = [v5 convolution2DWithSourceTensor:v222 weightsTensor:v221 descriptor:? name:?];
  v87 = [v5 additionWithPrimaryTensor:? secondaryTensor:? name:?];
  v86 = [v5 reLUWithTensor:? name:?];
  v85 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v218 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v217 = [v5 dequantizeTensor:v235 scaleTensor:v250 zeroPointTensor:v285 dataType:268435472 axis:3 name:@"tensor116"];
  v84 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:0 dataLayout:1 weightsLayout:3];
  v216 = [v5 convolution2DWithSourceTensor:v218 weightsTensor:v217 descriptor:? name:?];
  v150 = [v5 dequantizeTensor:v231 scaleTensor:v283 zeroPointTensor:v285 dataType:268435472 axis:0 name:@"tensor122"];
  v83 = [v5 additionWithPrimaryTensor:v216 secondaryTensor:v262 name:@"tensor123"];
  v82 = [v5 reLUWithTensor:? name:?];
  v214 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v81 = [v5 shapeOfTensor:? name:?];
  v213 = [v5 multiplicationWithPrimaryTensor:? secondaryTensor:? name:?];
  v80 = [v5 dequantizeTensor:v214 scaleTensor:v280 zeroPointTensor:v285 dataType:268435472 axis:0 name:@"tensor126"];
  v210 = [v5 resizeBilinearWithTensor:? sizeTensor:? centerResult:? alignCorners:? name:?];
  v207 = [v5 dequantizeTensor:v224 scaleTensor:v244 zeroPointTensor:v285 dataType:268435472 axis:3 name:@"tensor129"];
  v79 = [v5 quantizeTensor:v210 scaleTensor:v245 zeroPointTensor:v285 dataType:536870920 axis:0 name:@"tensor130"];
  v78 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v77 = [v5 additionWithPrimaryTensor:? secondaryTensor:? name:?];
  v76 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v206 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v75 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:0 dataLayout:1 weightsLayout:3];
  v205 = [v5 convolution2DWithSourceTensor:v206 weightsTensor:v207 descriptor:? name:?];
  v202 = [v5 dequantizeTensor:v219 scaleTensor:v238 zeroPointTensor:v285 dataType:268435472 axis:3 name:@"tensor136"];
  v134 = [v5 additionWithPrimaryTensor:v205 secondaryTensor:v257 name:@"tensor137"];
  v133 = [v5 reLUWithTensor:? name:?];
  v132 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v203 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v131 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:0 dataLayout:1 weightsLayout:3];
  v200 = [v5 convolution2DWithSourceTensor:v203 weightsTensor:v202 descriptor:? name:?];
  v152 = [v5 dequantizeTensor:v215 scaleTensor:v283 zeroPointTensor:v285 dataType:268435472 axis:0 name:@"tensor142"];
  v130 = [v5 additionWithPrimaryTensor:v200 secondaryTensor:v254 name:@"tensor143"];
  v129 = [v5 reLUWithTensor:? name:?];
  v197 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v128 = [v5 shapeOfTensor:? name:?];
  v196 = [v5 multiplicationWithPrimaryTensor:? secondaryTensor:? name:?];
  v127 = [v5 dequantizeTensor:v197 scaleTensor:v277 zeroPointTensor:v285 dataType:268435472 axis:0 name:@"tensor146"];
  v194 = [v5 resizeBilinearWithTensor:? sizeTensor:? centerResult:? alignCorners:? name:?];
  v192 = [v5 dequantizeTensor:v208 scaleTensor:v228 zeroPointTensor:v285 dataType:268435472 axis:3 name:@"tensor149"];
  v126 = [v5 quantizeTensor:v194 scaleTensor:v229 zeroPointTensor:v285 dataType:536870920 axis:0 name:@"tensor150"];
  v125 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v124 = [v5 additionWithPrimaryTensor:? secondaryTensor:? name:?];
  v123 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v191 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v122 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:0 dataLayout:1 weightsLayout:3];
  v189 = [v5 convolution2DWithSourceTensor:v191 weightsTensor:v192 descriptor:? name:?];
  v186 = [v5 dequantizeTensor:v199 scaleTensor:v223 zeroPointTensor:v285 dataType:268435472 axis:3 name:@"tensor156"];
  v121 = [v5 additionWithPrimaryTensor:v189 secondaryTensor:v249 name:@"tensor157"];
  v120 = [v5 reLUWithTensor:? name:?];
  v119 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v185 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v118 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:0 dataLayout:1 weightsLayout:3];
  v184 = [v5 convolution2DWithSourceTensor:v185 weightsTensor:v186 descriptor:? name:?];
  v151 = [v5 dequantizeTensor:v193 scaleTensor:v283 zeroPointTensor:v285 dataType:268435472 axis:0 name:@"tensor162"];
  v117 = [v5 additionWithPrimaryTensor:v184 secondaryTensor:v247 name:@"tensor163"];
  v116 = [v5 reLUWithTensor:? name:?];
  v181 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v115 = [v5 shapeOfTensor:? name:?];
  v180 = [v5 multiplicationWithPrimaryTensor:? secondaryTensor:? name:?];
  v114 = [v5 dequantizeTensor:v181 scaleTensor:v271 zeroPointTensor:v285 dataType:268435472 axis:0 name:@"tensor166"];
  v113 = [v5 resizeBilinearWithTensor:? sizeTensor:? centerResult:? alignCorners:? name:?];
  v176 = [v5 dequantizeTensor:v187 scaleTensor:v211 zeroPointTensor:v285 dataType:268435472 axis:3 name:@"tensor170"];
  v112 = [v5 quantizeTensor:v113 scaleTensor:v212 zeroPointTensor:v285 dataType:536870920 axis:0 name:@"tensor171"];
  v177 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v111 = [v5 dequantizeTensor:v178 scaleTensor:v279 zeroPointTensor:v285 dataType:268435472 axis:0 name:@"tensor96"];
  v110 = [v5 sliceTensor:? dimension:? start:? length:? name:?];
  v109 = [v5 additionWithPrimaryTensor:v177 secondaryTensor:? name:?];
  v108 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v175 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v107 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:0 dataLayout:1 weightsLayout:3];
  v174 = [v5 convolution2DWithSourceTensor:v175 weightsTensor:v176 descriptor:? name:?];
  v172 = [v5 dequantizeTensor:v179 scaleTensor:v204 zeroPointTensor:v285 dataType:268435472 axis:3 name:@"tensor178"];
  v106 = [v5 additionWithPrimaryTensor:v174 secondaryTensor:v239 name:@"tensor179"];
  v105 = [v5 reLUWithTensor:? name:?];
  v104 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v171 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v103 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:0 dataLayout:1 weightsLayout:3];
  v170 = [v5 convolution2DWithSourceTensor:v171 weightsTensor:v172 descriptor:? name:?];
  v168 = [v5 dequantizeTensor:v173 scaleTensor:v198 zeroPointTensor:v285 dataType:268435472 axis:3 name:@"tensor184"];
  v102 = [v5 additionWithPrimaryTensor:v170 secondaryTensor:v236 name:@"tensor185"];
  v101 = [v5 reLUWithTensor:? name:?];
  v100 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v167 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v99 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:0 paddingRight:0 paddingTop:0 paddingBottom:0 paddingStyle:0 dataLayout:1 weightsLayout:3];
  v166 = [v5 convolution2DWithSourceTensor:v167 weightsTensor:v168 descriptor:? name:?];
  v165 = [v5 dequantizeTensor:v169 scaleTensor:v190 zeroPointTensor:v285 dataType:268435472 axis:3 name:@"tensor190"];
  v98 = [v5 additionWithPrimaryTensor:v166 secondaryTensor:v232 name:@"tensor191"];
  v97 = [v5 reLUWithTensor:? name:?];
  v96 = [v5 quantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v164 = [v5 dequantizeTensor:? scaleTensor:? zeroPointTensor:? dataType:? axis:? name:?];
  v95 = [MEMORY[0x277CD7818] descriptorWithStrideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 groups:1 paddingLeft:1 paddingRight:1 paddingTop:1 paddingBottom:1 paddingStyle:0 dataLayout:1 weightsLayout:3];
  v62 = [v5 convolution2DWithSourceTensor:v164 weightsTensor:v165 descriptor:? name:?];
  v63 = [v5 additionWithPrimaryTensor:v62 secondaryTensor:v183 name:@"tensor196"];
  v64 = [v5 sigmoidWithTensor:v63 name:@"sigmoid_tensor_out"];
  v65 = [v5 quantizeTensor:v64 scaleTensor:v182 zeroPointTensor:v276 dataType:8 axis:0 name:@"tensor198"];
  v66 = [v5 depthToSpace2DTensor:v65 widthAxisTensor:v273 heightAxisTensor:v275 depthAxisTensor:v274 blockSize:2 usePixelShuffleOrder:1 name:@"tensor199"];
  v289 = v66;
  v67 = [MEMORY[0x277CBEA60] arrayWithObjects:&v289 count:1];
  v287 = v281;
  v68 = objc_alloc(MEMORY[0x277CD7880]);
  v69 = [v281 shape];
  v70 = [v68 initWithShape:v69 dataType:{objc_msgSend(v281, "dataType")}];
  v288 = v70;
  v71 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v288 forKeys:&v287 count:1];

  v72 = [v5 compileWithDevice:0 feeds:v71 targetTensors:v67 targetOperations:0 compilationDescriptor:v225];

  v73 = *MEMORY[0x277D85DE8];

  return v72;
}

uint64_t getFeatureConfiguration(void)
{
  if (getFeatureConfiguration(void)::once != -1)
  {
    getFeatureConfiguration();
  }

  return getFeatureConfiguration(void)::config;
}

void ___Z23getFeatureConfigurationv_block_invoke()
{
  v1 = *MEMORY[0x277D85DE8];
  LOBYTE(v0) = 0;
  findEnvVarNum<BOOL>();
}

void sub_2398C2870(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char *a19)
{
  a19 = &a11;
  std::vector<AppBundleInfo>::__destroy_vector::operator()[abi:ne200100](&a19);
  _Unwind_Resume(a1);
}

void AppBundleInfo::~AppBundleInfo(AppBundleInfo *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }
}

uint64_t ___ZL15isInternalBuildv_block_invoke_0()
{
  result = MGGetBoolAnswer();
  isInternalBuild(void)::isInternal = result;
  return result;
}

uint64_t AppBundleInfo::AppBundleInfo(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v7 = a2;
  *a1 = v7;
  *(a1 + 8) = @"0";
  *(a1 + 16) = @"9999999999999";
  *(a1 + 24) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  std::vector<AppFeatureOverride>::__init_with_size[abi:ne200100]<AppFeatureOverride const*,AppFeatureOverride const*>(a1 + 32, a3, a3 + 16 * a4, a4);

  return a1;
}

uint64_t std::vector<AppFeatureOverride>::__init_with_size[abi:ne200100]<AppFeatureOverride const*,AppFeatureOverride const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<AppFeatureOverride>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2398C2AB8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<AppFeatureOverride>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<AppFeatureOverride>>(a1, a2);
  }

  std::vector<AppFeatureOverride>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<AppFeatureOverride>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278AA4B40, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

uint64_t std::vector<AppBundleInfo>::__init_with_size[abi:ne200100]<AppBundleInfo const*,AppBundleInfo const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<AppBundleInfo>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2398C2C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<AppBundleInfo>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<AppBundleInfo>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<AppBundleInfo>>(a1, a2);
  }

  std::vector<AppFeatureOverride>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<AppBundleInfo>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<AppBundleInfo>,AppBundleInfo const*,AppBundleInfo const*,AppBundleInfo*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = *v6;
      *(v4 + 8) = *(v6 + 8);
      v7 = *(v6 + 16);
      v8 = *(v6 + 24);
      *(v4 + 32) = 0;
      *(v4 + 16) = v7;
      *(v4 + 24) = v8;
      *(v4 + 40) = 0;
      *(v4 + 48) = 0;
      std::vector<AppFeatureOverride>::__init_with_size[abi:ne200100]<AppFeatureOverride*,AppFeatureOverride*>(v4 + 32, *(v6 + 32), *(v6 + 40), (*(v6 + 40) - *(v6 + 32)) >> 4);
      v6 += 56;
      v4 = v13 + 56;
      v13 += 56;
    }

    while (v6 != a3);
  }

  v11 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<AppBundleInfo>,AppBundleInfo*>>::~__exception_guard_exceptions[abi:ne200100](v10);
  return v4;
}

uint64_t std::vector<AppFeatureOverride>::__init_with_size[abi:ne200100]<AppFeatureOverride*,AppFeatureOverride*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<AppFeatureOverride>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2398C2EC4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<AppBundleInfo>,AppBundleInfo*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<AppBundleInfo>,std::reverse_iterator<AppBundleInfo*>,std::reverse_iterator<AppBundleInfo*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<AppBundleInfo>,std::reverse_iterator<AppBundleInfo*>,std::reverse_iterator<AppBundleInfo*>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {
      v7 = *(v6 - 24);
      if (v7)
      {
        *(v6 - 16) = v7;
        operator delete(v7);
      }

      v6 -= 56;
    }

    while (v6 != a5);
  }
}

void std::vector<AppBundleInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<AppBundleInfo>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<AppBundleInfo>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      v4 = *(v3 - 24);
      if (v4)
      {
        *(v3 - 16) = v4;
        operator delete(v4);
      }

      v3 -= 56;
    }

    while (v3 != v2);
  }

  a1[1] = v2;
}

void sub_2398C3F58(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

id computeKernel(void *a1, void *a2, void *a3, void *a4, void *a5, unint64_t a6, uint64_t a7)
{
  v13 = a2;
  v14 = functionFromLibrary(a1, a3, a4, a5);
  if (!v14 || a4 && *a4)
  {
    v15 = 0;
  }

  else
  {
    v16 = objc_alloc_init(MEMORY[0x277CD6D30]);
    [v16 setThreadGroupSizeIsMultipleOfThreadExecutionWidth:a7];
    [v16 setComputeFunction:v14];
    if (a6)
    {
      [v16 setMaxTotalThreadsPerThreadgroup:a6];
    }

    v17 = [v13 newComputePipelineStateWithDescriptor:v16 error:a4];
    v18 = v17;
    if (v17 && [v17 maxTotalThreadsPerThreadgroup] >= a6)
    {
      v15 = v18;
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

id tileKernel(void *a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = a2;
  v16 = functionFromLibrary(a1, a3, a4, a5);
  if (!v16 || a4 && *a4)
  {
    v17 = 0;
  }

  else
  {
    v18 = objc_alloc_init(MEMORY[0x277CD7078]);
    [v18 setSampleCount:1];
    [v18 setTileFunction:v16];
    if (a6)
    {
      [v18 setMaxTotalThreadsPerThreadgroup:a6];
    }

    v27 = &a10;
    v19 = a9;
    if (a9)
    {
      v20 = 0;
      do
      {
        v21 = [v18 colorAttachments];
        v22 = [v21 objectAtIndexedSubscript:v20];
        [v22 setPixelFormat:v19];

        v23 = v27++;
        v19 = *v23;
        ++v20;
      }

      while (*v23);
    }

    v24 = [v15 newRenderPipelineStateWithTileDescriptor:v18 error:a4];
    v17 = v24;
    if (v24)
    {
      v25 = v24;
    }
  }

  return v17;
}

void sub_2398C5ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29)
{
  MetalFxScopedSignpost::~MetalFxScopedSignpost((v30 - 216));

  _Unwind_Resume(a1);
}

void checkInputOutputTextures(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v20 = a1;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  checkTexture(v20, 0, 0, @"Color", 1, 1, a7, @"Color");
  checkTexture(v19, a10, a11, @"Output", 1, 0, a12, @"Color");
  checkTexture(v17, [v20 width], objc_msgSend(v20, "height"), @"Depth", 0, 0, 0, @"Color");
  checkTexture(v18, [v20 width], objc_msgSend(v20, "height"), @"Motion", 0, 0, 0, @"Color");
  if ([v20 width] < a8)
  {
    MTLReportFailure();
  }

  if ([v20 height] < a9)
  {
    MTLReportFailure();
  }
}

id functionFromLibrary(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a4;
  if (v9)
  {
    v10 = [v7 newFunctionWithName:v8 constantValues:v9 error:a3];
  }

  else
  {
    v10 = [v7 newFunctionWithName:v8];
  }

  v11 = v10;

  return v11;
}

void sub_2398C8304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, void *a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  MetalFxScopedSignpost::~MetalFxScopedSignpost(va);
  _Unwind_Resume(a1);
}

void checkInputOutputTexturesForSpatial(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = a1;
  v17 = a2;
  checkTexture(v18, a3, a4, @"Color", 1, 1, a5, @"Color");
  checkTexture(v17, a8, a9, @"Output", 1, 0, a10, @"Color");
  if ([v18 width] < a6)
  {
    MTLReportFailure();
  }

  if ([v18 height] < a7)
  {
    MTLReportFailure();
  }
}

void sub_2398C99DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, void *a24, void *a25, void *a26, void *a27, uint64_t a28, void *a29, uint64_t a30, void *a31, uint64_t a32, void *a33)
{

  MFXDevice3::~MFXDevice3((v37 - 152));
  _Unwind_Resume(a1);
}

void sub_2398CA40C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, void *a22, void *a23, void *a24, void *a25)
{

  MFXDevice3::~MFXDevice3((v26 - 152));
  _Unwind_Resume(a1);
}

void sub_2398CAE88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26)
{

  MetalFxScopedSignpost::~MetalFxScopedSignpost((v28 - 160));
  MFXDevice3::~MFXDevice3((v28 - 120));
  _Unwind_Resume(a1);
}

void sub_2398CB768(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id a14)
{

  _Unwind_Resume(a1);
}

uint64_t ___ZL15isInternalBuildv_block_invoke_1()
{
  result = MGGetBoolAnswer();
  isInternalBuild(void)::isInternal = result;
  return result;
}

uint64_t ___ZL21metalfxForceNoPreWarmv_block_invoke()
{
  v0 = getenv("MTLFX_NO_PREWARM");
  if (!v0)
  {
    v0 = "0";
  }

  result = strtol(v0, 0, 0);
  metalfxForceNoPreWarm(void)::noPrewarm = result > 0;
  return result;
}

void ___ZL24MetalFXHUDAddTAAUMetricsv_block_invoke_0()
{
  {
    MetalFXHUDInstance(void)::inst = WEAK_CADeveloperHUDProperties();
  }

  if (MetalFXHUDInstance(void)::inst)
  {
    v0 = NSSelectorFromString(&cfstr_Instance.isa);
    v1 = NSClassFromString(&cfstr_Cadeveloperhud.isa);
    if (v1)
    {
      v4 = ([(objc_class *)v1 methodForSelector:v0])(v1, v0);
      if (v4)
      {
        v2 = WEAK_HUDServiceV3();
        v3 = v2;
        if (v2)
        {
          [v2 addMetric:@"com.apple.hud-label.metalfx.v2.scaling" name:@"Scaling" unit:&stru_284C54C00 nameColor:0xFFFFFFFFLL valueColor:0xFFFFFFFFLL visualType:2048 options:8];
          [v3 addMetric:@"com.apple.hud-label.metalfx.v2.input_resolution" name:@"Scaling Input Res" unit:&stru_284C54C00 nameColor:0xFFFFFFFFLL valueColor:0xFFFFFFFFLL visualType:2048 options:8];
          [v3 addMetric:@"com.apple.hud-label.metalfx.v2.target_resolution" name:@"Scaling Target Res" unit:&stru_284C54C00 nameColor:0xFFFFFFFFLL valueColor:0xFFFFFFFFLL visualType:2048 options:8];
          [v3 addMetric:@"com.apple.hud-label.metalfx.v2.exposure" name:@"Exposure" unit:&stru_284C54C00 nameColor:0xFFFFFFFFLL valueColor:0xFFFFFFFFLL visualType:2048 options:8];
        }

        else
        {
          [v4 addLabel:@"com.apple.hud-label.metalfx" after:@"com.apple.hud-graph.default"];
          [v4 addLabel:@"com.apple.hud-label.metalfx.resolution" after:@"com.apple.hud-label.metalfx"];
          [v4 addLabel:@"com.apple.hud-label.metalfx.content_resolution" after:@"com.apple.hud-label.metalfx.resolution"];
          [v4 addLabel:@"com.apple.hud-label.metalfx.timing" after:@"com.apple.hud-label.metalfx.content_resolution"];
        }
      }
    }
  }
}

void sub_2398CC860(_Unwind_Exception *a1)
{
  v10 = v8;

  _Unwind_Resume(a1);
}

void sub_2398CCA14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{

  _Unwind_Resume(a1);
}

void sub_2398CCB3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{

  _Unwind_Resume(a1);
}

void sub_2398CCC64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{

  _Unwind_Resume(a1);
}

uint64_t ___ZL15isInternalBuildv_block_invoke_2()
{
  result = MGGetBoolAnswer();
  isInternalBuild(void)::isInternal = result;
  return result;
}

uint64_t getMTLFXTemporalScalerVersionOverride(uint64_t a1)
{
  if (isInternalBuild(void)::once != -1)
  {
    getMTLFXTemporalScalerVersionOverride();
  }

  if (isInternalBuild(void)::isInternal == 1)
  {
    v2 = getenv("MTLFX_TEMPORAL_SCALER_VERSION");
    if (v2)
    {
      getMTLFXTemporalScalerVersionOverride(v2, a1, &v4);
      return v4;
    }
  }

  return a1;
}

void sub_2398CD478(_Unwind_Exception *a1)
{

  _Unwind_Resume(a1);
}

uint64_t ___ZL15isInternalBuildv_block_invoke_3()
{
  result = MGGetBoolAnswer();
  isInternalBuild(void)::isInternal = result;
  return result;
}

void sub_2398CF00C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, void *a16, void *a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, void *a24, void *a25, uint64_t a26, void *a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, void *a33, void *a34, void *a35)
{
  MEMORY[0x23EE7AA60](v39, 0x1080C407969C2F8);

  _Unwind_Resume(a1);
}

id MFXDevice4::createTexture(MFXDevice4 *this, MTLTextureDescriptor *a2)
{
  var0 = this->var0;
  v4 = this->var2;
  v5 = [var0 newTextureWithDescriptor:a2];
  [v4 addAllocation:v5];

  return v5;
}

void getDefaultBRNetDescriptor(int a1@<W0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *(a4 + 64) = 0;
  *a4 = a1;
  *(a4 + 4) = a2;
  v5 = ((a2 + 63) >> 1) & 0x7FFFFFE0;
  *(a4 + 8) = a3;
  *(a4 + 12) = v5;
  v6 = ((a3 + 63) >> 1) & 0x7FFFFFE0;
  *(a4 + 16) = v6;
  *(a4 + 20) = 0x100000005;
  *(a4 + 28) = v5;
  *(a4 + 32) = v6;
  *(a4 + 36) = 0x200000005;
  *(a4 + 44) = v5 >> 1;
  *(a4 + 48) = v6 >> 1;
  *(a4 + 52) = 11;
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_15;
      }

      *(a4 + 56) = 1;
      v10 = MEMORY[0x277CCACA8];
      v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v8 = [v14 resourcePath];
      v9 = [v10 stringWithFormat:@"%@/%@", v8, @"emit_v40_nhwc_constants.dat"];
    }

    else
    {
      *(a4 + 56) = 0;
      v13 = MEMORY[0x277CCACA8];
      v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v8 = [v14 resourcePath];
      v9 = [v13 stringWithFormat:@"%@/%@", v8, @"emit_v35_constants.dat"];
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        *(a4 + 56) = 0;
        v11 = MEMORY[0x277CCACA8];
        v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v8 = [v14 resourcePath];
        v9 = [v11 stringWithFormat:@"%@/%@", v8, @"emit_v40_nchw_constants.dat"];
        break;
      case 3:
        *(a4 + 56) = 0;
        v12 = MEMORY[0x277CCACA8];
        v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v8 = [v14 resourcePath];
        v9 = [v12 stringWithFormat:@"%@/%@", v8, @"emit_v41_nchw_constants.dat"];
        break;
      case 4:
        *(a4 + 56) = 1;
        v7 = MEMORY[0x277CCACA8];
        v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v8 = [v14 resourcePath];
        v9 = [v7 stringWithFormat:@"%@/%@", v8, @"emit_v41_nhwc_constants.dat"];
        break;
      default:
LABEL_15:
        getDefaultBRNetDescriptor();
    }
  }

  *(a4 + 64) = v9;
}

{
  *(a4 + 64) = 0;
  *a4 = a1;
  *(a4 + 4) = a2;
  v5 = ((a2 + 63) >> 1) & 0x7FFFFFE0;
  *(a4 + 8) = a3;
  *(a4 + 12) = v5;
  v6 = ((a3 + 63) >> 1) & 0x7FFFFFE0;
  *(a4 + 16) = v6;
  *(a4 + 20) = 0x100000005;
  *(a4 + 28) = v5;
  *(a4 + 32) = v6;
  *(a4 + 36) = 0x200000005;
  *(a4 + 44) = v5 >> 1;
  *(a4 + 48) = v6 >> 1;
  *(a4 + 52) = 11;
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_15;
      }

      *(a4 + 56) = 1;
      v10 = MEMORY[0x277CCACA8];
      v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v8 = [v14 resourcePath];
      v9 = [v10 stringWithFormat:@"%@/%@", v8, @"emit_v40_nhwc_constants.dat"];
    }

    else
    {
      *(a4 + 56) = 0;
      v13 = MEMORY[0x277CCACA8];
      v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v8 = [v14 resourcePath];
      v9 = [v13 stringWithFormat:@"%@/%@", v8, @"emit_v35_constants.dat"];
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        *(a4 + 56) = 0;
        v11 = MEMORY[0x277CCACA8];
        v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v8 = [v14 resourcePath];
        v9 = [v11 stringWithFormat:@"%@/%@", v8, @"emit_v40_nchw_constants.dat"];
        break;
      case 3:
        *(a4 + 56) = 0;
        v12 = MEMORY[0x277CCACA8];
        v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v8 = [v14 resourcePath];
        v9 = [v12 stringWithFormat:@"%@/%@", v8, @"emit_v41_nchw_constants.dat"];
        break;
      case 4:
        *(a4 + 56) = 1;
        v7 = MEMORY[0x277CCACA8];
        v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v8 = [v14 resourcePath];
        v9 = [v7 stringWithFormat:@"%@/%@", v8, @"emit_v41_nhwc_constants.dat"];
        break;
      default:
LABEL_15:
        getDefaultBRNetDescriptor();
    }
  }

  *(a4 + 64) = v9;
}

uint64_t MFXDevice4::emitSignPostForComputeEncoder(MFXDevice4 *this)
{
  result = MTLTraceEnabled();
  if (result)
  {
    var6 = this->var6;
    [*this->var4 globalTraceObjectID];

    return kdebug_trace();
  }

  return result;
}

void MFXComputeEncoder4::endEncoding(MFXComputeEncoder4 *this)
{
  [*this endEncoding];
  v2 = *this;
  *this = 0;

  v3 = *(this + 1);
  *(this + 1) = 0;
}

void MFXDevice4::MFXDevice4(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  *a1 = v7;
  v8 = v6;
  a1[2] = 0;
  a1[1] = v8;
  a1[5] = 0;
  a1[6] = 0;
  a1[3] = 0;
  v9 = [v7 newResidencySetWithDescriptor:objc_opt_new() error:0];
  v10 = a1[2];
  a1[2] = v9;

  operator new();
}

void sub_2398D0878(_Unwind_Exception *a1)
{
  MFXRenderEncoder4::~MFXRenderEncoder4(v4);

  _Unwind_Resume(a1);
}

uint64_t MFXComputeEncoder4::MFXComputeEncoder4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  *(a1 + 24) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v7 = [v5 newBufferWithLength:0x4000 options:0];
  v8 = *(a1 + 24);
  *(a1 + 24) = v7;

  [v6 addAllocation:*(a1 + 24)];
  return a1;
}

uint64_t ___ZL15isInternalBuildv_block_invoke_4()
{
  result = MGGetBoolAnswer();
  isInternalBuild(void)::isInternal = result;
  return result;
}

void MFXDevice4::~MFXDevice4(MFXDevice4 *this)
{
  var4 = this->var4;
  if (var4)
  {

    MEMORY[0x23EE7AA60](var4, 0x1080C406DF273CBLL);
  }
}

void MFXComputeEncoder4::beginEncoding(id *a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [v8 computeCommandEncoder];
  v7 = *a1;
  *a1 = v6;

  objc_storeStrong(a1 + 1, a3);
  [*a1 setArgumentTable:v5];
}

void sub_2398D1084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v16 = v15;

  _Unwind_Resume(a1);
}

void sub_2398D1AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  MetalFxScopedSignpost::~MetalFxScopedSignpost(&a27);

  _Unwind_Resume(a1);
}

uint64_t FrameGenImpl<MFXDevice3>::FrameGenImpl(uint64_t a1, void **a2, void *a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = a3;
  *(a1 + 176) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 468) = 1015580809;
  v14 = 1;
  *(a1 + 448) = 0u;
  if (((a9 - 70) > 0x14 || ((1 << (a9 - 70)) & 0x100C03) == 0) && ((a9 - 586) > 0x35 || ((1 << (a9 - 74)) & 0x30000000000001) == 0))
  {
    v14 = 0;
  }

  if (a5 >= a4)
  {
    v15 = a4;
  }

  else
  {
    v15 = a5;
  }

  v16 = 29 - __clz(v15);
  if (v16 >= 7)
  {
    v16 = 7;
  }

  *(a1 + 464) = v16;
  v107 = 1;
  v106 = 0;
  v17 = objc_opt_new();
  v18 = v17;
  if (v14)
  {
    v19 = &v106;
  }

  else
  {
    v19 = &v107;
  }

  [v17 setConstantValue:v19 type:53 atIndex:1];
  v20 = MFXDevice3::createComputePipeline(a2, v13, @"computeLuminance", v18);
  v21 = *a1;
  *a1 = v20;

  v22 = MFXDevice3::createComputePipeline(a2, v13, @"analyzeHistogram", 0);
  v23 = *(a1 + 8);
  *(a1 + 8) = v22;

  v24 = MFXDevice3::createComputePipeline(a2, v13, @"generateLuminancePyramid", 0);
  v25 = *(a1 + 24);
  *(a1 + 24) = v24;

  v26 = MFXDevice3::createComputePipeline(a2, v13, @"downSample", 0);
  v27 = *(a1 + 16);
  *(a1 + 16) = v26;

  v28 = MFXDevice3::createComputePipeline(a2, v13, @"findOpticalMotionVectorsV3", 0);
  v29 = *(a1 + 32);
  *(a1 + 32) = v28;

  v30 = MFXDevice3::createComputePipeline(a2, v13, @"initMotionVectors", 0);
  v31 = *(a1 + 48);
  *(a1 + 48) = v30;

  v32 = MFXDevice3::createComputePipeline(a2, v13, @"splatOpticalMotionVectors", 0);
  v33 = *(a1 + 40);
  *(a1 + 40) = v32;

  [v18 setConstantValue:&v106 type:53 atIndex:2];
  v34 = MFXDevice3::createComputePipeline(a2, v13, @"dilateDepth", v18);
  v35 = *(a1 + 72);
  *(a1 + 72) = v34;

  [v18 setConstantValue:&v107 type:53 atIndex:2];
  v36 = MFXDevice3::createComputePipeline(a2, v13, @"dilateDepth", v18);
  v37 = *(a1 + 80);
  *(a1 + 80) = v36;

  v38 = MFXDevice3::createComputePipeline(a2, v13, @"clearAppMotionVectors", 0);
  v39 = *(a1 + 56);
  *(a1 + 56) = v38;

  v40 = MFXDevice3::createComputePipeline(a2, v13, @"splatAppMotionVectors", 0);
  v41 = *(a1 + 64);
  *(a1 + 64) = v40;

  v42 = MFXDevice3::createComputePipeline(a2, v13, @"upsampleAppMotionVectors", 0);
  v43 = *(a1 + 88);
  *(a1 + 88) = v42;

  v44 = MFXDevice3::createComputePipeline(a2, v13, @"fillCracksAppMotionVectors", 0);
  v45 = *(a1 + 96);
  *(a1 + 96) = v44;

  v46 = MFXDevice3::createComputePipeline(a2, v13, @"inpaintMotionVectors", 0);
  v47 = *(a1 + 104);
  *(a1 + 104) = v46;

  v48 = MFXDevice3::createComputePipeline(a2, v13, @"medianFilter", 0);
  v49 = *(a1 + 112);
  *(a1 + 112) = v48;

  v50 = MFXDevice3::createComputePipeline(a2, v13, @"debugShader", 0);
  v51 = *(a1 + 120);
  *(a1 + 120) = v50;

  v52 = MFXDevice3::createTileShader(a2, v13, @"warpImage", a9);
  v53 = *(a1 + 128);
  *(a1 + 128) = v52;

  v54 = MFXDevice3::createTileShader(a2, v13, @"copyImage", a9);
  v55 = *(a1 + 136);
  *(a1 + 136) = v54;

  v101 = a4 >> 3;
  v102 = v18;
  v56 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:53 width:? height:? mipmapped:?];
  [v56 setUsage:35];
  v57 = [*a2 newTextureWithDescriptor:v56];
  v58 = *(a1 + 144);
  *(a1 + 144) = v57;

  v59 = [*a2 newTextureWithDescriptor:v56];
  v60 = *(a1 + 152);
  *(a1 + 152) = v59;

  v61 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:53 width:a6 height:a7 mipmapped:0];

  [v61 setUsage:35];
  v62 = [*a2 newTextureWithDescriptor:v61];
  v63 = *(a1 + 160);
  *(a1 + 160) = v62;

  v64 = [*a2 newTextureWithDescriptor:v61];
  v65 = *(a1 + 168);
  *(a1 + 168) = v64;

  v66 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:55 width:a6 height:a7 mipmapped:0];

  [v66 setUsage:16387];
  v67 = [*a2 newTextureWithDescriptor:v66];
  v68 = *(a1 + 408);
  *(a1 + 408) = v67;

  v69 = [*a2 newTextureWithDescriptor:v66];
  v70 = *(a1 + 416);
  *(a1 + 416) = v69;

  if (*(a1 + 464))
  {
    v105 = v13;
    v71 = 0;
    do
    {
      v72 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:10 width:a4 >> v71 height:a5 >> v71 mipmapped:0];

      [v72 setUsage:16387];
      v73 = 0;
      v74 = 1;
      v75 = a1 + 176 + 16 * v71;
      do
      {
        v76 = v74;
        v77 = [*a2 newTextureWithDescriptor:v72];
        v78 = *(v75 + 8 * v73);
        *(v75 + 8 * v73) = v77;

        v74 = 0;
        v73 = 1;
      }

      while ((v76 & 1) != 0);
      ++v71;
      v79 = *(a1 + 464);
      v66 = v72;
    }

    while (v71 < v79);
    if (v79)
    {
      v80 = 0;
      v13 = v105;
      do
      {
        v81 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:65 width:a4 >> (v80 + 3) height:a5 >> (v80 + 3) mipmapped:0];

        [v81 setUsage:16387];
        v82 = [*a2 newTextureWithDescriptor:v81];
        v83 = a1 + 8 * v80;
        v84 = *(v83 + 288);
        *(v83 + 288) = v82;

        v85 = [*a2 newTextureWithDescriptor:v81];
        v86 = *(v83 + 344);
        *(v83 + 344) = v85;

        if (!v80)
        {
          v87 = [*a2 newTextureWithDescriptor:v81];
          v88 = *(a1 + 400);
          *(a1 + 400) = v87;
        }

        ++v80;
        v72 = v81;
      }

      while (v80 < *(a1 + 464));
    }

    else
    {
      v81 = v72;
      v13 = v105;
    }
  }

  else
  {
    v81 = v66;
  }

  v89 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:65 width:a4 height:a5 mipmapped:0];

  [v89 setUsage:16387];
  v90 = [*a2 newTextureWithDescriptor:v89];
  v91 = *(a1 + 424);
  *(a1 + 424) = v90;

  v92 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:13 width:a4 height:a5 mipmapped:0];

  [v92 setUsage:16387];
  v93 = [*a2 newTextureWithDescriptor:v92];
  v94 = *(a1 + 432);
  *(a1 + 432) = v93;

  v95 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:65 width:v101 height:a5 >> 3 mipmapped:0];

  [v95 setUsage:16387];
  v96 = [*a2 newTextureWithDescriptor:v95];
  v97 = *(a1 + 440);
  *(a1 + 440) = v96;

  v98 = [*a2 newBufferWithLength:18436 options:32];
  v99 = *(a1 + 448);
  *(a1 + 448) = v98;

  return a1;
}

void sub_2398D2CC0(_Unwind_Exception *a1)
{
  for (i = 49; i != 42; --i)
  {
  }

  do
  {
  }

  while (i != 35);
  do
  {
  }

  while (i != 21);

  _Unwind_Resume(a1);
}

id MFXDevice3::createComputePipeline(void **a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v17 = 0;
    v10 = [v7 newFunctionWithName:v8 constantValues:v9 error:&v17];
    v11 = v17;
  }

  else
  {
    v10 = [v7 newFunctionWithName:v8];
    v11 = 0;
  }

  v12 = *a1;
  v16 = v11;
  v13 = [v12 newComputePipelineStateWithFunction:v10 error:&v16];
  v14 = v16;

  return v13;
}

id MFXDevice3::createTileShader(void **a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = objc_opt_new();
  v10 = [v9 colorAttachments];
  v11 = [v10 objectAtIndexedSubscript:0];
  [v11 setPixelFormat:a4];

  v12 = [v7 newFunctionWithName:v8];
  [v9 setTileFunction:v12];

  [v9 setThreadgroupSizeMatchesTileSize:1];
  v13 = *a1;
  v16 = 0;
  v14 = [v13 newRenderPipelineStateWithTileDescriptor:v9 options:0 reflection:0 error:&v16];

  return v14;
}

void FrameGenImpl<MFXDevice3>::FrameGenImpl()
{
  FrameGenImpl<MFXDevice3>::FrameGenImpl();
}

{
    ;
  }
}

id *FrameGenImpl<MFXDevice3>::~FrameGenImpl(id *a1)
{
  for (i = 49; i != 42; --i)
  {
  }

  do
  {
  }

  while (i != 35);
  do
  {
  }

  while (i != 21);

  return a1;
}

void FrameGenImpl<MFXDevice3>::encodeTo(uint32x2_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = *a4;
  MFXComputeEncoder3::beginEncoding((a2 + 8), v7);
  if (*(a4 + 72) == 1)
  {
    a1[57].i32[0] = 0;
  }

  if (*(a4 + 56))
  {
    [*(a2 + 8) waitForFence:?];
  }

  v9 = [*(a4 + 32) width];
  v10 = [*(a4 + 32) height];
  MTLTraceEnabled();
  v11 = vcvt_f32_u32(__PAIR64__(v10, v9));
  v12 = vcvt_f32_u32(*(a4 + 88));
  v105 = vdiv_f32(vmul_f32(*(a4 + 64), v11), v12);
  v13 = -1.0;
  v14 = 1.0;
  if (*(a4 + 73))
  {
    v13 = 1.0;
    v14 = 0.0;
  }

  v106 = v13;
  v107 = v14;
  v15 = a1[58].i32[1];
  v108 = *(a4 + 76);
  v109 = v15;
  v16 = vdiv_f32(v12, v11);
  v17 = vcvt_f32_u32(a1[59]);
  v113 = vdiv_f32(v17, v12);
  v114 = v16;
  __asm { FMOV            V0.2S, #1.0 }

  v115 = vdiv_f32(_D0, v12);
  v116 = vdiv_f32(_D0, v17);
  v23 = [v8 width];
  v112 = 80 * v23 * [v8 height] / 0x384;
  v24 = *(a4 + 80);
  v25 = *(a4 + 84);
  v110 = v24 / (v24 - v25);
  v111 = -(v25 * v24) / (v24 - v25);
  [*(a2 + 8) setBytes:&v105 length:72 atIndex:0];
  [*(a2 + 8) setLabel:@"MTLFX_Frame_Interpolation"];
  [*(a2 + 8) pushDebugGroup:@"Downsample"];
  [*(a2 + 8) setComputePipelineState:*a1];
  [*(a2 + 8) setTexture:v8 atIndex:0];
  [*(a2 + 8) setTexture:*&a1[a1[57].u32[1] + 22] atIndex:1];
  [*(a2 + 8) setBuffer:*&a1[56] offset:4 * (2304 * a1[57].i32[1]) atIndex:1];
  v26 = [v8 width];
  v27 = [v8 height];
  v28 = *(a2 + 8);
  v119.i64[0] = v26;
  v119.i64[1] = v27;
  v120 = 1;
  v117 = vdupq_n_s64(0x20uLL);
  v118 = 1;
  [v28 dispatchThreads:&v119 threadsPerThreadgroup:&v117];
  v102 = a4;
  if (a1[58].i32[0] >= 2u)
  {
    v104 = vdupq_n_s64(0x10uLL);
    v29 = a1;
    v30 = 1;
    do
    {
      v31 = *&v29[a1[57].u32[1] + 22];
      v32 = *&v29[a1[57].u32[1] + 24];
      [*(a2 + 8) setComputePipelineState:*&a1[2]];
      [*(a2 + 8) setTexture:v31 atIndex:0];
      [*(a2 + 8) setTexture:v32 atIndex:1];
      v33 = [v32 width];
      v34 = [v32 height];
      v35 = *(a2 + 8);
      v119.i64[0] = v33;
      v119.i64[1] = v34;
      v120 = 1;
      v117 = v104;
      v118 = 1;
      [v35 dispatchThreads:&v119 threadsPerThreadgroup:&v117];

      ++v30;
      v29 += 2;
    }

    while (v30 < a1[58].u32[0]);
  }

  [*(a2 + 8) popDebugGroup];
  v36 = a4;
  if (a1[57].i32[0])
  {
    [*(a2 + 8) pushDebugGroup:@"Analyze histogram"];
    [*(a2 + 8) setBuffer:*&a1[56] offset:4 * (2304 * a1[57].i32[1]) atIndex:1];
    [*(a2 + 8) setBuffer:*&a1[56] offset:4 * (9 * (256 - (a1[57].i32[1] << 8))) atIndex:2];
    [*(a2 + 8) setBuffer:*&a1[56] offset:18432 atIndex:3];
    [*(a2 + 8) setComputePipelineState:*&a1[1]];
    v37 = *(a2 + 8);
    v119 = xmmword_2398F28D0;
    v120 = 1;
    v117 = xmmword_2398F28E0;
    v118 = 1;
    [v37 dispatchThreadgroups:&v119 threadsPerThreadgroup:&v117];
    [*(a2 + 8) popDebugGroup];
    [*(a2 + 8) pushDebugGroup:@"Optical Motion Vectors"];
    [*(a2 + 8) setTexture:*(a4 + 24) atIndex:4];
    v101 = v7;
    v38 = a1[58].u32[0];
    if (v38)
    {
      v39 = 0;
      v40 = a1 + 43;
      v41 = -1;
      v103 = vdupq_n_s64(0x10uLL);
      do
      {
        v42 = v38 + v41;
        v43 = *&a1[(v38 + v41) + 36];
        if (v39)
        {
          v44 = v40[v42 + 1];
        }

        else
        {
          v44 = 0;
        }

        v45 = v44;
        [*(a2 + 8) setComputePipelineState:*&a1[4]];
        [*(a2 + 8) setTexture:v43 atIndex:0];
        v46 = v42;
        v47 = &a1[2 * v42 + 22];
        [*(a2 + 8) setTexture:*(v47 + 8 * a1[57].u32[1]) atIndex:1];
        [*(a2 + 8) setTexture:*(v47 + 8 * (1 - a1[57].i32[1])) atIndex:2];
        [*(a2 + 8) setTexture:v45 atIndex:3];
        LODWORD(v47) = [v43 width];
        v48 = [v43 height];
        v49 = *(a2 + 8);
        v119.i64[0] = v47;
        v119.i64[1] = v48;
        v120 = 1;
        v117 = xmmword_2398F28F0;
        v118 = 1;
        [v49 dispatchThreadgroups:&v119 threadsPerThreadgroup:&v117];
        [*(a2 + 8) setComputePipelineState:*&a1[14]];
        [*(a2 + 8) setTexture:*&v40[v46] atIndex:0];
        [*(a2 + 8) setTexture:v43 atIndex:1];
        v50 = [v43 width];
        v51 = [v43 height];
        v52 = *(a2 + 8);
        v119.i64[0] = (v50 + 15) & 0xFFFFFFFFFFFFFFF0;
        v119.i64[1] = (v51 + 15) & 0xFFFFFFFFFFFFFFF0;
        v120 = 1;
        v117 = v103;
        v118 = 1;
        [v52 dispatchThreads:&v119 threadsPerThreadgroup:&v117];

        ++v39;
        v38 = a1[58].u32[0];
        --v41;
      }

      while (v39 < v38);
    }

    v7 = v101;
    [*(a2 + 8) popDebugGroup];
    v36 = v102;
    [*(a2 + 8) pushDebugGroup:@"clear temp motion vectors"];
    [*(a2 + 8) setComputePipelineState:*&a1[6]];
    [*(a2 + 8) setTexture:*&a1[18] atIndex:0];
    [*(a2 + 8) setTexture:*&a1[19] atIndex:1];
    v53 = [*&a1[18] width];
    v54 = [*&a1[18] height];
    v55 = *(a2 + 8);
    v119.i64[0] = v53;
    v119.i64[1] = v54;
    v120 = 1;
    v117 = vdupq_n_s64(0x10uLL);
    v118 = 1;
    [v55 dispatchThreads:&v119 threadsPerThreadgroup:&v117];
    [*(a2 + 8) popDebugGroup];
    [*(a2 + 8) pushDebugGroup:@"Splat optical motion vectors"];
    [*(a2 + 8) setComputePipelineState:*&a1[5]];
    [*(a2 + 8) setTexture:*&a1[18] atIndex:0];
    [*(a2 + 8) setTexture:*&a1[19] atIndex:1];
    [*(a2 + 8) setTexture:*&a1[a1[57].u32[1] + 26] atIndex:2];
    [*(a2 + 8) setTexture:*&a1[(1 - a1[57].i32[1]) + 26] atIndex:3];
    [*(a2 + 8) setTexture:*&a1[43] atIndex:4];
    [*(a2 + 8) setTexture:*&a1[50] atIndex:5];
    v56 = [*&a1[18] width];
    v57 = [*&a1[18] height];
    v58 = *(a2 + 8);
    v119.i64[0] = v56;
    v119.i64[1] = v57;
    v120 = 1;
    v117 = vdupq_n_s64(8uLL);
    v118 = 1;
    [v58 dispatchThreads:&v119 threadsPerThreadgroup:&v117];
    [*(a2 + 8) popDebugGroup];
    [*(a2 + 8) pushDebugGroup:@"Inpaint optical motion vectors"];
    [*(a2 + 8) setComputePipelineState:*&a1[13]];
    [*(a2 + 8) setTexture:*&a1[55] atIndex:0];
    [*(a2 + 8) setTexture:*&a1[18] atIndex:1];
    [*(a2 + 8) setTexture:*&a1[19] atIndex:2];
    v59 = [*&a1[55] width];
    v60 = ([*&a1[55] height] + 15) & 0xFFFFFFFFFFFFFFF0;
    v61 = *(a2 + 8);
    v119.i64[0] = (v59 + 15) & 0xFFFFFFFFFFFFFFF0;
    v119.i64[1] = v60;
    v120 = 1;
    v117 = vdupq_n_s64(0x10uLL);
    v118 = 1;
    [v61 dispatchThreads:&v119 threadsPerThreadgroup:&v117];
    [*(a2 + 8) popDebugGroup];
    [*(a2 + 8) pushDebugGroup:@"clear game motion vectors"];
    [*(a2 + 8) setComputePipelineState:*&a1[7]];
    [*(a2 + 8) setTexture:*&a1[20] atIndex:0];
    [*(a2 + 8) setTexture:*&a1[21] atIndex:1];
    v62 = *(a2 + 8);
    v119 = vandq_s8(vaddw_u32(vdupq_n_s64(0xFuLL), v102[11]), vdupq_n_s64(0x1FFFFFFF0uLL));
    v120 = 1;
    v117 = vdupq_n_s64(0x10uLL);
    v118 = 1;
    [v62 dispatchThreads:&v119 threadsPerThreadgroup:&v117];
    [*(a2 + 8) popDebugGroup];
    v63 = *(a2 + 8);
    if (v102[9].i8[3] == 1)
    {
      [v63 pushDebugGroup:@"dilate depth"];
      [*(a2 + 8) setComputePipelineState:*&a1[9]];
    }

    else
    {
      [v63 pushDebugGroup:@"dilate depth & motion vectors"];
      [*(a2 + 8) setComputePipelineState:*&a1[10]];
      [*(a2 + 8) setTexture:*v100 atIndex:2];
      [*(a2 + 8) setTexture:*&a1[53] atIndex:3];
    }

    [*(a2 + 8) setTexture:*&v102[2] atIndex:0];
    v64 = a1 + 51;
    [*(a2 + 8) setTexture:*&a1[a1[57].u32[1] + 51] atIndex:1];
    v65 = *(a2 + 8);
    v66 = v102[11];
    v67.i64[0] = v66.u32[0];
    v67.i64[1] = v66.u32[1];
    v119 = v67;
    v120 = 1;
    v117 = vdupq_n_s64(0x10uLL);
    v118 = 1;
    [v65 dispatchThreads:&v119 threadsPerThreadgroup:&v117];
    [*(a2 + 8) popDebugGroup];
    [*(a2 + 8) pushDebugGroup:@"Splat game motion vectors"];
    [*(a2 + 8) setComputePipelineState:*&a1[8]];
    [*(a2 + 8) setTexture:*&a1[20] atIndex:0];
    [*(a2 + 8) setTexture:*&a1[21] atIndex:1];
    [*(a2 + 8) setTexture:v8 atIndex:2];
    [*(a2 + 8) setTexture:*&v102[1] atIndex:3];
    v68 = &a1[53];
    if (v102[9].i8[3])
    {
      v69 = v100;
    }

    else
    {
      v69 = a1 + 53;
    }

    [*(a2 + 8) setTexture:*v69 atIndex:4];
    [*(a2 + 8) setTexture:*&v64[a1[57].u32[1]] atIndex:5];
    [*(a2 + 8) setTexture:*&v64[1 - a1[57].i32[1]] atIndex:6];
    v70 = *(a2 + 8);
    v71 = v102[11];
    v72.i64[0] = v71.u32[0];
    v72.i64[1] = v71.u32[1];
    v119 = v72;
    v120 = 1;
    v117 = vdupq_n_s64(0x10uLL);
    v118 = 1;
    [v70 dispatchThreads:&v119 threadsPerThreadgroup:&v117];
    [*(a2 + 8) popDebugGroup];
    v73 = v102[11].u32[0];
    if ([*v68 width] == v73 && (v74 = v102[11].u32[1], objc_msgSend(*v68, "height") == v74))
    {
      v75 = @"Fill cracks game motion vectors";
      v76 = 12;
    }

    else
    {
      v75 = @"Upsample game motion vectors";
      v76 = 11;
    }

    [*(a2 + 8) pushDebugGroup:v75];
    [*(a2 + 8) setComputePipelineState:*&a1[v76]];
    [*(a2 + 8) setTexture:*v68 atIndex:0];
    [*(a2 + 8) setTexture:*&a1[20] atIndex:1];
    [*(a2 + 8) setTexture:*&a1[21] atIndex:2];
    [*(a2 + 8) setTexture:*&a1[54] atIndex:3];
    [*(a2 + 8) setTexture:*&v64[a1[57].u32[1]] atIndex:4];
    [*(a2 + 8) setTexture:*&v64[1 - a1[57].i32[1]] atIndex:5];
    v77 = [*v68 width];
    v78 = ([*v68 height] + 15) & 0xFFFFFFFFFFFFFFF0;
    v79 = *(a2 + 8);
    v119.i64[0] = (v77 + 15) & 0xFFFFFFFFFFFFFFF0;
    v119.i64[1] = v78;
    v120 = 1;
    v117 = vdupq_n_s64(0x10uLL);
    v118 = 1;
    [v79 dispatchThreads:&v119 threadsPerThreadgroup:&v117];
    [*(a2 + 8) popDebugGroup];
  }

  if (v36[7])
  {
    [*(a2 + 8) updateFence:?];
  }

  [*(a2 + 8) endEncoding];
  v80 = *(a2 + 8);
  *(a2 + 8) = 0;

  MFXRenderEncoder3::beginEncoding((a2 + 16), v7, *&v36[4], 672);
  [*(a2 + 16) setLabel:@"MTLFX_Frame_Interpolation_Fragment"];
  v81 = a1[57].u32[0];
  if (v81 <= 1)
  {
    v82 = @"Copy image";
  }

  else
  {
    v82 = @"Warp image";
  }

  [*(a2 + 16) pushDebugGroup:v82];
  v83 = v36[7];
  if (v83)
  {
    [*(a2 + 16) waitForFence:*&v83 beforeStages:2];
  }

  v84 = *&v36[6];
  [*(a2 + 16) setTileBuffer:*&a1[56] offset:18432 atIndex:0];
  v85 = *(a2 + 16);
  if (v81 <= 1)
  {
    [v85 setRenderPipelineState:*&a1[17]];
    if (v36[9].i8[2] == 1)
    {
      [*(a2 + 16) setTileTexture:v8 atIndex:1];
      v87 = 2;
      goto LABEL_40;
    }

    if (v84)
    {
      v89 = v84;
    }

    else
    {
      v89 = v8;
    }

    [*(a2 + 16) setTileTexture:v89 atIndex:1];
    v88 = 0;
    v87 = 2;
  }

  else
  {
    [v85 setRenderPipelineState:*&a1[16]];
    [*(a2 + 16) setTileTexture:*&a1[54] atIndex:1];
    [*(a2 + 16) setTileTexture:v8 atIndex:3];
    [*(a2 + 16) setTileTexture:*&v36[1] atIndex:4];
    [*(a2 + 16) setTileTexture:*&a1[53] atIndex:5];
    [*(a2 + 16) setTileTexture:*&a1[55] atIndex:6];
    v86 = *(a2 + 16);
    if (v36[9].i8[2] == 1)
    {
      [v86 setTileTexture:0 atIndex:7];
      v87 = 8;
LABEL_40:
      v88 = v84;
      goto LABEL_46;
    }

    [v86 setTileTexture:v84 atIndex:7];
    v88 = 0;
    v87 = 8;
  }

LABEL_46:
  [*(a2 + 16) setTileTexture:v88 atIndex:v87];
  v90 = *(a2 + 16);
  v119 = vdupq_n_s64(0x20uLL);
  v120 = 1;
  [v90 dispatchThreadsPerTile:&v119];
  [*(a2 + 16) popDebugGroup];
  v91 = v36[7];
  if (v91)
  {
    [*(a2 + 16) updateFence:*&v91 afterStages:2];
  }

  [*(a2 + 16) endEncoding];
  v92 = *(a2 + 16);
  *(a2 + 16) = 0;

  if (v36[5])
  {
    MFXComputeEncoder3::beginEncoding((a2 + 8), v7);
    if (v36[7])
    {
      [*(a2 + 8) waitForFence:?];
    }

    [*(a2 + 8) pushDebugGroup:@"Debug output"];
    [*(a2 + 8) setComputePipelineState:*&a1[15]];
    [*(a2 + 8) setTexture:*&v36[5] atIndex:0];
    [*(a2 + 8) setTexture:*&v36[4] atIndex:1];
    [*(a2 + 8) setTexture:*&v36[2] atIndex:2];
    [*(a2 + 8) setTexture:*&a1[53] atIndex:3];
    [*(a2 + 8) setTexture:*&a1[55] atIndex:4];
    v93 = [*&v36[4] width];
    v94 = [*&v36[4] height];
    v95 = *(a2 + 8);
    v119.i64[0] = v93;
    v119.i64[1] = v94;
    v120 = 1;
    v117 = vdupq_n_s64(0x10uLL);
    v118 = 1;
    [v95 dispatchThreads:&v119 threadsPerThreadgroup:&v117];
    [*(a2 + 8) popDebugGroup];
    if (v36[7])
    {
      [*(a2 + 8) updateFence:?];
    }

    [*(a2 + 8) endEncoding];
    v96 = *(a2 + 8);
    *(a2 + 8) = 0;
  }

  a1[58].i32[1] = v36[9].i32[1];
  a1[59] = v36[11];
  a1[57].i32[1] = 1 - a1[57].i32[1];
  v97 = a1[43];
  a1[43] = a1[50];
  a1[50] = v97;
  v98 = a1[57].i32[0];
  if ((v98 + 1) < 0x10)
  {
    v99 = v98 + 1;
  }

  else
  {
    v99 = 16;
  }

  a1[57].i32[0] = v99;
}

void sub_2398D4E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v11 = va_arg(va1, id);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);

  MFXDevice3::~MFXDevice3(va);
  FrameGenParams::~FrameGenParams(va1);

  _Unwind_Resume(a1);
}

void checkInputOutputTexturesForInterpolation(void *a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v23 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  checkTexture(v23, a11, a12, @"Color", 1, 1, a8, @"Color");
  if (v18)
  {
    checkTexture(v18, [v23 width], objc_msgSend(v23, "height"), @"PrevColor", 0, 1, 0, @"Color");
  }

  checkTexture(v21, a11, a12, @"Output", 1, 0, a13, @"Color");
  checkTexture(v19, 0, 0, @"Depth", 0, 0, 0, @"Color");
  checkTexture(v20, [v19 width], objc_msgSend(v19, "height"), @"Motion", 0, 0, 0, @"Depth");
  v22 = [v18 pixelFormat];
  if (v22 != [v23 pixelFormat])
  {
    MTLReportFailure();
  }

  if ([v19 width] < a9)
  {
    MTLReportFailure();
  }

  if ([v19 height] < a10)
  {
    MTLReportFailure();
  }
}

void MFXRenderEncoder3::beginEncoding(id *a1, void *a2, void *a3, uint64_t a4)
{
  v17 = a2;
  v7 = a3;
  v8 = [MEMORY[0x277CD6F50] renderPassDescriptor];
  v9 = [v8 colorAttachments];
  v10 = [v9 objectAtIndexedSubscript:0];
  [v10 setTexture:v7];

  v11 = [v8 colorAttachments];
  v12 = [v11 objectAtIndexedSubscript:0];
  [v12 setLoadAction:0];

  v13 = [v8 colorAttachments];
  v14 = [v13 objectAtIndexedSubscript:0];
  [v14 setStoreAction:1];

  [v8 setThreadgroupMemoryLength:a4];
  [v8 setTileWidth:32];
  [v8 setTileHeight:32];
  v15 = [v17 renderCommandEncoderWithDescriptor:v8];
  v16 = *a1;
  *a1 = v15;

  if (a4)
  {
    [*a1 setThreadgroupMemoryLength:a4 offset:0 atIndex:0];
  }
}

void sub_2398D6EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22, void *a23, void *a24, uint64_t a25, void *a26, void *a27, uint64_t a28, void *a29, uint64_t a30, void *a31, void *a32)
{

  MFXDevice3::~MFXDevice3((v35 - 184));
  _Unwind_Resume(a1);
}

void sub_2398D8158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, void *a24, void *a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33)
{

  MetalFxScopedSignpost::~MetalFxScopedSignpost((v34 - 192));
  MFXDevice3::~MFXDevice3((v34 - 152));

  _Unwind_Resume(a1);
}

void sub_2398D879C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id a14)
{

  _Unwind_Resume(a1);
}

void sub_2398D9584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
{

  MFXDevice3::~MFXDevice3((v27 - 120));
  _Unwind_Resume(a1);
}

void sub_2398D9E40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id a14)
{

  _Unwind_Resume(a1);
}

uint64_t ___ZL15isInternalBuildv_block_invoke_5()
{
  result = MGGetBoolAnswer();
  isInternalBuild(void)::isInternal = result;
  return result;
}

uint64_t ___ZL21metalfxForceNoPreWarmv_block_invoke_0()
{
  v0 = getenv("MTLFX_NO_PREWARM");
  if (!v0)
  {
    v0 = "0";
  }

  result = strtol(v0, 0, 0);
  metalfxForceNoPreWarm(void)::noPrewarm = result > 0;
  return result;
}

void ___ZL24MetalFXHUDAddTAAUMetricsv_block_invoke_1()
{
  {
    MetalFXHUDInstance(void)::inst = WEAK_CADeveloperHUDProperties();
  }

  if (MetalFXHUDInstance(void)::inst)
  {
    v0 = NSSelectorFromString(&cfstr_Instance.isa);
    v1 = NSClassFromString(&cfstr_Cadeveloperhud.isa);
    if (v1)
    {
      v4 = ([(objc_class *)v1 methodForSelector:v0])(v1, v0);
      if (v4)
      {
        v2 = WEAK_HUDServiceV3();
        v3 = v2;
        if (v2)
        {
          [v2 addMetric:@"com.apple.hud-label.metalfx.v2.scaling" name:@"Scaling" unit:&stru_284C54C00 nameColor:0xFFFFFFFFLL valueColor:0xFFFFFFFFLL visualType:2048 options:8];
          [v3 addMetric:@"com.apple.hud-label.metalfx.v2.input_resolution" name:@"Scaling Input Res" unit:&stru_284C54C00 nameColor:0xFFFFFFFFLL valueColor:0xFFFFFFFFLL visualType:2048 options:8];
          [v3 addMetric:@"com.apple.hud-label.metalfx.v2.target_resolution" name:@"Scaling Target Res" unit:&stru_284C54C00 nameColor:0xFFFFFFFFLL valueColor:0xFFFFFFFFLL visualType:2048 options:8];
          [v3 addMetric:@"com.apple.hud-label.metalfx.v2.exposure" name:@"Exposure" unit:&stru_284C54C00 nameColor:0xFFFFFFFFLL valueColor:0xFFFFFFFFLL visualType:2048 options:8];
        }

        else
        {
          [v4 addLabel:@"com.apple.hud-label.metalfx" after:@"com.apple.hud-graph.default"];
          [v4 addLabel:@"com.apple.hud-label.metalfx.resolution" after:@"com.apple.hud-label.metalfx"];
          [v4 addLabel:@"com.apple.hud-label.metalfx.content_resolution" after:@"com.apple.hud-label.metalfx.resolution"];
          [v4 addLabel:@"com.apple.hud-label.metalfx.timing" after:@"com.apple.hud-label.metalfx.content_resolution"];
        }
      }
    }
  }
}

BOOL MetalFXHUDEnabled(void)
{
  {
    MetalFXHUDInstance(void)::inst = WEAK_CADeveloperHUDProperties();
  }

  return MetalFXHUDInstance(void)::inst != 0;
}

void sub_2398DCD78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{

  MetalFxScopedSignpost::~MetalFxScopedSignpost((v22 - 136));
  _Unwind_Resume(a1);
}

id MetalFXHUDInstance(void)
{
  {
    MetalFXHUDInstance(void)::inst = WEAK_CADeveloperHUDProperties();
  }

  v0 = MetalFXHUDInstance(void)::inst;

  return v0;
}

void ___ZL24MetalFXHUDAddTAAUMetricsv_block_invoke_2()
{
  {
    MetalFXHUDInstance(void)::inst = WEAK_CADeveloperHUDProperties();
  }

  if (MetalFXHUDInstance(void)::inst)
  {
    v0 = NSSelectorFromString(&cfstr_Instance.isa);
    v1 = NSClassFromString(&cfstr_Cadeveloperhud.isa);
    if (v1)
    {
      v4 = ([(objc_class *)v1 methodForSelector:v0])(v1, v0);
      if (v4)
      {
        v2 = WEAK_HUDServiceV3();
        v3 = v2;
        if (v2)
        {
          [v2 addMetric:@"com.apple.hud-label.metalfx.v2.scaling" name:@"Scaling" unit:&stru_284C54C00 nameColor:0xFFFFFFFFLL valueColor:0xFFFFFFFFLL visualType:2048 options:8];
          [v3 addMetric:@"com.apple.hud-label.metalfx.v2.input_resolution" name:@"Scaling Input Res" unit:&stru_284C54C00 nameColor:0xFFFFFFFFLL valueColor:0xFFFFFFFFLL visualType:2048 options:8];
          [v3 addMetric:@"com.apple.hud-label.metalfx.v2.target_resolution" name:@"Scaling Target Res" unit:&stru_284C54C00 nameColor:0xFFFFFFFFLL valueColor:0xFFFFFFFFLL visualType:2048 options:8];
          [v3 addMetric:@"com.apple.hud-label.metalfx.v2.exposure" name:@"Exposure" unit:&stru_284C54C00 nameColor:0xFFFFFFFFLL valueColor:0xFFFFFFFFLL visualType:2048 options:8];
        }

        else
        {
          [v4 addLabel:@"com.apple.hud-label.metalfx" after:@"com.apple.hud-graph.default"];
          [v4 addLabel:@"com.apple.hud-label.metalfx.resolution" after:@"com.apple.hud-label.metalfx"];
          [v4 addLabel:@"com.apple.hud-label.metalfx.content_resolution" after:@"com.apple.hud-label.metalfx.resolution"];
          [v4 addLabel:@"com.apple.hud-label.metalfx.timing" after:@"com.apple.hud-label.metalfx.content_resolution"];
        }
      }
    }
  }
}

void sub_2398DF294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, void *a21, void *a22, void *a23, void *a24, uint64_t a25, void *a26, void *a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, void *a33, uint64_t a34, void *a35)
{

  _Unwind_Resume(a1);
}

id mlKernelMetal4(void *a1, uint64_t a2, void *a3, int a4, void *a5, void *a6)
{
  v11 = a1;
  v12 = a5;
  v13 = a6;
  v14 = [a3 pathForResource:a2 ofType:@"mtlpackage"];
  v15 = MEMORY[0x277CBEBC0];
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"file://%@", v14];
  v17 = [v15 URLWithString:v16];

  v32 = 0;
  v18 = [v11 newLibraryWithURL:v17 error:&v32];
  v19 = v32;
  if (v19)
  {
    v20 = v19;
    v21 = [v19 description];
    NSLog(&cfstr_Error_0.isa, v21);
    v22 = 0;
  }

  else
  {
    v30 = v12;
    v29 = functionFromLibraryMetal4(v18, @"main", 0);
    v23 = objc_opt_new();
    v24 = v23;
    if (a4)
    {
      v25 = 1;
    }

    else
    {
      v25 = 2;
    }

    [v23 setDeviceSelection:v25];
    [v24 setMachineLearningFunctionDescriptor:v29];
    [v24 setInputDimensions:v13 atBufferIndex:0];
    v31 = 0;
    v21 = [v30 newMachineLearningPipelineStateWithDescriptor:v24 error:&v31];
    v26 = v31;
    v20 = v26;
    if (v26)
    {
      v27 = [v26 description];
      NSLog(&cfstr_Error_0.isa, v27);

      v22 = 0;
    }

    else
    {
      v22 = v21;
    }

    v12 = v30;
  }

  return v22;
}

id newHeap(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 device];
  v6 = objc_opt_new();
  [v6 setSize:{objc_msgSend(v3, "intermediatesHeapSize")}];
  [v6 setType:1];
  v7 = [v5 newHeapWithDescriptor:v6];
  [v4 addAllocation:v7];

  return v7;
}

uint64_t ___ZL15isInternalBuildv_block_invoke_6()
{
  result = MGGetBoolAnswer();
  isInternalBuild(void)::isInternal = result;
  return result;
}

id functionFromLibraryMetal4(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = objc_opt_new();
  [v8 setLibrary:v5];
  [v8 setName:v6];
  v9 = v8;
  v10 = v9;
  if (v7)
  {
    v10 = objc_opt_new();
    [v10 setFunctionDescriptor:v9];
    [v10 setConstantValues:v7];
    [v10 setSpecializedName:v6];
  }

  return v10;
}

void ___ZL24MetalFXHUDAddTAAUMetricsv_block_invoke_3()
{
  {
    MetalFXHUDInstance(void)::inst = WEAK_CADeveloperHUDProperties();
  }

  if (MetalFXHUDInstance(void)::inst)
  {
    v0 = NSSelectorFromString(&cfstr_Instance.isa);
    v1 = NSClassFromString(&cfstr_Cadeveloperhud.isa);
    if (v1)
    {
      v5 = ([(objc_class *)v1 methodForSelector:v0])(v1, v0);
      if (v5)
      {
        v2 = NSSelectorFromString(&cfstr_Instance.isa);
        v3 = NSClassFromString(&cfstr_Cadeveloperhud.isa);
        if (v3)
        {
          v4 = ([(objc_class *)v3 methodForSelector:v2])(v3, v2);
        }

        else
        {
          v4 = 0;
        }

        if (objc_opt_respondsToSelector())
        {
          if (v4)
          {
            [v4 addMetric:@"com.apple.hud-label.metalfx.v2.scaling" name:@"Scaling" unit:&stru_284C54C00 nameColor:0xFFFFFFFFLL valueColor:0xFFFFFFFFLL visualType:2048 options:8];
            [v4 addMetric:@"com.apple.hud-label.metalfx.v2.input_resolution" name:@"Scaling Input Res" unit:&stru_284C54C00 nameColor:0xFFFFFFFFLL valueColor:0xFFFFFFFFLL visualType:2048 options:8];
            [v4 addMetric:@"com.apple.hud-label.metalfx.v2.target_resolution" name:@"Scaling Target Res" unit:&stru_284C54C00 nameColor:0xFFFFFFFFLL valueColor:0xFFFFFFFFLL visualType:2048 options:8];
            [v4 addMetric:@"com.apple.hud-label.metalfx.v2.exposure" name:@"Exposure" unit:&stru_284C54C00 nameColor:0xFFFFFFFFLL valueColor:0xFFFFFFFFLL visualType:2048 options:8];
LABEL_14:

            return;
          }
        }

        else
        {
        }

        [v5 addLabel:@"com.apple.hud-label.metalfx" after:@"com.apple.hud-graph.default"];
        [v5 addLabel:@"com.apple.hud-label.metalfx.resolution" after:@"com.apple.hud-label.metalfx"];
        [v5 addLabel:@"com.apple.hud-label.metalfx.content_resolution" after:@"com.apple.hud-label.metalfx.resolution"];
        v4 = 0;
        [v5 addLabel:@"com.apple.hud-label.metalfx.timing" after:@"com.apple.hud-label.metalfx.content_resolution"];
        goto LABEL_14;
      }
    }
  }
}

uint64_t BFNet_v1_Filter<MFXDevice3>::BFNet_v1_Filter(uint64_t a1, void **a2, uint64_t a3, void *a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, char a11, char a12)
{
  v19 = a4;
  *(a1 + 48) = 0u;
  *(a1 + 299) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0;
  *a1 = a3;
  *(a1 + 8) = a5;
  *(a1 + 12) = a6;
  v20 = *(a9 + 12);
  v21 = *(a9 + 24);
  *(&v20 + 1) = *(a9 + 24);
  *(a1 + 24) = v20;
  *(a1 + 16) = a7;
  *(a1 + 20) = a8;
  v77 = 1;
  v22 = objc_opt_new();
  [v22 setConstantValue:&v77 type:53 atIndex:16];
  *(a1 + 296) = a10;
  [v22 setConstantValue:a1 + 296 type:53 atIndex:19];
  *(a1 + 297) = a11;
  [v22 setConstantValue:a1 + 297 type:53 atIndex:20];
  *(a1 + 298) = a12;
  [v22 setConstantValue:a1 + 298 type:53 atIndex:21];
  v76 = 1;
  [v22 setConstantValue:&v76 type:53 atIndex:15];
  v75 = 1;
  [v22 setConstantValue:&v75 type:53 atIndex:22];
  v23 = MFXDevice3::createComputePipeline(a2, v19, @"dbfnetv1_lowres_signals", v22);
  v24 = *(a1 + 48);
  *(a1 + 48) = v23;

  v25 = MFXDevice3::createComputePipeline(a2, v19, @"dbfnetv1_output_channels", v22);
  v26 = *(a1 + 56);
  *(a1 + 56) = v25;

  v27 = MFXDevice3::createComputePipeline(a2, v19, @"reproject_warp", v22);
  v28 = *(a1 + 64);
  *(a1 + 64) = v27;

  v29 = MFXDevice3::createComputePipeline(a2, v19, @"reproject_blend", v22);
  v30 = *(a1 + 72);
  *(a1 + 72) = v29;

  v31 = MFXDevice3::createComputePipeline(a2, v19, @"bilateral", v22);
  v32 = *(a1 + 88);
  *(a1 + 88) = v31;

  v33 = MFXDevice3::createComputePipeline(a2, v19, @"denoiser_between_processing", v22);
  v34 = *(a1 + 96);
  *(a1 + 96) = v33;

  v35 = MFXDevice3::createComputePipeline(a2, v19, @"update_vbbr", v22);
  v36 = *(a1 + 104);
  *(a1 + 104) = v35;

  v37 = MFXDevice3::createComputePipeline(a2, v19, @"processSpecularHitDistance", v22);
  v38 = *(a1 + 112);
  *(a1 + 112) = v37;

  v39 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:125 width:*(a1 + 8) height:*(a1 + 12) mipmapped:0];
  [v39 setUsage:3];
  [v39 setCompressionMode:1];
  [v39 setPixelFormat:115];
  v40 = [*a2 newTextureWithDescriptor:v39];
  v41 = *(a1 + 152);
  *(a1 + 152) = v40;

  v42 = [*a2 newTextureWithDescriptor:v39];
  v43 = *(a1 + 160);
  *(a1 + 160) = v42;

  v44 = [*a2 newTextureWithDescriptor:v39];
  v45 = *(a1 + 168);
  *(a1 + 168) = v44;

  v46 = [*a2 newTextureWithDescriptor:v39];
  v47 = *(a1 + 120);
  *(a1 + 120) = v46;

  v48 = [*a2 newTextureWithDescriptor:v39];
  v49 = *(a1 + 128);
  *(a1 + 128) = v48;

  [v39 setPixelFormat:10];
  v50 = [*a2 newTextureWithDescriptor:v39];
  v51 = *(a1 + 184);
  *(a1 + 184) = v50;

  [v39 setWidth:*(a1 + 8)];
  [v39 setHeight:*(a1 + 12)];
  [v39 setPixelFormat:25];
  v52 = [*a2 newTextureWithDescriptor:v39];
  v53 = *(a1 + 136);
  *(a1 + 136) = v52;

  v54 = [*a2 newTextureWithDescriptor:v39];
  v55 = *(a1 + 144);
  *(a1 + 144) = v54;

  [v39 setPixelFormat:115];
  v56 = [*a2 newTextureWithDescriptor:v39];
  v57 = *(a1 + 200);
  *(a1 + 200) = v56;

  v58 = [*a2 newTextureWithDescriptor:v39];
  v59 = *(a1 + 208);
  *(a1 + 208) = v58;

  [v39 setPixelFormat:65];
  [v39 setUsage:16387];
  v60 = [*a2 newTextureWithDescriptor:v39];
  v61 = *(a1 + 192);
  *(a1 + 192) = v60;

  [v39 setWidth:(*(a1 + 8) + (*(a1 + 8) >> 31)) >> 1];
  [v39 setHeight:(*(a1 + 12) + (*(a1 + 12) >> 31)) >> 1];
  [v39 setPixelFormat:65];
  v62 = [*a2 newTextureWithDescriptor:v39];
  v63 = *(a1 + 264);
  *(a1 + 264) = v62;

  [v39 setPixelFormat:25];
  v64 = [*a2 newTextureWithDescriptor:v39];
  v65 = *(a1 + 272);
  *(a1 + 272) = v64;

  [v39 setPixelFormat:115];
  v66 = [*a2 newTextureWithDescriptor:v39];
  v67 = *(a1 + 256);
  *(a1 + 256) = v66;

  [v39 setWidth:(*(a1 + 8) + (*(a1 + 8) < 0 ? 7 : 0)) >> 3];
  [v39 setHeight:(*(a1 + 12) + (*(a1 + 12) < 0 ? 7 : 0)) >> 3];
  [v39 setPixelFormat:25];
  v68 = [*a2 newTextureWithDescriptor:v39];
  v69 = *(a1 + 248);
  *(a1 + 248) = v68;

  v70 = [*a2 newBufferWithLength:2 options:0];
  v71 = *(a1 + 280);
  *(a1 + 280) = v70;

  v72 = [*a2 newBufferWithLength:2 options:0];
  v73 = *(a1 + 288);
  *(a1 + 288) = v72;

  *[*(a1 + 280) contents] = COERCE_UNSIGNED_INT(1.0);
  *[*(a1 + 288) contents] = COERCE_UNSIGNED_INT(1.0);
  *(a1 + 40) = 0x3F0000003F000000;

  return a1;
}

void BFNet_v1_Filter<MFXDevice3>::BFNet_v1_Filter()
{
  BFNet_v1_Filter<MFXDevice3>::BFNet_v1_Filter();
}

{
    ;
  }
}

{
    ;
  }
}

void BFNet_v1_Filter<MFXDevice3>::encodeAtrous(uint64_t a1, float a2, double a3, double a4, uint64_t a5, uint64_t a6, id *a7, void *a8, void *a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, uint64_t a18, void *a19, uint64_t a20, unsigned __int8 a21)
{
  v57 = *MEMORY[0x277D85DE8];
  v42 = a8;
  v49 = a9;
  v44 = a12;
  v45 = a13;
  v46 = a14;
  v26 = a15;
  v43 = a16;
  v47 = a17;
  v51 = a2;
  v41 = a19;
  [*a7 setComputePipelineState:*(a1 + 72)];
  v27 = (a1 + 120);
  [*a7 setTexture:*(a1 + 120) atIndex:0];
  [*a7 setTexture:*(a1 + 168) atIndex:1];
  [*a7 setTexture:*(a1 + 120) atIndex:2];
  [*a7 setTexture:*(a1 + 8 * (a21 == 0) + 232) atIndex:3];
  [*a7 setTexture:*(a1 + 248) atIndex:22];
  [*a7 setTexture:*(a1 + 272) atIndex:5];
  [*a7 setTexture:*(a1 + 8 * a21 + 136) atIndex:6];
  v28 = *a7;
  v29 = *(a1 + 8);
  *&v30 = v29;
  *(&v30 + 1) = SHIDWORD(v29);
  v54 = v30;
  v55 = 1;
  v52 = vdupq_n_s64(0x10uLL);
  v53 = 1;
  [v28 dispatchThreads:&v54 threadsPerThreadgroup:&v52];
  v50 = 0;
  v48 = vdupq_n_s64(8uLL);
  do
  {
    [*a7 setComputePipelineState:*(a1 + 88)];
    if (v50 == 1)
    {
      v31 = (a1 + 168);
    }

    else
    {
      v31 = &v27[v50 & 1];
    }

    [*a7 setTexture:*v31 atIndex:0];
    [*a7 setTexture:*(a1 + 152 + 8 * (a21 == 0)) atIndex:1];
    if (v50)
    {
      v32 = &v27[(v50 & 1) == 0];
    }

    else
    {
      v32 = (a1 + 168);
    }

    [*a7 setTexture:*v32 atIndex:2];
    [*a7 setTexture:*(a1 + 184) atIndex:3];
    [*a7 setTexture:*(a1 + 256) atIndex:5];
    [*a7 setTexture:*(a1 + 176) atIndex:7];
    [*a7 setTexture:*(a1 + 264) atIndex:4];
    [*a7 setTexture:v49 atIndex:6];
    v33 = v50;
    v56[0] = 1 << v50;
    v56[1] = v50;
    v56[2] = ~(-1 << v50);
    v56[3] = -4 << v50;
    [*a7 setBytes:v56 length:16 atIndex:0];
    [*a7 setBytes:&v50 length:4 atIndex:1];
    v34 = *a7;
    v35 = vand_s8(vadd_s32(*(a1 + 8), vdup_n_s32((4 << v33) - 1)), vdup_n_s32(-(4 << v33)));
    *&v36 = v35.u32[0];
    *(&v36 + 1) = v35.u32[1];
    v54 = v36;
    v55 = 1;
    v52 = v48;
    v53 = 1;
    [v34 dispatchThreads:&v54 threadsPerThreadgroup:&v52];
    ++v50;
  }

  while (v50 < 4);
  [*a7 setComputePipelineState:*(a1 + 96)];
  [*a7 setTexture:*v27 atIndex:0];
  [*a7 setTexture:v47 atIndex:5];
  [*a7 setTexture:v46 atIndex:6];
  [*a7 setTexture:v45 atIndex:7];
  [*a7 setTexture:*(a1 + 184) atIndex:4];
  [*a7 setTexture:v44 atIndex:8];
  [*a7 setTexture:*(a1 + 272) atIndex:9];
  [*a7 setBuffer:v41 offset:0 atIndex:10];
  [*a7 setBytes:&v51 length:4 atIndex:11];
  if (*(a1 + 297) == 1)
  {
    [*a7 setTexture:v26 atIndex:2];
    [*a7 setTexture:v42 atIndex:1];
  }

  if (*(a1 + 298) == 1)
  {
    [*a7 setTexture:v43 atIndex:3];
  }

  v37 = *a7;
  v38 = *(a1 + 8);
  *&v39 = v38;
  *(&v39 + 1) = SHIDWORD(v38);
  v54 = v39;
  v55 = 1;
  v52 = vdupq_n_s64(8uLL);
  v53 = 1;
  [v37 dispatchThreads:&v54 threadsPerThreadgroup:&v52];
  *(a1 + 40) = a4;

  v40 = *MEMORY[0x277D85DE8];
}

void BFNet_v1_Filter<MFXDevice3>::encodePre(uint64_t a1, float a2, double a3, double a4, uint64_t a5, id *a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, void *a13, char a14)
{
  v23 = a7;
  v24 = a8;
  v25 = a9;
  v26 = a10;
  v27 = a11;
  v28 = a12;
  v29 = a13;
  v40 = a2;
  [*a6 setComputePipelineState:*(a1 + 48)];
  [*a6 setTexture:v23 atIndex:0];
  [*a6 setTexture:v24 atIndex:1];
  [*a6 setTexture:*(a1 + 168) atIndex:3];
  [*a6 setTexture:v26 atIndex:4];
  [*a6 setTexture:v27 atIndex:5];
  [*a6 setTexture:v25 atIndex:2];
  v36 = *(a1 + 16);
  v30 = *(a1 + 24);
  v37 = *(a1 + 28);
  v38 = v30;
  v31 = *(a1 + 40);
  *v35 = a3;
  v35[1] = v31;
  *&v35[2] = a4;
  v39 = a14;
  [*a6 setBytes:v35 length:40 atIndex:0];
  [*a6 setBuffer:v28 offset:0 atIndex:1];
  [*a6 setBuffer:v29 offset:0 atIndex:3];
  [*a6 setBytes:&v40 length:4 atIndex:4];
  v32 = *a6;
  v33 = *(a1 + 24);
  *&v34 = v33;
  *(&v34 + 1) = SHIDWORD(v33);
  v43 = v34;
  v44 = 1;
  v41 = vdupq_n_s64(8uLL);
  v42 = 1;
  [v32 dispatchThreads:&v43 threadsPerThreadgroup:&v41];
}

void BFNet_v1_Filter<MFXDevice3>::encodeMid(int32x2_t *a1, void *a2, id *a3, void *a4, void *a5, void *a6, void *a7, void *a8, float a9, double a10, double a11, __n128 a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, char a19, uint64_t a20, __int128 *a21, unsigned __int8 a22)
{
  v48 = a2;
  v50 = a4;
  v49 = a5;
  v54 = a6;
  v53 = a7;
  v56 = a8;
  v31 = a13;
  v32 = a14;
  v55 = a15;
  v52 = a16;
  v33 = a17;
  v34 = a18;
  v70 = a9;
  v68 = a11;
  v69 = a10;
  v67 = a19;
  if (a1[37].i8[0] == 1)
  {
    v35 = a21[1];
    v61 = *a21;
    v62 = v35;
    v36 = a21[3];
    v63 = a21[2];
    v64 = v36;
    v75.columns[0] = *a20;
    v75.columns[1] = *(a20 + 16);
    v75.columns[2] = *(a20 + 32);
    v75.columns[3] = *(a20 + 48);
    v76 = __invert_f4(v75);
    v57 = v76.columns[0];
    v58 = v76.columns[1];
    *v76.columns[0].f32 = vcvt_f32_s32(a1[1]);
    __asm { FMOV            V1.2S, #1.0 }

    v76.columns[1].i64[1] = v76.columns[0].i64[0];
    *&v76.columns[0].i64[1] = a10;
    v59 = v76.columns[2];
    v60 = v76.columns[3];
    v65 = a12;
    v66 = vdivq_f32(v76.columns[1], v76.columns[0]);
    [*a3 setComputePipelineState:*&a1[14]];
    [*a3 setTexture:v31 atIndex:0];
    [*a3 setTexture:v32 atIndex:1];
    [*a3 setTexture:*&a1[24] atIndex:2];
    [*a3 setBytes:&v57 length:160 atIndex:0];
    v41 = *a3;
    v42 = a1[1];
    v43.i64[0] = v42.i32[0];
    v43.i64[1] = v42.i32[1];
    v73 = v43;
    v74 = 1;
    v71 = vdupq_n_s64(0x10uLL);
    v72 = 1;
    [v41 dispatchThreads:&v73 threadsPerThreadgroup:&v71];
  }

  [*a3 setComputePipelineState:{*&a1[8], *&a12}];
  [*a3 setTexture:v56 atIndex:0];
  [*a3 setTexture:*&a1[15] atIndex:1];
  [*a3 setTexture:*&a1[21] atIndex:2];
  [*a3 setTexture:v55 atIndex:3];
  [*a3 setTexture:v31 atIndex:4];
  [*a3 setTexture:v54 atIndex:5];
  [*a3 setTexture:v49 atIndex:6];
  [*a3 setTexture:v50 atIndex:7];
  [*a3 setTexture:*&a1[a22 + 19] atIndex:8];
  [*a3 setTexture:*&a1[(a22 == 0) + 19] atIndex:9];
  [*a3 setTexture:*&a1[(a22 == 0) + 17] atIndex:15];
  [*a3 setTexture:*&a1[a22 + 17] atIndex:16];
  [*a3 setTexture:v53 atIndex:10];
  [*a3 setTexture:*&a1[16] atIndex:11];
  [*a3 setTexture:v52 atIndex:17];
  [*a3 setTexture:*&a1[24] atIndex:18];
  [*a3 setTexture:*&a1[a22 + 25] atIndex:21];
  [*a3 setTexture:*&a1[(a22 == 0) + 25] atIndex:23];
  [*a3 setTexture:*&a1[31] atIndex:22];
  [*a3 setTexture:*&a1[23] atIndex:14];
  [*a3 setBytes:&v69 length:8 atIndex:0];
  [*a3 setBytes:&a1[5] length:8 atIndex:1];
  [*a3 setBytes:&v68 length:8 atIndex:2];
  [*a3 setBuffer:v33 offset:0 atIndex:3];
  [*a3 setBuffer:v34 offset:0 atIndex:4];
  [*a3 setBytes:&v70 length:4 atIndex:5];
  [*a3 setBytes:&v67 length:1 atIndex:6];
  v44 = *a3;
  v45 = vadd_s32(a1[1], 0x800000008);
  v46.i64[0] = (v45.i32[0] & 0xFFFFFFF7);
  v46.i64[1] = (v45.i32[1] & 0xFFFFFFF7);
  v57 = v46;
  v58.i64[0] = 1;
  v73 = vdupq_n_s64(8uLL);
  v74 = 1;
  [v44 dispatchThreads:&v57 threadsPerThreadgroup:&v73];
}

void BFNet_v1_Filter<MFXDevice3>::encodePost(uint64_t a1, uint64_t a2, id *a3, void *a4)
{
  v6 = a4;
  [*a3 setComputePipelineState:*(a1 + 56)];
  v11 = *(a1 + 20);
  v7 = *(a1 + 32);
  v12 = *(a1 + 36);
  v13 = v7;
  [*a3 setBytes:v10 length:40 atIndex:0];
  [*a3 setBuffer:v6 offset:0 atIndex:1];
  [*a3 setTexture:*(a1 + 256) atIndex:0];
  [*a3 setTexture:*(a1 + 264) atIndex:1];
  [*a3 setTexture:*(a1 + 272) atIndex:2];
  v8 = (*(a1 + 12) + (*(a1 + 12) >> 31)) >> 1;
  v9 = *a3;
  v16[0] = (*(a1 + 8) + (*(a1 + 8) >> 31)) >> 1;
  v16[1] = v8;
  v16[2] = 1;
  v14 = vdupq_n_s64(8uLL);
  v15 = 1;
  [v9 dispatchThreads:v16 threadsPerThreadgroup:&v14];
}

uint64_t BFNet_v1_Filter<MFXDevice3>::getEncodeIndex(uint64_t a1)
{
  v1 = *(a1 + 299);
  *(a1 + 299) = *(a1 + 299) == 0;
  return v1;
}

int *BRNet_v3_Filter<MFXDevice3>::BRNet_v3_Filter(int *a1, id *a2, void *a3, int a4, int a5, int a6, unsigned int a7, uint64_t a8, int a9, int a10, char a11, char a12, char a13, char a14, char a15, char a16)
{
  v135 = __PAIR64__(a10, a7);
  v22 = a3;
  *(a1 + 5) = 0u;
  v23 = (a1 + 20);
  v143 = a13;
  *(a1 + 9) = 0u;
  v136 = v22;
  v137 = (a1 + 36);
  *(a1 + 6) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 16) = 0;
  *(a1 + 10) = 0u;
  *(a1 + 11) = 0u;
  *(a1 + 12) = 0u;
  *(a1 + 13) = 0u;
  *(a1 + 14) = 0u;
  *(a1 + 15) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 17) = 0u;
  *(a1 + 18) = 0u;
  *(a1 + 19) = 0u;
  *(a1 + 20) = 0u;
  *(a1 + 21) = 0u;
  *(a1 + 22) = 0u;
  *(a1 + 23) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 25) = 0u;
  *(a1 + 26) = 0u;
  *(a1 + 27) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 29) = 0u;
  *(a1 + 30) = 0u;
  *(a1 + 31) = 0u;
  *a1 = a4;
  a1[1] = a5;
  v24 = a8;
  *(a1 + 1) = *(a8 + 4);
  a1[4] = a6;
  a1[5] = v135;
  *(a1 + 7) = *(a8 + 12);
  a1[9] = a9;
  *(a1 + 5) = *(a8 + 44);
  v25 = *(a8 + 20);
  *(a1 + 28) = *(a8 + 24);
  *(a1 + 29) = *(a8 + 40);
  a1[12] = a10;
  a1[13] = v25;
  a1[18] = *a8;
  *(a1 + 62) = a11;
  *(a1 + 63) = a13;
  *(a1 + 64) = a14;
  *(a1 + 65) = a15;
  *(a1 + 66) = a16;
  *(a1 + 68) = a16;
  *(a1 + 67) = 0;
  v26 = getenv("MTLFX_EXPOSURE_TOOL_ENABLED");
  if (!v26)
  {
    v26 = "0";
  }

  if (strtol(v26, 0, 0))
  {
    *(a1 + 67) = 1;
  }

  a1[6] = *(a8 + 56) == 0;
  v27 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:65 width:*a1 height:a1[1] mipmapped:0];
  [v27 setUsage:3];
  [v27 setCompressionMode:1];
  v28 = [*a2 newTextureWithDescriptor:v27];
  v29 = *v23;
  *v23 = v28;

  [v27 setPixelFormat:115];
  v30 = [*a2 newTextureWithDescriptor:v27];
  v31 = *(a1 + 11);
  *(a1 + 11) = v30;

  [v27 setWidth:a1[4]];
  [v27 setHeight:a1[5]];
  v32 = [*a2 newTextureWithDescriptor:v27];
  v33 = *(a1 + 12);
  *(a1 + 12) = v32;

  if (*(a1 + 68) == 1)
  {
    v34 = [*a2 newTextureWithDescriptor:v27];
    v35 = *(a1 + 34);
    *(a1 + 34) = v34;

    [*(a1 + 34) setLabel:@"internal_blend"];
    v36 = [*a2 newTextureWithDescriptor:v27];
    v37 = *(a1 + 35);
    *(a1 + 35) = v36;

    [*(a1 + 35) setLabel:@"internal_flow_adj_blend"];
  }

  else
  {
    v38 = *(a1 + 34);
    *(a1 + 34) = 0;

    v39 = *(a1 + 35);
    *(a1 + 35) = 0;
  }

  *(a1 + 136) = 0;
  [v27 setPixelFormat:25, v135];
  [v27 setTextureType:2];
  [v27 setWidth:(a1[2] + (a1[2] >> 31)) >> 1];
  [v27 setHeight:(a1[3] + (a1[3] >> 31)) >> 1];
  [v27 setArrayLength:1];
  v40 = [*a2 newTextureWithDescriptor:v27];
  v41 = *(a1 + 13);
  *(a1 + 13) = v40;

  v42 = [*a2 newTextureWithDescriptor:v27];
  v43 = *(a1 + 14);
  *(a1 + 14) = v42;

  v44 = [*a2 newTextureWithDescriptor:v27];
  v45 = *(a1 + 15);
  *(a1 + 15) = v44;

  v46 = [*a2 newTextureWithDescriptor:v27];
  v47 = *(a1 + 16);
  *(a1 + 16) = v46;

  if (v143)
  {
    v48 = 30;
  }

  else
  {
    v48 = 65;
  }

  [v27 setPixelFormat:v48];
  v49 = [*a2 newTextureWithDescriptor:v27];
  v50 = *v137;
  *v137 = v49;

  [v27 setPixelFormat:25];
  v51 = [*a2 newTextureWithDescriptor:v27];
  v52 = *(a1 + 23);
  *(a1 + 23) = v51;

  if (v143)
  {
    v53 = 70;
  }

  else
  {
    v53 = 115;
  }

  [v27 setPixelFormat:v53];
  [v27 setWidth:{objc_msgSend(*v137, "width") >> 1}];
  [v27 setHeight:{objc_msgSend(*v137, "height") >> 1}];
  v54 = [*a2 newTextureWithDescriptor:v27];
  v55 = *(a1 + 19);
  *(a1 + 19) = v54;

  [v27 setWidth:(a1[2] + (a1[2] >> 31)) >> 1];
  [v27 setHeight:(a1[3] + (a1[3] >> 31)) >> 1];
  v56 = [*a2 newBufferWithLength:4 * a1[1] * *a1 options:32];
  v57 = *(a1 + 20);
  *(a1 + 20) = v56;

  [v27 setPixelFormat:25];
  v58 = [*a2 newTextureWithDescriptor:v27];
  v59 = *(a1 + 24);
  *(a1 + 24) = v58;

  v60 = [*a2 newTextureWithDescriptor:v27];
  v61 = *(a1 + 25);
  *(a1 + 25) = v60;

  v62 = [*a2 newTextureWithDescriptor:v27];
  v63 = *(a1 + 26);
  *(a1 + 26) = v62;

  v64 = [*a2 newTextureWithDescriptor:v27];
  v65 = *(a1 + 27);
  *(a1 + 27) = v64;

  [v27 setPixelFormat:23];
  v66 = [*a2 newTextureWithDescriptor:v27];
  v67 = *(a1 + 28);
  *(a1 + 28) = v66;

  v68 = [*a2 newTextureWithDescriptor:v27];
  v69 = *(a1 + 29);
  *(a1 + 29) = v68;

  [v27 setPixelFormat:115];
  v70 = [*a2 newTextureWithDescriptor:v27];
  v71 = *(a1 + 30);
  *(a1 + 30) = v70;

  v72 = [*a2 newTextureWithDescriptor:v27];
  v73 = *(a1 + 31);
  *(a1 + 31) = v72;

  if (*(a1 + 65) == 1)
  {
    [v27 setPixelFormat:13];
    [v27 setWidth:a1[4]];
    [v27 setHeight:a1[5]];
    v74 = [*a2 newTextureWithDescriptor:v27];
    v75 = *(a1 + 32);
    *(a1 + 32) = v74;

    v76 = [*a2 newTextureWithDescriptor:v27];
    v77 = *(a1 + 33);
    *(a1 + 33) = v76;
  }

  [v27 setPixelFormat:65];
  [v27 setWidth:*a1];
  [v27 setHeight:a1[1]];
  v78 = [*a2 newTextureWithDescriptor:v27];
  v79 = *(a1 + 21);
  *(a1 + 21) = v78;

  [v27 setPixelFormat:25];
  v80 = [*a2 newTextureWithDescriptor:v27];
  v81 = *(a1 + 22);
  *(a1 + 22) = v80;

  v82 = [*a2 newBufferWithLength:2 options:0];
  v83 = *(a1 + 37);
  *(a1 + 37) = v82;

  v84 = [*a2 newBufferWithLength:2 options:0];
  v85 = *(a1 + 38);
  *(a1 + 38) = v84;

  *[*(a1 + 37) contents] = COERCE_UNSIGNED_INT(1.0);
  *[*(a1 + 38) contents] = COERCE_UNSIGNED_INT(1.0);
  v86 = [*a2 newBufferWithLength:1 options:32];
  v87 = *(a1 + 39);
  *(a1 + 39) = v86;

  v88 = [*a2 newBufferWithLength:0x2000 options:32];
  v89 = *(a1 + 40);
  *(a1 + 40) = v88;

  if (a16)
  {
    v90 = [*a2 newBufferWithLength:0x2000 options:32];
    v91 = *(a1 + 41);
    *(a1 + 41) = v90;
  }

  v92 = v24;
  v93 = objc_opt_new();
  v94 = v93;
  v95 = a12;
  if (a12)
  {
    v95 = *(a1 + 62);
  }

  *(a1 + 60) = v95;
  [v93 setConstantValue:a1 + 15 type:53 atIndex:10];
  [v94 setConstantValue:&v143 type:53 atIndex:13];
  [v94 setConstantValue:a1 + 16 type:53 atIndex:14];
  [v94 setConstantValue:a1 + 6 type:53 atIndex:15];
  [v94 setConstantValue:a1 + 66 type:53 atIndex:16];
  [v94 setConstantValue:a1 + 65 type:53 atIndex:17];
  [v94 setConstantValue:a1 + 67 type:53 atIndex:18];
  [v94 setConstantValue:a1 + 17 type:53 atIndex:23];
  if (*v92)
  {
    v96 = 1;
  }

  else
  {
    v96 = a16;
  }

  v142 = v96;
  [v94 setConstantValue:&v142 type:53 atIndex:22];
  v141 = 1023826251;
  [v94 setConstantValue:&v141 type:3 atIndex:9];
  if (a16)
  {
    v97 = MFXDevice3::createComputePipeline(a2, v136, @"luma_log_sum_denoiser", v94);
    v98 = @"luma_log_sum_to_exposure_denoiser";
  }

  else
  {
    v97 = MFXDevice3::createComputePipeline(a2, v136, @"luma_log_sum", v94);
    v98 = @"luma_log_sum_to_exposure";
  }

  v99 = *(a1 + 42);
  *(a1 + 42) = v97;

  v100 = MFXDevice3::createComputePipeline(a2, v136, v98, v94);
  v101 = *(a1 + 43);
  *(a1 + 43) = v100;

  v102 = MFXDevice3::createComputePipeline(a2, v136, @"exposure_texture_to_buffer", v94);
  v103 = *(a1 + 44);
  *(a1 + 44) = v102;

  v104 = MFXDevice3::createComputePipeline(a2, v136, @"brnetv3_build_tensors_low_resolution", v94);
  v105 = *(a1 + 45);
  *(a1 + 45) = v104;

  v140 = 0;
  [v94 setConstantValue:&v140 type:53 atIndex:12];
  v106 = MFXDevice3::createComputePipeline(a2, v136, @"brnetv3_lowres_signals", v94);
  v107 = *(a1 + 48);
  *(a1 + 48) = v106;

  v140 = 1;
  [v94 setConstantValue:&v140 type:53 atIndex:12];
  v108 = MFXDevice3::createComputePipeline(a2, v136, @"brnetv3_lowres_signals", v94);
  v109 = *(a1 + 61);
  *(a1 + 61) = v108;

  v110 = MFXDevice3::createComputePipeline(a2, v136, @"brnetv3_warp_history_high_resolution", v94);
  v111 = *(a1 + 47);
  *(a1 + 47) = v110;

  v112 = MFXDevice3::createComputePipeline(a2, v136, @"brnetv3_anisotropic_gaussian_filter", v94);
  v113 = *(a1 + 49);
  *(a1 + 49) = v112;

  v139 = 4;
  [v94 setConstantValue:&v139 type:41 atIndex:0];
  v114 = MFXDevice3::createComputePipeline(a2, v136, @"brnetv3_output_spatial_lr", v94);
  v115 = *(a1 + 50);
  *(a1 + 50) = v114;

  v116 = MFXDevice3::createComputePipeline(a2, v136, @"brnetv3_output_temporal", v94);
  v117 = *(a1 + 51);
  *(a1 + 51) = v116;

  v138 = 1;
  [v94 setConstantValue:&v138 type:53 atIndex:5];
  v118 = MFXDevice3::createComputePipeline(a2, v136, @"brnetv3_flow_splat", v94);
  v119 = *(a1 + 55);
  *(a1 + 55) = v118;

  v138 = 0;
  [v94 setConstantValue:&v138 type:53 atIndex:5];
  v120 = MFXDevice3::createComputePipeline(a2, v136, @"brnetv3_flow_splat", v94);
  v121 = *(a1 + 56);
  *(a1 + 56) = v120;

  v122 = MFXDevice3::createComputePipeline(a2, v136, @"brnetv3_flow_splat_texture", v94);
  v123 = *(a1 + 57);
  *(a1 + 57) = v122;

  v124 = MFXDevice3::createComputePipeline(a2, v136, @"brnetv3_flow_diff_texture", v94);
  v125 = *(a1 + 58);
  *(a1 + 58) = v124;

  v126 = MFXDevice3::createComputePipeline(a2, v136, @"brnetv3_flow_splat_init_forward_z", v94);
  v127 = *(a1 + 59);
  *(a1 + 59) = v126;

  v128 = MFXDevice3::createComputePipeline(a2, v136, @"brnetv3_update_sample_statistics", v94);
  v129 = *(a1 + 60);
  *(a1 + 60) = v128;

  if (*(a1 + 64) == 1)
  {
    v130 = MFXDevice3::createComputePipeline(a2, v136, @"brnetv3_copy_reactive_mask", v94);
    v131 = *(a1 + 62);
    *(a1 + 62) = v130;
  }

  if (*(a1 + 66) == 1)
  {
    v132 = MFXDevice3::createComputePipeline(a2, v136, @"dilateFlow", 0);
    v133 = *(a1 + 63);
    *(a1 + 63) = v132;
  }

  return a1;
}

void BRNet_v3_Filter<MFXDevice3>::BRNet_v3_Filter()
{
  BRNet_v3_Filter<MFXDevice3>::BRNet_v3_Filter();
}

{
    ;
  }
}

{
    ;
  }
}

void BRNet_v3_Filter<MFXDevice3>::encodePre(uint64_t a1, void *a2, id *a3, void *a4, void *a5, void *a6, void *a7, void *a8, float32x2_t a9, float32x2_t a10, float a11, double a12, float a13, void *a14, char a15, char a16, char a17, unsigned int a18, unsigned __int8 a19)
{
  v61 = a19;
  v29 = a18;
  v58 = a2;
  v30 = a4;
  v59 = a5;
  v31 = a6;
  v32 = a7;
  v33 = a8;
  v60 = a14;
  v69 = a15;
  v68 = a13;
  *(a1 + 61) = 0;
  v34 = v29 - *(a1 + 8) / 2;
  if (v34 < 0)
  {
    v34 = *(a1 + 8) / 2 - v29;
  }

  if (v34 <= 2)
  {
    v35 = HIWORD(v29) - *(a1 + 12) / 2;
    if (v35 < 0)
    {
      v35 = *(a1 + 12) / 2 - HIWORD(v29);
    }

    if (v35 <= 2)
    {
      *(a1 + 61) = 1;
    }
  }

  v36 = *a3;
  v57 = v33;
  if (a17)
  {
    [v36 setComputePipelineState:*(a1 + 336)];
    [*a3 setTexture:v30 atIndex:0];
    [*a3 setBytes:&a18 length:4 atIndex:1];
    [*a3 setBytes:&v68 length:4 atIndex:2];
    [*a3 setBuffer:*(a1 + 320) offset:0 atIndex:0];
    v37 = *a3;
    v72 = xmmword_2398F2880;
    v73 = 1;
    v70 = xmmword_2398F28F0;
    v71 = 1;
    [v37 dispatchThreadgroups:&v72 threadsPerThreadgroup:&v70];
    [*a3 setComputePipelineState:*(a1 + 344)];
    [*a3 setBuffer:*(a1 + 320) offset:0 atIndex:0];
    LODWORD(v63[0]) = a18 * HIWORD(a18);
    [*a3 setBytes:v63 length:4 atIndex:1];
    [*a3 setBuffer:*(a1 + 296 + 8 * v61) offset:0 atIndex:2];
    [*a3 setBuffer:*(a1 + 296 + 8 * (v61 == 0)) offset:0 atIndex:3];
    [*a3 setBuffer:*(a1 + 312) offset:0 atIndex:4];
    [*a3 setBytes:&v69 length:1 atIndex:5];
    v38 = *a3;
    v72 = vdupq_n_s64(1uLL);
    v73 = 1;
    v70 = xmmword_2398F2890;
    v71 = 1;
    [v38 dispatchThreadgroups:&v72 threadsPerThreadgroup:&v70];
  }

  else
  {
    [v36 setComputePipelineState:*(a1 + 352)];
    [*a3 setTexture:v33 atIndex:0];
    [*a3 setBuffer:*(a1 + 296 + 8 * v61) offset:0 atIndex:0];
    [*a3 setBuffer:*(a1 + 296 + 8 * (v61 == 0)) offset:0 atIndex:1];
    [*a3 setBuffer:*(a1 + 312) offset:0 atIndex:2];
    [*a3 setBytes:&v69 length:1 atIndex:3];
    v39 = *a3;
    v72 = vdupq_n_s64(1uLL);
    v73 = 1;
    v70 = xmmword_2398F2920;
    v71 = 1;
    [v39 dispatchThreads:&v72 threadsPerThreadgroup:&v70];
  }

  [*a3 setComputePipelineState:{*(a1 + 360), *&a12}];
  [*a3 setTexture:v30 atIndex:0];
  [*a3 setTexture:v59 atIndex:1];
  [*a3 setTexture:v31 atIndex:2];
  [*a3 setTexture:*(a1 + 88) atIndex:3];
  [*a3 setTexture:*(a1 + 80) atIndex:4];
  v40 = -1.0;
  if (a16)
  {
    v40 = 1.0;
  }

  v67 = v40;
  [*a3 setBytes:&v67 length:4 atIndex:0];
  [*a3 setBytes:&a18 length:4 atIndex:1];
  [*a3 setBytes:&v68 length:4 atIndex:2];
  v41 = a1 + 296;
  [*a3 setBuffer:*(a1 + 296 + 8 * v61) offset:0 atIndex:3];
  [*a3 setBuffer:*(a1 + 296 + 8 * (v61 == 0)) offset:0 atIndex:4];
  v42 = *a3;
  v72.i64[0] = a18 + 2;
  v72.i64[1] = HIWORD(a18) + 2;
  v73 = 1;
  v70 = vdupq_n_s64(8uLL);
  v71 = 1;
  [v42 dispatchThreads:&v72 threadsPerThreadgroup:&v70];
  v43 = v31;
  v63[0] = vmul_f32(a9, a10);
  v63[1] = __PAIR64__(v55, LODWORD(a11));
  if ((*(a1 + 60) & 1) == 0)
  {
    [*a3 setComputePipelineState:*(a1 + 376)];
    [*a3 setTexture:*(a1 + 88) atIndex:0];
    [*a3 setTexture:v32 atIndex:1];
    [*a3 setTexture:*(a1 + 80) atIndex:2];
    [*a3 setTexture:*(a1 + 96) atIndex:3];
    [*a3 setTexture:*(a1 + 272) atIndex:4];
    [*a3 setTexture:*(a1 + 280) atIndex:5];
    [*a3 setBytes:v63 length:24 atIndex:0];
    [*a3 setBytes:&a18 length:4 atIndex:1];
    [*a3 setBuffer:*(v41 + 8 * v61) offset:0 atIndex:2];
    [*a3 setBuffer:*(v41 + 8 * (v61 == 0)) offset:0 atIndex:3];
    [*a3 setBuffer:*(a1 + 312) offset:0 atIndex:4];
    v44 = *a3;
    v45 = *(a1 + 16);
    v46.i64[0] = v45;
    v46.i64[1] = SHIDWORD(v45);
    v72 = v46;
    v73 = 1;
    v70 = vdupq_n_s64(8uLL);
    v71 = 1;
    [v44 dispatchThreads:&v72 threadsPerThreadgroup:&v70];
  }

  v47 = 384;
  if (*(a1 + 61))
  {
    v47 = 488;
  }

  [*a3 setComputePipelineState:*(a1 + v47)];
  [*a3 setTexture:*(a1 + 88) atIndex:0];
  [*a3 setTexture:*(a1 + 96) atIndex:1];
  [*a3 setTexture:*(a1 + 80) atIndex:2];
  [*a3 setTexture:v32 atIndex:3];
  [*a3 setTexture:*(a1 + 104 + 8 * v61) atIndex:4];
  [*a3 setTexture:*(a1 + 120 + 8 * v61) atIndex:5];
  [*a3 setTexture:*(a1 + 104 + 8 * (v61 == 0)) atIndex:6];
  [*a3 setTexture:*(a1 + 120 + 8 * (v61 == 0)) atIndex:7];
  [*a3 setTexture:*(a1 + 144) atIndex:8];
  [*a3 setTexture:*(a1 + 184) atIndex:9];
  v48 = (a1 + 8 * v61);
  [*a3 setTexture:v48[24] atIndex:12];
  [*a3 setTexture:v48[26] atIndex:13];
  [*a3 setTexture:v48[28] atIndex:14];
  [*a3 setTexture:*(a1 + 240) atIndex:15];
  [*a3 setTexture:*(a1 + 248) atIndex:16];
  v49 = *(a1 + 28);
  v65 = *(a1 + 32);
  v66 = v49;
  v64 = *(a1 + 36);
  [*a3 setBytes:v63 length:24 atIndex:0];
  [*a3 setBytes:&a18 length:4 atIndex:1];
  [*a3 setBuffer:v60 offset:0 atIndex:2];
  [*a3 setBuffer:*(v41 + 8 * v61) offset:0 atIndex:3];
  [*a3 setBuffer:*(v41 + 8 * (v61 == 0)) offset:0 atIndex:4];
  [*a3 setBuffer:*(a1 + 312) offset:0 atIndex:5];
  [*a3 setThreadgroupMemoryLength:0x1000uLL / objc_msgSend(*(a1 + 384) atIndex:{"threadExecutionWidth"), 0}];
  v50 = (*(a1 + 8) + (*(a1 + 8) >> 31)) >> 1;
  v62[1] = *(a1 + 12) / 2;
  v62[0] = v50;
  [*a3 setBytes:v62 length:4 atIndex:6];
  v51 = *a3;
  v52 = *(a1 + 28);
  v53.i64[0] = v52;
  v53.i64[1] = SHIDWORD(v52);
  v72 = v53;
  v73 = 1;
  v70 = vdupq_n_s64(8uLL);
  v71 = 1;
  [v51 dispatchThreads:&v72 threadsPerThreadgroup:&v70];
}

void BRNet_v3_Filter<MFXDevice3>::encodeExposureCalcForDenoiser(void *a1, void *a2, void *a3, void *a4, char a5, int a6, int a7, unsigned int a8, float a9)
{
  v17 = a3;
  v18 = a4;
  v22 = a5;
  v21 = a7;
  v20 = a9;
  if (a6)
  {
    [a2 setComputePipelineState:a1[42]];
    [a2 setTexture:v17 atIndex:0];
    [a2 setBytes:&v21 length:4 atIndex:1];
    [a2 setBytes:&v20 length:4 atIndex:2];
    [a2 setBuffer:a1[40] offset:0 atIndex:0];
    [a2 setBuffer:a1[41] offset:0 atIndex:3];
    v25 = xmmword_2398F2880;
    v26 = 1;
    v23 = xmmword_2398F28F0;
    v24 = 1;
    [a2 dispatchThreadgroups:&v25 threadsPerThreadgroup:&v23];
    [a2 setComputePipelineState:a1[43]];
    [a2 setBuffer:a1[40] offset:0 atIndex:0];
    v19 = v21 * HIWORD(v21);
    [a2 setBytes:&v19 length:4 atIndex:1];
    [a2 setBuffer:a1[a8 + 37] offset:0 atIndex:2];
    [a2 setBuffer:a1[(a8 == 0) + 37] offset:0 atIndex:3];
    [a2 setBuffer:a1[39] offset:0 atIndex:4];
    [a2 setBytes:&v22 length:1 atIndex:5];
    [a2 setBuffer:a1[41] offset:0 atIndex:6];
    v25 = vdupq_n_s64(1uLL);
    v26 = 1;
    v23 = xmmword_2398F2890;
    v24 = 1;
    [a2 dispatchThreadgroups:&v25 threadsPerThreadgroup:&v23];
  }

  else
  {
    [a2 setComputePipelineState:a1[44]];
    [a2 setTexture:v18 atIndex:0];
    [a2 setBuffer:a1[a8 + 37] offset:0 atIndex:0];
    [a2 setBuffer:a1[(a8 == 0) + 37] offset:0 atIndex:1];
    [a2 setBuffer:a1[39] offset:0 atIndex:2];
    [a2 setBytes:&v22 length:1 atIndex:3];
    v25 = vdupq_n_s64(1uLL);
    v26 = 1;
    v23 = xmmword_2398F2920;
    v24 = 1;
    [a2 dispatchThreads:&v25 threadsPerThreadgroup:&v23];
  }
}

void BRNet_v3_Filter<MFXDevice3>::encodePreForDenoise(uint64_t a1, float32x2_t a2, float32x2_t a3, float a4, double a5, float a6, uint64_t a7, id *a8, void *a9, void *a10, void *a11, void *a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17, void *a18, char a19, char a20, unsigned int a21, unsigned __int8 a22)
{
  v30 = a21;
  v60 = a9;
  v31 = a10;
  v32 = a11;
  v33 = a12;
  v59 = a14;
  v58 = a15;
  v57 = a16;
  v34 = a17;
  v35 = a18;
  v67 = a6;
  *(a1 + 61) = 0;
  v36 = v30 - *(a1 + 8) / 2;
  if (v36 < 0)
  {
    v36 = *(a1 + 8) / 2 - v30;
  }

  if (v36 <= 2)
  {
    v37 = HIWORD(v30) - *(a1 + 12) / 2;
    if (v37 < 0)
    {
      v37 = *(a1 + 12) / 2 - HIWORD(v30);
    }

    if (v37 <= 2)
    {
      *(a1 + 61) = 1;
    }
  }

  v55 = v32;
  v56 = v31;
  [*a8 setComputePipelineState:{*(a1 + 360), *&a5}];
  [*a8 setTexture:v60 atIndex:0];
  [*a8 setTexture:v31 atIndex:1];
  [*a8 setTexture:v32 atIndex:2];
  [*a8 setTexture:*(a1 + 88) atIndex:3];
  [*a8 setTexture:*(a1 + 80) atIndex:4];
  v38 = -1.0;
  if (a20)
  {
    v38 = 1.0;
  }

  v66 = v38;
  [*a8 setBytes:&v66 length:4 atIndex:0];
  [*a8 setBytes:&a21 length:4 atIndex:1];
  [*a8 setBytes:&v67 length:4 atIndex:2];
  v39 = a22;
  v40 = a1 + 296;
  [*a8 setBuffer:*(a1 + 296 + 8 * a22) offset:0 atIndex:3];
  [*a8 setBuffer:*(a1 + 296 + 8 * (v39 == 0)) offset:0 atIndex:4];
  v41 = *a8;
  *&v70 = a21 + 2;
  *(&v70 + 1) = HIWORD(a21) + 2;
  v71 = 1;
  v68 = vdupq_n_s64(8uLL);
  v69 = 1;
  [v41 dispatchThreads:&v70 threadsPerThreadgroup:&v68];
  v62[0] = vmul_f32(a2, a3);
  v62[1] = __PAIR64__(v53, LODWORD(a4));
  if ((*(a1 + 60) & 1) == 0)
  {
    [*a8 setComputePipelineState:*(a1 + 376)];
    [*a8 setTexture:*(a1 + 88) atIndex:0];
    [*a8 setTexture:v33 atIndex:1];
    [*a8 setTexture:*(a1 + 80) atIndex:2];
    [*a8 setTexture:*(a1 + 96) atIndex:3];
    [*a8 setTexture:*(a1 + 272) atIndex:4];
    [*a8 setTexture:*(a1 + 280) atIndex:5];
    [*a8 setBytes:v62 length:24 atIndex:0];
    [*a8 setBytes:&a21 length:4 atIndex:1];
    [*a8 setBuffer:*(v40 + 8 * v39) offset:0 atIndex:2];
    [*a8 setBuffer:*(v40 + 8 * (v39 == 0)) offset:0 atIndex:3];
    [*a8 setBuffer:*(a1 + 312) offset:0 atIndex:4];
    v42 = *a8;
    v43 = *(a1 + 16);
    *&v44 = v43;
    *(&v44 + 1) = SHIDWORD(v43);
    v70 = v44;
    v71 = 1;
    v68 = vdupq_n_s64(8uLL);
    v69 = 1;
    [v42 dispatchThreads:&v70 threadsPerThreadgroup:&v68];
  }

  v45 = 384;
  if (*(a1 + 61))
  {
    v45 = 488;
  }

  [*a8 setComputePipelineState:*(a1 + v45)];
  [*a8 setTexture:*(a1 + 88) atIndex:0];
  [*a8 setTexture:*(a1 + 96) atIndex:1];
  [*a8 setTexture:*(a1 + 80) atIndex:2];
  [*a8 setTexture:v33 atIndex:3];
  [*a8 setTexture:*(a1 + 104 + 8 * v39) atIndex:4];
  [*a8 setTexture:*(a1 + 120 + 8 * v39) atIndex:5];
  [*a8 setTexture:*(a1 + 104 + 8 * (v39 == 0)) atIndex:6];
  [*a8 setTexture:*(a1 + 120 + 8 * (v39 == 0)) atIndex:7];
  [*a8 setTexture:*(a1 + 144) atIndex:8];
  [*a8 setTexture:*(a1 + 184) atIndex:9];
  v46 = (a1 + 8 * v39);
  [*a8 setTexture:v46[24] atIndex:12];
  [*a8 setTexture:v46[26] atIndex:13];
  [*a8 setTexture:v46[28] atIndex:14];
  [*a8 setTexture:*(a1 + 240) atIndex:15];
  [*a8 setTexture:*(a1 + 248) atIndex:16];
  [*a8 setTexture:v59 atIndex:17];
  [*a8 setTexture:v58 atIndex:18];
  [*a8 setTexture:v57 atIndex:19];
  [*a8 setTexture:v34 atIndex:20];
  [*a8 setBytes:&a21 length:4 atIndex:1];
  v47 = *(a1 + 28);
  v64 = *(a1 + 32);
  v65 = v47;
  v63 = *(a1 + 36);
  [*a8 setBytes:v62 length:24 atIndex:0];
  [*a8 setBuffer:v35 offset:0 atIndex:2];
  [*a8 setBuffer:*(v40 + 8 * v39) offset:0 atIndex:3];
  [*a8 setBuffer:*(v40 + 8 * (v39 == 0)) offset:0 atIndex:4];
  [*a8 setBuffer:*(a1 + 312) offset:0 atIndex:5];
  [*a8 setThreadgroupMemoryLength:0x1000uLL / objc_msgSend(*(a1 + 384) atIndex:{"threadExecutionWidth"), 0}];
  v48 = (*(a1 + 8) + (*(a1 + 8) >> 31)) >> 1;
  v61[1] = *(a1 + 12) / 2;
  v61[0] = v48;
  [*a8 setBytes:v61 length:4 atIndex:6];
  v49 = *a8;
  v50 = *(a1 + 28);
  *&v51 = v50;
  *(&v51 + 1) = SHIDWORD(v50);
  v70 = v51;
  v71 = 1;
  v68 = vdupq_n_s64(8uLL);
  v69 = 1;
  [v49 dispatchThreads:&v70 threadsPerThreadgroup:&v68];
}