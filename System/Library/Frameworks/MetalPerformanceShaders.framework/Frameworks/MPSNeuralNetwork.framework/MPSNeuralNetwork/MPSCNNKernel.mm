@interface MPSCNNKernel
- (BOOL)pluginSupportsBatchEncode;
- (BOOL)setPlugin:(id)plugin;
- (MPSCNNKernel)init;
- (MPSCNNKernel)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSCNNKernel)initWithDevice:(id)device;
- (MPSImageDescriptor)destinationImageDescriptorForSourceImages:(NSArray *)sourceImages sourceStates:(NSArray *)sourceStates;
- (MPSRegion)sourceRegionForDestinationSize:(SEL)size;
- (MPSState)resultStateForSourceImage:(MPSImage *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImage *)destinationImage;
- (MPSState)temporaryResultStateForCommandBuffer:(id)commandBuffer sourceImage:(MPSImage *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImage *)destinationImage;
- (MPSStateBatch)resultStateBatchForSourceImage:(MPSImageBatch *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImageBatch *)destinationImage;
- (MPSStateBatch)temporaryResultStateBatchForCommandBuffer:(id)commandBuffer sourceImage:(MPSImageBatch *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImageBatch *)destinationImage;
- (MTLRegion)clipRect;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states paddingMethod:(unint64_t)method sourceOffset:(id *)offset kernelOffset:(id *)kernelOffset;
- (id)destinationImageWithCommandBuffer:(id)buffer sourceImage:(id)image inState:(id)state;
- (id)encodeBatchToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceImages:(id)images inStates:(id)states;
- (id)encodeBatchToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceImages:(id)images sourceStates:(id)states destinationStates:(id *)destinationStates destinationStateIsTemporary:(BOOL)temporary;
- (id)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceImage:(id)image inState:(id)state;
- (id)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceImage:(id)image sourceState:(id)state destinationState:(id *)destinationState destinationStateIsTemporary:(BOOL)temporary;
- (int16x4_t)sourcePositionOfTopLeftCornerOfFilterWindow;
- (void)copyToGradientState:(id)state sourceImage:(id)image sourceStates:(id)states destinationImage:(id)destinationImage;
- (void)dealloc;
- (void)encodeBatchToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceImages:(id)images inStates:(id)states destinationImages:(id)destinationImages;
- (void)encodeInternalBatchToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceImages:(id)images inStates:(id)states destinationImages:(id)destinationImages clipRect:(id *)rect;
- (void)encodeInternalToCommputeEncoder:(id)encoder commandBuffer:(id)buffer sourceImage:(id)image inState:(id)state destinationImage:(id)destinationImage subBatchIndex:(unint64_t)index batchSize:(unint64_t)size clipRect:(id *)self0 shouldHandleCompoundImageNatively:(BOOL)self1;
- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceImage:(id)image inState:(id)state destinationImage:(id)destinationImage subBatchIndex:(unint64_t)index batchSize:(unint64_t)size;
- (void)encodeWithCoder:(id)coder;
- (void)setClipRect:(MTLRegion *)clipRect;
- (void)setDestinationFeatureChannelOffset:(NSUInteger)destinationFeatureChannelOffset;
- (void)setOffset:(MPSOffset *)offset;
- (void)setSourceFeatureChannelMaxCount:(NSUInteger)sourceFeatureChannelMaxCount;
- (void)setSourceFeatureChannelOffset:(NSUInteger)sourceFeatureChannelOffset;
@end

@implementation MPSCNNKernel

- (MPSCNNKernel)init
{
  v3 = MTLCreateSystemDefaultDevice();
  if (v3)
  {

    return objc_msgSend_initWithDevice_(self, v4, v3, v5, v6, v7, v8, v9);
  }

  else
  {

    return 0;
  }
}

- (MPSCNNKernel)initWithDevice:(id)device
{
  v35.receiver = self;
  v35.super_class = MPSCNNKernel;
  v3 = [(MPSKernel *)&v35 initWithDevice:device];
  v11 = v3;
  if (v3)
  {
    v3->_offset.y = 0;
    v3->_offset.z = 0;
    v3->_offset.x = 0;
    v12 = *MEMORY[0x277CD7200];
    v13 = *(MEMORY[0x277CD7200] + 32);
    *&v3->_clipRect.origin.z = *(MEMORY[0x277CD7200] + 16);
    *&v3->_clipRect.size.height = v13;
    *&v3->_clipRect.origin.x = v12;
    v3->_destinationFeatureChannelOffset = 0;
    v3->_sourceFeatureChannelOffset = 0;
    v3->_sourceFeatureChannelMaxCount = -1;
    v3->_edgeMode = 0;
    v3->_checkFlags = 513;
    v3->_kernelHeight = 1;
    v3->_kernelWidth = 1;
    v3->_strideInPixelsY = 1;
    v3->_strideInPixelsX = 1;
    v3->_dilationRateY = 1;
    v3->_dilationRateX = 1;
    v3->_isBackwards = 0;
    v3->_encode = 0;
    v3->_encodeData = 0;
    v3->_batchEncode = 0;
    v3->_plugin = 0;
    v3->_pluginSupportsBatchEncode = 0;
    v3->_pluginOptions = 0;
    v14 = objc_msgSend_defaultAllocator(MEMORY[0x277CD72A8], v4, v5, v6, v7, v8, v9, v10);
    objc_msgSend_setDestinationImageAllocator_(v11, v15, v14, v16, v17, v18, v19, v20);
    v27 = objc_msgSend_paddingWithMethod_(MPSNNDefaultPadding, v21, 16, v22, v23, v24, v25, v26);
    objc_msgSend_setPadding_(v11, v28, v27, v29, v30, v31, v32, v33);
  }

  return v11;
}

- (MPSCNNKernel)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v145.receiver = self;
  v145.super_class = MPSCNNKernel;
  v5 = [(MPSKernel *)&v145 initWithCoder:aDecoder device:device];
  v12 = v5;
  if (!v5)
  {
    return v12;
  }

  if ((*(&v5->super.super.isa + *MEMORY[0x277CD7358]) & 0xFF00) == 0x100)
  {
    v5->_offset.x = objc_msgSend_decodeInt64ForKey_(aDecoder, v6, @"MPSCNNKernel.offset.x", v7, v8, v9, v10, v11);
    v12->_offset.y = objc_msgSend_decodeInt64ForKey_(aDecoder, v13, @"MPSCNNKernel.offset.y", v14, v15, v16, v17, v18);
    v12->_offset.z = objc_msgSend_decodeInt64ForKey_(aDecoder, v19, @"MPSCNNKernel.offset.z", v20, v21, v22, v23, v24);
    v12->_clipRect.origin.x = objc_msgSend_decodeInt64ForKey_(aDecoder, v25, @"MPSCNNKernel.clipRect.origin.x", v26, v27, v28, v29, v30);
    v12->_clipRect.origin.y = objc_msgSend_decodeInt64ForKey_(aDecoder, v31, @"MPSCNNKernel.clipRect.origin.y", v32, v33, v34, v35, v36);
    v12->_clipRect.origin.z = objc_msgSend_decodeInt64ForKey_(aDecoder, v37, @"MPSCNNKernel.clipRect.origin.z", v38, v39, v40, v41, v42);
    v12->_clipRect.size.width = objc_msgSend_decodeInt64ForKey_(aDecoder, v43, @"MPSCNNKernel.clipRect.size.width", v44, v45, v46, v47, v48);
    v12->_clipRect.size.height = objc_msgSend_decodeInt64ForKey_(aDecoder, v49, @"MPSCNNKernel.clipRect.size.height", v50, v51, v52, v53, v54);
    v12->_clipRect.size.depth = objc_msgSend_decodeInt64ForKey_(aDecoder, v55, @"MPSCNNKernel.clipRect.size.depth", v56, v57, v58, v59, v60);
    v12->_destinationFeatureChannelOffset = objc_msgSend_decodeInt64ForKey_(aDecoder, v61, @"MPSCNNKernel.destinationFeatureChannelOffset", v62, v63, v64, v65, v66);
    v12->_sourceFeatureChannelOffset = objc_msgSend_decodeInt64ForKey_(aDecoder, v67, @"MPSCNNKernel.sourceFeatureChannelOffset", v68, v69, v70, v71, v72);
    v12->_sourceFeatureChannelMaxCount = -1;
    if (objc_msgSend_containsValueForKey_(aDecoder, v73, @"MPSCNNKernel.sourceFeatureChannelMaxCount", v74, v75, v76, v77, v78))
    {
      v12->_sourceFeatureChannelMaxCount = objc_msgSend_decodeInt64ForKey_(aDecoder, v79, @"MPSCNNKernel.sourceFeatureChannelMaxCount", v80, v81, v82, v83, v84);
    }

    v12->_edgeMode = objc_msgSend_decodeInt64ForKey_(aDecoder, v79, @"MPSCNNKernel.edgeMode", v80, v81, v82, v83, v84);
    v12->_checkFlags = objc_msgSend_decodeInt64ForKey_(aDecoder, v85, @"MPSCNNKernel.checkFlags", v86, v87, v88, v89, v90);
    v12->_kernelWidth = objc_msgSend_decodeInt64ForKey_(aDecoder, v91, @"MPSCNNKernel.kernelWidth", v92, v93, v94, v95, v96);
    v12->_kernelHeight = objc_msgSend_decodeInt64ForKey_(aDecoder, v97, @"MPSCNNKernel.kernelHeight", v98, v99, v100, v101, v102);
    v12->_strideInPixelsX = objc_msgSend_decodeInt64ForKey_(aDecoder, v103, @"MPSCNNKernel.stride.x", v104, v105, v106, v107, v108);
    v12->_strideInPixelsY = objc_msgSend_decodeInt64ForKey_(aDecoder, v109, @"MPSCNNKernel.stride.y", v110, v111, v112, v113, v114);
    v12->_dilationRateX = objc_msgSend_decodeInt64ForKey_(aDecoder, v115, @"MPSCNNKernel.dilation.x", v116, v117, v118, v119, v120);
    v12->_dilationRateY = objc_msgSend_decodeInt64ForKey_(aDecoder, v121, @"MPSCNNKernel.dilation.y", v122, v123, v124, v125, v126);
    v12->_isBackwards = objc_msgSend_decodeBoolForKey_(aDecoder, v127, @"MPSCNNKernel.isBackward", v128, v129, v130, v131, v132);
    v12->_encode = 0;
    v12->_encodeData = 0;
    v12->_plugin = 0;
    v137 = sub_239D0D098(aDecoder, @"MPSCNNKernel.data", @"MPSCNNKernel.padding", &unk_284D166E0, v133, v134, v135, v136);
    if (v137)
    {
      v12->_padding = v137;
      v142 = sub_239D0D098(aDecoder, @"MPSCNNKernel.data2", @"MPSCNNKernel.allocator", &unk_284D1B458, v138, v139, v140, v141);
      if (v142)
      {
        v12->_destinationImageAllocator = v142;
        return v12;
      }
    }
  }

  else if ((*(&v5->super.super.isa + *MEMORY[0x277CD7358]) & 0xFFFF0000) != 0x10000 && MTLReportFailureTypeEnabled())
  {
    v144 = objc_opt_class();
    NSStringFromClass(v144);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.isa + *MEMORY[0x277CD7358] + 1) = 1;
  v154.receiver = self;
  v154.super_class = MPSCNNKernel;
  [(MPSKernel *)&v154 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(coder, v5, self->_offset.x, @"MPSCNNKernel.offset.x", v6, v7, v8, v9);
  objc_msgSend_encodeInt64_forKey_(coder, v10, self->_offset.y, @"MPSCNNKernel.offset.y", v11, v12, v13, v14);
  objc_msgSend_encodeInt64_forKey_(coder, v15, self->_offset.z, @"MPSCNNKernel.offset.z", v16, v17, v18, v19);
  objc_msgSend_encodeInt64_forKey_(coder, v20, self->_clipRect.origin.x, @"MPSCNNKernel.clipRect.origin.x", v21, v22, v23, v24);
  objc_msgSend_encodeInt64_forKey_(coder, v25, self->_clipRect.origin.y, @"MPSCNNKernel.clipRect.origin.y", v26, v27, v28, v29);
  objc_msgSend_encodeInt64_forKey_(coder, v30, self->_clipRect.origin.z, @"MPSCNNKernel.clipRect.origin.z", v31, v32, v33, v34);
  objc_msgSend_encodeInt64_forKey_(coder, v35, self->_clipRect.size.width, @"MPSCNNKernel.clipRect.size.width", v36, v37, v38, v39);
  objc_msgSend_encodeInt64_forKey_(coder, v40, self->_clipRect.size.height, @"MPSCNNKernel.clipRect.size.height", v41, v42, v43, v44);
  objc_msgSend_encodeInt64_forKey_(coder, v45, self->_clipRect.size.depth, @"MPSCNNKernel.clipRect.size.depth", v46, v47, v48, v49);
  objc_msgSend_encodeInt64_forKey_(coder, v50, self->_destinationFeatureChannelOffset, @"MPSCNNKernel.destinationFeatureChannelOffset", v51, v52, v53, v54);
  objc_msgSend_encodeInt64_forKey_(coder, v55, self->_sourceFeatureChannelOffset, @"MPSCNNKernel.sourceFeatureChannelOffset", v56, v57, v58, v59);
  objc_msgSend_encodeInt64_forKey_(coder, v60, self->_sourceFeatureChannelMaxCount, @"MPSCNNKernel.sourceFeatureChannelMaxCount", v61, v62, v63, v64);
  objc_msgSend_encodeInt64_forKey_(coder, v65, self->_edgeMode, @"MPSCNNKernel.edgeMode", v66, v67, v68, v69);
  objc_msgSend_encodeInt64_forKey_(coder, v70, self->_checkFlags, @"MPSCNNKernel.checkFlags", v71, v72, v73, v74);
  objc_msgSend_encodeInt64_forKey_(coder, v75, self->_kernelWidth, @"MPSCNNKernel.kernelWidth", v76, v77, v78, v79);
  objc_msgSend_encodeInt64_forKey_(coder, v80, self->_kernelHeight, @"MPSCNNKernel.kernelHeight", v81, v82, v83, v84);
  objc_msgSend_encodeInt64_forKey_(coder, v85, self->_strideInPixelsX, @"MPSCNNKernel.stride.x", v86, v87, v88, v89);
  objc_msgSend_encodeInt64_forKey_(coder, v90, self->_strideInPixelsY, @"MPSCNNKernel.stride.y", v91, v92, v93, v94);
  objc_msgSend_encodeInt64_forKey_(coder, v95, self->_dilationRateX, @"MPSCNNKernel.dilation.x", v96, v97, v98, v99);
  objc_msgSend_encodeInt64_forKey_(coder, v100, self->_dilationRateY, @"MPSCNNKernel.dilation.y", v101, v102, v103, v104);
  objc_msgSend_encodeBool_forKey_(coder, v105, self->_isBackwards, @"MPSCNNKernel.isBackward", v106, v107, v108, v109);
  padding = self->_padding;
  v111 = objc_autoreleasePoolPush();
  v112 = objc_opt_class();
  if (v112)
  {
    v113 = NSStringFromClass(v112);
    v120 = objc_msgSend_cStringUsingEncoding_(v113, v114, 1, v115, v116, v117, v118, v119);
    if (v120)
    {
      v121 = v120;
      v122 = strlen(v120);
      if (v122)
      {
        objc_msgSend_encodeBytes_length_forKey_(coder, v123, v121, v122 + 1, @"MPSCNNKernel.data", v124, v125, v126);
        objc_msgSend_encodeObject_forKey_(coder, v127, padding, @"MPSCNNKernel.padding", v128, v129, v130, v131);
      }
    }
  }

  objc_autoreleasePoolPop(v111);
  destinationImageAllocator = self->_destinationImageAllocator;
  v133 = objc_autoreleasePoolPush();
  v134 = objc_opt_class();
  if (v134)
  {
    v135 = NSStringFromClass(v134);
    v142 = objc_msgSend_cStringUsingEncoding_(v135, v136, 1, v137, v138, v139, v140, v141);
    if (v142)
    {
      v143 = v142;
      v144 = strlen(v142);
      if (v144)
      {
        objc_msgSend_encodeBytes_length_forKey_(coder, v145, v143, v144 + 1, @"MPSCNNKernel.data2", v146, v147, v148);
        objc_msgSend_encodeObject_forKey_(coder, v149, destinationImageAllocator, @"MPSCNNKernel.allocator", v150, v151, v152, v153);
      }
    }
  }

  objc_autoreleasePoolPop(v133);
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v12.receiver = self;
  v12.super_class = MPSCNNKernel;
  result = [(MPSKernel *)&v12 copyWithZone:zone device:device];
  if (result)
  {
    z = self->_offset.z;
    *(result + 88) = *&self->_offset.x;
    *(result + 13) = z;
    v7 = *&self->_clipRect.size.height;
    v8 = *&self->_clipRect.origin.x;
    *(result + 8) = *&self->_clipRect.origin.z;
    *(result + 9) = v7;
    *(result + 7) = v8;
    *(result + 20) = self->_destinationFeatureChannelOffset;
    *(result + 21) = self->_sourceFeatureChannelOffset;
    *(result + 22) = self->_sourceFeatureChannelMaxCount;
    *(result + 26) = self->_kernelHeight;
    *(result + 25) = self->_kernelWidth;
    *(result + 27) = self->_strideInPixelsX;
    *(result + 28) = self->_strideInPixelsY;
    *(result + 29) = self->_dilationRateX;
    *(result + 30) = self->_dilationRateY;
    v9 = result;
    *(result + 31) = self->_padding;
    v9->_maxBatchSize = self->_maxBatchSize;
    v9->_isBackwards = self->_isBackwards;
    v9->_edgeMode = self->_edgeMode;
    v9->_checkFlags = self->_checkFlags;
    v9->_encode = self->_encode;
    v9->_batchEncode = self->_batchEncode;
    encodeData = self->_encodeData;
    if (encodeData == self)
    {
      encodeData = v9;
    }

    v9->_encodeData = encodeData;
    v9->_plugin = 0;
    v11 = self->_destinationImageAllocator;
    result = v9;
    v9->_destinationImageAllocator = v11;
  }

  return result;
}

