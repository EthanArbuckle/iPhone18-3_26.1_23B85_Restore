@interface MPSCNNBinaryKernel
- (BOOL)setPlugin:(id)a3;
- (MPSCNNBinaryKernel)init;
- (MPSCNNBinaryKernel)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSCNNBinaryKernel)initWithDevice:(id)device;
- (MPSImageDescriptor)destinationImageDescriptorForSourceImages:(NSArray *)sourceImages sourceStates:(NSArray *)sourceStates;
- (MPSRegion)primarySourceRegionForDestinationSize:(SEL)a3;
- (MPSRegion)secondarySourceRegionForDestinationSize:(SEL)a3;
- (MPSState)resultStateForPrimaryImage:(MPSImage *)primaryImage secondaryImage:(MPSImage *)secondaryImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImage *)destinationImage;
- (MPSState)temporaryResultStateForCommandBuffer:(id)commandBuffer primaryImage:(MPSImage *)primaryImage secondaryImage:(MPSImage *)secondaryImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImage *)destinationImage;
- (MPSStateBatch)resultStateBatchForPrimaryImage:(MPSImageBatch *)primaryImage secondaryImage:(MPSImageBatch *)secondaryImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImageBatch *)destinationImage;
- (MPSStateBatch)temporaryResultStateBatchForCommandBuffer:(id)commandBuffer primaryImage:(MPSImageBatch *)primaryImage secondaryImage:(MPSImageBatch *)secondaryImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImageBatch *)destinationImage;
- (MTLRegion)clipRect;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)debugDescription;
- (id)destinationImageDescriptorForSourceImages:(id)a3 sourceStates:(id)a4 paddingMethod:(unint64_t)a5 primaryOffset:(id *)a6 secondaryOffset:(id *)a7 kernelOffset:(id *)a8;
- (id)encodeBatchToCommandEncoder:(id)a3 commandBuffer:(id)a4 primaryImages:(id)a5 secondaryImages:(id)a6 destinationStates:(id *)a7 destinationStateIsTemporary:(BOOL)a8;
- (id)encodeBatchToCommandEncoder:(id)a3 commandBuffer:(id)a4 primaryImages:(id)a5 secondaryImages:(id)a6 inStates:(id)a7;
- (id)encodeToCommandEncoder:(id)a3 commandBuffer:(id)a4 primaryImage:(id)a5 secondaryImage:(id)a6 destinationState:(id *)a7 destinationStateIsTemporary:(BOOL)a8;
- (id)encodeToCommandEncoder:(id)a3 commandBuffer:(id)a4 primaryImage:(id)a5 secondaryImage:(id)a6 inState:(id)a7;
- (void)copyToBinaryGradientState:(id)a3 primaryImage:(id)a4 secondaryImage:(id)a5 sourceStates:(id)a6 destinationImage:(id)a7;
- (void)dealloc;
- (void)encodeBatchToCommandEncoder:(id)a3 commandBuffer:(id)a4 primaryImages:(id)a5 secondaryImages:(id)a6 inStates:(id)a7 destinationImages:(id)a8;
- (void)encodeInternalBatchToCommandEncoder:(id)a3 commandBuffer:(id)a4 primaryImages:(id)a5 secondaryImages:(id)a6 inStates:(id)a7 destinationImages:(id)a8 clipRect:(id *)a9;
- (void)encodeInternalToCommandEncoder:(id)a3 commandBuffer:(id)a4 primaryImage:(id)a5 secondaryImage:(id)a6 inState:(id)a7 destinationImage:(id)a8 subBatchIndex:(unint64_t)a9 batchSize:(unint64_t)a10 clipRect:(id *)a11;
- (void)encodeToCommandEncoder:(id)a3 commandBuffer:(id)a4 primaryImage:(id)a5 secondaryImage:(id)a6 inState:(id)a7 destinationImage:(id)a8 subBatchIndex:(unint64_t)a9 batchSize:(unint64_t)a10;
- (void)encodeWithCoder:(id)a3;
- (void)setClipRect:(MTLRegion *)clipRect;
- (void)setDestinationFeatureChannelOffset:(NSUInteger)destinationFeatureChannelOffset;
- (void)setPrimaryOffset:(MPSOffset *)primaryOffset;
- (void)setPrimarySourceFeatureChannelMaxCount:(NSUInteger)primarySourceFeatureChannelMaxCount;
- (void)setPrimarySourceFeatureChannelOffset:(NSUInteger)primarySourceFeatureChannelOffset;
- (void)setSecondaryOffset:(MPSOffset *)secondaryOffset;
- (void)setSecondarySourceFeatureChannelMaxCount:(NSUInteger)secondarySourceFeatureChannelMaxCount;
- (void)setSecondarySourceFeatureChannelOffset:(NSUInteger)secondarySourceFeatureChannelOffset;
@end

@implementation MPSCNNBinaryKernel

- (MPSCNNBinaryKernel)init
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

- (MPSCNNBinaryKernel)initWithDevice:(id)device
{
  v35.receiver = self;
  v35.super_class = MPSCNNBinaryKernel;
  v3 = [(MPSKernel *)&v35 initWithDevice:device];
  v11 = v3;
  if (v3)
  {
    *(v3 + 12) = 0;
    *(v3 + 13) = 0;
    *(v3 + 11) = 0;
    *(v3 + 15) = 0;
    *(v3 + 16) = 0;
    *(v3 + 14) = 0;
    v13 = *(MEMORY[0x277CD7200] + 16);
    v12 = *(MEMORY[0x277CD7200] + 32);
    *(v3 + 136) = *MEMORY[0x277CD7200];
    *(v3 + 152) = v13;
    *(v3 + 168) = v12;
    *(v3 + 25) = 0;
    *(v3 + 24) = 0;
    *(v3 + 23) = 0;
    *(v3 + 27) = -1;
    *(v3 + 26) = -1;
    *(v3 + 44) = 0;
    *(v3 + 45) = 0;
    *(v3 + 92) = 1;
    *(v3 + 31) = 1;
    *(v3 + 30) = 1;
    *(v3 + 32) = 1;
    *(v3 + 33) = 1;
    *(v3 + 35) = 1;
    *(v3 + 34) = 1;
    *(v3 + 37) = 1;
    *(v3 + 36) = 1;
    *(v3 + 39) = 1;
    *(v3 + 38) = 1;
    *(v3 + 41) = 1;
    *(v3 + 40) = 1;
    v3[336] = 0;
    v3[337] = 0;
    *(v3 + 47) = 0;
    *(v3 + 49) = 0;
    *(v3 + 48) = 0;
    *(v3 + 28) = 0;
    v3[232] = 0;
    *(v3 + 51) = 0;
    v14 = objc_msgSend_defaultAllocator(MEMORY[0x277CD72A8], v4, v5, v6, v7, v8, v9, v10);
    objc_msgSend_setDestinationImageAllocator_(v11, v15, v14, v16, v17, v18, v19, v20);
    v27 = objc_msgSend_paddingWithMethod_(MPSNNDefaultPadding, v21, 16, v22, v23, v24, v25, v26);
    objc_msgSend_setPadding_(v11, v28, v27, v29, v30, v31, v32, v33);
  }

  return v11;
}

- (MPSCNNBinaryKernel)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v223.receiver = self;
  v223.super_class = MPSCNNBinaryKernel;
  v5 = [(MPSKernel *)&v223 initWithCoder:aDecoder device:device];
  v12 = v5;
  if (!v5)
  {
    return v12;
  }

  if ((*(&v5->super.super.isa + *MEMORY[0x277CD7358]) & 0xFF00) == 0x100)
  {
    v5->_primaryOffset.x = objc_msgSend_decodeInt64ForKey_(aDecoder, v6, @"MPSCNNBinaryKernel.primaryOffset.x", v7, v8, v9, v10, v11);
    v12->_primaryOffset.y = objc_msgSend_decodeInt64ForKey_(aDecoder, v13, @"MPSCNNBinaryKernel.primaryOffset.y", v14, v15, v16, v17, v18);
    v12->_primaryOffset.z = objc_msgSend_decodeInt64ForKey_(aDecoder, v19, @"MPSCNNBinaryKernel.primaryOffset.z", v20, v21, v22, v23, v24);
    v12->_secondaryOffset.x = objc_msgSend_decodeInt64ForKey_(aDecoder, v25, @"MPSCNNBinaryKernel.secondaryOffset.x", v26, v27, v28, v29, v30);
    v12->_secondaryOffset.y = objc_msgSend_decodeInt64ForKey_(aDecoder, v31, @"MPSCNNBinaryKernel.secondaryOffset.y", v32, v33, v34, v35, v36);
    v12->_secondaryOffset.z = objc_msgSend_decodeInt64ForKey_(aDecoder, v37, @"MPSCNNBinaryKernel.secondaryOffset.z", v38, v39, v40, v41, v42);
    v12->_clipRect.origin.x = objc_msgSend_decodeInt64ForKey_(aDecoder, v43, @"MPSCNNBinaryKernel.clipRect.origin.x", v44, v45, v46, v47, v48);
    v12->_clipRect.origin.y = objc_msgSend_decodeInt64ForKey_(aDecoder, v49, @"MPSCNNBinaryKernel.clipRect.origin.y", v50, v51, v52, v53, v54);
    v12->_clipRect.origin.z = objc_msgSend_decodeInt64ForKey_(aDecoder, v55, @"MPSCNNBinaryKernel.clipRect.origin.z", v56, v57, v58, v59, v60);
    v12->_clipRect.size.width = objc_msgSend_decodeInt64ForKey_(aDecoder, v61, @"MPSCNNBinaryKernel.clipRect.size.width", v62, v63, v64, v65, v66);
    v12->_clipRect.size.height = objc_msgSend_decodeInt64ForKey_(aDecoder, v67, @"MPSCNNBinaryKernel.clipRect.size.height", v68, v69, v70, v71, v72);
    v12->_clipRect.size.depth = objc_msgSend_decodeInt64ForKey_(aDecoder, v73, @"MPSCNNBinaryKernel.clipRect.size.depth", v74, v75, v76, v77, v78);
    v12->_destinationFeatureChannelOffset = objc_msgSend_decodeInt64ForKey_(aDecoder, v79, @"MPSCNNBinaryKernel.destinationFeatureChannelOffset", v80, v81, v82, v83, v84);
    v12->_primarySourceFeatureChannelOffset = objc_msgSend_decodeInt64ForKey_(aDecoder, v85, @"MPSCNNBinaryKernel.sourceFeatureChannelOffset1", v86, v87, v88, v89, v90);
    v12->_secondarySourceFeatureChannelOffset = objc_msgSend_decodeInt64ForKey_(aDecoder, v91, @"MPSCNNBinaryKernel.sourceFeatureChannelOffset2", v92, v93, v94, v95, v96);
    v12->_secondarySourceFeatureChannelMaxCount = -1;
    v12->_primarySourceFeatureChannelMaxCount = -1;
    if (objc_msgSend_containsValueForKey_(aDecoder, v97, @"MPSCNNBinaryKernel.sourceFeatureChannelMaxCount1", v98, v99, v100, v101, v102))
    {
      v12->_primarySourceFeatureChannelMaxCount = objc_msgSend_decodeInt64ForKey_(aDecoder, v103, @"MPSCNNBinaryKernel.sourceFeatureChannelMaxCount1", v104, v105, v106, v107, v108);
    }

    if (objc_msgSend_containsValueForKey_(aDecoder, v103, @"MPSCNNBinaryKernel.sourceFeatureChannelMaxCount2", v104, v105, v106, v107, v108))
    {
      v12->_secondarySourceFeatureChannelMaxCount = objc_msgSend_decodeInt64ForKey_(aDecoder, v109, @"MPSCNNBinaryKernel.sourceFeatureChannelMaxCount2", v110, v111, v112, v113, v114);
    }

    v12->_primaryEdgeMode = objc_msgSend_decodeInt64ForKey_(aDecoder, v109, @"MPSCNNBinaryKernel.primaryEdgeMode", v110, v111, v112, v113, v114);
    v12->_secondaryEdgeMode = objc_msgSend_decodeInt64ForKey_(aDecoder, v115, @"MPSCNNBinaryKernel.secondaryEdgeMode", v116, v117, v118, v119, v120);
    v12->_checkFlags = objc_msgSend_decodeInt64ForKey_(aDecoder, v121, @"MPSCNNBinaryKernel.checkFlags", v122, v123, v124, v125, v126);
    v12->_primaryKernelWidth = objc_msgSend_decodeInt64ForKey_(aDecoder, v127, @"MPSCNNBinaryKernel.kernelWidth", v128, v129, v130, v131, v132);
    v12->_primaryKernelHeight = objc_msgSend_decodeInt64ForKey_(aDecoder, v133, @"MPSCNNBinaryKernel.kernelHeight", v134, v135, v136, v137, v138);
    v12->_secondaryKernelWidth = objc_msgSend_decodeInt64ForKey_(aDecoder, v139, @"MPSCNNBinaryKernel.secondaryKernelWidth", v140, v141, v142, v143, v144);
    v12->_secondaryKernelHeight = objc_msgSend_decodeInt64ForKey_(aDecoder, v145, @"MPSCNNBinaryKernel.secondaryKernelHeight", v146, v147, v148, v149, v150);
    v12->_primaryStrideInPixelsX = objc_msgSend_decodeInt64ForKey_(aDecoder, v151, @"MPSCNNBinaryKernel.primaryStride.x", v152, v153, v154, v155, v156);
    v12->_primaryStrideInPixelsY = objc_msgSend_decodeInt64ForKey_(aDecoder, v157, @"MPSCNNBinaryKernel.primaryStride.y", v158, v159, v160, v161, v162);
    v12->_secondaryStrideInPixelsX = objc_msgSend_decodeInt64ForKey_(aDecoder, v163, @"MPSCNNBinaryKernel.secondaryStride.x", v164, v165, v166, v167, v168);
    v12->_secondaryStrideInPixelsY = objc_msgSend_decodeInt64ForKey_(aDecoder, v169, @"MPSCNNBinaryKernel.secondaryStride.y", v170, v171, v172, v173, v174);
    v12->_primaryDilationRateX = objc_msgSend_decodeInt64ForKey_(aDecoder, v175, @"MPSCNNBinaryKernel.dilationRate.x", v176, v177, v178, v179, v180);
    v12->_primaryDilationRateY = objc_msgSend_decodeInt64ForKey_(aDecoder, v181, @"MPSCNNBinaryKernel.dilationRate.y", v182, v183, v184, v185, v186);
    v12->_secondaryDilationRateX = objc_msgSend_decodeInt64ForKey_(aDecoder, v187, @"MPSCNNBinaryKernel.secondaryDilationRate.x", v188, v189, v190, v191, v192);
    v12->_secondaryDilationRateY = objc_msgSend_decodeInt64ForKey_(aDecoder, v193, @"MPSCNNBinaryKernel.secondaryDilationRate.y", v194, v195, v196, v197, v198);
    v12->_isBackwards = objc_msgSend_decodeBoolForKey_(aDecoder, v199, @"MPSCNNBinaryKernel.isBackward", v200, v201, v202, v203, v204);
    v12->_supportsBroadcasting = objc_msgSend_decodeBoolForKey_(aDecoder, v205, @"MPSCNNBinaryKernel.supportsBroadcasting", v206, v207, v208, v209, v210);
    v12->_encode = 0;
    v12->_encodeData = 0;
    v12->_plugin = 0;
    v215 = sub_239D0D098(aDecoder, @"MPSCNNBinaryKernel.data", @"MPSCNNBinaryKernel.padding", &unk_284D166E0, v211, v212, v213, v214);
    if (v215)
    {
      v12->_padding = v215;
      v220 = sub_239D0D098(aDecoder, @"MPSCNNBinaryKernel.data2", @"MPSCNNBinaryKernel.allocator", &unk_284D1B458, v216, v217, v218, v219);
      if (v220)
      {
        v12->_destinationImageAllocator = v220;
        return v12;
      }
    }
  }

  else if ((*(&v5->super.super.isa + *MEMORY[0x277CD7358]) & 0xFFFF0000) != 0x10000 && MTLReportFailureTypeEnabled())
  {
    v222 = objc_opt_class();
    NSStringFromClass(v222);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  *(&self->super.super.isa + *MEMORY[0x277CD7358] + 1) = 1;
  v219.receiver = self;
  v219.super_class = MPSCNNBinaryKernel;
  [(MPSKernel *)&v219 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(a3, v5, self->_primaryOffset.x, @"MPSCNNBinaryKernel.primaryOffset.x", v6, v7, v8, v9);
  objc_msgSend_encodeInt64_forKey_(a3, v10, self->_primaryOffset.y, @"MPSCNNBinaryKernel.primaryOffset.y", v11, v12, v13, v14);
  objc_msgSend_encodeInt64_forKey_(a3, v15, self->_primaryOffset.z, @"MPSCNNBinaryKernel.primaryOffset.z", v16, v17, v18, v19);
  objc_msgSend_encodeInt64_forKey_(a3, v20, self->_secondaryOffset.x, @"MPSCNNBinaryKernel.secondaryOffset.x", v21, v22, v23, v24);
  objc_msgSend_encodeInt64_forKey_(a3, v25, self->_secondaryOffset.y, @"MPSCNNBinaryKernel.secondaryOffset.y", v26, v27, v28, v29);
  objc_msgSend_encodeInt64_forKey_(a3, v30, self->_secondaryOffset.z, @"MPSCNNBinaryKernel.secondaryOffset.z", v31, v32, v33, v34);
  objc_msgSend_encodeInt64_forKey_(a3, v35, self->_clipRect.origin.x, @"MPSCNNBinaryKernel.clipRect.origin.x", v36, v37, v38, v39);
  objc_msgSend_encodeInt64_forKey_(a3, v40, self->_clipRect.origin.y, @"MPSCNNBinaryKernel.clipRect.origin.y", v41, v42, v43, v44);
  objc_msgSend_encodeInt64_forKey_(a3, v45, self->_clipRect.origin.z, @"MPSCNNBinaryKernel.clipRect.origin.z", v46, v47, v48, v49);
  objc_msgSend_encodeInt64_forKey_(a3, v50, self->_clipRect.size.width, @"MPSCNNBinaryKernel.clipRect.size.width", v51, v52, v53, v54);
  objc_msgSend_encodeInt64_forKey_(a3, v55, self->_clipRect.size.height, @"MPSCNNBinaryKernel.clipRect.size.height", v56, v57, v58, v59);
  objc_msgSend_encodeInt64_forKey_(a3, v60, self->_clipRect.size.depth, @"MPSCNNBinaryKernel.clipRect.size.depth", v61, v62, v63, v64);
  objc_msgSend_encodeInt64_forKey_(a3, v65, self->_destinationFeatureChannelOffset, @"MPSCNNBinaryKernel.destinationFeatureChannelOffset", v66, v67, v68, v69);
  objc_msgSend_encodeInt64_forKey_(a3, v70, self->_primarySourceFeatureChannelOffset, @"MPSCNNBinaryKernel.sourceFeatureChannelOffset1", v71, v72, v73, v74);
  objc_msgSend_encodeInt64_forKey_(a3, v75, self->_secondarySourceFeatureChannelOffset, @"MPSCNNBinaryKernel.sourceFeatureChannelOffset2", v76, v77, v78, v79);
  objc_msgSend_encodeInt64_forKey_(a3, v80, self->_primarySourceFeatureChannelMaxCount, @"MPSCNNBinaryKernel.sourceFeatureChannelMaxCount1", v81, v82, v83, v84);
  objc_msgSend_encodeInt64_forKey_(a3, v85, self->_secondarySourceFeatureChannelMaxCount, @"MPSCNNBinaryKernel.sourceFeatureChannelMaxCount2", v86, v87, v88, v89);
  objc_msgSend_encodeInt64_forKey_(a3, v90, self->_primaryEdgeMode, @"MPSCNNBinaryKernel.primaryEdgeMode", v91, v92, v93, v94);
  objc_msgSend_encodeInt64_forKey_(a3, v95, self->_secondaryEdgeMode, @"MPSCNNBinaryKernel.secondaryEdgeMode", v96, v97, v98, v99);
  objc_msgSend_encodeInt64_forKey_(a3, v100, self->_checkFlags, @"MPSCNNBinaryKernel.checkFlags", v101, v102, v103, v104);
  objc_msgSend_encodeInt64_forKey_(a3, v105, self->_primaryKernelWidth, @"MPSCNNBinaryKernel.kernelWidth", v106, v107, v108, v109);
  objc_msgSend_encodeInt64_forKey_(a3, v110, self->_primaryKernelHeight, @"MPSCNNBinaryKernel.kernelHeight", v111, v112, v113, v114);
  objc_msgSend_encodeInt64_forKey_(a3, v115, self->_secondaryKernelWidth, @"MPSCNNBinaryKernel.secondaryKernelWidth", v116, v117, v118, v119);
  objc_msgSend_encodeInt64_forKey_(a3, v120, self->_secondaryKernelHeight, @"MPSCNNBinaryKernel.secondaryKernelHeight", v121, v122, v123, v124);
  objc_msgSend_encodeInt64_forKey_(a3, v125, self->_primaryStrideInPixelsX, @"MPSCNNBinaryKernel.primaryStride.x", v126, v127, v128, v129);
  objc_msgSend_encodeInt64_forKey_(a3, v130, self->_primaryStrideInPixelsY, @"MPSCNNBinaryKernel.primaryStride.y", v131, v132, v133, v134);
  objc_msgSend_encodeInt64_forKey_(a3, v135, self->_secondaryStrideInPixelsX, @"MPSCNNBinaryKernel.secondaryStride.x", v136, v137, v138, v139);
  objc_msgSend_encodeInt64_forKey_(a3, v140, self->_secondaryStrideInPixelsY, @"MPSCNNBinaryKernel.secondaryStride.y", v141, v142, v143, v144);
  objc_msgSend_encodeInt64_forKey_(a3, v145, self->_primaryDilationRateX, @"MPSCNNBinaryKernel.dilationRate.x", v146, v147, v148, v149);
  objc_msgSend_encodeInt64_forKey_(a3, v150, self->_primaryDilationRateY, @"MPSCNNBinaryKernel.dilationRate.y", v151, v152, v153, v154);
  objc_msgSend_encodeInt64_forKey_(a3, v155, self->_secondaryDilationRateX, @"MPSCNNBinaryKernel.secondaryDilationRate.x", v156, v157, v158, v159);
  objc_msgSend_encodeInt64_forKey_(a3, v160, self->_secondaryDilationRateY, @"MPSCNNBinaryKernel.secondaryDilationRate.y", v161, v162, v163, v164);
  objc_msgSend_encodeBool_forKey_(a3, v165, self->_isBackwards, @"MPSCNNBinaryKernel.isBackward", v166, v167, v168, v169);
  objc_msgSend_encodeBool_forKey_(a3, v170, self->_supportsBroadcasting, @"MPSCNNBinaryKernel.supportsBroadcasting", v171, v172, v173, v174);
  padding = self->_padding;
  v176 = objc_autoreleasePoolPush();
  v177 = objc_opt_class();
  if (v177)
  {
    v178 = NSStringFromClass(v177);
    v185 = objc_msgSend_cStringUsingEncoding_(v178, v179, 1, v180, v181, v182, v183, v184);
    if (v185)
    {
      v186 = v185;
      v187 = strlen(v185);
      if (v187)
      {
        objc_msgSend_encodeBytes_length_forKey_(a3, v188, v186, v187 + 1, @"MPSCNNBinaryKernel.data", v189, v190, v191);
        objc_msgSend_encodeObject_forKey_(a3, v192, padding, @"MPSCNNBinaryKernel.padding", v193, v194, v195, v196);
      }
    }
  }

  objc_autoreleasePoolPop(v176);
  destinationImageAllocator = self->_destinationImageAllocator;
  v198 = objc_autoreleasePoolPush();
  v199 = objc_opt_class();
  if (v199)
  {
    v200 = NSStringFromClass(v199);
    v207 = objc_msgSend_cStringUsingEncoding_(v200, v201, 1, v202, v203, v204, v205, v206);
    if (v207)
    {
      v208 = v207;
      v209 = strlen(v207);
      if (v209)
      {
        objc_msgSend_encodeBytes_length_forKey_(a3, v210, v208, v209 + 1, @"MPSCNNBinaryKernel.data2", v211, v212, v213);
        objc_msgSend_encodeObject_forKey_(a3, v214, destinationImageAllocator, @"MPSCNNBinaryKernel.allocator", v215, v216, v217, v218);
      }
    }
  }

  objc_autoreleasePoolPop(v198);
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v13.receiver = self;
  v13.super_class = MPSCNNBinaryKernel;
  result = [(MPSKernel *)&v13 copyWithZone:a3 device:a4];
  if (result)
  {
    z = self->_primaryOffset.z;
    *(result + 88) = *&self->_primaryOffset.x;
    *(result + 13) = z;
    v7 = self->_secondaryOffset.z;
    *(result + 7) = *&self->_secondaryOffset.x;
    *(result + 16) = v7;
    v9 = *&self->_clipRect.origin.z;
    v8 = *&self->_clipRect.size.height;
    *(result + 136) = *&self->_clipRect.origin.x;
    *(result + 152) = v9;
    *(result + 168) = v8;
    *(result + 23) = self->_destinationFeatureChannelOffset;
    *(result + 24) = self->_primarySourceFeatureChannelOffset;
    *(result + 25) = self->_secondarySourceFeatureChannelOffset;
    *(result + 26) = self->_primarySourceFeatureChannelMaxCount;
    *(result + 27) = self->_secondarySourceFeatureChannelMaxCount;
    *(result + 31) = self->_primaryKernelHeight;
    *(result + 30) = self->_primaryKernelWidth;
    *(result + 33) = self->_secondaryKernelHeight;
    *(result + 32) = self->_secondaryKernelWidth;
    *(result + 34) = self->_primaryStrideInPixelsX;
    *(result + 35) = self->_primaryStrideInPixelsY;
    *(result + 36) = self->_secondaryStrideInPixelsX;
    *(result + 37) = self->_secondaryStrideInPixelsY;
    *(result + 38) = self->_primaryDilationRateX;
    *(result + 39) = self->_primaryDilationRateY;
    *(result + 40) = self->_secondaryDilationRateX;
    *(result + 41) = self->_secondaryDilationRateY;
    *(result + 336) = self->_isBackwards;
    *(result + 337) = self->_supportsBroadcasting;
    v10 = result;
    *(result + 43) = self->_padding;
    v10->_primaryEdgeMode = self->_primaryEdgeMode;
    v10->_secondaryEdgeMode = self->_secondaryEdgeMode;
    v10->_checkFlags = self->_checkFlags;
    v10->_encode = self->_encode;
    v10->_batchEncode = self->_batchEncode;
    encodeData = self->_encodeData;
    if (encodeData == self)
    {
      encodeData = v10;
    }

    v10->_encodeData = encodeData;
    v10->_plugin = 0;
    v12 = self->_destinationImageAllocator;
    result = v10;
    v10->_destinationImageAllocator = v12;
  }

  return result;
}

- (id)debugDescription
{
  if (!dladdr(self->_encode, &v69))
  {
    v69.dli_sname = "<NULL>";
  }

  v67 = MEMORY[0x277CCACA8];
  v68.receiver = self;
  v68.super_class = MPSCNNBinaryKernel;
  v3 = [(MPSKernel *)&v68 debugDescription];
  x = self->_primaryOffset.x;
  y = self->_primaryOffset.y;
  primarySourceFeatureChannelOffset = self->_primarySourceFeatureChannelOffset;
  z = self->_primaryOffset.z;
  primarySourceFeatureChannelMaxCount = self->_primarySourceFeatureChannelMaxCount;
  v9 = self->_secondaryOffset.x;
  v10 = self->_secondaryOffset.y;
  secondarySourceFeatureChannelOffset = self->_secondarySourceFeatureChannelOffset;
  secondarySourceFeatureChannelMaxCount = self->_secondarySourceFeatureChannelMaxCount;
  destinationFeatureChannelOffset = self->_destinationFeatureChannelOffset;
  v14 = self->_secondaryOffset.z;
  primaryEdgeMode = self->_primaryEdgeMode;
  secondaryEdgeMode = self->_secondaryEdgeMode;
  primaryKernelWidth = self->_primaryKernelWidth;
  primaryKernelHeight = self->_primaryKernelHeight;
  secondaryKernelWidth = self->_secondaryKernelWidth;
  secondaryKernelHeight = self->_secondaryKernelHeight;
  primaryStrideInPixelsX = self->_primaryStrideInPixelsX;
  secondaryStrideInPixelsX = self->_secondaryStrideInPixelsX;
  primaryDilationRateX = self->_primaryDilationRateX;
  primaryDilationRateY = self->_primaryDilationRateY;
  secondaryDilationRateX = self->_secondaryDilationRateX;
  secondaryDilationRateY = self->_secondaryDilationRateY;
  isBackwards = self->_isBackwards;
  supportsBroadcasting = self->_supportsBroadcasting;
  padding = self->_padding;
  v26 = self->_clipRect.origin.x;
  v66 = self->_clipRect.origin.y;
  v64 = self->_clipRect.origin.z;
  width = self->_clipRect.size.width;
  height = self->_clipRect.size.height;
  depth = self->_clipRect.size.depth;
  v27 = (*(&self->super.super.isa + *MEMORY[0x277CD7350]))[2];
  dli_sname = v69.dli_sname;
  if (padding)
  {
    v46 = primaryDilationRateX;
    v29 = v3;
    v56 = destinationFeatureChannelOffset;
    v30 = x;
    v45 = y;
    v48 = v69.dli_sname;
    v31 = z;
    v52 = secondaryKernelHeight;
    v53 = primaryEdgeMode;
    v32 = primarySourceFeatureChannelOffset;
    v33 = primarySourceFeatureChannelMaxCount;
    v55 = primaryKernelWidth;
    v51 = v9;
    v54 = secondaryKernelWidth;
    v34 = v10;
    v49 = primaryStrideInPixelsX;
    v35 = secondarySourceFeatureChannelOffset;
    v47 = secondaryStrideInPixelsX;
    v36 = secondarySourceFeatureChannelMaxCount;
    v57 = v14;
    v37 = secondaryEdgeMode;
    v50 = v27;
    v44 = isBackwards;
    v38 = objc_msgSend_debugDescription(padding, primarySourceFeatureChannelOffset, primarySourceFeatureChannelMaxCount, v9, v10, secondarySourceFeatureChannelOffset, secondarySourceFeatureChannelMaxCount, v14);
    isBackwards = v44;
    secondaryEdgeMode = v37;
    secondarySourceFeatureChannelMaxCount = v36;
    secondarySourceFeatureChannelOffset = v35;
    primaryStrideInPixelsX = v49;
    v27 = v50;
    v10 = v34;
    secondaryKernelWidth = v54;
    primaryKernelWidth = v55;
    primarySourceFeatureChannelMaxCount = v33;
    v9 = v51;
    secondaryKernelHeight = v52;
    primarySourceFeatureChannelOffset = v32;
    primaryEdgeMode = v53;
    z = v31;
    secondaryStrideInPixelsX = v47;
    dli_sname = v48;
    x = v30;
    destinationFeatureChannelOffset = v56;
    v14 = v57;
    v3 = v29;
    y = v45;
    primaryDilationRateX = v46;
  }

  else
  {
    v38 = @"<nil>";
  }

  v39 = "NO";
  if (supportsBroadcasting)
  {
    v40 = "YES";
  }

  else
  {
    v40 = "NO";
  }

  if (isBackwards)
  {
    v39 = "YES";
  }

  v41 = "MPSImageEdgeModeZero";
  if (secondaryEdgeMode == 1)
  {
    v42 = "MPSImageEdgeModeClamp";
  }

  else
  {
    v42 = "MPSImageEdgeModeZero";
  }

  if (primaryEdgeMode == 1)
  {
    v41 = "MPSImageEdgeModeClamp";
  }

  return objc_msgSend_stringWithFormat_(v67, primarySourceFeatureChannelOffset, @"%@\n\tprimaryOffset:        {%ld,%ld,%ld}  feature channel offset {loc: %ld  len: %ld}\n\tsecondaryOffset:        {%ld,%ld,%ld}  feature channel offset {loc: %ld len: %ld}\n\tclip:          origin{%lu,%lu,%lu} size{%lu,%lu,%lu} destChannelOffset{%ld} \n\tdevice:        %p\n\tprimary edge mode:     %s\n\tsecondary edge mode:     %s\n\tEncode Proc:   %s\n\tKernel Size:   {%lu x %lu}\n\t2nd KernelSize: {%lu x %lu}\n\tprimary stride:      {%lu x %lu}\n\tsecondary stride:      {%lu x %lu}\n\tdilation rate:        {%lu x %lu}\n\t2nd dilation rate:    {%lu x %lu}\n\tbackwards?  %s\n\tbroadcasting?  %s\n\tpadding:       %@", v9, v10, secondarySourceFeatureChannelOffset, secondarySourceFeatureChannelMaxCount, v14, v3, x, y, z, primarySourceFeatureChannelOffset, primarySourceFeatureChannelMaxCount, v9, v10, v14, secondarySourceFeatureChannelOffset, secondarySourceFeatureChannelMaxCount, v26, v66, v64, width, height, depth, destinationFeatureChannelOffset, v27, v41, v42, dli_sname, primaryKernelWidth, primaryKernelHeight, secondaryKernelWidth, secondaryKernelHeight, primaryStrideInPixelsX, primaryStrideInPixelsX, secondaryStrideInPixelsX, secondaryStrideInPixelsX, primaryDilationRateX, primaryDilationRateY, secondaryDilationRateX, secondaryDilationRateY, v39, v40, v38);
}

- (MPSRegion)primarySourceRegionForDestinationSize:(SEL)a3
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
  *&retstr->origin.x = vcvtq_f64_s64(*&self->_primaryOffset.x);
  retstr->origin.z = self->_primaryOffset.z;
  *&retstr->size.width = vcvtq_f64_u64(*(&v11[1] + 8));
  retstr->size.depth = v11[2].u64[1];
  return result;
}

