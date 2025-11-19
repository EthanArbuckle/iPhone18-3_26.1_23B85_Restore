@interface MPSNDArrayMultiaryKernel
- (MPSNDArray)encodeToCommandBuffer:(id)cmdBuf sourceArrays:(NSArray *)sourceArrays;
- (MPSNDArray)encodeToCommandBuffer:(id)cmdBuf sourceArrays:(NSArray *)sourceArrays resultState:(MPSState *)outGradientState outputStateIsTemporary:(BOOL)outputStateIsTemporary;
- (MPSNDArrayMultiaryKernel)initWithCoder:(NSCoder *)coder device:(id)device;
- (MPSNDArrayMultiaryKernel)initWithDevice:(id)device sourceCount:(NSUInteger)count;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)destinationGradientArrayDescriptorsForSourceArrays:(id)a3 sourceGradient:(id)a4 sourceState:(id)a5;
- (id)destinationGradientsSupported;
- (id)encodeGradientsToCommandBuffer:(id)a3 sourceArrays:(id)a4 sourceGradient:(id)a5 gradientState:(id)a6;
- (id)firstGradientDestinationFromDestinationGradients:(id)a3 outMaxNumDimensions:(unint64_t *)a4;
- (void)encodeGradientsToCommandBuffer:(id)a3 sourceArrays:(id)a4 sourceGradient:(id)a5 gradientState:(id)a6 destinationGradients:(id)a7 kernelDAGObject:(id)a8;
- (void)encodeGradientsToCommandEncoder:(id)a3 commandBuffer:(id)a4 sourceArrays:(id)a5 sourceGradient:(id)a6 gradientState:(id)a7 destinationGradients:(id)a8 kernelDAGObject:(id)a9;
- (void)encodeToCommandBuffer:(id)a3 sourceArrays:(id)a4 resultState:(id)a5 destinationArray:(id)a6 kernelDAGObject:(id)a7;
- (void)encodeToCommandEncoder:(id)a3 commandBuffer:(id)a4 sourceArrays:(id)a5 destinationArray:(id)a6;
- (void)encodeToCommandEncoder:(id)a3 commandBuffer:(id)a4 sourceArrays:(id)a5 resultState:(id)a6 destinationArray:(id)a7 kernelDAGObject:(id)a8;
- (void)encodeToMPSCommandEncoder:(id)a3 commandBuffer:(id)a4 sourceArrays:(id)a5 resultState:(id)a6 destinationArray:(id)a7 kernelDAGObject:(id)a8;
@end

@implementation MPSNDArrayMultiaryKernel

- (MPSNDArrayMultiaryKernel)initWithDevice:(id)device sourceCount:(NSUInteger)count
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayMultiaryKernel;
  result = [(MPSNDArrayMultiaryBase *)&v5 initWithDevice:device sourceCount:count];
  result->_encode = 0;
  return result;
}

- (MPSNDArrayMultiaryKernel)initWithCoder:(NSCoder *)coder device:(id)device
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayMultiaryKernel;
  result = [(MPSNDArrayMultiaryBase *)&v5 initWithCoder:coder device:device];
  result->_encode = 0;
  return result;
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayMultiaryKernel;
  result = [(MPSNDArrayMultiaryBase *)&v6 copyWithZone:a3 device:a4];
  if (result)
  {
    *(result + 17) = self->_encode;
  }

  return result;
}

- (MPSNDArray)encodeToCommandBuffer:(id)cmdBuf sourceArrays:(NSArray *)sourceArrays
{
  v7 = [(MPSNDArrayAllocator *)self->super._destinationArrayAllocator arrayForCommandBuffer:cmdBuf arrayDescriptor:[(MPSNDArrayMultiaryBase *)self destinationArrayDescriptorForSourceArrays:sourceArrays sourceState:0] kernel:self];
  [(MPSNDArrayMultiaryKernel *)self encodeToCommandBuffer:cmdBuf sourceArrays:sourceArrays resultState:0 destinationArray:v7];
  return v7;
}

