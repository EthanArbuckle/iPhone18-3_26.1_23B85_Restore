@interface MPSCNNBatchNormalizationGradient
- (MPSCNNBatchNormalizationGradient)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSCNNBatchNormalizationGradient)initWithDevice:(id)device fusedNeuronDescriptor:(MPSNNNeuronDescriptor *)fusedNeuronDescriptor;
- (MPSImage)encodeToCommandBuffer:(id)commandBuffer sourceGradient:(MPSImage *)sourceGradient sourceImage:(MPSImage *)sourceImage batchNormalizationState:(MPSCNNBatchNormalizationState *)batchNormalizationState;
- (MPSImageBatch)encodeBatchToCommandBuffer:(id)commandBuffer sourceGradients:(MPSImageBatch *)sourceGradients sourceImages:(MPSImageBatch *)sourceImages batchNormalizationState:(MPSCNNBatchNormalizationState *)batchNormalizationState;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (void)dealloc;
- (void)encodeBatchToCommandBuffer:(id)commandBuffer sourceGradients:(MPSImageBatch *)sourceGradients sourceImages:(MPSImageBatch *)sourceImages batchNormalizationState:(MPSCNNBatchNormalizationState *)batchNormalizationState destinationGradients:(MPSImageBatch *)destinationGradients;
- (void)encodeToCommandBuffer:(id)commandBuffer sourceGradient:(MPSImage *)sourceGradient sourceImage:(MPSImage *)sourceImage batchNormalizationState:(MPSCNNBatchNormalizationState *)batchNormalizationState destinationGradient:(MPSImage *)destinationGradient;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSCNNBatchNormalizationGradient

- (MPSCNNBatchNormalizationGradient)initWithDevice:(id)device fusedNeuronDescriptor:(MPSNNNeuronDescriptor *)fusedNeuronDescriptor
{
  v62.receiver = self;
  v62.super_class = MPSCNNBatchNormalizationGradient;
  v6 = [(MPSCNNGradientKernel *)&v62 initWithDevice:?];
  if (v6)
  {
    MPSDevice = MPSDevice::GetMPSDevice();
    if (MPSDevice)
    {
      v6->super.super._encode = sub_239D0B064;
      v6->super.super._batchEncode = sub_239D0B698;
      v6->super.super._encodeData = v6;
      v6->super.super._checkFlags = 2;
      v6->_fusedNeuronDescriptor = 0;
      v8 = (*(*MPSDevice + 24))(MPSDevice);
      v6->_preluBuffer = 0;
      v16 = objc_msgSend_copy(fusedNeuronDescriptor, v9, v10, v11, v12, v13, v14, v15);
      v6->_fusedNeuronDescriptor = v16;
      if (v16 && objc_msgSend_neuronType(v16, v17, v18, v19, v20, v21, v22, v23) == 10)
      {
        v31 = 16 * v8;
        v32 = objc_msgSend_data(v6->_fusedNeuronDescriptor, v24, v25, v26, v27, v28, v29, v30);
        v40 = objc_msgSend_bytes(v32, v33, v34, v35, v36, v37, v38, v39);
        v48 = objc_msgSend_data(v6->_fusedNeuronDescriptor, v41, v42, v43, v44, v45, v46, v47);
        v56 = objc_msgSend_length(v48, v49, v50, v51, v52, v53, v54, v55);
        v6->_preluBuffer = objc_msgSend_newBufferWithBytes_length_options_(device, v57, v40, v56, v31, v58, v59, v60);
      }
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

- (void)encodeToCommandBuffer:(id)commandBuffer sourceGradient:(MPSImage *)sourceGradient sourceImage:(MPSImage *)sourceImage batchNormalizationState:(MPSCNNBatchNormalizationState *)batchNormalizationState destinationGradient:(MPSImage *)destinationGradient
{
  if ((*(&batchNormalizationState->super.super.super.isa + *MEMORY[0x277CD7470]) & 1) != 0 && !*(&batchNormalizationState->super.super.super.isa + *MEMORY[0x277CD7478]))
  {
    v9 = self;
    v10 = destinationGradient;
    v11 = batchNormalizationState;
    v12 = sourceImage;
    v13 = sourceGradient;
    v14 = commandBuffer;
    v15 = MTLReportFailureTypeEnabled();
    commandBuffer = v14;
    sourceGradient = v13;
    sourceImage = v12;
    batchNormalizationState = v11;
    destinationGradient = v10;
    v16 = v15;
    self = v9;
    if (v16)
    {
      v17 = objc_opt_class();
      NSStringFromClass(v17);
      MTLReportFailure();
      self = v9;
      commandBuffer = v14;
      sourceGradient = v13;
      sourceImage = v12;
      batchNormalizationState = v11;
      destinationGradient = v10;
    }
  }

  objc_msgSend_encodeToCommandBuffer_sourceGradient_sourceImage_gradientState_destinationGradient_(self, a2, commandBuffer, sourceGradient, sourceImage, batchNormalizationState, destinationGradient, v7);
}

- (MPSImage)encodeToCommandBuffer:(id)commandBuffer sourceGradient:(MPSImage *)sourceGradient sourceImage:(MPSImage *)sourceImage batchNormalizationState:(MPSCNNBatchNormalizationState *)batchNormalizationState
{
  if ((*(&batchNormalizationState->super.super.super.isa + *MEMORY[0x277CD7470]) & 1) != 0 && !*(&batchNormalizationState->super.super.super.isa + *MEMORY[0x277CD7478]))
  {
    v9 = self;
    v10 = batchNormalizationState;
    v11 = sourceImage;
    v12 = sourceGradient;
    v13 = commandBuffer;
    v14 = MTLReportFailureTypeEnabled();
    commandBuffer = v13;
    sourceGradient = v12;
    sourceImage = v11;
    batchNormalizationState = v10;
    v15 = v14;
    self = v9;
    if (v15)
    {
      v16 = objc_opt_class();
      NSStringFromClass(v16);
      MTLReportFailure();
      self = v9;
      commandBuffer = v13;
      sourceGradient = v12;
      sourceImage = v11;
      batchNormalizationState = v10;
    }
  }

  return MEMORY[0x2821F9670](self, sel_encodeToCommandBuffer_sourceGradient_sourceImage_gradientState_, commandBuffer, sourceGradient, sourceImage, batchNormalizationState, v6, v7);
}

- (void)encodeBatchToCommandBuffer:(id)commandBuffer sourceGradients:(MPSImageBatch *)sourceGradients sourceImages:(MPSImageBatch *)sourceImages batchNormalizationState:(MPSCNNBatchNormalizationState *)batchNormalizationState destinationGradients:(MPSImageBatch *)destinationGradients
{
  if ((*(&batchNormalizationState->super.super.super.isa + *MEMORY[0x277CD7470]) & 1) != 0 && !*(&batchNormalizationState->super.super.super.isa + *MEMORY[0x277CD7478]) && MTLReportFailureTypeEnabled())
  {
    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    MTLReportFailure();
  }

  v14 = objc_msgSend_count(sourceImages, a2, commandBuffer, sourceGradients, sourceImages, batchNormalizationState, destinationGradients, v7, v31);
  if (!v14 || (v17 = v14, (v18 = malloc_type_malloc(8 * v14, 0x80040B8603338uLL)) == 0))
  {
    v24 = 0;
    goto LABEL_14;
  }

  v22 = v18;
  if (v17 > 3)
  {
    v23 = v17 & 0xFFFFFFFFFFFFFFFCLL;
    v25 = vdupq_n_s64(batchNormalizationState);
    v26 = v18 + 1;
    v27 = v17 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v26[-1] = v25;
      *v26 = v25;
      v26 += 2;
      v27 -= 4;
    }

    while (v27);
    if (v17 == v23)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v23 = 0;
  }

  v28 = v17 - v23;
  v29 = v18 + v23;
  do
  {
    *v29++ = batchNormalizationState;
    --v28;
  }

  while (v28);
LABEL_13:
  v24 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v15, v18, v17, v19, v20, v21, v16);
  free(v22);
LABEL_14:

  objc_msgSend_encodeBatchToCommandBuffer_sourceGradients_sourceImages_gradientStates_destinationGradients_(self, v15, commandBuffer, sourceGradients, sourceImages, v24, destinationGradients, v16);
}

- (MPSImageBatch)encodeBatchToCommandBuffer:(id)commandBuffer sourceGradients:(MPSImageBatch *)sourceGradients sourceImages:(MPSImageBatch *)sourceImages batchNormalizationState:(MPSCNNBatchNormalizationState *)batchNormalizationState
{
  if ((*(&batchNormalizationState->super.super.super.isa + *MEMORY[0x277CD7470]) & 1) != 0 && !*(&batchNormalizationState->super.super.super.isa + *MEMORY[0x277CD7478]) && MTLReportFailureTypeEnabled())
  {
    v29 = objc_opt_class();
    v31 = NSStringFromClass(v29);
    MTLReportFailure();
  }

  v13 = objc_msgSend_count(sourceImages, a2, commandBuffer, sourceGradients, sourceImages, batchNormalizationState, v6, v7, v31);
  if (!v13 || (v16 = v13, (v17 = malloc_type_malloc(8 * v13, 0x80040B8603338uLL)) == 0))
  {
    v23 = 0;
    goto LABEL_14;
  }

  v21 = v17;
  if (v16 > 3)
  {
    v22 = v16 & 0xFFFFFFFFFFFFFFFCLL;
    v24 = vdupq_n_s64(batchNormalizationState);
    v25 = v17 + 1;
    v26 = v16 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v25[-1] = v24;
      *v25 = v24;
      v25 += 2;
      v26 -= 4;
    }

    while (v26);
    if (v16 == v22)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v22 = 0;
  }

  v27 = v16 - v22;
  v28 = v17 + v22;
  do
  {
    *v28++ = batchNormalizationState;
    --v27;
  }

  while (v27);
LABEL_13:
  v23 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v18, v17, v16, v19, v20, v14, v15);
  free(v21);