- (MPSRegion)secondarySourceRegionForDestinationSize:(SEL)a3
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
  *&retstr->origin.x = vcvtq_f64_s64(*&self->_primaryOffset.x);
  retstr->origin.z = self->_primaryOffset.z;
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
    v8 = self;
    if (v7)
    {
      MTLReportFailure();
      v8 = self;
      v6 = destinationFeatureChannelOffset;
    }

    v8->_destinationFeatureChannelOffset = v6;
  }

  else
  {
    self->_destinationFeatureChannelOffset = destinationFeatureChannelOffset;
  }
}

- (void)setPrimarySourceFeatureChannelOffset:(NSUInteger)primarySourceFeatureChannelOffset
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) != 0 || (primarySourceFeatureChannelOffset & 3) == 0 || (self->_checkFlags & 0x20000) != 0)
  {
    self->_primarySourceFeatureChannelOffset = primarySourceFeatureChannelOffset;
  }

  else
  {
    v3 = MTLReportFailureTypeEnabled();
    v5 = primarySourceFeatureChannelOffset;
    v4 = self;
    if (v3)
    {
      MTLReportFailure();
      v5 = primarySourceFeatureChannelOffset;
      v4 = self;
    }

    v4->_primarySourceFeatureChannelOffset = v5;
  }
}

- (void)setSecondarySourceFeatureChannelOffset:(NSUInteger)secondarySourceFeatureChannelOffset
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) != 0 || (secondarySourceFeatureChannelOffset & 3) == 0 || (self->_checkFlags & 0x20000) != 0)
  {
    self->_secondarySourceFeatureChannelOffset = secondarySourceFeatureChannelOffset;
  }

  else
  {
    v3 = MTLReportFailureTypeEnabled();
    v5 = secondarySourceFeatureChannelOffset;
    v4 = self;
    if (v3)
    {
      MTLReportFailure();
      v5 = secondarySourceFeatureChannelOffset;
      v4 = self;
    }

    v4->_secondarySourceFeatureChannelOffset = v5;
  }
}

- (void)setPrimarySourceFeatureChannelMaxCount:(NSUInteger)primarySourceFeatureChannelMaxCount
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) != 0 || (self->_checkFlags & 0x20000) != 0 || primarySourceFeatureChannelMaxCount == -1 || (primarySourceFeatureChannelMaxCount & 3) == 0)
  {
    self->_primarySourceFeatureChannelMaxCount = primarySourceFeatureChannelMaxCount;
  }

  else
  {
    v3 = MTLReportFailureTypeEnabled();
    v5 = primarySourceFeatureChannelMaxCount;
    v4 = self;
    if (v3)
    {
      MTLReportFailure();
      v5 = primarySourceFeatureChannelMaxCount;
      v4 = self;
    }

    v4->_primarySourceFeatureChannelMaxCount = v5;
  }
}

- (void)setSecondarySourceFeatureChannelMaxCount:(NSUInteger)secondarySourceFeatureChannelMaxCount
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) != 0 || (self->_checkFlags & 0x20000) != 0 || secondarySourceFeatureChannelMaxCount == -1 || (secondarySourceFeatureChannelMaxCount & 3) == 0)
  {
    self->_secondarySourceFeatureChannelMaxCount = secondarySourceFeatureChannelMaxCount;
  }

  else
  {
    v3 = MTLReportFailureTypeEnabled();
    v5 = secondarySourceFeatureChannelMaxCount;
    v4 = self;
    if (v3)
    {
      MTLReportFailure();
      v5 = secondarySourceFeatureChannelMaxCount;
      v4 = self;
    }

    v4->_secondarySourceFeatureChannelMaxCount = v5;
  }
}

- (id)encodeToCommandEncoder:(id)a3 commandBuffer:(id)a4 primaryImage:(id)a5 secondaryImage:(id)a6 inState:(id)a7
{
  v29[2] = *MEMORY[0x277D85DE8];
  v29[0] = a5;
  v29[1] = a6;
  v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v29, 2, a5, a6, a7, v7);
  v20 = objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_(self, v15, v14, 0, v16, v17, v18, v19);
  if (*(&self->super.super.isa + *MEMORY[0x277CD7378]))
  {
    if (!v20)
    {
      return 0;
    }
  }

  else if (!v20)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v25 = objc_opt_class();
      NSStringFromClass(v25);
      MTLReportFailure();
    }

    return 0;
  }

  v26 = objc_msgSend_imageForCommandBuffer_imageDescriptor_kernel_(self->_destinationImageAllocator, v21, a4, v20, self, v22, v23, v24);
  if (v26)
  {
    objc_msgSend_encodeToCommandEncoder_commandBuffer_primaryImage_secondaryImage_inState_destinationImage_(self, v27, a3, a4, a5, a6, a7, v26);
  }

  return v26;
}

- (id)encodeToCommandEncoder:(id)a3 commandBuffer:(id)a4 primaryImage:(id)a5 secondaryImage:(id)a6 destinationState:(id *)a7 destinationStateIsTemporary:(BOOL)a8
{
  v8 = a8;
  v35[2] = *MEMORY[0x277D85DE8];
  v35[0] = a5;
  v35[1] = a6;
  v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v35, 2, a5, a6, a7, a8);
  v21 = objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_(self, v16, v15, 0, v17, v18, v19, v20);
  if (*(&self->super.super.isa + *MEMORY[0x277CD7378]))
  {
    if (!v21)
    {
      return 0;
    }
  }

  else if (!v21)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v26 = objc_opt_class();
      NSStringFromClass(v26);
      MTLReportFailure();
    }

    return 0;
  }

  v27 = objc_msgSend_imageForCommandBuffer_imageDescriptor_kernel_(self->_destinationImageAllocator, v22, a4, v21, self, v23, v24, v25);
  if (v27)
  {
    v31 = v8 ? objc_msgSend_temporaryResultStateForCommandBuffer_primaryImage_secondaryImage_sourceStates_destinationImage_(self, v28, a4, a5, a6, 0, v27, v30) : objc_msgSend_resultStateForPrimaryImage_secondaryImage_sourceStates_destinationImage_(self, v28, a5, a6, 0, v27, v29, v30);
    v33 = v31;
    objc_msgSend_encodeToCommandEncoder_commandBuffer_primaryImage_secondaryImage_inState_destinationImage_(self, v32, a3, a4, a5, a6, v31, v27);
    if (a7)
    {
      *a7 = v33;
    }
  }

  return v27;
}

