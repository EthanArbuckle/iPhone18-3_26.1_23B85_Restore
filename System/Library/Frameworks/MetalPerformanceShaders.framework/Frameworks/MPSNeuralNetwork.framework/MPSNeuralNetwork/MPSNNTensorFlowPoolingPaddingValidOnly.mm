@interface MPSNNTensorFlowPoolingPaddingValidOnly
- (MPSNNTensorFlowPoolingPaddingValidOnly)init;
- (MPSNNTensorFlowPoolingPaddingValidOnly)initWithCoder:(id)coder;
- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states forKernel:(id)kernel suggestedDescriptor:(id)descriptor;
- (id)label;
@end

@implementation MPSNNTensorFlowPoolingPaddingValidOnly

- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states forKernel:(id)kernel suggestedDescriptor:(id)descriptor
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_setPrimaryEdgeMode_(kernel, v8, 1, v9, v10, v11, v12, v13);
    objc_msgSend_setSecondaryEdgeMode_(kernel, v14, 1, v15, v16, v17, v18, v19);
    return descriptor;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return descriptor;
  }

  objc_msgSend_setEdgeMode_(kernel, v21, 1, v22, v23, v24, v25, v26);
  return descriptor;
}

- (MPSNNTensorFlowPoolingPaddingValidOnly)init
{
  v3.receiver = self;
  v3.super_class = MPSNNTensorFlowPoolingPaddingValidOnly;
  return [(MPSNNDefaultPadding *)&v3 initWithPaddingMethod:16397];
}

- (id)label
{
  v2 = MEMORY[0x277CCACA8];
  v13.receiver = self;
  v13.super_class = MPSNNTensorFlowPoolingPaddingValidOnly;
  label = [(MPSNNDefaultPadding *)&v13 label];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  return objc_msgSend_stringWithFormat_(v2, v6, @"%@  variant: %@", v7, v8, v9, v10, v11, label, v5);
}

- (MPSNNTensorFlowPoolingPaddingValidOnly)initWithCoder:(id)coder
{
  if (objc_msgSend_decodeInt32ForKey_(coder, v4, @"kMPSNNPaddingMethod_vers", v5, v6, v7, v8, v9) != 1)
  {
    return 0;
  }

  valid = objc_msgSend_paddingForTensorflowAveragePoolingValidOnly(MPSNNDefaultPadding, v10, v11, v12, v13, v14, v15, v16);

  return valid;
}

@end