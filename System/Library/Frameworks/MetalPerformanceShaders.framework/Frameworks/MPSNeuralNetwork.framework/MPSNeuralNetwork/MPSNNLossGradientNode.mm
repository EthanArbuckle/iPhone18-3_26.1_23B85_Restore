@interface MPSNNLossGradientNode
+ (MPSNNLossGradientNode)nodeWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage labels:(MPSNNImageNode *)labels gradientState:(MPSNNGradientStateNode *)gradientState lossDescriptor:(MPSCNNLossDescriptor *)descriptor isLabelsGradientFilter:(BOOL)isLabelsGradientFilter;
+ (MPSNNLossGradientNode)nodeWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage labels:(MPSNNImageNode *)labels weights:(MPSNNImageNode *)weights gradientState:(MPSNNGradientStateNode *)gradientState lossDescriptor:(MPSCNNLossDescriptor *)descriptor isLabelsGradientFilter:(BOOL)isLabelsGradientFilter;
+ (MPSNNLossGradientNode)nodeWithSources:(NSArray *)sourceNodes gradientState:(MPSNNGradientStateNode *)gradientState lossDescriptor:(MPSCNNLossDescriptor *)descriptor isLabelsGradientFilter:(BOOL)isLabelsGradientFilter;
- (MPSNNGradientFilterNode)gradientFilterWithSources:(NSArray *)gradientImages;
- (MPSNNLossGradientNode)initWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage labels:(MPSNNImageNode *)labels weights:(MPSNNImageNode *)weights gradientState:(MPSNNGradientStateNode *)gradientState lossDescriptor:(MPSCNNLossDescriptor *)descriptor isLabelsGradientFilter:(BOOL)isLabelsGradientFilter;
- (MPSNNLossGradientNode)initWithSources:(NSArray *)sourceNodes gradientState:(MPSNNGradientStateNode *)gradientState lossDescriptor:(MPSCNNLossDescriptor *)descriptor isLabelsGradientFilter:(BOOL)isLabelsGradientFilter;
- (void)dealloc;
@end

@implementation MPSNNLossGradientNode

+ (MPSNNLossGradientNode)nodeWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage labels:(MPSNNImageNode *)labels weights:(MPSNNImageNode *)weights gradientState:(MPSNNGradientStateNode *)gradientState lossDescriptor:(MPSCNNLossDescriptor *)descriptor isLabelsGradientFilter:(BOOL)isLabelsGradientFilter
{
  v15 = [self alloc];
  v17 = objc_msgSend_initWithSourceGradient_sourceImage_labels_weights_gradientState_lossDescriptor_isLabelsGradientFilter_(v15, v16, sourceGradient, sourceImage, labels, weights, gradientState, descriptor, isLabelsGradientFilter);

  return v17;
}

+ (MPSNNLossGradientNode)nodeWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage labels:(MPSNNImageNode *)labels gradientState:(MPSNNGradientStateNode *)gradientState lossDescriptor:(MPSCNNLossDescriptor *)descriptor isLabelsGradientFilter:(BOOL)isLabelsGradientFilter
{
  v14 = [self alloc];
  v18 = isLabelsGradientFilter;
  v16 = objc_msgSend_initWithSourceGradient_sourceImage_labels_weights_gradientState_lossDescriptor_isLabelsGradientFilter_(v14, v15, sourceGradient, sourceImage, labels, 0, gradientState, descriptor, v18);

  return v16;
}

+ (MPSNNLossGradientNode)nodeWithSources:(NSArray *)sourceNodes gradientState:(MPSNNGradientStateNode *)gradientState lossDescriptor:(MPSCNNLossDescriptor *)descriptor isLabelsGradientFilter:(BOOL)isLabelsGradientFilter
{
  v13 = objc_msgSend_objectAtIndexedSubscript_(sourceNodes, a2, 0, gradientState, descriptor, isLabelsGradientFilter, v6, v7);
  v20 = objc_msgSend_objectAtIndexedSubscript_(sourceNodes, v14, 1, v15, v16, v17, v18, v19);
  v27 = objc_msgSend_objectAtIndexedSubscript_(sourceNodes, v21, 2, v22, v23, v24, v25, v26);
  v41 = 0;
  if (objc_msgSend_count(sourceNodes, v28, v29, v30, v31, v32, v33, v34) >= 4)
  {
    v41 = objc_msgSend_objectAtIndexedSubscript_(sourceNodes, v35, 3, v36, v37, v38, v39, v40);
  }

  v42 = [self alloc];
  v46 = isLabelsGradientFilter;
  v44 = objc_msgSend_initWithSourceGradient_sourceImage_labels_weights_gradientState_lossDescriptor_isLabelsGradientFilter_(v42, v43, v13, v20, v27, v41, gradientState, descriptor, v46);

  return v44;
}