- (void)encodeInternalToCommandEncoder:(id)a3 commandBuffer:(id)a4 primaryImage:(id)a5 secondaryImage:(id)a6 inState:(id)a7 destinationImage:(id)a8 subBatchIndex:(unint64_t)a9 batchSize:(unint64_t)a10 clipRect:(id *)a11
{
  v11 = a6;
  v12 = a5;
  v14 = a3;
  primarySourceFeatureChannelOffset = self->_primarySourceFeatureChannelOffset;
  checkFlags = self->_checkFlags;
  if ((checkFlags & 0x2000) == 0)
  {
    v18 = *(a5 + *MEMORY[0x277CD72F8]);
    if (v18 >= primarySourceFeatureChannelOffset)
    {
      v19 = self->_primarySourceFeatureChannelOffset;
    }

    else
    {
      v19 = *(a5 + *MEMORY[0x277CD72F8]);
    }

    v20 = v18 - v19;
    if (v20 >= self->_primarySourceFeatureChannelMaxCount)
    {
      primarySourceFeatureChannelMaxCount = self->_primarySourceFeatureChannelMaxCount;
    }

    else
    {
      primarySourceFeatureChannelMaxCount = v20;
    }

    v12 = sub_239D10394(a4, a3, v12, v19, primarySourceFeatureChannelMaxCount, a6, a7, a8);
    primarySourceFeatureChannelOffset = 0;
    checkFlags = self->_checkFlags;
  }

  v395 = a4;
  v391 = primarySourceFeatureChannelOffset;
  if ((checkFlags & 0x2000) != 0)
  {
    secondarySourceFeatureChannelOffset = self->_secondarySourceFeatureChannelOffset;
  }

  else
  {
    v22 = *(&v11->super.isa + *MEMORY[0x277CD72F8]);
    if (v22 >= self->_secondarySourceFeatureChannelOffset)
    {
      v23 = self->_secondarySourceFeatureChannelOffset;
    }

    else
    {
      v23 = *(&v11->super.isa + *MEMORY[0x277CD72F8]);
    }

    v24 = v22 - v23;
    if (v24 >= self->_secondarySourceFeatureChannelMaxCount)
    {
      secondarySourceFeatureChannelMaxCount = self->_secondarySourceFeatureChannelMaxCount;
    }

    else
    {
      secondarySourceFeatureChannelMaxCount = v24;
    }

    v11 = sub_239D10394(a4, v14, v11, v23, secondarySourceFeatureChannelMaxCount, a6, a7, a8);
    secondarySourceFeatureChannelOffset = 0;
  }

  v26 = a8;
  v27 = *MEMORY[0x277CD7320];
  v28 = (v12 + v27);
  v29 = (v11 + v27);
  v30 = a8 + v27;
  v385 = v30;
  if (a8)
  {
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  v396 = *MEMORY[0x277CD7378];
  v32 = MEMORY[0x277CD7300];
  v33 = MEMORY[0x277CD7318];
  v393 = v14;
  if (*(&self->super.super.isa + v396))
  {
    goto LABEL_28;
  }

  v34 = *(v29 + 56);
  v35 = MEMORY[0x277CD7490];
  if ((v28[7] & 1) != 0 && !*(&v12->super.isa + *MEMORY[0x277CD7490]))
  {
    v306 = MTLReportFailureTypeEnabled();
    v32 = MEMORY[0x277CD7300];
    v26 = a8;
    if (v306)
    {
      v307 = objc_opt_class();
      v379 = NSStringFromClass(v307);
      v383 = v12;
      MTLReportFailure();
      v32 = MEMORY[0x277CD7300];
      v26 = a8;
    }
  }

  if ((v34 & 1) != 0 && !*(&v11->super.isa + *v35))
  {
    v308 = MTLReportFailureTypeEnabled();
    v32 = MEMORY[0x277CD7300];
    v26 = a8;
    if (v308)
    {
      v309 = objc_opt_class();
      v379 = NSStringFromClass(v309);
      v383 = v12;
      MTLReportFailure();
      v32 = MEMORY[0x277CD7300];
      v26 = a8;
    }
  }

  if (v31 && (v31[7] & 1) != 0)
  {
    if (!*&v26[*v35])
    {
      v337 = MTLReportFailureTypeEnabled();
      v32 = MEMORY[0x277CD7300];
      v26 = a8;
      if (v337)
      {
        v338 = objc_opt_class();
        v379 = NSStringFromClass(v338);
        v383 = a8;
        MTLReportFailure();
        v32 = MEMORY[0x277CD7300];
        v26 = a8;
      }
    }

    v36 = *v33;
    v37 = *(&v12->super.isa + v36);
    v422 = v37;
    v38 = *(&v11->super.isa + v36);
    v421 = v38;
  }

  else
  {
LABEL_28:
    v36 = *v33;
    v37 = *(&v12->super.isa + v36);
    v422 = v37;
    v38 = *(&v11->super.isa + v36);
    v421 = v38;
    if (!v26)
    {
      PixelInfo = MPSDevice::GetPixelInfo(*(&self->super.super.isa + *MEMORY[0x277CD7350]), MTLPixelFormatInvalid, MPSImageFeatureChannelFormatNone);
      v32 = MEMORY[0x277CD7300];
      v26 = a8;
      LOWORD(v40) = PixelInfo;
      v394 = 0;
      v420 = PixelInfo;
      v41 = *MEMORY[0x277CD7300];
      goto LABEL_33;
    }
  }

  v40 = *&v26[v36];
  v420 = v40;
  v41 = *v32;
  v394 = *&v26[v41];
LABEL_33:
  v387 = *(&v11->super.isa + v41);
  v388 = *(&v12->super.isa + v41);
  v399 = v11;
  v397 = v12;
  if (*(&self->super.super.isa + v396))
  {
    goto LABEL_176;
  }

  if (v26)
  {
    v42 = MEMORY[0x277CD72F8];
    v43 = *MEMORY[0x277CD72F8];
    if (*(&v12->super.isa + v43) >= 5 && *&v26[v43] >= 5uLL && v388 != v394)
    {
      v369 = MTLReportFailureTypeEnabled();
      v32 = MEMORY[0x277CD7300];
      v26 = a8;
      if (v369)
      {
        MTLReportFailure();
        v32 = MEMORY[0x277CD7300];
        v26 = a8;
      }
    }

    v44 = *v42;
    if (*(&v11->super.isa + v44) >= 5 && *&v26[v44] >= 5uLL && v387 != v394)
    {
      v370 = MTLReportFailureTypeEnabled();
      v32 = MEMORY[0x277CD7300];
      v26 = a8;
      if (v370)
      {
        MTLReportFailure();
        v32 = MEMORY[0x277CD7300];
        v26 = a8;
      }
    }
  }

  explicit = atomic_load_explicit(v28, memory_order_acquire);
  if ((v28[7] & 2) != 0)
  {
    if (*(v28 + 13) < 2u)
    {
      v46 = 2;
    }

    else
    {
      v46 = 3;
    }

    v47 = v37 & 0x3FF;
    v48 = atomic_load_explicit(v29, memory_order_acquire);
    if ((v29[7] & 2) != 0)
    {
LABEL_45:
      if (*(v29 + 13) < 2u)
      {
        v49 = 2;
      }

      else
      {
        v49 = 3;
      }

      goto LABEL_55;
    }
  }

  else
  {
    if (!explicit)
    {
      explicit = v28[5];
    }

    v46 = objc_msgSend_textureType(explicit, a2, a3, a4, a5, a6, a7, a8, v379, v383);
    v26 = a8;
    v32 = MEMORY[0x277CD7300];
    v47 = v37 & 0x3FF;
    v48 = atomic_load_explicit(v29, memory_order_acquire);
    if ((v29[7] & 2) != 0)
    {
      goto LABEL_45;
    }
  }

  if (!v48)
  {
    v48 = v29[5];
  }

  v49 = objc_msgSend_textureType(v48, a2, a3, a4, a5, a6, a7, a8, v379);
  v26 = a8;
  v32 = MEMORY[0x277CD7300];
LABEL_55:
  v50 = v38 & 0x3FF;
  if ((~v422 & 0xF000000) == 0)
  {
    v62 = v49;
    v63 = MTLReportFailureTypeEnabled();
    v32 = MEMORY[0x277CD7300];
    v26 = a8;
    v64 = v63;
    v49 = v62;
    if (v64)
    {
      v379 = v28;
      v383 = v47;
      MTLReportFailure();
      v32 = MEMORY[0x277CD7300];
      v26 = a8;
      v49 = v62;
    }
  }

  if ((~v421 & 0xF000000) == 0)
  {
    v384 = v49;
    v65 = MTLReportFailureTypeEnabled();
    v32 = MEMORY[0x277CD7300];
    v26 = a8;
    v66 = v65;
    v49 = v384;
    if (v66)
    {
      v379 = v29;
      v383 = v50;
      MTLReportFailure();
      v32 = MEMORY[0x277CD7300];
      v26 = a8;
      v49 = v384;
    }
  }

  if ((self->_checkFlags & 4) != 0)
  {
    if ((v422 & 0x80000000000) == 0)
    {
      v310 = v49;
      v311 = MTLReportFailureTypeEnabled();
      v32 = MEMORY[0x277CD7300];
      v26 = a8;
      v312 = v311;
      v49 = v310;
      if (v312)
      {
        v379 = v28;
        v383 = v47;
        MTLReportFailure();
        v32 = MEMORY[0x277CD7300];
        v26 = a8;
        v49 = v310;
      }
    }

    if ((v421 & 0x80000000000) == 0)
    {
      v313 = v49;
      v314 = MTLReportFailureTypeEnabled();
      v32 = MEMORY[0x277CD7300];
      v26 = a8;
      v315 = v314;
      v49 = v313;
      if (v315)
      {
        v379 = v29;
        v383 = v50;
        MTLReportFailure();
        v32 = MEMORY[0x277CD7300];
        v26 = a8;
        v49 = v313;
      }
    }
  }

  if ((v46 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v67 = v49;
    v68 = MTLReportFailureTypeEnabled();
    v32 = MEMORY[0x277CD7300];
    v26 = a8;
    v69 = v68;
    v49 = v67;
    if (v69)
    {
      v379 = v28;
      MTLReportFailure();
      v32 = MEMORY[0x277CD7300];
      v26 = a8;
      v49 = v67;
    }
  }

  if ((v49 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v70 = v49;
    v71 = MTLReportFailureTypeEnabled();
    v32 = MEMORY[0x277CD7300];
    v26 = a8;
    v72 = v71;
    v49 = v70;
    if (v72)
    {
      v379 = v29;
      MTLReportFailure();
      v32 = MEMORY[0x277CD7300];
      v26 = a8;
      v49 = v70;
    }
  }

  z = self->_primaryOffset.z;
  if (v46 == 2)
  {
    v52 = a11;
    if (z)
    {
      v316 = v49;
      v317 = MTLReportFailureTypeEnabled();
      v32 = MEMORY[0x277CD7300];
      v26 = a8;
      v318 = v317;
      v49 = v316;
      if (v318)
      {
        MTLReportFailure();
        v32 = MEMORY[0x277CD7300];
        v26 = a8;
        v49 = v316;
      }
    }

    if (a11->var1.var2 != 1)
    {
      v53 = v49;
      v54 = MTLReportFailureTypeEnabled();
      v32 = MEMORY[0x277CD7300];
      v26 = a8;
      v55 = v54;
      v49 = v53;
      if (v55)
      {
LABEL_366:
        MTLReportFailure();
        v32 = MEMORY[0x277CD7300];
        v26 = a8;
        v49 = v53;
      }
    }
  }

  else
  {
    v56 = MEMORY[0x277CD7310];
    if (z < 0 || z >= *(&v397->super.isa + *MEMORY[0x277CD7310]))
    {
      v327 = v49;
      v328 = MTLReportFailureTypeEnabled();
      v32 = MEMORY[0x277CD7300];
      v26 = a8;
      v329 = v328;
      v49 = v327;
      if (v329)
      {
        MTLReportFailure();
        v32 = MEMORY[0x277CD7300];
        v26 = a8;
        v49 = v327;
      }
    }

    v52 = a11;
    if ((a11->var1.var2 + self->_primaryOffset.z) > *(&v397->super.isa + *v56))
    {
      v53 = v49;
      v319 = MTLReportFailureTypeEnabled();
      v32 = MEMORY[0x277CD7300];
      v26 = a8;
      v320 = v319;
      v49 = v53;
      if (v320)
      {
        goto LABEL_366;
      }
    }
  }

  v57 = self->_secondaryOffset.z;
  if (v49 == 2)
  {
    if (v57)
    {
      v321 = MTLReportFailureTypeEnabled();
      v32 = MEMORY[0x277CD7300];
      v26 = a8;
      if (v321)
      {
        MTLReportFailure();
        v32 = MEMORY[0x277CD7300];
        v26 = a8;
      }
    }

    if (v52->var1.var2 != 1)
    {
      v58 = MTLReportFailureTypeEnabled();
      v32 = MEMORY[0x277CD7300];
      v26 = a8;
      if (v58)
      {
LABEL_370:
        MTLReportFailure();
        v32 = MEMORY[0x277CD7300];
        v26 = a8;
      }
    }
  }

  else
  {
    v59 = MEMORY[0x277CD7310];
    if (v57 < 0 || v57 >= *(&v399->super.isa + *MEMORY[0x277CD7310]))
    {
      v330 = MTLReportFailureTypeEnabled();
      v32 = MEMORY[0x277CD7300];
      v26 = a8;
      if (v330)
      {
        MTLReportFailure();
        v32 = MEMORY[0x277CD7300];
        v26 = a8;
      }
    }

    v52 = a11;
    if ((a11->var1.var2 + self->_secondaryOffset.z) > *(&v399->super.isa + *v59))
    {
      v322 = MTLReportFailureTypeEnabled();
      v32 = MEMORY[0x277CD7300];
      v26 = a8;
      if (v322)
      {
        goto LABEL_370;
      }
    }
  }

  if (!v31 && (MEMORY[0x38] & 2) != 0)
  {
    if (MEMORY[0x34] < 2u)
    {
      v46 = 2;
    }

    else
    {
      v46 = 3;
    }
  }

  if ((~v420 & 0xF000000) == 0)
  {
    v73 = MTLReportFailureTypeEnabled();
    v32 = MEMORY[0x277CD7300];
    v26 = a8;
    if (v73)
    {
      v379 = v31;
      v383 = v40 & 0x3FF;
      MTLReportFailure();
      v32 = MEMORY[0x277CD7300];
      v26 = a8;
    }
  }

  if ((v420 & 0x200000000000) == 0)
  {
    v74 = MTLReportFailureTypeEnabled();
    v32 = MEMORY[0x277CD7300];
    v26 = a8;
    if (v74)
    {
      v379 = v31;
      v383 = v40 & 0x3FF;
      MTLReportFailure();
      v32 = MEMORY[0x277CD7300];
      v26 = a8;
    }
  }

  if ((v46 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v75 = MTLReportFailureTypeEnabled();
    v32 = MEMORY[0x277CD7300];
    v60 = v399;
    v26 = a8;
    v12 = v397;
    if (v75)
    {
      v379 = v31;
      MTLReportFailure();
      v32 = MEMORY[0x277CD7300];
      v26 = a8;
    }

LABEL_106:
    if (!v26)
    {
      goto LABEL_109;
    }

    v76 = MEMORY[0x277CD7310];
    if (v52->var0.var2 >= *&v26[*MEMORY[0x277CD7310]])
    {
      v334 = MTLReportFailureTypeEnabled();
      v32 = MEMORY[0x277CD7300];
      v26 = a8;
      if (v334)
      {
        MTLReportFailure();
        v32 = MEMORY[0x277CD7300];
        v26 = a8;
      }
    }

    if (v52->var1.var2 + v52->var0.var2 <= *&v26[*v76])
    {
      goto LABEL_109;
    }

    v335 = MTLReportFailureTypeEnabled();
    v32 = MEMORY[0x277CD7300];
    v26 = a8;
    if (!v335)
    {
      goto LABEL_109;
    }

    goto LABEL_387;
  }

  v82 = v46 == 2;
  v60 = v399;
  v12 = v397;
  if (!v82)
  {
    goto LABEL_106;
  }

  if (v52->var0.var2)
  {
    v331 = MTLReportFailureTypeEnabled();
    v32 = MEMORY[0x277CD7300];
    v26 = a8;
    if (v331)
    {
      MTLReportFailure();
      v32 = MEMORY[0x277CD7300];
      v26 = a8;
    }
  }

  if (v52->var1.var2 == 1)
  {
    goto LABEL_109;
  }

  v61 = MTLReportFailureTypeEnabled();
  v32 = MEMORY[0x277CD7300];
  v26 = a8;
  if (!v61)
  {
    goto LABEL_109;
  }

LABEL_387:
  MTLReportFailure();
  v32 = MEMORY[0x277CD7300];
  v26 = a8;
LABEL_109:
  if (!*(&v12->super.isa + *v32) && (self->_checkFlags & 0x20) == 0 && *(&v12->super.isa + *MEMORY[0x277CD72F8]) >= 5)
  {
    if (self->_primaryEdgeMode)
    {
      v372 = MTLReportFailureTypeEnabled();
      v32 = MEMORY[0x277CD7300];
      v26 = a8;
      if (v372)
      {
        v373 = objc_opt_class();
        v379 = NSStringFromClass(v373);
        MTLReportFailure();
        v32 = MEMORY[0x277CD7300];
        v26 = a8;
      }
    }
  }

  if (!*(&v60->super.isa + *v32) && (self->_checkFlags & 0x20) == 0 && *(&v60->super.isa + *MEMORY[0x277CD72F8]) >= 5)
  {
    if (self->_secondaryEdgeMode)
    {
      v374 = MTLReportFailureTypeEnabled();
      v26 = a8;
      if (v374)
      {
        v375 = objc_opt_class();
        v379 = NSStringFromClass(v375);
        MTLReportFailure();
        v26 = a8;
      }
    }
  }

  if ((self->_checkFlags & 0x40000) == 0)
  {
    if (self->_primaryEdgeMode >= 2)
    {
      v323 = MTLReportFailureTypeEnabled();
      v26 = a8;
      if (v323)
      {
        v324 = objc_opt_class();
        v379 = NSStringFromClass(v324);
        MTLReportFailure();
        v26 = a8;
      }
    }

    if (self->_secondaryEdgeMode >= 2)
    {
      v325 = MTLReportFailureTypeEnabled();
      v26 = a8;
      if (v325)
      {
        v326 = objc_opt_class();
        v379 = NSStringFromClass(v326);
        MTLReportFailure();
        v26 = a8;
      }
    }
  }

  if (v26)
  {
    if ((self->_checkFlags & 2) == 0)
    {
      v77 = MEMORY[0x277CD72F8];
      if (*&v26[*MEMORY[0x277CD72F8]] != *(&v12->super.isa + *MEMORY[0x277CD72F8]))
      {
        v339 = MTLReportFailureTypeEnabled();
        v26 = a8;
        if (v339)
        {
          v340 = objc_opt_class();
          v379 = NSStringFromClass(v340);
          MTLReportFailure();
          v26 = a8;
        }
      }

      if (*&v26[*v77] != *(&v60->super.isa + *v77) && MTLReportFailureTypeEnabled())
      {
        v341 = objc_opt_class();
        v379 = NSStringFromClass(v341);
        MTLReportFailure();
      }
    }

    if ((self->_checkFlags & 1) == 0)
    {
      v78 = v385;
      if ((v385[56] & 2) != 0)
      {
        v78 = v385;
        do
        {
          v78 = *(v78 + 5);
        }

        while ((v78[56] & 2) != 0);
      }

      v79 = v28;
      if ((v28[7] & 2) != 0)
      {
        v79 = v28;
        do
        {
          v79 = v79[5];
        }

        while ((v79[7] & 2) != 0);
      }

      v80 = atomic_load_explicit(v79, memory_order_acquire);
      v81 = atomic_load_explicit(v78, memory_order_acquire);
      if (v80)
      {
        v82 = v81 == 0;
      }

      else
      {
        v82 = 1;
      }

      if (!v82 && v80 != v81)
      {
        objc_msgSend_isEqual_(v80, a2, v81, a4, a5, a6, a7, a8);
      }

      v84 = v31;
      if ((v385[56] & 2) != 0)
      {
        v84 = v31;
        do
        {
          v84 = v84[5];
        }

        while ((v84[7] & 2) != 0);
      }

      while ((v28[7] & 2) != 0)
      {
        v28 = v28[5];
      }

      v85 = atomic_load_explicit(v28, memory_order_acquire);
      v86 = atomic_load_explicit(v84, memory_order_acquire);
      if (v85)
      {
        v87 = v86 == 0;
      }

      else
      {
        v87 = 1;
      }

      if (!v87 && (v85 == v86 || objc_msgSend_isEqual_(v85, a2, v86, a4, a5, a6, a7, a8)) && MTLReportFailureTypeEnabled())
      {
        v336 = objc_opt_class();
        v379 = NSStringFromClass(v336);
        MTLReportFailure();
      }

      v88 = v31;
      if ((v385[56] & 2) != 0)
      {
        v88 = v31;
        do
        {
          v88 = v88[5];
        }

        while ((v88[7] & 2) != 0);
      }

      v89 = v29;
      if ((v29[7] & 2) != 0)
      {
        v89 = v29;
        do
        {
          v89 = v89[5];
        }

        while ((v89[7] & 2) != 0);
      }

      v90 = atomic_load_explicit(v89, memory_order_acquire);
      v91 = atomic_load_explicit(v88, memory_order_acquire);
      if (v90)
      {
        v92 = v91 == 0;
      }

      else
      {
        v92 = 1;
      }

      if (!v92 && v90 != v91)
      {
        objc_msgSend_isEqual_(v90, a2, v91, a4, a5, a6, a7, a8);
      }

      if ((v385[56] & 2) != 0)
      {
        do
        {
          v31 = v31[5];
        }

        while ((v31[7] & 2) != 0);
      }

      while ((v29[7] & 2) != 0)
      {
        v29 = v29[5];
      }

      v94 = atomic_load_explicit(v29, memory_order_acquire);
      a3 = atomic_load_explicit(v31, memory_order_acquire);
      if (v94)
      {
        v95 = a3 == 0;
      }

      else
      {
        v95 = 1;
      }

      if (!v95 && (v94 == a3 || objc_msgSend_isEqual_(v94, a2, a3, a4, a5, a6, a7, a8)) && MTLReportFailureTypeEnabled())
      {
        v371 = objc_opt_class();
        v379 = NSStringFromClass(v371);
        MTLReportFailure();
      }
    }
  }

LABEL_176:
  if (!a11->var1.var1 || !a11->var1.var0 || !a11->var1.var2)
  {
    return;
  }

  if (objc_msgSend_retainedReferences(v395, a2, a3, a4, a5, a6, a7, a8))
  {
    v103 = 0;
  }

  else
  {
    v103 = objc_opt_new();
  }

  if (a11->var1.var2 > 1 || a11->var0.var2)
  {
    v104 = (self->_checkFlags & 0x8000) != 0 && *&self->_primarySourceFeatureChannelOffset == 0;
  }

  else
  {
    v104 = 1;
  }

  v398 = *&self->_primaryOffset.x;
  v105 = self->_primaryOffset.z;
  v106 = 0uLL;
  v107 = MEMORY[0x277CD7320];
  if (self->_isBackwards)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v109 = 0;
    if (isKindOfClass)
    {
      v110 = objc_msgSend_kernelOffsetX(self, v96, v97, v98, v99, v100, v101, v102);
      v118 = objc_msgSend_kernelOffsetY(self, v111, v112, v113, v114, v115, v116, v117);
      *v119.i8 = vmovn_s64(v398);
      v119.i64[1] = v105;
      v120 = __PAIR64__(v118, v110);
      v12 = v397;
      v121.i32[0] = self->_primaryStrideInPixelsX;
      v121.i32[1] = self->_primaryStrideInPixelsY;
      v122.i64[0] = 0x100000001;
      v122.i64[1] = 0x100000001;
      v123 = vmaxq_s32(v121, v122);
      v124 = vmlaq_s32(v120, v123, v119);
      v119.i32[0] = v124.i32[0] / v123.i32[0];
      v119.i32[1] = v124.i32[1] / v123.i32[1];
      v119.i32[2] = v124.i32[2] / v123.i32[2];
      v119.i32[3] = v124.i32[3] / v123.i32[3];
      v125 = vmlsq_s32(v124, v119, v123);
      v126 = vsraq_n_s32(v119, v125, 0x1FuLL);
      v127 = vaddq_s32(vandq_s8(vcltzq_s32(v125), v123), v125);
      v105 = v126.i32[2];
      v128.i64[0] = v126.i32[0];
      v128.i64[1] = v126.i32[1];
      v398 = v128;
      LODWORD(v109) = v127.u16[0];
      HIDWORD(v109) = v127.u16[2];
    }

    v129 = MEMORY[0x277CD7300];
    v106 = 0uLL;
  }

  else
  {
    v109 = 0;
    v129 = MEMORY[0x277CD7300];
  }

  v419 = 0;
  v417 = v106;
  v418 = v106;
  *v416 = v106;
  *&v416[16] = v106;
  v414 = v106;
  v415 = v106;
  v412 = v106;
  v413 = v106;
  v410 = v106;
  v411 = v106;
  v409[2] = v106;
  v409[3] = v106;
  v409[0] = v106;
  v409[1] = v106;
  v408 = v106;
  v407 = v106;
  v406 = v106;
  v405 = v106;
  v404 = v106;
  v403 = v106;
  v402[0] = v12;
  v402[1] = &v422;
  v130 = (v12 + *v107);
  v131 = atomic_load_explicit(v130, memory_order_acquire);
  v386 = v109;
  if ((v130[7] & 2) != 0)
  {
    if (*(v130 + 13) < 2u)
    {
      v132 = 2;
    }

    else
    {
      v132 = 3;
    }
  }

  else
  {
    if (!v131)
    {
      v131 = v130[5];
    }

    v132 = objc_msgSend_textureType(v131, v96, v97, v98, v99, v100, v101, v102, v379, v383);
    v129 = MEMORY[0x277CD7300];
    v109 = v386;
  }

  v133 = *(&v12->super.isa + *MEMORY[0x277CD72F0]) - 1;
  v389 = v103;
  if (v133 > 4)
  {
    v134 = 0;
  }

  else
  {
    v134 = dword_239D91498[v133];
  }

  if (v132 == 3)
  {
    ++v134;
  }

  v135 = MEMORY[0x277CD7310];
  if (*(&v397->super.isa + *MEMORY[0x277CD7310]) >= 2 && !v104)
  {
    v134 |= 2u;
  }

  v137 = MEMORY[0x277CD72F8];
  if ((*(&v397->super.isa + *MEMORY[0x277CD7318]) & 0x3000000) != 0)
  {
    v134 |= 4u;
  }

  v138 = *(&v397->super.isa + *MEMORY[0x277CD72F8]);
  v139 = MEMORY[0x277CD7328];
  v403.i32[0] = v134;
  v140 = *(&v397->super.isa + *MEMORY[0x277CD7328]);
  v403.i64[1] = v138;
  v404 = v140;
  *v405.i8 = *(v397 + *v129);
  v405.i64[1] = v399;
  v406.i64[0] = &v421;
  v141 = (v399 + *v107);
  v142 = atomic_load_explicit(v141, memory_order_acquire);
  if ((v141[7] & 2) != 0)
  {
    if (*(v141 + 13) < 2u)
    {
      v143 = 2;
    }

    else
    {
      v143 = 3;
    }
  }

  else
  {
    if (!v142)
    {
      v142 = v141[5];
    }

    v143 = objc_msgSend_textureType(v142, v96, v97, v98, v99, v100, v101, v102, v379);
    v129 = MEMORY[0x277CD7300];
    v109 = v386;
  }

  v144 = *(&v399->super.isa + *MEMORY[0x277CD72F0]) - 1;
  if (v144 > 4)
  {
    v145 = 0;
  }

  else
  {
    v145 = dword_239D91498[v144];
  }

  if (v143 == 3)
  {
    ++v145;
  }

  if (*(&v399->super.isa + *v135) >= 2 && !v104)
  {
    v145 |= 2u;
  }

  v147 = *(&v399->super.isa + *v137);
  if ((*(&v399->super.isa + *MEMORY[0x277CD7318]) & 0x3000000) != 0)
  {
    v145 |= 4u;
  }

  v148 = *(&v399->super.isa + *v139);
  v406.i32[2] = v145;
  v407.i64[0] = v147;
  v407.i64[1] = v148;
  v149 = *(&v399->super.isa + *v129);
  v408.i64[0] = 0;
  v408.i64[1] = v149;
  memset(v409, 0, sizeof(v409));
  v150 = *&a11->var0.var2;
  v151 = *&a11->var1.var1;
  v410 = *&a11->var0.var0;
  v411 = v150;
  v152 = *&self->_primaryOffset.x;
  v414.i64[0] = self->_primaryOffset.z;
  v412 = v151;
  v413 = v152;
  v414.i16[5] = WORD2(v109);
  v414.i16[4] = v109;
  v415 = v398;
  *&v416[8] = *&self->_secondaryOffset.x;
  v153 = self->_secondaryOffset.z;
  destinationFeatureChannelOffset = self->_destinationFeatureChannelOffset;
  *v416 = v105;
  *&v416[24] = v153;
  v417.i64[0] = destinationFeatureChannelOffset;
  v417.i64[1] = v391;
  v418.i64[0] = secondarySourceFeatureChannelOffset;
  v418.i64[1] = a9;
  v419 = a10;
  v155 = a8;
  if (!a8)
  {
    *(&v409[3] + 1) = 0;
    *(&v409[2] + 8) = 0uLL;
    *(&v409[1] + 8) = 0uLL;
    *(v409 + 8) = 0uLL;
    v160 = v393;
    v161 = (v397 + *v107);
    v162 = atomic_load_explicit(v161, memory_order_acquire);
    v163 = v103;
    if (v162)
    {
      goto LABEL_259;
    }

    goto LABEL_258;
  }

  v156 = (a8 + *v107);
  v157 = atomic_load_explicit(v156, memory_order_acquire);
  if ((v156[7] & 2) != 0)
  {
    if (*(v156 + 13) < 2u)
    {
      v159 = 2;
    }

    else
    {
      v159 = 3;
    }

    v158 = MEMORY[0x277CD7318];
  }

  else
  {
    v158 = MEMORY[0x277CD7318];
    if (!v157)
    {
      v157 = v156[5];
    }

    v159 = objc_msgSend_textureType(v157, v96, v97, v98, v99, v100, v101, v102, v379);
    v155 = a8;
    v129 = MEMORY[0x277CD7300];
  }

  v164 = *&v155[*MEMORY[0x277CD72F0]] - 1;
  if (v164 > 4)
  {
    v165 = 0;
  }

  else
  {
    v165 = dword_239D91498[v164];
  }

  if (v159 == 3)
  {
    ++v165;
  }

  if (*&v155[*v135] >= 2uLL && !v104)
  {
    v165 |= 2u;
  }

  if ((*&v155[*v158] & 0x3000000) != 0)
  {
    v167 = v165 | 4;
  }

  else
  {
    v167 = v165;
  }

  v168 = *&v155[*v137];
  v169 = *&v155[*v139];
  v170 = &v155[*MEMORY[0x277CD7320]];
  v171 = atomic_load_explicit(v170, memory_order_acquire);
  if (!v171)
  {
    MPSAutoTexture::AllocateTexture(v170, 0);
    v129 = MEMORY[0x277CD7300];
    v155 = a8;
    v171 = atomic_load_explicit(v170, memory_order_acquire);
  }

  v172 = *&v155[*v129];
  *(&v409[0] + 1) = v155;
  *&v409[1] = &v420;
  DWORD2(v409[1]) = v167;
  *&v409[2] = v168;
  *(&v409[2] + 1) = v169;
  *&v409[3] = v171;
  *(&v409[3] + 1) = v172;
  v160 = v393;
  v107 = MEMORY[0x277CD7320];
  v161 = (v397 + *MEMORY[0x277CD7320]);
  v162 = atomic_load_explicit(v161, memory_order_acquire);
  v163 = v389;
  if (!v162)
  {
LABEL_258:
    MPSAutoTexture::AllocateTexture(v161, 0);
    v155 = a8;
    v162 = atomic_load_explicit(v161, memory_order_acquire);
  }

LABEL_259:
  v404.i64[1] = v162;
  v173 = (v399 + *v107);
  v174 = atomic_load_explicit(v173, memory_order_acquire);
  if (v174)
  {
    v408.i64[0] = v174;
    if (*(&self->super.super.isa + v396))
    {
      goto LABEL_266;
    }
  }

  else
  {
    MPSAutoTexture::AllocateTexture(v173, 0);
    v155 = a8;
    v408.i64[0] = atomic_load_explicit(v173, memory_order_acquire);
    if (*(&self->super.super.isa + v396))
    {
      goto LABEL_266;
    }
  }

  if (!v404.i64[1])
  {
    v342 = MTLReportFailureTypeEnabled();
    v155 = a8;
    if (v342)
    {
      v343 = objc_opt_class();
      v379 = NSStringFromClass(v343);
      v383 = objc_msgSend_debugDescription(v397, v344, v345, v346, v347, v348, v349, v350);
      MTLReportFailure();
      v155 = a8;
    }
  }

  if (!v408.i64[0])
  {
    v351 = MTLReportFailureTypeEnabled();
    v155 = a8;
    if (v351)
    {
      v352 = objc_opt_class();
      v379 = NSStringFromClass(v352);
      v383 = objc_msgSend_debugDescription(v399, v353, v354, v355, v356, v357, v358, v359);
      MTLReportFailure();
      v155 = a8;
    }
  }

  if (!*&v409[3])
  {
    v360 = MTLReportFailureTypeEnabled();
    v155 = a8;
    if (v360)
    {
      v361 = objc_opt_class();
      v379 = NSStringFromClass(v361);
      v383 = objc_msgSend_debugDescription(a8, v362, v363, v364, v365, v366, v367, v368);
      MTLReportFailure();
      v155 = a8;
    }
  }

LABEL_266:
  *&v409[0] = a7;
  if (a11->var1.var2 == 1)
  {
    if (!v388 && !v387 && !v394)
    {
LABEL_273:
      v178 = (v397 + *v107);
      v179 = atomic_load_explicit(v178, memory_order_acquire);
      if ((v178[7] & 2) != 0)
      {
        v180 = v399;
        if (*(v178 + 13) < 2u)
        {
LABEL_277:
          v177 = 0;
          goto LABEL_290;
        }
      }

      else
      {
        v180 = v399;
        if (!v179)
        {
          v179 = v178[5];
        }

        v181 = objc_msgSend_textureType(v179, v96, v97, v98, v99, v100, v101, v102, v379, v383);
        v155 = a8;
        if (v181 != 3)
        {
          goto LABEL_277;
        }
      }

      v177 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v404.i64[1], v96, *(&v397[4].super.isa + *MEMORY[0x277CD7320]) & 0x3FF, 2, 0, 1, self->_primaryOffset.z & ~(self->_primaryOffset.z >> 63), 1, v379);
      if (!v177 && MTLReportFailureTypeEnabled())
      {
        v376 = objc_opt_class();
        v380 = NSStringFromClass(v376);
        MTLReportFailure();
      }

      v404.i64[0] = 2;
      v404.i64[1] = v177;
      v189 = *(&v397->super.isa + *MEMORY[0x277CD72F0]);
      v190 = objc_msgSend_textureType(v177, v182, v183, v184, v185, v186, v187, v188, v380);
      if (v189 - 1 > 4)
      {
        v198 = 0;
      }

      else
      {
        v198 = dword_239D91498[v189 - 1];
      }

      if (v190 == 3)
      {
        v199 = v198 + 1;
      }

      else
      {
        v199 = v198;
      }

      objc_msgSend_device(v177, v191, v192, v193, v194, v195, v196, v197);
      MPSDevice = MPSDevice::GetMPSDevice();
      v208 = objc_msgSend_pixelFormat(v177, v201, v202, v203, v204, v205, v206, v207);
      v209 = MPSDevice::GetPixelInfo(MPSDevice, v208, v189);
      v210 = v199 | 4;
      if ((v209 & 0x3000000) == 0)
      {
        v210 = v199;
      }

      v403.i32[0] = v210;
      v180 = v399;
      v155 = a8;
LABEL_290:
      v211 = (v180 + *MEMORY[0x277CD7320]);
      v212 = atomic_load_explicit(v211, memory_order_acquire);
      if ((v211[7] & 2) != 0)
      {
        if (*(v211 + 13) < 2u)
        {
          goto LABEL_294;
        }
      }

      else
      {
        if (!v212)
        {
          v212 = v211[5];
        }

        v213 = objc_msgSend_textureType(v212, v96, v97, v98, v99, v100, v101, v102, v379);
        v155 = a8;
        if (v213 != 3)
        {
LABEL_294:
          v176 = 0;
          v214 = MEMORY[0x277CD7320];
          if (!v155)
          {
            goto LABEL_311;
          }

LABEL_307:
          v244 = &v155[*v214];
          v245 = atomic_load_explicit(v244, memory_order_acquire);
          if ((v244[7] & 2) != 0)
          {
            if (*(v244 + 13) < 2u)
            {
LABEL_311:
              v175 = 0;
LABEL_324:
              *&v416[24] = 0;
              v414.i64[0] = 0;
              v411.i64[0] = 0;
              goto LABEL_325;
            }
          }

          else
          {
            if (!v245)
            {
              v245 = v244[5];
            }

            v246 = objc_msgSend_textureType(v245, v96, v97, v98, v99, v100, v101, v102, v379);
            v155 = a8;
            if (v246 != 3)
            {
              goto LABEL_311;
            }
          }

          v247 = *&v155[*v214 + 32] & 0x3FFLL;
          v248 = v155;
          v175 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(*&v409[3], v96, v247, 2, 0, 1, a11->var0.var2, 1, v379);
          if (!v175 && MTLReportFailureTypeEnabled())
          {
            v378 = objc_opt_class();
            v382 = NSStringFromClass(v378);
            MTLReportFailure();
          }

          *(&v409[2] + 1) = 2;
          *&v409[3] = v175;
          v256 = *&v248[*MEMORY[0x277CD72F0]];
          v257 = objc_msgSend_textureType(v175, v249, v250, v251, v252, v253, v254, v255, v382);
          if (v256 - 1 > 4)
          {
            v265 = 0;
          }

          else
          {
            v265 = dword_239D91498[v256 - 1];
          }

          if (v257 == 3)
          {
            v266 = v265 + 1;
          }

          else
          {
            v266 = v265;
          }

          objc_msgSend_device(v175, v258, v259, v260, v261, v262, v263, v264);
          v267 = MPSDevice::GetMPSDevice();
          v275 = objc_msgSend_pixelFormat(v175, v268, v269, v270, v271, v272, v273, v274);
          v276 = MPSDevice::GetPixelInfo(v267, v275, v256);
          v277 = v266 | 4;
          if ((v276 & 0x3000000) == 0)
          {
            v277 = v266;
          }

          DWORD2(v409[1]) = v277;
          v163 = v389;
          goto LABEL_324;
        }
      }

      v176 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v408.i64[0], v96, *(&v180[4].super.isa + *MEMORY[0x277CD7320]) & 0x3FF, 2, 0, 1, self->_secondaryOffset.z & ~(self->_secondaryOffset.z >> 63), 1, v379);
      if (!v176 && MTLReportFailureTypeEnabled())
      {
        v377 = objc_opt_class();
        v381 = NSStringFromClass(v377);
        MTLReportFailure();
      }

      v407.i64[1] = 2;
      v408.i64[0] = v176;
      v222 = *(&v180->super.isa + *MEMORY[0x277CD72F0]);
      v223 = objc_msgSend_textureType(v176, v215, v216, v217, v218, v219, v220, v221, v381);
      if (v222 - 1 > 4)
      {
        v231 = 0;
      }

      else
      {
        v231 = dword_239D91498[v222 - 1];
      }

      if (v223 == 3)
      {
        v232 = v231 + 1;
      }

      else
      {
        v232 = v231;
      }

      objc_msgSend_device(v176, v224, v225, v226, v227, v228, v229, v230);
      v233 = MPSDevice::GetMPSDevice();
      v241 = objc_msgSend_pixelFormat(v176, v234, v235, v236, v237, v238, v239, v240);
      v242 = MPSDevice::GetPixelInfo(v233, v241, v222);
      v243 = v232 | 4;
      if ((v242 & 0x3000000) == 0)
      {
        v243 = v232;
      }

      v406.i32[2] = v243;
      v155 = a8;
      v163 = v389;
      v214 = MEMORY[0x277CD7320];
      if (!a8)
      {
        goto LABEL_311;
      }

      goto LABEL_307;
    }

    v175 = 0;
    if (v403.i64[1] > 4uLL || v407.i64[0] > 4uLL)
    {
      v176 = 0;
      v177 = 0;
    }

    else
    {
      v176 = 0;
      v177 = 0;
      if (*&v409[2] <= 4uLL)
      {
        goto LABEL_273;
      }
    }
  }

  else
  {
    v175 = 0;
    v176 = 0;
    v177 = 0;
  }

LABEL_325:
  if (v163)
  {
    objc_msgSend_addObject_(v163, v96, v404.i64[1], v98, v99, v100, v101, v102);
    objc_msgSend_addObject_(v163, v278, v408.i64[0], v279, v280, v281, v282, v283);
    if (*&v409[3])
    {
      objc_msgSend_addObject_(v163, v284, *&v409[3], v285, v286, v287, v288, v289);
    }

    if (*&v409[0])
    {
      if ((*(*&v409[0] + *MEMORY[0x277CD7470]) & 1) == 0)
      {
        v290 = *(*&v409[0] + *MEMORY[0x277CD7480]);
        if (v290 >= 1)
        {
          v291 = v290 + 1;
          v292 = MEMORY[0x277CD7488];
          do
          {
            v295 = *(*&v409[0] + *v292);
            v296 = *v295;
            if (v296 == 2)
            {
              v293 = v295 + 1;
              v294 = atomic_load_explicit(v295 + 1, memory_order_acquire);
              if (!v294)
              {
                MPSAutoTexture::AllocateTexture((v295 + 1), 0);
                v294 = atomic_load_explicit(v293, memory_order_acquire);
                if (!v294)
                {
                  goto LABEL_334;
                }
              }
            }

            else
            {
              if (v296 != 1)
              {
                goto LABEL_334;
              }

              v297 = v295 + 1;
              v294 = atomic_load_explicit(v295 + 1, memory_order_acquire);
              if (!v294)
              {
                MPSAutoBuffer::AllocateBuffer((v295 + 1), 0);
                v294 = atomic_load_explicit(v297, memory_order_acquire);
                if (!v294)
                {
                  goto LABEL_334;
                }
              }
            }

            objc_msgSend_addObject_(v163, v284, v294, v285, v286, v287, v288, v289, v379);
LABEL_334:
            --v291;
          }

          while (v291 > 1);
        }
      }
    }

    v401[0] = MEMORY[0x277D85DD0];
    v401[1] = 3221225472;
    v401[2] = sub_239D106AC;
    v401[3] = &unk_278B28F28;
    v401[4] = v163;
    objc_msgSend_addCompletedHandler_(v395, v284, v401, v285, v286, v287, v288, v289, v379);
  }

  if ((*(&self->super.super.isa + v396) & 8) != 0)
  {
    v332 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
    if (!v332)
    {
      v333 = objc_opt_class();
      v332 = NSStringFromClass(v333);
    }

    objc_msgSend_pushDebugGroup_(v160, v96, v332, v98, v99, v100, v101, v102, v379);
    v298 = v160;
  }

  else
  {
    v298 = 0;
  }

  (self->_encode)(self->_encodeData, v160, v395, v402);
  if (v298)
  {
    objc_msgSend_popDebugGroup(v298, v299, v300, v301, v302, v303, v304, v305);
  }

  if (v177)
  {
  }

  if (v176)
  {
  }

  if (v175)
  {
  }

  MPSDecrementReadCount(v397);
  MPSDecrementReadCount(v399);
}

- (void)encodeToCommandEncoder:(id)a3 commandBuffer:(id)a4 primaryImage:(id)a5 secondaryImage:(id)a6 inState:(id)a7 destinationImage:(id)a8 subBatchIndex:(unint64_t)a9 batchSize:(unint64_t)a10
{
  v14 = *MEMORY[0x277CD7378];
  if (*(&self->super.super.isa + v14))
  {
    goto LABEL_25;
  }

  if (!a4)
  {
    v136 = a3;
    v137 = a7;
    v138 = MTLReportFailureTypeEnabled();
    a7 = v137;
    a4 = 0;
    a3 = v136;
    if (v138)
    {
      v139 = objc_opt_class();
      v212 = NSStringFromClass(v139);
      MTLReportFailure();
      a7 = v137;
      a4 = 0;
      a3 = v136;
    }
  }

  if (!a5)
  {
    v140 = a3;
    v141 = a4;
    v142 = a7;
    v143 = MTLReportFailureTypeEnabled();
    a7 = v142;
    a4 = v141;
    a3 = v140;
    if (v143)
    {
      v144 = objc_opt_class();
      v212 = NSStringFromClass(v144);
      MTLReportFailure();
      a7 = v142;
      a4 = v141;
      a3 = v140;
    }
  }

  if (!a6)
  {
    v145 = a3;
    v146 = a4;
    v147 = a7;
    v148 = MTLReportFailureTypeEnabled();
    a7 = v147;
    a4 = v146;
    a3 = v145;
    if (v148)
    {
      v149 = objc_opt_class();
      v212 = NSStringFromClass(v149);
      MTLReportFailure();
      a7 = v147;
      a4 = v146;
      a3 = v145;
    }
  }

  if (!a8 && (self->_checkFlags & 0x1000) == 0)
  {
    v131 = a3;
    v132 = a4;
    v133 = a7;
    v134 = MTLReportFailureTypeEnabled();
    a7 = v133;
    a4 = v132;
    a3 = v131;
    if (v134)
    {
      v135 = objc_opt_class();
      v212 = NSStringFromClass(v135);
      MTLReportFailure();
      a7 = v133;
      a4 = v132;
      a3 = v131;
    }
  }

  v16 = *MEMORY[0x277CD7348];
  if ((*(&self->super.super.isa + v14) & ~*(&self->super.super.isa + v16)) != 0)
  {
    v150 = a3;
    v151 = a4;
    v152 = a7;
    v153 = MTLReportFailureTypeEnabled();
    a7 = v152;
    a4 = v151;
    a3 = v150;
    if (v153)
    {
      v154 = objc_opt_class();
      v212 = NSStringFromClass(v154);
      v213 = *(&self->super.super.isa + v14) & ~*(&self->super.super.isa + v16);
      MTLReportFailure();
      a7 = v152;
      a4 = v151;
      a3 = v150;
    }
  }

  v17 = MEMORY[0x277CD7320];
  v18 = MEMORY[0x277CD7490];
  if ((*(a5 + *MEMORY[0x277CD7320] + 56) & 1) != 0 && !*(a5 + *MEMORY[0x277CD7490]) && (v224 = a3, v177 = a4, v178 = a7, v179 = MTLReportFailureTypeEnabled(), a7 = v178, a4 = v177, a3 = v224, v179))
  {
    v180 = objc_opt_class();
    v219 = NSStringFromClass(v180);
    v213 = NSStringFromSelector(a2);
    v214 = objc_msgSend_debugDescription(a5, v181, v182, v183, v184, v185, v186, v187);
    v212 = v219;
    MTLReportFailure();
    a7 = v178;
    a4 = v177;
    a3 = v224;
    v19 = a5 + *v17;
    if ((v19[56] & 2) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v19 = a5 + *v17;
    if ((v19[56] & 2) == 0)
    {
      goto LABEL_12;
    }
  }

  do
  {
    v19 = *(v19 + 5);
  }

  while ((v19[56] & 2) != 0);
LABEL_12:
  atomic_load_explicit(v19, memory_order_acquire);
    ;
  }

  if (!atomic_load_explicit(i, memory_order_acquire))
  {
    v222 = a3;
    v155 = a4;
    v156 = a7;
    v157 = MTLReportFailureTypeEnabled();
    a7 = v156;
    a4 = v155;
    a3 = v222;
    if (v157)
    {
      v158 = objc_opt_class();
      v217 = NSStringFromClass(v158);
      v213 = NSStringFromSelector(a2);
      v214 = objc_msgSend_debugDescription(a5, v159, v160, v161, v162, v163, v164, v165);
      v212 = v217;
      MTLReportFailure();
      a7 = v156;
      a4 = v155;
      a3 = v222;
    }
  }

  if ((*(a6 + *v17 + 56) & 1) != 0 && !*(a6 + *v18))
  {
    v225 = a3;
    v188 = a4;
    v189 = a7;
    v190 = MTLReportFailureTypeEnabled();
    a7 = v189;
    a4 = v188;
    a3 = v225;
    if (v190)
    {
      v191 = objc_opt_class();
      v220 = NSStringFromClass(v191);
      v213 = NSStringFromSelector(a2);
      v214 = objc_msgSend_debugDescription(a6, v192, v193, v194, v195, v196, v197, v198);
      v212 = v220;
      MTLReportFailure();
      a7 = v189;
      a4 = v188;
      a3 = v225;
      v21 = a6 + *v17;
      if ((v21[56] & 2) == 0)
      {
        goto LABEL_19;
      }

      do
      {
LABEL_18:
        v21 = *(v21 + 5);
      }

      while ((v21[56] & 2) != 0);
      goto LABEL_19;
    }
  }

  v21 = a6 + *v17;
  if ((v21[56] & 2) != 0)
  {
    goto LABEL_18;
  }

LABEL_19:
  atomic_load_explicit(v21, memory_order_acquire);
    ;
  }

  if (!atomic_load_explicit(j, memory_order_acquire))
  {
    v223 = a3;
    v166 = a4;
    v167 = a7;
    v168 = MTLReportFailureTypeEnabled();
    a7 = v167;
    a4 = v166;
    a3 = v223;
    if (v168)
    {
      v169 = objc_opt_class();
      v218 = NSStringFromClass(v169);
      v213 = NSStringFromSelector(a2);
      v214 = objc_msgSend_debugDescription(a6, v170, v171, v172, v173, v174, v175, v176);
      v212 = v218;
      MTLReportFailure();
      a7 = v167;
      a4 = v166;
      a3 = v223;
    }
  }

  if (!a8)
  {
    if (!a5 || !a6)
    {
      return;
    }

    v23 = a7;
    v221 = a4;
    v24 = a3;
    goto LABEL_32;
  }

  if ((*(a8 + *v17 + 56) & 1) != 0 && !*(a8 + *v18))
  {
    v199 = a3;
    v200 = a4;
    v201 = a7;
    v202 = MTLReportFailureTypeEnabled();
    a7 = v201;
    a4 = v200;
    a3 = v199;
    if (v202)
    {
      v203 = objc_opt_class();
      v204 = NSStringFromClass(v203);
      v213 = NSStringFromSelector(a2);
      v214 = objc_msgSend_debugDescription(a8, v205, v206, v207, v208, v209, v210, v211);
      v212 = v204;
      MTLReportFailure();
      a7 = v201;
      a4 = v200;
      a3 = v199;
    }
  }

LABEL_25:
  if (!a5 || !a6)
  {
    return;
  }

  v23 = a7;
  v221 = a4;
  v24 = a3;
  if (!a8)
  {
LABEL_32:
    v41 = 0;
    v33 = 0;
    v25 = 0;
    v42 = 1;
    goto LABEL_33;
  }

  v25 = objc_msgSend_width(a8, a2, a3, a4, a5, a6, a7, a8);
  v33 = objc_msgSend_height(a8, v26, v27, v28, v29, v30, v31, v32);
  v41 = objc_msgSend_numberOfImages(a8, v34, v35, v36, v37, v38, v39, v40);
  v42 = 0;
LABEL_33:
  memset(&v228, 0, sizeof(v228));
  v227.width = v25;
  v227.height = v33;
  v227.depth = v41;
  v43 = *&self->_clipRect.origin.z;
  *&v226.origin.x = *&self->_clipRect.origin.x;
  *&v226.origin.z = v43;
  *&v226.size.height = *&self->_clipRect.size.height;
  MPSGetEffectiveClipRegion(&v228, &v227, &v226);
  if (a8 && !v228.size.depth)
  {
    return;
  }

  if (v228.size.depth <= 1 && self->_encode && !v228.origin.z)
  {
    if (v24)
    {
      v226 = v228;
      objc_msgSend_encodeInternalToCommandEncoder_commandBuffer_primaryImage_secondaryImage_inState_destinationImage_subBatchIndex_batchSize_clipRect_(self, v44, v24, v221, a5, a6, v23, a8, a9, a10, &v226);
    }

    else
    {
      v74 = objc_alloc(MEMORY[0x277CD7210]);
      v86 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v74, v75, v221, 0, v76, v77, v78, v79);
      v227.width = v86;
      v227.height = self;
      if ((*(&self->super.super.isa + v14) & 0x18) != 0)
      {
        v87 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
        if (v87 || (v88 = objc_opt_class(), v89 = NSStringFromClass(v88), objc_msgSend_setLabel_(self, v90, v89, v91, v92, v93, v94, v95), (v87 = v89) != 0))
        {
          objc_msgSend_setLabel_(v86, v80, v87, v81, v82, v83, v84, v85, v212, v213, v214);
        }
      }

      v226 = v228;
      objc_msgSend_encodeInternalToCommandEncoder_commandBuffer_primaryImage_secondaryImage_inState_destinationImage_subBatchIndex_batchSize_clipRect_(self, v80, v86, v221, a5, a6, v23, a8, a9, a10, &v226);
      objc_msgSend_endEncoding(v86, v96, v97, v98, v99, v100, v101, v102);
    }

    return;
  }

  v52 = objc_autoreleasePoolPush();
  if (v42)
  {
    v53 = 0;
  }

  else
  {
    v53 = objc_msgSend_batchRepresentation(a8, v45, v46, v47, v48, v49, v50, v51);
  }

  v54 = objc_msgSend_batchRepresentation(a5, v45, v46, v47, v48, v49, v50, v51, v212, v213, v214);
  v62 = objc_msgSend_batchRepresentation(a6, v55, v56, v57, v58, v59, v60, v61);
  v65 = v62;
  v66 = 0;
  if (v23)
  {
    v67 = *(a5 + *MEMORY[0x277CD7310]);
    if (v67)
    {
      v215 = v62;
      v216 = v52;
      v68 = malloc_type_malloc(8 * v67, 0x80040B8603338uLL);
      if (!v68)
      {
        v66 = 0;
LABEL_60:
        v65 = v215;
        goto LABEL_61;
      }

      v72 = v68;
      if (v67 > 3)
      {
        v73 = v67 & 0xFFFFFFFFFFFFFFFCLL;
        v103 = vdupq_n_s64(v23);
        v104 = v68 + 1;
        v105 = v67 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v104[-1] = v103;
          *v104 = v103;
          v104 += 2;
          v105 -= 4;
        }

        while (v105);
        if (v67 == v73)
        {
          goto LABEL_59;
        }
      }

      else
      {
        v73 = 0;
      }

      v106 = v67 - v73;
      v107 = &v68->i64[v73];
      do
      {
        *v107++ = v23;
        --v106;
      }

      while (v106);
LABEL_59:
      v66 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v63, v68, v67, v69, v70, v71, v64);
      free(v72);
      v52 = v216;
      goto LABEL_60;
    }
  }

