@interface MPSNDArrayMultiaryGradientKernel
- (MPSNDArray)encodeToCommandBuffer:(id)cmdBuf sourceArrays:(NSArray *)sources sourceGradient:(MPSNDArray *)gradient gradientState:(MPSState *)state;
- (MPSNDArrayMultiaryGradientKernel)initWithCoder:(NSCoder *)coder device:(id)device;
- (MPSNDArrayMultiaryGradientKernel)initWithDevice:(id)device sourceCount:(NSUInteger)count sourceGradientIndex:(NSUInteger)sourceGradientIndex;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (void)encodeToCommandBuffer:(id)buffer sourceArrays:(id)arrays sourceGradient:(id)gradient gradientState:(id)state destinationArray:(id)array kernelDAGObject:(id)object;
- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceArrays:(id)arrays sourceGradient:(id)gradient gradientState:(id)state destinationArray:(id)array kernelDAGObject:(id)object;
- (void)encodeToMPSCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceArrays:(id)arrays sourceGradient:(id)gradient gradientState:(id)state destinationArray:(id)array kernelDAGObject:(id)object;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSNDArrayMultiaryGradientKernel

- (MPSNDArrayMultiaryGradientKernel)initWithDevice:(id)device sourceCount:(NSUInteger)count sourceGradientIndex:(NSUInteger)sourceGradientIndex
{
  self->_sourceGradientIndex = sourceGradientIndex;
  v6.receiver = self;
  v6.super_class = MPSNDArrayMultiaryGradientKernel;
  return [(MPSNDArrayMultiaryBase *)&v6 initWithDevice:device sourceCount:count];
}

- (MPSNDArrayMultiaryGradientKernel)initWithCoder:(NSCoder *)coder device:(id)device
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayMultiaryGradientKernel;
  result = [(MPSNDArrayMultiaryBase *)&v8 initWithCoder:coder device:device];
  if (result)
  {
    v6 = result;
    v7 = [(NSCoder *)coder decodeInt64ForKey:@"MPSNDArrayMath.sourceGradient"];
    result = v6;
    v6->_sourceGradientIndex = v7;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayMultiaryGradientKernel;
  [(MPSNDArrayMultiaryBase *)&v5 encodeWithCoder:?];
  [coder encodeInt64:self->_sourceGradientIndex forKey:@"MPSNDArrayMath.sourceGradient"];
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayMultiaryGradientKernel;
  result = [(MPSNDArrayMultiaryBase *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 17) = self->_sourceGradientIndex;
  }

  return result;
}

- (MPSNDArray)encodeToCommandBuffer:(id)cmdBuf sourceArrays:(NSArray *)sources sourceGradient:(MPSNDArray *)gradient gradientState:(MPSState *)state
{
  v11 = [(MPSNDArrayAllocator *)self->super._destinationArrayAllocator arrayForCommandBuffer:cmdBuf arrayDescriptor:[(MPSNDArrayMultiaryBase *)self destinationArrayDescriptorForSourceArrays:sources sourceState:state] kernel:self];
  v12 = v11;
  if (*(&self->super.super.super.isa + *MEMORY[0x277CD7378]))
  {
    if (!v11)
    {
      return v12;
    }

LABEL_6:
    [(MPSNDArrayMultiaryGradientKernel *)self encodeToCommandBuffer:cmdBuf sourceArrays:sources sourceGradient:gradient gradientState:state destinationArray:v11];
    return v12;
  }

  if (v11)
  {
    goto LABEL_6;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v13 = objc_opt_class();
    NSStringFromClass(v13);
    MTLReportFailure();
  }

  return v12;
}

- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceArrays:(id)arrays sourceGradient:(id)gradient gradientState:(id)state destinationArray:(id)array kernelDAGObject:(id)object
{
  v15 = objc_alloc(MEMORY[0x277CD7210]);
  if (encoder)
  {
    v16 = [v15 initWithComputeCommandEncoder:encoder];
  }

  else
  {
    v16 = [v15 initWithCommandBuffer:buffer withDispatchType:0];
  }

  v17 = v16;
  [(MPSNDArrayMultiaryGradientKernel *)self encodeToMPSCommandEncoder:v16 commandBuffer:buffer sourceArrays:arrays sourceGradient:gradient gradientState:0 destinationArray:array kernelDAGObject:object];
}

