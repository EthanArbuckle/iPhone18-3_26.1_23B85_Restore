@interface MPSNNTensorFlowPoolingPadding
- (MPSNNTensorFlowPoolingPadding)init;
- (MPSNNTensorFlowPoolingPadding)initWithCoder:(id)a3;
- (id)destinationImageDescriptorForSourceImages:(id)a3 sourceStates:(id)a4 forKernel:(id)a5 suggestedDescriptor:(id)a6;
- (id)label;
@end

@implementation MPSNNTensorFlowPoolingPadding

- (id)destinationImageDescriptorForSourceImages:(id)a3 sourceStates:(id)a4 forKernel:(id)a5 suggestedDescriptor:(id)a6
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_setPrimaryEdgeMode_(a5, v8, 1, v9, v10, v11, v12, v13);
    objc_msgSend_setSecondaryEdgeMode_(a5, v14, 1, v15, v16, v17, v18, v19);
    return a6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return a6;
  }

  objc_msgSend_setEdgeMode_(a5, v21, 1, v22, v23, v24, v25, v26);
  return a6;
}

- (MPSNNTensorFlowPoolingPadding)init
{
  v3.receiver = self;
  v3.super_class = MPSNNTensorFlowPoolingPadding;
  return [(MPSNNDefaultPadding *)&v3 initWithPaddingMethod:16412];
}

- (id)label
{
  v2 = MEMORY[0x277CCACA8];
  v13.receiver = self;
  v13.super_class = MPSNNTensorFlowPoolingPadding;
  v3 = [(MPSNNDefaultPadding *)&v13 label];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  return objc_msgSend_stringWithFormat_(v2, v6, @"%@  variant: %@", v7, v8, v9, v10, v11, v3, v5);
}

- (MPSNNTensorFlowPoolingPadding)initWithCoder:(id)a3
{
  if (objc_msgSend_decodeInt32ForKey_(a3, v4, @"kMPSNNPaddingMethod_vers", v5, v6, v7, v8, v9) != 1)
  {
    return 0;
  }

  v17 = objc_msgSend_paddingForTensorflowAveragePooling(MPSNNDefaultPadding, v10, v11, v12, v13, v14, v15, v16);

  return v17;
}

@end