@interface MPSRNNMatrixTrainingLayer
- (MPSRNNMatrixTrainingLayer)copyWithZone:(NSZone *)zone device:(id)device;
- (MPSRNNMatrixTrainingLayer)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSRNNMatrixTrainingLayer)initWithDevice:(id)device rnnDescriptor:(const MPSRNNDescriptor *)rnnDescriptor trainableWeights:(NSMutableArray *)trainableWeights;
- (id)recurrentStateForBatchSize:(unint64_t)size forGradientPass:(BOOL)pass;
- (id)temporaryRecurrentStateForCommandBuffer:(id)buffer batchSize:(unint64_t)size forGradientPass:(BOOL)pass;
- (void)createWeightMatrices:(NSMutableArray *)matricesOut;
- (void)dealloc;
- (void)encodeCopyWeightsToCommandBuffer:(id)commandBuffer weights:(NSArray *)weights matrixId:(MPSRNNMatrixId)matrixId matrix:(MPSMatrix *)matrix copyFromWeightsToMatrix:(BOOL)copyFromWeightsToMatrix matrixOffset:(MTLOrigin *)matrixOffset;
- (void)encodeForwardSequenceToCommandBuffer:(id)commandBuffer sourceMatrices:(NSArray *)sourceMatrices sourceOffsets:(NSUInteger *)sourceOffsets destinationMatrices:(NSArray *)destinationMatrices destinationOffsets:(NSUInteger *)destinationOffsets trainingStates:(NSMutableArray *)trainingStates recurrentInputState:(MPSRNNRecurrentMatrixState *)recurrentInputState recurrentOutputStates:(NSMutableArray *)recurrentOutputStates weights:(NSArray *)weights;
- (void)encodeGradientSequenceToCommandBuffer:(id)commandBuffer forwardSources:(NSArray *)forwardSources forwardSourceOffsets:(NSUInteger *)forwardSourceOffsets sourceGradients:(NSArray *)sourceGradients sourceGradientOffsets:(NSUInteger *)sourceGradientOffsets destinationGradients:(NSArray *)destinationGradients destinationOffsets:(NSUInteger *)destinationOffsets weightGradients:(NSArray *)weightGradients trainingStates:(NSArray *)trainingStates recurrentInputState:(MPSRNNRecurrentMatrixState *)recurrentInputState recurrentOutputStates:(NSMutableArray *)recurrentOutputStates weights:(NSArray *)weights;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSRNNMatrixTrainingLayer

- (MPSRNNMatrixTrainingLayer)initWithDevice:(id)device rnnDescriptor:(const MPSRNNDescriptor *)rnnDescriptor trainableWeights:(NSMutableArray *)trainableWeights
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (rnnDescriptor)
    {
      if (device)
      {
        objc_msgSend_inputFeatureChannels(rnnDescriptor, a2, device, rnnDescriptor, trainableWeights, v5, v6, v7);
        if (objc_msgSend_inputFeatureChannels(rnnDescriptor, v12, v13, v14, v15, v16, v17, v18))
        {
          objc_msgSend_outputFeatureChannels(rnnDescriptor, v19, v20, v21, v22, v23, v24, v25);
          if (objc_msgSend_outputFeatureChannels(rnnDescriptor, v26, v27, v28, v29, v30, v31, v32))
          {
            goto LABEL_6;
          }

          if (MTLReportFailureTypeEnabled())
          {
            goto LABEL_23;
          }

LABEL_24:

          return 0;
        }

        if (!MTLReportFailureTypeEnabled())
        {
          goto LABEL_24;
        }
      }

      else if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_24;
      }
    }

    else if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_24;
    }

LABEL_23:
    v63 = objc_opt_class();
    NSStringFromClass(v63);
    MTLReportFailure();
    goto LABEL_24;
  }

LABEL_6:
  v64.receiver = self;
  v64.super_class = MPSRNNMatrixTrainingLayer;
  v40 = [(MPSKernel *)&v64 initWithDevice:device];
  if (v40)
  {
    v40->_inputFeatureChannels = objc_msgSend_inputFeatureChannels(rnnDescriptor, v33, v34, v35, v36, v37, v38, v39);
    v40->_outputFeatureChannels = objc_msgSend_outputFeatureChannels(rnnDescriptor, v41, v42, v43, v44, v45, v46, v47);
    v40->_storeAllIntermediateStates = 0;
    v40->_recurrentOutputIsTemporary = 0;
    v40->_trainingStateIsTemporary = 0;
    v40->_accumulateWeightGradients = 0;
    v40->_propagateFullRecurrentRows = 0;
    v40->layer = 0;
    v40->layerType = 0;
    v40->weightDescriptors = objc_alloc_init(MEMORY[0x277CBEB18]);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v48 = sub_239BC268C(device, rnnDescriptor, trainableWeights, v40->weightDescriptors);
      v49 = 0;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v48 = sub_239BC2B08(device, rnnDescriptor, trainableWeights, v40->weightDescriptors);
        v49 = 2;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
LABEL_14:
          v50 = objc_alloc(MEMORY[0x277CD75E0]);
          v40->gemmKernel = objc_msgSend_initWithDevice_transposeLeft_transposeRight_resultRows_resultColumns_interiorColumns_alpha_beta_(v50, v51, device, 0, 1, 4, 4, 4, 1.0, 1.0);
          v52 = objc_alloc(MEMORY[0x277CD75E0]);
          v40->gemmKernelNonTranspose = objc_msgSend_initWithDevice_transposeLeft_transposeRight_resultRows_resultColumns_interiorColumns_alpha_beta_(v52, v53, device, 0, 0, 4, 4, 4, 1.0, 1.0);
          v54 = objc_alloc(MEMORY[0x277CD75E0]);
          v40->gemmKernel_noAccumulate = objc_msgSend_initWithDevice_transposeLeft_transposeRight_resultRows_resultColumns_interiorColumns_alpha_beta_(v54, v55, device, 0, 1, 4, 4, 4, 1.0, 0.0);
          v56 = objc_alloc(MEMORY[0x277CD75E0]);
          v40->gemmKernelNonTranspose_noAccumulate = objc_msgSend_initWithDevice_transposeLeft_transposeRight_resultRows_resultColumns_interiorColumns_alpha_beta_(v56, v57, device, 0, 0, 4, 4, 4, 1.0, 0.0);
          v58 = objc_alloc(MEMORY[0x277CD75E0]);
          v40->gemmKernelTN = objc_msgSend_initWithDevice_transposeLeft_transposeRight_resultRows_resultColumns_interiorColumns_alpha_beta_(v58, v59, device, 1, 0, 4, 4, 4, 1.0, 0.0);
          v60 = objc_alloc(MEMORY[0x277CD75E0]);
          v40->gemmKernelTN_accumulate = objc_msgSend_initWithDevice_transposeLeft_transposeRight_resultRows_resultColumns_interiorColumns_alpha_beta_(v60, v61, device, 1, 0, 4, 4, 4, 1.0, 1.0);
          return v40;
        }

        v48 = sub_239BC3D2C(device, rnnDescriptor, trainableWeights, v40->weightDescriptors);
        v49 = 1;
      }
    }

    v40->layer = v48;
    v40->layerType = v49;
    goto LABEL_14;
  }

  return v40;
}

- (void)dealloc
{
  layer = self->layer;
  layerType = self->layerType;
  if (layerType == 2)
  {
    if (layer)
    {

      v8 = layer[11];
      if (v8)
      {
        free(v8);
      }

      v7 = layer[48];
      goto LABEL_15;
    }
  }

  else if (layerType == 1)
  {
    sub_239BC4B70(self->layer);
  }

  else
  {
    if (layerType)
    {
      v5 = 1;
    }

    else
    {
      v5 = layer == 0;
    }

    if (!v5)
    {

      v6 = layer[11];
      if (v6)
      {
        free(v6);
      }

      v7 = layer[13];
LABEL_15:

      free(layer);
    }
  }

  v9.receiver = self;
  v9.super_class = MPSRNNMatrixTrainingLayer;
  [(MPSKernel *)&v9 dealloc];
}

