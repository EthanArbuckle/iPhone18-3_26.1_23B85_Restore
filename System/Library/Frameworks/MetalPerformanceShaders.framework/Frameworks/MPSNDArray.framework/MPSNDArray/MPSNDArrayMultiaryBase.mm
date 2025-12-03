@interface MPSNDArrayMultiaryBase
- (BOOL)getDestContiguousFunctionConstant:(id)constant;
- (MPSImageEdgeMode)edgeModeAtSourceIndex:(NSUInteger)sourceIndex;
- (MPSNDArrayDescriptor)destinationArrayDescriptorForSourceArrays:(NSArray *)sources sourceState:(MPSState *)state;
- (MPSNDArrayMultiaryBase)copyWithZone:(NSZone *)zone device:(id)device;
- (MPSNDArrayMultiaryBase)initWithCoder:(NSCoder *)coder device:(id)device;
- (MPSNDArrayMultiaryBase)initWithDevice:(id)device sourceCount:(NSUInteger)count;
- (MPSNDArrayOffsets)offsetsAtSourceIndex:(SEL)index;
- (MPSNDArrayOffsets)stridesForSourceIndex:(SEL)index;
- (MPSNDArraySizes)dilationRatesForSourceIndex:(SEL)index;
- (MPSNDArraySizes)kernelSizesForSourceIndex:(SEL)index;
- (MPSState)resultStateForSourceArrays:(NSArray *)sourceArrays sourceStates:(NSArray *)sourceStates destinationArray:(MPSNDArray *)destinationArray;
- (__n128)destinationStrides;
- (__n128)stridesAtSourceIndex:(__n128 *)index@<X8>;
- (id)reshapeFitToTileToCommandBuffer:(id)buffer currentSource:(id)source kernelDimension:(unint64_t)dimension dimensionsToBeRetained:;
- (id)temporaryResultStateForCommandBuffer:(id)buffer sourceArrays:(id)arrays sourceStates:(id)states destinationArray:(id)array;
- (id)workloadStatisticsForSourceArrays:(id)arrays destArrays:(id)destArrays kernel:(id)kernel kernelDAGObject:(id)object sourceState:(id)state;
- (id)workloadStatisticsForSourceArrays:(id)arrays destArrays:(id)destArrays sourceState:(id)state;
- (id)workloadStatisticsForSourceArrays:(id)arrays sourceState:(id)state;
- (unint64_t)maxSupportedArraySizeForIsDestination:(BOOL)destination;
- (void)copyToGradientState:(id)state sourceArrays:(id)arrays sourceStates:(id)states destinationArray:(id)array;
- (void)dealloc;
- (void)encodeWithCoder:(NSCoder *)coder;
- (void)kernelDAGObjectSetup:(id *)setup sourceArrays:(id)arrays sourceGradient:(id)gradient destination:(id)destination;
- (void)setIndexingArithmaticTypeMask:(id *)mask sourceArrays:(id)arrays sourceGradient:(id)gradient destination:(id)destination tileDimensions:(unint64_t)dimensions;
@end

@implementation MPSNDArrayMultiaryBase

- (__n128)stridesAtSourceIndex:(__n128 *)index@<X8>
{
  result.n128_u64[0] = 0x100000001;
  result.n128_u64[1] = 0x100000001;
  index[2] = result;
  index[3] = result;
  *index = result;
  index[1] = result;
  return result;
}

- (__n128)destinationStrides
{
  result.n128_u64[0] = 0x100000001;
  result.n128_u64[1] = 0x100000001;
  self[2] = result;
  self[3] = result;
  *self = result;
  self[1] = result;
  return result;
}

- (MPSNDArrayMultiaryBase)initWithDevice:(id)device sourceCount:(NSUInteger)count
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (count)
    {
      if (MTLReportFailureTypeEnabled())
      {
        goto LABEL_10;
      }

      goto LABEL_11;
    }
  }

  else if (!count)
  {
    if (MTLReportFailureTypeEnabled())
    {
LABEL_10:
      v11 = objc_opt_class();
      NSStringFromClass(v11);
      NSStringFromSelector(a2);
      MTLReportFailure();
    }

LABEL_11:

    return 0;
  }

  v12.receiver = self;
  v12.super_class = MPSNDArrayMultiaryBase;
  result = [(MPSKernel *)&v12 initWithDevice:device];
  if (result)
  {
    result->_srcCount = count;
    result->_encodeData = result;
    result->_encodeGradient = 0;
    v9 = result;
    defaultAllocator = [MEMORY[0x277CD72B8] defaultAllocator];
    result = v9;
    v9->_destinationArrayAllocator = defaultAllocator;
    v9->_defaultKernelDAG = 0;
    v9->_defaultGradientDAG = 0;
  }

  return result;
}

- (void)copyToGradientState:(id)state sourceArrays:(id)arrays sourceStates:(id)states destinationArray:(id)array
{
  *(state + 16) = 123928;
  if ([arrays count])
  {
    if (self)
    {
      v9 = 0;
      v10 = 0;
      v11 = MEMORY[0x277CD73F8];
      do
      {
        [(MPSNDArrayMultiaryBase *)self stridesAtSourceIndex:v10];
        v13 = v19;
        v12 = v20;
        v14 = v22;
        v15 = (*(state + 7) + v9);
        v15[2] = v21;
        v15[3] = v14;
        *v15 = v13;
        v15[1] = v12;
        *(*(state + 7) + v9 + 64) = *([arrays objectAtIndexedSubscript:v10++] + *v11);
        v9 += 80;
      }

      while (v10 < [arrays count]);
    }

    else
    {
      v16 = 0;
      v17 = MEMORY[0x277CD73F8];
      do
      {
        v18 = (*(state + 7) + v16);
        v18[2] = 0u;
        v18[3] = 0u;
        *v18 = 0u;
        v18[1] = 0u;
        *(*(state + 7) + v16 + 64) = *([arrays objectAtIndexedSubscript:self] + *v17);
        self = (self + 1);
        v16 += 80;
      }

      while (self < [arrays count]);
    }
  }
}

