@interface MPSCNNMultiaryKernel
- (MPSCNNMultiaryKernel)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSCNNMultiaryKernel)initWithDevice:(id)device;
- (MPSCNNMultiaryKernel)initWithDevice:(id)device sourceCount:(NSUInteger)sourceCount;
- (MPSImageDescriptor)destinationImageDescriptorForSourceImages:(NSArray *)sourceImages sourceStates:(NSArray *)sourceStates;
- (MPSImageEdgeMode)edgeModeAtIndex:(NSUInteger)index;
- (MPSOffset)offsetAtIndex:(SEL)a3;
- (MPSState)resultStateForSourceImages:(NSArray *)sourceImages sourceStates:(NSArray *)sourceStates destinationImage:(MPSImage *)destinationImage;
- (MPSState)temporaryResultStateForCommandBuffer:(id)commandBuffer sourceImages:(NSArray *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImage *)destinationImage;
- (MPSStateBatch)resultStateBatchForSourceImages:(NSArray *)sourceImages sourceStates:(NSArray *)sourceStates destinationImage:(MPSImageBatch *)destinationImage;
- (MPSStateBatch)temporaryResultStateBatchForCommandBuffer:(id)commandBuffer sourceImages:(NSArray *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImageBatch *)destinationImage;
- (MTLRegion)clipRect;
- (NSUInteger)dilationRateXatIndex:(NSUInteger)index;
- (NSUInteger)dilationRateYatIndex:(NSUInteger)index;
- (NSUInteger)kernelHeightAtIndex:(NSUInteger)index;
- (NSUInteger)kernelWidthAtIndex:(NSUInteger)index;
- (NSUInteger)sourceFeatureChannelMaxCountAtIndex:(NSUInteger)index;
- (NSUInteger)sourceFeatureChannelOffsetAtIndex:(NSUInteger)index;
- (NSUInteger)strideInPixelsXatIndex:(NSUInteger)index;
- (NSUInteger)strideInPixelsYatIndex:(NSUInteger)index;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)encodeBatchToCommandEncoder:(id)a3 commandBuffer:(id)a4 sourceImages:(id)a5 destinationStates:(id *)a6 destinationStateIsTemporary:(BOOL)a7;
- (id)encodeBatchToCommandEncoder:(id)a3 commandBuffer:(id)a4 sourceImages:(id)a5 sourceStates:(id)a6;
- (id)encodeToCommandEncoder:(id)a3 commandBuffer:(id)a4 sourceImages:(id)a5 destinationState:(id *)a6 destinationStateIsTemporary:(BOOL)a7;
- (id)encodeToCommandEncoder:(id)a3 commandBuffer:(id)a4 sourceImages:(id)a5 inState:(id)a6;
- (void)copyToGradientState:(id)a3 sourceImages:(id)a4 sourceStates:(id)a5 destinationImage:(id)a6;
- (void)dealloc;
- (void)encodeBatchToCommandEncoder:(id)a3 commandBuffer:(id)a4 sourceImages:(id)a5 inStates:(id)a6 destinationImages:(id)a7;
- (void)encodeInternalBatchToCommandEncoder:(id)a3 commandBuffer:(id)a4 sourceImages:(id)a5 inStates:(id)a6 destinationImages:(id)a7 clipRect:(id *)a8;
- (void)encodeToCommandEncoder:(id)a3 commandBuffer:(id)a4 sourceImages:(id)a5 inState:(id)a6 destinationImage:(id)a7;
- (void)encodeWithCoder:(id)a3;
- (void)setClipRect:(MTLRegion *)clipRect;
- (void)setDilationRateX:(NSUInteger)dilationRate atIndex:(NSUInteger)index;
- (void)setDilationRateY:(NSUInteger)dilationRate atIndex:(NSUInteger)index;
- (void)setEdgeMode:(MPSImageEdgeMode)edgeMode atIndex:(NSUInteger)index;
- (void)setKernelHeight:(NSUInteger)height atIndex:(NSUInteger)index;
- (void)setKernelWidth:(NSUInteger)width atIndex:(NSUInteger)index;
- (void)setOffset:(MPSOffset *)offset atIndex:(NSUInteger)index;
- (void)setOffset:(id *)a3;
- (void)setSourceFeatureChannelMaxCount:(NSUInteger)count atIndex:(NSUInteger)index;
- (void)setSourceFeatureChannelOffset:(NSUInteger)offset atIndex:(NSUInteger)index;
- (void)setStrideInPixelsX:(NSUInteger)stride atIndex:(NSUInteger)index;
- (void)setStrideInPixelsY:(NSUInteger)stride atIndex:(NSUInteger)index;
@end

@implementation MPSCNNMultiaryKernel

- (MPSCNNMultiaryKernel)initWithDevice:(id)device sourceCount:(NSUInteger)sourceCount
{
  v6.receiver = self;
  v6.super_class = MPSCNNMultiaryKernel;
  v4 = [(MPSKernel *)&v6 initWithDevice:device];
  if (v4)
  {
    is_mul_ok(v4->_srcCount, 0x60uLL);
    operator new[]();
  }

  return 0;
}

- (MPSCNNMultiaryKernel)initWithDevice:(id)device
{
  if (MTLReportFailureTypeEnabled())
  {
    v5 = objc_opt_class();
    NSStringFromClass(v5);
    NSStringFromSelector(a2);
    MTLReportFailure();
  }

  return 0;
}

- (void)dealloc
{
  srcInfo = self->_srcInfo;
  if (srcInfo)
  {
    MEMORY[0x23EE7D120](srcInfo, 0x1000C80565EDBD2);
  }

  self->_srcInfo = 0;

  self->_destinationImageAllocator = 0;
  self->_padding = 0;
  v4.receiver = self;
  v4.super_class = MPSCNNMultiaryKernel;
  [(MPSKernel *)&v4 dealloc];
}

- (MPSOffset)offsetAtIndex:(SEL)a3
{
  if ((*(&self->x + *MEMORY[0x277CD7378]) & 1) == 0 && self[4].x <= index)
  {
    v4 = self;
    v5 = retstr;
    v6 = index;
    v8 = MTLReportFailureTypeEnabled();
    index = v6;
    retstr = v5;
    v9 = v8;
    self = v4;
    if (v9)
    {
      v10 = objc_opt_class();
      NSStringFromClass(v10);
      NSStringFromSelector(a3);
      MTLReportFailure();
      self = v4;
      index = v6;
      retstr = v5;
    }
  }

  *retstr = *(self[3].z + 96 * index);
  return self;
}

- (void)setOffset:(MPSOffset *)offset atIndex:(NSUInteger)index
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0 && self->_srcCount <= index)
  {
    v6 = self;
    v7 = offset;
    v8 = index;
    v10 = MTLReportFailureTypeEnabled();
    index = v8;
    offset = v7;
    v11 = v10;
    self = v6;
    if (v11)
    {
      v12 = objc_opt_class();
      NSStringFromClass(v12);
      NSStringFromSelector(a2);
      MTLReportFailure();
      self = v6;
      index = v8;
      offset = v7;
    }
  }

  v4 = &self->_srcInfo[index];
  z = offset->z;
  *&v4->var0.var0 = *&offset->x;
  v4->var0.var2 = z;
}

- (void)setOffset:(id *)a3
{
  srcInfo = self->_srcInfo;
  var2 = a3->var2;
  *&srcInfo->var0.var0 = *&a3->var0;
  srcInfo->var0.var2 = var2;
}

- (NSUInteger)sourceFeatureChannelOffsetAtIndex:(NSUInteger)index
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0 && self->_srcCount <= index)
  {
    v4 = self;
    v5 = index;
    v7 = MTLReportFailureTypeEnabled();
    index = v5;
    v8 = v7;
    self = v4;
    if (v8)
    {
      v9 = objc_opt_class();
      NSStringFromClass(v9);
      NSStringFromSelector(a2);
      MTLReportFailure();
      self = v4;
      index = v5;
    }
  }

  return self->_srcInfo[index].var1;
}

- (void)setSourceFeatureChannelOffset:(NSUInteger)offset atIndex:(NSUInteger)index
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0 && self->_srcCount <= index)
  {
    v4 = self;
    v5 = offset;
    v6 = index;
    v8 = MTLReportFailureTypeEnabled();
    index = v6;
    offset = v5;
    v9 = v8;
    self = v4;
    if (v9)
    {
      v10 = objc_opt_class();
      NSStringFromClass(v10);
      NSStringFromSelector(a2);
      MTLReportFailure();
      self = v4;
      index = v6;
      offset = v5;
    }
  }

  self->_srcInfo[index].var1 = offset;
}

- (NSUInteger)sourceFeatureChannelMaxCountAtIndex:(NSUInteger)index
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0 && self->_srcCount <= index)
  {
    v4 = self;
    v5 = index;
    v7 = MTLReportFailureTypeEnabled();
    index = v5;
    v8 = v7;
    self = v4;
    if (v8)
    {
      v9 = objc_opt_class();
      NSStringFromClass(v9);
      NSStringFromSelector(a2);
      MTLReportFailure();
      self = v4;
      index = v5;
    }
  }

  return self->_srcInfo[index].var2;
}

- (void)setSourceFeatureChannelMaxCount:(NSUInteger)count atIndex:(NSUInteger)index
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0 && self->_srcCount <= index)
  {
    v4 = self;
    v5 = count;
    v6 = index;
    v8 = MTLReportFailureTypeEnabled();
    index = v6;
    count = v5;
    v9 = v8;
    self = v4;
    if (v9)
    {
      v10 = objc_opt_class();
      NSStringFromClass(v10);
      NSStringFromSelector(a2);
      MTLReportFailure();
      self = v4;
      index = v6;
      count = v5;
    }
  }

  self->_srcInfo[index].var2 = count;
}

- (MPSImageEdgeMode)edgeModeAtIndex:(NSUInteger)index
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0 && self->_srcCount <= index)
  {
    v4 = self;
    v5 = index;
    v7 = MTLReportFailureTypeEnabled();
    index = v5;
    v8 = v7;
    self = v4;
    if (v8)
    {
      v9 = objc_opt_class();
      NSStringFromClass(v9);
      NSStringFromSelector(a2);
      MTLReportFailure();
      self = v4;
      index = v5;
    }
  }

  return self->_srcInfo[index].var9;
}