- (MPSRNNMatrixTrainingLayer)copyWithZone:(NSZone *)zone device:(id)device
{
  v69.receiver = self;
  v69.super_class = MPSRNNMatrixTrainingLayer;
  v7 = [MPSKernel copyWithZone:sel_copyWithZone_device_ device:?];
  v8 = v7;
  if (v7)
  {
    v7->_inputFeatureChannels = self->_inputFeatureChannels;
    v7->_outputFeatureChannels = self->_outputFeatureChannels;
    v7->_recurrentOutputIsTemporary = self->_recurrentOutputIsTemporary;
    v7->_trainingStateIsTemporary = self->_trainingStateIsTemporary;
    v7->_storeAllIntermediateStates = self->_storeAllIntermediateStates;
    v7->_accumulateWeightGradients = self->_accumulateWeightGradients;
    v7->layer = 0;
    v7->weightDescriptors = objc_alloc_init(MEMORY[0x277CBEB18]);
    layer = self->layer;
    if (!layer)
    {
LABEL_63:
      v8->gemmKernel = objc_msgSend_copyWithZone_device_(self->gemmKernel, v9, zone, device, v10, v11, v12, v13);
      v8->gemmKernelNonTranspose = objc_msgSend_copyWithZone_device_(self->gemmKernelNonTranspose, v43, zone, device, v44, v45, v46, v47);
      v8->gemmKernel_noAccumulate = objc_msgSend_copyWithZone_device_(self->gemmKernel_noAccumulate, v48, zone, device, v49, v50, v51, v52);
      v8->gemmKernelNonTranspose_noAccumulate = objc_msgSend_copyWithZone_device_(self->gemmKernelNonTranspose_noAccumulate, v53, zone, device, v54, v55, v56, v57);
      v8->gemmKernelTN = objc_msgSend_copyWithZone_device_(self->gemmKernelTN, v58, zone, device, v59, v60, v61, v62);
      v8->gemmKernelTN_accumulate = objc_msgSend_copyWithZone_device_(self->gemmKernelTN_accumulate, v63, zone, device, v64, v65, v66, v67);
      return v8;
    }

    layerType = self->layerType;
    v8->layerType = layerType;
    if (layerType == 2)
    {
      v16 = sub_239BC5264(device, layer, (*(&self->super.super.isa + *MEMORY[0x277CD7350]))[2]);
    }

    else if (layerType == 1)
    {
      v16 = sub_239BC547C(device, layer, (*(&self->super.super.isa + *MEMORY[0x277CD7350]))[2]);
    }

    else
    {
      if (layerType)
      {
        goto LABEL_10;
      }

      v16 = sub_239BC5130(device, layer, (*(&self->super.super.isa + *MEMORY[0x277CD7350]))[2]);
    }

    v8->layer = v16;
    layerType = self->layerType;
LABEL_10:
    weightDescriptors = v8->weightDescriptors;
    v18 = objc_autoreleasePoolPush();
    if (layerType)
    {
      goto LABEL_62;
    }

    v24 = 0;
    v25 = layer[11];
    v26 = *v25;
    v27 = v18;
    if (v26 > 268435487)
    {
      if (v26 != 536870920 && v26 != 268435488)
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (!v26)
      {
        goto LABEL_32;
      }

      if (v26 != 268435472)
      {
LABEL_31:
        objc_msgSend_addObject_(weightDescriptors, v19, v24, v20, v21, v26, v22, v23);
        v25 = layer[11];
LABEL_32:
        v33 = 0;
        v34 = v25[8];
        if (v34 > 268435487)
        {
          if (v34 != 536870920 && v34 != 268435488)
          {
            goto LABEL_46;
          }
        }

        else
        {
          if (!v34)
          {
LABEL_47:
            v38 = 0;
            v39 = v25[4];
            if (v39 > 268435487)
            {
              if (v39 != 536870920 && v39 != 268435488)
              {
                goto LABEL_61;
              }

              goto LABEL_56;
            }

            v18 = v27;
            if (v39)
            {
              if (v39 != 268435472)
              {
LABEL_61:
                objc_msgSend_addObject_(weightDescriptors, v19, v38, v20, v21, v39, v22, v23);
                v18 = v27;
                goto LABEL_62;
              }

LABEL_56:
              v41 = v39 >> 3;
              v42 = 16;
              if (v41 == 2)
              {
                v42 = 8;
              }

              if (v41 == 4)
              {
                v42 = 4;
              }

              v38 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], v19, layer[5], layer[4], ((v42 + layer[4] - 1) & -v42) * v41, v39, v22, v23);
              goto LABEL_61;
            }

LABEL_62:
            objc_autoreleasePoolPop(v18);
            goto LABEL_63;
          }

          if (v34 != 268435472)
          {
LABEL_46:
            objc_msgSend_addObject_(weightDescriptors, v19, v33, v20, v21, v34, v22, v23);
            v25 = layer[11];
            goto LABEL_47;
          }
        }

        v36 = v34 >> 3;
        v37 = 16;
        if (v36 == 2)
        {
          v37 = 8;
        }

        if (v36 == 4)
        {
          v37 = 4;
        }

        v33 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], v19, 1, layer[5], ((v37 + layer[5] - 1) & -v37) * v36, v34, v22, v23);
        goto LABEL_46;
      }
    }

    if (v26 == 268435472)
    {
      v29 = layer[4];
    }

    else
    {
      v29 = layer[5];
    }

    if (v26 == 268435472)
    {
      v30 = layer[5];
    }

    else
    {
      v30 = layer[4];
    }

    v31 = v26 >> 3;
    v32 = 16;
    if (v31 == 2)
    {
      v32 = 8;
    }

    if (v31 == 4)
    {
      v32 = 4;
    }

    v24 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], v19, v29, v30, ((v32 + v30 - 1) & -v32) * v31, v26, v22, v23);
    goto LABEL_31;
  }

  return v8;
}

