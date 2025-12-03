@interface MPSNNOptimizer
- (MPSNNOptimizer)initWithCoder:(id)coder device:(id)device;
- (MPSNNOptimizer)initWithDevice:(id)device;
- (MPSNNOptimizer)initWithDevice:(id)device optimizerDescriptor:(id)descriptor;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSNNOptimizer

- (MPSNNOptimizer)initWithDevice:(id)device
{
  if (MTLReportFailureTypeEnabled())
  {
    v4 = objc_opt_class();
    NSStringFromClass(v4);
    MTLReportFailure();
  }

  return 0;
}

- (MPSNNOptimizer)initWithDevice:(id)device optimizerDescriptor:(id)descriptor
{
  v61.receiver = self;
  v61.super_class = MPSNNOptimizer;
  v12 = [(MPSKernel *)&v61 initWithDevice:device];
  if (v12)
  {
    objc_msgSend_learningRate(descriptor, v5, v6, v7, v8, v9, v10, v11);
    v12->_learningRate = v13;
    objc_msgSend_gradientRescale(descriptor, v14, v15, v16, v17, v18, v19, v20);
    v12->_gradientRescale = v21;
    v12->_applyGradientClipping = objc_msgSend_applyGradientClipping(descriptor, v22, v23, v24, v25, v26, v27, v28);
    objc_msgSend_gradientClipMax(descriptor, v29, v30, v31, v32, v33, v34, v35);
    v12->_gradientClipMax = v36;
    objc_msgSend_gradientClipMin(descriptor, v37, v38, v39, v40, v41, v42, v43);
    v12->_gradientClipMin = v44;
    v12->_regularizationType = objc_msgSend_regularizationType(descriptor, v45, v46, v47, v48, v49, v50, v51);
    objc_msgSend_regularizationScale(descriptor, v52, v53, v54, v55, v56, v57, v58);
    v12->_regularizationScale = v59;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSNNOptimizer;
  result = [(MPSKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 22) = LODWORD(self->_learningRate);
    *(result + 23) = LODWORD(self->_gradientRescale);
    *(result + 96) = self->_applyGradientClipping;
    *(result + 25) = LODWORD(self->_gradientClipMax);
    *(result + 26) = LODWORD(self->_gradientClipMin);
    *(result + 14) = self->_regularizationType;
    *(result + 30) = LODWORD(self->_regularizationScale);
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.isa + *MEMORY[0x277CD7358] + 1) = 1;
  v50.receiver = self;
  v50.super_class = MPSNNOptimizer;
  [(MPSKernel *)&v50 encodeWithCoder:?];
  *&v5 = self->_learningRate;
  objc_msgSend_encodeFloat_forKey_(coder, v6, @"kMPSNNOptimizer.learningRate", v7, v8, v9, v10, v11, v5);
  *&v12 = self->_gradientRescale;
  objc_msgSend_encodeFloat_forKey_(coder, v13, @"kMPSNNOptimizer.gradientRescale", v14, v15, v16, v17, v18, v12);
  objc_msgSend_encodeBool_forKey_(coder, v19, self->_applyGradientClipping, @"kMPSNNOptimizer.applyGradientClipping", v20, v21, v22, v23);
  *&v24 = self->_gradientClipMax;
  objc_msgSend_encodeFloat_forKey_(coder, v25, @"kMPSNNOptimizer.gradientClipMax", v26, v27, v28, v29, v30, v24);
  *&v31 = self->_gradientClipMin;
  objc_msgSend_encodeFloat_forKey_(coder, v32, @"kMPSNNOptimizer.gradientClipMin", v33, v34, v35, v36, v37, v31);
  objc_msgSend_encodeInt64_forKey_(coder, v38, self->_regularizationType, @"kMPSNNOptimizer.regularizationType", v39, v40, v41, v42);
  *&v43 = self->_regularizationScale;
  objc_msgSend_encodeFloat_forKey_(coder, v44, @"kMPSNNOptimizer.regularizationScale", v45, v46, v47, v48, v49, v43);
}

- (MPSNNOptimizer)initWithCoder:(id)coder device:(id)device
{
  v56.receiver = self;
  v56.super_class = MPSNNOptimizer;
  v5 = [(MPSKernel *)&v56 initWithCoder:coder device:device];
  v12 = v5;
  if (!v5)
  {
    return v12;
  }

  if (*(&v5->super.super.isa + *MEMORY[0x277CD7358] + 1) << 8 == 256)
  {
    objc_msgSend_decodeFloatForKey_(coder, v6, @"kMPSNNOptimizer.learningRate", v7, v8, v9, v10, v11);
    v12->_learningRate = v13;
    objc_msgSend_decodeFloatForKey_(coder, v14, @"kMPSNNOptimizer.gradientRescale", v15, v16, v17, v18, v19);
    v12->_gradientRescale = v20;
    v12->_applyGradientClipping = objc_msgSend_decodeBoolForKey_(coder, v21, @"kMPSNNOptimizer.applyGradientClipping", v22, v23, v24, v25, v26);
    objc_msgSend_decodeFloatForKey_(coder, v27, @"kMPSNNOptimizer.gradientClipMax", v28, v29, v30, v31, v32);
    v12->_gradientClipMax = v33;
    objc_msgSend_decodeFloatForKey_(coder, v34, @"kMPSNNOptimizer.gradientClipMin", v35, v36, v37, v38, v39);
    v12->_gradientClipMin = v40;
    v12->_regularizationType = objc_msgSend_decodeInt64ForKey_(coder, v41, @"kMPSNNOptimizer.regularizationType", v42, v43, v44, v45, v46);
    objc_msgSend_decodeFloatForKey_(coder, v47, @"kMPSNNOptimizer.regularizationScale", v48, v49, v50, v51, v52);
    v12->_regularizationScale = v53;
    return v12;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v55 = objc_opt_class();
    NSStringFromClass(v55);
    MTLReportFailure();
  }

  return 0;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = MPSNNOptimizer;
  v4 = [(MPSKernel *)&v12 debugDescription];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n            \tlearningRate:\t\t\t\t%f\n            \tgradientRescale:\t\t\t\t%f\n            \tapplyGradientClipping:\t\t\t\t%d\n            \tgradientClipMax:\t\t\t\t%f\n            \tgradientClipMin:\t\t\t\t%f\n            \tregularizationType:\t\t\t\t%lu\n            \tregularizationScale:\t\t\t\t%f\n", v6, v7, v8, v9, v10, v4, self->_learningRate, self->_gradientRescale, self->_applyGradientClipping, self->_gradientClipMax, self->_gradientClipMin, self->_regularizationType, self->_regularizationScale);
}

@end