- (void)encodeToCommandEncoder:(id)a3 commandBuffer:(id)a4 sourceArrays:(id)a5 destinationArray:(id)a6
{
  v11 = objc_alloc(MEMORY[0x277CD7210]);
  if (a3)
  {
    v12 = [v11 initWithComputeCommandEncoder:a3];
  }

  else
  {
    v12 = [v11 initWithCommandBuffer:a4 withDispatchType:0];
  }

  v13 = v12;
  [(MPSNDArrayMultiaryKernel *)self encodeToMPSCommandEncoder:v12 commandBuffer:a4 sourceArrays:a5 destinationArray:a6];
}

- (MPSNDArray)encodeToCommandBuffer:(id)cmdBuf sourceArrays:(NSArray *)sourceArrays resultState:(MPSState *)outGradientState outputStateIsTemporary:(BOOL)outputStateIsTemporary
{
  v6 = outputStateIsTemporary;
  v11 = [(MPSNDArrayAllocator *)self->super._destinationArrayAllocator arrayForCommandBuffer:cmdBuf arrayDescriptor:[(MPSNDArrayMultiaryBase *)self destinationArrayDescriptorForSourceArrays:sourceArrays sourceState:0] kernel:self];
  v12 = v11;
  if (*(&self->super.super.super.isa + *MEMORY[0x277CD7378]))
  {
    if (!v11)
    {
      return v12;
    }
  }

  else if (!v11)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v13 = objc_opt_class();
      NSStringFromClass(v13);
      MTLReportFailure();
    }

    return v12;
  }

  if (v6)
  {
    v14 = [(MPSNDArrayMultiaryBase *)self temporaryResultStateForCommandBuffer:cmdBuf sourceArrays:sourceArrays sourceStates:MEMORY[0x277CBEBF8] destinationArray:v11];
  }

  else
  {
    v14 = [(MPSNDArrayMultiaryBase *)self resultStateForSourceArrays:sourceArrays sourceStates:MEMORY[0x277CBEBF8] destinationArray:v11];
  }

  v15 = v14;
  [(MPSNDArrayMultiaryKernel *)self encodeToCommandBuffer:cmdBuf sourceArrays:sourceArrays resultState:v14 destinationArray:v12];
  if (outGradientState)
  {
    *outGradientState = v15;
  }

  return v12;
}

- (void)encodeToCommandEncoder:(id)a3 commandBuffer:(id)a4 sourceArrays:(id)a5 resultState:(id)a6 destinationArray:(id)a7 kernelDAGObject:(id)a8
{
  v14 = objc_alloc(MEMORY[0x277CD7210]);
  if (a3)
  {
    v15 = [v14 initWithComputeCommandEncoder:a3];
  }

  else
  {
    v15 = [v14 initWithCommandBuffer:a4 withDispatchType:0];
  }

  v16 = v15;
  [(MPSNDArrayMultiaryKernel *)self encodeToMPSCommandEncoder:v15 commandBuffer:a4 sourceArrays:a5 resultState:0 destinationArray:a7 kernelDAGObject:a8];
}