- (MPSRNNMatrixTrainingLayer)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v51.receiver = self;
  v51.super_class = MPSRNNMatrixTrainingLayer;
  v6 = [MPSKernel initWithCoder:sel_initWithCoder_device_ device:?];
  v13 = v6;
  if (!v6)
  {
    return v13;
  }

  if (*(&v6->super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 != 0x10000)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v34 = objc_opt_class();
      NSStringFromClass(v34);
LABEL_13:
      MTLReportFailure();
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  v6->_inputFeatureChannels = objc_msgSend_decodeInt64ForKey_(aDecoder, v7, @"kMPSRNNLayer._inputFeatureChannels", v8, v9, v10, v11, v12);
  v13->_outputFeatureChannels = objc_msgSend_decodeInt64ForKey_(aDecoder, v14, @"kMPSRNNLayer._outputFeatureChannels", v15, v16, v17, v18, v19);
  v13->_recurrentOutputIsTemporary = objc_msgSend_decodeBoolForKey_(aDecoder, v20, @"kMPSRNNLayer._recurrentOutputIsTemporary", v21, v22, v23, v24, v25);
  v13->weightDescriptors = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13->layer = 0;
  v50 = 0;
  v49 = 0;
  v30 = sub_239BCD898(aDecoder, @"kMPSRNNLayer.layerTypes", &v50, &v49, v26, v27, v28, v29);
  if (v50 != 1 || !v49)
  {
    if ((MTLReportFailureTypeEnabled() & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v31 = *v30;
  v13->layerType = *v30;
  if (v31 >= 3)
  {
    if (MTLReportFailureTypeEnabled())
    {
LABEL_12:
      v35 = objc_opt_class();
      NSStringFromClass(v35);
      goto LABEL_13;
    }

LABEL_14:

    return 0;
  }

  v32 = v30;
  if (v31 == 2)
  {
    v33 = sub_239BC5F54(aDecoder, device, 0, &v49);
  }

  else if (v31 == 1)
  {
    v33 = sub_239BC6254(aDecoder, device, 0, &v49);
  }

  else
  {
    v33 = sub_239BC5CBC(aDecoder, device, 0, &v49);
  }

  v13->layer = v33;
  free(v32);
  v36 = objc_alloc(MEMORY[0x277CD75E0]);
  v13->gemmKernel = objc_msgSend_initWithDevice_transposeLeft_transposeRight_resultRows_resultColumns_interiorColumns_alpha_beta_(v36, v37, device, 0, 1, 4, 4, 4, 1.0, 1.0);
  v38 = objc_alloc(MEMORY[0x277CD75E0]);
  v13->gemmKernelNonTranspose = objc_msgSend_initWithDevice_transposeLeft_transposeRight_resultRows_resultColumns_interiorColumns_alpha_beta_(v38, v39, device, 0, 0, 4, 4, 4, 1.0, 1.0);
  v40 = objc_alloc(MEMORY[0x277CD75E0]);
  v13->gemmKernel_noAccumulate = objc_msgSend_initWithDevice_transposeLeft_transposeRight_resultRows_resultColumns_interiorColumns_alpha_beta_(v40, v41, device, 0, 1, 4, 4, 4, 1.0, 0.0);
  v42 = objc_alloc(MEMORY[0x277CD75E0]);
  v13->gemmKernelNonTranspose_noAccumulate = objc_msgSend_initWithDevice_transposeLeft_transposeRight_resultRows_resultColumns_interiorColumns_alpha_beta_(v42, v43, device, 0, 0, 4, 4, 4, 1.0, 0.0);
  v44 = objc_alloc(MEMORY[0x277CD75E0]);
  v13->gemmKernelTN = objc_msgSend_initWithDevice_transposeLeft_transposeRight_resultRows_resultColumns_interiorColumns_alpha_beta_(v44, v45, device, 1, 0, 4, 4, 4, 1.0, 0.0);
  v46 = objc_alloc(MEMORY[0x277CD75E0]);
  v13->gemmKernelTN_accumulate = objc_msgSend_initWithDevice_transposeLeft_transposeRight_resultRows_resultColumns_interiorColumns_alpha_beta_(v46, v47, device, 1, 0, 4, 4, 4, 1.0, 1.0);
  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v34.receiver = self;
  v34.super_class = MPSRNNMatrixTrainingLayer;
  [(MPSKernel *)&v34 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(coder, v5, self->_inputFeatureChannels, @"kMPSRNNLayer._inputFeatureChannels", v6, v7, v8, v9);
  objc_msgSend_encodeInt64_forKey_(coder, v10, self->_outputFeatureChannels, @"kMPSRNNLayer._outputFeatureChannels", v11, v12, v13, v14);
  objc_msgSend_encodeInt64_forKey_(coder, v15, 1, @"kMPSRNNLayer._numberOfLayers", v16, v17, v18, v19);
  objc_msgSend_encodeBool_forKey_(coder, v20, self->_recurrentOutputIsTemporary, @"kMPSRNNLayer._recurrentOutputIsTemporary", v21, v22, v23, v24);
  v25 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
  if (!v25)
  {
    v32 = MTLReportFailureTypeEnabled();
    v25 = 0;
    if (v32)
    {
      v33 = objc_opt_class();
      NSStringFromClass(v33);
      MTLReportFailure();
      v25 = 0;
    }
  }

  *v25 = self->layerType;
  v30 = v25;
  sub_239BCD9D8(coder, v25, @"kMPSRNNLayer.layerTypes", 1, v26, v27, v28, v29);
  free(v30);
  layerType = self->layerType;
  switch(layerType)
  {
    case 2:
      sub_239BC6D40(coder, self->layer, 0);
      break;
    case 1:
      sub_239BC6FA4(coder, self->layer, 0);
      break;
    case 0:
      sub_239BC6BE0(coder, self->layer, 0);
      break;
  }
}

- (void)createWeightMatrices:(NSMutableArray *)matricesOut
{
  v10 = objc_msgSend_count(self->weightDescriptors, a2, matricesOut, v3, v4, v5, v6, v7);
  context = objc_autoreleasePoolPush();
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      v18 = objc_msgSend_objectAtIndexedSubscript_(self->weightDescriptors, v11, i, v12, v13, v14, v15, v16);
      v19 = *MEMORY[0x277CD7350];
      v20 = (*(&self->super.super.isa + v19))[2];
      v28 = objc_msgSend_rowBytes(v18, v21, v22, v23, v24, v25, v26, v27);
      v36 = objc_msgSend_rows(v18, v29, v30, v31, v32, v33, v34, v35) * v28;
      v37 = (*(**(&self->super.super.isa + v19) + 24))(*(&self->super.super.isa + v19));
      v50 = objc_msgSend_newBufferWithLength_options_(v20, v38, v36, 16 * v37, v39, v40, v41, v42);
      if (!v50 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v51 = objc_msgSend_contents(v50, v43, v44, v45, v46, v47, v48, v49);
      v59 = objc_msgSend_length(v50, v52, v53, v54, v55, v56, v57, v58);
      bzero(v51, v59);
      v60 = objc_alloc(MEMORY[0x277CD7250]);
      v66 = objc_msgSend_initWithBuffer_descriptor_(v60, v61, v50, v18, v62, v63, v64, v65);

      objc_msgSend_addObject_(matricesOut, v67, v66, v68, v69, v70, v71, v72);
    }
  }

  objc_autoreleasePoolPop(context);
}

- (void)encodeCopyWeightsToCommandBuffer:(id)commandBuffer weights:(NSArray *)weights matrixId:(MPSRNNMatrixId)matrixId matrix:(MPSMatrix *)matrix copyFromWeightsToMatrix:(BOOL)copyFromWeightsToMatrix matrixOffset:(MTLOrigin *)matrixOffset
{
  v578 = copyFromWeightsToMatrix;
  v593 = *MEMORY[0x277D85DE8];
  v10 = objc_alloc(MEMORY[0x277CD7210]);
  v588 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v10, v11, commandBuffer, 0, v12, v13, v14, v15);
  v582 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.isa + v582) & 0x18) != 0)
  {
    v17 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
    if (v17 || (v23 = objc_opt_class(), v24 = NSStringFromClass(v23), objc_msgSend_setLabel_(self, v25, v24, v26, v27, v28, v29, v30), (v17 = v24) != 0))
    {
      objc_msgSend_setLabel_(v588, v16, v17, v18, v19, v20, v21, v22);
    }
  }

  layerType = self->layerType;
  layer = self->layer;
  v31 = layer[7];
  if ((*(&self->super.super.isa + v582) & 1) == 0)
  {
    objc_msgSend_count(weights, v16, v17, v18, v19, v20, v21, v22);
    if (!objc_msgSend_count(weights, v32, v33, v34, v35, v36, v37, v38) && MTLReportFailureTypeEnabled())
    {
      v524 = objc_opt_class();
      v568 = NSStringFromClass(v524);
      MTLReportFailure();
    }

    if (!*(layer[11] + 16 * matrixId) && MTLReportFailureTypeEnabled())
    {
      v525 = objc_opt_class();
      v568 = NSStringFromClass(v525);
      MTLReportFailure();
    }
  }

  selfCopy = self;
  v39 = layerType;
  if (layerType)
  {
    if (layerType == 1)
    {
      if ((*(&self->super.super.isa + v582) & 1) == 0)
      {
        if (matrixId - 29 <= 0xFFFFFFFFFFFFFFF5 && MTLReportFailureTypeEnabled())
        {
          v529 = objc_opt_class();
          v568 = NSStringFromClass(v529);
          MTLReportFailure();
        }

        objc_msgSend_dataType(matrix, v16, v17, v18, v19, v20, v21, v22, v568);
        if (objc_msgSend_dataType(matrix, v254, v255, v256, v257, v258, v259, v260) != *(layer[11] + 16 * matrixId) && MTLReportFailureTypeEnabled())
        {
          v531 = objc_opt_class();
          v571 = NSStringFromClass(v531);
          MTLReportFailure();
        }

        objc_msgSend_dataType(matrix, v261, v262, v263, v264, v265, v266, v267, v571);
        if (objc_msgSend_dataType(matrix, v268, v269, v270, v271, v272, v273, v274) != 268435488 && MTLReportFailureTypeEnabled())
        {
          v533 = objc_opt_class();
          v568 = NSStringFromClass(v533);
          MTLReportFailure();
        }
      }

      v275 = objc_msgSend_dataType(matrix, v16, v17, v18, v19, v20, v21, v22, v568);
      v276 = layer[11] + 16 * matrixId;
      if (v275 == *v276)
      {
        v277 = *(v276 + 8);
        objc_msgSend_count(weights, v16, v17, v18, v19, v20, v21, v22);
        if (v277 >= objc_msgSend_count(weights, v278, v279, v280, v281, v282, v283, v284) && MTLReportFailureTypeEnabled())
        {
          v535 = objc_opt_class();
          v568 = NSStringFromClass(v535);
          MTLReportFailure();
        }

        if (v277 < objc_msgSend_count(weights, v285, v286, v287, v288, v289, v290, v291, v568))
        {
          v292 = objc_msgSend_objectAtIndexedSubscript_(weights, v16, v277, v18, v19, v20, v21, v22);
          v300 = objc_msgSend_rowBytes(matrix, v293, v294, v295, v296, v297, v298, v299);
          x = matrixOffset->x;
          v309 = objc_msgSend_dataType(matrix, v302, v303, v304, v305, v306, v307, v308);
          y = matrixOffset->y;
          objc_msgSend_rowBytes(v292, v311, v312, v313, v314, v315, v316, v317);
          objc_msgSend_dataType(matrix, v318, v319, v320, v321, v322, v323, v324);
          if (v578)
          {
            v332 = v292;
          }

          else
          {
            v332 = matrix;
          }

          v585 = v332;
          if (v578)
          {
            v333 = matrix;
          }

          else
          {
            v333 = v292;
          }

          if (v578)
          {
            v334 = 0;
          }

          else
          {
            v334 = x * v300 + y * (v309 >> 3);
          }

          if (v578)
          {
            v335 = x * v300 + y * (v309 >> 3);
          }

          else
          {
            v335 = 0;
          }

          if (matrixId <= MPSRNNMatrixIdGRUOutputGateBiasTerms && ((1 << matrixId) & 0x11200000) != 0)
          {
            v31 = 1;
          }

          v336 = objc_msgSend_rows(v332, v325, v326, v327, v328, v329, v330, v331);
          v344 = objc_msgSend_rows(v333, v337, v338, v339, v340, v341, v342, v343);
          if (v31 >= v336)
          {
            v352 = v336;
          }

          else
          {
            v352 = v31;
          }

          if (v352 >= v344)
          {
            v353 = v344;
          }

          else
          {
            v353 = v352;
          }

          v354 = objc_msgSend_columns(v585, v345, v346, v347, v348, v349, v350, v351);
          v362 = objc_msgSend_columns(v333, v355, v356, v357, v358, v359, v360, v361);
          if (v354 >= v362)
          {
            v370 = v362;
          }

          else
          {
            v370 = v354;
          }

          v371 = objc_msgSend_rowBytes(v585, v363, v364, v365, v366, v367, v368, v369);
          v379 = objc_msgSend_rowBytes(v333, v372, v373, v374, v375, v376, v377, v378);
          if (v371 == v379)
          {
            v380 = objc_msgSend_data(v333, v16, v17, v18, v19, v20, v21, v22);
            v388 = objc_msgSend_data(v585, v381, v382, v383, v384, v385, v386, v387);
            sub_239BCA7FC(v380, v388, v371 * v353, v588, *(&selfCopy->super.super.isa + *MEMORY[0x277CD7370]), v335, v334);
          }

          else if (v353)
          {
            v389 = MEMORY[0x277CD7370];
            do
            {
              v390 = objc_msgSend_data(v333, v16, v17, v18, v19, v20, v21, v22);
              v398 = objc_msgSend_data(v585, v391, v392, v393, v394, v395, v396, v397);
              v406 = objc_msgSend_dataType(matrix, v399, v400, v401, v402, v403, v404, v405);
              sub_239BCA7FC(v390, v398, v370 * (v406 >> 3), v588, *(&selfCopy->super.super.isa + *v389), v335, v334);
              v334 += v371;
              v335 += v379;
              --v353;
            }

            while (v353);
          }
        }
      }

      goto LABEL_150;
    }

    goto LABEL_10;
  }

  if ((*(&self->super.super.isa + v582) & 1) == 0)
  {
    if (matrixId >= MPSRNNMatrixIdLSTMInputGateInputWeights && MTLReportFailureTypeEnabled())
    {
      v89 = objc_opt_class();
      v568 = NSStringFromClass(v89);
      MTLReportFailure();
    }

    objc_msgSend_dataType(matrix, v16, v17, v18, v19, v20, v21, v22, v568);
    if (objc_msgSend_dataType(matrix, v90, v91, v92, v93, v94, v95, v96) != *(layer[11] + 16 * matrixId) && MTLReportFailureTypeEnabled())
    {
      v526 = objc_opt_class();
      v570 = NSStringFromClass(v526);
      MTLReportFailure();
    }

    objc_msgSend_dataType(matrix, v97, v98, v99, v100, v101, v102, v103, v570);
    if (objc_msgSend_dataType(matrix, v104, v105, v106, v107, v108, v109, v110) != 268435488 && MTLReportFailureTypeEnabled())
    {
      v527 = objc_opt_class();
      v568 = NSStringFromClass(v527);
      MTLReportFailure();
    }
  }

  v111 = objc_msgSend_dataType(matrix, v16, v17, v18, v19, v20, v21, v22, v568);
  v112 = layer[11];
  if (v111 != v112[4 * matrixId])
  {
    goto LABEL_150;
  }

  v590 = 0;
  v591 = 0;
  v592 = 0;
  if (*v112)
  {
    v590 = objc_msgSend_objectAtIndexedSubscript_(weights, v16, 0, v18, v19, v20, v21, v22);
    v112 = layer[11];
    v113 = 1;
    if (!v112[8])
    {
      goto LABEL_29;
    }
  }

  else
  {
    v113 = 0;
    if (!v112[8])
    {
LABEL_29:
      if (!v112[4])
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }
  }

  v114 = objc_msgSend_objectAtIndexedSubscript_(weights, v16, v113++, v18, v19, v20, v21, v22);
  v592 = v114;
  if (*(layer[11] + 16))
  {
LABEL_33:
    v591 = objc_msgSend_objectAtIndexedSubscript_(weights, v16, v113, v18, v19, v20, v21, v22);
  }