- (MPSState)resultStateForSourceArrays:(NSArray *)sourceArrays sourceStates:(NSArray *)sourceStates destinationArray:(MPSNDArray *)destinationArray
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 0;
  }

  v9 = [[MPSNDArrayGradientState alloc] initWithSourceCount:[(NSArray *)sourceArrays count]];
  if (v9)
  {
    [(MPSNDArrayMultiaryBase *)self copyToGradientState:v9 sourceArrays:sourceArrays sourceStates:sourceStates destinationArray:destinationArray];
    if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 0x10) != 0)
    {
      v10 = MEMORY[0x277CCACA8];
      v11 = objc_opt_class();
      -[MPSState setLabel:](v9, "setLabel:", [v10 stringWithFormat:@"created by %@", NSStringFromClass(v11)]);
    }
  }

  return &v9->super;
}

- (id)temporaryResultStateForCommandBuffer:(id)buffer sourceArrays:(id)arrays sourceStates:(id)states destinationArray:(id)array
{
  v10 = -[MPSNDArrayGradientState initWithSourceCount:]([MPSNDArrayGradientState alloc], "initWithSourceCount:", [arrays count]);
  if (v10)
  {
    [(MPSNDArrayMultiaryBase *)self copyToGradientState:v10 sourceArrays:arrays sourceStates:states destinationArray:array];
    if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 0x10) != 0)
    {
      v11 = MEMORY[0x277CCACA8];
      v12 = objc_opt_class();
      -[MPSState setLabel:](v10, "setLabel:", [v11 stringWithFormat:@"created by %@", NSStringFromClass(v12)]);
    }
  }

  return v10;
}

- (unint64_t)maxSupportedArraySizeForIsDestination:(BOOL)destination
{
  v4 = objc_opt_class();
  v5 = *MEMORY[0x277CD7350];
  v6 = [v4 supportsPrefixForDevice:*(&self->super.super.isa + v5)];
  if ((v6 & [objc_opt_class() supportsPostfixForDevice:*(&self->super.super.isa + v5)]) != 0)
  {
    return 0x400000000000000;
  }

  else
  {
    return 0x400000000;
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayMultiaryBase;
  [(MPSKernel *)&v3 dealloc];
}

- (MPSNDArrayMultiaryBase)initWithCoder:(NSCoder *)coder device:(id)device
{
  v19.receiver = self;
  v19.super_class = MPSNDArrayMultiaryBase;
  v6 = [(MPSKernel *)&v19 initWithCoder:coder device:device];
  v7 = v6;
  if (v6)
  {
    if ((*(&v6->super.super.isa + *MEMORY[0x277CD7358]) & 0xFF00) == 0x100)
    {
      v6->_srcCount = [(NSCoder *)coder decodeIntegerForKey:@"MultiaryNDArrayBase.srcCount"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 || v7->_srcCount)
      {
        v20 = 0;
        v8 = [(NSCoder *)coder decodeBytesForKey:@"MultiaryNDArrayBase.ac" returnedLength:&v20];
        if (v20)
        {
          v9 = v8;
          if (v8)
          {
            v10 = objc_alloc(MEMORY[0x277CCACA8]);
            v11 = [v10 initWithBytes:v9 length:v20 - 1 encoding:1];
            v12 = v11;
            if (v11)
            {
              v13 = NSClassFromString(v11);
              if (v13)
              {
                v14 = v13;
                if (!&unk_284CD1AA8 || ([(objc_class *)v13 conformsToProtocol:&unk_284CD1AA8]& 1) != 0)
                {
                  defaultAllocator = [(NSCoder *)coder decodeObjectOfClass:v14 forKey:@"MultiaryNDArrayBase.oc"];
                  if (defaultAllocator)
                  {
                    goto LABEL_18;
                  }
                }
              }

              else if (MTLReportFailureTypeEnabled())
              {
                v18 = v11;
                MTLReportFailure();
              }
            }
          }
        }

        defaultAllocator = [MEMORY[0x277CD72B8] defaultAllocator];
LABEL_18:
        [(MPSNDArrayMultiaryBase *)v7 setDestinationArrayAllocator:defaultAllocator];
        v7->_encodeData = v7;
        v7->_encodeGradient = 0;
        v7->_defaultKernelDAG = 0;
        v7->_defaultGradientDAG = 0;
        return v7;
      }
    }

    else if ((*(&v6->super.super.isa + *MEMORY[0x277CD7358]) & 0xFFFF0000) != 0x10000 && MTLReportFailureTypeEnabled())
    {
      v17 = objc_opt_class();
      NSStringFromClass(v17);
      NSStringFromSelector(a2);
      MTLReportFailure();
    }

    return 0;
  }

  return v7;
}

- (void)encodeWithCoder:(NSCoder *)coder
{
  *(&self->super.super.isa + *MEMORY[0x277CD7358]) = *(&self->super.super.isa + *MEMORY[0x277CD7358]) | 0x10100;
  v11.receiver = self;
  v11.super_class = MPSNDArrayMultiaryBase;
  [(MPSKernel *)&v11 encodeWithCoder:?];
  destinationArrayAllocator = self->_destinationArrayAllocator;
  v6 = objc_autoreleasePoolPush();
  v7 = objc_opt_class();
  if (v7)
  {
    v8 = [NSStringFromClass(v7) cStringUsingEncoding:1];
    if (v8)
    {
      v9 = v8;
      v10 = strlen(v8);
      if (v10)
      {
        [(NSCoder *)coder encodeBytes:v9 length:v10 + 1 forKey:@"MultiaryNDArrayBase.ac"];
        [(NSCoder *)coder encodeObject:destinationArrayAllocator forKey:@"MultiaryNDArrayBase.oc"];
      }
    }
  }

  objc_autoreleasePoolPop(v6);
  [(NSCoder *)coder encodeInteger:self->_srcCount forKey:@"MultiaryNDArrayBase.srcCount"];
}

- (MPSNDArrayMultiaryBase)copyWithZone:(NSZone *)zone device:(id)device
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayMultiaryBase;
  result = [(MPSKernel *)&v8 copyWithZone:zone device:device];
  if (result)
  {
    result->_srcCount = self->_srcCount;
    v7 = result;
    [(MPSNDArrayMultiaryBase *)result setDestinationArrayAllocator:[(MPSNDArrayAllocator *)self->_destinationArrayAllocator copyWithZone:zone]];
    result = v7;
    v7->_encodeData = v7;
    v7->_encodeGradient = self->_encodeGradient;
    v7->_defaultKernelDAG = 0;
    v7->_defaultGradientDAG = 0;
  }

  return result;
}