- (void)encodeToMPSCommandEncoder:(id)a3 commandBuffer:(id)a4 sourceArrays:(id)a5 resultState:(id)a6 destinationArray:(id)a7 kernelDAGObject:(id)a8
{
  v8 = a7;
  v165[1] = *MEMORY[0x277D85DE8];
  v146 = a7;
  v145 = a8;
  v142 = 0x2B2B032C2B2B0328;
  v143 = 0u;
  v144 = 0u;
  kdebug_trace();
  if ((vmaxvq_u32(vorrq_s8(vorrq_s8(vceqzq_s32(*&v8[*MEMORY[0x277CD7410]]), vceqzq_s32(*&v8[*MEMORY[0x277CD7410] + 32])), vorrq_s8(vceqzq_s32(*&v8[*MEMORY[0x277CD7410] + 16]), vceqzq_s32(*&v8[*MEMORY[0x277CD7410] + 48])))) & 0x80000000) != 0)
  {
    goto LABEL_97;
  }

  v125 = self;
  v14 = *(&self->super.super.super.isa + *MEMORY[0x277CD7350]);
  if (qword_27DF86980 == -1)
  {
    if (_MergedGlobals_3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    dispatch_once(&qword_27DF86980, &__block_literal_global_2);
    if (_MergedGlobals_3)
    {
      goto LABEL_7;
    }
  }

  if ((*(v14 + 1468) & 2) == 0)
  {
    v15 = v125;
    goto LABEL_9;
  }

LABEL_7:
  v16 = *MEMORY[0x277CD7360];
  v15 = v125;
  if (!*(&v125->super.super.super.isa + v16))
  {
    v15 = v125;
    *(&v125->super.super.super.isa + v16) = [a3 label];
    v8 = v146;
  }

LABEL_9:
  [(MPSNDArrayMultiaryBase *)v15 kernelDAGObjectSetup:&v145 sourceArrays:a5 sourceGradient:0 destination:v8];
  v17 = v15;
  v18 = [(MPSNDArrayMultiaryKernel *)v15 encodePreProcessingToCommandEncoder:a3 commandBuffer:a4 sourceArrays:a5 destinationArray:&v146 kernelDAGObject:&v145];
  v165[0] = v146;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v165 count:1];
  v20 = [(MPSNDArrayMultiaryBase *)v15 kernelDimensionalityForSourceArrays:v18 destinationArrays:v19 kernelDAGObject:v145];
  [(MPSNDArrayMultiaryBase *)v15 setIndexingArithmaticTypeMask:&v145 sourceArrays:v18 sourceGradient:0 destination:v146 tileDimensions:v20];
  v21 = [v146 numberOfDimensions];
  v22 = [(MPSNDArrayMultiaryBase *)v15 maxSupportedDimensionsForSourceArrays:v18 destinationArray:v146];
  v123 = v20;
  v124 = a3;
  v122 = [v145 graph];
  v23 = 0;
  v24 = MEMORY[0x277CD7418];
  v25 = v21;
  while (v23 < [v18 count])
  {
    v26 = [v18 objectAtIndexedSubscript:v23];
    if (v25 <= *(v26 + *MEMORY[0x277CD73F0]))
    {
      v25 = *(v26 + *MEMORY[0x277CD73F0]);
    }

    if (v25 > v21)
    {
      v21 = v25;
    }

    if (v25 <= 0xF)
    {
      v27 = (v26 + *v24);
      v29 = v27[2];
      v28 = v27[3];
      v31 = *v27;
      v30 = v27[1];
      v32 = *(v26 + *MEMORY[0x277CD73D8]);
      v33 = v25;
      do
      {
        v126 = v32;
        v127[0] = v31;
        v127[1] = v30;
        v127[2] = v29;
        v127[3] = v28;
        v34 = *(v127 + (*(&v126 | v33 & 0xF) & 0xF));
        v35 = v33 + 1;
        if (v33 + 1 > v21)
        {
          v36 = v33 + 1;
        }

        else
        {
          v36 = v21;
        }

        if (v34)
        {
          v21 = v36;
        }

        v33 = v35;
      }

      while (v35 != 16);
    }

    ++v23;
  }

  if (v21 <= 0xF)
  {
    v37 = &v146[*v24];
    v39 = *(v37 + 2);
    v38 = *(v37 + 3);
    v41 = *v37;
    v40 = *(v37 + 1);
    v42 = *&v146[*MEMORY[0x277CD73D8]];
    v43 = v21;
    do
    {
      v134 = v42;
      v135[0] = v41;
      v135[1] = v40;
      v135[2] = v39;
      v135[3] = v38;
      v44 = *(v135 + (*(&v134 | v43 & 0xF) & 0xF));
      v45 = v43 + 1;
      if (v43 + 1 > v21)
      {
        v46 = v43 + 1;
      }

      else
      {
        v46 = v21;
      }

      if (v44)
      {
        v21 = v46;
      }

      v43 = v45;
    }

    while (v45 != 16);
  }

  if (v25 > v22 && MTLReportFailureTypeEnabled())
  {
    v118 = v22;
    MTLReportFailure();
  }

  v47 = v146;
  srcCount = v17->super._srcCount;
  if (srcCount)
  {
LABEL_37:
    v49 = [v18 count];
    if (srcCount <= v49)
    {
      srcCount = v49;
    }

    is_mul_ok(srcCount, 0x50uLL);
    operator new[]();
  }

  if ([v18 count])
  {
    srcCount = v17->super._srcCount;
    goto LABEL_37;
  }

  v148[0] = v17->super._srcCount;
  v148[1] = 0;
  v148[2] = v18;
  v148[3] = a6;
  *&v50 = 0x100000001;
  *(&v50 + 1) = 0x100000001;
  v152 = v50;
  v151 = v50;
  v150 = v50;
  v149 = v50;
  v153 = 0;
  v154 = 0;
  v158 = v50;
  v157 = v50;
  v156 = v50;
  v155 = v50;
  v159 = [v47 offset];
  v160 = 0;
  v161 = v47;
  v162 = 0;
  v163 = 0;
  v164 = v145;
  v121 = *MEMORY[0x277CD7378];
  if (*(&v17->super.super.super.isa + v121))
  {
    goto LABEL_80;
  }

  v51 = [(MPSNDArrayMultiaryBase *)v125 maxSupportedArraySizeForIsDestination:1];
  v52 = [(MPSNDArrayMultiaryBase *)v125 maxSupportedArraySizeForIsDestination:0];
  v53 = MEMORY[0x277CD73C8];
  if (!v47)
  {
    goto LABEL_55;
  }

  v54 = *&v47[*MEMORY[0x277CD73F0]];
  if (v54)
  {
    v55 = 0;
    v56 = 0;
    v57 = &v47[*MEMORY[0x277CD7428]];
    v59 = *(v57 + 6);
    v58 = *(v57 + 7);
    v61 = *(v57 + 4);
    v60 = *(v57 + 5);
    v63 = *(v57 + 2);
    v62 = *(v57 + 3);
    v65 = *v57;
    v64 = *(v57 + 1);
    v66 = *&v47[*MEMORY[0x277CD73D8]];
    v67 = &v47[*MEMORY[0x277CD7410]];
    v69 = *(v67 + 2);
    v68 = *(v67 + 3);
    v71 = *v67;
    v70 = *(v67 + 1);
    do
    {
      v131 = v66;
      v133[0] = v65;
      v133[1] = v64;
      v133[2] = v63;
      v133[3] = v62;
      v133[4] = v61;
      v133[5] = v60;
      v133[6] = v59;
      v133[7] = v58;
      v72 = *(&v131 | v56 & 0xF) & 0xF;
      v73 = *(v133 + v72);
      v132[0] = v71;
      v132[1] = v70;
      v132[2] = v69;
      v132[3] = v68;
      v74 = v73 * *(v132 + v72);
      if (v74 > v55)
      {
        v55 = v74;
      }

      ++v56;
    }

    while (v54 != v56);
    v75 = *&v47[*MEMORY[0x277CD73C8]];
    v76 = v75;
    if (v75 < 8u)
    {
      goto LABEL_48;
    }

LABEL_51:
    v78 = v55 * (v75 >> 3);
    goto LABEL_54;
  }

  v55 = 0;
  v75 = *&v47[*MEMORY[0x277CD73C8]];
  v76 = v75;
  if (v75 >= 8u)
  {
    goto LABEL_51;
  }

LABEL_48:
  if (v76)
  {
    v77 = (v75 + 7) / v75;
  }

  else
  {
    v77 = 1;
  }

  v78 = (v55 + v77 - 1) / v77;
LABEL_54:
  if (v78 > v51 && MTLReportFailureTypeEnabled())
  {
    v117 = objc_opt_class();
    v119 = NSStringFromClass(v117);
    v120 = [v47 debugDescription];
    MTLReportFailure();
  }

LABEL_55:
  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  v79 = [v18 countByEnumeratingWithState:&v138 objects:v147 count:{16, v119, v120}];
  if (!v79)
  {
    goto LABEL_80;
  }

  v80 = *v139;
  do
  {
    v81 = 0;
    do
    {
      if (*v139 != v80)
      {
        objc_enumerationMutation(v18);
      }

      v82 = *(*(&v138 + 1) + 8 * v81);
      if (v82)
      {
        v83 = *&v82[*MEMORY[0x277CD73F0]];
        if (v83)
        {
          v84 = 0;
          v85 = 0;
          v86 = &v82[*MEMORY[0x277CD7428]];
          v88 = *(v86 + 6);
          v87 = *(v86 + 7);
          v90 = *(v86 + 4);
          v89 = *(v86 + 5);
          v92 = *(v86 + 2);
          v91 = *(v86 + 3);
          v94 = *v86;
          v93 = *(v86 + 1);
          v95 = *&v82[*MEMORY[0x277CD73D8]];
          v96 = &v82[*MEMORY[0x277CD7410]];
          v98 = *(v96 + 2);
          v97 = *(v96 + 3);
          v100 = *v96;
          v99 = *(v96 + 1);
          do
          {
            v128 = v95;
            v130[0] = v94;
            v130[1] = v93;
            v130[2] = v92;
            v130[3] = v91;
            v130[4] = v90;
            v130[5] = v89;
            v130[6] = v88;
            v130[7] = v87;
            v101 = *(&v128 | v85 & 0xF) & 0xF;
            v102 = *(v130 + v101);
            v129[0] = v100;
            v129[1] = v99;
            v129[2] = v98;
            v129[3] = v97;
            v103 = v102 * *(v129 + v101);
            if (v103 > v84)
            {
              v84 = v103;
            }

            ++v85;
          }

          while (v83 != v85);
          v104 = *&v82[*v53];
          v105 = v104;
          if (v104 < 8u)
          {
            goto LABEL_71;
          }

LABEL_58:
          if (v84 * (v104 >> 3) <= v52)
          {
            goto LABEL_75;
          }
        }

        else
        {
          v84 = 0;
          v104 = *&v82[*v53];
          v105 = v104;
          if (v104 >= 8u)
          {
            goto LABEL_58;
          }

LABEL_71:
          if (v105)
          {
            v106 = (v104 + 7) / v104;
            if ((v84 + v106 - 1) / v106 <= v52)
            {
              goto LABEL_75;
            }
          }

          else if (v84 <= v52)
          {
            goto LABEL_75;
          }
        }

        if (MTLReportFailureTypeEnabled())
        {
          v107 = objc_opt_class();
          v119 = NSStringFromClass(v107);
          v120 = [v82 debugDescription];
          MTLReportFailure();
        }
      }

LABEL_75:
      ++v81;
    }

    while (v81 != v79);
    v108 = [v18 countByEnumeratingWithState:&v138 objects:v147 count:16];
    v79 = v108;
  }

  while (v108);
LABEL_80:
  if (v124)
  {
    if (v21 <= 1)
    {
      v109 = 1;
    }

    else
    {
      v109 = v21;
    }

    CallNDArrayEncode(v125, v124, a4, v109 - 1, v123, v148);
  }

  else
  {
    v110 = [objc_alloc(MEMORY[0x277CD7210]) initWithCommandBuffer:a4 withDispatchType:0];
    v136 = v110;
    v137 = v125;
    if ((*(&v125->super.super.super.isa + v121) & 0x18) != 0)
    {
      v111 = *(&v125->super.super.super.isa + *MEMORY[0x277CD7360]);
      if (v111 || (v112 = objc_opt_class(), v111 = NSStringFromClass(v112), [(MPSKernel *)v125 setLabel:v111], v111))
      {
        [v110 setLabel:{v111, v119, v120}];
      }
    }

    CallNDArrayEncode(v125, v110, a4, v21 - 1, v123, v148);
    [v110 endEncoding];
  }

  for (i = 0; i < [v18 count]; ++i)
  {
    v114 = **(v122 + 64);
    if (i >= (*(*(v122 + 64) + 8) - v114) >> 3)
    {
      std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
    }

    if (*(*(v114 + 8 * i) + 96) == 1)
    {
      v115 = [v18 objectAtIndexedSubscript:i];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        MPSDecrementReadCount(v115);
      }
    }
  }