LABEL_34:
  v115 = *(&v590 + matrixId);
  v116 = matrix;
  v117 = objc_msgSend_rowBytes(matrix, v16, v17, v18, v19, v20, v21, v22);
  v118 = matrixOffset->x;
  v133 = v118 * v117 + matrixOffset->y * (objc_msgSend_dataType(matrix, v119, v120, v121, v122, v123, v124, v125) >> 3);
  if (v578)
  {
    v134 = v115;
  }

  else
  {
    v134 = matrix;
  }

  if (v578)
  {
    v135 = 0;
  }

  else
  {
    v116 = v115;
    v135 = v133;
  }

  if (v578)
  {
    v136 = v133;
  }

  else
  {
    v136 = 0;
  }

  if (matrixId == MPSRNNMatrixIdSingleGateBiasTerms)
  {
    v137 = 1;
  }

  else
  {
    v137 = v31;
  }

  v138 = objc_msgSend_rows(v134, v126, v127, v128, v129, v130, v131, v132);
  v146 = objc_msgSend_rows(v116, v139, v140, v141, v142, v143, v144, v145);
  if (v137 >= v138)
  {
    v154 = v138;
  }

  else
  {
    v154 = v137;
  }

  if (v154 >= v146)
  {
    v154 = v146;
  }

  v577 = v154;
  v155 = objc_msgSend_columns(v134, v147, v148, v149, v150, v151, v152, v153);
  v163 = objc_msgSend_columns(v116, v156, v157, v158, v159, v160, v161, v162);
  if (v155 >= v163)
  {
    v171 = v163;
  }

  else
  {
    v171 = v155;
  }

  v580 = v171;
  if (!v133 && (*(&selfCopy->super.super.isa + v582) & 1) == 0)
  {
    v172 = objc_msgSend_rows(v134, v164, v165, v166, v167, v168, v169, v170);
    if (v172 == objc_msgSend_rows(v116, v173, v174, v175, v176, v177, v178, v179))
    {
      objc_msgSend_columns(v134, v180, v181, v182, v183, v184, v185, v186);
      objc_msgSend_columns(v116, v187, v188, v189, v190, v191, v192, v193);
    }

    v194 = objc_msgSend_rows(v134, v180, v181, v182, v183, v184, v185, v186);
    if (v194 != objc_msgSend_rows(v116, v195, v196, v197, v198, v199, v200, v201) || (v209 = objc_msgSend_columns(v134, v202, v203, v204, v205, v206, v207, v208), v209 != objc_msgSend_columns(v116, v210, v211, v212, v213, v214, v215, v216)))
    {
      if (MTLReportFailureTypeEnabled())
      {
        v536 = objc_opt_class();
        v537 = NSStringFromClass(v536);
        v545 = objc_msgSend_rows(v134, v538, v539, v540, v541, v542, v543, v544);
        v553 = objc_msgSend_columns(v134, v546, v547, v548, v549, v550, v551, v552);
        v574 = objc_msgSend_rows(v116, v554, v555, v556, v557, v558, v559, v560);
        v575 = objc_msgSend_columns(v116, v561, v562, v563, v564, v565, v566, v567);
        v572 = v545;
        v573 = v553;
        v568 = v537;
        MTLReportFailure();
      }
    }
  }

  v217 = objc_msgSend_rowBytes(v134, v164, v165, v166, v167, v168, v169, v170, v568, v572, v573, v574, v575);
  v225 = objc_msgSend_rowBytes(v116, v218, v219, v220, v221, v222, v223, v224);
  if (v217 == v225)
  {
    v226 = objc_msgSend_data(v116, v16, v17, v18, v19, v20, v21, v22);
    v234 = objc_msgSend_data(v134, v227, v228, v229, v230, v231, v232, v233);
    sub_239BCA7FC(v226, v234, v217 * v577, v588, *(&selfCopy->super.super.isa + *MEMORY[0x277CD7370]), v136, v135);
  }

  else if (v577)
  {
    v235 = MEMORY[0x277CD7370];
    v236 = v577;
    do
    {
      v237 = objc_msgSend_data(v116, v16, v17, v18, v19, v20, v21, v22);
      v245 = objc_msgSend_data(v134, v238, v239, v240, v241, v242, v243, v244);
      v253 = objc_msgSend_dataType(matrix, v246, v247, v248, v249, v250, v251, v252);
      sub_239BCA7FC(v237, v245, v580 * (v253 >> 3), v588, *(&selfCopy->super.super.isa + *v235), v136, v135);
      v135 += v217;
      v136 += v225;
      --v236;
    }

    while (v236);
  }

  v31 = v577;
  v39 = 0;
