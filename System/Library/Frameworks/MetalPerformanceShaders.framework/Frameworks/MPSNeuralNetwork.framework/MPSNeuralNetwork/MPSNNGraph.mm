@interface MPSNNGraph
+ (MPSNNGraph)graphWithDevice:(id)device resultImage:(MPSNNImageNode *)resultImage;
+ (MPSNNGraph)graphWithDevice:(id)device resultImage:(MPSNNImageNode *)resultImage resultImageIsNeeded:(BOOL)resultIsNeeded;
+ (MPSNNGraph)graphWithDevice:(id)device resultImages:(NSArray *)resultImages resultsAreNeeded:(BOOL *)areResultsNeeded;
- (MPSImage)encodeToCommandBuffer:(id)commandBuffer sourceImages:(NSArray *)sourceImages;
- (MPSImage)encodeToCommandBuffer:(id)commandBuffer sourceImages:(NSArray *)sourceImages sourceStates:(NSArray *)sourceStates intermediateImages:(NSMutableArray *)intermediateImages destinationStates:(NSMutableArray *)destinationStates;
- (MPSImage)executeAsyncWithSourceImages:(NSArray *)sourceImages completionHandler:(MPSNNGraphCompletionHandler)handler;
- (MPSImageBatch)encodeBatchToCommandBuffer:(id)commandBuffer sourceImages:(NSArray *)sourceImages sourceStates:(NSArray *)sourceStates;
- (MPSImageBatch)encodeBatchToCommandBuffer:(id)commandBuffer sourceImages:(NSArray *)sourceImages sourceStates:(NSArray *)sourceStates intermediateImages:(NSMutableArray *)intermediateImages destinationStates:(NSMutableArray *)destinationStates;
- (MPSNNGraph)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSNNGraph)initWithDevice:(id)device resultImage:(MPSNNImageNode *)resultImage resultImageIsNeeded:(BOOL)resultIsNeeded;
- (MPSNNGraph)initWithDevice:(id)device resultImages:(NSArray *)resultImages resultsAreNeeded:(BOOL *)areResultsNeeded;
- (NSArray)intermediateImageHandles;
- (NSArray)resultStateHandles;
- (NSArray)sourceImageHandles;
- (NSArray)sourceStateHandles;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)reloadFromDataSources;
- (void)setOptions:(unint64_t)options;
@end

@implementation MPSNNGraph

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSNNGraph;
  [(MPSKernel *)&v3 dealloc];
}

+ (MPSNNGraph)graphWithDevice:(id)device resultImage:(MPSNNImageNode *)resultImage resultImageIsNeeded:(BOOL)resultIsNeeded
{
  v5 = resultIsNeeded;
  v8 = [self alloc];
  IsNeeded = objc_msgSend_initWithDevice_resultImage_resultImageIsNeeded_(v8, v9, device, resultImage, v5, v10, v11, v12);

  return IsNeeded;
}

+ (MPSNNGraph)graphWithDevice:(id)device resultImage:(MPSNNImageNode *)resultImage
{
  v6 = [self alloc];
  v12 = objc_msgSend_initWithDevice_resultImage_(v6, v7, device, resultImage, v8, v9, v10, v11);

  return v12;
}

- (MPSNNGraph)initWithDevice:(id)device resultImage:(MPSNNImageNode *)resultImage resultImageIsNeeded:(BOOL)resultIsNeeded
{
  v39[1] = *MEMORY[0x277D85DE8];
  v38 = resultIsNeeded;
  v37.receiver = self;
  v37.super_class = MPSNNGraph;
  v8 = [(MPSKernel *)&v37 initWithDevice:?];
  v16 = v8;
  if (!v8)
  {
    return v16;
  }

  v17 = *MEMORY[0x277CD7378];
  v18 = *(&v8->super.super.isa + v17);
  if ((v18 & 1) == 0)
  {
    if (resultImage)
    {
      objc_opt_class();
      objc_opt_isKindOfClass();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = *(&v16->super.super.isa + v17);
        goto LABEL_6;
      }

      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_7;
      }
    }

    else if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_7;
    }

    v36 = objc_opt_class();
    NSStringFromClass(v36);
    MTLReportFailure();
    goto LABEL_7;
  }

LABEL_6:
  *(&v16->super.super.isa + v17) = (v18 | 1);
  v16->_resultIsNeeded = resultIsNeeded;
  v16->_outputStateIsTemporary = 0;
  v16->_format = 3;
  v19 = objc_msgSend_defaultAllocator(MEMORY[0x277CD7218], v9, v10, v11, v12, v13, v14, v15);
  objc_msgSend_setDestinationImageAllocator_(v16, v20, v19, v21, v22, v23, v24, v25);
  v39[0] = resultImage;
  v31 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v26, v39, 1, v27, v28, v29, v30);
  if ((sub_239C0A6A8(&v16->_graph, device, v31, v16, &v38, v32, v33, v34) & 1) == 0)
  {
LABEL_7:

    return 0;
  }

  return v16;
}

+ (MPSNNGraph)graphWithDevice:(id)device resultImages:(NSArray *)resultImages resultsAreNeeded:(BOOL *)areResultsNeeded
{
  v8 = [self alloc];
  v13 = objc_msgSend_initWithDevice_resultImages_resultsAreNeeded_(v8, v9, device, resultImages, areResultsNeeded, v10, v11, v12);

  return v13;
}

- (MPSNNGraph)initWithDevice:(id)device resultImages:(NSArray *)resultImages resultsAreNeeded:(BOOL *)areResultsNeeded
{
  v31.receiver = self;
  v31.super_class = MPSNNGraph;
  v8 = [(MPSKernel *)&v31 initWithDevice:?];
  v16 = v8;
  if (v8)
  {
    v17 = *MEMORY[0x277CD7378];
    v18 = *(&v8->super.super.isa + v17);
    if (!resultImages && (v18 & 1) == 0)
    {
      if (MTLReportFailureTypeEnabled())
      {
        v30 = objc_opt_class();
        NSStringFromClass(v30);
        MTLReportFailure();
      }

      goto LABEL_7;
    }

    *(&v8->super.super.isa + v17) = (v18 | 1);
    v8->_resultIsNeeded = 1;
    if (areResultsNeeded)
    {
      v8->_resultIsNeeded = *areResultsNeeded;
    }

    v8->_outputStateIsTemporary = 0;
    v8->_format = 3;
    v19 = objc_msgSend_defaultAllocator(MEMORY[0x277CD7218], v9, v10, v11, v12, v13, v14, v15);
    objc_msgSend_setDestinationImageAllocator_(v16, v20, v19, v21, v22, v23, v24, v25);
    if ((sub_239C0A6A8(&v16->_graph, device, resultImages, v16, areResultsNeeded, v26, v27, v28) & 1) == 0)
    {
LABEL_7:

      return 0;
    }
  }

  return v16;
}

- (NSArray)sourceImageHandles
{
  p_graph = &self->_graph;
  count = self->_graph._graphSourceImages._count;
  v4 = objc_alloc(MEMORY[0x277CBEB18]);
  v16 = objc_msgSend_initWithCapacity_(v4, v5, count, v6, v7, v8, v9, v10);
  if (v16)
  {
    v17 = count == 0;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    v19 = 0;
    do
    {
      v20 = p_graph->_graphSourceImages._items[v19];
      if (v20 && *v20)
      {
        objc_msgSend_setObject_atIndexedSubscript_(v16, v11, *v20, v19, v12, v13, v14, v15);
      }

      ++v19;
    }

    while (count != v19);
  }

  return v16;
}

- (NSArray)sourceStateHandles
{
  p_graph = &self->_graph;
  count = self->_graph._graphSourceStates._count;
  v4 = objc_alloc(MEMORY[0x277CBEB18]);
  v16 = objc_msgSend_initWithCapacity_(v4, v5, count, v6, v7, v8, v9, v10);
  if (v16)
  {
    v17 = count == 0;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    v19 = 0;
    do
    {
      v20 = p_graph->_graphSourceStates._items[v19];
      if (v20 && *v20)
      {
        objc_msgSend_setObject_atIndexedSubscript_(v16, v11, *v20, v19, v12, v13, v14, v15);
      }

      ++v19;
    }

    while (count != v19);
  }

  return v16;
}

- (NSArray)intermediateImageHandles
{
  p_graph = &self->_graph;
  count = self->_graph._graphIntermediateImages._count;
  v4 = objc_alloc(MEMORY[0x277CBEB18]);
  v16 = objc_msgSend_initWithCapacity_(v4, v5, count, v6, v7, v8, v9, v10);
  if (v16)
  {
    v17 = count == 0;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    v19 = 0;
    do
    {
      v20 = p_graph->_graphIntermediateImages._items[v19];
      if (v20 && *v20)
      {
        objc_msgSend_setObject_atIndexedSubscript_(v16, v11, *v20, v19, v12, v13, v14, v15);
      }

      ++v19;
    }

    while (count != v19);
  }

  return v16;
}