- (MPSNDArrayOffsets)offsetsAtSourceIndex:(SEL)index
{
  if ((*(self->dimensions + *MEMORY[0x277CD7378]) & 1) == 0 && self->dimensions[11] <= sourceIndex)
  {
    selfCopy = self;
    v5 = retstr;
    self = MTLReportFailureTypeEnabled();
    retstr = v5;
    if (self)
    {
      v7 = objc_opt_class();
      NSStringFromClass(v7);
      NSStringFromSelector(index);
      v8 = selfCopy->dimensions[11];
      self = MTLReportFailure();
      retstr = v5;
    }
  }

  *&retstr->dimensions[12] = 0u;
  *&retstr->dimensions[14] = 0u;
  *&retstr->dimensions[8] = 0u;
  *&retstr->dimensions[10] = 0u;
  *&retstr->dimensions[4] = 0u;
  *&retstr->dimensions[6] = 0u;
  *retstr->dimensions = 0u;
  *&retstr->dimensions[2] = 0u;
  return self;
}

- (MPSImageEdgeMode)edgeModeAtSourceIndex:(NSUInteger)sourceIndex
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0 && self->_srcCount <= sourceIndex && MTLReportFailureTypeEnabled())
  {
    v5 = objc_opt_class();
    NSStringFromClass(v5);
    NSStringFromSelector(a2);
    srcCount = self->_srcCount;
    MTLReportFailure();
  }

  return 0;
}

- (MPSNDArrayOffsets)stridesForSourceIndex:(SEL)index
{
  if ((*(self->dimensions + *MEMORY[0x277CD7378]) & 1) == 0 && self->dimensions[11] <= sourceIndex)
  {
    selfCopy = self;
    v5 = retstr;
    self = MTLReportFailureTypeEnabled();
    retstr = v5;
    if (self)
    {
      v7 = objc_opt_class();
      NSStringFromClass(v7);
      NSStringFromSelector(index);
      v8 = selfCopy->dimensions[11];
      self = MTLReportFailure();
      retstr = v5;
    }
  }

  *&retstr->dimensions[12] = 0u;
  *&retstr->dimensions[14] = 0u;
  *&retstr->dimensions[8] = 0u;
  *&retstr->dimensions[10] = 0u;
  *&retstr->dimensions[4] = 0u;
  *&retstr->dimensions[6] = 0u;
  *retstr->dimensions = xmmword_239B0A0D0;
  *&retstr->dimensions[2] = 0u;
  return self;
}

- (MPSNDArraySizes)dilationRatesForSourceIndex:(SEL)index
{
  if ((*(self->dimensions + *MEMORY[0x277CD7378]) & 1) == 0 && self->dimensions[11] <= sourceIndex)
  {
    selfCopy = self;
    v5 = retstr;
    self = MTLReportFailureTypeEnabled();
    retstr = v5;
    if (self)
    {
      v7 = objc_opt_class();
      NSStringFromClass(v7);
      NSStringFromSelector(index);
      v8 = selfCopy->dimensions[11];
      self = MTLReportFailure();
      retstr = v5;
    }
  }

  *&retstr->dimensions[12] = 0u;
  *&retstr->dimensions[14] = 0u;
  *&retstr->dimensions[8] = 0u;
  *&retstr->dimensions[10] = 0u;
  *&retstr->dimensions[4] = 0u;
  *&retstr->dimensions[6] = 0u;
  *retstr->dimensions = xmmword_239B0A0D0;
  *&retstr->dimensions[2] = 0u;
  return self;
}

- (MPSNDArraySizes)kernelSizesForSourceIndex:(SEL)index
{
  if ((*(self->dimensions + *MEMORY[0x277CD7378]) & 1) == 0 && self->dimensions[11] <= sourceIndex)
  {
    selfCopy = self;
    v5 = retstr;
    self = MTLReportFailureTypeEnabled();
    retstr = v5;
    if (self)
    {
      v7 = objc_opt_class();
      NSStringFromClass(v7);
      NSStringFromSelector(index);
      v8 = selfCopy->dimensions[11];
      self = MTLReportFailure();
      retstr = v5;
    }
  }

  *&retstr->dimensions[12] = 0u;
  *&retstr->dimensions[14] = 0u;
  *&retstr->dimensions[8] = 0u;
  *&retstr->dimensions[10] = 0u;
  *&retstr->dimensions[4] = 0u;
  *&retstr->dimensions[6] = 0u;
  *retstr->dimensions = xmmword_239B0A0D0;
  *&retstr->dimensions[2] = 0u;
  return self;
}

