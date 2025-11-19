@interface MPSNNOptimizerDescriptor
+ (MPSNNOptimizerDescriptor)optimizerDescriptorWithLearningRate:(float)learningRate gradientRescale:(float)gradientRescale applyGradientClipping:(BOOL)applyGradientClipping gradientClipMax:(float)gradientClipMax gradientClipMin:(float)gradientClipMin regularizationType:(MPSNNRegularizationType)regularizationType regularizationScale:(float)regularizationScale;
+ (MPSNNOptimizerDescriptor)optimizerDescriptorWithLearningRate:(float)learningRate gradientRescale:(float)gradientRescale regularizationType:(MPSNNRegularizationType)regularizationType regularizationScale:(float)regularizationScale;
- (MPSNNOptimizerDescriptor)initWithLearningRate:(float)learningRate gradientRescale:(float)gradientRescale applyGradientClipping:(BOOL)applyGradientClipping gradientClipMax:(float)gradientClipMax gradientClipMin:(float)gradientClipMin regularizationType:(MPSNNRegularizationType)regularizationType regularizationScale:(float)regularizationScale;
@end

@implementation MPSNNOptimizerDescriptor

- (MPSNNOptimizerDescriptor)initWithLearningRate:(float)learningRate gradientRescale:(float)gradientRescale applyGradientClipping:(BOOL)applyGradientClipping gradientClipMax:(float)gradientClipMax gradientClipMin:(float)gradientClipMin regularizationType:(MPSNNRegularizationType)regularizationType regularizationScale:(float)regularizationScale
{
  v13 = applyGradientClipping;
  v71.receiver = self;
  v71.super_class = MPSNNOptimizerDescriptor;
  v16 = [(MPSNNOptimizerDescriptor *)&v71 init];
  v25 = v16;
  if (v16)
  {
    *&v24 = learningRate;
    objc_msgSend_setLearningRate_(v16, v17, v18, v19, v20, v21, v22, v23, v24);
    *&v26 = gradientRescale;
    objc_msgSend_setGradientRescale_(v25, v27, v28, v29, v30, v31, v32, v33, v26);
    objc_msgSend_setApplyGradientClipping_(v25, v34, v13, v35, v36, v37, v38, v39);
    *&v40 = gradientClipMax;
    objc_msgSend_setGradientClipMax_(v25, v41, v42, v43, v44, v45, v46, v47, v40);
    *&v48 = gradientClipMin;
    objc_msgSend_setGradientClipMin_(v25, v49, v50, v51, v52, v53, v54, v55, v48);
    objc_msgSend_setRegularizationType_(v25, v56, regularizationType, v57, v58, v59, v60, v61);
    *&v62 = regularizationScale;
    objc_msgSend_setRegularizationScale_(v25, v63, v64, v65, v66, v67, v68, v69, v62);
  }

  return v25;
}

+ (MPSNNOptimizerDescriptor)optimizerDescriptorWithLearningRate:(float)learningRate gradientRescale:(float)gradientRescale regularizationType:(MPSNNRegularizationType)regularizationType regularizationScale:(float)regularizationScale
{
  v10 = [MPSNNOptimizerDescriptor alloc];
  *&v11 = learningRate;
  *&v12 = gradientRescale;
  *&v13 = regularizationScale;
  v20 = objc_msgSend_initWithLearningRate_gradientRescale_regularizationType_regularizationScale_(v10, v14, regularizationType, v15, v16, v17, v18, v19, v11, v12, v13);

  return v20;
}

+ (MPSNNOptimizerDescriptor)optimizerDescriptorWithLearningRate:(float)learningRate gradientRescale:(float)gradientRescale applyGradientClipping:(BOOL)applyGradientClipping gradientClipMax:(float)gradientClipMax gradientClipMin:(float)gradientClipMin regularizationType:(MPSNNRegularizationType)regularizationType regularizationScale:(float)regularizationScale
{
  v13 = applyGradientClipping;
  v16 = [MPSNNOptimizerDescriptor alloc];
  *&v17 = learningRate;
  *&v18 = gradientRescale;
  *&v19 = gradientClipMax;
  *&v20 = gradientClipMin;
  *&v21 = regularizationScale;
  v27 = objc_msgSend_initWithLearningRate_gradientRescale_applyGradientClipping_gradientClipMax_gradientClipMin_regularizationType_regularizationScale_(v16, v22, v13, regularizationType, v23, v24, v25, v26, v17, v18, v19, v20, v21);

  return v27;
}

@end