- (id)debugDescription
{
  if (!dladdr(self->_encode, &v48))
  {
    v48.dli_sname = "<NULL>";
  }

  v46 = MEMORY[0x277CCACA8];
  v47.receiver = self;
  v47.super_class = MPSCNNKernel;
  v3 = [(MPSKernel *)&v47 debugDescription];
  x = self->_offset.x;
  v45 = v3;
  z = self->_offset.z;
  y = self->_offset.y;
  sourceFeatureChannelMaxCount = self->_sourceFeatureChannelMaxCount;
  sourceFeatureChannelOffset = self->_sourceFeatureChannelOffset;
  v38 = self->_clipRect.origin.y;
  v39 = self->_clipRect.origin.x;
  v37 = self->_clipRect.origin.z;
  width = self->_clipRect.size.width;
  depth = self->_clipRect.size.depth;
  height = self->_clipRect.size.height;
  destinationFeatureChannelOffset = self->_destinationFeatureChannelOffset;
  edgeMode = self->_edgeMode;
  v31 = (*(&self->super.super.isa + *MEMORY[0x277CD7350]))[2];
  dli_sname = v48.dli_sname;
  kernelWidth = self->_kernelWidth;
  kernelHeight = self->_kernelHeight;
  strideInPixelsX = self->_strideInPixelsX;
  dilationRateX = self->_dilationRateX;
  dilationRateY = self->_dilationRateY;
  isBackwards = self->_isBackwards;
  v25 = objc_msgSend_debugDescription(self->_destinationImageAllocator, v11, v12, v13, v14, v15, v16, v17);
  padding = self->_padding;
  if (padding)
  {
    v27 = objc_msgSend_debugDescription(padding, v18, v19, v20, v21, v22, v23, v24);
  }

  else
  {
    v27 = @"<nil>";
  }

  v28 = "NO";
  if (isBackwards)
  {
    v28 = "YES";
  }

  v29 = "MPSImageEdgeModeZero";
  if (edgeMode == 1)
  {
    v29 = "MPSImageEdgeModeClamp";
  }

  return objc_msgSend_stringWithFormat_(v46, v18, @"%@\n\toffset:        {%ld,%ld,%ld} sourceFeatureChannelRange{offset: %ld, len: %lu}\n\tclip:          origin{%lu,%lu,%lu} size{%lu,%lu,%lu} destinationFeatureChannelOffset{%ld} \n\tdevice:        %p\n\tedge mode:     %s\n\tEncode Proc:   %s\n\tKernel Size:   {%lu x %lu}\n\tstride:        {%lu x %lu}\n\tdilation factor {%lu x %lu}\n\tbackwards?  %s\n\tdestinationImageAllocator: %@\n\tpadding:       %@", v20, v21, v22, v23, v24, v45, x, y, z, sourceFeatureChannelOffset, sourceFeatureChannelMaxCount, v39, v38, v37, width, height, depth, destinationFeatureChannelOffset, v31, v29, dli_sname, kernelWidth, kernelHeight, strideInPixelsX, strideInPixelsX, dilationRateX, dilationRateY, v28, v25, v27);
}

- (MPSRegion)sourceRegionForDestinationSize:(SEL)size
{
  memset(v11, 0, sizeof(v11));
  v6 = *&a4->var0;
  v10.depth = a4->var2;
  v7 = *&self->_clipRect.origin.z;
  *&v9.origin.x = *&self->_clipRect.origin.x;
  *&v9.origin.z = v7;
  *&v9.size.height = *&self->_clipRect.size.height;
  *&v10.width = v6;
  result = MPSGetEffectiveClipRegion(v11[0].i64, &v10, &v9);
  *&retstr->origin.x = vcvtq_f64_s64(*&self->_offset.x);
  retstr->origin.z = self->_offset.z;
  *&retstr->size.width = vcvtq_f64_u64(*(&v11[1] + 8));
  retstr->size.depth = v11[2].u64[1];
  return result;
}

- (void)setDestinationFeatureChannelOffset:(NSUInteger)destinationFeatureChannelOffset
{
  if ((destinationFeatureChannelOffset & 3) != 0 && (*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    v5 = MTLReportFailureTypeEnabled();
    v6 = destinationFeatureChannelOffset;
    v7 = v5;
    selfCopy2 = self;
    if (v7)
    {
      MTLReportFailure();
      selfCopy2 = self;
      v6 = destinationFeatureChannelOffset;
    }

    selfCopy2->_destinationFeatureChannelOffset = v6;
  }

  else
  {
    self->_destinationFeatureChannelOffset = destinationFeatureChannelOffset;
  }
}

- (void)setSourceFeatureChannelOffset:(NSUInteger)sourceFeatureChannelOffset
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) != 0 || (sourceFeatureChannelOffset & 3) == 0 || (self->_checkFlags & 0x20000) != 0)
  {
    self->_sourceFeatureChannelOffset = sourceFeatureChannelOffset;
  }

  else
  {
    v3 = MTLReportFailureTypeEnabled();
    v5 = sourceFeatureChannelOffset;
    selfCopy2 = self;
    if (v3)
    {
      MTLReportFailure();
      v5 = sourceFeatureChannelOffset;
      selfCopy2 = self;
    }

    selfCopy2->_sourceFeatureChannelOffset = v5;
  }
}

- (void)setSourceFeatureChannelMaxCount:(NSUInteger)sourceFeatureChannelMaxCount
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) != 0 || (self->_checkFlags & 0x20000) != 0 || sourceFeatureChannelMaxCount == -1 || (sourceFeatureChannelMaxCount & 3) == 0)
  {
    self->_sourceFeatureChannelMaxCount = sourceFeatureChannelMaxCount;
  }

  else
  {
    v3 = MTLReportFailureTypeEnabled();
    v5 = sourceFeatureChannelMaxCount;
    selfCopy2 = self;
    if (v3)
    {
      MTLReportFailure();
      v5 = sourceFeatureChannelMaxCount;
      selfCopy2 = self;
    }

    selfCopy2->_sourceFeatureChannelMaxCount = v5;
  }
}

- (MPSState)resultStateForSourceImage:(MPSImage *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImage *)destinationImage
{
  v9 = [MPSNNGradientState alloc];
  v19 = objc_msgSend_initWithResource_(v9, v10, 0, v11, v12, v13, v14, v15);
  if (v19)
  {
    objc_msgSend_copyToGradientState_sourceImage_sourceStates_destinationImage_(self, v16, v19, sourceImage, sourceStates, destinationImage, v17, v18);
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

- (MPSStateBatch)resultStateBatchForSourceImage:(MPSImageBatch *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImageBatch *)destinationImage
{
  v19 = objc_msgSend_count(sourceImage, a2, sourceImage, sourceStates, destinationImage, v5, v6, v7);
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (!sourceImage && MTLReportFailureTypeEnabled())
    {
      v184 = objc_opt_class();
      v185 = NSStringFromClass(v184);
      MTLReportFailure();
    }

    if (!sourceStates)
    {
      if (v19)
      {
        v187 = 1;
        v64 = objc_autoreleasePoolPush();
        v65 = 0;
        v73 = 0;
        goto LABEL_21;
      }

      return 0;
    }

    if (objc_msgSend_count(sourceStates, v12, v13, v14, v15, v16, v17, v18))
    {
      v26 = 0;
      do
      {
        v27 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v20, v26, v21, v22, v23, v24, v25, v185);
        objc_msgSend_count(v27, v28, v29, v30, v31, v32, v33, v34);
        v41 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v35, v26, v36, v37, v38, v39, v40);
        if (objc_msgSend_count(v41, v42, v43, v44, v45, v46, v47, v48) < v19 && MTLReportFailureTypeEnabled())
        {
          v56 = objc_opt_class();
          v186 = NSStringFromClass(v56);
          MTLReportFailure();
        }

        ++v26;
      }

      while (v26 < objc_msgSend_count(sourceStates, v49, v50, v51, v52, v53, v54, v55, v186));
    }
  }

  if (!v19)
  {
    return 0;
  }

  v64 = objc_autoreleasePoolPush();
  if (sourceStates)
  {
    v65 = objc_msgSend_count(sourceStates, v57, v58, v59, v60, v61, v62, v63);
    v72 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v66, v65, v67, v68, v69, v70, v71);
    if (!v72)
    {
LABEL_26:
      objc_autoreleasePoolPop(v64);
      return 0;
    }

    v73 = v72;
    if (v65)
    {
      for (i = 0; i != v65; ++i)
      {
        v75 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v57, i, v59, v60, v61, v62, v63, v185);
        v82 = objc_msgSend_objectAtIndexedSubscript_(v75, v76, 0, v77, v78, v79, v80, v81);
        objc_msgSend_setObject_atIndexedSubscript_(v73, v83, v82, i, v84, v85, v86, v87);
      }
    }

    v187 = 0;
  }

  else
  {
    v65 = 0;
    v73 = 0;
    v187 = 1;
  }

LABEL_21:
  v88 = objc_msgSend_objectAtIndexedSubscript_(sourceImage, v57, 0, v59, v60, v61, v62, v63, v185);
  v95 = objc_msgSend_objectAtIndexedSubscript_(destinationImage, v89, 0, v90, v91, v92, v93, v94);
  v100 = objc_msgSend_resultStateForSourceImage_sourceStates_destinationImage_(self, v96, v88, v73, v95, v97, v98, v99);
  if (!v100)
  {
    goto LABEL_26;
  }

  v101 = v100;
  context = v64;
  v102 = malloc_type_malloc(8 * v19, 0x80040B8603338uLL);
  if (!v102)
  {
    goto LABEL_26;
  }

  v110 = v102;
  if (!objc_msgSend_isResultStateReusedAcrossBatch(self, v103, v104, v105, v106, v107, v108, v109))
  {
    *v110 = v101;
    if (v19 >= 2)
    {
      if (v187)
      {
        for (j = 1; j != v19; ++j)
        {
          v120 = objc_msgSend_objectAtIndexedSubscript_(sourceImage, v111, j, v112, v113, v114, v115, v116);
          v127 = objc_msgSend_objectAtIndexedSubscript_(destinationImage, v121, j, v122, v123, v124, v125, v126);
          v110[j] = objc_msgSend_resultStateForSourceImage_sourceStates_destinationImage_(self, v128, v120, v73, v127, v129, v130, v131);
        }
      }

      else if (v65)
      {
        for (k = 1; k != v19; ++k)
        {
          for (m = 0; m != v65; ++m)
          {
            v139 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v111, m, v112, v113, v114, v115, v116);
            v146 = objc_msgSend_objectAtIndexedSubscript_(v139, v140, k, v141, v142, v143, v144, v145);
            objc_msgSend_setObject_atIndexedSubscript_(v73, v147, v146, m, v148, v149, v150, v151);
          }

          v152 = objc_msgSend_objectAtIndexedSubscript_(sourceImage, v111, k, v112, v113, v114, v115, v116);
          v159 = objc_msgSend_objectAtIndexedSubscript_(destinationImage, v153, k, v154, v155, v156, v157, v158);
          v110[k] = objc_msgSend_resultStateForSourceImage_sourceStates_destinationImage_(self, v160, v152, v73, v159, v161, v162, v163);
        }
      }

      else
      {
        for (n = 1; n != v19; ++n)
        {
          v165 = objc_msgSend_objectAtIndexedSubscript_(sourceImage, v111, n, v112, v113, v114, v115, v116);
          v172 = objc_msgSend_objectAtIndexedSubscript_(destinationImage, v166, n, v167, v168, v169, v170, v171);
          v110[n] = objc_msgSend_resultStateForSourceImage_sourceStates_destinationImage_(self, v173, v165, v73, v172, v174, v175, v176);
        }
      }
    }

    goto LABEL_47;
  }

  if (v19 < 4)
  {
    v117 = 0;
LABEL_36:
    v135 = v19 - v117;
    v136 = &v110[v117];
    do
    {
      *v136++ = v101;
      --v135;
    }

    while (v135);
    goto LABEL_47;
  }

  v117 = v19 & 0xFFFFFFFFFFFFFFFCLL;
  v132 = vdupq_n_s64(v101);
  v133 = (v110 + 2);
  v134 = v19 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v133[-1] = v132;
    *v133 = v132;
    v133 += 2;
    v134 -= 4;
  }

  while (v134);
  if (v19 != v117)
  {
    goto LABEL_36;
  }

LABEL_47:
  v177 = objc_alloc(MEMORY[0x277CBEA60]);
  v183 = objc_msgSend_initWithObjects_count_(v177, v178, v110, v19, v179, v180, v181, v182);
  free(v110);
  objc_autoreleasePoolPop(context);

  return v183;
}

- (MPSState)temporaryResultStateForCommandBuffer:(id)commandBuffer sourceImage:(MPSImage *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImage *)destinationImage
{
  v15 = objc_msgSend_temporaryStateWithCommandBuffer_(MPSNNGradientState, a2, commandBuffer, sourceImage, sourceStates, destinationImage, v6, v7);
  if (v15)
  {
    objc_msgSend_copyToGradientState_sourceImage_sourceStates_destinationImage_(self, v12, v15, sourceImage, sourceStates, destinationImage, v13, v14);
    if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 0x10) != 0)
    {
      v16 = MEMORY[0x277CCACA8];
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v25 = objc_msgSend_stringWithFormat_(v16, v19, @"created by %@", v20, v21, v22, v23, v24, v18);
      objc_msgSend_setLabel_(v15, v26, v25, v27, v28, v29, v30, v31);
    }
  }

  return v15;
}

- (MPSStateBatch)temporaryResultStateBatchForCommandBuffer:(id)commandBuffer sourceImage:(MPSImageBatch *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImageBatch *)destinationImage
{
  v20 = objc_msgSend_count(sourceImage, a2, commandBuffer, sourceImage, sourceStates, destinationImage, v6, v7);
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (!commandBuffer && MTLReportFailureTypeEnabled())
    {
      v182 = objc_opt_class();
      v184 = NSStringFromClass(v182);
      MTLReportFailure();
    }

    if (!sourceImage && MTLReportFailureTypeEnabled())
    {
      v183 = objc_opt_class();
      v184 = NSStringFromClass(v183);
      MTLReportFailure();
    }

    if (!sourceStates)
    {
      if (v20)
      {
        v188 = commandBuffer;
        v75 = destinationImage;
        v186 = 1;
        v65 = objc_autoreleasePoolPush();
        v66 = 0;
        v74 = 0;
        goto LABEL_22;
      }

      return 0;
    }

    if (objc_msgSend_count(sourceStates, v13, v14, v15, v16, v17, v18, v19))
    {
      v27 = 0;
      do
      {
        v28 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v21, v27, v22, v23, v24, v25, v26, v184);
        objc_msgSend_count(v28, v29, v30, v31, v32, v33, v34, v35);
        v42 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v36, v27, v37, v38, v39, v40, v41);
        if (objc_msgSend_count(v42, v43, v44, v45, v46, v47, v48, v49) < v20 && MTLReportFailureTypeEnabled())
        {
          v57 = objc_opt_class();
          v185 = NSStringFromClass(v57);
          MTLReportFailure();
        }

        ++v27;
      }

      while (v27 < objc_msgSend_count(sourceStates, v50, v51, v52, v53, v54, v55, v56, v185));
    }
  }

  if (!v20)
  {
    return 0;
  }

  v65 = objc_autoreleasePoolPush();
  if (sourceStates)
  {
    v66 = objc_msgSend_count(sourceStates, v58, v59, v60, v61, v62, v63, v64);
    v73 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v67, v66, v68, v69, v70, v71, v72);
    if (!v73)
    {
LABEL_27:
      objc_autoreleasePoolPop(v65);
      return 0;
    }

    v74 = v73;
    v188 = commandBuffer;
    v75 = destinationImage;
    if (v66)
    {
      for (i = 0; i != v66; ++i)
      {
        v77 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v58, i, v60, v61, v62, v63, v64, v184);
        v84 = objc_msgSend_objectAtIndexedSubscript_(v77, v78, 0, v79, v80, v81, v82, v83);
        objc_msgSend_setObject_atIndexedSubscript_(v74, v85, v84, i, v86, v87, v88, v89);
      }
    }

    v186 = 0;
  }

  else
  {
    v188 = commandBuffer;
    v75 = destinationImage;
    v66 = 0;
    v74 = 0;
    v186 = 1;
  }