- (NSArray)resultStateHandles
{
  p_graph = &self->_graph;
  count = self->_graph._graphResultStates._count;
  v4 = objc_alloc(MEMORY[0x277CBEB18]);
  v16 = objc_msgSend_initWithCapacity_(v4, v5, count, v6, v7, v8, v9, v10);
  if (v16)
  {
    v17 = count == 0;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    v19 = 0;
    do
    {
      v20 = p_graph->_graphResultStates._items[v19];
      if (v20 && *v20)
      {
        objc_msgSend_setObject_atIndexedSubscript_(v16, v11, *v20, v19, v12, v13, v14, v15);
      }

      ++v19;
    }

    while (count != v19);
  }

  return v16;
}

- (MPSImage)encodeToCommandBuffer:(id)commandBuffer sourceImages:(NSArray *)sourceImages
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    p_graph = &self->_graph;
    if (self->_graph._graphSourceStates._count)
    {
      selfCopy = self;
      v8 = sourceImages;
      v9 = commandBuffer;
      v10 = MTLReportFailureTypeEnabled();
      commandBuffer = v9;
      sourceImages = v8;
      v11 = v10;
      self = selfCopy;
      if (v11)
      {
        v12 = objc_opt_class();
        NSStringFromClass(v12);
        MTLReportFailure();
        self = selfCopy;
        commandBuffer = v9;
        sourceImages = v8;
      }
    }

    if (p_graph->_graphResultStates._count)
    {
      selfCopy2 = self;
      v14 = sourceImages;
      v15 = commandBuffer;
      v16 = MTLReportFailureTypeEnabled();
      commandBuffer = v15;
      sourceImages = v14;
      v17 = v16;
      self = selfCopy2;
      if (v17)
      {
        v18 = objc_opt_class();
        NSStringFromClass(v18);
        MTLReportFailure();
        self = selfCopy2;
        commandBuffer = v15;
        sourceImages = v14;
      }
    }

    if (p_graph->_graphIntermediateImages._count)
    {
      selfCopy3 = self;
      v20 = sourceImages;
      v21 = commandBuffer;
      v22 = MTLReportFailureTypeEnabled();
      commandBuffer = v21;
      sourceImages = v20;
      v23 = v22;
      self = selfCopy3;
      if (v23)
      {
        v24 = objc_opt_class();
        NSStringFromClass(v24);
        MTLReportFailure();
        self = selfCopy3;
        commandBuffer = v21;
        sourceImages = v20;
      }
    }

    v5 = vars8;
  }

  return MEMORY[0x2821F9670](self, sel_encodeToCommandBuffer_sourceImages_sourceStates_intermediateImages_destinationStates_, commandBuffer, sourceImages, 0, 0, 0, v4);
}

- (MPSImageBatch)encodeBatchToCommandBuffer:(id)commandBuffer sourceImages:(NSArray *)sourceImages sourceStates:(NSArray *)sourceStates
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0 && self->_graph._graphResultStates._count)
  {
    selfCopy = self;
    v8 = sourceStates;
    v9 = sourceImages;
    v10 = commandBuffer;
    v11 = MTLReportFailureTypeEnabled();
    commandBuffer = v10;
    sourceImages = v9;
    sourceStates = v8;
    v12 = v11;
    self = selfCopy;
    if (v12)
    {
      v13 = objc_opt_class();
      NSStringFromClass(v13);
      MTLReportFailure();
      self = selfCopy;
      commandBuffer = v10;
      sourceImages = v9;
      sourceStates = v8;
    }
  }

  return MEMORY[0x2821F9670](self, sel_encodeBatchToCommandBuffer_sourceImages_sourceStates_intermediateImages_destinationStates_, commandBuffer, sourceImages, sourceStates, 0, 0, v5);
}

- (MPSImage)encodeToCommandBuffer:(id)commandBuffer sourceImages:(NSArray *)sourceImages sourceStates:(NSArray *)sourceStates intermediateImages:(NSMutableArray *)intermediateImages destinationStates:(NSMutableArray *)destinationStates
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (!commandBuffer && MTLReportFailureTypeEnabled())
    {
      v191 = objc_opt_class();
      v198 = NSStringFromClass(v191);
      MTLReportFailure();
    }

    if (!sourceImages && MTLReportFailureTypeEnabled())
    {
      v192 = objc_opt_class();
      v198 = NSStringFromClass(v192);
      MTLReportFailure();
    }

    v18 = objc_msgSend_count(sourceImages, a2, commandBuffer, sourceImages, sourceStates, intermediateImages, destinationStates, v7, v198);
    if (v18 != self->_graph._graphSourceImages._count && MTLReportFailureTypeEnabled())
    {
      v193 = objc_opt_class();
      v194 = NSStringFromClass(v193);
      v202 = v18;
      count = self->_graph._graphSourceImages._count;
      v199 = v194;
      MTLReportFailure();
    }

    if (v18)
    {
      for (i = 0; i != v18; ++i)
      {
        objc_msgSend_objectAtIndexedSubscript_(sourceImages, v11, i, v13, v14, v15, v16, v17, v199, v202, count);
        if (!objc_msgSend_objectAtIndexedSubscript_(sourceImages, v20, i, v21, v22, v23, v24, v25) && MTLReportFailureTypeEnabled())
        {
          v44 = objc_opt_class();
          v200 = NSStringFromClass(v44);
          v202 = i;
          MTLReportFailure();
        }

        objc_msgSend_objectAtIndexedSubscript_(sourceImages, v26, i, v27, v28, v29, v30, v31, v200);
        objc_opt_class();
        objc_opt_isKindOfClass();
        objc_msgSend_objectAtIndexedSubscript_(sourceImages, v32, i, v33, v34, v35, v36, v37);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 && MTLReportFailureTypeEnabled())
        {
          v45 = objc_opt_class();
          v201 = NSStringFromClass(v45);
          v202 = i;
          MTLReportFailure();
        }

        objc_msgSend_objectAtIndexedSubscript_(sourceImages, v38, i, v39, v40, v41, v42, v43, v201);
        v217 = 0;
        v215 = 0u;
        v216 = 0u;
        v214 = 0u;
        MTLPixelFormatGetInfoForDevice();
        if (MTLReportFailureTypeEnabled())
        {
          v199 = i;
          v202 = v214;
          MTLReportFailure();
        }
      }
    }

    v52 = objc_msgSend_count(sourceStates, v11, v12, v13, v14, v15, v16, v17, v199);
    if (v52 != self->_graph._graphSourceStates._count && MTLReportFailureTypeEnabled())
    {
      v195 = objc_opt_class();
      v196 = NSStringFromClass(v195);
      v202 = v52;
      count = self->_graph._graphSourceStates._count;
      v198 = v196;
      MTLReportFailure();
    }

    if (sourceStates && v52)
    {
      for (j = 0; j != v52; ++j)
      {
        objc_msgSend_objectAtIndexedSubscript_(sourceStates, v46, j, v47, v48, v49, v50, v51, v198, v202, count);
        if (!objc_msgSend_objectAtIndexedSubscript_(sourceStates, v54, j, v55, v56, v57, v58, v59) && MTLReportFailureTypeEnabled())
        {
          v60 = objc_opt_class();
          v198 = NSStringFromClass(v60);
          v202 = j;
          MTLReportFailure();
        }
      }
    }

    if (!self->_destinationImageAllocator && MTLReportFailureTypeEnabled())
    {
      v197 = objc_opt_class();
      v198 = NSStringFromClass(v197);
      MTLReportFailure();
    }
  }

  p_graph = &self->_graph;
  destinationImageAllocator = self->_destinationImageAllocator;
  outputStateIsTemporary = self->_outputStateIsTemporary;
  format = self->_format;
  cpuUpdateSem = self->_graph._cpuUpdateSem;
  if (cpuUpdateSem)
  {
    DeadlockedBecauseTheCPUBasedWeightUpdateForThePreviousBatchOccursAtCompletionOfThisCmdBuf_TryGPUUpdateOrNewCmdBufInstead(cpuUpdateSem);
  }

  context = objc_autoreleasePoolPush();
  v69 = self->_graph._images._count;
  if (v69)
  {
    graphNull = p_graph->_graphNull;
    v71 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v63, p_graph->_images._count, v64, v65, v66, v67, v68);
    if (v71)
    {
      do
      {
        objc_msgSend_addObject_(v71, v63, graphNull, v64, v65, v66, v67, v68, v198);
        --v69;
      }

      while (v69);
    }

    v72 = p_graph->_states._count;
    if (v72)
    {
      goto LABEL_35;
    }

LABEL_39:
    v80 = 0;
    goto LABEL_40;
  }

  v71 = 0;
  v72 = p_graph->_states._count;
  if (!v72)
  {
    goto LABEL_39;
  }

LABEL_35:
  v73 = p_graph->_graphNull;
  v80 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v63, v72, v64, v65, v66, v67, v68, v198);
  if (v80)
  {
    do
    {
      objc_msgSend_addObject_(v80, v74, v73, v75, v76, v77, v78, v79);
      --v72;
    }

    while (v72);
  }