- (void)setEdgeMode:(MPSImageEdgeMode)edgeMode atIndex:(NSUInteger)index
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0 && self->_srcCount <= index)
  {
    v4 = self;
    v5 = edgeMode;
    v6 = index;
    v8 = MTLReportFailureTypeEnabled();
    index = v6;
    edgeMode = v5;
    v9 = v8;
    self = v4;
    if (v9)
    {
      v10 = objc_opt_class();
      NSStringFromClass(v10);
      NSStringFromSelector(a2);
      MTLReportFailure();
      self = v4;
      index = v6;
      edgeMode = v5;
    }
  }

  self->_srcInfo[index].var9 = edgeMode;
}

- (NSUInteger)kernelWidthAtIndex:(NSUInteger)index
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0 && self->_srcCount <= index)
  {
    v4 = self;
    v5 = index;
    v7 = MTLReportFailureTypeEnabled();
    index = v5;
    v8 = v7;
    self = v4;
    if (v8)
    {
      v9 = objc_opt_class();
      NSStringFromClass(v9);
      NSStringFromSelector(a2);
      MTLReportFailure();
      self = v4;
      index = v5;
    }
  }

  return self->_srcInfo[index].var3;
}

- (void)setKernelWidth:(NSUInteger)width atIndex:(NSUInteger)index
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0 && self->_srcCount <= index)
  {
    v4 = self;
    v5 = width;
    v6 = index;
    v8 = MTLReportFailureTypeEnabled();
    index = v6;
    width = v5;
    v9 = v8;
    self = v4;
    if (v9)
    {
      v10 = objc_opt_class();
      NSStringFromClass(v10);
      NSStringFromSelector(a2);
      MTLReportFailure();
      self = v4;
      index = v6;
      width = v5;
    }
  }

  self->_srcInfo[index].var3 = width;
}

- (NSUInteger)kernelHeightAtIndex:(NSUInteger)index
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0 && self->_srcCount <= index)
  {
    v4 = self;
    v5 = index;
    v7 = MTLReportFailureTypeEnabled();
    index = v5;
    v8 = v7;
    self = v4;
    if (v8)
    {
      v9 = objc_opt_class();
      NSStringFromClass(v9);
      NSStringFromSelector(a2);
      MTLReportFailure();
      self = v4;
      index = v5;
    }
  }

  return self->_srcInfo[index].var4;
}

- (void)setKernelHeight:(NSUInteger)height atIndex:(NSUInteger)index
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0 && self->_srcCount <= index)
  {
    v4 = self;
    v5 = height;
    v6 = index;
    v8 = MTLReportFailureTypeEnabled();
    index = v6;
    height = v5;
    v9 = v8;
    self = v4;
    if (v9)
    {
      v10 = objc_opt_class();
      NSStringFromClass(v10);
      NSStringFromSelector(a2);
      MTLReportFailure();
      self = v4;
      index = v6;
      height = v5;
    }
  }

  self->_srcInfo[index].var4 = height;
}

- (NSUInteger)strideInPixelsXatIndex:(NSUInteger)index
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0 && self->_srcCount <= index)
  {
    v4 = self;
    v5 = index;
    v7 = MTLReportFailureTypeEnabled();
    index = v5;
    v8 = v7;
    self = v4;
    if (v8)
    {
      v9 = objc_opt_class();
      NSStringFromClass(v9);
      NSStringFromSelector(a2);
      MTLReportFailure();
      self = v4;
      index = v5;
    }
  }

  return self->_srcInfo[index].var5;
}

- (void)setStrideInPixelsX:(NSUInteger)stride atIndex:(NSUInteger)index
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0 && self->_srcCount <= index)
  {
    v4 = self;
    v5 = stride;
    v6 = index;
    v8 = MTLReportFailureTypeEnabled();
    index = v6;
    stride = v5;
    v9 = v8;
    self = v4;
    if (v9)
    {
      v10 = objc_opt_class();
      NSStringFromClass(v10);
      NSStringFromSelector(a2);
      MTLReportFailure();
      self = v4;
      index = v6;
      stride = v5;
    }
  }

  self->_srcInfo[index].var5 = stride;
}

- (NSUInteger)strideInPixelsYatIndex:(NSUInteger)index
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0 && self->_srcCount <= index)
  {
    v4 = self;
    v5 = index;
    v7 = MTLReportFailureTypeEnabled();
    index = v5;
    v8 = v7;
    self = v4;
    if (v8)
    {
      v9 = objc_opt_class();
      NSStringFromClass(v9);
      NSStringFromSelector(a2);
      MTLReportFailure();
      self = v4;
      index = v5;
    }
  }

  return self->_srcInfo[index].var6;
}

- (void)setStrideInPixelsY:(NSUInteger)stride atIndex:(NSUInteger)index
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0 && self->_srcCount <= index)
  {
    v4 = self;
    v5 = stride;
    v6 = index;
    v8 = MTLReportFailureTypeEnabled();
    index = v6;
    stride = v5;
    v9 = v8;
    self = v4;
    if (v9)
    {
      v10 = objc_opt_class();
      NSStringFromClass(v10);
      NSStringFromSelector(a2);
      MTLReportFailure();
      self = v4;
      index = v6;
      stride = v5;
    }
  }

  self->_srcInfo[index].var6 = stride;
}

- (NSUInteger)dilationRateXatIndex:(NSUInteger)index
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0 && self->_srcCount <= index)
  {
    v4 = self;
    v5 = index;
    v7 = MTLReportFailureTypeEnabled();
    index = v5;
    v8 = v7;
    self = v4;
    if (v8)
    {
      v9 = objc_opt_class();
      NSStringFromClass(v9);
      NSStringFromSelector(a2);
      MTLReportFailure();
      self = v4;
      index = v5;
    }
  }

  return self->_srcInfo[index].var7;
}

- (void)setDilationRateX:(NSUInteger)dilationRate atIndex:(NSUInteger)index
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0 && self->_srcCount <= index)
  {
    v4 = self;
    v5 = dilationRate;
    v6 = index;
    v8 = MTLReportFailureTypeEnabled();
    index = v6;
    dilationRate = v5;
    v9 = v8;
    self = v4;
    if (v9)
    {
      v10 = objc_opt_class();
      NSStringFromClass(v10);
      NSStringFromSelector(a2);
      MTLReportFailure();
      self = v4;
      index = v6;
      dilationRate = v5;
    }
  }

  self->_srcInfo[index].var7 = dilationRate;
}

- (NSUInteger)dilationRateYatIndex:(NSUInteger)index
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0 && self->_srcCount <= index)
  {
    v4 = self;
    v5 = index;
    v7 = MTLReportFailureTypeEnabled();
    index = v5;
    v8 = v7;
    self = v4;
    if (v8)
    {
      v9 = objc_opt_class();
      NSStringFromClass(v9);
      NSStringFromSelector(a2);
      MTLReportFailure();
      self = v4;
      index = v5;
    }
  }

  return self->_srcInfo[index].var8;
}

- (void)setDilationRateY:(NSUInteger)dilationRate atIndex:(NSUInteger)index
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0 && self->_srcCount <= index)
  {
    v4 = self;
    v5 = dilationRate;
    v6 = index;
    v8 = MTLReportFailureTypeEnabled();
    index = v6;
    dilationRate = v5;
    v9 = v8;
    self = v4;
    if (v9)
    {
      v10 = objc_opt_class();
      NSStringFromClass(v10);
      NSStringFromSelector(a2);
      MTLReportFailure();
      self = v4;
      index = v6;
      dilationRate = v5;
    }
  }

  self->_srcInfo[index].var8 = dilationRate;
}