LABEL_97:
  kdebug_trace();
  v116 = *MEMORY[0x277D85DE8];
}

- (void)encodeToCommandBuffer:(id)a3 sourceArrays:(id)a4 resultState:(id)a5 destinationArray:(id)a6 kernelDAGObject:(id)a7
{
  if ((vmaxvq_u32(vorrq_s8(vorrq_s8(vceqzq_s32(*(a6 + *MEMORY[0x277CD7410])), vceqzq_s32(*(a6 + *MEMORY[0x277CD7410] + 32))), vorrq_s8(vceqzq_s32(*(a6 + *MEMORY[0x277CD7410] + 16)), vceqzq_s32(*(a6 + *MEMORY[0x277CD7410] + 48))))) & 0x80000000) == 0)
  {
    v13 = [objc_alloc(MEMORY[0x277CD7210]) initWithCommandBuffer:a3 withDispatchType:0];
    v17 = v13;
    v18 = self;
    if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
    {
      v14 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
      if (v14 || (v15 = objc_opt_class(), v16 = NSStringFromClass(v15), [(MPSKernel *)self setLabel:v16, v13, self], (v14 = v16) != 0))
      {
        [v13 setLabel:{v14, v17, v18}];
      }
    }

    [(MPSNDArrayMultiaryKernel *)self encodeToMPSCommandEncoder:v13 commandBuffer:a3 sourceArrays:a4 resultState:a5 destinationArray:a6 kernelDAGObject:a7, v17, v18];
    [v13 endEncoding];
  }
}