- (MPSNNLossGradientNode)initWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage labels:(MPSNNImageNode *)labels weights:(MPSNNImageNode *)weights gradientState:(MPSNNGradientStateNode *)gradientState lossDescriptor:(MPSCNNLossDescriptor *)descriptor isLabelsGradientFilter:(BOOL)isLabelsGradientFilter
{
  v85[4] = *MEMORY[0x277D85DE8];
  if (!weights)
  {
    v84[0] = sourceGradient;
    v84[1] = sourceImage;
    v84[2] = labels;
    v17 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v84, 3, labels, 0, gradientState, descriptor);
    v18 = isLabelsGradientFilter;
    if (gradientState)
    {
      goto LABEL_3;
    }

LABEL_5:
    v19 = 0;
    goto LABEL_6;
  }

  v85[0] = sourceGradient;
  v85[1] = sourceImage;
  v85[2] = labels;
  v85[3] = weights;
  v17 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v85, 4, labels, weights, gradientState, descriptor);
  v18 = isLabelsGradientFilter;
  if (!gradientState)
  {
    goto LABEL_5;
  }

LABEL_3:
  v83 = gradientState;
  v19 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v12, &v83, 1, v13, v14, v15, v16);
LABEL_6:
  v82.receiver = self;
  v82.super_class = MPSNNLossGradientNode;
  v20 = [(MPSNNFilterNode *)&v82 initWithSourceImages:v17 sourceStates:v19 paddingPolicy:0];
  v20->_descriptor = descriptor;
  v20->_lossType = objc_msgSend_lossType(descriptor, v21, v22, v23, v24, v25, v26, v27);
  v20->_reductionType = objc_msgSend_reductionType(descriptor, v28, v29, v30, v31, v32, v33, v34);
  objc_msgSend_weight(descriptor, v35, v36, v37, v38, v39, v40, v41);
  v20->_weight = v42;
  objc_msgSend_labelSmoothing(descriptor, v43, v44, v45, v46, v47, v48, v49);
  v20->_labelSmoothing = v50;
  v20->_numberOfClasses = objc_msgSend_numberOfClasses(descriptor, v51, v52, v53, v54, v55, v56, v57);
  objc_msgSend_epsilon(descriptor, v58, v59, v60, v61, v62, v63, v64);
  v20->_epsilon = v65;
  objc_msgSend_delta(descriptor, v66, v67, v68, v69, v70, v71, v72);
  v20->_delta = v73;
  v20->_reduceAcrossBatch = objc_msgSend_reduceAcrossBatch(descriptor, v74, v75, v76, v77, v78, v79, v80);
  v20->_isLabelsGradientFilter = v18;
  v20->_propertyCallBack = 0;
  return v20;
}

- (MPSNNLossGradientNode)initWithSources:(NSArray *)sourceNodes gradientState:(MPSNNGradientStateNode *)gradientState lossDescriptor:(MPSCNNLossDescriptor *)descriptor isLabelsGradientFilter:(BOOL)isLabelsGradientFilter
{
  v13 = objc_msgSend_objectAtIndexedSubscript_(sourceNodes, a2, 0, gradientState, descriptor, isLabelsGradientFilter, v6, v7);
  v20 = objc_msgSend_objectAtIndexedSubscript_(sourceNodes, v14, 1, v15, v16, v17, v18, v19);
  v27 = objc_msgSend_objectAtIndexedSubscript_(sourceNodes, v21, 2, v22, v23, v24, v25, v26);
  v35 = objc_msgSend_count(sourceNodes, v28, v29, v30, v31, v32, v33, v34);
  v41 = 0;
  if (v35 >= 4)
  {
    v41 = objc_msgSend_objectAtIndexedSubscript_(sourceNodes, v36, 3, v37, v38, 0, v39, v40);
  }

  v43 = isLabelsGradientFilter;
  return objc_msgSend_initWithSourceGradient_sourceImage_labels_weights_gradientState_lossDescriptor_isLabelsGradientFilter_(self, v36, v13, v20, v27, v41, gradientState, descriptor, v43);
}

- (MPSNNGradientFilterNode)gradientFilterWithSources:(NSArray *)gradientImages
{
  if (MTLReportFailureTypeEnabled())
  {
    v3 = objc_opt_class();
    NSStringFromClass(v3);
    MTLReportFailure();
  }

  return 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSNNLossGradientNode;
  [(MPSNNFilterNode *)&v3 dealloc];
}

@end