LABEL_10:
  if (v39 == 2)
  {
    v40 = selfCopy->layer;
    if ((*(&selfCopy->super.super.isa + v582) & 1) == 0)
    {
      if (matrixId - 19 <= 0xFFFFFFFFFFFFFFEFLL && MTLReportFailureTypeEnabled())
      {
        v528 = objc_opt_class();
        v568 = NSStringFromClass(v528);
        MTLReportFailure();
      }

      objc_msgSend_dataType(matrix, v16, v17, v18, v19, v20, v21, v22, v568);
      if (objc_msgSend_dataType(matrix, v41, v42, v43, v44, v45, v46, v47) != *(layer[11] + 16 * matrixId) && MTLReportFailureTypeEnabled())
      {
        v530 = objc_opt_class();
        v569 = NSStringFromClass(v530);
        MTLReportFailure();
      }

      objc_msgSend_dataType(matrix, v48, v49, v50, v51, v52, v53, v54, v569);
      if (objc_msgSend_dataType(matrix, v55, v56, v57, v58, v59, v60, v61) != 268435488 && MTLReportFailureTypeEnabled())
      {
        v532 = objc_opt_class();
        v568 = NSStringFromClass(v532);
        MTLReportFailure();
      }
    }

    v62 = objc_msgSend_dataType(matrix, v16, v17, v18, v19, v20, v21, v22, v568);
    v63 = layer[11] + 16 * matrixId;
    if (v62 == *v63)
    {
      v64 = *(v63 + 8);
      objc_msgSend_count(weights, v16, v17, v18, v19, v20, v21, v22);
      if (v64 >= objc_msgSend_count(weights, v65, v66, v67, v68, v69, v70, v71) && MTLReportFailureTypeEnabled())
      {
        v534 = objc_opt_class();
        v568 = NSStringFromClass(v534);
        MTLReportFailure();
      }

      if (v64 < objc_msgSend_count(weights, v72, v73, v74, v75, v76, v77, v78, v568))
      {
        v86 = objc_msgSend_objectAtIndexedSubscript_(weights, v16, v64, v18, v19, v20, v21, v22);
        v87 = matrixId - 15;
        v576 = v31;
        if (matrixId < MPSRNNMatrixIdLSTMOutputGateInputWeights)
        {
          v87 = matrixId - 11;
          if (matrixId < MPSRNNMatrixIdLSTMMemoryGateInputWeights)
          {
            v88 = matrixId > MPSRNNMatrixIdLSTMInputGateBiasTerms;
            v407 = -3;
            if (matrixId > MPSRNNMatrixIdLSTMInputGateBiasTerms)
            {
              v407 = -7;
            }

            v87 = v407 + matrixId;
          }

          else
          {
            v88 = 2;
          }
        }

        else
        {
          v88 = 3;
        }

        v408 = 0;
        v409 = 0;
        v410 = layer[5];
        if (v87 <= 1)
        {
          if (v87)
          {
            if (v87 != 1)
            {
              v411 = 0;
              goto LABEL_125;
            }

            v411 = 0;
            v408 = v40[417];
          }

          else
          {
            v411 = 0;
            v408 = v40[416];
          }

          v414 = v410 * v88;
          if (v408)
          {
            v409 = v414;
          }

          else
          {
            v409 = 0;
          }

LABEL_125:
          v415 = objc_msgSend_rowBytes(matrix, v79, v80, v81, v82, v83, v84, v85);
          v416 = matrixOffset->x;
          v424 = objc_msgSend_dataType(matrix, v417, v418, v419, v420, v421, v422, v423);
          v425 = matrixOffset->y;
          v433 = objc_msgSend_rowBytes(v86, v426, v427, v428, v429, v430, v431, v432);
          v448 = v433 * v409 + v411 * (objc_msgSend_dataType(matrix, v434, v435, v436, v437, v438, v439, v440) >> 3);
          if (v578)
          {
            v449 = v86;
          }

          else
          {
            v449 = matrix;
          }

          if (v578)
          {
            v450 = matrix;
          }

          else
          {
            v450 = v86;
          }

          if (v578)
          {
            v451 = v448;
          }

          else
          {
            v451 = v416 * v415 + v425 * (v424 >> 3);
          }

          if (v578)
          {
            v452 = v416 * v415 + v425 * (v424 >> 3);
          }

          else
          {
            v452 = v448;
          }

          v453 = v449;
          v454 = objc_msgSend_rows(v449, v441, v442, v443, v444, v445, v446, v447);
          v462 = objc_msgSend_rows(v450, v455, v456, v457, v458, v459, v460, v461);
          v470 = v576;
          if (v576 >= v454)
          {
            v470 = v454;
          }

          if (v470 >= v462)
          {
            v471 = v462;
          }

          else
          {
            v471 = v470;
          }

          v472 = objc_msgSend_columns(v453, v463, v464, v465, v466, v467, v468, v469);
          v480 = objc_msgSend_columns(v450, v473, v474, v475, v476, v477, v478, v479);
          if (v472 >= v480)
          {
            v488 = v480;
          }

          else
          {
            v488 = v472;
          }

          v489 = objc_msgSend_rowBytes(v453, v481, v482, v483, v484, v485, v486, v487);
          v497 = objc_msgSend_rowBytes(v450, v490, v491, v492, v493, v494, v495, v496);
          if (((v489 == v497) & ~v408) != 0)
          {
            v515 = objc_msgSend_data(v450, v16, v17, v18, v19, v20, v21, v22);
            v523 = objc_msgSend_data(v453, v516, v517, v518, v519, v520, v521, v522);
            sub_239BCA7FC(v515, v523, v489 * v471, v588, *(&selfCopy->super.super.isa + *MEMORY[0x277CD7370]), v452, v451);
          }

          else
          {
            for (; v471; --v471)
            {
              v498 = objc_msgSend_data(v450, v16, v17, v18, v19, v20, v21, v22);
              v506 = objc_msgSend_data(v453, v499, v500, v501, v502, v503, v504, v505);
              v514 = objc_msgSend_dataType(matrix, v507, v508, v509, v510, v511, v512, v513);
              sub_239BCA7FC(v498, v506, v488 * (v514 >> 3), v588, *(&selfCopy->super.super.isa + *MEMORY[0x277CD7370]), v452, v451);
              v451 += v489;
              v452 += v497;
            }
          }

          goto LABEL_150;
        }

        if (v87 == 2)
        {
          v409 = 0;
          v408 = 0;
          v411 = 0;
          v413 = v576;
          if (v40[418])
          {
            v413 = 1;
          }
        }

        else
        {
          v411 = 0;
          if (v87 != 3)
          {
            goto LABEL_125;
          }

          v409 = 0;
          v408 = v40[416];
          v412 = v410 * v88;
          if (v40[416])
          {
            v411 = v412;
          }

          else
          {
            v411 = 0;
          }

          v413 = 1;
        }

        v576 = v413;
        goto LABEL_125;
      }
    }
  }

LABEL_150:
  objc_msgSend_endEncoding(v588, v16, v17, v18, v19, v20, v21, v22, v568);
}