- (id)encodeGradientsToCommandBuffer:(id)a3 sourceArrays:(id)a4 sourceGradient:(id)a5 gradientState:(id)a6
{
  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:self->super._srcCount];
  v12 = [(MPSNDArrayMultiaryKernel *)self destinationGradientArrayDescriptorsForSourceArrays:a4 sourceGradient:a5 sourceState:a6];
  if (self->super._srcCount)
  {
    v13 = v12;
    v14 = 0;
    do
    {
      v16 = [v13 objectAtIndexedSubscript:v14];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 || (v15 = [(MPSNDArrayAllocator *)self->super._destinationArrayAllocator arrayForCommandBuffer:a3 arrayDescriptor:v16 kernel:self]) == 0)
      {
        v15 = [MEMORY[0x277CBEB68] null];
      }

      [v11 setObject:v15 atIndexedSubscript:v14++];
    }

    while (v14 < self->super._srcCount);
  }

  [(MPSNDArrayMultiaryKernel *)self encodeGradientsToCommandBuffer:a3 sourceArrays:a4 sourceGradient:a5 gradientState:a6 destinationGradients:v11];
  return v11;
}

- (id)firstGradientDestinationFromDestinationGradients:(id)a3 outMaxNumDimensions:(unint64_t *)a4
{
  v7 = [0 numberOfDimensions];
  v8 = 0;
  if ([a3 count])
  {
    v9 = 0;
    do
    {
      v10 = [a3 objectAtIndexedSubscript:v9];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 && [(MPSNDArrayMultiaryKernel *)self supportsGradientForSourceIndex:v9])
      {
        if (!v8)
        {
          v8 = v10;
        }

        v11 = [v10 numberOfDimensions];
        if (v11 > v7)
        {
          v7 = v11;
        }
      }

      ++v9;
    }

    while (v9 < [a3 count]);
  }

  if (a4)
  {
    *a4 = v7;
  }

  return v8;
}