LABEL_22:
  v90 = objc_msgSend_objectAtIndexedSubscript_(sourceImage, v58, 0, v60, v61, v62, v63, v64, v184);
  v97 = objc_msgSend_objectAtIndexedSubscript_(v75, v91, 0, v92, v93, v94, v95, v96);
  v101 = objc_msgSend_temporaryResultStateForCommandBuffer_sourceImage_sourceStates_destinationImage_(self, v98, v188, v90, v74, v97, v99, v100);
  if (!v101)
  {
    goto LABEL_27;
  }

  v102 = v101;
  context = v65;
  v103 = malloc_type_malloc(8 * v20, 0x80040B8603338uLL);
  if (!v103)
  {
    goto LABEL_27;
  }

  v111 = v103;
  if (!objc_msgSend_isResultStateReusedAcrossBatch(self, v104, v105, v106, v107, v108, v109, v110))
  {
    *v111 = v102;
    if (v20 >= 2)
    {
      if (v186)
      {
        for (j = 1; j != v20; ++j)
        {
          v121 = objc_msgSend_objectAtIndexedSubscript_(sourceImage, v112, j, v113, v114, v115, v116, v117);
          v128 = objc_msgSend_objectAtIndexedSubscript_(v75, v122, j, v123, v124, v125, v126, v127);
          v111[j] = objc_msgSend_temporaryResultStateForCommandBuffer_sourceImage_sourceStates_destinationImage_(self, v129, v188, v121, v74, v128, v130, v131);
        }
      }

      else if (v66)
      {
        for (k = 1; k != v20; ++k)
        {
          for (m = 0; m != v66; ++m)
          {
            v139 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v112, m, v113, v114, v115, v116, v117);
            v146 = objc_msgSend_objectAtIndexedSubscript_(v139, v140, k, v141, v142, v143, v144, v145);
            objc_msgSend_setObject_atIndexedSubscript_(v74, v147, v146, k, v148, v149, v150, v151);
          }

          v152 = objc_msgSend_objectAtIndexedSubscript_(sourceImage, v112, k, v113, v114, v115, v116, v117);
          v159 = objc_msgSend_objectAtIndexedSubscript_(v75, v153, k, v154, v155, v156, v157, v158);
          v111[k] = objc_msgSend_temporaryResultStateForCommandBuffer_sourceImage_sourceStates_destinationImage_(self, v160, v188, v152, v74, v159, v161, v162);
        }
      }

      else
      {
        for (n = 1; n != v20; ++n)
        {
          v164 = objc_msgSend_objectAtIndexedSubscript_(sourceImage, v112, n, v113, v114, v115, v116, v117);
          v171 = objc_msgSend_objectAtIndexedSubscript_(v75, v165, n, v166, v167, v168, v169, v170);
          v111[n] = objc_msgSend_temporaryResultStateForCommandBuffer_sourceImage_sourceStates_destinationImage_(self, v172, v188, v164, v74, v171, v173, v174);
        }
      }
    }

    goto LABEL_48;
  }

  if (v20 < 4)
  {
    v118 = 0;
LABEL_37:
    v135 = v20 - v118;
    v136 = &v111[v118];
    do
    {
      *v136++ = v102;
      --v135;
    }

    while (v135);
    goto LABEL_48;
  }

  v118 = v20 & 0xFFFFFFFFFFFFFFFCLL;
  v132 = vdupq_n_s64(v102);
  v133 = (v111 + 2);
  v134 = v20 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v133[-1] = v132;
    *v133 = v132;
    v133 += 2;
    v134 -= 4;
  }

  while (v134);
  if (v20 != v118)
  {
    goto LABEL_37;
  }

LABEL_48:
  v175 = objc_alloc(MEMORY[0x277CBEA60]);
  v181 = objc_msgSend_initWithObjects_count_(v175, v176, v111, v20, v177, v178, v179, v180);
  free(v111);
  objc_autoreleasePoolPop(context);

  return v181;
}

- (void)copyToGradientState:(id)state sourceImage:(id)image sourceStates:(id)states destinationImage:(id)destinationImage
{
  if ((*(state + 280) & 1) == 0)
  {
    v9 = *(destinationImage + *MEMORY[0x277CD7330]);
    v10 = *(destinationImage + *MEMORY[0x277CD7308]);
    v11 = *(destinationImage + *MEMORY[0x277CD7310]);
    v12 = *(image + *MEMORY[0x277CD72F8]);
    if (v12 >= self->_sourceFeatureChannelOffset)
    {
      sourceFeatureChannelOffset = self->_sourceFeatureChannelOffset;
    }

    else
    {
      sourceFeatureChannelOffset = *(image + *MEMORY[0x277CD72F8]);
    }

    if (v12 - sourceFeatureChannelOffset >= self->_sourceFeatureChannelMaxCount)
    {
      sourceFeatureChannelMaxCount = self->_sourceFeatureChannelMaxCount;
    }

    else
    {
      sourceFeatureChannelMaxCount = v12 - sourceFeatureChannelOffset;
    }

    z = self->_offset.z;
    *(state + 3) = *&self->_offset.x;
    *(state + 8) = z;
    v19 = objc_msgSend_width(destinationImage, a2, state, image, states, destinationImage, v6, v7);
    v27 = objc_msgSend_height(destinationImage, v20, v21, v22, v23, v24, v25, v26);
    *(state + 15) = v19;
    *(state + 16) = v27;
    *(state + 17) = 1;
    v40.width = v9;
    v40.height = v10;
    v40.depth = v11;
    v28 = *&self->_clipRect.origin.z;
    *&v39.origin.x = *&self->_clipRect.origin.x;
    *&v39.origin.z = v28;
    *&v39.size.height = *&self->_clipRect.size.height;
    MPSGetEffectiveClipRegion(v41, &v40, &v39);
    v29 = v41[2];
    *(state + 88) = v41[1];
    *(state + 104) = v29;
    *(state + 72) = v41[0];
    *(state + 18) = sourceFeatureChannelMaxCount;
    *(state + 19) = self->_destinationFeatureChannelOffset;
    *(state + 20) = sourceFeatureChannelOffset;
    *(state + 21) = self->_kernelWidth;
    *(state + 22) = self->_kernelHeight;
    *(state + 23) = self->_strideInPixelsX;
    *(state + 24) = self->_strideInPixelsY;
    *(state + 25) = self->_dilationRateX;
    *(state + 26) = self->_dilationRateY;
    *(state + 27) = self->_padding;
    *(state + 232) = self->_isBackwards;
    *(state + 30) = self->_edgeMode;
    v30 = *(image + *MEMORY[0x277CD7308]);
    v31 = *(image + *MEMORY[0x277CD7310]);
    *(state + 31) = *(image + *MEMORY[0x277CD7330]);
    *(state + 32) = v30;
    *(state + 33) = v31;
    *(state + 34) = *(image + *MEMORY[0x277CD72F8]);
    *(state + 28) = self->_maxBatchSize;
    *(state + 280) = objc_msgSend_isResultStateReusedAcrossBatch(self, v32, v33, v34, v35, v36, v37, v38);
    *(state + 71) = 123927;
  }
}

- (id)destinationImageWithCommandBuffer:(id)buffer sourceImage:(id)image inState:(id)state
{
  v32[1] = *MEMORY[0x277D85DE8];
  v32[0] = image;
  v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v32, 1, state, v5, v6, v7);
  if (state)
  {
    stateCopy = state;
    v17 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v11, &stateCopy, 1, v12, v13, v14, v15);
    v23 = objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_(self, v18, v16, v17, v19, v20, v21, v22);
  }

  else
  {
    v23 = objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_(self, v11, v16, 0, v12, v13, v14, v15);
  }

  v28 = *MEMORY[0x277CD7378];
  if (*(&self->super.super.isa + v28))
  {
    if (!v23)
    {
      return 0;
    }
  }

  else if (!v23)
  {
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_13;
    }

    return 0;
  }

  result = objc_msgSend_imageForCommandBuffer_imageDescriptor_kernel_(self->_destinationImageAllocator, v24, buffer, v23, self, v25, v26, v27);
  if ((*(&self->super.super.isa + v28) & 1) == 0 && !result)
  {
    if (MTLReportFailureTypeEnabled())
    {
LABEL_13:
      v30 = objc_opt_class();
      NSStringFromClass(v30);
      MTLReportFailure();
    }

    return 0;
  }

  return result;
}

- (id)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceImage:(id)image inState:(id)state
{
  v15 = objc_msgSend_destinationImageWithCommandBuffer_sourceImage_inState_(self, a2, buffer, image, state, state, v6, v7);
  if (v15)
  {
    objc_msgSend_encodeToCommandEncoder_commandBuffer_sourceImage_inState_destinationImage_(self, v13, encoder, buffer, image, state, v15, v14);
  }

  return v15;
}

- (id)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceImage:(id)image sourceState:(id)state destinationState:(id *)destinationState destinationStateIsTemporary:(BOOL)temporary
{
  temporaryCopy = temporary;
  v36[1] = *MEMORY[0x277D85DE8];
  v20 = objc_msgSend_destinationImageWithCommandBuffer_sourceImage_inState_(self, a2, buffer, image, state, state, destinationState, temporary);
  if (v20)
  {
    if (temporaryCopy)
    {
      if (state)
      {
        v36[0] = state;
        v21 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v15, v36, 1, v16, v17, v18, v19);
        v25 = objc_msgSend_temporaryResultStateForCommandBuffer_sourceImage_sourceStates_destinationImage_(self, v22, buffer, image, v21, v20, v23, v24);
      }

      else
      {
        v25 = objc_msgSend_temporaryResultStateForCommandBuffer_sourceImage_sourceStates_destinationImage_(self, v15, buffer, image, 0, v20, v18, v19);
      }
    }

    else if (state)
    {
      stateCopy = state;
      v28 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v15, &stateCopy, 1, v16, v17, v18, v19);
      v25 = objc_msgSend_resultStateForSourceImage_sourceStates_destinationImage_(self, v29, image, v28, v20, v30, v31, v32);
    }

    else
    {
      v25 = objc_msgSend_resultStateForSourceImage_sourceStates_destinationImage_(self, v15, image, 0, v20, v17, v18, v19);
    }

    v33 = v25;
    objc_msgSend_encodeToCommandEncoder_commandBuffer_sourceImage_inState_destinationImage_(self, v26, encoder, buffer, image, v25, v20, v27);
    if (destinationState)
    {
      *destinationState = v33;
    }

    if (state)
    {
      MPSDecrementReadCount(state);
    }
  }

  return v20;
}