- (void)encodeForwardSequenceToCommandBuffer:(id)commandBuffer sourceMatrices:(NSArray *)sourceMatrices sourceOffsets:(NSUInteger *)sourceOffsets destinationMatrices:(NSArray *)destinationMatrices destinationOffsets:(NSUInteger *)destinationOffsets trainingStates:(NSMutableArray *)trainingStates recurrentInputState:(MPSRNNRecurrentMatrixState *)recurrentInputState recurrentOutputStates:(NSMutableArray *)recurrentOutputStates weights:(NSArray *)weights
{
  v18 = objc_alloc(MEMORY[0x277CD7210]);
  v152 = commandBuffer;
  v31 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v18, v19, commandBuffer, 0, v20, v21, v22, v23);
  v166 = v31;
  selfCopy = self;
  v32 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.isa + v32) & 0x18) != 0)
  {
    v25 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
    if (v25 || (v33 = objc_opt_class(), v34 = NSStringFromClass(v33), objc_msgSend_setLabel_(self, v35, v34, v36, v37, v38, v39, v40), (v25 = v34) != 0))
    {
      objc_msgSend_setLabel_(v31, v24, v25, v26, v27, v28, v29, v30);
    }
  }

  v41 = objc_msgSend_count(sourceMatrices, v24, v25, v26, v27, v28, v29, v30);
  v149 = trainingStates;
  v150 = sourceOffsets;
  v151 = destinationOffsets;
  v48 = malloc_type_malloc(16 * v41, 0x80040B8603338uLL);
  v49 = &v48[v41];
  if (v41)
  {
    v50 = 0;
    for (i = objc_msgSend_objectAtIndexedSubscript_(sourceMatrices, v42, 0, v43, v44, v45, v46, v47); ; i = objc_msgSend_objectAtIndexedSubscript_(sourceMatrices, v58, v50, v60, v61, v62, v63, v64, selfCopy4, v144, v146, inputFeatureChannels))
    {
      v48[v50] = i;
      *(v49 + 8 * v50) = objc_msgSend_objectAtIndexedSubscript_(destinationMatrices, v52, v50, v53, v54, v55, v56, v57);
      if ((*(&self->super.super.isa + v32) & 1) == 0)
      {
        objc_msgSend_rows(v48[v50], v58, v59, v60, v61, v62, v63, v64);
        objc_msgSend_rows(*(v49 + 8 * v50), v65, v66, v67, v68, v69, v70, v71);
        v79 = objc_msgSend_rows(v48[v50], v72, v73, v74, v75, v76, v77, v78);
        if (v79 != objc_msgSend_rows(*(v49 + 8 * v50), v80, v81, v82, v83, v84, v85, v86) && MTLReportFailureTypeEnabled())
        {
          v123 = objc_msgSend_rows(v48[v50], v87, v88, v89, v90, v91, v92, v93);
          inputFeatureChannels = v50;
          objc_msgSend_rows(*(v49 + 8 * v50), v124, v125, v126, v127, v128, v129, v130);
          v144 = v50;
          v146 = v123;
          selfCopy4 = self;
          MTLReportFailure();
        }

        objc_msgSend_columns(v48[v50], v87, v88, v89, v90, v91, v92, v93, selfCopy4, v144, v146);
        if (objc_msgSend_columns(v48[v50], v94, v95, v96, v97, v98, v99, v100) != self->_inputFeatureChannels && MTLReportFailureTypeEnabled())
        {
          v147 = objc_msgSend_columns(v48[v50], v101, v102, v103, v104, v105, v106, v107);
          inputFeatureChannels = self->_inputFeatureChannels;
          selfCopy3 = self;
          v145 = v50;
          MTLReportFailure();
        }

        objc_msgSend_columns(*(v49 + 8 * v50), v101, v102, v103, v104, v105, v106, v107, selfCopy3, v145, v147);
        if (objc_msgSend_columns(*(v49 + 8 * v50), v108, v109, v110, v111, v112, v113, v114) != self->_outputFeatureChannels && MTLReportFailureTypeEnabled())
        {
          v115 = objc_msgSend_objectAtIndexedSubscript_(destinationMatrices, v58, v50, v60, v61, v62, v63, v64);
          v146 = objc_msgSend_columns(v115, v116, v117, v118, v119, v120, v121, v122);
          inputFeatureChannels = self->_outputFeatureChannels;
          selfCopy4 = self;
          v144 = v50;
          MTLReportFailure();
        }
      }

      if (v41 == ++v50)
      {
        break;
      }
    }
  }

  MEMORY[0x23EE7D040](v165, v152, 0);
  layer = self->layer;
  layerType = self->layerType;
  gemmKernel = self->gemmKernel;
  gemmKernelNonTranspose = self->gemmKernelNonTranspose;
  v153[2] = v31;
  v153[3] = gemmKernel;
  gemmKernel_noAccumulate = self->gemmKernel_noAccumulate;
  v153[4] = gemmKernelNonTranspose;
  v153[5] = gemmKernel_noAccumulate;
  gemmKernelNonTranspose_noAccumulate = self->gemmKernelNonTranspose_noAccumulate;
  v153[8] = 0;
  v153[9] = v165;
  v153[6] = gemmKernelNonTranspose_noAccumulate;
  v153[7] = 0;
  v153[0] = *(&self->super.super.isa + *MEMORY[0x277CD7370]);
  v153[1] = v152;
  storeAllIntermediateStates = self->_storeAllIntermediateStates;
  propagateFullRecurrentRows = self->_propagateFullRecurrentRows;
  v157 = weights;
  v158 = v149;
  trainingStateIsTemporary = self->_trainingStateIsTemporary;
  v159 = v150;
  v160 = v151;
  v161 = 0;
  v162 = 0;
  sub_239BCAD44(v153, 1uLL, &layer, &layerType, v48, v49, v41, recurrentInputState, recurrentOutputStates, self->_recurrentOutputIsTemporary, 0);
  free(v48);
  MPSAutoCache::~MPSAutoCache(v165);
  objc_msgSend_endEncoding(v31, v135, v136, v137, v138, v139, v140, v141);
}