LABEL_61:
  objc_msgSend_encodeBatchToCommandBuffer_primaryImages_secondaryImages_inStates_destinationImages_(self, v63, v221, v54, v65, v66, v53, v64);
  if (a8)
  {
    if (*(a8 + *MEMORY[0x277CD7320] + 56))
    {
      v115 = objc_msgSend_count(v53, v108, v109, v110, v111, v112, v113, v114);
      if (v115)
      {
        v122 = v115;
        v123 = 0;
        for (k = objc_msgSend_objectAtIndexedSubscript_(v53, v116, 0, v117, v118, v119, v120, v121); ; k = objc_msgSend_objectAtIndexedSubscript_(v53, v125, v123, v126, v127, v128, v129, v130))
        {
          if (k != a8)
          {
            objc_msgSend_setReadCount_(k, v125, 0, v126, v127, v128, v129, v130);
          }

          if (v122 == ++v123)
          {
            break;
          }
        }
      }
    }
  }

  MPSDecrementReadCount(a5);
  MPSDecrementReadCount(a6);
  objc_autoreleasePoolPop(v52);
}

- (id)encodeBatchToCommandEncoder:(id)a3 commandBuffer:(id)a4 primaryImages:(id)a5 secondaryImages:(id)a6 inStates:(id)a7
{
  v51[2] = *MEMORY[0x277D85DE8];
  v14 = objc_msgSend_count(a5, a2, a3, a4, a5, a6, a7, v7);
  v22 = objc_msgSend_count(a6, v15, v16, v17, v18, v19, v20, v21);
  if (v14 >= v22)
  {
    v14 = v22;
  }

  v51[0] = objc_msgSend_objectAtIndexedSubscript_(a5, v23, 0, v24, v25, v26, v27, v28);
  v51[1] = objc_msgSend_objectAtIndexedSubscript_(a6, v29, 0, v30, v31, v32, v33, v34);
  v40 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v35, v51, 2, v36, v37, v38, v39);
  v46 = objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_(self, v41, v40, 0, v42, v43, v44, v45);
  if (*(&self->super.super.isa + *MEMORY[0x277CD7378]))
  {
    if (!v46)
    {
      return 0;
    }
  }

  else if (!v46)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v47 = objc_opt_class();
      NSStringFromClass(v47);
      MTLReportFailure();
    }

    return 0;
  }

  v48 = sub_239D112C8(a4, self->_destinationImageAllocator, v46, self, v14);
  if (v48)
  {
    objc_msgSend_encodeBatchToCommandEncoder_commandBuffer_primaryImages_secondaryImages_inStates_destinationImages_(self, v49, a3, a4, a5, a6, a7, v48);
  }

  return v48;
}

