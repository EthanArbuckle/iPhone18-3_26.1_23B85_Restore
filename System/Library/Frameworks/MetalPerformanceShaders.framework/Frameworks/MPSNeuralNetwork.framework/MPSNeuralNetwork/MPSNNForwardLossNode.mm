@interface MPSNNForwardLossNode
+ (MPSNNForwardLossNode)nodeWithSource:(MPSNNImageNode *)source labels:(MPSNNImageNode *)labels lossDescriptor:(MPSCNNLossDescriptor *)descriptor;
+ (MPSNNForwardLossNode)nodeWithSource:(MPSNNImageNode *)source labels:(MPSNNImageNode *)labels weights:(MPSNNImageNode *)weights lossDescriptor:(MPSCNNLossDescriptor *)descriptor;
+ (MPSNNForwardLossNode)nodeWithSources:(NSArray *)sourceNodes lossDescriptor:(MPSCNNLossDescriptor *)descriptor;
- (MPSNNForwardLossNode)initWithSource:(MPSNNImageNode *)source labels:(MPSNNImageNode *)labels weights:(MPSNNImageNode *)weights lossDescriptor:(MPSCNNLossDescriptor *)descriptor;
- (MPSNNForwardLossNode)initWithSources:(NSArray *)sourceNodes lossDescriptor:(MPSCNNLossDescriptor *)descriptor;
- (MPSNNLossGradientNode)gradientFilterWithSource:(MPSNNImageNode *)sourceGradient;
- (MPSNNLossGradientNode)gradientFilterWithSources:(NSArray *)sourceGradient;
- (NSArray)gradientFiltersWithSource:(MPSNNImageNode *)sourceGradient;
- (NSArray)gradientFiltersWithSources:(NSArray *)sourceGradient;
- (void)dealloc;
@end

@implementation MPSNNForwardLossNode

+ (MPSNNForwardLossNode)nodeWithSource:(MPSNNImageNode *)source labels:(MPSNNImageNode *)labels weights:(MPSNNImageNode *)weights lossDescriptor:(MPSCNNLossDescriptor *)descriptor
{
  v10 = [self alloc];
  v14 = objc_msgSend_initWithSource_labels_weights_lossDescriptor_(v10, v11, source, labels, weights, descriptor, v12, v13);

  return v14;
}

+ (MPSNNForwardLossNode)nodeWithSource:(MPSNNImageNode *)source labels:(MPSNNImageNode *)labels lossDescriptor:(MPSCNNLossDescriptor *)descriptor
{
  v8 = [self alloc];
  v12 = objc_msgSend_initWithSource_labels_weights_lossDescriptor_(v8, v9, source, labels, 0, descriptor, v10, v11);

  return v12;
}

+ (MPSNNForwardLossNode)nodeWithSources:(NSArray *)sourceNodes lossDescriptor:(MPSCNNLossDescriptor *)descriptor
{
  v11 = objc_msgSend_objectAtIndexedSubscript_(sourceNodes, a2, 0, descriptor, v4, v5, v6, v7);
  v18 = objc_msgSend_objectAtIndexedSubscript_(sourceNodes, v12, 1, v13, v14, v15, v16, v17);
  v32 = 0;
  if (objc_msgSend_count(sourceNodes, v19, v20, v21, v22, v23, v24, v25) >= 3)
  {
    v32 = objc_msgSend_objectAtIndexedSubscript_(sourceNodes, v26, 2, v27, v28, v29, v30, v31);
  }

  v33 = [self alloc];
  v37 = objc_msgSend_initWithSource_labels_weights_lossDescriptor_(v33, v34, v11, v18, v32, descriptor, v35, v36);

  return v37;
}