LABEL_14:

  return MEMORY[0x2821F9670](self, sel_encodeBatchToCommandBuffer_sourceGradients_sourceImages_gradientStates_, commandBuffer, sourceGradients, sourceImages, v23, v14, v15);
}

- (MPSCNNBatchNormalizationGradient)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v81.receiver = self;
  v81.super_class = MPSCNNBatchNormalizationGradient;
  v6 = [MPSCNNGradientKernel initWithCoder:sel_initWithCoder_device_ device:?];
  if (v6)
  {
    MPSDevice = MPSDevice::GetMPSDevice();
    if (MPSDevice)
    {
      v8 = (*(*MPSDevice + 24))(MPSDevice);
      if (objc_msgSend_decodeBoolForKey_(aDecoder, v9, @"kMPSCNNBatchNormalizationStatisticsGradientIsNeuronFusedKey", v10, v11, v12, v13, v14))
      {
        v21 = objc_msgSend_decodeInt32ForKey_(aDecoder, v15, @"kMPSCNNBatchNormalizationStatisticsGradientFusedNeuronType", v16, v17, v18, v19, v20);
        v28 = objc_autoreleasePoolPush();
        if (v21 == 10)
        {
          v29 = 16 * v8;
          v30 = objc_msgSend_decodeInt64ForKey_(aDecoder, v22, @"kMPSCNNBatchNormalizationFusedNeuronPReLULength", v23, v24, v25, v26, v27);
          v31 = malloc_type_malloc(v30, 0x100004052888210uLL);
          v82 = 0;
          if (objc_msgSend_decodeBytesForKey_returnedLength_(aDecoder, v32, @"kMPSCNNBatchNormalizationFusedNeuronPReLUData", &v82, v33, v34, v35, v36))
          {
            MPSCopyToFromNetworkByteOrder32();
          }

          v37 = objc_alloc(MEMORY[0x277CBEA90]);
          v43 = objc_msgSend_initWithBytes_length_(v37, v38, v31, v30, v39, v40, v41, v42);
          v49 = objc_msgSend_cnnNeuronPReLUDescriptorWithData_noCopy_(MPSNNNeuronDescriptor, v44, v43, 0, v45, v46, v47, v48);
          v6->_preluBuffer = objc_msgSend_newBufferWithBytes_length_options_(device, v50, v31, v30, v29, v51, v52, v53);
          free(v31);
        }

        else
        {
          objc_msgSend_decodeFloatForKey_(aDecoder, v22, @"kMPSCNNBatchNormalizationStatisticsGradientFusedNeuronA", v23, v24, v25, v26, v27);
          v55 = v54;
          objc_msgSend_decodeFloatForKey_(aDecoder, v56, @"kMPSCNNBatchNormalizationStatisticsGradientFusedNeuronB", v57, v58, v59, v60, v61);
          v63 = v62;
          objc_msgSend_decodeFloatForKey_(aDecoder, v64, @"kMPSCNNBatchNormalizationStatisticsGradientFusedNeuronC", v65, v66, v67, v68, v69);
          LODWORD(v71) = v70;
          LODWORD(v72) = v55;
          LODWORD(v73) = v63;
          v49 = objc_msgSend_cnnNeuronDescriptorWithType_a_b_c_(MPSNNNeuronDescriptor, v74, v21, v75, v76, v77, v78, v79, v72, v73, v71);
        }

        v6->_fusedNeuronDescriptor = v49;
        objc_autoreleasePoolPop(v28);
      }

      else
      {
        v6->_fusedNeuronDescriptor = 0;
      }

      v6->super.super._encode = sub_239D0B064;
      v6->super.super._batchEncode = sub_239D0B698;
      v6->super.super._encodeData = v6;
      v6->super.super._checkFlags = 2;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v106.receiver = self;
  v106.super_class = MPSCNNBatchNormalizationGradient;
  [(MPSCNNGradientKernel *)&v106 encodeWithCoder:?];
  if (self->_fusedNeuronDescriptor)
  {
    objc_msgSend_encodeBool_forKey_(a3, v5, 1, @"kMPSCNNBatchNormalizationStatisticsGradientIsNeuronFusedKey", v6, v7, v8, v9);
    v17 = objc_msgSend_neuronType(self->_fusedNeuronDescriptor, v10, v11, v12, v13, v14, v15, v16);
    objc_msgSend_encodeInt32_forKey_(a3, v18, v17, @"kMPSCNNBatchNormalizationStatisticsGradientFusedNeuronType", v19, v20, v21, v22);
    v37 = objc_msgSend_neuronType(self->_fusedNeuronDescriptor, v23, v24, v25, v26, v27, v28, v29);
    fusedNeuronDescriptor = self->_fusedNeuronDescriptor;
    if (v37 == 10)
    {
      v39 = objc_msgSend_data(fusedNeuronDescriptor, v30, v31, v32, v33, v34, v35, v36);
      v47 = objc_msgSend_length(v39, v40, v41, v42, v43, v44, v45, v46);
      v55 = objc_msgSend_data(self->_fusedNeuronDescriptor, v48, v49, v50, v51, v52, v53, v54);
      objc_msgSend_bytes(v55, v56, v57, v58, v59, v60, v61, v62);
      objc_msgSend_encodeInt64_forKey_(a3, v63, v47, @"kMPSCNNBatchNormalizationFusedNeuronPReLULength", v64, v65, v66, v67);
      v68 = malloc_type_malloc(v47 & 0xFFFFFFFFFFFFFFFCLL, 0x100004052888210uLL);
      if (v68)
      {
        v69 = v68;
        MPSCopyToFromNetworkByteOrder32();
        objc_msgSend_encodeBytes_length_forKey_(a3, v70, v69, v47 & 0xFFFFFFFFFFFFFFFCLL, @"kMPSCNNBatchNormalizationFusedNeuronPReLUData", v71, v72, v73);
        free(v69);
      }
    }

    else
    {
      objc_msgSend_a(fusedNeuronDescriptor, v30, v31, v32, v33, v34, v35, v36);
      objc_msgSend_encodeFloat_forKey_(a3, v74, @"kMPSCNNBatchNormalizationStatisticsGradientFusedNeuronA", v75, v76, v77, v78, v79);
      objc_msgSend_b(self->_fusedNeuronDescriptor, v80, v81, v82, v83, v84, v85, v86);
      objc_msgSend_encodeFloat_forKey_(a3, v87, @"kMPSCNNBatchNormalizationStatisticsGradientFusedNeuronB", v88, v89, v90, v91, v92);
      objc_msgSend_c(self->_fusedNeuronDescriptor, v93, v94, v95, v96, v97, v98, v99);
      objc_msgSend_encodeFloat_forKey_(a3, v100, @"kMPSCNNBatchNormalizationStatisticsGradientFusedNeuronC", v101, v102, v103, v104, v105);
    }
  }

  else
  {
    objc_msgSend_encodeBool_forKey_(a3, v5, 0, @"kMPSCNNBatchNormalizationStatisticsGradientIsNeuronFusedKey", v6, v7, v8, v9);
  }
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  if (!a4)
  {
    return 0;
  }

  MPSDevice = MPSDevice::GetMPSDevice();
  if (!MPSDevice)
  {
    return 0;
  }

  v8 = MPSDevice;
  v63.receiver = self;
  v63.super_class = MPSCNNBatchNormalizationGradient;
  v16 = [(MPSCNNGradientKernel *)&v63 copyWithZone:a3 device:a4];
  if (v16)
  {
    *(v16 + 54) = objc_msgSend_copy(self->_fusedNeuronDescriptor, v9, v10, v11, v12, v13, v14, v15);
    v24 = (*(*v8 + 24))(v8);
    v25 = *(v16 + 54);
    if (v25)
    {
      if (objc_msgSend_neuronType(v25, v17, v18, v19, v20, v21, v22, v23) == 10)
      {
        v33 = objc_msgSend_data(*(v16 + 54), v26, v27, v28, v29, v30, v31, v32);
        v41 = objc_msgSend_bytes(v33, v34, v35, v36, v37, v38, v39, v40);
        v49 = objc_msgSend_data(*(v16 + 54), v42, v43, v44, v45, v46, v47, v48);
        v57 = objc_msgSend_length(v49, v50, v51, v52, v53, v54, v55, v56);
        *(v16 + 55) = objc_msgSend_newBufferWithBytes_length_options_(a4, v58, v41, v57, 16 * v24, v59, v60, v61);
      }
    }
  }

  return v16;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSCNNBatchNormalizationGradient;
  [(MPSCNNBinaryKernel *)&v3 dealloc];
}

@end