- (id)encodeBatchToCommandEncoder:(id)a3 commandBuffer:(id)a4 primaryImages:(id)a5 secondaryImages:(id)a6 destinationStates:(id *)a7 destinationStateIsTemporary:(BOOL)a8
{
  v8 = a8;
  v57[2] = *MEMORY[0x277D85DE8];
  v15 = objc_msgSend_count(a5, a2, a3, a4, a5, a6, a7, a8);
  v23 = objc_msgSend_count(a6, v16, v17, v18, v19, v20, v21, v22);
  if (v15 >= v23)
  {
    v15 = v23;
  }

  v57[0] = objc_msgSend_objectAtIndexedSubscript_(a5, v24, 0, v25, v26, v27, v28, v29);
  v57[1] = objc_msgSend_objectAtIndexedSubscript_(a6, v30, 0, v31, v32, v33, v34, v35);
  v41 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v36, v57, 2, v37, v38, v39, v40);
  v47 = objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_(self, v42, v41, 0, v43, v44, v45, v46);
  if (*(&self->super.super.isa + *MEMORY[0x277CD7378]))
  {
    if (!v47)
    {
      return 0;
    }
  }

  else if (!v47)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v48 = objc_opt_class();
      NSStringFromClass(v48);
      MTLReportFailure();
    }

    return 0;
  }

  v49 = sub_239D112C8(a4, self->_destinationImageAllocator, v47, self, v15);
  if (v49)
  {
    v53 = v8 ? objc_msgSend_temporaryResultStateBatchForCommandBuffer_primaryImage_secondaryImage_sourceStates_destinationImage_(self, v50, a4, a5, a6, 0, v49, v52) : objc_msgSend_resultStateBatchForPrimaryImage_secondaryImage_sourceStates_destinationImage_(self, v50, a5, a6, 0, v49, v51, v52);
    v55 = v53;
    objc_msgSend_encodeBatchToCommandEncoder_commandBuffer_primaryImages_secondaryImages_inStates_destinationImages_(self, v54, a3, a4, a5, a6, v53, v49);
    if (a7)
    {
      *a7 = v55;
    }
  }

  return v49;
}

- (void)encodeInternalBatchToCommandEncoder:(id)a3 commandBuffer:(id)a4 primaryImages:(id)a5 secondaryImages:(id)a6 inStates:(id)a7 destinationImages:(id)a8 clipRect:(id *)a9
{
  v242 = a6;
  primarySourceFeatureChannelOffset = self->_primarySourceFeatureChannelOffset;
  checkFlags = self->_checkFlags;
  if ((checkFlags & 0x2000) != 0)
  {
    v243 = a5;
  }

  else
  {
    v15 = self->_primarySourceFeatureChannelOffset;
    v17 = MEMORY[0x277CD72F8];
    v18 = objc_msgSend_objectAtIndexedSubscript_(a5, a2, 0, a4, a5, a6, a7, a8);
    v22 = *(v18 + *v17);
    if (v22 >= v15)
    {
      v23 = v15;
    }

    else
    {
      v23 = *(v18 + *v17);
    }

    v24 = v22 - v23;
    if (v24 >= self->_primarySourceFeatureChannelMaxCount)
    {
      primarySourceFeatureChannelMaxCount = self->_primarySourceFeatureChannelMaxCount;
    }

    else
    {
      primarySourceFeatureChannelMaxCount = v24;
    }

    v243 = sub_239D12298(a4, a3, a5, v23, primarySourceFeatureChannelMaxCount, v19, v20, v21);
    primarySourceFeatureChannelOffset = 0;
    checkFlags = self->_checkFlags;
  }

  secondarySourceFeatureChannelOffset = self->_secondarySourceFeatureChannelOffset;
  v238 = a8;
  v221 = a3;
  if ((checkFlags & 0x2000) == 0)
  {
    v27 = objc_msgSend_objectAtIndexedSubscript_(v242, a2, 0, a4, a5, a6, a7, a8);
    v31 = *(v27 + *MEMORY[0x277CD72F8]);
    if (v31 >= secondarySourceFeatureChannelOffset)
    {
      v32 = secondarySourceFeatureChannelOffset;
    }

    else
    {
      v32 = *(v27 + *MEMORY[0x277CD72F8]);
    }

    v33 = v31 - v32;
    if (v33 >= self->_secondarySourceFeatureChannelMaxCount)
    {
      secondarySourceFeatureChannelMaxCount = self->_secondarySourceFeatureChannelMaxCount;
    }

    else
    {
      secondarySourceFeatureChannelMaxCount = v33;
    }

    v242 = sub_239D12298(a4, a3, v242, v32, secondarySourceFeatureChannelMaxCount, v28, v29, v30);
    secondarySourceFeatureChannelOffset = 0;
  }

  x = self->_primaryOffset.x;
  y = self->_primaryOffset.y;
  v224 = self;
  p_primaryOffset = &self->_primaryOffset;
  v235 = secondarySourceFeatureChannelOffset;
  if (self->_isBackwards)
  {
    z = self->_primaryOffset.z;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v232 = 0;
      v223 = a9;
      if (objc_msgSend_retainedReferences(a4, v38, v39, v40, v41, v42, v43, v44))
      {
        goto LABEL_23;
      }

      goto LABEL_25;
    }

    v45 = objc_msgSend_kernelOffsetX(self, v38, v39, v40, v41, v42, v43, v44);
    v53 = objc_msgSend_kernelOffsetY(self, v46, v47, v48, v49, v50, v51, v52);
    v54.i64[0] = __PAIR64__(y, x);
    v54.i64[1] = z;
    v55.i32[0] = self->_primaryStrideInPixelsX;
    v55.i32[1] = self->_primaryStrideInPixelsY;
    v56.i64[0] = 0x100000001;
    v56.i64[1] = 0x100000001;
    v57 = vmaxq_s32(v55, v56);
    v58 = vmlaq_s32(__PAIR64__(v53, v45), v57, v54);
    v54.i32[0] = v58.i32[0] / v57.i32[0];
    v54.i32[1] = v58.i32[1] / v57.i32[1];
    v56.i64[0] = v54.i64[0];
    v56.i32[2] = v58.i32[2] / v57.i32[2];
    v56.i32[3] = v58.i32[3] / v57.i32[3];
    v59 = vmlsq_s32(v58, v56, v57);
    v54.i64[0] = vsraq_n_s32(v54, v59, 0x1FuLL).u64[0];
    v60 = vaddq_s32(vandq_s8(vcltzq_s32(v59), v57), v59);
    LODWORD(y) = v54.i32[1];
    LODWORD(x) = v54.i32[0];
    LODWORD(v61) = v60.u16[0];
    HIDWORD(v61) = v60.u16[2];
  }

  else
  {
    v61 = 0;
  }

  v232 = v61;
  v223 = a9;
  if (objc_msgSend_retainedReferences(a4, a2, a3, a4, a5, a6, a7, a8))
  {
LABEL_23:
    v69 = 0;
    goto LABEL_26;
  }

LABEL_25:
  v69 = objc_opt_new();
  v262[0] = MEMORY[0x277D85DD0];
  v262[1] = 3221225472;
  v262[2] = sub_239D123F4;
  v262[3] = &unk_278B28F28;
  v262[4] = v69;
  objc_msgSend_addCompletedHandler_(a4, v70, v262, v71, v72, v73, v74, v75);
LABEL_26:
  v231 = objc_msgSend_maxBatchSize(self, v62, v63, v64, v65, v66, v67, v68);
  v239 = malloc_type_calloc(v231, 0xB0uLL, 0x10E00404CD50508uLL);
  v82 = __PAIR64__(y, x);
  v220 = __PAIR64__(y, x);
  p_secondaryOffset = &self->_secondaryOffset;
  v84 = *&self->_secondaryOffset.x;
  LOWORD(v82) = self->_primaryKernelWidth;
  WORD2(v82) = self->_primaryKernelHeight;
  v219 = v82;
  LOWORD(v82) = self->_secondaryKernelWidth;
  WORD2(v82) = self->_secondaryKernelHeight;
  context = v82;
  LOWORD(v82) = self->_primaryDilationRateX;
  WORD2(v82) = self->_primaryDilationRateY;
  v218 = v82;
  LOWORD(v82) = self->_secondaryDilationRateX;
  WORD2(v82) = self->_secondaryDilationRateY;
  v227 = v82;
  v85 = v238;
  if (v238)
  {
    v225 = *&self->_secondaryOffset.x;
    v86 = objc_msgSend_objectAtIndexedSubscript_(v238, v76, 0, v77, v78, v79, v80, v81);
    v94 = objc_msgSend_featureChannels(v86, v87, v88, v89, v90, v91, v92, v93);
    v84 = v225;
  }

  else
  {
    v94 = 0;
  }

  v217 = vmovn_s64(v84);
  destinationFeatureChannelOffset = self->_destinationFeatureChannelOffset;
  v96 = (v94 - destinationFeatureChannelOffset + 3) >> 2;
  if (v94 <= destinationFeatureChannelOffset)
  {
    LOWORD(v96) = 0;
  }

  v260 = 0u;
  v261 = 0u;
  v259 = 0u;
  memset(v258, 0, sizeof(v258));
  v256 = 0u;
  v257 = 0u;
  v255 = 0u;
  v253 = 0u;
  v254 = 0u;
  memset(v252, 0, sizeof(v252));
  v250 = 0u;
  v251 = 0u;
  var2 = v223->var1.var2;
  v247 = 0;
  v248 = 0;
  v249 = v239;
  LOWORD(v97) = vmovn_s64(*&v223->var0.var0).u16[0];
  WORD1(v97) = v96;
  HIDWORD(v97) = ((destinationFeatureChannelOffset + 3) >> 2);
  v98 = vmovn_s64(*&v223->var1.var0);
  LOWORD(v99) = v98.i16[0];
  WORD1(v99) = v98.i16[2];
  HIDWORD(v99) = v96;
  *&v251 = v97;
  *(&v251 + 1) = v99;
  v222 = a4;
  if (v238)
  {
    v100 = objc_msgSend_objectAtIndexedSubscript_(v238, v76, 0, v77, v78, v79, v80, v81);
    v101 = MEMORY[0x277CD72F8];
    LOWORD(v252[0]) = *(v100 + *MEMORY[0x277CD72F8]);
    v109 = objc_msgSend_count(v238, v102, v103, v104, v105, v106, v107, v108);
    v110 = v242;
  }

  else
  {
    v109 = 0;
    v110 = v242;
    v101 = MEMORY[0x277CD72F8];
  }

  WORD1(v252[0]) = v109;
  DWORD1(v252[0]) = 2;
  WORD4(v252[0]) = 0;
  v111 = vmls_s32(v220, v218, vshr_n_u32(vand_s8(v219, 0xFFFF0000FFFFLL), 1uLL));
  v112 = v231;
  WORD5(v252[0]) = v231;
  WORD5(v253) = v111.i16[2];
  WORD4(v253) = v111.i16[0];
  DWORD2(v252[1]) = 0;
  HIWORD(v253) = WORD2(v232);
  WORD6(v253) = v232;
  *&v253 = 0;
  WORD1(v254) = v219.i16[2];
  LOWORD(v254) = v219.i16[0];
  *(v252 + 12) = 0;
  WORD3(v254) = v220.i16[2];
  primaryStrideInPixelsX = self->_primaryStrideInPixelsX;
  WORD2(v254) = v220.i16[0];
  WORD5(v254) = self->_primaryStrideInPixelsY;
  WORD4(v254) = primaryStrideInPixelsX;
  HIWORD(v254) = v218.i16[2];
  WORD6(v254) = v218.i16[0];
  LOWORD(v255) = primarySourceFeatureChannelOffset;
  WORD1(v255) = *(objc_msgSend_objectAtIndexedSubscript_(v243, v76, 0, v77, v78, v79, v80, v81) + *v101);
  v233 = primarySourceFeatureChannelOffset;
  v114 = &self->_primaryOffset;
  *(&v255 + 4) = self->_primaryOffset.z;
  *&v256 = 0;
  v115 = vmls_s32(v217, v227, vshr_n_u32(vand_s8(context, 0xFFFF0000FFFFLL), 1uLL));
  WORD5(v256) = v115.i16[2];
  WORD4(v256) = v115.i16[0];
  HIDWORD(v256) = 0;
  WORD1(v257) = context.i16[2];
  LOWORD(v257) = context.i16[0];
  WORD3(v257) = v217.i16[2];
  WORD2(v257) = v217.i16[0];
  secondaryStrideInPixelsX = self->_secondaryStrideInPixelsX;
  WORD5(v257) = self->_secondaryStrideInPixelsY;
  WORD4(v257) = secondaryStrideInPixelsX;
  HIWORD(v257) = v227.i16[2];
  WORD6(v257) = v227.i16[0];
  LOWORD(v258[0]) = v235;
  v123 = *(objc_msgSend_objectAtIndexedSubscript_(v110, v117, 0, v118, v119, v120, v121, v122) + *v101);
  v124 = v223;
  v125 = *&v223->var0.var2;
  *&v258[5] = *&v223->var1.var1;
  v126 = *&v223->var0.var0;
  *&v258[3] = v125;
  WORD1(v258[0]) = v123;
  v127 = self->_secondaryOffset.z;
  HIDWORD(v258[0]) = v127;
  *&v258[1] = v126;
  v258[9] = self->_primaryOffset.z;
  *&v258[7] = *&p_primaryOffset->x;
  v128 = self->_destinationFeatureChannelOffset;
  v259 = *&p_secondaryOffset->x;
  *&v260 = v127;
  *(&v260 + 1) = v128;
  *&v261 = v233;
  *(&v261 + 1) = v235;
  v129 = v222;
  if (v223->var1.var2)
  {
    v236 = 0;
    v130 = 0;
    v131 = MEMORY[0x277CD7488];
    v240 = p_secondaryOffset;
    do
    {
      contexta = objc_autoreleasePoolPush();
      v226 = v124->var1.var2;
      v228 = v226 - v130;
      if (v112 >= v226 - v130)
      {
        v112 = v226 - v130;
      }

      v245 = 0;
      v145 = sub_239D123FC(v243, v129, v114->z + v130, v112, &v245 + 4, v142, v143, v144);
      v149 = sub_239D123FC(v110, v129, p_secondaryOffset->z + v130, v112, &v245, v146, v147, v148);
      v156 = v149;
      v244 = HIDWORD(v245);
      if (v85)
      {
        v157 = sub_239D123FC(v85, v129, v124->var0.var2 + v130, v112, &v244, v153, v154, v155);
        p_verbosityLevel = &v224->super._verbosityLevel;
        if (v145)
        {
          v159 = v156 == 0;
        }

        else
        {
          v159 = 1;
        }

        if (v159)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v157 = 0;
        p_verbosityLevel = &v224->super._verbosityLevel;
        if (v145)
        {
          v160 = v149 == 0;
        }

        else
        {
          v160 = 1;
        }

        if (v160)
        {
LABEL_50:
          if (MTLReportFailureTypeEnabled())
          {
            v161 = objc_opt_class();
            v216 = NSStringFromClass(v161);
            MTLReportFailure();
          }

          goto LABEL_54;
        }
      }

      if ((v224->_checkFlags & 0x1000) == 0 && !v157)
      {
        goto LABEL_50;
      }

LABEL_54:
      v247 = v112;
      v248 = v130;
      *&v253 = v145;
      DWORD2(v252[1]) = HIDWORD(v245);
      WORD3(v255) = v112;
      *&v256 = v156;
      DWORD2(v255) = v245;
      HIWORD(v258[0]) = v112;
      *(&v250 + 1) = v157;
      LODWORD(v250) = v244;
      v234 = v112;
      HIWORD(v251) = v112;
      WORD4(v252[0]) = v130 / v231;
      if (v69)
      {
        objc_msgSend_addObject_(v69, v150, v145, v151, v152, v153, v154, v155);
        objc_msgSend_addObject_(v69, v162, v256, v163, v164, v165, v166, v167);
        if (v157)
        {
          objc_msgSend_addObject_(v69, v150, v157, v151, v152, v153, v154, v155);
        }
      }

      if (v226 == v130)
      {
        v129 = v222;
        v168 = 0;
        v110 = v242;
        v169 = v243;
        v170 = p_primaryOffset;
        v112 = v231;
        if (v228 < v231)
        {
          goto LABEL_99;
        }

        goto LABEL_36;
      }

      v171 = 0;
      v172 = v226 + v236;
      if (v231 < v226 + v236)
      {
        v172 = v231;
      }

      if (v172 <= 1)
      {
        v168 = 1;
      }

      else
      {
        v168 = v172;
      }

      do
      {
        v173 = objc_msgSend_objectAtIndexedSubscript_(v243, v150, p_primaryOffset->z + v171 + v130, v151, v152, v153, v154, v155, v216);
        v180 = objc_msgSend_objectAtIndexedSubscript_(v242, v174, v240->z + v171 + v130, v175, v176, v177, v178, v179);
        if (v85)
        {
          v181 = objc_msgSend_objectAtIndexedSubscript_(v85, v150, p_verbosityLevel[17] + v171 + v130, v151, v152, v153, v154, v155);
        }

        else
        {
          v181 = 0;
        }

        v182 = MEMORY[0x277CD7318];
        v183 = v173 + *MEMORY[0x277CD7318];
        v184 = MEMORY[0x277CD72F8];
        v185 = *(v173 + *MEMORY[0x277CD72F8]);
        if (v185 <= 4)
        {
          v186 = 2;
        }

        else
        {
          v186 = 3;
        }

        v187 = MEMORY[0x277CD7300];
        v188 = *(v173 + *MEMORY[0x277CD7300]);
        v189 = &v239[176 * v171];
        *v189 = v173;
        *(v189 + 1) = v183;
        *(v189 + 4) = 0;
        *(v189 + 3) = v185;
        *(v189 + 4) = v186;
        *(v189 + 5) = 0;
        *(v189 + 6) = v188;
        v190 = v180 + *v182;
        v191 = *(v180 + *v184);
        if (v191 <= 4)
        {
          v192 = 2;
        }

        else
        {
          v192 = 3;
        }

        v193 = *(v180 + *v187);
        *(v189 + 7) = v180;
        *(v189 + 8) = v190;
        *(v189 + 18) = 0;
        *(v189 + 10) = v191;
        *(v189 + 11) = v192;
        *(v189 + 12) = 0;
        *(v189 + 13) = v193;
        *(v189 + 21) = 0;
        if (v181)
        {
          v194 = v181 + *v182;
          v195 = *(v181 + *v184);
          if (v195 <= 4)
          {
            v196 = 2;
          }

          else
          {
            v196 = 3;
          }

          v197 = *(v181 + *v187);
          *(v189 + 14) = v181;
          *(v189 + 15) = v194;
          *(v189 + 32) = 0;
          *(v189 + 17) = v195;
          *(v189 + 18) = v196;
          *(v189 + 19) = 0;
          *(v189 + 20) = v197;
          v198 = a7;
          if (!a7)
          {
LABEL_65:
            *(v189 + 21) = 0;
            goto LABEL_66;
          }
        }

        else
        {
          *(v189 + 20) = 0;
          *(v189 + 8) = 0u;
          *(v189 + 9) = 0u;
          *(v189 + 7) = 0u;
          v198 = a7;
          if (!a7)
          {
            goto LABEL_65;
          }
        }

        v199 = objc_msgSend_objectAtIndexedSubscript_(v198, v150, v171 + v130, v151, v152, v153, v154, v155);
        *(v189 + 21) = v199;
        if (v69)
        {
          v200 = v199;
          if (v199)
          {
            if ((*(v199 + *MEMORY[0x277CD7470]) & 1) == 0)
            {
              v201 = *(v199 + *MEMORY[0x277CD7480]);
              if (v201 >= 1)
              {
                v202 = v201 + 1;
                v203 = 72 * v201;
                do
                {
                  v205 = *(v200 + *v131);
                  v206 = v205 + v203;
                  v207 = *(v205 + v203 - 72);
                  if (v207 == 2)
                  {
                    v209 = (v206 - 64);
                    explicit = atomic_load_explicit((v206 - 64), memory_order_acquire);
                    if (!explicit)
                    {
                      MPSAutoTexture::AllocateTexture((v206 - 64), 0);
                      goto LABEL_97;
                    }
                  }

                  else if (v207 == 1)
                  {
                    v208 = v205 + v203;
                    v209 = (v208 - 64);
                    explicit = atomic_load_explicit((v208 - 64), memory_order_acquire);
                    if (!explicit)
                    {
                      MPSAutoBuffer::AllocateBuffer((v208 - 64), 0);
LABEL_97:
                      objc_msgSend_addObject_(v69, v210, atomic_load_explicit(v209, memory_order_acquire), v211, v212, v213, v214, v215);
                      goto LABEL_90;
                    }
                  }

                  else
                  {
                    explicit = 0;
                  }

                  objc_msgSend_addObject_(v69, v150, explicit, v151, v152, v153, v154, v155);
LABEL_90:
                  --v202;
                  v203 -= 72;
                }

                while (v202 > 1);
              }
            }
          }
        }

LABEL_66:
        ++v171;
        v85 = v238;
      }

      while (v171 != v168);
      v129 = v222;
      v110 = v242;
      v169 = v243;
      v170 = p_primaryOffset;
      v112 = v231;
      if (v228 < v231)
      {
LABEL_99:
        bzero(&v239[176 * v168], 176 * (v112 - v234));
      }

LABEL_36:
      (v224->_batchEncode)(v224->_encodeData, v221, v129, &var2);
      objc_msgSend_subarrayWithRange_(v169, v132, v170->z + v130, v234, v133, v134, v135, v136);
      MPSDecrementReadCount();
      v243 = v169;
      v114 = v170;
      p_secondaryOffset = v240;
      objc_msgSend_subarrayWithRange_(v110, v137, v240->z + v130, v234, v138, v139, v140, v141);
      MPSDecrementReadCount();
      objc_autoreleasePoolPop(contexta);
      v130 += v112;
      v124 = v223;
      v236 -= v112;
    }

    while (v130 < v223->var1.var2);
  }

  free(v239);
}