- (MPSCNNMultiaryKernel)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v14.receiver = self;
  v14.super_class = MPSCNNMultiaryKernel;
  v11 = [(MPSKernel *)&v14 initWithCoder:aDecoder device:device];
  if (v11)
  {
    v12 = objc_msgSend_decodeIntForKey_(aDecoder, v5, @"MPSCNNMultiaryKernel.srcCount", v6, v7, v8, v9, v10);
    v11->_srcCount = v12;
    is_mul_ok(v12, 0x60uLL);
    operator new[]();
  }

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v119.receiver = self;
  v119.super_class = MPSCNNMultiaryKernel;
  [(MPSKernel *)&v119 encodeWithCoder:?];
  objc_msgSend_encodeInteger_forKey_(a3, v5, self->_srcCount, @"MPSCNNMultiaryKernel.srcCount", v6, v7, v8, v9);
  v10 = 96 * self->_srcCount;
  v11 = malloc_type_malloc(v10, 0x1000040565EDBD2uLL);
  if (v11)
  {
    v16 = v11;
    if (self->_srcCount)
    {
      v17 = 0;
      p_var4 = &self->_srcInfo->var4;
      v19 = v11 + 3;
      do
      {
        v20 = vrev64q_s8(p_var4[-2]);
        v21 = vrev64q_s8(p_var4[-1]);
        v22 = vrev64q_s8(*p_var4);
        v23 = vrev64q_s8(p_var4[1]);
        v24 = vrev64q_s8(p_var4[2]);
        v19[-3] = vrev64q_s8(p_var4[-3]);
        v19[-2] = v20;
        v19[-1] = v21;
        *v19 = v22;
        v19[1] = v23;
        v19[2] = v24;
        ++v17;
        p_var4 += 6;
        v19 += 6;
      }

      while (v17 < self->_srcCount);
    }

    objc_msgSend_encodeBytes_length_forKey_(a3, v12, v11, v10, @"MPSCNNMultiaryKernel.srcDataKeyv1", v13, v14, v15);
    free(v16);
    objc_msgSend_encodeInteger_forKey_(a3, v25, self->_clipRect.origin.x, @"MPSCNNMultiaryKernel.clipRect.origin.x", v26, v27, v28, v29);
    objc_msgSend_encodeInteger_forKey_(a3, v30, self->_clipRect.origin.y, @"MPSCNNMultiaryKernel.clipRect.origin.y", v31, v32, v33, v34);
    objc_msgSend_encodeInteger_forKey_(a3, v35, self->_clipRect.origin.z, @"MPSCNNMultiaryKernel.clipRect.origin.z", v36, v37, v38, v39);
    objc_msgSend_encodeInteger_forKey_(a3, v40, self->_clipRect.size.width, @"MPSCNNMultiaryKernel.clipRect.size.x", v41, v42, v43, v44);
    objc_msgSend_encodeInteger_forKey_(a3, v45, self->_clipRect.size.height, @"MPSCNNMultiaryKernel.clipRect.size.y", v46, v47, v48, v49);
    objc_msgSend_encodeInteger_forKey_(a3, v50, self->_clipRect.size.depth, @"MPSCNNMultiaryKernel.clipRect.size.z", v51, v52, v53, v54);
    objc_msgSend_encodeInteger_forKey_(a3, v55, self->_destinationFeatureChannelOffset, @"MPSCNNMultiaryKernel.destinationFeatureChannelOffset", v56, v57, v58, v59);
    objc_msgSend_encodeBool_forKey_(a3, v60, self->_isBackwards, @"MPSCNNMultiaryKernel.isBackwards", v61, v62, v63, v64);
    objc_msgSend_encodeBool_forKey_(a3, v65, self->_supportsBroadcasting, @"MPSCNNMultiaryKernel.supportsBroadcasting", v66, v67, v68, v69);
    objc_msgSend_encodeInt64_forKey_(a3, v70, self->_checkFlags, @"MPSCNNMultiaryKernel.checkFlags", v71, v72, v73, v74);
    padding = self->_padding;
    v76 = objc_autoreleasePoolPush();
    v77 = objc_opt_class();
    if (v77)
    {
      v78 = NSStringFromClass(v77);
      v85 = objc_msgSend_cStringUsingEncoding_(v78, v79, 1, v80, v81, v82, v83, v84);
      if (v85)
      {
        v86 = v85;
        v87 = strlen(v85);
        if (v87)
        {
          objc_msgSend_encodeBytes_length_forKey_(a3, v88, v86, v87 + 1, @"MPSCNNMultiaryKernel.paddingType", v89, v90, v91);
          objc_msgSend_encodeObject_forKey_(a3, v92, padding, @"MPSCNNMultiaryKernel.paddingData", v93, v94, v95, v96);
        }
      }
    }

    objc_autoreleasePoolPop(v76);
    destinationImageAllocator = self->_destinationImageAllocator;
    v98 = objc_autoreleasePoolPush();
    v99 = objc_opt_class();
    if (v99)
    {
      v100 = NSStringFromClass(v99);
      v107 = objc_msgSend_cStringUsingEncoding_(v100, v101, 1, v102, v103, v104, v105, v106);
      if (v107)
      {
        v108 = v107;
        v109 = strlen(v107);
        if (v109)
        {
          objc_msgSend_encodeBytes_length_forKey_(a3, v110, v108, v109 + 1, @"MPSCNNMultiaryKernel.allocatorType", v111, v112, v113);
          objc_msgSend_encodeObject_forKey_(a3, v114, destinationImageAllocator, @"MPSCNNMultiaryKernel.allocatorData", v115, v116, v117, v118);
        }
      }
    }

    objc_autoreleasePoolPop(v98);
  }
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v8.receiver = self;
  v8.super_class = MPSCNNMultiaryKernel;
  v5 = [(MPSKernel *)&v8 copyWithZone:a3 device:a4];
  if (v5)
  {
    srcCount = self->_srcCount;
    v5[12] = srcCount;
    is_mul_ok(srcCount, 0x60uLL);
    operator new[]();
  }

  return 0;
}

- (void)encodeToCommandEncoder:(id)a3 commandBuffer:(id)a4 sourceImages:(id)a5 inState:(id)a6 destinationImage:(id)a7
{
  v52[1] = *MEMORY[0x277D85DE8];
  v12 = objc_autoreleasePoolPush();
  v20 = objc_msgSend_count(a5, v13, v14, v15, v16, v17, v18, v19);
  v33 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v21, v20, v22, v23, v24, v25, v26);
  if (v20)
  {
    for (i = 0; i != v20; ++i)
    {
      v52[0] = objc_msgSend_objectAtIndexedSubscript_(a5, v27, i, v28, v29, v30, v31, v32);
      v40 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v35, v52, 1, v36, v37, v38, v39);
      objc_msgSend_setObject_atIndexedSubscript_(v33, v41, v40, i, v42, v43, v44, v45);
    }
  }

  if (a6)
  {
    v51 = a6;
    a6 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v27, &v51, 1, v29, v30, v31, v32);
  }

  v50 = a7;
  v46 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v27, &v50, 1, v29, v30, v31, v32);
  objc_msgSend_encodeBatchToCommandEncoder_commandBuffer_sourceImages_inStates_destinationImages_(self, v47, a3, a4, v33, a6, v46, v48);
  objc_autoreleasePoolPop(v12);
}

- (id)encodeToCommandEncoder:(id)a3 commandBuffer:(id)a4 sourceImages:(id)a5 inState:(id)a6
{
  v31[1] = *MEMORY[0x277D85DE8];
  if (a6)
  {
    v31[0] = a6;
    v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v31, 1, a5, a6, v6, v7);
    v19 = objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_(self, v14, a5, v13, v15, v16, v17, v18);
  }

  else
  {
    v19 = objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_(self, a2, a5, 0, a5, 0, v6, v7);
  }

  v24 = *MEMORY[0x277CD7378];
  if (*(&self->super.super.isa + v24))
  {
    if (!v19)
    {
      return 0;
    }
  }

  else if (!v19)
  {
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_12;
    }

    return 0;
  }

  v25 = objc_msgSend_imageForCommandBuffer_imageDescriptor_kernel_(self->_destinationImageAllocator, v20, a4, v19, self, v21, v22, v23);
  v28 = v25;
  if (*(&self->super.super.isa + v24))
  {
    if (!v25)
    {
      return v28;
    }

LABEL_15:
    objc_msgSend_encodeToCommandEncoder_commandBuffer_sourceImages_inState_destinationImage_(self, v26, a3, a4, a5, a6, v25, v27);
    return v28;
  }

  if (v25)
  {
    goto LABEL_15;
  }

  if (MTLReportFailureTypeEnabled())
  {
LABEL_12:
    v29 = objc_opt_class();
    NSStringFromClass(v29);
    MTLReportFailure();
  }

  return 0;
}

- (id)encodeBatchToCommandEncoder:(id)a3 commandBuffer:(id)a4 sourceImages:(id)a5 sourceStates:(id)a6
{
  v13 = objc_msgSend_count(a5, a2, a3, a4, a5, a6, v6, v7);
  v20 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v14, v13, v15, v16, v17, v18, v19);
  v27 = v20;
  if (v13 && v20)
  {
    for (i = 0; i != v13; ++i)
    {
      v29 = objc_msgSend_objectAtIndexedSubscript_(a5, v21, i, v22, v23, v24, v25, v26);
      v36 = objc_msgSend_objectAtIndexedSubscript_(v29, v30, 0, v31, v32, v33, v34, v35);
      objc_msgSend_setObject_atIndexedSubscript_(v27, v37, v36, i, v38, v39, v40, v41);
    }
  }

  v42 = objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_(self, v21, v27, a6, v23, v24, v25, v26);
  v49 = v42;
  v50 = *MEMORY[0x277CD7378];
  if (*(&self->super.super.isa + v50))
  {
    if (!v42)
    {
      return 0;
    }
  }

  else if (!v42)
  {
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_18;
    }

    return 0;
  }

  v51 = objc_msgSend_objectAtIndexedSubscript_(a5, v43, 0, v44, v45, v46, v47, v48);
  v59 = objc_msgSend_count(v51, v52, v53, v54, v55, v56, v57, v58);
  if ((objc_opt_respondsToSelector() & 1) == 0 || (v63 = objc_msgSend_imageBatchForCommandBuffer_imageDescriptor_kernel_count_(self->_destinationImageAllocator, v60, a4, v49, self, v59, v61, v62)) == 0)
  {
    v64 = objc_alloc(MEMORY[0x277CBEB18]);
    v63 = objc_msgSend_initWithCapacity_(v64, v65, v59, v66, v67, v68, v69, v70);
    if (v59)
    {
      for (j = 0; j != v59; ++j)
      {
        v76 = objc_msgSend_imageForCommandBuffer_imageDescriptor_kernel_(self->_destinationImageAllocator, v71, a4, v49, self, v72, v73, v74);
        objc_msgSend_setObject_atIndexedSubscript_(v63, v77, v76, j, v78, v79, v80, v81);
      }
    }
  }

  if (*(&self->super.super.isa + v50))
  {
    if (!v63)
    {
      return v63;
    }

LABEL_21:
    v83 = objc_autoreleasePoolPush();
    objc_msgSend_encodeBatchToCommandEncoder_commandBuffer_sourceImages_inStates_destinationImages_(self, v84, a3, a4, a5, a6, v63, v85);
    objc_autoreleasePoolPop(v83);
    return v63;
  }

  if (v63)
  {
    goto LABEL_21;
  }

  if (MTLReportFailureTypeEnabled())
  {
LABEL_18:
    v82 = objc_opt_class();
    NSStringFromClass(v82);
    MTLReportFailure();
  }

  return 0;
}

- (id)encodeToCommandEncoder:(id)a3 commandBuffer:(id)a4 sourceImages:(id)a5 destinationState:(id *)a6 destinationStateIsTemporary:(BOOL)a7
{
  v8 = a7;
  v14 = objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_(self, a2, a5, 0, a5, a6, a7, v7);
  v19 = *MEMORY[0x277CD7378];
  if (*(&self->super.super.isa + v19))
  {
    if (!v14)
    {
      return 0;
    }
  }

  else if (!v14)
  {
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_9;
    }

    return 0;
  }

  v20 = objc_msgSend_imageForCommandBuffer_imageDescriptor_kernel_(self->_destinationImageAllocator, v15, a4, v14, self, v16, v17, v18);
  v25 = v20;
  if (*(&self->super.super.isa + v19))
  {
    if (!v20)
    {
      return v25;
    }
  }

  else if (!v20)
  {
    if (MTLReportFailureTypeEnabled())
    {
LABEL_9:
      v26 = objc_opt_class();
      NSStringFromClass(v26);
      MTLReportFailure();
    }

    return 0;
  }

  if (v8)
  {
    v27 = objc_msgSend_temporaryResultStateForCommandBuffer_sourceImages_sourceStates_destinationImage_(self, v21, a4, a5, 0, v20, v23, v24);
  }

  else
  {
    v27 = objc_msgSend_resultStateForSourceImages_sourceStates_destinationImage_(self, v21, a5, 0, v20, v22, v23, v24);
  }

  v30 = v27;
  objc_msgSend_encodeToCommandEncoder_commandBuffer_sourceImages_inState_destinationImage_(self, v28, a3, a4, a5, v27, v25, v29);
  if (a6)
  {
    *a6 = v30;
  }

  return v25;
}