- (MPSNDArrayDescriptor)destinationArrayDescriptorForSourceArrays:(NSArray *)sources sourceState:(MPSState *)state
{
  v83[16] = *MEMORY[0x277D85DE8];
  [-[NSArray objectAtIndexedSubscript:](sources objectAtIndexedSubscript:{0), "descriptor"}];
  [(MPSNDArrayMultiaryBase *)self dimensionsNotToBeBroadcast];
  v52 = v6;
  v7 = [(NSArray *)sources objectAtIndexedSubscript:0];
  v8 = &v7[*MEMORY[0x277CD7410]];
  v48 = *(v8 + 1);
  v50 = *v8;
  v44 = *(v8 + 3);
  v46 = *(v8 + 2);
  v9 = [(NSArray *)sources objectAtIndexedSubscript:0];
  v10 = MEMORY[0x277CD73D8];
  v11 = *&v9[*MEMORY[0x277CD73D8]];
  v82[3] = v44;
  v82[2] = v46;
  v82[1] = v48;
  v82[0] = v50;
  v83[0] = *(v82 + (v11 & 0xF));
  v12 = *([(NSArray *)sources objectAtIndexedSubscript:0]+ *v10 + 1) & 0xF;
  v81[3] = v44;
  v81[2] = v46;
  v81[1] = v48;
  v81[0] = v50;
  v83[1] = *(v81 + v12);
  v13 = *([(NSArray *)sources objectAtIndexedSubscript:0]+ *v10 + 2) & 0xF;
  v80[3] = v44;
  v80[2] = v46;
  v80[1] = v48;
  v80[0] = v50;
  v83[2] = *(v80 + v13);
  v14 = *([(NSArray *)sources objectAtIndexedSubscript:0]+ *v10 + 3) & 0xF;
  v79[3] = v44;
  v79[2] = v46;
  v79[1] = v48;
  v79[0] = v50;
  v83[3] = *(v79 + v14);
  v15 = *([(NSArray *)sources objectAtIndexedSubscript:0]+ *v10 + 4) & 0xF;
  v78[3] = v44;
  v78[2] = v46;
  v78[1] = v48;
  v78[0] = v50;
  v83[4] = *(v78 + v15);
  v16 = *([(NSArray *)sources objectAtIndexedSubscript:0]+ *v10 + 5) & 0xF;
  v77[3] = v44;
  v77[2] = v46;
  v77[1] = v48;
  v77[0] = v50;
  v83[5] = *(v77 + v16);
  v17 = *([(NSArray *)sources objectAtIndexedSubscript:0]+ *v10 + 6) & 0xF;
  v76[3] = v44;
  v76[2] = v46;
  v76[1] = v48;
  v76[0] = v50;
  v83[6] = *(v76 + v17);
  v18 = *([(NSArray *)sources objectAtIndexedSubscript:0]+ *v10 + 7) & 0xF;
  v75[3] = v44;
  v75[2] = v46;
  v75[1] = v48;
  v75[0] = v50;
  v83[7] = *(v75 + v18);
  v19 = *([(NSArray *)sources objectAtIndexedSubscript:0]+ *v10 + 8) & 0xF;
  v74[3] = v44;
  v74[2] = v46;
  v74[1] = v48;
  v74[0] = v50;
  v83[8] = *(v74 + v19);
  v20 = *([(NSArray *)sources objectAtIndexedSubscript:0]+ *v10 + 9) & 0xF;
  v73[3] = v44;
  v73[2] = v46;
  v73[0] = v50;
  v73[1] = v48;
  v83[9] = *(v73 + v20);
  v21 = *([(NSArray *)sources objectAtIndexedSubscript:0]+ *v10 + 10) & 0xF;
  v72[2] = v46;
  v72[3] = v44;
  v72[0] = v50;
  v72[1] = v48;
  v83[10] = *(v72 + v21);
  v22 = *([(NSArray *)sources objectAtIndexedSubscript:0]+ *v10 + 11) & 0xF;
  v71[2] = v46;
  v71[3] = v44;
  v71[0] = v50;
  v71[1] = v48;
  v83[11] = *(v71 + v22);
  v23 = *([(NSArray *)sources objectAtIndexedSubscript:0]+ *v10 + 12) & 0xF;
  v70[2] = v46;
  v70[3] = v44;
  v70[0] = v50;
  v70[1] = v48;
  v83[12] = *(v70 + v23);
  v24 = *([(NSArray *)sources objectAtIndexedSubscript:0]+ *v10 + 13) & 0xF;
  v69[2] = v46;
  v69[3] = v44;
  v69[0] = v50;
  v69[1] = v48;
  v83[13] = *(v69 + v24);
  v25 = *([(NSArray *)sources objectAtIndexedSubscript:0]+ *v10 + 14) & 0xF;
  v68[2] = v46;
  v68[3] = v44;
  v68[0] = v50;
  v68[1] = v48;
  v83[14] = *(v68 + v25);
  v26 = *([(NSArray *)sources objectAtIndexedSubscript:0]+ *v10 + 15) & 0xF;
  v67[2] = v46;
  v67[3] = v44;
  v67[0] = v50;
  v67[1] = v48;
  v83[15] = *(v67 + v26);
  v27 = [(NSArray *)sources objectAtIndexedSubscript:0];
  v28 = *&v27[*MEMORY[0x277CD73F0]];
  if ([(NSArray *)sources count]>= 2)
  {
    v29 = 1;
    do
    {
      v30 = [(NSArray *)sources objectAtIndexedSubscript:v29];
      v31 = *&v30[*MEMORY[0x277CD73F0]];
      v32 = [(NSArray *)sources objectAtIndexedSubscript:v29];
      v33 = 0;
      v34 = &v32[*MEMORY[0x277CD7410]];
      v49 = *(v34 + 2);
      v51 = *(v34 + 3);
      v45 = *v34;
      v47 = *(v34 + 1);
      do
      {
        v66 = v52;
        if (*(&v66 | v33 & 0xF) != 1)
        {
          v35 = v83[v33];
          v64 = *([(NSArray *)sources objectAtIndexedSubscript:v29]+ *v10);
          v65[0] = v45;
          v65[1] = v47;
          v65[2] = v49;
          v65[3] = v51;
          v36 = *(v65 + (*(&v64 | v33 & 0xF) & 0xF));
          if (v35 == 1)
          {
            if (v36 != 1)
            {
              v53 = *([(NSArray *)sources objectAtIndexedSubscript:v29]+ *v10);
              v54[0] = v45;
              v54[1] = v47;
              v54[2] = v49;
              v54[3] = v51;
              v83[v33] = *(v54 + (*(&v53 | v33 & 0xF) & 0xF));
            }
          }

          else if (v35 != v36)
          {
            v62 = *([(NSArray *)sources objectAtIndexedSubscript:v29]+ *v10);
            v63[0] = v45;
            v63[1] = v47;
            v63[2] = v49;
            v63[3] = v51;
            if (*(v63 + (*(&v62 | v33 & 0xF) & 0xF)) != 1)
            {
              v60 = *([(NSArray *)sources objectAtIndexedSubscript:v29]+ *v10);
              v61[0] = v45;
              v61[1] = v47;
              v61[2] = v49;
              v61[3] = v51;
              if (*(v61 + (*(&v60 | v33 & 0xF) & 0xF)) != 1)
              {
                [(NSArray *)sources objectAtIndexedSubscript:v29];
              }

              v58 = *([(NSArray *)sources objectAtIndexedSubscript:v29, v41, v42]+ *v10);
              v59[0] = v45;
              v59[1] = v47;
              v59[2] = v49;
              v59[3] = v51;
              if (*(v59 + (*(&v58 | v33 & 0xF) & 0xF)) != 1)
              {
                v56 = *([(NSArray *)sources objectAtIndexedSubscript:v29]+ *v10);
                v57[0] = v45;
                v57[1] = v47;
                v57[2] = v49;
                v57[3] = v51;
                if (*(v57 + (*(&v56 | v33 & 0xF) & 0xF)))
                {
                  if (MTLReportFailureTypeEnabled())
                  {
                    v55 = *([(NSArray *)sources objectAtIndexedSubscript:v29]+ *v10);
                    v41 = v29;
                    v42 = *(&v55 | v33 & 0xF);
                    MTLReportFailure();
                  }
                }
              }
            }
          }
        }

        ++v33;
      }

      while (v33 != 16);
      if (v28 <= v31)
      {
        v28 = v31;
      }

      ++v29;
    }

    while (v29 < [(NSArray *)sources count:v41]);
  }

  v37 = [MEMORY[0x277CD7268] descriptorWithDataType:objc_msgSend(-[NSArray objectAtIndexedSubscript:](sources dimensionCount:"objectAtIndexedSubscript:" dimensionSizes:{0), "dataType"), v28, v83}];
  if (state)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v38 = [(MPSState *)state destinationArrayDescriptorForSourceArrays:sources sourceGradientIndex:self[1].super.super.isa];
LABEL_26:
        v37 = v38;
      }
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v38 = [-[NSArray objectAtIndexedSubscript:](sources objectAtIndexedSubscript:{self[1].super.super.isa), "descriptor"}];
      goto LABEL_26;
    }
  }

  v39 = *MEMORY[0x277D85DE8];
  return v37;
}