LABEL_40:
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v87 = p_graph->_graphSourceImages._count;
  if (v87)
  {
    for (k = 0; k != v87; ++k)
    {
      v89 = p_graph->_graphSourceImages._items[k];
      v90 = objc_msgSend_objectAtIndexedSubscript_(sourceImages, v81, k, v82, v83, v84, v85, v86, v198);
      objc_msgSend_setObject_atIndexedSubscript_(v71, v91, v90, *(v89 + 8), v92, v93, v94, v95);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v97 = *(v89 + 9) + *(v89 + 80);
        if (v97)
        {
          v98 = objc_msgSend_readCount(v90, v81, v96, v82, v83, v84, v85, v86);
          objc_msgSend_setReadCount_(v90, v99, v97 + v98 - 1, v100, v101, v102, v103, v104);
        }
      }
    }
  }

  v105 = p_graph->_graphSourceStates._count;
  if (v105)
  {
    for (m = 0; m != v105; ++m)
    {
      v107 = p_graph->_graphSourceStates._items[m];
      v108 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v81, m, v82, v83, v84, v85, v86, v198);
      objc_msgSend_setObject_atIndexedSubscript_(v80, v109, v108, *(v107 + 8), v110, v111, v112, v113);
      v115 = *(v107 + 9) + *(v107 + 80);
      if (v115)
      {
        v116 = objc_msgSend_readCount(v108, v81, v114, v82, v83, v84, v85, v86);
        objc_msgSend_setReadCount_(v108, v117, v115 + v116 - 1, v118, v119, v120, v121, v122);
      }
    }
  }

  v241 = 0u;
  v242 = 0u;
  v240 = 0u;
  v123 = p_graph->_images._count;
  v237 = p_graph;
  v238 = v123;
  v124 = p_graph->_states._count;
  v243 = 0;
  v239 = v124;
  v235 = malloc_type_calloc(v123, 1uLL, 0x100004077774924uLL);
  v236 = malloc_type_calloc(v124, 1uLL, 0x100004077774924uLL);
  v234[0] = MEMORY[0x277D85DD0];
  v234[1] = 3221225472;
  v234[2] = sub_239C12190;
  v234[3] = &unk_278B2F0F0;
  v234[4] = v71;
  *&v241 = v234;
  v233[0] = MEMORY[0x277D85DD0];
  v233[1] = 3221225472;
  v233[2] = sub_239C1228C;
  v233[3] = &unk_278B2F0F0;
  v233[4] = v80;
  *(&v241 + 1) = v233;
  v125 = p_graph->_graphResultImages._count;
  v126 = objc_autoreleasePoolPush();
  v225 = 0;
  v226 = &v225;
  v227 = 0x4812000000;
  v228 = sub_239C122DC;
  v229 = sub_239C122F0;
  v230 = &unk_239DC72C3;
  v232 = xmmword_239D7DE50;
  v231 = malloc_type_malloc(0x10uLL, 0x80040B8603338uLL);
  v127 = p_graph->_graphNull;
  *&v214 = MEMORY[0x277D85DD0];
  *(&v214 + 1) = 3221225472;
  *&v215 = sub_239C122F8;
  *(&v215 + 1) = &unk_278B2F118;
  *&v216 = v71;
  *(&v216 + 1) = v127;
  v222 = p_graph;
  v223 = format;
  v217 = commandBuffer;
  v218 = destinationImageAllocator;
  v220 = v127;
  v221 = &v225;
  v219 = v80;
  v224 = outputStateIsTemporary;
  *&v242 = &v214;
  v128 = p_graph->_graphResultImages._count;
  if (v128)
  {
    for (n = 0; n != v128; ++n)
    {
      v130 = p_graph->_graphResultImages._items[n];
      if (!v235[*(v130 + 8)])
      {
        v131 = *(v130 + 4);
        if (v131)
        {
          sub_239C190CC(&v235, v131);
        }
      }
    }
  }

  bzero(v235, v238);
  if (v236)
  {
    bzero(v236, v239);
  }

  v132 = *(v226 + 56);
  if (v132)
  {
    v133 = objc_alloc(MEMORY[0x277CBEA60]);
    v139 = objc_msgSend_initWithObjects_count_(v133, v134, *(v226 + 48), v132, v135, v136, v137, v138);
    objc_msgSend_prefetchStorageWithCommandBuffer_imageDescriptorList_(MEMORY[0x277CD72A8], v140, commandBuffer, v139, v141, v142, v143, v144);

    for (ii = 0; ii != v132; ++ii)
    {
    }
  }

  _Block_object_dispose(&v225, 8);
  free(v231);
  objc_autoreleasePoolPop(v126);
  if ((objc_msgSend_options(p_graph->_graph, v146, v147, v148, v149, v150, v151, v152) & 0x10) != 0)
  {
    if (v125)
    {
      v159 = *(*p_graph->_graphResultImages._items + 4);
      if (v159)
      {
        sub_239BE215C(*(v159 + 104), v153, "\nLegend:\n\tFilterNodeType[filter.index] {src.width x src.height x src.featureChannels src.format}[src.index] ->\n\t\t{dest.width x dest.height x dest.featureChannels dest.format}[dest.index] offset: destinationFeatureChannelOffset\n=============================================================================================================\n");
      }
    }
  }

  v213[0] = 0;
  v213[1] = v213;
  v213[2] = 0x2020000000;
  v213[3] = 0;
  v225 = MEMORY[0x277D85DD0];
  v226 = 3221225472;
  v227 = sub_239C12608;
  v228 = &unk_278B2F140;
  v229 = v71;
  v230 = v80;
  BYTE8(v232) = isKindOfClass & 1;
  v231 = commandBuffer;
  *&v232 = v213;
  *&v242 = &v225;
  v160 = p_graph->_graphResultImages._count;
  if (v160)
  {
    for (jj = 0; jj != v160; ++jj)
    {
      v162 = p_graph->_graphResultImages._items[jj];
      if (!v235[*(v162 + 8)])
      {
        v153 = *(v162 + 4);
        if (v153)
        {
          sub_239C190CC(&v235, v153);
        }
      }
    }
  }

  if (intermediateImages)
  {
    v163 = p_graph->_graphIntermediateImages._count;
    if (v163)
    {
      for (kk = 0; kk != v163; ++kk)
      {
        v165 = objc_msgSend_objectAtIndexedSubscript_(v71, v153, *(p_graph->_graphIntermediateImages._items[kk] + 8), v154, v155, v156, v157, v158, v198);
        objc_msgSend_addObject_(intermediateImages, v166, v165, v167, v168, v169, v170, v171);
      }
    }
  }

  if (destinationStates)
  {
    v172 = p_graph->_graphResultStates._count;
    if (v172)
    {
      for (mm = 0; mm != v172; ++mm)
      {
        v174 = objc_msgSend_objectAtIndexedSubscript_(v80, v153, *(p_graph->_graphResultStates._items[mm] + 8), v154, v155, v156, v157, v158, v198);
        objc_msgSend_addObject_(destinationStates, v175, v174, v176, v177, v178, v179, v180);
      }
    }
  }

  if (p_graph->_cpuUpdateSem)
  {
    v181 = p_graph->_graph;
    v212[0] = MEMORY[0x277D85DD0];
    v212[1] = 3221225472;
    v212[2] = sub_239C12830;
    v212[3] = &unk_278B2F160;
    v212[4] = p_graph;
    objc_msgSend_addCompletedHandler_(commandBuffer, v182, v212, v183, v184, v185, v186, v187);
  }

  v188 = *p_graph->_graphResultImages._items;
  if (*(v188 + 80) == 1)
  {
    v189 = objc_msgSend_objectAtIndexedSubscript_(v71, v153, *(v188 + 8), v154, v155, v156, v157, v158);
  }

  else
  {
    v189 = 0;
  }

  _Block_object_dispose(v213, 8);
  free(v235);
  free(v236);
  objc_autoreleasePoolPop(context);
  return v189;
}