- (id)encodeBatchToCommandEncoder:(id)a3 commandBuffer:(id)a4 sourceImages:(id)a5 destinationStates:(id *)a6 destinationStateIsTemporary:(BOOL)a7
{
  v89 = a7;
  v11 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.isa + v11) & 1) == 0 && self->_clipRect.origin.z && MTLReportFailureTypeEnabled())
  {
    v86 = objc_opt_class();
    v87 = NSStringFromClass(v86);
    MTLReportFailure();
  }

  v12 = objc_msgSend_count(a5, a2, a3, a4, a5, a6, a7, v7, v87);
  v20 = objc_msgSend_count(a5, v13, v14, v15, v16, v17, v18, v19);
  v27 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v21, v20, v22, v23, v24, v25, v26);
  v34 = v27;
  if (v20 && v27)
  {
    for (i = 0; i != v20; ++i)
    {
      v36 = objc_msgSend_objectAtIndexedSubscript_(a5, v28, i, v29, v30, v31, v32, v33);
      v43 = objc_msgSend_objectAtIndexedSubscript_(v36, v37, 0, v38, v39, v40, v41, v42);
      objc_msgSend_setObject_atIndexedSubscript_(v34, v44, v43, i, v45, v46, v47, v48);
    }
  }

  v49 = objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_(self, v28, v34, 0, v30, v31, v32, v33);
  v50 = v49;
  if (*(&self->super.super.isa + v11))
  {
    if (!v49)
    {
      return 0;
    }
  }

  else if (!v49)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v51 = objc_opt_class();
      NSStringFromClass(v51);
      MTLReportFailure();
    }

    return 0;
  }

  destinationImageAllocator = self->_destinationImageAllocator;
  if (objc_opt_respondsToSelector())
  {
    v63 = objc_msgSend_imageBatchForCommandBuffer_imageDescriptor_kernel_count_(destinationImageAllocator, v53, a4, v50, self, v12, v57, v58);
    goto LABEL_14;
  }

  v63 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v53, v12, v54, v55, v56, v57, v58);
  if (!v63)
  {
    return v63;
  }

  if (v12)
  {
    for (j = 0; j != v12; ++j)
    {
      v65 = objc_msgSend_imageForCommandBuffer_imageDescriptor_kernel_(destinationImageAllocator, v59, a4, v50, self, v60, v61, v62, v88);
      objc_msgSend_setObject_atIndexedSubscript_(v63, v66, v65, j, v67, v68, v69, v70);
      if ((*(&self->super.super.isa + v11) & 1) == 0)
      {
        objc_msgSend_objectAtIndexedSubscript_(v63, v59, j, v71, v72, v60, v61, v62);
        if (!objc_msgSend_objectAtIndexedSubscript_(v63, v73, j, v74, v75, v76, v77, v78))
        {
          if (MTLReportFailureTypeEnabled())
          {
            v79 = objc_opt_class();
            v88 = NSStringFromClass(v79);
            MTLReportFailure();
          }
        }
      }
    }

LABEL_14:
    if (!v63)
    {
      return v63;
    }
  }

  if (v89)
  {
    v80 = objc_msgSend_temporaryResultStateBatchForCommandBuffer_sourceImages_sourceStates_destinationImage_(self, v59, a4, a5, 0, v63, v61, v62);
  }

  else
  {
    v80 = objc_msgSend_resultStateBatchForSourceImages_sourceStates_destinationImage_(self, v59, a5, 0, v63, v60, v61, v62);
  }

  v81 = v80;
  v82 = objc_autoreleasePoolPush();
  objc_msgSend_encodeBatchToCommandEncoder_commandBuffer_sourceImages_inStates_destinationImages_(self, v83, a3, a4, a5, v81, v63, v84);
  objc_autoreleasePoolPop(v82);
  if (a6)
  {
    *a6 = v81;
  }

  return v63;
}

- (void)encodeInternalBatchToCommandEncoder:(id)a3 commandBuffer:(id)a4 sourceImages:(id)a5 inStates:(id)a6 destinationImages:(id)a7 clipRect:(id *)a8
{
  v8 = a8;
  v9 = a5;
  v10 = a4;
  v255 = *MEMORY[0x277D85DE8];
  srcCount = self->_srcCount;
  v14 = objc_msgSend_count(a5, a2, a3, a4, a5, a6, a7, a8);
  if (srcCount >= v14)
  {
    v22 = v14;
  }

  else
  {
    v22 = srcCount;
  }

  v234 = objc_msgSend_retainedReferences(v10, v15, v16, v17, v18, v19, v20, v21);
  v231 = v9;
  v232 = v10;
  v233 = v22;
  v224 = v8;
  v225 = a3;
  if (v22 < 9)
  {
    v36 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v23, v22, v24, v25, v26, v27, v28);
    v29 = v254;
    if (!v22)
    {
      v228 = 1;
      goto LABEL_25;
    }
  }

  else
  {
    v29 = malloc_type_calloc(v22, 0x30uLL, 0x1080040A9DF19A3uLL);
    v36 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v30, v22, v31, v32, v33, v34, v35);
  }

  v44 = v36;
  v45 = 0;
  v220 = v29;
  context = v36;
  do
  {
    while (1)
    {
      v46 = &self->_srcInfo[v45];
      v47 = vmovn_s64(*&v46->var0.var0);
      v48 = vmovn_s64(*&v46->var3);
      v49 = vmovn_s64(*&v46->var7);
      LOWORD(v46) = v47.i16[2];
      v50 = v47.i16[0];
      v51 = vmls_s32(v47, vshr_n_u32(vand_s8(v48, 0xFFFF0000FFFFLL), 1uLL), v49);
      v52 = &v29[48 * v45];
      *(v52 + 1) = v51.i16[2];
      *v52 = v51.i16[0];
      *(v52 + 5) = v48.i16[2];
      *(v52 + 4) = v48.i16[0];
      *(v52 + 7) = v46;
      *(v52 + 1) = 0;
      *(v52 + 6) = v50;
      v53 = vmovn_s64(*&self->_srcInfo[v45].var5);
      *(v52 + 9) = v53.i16[2];
      *(v52 + 8) = v53.i16[0];
      *(v52 + 11) = v49.i16[2];
      *(v52 + 10) = v49.i16[0];
      *(v52 + 13) = 0;
      v54 = &self->_srcInfo[v45];
      *(v52 + 12) = v54->var1;
      *(v52 + 15) = 0;
      *(v52 + 14) = v54->var0.var2;
      *(v52 + 4) = 0;
      *(v52 + 10) = 0;
      checkFlags = self->_checkFlags;
      v56 = objc_msgSend_objectAtIndexedSubscript_(v9, v37, v45, v38, v39, v40, v41, v42);
      v63 = v9;
      v64 = v56;
      if ((checkFlags & 0x2000) == 0)
      {
        break;
      }

      objc_msgSend_setObject_atIndexedSubscript_(v44, v57, v56, v45++, v59, v60, v61, v62);
      v9 = v231;
      if (v45 == v22)
      {
        goto LABEL_24;
      }
    }

    v65 = objc_msgSend_objectAtIndexedSubscript_(v63, v57, v45, v58, v59, v60, v61, v62);
    v72 = objc_msgSend_objectAtIndexedSubscript_(v65, v66, 0, v67, v68, v69, v70, v71);
    v80 = *(v72 + *MEMORY[0x277CD72F8]);
    if (v80 >= *(v52 + 12))
    {
      v81 = *(v52 + 12);
    }

    else
    {
      v81 = *(v72 + *MEMORY[0x277CD72F8]);
    }

    var2 = v80 - v81;
    if (v80 - v81 >= self->_srcInfo[v45].var2)
    {
      var2 = self->_srcInfo[v45].var2;
    }

    v229 = var2;
    v83 = objc_msgSend_count(v64, v73, v74, v75, v76, v77, v78, v79);
    if (v83)
    {
      v90 = v83;
      if (v81 || v229 < *(objc_msgSend_objectAtIndexedSubscript_(v64, v84, 0, v85, v86, v87, v88, v89) + *MEMORY[0x277CD72F8]))
      {
        v91 = objc_msgSend_objectAtIndexedSubscript_(v64, v84, 0, v85, v86, v87, v88, v89);
        v95 = sub_239D44850(v10, v225, v91, v81, v229, v92, v93, v94);
        if (v95 != objc_msgSend_objectAtIndexedSubscript_(v64, v96, 0, v97, v98, v99, v100, v101))
        {
          v108 = malloc_type_malloc(8 * v90, 0x80040B8603338uLL);
          *v108 = v95;
          if (v90 != 1)
          {
            for (i = 1; i != v90; ++i)
            {
              v110 = objc_msgSend_objectAtIndexedSubscript_(v64, v102, i, v103, v104, v105, v106, v107);
              v108[i] = sub_239D44850(v232, v225, v110, v81, v229, v111, v112, v113);
            }
          }

          v64 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v102, v108, v90, v104, v105, v106, v107);
          free(v108);
          v10 = v232;
          v44 = context;
        }
      }
    }

    objc_msgSend_setObject_atIndexedSubscript_(v44, v84, v64, v45, v86, v87, v88, v89);
    *(v52 + 12) = 0;
    v22 = v233;
    v29 = v220;
    ++v45;
    v9 = v231;
  }

  while (v45 != v233);
LABEL_24:
  v228 = 0;
  v8 = v224;