- (void)encodeToMPSCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceArrays:(id)arrays sourceGradient:(id)gradient gradientState:(id)state destinationArray:(id)array kernelDAGObject:(id)object
{
  gradientCopy3 = state;
  v192 = *MEMORY[0x277D85DE8];
  v170 = 0x2B2B032C2B2B0328;
  v171 = 0u;
  v172 = 0u;
  kdebug_trace();
  [(MPSNDArrayMultiaryBase *)self kernelDAGObjectSetup:&object sourceArrays:arrays sourceGradient:gradient destination:array];
  v15 = [(MPSNDArrayMultiaryBase *)self kernelDimensionalityForSourceArrays:arrays];
  [(MPSNDArrayMultiaryBase *)self setIndexingArithmaticTypeMask:&object sourceArrays:arrays sourceGradient:gradient destination:array tileDimensions:v15];
  numberOfDimensions = [array numberOfDimensions];
  v16 = [(MPSNDArrayMultiaryBase *)self maxSupportedDimensionsForSourceArrays:arrays destinationArray:array];
  for (i = 0; i < [arrays count]; ++i)
  {
    v18 = [objc_msgSend(arrays objectAtIndexedSubscript:{i), "numberOfDimensions"}];
    v19 = numberOfDimensions;
    if (numberOfDimensions <= v18)
    {
      v19 = v18;
    }

    numberOfDimensions = v19;
  }

  if (numberOfDimensions > v16 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v149 = v15;
  v20 = [arrays count];
  v146[1] = v146;
  v21 = v20 + 1;
  v28 = MEMORY[0x28223BE20](v20, v22, v23, v24, v25, v26, v27);
  v36 = v146 - v35;
  selfCopy = self;
  encoderCopy = encoder;
  bufferCopy = buffer;
  if (v37)
  {
    v38 = &v173;
  }

  else
  {
    gradientCopy = gradient;
    *&v40 = 0x100000001;
    *(&v40 + 1) = 0x100000001;
    v41 = v146 - v35;
    do
    {
      *(v41 + 2) = v40;
      *(v41 + 3) = v40;
      *v41 = v40;
      *(v41 + 1) = v40;
      *(v41 + 8) = 0;
      v41 += 80;
    }

    while (v41 != &v36[80 * v21]);
    MEMORY[0x28223BE20](v28, v29, v30, v31, v32, v33, v34);
    v38 = v146 - v42;
    v43 = 0;
    v44 = &v146[8] - v42;
    v45 = (v36 + 64);
    do
    {
      if (selfCopy)
      {
        [(MPSNDArrayMultiaryBase *)selfCopy stridesAtSourceIndex:v43];
        v49 = v168;
        v48 = v169;
        v50 = v166;
        v51 = v167;
      }

      else
      {
        v50 = 0uLL;
        v51 = 0uLL;
        v49 = 0uLL;
        v48 = 0uLL;
      }

      *(v45 - 4) = v50;
      *(v45 - 3) = v51;
      *(v45 - 2) = v49;
      *(v45 - 1) = v48;
      if (v43 >= [arrays count])
      {
        v46 = 0;
      }

      else
      {
        v46 = [objc_msgSend(arrays objectAtIndexedSubscript:{v43), "offset"}];
      }

      v44[8] = 0;
      *&v47 = 0x100000001;
      *(&v47 + 1) = 0x100000001;
      *(v44 - 2) = v47;
      *(v44 - 1) = v47;
      *(v44 - 4) = v47;
      *(v44 - 3) = v47;
      ++v43;
      *v44 = 0;
      v44 += 80;
      *v45 = v46;
      v45 += 10;
    }

    while (v21 != v43);
    gradient = gradientCopy;
    self = selfCopy;
  }

  v175[0] = self->super._srcCount;
  v175[1] = v36;
  v175[2] = arrays;
  v175[3] = gradientCopy3;
  *&v52 = 0x100000001;
  *(&v52 + 1) = 0x100000001;
  v179 = v52;
  v178 = v52;
  v177 = v52;
  v176 = v52;
  gradientCopy2 = gradient;
  v185 = v52;
  v184 = v52;
  v183 = v52;
  v182 = v52;
  offset = [array offset];
  v187 = 0;
  arrayCopy = array;
  objectCopy = object;
  offset2 = [gradient offset];
  gradientCopy3 = gradient;
  v180 = offset2;
  v189 = v38;
  v190 = 0;
  if (*(&self->super.super.super.isa + *MEMORY[0x277CD7378]))
  {
    goto LABEL_74;
  }

  v54 = selfCopy;
  v55 = [(MPSNDArrayMultiaryBase *)selfCopy maxSupportedArraySizeForIsDestination:1];
  v56 = [(MPSNDArrayMultiaryBase *)v54 maxSupportedArraySizeForIsDestination:0];
  v57 = gradientCopy3;
  v58 = v56;
  v59 = MEMORY[0x277CD73C8];
  if (array)
  {
    v60 = *(array + *MEMORY[0x277CD73F0]);
    if (v60)
    {
      v61 = 0;
      v62 = 0;
      v63 = (array + *MEMORY[0x277CD7428]);
      v65 = v63[6];
      v64 = v63[7];
      v67 = v63[4];
      v66 = v63[5];
      v69 = v63[2];
      v68 = v63[3];
      v71 = *v63;
      v70 = v63[1];
      v72 = *(array + *MEMORY[0x277CD73D8]);
      v73 = (array + *MEMORY[0x277CD7410]);
      v75 = v73[2];
      v74 = v73[3];
      v77 = *v73;
      v76 = v73[1];
      do
      {
        v159 = v72;
        v161[0] = v71;
        v161[1] = v70;
        v161[2] = v69;
        v161[3] = v68;
        v161[4] = v67;
        v161[5] = v66;
        v161[6] = v65;
        v161[7] = v64;
        v78 = *(&v159 | v62 & 0xF) & 0xF;
        v79 = *(v161 + v78);
        v160[0] = v77;
        v160[1] = v76;
        v160[2] = v75;
        v160[3] = v74;
        v80 = v79 * *(v160 + v78);
        if (v80 > v61)
        {
          v61 = v80;
        }

        ++v62;
      }

      while (v60 != v62);
      v81 = *(array + *MEMORY[0x277CD73C8]);
      v82 = v81;
      if (v81 < 8u)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v61 = 0;
      v81 = *(array + *MEMORY[0x277CD73C8]);
      v82 = v81;
      if (v81 < 8u)
      {
LABEL_28:
        if (v82)
        {
          v83 = (v81 + 7) / v81;
        }

        else
        {
          v83 = 1;
        }

        v84 = (v61 + v83 - 1) / v83;
LABEL_34:
        if (v84 > v55 && MTLReportFailureTypeEnabled())
        {
          v144 = objc_opt_class();
          NSStringFromClass(v144);
          [array debugDescription];
          MTLReportFailure();
        }

        goto LABEL_35;
      }
    }

    v84 = v61 * (v81 >> 3);
    goto LABEL_34;
  }

LABEL_35:
  if (!v57)
  {
    goto LABEL_49;
  }

  v85 = *(&v57->super.super.isa + *MEMORY[0x277CD73F0]);
  if (v85)
  {
    v86 = 0;
    v87 = 0;
    v88 = v57 + *MEMORY[0x277CD7428];
    v90 = *(v88 + 6);
    v89 = *(v88 + 7);
    v92 = *(v88 + 4);
    v91 = *(v88 + 5);
    v94 = *(v88 + 2);
    v93 = *(v88 + 3);
    v96 = *v88;
    v95 = *(v88 + 1);
    v97 = *(&v57->super.super.isa + *MEMORY[0x277CD73D8]);
    v98 = v57 + *MEMORY[0x277CD7410];
    v100 = *(v98 + 2);
    v99 = *(v98 + 3);
    v102 = *v98;
    v101 = *(v98 + 1);
    do
    {
      v156 = v97;
      v158[0] = v96;
      v158[1] = v95;
      v158[2] = v94;
      v158[3] = v93;
      v158[4] = v92;
      v158[5] = v91;
      v158[6] = v90;
      v158[7] = v89;
      v103 = *(&v156 | v87 & 0xF) & 0xF;
      v104 = *(v158 + v103);
      v157[0] = v102;
      v157[1] = v101;
      v157[2] = v100;
      v157[3] = v99;
      v105 = v104 * *(v157 + v103);
      if (v105 > v86)
      {
        v86 = v105;
      }

      ++v87;
    }

    while (v85 != v87);
    v106 = *(&v57->super.super.isa + *v59);
    v107 = v106;
    if (v106 < 8u)
    {
      goto LABEL_42;
    }

LABEL_45:
    v109 = v86 * (v106 >> 3);
    goto LABEL_48;
  }

  v86 = 0;
  v106 = *(&v57->super.super.isa + *v59);
  v107 = v106;
  if (v106 >= 8u)
  {
    goto LABEL_45;
  }

LABEL_42:
  if (v107)
  {
    v108 = (v106 + 7) / v106;
  }

  else
  {
    v108 = 1;
  }

  v109 = (v86 + v108 - 1) / v108;
LABEL_48:
  if (v109 > v58 && MTLReportFailureTypeEnabled())
  {
    v145 = objc_opt_class();
    NSStringFromClass(v145);
    [(MPSTemporaryNDArray *)v57 debugDescription];
    MTLReportFailure();
  }

LABEL_49:
  v164 = 0u;
  v165 = 0u;
  v162 = 0u;
  v163 = 0u;
  v110 = [arrays countByEnumeratingWithState:&v162 objects:v174 count:16];
  if (v110)
  {
    v111 = *v163;
    do
    {
      v112 = 0;
      do
      {
        if (*v163 != v111)
        {
          objc_enumerationMutation(arrays);
        }

        v113 = *(*(&v162 + 1) + 8 * v112);
        if (v113)
        {
          v114 = *&v113[*MEMORY[0x277CD73F0]];
          if (v114)
          {
            v115 = 0;
            v116 = 0;
            v117 = &v113[*MEMORY[0x277CD7428]];
            v119 = *(v117 + 6);
            v118 = *(v117 + 7);
            v121 = *(v117 + 4);
            v120 = *(v117 + 5);
            v123 = *(v117 + 2);
            v122 = *(v117 + 3);
            v125 = *v117;
            v124 = *(v117 + 1);
            v126 = *&v113[*MEMORY[0x277CD73D8]];
            v127 = &v113[*MEMORY[0x277CD7410]];
            v129 = *(v127 + 2);
            v128 = *(v127 + 3);
            v131 = *v127;
            v130 = *(v127 + 1);
            do
            {
              v153 = v126;
              v155[0] = v125;
              v155[1] = v124;
              v155[2] = v123;
              v155[3] = v122;
              v155[4] = v121;
              v155[5] = v120;
              v155[6] = v119;
              v155[7] = v118;
              v132 = *(&v153 | v116 & 0xF) & 0xF;
              v133 = *(v155 + v132);
              v154[0] = v131;
              v154[1] = v130;
              v154[2] = v129;
              v154[3] = v128;
              v134 = v133 * *(v154 + v132);
              if (v134 > v115)
              {
                v115 = v134;
              }

              ++v116;
            }

            while (v114 != v116);
            v135 = *&v113[*v59];
            v136 = v135;
            if (v135 < 8u)
            {
              goto LABEL_65;
            }

LABEL_52:
            if (v115 * (v135 >> 3) <= v58)
            {
              goto LABEL_69;
            }
          }

          else
          {
            v115 = 0;
            v135 = *&v113[*v59];
            v136 = v135;
            if (v135 >= 8u)
            {
              goto LABEL_52;
            }

LABEL_65:
            if (v136)
            {
              v137 = (v135 + 7) / v135;
              if ((v115 + v137 - 1) / v137 <= v58)
              {
                goto LABEL_69;
              }
            }

            else if (v115 <= v58)
            {
              goto LABEL_69;
            }
          }

          if (MTLReportFailureTypeEnabled())
          {
            v138 = objc_opt_class();
            v146[0] = NSStringFromClass(v138);
            [v113 debugDescription];
            MTLReportFailure();
          }
        }

LABEL_69:
        ++v112;
      }

      while (v112 != v110);
      v139 = [arrays countByEnumeratingWithState:&v162 objects:v174 count:16];
      v110 = v139;
    }

    while (v139);
  }

LABEL_74:
  CallNDArrayGradientEncode(selfCopy, encoderCopy, bufferCopy, numberOfDimensions - 1, v149, v175, 0);
  v140 = gradientCopy3;
  for (j = 0; j < [arrays count]; ++j)
  {
    v142 = [arrays objectAtIndexedSubscript:j];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      MPSDecrementReadCount(v142);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    MPSDecrementReadCount(v140);
  }

  kdebug_trace();
  v143 = *MEMORY[0x277D85DE8];
}

- (void)encodeToCommandBuffer:(id)buffer sourceArrays:(id)arrays sourceGradient:(id)gradient gradientState:(id)state destinationArray:(id)array kernelDAGObject:(id)object
{
  v15 = [objc_alloc(MEMORY[0x277CD7210]) initWithCommandBuffer:buffer withDispatchType:0];
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
  {
    v16 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
    if (v16 || (v17 = objc_opt_class(), v18 = NSStringFromClass(v17), [(MPSKernel *)self setLabel:v18], (v16 = v18) != 0))
    {
      [v15 setLabel:v16];
    }
  }

  [(MPSNDArrayMultiaryGradientKernel *)self encodeToMPSCommandEncoder:v15 commandBuffer:buffer sourceArrays:arrays sourceGradient:gradient gradientState:state destinationArray:array kernelDAGObject:object];
  [v15 endEncoding];
}

@end