- (void)encodeInternalToCommputeEncoder:(id)encoder commandBuffer:(id)buffer sourceImage:(id)image inState:(id)state destinationImage:(id)destinationImage subBatchIndex:(unint64_t)index batchSize:(unint64_t)size clipRect:(id *)self0 shouldHandleCompoundImageNatively:(BOOL)self1
{
  imageCopy = image;
  v14 = MEMORY[0x277CD7320];
  v15 = *MEMORY[0x277CD7320];
  v16 = (image + v15);
  v17 = *(image + v15 + 56);
  encoderCopy = encoder;
  if ((self->_checkFlags & 0x2000) != 0)
  {
    *(&v242 + 1) = self->_sourceFeatureChannelOffset;
  }

  else
  {
    v19 = *(image + *MEMORY[0x277CD72F8]);
    if (v19 >= self->_sourceFeatureChannelOffset)
    {
      sourceFeatureChannelOffset = self->_sourceFeatureChannelOffset;
    }

    else
    {
      sourceFeatureChannelOffset = *(image + *MEMORY[0x277CD72F8]);
    }

    v21 = v19 - sourceFeatureChannelOffset;
    if (v21 >= self->_sourceFeatureChannelMaxCount)
    {
      sourceFeatureChannelMaxCount = self->_sourceFeatureChannelMaxCount;
    }

    else
    {
      sourceFeatureChannelMaxCount = v21;
    }

    imageCopy = sub_239D29B30(buffer, encoder, &imageCopy->super, sourceFeatureChannelOffset, sourceFeatureChannelMaxCount, state, destinationImage, index);
    *(&v242 + 1) = 0;
    v15 = *v14;
  }

  *&v242 = self->_destinationFeatureChannelOffset;
  v23 = (destinationImage + v15);
  v24 = *MEMORY[0x277CD7378];
  v249 = v24;
  if ((*(&self->super.super.isa + v24) & 1) == 0)
  {
    v25 = MEMORY[0x277CD7490];
    if ((v17 & 1) != 0 && !*(&imageCopy->super.super.isa + *MEMORY[0x277CD7490]))
    {
      v221 = MTLReportFailureTypeEnabled();
      v24 = v249;
      if (v221)
      {
        v222 = objc_opt_class();
        v236 = NSStringFromClass(v222);
        destinationImageCopy = imageCopy;
        MTLReportFailure();
        v24 = v249;
      }
    }

    if ((v23[7] & 1) != 0 && !*(destinationImage + *v25))
    {
      v223 = MTLReportFailureTypeEnabled();
      v24 = v249;
      if (v223)
      {
        v224 = objc_opt_class();
        v236 = NSStringFromClass(v224);
        destinationImageCopy = destinationImage;
        MTLReportFailure();
        v24 = v249;
      }
    }
  }

  v26 = *MEMORY[0x277CD7318];
  v27 = *(&imageCopy->super.super.isa + v26);
  v28 = *(destinationImage + v26);
  v261 = v28;
  v262 = v27;
  v29 = *MEMORY[0x277CD7300];
  *&v245 = *(destinationImage + v29);
  *(&v245 + 1) = *(imageCopy + v29);
  if ((*(&self->super.super.isa + v24) & 1) == 0)
  {
    v30 = *MEMORY[0x277CD72F8];
    if (*(&imageCopy->super.super.isa + v30) >= 5 && *(destinationImage + v30) >= 5uLL && *(&v245 + 1) != v245)
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }

    v32 = (v27 & 0x3FF);
    explicit = atomic_load_explicit(v16, memory_order_acquire);
    v247 = v17;
    if ((v16[7] & 2) != 0)
    {
      if (*(v16 + 13) < 2u)
      {
        v34 = 2;
      }

      else
      {
        v34 = 3;
      }
    }

    else
    {
      if (!explicit)
      {
        explicit = v16[5];
      }

      v34 = objc_msgSend_textureType(explicit, a2, encoder, buffer, image, state, destinationImage, index, v236, destinationImageCopy);
    }

    if ((~v262 & 0xF000000) == 0)
    {
      v240 = v34;
      v35 = MTLReportFailureTypeEnabled();
      v34 = v240;
      if (v35)
      {
        v236 = v16;
        destinationImageCopy = v32;
        MTLReportFailure();
        v34 = v240;
      }
    }

    if ((v262 & 0x80000000000) == 0 && (self->_checkFlags & 4) != 0)
    {
      v218 = v34;
      v219 = MTLReportFailureTypeEnabled();
      v34 = v218;
      if (v219)
      {
        v236 = v16;
        destinationImageCopy = v32;
        MTLReportFailure();
        v34 = v218;
      }
    }

    if ((v34 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      if (v34 == 2)
      {
        if (self->_offset.z && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        if (rect->var1.var2 != 1 && MTLReportFailureTypeEnabled())
        {
LABEL_228:
          MTLReportFailure();
        }

LABEL_45:
        v38 = (v28 & 0x3FF);
        v39 = atomic_load_explicit(v23, memory_order_acquire);
        if ((v23[7] & 2) != 0)
        {
          if (*(v23 + 13) < 2u)
          {
            v40 = 2;
          }

          else
          {
            v40 = 3;
          }
        }

        else
        {
          if (!v39)
          {
            v39 = v23[5];
          }

          v40 = objc_msgSend_textureType(v39, a2, encoder, buffer, image, state, destinationImage, index, v236, destinationImageCopy);
        }

        if ((~v261 & 0xF000000) == 0)
        {
          v41 = v40;
          v42 = MTLReportFailureTypeEnabled();
          v40 = v41;
          if (v42)
          {
            v236 = v23;
            destinationImageCopy = (v28 & 0x3FF);
            MTLReportFailure();
            v40 = v41;
          }
        }

        if ((v261 & 0x200000000000) == 0)
        {
          v43 = v40;
          v44 = MTLReportFailureTypeEnabled();
          v40 = v43;
          if (v44)
          {
            v236 = v23;
            destinationImageCopy = v38;
            MTLReportFailure();
            v40 = v43;
          }
        }

        v17 = v247;
        if ((v40 & 0xFFFFFFFFFFFFFFFELL) == 2)
        {
          if (v40 == 2)
          {
            if (rect->var0.var2 && MTLReportFailureTypeEnabled())
            {
              MTLReportFailure();
            }

            if (rect->var1.var2 == 1 || !MTLReportFailureTypeEnabled())
            {
              goto LABEL_68;
            }

            goto LABEL_232;
          }
        }

        else if (MTLReportFailureTypeEnabled())
        {
          v236 = v23;
          MTLReportFailure();
        }

        v45 = MEMORY[0x277CD7310];
        if (rect->var0.var2 >= *(destinationImage + *MEMORY[0x277CD7310]) && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        if (rect->var1.var2 + rect->var0.var2 <= *(destinationImage + *v45) || !MTLReportFailureTypeEnabled())
        {
          goto LABEL_68;
        }

LABEL_232:
        MTLReportFailure();
LABEL_68:
        if (!*(&imageCopy->super.super.isa + *MEMORY[0x277CD7300]) && (self->_checkFlags & 0x20) == 0 && *(&imageCopy->super.super.isa + *MEMORY[0x277CD72F8]) >= 5 && self->_edgeMode && MTLReportFailureTypeEnabled())
        {
          v233 = objc_opt_class();
          v236 = NSStringFromClass(v233);
          MTLReportFailure();
        }

        if ((self->_checkFlags & 2) == 0 && *(destinationImage + *MEMORY[0x277CD72F8]) != *(&imageCopy->super.super.isa + *MEMORY[0x277CD72F8]) && MTLReportFailureTypeEnabled())
        {
          v225 = objc_opt_class();
          v236 = NSStringFromClass(v225);
          MTLReportFailure();
        }

        if ((self->_checkFlags & 1) == 0)
        {
          v46 = v23;
          if ((v23[7] & 2) != 0)
          {
            v46 = v23;
            do
            {
              v46 = v46[5];
            }

            while ((v46[7] & 2) != 0);
          }

          v47 = v16;
          if ((v16[7] & 2) != 0)
          {
            v47 = v16;
            do
            {
              v47 = v47[5];
            }

            while ((v47[7] & 2) != 0);
          }

          v48 = atomic_load_explicit(v47, memory_order_acquire);
          v49 = atomic_load_explicit(v46, memory_order_acquire);
          if (v48)
          {
            v50 = v49 == 0;
          }

          else
          {
            v50 = 1;
          }

          if (!v50 && v48 != v49)
          {
            objc_msgSend_isEqual_(v48, a2, v49, buffer, image, state, destinationImage, index);
          }

          while ((v23[7] & 2) != 0)
          {
            v23 = v23[5];
          }

          while ((v16[7] & 2) != 0)
          {
            v16 = v16[5];
          }

          v52 = atomic_load_explicit(v16, memory_order_acquire);
          encoder = atomic_load_explicit(v23, memory_order_acquire);
          if (v52)
          {
            v53 = encoder == 0;
          }

          else
          {
            v53 = 1;
          }

          if (!v53 && (v52 == encoder || objc_msgSend_isEqual_(v52, a2, encoder, buffer, image, state, destinationImage, index)) && MTLReportFailureTypeEnabled())
          {
            v220 = objc_opt_class();
            v236 = NSStringFromClass(v220);
            MTLReportFailure();
          }
        }

        if ((self->_checkFlags & 0x40000) == 0 && self->_edgeMode >= 2 && MTLReportFailureTypeEnabled())
        {
          v226 = objc_opt_class();
          v236 = NSStringFromClass(v226);
          MTLReportFailure();
        }

        goto LABEL_102;
      }
    }

    else if (MTLReportFailureTypeEnabled())
    {
      v236 = v16;
      MTLReportFailure();
    }

    z = self->_offset.z;
    v37 = MEMORY[0x277CD7310];
    if ((z < 0 || z >= *(&imageCopy->super.super.isa + *MEMORY[0x277CD7310])) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if ((rect->var1.var2 + self->_offset.z) > *(&imageCopy->super.super.isa + *v37) && MTLReportFailureTypeEnabled())
    {
      goto LABEL_228;
    }

    goto LABEL_45;
  }

LABEL_102:
  if (!rect->var1.var1 || !rect->var1.var0 || !rect->var1.var2)
  {
    return;
  }

  v259 = 0u;
  v260 = 0u;
  v257 = 0u;
  memset(v258, 0, sizeof(v258));
  v255 = 0u;
  v256 = 0u;
  v253 = 0u;
  v254 = 0u;
  v252 = 0u;
  v251[0] = imageCopy;
  v251[1] = &v262;
  v54 = MEMORY[0x277CD7320];
  v55 = (imageCopy + *MEMORY[0x277CD7320]);
  v56 = atomic_load_explicit(v55, memory_order_acquire);
  if ((v55[7] & 2) != 0)
  {
    if (*(v55 + 13) < 2u)
    {
      v57 = 2;
    }

    else
    {
      v57 = 3;
    }
  }

  else
  {
    if (!v56)
    {
      v56 = v55[5];
    }

    v57 = objc_msgSend_textureType(v56, a2, encoder, buffer, image, state, destinationImage, index, v236, destinationImageCopy);
  }

  v58 = *(&imageCopy->super.super.isa + *MEMORY[0x277CD72F0]) - 1;
  if (v58 > 4)
  {
    v59 = 0;
  }

  else
  {
    v59 = dword_239D91650[v58];
  }

  if (v57 == 3)
  {
    ++v59;
  }

  v60 = MEMORY[0x277CD7310];
  if (*(&imageCopy->super.super.isa + *MEMORY[0x277CD7310]) >= 2 && !natively)
  {
    v59 |= 2u;
  }

  if ((*(&imageCopy->super.super.isa + *MEMORY[0x277CD7318]) & 0x3000000) != 0)
  {
    v59 |= 4u;
  }

  v62 = MEMORY[0x277CD72F8];
  LODWORD(v252) = v59;
  v63 = MEMORY[0x277CD7328];
  v64 = *(&imageCopy->super.super.isa + *MEMORY[0x277CD7328]);
  *(&v252 + 1) = *(imageCopy + *MEMORY[0x277CD72F8]);
  v253 = v64;
  *&v254 = *(imageCopy + *MEMORY[0x277CD7300]);
  *(&v254 + 1) = state;
  *&v255 = destinationImage;
  *(&v255 + 1) = &v261;
  v65 = (destinationImage + *v54);
  v66 = atomic_load_explicit(v65, memory_order_acquire);
  if ((v65[7] & 2) != 0)
  {
    if (*(v65 + 13) < 2u)
    {
      v67 = 2;
    }

    else
    {
      v67 = 3;
    }
  }

  else
  {
    if (!v66)
    {
      v66 = v65[5];
    }

    v67 = objc_msgSend_textureType(v66, a2, encoder, buffer, image, state, destinationImage, index, v236);
  }

  v68 = *(destinationImage + *MEMORY[0x277CD72F0]) - 1;
  if (v68 > 4)
  {
    v69 = 0;
  }

  else
  {
    v69 = dword_239D91650[v68];
  }

  if (v67 == 3)
  {
    ++v69;
  }

  if (*(destinationImage + *v60) >= 2uLL && !natively)
  {
    v69 |= 2u;
  }

  if ((*(destinationImage + *MEMORY[0x277CD7318]) & 0x3000000) != 0)
  {
    v69 |= 4u;
  }

  LODWORD(v256) = v69;
  v71 = *(destinationImage + *v63);
  *(&v256 + 1) = *(destinationImage + *v62);
  v257 = v71;
  *&v258[0] = *(destinationImage + *MEMORY[0x277CD7300]);
  v72 = *&rect->var0.var0;
  v73 = *&rect->var0.var2;
  *(&v258[2] + 8) = *&rect->var1.var1;
  *(&v258[1] + 8) = v73;
  *(v258 + 8) = v72;
  *(&v258[3] + 8) = *&self->_offset.x;
  *(&v258[4] + 1) = self->_offset.z;
  v259 = v242;
  *&v260 = index;
  *(&v260 + 1) = size;
  v74 = (imageCopy + *v54);
  v75 = atomic_load_explicit(v74, memory_order_acquire);
  if (v75)
  {
    *(&v253 + 1) = v75;
    v76 = v54;
    v77 = (destinationImage + *v54);
    v78 = atomic_load_explicit(v77, memory_order_acquire);
    if (v78)
    {
      goto LABEL_145;
    }
  }

  else
  {
    MPSAutoTexture::AllocateTexture(v74, 0);
    *(&v253 + 1) = atomic_load_explicit(v74, memory_order_acquire);
    v76 = v54;
    v77 = (destinationImage + *v54);
    v78 = atomic_load_explicit(v77, memory_order_acquire);
    if (v78)
    {
LABEL_145:
      *(&v257 + 1) = v78;
      if (*(&self->super.super.isa + v249))
      {
        goto LABEL_151;
      }

      goto LABEL_149;
    }
  }

  MPSAutoTexture::AllocateTexture(v77, 0);
  v78 = atomic_load_explicit(v77, memory_order_acquire);
  *(&v257 + 1) = v78;
  if (*(&self->super.super.isa + v249))
  {
    goto LABEL_151;
  }

LABEL_149:
  if (!*(&v253 + 1) && MTLReportFailureTypeEnabled())
  {
    v231 = objc_opt_class();
    v236 = NSStringFromClass(v231);
    MTLReportFailure();
  }

  if (!v78 && MTLReportFailureTypeEnabled())
  {
    v232 = objc_opt_class();
    v236 = NSStringFromClass(v232);
    MTLReportFailure();
  }

LABEL_151:
  v248 = v17;
  if (rect->var1.var2 != 1)
  {
    v80 = 0;
    v81 = 0;
    bufferCopy3 = buffer;
    if ((objc_msgSend_retainedReferences(buffer, a2, encoder, buffer, image, state, destinationImage, index) & 1) == 0)
    {
      goto LABEL_190;
    }

    goto LABEL_213;
  }

  bufferCopy3 = buffer;
  if (v245 == 0)
  {
    goto LABEL_155;
  }

  v80 = 0;
  if (*(&v252 + 1) <= 4uLL)
  {
    v81 = 0;
    if (*(&v256 + 1) > 4uLL)
    {
      goto LABEL_189;
    }

LABEL_155:
    v82 = (imageCopy + *v76);
    v83 = atomic_load_explicit(v82, memory_order_acquire);
    if ((v82[7] & 2) != 0)
    {
      if (*(v82 + 13) < 2u)
      {
        goto LABEL_159;
      }
    }

    else
    {
      if (!v83)
      {
        v83 = v82[5];
      }

      if (objc_msgSend_textureType(v83, a2, encoder, buffer, image, state, destinationImage, index, v236) != 3)
      {
LABEL_159:
        v81 = 0;
        v84 = (destinationImage + *v76);
        v85 = atomic_load_explicit(v84, memory_order_acquire);
        if ((v84[7] & 2) != 0)
        {
          goto LABEL_160;
        }

        goto LABEL_175;
      }
    }

    v81 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(*(&v253 + 1), a2, *(&imageCopy[4].super.super.isa + *v76) & 0x3FF, 2, 0, 1, self->_offset.z & ~(self->_offset.z >> 63), 1, v236);
    if (!v81 && MTLReportFailureTypeEnabled())
    {
      v234 = objc_opt_class();
      v237 = NSStringFromClass(v234);
      MTLReportFailure();
    }

    *&v253 = 2;
    *(&v253 + 1) = v81;
    v99 = *(&imageCopy->super.super.isa + *MEMORY[0x277CD72F0]);
    v100 = objc_msgSend_textureType(v81, v92, v93, v94, v95, v96, v97, v98, v237);
    if (v99 - 1 > 4)
    {
      v108 = 0;
    }

    else
    {
      v108 = dword_239D91650[v99 - 1];
    }

    if (v100 == 3)
    {
      v109 = v108 + 1;
    }

    else
    {
      v109 = v108;
    }

    objc_msgSend_device(v81, v101, v102, v103, v104, v105, v106, v107);
    MPSDevice = MPSDevice::GetMPSDevice();
    v118 = objc_msgSend_pixelFormat(v81, v111, v112, v113, v114, v115, v116, v117);
    PixelInfo = MPSDevice::GetPixelInfo(MPSDevice, v118, v99);
    v120 = v109 | 4;
    if ((PixelInfo & 0x3000000) == 0)
    {
      v120 = v109;
    }

    LODWORD(v252) = v120;
    bufferCopy3 = buffer;
    v84 = (destinationImage + *v76);
    v85 = atomic_load_explicit(v84, memory_order_acquire);
    if ((v84[7] & 2) != 0)
    {
LABEL_160:
      if (*(v84 + 13) < 2u)
      {
LABEL_161:
        v80 = 0;
LABEL_188:
        *(&v258[4] + 1) = 0;
        *(&v258[1] + 1) = 0;
LABEL_189:
        if ((objc_msgSend_retainedReferences(bufferCopy3, a2, encoder, buffer, image, state, destinationImage, index, v236) & 1) == 0)
        {
          goto LABEL_190;
        }

        goto LABEL_213;
      }

LABEL_178:
      v80 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(*(&v257 + 1), a2, *(destinationImage + *v76 + 32) & 0x3FFLL, 2, 0, 1, rect->var0.var2, 1, v236);
      if (!v80 && MTLReportFailureTypeEnabled())
      {
        v235 = objc_opt_class();
        v238 = NSStringFromClass(v235);
        MTLReportFailure();
      }

      *&v257 = 2;
      *(&v257 + 1) = v80;
      v128 = *(destinationImage + *MEMORY[0x277CD72F0]);
      v129 = objc_msgSend_textureType(v80, v121, v122, v123, v124, v125, v126, v127, v238);
      if (v128 - 1 > 4)
      {
        v137 = 0;
      }

      else
      {
        v137 = dword_239D91650[v128 - 1];
      }

      if (v129 == 3)
      {
        v138 = v137 + 1;
      }

      else
      {
        v138 = v137;
      }

      objc_msgSend_device(v80, v130, v131, v132, v133, v134, v135, v136);
      v139 = MPSDevice::GetMPSDevice();
      v147 = objc_msgSend_pixelFormat(v80, v140, v141, v142, v143, v144, v145, v146);
      v148 = MPSDevice::GetPixelInfo(v139, v147, v128);
      v149 = v138 | 4;
      if ((v148 & 0x3000000) == 0)
      {
        v149 = v138;
      }

      LODWORD(v256) = v149;
      goto LABEL_188;
    }

LABEL_175:
    if (!v85)
    {
      v85 = v84[5];
    }

    if (objc_msgSend_textureType(v85, a2, encoder, buffer, image, state, destinationImage, index, v236) != 3)
    {
      goto LABEL_161;
    }

    goto LABEL_178;
  }

  v81 = 0;
  if ((objc_msgSend_retainedReferences(buffer, a2, encoder, buffer, image, state, destinationImage, index) & 1) == 0)
  {
LABEL_190:
    v246 = v81;
    v150 = objc_opt_new();
    objc_msgSend_addObject_(v150, v151, *(&v253 + 1), v152, v153, v154, v155, v156);
    objc_msgSend_addObject_(v150, v157, *(&v257 + 1), v158, v159, v160, v161, v162);
    stateCopy5 = state;
    if (state)
    {
      if ((*(state + *MEMORY[0x277CD7470]) & 1) == 0)
      {
        v171 = MEMORY[0x277CD7480];
        if (*(state + *MEMORY[0x277CD7480]))
        {
          v172 = 0;
          v173 = 0;
          v174 = MEMORY[0x277CD7488];
          do
          {
            v177 = *&stateCopy5[*v174];
            v178 = *(v177 + v172);
            if (!*(v177 + v172))
            {
              goto LABEL_197;
            }

            if (v178 == 2)
            {
              v175 = v177 + v172;
              v176 = (v175 + 8);
              v164 = atomic_load_explicit((v175 + 8), memory_order_acquire);
              if (!v164)
              {
                MPSAutoTexture::AllocateTexture((v175 + 8), 0);
                v164 = atomic_load_explicit(v176, memory_order_acquire);
                stateCopy5 = state;
                if (!v164)
                {
                  goto LABEL_197;
                }
              }
            }

            else
            {
              if (v178 != 1)
              {
                v180 = MTLReportFailureTypeEnabled();
                stateCopy5 = state;
                if (!v180)
                {
                  goto LABEL_197;
                }

                v181 = objc_opt_class();
                v236 = NSStringFromClass(v181);
                MTLReportFailure();
                goto LABEL_196;
              }

              v164 = atomic_load_explicit((v177 + v172 + 8), memory_order_acquire);
              if (!v164)
              {
                v179 = (v177 + 72 * v173 + 8);
                MPSAutoBuffer::AllocateBuffer((v177 + v172 + 8), 0);
                v164 = atomic_load_explicit(v179, memory_order_acquire);
                stateCopy5 = state;
                if (!v164)
                {
                  goto LABEL_197;
                }
              }
            }

            objc_msgSend_addObject_(v150, v163, v164, v165, v166, v167, v168, v169, v236);
LABEL_196:
            stateCopy5 = state;
LABEL_197:
            ++v173;
            v172 += 72;
          }

          while (v173 < *&stateCopy5[*v171]);
        }
      }
    }

    v81 = v246;
    if (v150)
    {
      v182 = objc_msgSend_userDictionary(bufferCopy3, v163, v164, v165, v166, v167, v168, v169);
      v189 = objc_msgSend_objectForKey_(v182, v183, @"_MPSCommandBufferRetainListKey", v184, v185, v186, v187, v188);
      if (!v189)
      {
        v196 = objc_alloc_init(MEMORY[0x277CBEB18]);
        objc_msgSend_setObject_forKey_(v182, v197, v196, @"_MPSCommandBufferRetainListKey", v198, v199, v200, v201);

        v263[0] = MEMORY[0x277D85DD0];
        v263[1] = 3221225472;
        v263[2] = sub_239D2DEF0;
        v263[3] = &unk_278B28F28;
        v263[4] = @"_MPSCommandBufferRetainListKey";
        objc_msgSend_addCompletedHandler_(bufferCopy3, v202, v263, v203, v204, v205, v206, v207);
        v189 = v196;
      }

      objc_msgSend_addObject_(v189, v190, v150, v191, v192, v193, v194, v195, v236);
    }
  }

LABEL_213:
  if ((*(&self->super.super.isa + v249) & 8) != 0)
  {
    v227 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
    if (!v227)
    {
      v228 = objc_opt_class();
      v227 = NSStringFromClass(v228);
    }

    objc_msgSend_pushDebugGroup_(encoderCopy, v86, v227, v87, v88, v89, v90, v91, v236);
    v209 = encoderCopy;
    v208 = encoderCopy;
  }

  else
  {
    v208 = 0;
    v209 = encoderCopy;
  }

  v217 = (self->_encode)(self->_encodeData, v209, bufferCopy3, v251);
  if (v208)
  {
    objc_msgSend_popDebugGroup(v208, v210, v211, v212, v213, v214, v215, v216);
  }

  if (v217 && MTLReportFailureTypeEnabled())
  {
    v229 = objc_opt_class();
    NSStringFromClass(v229);
    MPSReturnGetName();
    MTLReportFailure();
  }

  if (v81)
  {
  }

  if (v80)
  {
  }

  if (v248)
  {
    MPSDecrementReadCount(imageCopy);
  }
}

- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceImage:(id)image inState:(id)state destinationImage:(id)destinationImage subBatchIndex:(unint64_t)index batchSize:(unint64_t)size
{
  v15 = *MEMORY[0x277CD7378];
  if (*(&self->super.super.isa + v15))
  {
    goto LABEL_18;
  }

  if (!buffer)
  {
    v136 = a2;
    indexCopy = index;
    v138 = MTLReportFailureTypeEnabled();
    index = indexCopy;
    a2 = v136;
    if (v138)
    {
      v139 = objc_opt_class();
      v190 = NSStringFromClass(v139);
      MTLReportFailure();
      index = indexCopy;
      a2 = v136;
    }
  }

  if (!image)
  {
    v140 = a2;
    indexCopy2 = index;
    v142 = MTLReportFailureTypeEnabled();
    index = indexCopy2;
    a2 = v140;
    if (v142)
    {
      v143 = objc_opt_class();
      v190 = NSStringFromClass(v143);
      MTLReportFailure();
      index = indexCopy2;
      a2 = v140;
    }
  }

  if (!destinationImage)
  {
    v144 = a2;
    indexCopy3 = index;
    v146 = MTLReportFailureTypeEnabled();
    index = indexCopy3;
    a2 = v144;
    if (v146)
    {
      v147 = objc_opt_class();
      v190 = NSStringFromClass(v147);
      MTLReportFailure();
      index = indexCopy3;
      a2 = v144;
    }
  }

  v16 = *MEMORY[0x277CD7348];
  if ((*(&self->super.super.isa + v15) & ~*(&self->super.super.isa + v16)) != 0)
  {
    v148 = a2;
    indexCopy4 = index;
    v150 = MTLReportFailureTypeEnabled();
    index = indexCopy4;
    a2 = v148;
    if (v150)
    {
      v151 = objc_opt_class();
      v190 = NSStringFromClass(v151);
      sourceFeatureChannelOffset = *(&self->super.super.isa + v15) & ~*(&self->super.super.isa + v16);
      MTLReportFailure();
      index = indexCopy4;
      a2 = v148;
    }
  }

  v17 = MEMORY[0x277CD72F8];
  if (self->_sourceFeatureChannelOffset >= *(image + *MEMORY[0x277CD72F8]))
  {
    v196 = a2;
    indexCopy5 = index;
    v153 = MTLReportFailureTypeEnabled();
    index = indexCopy5;
    a2 = v196;
    if (v153)
    {
      v154 = objc_opt_class();
      v155 = NSStringFromClass(v154);
      sourceFeatureChannelOffset = self->_sourceFeatureChannelOffset;
      destinationImageCopy = image;
      v190 = v155;
      MTLReportFailure();
      index = indexCopy5;
      a2 = v196;
    }
  }

  if (self->_destinationFeatureChannelOffset >= *(destinationImage + *v17))
  {
    v197 = a2;
    indexCopy6 = index;
    v157 = MTLReportFailureTypeEnabled();
    index = indexCopy6;
    a2 = v197;
    if (v157)
    {
      v158 = objc_opt_class();
      v159 = NSStringFromClass(v158);
      sourceFeatureChannelOffset = self->_destinationFeatureChannelOffset;
      destinationImageCopy = destinationImage;
      v190 = v159;
      MTLReportFailure();
      index = indexCopy6;
      a2 = v197;
    }
  }

  if ((self->_destinationFeatureChannelOffset & 3) != 0)
  {
    v198 = a2;
    indexCopy7 = index;
    v161 = MTLReportFailureTypeEnabled();
    index = indexCopy7;
    a2 = v198;
    if (v161)
    {
      v162 = objc_opt_class();
      v190 = NSStringFromClass(v162);
      sourceFeatureChannelOffset = self->_destinationFeatureChannelOffset;
      MTLReportFailure();
      index = indexCopy7;
      a2 = v198;
    }
  }

  if (self->_sourceFeatureChannelOffset)
  {
    if (*(image + *MEMORY[0x277CD7310]) != 1)
    {
      v174 = a2;
      indexCopy8 = index;
      v176 = MTLReportFailureTypeEnabled();
      index = indexCopy8;
      a2 = v174;
      if (v176)
      {
        v177 = objc_opt_class();
        v190 = NSStringFromClass(v177);
        MTLReportFailure();
        index = indexCopy8;
        a2 = v174;
        v18 = MEMORY[0x277CD7320];
        v19 = image + *MEMORY[0x277CD7320];
        if ((v19[56] & 2) == 0)
        {
          goto LABEL_13;
        }

        do
        {
LABEL_12:
          v19 = *(v19 + 5);
        }

        while ((v19[56] & 2) != 0);
        goto LABEL_13;
      }
    }
  }

  v18 = MEMORY[0x277CD7320];
  v19 = image + *MEMORY[0x277CD7320];
  if ((v19[56] & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  atomic_load_explicit(v19, memory_order_acquire);
    ;
  }

  if (!atomic_load_explicit(i, memory_order_acquire))
  {
    v163 = a2;
    indexCopy9 = index;
    v165 = MTLReportFailureTypeEnabled();
    index = indexCopy9;
    a2 = v163;
    if (v165)
    {
      v166 = objc_opt_class();
      v199 = NSStringFromClass(v166);
      sourceFeatureChannelOffset = NSStringFromSelector(v163);
      destinationImageCopy = objc_msgSend_debugDescription(image, v167, v168, v169, v170, v171, v172, v173);
      v190 = v199;
      MTLReportFailure();
      index = indexCopy9;
      a2 = v163;
    }
  }

  if ((*(destinationImage + *v18 + 56) & 1) != 0 && !*(destinationImage + *MEMORY[0x277CD7490]))
  {
    v178 = a2;
    indexCopy10 = index;
    v180 = MTLReportFailureTypeEnabled();
    index = indexCopy10;
    if (v180)
    {
      v181 = objc_opt_class();
      v182 = NSStringFromClass(v181);
      sourceFeatureChannelOffset = NSStringFromSelector(v178);
      destinationImageCopy = objc_msgSend_debugDescription(destinationImage, v183, v184, v185, v186, v187, v188, v189);
      v190 = v182;
      MTLReportFailure();
      index = indexCopy10;
    }
  }

LABEL_18:
  if (!image)
  {
    return;
  }

  if (!destinationImage)
  {
    return;
  }

  indexCopy11 = index;
  v22 = *(destinationImage + *MEMORY[0x277CD7330]);
  v23 = *(destinationImage + *MEMORY[0x277CD7308]);
  memset(&v202, 0, sizeof(v202));
  v24 = MEMORY[0x277CD7310];
  v25 = *(destinationImage + *MEMORY[0x277CD7310]);
  v201.width = v22;
  v201.height = v23;
  v201.depth = v25;
  v26 = *&self->_clipRect.origin.z;
  *&v200.origin.x = *&self->_clipRect.origin.x;
  *&v200.origin.z = v26;
  *&v200.size.height = *&self->_clipRect.size.height;
  MPSGetEffectiveClipRegion(&v202, &v201, &v200);
  if (!v202.size.depth)
  {
    return;
  }

  v28 = image + *MEMORY[0x277CD7320];
  if (v202.size.depth != 1 || v202.origin.z)
  {
    v29 = BYTE1(self->_checkFlags) >> 7;
    if (self->_sourceFeatureChannelOffset)
    {
      LOBYTE(v29) = 0;
    }

    v30 = indexCopy11;
    v31 = v28[56];
    if (!self->_encode)
    {
LABEL_31:
      v195 = v31;
      v32 = objc_autoreleasePoolPush();
      v40 = objc_msgSend_batchRepresentation(destinationImage, v33, v34, v35, v36, v37, v38, v39);
      v51 = objc_msgSend_batchRepresentation(image, v41, v42, v43, v44, v45, v46, v47);
      v52 = *(image + *v24);
      if (state)
      {
        v53 = v52 == 0;
      }

      else
      {
        v53 = 1;
      }

      v54 = v53;
      if (encoder)
      {
        if (v54)
        {
          objc_msgSend_encodeBatchToCommandEncoder_commandBuffer_sourceImages_inStates_destinationImages_(self, v48, encoder, buffer, v51, 0, v40, v50, v190);
          goto LABEL_61;
        }

        v194 = v32;
        v96 = malloc_type_malloc(8 * v52, 0x80040B8603338uLL);
        if (!v96)
        {
          v104 = 0;
LABEL_60:
          v32 = v194;
          objc_msgSend_encodeBatchToCommandEncoder_commandBuffer_sourceImages_inStates_destinationImages_(self, v97, encoder, buffer, v51, v104, v40, v101, v190);
LABEL_61:
          if ((*(destinationImage + *MEMORY[0x277CD7320] + 56) & 1) == 0)
          {
            goto LABEL_76;
          }

          goto LABEL_70;
        }

        v102 = v96;
        if (v52 > 3)
        {
          v103 = v52 & 0xFFFFFFFFFFFFFFFCLL;
          v105 = vdupq_n_s64(state);
          v106 = v96 + 1;
          v107 = v52 & 0xFFFFFFFFFFFFFFFCLL;
          do
          {
            v106[-1] = v105;
            *v106 = v105;
            v106 += 2;
            v107 -= 4;
          }

          while (v107);
          if (v52 == v103)
          {
            goto LABEL_59;
          }
        }

        else
        {
          v103 = 0;
        }

        v108 = v52 - v103;
        v109 = v96 + v103;
        do
        {
          *v109++ = state;
          --v108;
        }

        while (v108);
LABEL_59:
        v110 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v97, v96, v52, v98, v99, v100, v101, v190, sourceFeatureChannelOffset, destinationImageCopy);
        free(v102);
        v104 = v110;
        goto LABEL_60;
      }

      if ((v54 & 1) != 0 || (v62 = malloc_type_malloc(8 * v52, 0x80040B8603338uLL)) == 0)
      {
        objc_msgSend_encodeBatchToCommandBuffer_sourceImages_inStates_destinationImages_(self, v48, buffer, v51, 0, v40, v49, v50, v190);
        goto LABEL_69;
      }

      v65 = v62;
      if (v52 > 3)
      {
        v66 = v52 & 0xFFFFFFFFFFFFFFFCLL;
        v111 = vdupq_n_s64(state);
        v112 = v62 + 1;
        v113 = v52 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v112[-1] = v111;
          *v112 = v111;
          v112 += 2;
          v113 -= 4;
        }

        while (v113);
        if (v52 == v66)
        {
          goto LABEL_68;
        }
      }

      else
      {
        v66 = 0;
      }

      v114 = v52 - v66;
      v115 = v62 + v66;
      do
      {
        *v115++ = state;
        --v114;
      }

      while (v114);
LABEL_68:
      v116 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v48, v62, v52, v63, v64, v49, v50, v190, sourceFeatureChannelOffset, destinationImageCopy);
      free(v65);
      objc_msgSend_encodeBatchToCommandBuffer_sourceImages_inStates_destinationImages_(self, v117, buffer, v51, v116, v40, v118, v119, v191);
LABEL_69:
      if ((*(destinationImage + *MEMORY[0x277CD7320] + 56) & 1) == 0)
      {
LABEL_76:
        if (v195)
        {
          MPSDecrementReadCount(image);
        }

        objc_autoreleasePoolPop(v32);
        return;
      }

LABEL_70:
      v120 = objc_msgSend_count(v40, v55, v56, v57, v58, v59, v60, v61);
      if (v120)
      {
        v127 = v120;
        v128 = 0;
        for (j = objc_msgSend_objectAtIndexedSubscript_(v40, v121, 0, v122, v123, v124, v125, v126); ; j = objc_msgSend_objectAtIndexedSubscript_(v40, v130, v128, v131, v132, v133, v134, v135))
        {
          if (j != destinationImage)
          {
            objc_msgSend_setReadCount_(j, v130, 0, v131, v132, v133, v134, v135);
          }

          if (v127 == ++v128)
          {
            break;
          }
        }
      }

      goto LABEL_76;
    }
  }

  else
  {
    LOBYTE(v29) = 1;
    v30 = indexCopy11;
    v31 = v28[56];
    if (!self->_encode)
    {
      goto LABEL_31;
    }
  }

  if ((v29 & 1) == 0)
  {
    goto LABEL_31;
  }

  if (encoder)
  {
    v200 = v202;
    LOBYTE(destinationImageCopy) = 1;
    objc_msgSend_encodeInternalToCommputeEncoder_commandBuffer_sourceImage_inState_destinationImage_subBatchIndex_batchSize_clipRect_shouldHandleCompoundImageNatively_(self, v27, encoder, buffer, image, state, destinationImage, v30, size, &v200, destinationImageCopy);
  }

  else
  {
    v67 = objc_alloc(MEMORY[0x277CD7210]);
    v79 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v67, v68, buffer, 0, v69, v70, v71, v72);
    v201.width = v79;
    v201.height = self;
    if ((*(&self->super.super.isa + v15) & 0x18) != 0)
    {
      v80 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
      if (v80 || (v81 = objc_opt_class(), v82 = NSStringFromClass(v81), objc_msgSend_setLabel_(self, v83, v82, v84, v85, v86, v87, v88), (v80 = v82) != 0))
      {
        objc_msgSend_setLabel_(v79, v73, v80, v74, v75, v76, v77, v78, v190, sourceFeatureChannelOffset, destinationImageCopy);
      }
    }

    v200 = v202;
    LOBYTE(destinationImageCopy) = 1;
    objc_msgSend_encodeInternalToCommputeEncoder_commandBuffer_sourceImage_inState_destinationImage_subBatchIndex_batchSize_clipRect_shouldHandleCompoundImageNatively_(self, v73, v79, buffer, image, state, destinationImage, indexCopy11, size, &v200, destinationImageCopy);
    objc_msgSend_endEncoding(v79, v89, v90, v91, v92, v93, v94, v95);
  }
}