- (id)workloadStatisticsForSourceArrays:(id)arrays sourceState:(id)state
{
  v4 = objc_opt_new();

  return v4;
}

- (id)workloadStatisticsForSourceArrays:(id)arrays destArrays:(id)destArrays kernel:(id)kernel kernelDAGObject:(id)object sourceState:(id)state
{
  object = [(MPSNDArrayMultiaryBase *)self workloadStatisticsForSourceArrays:arrays destArrays:destArrays sourceState:state, object];
  MPSKernel_LogInfo(kernel, v9, "Logging Unimplemented\n");
  return object;
}

- (id)workloadStatisticsForSourceArrays:(id)arrays destArrays:(id)destArrays sourceState:(id)state
{
  v7 = objc_opt_new();
  [v7 setDeviceMemoryBytesRead:0.0];
  [v7 setDeviceMemoryBytesWrite:0.0];
  v8 = [arrays count];
  v9 = MEMORY[0x277CD7410];
  v10 = MEMORY[0x277CD73C8];
  if (v8)
  {
    v11 = 0;
    do
    {
      v15 = [objc_msgSend(arrays objectAtIndexedSubscript:{v11), "numberOfDimensions"}];
      if (v15)
      {
        v16 = v15;
        v17 = 0;
        v12 = 1;
        do
        {
          v12 *= *([arrays objectAtIndexedSubscript:v11] + *v9 + 4 * (v17++ & 0xF));
        }

        while (v16 != v17);
      }

      else
      {
        v12 = 1;
      }

      v13 = v12 * (*([arrays objectAtIndexedSubscript:v11] + *v10) >> 3);
      [v7 deviceMemoryBytesRead];
      [v7 setDeviceMemoryBytesRead:v14 + v13];
      ++v11;
    }

    while (v11 < [arrays count]);
  }

  numberOfDimensions = [destArrays numberOfDimensions];
  if (numberOfDimensions)
  {
    v19 = 0;
    v20 = (destArrays + *v9);
    v22 = v20[2];
    v21 = v20[3];
    v24 = *v20;
    v23 = v20[1];
    v25 = 1;
    do
    {
      v29 = v24;
      v30 = v23;
      v31 = v22;
      v32 = v21;
      v25 *= *(&v29 + (v19++ & 0xF));
    }

    while (numberOfDimensions != v19);
  }

  else
  {
    v25 = 1;
  }

  v26 = v25 * (*(destArrays + *v10) >> 3);
  [v7 deviceMemoryBytesWrite];
  [v7 setDeviceMemoryBytesWrite:v27 + v26];
  return v7;
}