- (void)encodeGradientsToCommandEncoder:(id)a3 commandBuffer:(id)a4 sourceArrays:(id)a5 sourceGradient:(id)a6 gradientState:(id)a7 destinationGradients:(id)a8 kernelDAGObject:(id)a9
{
  v64 = a4;
  v65 = a7;
  v63 = a3;
  v93 = *MEMORY[0x277D85DE8];
  v73[1] = 0x2B2B032C2B2B0328;
  v74 = 0u;
  v75 = 0u;
  kdebug_trace();
  v73[0] = 0;
  v13 = [(MPSNDArrayMultiaryKernel *)self firstGradientDestinationFromDestinationGradients:a8 outMaxNumDimensions:v73];
  if (v13)
  {
    [(MPSNDArrayMultiaryBase *)self kernelDAGObjectSetup:&a9 sourceArrays:a5 sourceGradient:a6 destination:v13];
    v14 = [(MPSNDArrayMultiaryBase *)self kernelDimensionalityForSourceArrays:a5];
    [(MPSNDArrayMultiaryBase *)self setIndexingArithmaticTypeMask:&a9 sourceArrays:a5 sourceGradient:a6 destination:v13 tileDimensions:v14];
    v62 = v14;
    v15 = [(MPSNDArrayMultiaryBase *)self maxSupportedDimensionsForSourceArrays:a5 destinationArray:v13];
    for (i = 0; ; ++i)
    {
      v17 = [a5 count];
      v18 = v73[0];
      if (i >= v17)
      {
        break;
      }

      v19 = [objc_msgSend(a5 objectAtIndexedSubscript:{i), "numberOfDimensions"}];
      if (v18 <= v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = v18;
      }

      v73[0] = v20;
    }

    if (v73[0] > v15 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v21 = [a5 count];
    v28 = MEMORY[0x28223BE20](v21, v22, v23, v24, v25, v26, v27);
    v30 = v60 - v29;
    if (v28)
    {
      *&v31 = 0x100000001;
      *(&v31 + 1) = 0x100000001;
      v32 = v60 - v29;
      do
      {
        *(v32 + 2) = v31;
        *(v32 + 3) = v31;
        *v32 = v31;
        *(v32 + 1) = v31;
        *(v32 + 8) = 0;
        v32 += 80;
      }

      while (v32 != &v30[80 * v28]);
    }

    v33 = [a8 count];
    v60[1] = v60;
    MEMORY[0x28223BE20](v33, v34, v35, v36, v37, v38, v39);
    v66 = v60 - v40;
    v41 = 0;
    v42 = v30 + 64;
    if (self)
    {
      while (v41 < [a5 count])
      {
        [(MPSNDArrayMultiaryBase *)self stridesAtSourceIndex:v41];
        v43 = v69;
        v44 = v70;
        v45 = v72;
        *(v42 - 2) = v71;
        *(v42 - 1) = v45;
        *(v42 - 4) = v43;
        *(v42 - 3) = v44;
        *v42 = [objc_msgSend(a5 objectAtIndexedSubscript:{v41), "offset"}];
        v42 += 10;
        ++v41;
      }
    }

    else
    {
      while (v41 < [a5 count])
      {
        *(v42 - 2) = 0u;
        *(v42 - 1) = 0u;
        *(v42 - 4) = 0u;
        *(v42 - 3) = 0u;
        *v42 = [objc_msgSend(a5 objectAtIndexedSubscript:{v41), "offset"}];
        v42 += 10;
        ++v41;
      }
    }

    v61 = a6;
    v46 = 0;
    v47 = v66 + 64;
    while (v46 < [a8 count])
    {
      v47[8] = 0;
      *&v48 = 0x100000001;
      *(&v48 + 1) = 0x100000001;
      *(v47 - 2) = v48;
      *(v47 - 1) = v48;
      *(v47 - 4) = v48;
      *(v47 - 3) = v48;
      *v47 = 0;
      [a8 objectAtIndexedSubscript:v46];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        *v47 = [objc_msgSend(a8 objectAtIndexedSubscript:{v46), "offset"}];
      }

      ++v46;
      v47 += 80;
    }

    v76[0] = self->super._srcCount;
    v76[1] = v30;
    v76[2] = a5;
    v76[3] = v65;
    *&v49 = 0x100000001;
    *(&v49 + 1) = 0x100000001;
    v79 = v49;
    v80 = v49;
    v77 = v49;
    v78 = v49;
    v81 = 0;
    v50 = v61;
    v82 = v61;
    v85 = v49;
    v86 = v49;
    v83 = v49;
    v84 = v49;
    v87 = [v13 offset];
    v88 = 0;
    v89 = v13;
    v90 = v66;
    v91 = a8;
    v92 = a9;
    v81 = [(MPSTemporaryNDArray *)v50 offset];
    if (v63)
    {
      CallNDArrayNewGradientEncode(self, v63, v64, v73[0] - 1, v62, v76);
    }

    else
    {
      v51 = objc_alloc(MEMORY[0x277CD7210]);
      v52 = v64;
      v53 = v62;
      v54 = [v51 initWithCommandBuffer:v64 withDispatchType:0];
      v67 = v54;
      v68 = self;
      if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
      {
        v55 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
        if (v55 || (v56 = objc_opt_class(), v55 = NSStringFromClass(v56), [(MPSKernel *)self setLabel:v55], v55))
        {
          [v54 setLabel:v55];
        }
      }

      CallNDArrayNewGradientEncode(self, v54, v52, v73[0] - 1, v53, v76);
      [v54 endEncoding];
    }

    for (j = 0; j < [a5 count]; ++j)
    {
      v58 = [a5 objectAtIndexedSubscript:j];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        MPSDecrementReadCount(v58);
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      MPSDecrementReadCount(v50);
    }
  }

  kdebug_trace();
  v59 = *MEMORY[0x277D85DE8];
}