LABEL_25:
  destinationFeatureChannelOffset = self->_destinationFeatureChannelOffset;
  v115 = objc_msgSend_maxBatchSize(self, v37, v43, v38, v39, v40, v41, v42);
  v242 = 0u;
  v243 = 0u;
  v244 = 0;
  v241 = 0u;
  v236 = v8->var1.var2;
  v237 = v115;
  v238 = v8->var0.var2;
  v239 = v22;
  v221 = v29;
  v240 = v29;
  v116 = vmovn_s64(*&v8->var0.var0);
  LOWORD(v117) = v116.i16[0];
  WORD1(v117) = v116.i16[2];
  HIDWORD(v117) = (destinationFeatureChannelOffset >> 2);
  v118 = vmovn_s64(*&v8->var1.var0);
  LOWORD(v119) = v118.i16[0];
  HIWORD(v119) = v118.i16[2];
  *&v242 = v117;
  *(&v242 + 1) = v119;
  v243 = 0uLL;
  v120 = *&v8->var0.var0;
  v121 = *&v8->var0.var2;
  v247 = *&v8->var1.var1;
  v245 = v120;
  v246 = v121;
  v248 = destinationFeatureChannelOffset;
  if (v236)
  {
    v122 = v115;
    v123 = 0;
    v230 = 0;
    v219 = v29 + 32;
    v222 = v115;
    do
    {
      contexta = objc_autoreleasePoolPush();
      if (v122 >= v8->var1.var2 - v123)
      {
        v130 = v8->var1.var2 - v123;
      }

      else
      {
        v130 = v122;
      }

      if ((v228 & 1) == 0)
      {
        v181 = 0;
        v182 = 16;
        v183 = v219;
        v184 = 15;
        do
        {
          v185 = objc_msgSend_objectAtIndexedSubscript_(v9, v124, v181, v125, v126, v127, v128, v129, v219);
          v189 = sub_239D42A38(v185, v10, *(&self->_srcInfo->var0.var0 + v182) + v123, v130, (v183 + 1), v186, v187, v188);
          *v183 = v189;
          *&v240[2 * v184] = v130;
          if (v189)
          {
            v191 = v234;
          }

          else
          {
            v191 = 1;
          }

          if ((v191 & 1) == 0)
          {
            v192 = v189;
            v193 = objc_msgSend_userDictionary(v10, v124, v190, v125, v126, v127, v128, v129);
            v200 = objc_msgSend_objectForKey_(v193, v194, @"_MPSCommandBufferRetainListKey", v195, v196, v197, v198, v199);
            if (!v200)
            {
              v207 = objc_alloc_init(MEMORY[0x277CBEB18]);
              objc_msgSend_setObject_forKey_(v193, v208, v207, @"_MPSCommandBufferRetainListKey", v209, v210, v211, v212);

              v249 = MEMORY[0x277D85DD0];
              v250 = 3221225472;
              v251 = sub_239D44B70;
              v252 = &unk_278B28F28;
              v253 = @"_MPSCommandBufferRetainListKey";
              objc_msgSend_addCompletedHandler_(v232, v213, &v249, v214, v215, v216, v217, v218);
              v200 = v207;
              v9 = v231;
            }

            objc_msgSend_addObject_(v200, v201, v192, v202, v203, v204, v205, v206);
            v10 = v232;
          }

          ++v181;
          v184 += 24;
          v183 += 6;
          v182 += 96;
          v22 = v233;
        }

        while (v233 != v181);
      }

      v235 = 0;
      v8 = v224;
      v131 = sub_239D42A38(a7, v10, v224->var0.var2 + v123, v130, &v235, v127, v128, v129);
      v237 = v130;
      v238 = v123;
      *(&v241 + 1) = v131;
      LODWORD(v241) = v235;
      HIWORD(v242) = v130;
      WORD4(v243) = v230;
      if (v131)
      {
        v139 = v234;
      }

      else
      {
        v139 = 1;
      }

      if ((v139 & 1) == 0)
      {
        v140 = v131;
        v141 = objc_msgSend_userDictionary(v10, v132, v133, v134, v135, v136, v137, v138);
        v148 = objc_msgSend_objectForKey_(v141, v142, @"_MPSCommandBufferRetainListKey", v143, v144, v145, v146, v147);
        if (!v148)
        {
          v155 = objc_alloc_init(MEMORY[0x277CBEB18]);
          objc_msgSend_setObject_forKey_(v141, v156, v155, @"_MPSCommandBufferRetainListKey", v157, v158, v159, v160);

          v249 = MEMORY[0x277D85DD0];
          v250 = 3221225472;
          v251 = sub_239D44B70;
          v252 = &unk_278B28F28;
          v253 = @"_MPSCommandBufferRetainListKey";
          objc_msgSend_addCompletedHandler_(v232, v161, &v249, v162, v163, v164, v165, v166);
          v148 = v155;
          v22 = v233;
        }

        objc_msgSend_addObject_(v148, v149, v140, v150, v151, v152, v153, v154, v219);
        v10 = v232;
      }

      (self->_batchEncode)(self->_encodeData, v225, v10, &v236);
      if ((v228 & 1) == 0)
      {
        v173 = 0;
        v174 = 16;
        do
        {
          v175 = objc_msgSend_objectAtIndexedSubscript_(v9, v167, v173, v168, v169, v170, v171, v172, v219);
          objc_msgSend_subarrayWithRange_(v175, v176, *(&self->_srcInfo->var0.var0 + v174) + v123, v130, v177, v178, v179, v180);
          MPSDecrementReadCount();
          ++v173;
          v174 += 96;
        }

        while (v22 != v173);
      }

      objc_autoreleasePoolPop(contexta);
      v122 = v222;
      v123 += v222;
      ++v230;
    }

    while (v123 < v224->var1.var2);
  }

  if (v221 != v254)
  {
    free(v221);
  }
}