- (MPSImageBatch)encodeBatchToCommandBuffer:(id)commandBuffer sourceImages:(NSArray *)sourceImages sourceStates:(NSArray *)sourceStates intermediateImages:(NSMutableArray *)intermediateImages destinationStates:(NSMutableArray *)destinationStates
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (!commandBuffer && MTLReportFailureTypeEnabled())
    {
      v205 = objc_opt_class();
      v213 = NSStringFromClass(v205);
      MTLReportFailure();
    }

    if (!sourceImages && MTLReportFailureTypeEnabled())
    {
      v206 = objc_opt_class();
      v213 = NSStringFromClass(v206);
      MTLReportFailure();
    }

    v18 = objc_msgSend_count(sourceImages, a2, commandBuffer, sourceImages, sourceStates, intermediateImages, destinationStates, v7, v213);
    if (v18 != self->_graph._graphSourceImages._count && MTLReportFailureTypeEnabled())
    {
      v207 = objc_opt_class();
      v208 = NSStringFromClass(v207);
      v217 = v18;
      count = self->_graph._graphSourceImages._count;
      v213 = v208;
      MTLReportFailure();
    }

    if (v18)
    {
      v19 = 0;
      v225 = v18;
      objc_msgSend_objectAtIndexedSubscript_(sourceImages, v11, 0, v13, v14, v15, v16, v17, v213);
      while (1)
      {
        if (!objc_msgSend_objectAtIndexedSubscript_(sourceImages, v20, v19, v21, v22, v23, v24, v25) && MTLReportFailureTypeEnabled())
        {
          v83 = objc_opt_class();
          v214 = NSStringFromClass(v83);
          v217 = v19;
          MTLReportFailure();
        }

        objc_msgSend_objectAtIndexedSubscript_(sourceImages, v26, v19, v27, v28, v29, v30, v31, v214);
        objc_opt_class();
        objc_opt_isKindOfClass();
        objc_msgSend_objectAtIndexedSubscript_(sourceImages, v32, v19, v33, v34, v35, v36, v37);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 && MTLReportFailureTypeEnabled())
        {
          v84 = objc_opt_class();
          v215 = NSStringFromClass(v84);
          v217 = v19;
          MTLReportFailure();
        }

        v44 = objc_msgSend_objectAtIndexedSubscript_(sourceImages, v38, v19, v39, v40, v41, v42, v43, v215);
        v52 = objc_msgSend_count(v44, v45, v46, v47, v48, v49, v50, v51);
        v59 = objc_msgSend_objectAtIndexedSubscript_(sourceImages, v53, v19, v54, v55, v56, v57, v58);
        if (v52)
        {
          v60 = v59;
          for (i = 0; i != v52; ++i)
          {
            if (!v60 && MTLReportFailureTypeEnabled())
            {
              v81 = objc_opt_class();
              v217 = v19;
              count = i;
              v213 = NSStringFromClass(v81);
              MTLReportFailure();
            }

            objc_msgSend_objectAtIndexedSubscript_(v60, v11, i, v13, v14, v15, v16, v17, v213, v217, count);
            objc_opt_class();
            objc_opt_isKindOfClass();
            objc_msgSend_objectAtIndexedSubscript_(v60, v62, i, v63, v64, v65, v66, v67);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 && MTLReportFailureTypeEnabled())
            {
              v82 = objc_opt_class();
              v217 = v19;
              count = i;
              v216 = NSStringFromClass(v82);
              MTLReportFailure();
            }

            v232 = 0;
            v230 = 0u;
            v231 = 0u;
            v229 = 0u;
            v74 = objc_msgSend_objectAtIndexedSubscript_(sourceImages, v68, v19, v69, v70, v71, v72, v73, v216);
            objc_msgSend_objectAtIndexedSubscript_(v74, v75, i, v76, v77, v78, v79, v80);
            MTLPixelFormatGetInfoForDevice();
            if (MTLReportFailureTypeEnabled())
            {
              v213 = v19;
              v217 = v229;
              MTLReportFailure();
            }
          }
        }

        if (++v19 == v225)
        {
          break;
        }

        objc_msgSend_objectAtIndexedSubscript_(sourceImages, v11, v19, v13, v14, v15, v16, v17, v213);
      }
    }

    if (sourceStates)
    {
      v91 = objc_msgSend_count(sourceStates, v11, v12, v13, v14, v15, v16, v17);
      if (v91 != self->_graph._graphSourceStates._count && MTLReportFailureTypeEnabled())
      {
        v210 = objc_opt_class();
        v211 = NSStringFromClass(v210);
        v217 = v91;
        count = self->_graph._graphSourceStates._count;
        v213 = v211;
        MTLReportFailure();
      }

      if (v91)
      {
        for (j = 0; j != v91; ++j)
        {
          objc_msgSend_objectAtIndexedSubscript_(sourceStates, v85, j, v86, v87, v88, v89, v90, v213, v217, count);
          if (!objc_msgSend_objectAtIndexedSubscript_(sourceStates, v93, j, v94, v95, v96, v97, v98) && MTLReportFailureTypeEnabled())
          {
            v99 = objc_opt_class();
            v213 = NSStringFromClass(v99);
            v217 = j;
            MTLReportFailure();
          }
        }
      }
    }

    else if (self->_graph._graphSourceStates._count && MTLReportFailureTypeEnabled())
    {
      v212 = objc_opt_class();
      v213 = NSStringFromClass(v212);
      v217 = self->_graph._graphSourceStates._count;
      MTLReportFailure();
    }

    if (!self->_destinationImageAllocator && MTLReportFailureTypeEnabled())
    {
      v209 = objc_opt_class();
      v213 = NSStringFromClass(v209);
      MTLReportFailure();
    }
  }

  outputStateIsTemporary = self->_outputStateIsTemporary;
  format = self->_format;
  destinationImageAllocator = self->_destinationImageAllocator;
  v219 = objc_autoreleasePoolPush();
  v106 = self->_graph._images._count;
  if (v106)
  {
    graphNull = self->_graph._graphNull;
    v108 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v100, self->_graph._images._count, v101, v102, v103, v104, v105);
    if (v108)
    {
      do
      {
        objc_msgSend_addObject_(v108, v100, graphNull, v101, v102, v103, v104, v105, v213, v217);
        --v106;
      }

      while (v106);
    }

    v109 = self->_graph._states._count;
    if (v109)
    {
      goto LABEL_44;
    }

LABEL_48:
    v117 = 0;
    goto LABEL_49;
  }

  v108 = 0;
  v109 = self->_graph._states._count;
  if (!v109)
  {
    goto LABEL_48;
  }

LABEL_44:
  v110 = self->_graph._graphNull;
  v117 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v100, v109, v101, v102, v103, v104, v105, v213);
  if (v117)
  {
    do
    {
      objc_msgSend_addObject_(v117, v111, v110, v112, v113, v114, v115, v116);
      --v109;
    }

    while (v109);
  }

LABEL_49:
  objc_opt_class();
  v118 = commandBuffer;
  isKindOfClass = objc_opt_isKindOfClass();
  v125 = self->_graph._graphSourceImages._count;
  if (v125)
  {
    for (k = 0; k != v125; ++k)
    {
      v127 = self->_graph._graphSourceImages._items[k];
      v128 = objc_msgSend_objectAtIndexedSubscript_(sourceImages, v119, k, v120, v121, v122, v123, v124, v213);
      objc_msgSend_setObject_atIndexedSubscript_(v108, v129, v128, *(v127 + 8), v130, v131, v132, v133);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v134 = *(v127 + 9) + *(v127 + 80);
        v119 = (v134 - 1);
        if (v134 != 1)
        {
          MPSImageBatchIncrementReadCount(v128, v119);
        }
      }
    }
  }

  v135 = self->_graph._graphSourceStates._count;
  if (v135)
  {
    for (m = 0; m != v135; ++m)
    {
      v137 = self->_graph._graphSourceStates._items[m];
      v138 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v119, m, v120, v121, v122, v123, v124, v213);
      objc_msgSend_setObject_atIndexedSubscript_(v117, v139, v138, *(v137 + 8), v140, v141, v142, v143);
      v144 = *(v137 + 9) + *(v137 + 80);
      v119 = (v144 - 1);
      if (v144 != 1)
      {
        MPSStateBatchIncrementReadCount(v138, v119);
      }
    }
  }

  v261 = 0u;
  v260 = 0u;
  v259 = 0u;
  v145 = self->_graph._images._count;
  p_graph = &self->_graph;
  v257 = v145;
  v146 = self->_graph._states._count;
  v262 = 0;
  v258 = v146;
  v254 = malloc_type_calloc(v145, 1uLL, 0x100004077774924uLL);
  v255 = malloc_type_calloc(v146, 1uLL, 0x100004077774924uLL);
  v253[0] = 0;
  v253[1] = v253;
  v253[2] = 0x2020000000;
  v253[3] = 0;
  v252[0] = 0;
  v252[1] = v252;
  v252[2] = 0x2020000000;
  v252[3] = 0;
  v250[4] = v117;
  v251[0] = MEMORY[0x277D85DD0];
  v251[1] = 3221225472;
  v251[2] = sub_239C1286C;
  v251[3] = &unk_278B2F188;
  v251[4] = v108;
  *&v260 = v251;
  v250[0] = MEMORY[0x277D85DD0];
  v250[1] = 3221225472;
  v250[2] = sub_239C12980;
  v250[3] = &unk_278B2F188;
  *(&v260 + 1) = v250;
  v147 = objc_autoreleasePoolPush();
  v242 = 0;
  v243 = &v242;
  v244 = 0x4812000000;
  v245 = sub_239C122DC;
  v246 = sub_239C122F0;
  v247 = &unk_239DC72C3;
  v249 = xmmword_239D7DE50;
  v248 = malloc_type_malloc(0x10uLL, 0x80040B8603338uLL);
  v148 = self->_graph._graphNull;
  *&v229 = MEMORY[0x277D85DD0];
  *(&v229 + 1) = 3221225472;
  *&v230 = sub_239C129D0;
  *(&v230 + 1) = &unk_278B2F1B0;
  *&v231 = v108;
  *(&v231 + 1) = v148;
  v239 = &self->_graph;
  v240 = format;
  v232 = v118;
  v233 = destinationImageAllocator;
  v236 = &v242;
  v237 = v253;
  v238 = v252;
  v234 = v117;
  v235 = v148;
  v241 = outputStateIsTemporary;
  *&v261 = &v229;
  v149 = self->_graph._graphResultImages._count;
  if (v149)
  {
    for (n = 0; n != v149; ++n)
    {
      v151 = self->_graph._graphResultImages._items[n];
      if (!v254[*(v151 + 8)])
      {
        v152 = *(v151 + 4);
        if (v152)
        {
          sub_239C19438(&v254, v152);
        }
      }
    }
  }

  bzero(v254, v257);
  if (v255)
  {
    bzero(v255, v258);
  }

  MPSAutoCache::PrefetchHeapSize();
  v153 = *(v243 + 56);
  if (v153)
  {
    v154 = objc_alloc(MEMORY[0x277CBEA60]);
    v160 = objc_msgSend_initWithObjects_count_(v154, v155, *(v243 + 48), v153, v156, v157, v158, v159);
    objc_msgSend_prefetchStorageWithCommandBuffer_imageDescriptorList_(MEMORY[0x277CD72A8], v161, v118, v160, v162, v163, v164, v165);

    for (ii = 0; ii != v153; ++ii)
    {
    }
  }

  _Block_object_dispose(&v242, 8);
  free(v248);
  objc_autoreleasePoolPop(v147);
  if ((objc_msgSend_options(self->_graph._graph, v167, v168, v169, v170, v171, v172, v173) & 0x10) != 0)
  {
    v180 = *(*self->_graph._graphResultImages._items + 4);
    if (v180)
    {
      sub_239BE215C(*(v180 + 104), v174, "\nLegend:\n\tFilterNodeType[filter.index] {src.width x src.height x src.featureChannels src.format}[src.index] ->\n\t\t{dest.width x dest.height x dest.featureChannels dest.format}[dest.index] offset: destinationFeatureChannelOffset\n=============================================================================================================\n");
    }
  }

  v228[0] = 0;
  v228[1] = v228;
  v228[2] = 0x2020000000;
  v228[3] = 0;
  v242 = MEMORY[0x277D85DD0];
  v243 = 3221225472;
  v244 = sub_239C12E98;
  v245 = &unk_278B2F1D8;
  v246 = v108;
  v247 = v117;
  BYTE8(v249) = isKindOfClass & 1;
  v248 = v118;
  *&v249 = v228;
  *&v261 = &v242;
  v181 = self->_graph._graphResultImages._count;
  if (v181)
  {
    for (jj = 0; jj != v181; ++jj)
    {
      v183 = self->_graph._graphResultImages._items[jj];
      if (!v254[*(v183 + 8)])
      {
        v174 = *(v183 + 4);
        if (v174)
        {
          sub_239C19438(&v254, v174);
        }
      }
    }
  }

  if (intermediateImages)
  {
    v184 = self->_graph._graphIntermediateImages._count;
    if (v184)
    {
      for (kk = 0; kk != v184; ++kk)
      {
        v186 = objc_msgSend_objectAtIndexedSubscript_(v108, v174, *(self->_graph._graphIntermediateImages._items[kk] + 8), v175, v176, v177, v178, v179, v213);
        objc_msgSend_addObject_(intermediateImages, v187, v186, v188, v189, v190, v191, v192);
      }
    }
  }

  if (destinationStates)
  {
    v193 = self->_graph._graphResultStates._count;
    if (v193)
    {
      for (mm = 0; mm != v193; ++mm)
      {
        v195 = objc_msgSend_objectAtIndexedSubscript_(v117, v174, *(self->_graph._graphResultStates._items[mm] + 8), v175, v176, v177, v178, v179, v213);
        objc_msgSend_addObject_(destinationStates, v196, v195, v197, v198, v199, v200, v201);
      }
    }
  }

  v202 = *self->_graph._graphResultImages._items;
  if (*(v202 + 80) == 1)
  {
    v203 = objc_msgSend_objectAtIndexedSubscript_(v108, v174, *(v202 + 8), v175, v176, v177, v178, v179);
  }

  else
  {
    v203 = 0;
  }

  _Block_object_dispose(v228, 8);
  _Block_object_dispose(v252, 8);
  _Block_object_dispose(v253, 8);
  free(v254);
  free(v255);
  objc_autoreleasePoolPop(v219);
  return v203;
}