- (void)encodeBatchToCommandEncoder:(id)a3 commandBuffer:(id)a4 primaryImages:(id)a5 secondaryImages:(id)a6 inStates:(id)a7 destinationImages:(id)a8
{
  v10 = a5;
  v12 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.isa + v12) & 1) == 0)
  {
    if (!a4)
    {
      v517 = MTLReportFailureTypeEnabled();
      a4 = 0;
      if (v517)
      {
        v518 = objc_opt_class();
        v556 = NSStringFromClass(v518);
        MTLReportFailure();
        a4 = 0;
      }
    }

    if (!v10)
    {
      v519 = a4;
      v520 = MTLReportFailureTypeEnabled();
      a4 = v519;
      if (v520)
      {
        v521 = objc_opt_class();
        v556 = NSStringFromClass(v521);
        MTLReportFailure();
        a4 = v519;
      }
    }

    if (!a6)
    {
      v522 = a4;
      v523 = MTLReportFailureTypeEnabled();
      a4 = v522;
      if (v523)
      {
        v524 = objc_opt_class();
        v556 = NSStringFromClass(v524);
        MTLReportFailure();
        a4 = v522;
      }
    }

    if (!a8 && (self->_checkFlags & 0x1000) == 0)
    {
      v514 = a4;
      v515 = MTLReportFailureTypeEnabled();
      a4 = v514;
      if (v515)
      {
        v516 = objc_opt_class();
        v556 = NSStringFromClass(v516);
        MTLReportFailure();
        a4 = v514;
      }
    }

    v13 = *MEMORY[0x277CD7348];
    if ((*(&self->super.super.isa + v12) & ~*(&self->super.super.isa + v13)) != 0)
    {
      v525 = a4;
      v526 = MTLReportFailureTypeEnabled();
      a4 = v525;
      if (v526)
      {
        v527 = objc_opt_class();
        v556 = NSStringFromClass(v527);
        v566 = *(&self->super.super.isa + v12) & ~*(&self->super.super.isa + v13);
        MTLReportFailure();
        a4 = v525;
      }
    }

    if (self->_primaryOffset.z < 0)
    {
      v528 = a4;
      v529 = MTLReportFailureTypeEnabled();
      a4 = v528;
      if (v529)
      {
        v530 = objc_opt_class();
        v556 = NSStringFromClass(v530);
        MTLReportFailure();
        a4 = v528;
      }
    }

    if (self->_secondaryOffset.z < 0)
    {
      v531 = a4;
      v532 = MTLReportFailureTypeEnabled();
      a4 = v531;
      if (v532)
      {
        v533 = objc_opt_class();
        v556 = NSStringFromClass(v533);
        MTLReportFailure();
        a4 = v531;
      }
    }
  }

  v574 = a4;
  v14 = objc_msgSend_objectAtIndexedSubscript_(v10, a2, 0, a4, a5, a6, a7, a8, v556, v566);
  v589 = objc_msgSend_width(v14, v15, v16, v17, v18, v19, v20, v21);
  v28 = objc_msgSend_objectAtIndexedSubscript_(v10, v22, 0, v23, v24, v25, v26, v27);
  v590 = objc_msgSend_height(v28, v29, v30, v31, v32, v33, v34, v35);
  v591 = objc_msgSend_count(v10, v36, v37, v38, v39, v40, v41, v42);
  v49 = objc_msgSend_objectAtIndexedSubscript_(a6, v43, 0, v44, v45, v46, v47, v48);
  v57 = objc_msgSend_width(v49, v50, v51, v52, v53, v54, v55, v56);
  v64 = objc_msgSend_objectAtIndexedSubscript_(a6, v58, 0, v59, v60, v61, v62, v63);
  v576 = objc_msgSend_height(v64, v65, v66, v67, v68, v69, v70, v71);
  objc_msgSend_count(a6, v72, v73, v74, v75, v76, v77, v78);
  if (a8)
  {
    v85 = objc_msgSend_objectAtIndexedSubscript_(a8, v79, 0, v80, v81, v82, v83, v84);
    v586 = objc_msgSend_width(v85, v86, v87, v88, v89, v90, v91, v92);
    v99 = objc_msgSend_objectAtIndexedSubscript_(a8, v93, 0, v94, v95, v96, v97, v98);
    v587 = objc_msgSend_height(v99, v100, v101, v102, v103, v104, v105, v106);
    v588 = objc_msgSend_count(a8, v107, v108, v109, v110, v111, v112, v113);
    v114 = *&self->_clipRect.origin.x;
    z = self->_clipRect.origin.z;
    v116 = &v586;
  }

  else
  {
    v586 = 0;
    v587 = 0;
    v588 = 0;
    v114 = vandq_s8(*&self->_primaryOffset.x, vcgtzq_s64(*&self->_primaryOffset.x));
    z = self->_primaryOffset.z & ~(self->_primaryOffset.z >> 63);
    v116 = &v589;
  }

  v583.size = self->_clipRect.size;
  memset(&v585, 0, sizeof(v585));
  v584 = *v116;
  *&v583.origin.x = v114;
  v583.origin.z = z;
  MPSGetEffectiveClipRegion(&v585, &v584, &v583);
  v123 = objc_msgSend_objectAtIndexedSubscript_(v10, v117, 0, v118, v119, v120, v121, v122);
  v580 = objc_msgSend_featureChannels(v123, v124, v125, v126, v127, v128, v129, v130);
  v137 = objc_msgSend_objectAtIndexedSubscript_(a6, v131, 0, v132, v133, v134, v135, v136);
  v578 = objc_msgSend_featureChannels(v137, v138, v139, v140, v141, v142, v143, v144);
  v581 = a6;
  if (a8)
  {
    v152 = objc_msgSend_objectAtIndexedSubscript_(a8, v145, 0, v147, v148, v149, v150, v151);
    v575 = objc_msgSend_featureChannels(v152, v153, v154, v155, v156, v157, v158, v159);
    v571 = v12;
    v582 = v10;
    if (*(&self->super.super.isa + v12))
    {
      goto LABEL_100;
    }
  }

  else
  {
    v575 = 0;
    v571 = v12;
    v582 = v10;
    if (*(&self->super.super.isa + v12))
    {
      goto LABEL_100;
    }
  }

  objc_msgSend_count(v10, v145, v146, v147, v148, v149, v150, v151);
  v160 = v585.size.depth + v585.origin.z;
  if (v160 > objc_msgSend_count(v10, v161, v162, v163, v164, v165, v166, v167) && MTLReportFailureTypeEnabled())
  {
    v534 = objc_opt_class();
    v535 = NSStringFromClass(v534);
    v536 = v585.origin.z;
    depth = v585.size.depth;
    v569 = objc_msgSend_count(v10, v537, v538, v539, v540, v541, v542, v543);
    v557 = v535;
    v567 = v536;
    MTLReportFailure();
  }

  objc_msgSend_count(a6, v168, v169, v170, v171, v172, v173, v174, v557, v567, depth, v569);
  v175 = v585.size.depth + v585.origin.z;
  if (v175 > objc_msgSend_count(a6, v176, v177, v178, v179, v180, v181, v182) && MTLReportFailureTypeEnabled())
  {
    v544 = objc_opt_class();
    v545 = NSStringFromClass(v544);
    v546 = v585.origin.z;
    depth = v585.size.depth;
    v569 = objc_msgSend_count(a6, v547, v548, v549, v550, v551, v552, v553);
    v557 = v545;
    v567 = v546;
    MTLReportFailure();
  }

  if ((self->_checkFlags & 0x40000) == 0)
  {
    if (self->_primaryEdgeMode >= 2 && MTLReportFailureTypeEnabled())
    {
      v554 = objc_opt_class();
      v557 = NSStringFromClass(v554);
      MTLReportFailure();
    }

    if (self->_secondaryEdgeMode >= 2 && MTLReportFailureTypeEnabled())
    {
      v555 = objc_opt_class();
      v557 = NSStringFromClass(v555);
      MTLReportFailure();
    }
  }

  if (v585.size.depth)
  {
    v183 = 0;
    v184 = MEMORY[0x277CD7320];
    do
    {
      v192 = objc_msgSend_objectAtIndexedSubscript_(v10, v145, self->_primaryOffset.z + v183, v147, v148, v149, v150, v151, v557, v567, depth, v569);
      v206 = objc_msgSend_objectAtIndexedSubscript_(v581, v193, self->_secondaryOffset.z + v183, v194, v195, v196, v197, v198);
      if (a8)
      {
        v207 = objc_msgSend_objectAtIndexedSubscript_(a8, v199, v585.origin.z + v183, v201, v202, v203, v204, v205);
        objc_msgSend_numberOfImages(v192, v208, v209, v210, v211, v212, v213, v214);
        if (objc_msgSend_numberOfImages(v192, v215, v216, v217, v218, v219, v220, v221) == 1)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v207 = 0;
        objc_msgSend_numberOfImages(v192, v199, v200, v201, v202, v203, v204, v205);
        if (objc_msgSend_numberOfImages(v192, v229, v230, v231, v232, v233, v234, v235) == 1)
        {
          goto LABEL_30;
        }
      }

      if (MTLReportFailureTypeEnabled())
      {
        v360 = objc_opt_class();
        v558 = NSStringFromClass(v360);
        MTLReportFailure();
      }

LABEL_30:
      objc_msgSend_numberOfImages(v206, v222, v223, v224, v225, v226, v227, v228, v558);
      if (objc_msgSend_numberOfImages(v206, v236, v237, v238, v239, v240, v241, v242) != 1 && MTLReportFailureTypeEnabled())
      {
        v361 = objc_opt_class();
        v559 = NSStringFromClass(v361);
        MTLReportFailure();
      }

      v250 = v589;
      if (v250 == objc_msgSend_width(v192, v243, v244, v245, v246, v247, v248, v249, v559))
      {
        objc_msgSend_height(v192, v251, v252, v253, v254, v255, v256, v257);
      }

      if (v250 != objc_msgSend_width(v192, v251, v252, v253, v254, v255, v256, v257) || (v265 = v590, v265 != objc_msgSend_height(v192, v258, v259, v260, v261, v262, v263, v264)))
      {
        if (MTLReportFailureTypeEnabled())
        {
          v358 = objc_opt_class();
          v560 = NSStringFromClass(v358);
          MTLReportFailure();
        }
      }

      if (v57 == objc_msgSend_width(v206, v266, v267, v268, v269, v270, v271, v272, v560))
      {
        objc_msgSend_height(v206, v273, v274, v275, v276, v277, v278, v279);
      }

      if ((v57 != objc_msgSend_width(v206, v273, v274, v275, v276, v277, v278, v279) || v576 != objc_msgSend_height(v206, v280, v281, v282, v283, v284, v285, v286)) && MTLReportFailureTypeEnabled())
      {
        v359 = objc_opt_class();
        v561 = NSStringFromClass(v359);
        MTLReportFailure();
      }

      objc_msgSend_featureChannels(v192, v287, v288, v289, v290, v291, v292, v293, v561);
      if (v580 != objc_msgSend_featureChannels(v192, v294, v295, v296, v297, v298, v299, v300) && MTLReportFailureTypeEnabled())
      {
        v362 = objc_opt_class();
        v562 = NSStringFromClass(v362);
        MTLReportFailure();
      }

      objc_msgSend_featureChannels(v206, v301, v302, v303, v304, v305, v306, v307, v562);
      if (v578 != objc_msgSend_featureChannels(v206, v308, v309, v310, v311, v312, v313, v314) && MTLReportFailureTypeEnabled())
      {
        v363 = objc_opt_class();
        v557 = NSStringFromClass(v363);
        MTLReportFailure();
      }

      if ((v192[*v184 + 56] & 1) != 0 && !*&v192[*MEMORY[0x277CD7490]] && MTLReportFailureTypeEnabled())
      {
        v384 = objc_opt_class();
        v385 = NSStringFromClass(v384);
        v567 = NSStringFromSelector(a2);
        depth = objc_msgSend_debugDescription(v192, v386, v387, v388, v389, v390, v391, v392);
        v557 = v385;
        MTLReportFailure();
        v316 = &v192[*v184];
        if ((v316[56] & 2) == 0)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v316 = &v192[*v184];
        if ((v316[56] & 2) == 0)
        {
          goto LABEL_45;
        }
      }

      do
      {
        v316 = *(v316 + 5);
      }

      while ((v316[56] & 2) != 0);
LABEL_45:
      atomic_load_explicit(v316, memory_order_acquire);
        ;
      }

      if (!atomic_load_explicit(i, memory_order_acquire) && MTLReportFailureTypeEnabled())
      {
        v364 = objc_opt_class();
        v365 = NSStringFromClass(v364);
        v567 = NSStringFromSelector(a2);
        depth = objc_msgSend_debugDescription(v192, v366, v367, v368, v369, v370, v371, v372);
        v557 = v365;
        MTLReportFailure();
      }

      if ((v206[*v184 + 56] & 1) != 0 && !*&v206[*MEMORY[0x277CD7490]] && MTLReportFailureTypeEnabled())
      {
        v393 = objc_opt_class();
        v394 = NSStringFromClass(v393);
        v567 = NSStringFromSelector(a2);
        depth = objc_msgSend_debugDescription(v192, v395, v396, v397, v398, v399, v400, v401);
        v557 = v394;
        MTLReportFailure();
        for (j = &v206[*v184]; (j[56] & 2) != 0; j = *(j + 5))
        {
LABEL_51:
          ;
        }
      }

      else
      {
        j = &v206[*v184];
        if ((j[56] & 2) != 0)
        {
          goto LABEL_51;
        }
      }

      atomic_load_explicit(j, memory_order_acquire);
        ;
      }

      if (!atomic_load_explicit(k, memory_order_acquire) && MTLReportFailureTypeEnabled())
      {
        v373 = objc_opt_class();
        v374 = NSStringFromClass(v373);
        v567 = NSStringFromSelector(a2);
        depth = objc_msgSend_debugDescription(v206, v375, v376, v377, v378, v379, v380, v381);
        v557 = v374;
        MTLReportFailure();
      }

      v10 = v582;
      if ((self->_checkFlags & 0x40000) == 0)
      {
        if (self->_primaryEdgeMode >= 2 && MTLReportFailureTypeEnabled())
        {
          v402 = objc_opt_class();
          v557 = NSStringFromClass(v402);
          MTLReportFailure();
        }

        if (self->_secondaryEdgeMode >= 2 && MTLReportFailureTypeEnabled())
        {
          v403 = objc_opt_class();
          v557 = NSStringFromClass(v403);
          MTLReportFailure();
        }
      }

      if (v207)
      {
        if ((v207[*v184 + 56] & 1) != 0 && !*&v207[*MEMORY[0x277CD7490]] && MTLReportFailureTypeEnabled())
        {
          v404 = objc_opt_class();
          v405 = NSStringFromClass(v404);
          v567 = NSStringFromSelector(a2);
          depth = objc_msgSend_debugDescription(v207, v406, v407, v408, v409, v410, v411, v412);
          v557 = v405;
          v10 = v582;
          MTLReportFailure();
        }

        objc_msgSend_numberOfImages(v207, v145, v315, v147, v148, v149, v150, v151, v557);
        if (objc_msgSend_numberOfImages(v207, v320, v321, v322, v323, v324, v325, v326) != 1 && MTLReportFailureTypeEnabled())
        {
          v383 = objc_opt_class();
          v563 = NSStringFromClass(v383);
          MTLReportFailure();
        }

        v334 = v586;
        if (v334 == objc_msgSend_width(v207, v327, v328, v329, v330, v331, v332, v333, v563))
        {
          objc_msgSend_height(v207, v335, v336, v337, v338, v339, v340, v341);
        }

        if (v334 != objc_msgSend_width(v207, v335, v336, v337, v338, v339, v340, v341) || (v349 = v587, v349 != objc_msgSend_height(v207, v342, v343, v344, v345, v346, v347, v348)))
        {
          if (MTLReportFailureTypeEnabled())
          {
            v357 = objc_opt_class();
            v564 = NSStringFromClass(v357);
            MTLReportFailure();
          }
        }

        objc_msgSend_featureChannels(v207, v350, v351, v352, v353, v354, v355, v356, v564);
        if (v575 != objc_msgSend_featureChannels(v207, v185, v186, v187, v188, v189, v190, v191) && MTLReportFailureTypeEnabled())
        {
          v382 = objc_opt_class();
          v557 = NSStringFromClass(v382);
          MTLReportFailure();
        }
      }

      ++v183;
    }

    while (v183 < v585.size.depth);
  }

LABEL_100:
  v413 = v581;
  if (!v10 || !v581 || !v585.size.height || !v585.size.width || !v585.size.depth)
  {
    return;
  }

  batchEncode = self->_batchEncode;
  if (!batchEncode)
  {
    goto LABEL_109;
  }

  checkFlags = self->_checkFlags;
  if (((*(**(&self->super.super.isa + *MEMORY[0x277CD7350]) + 56))(*(&self->super.super.isa + *MEMORY[0x277CD7350])) & 1) == 0 && (checkFlags & 0x10000) == 0)
  {
    LOBYTE(batchEncode) = v585.size.depth == 0;
LABEL_109:
    v579 = self->_clipRect.origin.z;
    v577 = self->_clipRect.size.depth;
    v416 = self->_primaryOffset.z;
    v417 = self->_secondaryOffset.z;
    self->_clipRect.origin.z = 0;
    self->_clipRect.size.depth = 1;
    self->_primaryOffset.z = 0;
    self->_secondaryOffset.z = 0;
    if ((batchEncode & 1) == 0)
    {
      if (a8)
      {
        if (a7)
        {
          v418 = 0;
          do
          {
            v419 = objc_msgSend_objectAtIndexedSubscript_(v582, v145, v416 + v418, v147, v148, v149, v150, v151, v557);
            v426 = objc_msgSend_objectAtIndexedSubscript_(v413, v420, v417 + v418, v421, v422, v423, v424, v425);
            v433 = objc_msgSend_objectAtIndexedSubscript_(a7, v427, v418, v428, v429, v430, v431, v432);
            v440 = objc_msgSend_objectAtIndexedSubscript_(a8, v434, v418 + v585.origin.z, v435, v436, v437, v438, v439);
            v441 = v433;
            v413 = v581;
            objc_msgSend_encodeToCommandEncoder_commandBuffer_primaryImage_secondaryImage_inState_destinationImage_subBatchIndex_batchSize_(self, v442, a3, v574, v419, v426, v441, v440, v418++, v585.size.depth);
          }

          while (v418 < v585.size.depth);
        }

        else
        {
          v497 = 0;
          do
          {
            v498 = objc_msgSend_objectAtIndexedSubscript_(v582, v145, v416 + v497, v147, v148, v149, v150, v151, v557);
            v505 = objc_msgSend_objectAtIndexedSubscript_(v581, v499, v417 + v497, v500, v501, v502, v503, v504);
            v512 = objc_msgSend_objectAtIndexedSubscript_(a8, v506, v497 + v585.origin.z, v507, v508, v509, v510, v511);
            objc_msgSend_encodeToCommandEncoder_commandBuffer_primaryImage_secondaryImage_inState_destinationImage_subBatchIndex_batchSize_(self, v513, a3, v574, v498, v505, 0, v512, v497++, v585.size.depth);
          }

          while (v497 < v585.size.depth);
        }
      }

      else
      {
        v443 = 0;
        v444 = a7;
        for (m = objc_msgSend_objectAtIndexedSubscript_(v582, v145, v416, v147, v148, v149, v150, v151, v557); ; m = objc_msgSend_objectAtIndexedSubscript_(v582, v454, v416 + v443, v455, v456, v457, v458, v459, v565))
        {
          v460 = m;
          v467 = objc_msgSend_objectAtIndexedSubscript_(v581, v446, v417 + v443, v447, v448, v449, v450, v451);
          if (v444)
          {
            v452 = objc_msgSend_objectAtIndexedSubscript_(v444, v461, v443, v462, v463, v464, v465, v466);
            objc_msgSend_encodeToCommandEncoder_commandBuffer_primaryImage_secondaryImage_inState_destinationImage_subBatchIndex_batchSize_(self, v453, a3, v574, v460, v467, v452, 0, v443, v585.size.depth);
          }

          else
          {
            objc_msgSend_encodeToCommandEncoder_commandBuffer_primaryImage_secondaryImage_inState_destinationImage_subBatchIndex_batchSize_(self, v461, a3, v574, v460, v467, 0, 0, v443, v585.size.depth);
          }

          ++v443;
          v444 = a7;
          if (v443 >= v585.size.depth)
          {
            break;
          }
        }
      }
    }

    self->_primaryOffset.z = v416;
    self->_secondaryOffset.z = v417;
    self->_clipRect.origin.z = v579;
    self->_clipRect.size.depth = v577;
    return;
  }

  if (a3)
  {
    v583 = v585;
    objc_msgSend_encodeInternalBatchToCommandEncoder_commandBuffer_primaryImages_secondaryImages_inStates_destinationImages_clipRect_(self, v145, a3, v574, v10, v581, a7, a8, &v583);
  }

  else
  {
    v468 = objc_alloc(MEMORY[0x277CD7210]);
    v480 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v468, v469, v574, 0, v470, v471, v472, v473);
    v584.width = v480;
    v584.height = self;
    if ((*(&self->super.super.isa + v571) & 0x18) != 0)
    {
      v481 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
      if (v481 || (v482 = objc_opt_class(), v483 = NSStringFromClass(v482), objc_msgSend_setLabel_(self, v484, v483, v485, v486, v487, v488, v489), (v481 = v483) != 0))
      {
        objc_msgSend_setLabel_(v480, v474, v481, v475, v476, v477, v478, v479, v557);
      }
    }

    v583 = v585;
    objc_msgSend_encodeInternalBatchToCommandEncoder_commandBuffer_primaryImages_secondaryImages_inStates_destinationImages_clipRect_(self, v474, v480, v574, v10, v581, a7, a8, &v583, v567, depth, v569);
    objc_msgSend_endEncoding(v480, v490, v491, v492, v493, v494, v495, v496);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSCNNBinaryKernel;
  [(MPSKernel *)&v3 dealloc];
}