- (void)encodeBatchToCommandEncoder:(id)a3 commandBuffer:(id)a4 sourceImages:(id)a5 inStates:(id)a6 destinationImages:(id)a7
{
  v8 = a7;
  v10 = self;
  srcCount = self->_srcCount;
  v12 = objc_msgSend_count(a5, a2, a3, a4, a5, a6, a7, v7);
  if (srcCount >= v12)
  {
    v19 = v12;
  }

  else
  {
    v19 = srcCount;
  }

  v330 = *MEMORY[0x277CD7378];
  v339 = v10;
  v337 = v19;
  if ((*(&v10->super.super.isa + v330) & 1) == 0)
  {
    if (!a4)
    {
      v298 = MTLReportFailureTypeEnabled();
      v19 = v337;
      if (v298)
      {
        v299 = objc_opt_class();
        v318 = NSStringFromClass(v299);
        v322 = NSStringFromSelector(a2);
        MTLReportFailure();
        v19 = v337;
      }
    }

    if (!a5)
    {
      v300 = MTLReportFailureTypeEnabled();
      v19 = v337;
      if (v300)
      {
        v301 = objc_opt_class();
        v318 = NSStringFromClass(v301);
        v322 = NSStringFromSelector(a2);
        MTLReportFailure();
        v19 = v337;
      }
    }

    if (v8)
    {
      p_checkFlags = &v10->_checkFlags;
    }

    else
    {
      if (MTLReportFailureTypeEnabled())
      {
        v302 = objc_opt_class();
        v318 = NSStringFromClass(v302);
        v322 = NSStringFromSelector(a2);
        MTLReportFailure();
      }

      p_checkFlags = &v10->_checkFlags;
      if ((v10->_checkFlags & 0x1000) == 0 && MTLReportFailureTypeEnabled())
      {
        v303 = objc_opt_class();
        v318 = NSStringFromClass(v303);
        v322 = NSStringFromSelector(a2);
        MTLReportFailure();
      }

      v19 = v337;
    }

    v21 = *MEMORY[0x277CD7348];
    if ((*(&v10->super.super.isa + v330) & ~*(&v10->super.super.isa + v21)) != 0)
    {
      v304 = MTLReportFailureTypeEnabled();
      v19 = v337;
      if (v304)
      {
        v305 = objc_opt_class();
        v306 = NSStringFromClass(v305);
        v322 = NSStringFromSelector(a2);
        v323 = *(&v10->super.super.isa + v330) & ~*(&v10->super.super.isa + v21);
        v318 = v306;
        MTLReportFailure();
        v19 = v337;
      }
    }

    if (v19)
    {
      v22 = 0;
      for (i = 0; i != v19; ++i)
      {
        if (v10->_srcInfo[v22].var0.var2 < 0)
        {
          v26 = MTLReportFailureTypeEnabled();
          v19 = v337;
          if (v26)
          {
            v27 = objc_opt_class();
            v28 = NSStringFromClass(v27);
            v322 = NSStringFromSelector(a2);
            v323 = i;
            v318 = v28;
            v10 = v339;
            MTLReportFailure();
            v19 = v337;
          }
        }

        if ((*(p_checkFlags + 2) & 4) == 0 && v10->_srcInfo[v22].var9 >= 2)
        {
          v24 = MTLReportFailureTypeEnabled();
          v19 = v337;
          if (v24)
          {
            v25 = objc_opt_class();
            v318 = NSStringFromClass(v25);
            v322 = NSStringFromSelector(a2);
            v10 = v339;
            MTLReportFailure();
            v19 = v337;
          }
        }

        ++v22;
      }
    }
  }

  v328 = a4;
  if (v8)
  {
    v29 = objc_msgSend_objectAtIndexedSubscript_(v8, v13, 0, v14, v15, v16, v17, v18);
    v37 = objc_msgSend_width(v29, v30, v31, v32, v33, v34, v35, v36);
    v44 = objc_msgSend_objectAtIndexedSubscript_(v8, v38, 0, v39, v40, v41, v42, v43);
    v52 = objc_msgSend_height(v44, v45, v46, v47, v48, v49, v50, v51);
    v60 = objc_msgSend_count(v8, v53, v54, v55, v56, v57, v58, v59);
  }

  else
  {
    v60 = 0;
    v52 = 0;
    v37 = 0;
  }

  memset(&v343, 0, sizeof(v343));
  v342.width = v37;
  v342.height = v52;
  v334 = v52;
  v342.depth = v60;
  v61 = *&v10->_clipRect.origin.z;
  *&v341.origin.x = *&v10->_clipRect.origin.x;
  *&v341.origin.z = v61;
  *&v341.size.height = *&v10->_clipRect.size.height;
  MPSGetEffectiveClipRegion(&v343, &v342, &v341);
  v68 = objc_msgSend_objectAtIndexedSubscript_(a5, v62, 0, v63, v64, v65, v66, v67);
  v75 = objc_msgSend_objectAtIndexedSubscript_(v68, v69, 0, v70, v71, v72, v73, v74);
  v336 = objc_msgSend_featureChannels(v75, v76, v77, v78, v79, v80, v81, v82);
  v89 = objc_msgSend_objectAtIndexedSubscript_(v8, v83, 0, v84, v85, v86, v87, v88);
  v335 = objc_msgSend_featureChannels(v89, v90, v91, v92, v93, v94, v95, v96);
  if ((*(&v10->super.super.isa + v330) & 1) == 0)
  {
    objc_msgSend_count(v8, v97, v98, v99, v100, v101, v102, v103);
    v104 = v343.size.depth + v343.origin.z;
    if (v104 > objc_msgSend_count(v8, v105, v106, v107, v108, v109, v110, v111) && MTLReportFailureTypeEnabled())
    {
      v307 = objc_opt_class();
      v308 = NSStringFromClass(v307);
      v309 = NSStringFromSelector(a2);
      z = v343.origin.z;
      depth = v343.size.depth;
      v325 = objc_msgSend_count(v8, v311, v312, v313, v314, v315, v316, v317);
      v322 = v309;
      v323 = z;
      v318 = v308;
      MTLReportFailure();
    }

    if (v337)
    {
      v118 = 16;
      v119 = v337;
      do
      {
        objc_msgSend_count(a5, v97, v112, v113, v114, v115, v116, v117, v318, v322, v323, depth, v325);
        v120 = v343.size.depth + *(&v339->_srcInfo->var0.var0 + v118);
        if (v120 > objc_msgSend_count(a5, v121, v122, v123, v124, v125, v126, v127) && MTLReportFailureTypeEnabled())
        {
          v128 = objc_opt_class();
          v129 = NSStringFromClass(v128);
          v130 = NSStringFromSelector(a2);
          v131 = *(&v339->_srcInfo->var0.var0 + v118);
          depth = v343.size.depth;
          v325 = objc_msgSend_count(a5, v132, v133, v134, v135, v136, v137, v138);
          v322 = v130;
          v323 = v131;
          v318 = v129;
          MTLReportFailure();
        }

        v118 += 96;
        --v119;
      }

      while (v119);
      v10 = v339;
      if (v343.size.depth)
      {
        v139 = 0;
        v140 = MEMORY[0x277CD7320];
        v331 = v8;
        do
        {
          v141 = objc_msgSend_objectAtIndexedSubscript_(v8, v97, v343.origin.z + v139, v113, v114, v115, v116, v117, v318, v322, v323);
          v148 = objc_msgSend_objectAtIndexedSubscript_(a5, v142, 0, v143, v144, v145, v146, v147);
          v155 = objc_msgSend_objectAtIndexedSubscript_(v148, v149, v10->_srcInfo->var0.var2 + v139, v150, v151, v152, v153, v154);
          v156 = 0;
          v333 = *(v155 + *MEMORY[0x277CD7330]);
          v332 = *(v155 + *MEMORY[0x277CD7308]);
          v338 = *(v155 + *MEMORY[0x277CD72F8]);
          do
          {
            v157 = objc_msgSend_objectAtIndexedSubscript_(a5, v97, v156, v113, v114, v115, v116, v117, v318);
            v171 = objc_msgSend_objectAtIndexedSubscript_(v157, v158, v339->_srcInfo[v156].var0.var2 + v139, v159, v160, v161, v162, v163);
            v172 = *&v171[*MEMORY[0x277CD7330]];
            v173 = *&v171[*MEMORY[0x277CD7308]];
            if (*&v171[*MEMORY[0x277CD7310]] != 1 && MTLReportFailureTypeEnabled())
            {
              v221 = objc_opt_class();
              v319 = NSStringFromClass(v221);
              v322 = NSStringFromSelector(a2);
              MTLReportFailure();
            }

            if ((v339->_checkFlags & 0x4000) == 0 && (v172 != v333 || v173 != v332))
            {
              if (MTLReportFailureTypeEnabled())
              {
                v254 = objc_opt_class();
                v319 = NSStringFromClass(v254);
                v322 = NSStringFromSelector(a2);
                MTLReportFailure();
              }
            }

            if (v336 != v338 && MTLReportFailureTypeEnabled())
            {
              v222 = objc_opt_class();
              v319 = NSStringFromClass(v222);
              MTLReportFailure();
            }

            objc_msgSend_numberOfImages(v141, v164, v165, v166, v167, v168, v169, v170, v319);
            if (objc_msgSend_numberOfImages(v141, v175, v176, v177, v178, v179, v180, v181) != 1 && MTLReportFailureTypeEnabled())
            {
              v223 = objc_opt_class();
              v320 = NSStringFromClass(v223);
              MTLReportFailure();
            }

            if (v37 == objc_msgSend_width(v141, v182, v183, v184, v185, v186, v187, v188, v320))
            {
              objc_msgSend_height(v141, v189, v190, v191, v192, v193, v194, v195);
            }

            if ((v37 != objc_msgSend_width(v141, v189, v190, v191, v192, v193, v194, v195) || v334 != objc_msgSend_height(v141, v196, v197, v198, v199, v200, v201, v202)) && MTLReportFailureTypeEnabled())
            {
              v220 = objc_opt_class();
              v321 = NSStringFromClass(v220);
              MTLReportFailure();
            }

            objc_msgSend_featureChannels(v141, v203, v204, v205, v206, v207, v208, v209, v321);
            if (v335 != objc_msgSend_featureChannels(v141, v210, v211, v212, v213, v214, v215, v216) && MTLReportFailureTypeEnabled())
            {
              v224 = objc_opt_class();
              v318 = NSStringFromClass(v224);
              MTLReportFailure();
            }

            if ((v141[*v140 + 56] & 1) != 0 && !*&v141[*MEMORY[0x277CD7490]] && MTLReportFailureTypeEnabled())
            {
              v235 = objc_opt_class();
              v236 = NSStringFromClass(v235);
              v322 = NSStringFromSelector(a2);
              v323 = objc_msgSend_debugDescription(v141, v237, v238, v239, v240, v241, v242, v243);
              v318 = v236;
              MTLReportFailure();
            }

            if ((v171[*v140 + 56] & 1) != 0 && !*&v171[*MEMORY[0x277CD7490]] && MTLReportFailureTypeEnabled())
            {
              v244 = objc_opt_class();
              v245 = NSStringFromClass(v244);
              v322 = NSStringFromSelector(a2);
              v323 = objc_msgSend_debugDescription(v171, v246, v247, v248, v249, v250, v251, v252);
              v318 = v245;
              MTLReportFailure();
            }

            v217 = &v171[*v140];
            if ((v217[7] & 2) == 0)
            {
              v218 = v337;
              atomic_load_explicit(v217, memory_order_acquire);
              v219 = &v171[*v140];
              if ((v219[56] & 2) == 0)
              {
                goto LABEL_61;
              }

              do
              {
LABEL_60:
                v219 = *(v219 + 5);
              }

              while ((v219[56] & 2) != 0);
              goto LABEL_61;
            }

            v218 = v337;
            do
            {
              v217 = v217[5];
            }

            while ((v217[7] & 2) != 0);
            atomic_load_explicit(v217, memory_order_acquire);
            v219 = &v171[*v140];
            if ((v219[56] & 2) != 0)
            {
              goto LABEL_60;
            }

LABEL_61:
            if (!atomic_load_explicit(v219, memory_order_acquire))
            {
              v225 = MTLReportFailureTypeEnabled();
              v218 = v337;
              if (v225)
              {
                v226 = objc_opt_class();
                v227 = NSStringFromClass(v226);
                v322 = NSStringFromSelector(a2);
                v323 = objc_msgSend_debugDescription(v171, v228, v229, v230, v231, v232, v233, v234);
                v318 = v227;
                MTLReportFailure();
                v218 = v337;
              }
            }

            ++v156;
          }

          while (v156 != v218);
          ++v139;
          v8 = v331;
          v10 = v339;
        }

        while (v139 < v343.size.depth);
      }
    }

    else if (v343.size.depth)
    {
      v255 = 0;
      do
      {
        objc_msgSend_objectAtIndexedSubscript_(v8, v97, v255 + v343.origin.z, v113, v114, v115, v116, v117, v318, v322, v323, depth, v325);
        v262 = objc_msgSend_objectAtIndexedSubscript_(a5, v256, 0, v257, v258, v259, v260, v261);
        objc_msgSend_objectAtIndexedSubscript_(v262, v263, v255 + v10->_srcInfo->var0.var2, v264, v265, v266, v267, v268);
        ++v255;
      }

      while (v255 < v343.size.depth);
    }
  }

  if (a5)
  {
    if (a3)
    {
      v341 = v343;
      objc_msgSend_encodeInternalBatchToCommandEncoder_commandBuffer_sourceImages_inStates_destinationImages_clipRect_(v10, v97, a3, v328, a5, a6, v8, &v341);
    }

    else
    {
      v269 = objc_alloc(MEMORY[0x277CD7210]);
      v281 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v269, v270, v328, 0, v271, v272, v273, v274);
      v342.width = v281;
      v342.height = v10;
      if ((*(&v10->super.super.isa + v330) & 0x18) != 0)
      {
        v282 = *(&v10->super.super.isa + *MEMORY[0x277CD7360]);
        if (v282 || (v283 = objc_opt_class(), v284 = NSStringFromClass(v283), objc_msgSend_setLabel_(v10, v285, v284, v286, v287, v288, v289, v290), (v282 = v284) != 0))
        {
          objc_msgSend_setLabel_(v281, v275, v282, v276, v277, v278, v279, v280, v318);
        }
      }

      v341 = v343;
      objc_msgSend_encodeInternalBatchToCommandEncoder_commandBuffer_sourceImages_inStates_destinationImages_clipRect_(v10, v275, v281, v328, a5, a6, v8, &v341, v318);
      objc_msgSend_endEncoding(v281, v291, v292, v293, v294, v295, v296, v297);
    }
  }
}