- (id)reshapeFitToTileToCommandBuffer:(id)buffer currentSource:(id)source kernelDimension:(unint64_t)dimension dimensionsToBeRetained:
{
  v36 = *MEMORY[0x277D85DE8];
  v9 = dimension + 1;
  if (dimension + 1 <= 0xF)
  {
    v10 = dimension + 2;
    do
    {
      v34 = v5;
      if (v9 < v10 - 1 && *(&v34 | (v10 - 1) & 0xF) != 0)
      {
        v9 = v10;
      }

      ++v10;
    }

    while (v10 != 17);
  }

  descriptor = [source descriptor];
  v13 = descriptor;
  v14 = (source + *MEMORY[0x277CD7410]);
  v16 = v14[2];
  v15 = v14[3];
  v18 = *v14;
  v17 = v14[1];
  v35[4] = xmmword_239B146A0;
  v35[5] = unk_239B146B0;
  v35[6] = xmmword_239B146C0;
  v35[7] = unk_239B146D0;
  v35[0] = xmmword_239B14660;
  v35[1] = unk_239B14670;
  v35[2] = xmmword_239B14680;
  v35[3] = unk_239B14690;
  v19 = dimension - 1;
  if (dimension >= 17)
  {
    *&v35[0] = 1;
LABEL_24:
    v24 = 0;
    v25 = *&descriptor[*MEMORY[0x277CD7438]];
    do
    {
      v29 = v25;
      v30[0] = v18;
      v30[1] = v17;
      v30[2] = v16;
      v30[3] = v15;
      *(v35 + v24) = *(v30 + (*(&v29 | v24 & 0xF) & 0xF));
      ++v24;
    }

    while (v19 != v24);
    goto LABEL_26;
  }

  v20 = 15;
  LODWORD(v21) = 1;
  v22 = 1;
  do
  {
    v33[0] = v18;
    v33[1] = v17;
    v33[2] = v16;
    v33[3] = v15;
    v21 = (*(v33 + (v20 & 0xF)) * v21);
    if (v20 < 1)
    {
      if (!v20)
      {
        v22 = LODWORD(v33[0]);
      }
    }

    else
    {
      v32 = v28;
      if (*(&v32 | (v20 - 1) & 0xF) == 1 || (v31 = v28, *(&v31 | v20 & 0xF) == 1))
      {
        *(v35 + v20) = v21;
        LODWORD(v21) = 1;
      }

      else if (v20 == v19)
      {
        *(v35 + v19) = v21;
      }

      else
      {
        *(v35 + v20) = 1;
      }
    }
  }

  while (v20-- >= dimension);
  *&v35[0] = v22;
  if (dimension != 1)
  {
    goto LABEL_24;
  }

LABEL_26:
  [descriptor reshapeWithDimensionCount:v9 dimensionSizes:v35];
  result = [source arrayViewWithCommandBuffer:buffer descriptor:v13 aliasing:0];
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)getDestContiguousFunctionConstant:(id)constant
{
  v4 = [(MPSNDArrayMultiaryBase *)self usesVectorFunctionsOnOutput:?];
  if (v4)
  {
    LOBYTE(v4) = *(constant + *MEMORY[0x277CD73D8]) == 0;
  }

  return v4;
}

- (void)setIndexingArithmaticTypeMask:(id *)mask sourceArrays:(id)arrays sourceGradient:(id)gradient destination:(id)destination tileDimensions:(unint64_t)dimensions
{
  [*mask graph];
  if (!((4 * [arrays count] + 9) >> 62))
  {
    operator new();
  }

  std::vector<long>::__throw_length_error[abi:ne200100]();
}