- (void)encodeGradientSequenceToCommandBuffer:(id)commandBuffer forwardSources:(NSArray *)forwardSources forwardSourceOffsets:(NSUInteger *)forwardSourceOffsets sourceGradients:(NSArray *)sourceGradients sourceGradientOffsets:(NSUInteger *)sourceGradientOffsets destinationGradients:(NSArray *)destinationGradients destinationOffsets:(NSUInteger *)destinationOffsets weightGradients:(NSArray *)weightGradients trainingStates:(NSArray *)trainingStates recurrentInputState:(MPSRNNRecurrentMatrixState *)recurrentInputState recurrentOutputStates:(NSMutableArray *)recurrentOutputStates weights:(NSArray *)weights
{
  v15 = weights;
  v16 = weightGradients;
  v551 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.isa + v551) & 1) == 0)
  {
    if (weightGradients)
    {
      objc_msgSend_count(weights, a2, commandBuffer, forwardSources, forwardSourceOffsets, sourceGradients, sourceGradientOffsets, destinationGradients);
      objc_msgSend_count(weightGradients, v17, v18, v19, v20, v21, v22, v23);
      v31 = objc_msgSend_count(weights, v24, v25, v26, v27, v28, v29, v30);
      if (v31 != objc_msgSend_count(weightGradients, v32, v33, v34, v35, v36, v37, v38))
      {
        if (MTLReportFailureTypeEnabled())
        {
          v505 = objc_opt_class();
          v506 = NSStringFromClass(v505);
          v525 = objc_msgSend_count(weights, v507, v508, v509, v510, v511, v512, v513);
          v529 = objc_msgSend_count(weightGradients, v514, v515, v516, v517, v518, v519, v520);
          selfCopy6 = v506;
          MTLReportFailure();
        }
      }
    }

    objc_msgSend_count(weights, a2, commandBuffer, forwardSources, forwardSourceOffsets, sourceGradients, sourceGradientOffsets, destinationGradients, selfCopy6, v525, v529);
    objc_msgSend_count(self->weightDescriptors, v39, v40, v41, v42, v43, v44, v45);
    v53 = objc_msgSend_count(weights, v46, v47, v48, v49, v50, v51, v52);
    if (v53 != objc_msgSend_count(self->weightDescriptors, v54, v55, v56, v57, v58, v59, v60) && MTLReportFailureTypeEnabled())
    {
      v489 = objc_opt_class();
      v490 = NSStringFromClass(v489);
      v526 = objc_msgSend_count(weights, v491, v492, v493, v494, v495, v496, v497);
      v530 = objc_msgSend_count(self->weightDescriptors, v498, v499, v500, v501, v502, v503, v504);
      v522 = v490;
      MTLReportFailure();
    }

    if (objc_msgSend_count(weights, v61, v62, v63, v64, v65, v66, v67, v522, v526, v530))
    {
      v74 = 0;
      do
      {
        v81 = objc_msgSend_objectAtIndexedSubscript_(v15, v68, v74, v69, v70, v71, v72, v73);
        if (v16)
        {
          v82 = objc_msgSend_objectAtIndexedSubscript_(v16, v75, v74, v76, v77, v78, v79, v80);
          v96 = objc_msgSend_objectAtIndexedSubscript_(self->weightDescriptors, v83, v74, v84, v85, v86, v87, v88);
          if (v82)
          {
            v97 = objc_msgSend_rows(v81, v89, v90, v91, v92, v93, v94, v95);
            if (v97 == objc_msgSend_rows(v82, v98, v99, v100, v101, v102, v103, v104))
            {
              objc_msgSend_columns(v81, v105, v106, v107, v108, v109, v110, v111);
              objc_msgSend_columns(v82, v112, v113, v114, v115, v116, v117, v118);
            }

            v119 = objc_msgSend_rows(v81, v105, v106, v107, v108, v109, v110, v111);
            if (v119 != objc_msgSend_rows(v82, v120, v121, v122, v123, v124, v125, v126) || (v134 = objc_msgSend_columns(v81, v127, v128, v129, v130, v131, v132, v133), v134 != objc_msgSend_columns(v82, v135, v136, v137, v138, v139, v140, v141)))
            {
              if (MTLReportFailureTypeEnabled())
              {
                v225 = objc_opt_class();
                v561 = NSStringFromClass(v225);
                v558 = objc_msgSend_rows(v81, v226, v227, v228, v229, v230, v231, v232);
                v544 = objc_msgSend_columns(v81, v233, v234, v235, v236, v237, v238, v239);
                v534 = objc_msgSend_rows(v82, v240, v241, v242, v243, v244, v245, v246);
                v535 = objc_msgSend_columns(v82, v247, v248, v249, v250, v251, v252, v253);
                v529 = v558;
                inputFeatureChannels = v544;
                selfCopy6 = v561;
                v525 = v74;
                MTLReportFailure();
              }
            }

            v15 = weights;
          }
        }

        else
        {
          v96 = objc_msgSend_objectAtIndexedSubscript_(self->weightDescriptors, v75, v74, v76, v77, v78, v79, v80);
        }

        v142 = objc_msgSend_rows(v81, v89, v90, v91, v92, v93, v94, v95, selfCopy6, v525, v529);
        if (v142 == objc_msgSend_rows(v96, v143, v144, v145, v146, v147, v148, v149))
        {
          objc_msgSend_columns(v81, v150, v151, v152, v153, v154, v155, v156);
          objc_msgSend_columns(v96, v157, v158, v159, v160, v161, v162, v163);
        }

        v164 = objc_msgSend_rows(v81, v150, v151, v152, v153, v154, v155, v156);
        if (v164 != objc_msgSend_rows(v96, v165, v166, v167, v168, v169, v170, v171) || (v179 = objc_msgSend_columns(v81, v172, v173, v174, v175, v176, v177, v178), v179 != objc_msgSend_columns(v96, v180, v181, v182, v183, v184, v185, v186)))
        {
          if (MTLReportFailureTypeEnabled())
          {
            v194 = objc_opt_class();
            v560 = NSStringFromClass(v194);
            v202 = objc_msgSend_rows(v81, v195, v196, v197, v198, v199, v200, v201);
            v210 = objc_msgSend_columns(v81, v203, v204, v205, v206, v207, v208, v209);
            v534 = objc_msgSend_rows(v96, v211, v212, v213, v214, v215, v216, v217);
            v535 = objc_msgSend_columns(v96, v218, v219, v220, v221, v222, v223, v224);
            v531 = v202;
            inputFeatureChannels = v210;
            v15 = weights;
            v523 = v560;
            v527 = v74;
            MTLReportFailure();
          }
        }

        ++v74;
        v16 = weightGradients;
      }

      while (v74 < objc_msgSend_count(v15, v187, v188, v189, v190, v191, v192, v193, v523, v527, v531, inputFeatureChannels, v534, v535));
    }
  }

  v254 = objc_alloc(MEMORY[0x277CD7210]);
  v267 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v254, v255, commandBuffer, 0, v256, v257, v258, v259);
  v575 = v267;
  selfCopy = self;
  if ((*(&self->super.super.isa + v551) & 0x18) != 0)
  {
    v261 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
    if (v261 || (v268 = objc_opt_class(), v269 = NSStringFromClass(v268), objc_msgSend_setLabel_(self, v270, v269, v271, v272, v273, v274, v275), (v261 = v269) != 0))
    {
      objc_msgSend_setLabel_(v267, v260, v261, v262, v263, v264, v265, v266);
    }
  }

  v276 = objc_msgSend_count(sourceGradients, v260, v261, v262, v263, v264, v265, v266);
  v284 = objc_msgSend_count(v15, v277, v278, v279, v280, v281, v282, v283);
  v291 = malloc_type_malloc(8 * (v284 + 3 * v276), 0x80040B8603338uLL);
  v538 = v267;
  v292 = &v291[8 * v276];
  size = 8 * v276;
  v293 = v292 + 8 * v276;
  if (v276)
  {
    v294 = 0;
    v295 = 0;
    v559 = 0;
    v562 = 0;
    for (i = objc_msgSend_objectAtIndexedSubscript_(forwardSources, v285, 0, v286, v287, v288, v289, v290, selfCopy6, v525, v529); ; i = objc_msgSend_objectAtIndexedSubscript_(forwardSources, v285, v294, v286, v287, v288, v289, v290, selfCopy6, v525, v529))
    {
      *&v291[8 * v294] = i;
      *(v292 + 8 * v294) = objc_msgSend_objectAtIndexedSubscript_(sourceGradients, v297, v294, v298, v299, v300, v301, v302);
      v304 = destinationGradients;
      if (destinationGradients)
      {
        v304 = objc_msgSend_objectAtIndexedSubscript_(destinationGradients, v285, v294, v286, v287, v288, v289, v290);
      }

      *(v293 + 8 * v294) = v304;
      v305 = *MEMORY[0x277CD73A8];
      if (*(*&v291[8 * v294] + v305))
      {
        v306 = v562 == 0;
      }

      else
      {
        v306 = 0;
      }

      if (v306)
      {
        v562 = malloc_type_calloc(v276, 8uLL, 0x100004000313F17uLL);
        v305 = *MEMORY[0x277CD73A8];
      }

      if (*(*(v292 + 8 * v294) + v305))
      {
        v307 = v559 == 0;
      }

      else
      {
        v307 = 0;
      }

      if (v307)
      {
        v559 = malloc_type_calloc(v276, 8uLL, 0x100004000313F17uLL);
      }

      v308 = *(v293 + 8 * v294);
      if (v308)
      {
        if (*(v308 + *MEMORY[0x277CD73A8]) && v295 == 0)
        {
          v295 = malloc_type_calloc(v276, 8uLL, 0x100004000313F17uLL);
        }
      }

      if ((*(&self->super.super.isa + v551) & 1) == 0)
      {
        objc_msgSend_rows(*&v291[8 * v294], v285, v303, v286, v287, v288, v289, v290);
        objc_msgSend_rows(*(v292 + 8 * v294), v310, v311, v312, v313, v314, v315, v316);
        v324 = objc_msgSend_rows(*&v291[8 * v294], v317, v318, v319, v320, v321, v322, v323);
        if (v324 != objc_msgSend_rows(*(v292 + 8 * v294), v325, v326, v327, v328, v329, v330, v331) && MTLReportFailureTypeEnabled())
        {
          v398 = objc_msgSend_rows(*&v291[8 * v294], v332, v333, v334, v335, v336, v337, v338);
          inputFeatureChannels = v294;
          v534 = objc_msgSend_rows(*(v292 + 8 * v294), v399, v400, v401, v402, v403, v404, v405);
          v525 = v294;
          v529 = v398;
          selfCopy6 = self;
          MTLReportFailure();
        }

        objc_msgSend_columns(*&v291[8 * v294], v332, v333, v334, v335, v336, v337, v338, selfCopy6, v525, v529, inputFeatureChannels, v534);
        if (objc_msgSend_columns(*&v291[8 * v294], v339, v340, v341, v342, v343, v344, v345) != self->_inputFeatureChannels && MTLReportFailureTypeEnabled())
        {
          v532 = objc_msgSend_columns(*&v291[8 * v294], v346, v347, v348, v349, v350, v351, v352);
          inputFeatureChannels = self->_inputFeatureChannels;
          selfCopy3 = self;
          v528 = v294;
          MTLReportFailure();
        }

        objc_msgSend_columns(*(v292 + 8 * v294), v346, v347, v348, v349, v350, v351, v352, selfCopy3, v528, v532);
        if (objc_msgSend_columns(*(v292 + 8 * v294), v353, v354, v355, v356, v357, v358, v359) != self->_outputFeatureChannels && MTLReportFailureTypeEnabled())
        {
          v529 = objc_msgSend_columns(*(v292 + 8 * v294), v285, v360, v286, v287, v288, v289, v290);
          inputFeatureChannels = self->_outputFeatureChannels;
          selfCopy6 = self;
          v525 = v294;
          MTLReportFailure();
        }

        if (destinationGradients)
        {
          objc_msgSend_rows(*&v291[8 * v294], v285, v360, v286, v287, v288, v289, v290);
          objc_msgSend_rows(*(v293 + 8 * v294), v361, v362, v363, v364, v365, v366, v367);
          v375 = objc_msgSend_rows(*&v291[8 * v294], v368, v369, v370, v371, v372, v373, v374);
          if (v375 != objc_msgSend_rows(*(v293 + 8 * v294), v376, v377, v378, v379, v380, v381, v382) && MTLReportFailureTypeEnabled())
          {
            v406 = objc_msgSend_rows(*&v291[8 * v294], v383, v384, v385, v386, v387, v388, v389);
            inputFeatureChannels = v294;
            v534 = objc_msgSend_rows(*(v293 + 8 * v294), v407, v408, v409, v410, v411, v412, v413);
            v525 = v294;
            v529 = v406;
            selfCopy6 = self;
            MTLReportFailure();
          }

          objc_msgSend_columns(*(v293 + 8 * v294), v383, v384, v385, v386, v387, v388, v389, selfCopy6, v525, v529);
          if (objc_msgSend_columns(*(v293 + 8 * v294), v390, v391, v392, v393, v394, v395, v396) != self->_inputFeatureChannels && MTLReportFailureTypeEnabled())
          {
            v529 = objc_msgSend_columns(*(v293 + 8 * v294), v285, v397, v286, v287, v288, v289, v290);
            inputFeatureChannels = self->_inputFeatureChannels;
            selfCopy6 = self;
            v525 = v294;
            MTLReportFailure();
          }
        }
      }

      if (v276 == ++v294)
      {
        break;
      }
    }
  }

  else
  {
    v559 = 0;
    v562 = 0;
    v295 = 0;
  }

  v545 = (v292 + 8 * v276);
  v557 = (v293 + size);
  v414 = v559;
  v415 = v562;
  if (v562 | v559 | v295 && v276)
  {
    for (j = 0; j != v276; ++j)
    {
      if (v562)
      {
        v418 = forwardSourceOffsets;
        if (forwardSourceOffsets)
        {
          v418 = forwardSourceOffsets[j];
        }

        *(v562 + 8 * j) = v418 + *(*&v291[8 * j] + *MEMORY[0x277CD73A8]);
      }

      if (v559)
      {
        v419 = sourceGradientOffsets;
        if (sourceGradientOffsets)
        {
          v419 = sourceGradientOffsets[j];
        }

        *(v559 + 8 * j) = v419 + *(*(v292 + 8 * j) + *MEMORY[0x277CD73A8]);
      }

      if (v295)
      {
        if (destinationOffsets)
        {
          v417 = destinationOffsets[j];
        }

        else
        {
          v417 = 0;
        }

        *(v295 + 8 * j) = *(v545[j] + *MEMORY[0x277CD73A8]) + v417;
      }
    }
  }

  if (v284)
  {
    if (weightGradients)
    {
      for (k = 0; k != v284; ++k)
      {
        v557[k] = objc_msgSend_objectAtIndexedSubscript_(weightGradients, v285, k, v286, v287, v288, v289, v290, selfCopy6, v525, v529);
      }
    }

    else
    {
      bzero(v557, 8 * v284);
    }
  }

  MEMORY[0x23EE7D040](v574, commandBuffer, 0);
  layer = self->layer;
  gemmKernel = self->gemmKernel;
  gemmKernelNonTranspose = self->gemmKernelNonTranspose;
  gemmKernel_noAccumulate = self->gemmKernel_noAccumulate;
  gemmKernelNonTranspose_noAccumulate = self->gemmKernelNonTranspose_noAccumulate;
  v563[2] = v538;
  v563[3] = gemmKernel;
  gemmKernelTN = self->gemmKernelTN;
  v563[4] = gemmKernelNonTranspose;
  v563[5] = gemmKernel_noAccumulate;
  v563[6] = gemmKernelNonTranspose_noAccumulate;
  v563[7] = gemmKernelTN;
  layerType = self->layerType;
  v563[8] = self->gemmKernelTN_accumulate;
  v563[9] = v574;
  v563[0] = *(&self->super.super.isa + *MEMORY[0x277CD7370]);
  v563[1] = commandBuffer;
  storeAllIntermediateStates = self->_storeAllIntermediateStates;
  v564 = self->_storeAllIntermediateStates;
  propagateFullRecurrentRows = self->_propagateFullRecurrentRows;
  v565 = self->_propagateFullRecurrentRows;
  v567 = weights;
  v568 = 0;
  trainingStateIsTemporary = self->_trainingStateIsTemporary;
  v427 = forwardSourceOffsets;
  if (v562)
  {
    v427 = v562;
  }

  v569 = trainingStates;
  v570 = v427;
  v428 = sourceGradientOffsets;
  if (v559)
  {
    v428 = v559;
  }

  v571 = 0;
  v572 = v428;
  if (v295)
  {
    v429 = v295;
  }

  else
  {
    v429 = destinationOffsets;
  }

  v573 = v429;
  if (!v276)
  {
    goto LABEL_153;
  }

  recurrentOutputIsTemporary = self->_recurrentOutputIsTemporary;
  accumulateWeightGradients = self->_accumulateWeightGradients;
  v430 = malloc_type_malloc(24 * v276, 0x80040B8603338uLL);
  v539 = &v430[v276];
  if (!recurrentOutputStates)
  {
    v548 = 0;
    v432 = 1;
    v433 = recurrentInputState;
    if (recurrentInputState)
    {
      goto LABEL_137;
    }

    goto LABEL_107;
  }

  if (storeAllIntermediateStates)
  {
    v548 = malloc_type_malloc(size, 0x80040B8603338uLL);
    v431 = v276;
  }

  else
  {
    v548 = 0;
    v431 = 1;
  }

  v435 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v443 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  sizea = v430;
  v444 = 0;
  for (m = 0; m != v276; ++m)
  {
    v446 = objc_msgSend_rows(*&v291[8 * m], v436, v437, v438, v439, v440, v441, v442, selfCopy6, v525, v529);
    if (v446 > v444)
    {
      v444 = v446;
    }
  }

  v537 = v295;
  v447 = 0;
  v448 = 0;
  if (v431 <= 1)
  {
    v449 = 1;
  }

  else
  {
    v449 = v431;
  }

  v550 = v449;
  do
  {
    v450 = objc_msgSend_rows(*&v291[8 * v448], v436, v437, v438, v439, v440, v441, v442);
    if (propagateFullRecurrentRows)
    {
      v451 = v444;
    }

    else
    {
      v451 = v450;
    }

    *v435 = 0;
    *v443 = 0;
    switch(layerType)
    {
      case 2:
        *v435 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], v436, v451, 4 * layer[6], 16 * layer[6], 268435488, v441, v442);
        *v443 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], v453, v451, 2 * layer[7], 8 * layer[7], 268435488, v454, v455);
        break;
      case 1:
        v452 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], v436, v451, 8 * layer[6], 32 * layer[6], 268435488, v441, v442);