- (MPSState)resultStateForSourceImages:(NSArray *)sourceImages sourceStates:(NSArray *)sourceStates destinationImage:(MPSImage *)destinationImage
{
  v9 = [MPSNNMultiaryGradientState alloc];
  v19 = objc_msgSend_initWithSourceCount_(v9, v10, self->_srcCount, v11, v12, v13, v14, v15);
  if (v19)
  {
    objc_msgSend_copyToGradientState_sourceImages_sourceStates_destinationImage_(self, v16, v19, sourceImages, sourceStates, destinationImage, v17, v18);
    if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 0x10) != 0)
    {
      v20 = MEMORY[0x277CCACA8];
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v29 = objc_msgSend_stringWithFormat_(v20, v23, @"created by %@", v24, v25, v26, v27, v28, v22);
      objc_msgSend_setLabel_(v19, v30, v29, v31, v32, v33, v34, v35);
    }
  }

  return v19;
}

- (MPSStateBatch)resultStateBatchForSourceImages:(NSArray *)sourceImages sourceStates:(NSArray *)sourceStates destinationImage:(MPSImageBatch *)destinationImage
{
  v8 = destinationImage;
  v20 = objc_msgSend_count(destinationImage, a2, sourceImages, sourceStates, destinationImage, v5, v6, v7);
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (!sourceImages && MTLReportFailureTypeEnabled())
    {
      v210 = objc_opt_class();
      v211 = NSStringFromClass(v210);
      v213 = NSStringFromSelector(a2);
      MTLReportFailure();
    }

    if (sourceStates && objc_msgSend_count(sourceStates, v13, v14, v15, v16, v17, v18, v19))
    {
      v21 = 0;
      do
      {
        v22 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v13, v21, v15, v16, v17, v18, v19, v211, v213);
        objc_msgSend_count(v22, v23, v24, v25, v26, v27, v28, v29);
        v36 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v30, v21, v31, v32, v33, v34, v35);
        if (objc_msgSend_count(v36, v37, v38, v39, v40, v41, v42, v43) < v20 && MTLReportFailureTypeEnabled())
        {
          v51 = objc_opt_class();
          v212 = NSStringFromClass(v51);
          MTLReportFailure();
        }

        ++v21;
      }

      while (v21 < objc_msgSend_count(sourceStates, v44, v45, v46, v47, v48, v49, v50, v212));
    }
  }

  if (!v20)
  {
    return 0;
  }

  v52 = objc_msgSend_count(sourceImages, v13, v14, v15, v16, v17, v18, v19);
  v53 = 0x277CBE000uLL;
  v60 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v54, v52, v55, v56, v57, v58, v59);
  v68 = v60;
  if (v52 && v60)
  {
    for (i = 0; i != v52; ++i)
    {
      v70 = objc_msgSend_objectAtIndexedSubscript_(sourceImages, v61, i, v63, v64, v65, v66, v67, v211);
      v77 = objc_msgSend_objectAtIndexedSubscript_(v70, v71, 0, v72, v73, v74, v75, v76);
      objc_msgSend_setObject_atIndexedSubscript_(v68, v78, v77, i, v79, v80, v81, v82);
    }
  }

  if (sourceStates)
  {
    v83 = objc_msgSend_count(sourceStates, v61, v62, v63, v64, v65, v66, v67);
    v90 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v84, v83, v85, v86, v87, v88, v89);
    if (v90 && v83)
    {
      for (j = 0; j != v83; ++j)
      {
        v92 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v61, j, v63, v64, v65, v66, v67, v211);
        v99 = objc_msgSend_objectAtIndexedSubscript_(v92, v93, 0, v94, v95, v96, v97, v98);
        objc_msgSend_setObject_atIndexedSubscript_(v90, v100, v99, j, v101, v102, v103, v104);
      }
    }
  }

  else
  {
    v90 = 0;
  }

  v105 = objc_msgSend_objectAtIndexedSubscript_(v8, v61, 0, v63, v64, v65, v66, v67, v211);
  v110 = objc_msgSend_resultStateForSourceImages_sourceStates_destinationImage_(self, v106, v68, v90, v105, v107, v108, v109);
  if (!v110)
  {
    return 0;
  }

  v111 = v110;
  v112 = objc_alloc(MEMORY[0x277CBEB18]);
  v119 = objc_msgSend_initWithCapacity_(v112, v113, v20, v114, v115, v116, v117, v118);
  v125 = v119;
  if (v119)
  {
    objc_msgSend_setObject_atIndexedSubscript_(v119, v120, v111, 0, v121, v122, v123, v124);
    if (objc_msgSend_isResultStateReusedAcrossBatch(self, v126, v127, v128, v129, v130, v131, v132))
    {
      if (v20 != 1)
      {
        if (v20 <= 2)
        {
          v140 = 2;
        }

        else
        {
          v140 = v20;
        }

        for (k = 1; k != v140; ++k)
        {
          objc_msgSend_setObject_atIndexedSubscript_(v125, v133, v111, k, v136, v137, v138, v139);
        }
      }

      return v125;
    }

    if (v20 == 1)
    {
      return v125;
    }

    v143 = 2;
    if (v20 > 2)
    {
      v143 = v20;
    }

    v214 = v143;
    for (m = 1; m != v214; ++m)
    {
      v157 = objc_msgSend_count(sourceImages, v133, v134, v135, v136, v137, v138, v139);
      v164 = objc_msgSend_arrayWithCapacity_(*(v53 + 2840), v158, v157, v159, v160, v161, v162, v163);
      v172 = v164;
      if (v157 && v164)
      {
        for (n = 0; n != v157; ++n)
        {
          v174 = objc_msgSend_objectAtIndexedSubscript_(sourceImages, v165, n, v167, v168, v169, v170, v171);
          v181 = objc_msgSend_objectAtIndexedSubscript_(v174, v175, m, v176, v177, v178, v179, v180);
          objc_msgSend_setObject_atIndexedSubscript_(v172, v182, v181, n, v183, v184, v185, v186);
        }
      }

      if (sourceStates)
      {
        v187 = objc_msgSend_count(sourceStates, v165, v166, v167, v168, v169, v170, v171);
        v145 = objc_msgSend_arrayWithCapacity_(*(v53 + 2840), v188, v187, v189, v190, v191, v192, v193);
        if (v145 && v187)
        {
          v194 = self;
          v195 = v8;
          for (ii = 0; ii != v187; ++ii)
          {
            v197 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v165, ii, v167, v168, v169, v170, v171);
            v204 = objc_msgSend_objectAtIndexedSubscript_(v197, v198, m, v199, v200, v201, v202, v203);
            objc_msgSend_setObject_atIndexedSubscript_(v145, v205, v204, ii, v206, v207, v208, v209);
          }

          v8 = v195;
          self = v194;
          v53 = 0x277CBE000;
          v146 = objc_msgSend_objectAtIndexedSubscript_(v8, v165, m, v167, v168, v169, v170, v171);
          goto LABEL_41;
        }
      }

      else
      {
        v145 = 0;
      }

      v146 = objc_msgSend_objectAtIndexedSubscript_(v8, v165, m, v167, v168, v169, v170, v171);
LABEL_41:
      v151 = objc_msgSend_resultStateForSourceImages_sourceStates_destinationImage_(self, v147, v172, v145, v146, v148, v149, v150);
      objc_msgSend_setObject_atIndexedSubscript_(v125, v152, v151, m, v153, v154, v155, v156);
    }
  }

  return v125;
}

- (MPSState)temporaryResultStateForCommandBuffer:(id)commandBuffer sourceImages:(NSArray *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImage *)destinationImage
{
  v10 = [MPSNNMultiaryGradientState alloc];
  v20 = objc_msgSend_initWithSourceCount_(v10, v11, self->_srcCount, v12, v13, v14, v15, v16);
  if (v20)
  {
    objc_msgSend_copyToGradientState_sourceImages_sourceStates_destinationImage_(self, v17, v20, sourceImage, sourceStates, destinationImage, v18, v19);
    if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 0x10) != 0)
    {
      v21 = MEMORY[0x277CCACA8];
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v30 = objc_msgSend_stringWithFormat_(v21, v24, @"created by %@", v25, v26, v27, v28, v29, v23);
      objc_msgSend_setLabel_(v20, v31, v30, v32, v33, v34, v35, v36);
    }
  }

  return v20;
}