- (void)encodeGradientsToCommandBuffer:(id)a3 sourceArrays:(id)a4 sourceGradient:(id)a5 gradientState:(id)a6 destinationGradients:(id)a7 kernelDAGObject:(id)a8
{
  if ([(MPSNDArrayMultiaryKernel *)self firstGradientDestinationFromDestinationGradients:a7 outMaxNumDimensions:0])
  {
    v15 = [objc_alloc(MEMORY[0x277CD7210]) initWithCommandBuffer:a3 withDispatchType:0];
    if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
    {
      v16 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
      if (v16 || (v17 = objc_opt_class(), v18 = NSStringFromClass(v17), [(MPSKernel *)self setLabel:v18], (v16 = v18) != 0))
      {
        [v15 setLabel:v16];
      }
    }

    [(MPSNDArrayMultiaryKernel *)self encodeGradientsToCommandEncoder:v15 commandBuffer:a3 sourceArrays:a4 sourceGradient:a5 gradientState:a6 destinationGradients:a7 kernelDAGObject:a8];
    [v15 endEncoding];
  }
}

- (id)destinationGradientsSupported
{
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:self->super._srcCount];
  if (self->super._srcCount)
  {
    v4 = 0;
    do
    {
      [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] atIndexedSubscript:{"numberWithBool:", -[MPSNDArrayMultiaryKernel supportsGradientForSourceIndex:](self, "supportsGradientForSourceIndex:", v4)), v4}];
      ++v4;
    }

    while (v4 < self->super._srcCount);
  }

  return v3;
}

- (id)destinationGradientArrayDescriptorsForSourceArrays:(id)a3 sourceGradient:(id)a4 sourceState:(id)a5
{
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:self->super._srcCount];
  if (self->super._srcCount)
  {
    v8 = 0;
    do
    {
      v9 = [objc_msgSend(a3 objectAtIndexedSubscript:{v8), "descriptor"}];
      if (![(MPSNDArrayMultiaryKernel *)self supportsGradientForSourceIndex:v8])
      {
        v9 = [MEMORY[0x277CBEB68] null];
      }

      [v7 setObject:v9 atIndexedSubscript:v8++];
    }

    while (v8 < self->super._srcCount);
  }

  return v7;
}

@end