- (id)debugDescription
{
  destinationImageAllocator = self->_destinationImageAllocator;
  if (destinationImageAllocator)
  {
    v10 = objc_msgSend_debugDescription(destinationImageAllocator, a2, v2, v3, v4, v5, v6, v7);
    if (v10)
    {
      v17 = objc_msgSend_cStringUsingEncoding_(v10, v11, 1, v12, v13, v14, v15, v16);
    }

    else
    {
      v17 = "<no description>";
    }
  }

  else
  {
    v17 = "<nil>";
  }

  Name = MPSImageFeatureChannelFormatGetName();
  v19 = MEMORY[0x277CCACA8];
  v47.receiver = self;
  v47.super_class = MPSNNGraph;
  v20 = [(MPSKernel *)&v47 debugDescription];
  outputStateIsTemporary = self->_outputStateIsTemporary;
  resultIsNeeded = self->_resultIsNeeded;
  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = 0;
  v58 = 0;
  v59 = &v58;
  v60 = 0x3052000000;
  v61 = sub_239C130DC;
  v62 = sub_239C130EC;
  v23 = objc_alloc(MEMORY[0x277CCACA8]);
  p_graph = &self->_graph;
  v63 = objc_msgSend_initWithFormat_(v23, v24, &stru_284CE28E0, v25, v26, v27, v28, v29);
  v57 = 0;
  v56 = 0u;
  v55 = 0u;
  v54 = 0u;
  count = self->_graph._images._count;
  v51 = p_graph;
  v52 = count;
  v32 = self->_graph._states._count;
  v53 = p_graph->_states._count;
  v49 = malloc_type_calloc(count, 1uLL, 0x100004077774924uLL);
  v50 = malloc_type_calloc(v32, 1uLL, 0x100004077774924uLL);
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = sub_239C130F8;
  v48[3] = &unk_278B2F200;
  v48[4] = &v58;
  v48[5] = &v64;
  v48[6] = p_graph;
  *&v56 = v48;
  v33 = p_graph->_graphResultImages._count;
  if (v33)
  {
    for (i = 0; i != v33; ++i)
    {
      v35 = p_graph->_graphResultImages._items[i];
      if (!*(v49 + *(v35 + 8)))
      {
        v36 = *(v35 + 4);
        if (v36)
        {
          sub_239C197A4(&v49, v36);
        }
      }
    }
  }

  if (v65[3])
  {
    v37 = v59[5];
  }

  else
  {
    v37 = @"<no filters>";
  }

  if (resultIsNeeded)
  {
    v38 = "YES";
  }

  else
  {
    v38 = "NO";
  }

  if (outputStateIsTemporary)
  {
    v39 = "YES";
  }

  else
  {
    v39 = "NO";
  }

  free(v49);
  free(v50);
  _Block_object_dispose(&v58, 8);
  _Block_object_dispose(&v64, 8);
  return objc_msgSend_stringWithFormat_(v19, v40, @"%@\n\toutputStateIsTemporary:              %s\n\tdestinatonImageAllocator:            %s\n\tdefault intermediate storage foramt: %s\n\tresult is needed:                    %s\n\tlist of nodes:\n\n\t\t(Note: missing nodes have been optimized away.)\n\t%@", v41, v42, v43, v44, v45, v20, v39, v17, Name, v38, v37);
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v142.receiver = self;
  v142.super_class = MPSNNGraph;
  [(MPSKernel *)&v142 encodeWithCoder:?];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  objc_msgSend_encodeObject_forKey_(coder, v7, v6, @"MPSNNGraphc", v8, v9, v10, v11);
  objc_msgSend_encodeObject_forKey_(coder, v12, self->_destinationImageAllocator, @"MPSNNGraphA", v13, v14, v15, v16);
  objc_msgSend_encodeInteger_forKey_(coder, v17, self->_format, @"MPSNNGraphFI", v18, v19, v20, v21);
  objc_msgSend_encodeBool_forKey_(coder, v22, self->_resultIsNeeded, @"MPSNNGraphResultIsNeeded", v23, v24, v25, v26);
  objc_msgSend_encodeBool_forKey_(coder, v27, self->_outputStateIsTemporary, @"MPSNNGraphOutputStateIsTemporary", v28, v29, v30, v31);
  p_graph = &self->_graph;
  count = self->_graph._filters._count;
  v34 = objc_autoreleasePoolPush();
  v47 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v35, count, v36, v37, v38, v39, v40);
  if (count)
  {
    for (i = 0; i != count; ++i)
    {
      v49 = objc_msgSend_wrapperWithFilterNode_(FilterNodeWrapper, v41, p_graph->_filters._items[i], v42, v43, v44, v45, v46);
      objc_msgSend_setObject_atIndexedSubscript_(v47, v50, v49, i, v51, v52, v53, v54);
    }
  }

  objc_msgSend_encodeObject_forKey_(coder, v41, v47, @"MPSNNGraph.filterNodes", v43, v44, v45, v46);
  objc_autoreleasePoolPop(v34);
  v55 = p_graph->_images._count;
  v56 = objc_autoreleasePoolPush();
  v69 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v57, v55, v58, v59, v60, v61, v62);
  if (v55)
  {
    for (j = 0; j != v55; ++j)
    {
      v71 = objc_msgSend_wrapperWithResource_(ResourceWrapper, v63, p_graph->_images._items[j], v64, v65, v66, v67, v68);
      objc_msgSend_setObject_atIndexedSubscript_(v69, v72, v71, j, v73, v74, v75, v76);
    }
  }

  objc_msgSend_encodeObject_forKey_(coder, v63, v69, @"MPSNNGraph.imageNodes", v65, v66, v67, v68);
  objc_autoreleasePoolPop(v56);
  v77 = p_graph->_states._count;
  v78 = objc_autoreleasePoolPush();
  v91 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v79, v77, v80, v81, v82, v83, v84);
  if (v77)
  {
    for (k = 0; k != v77; ++k)
    {
      v93 = objc_msgSend_wrapperWithResource_(ResourceWrapper, v85, p_graph->_states._items[k], v86, v87, v88, v89, v90);
      objc_msgSend_setObject_atIndexedSubscript_(v91, v94, v93, k, v95, v96, v97, v98);
    }
  }

  objc_msgSend_encodeObject_forKey_(coder, v85, v91, @"MPSNNGraph.stateNodes", v87, v88, v89, v90);
  objc_autoreleasePoolPop(v78);
  v99 = p_graph->_graphResultImages._count;
  objc_msgSend_encodeInt32_forKey_(coder, v100, v99, @"MPSNNGraph.resultIndexCount", v101, v102, v103, v104);
  v105 = malloc_type_malloc(4 * v99, 0x100004052888210uLL);
  if (v105)
  {
    v111 = v105;
    if (v99)
    {
      items = p_graph->_graphResultImages._items;
      if (v99 == 1)
      {
        v113 = 0;
      }

      else
      {
        v113 = v99 & 0xFFFFFFFFFFFFFFFELL;
        v114 = items + 1;
        v115 = v105 + 1;
        v116 = v99 & 0xFFFFFFFFFFFFFFFELL;
        do
        {
          v117 = bswap32(*(*v114 + 16));
          *(v115 - 1) = bswap32(*(*(v114 - 1) + 16));
          *v115 = v117;
          v114 += 2;
          v115 += 2;
          v116 -= 2;
        }

        while (v116);
        if (v99 == v113)
        {
          goto LABEL_19;
        }
      }

      v118 = v99 - v113;
      v119 = &v105[v113];
      v120 = &items[v113];
      do
      {
        v121 = *v120++;
        *v119++ = bswap32(*(v121 + 64));
        --v118;
      }

      while (v118);
    }

LABEL_19:
    objc_msgSend_encodeBytes_length_forKey_(coder, v106, v105, 4 * v99, @"MPSNNGraph.resultIndices", v108, v109, v110);
    free(v111);
  }

  objc_msgSend_encodeInt32_forKey_(coder, v106, LODWORD(p_graph->_filters._count), @"MPSNNGraph.filterCount", v107, v108, v109, v110);
  objc_msgSend_encodeInt32_forKey_(coder, v122, LODWORD(p_graph->_images._count), @"MPSNNGraph.imageCount", v123, v124, v125, v126);
  objc_msgSend_encodeInt32_forKey_(coder, v127, LODWORD(p_graph->_states._count), @"MPSNNGraph.stateCount", v128, v129, v130, v131);
  v132 = 2 * p_graph->_graphIntermediateImages._count + 2;
  v133 = malloc_type_malloc(v132, 0x1000040BDFB0063uLL);
  v138 = v133;
  if (v133)
  {
    v139 = p_graph->_graphIntermediateImages._count;
    *v133 = bswap32(v139) >> 16;
    if (v139)
    {
      v140 = p_graph->_graphIntermediateImages._items;
      v141 = v133 + 1;
      do
      {
        while (*v140)
        {
          *v141++ = bswap32(*(*v140++ + 32)) >> 16;
          if (!--v139)
          {
            goto LABEL_28;
          }
        }

        *v141++ = -1;
        ++v140;
        --v139;
      }

      while (v139);
    }
  }

  else
  {
    v132 = 0;
  }