- (id)encodeBatchToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceImages:(id)images inStates:(id)states
{
  v134[1] = *MEMORY[0x277D85DE8];
  v13 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.isa + v13) & 1) == 0 && self->_clipRect.origin.z && MTLReportFailureTypeEnabled())
  {
    v125 = objc_opt_class();
    v126 = NSStringFromClass(v125);
    MTLReportFailure();
  }

  v14 = objc_msgSend_count(images, a2, encoder, buffer, images, states, v6, v7, v126);
  v134[0] = objc_msgSend_objectAtIndexedSubscript_(images, v15, 0, v16, v17, v18, v19, v20);
  v32 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v21, v134, 1, v22, v23, v24, v25);
  if (states)
  {
    v133 = objc_msgSend_objectAtIndexedSubscript_(states, v26, 0, v27, v28, v29, v30, v31);
    v38 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v33, &v133, 1, v34, v35, v36, v37);
    v44 = objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_(self, v39, v32, v38, v40, v41, v42, v43);
  }

  else
  {
    v44 = objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_(self, v26, v32, 0, v28, v29, v30, v31);
  }

  v45 = v44;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_dimensionOrder(self, v46, v47, v48, v49, v50, v51, v52);
    if (v132 != 3)
    {
      v131[0] = objc_msgSend_featureChannels(v45, v53, v54, v55, v56, v57, v58, v59);
      v131[1] = objc_msgSend_width(v45, v60, v61, v62, v63, v64, v65, v66);
      v131[2] = objc_msgSend_height(v45, v67, v68, v69, v70, v71, v72, v73);
      v132 = v14;
      objc_msgSend_dimensionOrder(self, v74, v75, v76, v77, v78, v79, v80);
      objc_msgSend_setFeatureChannels_(v45, v81, v131[v127], v82, v83, v84, v85, v86);
      objc_msgSend_dimensionOrder(self, v87, v88, v89, v90, v91, v92, v93);
      objc_msgSend_setWidth_(v45, v94, v131[v128], v95, v96, v97, v98, v99);
      objc_msgSend_dimensionOrder(self, v100, v101, v102, v103, v104, v105, v106);
      objc_msgSend_setHeight_(v45, v107, v131[v129], v108, v109, v110, v111, v112);
      objc_msgSend_dimensionOrder(self, v113, v114, v115, v116, v117, v118, v119);
      v14 = v131[v130];
    }
  }

  if (*(&self->super.super.isa + v13))
  {
    if (!v45)
    {
      return 0;
    }
  }

  else if (!v45)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v120 = objc_opt_class();
      NSStringFromClass(v120);
      MTLReportFailure();
    }

    return 0;
  }

  v121 = sub_239D112C8(buffer, self->_destinationImageAllocator, v45, self, v14);
  if (v121)
  {
    objc_msgSend_encodeBatchToCommandEncoder_commandBuffer_sourceImages_inStates_destinationImages_(self, v122, encoder, buffer, images, states, v121, v123);
  }

  return v121;
}