LABEL_126:
        *v435 = v452;
        if (!v452)
        {
          goto LABEL_117;
        }

        goto LABEL_130;
      case 0:
        v452 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], v436, v451, layer[6], 4 * layer[6], 268435488, v441, v442);
        goto LABEL_126;
    }

    if (!*v435)
    {
      goto LABEL_117;
    }

LABEL_130:
    v456 = [MPSRNNRecurrentMatrixState alloc];
    isTemporary_layerCount = objc_msgSend_initWithCommandBuffer_recurrentMatrixDescriptors_cellMatrixDescriptors_isTemporary_layerCount_(v456, v457, commandBuffer, v435, v443, recurrentOutputIsTemporary, 1, v458);
    v466 = isTemporary_layerCount;
    v467 = isTemporary_layerCount;
    if (v548)
    {
      v548[v448] = isTemporary_layerCount;
      v467 = v447;
    }

    objc_msgSend_addObject_(recurrentOutputStates, v460, isTemporary_layerCount, v461, v462, v463, v464, v465);

    v447 = v467;
LABEL_117:
    ++v448;
  }

  while (v550 != v448);
  free(v435);
  free(v443);
  if (!v548)
  {
    v414 = v559;
    v415 = v562;
    v430 = sizea;
    if (v447)
    {
      v548 = 0;
      *sizea = **(v447 + 48);
      v488 = **(v447 + 56);
      v295 = v537;
      *v539 = v488;
      v432 = 1;
      v433 = recurrentInputState;
      if (recurrentInputState)
      {
        goto LABEL_137;
      }
    }

    else
    {
      v548 = 0;
      v432 = 1;
      v295 = v537;
      v433 = recurrentInputState;
      if (recurrentInputState)
      {
        goto LABEL_137;
      }
    }

    goto LABEL_107;
  }

  v468 = 0;
  v414 = v559;
  v415 = v562;
  v430 = sizea;
  do
  {
    sizea[v468] = **(v548[v468] + 48);
    v539[v468] = **(v548[v468] + 56);
    ++v468;
  }

  while (v276 != v468);
  v432 = 0;
  v295 = v537;
  v433 = recurrentInputState;
  if (!recurrentInputState)
  {
LABEL_107:
    v434 = 0;
    goto LABEL_139;
  }

LABEL_137:
  v434 = *v433->recurrentMatrices;
  cellMatrices = v433->cellMatrices;
  if (cellMatrices)
  {
    v470 = *cellMatrices;
    goto LABEL_140;
  }

LABEL_139:
  v470 = 0;
LABEL_140:
  if (recurrentOutputStates)
  {
    v471 = v430;
  }

  else
  {
    v471 = 0;
  }

  v472 = v539;
  if (!recurrentOutputStates)
  {
    v472 = 0;
  }

  sub_239BD40C4(v563, v276, v291, v292, v545, v557, v434, v470, v471, v472, layer, layerType, accumulateWeightGradients);
  v473 = v430;
  v474 = MEMORY[0x277CD7388];
  v475 = *MEMORY[0x277CD7388];
  v476 = v291;
  v477 = v276;
  do
  {
    v478 = v475;
    if (*(&(*v476)[3].super.super.isa + v475))
    {
      MPSDecrementReadCount(*v476);
      v475 = *v474;
      v478 = *v474;
    }

    v479 = v476[v276];
    if (*(&v479[3].super.super.isa + v478))
    {
      MPSDecrementReadCount(v479);
      v475 = *v474;
    }

    ++v476;
    --v477;
  }

  while (v477);
  free(v473);
  if ((v432 & 1) == 0)
  {
    free(v548);
  }

LABEL_153:
  free(v291);
  if (v415)
  {
    free(v415);
  }

  if (v414)
  {
    free(v414);
  }

  if (v295)
  {
    free(v295);
  }

  MPSAutoCache::~MPSAutoCache(v574);
  v480 = v575;
  objc_msgSend_endEncoding(v575, v481, v482, v483, v484, v485, v486, v487);
}

- (id)recurrentStateForBatchSize:(unint64_t)size forGradientPass:(BOOL)pass
{
  v4 = sub_239BC82A0(1, size, &self->layer, &self->layerType, 0, (*(&self->super.super.isa + *MEMORY[0x277CD7350]))[2], 0, pass);

  return v4;
}

- (id)temporaryRecurrentStateForCommandBuffer:(id)buffer batchSize:(unint64_t)size forGradientPass:(BOOL)pass
{
  v5 = sub_239BC82A0(1, size, &self->layer, &self->layerType, 1u, (*(&self->super.super.isa + *MEMORY[0x277CD7350]))[2], buffer, pass);

  return v5;
}

@end