LABEL_28:
  objc_msgSend_encodeBytes_length_forKey_(coder, v134, v133, v132, @"MPSNNGraph.exportedImages", v135, v136, v137);
  free(v138);
}

- (MPSNNGraph)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v193[2] = *MEMORY[0x277D85DE8];
  v192.receiver = self;
  v192.super_class = MPSNNGraph;
  v5 = [(MPSKernel *)&v192 initWithCoder:aDecoder device:device];
  v6 = v5;
  if (v5)
  {
    if (*(&v5->super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
    {
      v7 = objc_autoreleasePoolPush();
      v14 = objc_msgSend_decodeObjectForKey_(aDecoder, v8, @"MPSNNGraphc", v9, v10, v11, v12, v13);
      v15 = NSClassFromString(v14);
      v22 = v15;
      v23 = *MEMORY[0x277CD7378];
      if (*(&v6->super.super.isa + v23))
      {
LABEL_6:
        if (!objc_msgSend_conformsToProtocol_(v15, v16, &unk_284D1B458, v17, v18, v19, v20, v21) || (v31 = objc_msgSend_decodeObjectOfClass_forKey_(aDecoder, v24, v22, @"MPSNNGraphA", v27, v28, v29, v30)) == 0)
        {
          if ((*(&v6->super.super.isa + v23) & 0x10) != 0)
          {
            NSLog(&cfstr_MpsWarningFail.isa);
          }

          v31 = objc_msgSend_defaultAllocator(MEMORY[0x277CD72A8], v24, v25, v26, v27, v28, v29, v30);
        }

        v6->_destinationImageAllocator = v31;
        v38 = objc_msgSend_decodeIntegerForKey_(aDecoder, v32, @"MPSNNGraphFI", v33, v34, v35, v36, v37);
        v45 = 3;
        if ((v38 - 6) >= 0xFFFFFFFFFFFFFFFBLL)
        {
          v45 = v38;
        }

        v6->_format = v45;
        v6->_resultIsNeeded = 1;
        if (objc_msgSend_containsValueForKey_(aDecoder, v39, @"MPSNNGraphResultIsNeeded", v40, v41, v42, v43, v44))
        {
          v6->_resultIsNeeded = objc_msgSend_decodeBoolForKey_(aDecoder, v46, @"MPSNNGraphResultIsNeeded", v47, v48, v49, v50, v51);
        }

        v6->_outputStateIsTemporary = objc_msgSend_decodeBoolForKey_(aDecoder, v46, @"MPSNNGraphOutputStateIsTemporary", v47, v48, v49, v50, v51);
        v52 = objc_opt_class();
        v53 = objc_autoreleasePoolPush();
        v54 = MEMORY[0x277CBEB98];
        v193[0] = objc_opt_class();
        v193[1] = v52;
        v60 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v55, v193, 2, v56, v57, v58, v59);
        v67 = objc_msgSend_setWithArray_(v54, v61, v60, v62, v63, v64, v65, v66);
        v73 = objc_msgSend_decodeObjectOfClasses_forKey_(aDecoder, v68, v67, @"MPSNNGraph.filterNodes", v69, v70, v71, v72);
        v81 = v73;
        if (v73)
        {
          v82 = objc_msgSend_count(v73, v74, v75, v76, v77, v78, v79, v80);
          v6->_graph._filters._count = 0;
          v6->_graph._filters._storageSize = v82;
          free(v6->_graph._filters._items);
          v83 = malloc_type_malloc(8 * v6->_graph._filters._storageSize, 0x2004093837F09uLL);
          v6->_graph._filters._items = v83;
          if (v83)
          {
            if (v6->_graph._filters._storageSize)
            {
              v90 = 0;
              do
              {
                v91 = objc_msgSend_objectAtIndex_(v81, v84, v90, v85, v86, v87, v88, v89);
                v99 = objc_msgSend_node(v91, v92, v93, v94, v95, v96, v97, v98);
                sub_239C0F98C(&v6->_graph._filters, v99);
                ++v90;
              }

              while (v90 < v6->_graph._filters._storageSize);
            }

            objc_autoreleasePoolPop(v53);
            v100 = objc_opt_class();
            sub_239C137A4(&v6->_graph._images, aDecoder, @"MPSNNGraph.imageNodes", v100);
            v101 = objc_opt_class();
            sub_239C137A4(&v6->_graph._states, aDecoder, @"MPSNNGraph.stateNodes", v101);
            v6->_graph._graph = v6;
            v108 = objc_msgSend_decodeInt32ForKey_(aDecoder, v102, @"MPSNNGraph.filterCount", v103, v104, v105, v106, v107);
            v115 = objc_msgSend_decodeInt32ForKey_(aDecoder, v109, @"MPSNNGraph.imageCount", v110, v111, v112, v113, v114);
            v122 = objc_msgSend_decodeInt32ForKey_(aDecoder, v116, @"MPSNNGraph.stateCount", v117, v118, v119, v120, v121);
            count = v6->_graph._filters._count;
            if (count == v108 && v6->_graph._images._count == v115 && v6->_graph._states._count == v122)
            {
              v130 = objc_msgSend_decodeInt32ForKey_(aDecoder, v123, @"MPSNNGraph.resultIndexCount", v124, v125, v126, v127, v128);
              v136 = v130;
              v137 = v130;
              storageSize = v6->_graph._graphResultImages._storageSize;
              if (!v130)
              {
                if (!storageSize)
                {
                  v150 = malloc_type_malloc(0x10uLL, 0x2004093837F09uLL);
                  v151 = v150;
                  if (v150)
                  {
                    v152 = v6->_graph._graphResultImages._count;
                    if (v152)
                    {
                      memcpy(v150, v6->_graph._graphResultImages._items, 8 * v152);
                    }

                    free(v6->_graph._graphResultImages._items);
                    v6->_graph._graphResultImages._storageSize = 2;
                    v6->_graph._graphResultImages._items = v151;
                  }

                  else if (MTLReportFailureTypeEnabled())
                  {
                    MTLReportFailure();
                  }
                }

                v6->_graph._graphResultImages._count = 1;
                *v6->_graph._graphResultImages._items = 0;
                goto LABEL_54;
              }

              if (storageSize < v130)
              {
                v139 = (v130 + 1) & 0xFFFFFFFFFFFFFFFELL;
                v140 = malloc_type_malloc(8 * v139, 0x2004093837F09uLL);
                v141 = v140;
                if (v140)
                {
                  v142 = v6->_graph._graphResultImages._count;
                  if (v142)
                  {
                    memcpy(v140, v6->_graph._graphResultImages._items, 8 * v142);
                  }

                  free(v6->_graph._graphResultImages._items);
                  v6->_graph._graphResultImages._storageSize = v139;
                  v6->_graph._graphResultImages._items = v141;
                }

                else if (MTLReportFailureTypeEnabled())
                {
                  MTLReportFailure();
                }
              }

              v6->_graph._graphResultImages._count = v137;
              v193[0] = 0;
              v143 = objc_msgSend_decodeBytesForKey_returnedLength_(aDecoder, v131, @"MPSNNGraph.resultIndices", v193, v132, v133, v134, v135);
              if (v143)
              {
                if (v193[0] < 4uLL)
                {
                  goto LABEL_54;
                }

                if (v193[0] >> 2 >= v137)
                {
                  v145 = v137;
                }

                else
                {
                  v145 = v193[0] >> 2;
                }

                items = v6->_graph._graphResultImages._items;
                if (v145 <= 1)
                {
                  v147 = 1;
                }

                else
                {
                  v147 = v145;
                }

                if (v145 <= 7)
                {
                  v148 = 0;
LABEL_52:
                  v162 = v147 - v148;
                  v163 = &items[v148];
                  v164 = (v143 + 4 * v148);
                  do
                  {
                    v165 = *v164++;
                    *v163++ = bswap32(v165);
                    --v162;
                  }

                  while (v162);
                  goto LABEL_54;
                }

                v148 = v147 & 0x3FFFFFFFFFFFFFF8;
                v153 = (v143 + 16);
                v154 = items + 4;
                v155 = v147 & 0x3FFFFFFFFFFFFFF8;
                do
                {
                  v156 = vrev32q_s8(v153[-1]);
                  v157 = vrev32q_s8(*v153);
                  *&v158 = v156.u32[0];
                  *(&v158 + 1) = v156.u32[1];
                  v159 = v158;
                  *&v158 = v156.u32[2];
                  *(&v158 + 1) = v156.u32[3];
                  v160 = v158;
                  *&v158 = v157.u32[0];
                  *(&v158 + 1) = v157.u32[1];
                  v161 = v158;
                  *&v158 = v157.u32[2];
                  *(&v158 + 1) = v157.u32[3];
                  *(v154 - 2) = v159;
                  *(v154 - 1) = v160;
                  *v154 = v161;
                  v154[1] = v158;
                  v154 += 4;
                  v153 += 2;
                  v155 -= 8;
                }

                while (v155);
                if (v145 != v148)
                {
                  goto LABEL_52;
                }

LABEL_54:
                sub_239C13390(&v6->_graph._graphSourceImages._items);
                v193[0] = 0;
                v171 = objc_msgSend_decodeBytesForKey_returnedLength_(aDecoder, v166, @"MPSNNGraph.exportedImages", v193, v167, v168, v169, v170);
                if (!v171 || !sub_239C13920(&v6->_graph._graphIntermediateImages, v171, v193[0], &v6->_graph._images))
                {
                  v172 = v6->_graph._images._count;
                  v6->_graph._graphIntermediateImages._count = 0;
                  if (v6->_graph._graphIntermediateImages._storageSize)
                  {
                    v173 = malloc_type_malloc(0, 0x2004093837F09uLL);
                    v174 = v173;
                    if (v173)
                    {
                      v175 = v6->_graph._graphIntermediateImages._count;
                      if (v175)
                      {
                        memcpy(v173, v6->_graph._graphIntermediateImages._items, 8 * v175);
                      }

                      free(v6->_graph._graphIntermediateImages._items);
                      v6->_graph._graphIntermediateImages._storageSize = 0;
                      v6->_graph._graphIntermediateImages._items = v174;
                    }

                    else if (MTLReportFailureTypeEnabled())
                    {
                      MTLReportFailure();
                    }
                  }

                  if (v172)
                  {
                    for (i = 0; i != v172; ++i)
                    {
                      v177 = v6->_graph._images._items[i];
                      if (v177 && *(v177 + 80) == 1 && (*(v177 + 81) & 1) == 0)
                      {
                        sub_239C0F98C(&v6->_graph._graphIntermediateImages, v177);
                      }
                    }
                  }
                }

                if (!v136)
                {
                  goto LABEL_76;
                }

                v178 = v6->_graph._graphResultImages._items;
                if (v136 == 1)
                {
                  v179 = 0;
                }

                else
                {
                  v179 = v137 & 0xFFFFFFFFFFFFFFFELL;
                  v180 = (v178 + 1);
                  v181 = v137 & 0xFFFFFFFFFFFFFFFELL;
                  do
                  {
                    v182 = *v180;
                    *(*(v180 - 1) + 81) = 1;
                    *(v182 + 81) = 1;
                    v180 += 2;
                    v181 -= 2;
                  }

                  while (v181);
                  if (v179 == v137)
                  {
                    goto LABEL_76;
                  }
                }

                v183 = v137 - v179;
                v184 = &v178[v179];
                do
                {
                  v185 = *v184++;
                  *(v185 + 81) = 1;
                  --v183;
                }

                while (v183);
LABEL_76:
                objc_autoreleasePoolPop(v7);
                return v6;
              }

              sub_239BE215C(v6->_graph._graph, v144, "Error: The indices of the returned graph image nodes are missing.");
            }

            else
            {
              sub_239BE215C(v6->_graph._graph, v123, "Warning: Some parts of the encoded graph appear to be missing. \n\t %lu filters, %lu images and %lu states were found.\n\t Expected: %lu filters, %lu images, %lu states\n", count);
            }

            exception = __cxa_allocate_exception(4uLL);
            *exception = 1;
            __cxa_throw(exception, &unk_284CD31F8, 0);
          }

          v189 = -2;
        }

        else
        {
          v189 = -1;
        }

        v190 = __cxa_allocate_exception(4uLL);
        *v190 = v189;
        __cxa_throw(v190, MEMORY[0x277D827C0], 0);
      }

      if (v14)
      {
        if (v15)
        {
          goto LABEL_6;
        }

        if (MTLReportFailureTypeEnabled())
        {
          v188 = objc_opt_class();
          NSStringFromClass(v188);
          MTLReportFailure();
        }
      }

      else if (MTLReportFailureTypeEnabled())
      {
        v187 = objc_opt_class();
        NSStringFromClass(v187);
        MTLReportFailure();
      }

      objc_autoreleasePoolPop(v7);
    }

    else
    {
      if (MTLReportFailureTypeEnabled())
      {
        v149 = objc_opt_class();
        NSStringFromClass(v149);
        MTLReportFailure();
      }
    }

    return 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v49.receiver = self;
  v49.super_class = MPSNNGraph;
  v5 = [(MPSKernel *)&v49 copyWithZone:zone device:device];
  if (!v5)
  {
    return v5;
  }

  v5[38] = self->_destinationImageAllocator;
  v5[39] = self->_format;
  *(v5 + 320) = self->_resultIsNeeded;
  *(v5 + 321) = self->_outputStateIsTemporary;
  p_graph = &self->_graph;
  v5[26] = v5;
  count = self->_graph._filters._count;
  if (v5[29] != count)
  {
    v8 = (count + 1) & 0xFFFFFFFFFFFFFFFELL;
    v9 = malloc_type_malloc(8 * v8, 0x2004093837F09uLL);
    v10 = v9;
    if (v9)
    {
      v11 = v5[28];
      if (v11)
      {
        memcpy(v9, v5[27], 8 * v11);
      }

      free(v5[27]);
      v5[29] = v8;
      v5[27] = v10;
    }

    else if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  if (count)
  {
    for (i = 0; i != count; ++i)
    {
      v13 = sub_239D38CD0(p_graph->_filters._items[i]);
      sub_239C0F98C((v5 + 27), v13);
    }
  }

  v14 = p_graph->_images._count;
  if (v5[32] != v14)
  {
    v15 = (v14 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v16 = malloc_type_malloc(8 * v15, 0x2004093837F09uLL);
    v17 = v16;
    if (v16)
    {
      v18 = v5[31];
      if (v18)
      {
        memcpy(v16, v5[30], 8 * v18);
      }

      free(v5[30]);
      v5[32] = v15;
      v5[30] = v17;
    }

    else if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  if (v14)
  {
    operator new();
  }

  v19 = p_graph->_states._count;
  if (v5[35] != v19)
  {
    v20 = (v19 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v21 = malloc_type_malloc(8 * v20, 0x2004093837F09uLL);
    v22 = v21;
    if (v21)
    {
      v23 = v5[34];
      if (v23)
      {
        memcpy(v21, v5[33], 8 * v23);
      }

      free(v5[33]);
      v5[35] = v20;
      v5[33] = v22;
    }

    else if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  if (v19)
  {
    operator new();
  }

  v24 = p_graph->_graphResultImages._count;
  if (v5[19] >= v24)
  {
    v5[18] = v24;
    if (!v24)
    {
      v33 = 1;
      goto LABEL_34;
    }
  }

  else
  {
    v25 = (v24 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v26 = malloc_type_malloc(8 * v25, 0x2004093837F09uLL);
    v27 = v26;
    if (v26)
    {
      v28 = v5[18];
      if (v28)
      {
        memcpy(v26, v5[17], 8 * v28);
      }

      free(v5[17]);
      v5[19] = v25;
      v5[17] = v27;
    }

    else if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v5[18] = v24;
  }

  items = p_graph->_graphResultImages._items;
  v30 = v5[17];
  v31 = v24;
  do
  {
    v32 = *items++;
    *v30++ = *(v32 + 64);
    --v31;
  }

  while (v31);
  v33 = 0;
LABEL_34:
  sub_239C13390(v5 + 11);
  v34 = 2 * p_graph->_graphIntermediateImages._count;
  v35 = malloc_type_malloc(v34 + 2, 0x1000040BDFB0063uLL);
  v36 = v35;
  if (v35)
  {
    v37 = p_graph->_graphIntermediateImages._count;
    *v35 = bswap32(v37) >> 16;
    if (v37)
    {
      v38 = p_graph->_graphIntermediateImages._items;
      v39 = v35 + 1;
      do
      {
        while (*v38)
        {
          *v39++ = bswap32(*(*v38++ + 32)) >> 16;
          if (!--v37)
          {
            goto LABEL_40;
          }
        }

        *v39++ = -1;
        ++v38;
        --v37;
      }

      while (v37);
    }

LABEL_40:
    sub_239C13920((v5 + 20), v35, v34 + 2, (v5 + 30));
    free(v36);
  }

  if ((v33 & 1) == 0)
  {
    v40 = v5[17];
    if (v24 < 2)
    {
      v41 = 0;
LABEL_47:
      v45 = v24 - v41;
      v46 = &v40[8 * v41];
      do
      {
        v47 = *v46++;
        *(v47 + 81) = 1;
        --v45;
      }

      while (v45);
      return v5;
    }

    v41 = v24 & 0xFFFFFFFFFFFFFFFELL;
    v42 = (v40 + 8);
    v43 = v24 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      v44 = *v42;
      *(*(v42 - 1) + 81) = 1;
      *(v44 + 81) = 1;
      v42 += 2;
      v43 -= 2;
    }

    while (v43);
    if (v24 != v41)
    {
      goto LABEL_47;
    }
  }

  return v5;
}

- (MPSImage)executeAsyncWithSourceImages:(NSArray *)sourceImages completionHandler:(MPSNNGraphCompletionHandler)handler
{
  v98[1] = *MEMORY[0x277D85DE8];
  v11 = objc_msgSend_objectAtIndexedSubscript_(sourceImages, a2, 0, handler, v4, v5, v6, v7);
  objc_msgSend_device(v11, v12, v13, v14, v15, v16, v17, v18);
  MPSDevice = MPSDevice::GetMPSDevice();
  Queue = MPSDevice::GetQueue(MPSDevice);
  v35 = objc_msgSend_commandBufferWithUnretainedReferences(Queue, v21, v22, v23, v24, v25, v26, v27);
  v36 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.isa + v36) & 1) == 0)
  {
    if (self->_outputStateIsTemporary && MTLReportFailureTypeEnabled())
    {
      v92 = objc_opt_class();
      v95 = NSStringFromClass(v92);
      MTLReportFailure();
    }

    objc_msgSend_defaultAllocator(MEMORY[0x277CD72A8], v28, v29, v30, v31, v32, v33, v34, v95);
    destinationImageAllocator = self->_destinationImageAllocator;
    if (destinationImageAllocator == objc_msgSend_defaultAllocator(MEMORY[0x277CD72A8], v38, v39, v40, v41, v42, v43, v44) && MTLReportFailureTypeEnabled())
    {
      v93 = objc_opt_class();
      v95 = NSStringFromClass(v93);
      MTLReportFailure();
    }
  }

  v45 = objc_msgSend_encodeToCommandBuffer_sourceImages_(self, v28, v35, sourceImages, v31, v32, v33, v34, v95);
  v53 = v45;
  if (!v45)
  {
    v80 = objc_autoreleasePoolPush();
    v81 = MEMORY[0x277CCA9B8];
    v97 = *MEMORY[0x277CCA450];
    v98[0] = @"Failed to allocate MPSImage";
    v86 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v82, v98, &v97, 1, v83, v84, v85);
    v91 = objc_msgSend_errorWithDomain_code_userInfo_(v81, v87, @"MPSErrorDomain", -5, v86, v88, v89, v90);
    (*(handler + 2))(handler, 0, v91);
    objc_autoreleasePoolPop(v80);
    return v53;
  }

  v54 = objc_msgSend_texture(v45, v46, v47, v48, v49, v50, v51, v52);
  v62 = objc_msgSend_storageMode(v54, v55, v56, v57, v58, v59, v60, v61);
  if ((*(&self->super.super.isa + v36) & 1) == 0)
  {
    if (v62 != 3)
    {
      if (v62 != 2 || !MTLReportFailureTypeEnabled())
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }

    if (MTLReportFailureTypeEnabled())
    {
LABEL_18:
      v94 = objc_opt_class();
      NSStringFromClass(v94);
      MTLReportFailure();
    }
  }

LABEL_8:
  v63 = sourceImages;
  v64 = Queue;
  v65 = v53;
  v96[0] = MEMORY[0x277D85DD0];
  v96[1] = 3221225472;
  v96[2] = sub_239C0EE0C;
  v96[3] = &unk_278B2F008;
  v96[7] = handler;
  v96[8] = MPSDevice;
  v96[4] = Queue;
  v96[5] = v53;
  v96[6] = sourceImages;
  objc_msgSend_addCompletedHandler_(v35, v66, v96, v67, v68, v69, v70, v71);
  objc_msgSend_commit(v35, v72, v73, v74, v75, v76, v77, v78);
  return v53;
}

- (void)setOptions:(unint64_t)options
{
  p_graph = &self->_graph;
  count = self->_graph._filters._count;
  if (count)
  {
    for (i = 0; i != count; ++i)
    {
      v8 = p_graph->_filters._items[i];
      (*(*v8 + 264))(v8, options);
    }
  }

  *(&self->super.super.isa + *MEMORY[0x277CD7378]) = options;
}

- (void)reloadFromDataSources
{
  p_graph = &self->_graph;
  v18 = 0;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  count = self->_graph._images._count;
  v12 = p_graph;
  v13 = count;
  v14 = p_graph->_states._count;
  v4 = malloc_type_calloc(count, 1uLL, 0x100004077774924uLL);
  v10 = v4;
  v11 = malloc_type_calloc(v14, 1uLL, 0x100004077774924uLL);
  *&v17 = &unk_284CC8BC0;
  v5 = p_graph->_graphResultImages._count;
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v7 = p_graph->_graphResultImages._items[i];
      if (!v10[*(v7 + 8)])
      {
        v8 = *(v7 + 4);
        if (v8)
        {
          sub_239C18ECC(&v10, v8);
        }
      }
    }

    v9 = v10;
  }

  else
  {
    v9 = v4;
  }

  free(v9);
  free(v11);
}