- (MPSImageDescriptor)destinationImageDescriptorForSourceImages:(NSArray *)sourceImages sourceStates:(NSArray *)sourceStates
{
  if (!self->_padding && MTLReportFailureTypeEnabled())
  {
    v39 = objc_opt_class();
    v41 = NSStringFromClass(v39);
    MTLReportFailure();
  }

  v11 = objc_msgSend_paddingMethod(self->_padding, a2, sourceImages, sourceStates, v4, v5, v6, v7, v41);
  v13 = objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_paddingMethod_primaryOffset_secondaryOffset_kernelOffset_(self, v12, sourceImages, sourceStates, v11, &self->_primaryOffset, &self->_secondaryOffset, 0);
  v21 = objc_msgSend_count(sourceStates, v14, v15, v16, v17, v18, v19, v20);
  if (v21)
  {
    v28 = v21;
    for (i = 0; i != v28; ++i)
    {
      v30 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v22, i, v23, v24, v25, v26, v27);
      v13 = objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_forKernel_suggestedDescriptor_(v30, v31, sourceImages, sourceStates, self, v13, v32, v33);
    }
  }

  if ((v11 & 0x4000) == 0)
  {
    return v13;
  }

  objc_opt_respondsToSelector();
  if ((objc_opt_respondsToSelector() & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    v40 = objc_opt_class();
    NSStringFromClass(v40);
    MTLReportFailure();
  }

  padding = self->_padding;

  return objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_forKernel_suggestedDescriptor_(padding, v35, sourceImages, sourceStates, self, v13, v36, v37);
}

- (id)destinationImageDescriptorForSourceImages:(id)a3 sourceStates:(id)a4 paddingMethod:(unint64_t)a5 primaryOffset:(id *)a6 secondaryOffset:(id *)a7 kernelOffset:(id *)a8
{
  v279 = a5;
  objc_msgSend_count(a3, a2, a3, a4, a5, a6, a7, a8);
  if (objc_msgSend_count(a3, v10, v11, v12, v13, v14, v15, v16) <= 1 && MTLReportFailureTypeEnabled())
  {
    v273 = objc_opt_class();
    v274 = NSStringFromClass(v273);
    MTLReportFailure();
  }

  primaryKernelHeight = self->_primaryKernelHeight;
  primaryKernelWidth = self->_primaryKernelWidth;
  v23 = objc_msgSend_objectAtIndexedSubscript_(a3, v17, 0, v18, v19, v20, v21, v22, v274);
  primarySourceFeatureChannelOffset = self->_primarySourceFeatureChannelOffset;
  v31 = MEMORY[0x277CD72F8];
  v32 = *(v23 + *MEMORY[0x277CD72F8]);
  v33 = v32 >= primarySourceFeatureChannelOffset;
  v34 = v32 - primarySourceFeatureChannelOffset;
  if (!v33)
  {
    v34 = 0;
  }

  if (v34 >= self->_primarySourceFeatureChannelMaxCount)
  {
    primarySourceFeatureChannelMaxCount = self->_primarySourceFeatureChannelMaxCount;
  }

  else
  {
    primarySourceFeatureChannelMaxCount = v34;
  }

  v36 = objc_msgSend_objectAtIndexedSubscript_(a3, v24, 1, v25, v26, v27, v28, v29);
  secondarySourceFeatureChannelOffset = self->_secondarySourceFeatureChannelOffset;
  v38 = *(v36 + *v31);
  v33 = v38 >= secondarySourceFeatureChannelOffset;
  v39 = v38 - secondarySourceFeatureChannelOffset;
  if (!v33)
  {
    v39 = 0;
  }

  if (v39 >= self->_secondarySourceFeatureChannelMaxCount)
  {
    secondarySourceFeatureChannelMaxCount = self->_secondarySourceFeatureChannelMaxCount;
  }

  else
  {
    secondarySourceFeatureChannelMaxCount = v39;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (primarySourceFeatureChannelMaxCount <= secondarySourceFeatureChannelMaxCount)
  {
    v48 = secondarySourceFeatureChannelMaxCount;
  }

  else
  {
    v48 = primarySourceFeatureChannelMaxCount;
  }

  if ((isKindOfClass & 1) == 0)
  {
    v48 = primarySourceFeatureChannelMaxCount;
  }

  v292 = v48;
  v49 = objc_msgSend_objectAtIndexedSubscript_(a3, v42, 0, v43, v44, v45, v46, v47);
  v50 = MEMORY[0x277CD7330];
  v51 = *(v49 + *MEMORY[0x277CD7330]);
  v58 = objc_msgSend_objectAtIndexedSubscript_(a3, v52, 1, v53, v54, v55, v56, v57);
  if (v51 <= *(v58 + *v50))
  {
    v65 = *(v58 + *v50);
  }

  else
  {
    v65 = v51;
  }

  v66 = objc_msgSend_objectAtIndexedSubscript_(a3, v59, 0, v60, v61, v62, v63, v64);
  v67 = MEMORY[0x277CD7308];
  v68 = *(v66 + *MEMORY[0x277CD7308]);
  v75 = objc_msgSend_objectAtIndexedSubscript_(a3, v69, 1, v70, v71, v72, v73, v74);
  if (v68 <= *(v75 + *v67))
  {
    v68 = *(v75 + *v67);
  }

  v82 = objc_msgSend_objectAtIndexedSubscript_(a3, v76, 0, v77, v78, v79, v80, v81);
  v83 = MEMORY[0x277CD7310];
  v84 = *(v82 + *MEMORY[0x277CD7310]);
  v98 = *(objc_msgSend_objectAtIndexedSubscript_(a3, v85, 1, v86, v87, v88, v89, v90) + *v83);
  if (v84 > v98)
  {
    v98 = v84;
  }

  v291 = v98;
  if (self->_supportsBroadcasting)
  {
    v99 = objc_msgSend_objectAtIndexedSubscript_(a3, v91, 0, v93, v94, v95, v96, v97);
    v100 = MEMORY[0x277CD7330];
    v101.i32[0] = *(v99 + *MEMORY[0x277CD7330]);
    v286 = v101;
    v108 = objc_msgSend_objectAtIndexedSubscript_(a3, v102, 0, v103, v104, v105, v106, v107);
    v109 = v286;
    v109.i32[1] = *(v108 + *v67);
    v109.i32[2] = primarySourceFeatureChannelMaxCount;
    v287 = v109;
    v116.i32[0] = *(objc_msgSend_objectAtIndexedSubscript_(a3, v110, 1, v111, v112, v113, v114, v115) + *v100);
    v284 = v116;
    v123 = objc_msgSend_objectAtIndexedSubscript_(a3, v117, 1, v118, v119, v120, v121, v122);
    v131 = v284;
    v131.i32[1] = *(v123 + *v67);
    v131.i32[2] = secondarySourceFeatureChannelMaxCount;
    v132.i64[0] = 0x200000002;
    v132.i64[1] = 0x200000002;
    v133 = vcgtq_s32(v132, v287);
    v134 = vcgtq_s32(v132, v131);
    v135 = vandq_s8(vcgeq_s32(v131, v132), v133);
    v136.i64[0] = 0x100000001;
    v136.i64[1] = 0x100000001;
    v137 = vaddq_s32(v135, v136).u64[0];
    v138 = secondarySourceFeatureChannelMaxCount;
    if (v135.i32[0])
    {
      self->_primaryStrideInPixelsX = v137;
    }

    v139 = vbicq_s8(v134, v133);
    if (v135.i32[1])
    {
      self->_primaryStrideInPixelsY = SHIDWORD(v137);
    }

    v140 = vaddq_s32(v139, v136).u64[0];
    if (v139.i32[0])
    {
      self->_secondaryStrideInPixelsX = v140;
    }

    if (v139.i32[1])
    {
      self->_secondaryStrideInPixelsY = SHIDWORD(v140);
    }

    v141 = objc_msgSend_count(a3, v124, v125, v126, v127, v128, v129, v130);
    if (v141 >= 2)
    {
      v142 = v141;
      v143 = 1;
      v144 = MEMORY[0x277CD7378];
      do
      {
        if (v65 == 1 || *(objc_msgSend_objectAtIndexedSubscript_(a3, v91, v143, v93, v94, v95, v96, v97) + *v100) == 1)
        {
          v65 = *(objc_msgSend_objectAtIndexedSubscript_(a3, v91, v143, v93, v94, v95, v96, v97, v275) + *v100);
        }

        else if ((*(&self->super.super.isa + *v144) & 1) == 0)
        {
          objc_msgSend_objectAtIndexedSubscript_(a3, v91, v143, v93, v94, v95, v96, v97);
          if (v65 != *(objc_msgSend_objectAtIndexedSubscript_(a3, v152, v143, v153, v154, v155, v156, v157) + *v100))
          {
            if (MTLReportFailureTypeEnabled())
            {
              v158 = objc_opt_class();
              v275 = NSStringFromClass(v158);
              MTLReportFailure();
            }
          }
        }

        if (v68 == 1 || *(objc_msgSend_objectAtIndexedSubscript_(a3, v91, v143, v93, v94, v95, v96, v97) + *v67) == 1)
        {
          v68 = *(objc_msgSend_objectAtIndexedSubscript_(a3, v91, v143, v93, v94, v95, v96, v97, v275) + *v67);
        }

        else if ((*(&self->super.super.isa + *v144) & 1) == 0)
        {
          objc_msgSend_objectAtIndexedSubscript_(a3, v91, v143, v93, v94, v95, v96, v97);
          if (v65 != *(objc_msgSend_objectAtIndexedSubscript_(a3, v159, v143, v160, v161, v162, v163, v164) + *v100))
          {
            if (MTLReportFailureTypeEnabled())
            {
              v165 = objc_opt_class();
              v275 = NSStringFromClass(v165);
              MTLReportFailure();
            }
          }
        }

        if (v291 == 1 || *(objc_msgSend_objectAtIndexedSubscript_(a3, v91, v143, v93, v94, v95, v96, v97) + *MEMORY[0x277CD7310]) == 1)
        {
          v291 = *(objc_msgSend_objectAtIndexedSubscript_(a3, v91, v143, v93, v94, v95, v96, v97, v275) + *MEMORY[0x277CD7310]);
        }

        else if ((*(&self->super.super.isa + *v144) & 1) == 0)
        {
          objc_msgSend_objectAtIndexedSubscript_(a3, v91, v143, v93, v94, v95, v96, v97);
          if (v65 != *(objc_msgSend_objectAtIndexedSubscript_(a3, v166, v143, v167, v168, v169, v170, v171) + *v100))
          {
            if (MTLReportFailureTypeEnabled())
            {
              v172 = objc_opt_class();
              v275 = NSStringFromClass(v172);
              MTLReportFailure();
            }
          }
        }

        if (v292 == 1)
        {
          v292 = v138;
          if (v143 != 1)
          {
            v292 = *(objc_msgSend_objectAtIndexedSubscript_(a3, v91, v143, v93, v94, v95, v96, v97) + *MEMORY[0x277CD72F8]);
          }
        }

        else if ((*(&self->super.super.isa + *v144) & 1) == 0)
        {
          objc_msgSend_objectAtIndexedSubscript_(a3, v91, v143, v93, v94, v95, v96, v97);
          if (v65 != *(objc_msgSend_objectAtIndexedSubscript_(a3, v145, v143, v146, v147, v148, v149, v150) + *v100))
          {
            if (MTLReportFailureTypeEnabled())
            {
              v151 = objc_opt_class();
              v275 = NSStringFromClass(v151);
              MTLReportFailure();
            }
          }
        }

        ++v143;
      }

      while (v142 != v143);
    }
  }

  else
  {
    v100 = MEMORY[0x277CD7330];
  }

  if (self->_primaryStrideInPixelsX <= self->_secondaryStrideInPixelsX)
  {
    secondaryStrideInPixelsX = self->_secondaryStrideInPixelsX;
  }

  else
  {
    secondaryStrideInPixelsX = self->_primaryStrideInPixelsX;
  }

  if (self->_primaryStrideInPixelsY <= self->_secondaryStrideInPixelsY)
  {
    secondaryStrideInPixelsY = self->_secondaryStrideInPixelsY;
  }

  else
  {
    secondaryStrideInPixelsY = self->_primaryStrideInPixelsY;
  }

  v175 = v279;
  v176 = (((v279 >> 4) & 3) - 1);
  v177 = (primaryKernelWidth - 1) * v176;
  if (!self->_isBackwards)
  {
    v181 = a7;
    v182 = a8;
    v183 = a4;
    if (secondaryStrideInPixelsX)
    {
      v184 = (((v65 + v177) & ~((v65 + v177) >> 63)) + secondaryStrideInPixelsX - 1) / secondaryStrideInPixelsX;
      if (v184 <= 1)
      {
        v184 = 1;
      }

      v288 = v184;
      if (secondaryStrideInPixelsY)
      {
        goto LABEL_80;
      }
    }

    else
    {
      v288 = 1;
      if (secondaryStrideInPixelsY)
      {
LABEL_80:
        v180 = (((v68 + (primaryKernelHeight - 1) * v176) & ~((v68 + (primaryKernelHeight - 1) * v176) >> 63)) + secondaryStrideInPixelsY - 1) / secondaryStrideInPixelsY;
        goto LABEL_83;
      }
    }

    v180 = 0;
    goto LABEL_83;
  }

  v178 = v177 + secondaryStrideInPixelsX * (v65 - 1);
  if ((v178 + 1) > 1)
  {
    v179 = v178 + 1;
  }

  else
  {
    v179 = 1;
  }

  v288 = v179;
  v180 = (secondaryStrideInPixelsY * (v68 - 1) + (primaryKernelHeight - 1) * v176 + 1) & ~((secondaryStrideInPixelsY * (v68 - 1) + (primaryKernelHeight - 1) * v176 + 1) >> 63);
  v181 = a7;
  v182 = a8;
  v183 = a4;
LABEL_83:
  v276 = secondaryStrideInPixelsY;
  v277 = v279 & 3;
  if (v180 <= 1)
  {
    v180 = 1;
  }

  v285 = v180;
  if (v183)
  {
    v185 = objc_msgSend_count(v183, v91, v92, v93, v94, v95, v96, v97);
    if (v185)
    {
      v186 = v185;
      v187 = 0;
      while (1)
      {
        v188 = objc_msgSend_objectAtIndexedSubscript_(a4, v91, v187, v93, v94, v95, v96, v97, v275);
        if (objc_msgSend_conformsToProtocol_(v188, v189, &unk_284D125E0, v190, v191, v192, v193, v194))
        {
          break;
        }

        if (v186 == ++v187)
        {
          goto LABEL_92;
        }
      }

      v195 = objc_msgSend_objectAtIndexedSubscript_(a4, v91, v187, v93, v94, v95, v96, v97);
      v288 = objc_msgSend_sourceWidth(v195, v196, v197, v198, v199, v200, v201, v202);
      v285 = objc_msgSend_sourceHeight(v195, v203, v204, v205, v206, v207, v208, v209);
LABEL_92:
      v181 = a7;
      v182 = a8;
    }

    v175 = v279;
  }

  v210 = v175 & 4;
  v290 = v175 & 8;
  if (a6 | v182)
  {
    v217 = v65;
    if (*(objc_msgSend_objectAtIndexedSubscript_(a3, v91, 0, v93, v94, v95, v96, v97) + *v100) != 1)
    {
      v217 = *(objc_msgSend_objectAtIndexedSubscript_(a3, v211, 0, v212, v213, v214, v215, v216) + *v100);
    }

    v218 = objc_msgSend_objectAtIndexedSubscript_(a3, v211, 0, v212, v213, v214, v215, v216, v275);
    v219 = v68;
    if (*(v218 + *v67) != 1)
    {
      v219 = *(objc_msgSend_objectAtIndexedSubscript_(a3, v91, 0, v93, v94, v95, v96, v97) + *v67);
    }

    if (!a6)
    {
      v223 = 0;
      v224 = 0;
      v225 = a8;
      if (!a8)
      {
        goto LABEL_138;
      }

      goto LABEL_137;
    }

    v220 = primaryKernelHeight >> 1;
    if (self->_isBackwards)
    {
      v221 = 1;
    }

    else
    {
      v221 = v276;
    }

    if (self->_isBackwards)
    {
      v219 = (v219 - 1) * v276 + 1;
    }

    v222 = primaryKernelHeight + v221 * (v285 - 1);
    if ((v279 & 3) > 1)
    {
      if (v277 != 2)
      {
        v220 = 0;
        if (self->_isBackwards)
        {
          goto LABEL_114;
        }

        goto LABEL_119;
      }

      v220 = v219 + v220 - v222;
    }

    else if ((v279 & 3) == 0)
    {
      v220 -= (((v290 >> 3) ^ 1) - v219 + v222) >> 1;
      if (!self->_isBackwards)
      {
        goto LABEL_119;
      }

LABEL_114:
      if (v276 <= 1)
      {
        v226 = 1;
      }

      else
      {
        v226 = v276;
      }

      v227 = v220 % v226;
      v228 = (v220 % v226) >> 63;
      v220 = v228 + v220 / v226;
      v224 = (v228 & v226) + v227;
      v229 = 1;
LABEL_120:
      v230 = primaryKernelWidth >> 1;
      if (self->_isBackwards)
      {
        v231 = (v217 - 1) * secondaryStrideInPixelsX + 1;
      }

      else
      {
        v231 = v217;
      }

      v232 = v229 * (v288 - 1) + primaryKernelWidth;
      if ((v279 & 3) > 1)
      {
        v225 = a8;
        if (v277 != 2)
        {
          v230 = 0;
          if (!self->_isBackwards)
          {
            goto LABEL_136;
          }

          goto LABEL_130;
        }

        v230 = v231 + v230 - v232;
      }

      else
      {
        v225 = a8;
        if ((v279 & 3) == 0)
        {
          v230 -= (((v210 >> 2) ^ 1) - v231 + v232) >> 1;
          if (!self->_isBackwards)
          {
LABEL_136:
            v223 = 0;
            a6->var0 = v230;
            a6->var1 = v220;
            a6->var2 = 0;
            if (!v225)
            {
              goto LABEL_138;
            }

            goto LABEL_137;
          }

LABEL_130:
          if (secondaryStrideInPixelsX <= 1)
          {
            v233 = 1;
          }

          else
          {
            v233 = secondaryStrideInPixelsX;
          }

          v234 = v230 % v233;
          v235 = (v230 % v233) >> 63;
          v236 = v235 + v230 / v233;
          v223 = (v235 & v233) + v234;
          a6->var0 = v236;
          a6->var1 = v220;
          a6->var2 = 0;
          if (!v225)
          {
            goto LABEL_138;
          }

LABEL_137:
          v225->var0 = v223;
          v225->var1 = v224;
          v225->var2 = 0;
          goto LABEL_138;
        }
      }

      if (!self->_isBackwards)
      {
        goto LABEL_136;
      }

      goto LABEL_130;
    }

    if (self->_isBackwards)
    {
      goto LABEL_114;
    }

LABEL_119:
    v224 = 0;
    v229 = secondaryStrideInPixelsX;
    goto LABEL_120;
  }

LABEL_138:
  if (!v181)
  {
    goto LABEL_177;
  }

  if (*(objc_msgSend_objectAtIndexedSubscript_(a3, v91, 1, v93, v94, v95, v96, v97) + *v100) != 1)
  {
    v65 = *(objc_msgSend_objectAtIndexedSubscript_(a3, v237, 1, v238, v239, v240, v241, v242) + *v100);
  }

  if (*(objc_msgSend_objectAtIndexedSubscript_(a3, v237, 1, v238, v239, v240, v241, v242, v275) + *v67) != 1)
  {
    v68 = *(objc_msgSend_objectAtIndexedSubscript_(a3, v91, 1, v93, v94, v95, v96, v97) + *v67);
  }

  isBackwards = self->_isBackwards;
  v244 = primaryKernelWidth >> 1;
  if (self->_isBackwards)
  {
    v245 = 1;
  }

  else
  {
    v245 = secondaryStrideInPixelsX;
  }

  if (self->_isBackwards)
  {
    v246 = (v65 - 1) * secondaryStrideInPixelsX + 1;
  }

  else
  {
    v246 = v65;
  }

  v247 = primaryKernelWidth + v245 * (v288 - 1);
  if ((v279 & 3) > 1)
  {
    v248 = v276;
    if (v277 != 2)
    {
      v244 = 0;
      if (self->_isBackwards)
      {
        goto LABEL_156;
      }

      goto LABEL_161;
    }

    v244 = v246 + v244 - v247;
LABEL_155:
    if (self->_isBackwards)
    {
      goto LABEL_156;
    }

LABEL_161:
    v250 = v248;
    goto LABEL_162;
  }

  v248 = v276;
  if ((v279 & 3) != 0)
  {
    goto LABEL_155;
  }

  v244 -= (((v210 >> 2) ^ 1) - v246 + v247) >> 1;
  if (!self->_isBackwards)
  {
    goto LABEL_161;
  }

LABEL_156:
  if (secondaryStrideInPixelsX <= 1)
  {
    v249 = 1;
  }

  else
  {
    v249 = secondaryStrideInPixelsX;
  }

  v244 = v244 / v249 - (v244 < v244 / v249 * v249);
  v250 = 1;
LABEL_162:
  v181->var0 = v244;
  v251 = primaryKernelHeight >> 1;
  if (isBackwards)
  {
    v252 = (v68 - 1) * v248 + 1;
  }

  else
  {
    v252 = v68;
  }

  v253 = v250 * (v285 - 1) + primaryKernelHeight;
  if ((v279 & 3) > 1)
  {
    if (v277 != 2)
    {
      v251 = 0;
      if (!isBackwards)
      {
        goto LABEL_176;
      }

      goto LABEL_172;
    }

    v251 = v252 + v251 - v253;
  }

  else if ((v279 & 3) == 0)
  {
    v251 -= (((v290 >> 3) ^ 1) - v252 + v253) >> 1;
    if (!isBackwards)
    {
      goto LABEL_176;
    }

LABEL_172:
    if (v248 <= 1)
    {
      v254 = 1;
    }

    else
    {
      v254 = v248;
    }

    v251 = v251 / v254 - (v251 < v251 / v254 * v254);
    goto LABEL_176;
  }

  if (isBackwards)
  {
    goto LABEL_172;
  }

LABEL_176:
  v181->var1 = v251;
  v181->var2 = 0;
LABEL_177:
  v255 = objc_msgSend_objectAtIndexedSubscript_(a3, v91, 0, v93, v94, v95, v96, v97, v275);
  v256 = MEMORY[0x277CD7318];
  v257 = (*(v255 + *MEMORY[0x277CD7318]) >> 59) & 7;
  v264 = objc_msgSend_objectAtIndexedSubscript_(a3, v258, 1, v259, v260, v261, v262, v263);
  v266 = (*(v264 + *v256) >> 59) & 7;
  if (v266 <= 5)
  {
    v267 = byte_239D91490[v266];
    if (v257 <= 5)
    {
      goto LABEL_179;
    }
  }

  else
  {
    v267 = 0;
    if (v257 <= 5)
    {
LABEL_179:
      v268 = byte_239D91490[v257];
      goto LABEL_182;
    }
  }

  v268 = 0;
LABEL_182:
  if (v291 <= 1)
  {
    v269 = 1;
  }

  else
  {
    v269 = v291;
  }

  if (v267 <= v268)
  {
    v270 = (*(v264 + *v256) >> 59) & 7;
  }

  else
  {
    v270 = v257;
  }

  v271 = MEMORY[0x277CD7220];

  return objc_msgSend_imageDescriptorWithChannelFormat_width_height_featureChannels_numberOfImages_usage_(v271, v265, v270, v288, v285, v292, v269, 19);
}

- (MPSState)resultStateForPrimaryImage:(MPSImage *)primaryImage secondaryImage:(MPSImage *)secondaryImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImage *)destinationImage
{
  v11 = [MPSNNBinaryGradientState alloc];
  v20 = objc_msgSend_initWithResource_(v11, v12, 0, v13, v14, v15, v16, v17);
  if (v20)
  {
    objc_msgSend_copyToBinaryGradientState_primaryImage_secondaryImage_sourceStates_destinationImage_(self, v18, v20, primaryImage, secondaryImage, sourceStates, destinationImage, v19);
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

- (MPSStateBatch)resultStateBatchForPrimaryImage:(MPSImageBatch *)primaryImage secondaryImage:(MPSImageBatch *)secondaryImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImageBatch *)destinationImage
{
  v19 = objc_msgSend_count(primaryImage, a2, primaryImage, secondaryImage, sourceStates, destinationImage, v6, v7);
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (!primaryImage && MTLReportFailureTypeEnabled())
    {
      v222 = objc_opt_class();
      v225 = NSStringFromClass(v222);
      MTLReportFailure();
    }

    if (!secondaryImage && MTLReportFailureTypeEnabled())
    {
      v223 = objc_opt_class();
      v225 = NSStringFromClass(v223);
      MTLReportFailure();
    }

    objc_msgSend_count(secondaryImage, v12, v13, v14, v15, v16, v17, v18, v225);
    if (objc_msgSend_count(secondaryImage, v20, v21, v22, v23, v24, v25, v26) < v19 && MTLReportFailureTypeEnabled())
    {
      v224 = objc_opt_class();
      v225 = NSStringFromClass(v224);
      MTLReportFailure();
    }

    if (!sourceStates)
    {
      if (v19)
      {
        v227 = 1;
        v78 = objc_autoreleasePoolPush();
        v79 = 0;
        v87 = 0;
        goto LABEL_23;
      }

      return 0;
    }

    if (objc_msgSend_count(sourceStates, v27, v28, v29, v30, v31, v32, v33))
    {
      v40 = 0;
      do
      {
        v41 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v34, v40, v35, v36, v37, v38, v39, v225);
        objc_msgSend_count(v41, v42, v43, v44, v45, v46, v47, v48);
        v55 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v49, v40, v50, v51, v52, v53, v54);
        if (objc_msgSend_count(v55, v56, v57, v58, v59, v60, v61, v62) < v19 && MTLReportFailureTypeEnabled())
        {
          v70 = objc_opt_class();
          v226 = NSStringFromClass(v70);
          MTLReportFailure();
        }

        ++v40;
      }

      while (v40 < objc_msgSend_count(sourceStates, v63, v64, v65, v66, v67, v68, v69, v226));
    }
  }

  if (!v19)
  {
    return 0;
  }

  v78 = objc_autoreleasePoolPush();
  if (sourceStates)
  {
    v79 = objc_msgSend_count(sourceStates, v71, v72, v73, v74, v75, v76, v77);
    v86 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v80, v79, v81, v82, v83, v84, v85);
    if (!v86)
    {
LABEL_28:
      objc_autoreleasePoolPop(v78);
      return 0;
    }

    v87 = v86;
    if (v79)
    {
      for (i = 0; i != v79; ++i)
      {
        v89 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v71, i, v73, v74, v75, v76, v77, v225);
        v96 = objc_msgSend_objectAtIndexedSubscript_(v89, v90, 0, v91, v92, v93, v94, v95);
        objc_msgSend_setObject_atIndexedSubscript_(v87, v97, v96, i, v98, v99, v100, v101);
      }
    }

    v227 = 0;
  }

  else
  {
    v79 = 0;
    v87 = 0;
    v227 = 1;
  }