- (id)encodeBatchToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceImages:(id)images sourceStates:(id)states destinationStates:(id *)destinationStates destinationStateIsTemporary:(BOOL)temporary
{
  temporaryCopy = temporary;
  v139[1] = *MEMORY[0x277D85DE8];
  v14 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.isa + v14) & 1) == 0 && self->_clipRect.origin.z && MTLReportFailureTypeEnabled())
  {
    v128 = objc_opt_class();
    v129 = NSStringFromClass(v128);
    MTLReportFailure();
  }

  v15 = objc_msgSend_count(images, a2, encoder, buffer, images, states, destinationStates, temporary, v129);
  v139[0] = objc_msgSend_objectAtIndexedSubscript_(images, v16, 0, v17, v18, v19, v20, v21);
  v27 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v22, v139, 1, v23, v24, v25, v26);
  v33 = objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_(self, v28, v27, states, v29, v30, v31, v32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_dimensionOrder(self, v34, v35, v36, v37, v38, v39, v40);
    if (v138 != 3)
    {
      v137[0] = objc_msgSend_featureChannels(v33, v41, v42, v43, v44, v45, v46, v47);
      v137[1] = objc_msgSend_width(v33, v48, v49, v50, v51, v52, v53, v54);
      v137[2] = objc_msgSend_height(v33, v55, v56, v57, v58, v59, v60, v61);
      v138 = v15;
      objc_msgSend_dimensionOrder(self, v62, v63, v64, v65, v66, v67, v68);
      objc_msgSend_setFeatureChannels_(v33, v69, v137[v131], v70, v71, v72, v73, v74);
      objc_msgSend_dimensionOrder(self, v75, v76, v77, v78, v79, v80, v81);
      objc_msgSend_setWidth_(v33, v82, v137[v132], v83, v84, v85, v86, v87);
      objc_msgSend_dimensionOrder(self, v88, v89, v90, v91, v92, v93, v94);
      objc_msgSend_setHeight_(v33, v95, v137[v133], v96, v97, v98, v99, v100);
      objc_msgSend_dimensionOrder(self, v101, v102, v103, v104, v105, v106, v107);
      v15 = v137[v134];
    }
  }

  if (*(&self->super.super.isa + v14))
  {
    if (!v33)
    {
      return v33;
    }
  }

  else if (!v33)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v108 = objc_opt_class();
      NSStringFromClass(v108);
      MTLReportFailure();
    }

    return 0;
  }

  v33 = sub_239D112C8(buffer, self->_destinationImageAllocator, v33, self, v15);
  if (v33)
  {
    if (temporaryCopy)
    {
      if (states)
      {
        statesCopy = states;
        v114 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v109, &statesCopy, 1, v110, v111, v112, v113);
        v118 = objc_msgSend_temporaryResultStateBatchForCommandBuffer_sourceImage_sourceStates_destinationImage_(self, v115, buffer, images, v114, v33, v116, v117);
      }

      else
      {
        v118 = objc_msgSend_temporaryResultStateBatchForCommandBuffer_sourceImage_sourceStates_destinationImage_(self, v109, buffer, images, 0, v33, v112, v113);
      }
    }

    else if (states)
    {
      statesCopy2 = states;
      v121 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v109, &statesCopy2, 1, v110, v111, v112, v113);
      v118 = objc_msgSend_resultStateBatchForSourceImage_sourceStates_destinationImage_(self, v122, images, v121, v33, v123, v124, v125);
    }

    else
    {
      v118 = objc_msgSend_resultStateBatchForSourceImage_sourceStates_destinationImage_(self, v109, images, 0, v33, v111, v112, v113);
    }

    v126 = v118;
    objc_msgSend_encodeBatchToCommandEncoder_commandBuffer_sourceImages_inStates_destinationImages_(self, v119, encoder, buffer, images, v118, v33, v120);
    if (destinationStates)
    {
      *destinationStates = v126;
    }

    if (states)
    {
      MPSDecrementReadCount();
    }
  }

  return v33;
}

- (void)encodeInternalBatchToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceImages:(id)images inStates:(id)states destinationImages:(id)destinationImages clipRect:(id *)rect
{
  rectCopy2 = rect;
  imagesCopy = images;
  selfCopy3 = self;
  v11 = MEMORY[0x277CD72F8];
  if ((self->_checkFlags & 0x2000) != 0)
  {
    sourceFeatureChannelOffset = self->_sourceFeatureChannelOffset;
    bufferCopy5 = buffer;
  }

  else
  {
    v14 = objc_msgSend_objectAtIndexedSubscript_(images, a2, 0, buffer, images, states, destinationImages, rect);
    v22 = *(v14 + *v11);
    if (v22 >= selfCopy3->_sourceFeatureChannelOffset)
    {
      v23 = selfCopy3->_sourceFeatureChannelOffset;
    }

    else
    {
      v23 = *(v14 + *v11);
    }

    if (v22 - v23 >= selfCopy3->_sourceFeatureChannelMaxCount)
    {
      sourceFeatureChannelMaxCount = selfCopy3->_sourceFeatureChannelMaxCount;
    }

    else
    {
      sourceFeatureChannelMaxCount = v22 - v23;
    }

    v25 = objc_msgSend_count(imagesCopy, v15, v16, v17, v18, v19, v20, v21);
    if (v25 && ((v26 = v25, v23) || sourceFeatureChannelMaxCount < *(objc_msgSend_objectAtIndexedSubscript_(imagesCopy, a2, 0, buffer, images, states, destinationImages, rect) + *v11)))
    {
      v27 = objc_msgSend_objectAtIndexedSubscript_(imagesCopy, a2, 0, buffer, images, states, destinationImages, rect);
      v31 = sub_239D29B30(buffer, encoder, v27, v23, sourceFeatureChannelMaxCount, v28, v29, v30);
      if (v31 == objc_msgSend_objectAtIndexedSubscript_(imagesCopy, v32, 0, v33, v34, v35, v36, v37))
      {
        sourceFeatureChannelOffset = 0;
        bufferCopy5 = buffer;
      }

      else
      {
        v44 = malloc_type_malloc(8 * v26, 0x80040B8603338uLL);
        *v44 = v31;
        if (v26 != 1)
        {
          for (i = 1; i != v26; ++i)
          {
            v46 = objc_msgSend_objectAtIndexedSubscript_(imagesCopy, v38, i, v39, v40, v41, v42, v43);
            v44[i] = sub_239D29B30(buffer, encoder, v46, v23, sourceFeatureChannelMaxCount, v47, v48, v49);
          }
        }

        imagesCopy = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v38, v44, v26, v40, v41, v42, v43);
        free(v44);
        sourceFeatureChannelOffset = 0;
        rectCopy2 = rect;
        bufferCopy5 = buffer;
      }

      selfCopy3 = self;
    }

    else
    {
      sourceFeatureChannelOffset = 0;
      selfCopy3 = self;
      bufferCopy5 = buffer;
    }
  }

  destinationFeatureChannelOffset = selfCopy3->_destinationFeatureChannelOffset;
  v190 = objc_msgSend_maxBatchSize(selfCopy3, a2, encoder, buffer, images, states, destinationImages, rect);
  v197 = malloc_type_calloc(v190, 0x78uLL, 0x10E004012FEE65DuLL);
  p_offset = &selfCopy3->_offset;
  v59 = *&selfCopy3->_offset.x;
  v60.i16[0] = selfCopy3->_kernelWidth;
  v60.i16[2] = selfCopy3->_kernelHeight;
  v198 = v60;
  v60.i16[0] = selfCopy3->_dilationRateX;
  v60.i16[2] = selfCopy3->_dilationRateY;
  v201 = v60;
  if (destinationImages)
  {
    v193 = *&selfCopy3->_offset.x;
    v61 = objc_msgSend_objectAtIndexedSubscript_(destinationImages, v53, 0, v54, v55, v56, v57, v58);
    v69 = objc_msgSend_featureChannels(v61, v62, v63, v64, v65, v66, v67, v68);
    v59 = v193;
  }

  else
  {
    v69 = 0;
  }

  v70 = vmovn_s64(v59);
  v71 = v69 - destinationFeatureChannelOffset;
  if (v69 < destinationFeatureChannelOffset)
  {
    v71 = 0;
  }

  memset(v212, 0, sizeof(v212));
  v211 = 0u;
  v210 = 0u;
  var2 = rectCopy2->var1.var2;
  v207 = 0;
  v208 = 0;
  v209 = v197;
  v72 = vmovn_s64(*&rectCopy2->var0.var0);
  LOWORD(v73) = v72.i16[0];
  WORD1(v73) = v72.i16[2];
  HIDWORD(v73) = ((destinationFeatureChannelOffset + 3) >> 2);
  v74 = vmovn_s64(*&rectCopy2->var1.var0);
  v72.i16[0] = v74.i16[0];
  v72.i16[1] = v74.i16[2];
  v72.i32[1] = ((v71 + 3) >> 2);
  *&v211 = v73;
  *(&v211 + 1) = v72;
  if (destinationImages)
  {
    v194 = v70;
    LOWORD(v212[0]) = *(objc_msgSend_objectAtIndexedSubscript_(destinationImages, v53, 0, v54, v55, v56, v57, v58) + *v11);
    v82 = objc_msgSend_count(destinationImages, v75, v76, v77, v78, v79, v80, v81);
    v70 = v194;
  }

  else
  {
    v82 = 0;
  }

  HIWORD(v212[0]) = v82;
  v212[1] = 1;
  LOWORD(v212[2]) = 0;
  HIWORD(v212[2]) = v190;
  v212[6] = 0;
  v213 = 0;
  v83 = vmls_s32(v70, v201, vshr_n_u32(vand_s8(v198, 0xFFFF0000FFFFLL), 1uLL));
  *&v212[3] = 0;
  v215 = v83.i16[2];
  v214 = v83.i16[0];
  v216 = 0;
  v218 = v198.i16[2];
  v217 = v198.i16[0];
  v220 = v70.i16[2];
  v219 = v70.i16[0];
  strideInPixelsX = self->_strideInPixelsX;
  strideInPixelsY = self->_strideInPixelsY;
  v221 = strideInPixelsX;
  v224 = v201.i16[2];
  v223 = v201.i16[0];
  v225 = self->_sourceFeatureChannelOffset;
  v199 = imagesCopy;
  v85 = *(objc_msgSend_objectAtIndexedSubscript_(imagesCopy, v53, 0, v54, v55, v56, v57, v58) + *v11);
  v86 = *&rectCopy2->var0.var2;
  v231 = *&rectCopy2->var1.var1;
  v87 = *&rectCopy2->var0.var0;
  v230 = v86;
  v226 = v85;
  z = selfCopy3->_offset.z;
  v227 = z;
  v228 = 0;
  v229 = v87;
  v232 = *&p_offset->x;
  v233 = z;
  v234 = destinationFeatureChannelOffset;
  v235 = sourceFeatureChannelOffset;
  v96 = 0;
  if ((objc_msgSend_retainedReferences(bufferCopy5, v89, v90, v91, v92, v93, v94, v95) & 1) == 0)
  {
    v96 = objc_opt_new();
    v205[0] = MEMORY[0x277D85DD0];
    v205[1] = 3221225472;
    v205[2] = sub_239D2BA40;
    v205[3] = &unk_278B28F28;
    v205[4] = v96;
    objc_msgSend_addCompletedHandler_(bufferCopy5, v97, v205, v98, v99, v100, v101, v102);
  }

  destinationImagesCopy2 = destinationImages;
  v104 = imagesCopy;
  v105 = v190;
  v106 = p_offset;
  if (rectCopy2->var1.var2)
  {
    rectCopy3 = rectCopy2;
    v189 = 0;
    v191 = 0;
    v108 = 0;
    v109 = MEMORY[0x277CD7318];
    v110 = MEMORY[0x277CD7480];
    do
    {
      v111 = v106;
      v112 = objc_autoreleasePoolPush();
      v185 = rectCopy3->var1.var2;
      v186 = v112;
      v187 = v185 - v108;
      if (v105 >= v185 - v108)
      {
        v105 = v185 - v108;
      }

      v204 = 0;
      v116 = sub_239D2BA48(v104, bufferCopy5, v111->z + v108, v105, &v204, v113, v114, v115);
      v123 = v116;
      v203 = v204;
      v192 = v105;
      if (destinationImagesCopy2)
      {
        v124 = sub_239D2BA48(destinationImagesCopy2, bufferCopy5, rectCopy3->var0.var2 + v108, v105, &v203, v120, v121, v122);
        v125 = MEMORY[0x277CD7488];
        if (v123)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v124 = 0;
        v125 = MEMORY[0x277CD7488];
        if (v116)
        {
LABEL_38:
          if ((self->_checkFlags & 0x1000) != 0 || v124)
          {
            goto LABEL_42;
          }
        }
      }

      if (MTLReportFailureTypeEnabled())
      {
        v126 = objc_opt_class();
        v181 = NSStringFromClass(v126);
        MTLReportFailure();
      }

LABEL_42:
      v207 = v192;
      v208 = v108;
      v213 = v123;
      v212[6] = v204;
      v228 = v192;
      *(&v210 + 1) = v124;
      LODWORD(v210) = v203;
      HIWORD(v211) = v192;
      LOWORD(v212[2]) = v191;
      if (v96)
      {
        objc_msgSend_addObject_(v96, v117, v123, v118, v119, v120, v121, v122);
        if (destinationImagesCopy2)
        {
          objc_msgSend_addObject_(v96, v117, v124, v118, v119, v120, v121, v122);
        }
      }

      v202 = v108;
      if (v192)
      {
        v127 = 0;
        if (v190 >= v185 + v189)
        {
          v128 = v185 + v189;
        }

        else
        {
          v128 = v190;
        }

        while (1)
        {
          v129 = v127 + v202;
          v131 = objc_msgSend_objectAtIndexedSubscript_(v199, v117, p_offset->z + v127 + v202, v118, v119, v120, v121, v122, v181);
          if (destinationImagesCopy2)
          {
            v132 = objc_msgSend_objectAtIndexedSubscript_(destinationImagesCopy2, v117, self->_clipRect.origin.z + v129, v118, v119, v120, v121, v122);
          }

          else
          {
            v132 = 0;
          }

          v133 = *v109;
          v134 = v131 + *MEMORY[0x277CD7320];
          explicit = atomic_load_explicit(v134, memory_order_acquire);
          if ((*(v134 + 56) & 2) != 0)
          {
            if (*(v134 + 52) < 2u)
            {
              v136 = 2;
            }

            else
            {
              v136 = 3;
            }
          }

          else
          {
            if (!explicit)
            {
              explicit = *(v134 + 40);
            }

            v136 = objc_msgSend_textureType(explicit, v117, v130, v118, v119, v120, v121, v122);
          }

          v137 = *(v131 + *MEMORY[0x277CD72F0]) - 1;
          if (v137 > 4)
          {
            v138 = 0;
          }

          else
          {
            v138 = dword_239D91650[v137];
          }

          v139 = v131 + v133;
          if (v136 == 3)
          {
            ++v138;
          }

          if (*(v131 + *MEMORY[0x277CD7310]) >= 2uLL)
          {
            v138 |= 2u;
          }

          if ((*(v131 + *v109) & 0x3000000) != 0)
          {
            v138 |= 4u;
          }

          v140 = *(v131 + *MEMORY[0x277CD72F8]);
          v141 = 2;
          if (v140 > 4)
          {
            v141 = 3;
          }

          v142 = *(v131 + *MEMORY[0x277CD7300]);
          v143 = &v197[120 * v127];
          *v143 = v131;
          *(v143 + 1) = v139;
          *(v143 + 4) = v138;
          *(v143 + 3) = v140;
          *(v143 + 4) = v141;
          *(v143 + 5) = 0;
          *(v143 + 6) = v142;
          *(v143 + 14) = 0;
          if (v132)
          {
            v144 = *v109;
            v145 = v132 + *MEMORY[0x277CD7320];
            v146 = atomic_load_explicit(v145, memory_order_acquire);
            if ((*(v145 + 56) & 2) != 0)
            {
              if (*(v145 + 52) < 2u)
              {
                v147 = 2;
              }

              else
              {
                v147 = 3;
              }
            }

            else
            {
              if (!v146)
              {
                v146 = *(v145 + 40);
              }

              v147 = objc_msgSend_textureType(v146, v117, v130, v118, v119, v120, v121, v122);
            }

            v149 = *(v132 + *MEMORY[0x277CD72F0]) - 1;
            if (v149 > 4)
            {
              v150 = 0;
            }

            else
            {
              v150 = dword_239D91650[v149];
            }

            if (v147 == 3)
            {
              ++v150;
            }

            if (*(v132 + *MEMORY[0x277CD7310]) >= 2uLL)
            {
              v150 |= 2u;
            }

            if ((*(v132 + *v109) & 0x3000000) != 0)
            {
              v150 |= 4u;
            }

            v151 = *(v132 + *MEMORY[0x277CD72F8]);
            v152 = 2;
            if (v151 > 4)
            {
              v152 = 3;
            }

            v153 = *(v132 + *MEMORY[0x277CD7300]);
            *(v143 + 7) = v132;
            *(v143 + 8) = v132 + v144;
            *(v143 + 18) = v150;
            *(v143 + 10) = v151;
            *(v143 + 11) = v152;
            *(v143 + 12) = 0;
            *(v143 + 13) = v153;
            statesCopy2 = states;
            if (states)
            {
LABEL_94:
              v154 = objc_msgSend_objectAtIndexedSubscript_(statesCopy2, v117, v129, v118, v119, v120, v121, v122);
              *(v143 + 14) = v154;
              if (v96)
              {
                v155 = v154;
                if (v154)
                {
                  if ((*(v154 + *MEMORY[0x277CD7470]) & 1) == 0 && *(v154 + *v110))
                  {
                    v156 = 0;
                    v157 = 0;
                    while (1)
                    {
                      v161 = *(v155 + *v125);
                      v162 = *(v161 + v156);
                      if (!*(v161 + v156))
                      {
                        goto LABEL_101;
                      }

                      if (v162 == 2)
                      {
                        break;
                      }

                      if (v162 != 1)
                      {
                        if (MTLReportFailureTypeEnabled())
                        {
                          v164 = objc_opt_class();
                          v181 = NSStringFromClass(v164);
                          MTLReportFailure();
                        }

                        goto LABEL_101;
                      }

                      v160 = atomic_load_explicit((v161 + v156 + 8), memory_order_acquire);
                      if (v160)
                      {
                        goto LABEL_100;
                      }

                      v163 = (v161 + 72 * v157 + 8);
                      MPSAutoBuffer::AllocateBuffer((v161 + v156 + 8), 0);
                      v160 = atomic_load_explicit(v163, memory_order_acquire);
                      if (v160)
                      {
                        goto LABEL_100;
                      }

LABEL_101:
                      ++v157;
                      v156 += 72;
                      if (v157 >= *(v155 + *v110))
                      {
                        goto LABEL_50;
                      }
                    }

                    v158 = v161 + v156;
                    v159 = (v158 + 8);
                    v160 = atomic_load_explicit((v158 + 8), memory_order_acquire);
                    if (!v160)
                    {
                      MPSAutoTexture::AllocateTexture((v158 + 8), 0);
                      v160 = atomic_load_explicit(v159, memory_order_acquire);
                      if (!v160)
                      {
                        goto LABEL_101;
                      }
                    }

LABEL_100:
                    objc_msgSend_addObject_(v96, v117, v160, v118, v119, v120, v121, v122, v181);
                    goto LABEL_101;
                  }
                }
              }

              goto LABEL_50;
            }
          }

          else
          {
            *(v143 + 13) = 0;
            *(v143 + 88) = 0u;
            *(v143 + 72) = 0u;
            *(v143 + 56) = 0u;
            statesCopy2 = states;
            if (states)
            {
              goto LABEL_94;
            }
          }

          *(v143 + 14) = 0;
LABEL_50:
          ++v127;
          destinationImagesCopy2 = destinationImages;
          if (v127 == v128)
          {
            rectCopy3 = rect;
            v165 = v190;
            selfCopy5 = self;
            if (v187 < v190)
            {
              goto LABEL_113;
            }

            goto LABEL_114;
          }
        }
      }

      v128 = 0;
      v165 = v190;
      selfCopy5 = self;
      if (v187 < v190)
      {
LABEL_113:
        bzero(&v197[120 * v128], 120 * (v165 - v192));
      }

LABEL_114:
      if ((*(&selfCopy5->super.super.isa + *MEMORY[0x277CD7378]) & 8) != 0)
      {
        v176 = *(&selfCopy5->super.super.isa + *MEMORY[0x277CD7360]);
        encoderCopy2 = encoder;
        if (!v176)
        {
          v178 = objc_opt_class();
          v179 = NSStringFromClass(v178);
          encoderCopy2 = encoder;
          v176 = v179;
        }

        v180 = encoderCopy2;
        objc_msgSend_pushDebugGroup_(encoderCopy2, v117, v176, v118, v119, v120, v121, v122, v181);
        encoderCopy3 = v180;
        v167 = v180;
      }

      else
      {
        v167 = 0;
        encoderCopy3 = encoder;
      }

      (selfCopy5->_batchEncode)(selfCopy5->_encodeData, encoderCopy3, buffer, &var2);
      if (v167)
      {
        objc_msgSend_popDebugGroup(v167, v169, v170, v171, v172, v173, v174, v175);
      }

      v104 = v199;
      objc_msgSend_subarrayWithRange_(v199, v169, p_offset->z + v202, v192, v172, v173, v174, v175, v181);
      MPSDecrementReadCount();
      objc_autoreleasePoolPop(v186);
      v106 = p_offset;
      v105 = v190;
      v108 = v202 + v190;
      ++v191;
      bufferCopy5 = buffer;
      v189 -= v190;
    }

    while (v202 + v190 < rectCopy3->var1.var2);
  }

  free(v197);
}