- (void)kernelDAGObjectSetup:(id *)setup sourceArrays:(id)arrays sourceGradient:(id)gradient destination:(id)destination
{
  selfCopy = self;
  v130 = *MEMORY[0x277D85DE8];
  srcCount = self->_srcCount;
  if (gradient)
  {
    ++srcCount;
    v124 = [arrays count] + 1;
    destinationCopy2 = destination;
    if (*setup)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v124 = [arrays count];
    destinationCopy2 = destination;
    if (*setup)
    {
      goto LABEL_41;
    }
  }

  v10 = 3;
  if (!gradient)
  {
    v10 = 2;
  }

  v11 = OBJC_IVAR___MPSNDArrayMultiaryMultiDestinationBase__srcCount[v10];
  v120 = v11;
  v121 = selfCopy;
  v12 = *(&selfCopy->super.super.isa + v11);
  if (!v12)
  {
LABEL_40:
    operator new();
  }

  v119 = *(&selfCopy->super.super.isa + v11);
  graph = [v12 graph];
  v14 = MEMORY[0x277CD73F0];
  v15 = MEMORY[0x277CD7410];
  v16 = MEMORY[0x277CD73D8];
  if (!srcCount)
  {
    goto LABEL_26;
  }

  v17 = graph;
  v18 = 0;
  for (i = 0; i != srcCount; ++i)
  {
    v20 = [arrays count];
    gradientCopy = gradient;
    if (v20 > i)
    {
      gradientCopy = [arrays objectAtIndexedSubscript:i];
    }

    v22 = **(v17 + 64);
    if (i >= (*(*(v17 + 64) + 8) - v22) >> 3)
    {
LABEL_130:
      std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
    }

    v24 = *(*(v22 + 8 * i) + 24);
    v23 = *v24;
    if (*(v24 + 8) == *v24)
    {
      goto LABEL_129;
    }

    v25 = *v23;
    v26 = *&gradientCopy[*v14];
    v27 = *(v25 + 16);
    v28 = (v27[1] - *v27) >> 3;
    if (v26 <= v28)
    {
      if (v26 < v28)
      {
        v27[1] = *v27 + 8 * v26;
      }
    }

    else
    {
      v29 = gradientCopy;
      std::vector<long>::__append(*(v25 + 16), v26 - v28);
      gradientCopy = v29;
      v26 = *&v29[*v14];
    }

    if (v26)
    {
      v30 = 0;
      v31 = *v27;
      v32 = (v27[1] - *v27) >> 3;
      while (v32 != v30)
      {
        v33 = &gradientCopy[*v15];
        v128 = *&gradientCopy[*v16];
        *(v31 + 8 * v30) = *&v33[4 * (*(&v128 | v30 & 0xF) & 0xF)];
        if (++v30 >= *&gradientCopy[*v14])
        {
          goto LABEL_22;
        }
      }

LABEL_126:
      std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
    }

LABEL_22:
    v34 = **(v17 + 64);
    if (i >= (*(*(v17 + 64) + 8) - v34) >> 3)
    {
      goto LABEL_130;
    }

    v36 = *(*(v34 + 8 * i) + 24);
    v35 = *v36;
    if (v36[1] == *v36)
    {
      goto LABEL_129;
    }

    v37 = *(*v35 + 8);
    v18 |= v37 != [gradientCopy dataType];
  }

  destination = destinationCopy2;
  if (v18)
  {
LABEL_39:

    selfCopy = v121;
    *(&v121->super.super.isa + v120) = 0;
    if (!*setup)
    {
      goto LABEL_40;
    }

LABEL_41:
    if (*(&selfCopy->super.super.isa + *MEMORY[0x277CD7378]))
    {
      goto LABEL_115;
    }

    goto LABEL_42;
  }

LABEL_26:
  finalOp = [v119 finalOp];
  v39 = **(finalOp + 24);
  if (*(*(finalOp + 24) + 8) == v39)
  {
    goto LABEL_129;
  }

  v40 = *v39;
  v41 = *(destination + *v14);
  v42 = *(v40 + 16);
  v43 = (v42[1] - *v42) >> 3;
  if (v41 <= v43)
  {
    if (v41 < v43)
    {
      v42[1] = *v42 + 8 * v41;
    }
  }

  else
  {
    std::vector<long>::__append(*(v40 + 16), v41 - v43);
    v41 = *(destination + *v14);
  }

  if (v41)
  {
    v44 = 0;
    v45 = *v42;
    v46 = (v42[1] - *v42) >> 3;
    while (v46 != v44)
    {
      v47 = destination + *v15;
      v127 = *(destination + *v16);
      *(v45 + 8 * v44) = *&v47[4 * (*(&v127 | v44 & 0xF) & 0xF)];
      if (++v44 >= *(destination + *v14))
      {
        goto LABEL_35;
      }
    }

    goto LABEL_126;
  }

LABEL_35:
  finalOp2 = [v119 finalOp];
  v49 = **(finalOp2 + 24);
  if (*(*(finalOp2 + 24) + 8) == v49)
  {
LABEL_129:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v50 = *(*v49 + 8);
  if (v50 != [destination dataType])
  {
    goto LABEL_39;
  }

  *setup = v119;
  if (*(&v121->super.super.isa + *MEMORY[0x277CD7378]))
  {
    goto LABEL_115;
  }

LABEL_42:
  graph2 = [*setup graph];
  if (*(*(graph2 + 56) + 8) - **(graph2 + 56) != 8 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v52 = **(graph2 + 56);
  if (*(*(graph2 + 56) + 8) == v52)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  if (srcCount != (*(*(*v52 + 8) + 8) - **(*v52 + 8)) >> 3 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v53 = v124;
  if (v124 != (*(*(graph2 + 64) + 8) - **(graph2 + 64)) >> 3)
  {
    v116 = MTLReportFailureTypeEnabled();
    v53 = v124;
    if (v116)
    {
      MTLReportFailure();
      v53 = v124;
    }
  }

  if (v53)
  {
    v54 = 0;
    v122 = vdupq_n_s64(1uLL);
    while (1)
    {
      gradientCopy2 = gradient;
      if ([arrays count] > v54)
      {
        gradientCopy2 = [arrays objectAtIndexedSubscript:v54];
      }

      [objc_msgSend(gradientCopy2 "descriptor")];
      v56 = **(graph2 + 64);
      if (v54 >= (*(*(graph2 + 64) + 8) - v56) >> 3)
      {
LABEL_128:
        std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
      }

      v58 = *(*(v56 + 8 * v54) + 24);
      v57 = *v58;
      if (v58[1] == *v58)
      {
        goto LABEL_127;
      }

      v59 = *v129;
      v60 = *(*v57 + 16);
      v61 = *v60;
      v62 = *(v129 + 8) - *v129;
      if (memcmp(*v129, *v60, v62))
      {
        break;
      }

LABEL_76:
      dataType = [gradientCopy2 dataType];
      destination = destinationCopy2;
      if (dataType == -2147483640)
      {
        v86 = 536870920;
      }

      else
      {
        v86 = dataType;
      }

      v87 = **(graph2 + 64);
      if (v54 >= (*(*(graph2 + 64) + 8) - v87) >> 3)
      {
        goto LABEL_128;
      }

      v89 = *(*(v87 + 8 * v54) + 24);
      v88 = *v89;
      if (v89[1] == *v89)
      {
        goto LABEL_127;
      }

      if (v86 != *(*v88 + 8))
      {
        [gradientCopy2 dataType];
        v90 = **(graph2 + 64);
        if (v54 >= (*(*(graph2 + 64) + 8) - v90) >> 3)
        {
          goto LABEL_128;
        }

        if (*(*(*(v90 + 8 * v54) + 24) + 8) == **(*(v90 + 8 * v54) + 24))
        {
LABEL_127:
          std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
        }
      }

      dataType2 = [gradientCopy2 dataType];
      if (dataType2 == -2147483640)
      {
        v92 = 536870920;
      }

      else
      {
        v92 = dataType2;
      }

      v93 = **(graph2 + 64);
      if (v54 >= (*(*(graph2 + 64) + 8) - v93) >> 3)
      {
        goto LABEL_128;
      }

      v95 = *(*(v93 + 8 * v54) + 24);
      v94 = *v95;
      if (v95[1] == *v95)
      {
        goto LABEL_127;
      }

      if (v92 != *(*v94 + 8))
      {
        dataType3 = [gradientCopy2 dataType];
        v97 = **(graph2 + 64);
        if (v54 >= (*(*(graph2 + 64) + 8) - v97) >> 3)
        {
          goto LABEL_128;
        }

        v99 = *(*(v97 + 8 * v54) + 24);
        v98 = *v99;
        if (v99[1] == *v99)
        {
          goto LABEL_127;
        }

        if (dataType3 != *(*v98 + 8) && MTLReportFailureTypeEnabled())
        {
          v117 = v54;
          MTLReportFailure();
        }
      }

      v100 = v129;
      *&v129 = 0;
      if (v100)
      {
        v101 = *v100;
        if (*v100)
        {
          *(v100 + 8) = v101;
          operator delete(v101);
        }

        MEMORY[0x23EE7C8C0](v100, 0x10C402FEFCB83);
      }

      if (++v54 == v124)
      {
        goto LABEL_98;
      }
    }

    v63 = *(v60 + 8) - v61;
    if ((v62 >> 3) < (v63 >> 3))
    {
LABEL_56:
      if (MTLReportFailureTypeEnabled())
      {
        v118 = v54;
        MTLReportFailure();
      }

      goto LABEL_76;
    }

    if ((v63 >> 3) >= (v62 >> 3))
    {
      goto LABEL_76;
    }

    v64 = (v63 >> 3);
    v65 = (v62 >> 3);
    v66 = v65 - v64;
    if ((v65 - v64) < 4)
    {
      LOBYTE(v67) = 1;
      v68 = v64;
      goto LABEL_72;
    }

    if (v66 >= 0x20)
    {
      v69 = v66 & 0xFFFFFFFFFFFFFFE0;
      v70 = (v59 + 8 * v64 + 128);
      v71.i64[0] = 0x101010101010101;
      v71.i64[1] = 0x101010101010101;
      v72 = v66 & 0xFFFFFFFFFFFFFFE0;
      v73.i64[0] = 0x101010101010101;
      v73.i64[1] = 0x101010101010101;
      do
      {
        v74 = vdupq_n_s64(1uLL);
        v71 = vandq_s8(v71, vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_s64(v70[-8], v74), vceqq_s64(v70[-7], v74)), vuzp1q_s32(vceqq_s64(v70[-6], v74), vceqq_s64(v70[-5], v74))), vuzp1q_s16(vuzp1q_s32(vceqq_s64(v70[-4], v74), vceqq_s64(v70[-3], v74)), vuzp1q_s32(vceqq_s64(v70[-2], v74), vceqq_s64(v70[-1], v74)))));
        v73 = vandq_s8(v73, vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_s64(*v70, v74), vceqq_s64(v70[1], v74)), vuzp1q_s32(vceqq_s64(v70[2], v74), vceqq_s64(v70[3], v74))), vuzp1q_s16(vuzp1q_s32(vceqq_s64(v70[4], v74), vceqq_s64(v70[5], v74)), vuzp1q_s32(vceqq_s64(v70[6], v74), vceqq_s64(v70[7], v74)))));
        v70 += 16;
        v72 -= 32;
      }

      while (v72);
      v75 = vcltzq_s8(vshlq_n_s8(vandq_s8(v73, v71), 7uLL));
      v75.i8[0] = vminvq_u8(v75);
      v67 = v75.i16[0];
      if (v66 == v69)
      {
        goto LABEL_75;
      }

      if ((v66 & 0x1C) == 0)
      {
        v68 = v64 + v69;
LABEL_72:
        v81 = v68 - v65;
        v82 = (v59 + 8 * v68);
        do
        {
          v83 = *v82++;
          LOBYTE(v67) = v67 & (v83 == 1);
        }

        while (!__CFADD__(v81++, 1));
        goto LABEL_75;
      }
    }

    else
    {
      v69 = 0;
      v67 = 1;
    }

    v68 = v64 + (v66 & 0xFFFFFFFFFFFFFFFCLL);
    v76 = -1;
    v76.i16[0] = v67;
    v77 = (v59 + 8 * v69 + 8 * v64);
    v78 = v69 - (v66 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v79 = *v77;
      v80 = v77[1];
      v77 += 2;
      v76 = vand_s8(v76, vmovn_s32(vuzp1q_s32(vceqq_s64(v79, v122), vceqq_s64(v80, v122))));
      v78 += 4;
    }

    while (v78);
    LOBYTE(v67) = vminv_u16(vcltz_s16(vshl_n_s16(v76, 0xFuLL)));
    if (v66 != (v66 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_72;
    }

LABEL_75:
    if (v67)
    {
      goto LABEL_76;
    }

    goto LABEL_56;
  }