- (MPSStateBatch)temporaryResultStateBatchForCommandBuffer:(id)commandBuffer sourceImages:(NSArray *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImageBatch *)destinationImage
{
  v19 = objc_msgSend_count(sourceImage, a2, commandBuffer, sourceImage, sourceStates, destinationImage, v6, v7);
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (!commandBuffer && MTLReportFailureTypeEnabled())
    {
      v239 = objc_opt_class();
      v241 = NSStringFromClass(v239);
      v243 = NSStringFromSelector(a2);
      MTLReportFailure();
    }

    if (!sourceImage && MTLReportFailureTypeEnabled())
    {
      v240 = objc_opt_class();
      v241 = NSStringFromClass(v240);
      v243 = NSStringFromSelector(a2);
      MTLReportFailure();
    }

    if (!sourceStates)
    {
      if (v19)
      {
        v57 = objc_autoreleasePoolPush();
        goto LABEL_29;
      }

      return 0;
    }

    if (objc_msgSend_count(sourceStates, v12, v13, v14, v15, v16, v17, v18))
    {
      v26 = 0;
      do
      {
        v27 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v20, v26, v21, v22, v23, v24, v25, v241, v243);
        objc_msgSend_count(v27, v28, v29, v30, v31, v32, v33, v34);
        v41 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v35, v26, v36, v37, v38, v39, v40);
        if (objc_msgSend_count(v41, v42, v43, v44, v45, v46, v47, v48) < v19 && MTLReportFailureTypeEnabled())
        {
          v56 = objc_opt_class();
          v242 = NSStringFromClass(v56);
          v244 = NSStringFromSelector(a2);
          MTLReportFailure();
        }

        ++v26;
      }

      while (v26 < objc_msgSend_count(sourceStates, v49, v50, v51, v52, v53, v54, v55, v242, v244));
    }
  }

  if (!v19)
  {
    return 0;
  }

  v57 = objc_autoreleasePoolPush();
  if (!sourceStates)
  {
LABEL_29:
    context = v57;
    v154 = objc_msgSend_count(sourceImage, v58, v59, v60, v61, v62, v63, v64, v241, v243);
    v161 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v155, v154, v156, v157, v158, v159, v160);
    v111 = v161;
    v139 = 0;
    LOBYTE(v126) = 1;
    if (v154 && v161)
    {
      for (i = 0; i != v154; ++i)
      {
        v163 = objc_msgSend_objectAtIndexedSubscript_(sourceImage, v133, i, v134, v135, v136, v137, v138);
        v170 = objc_msgSend_objectAtIndexedSubscript_(v163, v164, 0, v165, v166, v167, v168, v169);
        objc_msgSend_setObject_atIndexedSubscript_(v111, v171, v170, i, v172, v173, v174, v175);
      }

      v139 = 0;
      v66 = 0;
      v81 = 0;
      LOBYTE(v126) = 1;
    }

    else
    {
      v66 = 0;
      v81 = 0;
    }

    goto LABEL_35;
  }

  v65 = v57;
  v66 = objc_msgSend_count(sourceStates, v58, v59, v60, v61, v62, v63, v64);
  v73 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v67, v66, v68, v69, v70, v71, v72);
  if (!v73)
  {
    v198 = v65;
    goto LABEL_42;
  }

  v81 = v73;
  context = v65;
  if (v66)
  {
    for (j = 0; j != v66; ++j)
    {
      v83 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v74, j, v76, v77, v78, v79, v80, v241, v243);
      v90 = objc_msgSend_objectAtIndexedSubscript_(v83, v84, 0, v85, v86, v87, v88, v89);
      objc_msgSend_setObject_atIndexedSubscript_(v81, v91, v90, j, v92, v93, v94, v95);
    }
  }

  v96 = objc_msgSend_count(sourceImage, v74, v75, v76, v77, v78, v79, v80, v241, v243);
  v103 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v97, v96, v98, v99, v100, v101, v102);
  v111 = v103;
  if (v96 && v103)
  {
    for (k = 0; k != v96; ++k)
    {
      v113 = objc_msgSend_objectAtIndexedSubscript_(sourceImage, v104, k, v106, v107, v108, v109, v110);
      v120 = objc_msgSend_objectAtIndexedSubscript_(v113, v114, 0, v115, v116, v117, v118, v119);
      objc_msgSend_setObject_atIndexedSubscript_(v111, v121, v120, k, v122, v123, v124, v125);
    }
  }

  v126 = objc_msgSend_count(sourceStates, v104, v105, v106, v107, v108, v109, v110);
  v139 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v127, v126, v128, v129, v130, v131, v132);
  if (!v139)
  {
    goto LABEL_26;
  }

  if (v126)
  {
    for (m = 0; m != v126; ++m)
    {
      v141 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v133, m, v134, v135, v136, v137, v138);
      v148 = objc_msgSend_objectAtIndexedSubscript_(v141, v142, 0, v143, v144, v145, v146, v147);
      objc_msgSend_setObject_atIndexedSubscript_(v139, v149, v148, m, v150, v151, v152, v153);
    }

LABEL_26:
    LOBYTE(v126) = 0;
  }

LABEL_35:
  v176 = objc_msgSend_objectAtIndexedSubscript_(destinationImage, v133, 0, v134, v135, v136, v137, v138);
  v180 = objc_msgSend_temporaryResultStateForCommandBuffer_sourceImages_sourceStates_destinationImage_(self, v177, commandBuffer, v111, v139, v176, v178, v179);
  if (!v180 || (v181 = v180, (v182 = malloc_type_malloc(8 * v19, 0x80040B8603338uLL)) == 0))
  {
    v198 = context;
LABEL_42:
    objc_autoreleasePoolPop(v198);
    return 0;
  }

  v190 = v182;
  if (!objc_msgSend_isResultStateReusedAcrossBatch(self, v183, v184, v185, v186, v187, v188, v189))
  {
    *v190 = v181;
    if (v19 >= 2)
    {
      if (v66)
      {
        v200 = v126;
      }

      else
      {
        v200 = 1;
      }

      for (n = 1; n != v19; ++n)
      {
        if ((v200 & 1) == 0)
        {
          v213 = 0;
          do
          {
            v214 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v191, v213, v192, v193, v194, v195, v196);
            v221 = objc_msgSend_objectAtIndexedSubscript_(v214, v215, n, v216, v217, v218, v219, v220);
            objc_msgSend_setObject_atIndexedSubscript_(v81, v222, v221, n, v223, v224, v225, v226);
            ++v213;
          }

          while (v66 != v213);
        }

        v202 = objc_msgSend_objectAtIndexedSubscript_(sourceImage, v191, n, v192, v193, v194, v195, v196);
        v209 = objc_msgSend_objectAtIndexedSubscript_(destinationImage, v203, n, v204, v205, v206, v207, v208);
        v190[n] = objc_msgSend_temporaryResultStateForCommandBuffer_sourceImages_sourceStates_destinationImage_(self, v210, commandBuffer, v202, v81, v209, v211, v212);
      }
    }

    goto LABEL_59;
  }

  if (v19 < 4)
  {
    v197 = 0;
LABEL_57:
    v230 = v19 - v197;
    v231 = &v190[v197];
    do
    {
      *v231++ = v181;
      --v230;
    }

    while (v230);
    goto LABEL_59;
  }

  v197 = v19 & 0xFFFFFFFFFFFFFFFCLL;
  v227 = vdupq_n_s64(v181);
  v228 = (v190 + 2);
  v229 = v19 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v228[-1] = v227;
    *v228 = v227;
    v228 += 2;
    v229 -= 4;
  }

  while (v229);
  if (v19 != v197)
  {
    goto LABEL_57;
  }

LABEL_59:
  v232 = objc_alloc(MEMORY[0x277CBEA60]);
  v238 = objc_msgSend_initWithObjects_count_(v232, v233, v190, v19, v234, v235, v236, v237);
  free(v190);
  objc_autoreleasePoolPop(context);

  return v238;
}

- (void)copyToGradientState:(id)a3 sourceImages:(id)a4 sourceStates:(id)a5 destinationImage:(id)a6
{
  v58 = a6;
  v7 = a3;
  memcpy(*(a3 + 7), self->_srcInfo, 96 * self->_srcCount);
  v15 = MEMORY[0x277CD7330];
  v16 = MEMORY[0x277CD7308];
  v17 = MEMORY[0x277CD7310];
  if (self->_srcCount)
  {
    v18 = 0;
    v19 = 0;
    v59 = self;
    do
    {
      v20 = v7;
      v21 = v17;
      v22 = v15;
      v23 = *(objc_msgSend_objectAtIndexedSubscript_(a4, v9, v19, v10, v11, v12, v13, v14, v58) + *v15);
      v30 = *(objc_msgSend_objectAtIndexedSubscript_(a4, v24, v19, v25, v26, v27, v28, v29) + *v16);
      v37 = objc_msgSend_objectAtIndexedSubscript_(a4, v31, v19, v32, v33, v34, v35, v36);
      v17 = v21;
      v7 = v20;
      v38 = *(v37 + *v17);
      v39 = (*(v20 + 8) + v18);
      *v39 = v23;
      v39[1] = v30;
      v15 = v22;
      self = v59;
      v39[2] = v38;
      ++v19;
      v18 += 24;
    }

    while (v19 < v59->_srcCount);
  }

  v41 = *&self->_clipRect.origin.z;
  v40 = *&self->_clipRect.size.height;
  *(v7 + 72) = *&self->_clipRect.origin.x;
  *(v7 + 88) = v41;
  *(v7 + 104) = v40;
  v42 = *&v58[*v16];
  v43 = *&v58[*v17];
  *(v7 + 15) = *&v58[*v15];
  *(v7 + 16) = v42;
  *(v7 + 17) = v43;
  *(v7 + 18) = *&v58[*MEMORY[0x277CD72F8]];
  *(v7 + 19) = self->_destinationFeatureChannelOffset;
  *(v7 + 20) = self->_padding;
  *(v7 + 21) = objc_msgSend_maxBatchSize(self, v44, v45, v46, v47, v48, v49, v50);
  v7[176] = self->_isBackwards;
  v7[177] = objc_msgSend_isResultStateReusedAcrossBatch(self, v51, v52, v53, v54, v55, v56, v57);
  *(v7 + 45) = 123928;
}

- (MPSImageDescriptor)destinationImageDescriptorForSourceImages:(NSArray *)sourceImages sourceStates:(NSArray *)sourceStates
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0 && !self->_padding && MTLReportFailureTypeEnabled())
  {
    v42 = objc_opt_class();
    v44 = NSStringFromClass(v42);
    MTLReportFailure();
  }

  v11 = objc_msgSend_paddingMethod(self->_padding, a2, sourceImages, sourceStates, v4, v5, v6, v7, v44);
  v23 = objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_paddingMethod_(self, v12, sourceImages, sourceStates, v11, v13, v14, v15);
  if (sourceStates)
  {
    v24 = objc_msgSend_count(sourceStates, v16, v17, v18, v19, v20, v21, v22);
    if (v24)
    {
      v31 = v24;
      for (i = 0; i != v31; ++i)
      {
        v33 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v25, i, v26, v27, v28, v29, v30);
        v23 = objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_forKernel_suggestedDescriptor_(v33, v34, sourceImages, sourceStates, self, v23, v35, v36);
      }
    }
  }

  if (!v23 || (v11 & 0x4000) == 0)
  {
    return v23;
  }

  objc_opt_respondsToSelector();
  if ((objc_opt_respondsToSelector() & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    v43 = objc_opt_class();
    NSStringFromClass(v43);
    MTLReportFailure();
  }

  padding = self->_padding;

  return objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_forKernel_suggestedDescriptor_(padding, v38, sourceImages, sourceStates, self, v23, v39, v40);
}

- (MTLRegion)clipRect
{
  v3 = *&self[2].size.width;
  *&retstr->origin.x = *&self[2].origin.y;
  *&retstr->origin.z = v3;
  *&retstr->size.height = *&self[2].size.depth;
  return self;
}

- (void)setClipRect:(MTLRegion *)clipRect
{
  v4 = *&clipRect->origin.z;
  v3 = *&clipRect->size.height;
  *&self->_clipRect.origin.x = *&clipRect->origin.x;
  *&self->_clipRect.origin.z = v4;
  *&self->_clipRect.size.height = v3;
}

@end