- (void)encodeBatchToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceImages:(id)images inStates:(id)states destinationImages:(id)destinationImages
{
  v12 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.isa + v12) & 1) == 0)
  {
    if (!buffer && MTLReportFailureTypeEnabled())
    {
      v393 = objc_opt_class();
      v409 = NSStringFromClass(v393);
      MTLReportFailure();
    }

    if (!images && MTLReportFailureTypeEnabled())
    {
      v394 = objc_opt_class();
      v409 = NSStringFromClass(v394);
      MTLReportFailure();
    }

    if (!destinationImages && (self->_checkFlags & 0x1000) == 0 && MTLReportFailureTypeEnabled())
    {
      v392 = objc_opt_class();
      v409 = NSStringFromClass(v392);
      MTLReportFailure();
    }

    v13 = *MEMORY[0x277CD7348];
    if ((*(&self->super.super.isa + v12) & ~*(&self->super.super.isa + v13)) != 0 && MTLReportFailureTypeEnabled())
    {
      v395 = objc_opt_class();
      v409 = NSStringFromClass(v395);
      v413 = *(&self->super.super.isa + v12) & ~*(&self->super.super.isa + v13);
      MTLReportFailure();
    }

    if (self->_offset.z < 0 && MTLReportFailureTypeEnabled())
    {
      v396 = objc_opt_class();
      v409 = NSStringFromClass(v396);
      MTLReportFailure();
    }

    if ((self->_checkFlags & 0x40000) == 0 && self->_edgeMode >= 2 && MTLReportFailureTypeEnabled())
    {
      v408 = objc_opt_class();
      v409 = NSStringFromClass(v408);
      MTLReportFailure();
    }
  }

  v14 = objc_msgSend_objectAtIndexedSubscript_(images, a2, 0, buffer, images, states, destinationImages, v7, v409, v413);
  v434 = objc_msgSend_width(v14, v15, v16, v17, v18, v19, v20, v21);
  v28 = objc_msgSend_objectAtIndexedSubscript_(images, v22, 0, v23, v24, v25, v26, v27);
  v435 = objc_msgSend_height(v28, v29, v30, v31, v32, v33, v34, v35);
  v436 = objc_msgSend_count(images, v36, v37, v38, v39, v40, v41, v42);
  bufferCopy = buffer;
  if (destinationImages)
  {
    v49 = objc_msgSend_objectAtIndexedSubscript_(destinationImages, v43, 0, v44, v45, v46, v47, v48);
    v431 = objc_msgSend_width(v49, v50, v51, v52, v53, v54, v55, v56);
    v63 = objc_msgSend_objectAtIndexedSubscript_(destinationImages, v57, 0, v58, v59, v60, v61, v62);
    v432 = objc_msgSend_height(v63, v64, v65, v66, v67, v68, v69, v70);
    v433 = objc_msgSend_count(destinationImages, v71, v72, v73, v74, v75, v76, v77);
    v78 = *&self->_clipRect.origin.x;
    z = self->_clipRect.origin.z;
    v80 = &v431;
  }

  else
  {
    v431 = 0;
    v432 = 0;
    v433 = 0;
    v78 = vandq_s8(*&self->_offset.x, vcgtzq_s64(*&self->_offset.x));
    z = self->_offset.z & ~(self->_offset.z >> 63);
    v80 = &v434;
  }

  v428.size = self->_clipRect.size;
  memset(&v430, 0, sizeof(v430));
  v429 = *v80;
  *&v428.origin.x = v78;
  v428.origin.z = z;
  MPSGetEffectiveClipRegion(&v430, &v429, &v428);
  v87 = objc_msgSend_objectAtIndexedSubscript_(images, v81, 0, v82, v83, v84, v85, v86);
  v102 = objc_msgSend_featureChannels(v87, v88, v89, v90, v91, v92, v93, v94);
  v421 = v12;
  if (destinationImages)
  {
    v103 = objc_msgSend_objectAtIndexedSubscript_(destinationImages, v95, 0, v97, v98, v99, v100, v101);
    v426 = objc_msgSend_featureChannels(v103, v104, v105, v106, v107, v108, v109, v110);
    if (*(&self->super.super.isa + v12))
    {
      goto LABEL_71;
    }

    objc_msgSend_count(destinationImages, v111, v112, v113, v114, v115, v116, v117);
    v118 = v430.size.depth + v430.origin.z;
    if (v118 > objc_msgSend_count(destinationImages, v119, v120, v121, v122, v123, v124, v125) && MTLReportFailureTypeEnabled())
    {
      v126 = objc_opt_class();
      v127 = NSStringFromClass(v126);
      v128 = v430.origin.z;
      depth = v430.size.depth;
      v418 = objc_msgSend_count(destinationImages, v129, v130, v131, v132, v133, v134, v135);
      v410 = v127;
      v414 = v128;
      MTLReportFailure();
    }
  }

  else
  {
    if (*(&self->super.super.isa + v12))
    {
      goto LABEL_71;
    }

    v426 = 0;
  }

  if (self->_offset.z < 0 && MTLReportFailureTypeEnabled())
  {
    v397 = objc_opt_class();
    v410 = NSStringFromClass(v397);
    v414 = self->_offset.z;
    MTLReportFailure();
  }

  objc_msgSend_count(images, v95, v96, v97, v98, v99, v100, v101, v410, v414, depth, v418);
  v136 = v430.size.depth + self->_offset.z;
  if (v136 > objc_msgSend_count(images, v137, v138, v139, v140, v141, v142, v143) && MTLReportFailureTypeEnabled())
  {
    v398 = objc_opt_class();
    v399 = NSStringFromClass(v398);
    v400 = self->_offset.z;
    v417 = v430.size.depth;
    v419 = objc_msgSend_count(images, v401, v402, v403, v404, v405, v406, v407);
    v410 = v399;
    v415 = v400;
    MTLReportFailure();
  }

  if (v430.size.depth)
  {
    v150 = 0;
    v151 = MEMORY[0x277CD7320];
    do
    {
      v152 = objc_msgSend_objectAtIndexedSubscript_(images, v144, self->_offset.z + v150, v145, v146, v147, v148, v149, v410, v415, v417, v419);
      v160 = v152;
      if (destinationImages)
      {
        v161 = objc_msgSend_objectAtIndexedSubscript_(destinationImages, v153, v430.origin.z + v150, v155, v156, v157, v158, v159);
        objc_msgSend_numberOfImages(v160, v162, v163, v164, v165, v166, v167, v168);
        if (objc_msgSend_numberOfImages(v160, v169, v170, v171, v172, v173, v174, v175) == 1)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v161 = 0;
        objc_msgSend_numberOfImages(v152, v153, v154, v155, v156, v157, v158, v159);
        if (objc_msgSend_numberOfImages(v160, v183, v184, v185, v186, v187, v188, v189) == 1)
        {
          goto LABEL_28;
        }
      }

      if (MTLReportFailureTypeEnabled())
      {
        v261 = objc_opt_class();
        v411 = NSStringFromClass(v261);
        MTLReportFailure();
      }

LABEL_28:
      if ((self->_checkFlags & 0x4000) == 0)
      {
        v190 = v434;
        if (v190 == objc_msgSend_width(v160, v176, v177, v178, v179, v180, v181, v182))
        {
          objc_msgSend_height(v160, v191, v192, v193, v194, v195, v196, v197);
        }

        if (v190 != objc_msgSend_width(v160, v191, v192, v193, v194, v195, v196, v197, v411) || (v205 = v435, v205 != objc_msgSend_height(v160, v198, v199, v200, v201, v202, v203, v204)))
        {
          if (MTLReportFailureTypeEnabled())
          {
            v272 = objc_opt_class();
            v411 = NSStringFromClass(v272);
            MTLReportFailure();
          }
        }
      }

      objc_msgSend_featureChannels(v160, v176, v177, v178, v179, v180, v181, v182, v411);
      if (v102 != objc_msgSend_featureChannels(v160, v206, v207, v208, v209, v210, v211, v212) && MTLReportFailureTypeEnabled())
      {
        v262 = objc_opt_class();
        v410 = NSStringFromClass(v262);
        MTLReportFailure();
      }

      if (v161)
      {
        objc_msgSend_numberOfImages(v161, v144, v213, v145, v146, v147, v148, v149);
        if (objc_msgSend_numberOfImages(v161, v214, v215, v216, v217, v218, v219, v220) != 1 && MTLReportFailureTypeEnabled())
        {
          v273 = objc_opt_class();
          v410 = NSStringFromClass(v273);
          MTLReportFailure();
        }

        v228 = v431;
        if (v228 == objc_msgSend_width(v161, v221, v222, v223, v224, v225, v226, v227, v410))
        {
          objc_msgSend_height(v161, v229, v230, v231, v232, v233, v234, v235);
        }

        if (v228 != objc_msgSend_width(v161, v229, v230, v231, v232, v233, v234, v235) || (v243 = v432, v243 != objc_msgSend_height(v161, v236, v237, v238, v239, v240, v241, v242)))
        {
          if (MTLReportFailureTypeEnabled())
          {
            v260 = objc_opt_class();
            v412 = NSStringFromClass(v260);
            MTLReportFailure();
          }
        }

        objc_msgSend_featureChannels(v161, v244, v245, v246, v247, v248, v249, v250, v412);
        if (v426 != objc_msgSend_featureChannels(v161, v251, v252, v253, v254, v255, v256, v257) && MTLReportFailureTypeEnabled())
        {
          v274 = objc_opt_class();
          v410 = NSStringFromClass(v274);
          MTLReportFailure();
        }

        if ((v161[*v151 + 56] & 1) != 0 && !*&v161[*MEMORY[0x277CD7490]] && MTLReportFailureTypeEnabled())
        {
          v284 = objc_opt_class();
          v285 = NSStringFromClass(v284);
          v415 = NSStringFromSelector(a2);
          v417 = objc_msgSend_debugDescription(v161, v286, v287, v288, v289, v290, v291, v292);
          v410 = v285;
          MTLReportFailure();
        }
      }

      if ((v160[*v151 + 56] & 1) != 0 && !*&v160[*MEMORY[0x277CD7490]] && MTLReportFailureTypeEnabled())
      {
        v275 = objc_opt_class();
        v276 = NSStringFromClass(v275);
        v415 = NSStringFromSelector(a2);
        v417 = objc_msgSend_debugDescription(v160, v277, v278, v279, v280, v281, v282, v283);
        v410 = v276;
        MTLReportFailure();
        for (i = &v160[*v151]; (i[56] & 2) != 0; i = *(i + 5))
        {
LABEL_46:
          ;
        }
      }

      else
      {
        i = &v160[*v151];
        if ((i[56] & 2) != 0)
        {
          goto LABEL_46;
        }
      }

      atomic_load_explicit(i, memory_order_acquire);
        ;
      }

      if (!atomic_load_explicit(j, memory_order_acquire) && MTLReportFailureTypeEnabled())
      {
        v263 = objc_opt_class();
        v264 = NSStringFromClass(v263);
        v415 = NSStringFromSelector(a2);
        v417 = objc_msgSend_debugDescription(v160, v265, v266, v267, v268, v269, v270, v271);
        v410 = v264;
        MTLReportFailure();
      }

      ++v150;
    }

    while (v150 < v430.size.depth);
  }