- (id).cxx_construct
{
  p_graph = &self->_graph;
  *&self->_graph._graphSourceImages._count = xmmword_239D7DE50;
  self->_graph._graphSourceImages._items = malloc_type_malloc(0x10uLL, 0x2004093837F09uLL);
  *&p_graph->_graphSourceStates._count = xmmword_239D7DE50;
  p_graph->_graphSourceStates._items = malloc_type_malloc(0x10uLL, 0x2004093837F09uLL);
  *&p_graph->_graphResultImages._count = xmmword_239D7DE50;
  p_graph->_graphResultImages._items = malloc_type_malloc(0x10uLL, 0x2004093837F09uLL);
  *&p_graph->_graphIntermediateImages._count = xmmword_239D7DE50;
  p_graph->_graphIntermediateImages._items = malloc_type_malloc(0x10uLL, 0x2004093837F09uLL);
  *&p_graph->_graphResultStates._count = xmmword_239D7DE50;
  p_graph->_graphResultStates._items = malloc_type_malloc(0x10uLL, 0x2004093837F09uLL);
  *&p_graph->_filters._count = xmmword_239D7DE50;
  p_graph->_filters._items = malloc_type_malloc(0x10uLL, 0x2004093837F09uLL);
  *&p_graph->_images._count = xmmword_239D7DE50;
  p_graph->_images._items = malloc_type_malloc(0x10uLL, 0x2004093837F09uLL);
  *&p_graph->_states._count = xmmword_239D7DE50;
  p_graph->_states._items = malloc_type_malloc(0x10uLL, 0x2004093837F09uLL);
  v11 = objc_msgSend_null(MEMORY[0x277CBEB68], v4, v5, v6, v7, v8, v9, v10);
  p_graph->_cpuUpdateSem = 0;
  p_graph->_graphNull = v11;
  return self;
}

@end