LABEL_23:
  v102 = objc_msgSend_objectAtIndexedSubscript_(primaryImage, v71, 0, v73, v74, v75, v76, v77, v225);
  v109 = objc_msgSend_objectAtIndexedSubscript_(secondaryImage, v103, 0, v104, v105, v106, v107, v108);
  v116 = objc_msgSend_objectAtIndexedSubscript_(destinationImage, v110, 0, v111, v112, v113, v114, v115);
  v120 = objc_msgSend_resultStateForPrimaryImage_secondaryImage_sourceStates_destinationImage_(self, v117, v102, v109, v87, v116, v118, v119);
  if (!v120)
  {
    goto LABEL_28;
  }

  v121 = v120;
  context = v78;
  v122 = malloc_type_malloc(8 * v19, 0x80040B8603338uLL);
  if (!v122)
  {
    goto LABEL_28;
  }

  v130 = v122;
  if (!objc_msgSend_isResultStateReusedAcrossBatch(self, v123, v124, v125, v126, v127, v128, v129))
  {
    *v130 = v121;
    if (v19 >= 2)
    {
      v228 = self;
      if (v227)
      {
        for (j = 1; j != v19; ++j)
        {
          v140 = objc_msgSend_objectAtIndexedSubscript_(primaryImage, v131, j, v132, v133, v134, v135, v136);
          v147 = objc_msgSend_objectAtIndexedSubscript_(secondaryImage, v141, j, v142, v143, v144, v145, v146);
          v154 = objc_msgSend_objectAtIndexedSubscript_(destinationImage, v148, j, v149, v150, v151, v152, v153);
          v130[j] = objc_msgSend_resultStateForPrimaryImage_secondaryImage_sourceStates_destinationImage_(self, v155, v140, v147, v87, v154, v156, v157);
        }
      }

      else if (v79)
      {
        for (k = 1; k != v19; ++k)
        {
          for (m = 0; m != v79; ++m)
          {
            v165 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v131, m, v132, v133, v134, v135, v136);
            v172 = objc_msgSend_objectAtIndexedSubscript_(v165, v166, k, v167, v168, v169, v170, v171);
            objc_msgSend_setObject_atIndexedSubscript_(v87, v173, v172, m, v174, v175, v176, v177);
          }

          v178 = objc_msgSend_objectAtIndexedSubscript_(primaryImage, v131, k, v132, v133, v134, v135, v136);
          v185 = objc_msgSend_objectAtIndexedSubscript_(secondaryImage, v179, k, v180, v181, v182, v183, v184);
          v192 = objc_msgSend_objectAtIndexedSubscript_(destinationImage, v186, k, v187, v188, v189, v190, v191);
          v130[k] = objc_msgSend_resultStateForPrimaryImage_secondaryImage_sourceStates_destinationImage_(v228, v193, v178, v185, v87, v192, v194, v195);
        }
      }

      else
      {
        for (n = 1; n != v19; ++n)
        {
          v197 = objc_msgSend_objectAtIndexedSubscript_(primaryImage, v131, n, v132, v133, v134, v135, v136);
          v204 = objc_msgSend_objectAtIndexedSubscript_(secondaryImage, v198, n, v199, v200, v201, v202, v203);
          v211 = objc_msgSend_objectAtIndexedSubscript_(destinationImage, v205, n, v206, v207, v208, v209, v210);
          v130[n] = objc_msgSend_resultStateForPrimaryImage_secondaryImage_sourceStates_destinationImage_(v228, v212, v197, v204, v87, v211, v213, v214);
        }
      }
    }

    goto LABEL_49;
  }

  if (v19 < 4)
  {
    v137 = 0;
LABEL_38:
    v161 = v19 - v137;
    v162 = &v130[v137];
    do
    {
      *v162++ = v121;
      --v161;
    }

    while (v161);
    goto LABEL_49;
  }

  v137 = v19 & 0xFFFFFFFFFFFFFFFCLL;
  v158 = vdupq_n_s64(v121);
  v159 = (v130 + 2);
  v160 = v19 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v159[-1] = v158;
    *v159 = v158;
    v159 += 2;
    v160 -= 4;
  }

  while (v160);
  if (v19 != v137)
  {
    goto LABEL_38;
  }

LABEL_49:
  v215 = objc_alloc(MEMORY[0x277CBEA60]);
  v221 = objc_msgSend_initWithObjects_count_(v215, v216, v130, v19, v217, v218, v219, v220);
  free(v130);
  objc_autoreleasePoolPop(context);

  return v221;
}

- (MPSState)temporaryResultStateForCommandBuffer:(id)commandBuffer primaryImage:(MPSImage *)primaryImage secondaryImage:(MPSImage *)secondaryImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImage *)destinationImage
{
  v15 = objc_msgSend_temporaryStateWithCommandBuffer_(MPSNNBinaryGradientState, a2, commandBuffer, primaryImage, secondaryImage, sourceStates, destinationImage, v7);
  if (v15)
  {
    objc_msgSend_copyToBinaryGradientState_primaryImage_secondaryImage_sourceStates_destinationImage_(self, v13, v15, primaryImage, secondaryImage, sourceStates, destinationImage, v14);
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

- (MPSStateBatch)temporaryResultStateBatchForCommandBuffer:(id)commandBuffer primaryImage:(MPSImageBatch *)primaryImage secondaryImage:(MPSImageBatch *)secondaryImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImageBatch *)destinationImage
{
  v19 = objc_msgSend_count(primaryImage, a2, commandBuffer, primaryImage, secondaryImage, sourceStates, destinationImage, v7);
  v178 = self;
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (!commandBuffer && MTLReportFailureTypeEnabled())
    {
      v170 = objc_opt_class();
      v173 = NSStringFromClass(v170);
      MTLReportFailure();
    }

    if (!primaryImage && MTLReportFailureTypeEnabled())
    {
      v171 = objc_opt_class();
      v173 = NSStringFromClass(v171);
      MTLReportFailure();
    }

    if (!secondaryImage && MTLReportFailureTypeEnabled())
    {
      v172 = objc_opt_class();
      v173 = NSStringFromClass(v172);
      MTLReportFailure();
    }

    if (!sourceStates)
    {
      if (v19)
      {
        v88 = 1;
        v64 = objc_autoreleasePoolPush();
        v65 = 0;
        v73 = 0;
        goto LABEL_23;
      }

      return 0;
    }

    if (objc_msgSend_count(sourceStates, v12, v13, v14, v15, v16, v17, v18))
    {
      v26 = 0;
      do
      {
        v27 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v20, v26, v21, v22, v23, v24, v25, v173);
        objc_msgSend_count(v27, v28, v29, v30, v31, v32, v33, v34);
        v41 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v35, v26, v36, v37, v38, v39, v40);
        if (objc_msgSend_count(v41, v42, v43, v44, v45, v46, v47, v48) < v19 && MTLReportFailureTypeEnabled())
        {
          v56 = objc_opt_class();
          v174 = NSStringFromClass(v56);
          MTLReportFailure();
        }

        ++v26;
      }

      while (v26 < objc_msgSend_count(sourceStates, v49, v50, v51, v52, v53, v54, v55, v174));
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
LABEL_28:
      objc_autoreleasePoolPop(v64);
      return 0;
    }

    v73 = v72;
    if (v65)
    {
      for (i = 0; i != v65; ++i)
      {
        v75 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v57, i, v59, v60, v61, v62, v63, v173);
        v82 = objc_msgSend_objectAtIndexedSubscript_(v75, v76, 0, v77, v78, v79, v80, v81);
        objc_msgSend_setObject_atIndexedSubscript_(v73, v83, v82, i, v84, v85, v86, v87);
      }
    }

    v88 = 0;
  }

  else
  {
    v65 = 0;
    v73 = 0;
    v88 = 1;
  }

LABEL_23:
  v89 = objc_msgSend_objectAtIndexedSubscript_(primaryImage, v57, 0, v59, v60, v61, v62, v63, v173);
  v96 = objc_msgSend_objectAtIndexedSubscript_(secondaryImage, v90, 0, v91, v92, v93, v94, v95);
  v103 = objc_msgSend_objectAtIndexedSubscript_(destinationImage, v97, 0, v98, v99, v100, v101, v102);
  v106 = objc_msgSend_temporaryResultStateForCommandBuffer_primaryImage_secondaryImage_sourceStates_destinationImage_(v178, v104, commandBuffer, v89, v96, v73, v103, v105);
  if (!v106)
  {
    goto LABEL_28;
  }

  v107 = v106;
  v176 = malloc_type_malloc(8 * v19, 0x80040B8603338uLL);
  if (!v176)
  {
    goto LABEL_28;
  }

  context = v64;
  if (!objc_msgSend_isResultStateReusedAcrossBatch(v178, v108, v109, v110, v111, v112, v113, v114))
  {
    v176->i64[0] = v107;
    if (v19 >= 2)
    {
      v123 = primaryImage;
      v124 = secondaryImage;
      if (v65)
      {
        v125 = v88;
      }

      else
      {
        v125 = 1;
      }

      for (j = 1; j != v19; ++j)
      {
        if ((v125 & 1) == 0)
        {
          v144 = 0;
          do
          {
            v145 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v115, v144, v116, v117, v118, v119, v120);
            v152 = objc_msgSend_objectAtIndexedSubscript_(v145, v146, j, v147, v148, v149, v150, v151);
            objc_msgSend_setObject_atIndexedSubscript_(v73, v153, v152, j, v154, v155, v156, v157);
            ++v144;
          }

          while (v65 != v144);
        }

        v127 = objc_msgSend_objectAtIndexedSubscript_(v123, v115, j, v116, v117, v118, v119, v120);
        v134 = objc_msgSend_objectAtIndexedSubscript_(v124, v128, j, v129, v130, v131, v132, v133);
        v141 = objc_msgSend_objectAtIndexedSubscript_(destinationImage, v135, j, v136, v137, v138, v139, v140);
        v176->i64[j] = objc_msgSend_temporaryResultStateForCommandBuffer_primaryImage_secondaryImage_sourceStates_destinationImage_(v178, v142, commandBuffer, v127, v134, v73, v141, v143);
      }
    }

    goto LABEL_45;
  }

  if (v19 < 4)
  {
    v121 = 0;
LABEL_43:
    v161 = v19 - v121;
    v162 = v176 + v121;
    do
    {
      *v162++ = v107;
      --v161;
    }

    while (v161);
    goto LABEL_45;
  }

  v121 = v19 & 0xFFFFFFFFFFFFFFFCLL;
  v158 = vdupq_n_s64(v107);
  v159 = v176 + 1;
  v160 = v19 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v159[-1] = v158;
    *v159 = v158;
    v159 += 2;
    v160 -= 4;
  }

  while (v160);
  if (v19 != v121)
  {
    goto LABEL_43;
  }

LABEL_45:
  v163 = objc_alloc(MEMORY[0x277CBEA60]);
  v169 = objc_msgSend_initWithObjects_count_(v163, v164, v176, v19, v165, v166, v167, v168);
  free(v176);
  objc_autoreleasePoolPop(context);

  return v169;
}

- (void)copyToBinaryGradientState:(id)a3 primaryImage:(id)a4 secondaryImage:(id)a5 sourceStates:(id)a6 destinationImage:(id)a7
{
  if ((*(a3 + 416) & 1) == 0)
  {
    v8 = *(a7 + *MEMORY[0x277CD7330]);
    v9 = *(a7 + *MEMORY[0x277CD7308]);
    v10 = *(a7 + *MEMORY[0x277CD7310]);
    v11 = *MEMORY[0x277CD72F8];
    v12 = *(a4 + v11);
    if (v12 >= self->_primarySourceFeatureChannelOffset)
    {
      primarySourceFeatureChannelOffset = self->_primarySourceFeatureChannelOffset;
    }

    else
    {
      primarySourceFeatureChannelOffset = *(a4 + v11);
    }

    if (v12 - primarySourceFeatureChannelOffset >= self->_primarySourceFeatureChannelMaxCount)
    {
      primarySourceFeatureChannelMaxCount = self->_primarySourceFeatureChannelMaxCount;
    }

    else
    {
      primarySourceFeatureChannelMaxCount = v12 - primarySourceFeatureChannelOffset;
    }

    secondarySourceFeatureChannelOffset = *(a5 + v11);
    if (secondarySourceFeatureChannelOffset >= self->_secondarySourceFeatureChannelOffset)
    {
      secondarySourceFeatureChannelOffset = self->_secondarySourceFeatureChannelOffset;
    }

    v55 = secondarySourceFeatureChannelOffset;
    v16 = *&self->_primaryOffset.x;
    *(a3 + 8) = self->_primaryOffset.z;
    *(a3 + 3) = v16;
    v17 = *&self->_secondaryOffset.x;
    *(a3 + 11) = self->_secondaryOffset.z;
    *(a3 + 72) = v17;
    v57.width = v8;
    v57.height = v9;
    v57.depth = v10;
    v18 = *&self->_clipRect.origin.z;
    *&v56.origin.x = *&self->_clipRect.origin.x;
    *&v56.origin.z = v18;
    *&v56.size.height = *&self->_clipRect.size.height;
    MPSGetEffectiveClipRegion(v58, &v57, &v56);
    v23 = v58[1];
    *(a3 + 6) = v58[0];
    *(a3 + 7) = v23;
    *(a3 + 8) = v58[2];
    v31 = objc_msgSend_width(a7, v24, v25, v26, v27, v28, v29, v30);
    v39 = objc_msgSend_height(a7, v32, v33, v34, v35, v36, v37, v38);
    *(a3 + 18) = v31;
    *(a3 + 19) = v39;
    *(a3 + 20) = 1;
    *(a3 + 21) = primarySourceFeatureChannelMaxCount;
    *(a3 + 22) = self->_destinationFeatureChannelOffset;
    *(a3 + 23) = primarySourceFeatureChannelOffset;
    *(a3 + 24) = v55;
    *(a3 + 25) = self->_primarySourceFeatureChannelMaxCount;
    *(a3 + 26) = self->_secondarySourceFeatureChannelMaxCount;
    *(a3 + 27) = self->_primaryKernelWidth;
    *(a3 + 28) = self->_primaryKernelHeight;
    *(a3 + 29) = self->_secondaryKernelWidth;
    *(a3 + 30) = self->_secondaryKernelHeight;
    *(a3 + 31) = self->_primaryStrideInPixelsX;
    *(a3 + 32) = self->_primaryStrideInPixelsY;
    *(a3 + 33) = self->_secondaryStrideInPixelsX;
    *(a3 + 34) = self->_secondaryStrideInPixelsY;
    *(a3 + 35) = self->_primaryDilationRateX;
    *(a3 + 36) = self->_primaryDilationRateY;
    *(a3 + 37) = self->_secondaryDilationRateX;
    *(a3 + 39) = self->_padding;
    *(a3 + 328) = self->_isBackwards;
    *(a3 + 42) = self->_primaryEdgeMode;
    *(a3 + 43) = self->_secondaryEdgeMode;
    v40 = MEMORY[0x277CD7330];
    v41 = MEMORY[0x277CD7308];
    v42 = *(a4 + *MEMORY[0x277CD7308]);
    v43 = MEMORY[0x277CD7310];
    v44 = *(a4 + *MEMORY[0x277CD7310]);
    *(a3 + 44) = *(a4 + *MEMORY[0x277CD7330]);
    *(a3 + 45) = v42;
    *(a3 + 46) = v44;
    v45 = MEMORY[0x277CD72F8];
    *(a3 + 47) = *(a4 + *MEMORY[0x277CD72F8]);
    v46 = *(a5 + *v41);
    v47 = *(a5 + *v43);
    *(a3 + 48) = *(a5 + *v40);
    *(a3 + 49) = v46;
    *(a3 + 50) = v47;
    *(a3 + 51) = *(a5 + *v45);
    *(a3 + 416) = objc_msgSend_isResultStateReusedAcrossBatch(self, v48, v49, v50, v51, v52, v53, v54);
    *(a3 + 105) = 123927;
  }
}

- (BOOL)setPlugin:(id)a3
{
  if (!a3 || (v5 = *(&self->super.super.isa + *MEMORY[0x277CD7350]), v6 = objc_opt_class(), (v7 = (*(*v5 + 120))(v5, v6)) != 0))
  {
    v8 = a3;

    self->_plugin = a3;
    self->_pluginSupportsBatchEncode = objc_opt_respondsToSelector() & 1;
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (void)setPrimaryOffset:(MPSOffset *)primaryOffset
{
  z = primaryOffset->z;
  *&self->_primaryOffset.x = *&primaryOffset->x;
  self->_primaryOffset.z = z;
}

- (void)setSecondaryOffset:(MPSOffset *)secondaryOffset
{
  z = secondaryOffset->z;
  *&self->_secondaryOffset.x = *&secondaryOffset->x;
  self->_secondaryOffset.z = z;
}

- (MTLRegion)clipRect
{
  v3 = *&self[3].origin.y;
  *&retstr->origin.x = *&self[2].size.depth;
  *&retstr->origin.z = v3;
  *&retstr->size.height = *&self[3].size.width;
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