LABEL_71:
  if (images)
  {
    if (self->_batchEncode && ((checkFlags = self->_checkFlags, ((*(**(&self->super.super.isa + *MEMORY[0x277CD7350]) + 56))(*(&self->super.super.isa + *MEMORY[0x277CD7350])) & 1) != 0) || (checkFlags & 0x10000) != 0) && (!self->_plugin || self->_pluginSupportsBatchEncode))
    {
      if (encoder)
      {
        v428 = v430;
        objc_msgSend_encodeInternalBatchToCommandEncoder_commandBuffer_sourceImages_inStates_destinationImages_clipRect_(self, v294, encoder, buffer, images, states, destinationImages, &v428);
      }

      else
      {
        v363 = objc_alloc(MEMORY[0x277CD7210]);
        v375 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v363, v364, buffer, 0, v365, v366, v367, v368);
        v429.width = v375;
        v429.height = self;
        if ((*(&self->super.super.isa + v421) & 0x18) != 0)
        {
          v376 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
          if (v376 || (v377 = objc_opt_class(), v378 = NSStringFromClass(v377), objc_msgSend_setLabel_(self, v379, v378, v380, v381, v382, v383, v384), (v376 = v378) != 0))
          {
            objc_msgSend_setLabel_(v375, v369, v376, v370, v371, v372, v373, v374, v410);
          }
        }

        v428 = v430;
        objc_msgSend_encodeInternalBatchToCommandEncoder_commandBuffer_sourceImages_inStates_destinationImages_clipRect_(self, v369, v375, bufferCopy, images, states, destinationImages, &v428, v410);
        objc_msgSend_endEncoding(v375, v385, v386, v387, v388, v389, v390, v391);
      }
    }

    else
    {
      v427 = self->_clipRect.origin.z;
      v423 = self->_clipRect.size.depth;
      v295 = self->_offset.z;
      self->_clipRect.origin.z = 0;
      self->_clipRect.size.depth = 1;
      self->_offset.z = 0;
      statesCopy = states;
      if (v430.size.depth)
      {
        if (destinationImages)
        {
          if (states)
          {
            v297 = 0;
            do
            {
              v298 = objc_autoreleasePoolPush();
              v305 = objc_msgSend_objectAtIndexedSubscript_(images, v299, v295 + v297, v300, v301, v302, v303, v304);
              v312 = objc_msgSend_objectAtIndexedSubscript_(states, v306, v297, v307, v308, v309, v310, v311);
              v319 = objc_msgSend_objectAtIndexedSubscript_(destinationImages, v313, v297 + v430.origin.z, v314, v315, v316, v317, v318);
              objc_msgSend_encodeToCommandBuffer_sourceImage_inState_destinationImage_subBatchIndex_batchSize_(self, v320, bufferCopy, v305, v312, v319, v297, v430.size.depth);
              objc_autoreleasePoolPop(v298);
              ++v297;
            }

            while (v297 < v430.size.depth);
          }

          else
          {
            do
            {
              v321 = objc_autoreleasePoolPush();
              v328 = objc_msgSend_objectAtIndexedSubscript_(images, v322, &statesCopy[v295], v323, v324, v325, v326, v327);
              v335 = objc_msgSend_objectAtIndexedSubscript_(destinationImages, v329, &statesCopy[v430.origin.z], v330, v331, v332, v333, v334);
              objc_msgSend_encodeToCommandBuffer_sourceImage_inState_destinationImage_subBatchIndex_batchSize_(self, v336, bufferCopy, v328, 0, v335, statesCopy, v430.size.depth);
              objc_autoreleasePoolPop(v321);
              ++statesCopy;
            }

            while (statesCopy < v430.size.depth);
          }
        }

        else
        {
          v337 = 0;
          if (states)
          {
            do
            {
              v338 = objc_autoreleasePoolPush();
              v345 = objc_msgSend_objectAtIndexedSubscript_(images, v339, v295 + v337, v340, v341, v342, v343, v344);
              v352 = objc_msgSend_objectAtIndexedSubscript_(states, v346, v337, v347, v348, v349, v350, v351);
              objc_msgSend_encodeToCommandBuffer_sourceImage_inState_destinationImage_subBatchIndex_batchSize_(self, v353, bufferCopy, v345, v352, 0, v337, v430.size.depth);
              objc_autoreleasePoolPop(v338);
              ++v337;
            }

            while (v337 < v430.size.depth);
          }

          else
          {
            do
            {
              v354 = objc_autoreleasePoolPush();
              v361 = objc_msgSend_objectAtIndexedSubscript_(images, v355, v295 + v337, v356, v357, v358, v359, v360);
              objc_msgSend_encodeToCommandBuffer_sourceImage_inState_destinationImage_subBatchIndex_batchSize_(self, v362, buffer, v361, 0, 0, v337, v430.size.depth);
              objc_autoreleasePoolPop(v354);
              ++v337;
            }

            while (v337 < v430.size.depth);
          }
        }
      }

      self->_offset.z = v295;
      self->_clipRect.origin.z = v427;
      self->_clipRect.size.depth = v423;
    }
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSCNNKernel;
  [(MPSKernel *)&v3 dealloc];
}

- (MPSImageDescriptor)destinationImageDescriptorForSourceImages:(NSArray *)sourceImages sourceStates:(NSArray *)sourceStates
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0 && !self->_padding && MTLReportFailureTypeEnabled())
  {
    v41 = objc_opt_class();
    v43 = NSStringFromClass(v41);
    MTLReportFailure();
  }

  v11 = objc_msgSend_paddingMethod(self->_padding, a2, sourceImages, sourceStates, v4, v5, v6, v7, v43);
  v22 = objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_paddingMethod_sourceOffset_(self, v12, sourceImages, sourceStates, v11, &self->_offset, v13, v14);
  if (sourceStates)
  {
    v23 = objc_msgSend_count(sourceStates, v15, v16, v17, v18, v19, v20, v21);
    if (v23)
    {
      v30 = v23;
      for (i = 0; i != v30; ++i)
      {
        v32 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v24, i, v25, v26, v27, v28, v29);
        v22 = objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_forKernel_suggestedDescriptor_(v32, v33, sourceImages, sourceStates, self, v22, v34, v35);
      }
    }
  }

  if (!v22 || (v11 & 0x4000) == 0)
  {
    return v22;
  }

  objc_opt_respondsToSelector();
  if ((objc_opt_respondsToSelector() & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    v42 = objc_opt_class();
    NSStringFromClass(v42);
    MTLReportFailure();
  }

  padding = self->_padding;

  return objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_forKernel_suggestedDescriptor_(padding, v37, sourceImages, sourceStates, self, v22, v38, v39);
}

- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states paddingMethod:(unint64_t)method sourceOffset:(id *)offset kernelOffset:(id *)kernelOffset
{
  methodCopy = method;
  v12 = self->_dilationRateX * (self->_kernelWidth - 1);
  v13 = self->_dilationRateY * (self->_kernelHeight - 1);
  strideInPixelsX = self->_strideInPixelsX;
  strideInPixelsY = self->_strideInPixelsY;
  v16 = objc_msgSend_objectAtIndexedSubscript_(images, a2, 0, states, method, offset, kernelOffset, v7);
  sourceFeatureChannelOffset = self->_sourceFeatureChannelOffset;
  sourceFeatureChannelMaxCount = self->_sourceFeatureChannelMaxCount;
  v79 = *(v16 + *MEMORY[0x277CD72F8]);
  v23 = *(objc_msgSend_objectAtIndexedSubscript_(images, v17, 0, v18, v19, v20, v21, v22) + *MEMORY[0x277CD7330]);
  v30 = *(objc_msgSend_objectAtIndexedSubscript_(images, v24, 0, v25, v26, v27, v28, v29) + *MEMORY[0x277CD7308]);
  v37 = objc_msgSend_objectAtIndexedSubscript_(images, v31, 0, v32, v33, v34, v35, v36);
  v44 = methodCopy;
  v78 = *(v37 + *MEMORY[0x277CD7310]);
  isBackwards = self->_isBackwards;
  v46 = (((methodCopy >> 4) & 3) - 1);
  v47 = v12 * v46;
  if (isBackwards)
  {
    v48 = (v47 + (v23 - 1) * strideInPixelsX + 1) & ~((v47 + (v23 - 1) * strideInPixelsX + 1) >> 63);
    v49 = (v30 - 1) * strideInPixelsY + v13 * v46 + 1;
    v50 = v49 & ~(v49 >> 63);
    if (!offset)
    {
      goto LABEL_53;
    }

    goto LABEL_10;
  }

  if (strideInPixelsX)
  {
    v48 = (strideInPixelsX + ((v23 + v47) & ~((v23 + v47) >> 63)) - 1) / strideInPixelsX;
    if (strideInPixelsY)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v48 = 0;
    if (strideInPixelsY)
    {
LABEL_6:
      v50 = (strideInPixelsY + ((v30 + v13 * v46) & ~((v30 + v13 * v46) >> 63)) - 1) / strideInPixelsY;
      if (!offset)
      {
        goto LABEL_53;
      }

      goto LABEL_10;
    }
  }

  v50 = 0;
  if (!offset)
  {
    goto LABEL_53;
  }

LABEL_10:
  v51 = v44 & 3;
  v52 = (v12 + 1) >> 1;
  if (isBackwards)
  {
    v53 = 1;
  }

  else
  {
    v53 = strideInPixelsX;
  }

  if (isBackwards)
  {
    v54 = (v23 - 1) * strideInPixelsX + 1;
  }

  else
  {
    v54 = v23;
  }

  v55 = v12 + 1 + (v48 - 1) * v53;
  if ((v44 & 3u) > 1)
  {
    if (v51 == 2)
    {
      v52 = v54 + v52 - v55;
    }

    else
    {
      v52 = 0;
    }
  }

  else if ((v44 & 3) == 0)
  {
    v52 -= (((v44 & 4) == 0) - v54 + v55) >> 1;
  }

  v56 = v13 + 1;
  if (strideInPixelsX <= 1)
  {
    v57 = 1;
  }

  else
  {
    v57 = strideInPixelsX;
  }

  v58 = (v52 % v57) >> 63;
  v59 = v58 + v52 / v57;
  v60 = (v58 & v57) + v52 % v57;
  if (isBackwards)
  {
    v52 = v59;
  }

  else
  {
    v60 = 0;
  }

  if (kernelOffset)
  {
    kernelOffset->var0 = v60;
  }

  offset->var0 = v52;
  v61 = v56 >> 1;
  if (isBackwards)
  {
    v62 = 1;
  }

  else
  {
    v62 = strideInPixelsY;
  }

  if (isBackwards)
  {
    v63 = (v30 - 1) * strideInPixelsY + 1;
  }

  else
  {
    v63 = v30;
  }

  v64 = v56 + (v50 - 1) * v62;
  if ((v44 & 3u) > 1)
  {
    if (v51 == 2)
    {
      v61 = v63 + v61 - v64;
    }

    else
    {
      v61 = 0;
    }
  }

  else if ((v44 & 3) == 0)
  {
    v61 -= (((v44 & 8) == 0) - v63 + v64) >> 1;
  }

  if (strideInPixelsY <= 1)
  {
    v65 = 1;
  }

  else
  {
    v65 = strideInPixelsY;
  }

  v66 = (v61 % v65) >> 63;
  v67 = v66 + v61 / v65;
  v68 = (v66 & v65) + v61 % v65;
  v69 = !isBackwards;
  if (isBackwards)
  {
    v70 = v67;
  }

  else
  {
    v70 = v61;
  }

  if (v69)
  {
    v68 = 0;
  }

  if (kernelOffset)
  {
    kernelOffset->var1 = v68;
  }

  offset->var1 = v70;
  offset->var2 = 0;
LABEL_53:
  v71 = v79 - sourceFeatureChannelOffset;
  if (v79 < sourceFeatureChannelOffset)
  {
    v71 = 0;
  }

  if (v71 >= sourceFeatureChannelMaxCount)
  {
    v72 = sourceFeatureChannelMaxCount;
  }

  else
  {
    v72 = v71;
  }

  v74 = (*(objc_msgSend_objectAtIndexedSubscript_(images, v38, 0, v39, v40, v41, v42, v43) + *MEMORY[0x277CD7320] + 32) >> 59) & 7;
  v75 = MEMORY[0x277CD7220];

  return objc_msgSend_imageDescriptorWithChannelFormat_width_height_featureChannels_numberOfImages_usage_(v75, v73, v74, v48, v50, v72, v78, 19);
}

- (int16x4_t)sourcePositionOfTopLeftCornerOfFilterWindow
{
  v1.i64[1] = 1;
  v2.i64[1] = 1;
  v2.i32[0] = *(self + 200);
  v2.i32[1] = *(self + 208);
  v1.i32[0] = *(self + 232);
  v1.i32[1] = *(self + 240);
  v3.i64[0] = -1;
  v3.i64[1] = -1;
  v4 = vaddq_s32(vmaxq_s32(v2, xmmword_239D91640), v3);
  v3.i64[0] = 0x100000001;
  v3.i64[1] = 0x100000001;
  v5 = vmlaq_s32(v3, v4, vmaxq_s32(v1, xmmword_239D91640));
  v6 = *(self + 88);
  *v6.i8 = vmovn_s64(v6);
  v6.i32[2] = 0;
  return vmovn_s32(vsubq_s32(v6, vshrq_n_u32(v5, 1uLL)));
}

- (BOOL)pluginSupportsBatchEncode
{
  v9 = objc_msgSend_plugin(self, a2, v2, v3, v4, v5, v6, v7);
  if (v9)
  {
    objc_msgSend_plugin(self, v10, v11, v12, v13, v14, v15, v16);
    LOBYTE(v9) = objc_opt_respondsToSelector();
  }

  return v9 & 1;
}

- (BOOL)setPlugin:(id)plugin
{
  if (!plugin || (v5 = *(&self->super.super.isa + *MEMORY[0x277CD7350]), v6 = objc_opt_class(), (v7 = (*(*v5 + 120))(v5, v6)) != 0))
  {
    pluginCopy = plugin;

    self->_plugin = plugin;
    self->_pluginSupportsBatchEncode = objc_msgSend_pluginSupportsBatchEncode(self, v9, v10, v11, v12, v13, v14, v15);
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (void)setOffset:(MPSOffset *)offset
{
  z = offset->z;
  *&self->_offset.x = *&offset->x;
  self->_offset.z = z;
}

- (MTLRegion)clipRect
{
  v3 = *&self[2].size.height;
  *&retstr->origin.x = *&self[2].origin.z;
  *&retstr->origin.z = v3;
  *&retstr->size.height = *&self[3].origin.x;
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