- (MPSNNForwardLossNode)initWithSource:(MPSNNImageNode *)source labels:(MPSNNImageNode *)labels weights:(MPSNNImageNode *)weights lossDescriptor:(MPSCNNLossDescriptor *)descriptor
{
  v75[3] = *MEMORY[0x277D85DE8];
  if (weights)
  {
    v75[0] = source;
    v75[1] = labels;
    v75[2] = weights;
    v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v75, 3, weights, descriptor, v6, v7);
  }

  else
  {
    v74[0] = source;
    v74[1] = labels;
    v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v74, 2, 0, descriptor, v6, v7);
  }

  v73.receiver = self;
  v73.super_class = MPSNNForwardLossNode;
  v11 = [(MPSNNFilterNode *)&v73 initWithSourceImages:v10 sourceStates:0 paddingPolicy:0];
  v11->_descriptor = descriptor;
  v11->_lossType = objc_msgSend_lossType(descriptor, v12, v13, v14, v15, v16, v17, v18);
  v11->_reductionType = objc_msgSend_reductionType(descriptor, v19, v20, v21, v22, v23, v24, v25);
  objc_msgSend_weight(descriptor, v26, v27, v28, v29, v30, v31, v32);
  v11->_weight = v33;
  objc_msgSend_labelSmoothing(descriptor, v34, v35, v36, v37, v38, v39, v40);
  v11->_labelSmoothing = v41;
  v11->_numberOfClasses = objc_msgSend_numberOfClasses(descriptor, v42, v43, v44, v45, v46, v47, v48);
  objc_msgSend_epsilon(descriptor, v49, v50, v51, v52, v53, v54, v55);
  v11->_epsilon = v56;
  objc_msgSend_delta(descriptor, v57, v58, v59, v60, v61, v62, v63);
  v11->_delta = v64;
  v11->_reduceAcrossBatch = objc_msgSend_reduceAcrossBatch(descriptor, v65, v66, v67, v68, v69, v70, v71);
  v11->_propertyCallBack = 0;
  return v11;
}

- (MPSNNForwardLossNode)initWithSources:(NSArray *)sourceNodes lossDescriptor:(MPSCNNLossDescriptor *)descriptor
{
  v11 = objc_msgSend_objectAtIndexedSubscript_(sourceNodes, a2, 0, descriptor, v4, v5, v6, v7);
  v18 = objc_msgSend_objectAtIndexedSubscript_(sourceNodes, v12, 1, v13, v14, v15, v16, v17);
  v26 = objc_msgSend_count(sourceNodes, v19, v20, v21, v22, v23, v24, v25);
  v32 = 0;
  if (v26 >= 3)
  {
    v32 = objc_msgSend_objectAtIndexedSubscript_(sourceNodes, v27, 2, v28, 0, v29, v30, v31);
  }

  return objc_msgSend_initWithSource_labels_weights_lossDescriptor_(self, v27, v11, v18, v32, descriptor, v30, v31);
}

- (MPSNNLossGradientNode)gradientFilterWithSources:(NSArray *)sourceGradient
{
  v9 = objc_msgSend_objectAtIndexedSubscript_(sourceGradient, a2, 0, v3, v4, v5, v6, v7);

  return MEMORY[0x2821F9670](self, sel_gradientFilterWithSource_, v9, v10, v11, v12, v13, v14);
}

- (MPSNNLossGradientNode)gradientFilterWithSource:(MPSNNImageNode *)sourceGradient
{
  v10 = objc_msgSend_sourceImages(self, a2, sourceGradient, v3, v4, v5, v6, v7);
  v18 = objc_msgSend_count(v10, v11, v12, v13, v14, v15, v16, v17);
  v19 = [MPSNNLossGradientNode alloc];
  v27 = objc_msgSend_sourceImages(self, v20, v21, v22, v23, v24, v25, v26);
  v34 = objc_msgSend_objectAtIndexedSubscript_(v27, v28, 0, v29, v30, v31, v32, v33);
  v42 = objc_msgSend_sourceImages(self, v35, v36, v37, v38, v39, v40, v41);
  v56 = objc_msgSend_objectAtIndexedSubscript_(v42, v43, 1, v44, v45, v46, v47, v48);
  if (v18 == 3)
  {
    v57 = objc_msgSend_sourceImages(self, v49, v50, v51, v52, v53, v54, v55);
    v64 = objc_msgSend_objectAtIndexedSubscript_(v57, v58, 2, v59, v60, v61, v62, v63);
    v72 = objc_msgSend_resultState(self, v65, v66, v67, v68, v69, v70, v71);
    v78 = 0;
    isLabelsGradientFilter = objc_msgSend_initWithSourceGradient_sourceImage_labels_weights_gradientState_lossDescriptor_isLabelsGradientFilter_(v19, v73, sourceGradient, v34, v56, v64, v72, self->_descriptor, v78);
  }

  else
  {
    v75 = objc_msgSend_resultState(self, v49, v50, v51, v52, v53, v54, v55);
    isLabelsGradientFilter = objc_msgSend_initWithSourceGradient_sourceImage_labels_gradientState_lossDescriptor_isLabelsGradientFilter_(v19, v76, sourceGradient, v34, v56, v75, self->_descriptor, 0);
  }

  return isLabelsGradientFilter;
}

