@interface MPSNNBinaryArithmeticNode
+ (MPSNNBinaryArithmeticNode)nodeWithLeftSource:(MPSNNImageNode *)left rightSource:(MPSNNImageNode *)right;
+ (MPSNNBinaryArithmeticNode)nodeWithSources:(NSArray *)sourceNodes;
- (MPSNNBinaryArithmeticNode)initWithLeftSource:(MPSNNImageNode *)left rightSource:(MPSNNImageNode *)right;
- (MPSNNBinaryArithmeticNode)initWithSources:(NSArray *)sourceNodes;
- (MPSNNGradientFilterNode)gradientFilterWithSources:(NSArray *)gradientImages;
- (NSArray)gradientFiltersWithSources:(NSArray *)gradientImages;
@end

@implementation MPSNNBinaryArithmeticNode

+ (MPSNNBinaryArithmeticNode)nodeWithSources:(NSArray *)sourceNodes
{
  v4 = [self alloc];
  v11 = objc_msgSend_initWithSources_(v4, v5, sourceNodes, v6, v7, v8, v9, v10);

  return v11;
}

+ (MPSNNBinaryArithmeticNode)nodeWithLeftSource:(MPSNNImageNode *)left rightSource:(MPSNNImageNode *)right
{
  v6 = [self alloc];
  v12 = objc_msgSend_initWithLeftSource_rightSource_(v6, v7, left, right, v8, v9, v10, v11);

  return v12;
}

- (MPSNNBinaryArithmeticNode)initWithSources:(NSArray *)sourceNodes
{
  v4.receiver = self;
  v4.super_class = MPSNNBinaryArithmeticNode;
  result = [(MPSNNFilterNode *)&v4 initWithSourceImages:sourceNodes sourceStates:0 paddingPolicy:0];
  result->_primaryScale = 1.0;
  result->_secondaryScale = 1.0;
  result->_bias = 0.0;
  result->_minimumValue = -INFINITY;
  result->_maximumValue = INFINITY;
  result->_primaryStrideInPixelsX = 1;
  result->_primaryStrideInPixelsY = 1;
  result->_primaryStrideInFeatureChannels = 1;
  result->_secondaryStrideInPixelsX = 1;
  result->_secondaryStrideInPixelsY = 1;
  result->_secondaryStrideInFeatureChannels = 1;
  return result;
}

- (MPSNNBinaryArithmeticNode)initWithLeftSource:(MPSNNImageNode *)left rightSource:(MPSNNImageNode *)right
{
  v12[2] = *MEMORY[0x277D85DE8];
  v12[0] = left;
  v12[1] = right;
  v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v12, 2, v4, v5, v6, v7);
  v11.receiver = self;
  v11.super_class = MPSNNBinaryArithmeticNode;
  result = [(MPSNNFilterNode *)&v11 initWithSourceImages:v9 sourceStates:0 paddingPolicy:0];
  result->_primaryScale = 1.0;
  result->_secondaryScale = 1.0;
  result->_bias = 0.0;
  result->_minimumValue = -INFINITY;
  result->_maximumValue = INFINITY;
  result->_primaryStrideInPixelsX = 1;
  result->_primaryStrideInPixelsY = 1;
  result->_primaryStrideInFeatureChannels = 1;
  result->_secondaryStrideInPixelsX = 1;
  result->_secondaryStrideInPixelsY = 1;
  result->_secondaryStrideInFeatureChannels = 1;
  return result;
}

- (MPSNNGradientFilterNode)gradientFilterWithSources:(NSArray *)gradientImages
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (NSArray)gradientFiltersWithSources:(NSArray *)gradientImages
{
  v135[2] = *MEMORY[0x277D85DE8];
  objc_msgSend_count(gradientImages, a2, gradientImages, v3, v4, v5, v6, v7);
  if (objc_msgSend_count(gradientImages, v10, v11, v12, v13, v14, v15, v16) != 1 && MTLReportFailureTypeEnabled())
  {
    v131 = objc_opt_class();
    v133 = NSStringFromClass(v131);
    MTLReportFailure();
  }

  objc_msgSend_objectAtIndexedSubscript_(gradientImages, v17, 0, v18, v19, v20, v21, v22, v133);
  if (!objc_msgSend_objectAtIndexedSubscript_(gradientImages, v23, 0, v24, v25, v26, v27, v28) && MTLReportFailureTypeEnabled())
  {
    v132 = objc_opt_class();
    v134 = NSStringFromClass(v132);
    MTLReportFailure();
  }

  v36 = objc_msgSend_resultState(self, v29, v30, v31, v32, v33, v34, v35, v134);
  v44 = objc_msgSend_gradientClass(self, v37, v38, v39, v40, v41, v42, v43);
  v51 = objc_msgSend_objectAtIndexedSubscript_(gradientImages, v45, 0, v46, v47, v48, v49, v50);
  v58 = objc_msgSend_objectAtIndexedSubscript_(self->super._sourceImages, v52, 0, v53, v54, v55, v56, v57);
  isSecondarySourceFilter = objc_msgSend_nodeWithSourceGradient_sourceImage_gradientState_isSecondarySourceFilter_(v44, v59, v51, v58, v36, 0, v60, v61);
  objc_msgSend_setSecondaryStrideInPixelsX_(isSecondarySourceFilter, v63, self->_primaryStrideInPixelsX, v64, v65, v66, v67, v68);
  objc_msgSend_setSecondaryStrideInPixelsY_(isSecondarySourceFilter, v69, self->_primaryStrideInPixelsY, v70, v71, v72, v73, v74);
  objc_msgSend_setSecondaryStrideInFeatureChannels_(isSecondarySourceFilter, v75, self->_primaryStrideInFeatureChannels, v76, v77, v78, v79, v80);
  v88 = objc_msgSend_gradientClass(self, v81, v82, v83, v84, v85, v86, v87);
  v95 = objc_msgSend_objectAtIndexedSubscript_(gradientImages, v89, 0, v90, v91, v92, v93, v94);
  v102 = objc_msgSend_objectAtIndexedSubscript_(self->super._sourceImages, v96, 1, v97, v98, v99, v100, v101);
  v106 = objc_msgSend_nodeWithSourceGradient_sourceImage_gradientState_isSecondarySourceFilter_(v88, v103, v95, v102, v36, 1, v104, v105);
  objc_msgSend_setSecondaryStrideInPixelsX_(v106, v107, self->_secondaryStrideInPixelsX, v108, v109, v110, v111, v112);
  objc_msgSend_setSecondaryStrideInPixelsY_(v106, v113, self->_secondaryStrideInPixelsY, v114, v115, v116, v117, v118);
  objc_msgSend_setSecondaryStrideInFeatureChannels_(v106, v119, self->_secondaryStrideInFeatureChannels, v120, v121, v122, v123, v124);
  v135[0] = isSecondarySourceFilter;
  v135[1] = v106;
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v125, v135, 2, v126, v127, v128, v129);
}

@end