LABEL_98:
  [objc_msgSend(destination descriptor];
  v102 = *v129;
  v103 = *(v129 + 8);
  finalOp3 = [*setup finalOp];
  v105 = **(finalOp3 + 24);
  if (*(*(finalOp3 + 24) + 8) == v105)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  if (memcmp(v102, **(*v105 + 16), v103 - v102) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  finalOp4 = [*setup finalOp];
  v107 = **(finalOp4 + 24);
  if (*(*(finalOp4 + 24) + 8) == v107)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v108 = *(*v107 + 8);
  dataType4 = [destination dataType];
  if (dataType4 == -2147483640)
  {
    v110 = 536870920;
  }

  else
  {
    v110 = dataType4;
  }

  if (v110 != v108)
  {
    [destination dataType];
  }

  dataType5 = [destination dataType];
  if (dataType5 == -2147483640)
  {
    v112 = 536870920;
  }

  else
  {
    v112 = dataType5;
  }

  if (v112 != v108 && [destination dataType] != v108 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v113 = v129;
  *&v129 = 0;
  if (v113)
  {
    v114 = *v113;
    if (*v113)
    {
      *(v113 + 8) = v114;
      operator delete(v114);
    }

    MEMORY[0x23EE7C8C0](v113, 0x10C402FEFCB83);
  }

LABEL_115:
  v115 = *MEMORY[0x277D85DE8];
}

@end