- (NSArray)gradientFiltersWithSources:(NSArray *)sourceGradient
{
  v10 = objc_msgSend_objectAtIndexedSubscript_(sourceGradient, a2, 0, v3, v4, v5, v6, v7);

  return objc_msgSend_gradientFiltersWithSource_(self, v9, v10, v11, v12, v13, v14, v15);
}

- (NSArray)gradientFiltersWithSource:(MPSNNImageNode *)sourceGradient
{
  v183[2] = *MEMORY[0x277D85DE8];
  v10 = objc_msgSend_sourceImages(self, a2, sourceGradient, v3, v4, v5, v6, v7);
  v18 = objc_msgSend_count(v10, v11, v12, v13, v14, v15, v16, v17);
  v19 = [MPSNNLossGradientNode alloc];
  v27 = objc_msgSend_sourceImages(self, v20, v21, v22, v23, v24, v25, v26);
  v34 = objc_msgSend_objectAtIndexedSubscript_(v27, v28, 0, v29, v30, v31, v32, v33);
  v42 = objc_msgSend_sourceImages(self, v35, v36, v37, v38, v39, v40, v41);
  v56 = objc_msgSend_objectAtIndexedSubscript_(v42, v43, 1, v44, v45, v46, v47, v48);
  if (v18 == 3)
  {
    v57 = objc_msgSend_sourceImages(self, v49, v50, v51, v52, v53, v54, v55);
    v64 = objc_msgSend_objectAtIndexedSubscript_(v57, v58, 2, v59, v60, v61, v62, v63);
    v72 = objc_msgSend_resultState(self, v65, v66, v67, v68, v69, v70, v71);
    v181 = 0;
    isLabelsGradientFilter = objc_msgSend_initWithSourceGradient_sourceImage_labels_weights_gradientState_lossDescriptor_isLabelsGradientFilter_(v19, v73, sourceGradient, v34, v56, v64, v72, self->_descriptor, v181);
    v75 = [MPSNNLossGradientNode alloc];
    v83 = objc_msgSend_sourceImages(self, v76, v77, v78, v79, v80, v81, v82);
    v90 = objc_msgSend_objectAtIndexedSubscript_(v83, v84, 0, v85, v86, v87, v88, v89);
    v98 = objc_msgSend_sourceImages(self, v91, v92, v93, v94, v95, v96, v97);
    v105 = objc_msgSend_objectAtIndexedSubscript_(v98, v99, 1, v100, v101, v102, v103, v104);
    v113 = objc_msgSend_sourceImages(self, v106, v107, v108, v109, v110, v111, v112);
    v120 = objc_msgSend_objectAtIndexedSubscript_(v113, v114, 2, v115, v116, v117, v118, v119);
    v128 = objc_msgSend_resultState(self, v121, v122, v123, v124, v125, v126, v127);
    LOBYTE(v182) = 1;
    v130 = objc_msgSend_initWithSourceGradient_sourceImage_labels_weights_gradientState_lossDescriptor_isLabelsGradientFilter_(v75, v129, sourceGradient, v90, v105, v120, v128, self->_descriptor, v182);
  }

  else
  {
    v136 = objc_msgSend_resultState(self, v49, v50, v51, v52, v53, v54, v55);
    isLabelsGradientFilter = objc_msgSend_initWithSourceGradient_sourceImage_labels_gradientState_lossDescriptor_isLabelsGradientFilter_(v19, v137, sourceGradient, v34, v56, v136, self->_descriptor, 0);
    v138 = [MPSNNLossGradientNode alloc];
    v146 = objc_msgSend_sourceImages(self, v139, v140, v141, v142, v143, v144, v145);
    v153 = objc_msgSend_objectAtIndexedSubscript_(v146, v147, 0, v148, v149, v150, v151, v152);
    v161 = objc_msgSend_sourceImages(self, v154, v155, v156, v157, v158, v159, v160);
    v168 = objc_msgSend_objectAtIndexedSubscript_(v161, v162, 1, v163, v164, v165, v166, v167);
    v176 = objc_msgSend_resultState(self, v169, v170, v171, v172, v173, v174, v175);
    v130 = objc_msgSend_initWithSourceGradient_sourceImage_labels_gradientState_lossDescriptor_isLabelsGradientFilter_(v138, v177, sourceGradient, v153, v168, v176, self->_descriptor, 1);
  }

  v178 = v130;
  v183[0] = isLabelsGradientFilter;
  v183[1] = v130;
  v179 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v131, v183, 2, v132, v133, v134, v135);

  return v179;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSNNForwardLossNode;
  [(MPSNNFilterNode *)&v3 dealloc];
}

@end