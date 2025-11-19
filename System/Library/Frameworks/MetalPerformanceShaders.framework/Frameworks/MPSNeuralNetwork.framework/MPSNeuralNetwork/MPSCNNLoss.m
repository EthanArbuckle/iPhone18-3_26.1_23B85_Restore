@interface MPSCNNLoss
- (MPSCNNLoss)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSCNNLoss)initWithDevice:(id)device;
- (MPSCNNLoss)initWithDevice:(id)device lossDescriptor:(MPSCNNLossDescriptor *)lossDescriptor;
- (MPSImage)encodeToCommandBuffer:(id)commandBuffer sourceImage:(MPSImage *)sourceImage labels:(MPSCNNLossLabels *)labels;
- (MPSImageBatch)encodeBatchToCommandBuffer:(id)commandBuffer sourceImages:(MPSImageBatch *)sourceImage labels:(MPSCNNLossLabelsBatch *)labels;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)debugDescription;
- (void)dealloc;
- (void)encodeBatchToCommandBuffer:(id)commandBuffer sourceImages:(MPSImageBatch *)sourceImage labels:(MPSCNNLossLabelsBatch *)labels destinationImages:(MPSImageBatch *)destinationImage;
- (void)encodeToCommandBuffer:(id)commandBuffer sourceImage:(MPSImage *)sourceImage labels:(MPSCNNLossLabels *)labels destinationImage:(MPSImage *)destinationImage;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSCNNLoss

- (MPSCNNLoss)initWithDevice:(id)device
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (MPSCNNLoss)initWithDevice:(id)device lossDescriptor:(MPSCNNLossDescriptor *)lossDescriptor
{
  v126.receiver = self;
  v126.super_class = MPSCNNLoss;
  v13 = [(MPSCNNKernel *)&v126 initWithDevice:?];
  if (v13)
  {
    objc_msgSend_lossType(lossDescriptor, v6, v7, v8, v9, v10, v11, v12);
    if (objc_msgSend_lossType(lossDescriptor, v14, v15, v16, v17, v18, v19, v20) >= 0xA)
    {
      if (MTLReportFailureTypeEnabled())
      {
        objc_msgSend_lossType(lossDescriptor, v112, v113, v114, v115, v116, v117, v118);
LABEL_10:
        MTLReportFailure();
      }
    }

    else
    {
      v13->_lossType = objc_msgSend_lossType(lossDescriptor, v21, v22, v23, v24, v25, v26, v27);
      objc_msgSend_reductionType(lossDescriptor, v28, v29, v30, v31, v32, v33, v34);
      if (objc_msgSend_reductionType(lossDescriptor, v35, v36, v37, v38, v39, v40, v41) < 4)
      {
        v13->_reductionType = objc_msgSend_reductionType(lossDescriptor, v42, v43, v44, v45, v46, v47, v48);
        v13->_reduceAcrossBatch = objc_msgSend_reduceAcrossBatch(lossDescriptor, v49, v50, v51, v52, v53, v54, v55);
        v13->_reductionBuffer = 0;
        v61 = objc_msgSend_rowBytesForColumns_dataType_(MEMORY[0x277CD7258], v56, 16, 268435488, v57, v58, v59, v60);
        v65 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], v62, 2, 16, v61, 268435488, v63, v64);
        v66 = objc_alloc(MEMORY[0x277CD7250]);
        v13->_reductionBuffer = objc_msgSend_initWithDevice_descriptor_(v66, v67, device, v65, v68, v69, v70, v71);
        objc_msgSend_weight(lossDescriptor, v72, v73, v74, v75, v76, v77, v78);
        v13->_weight = v79;
        objc_msgSend_labelSmoothing(lossDescriptor, v80, v81, v82, v83, v84, v85, v86);
        v13->_labelSmoothing = v87;
        v13->_numberOfClasses = objc_msgSend_numberOfClasses(lossDescriptor, v88, v89, v90, v91, v92, v93, v94);
        objc_msgSend_epsilon(lossDescriptor, v95, v96, v97, v98, v99, v100, v101);
        v13->_epsilon = v102;
        objc_msgSend_delta(lossDescriptor, v103, v104, v105, v106, v107, v108, v109);
        v13->_delta = v110;
        v13->super._isBackwards = 0;
        v13->super._checkFlags |= 2u;
        v13->super._encode = sub_239CEA330;
        v13->super._batchEncode = sub_239CEA5BC;
        v13->super._encodeData = v13;
        v13->_firstLossImage = 0;
        return v13;
      }

      if (MTLReportFailureTypeEnabled())
      {
        objc_msgSend_reductionType(lossDescriptor, v119, v120, v121, v122, v123, v124, v125);
        goto LABEL_10;
      }
    }

    return 0;
  }

  return v13;
}

- (MPSCNNLoss)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v80.receiver = self;
  v80.super_class = MPSCNNLoss;
  v6 = [MPSCNNKernel initWithCoder:sel_initWithCoder_device_ device:?];
  v13 = v6;
  if (!v6)
  {
    return v13;
  }

  if (*(&v6->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    v14 = objc_msgSend_decodeInt32ForKey_(aDecoder, v7, @"MPSCNNLossLossType", v8, v9, v10, v11, v12);
    v13->_lossType = v14;
    if (v14 >= 0xA)
    {
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v21 = objc_msgSend_decodeInt32ForKey_(aDecoder, v15, @"MPSCNNLossReductionType", v16, v17, v18, v19, v20);
    v13->_reductionType = v21;
    if (v21 < 4)
    {
      v13->_reduceAcrossBatch = objc_msgSend_decodeBoolForKey_(aDecoder, v22, @"MPSCNNLossReduceAcrossBatches", v23, v24, v25, v26, v27);
      objc_msgSend_decodeFloatForKey_(aDecoder, v28, @"MPSCNNLossWeight", v29, v30, v31, v32, v33);
      v13->_weight = v34;
      objc_msgSend_decodeFloatForKey_(aDecoder, v35, @"MPSCNNLossLabelSmoothing", v36, v37, v38, v39, v40);
      v13->_labelSmoothing = v41;
      v13->_numberOfClasses = objc_msgSend_decodeInt64ForKey_(aDecoder, v42, @"MPSCNNLossNumberOfClasses", v43, v44, v45, v46, v47);
      objc_msgSend_decodeFloatForKey_(aDecoder, v48, @"MPSCNNLossEpsilon", v49, v50, v51, v52, v53);
      v13->_epsilon = v54;
      objc_msgSend_decodeFloatForKey_(aDecoder, v55, @"MPSCNNLossDelta", v56, v57, v58, v59, v60);
      v13->_delta = v61;
      v67 = objc_msgSend_rowBytesForColumns_dataType_(MEMORY[0x277CD7258], v62, 16, 268435488, v63, v64, v65, v66);
      v71 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], v68, 2, 16, v67, 268435488, v69, v70);
      v72 = objc_alloc(MEMORY[0x277CD7250]);
      v13->_reductionBuffer = objc_msgSend_initWithDevice_descriptor_(v72, v73, device, v71, v74, v75, v76, v77);
      v13->super._checkFlags |= 2u;
      v13->super._encode = sub_239CEA330;
      v13->super._batchEncode = sub_239CEA5BC;
      v13->super._encodeData = v13;
      v13->_firstLossImage = 0;
      return v13;
    }

    if (MTLReportFailureTypeEnabled())
    {
LABEL_9:
      MTLReportFailure();
    }
  }

  else if (MTLReportFailureTypeEnabled())
  {
    v79 = objc_opt_class();
    NSStringFromClass(v79);
    goto LABEL_9;
  }

LABEL_10:

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v53.receiver = self;
  v53.super_class = MPSCNNLoss;
  [(MPSCNNKernel *)&v53 encodeWithCoder:?];
  objc_msgSend_encodeInt32_forKey_(a3, v5, self->_lossType, @"MPSCNNLossLossType", v6, v7, v8, v9);
  objc_msgSend_encodeInt32_forKey_(a3, v10, self->_reductionType, @"MPSCNNLossReductionType", v11, v12, v13, v14);
  objc_msgSend_encodeBool_forKey_(a3, v15, self->_reduceAcrossBatch, @"MPSCNNLossReduceAcrossBatches", v16, v17, v18, v19);
  *&v20 = self->_weight;
  objc_msgSend_encodeFloat_forKey_(a3, v21, @"MPSCNNLossWeight", v22, v23, v24, v25, v26, v20);
  *&v27 = self->_labelSmoothing;
  objc_msgSend_encodeFloat_forKey_(a3, v28, @"MPSCNNLossLabelSmoothing", v29, v30, v31, v32, v33, v27);
  objc_msgSend_encodeInt64_forKey_(a3, v34, self->_numberOfClasses, @"MPSCNNLossNumberOfClasses", v35, v36, v37, v38);
  *&v39 = self->_epsilon;
  objc_msgSend_encodeFloat_forKey_(a3, v40, @"MPSCNNLossEpsilon", v41, v42, v43, v44, v45, v39);
  *&v46 = self->_delta;
  objc_msgSend_encodeFloat_forKey_(a3, v47, @"MPSCNNLossDelta", v48, v49, v50, v51, v52, v46);
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v25.receiver = self;
  v25.super_class = MPSCNNLoss;
  result = [(MPSCNNKernel *)&v25 copyWithZone:a3 device:?];
  if (result)
  {
    *(result + 82) = self->_lossType;
    *(result + 83) = self->_reductionType;
    *(result + 336) = self->_reduceAcrossBatch;
    *(result + 85) = LODWORD(self->_weight);
    *(result + 86) = LODWORD(self->_labelSmoothing);
    *(result + 44) = self->_numberOfClasses;
    *(result + 90) = LODWORD(self->_epsilon);
    *(result + 91) = LODWORD(self->_delta);
    v12 = result;
    v13 = objc_msgSend_rowBytesForColumns_dataType_(MEMORY[0x277CD7258], v7, 16, 268435488, v8, v9, v10, v11);
    v17 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], v14, 2, 16, v13, 268435488, v15, v16);
    if (!a4)
    {
      a4 = (*(&self->super.super.super.isa + *MEMORY[0x277CD7350]))[2];
    }

    v18 = objc_alloc(MEMORY[0x277CD7250]);
    v24 = objc_msgSend_initWithDevice_descriptor_(v18, v19, a4, v17, v20, v21, v22, v23);
    result = v12;
    v12[46] = v24;
    v12[47] = 0;
  }

  return result;
}

- (void)dealloc
{
  objc_msgSend_dealloc(self->_reductionBuffer, a2, v2, v3, v4, v5, v6, v7);
  v9.receiver = self;
  v9.super_class = MPSCNNLoss;
  [(MPSCNNKernel *)&v9 dealloc];
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = MPSCNNLoss;
  v4 = [(MPSCNNKernel *)&v12 debugDescription];
  if (self->_reduceAcrossBatch)
  {
    return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tlossType: %d\treductionType: %d, across batches = %s\tweight: %f\tlabelSmoothing: %f\tnumberOfClasses: %lu\tepsilon: %f\tdelta: %f", v6, v7, v8, v9, v10, v4, self->_lossType, self->_reductionType, "YES", self->_weight, self->_labelSmoothing, self->_numberOfClasses, self->_epsilon, self->_delta);
  }

  else
  {
    return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tlossType: %d\treductionType: %d, across batches = %s\tweight: %f\tlabelSmoothing: %f\tnumberOfClasses: %lu\tepsilon: %f\tdelta: %f", v6, v7, v8, v9, v10, v4, self->_lossType, self->_reductionType, "NO", self->_weight, self->_labelSmoothing, self->_numberOfClasses, self->_epsilon, self->_delta);
  }
}

- (void)encodeToCommandBuffer:(id)commandBuffer sourceImage:(MPSImage *)sourceImage labels:(MPSCNNLossLabels *)labels destinationImage:(MPSImage *)destinationImage
{
  objc_msgSend_encodeToCommandBuffer_sourceImage_inState_destinationImage_(self, a2, commandBuffer, sourceImage, labels, destinationImage, v6, v7);

  MPSDecrementReadCount(&labels->super);
}

- (MPSImage)encodeToCommandBuffer:(id)commandBuffer sourceImage:(MPSImage *)sourceImage labels:(MPSCNNLossLabels *)labels
{
  v9 = objc_msgSend_encodeToCommandBuffer_sourceImage_inState_(self, a2, commandBuffer, sourceImage, labels, v5, v6, v7);
  MPSDecrementReadCount(&labels->super);
  return v9;
}

- (void)encodeBatchToCommandBuffer:(id)commandBuffer sourceImages:(MPSImageBatch *)sourceImage labels:(MPSCNNLossLabelsBatch *)labels destinationImages:(MPSImageBatch *)destinationImage
{
  v55 = *MEMORY[0x277D85DE8];
  if (self->_reduceAcrossBatch)
  {
    if (labels)
    {
      if (self->_reductionType == 3)
      {
        if (objc_msgSend_objectAtIndexedSubscript_(labels, a2, 0, sourceImage, labels, destinationImage, v6, v7))
        {
          v16 = objc_msgSend_objectAtIndexedSubscript_(labels, a2, 0, v13, v14, v15, v6, v7);
          if (objc_msgSend_weightsImage(v16, v17, v18, v19, v20, v21, v22, v23))
          {
            v51 = 0u;
            v52 = 0u;
            v49 = 0u;
            v50 = 0u;
            v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(labels, a2, &v49, v54, 16, v24, v6, v7);
            if (v25)
            {
              v30 = v25;
              v31 = *v50;
              do
              {
                v32 = 0;
                do
                {
                  if (*v50 != v31)
                  {
                    objc_enumerationMutation(labels);
                  }

                  *(*(*(&v49 + 1) + 8 * v32++) + 129) = 1;
                }

                while (v30 != v32);
                v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(labels, v26, &v49, v54, 16, v27, v28, v29);
              }

              while (v30);
            }

            MPSImageBatchIncrementReadCount(sourceImage, 1);
            objc_msgSend_encodeBatchToCommandBuffer_sourceImages_inStates_destinationImages_(self, v33, commandBuffer, sourceImage, labels, destinationImage, v34, v35);
            v47 = 0u;
            v48 = 0u;
            v45 = 0u;
            v46 = 0u;
            v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(labels, v36, &v45, v53, 16, v37, v38, v39);
            if (v40)
            {
              v42 = v40;
              v43 = *v46;
              do
              {
                v44 = 0;
                do
                {
                  if (*v46 != v43)
                  {
                    objc_enumerationMutation(labels);
                  }

                  *(*(*(&v45 + 1) + 8 * v44++) + 129) = 0;
                }

                while (v42 != v44);
                v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(labels, a2, &v45, v53, 16, v41, v6, v7);
              }

              while (v42);
            }
          }
        }
      }
    }
  }

  objc_msgSend_encodeBatchToCommandBuffer_sourceImages_inStates_destinationImages_(self, a2, commandBuffer, sourceImage, labels, destinationImage, v6, v7);
  MPSDecrementReadCount();
}

- (MPSImageBatch)encodeBatchToCommandBuffer:(id)commandBuffer sourceImages:(MPSImageBatch *)sourceImage labels:(MPSCNNLossLabelsBatch *)labels
{
  v61 = *MEMORY[0x277D85DE8];
  if (self->_reduceAcrossBatch && labels && self->_reductionType == 3 && (v9 = self, v10 = commandBuffer, v11 = sourceImage, v12 = objc_msgSend_objectAtIndexedSubscript_(labels, a2, 0, sourceImage, labels, v5, v6, v7), commandBuffer = v10, sourceImage = v11, v14 = v12, self = v9, v14) && (v15 = objc_msgSend_objectAtIndexedSubscript_(labels, a2, 0, v11, v13, v5, v6, v7), v23 = objc_msgSend_weightsImage(v15, v16, v17, v18, v19, v20, v21, v22), commandBuffer = v10, sourceImage = v11, v24 = v23, self = v9, v24))
  {
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(labels, a2, &v55, v60, 16, v5, v6, v7);
    if (v25)
    {
      v30 = v25;
      v31 = *v56;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v56 != v31)
          {
            objc_enumerationMutation(labels);
          }

          *(*(*(&v55 + 1) + 8 * i) + 129) = 1;
        }

        v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(labels, v26, &v55, v60, 16, v27, v28, v29);
      }

      while (v30);
    }

    MPSImageBatchIncrementReadCount(v11, 1);
    v33 = objc_msgSend_encodeBatchToCommandBuffer_sourceImages_inStates_(v9, v35, v10, v11, labels, v36, v37, v38);
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(labels, v39, &v51, v59, 16, v40, v41, v42);
    if (v43)
    {
      v48 = v43;
      v49 = *v52;
      do
      {
        for (j = 0; j != v48; ++j)
        {
          if (*v52 != v49)
          {
            objc_enumerationMutation(labels);
          }

          *(*(*(&v51 + 1) + 8 * j) + 129) = 0;
        }

        v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(labels, v44, &v51, v59, 16, v45, v46, v47);
      }

      while (v48);
    }

    objc_msgSend_encodeBatchToCommandBuffer_sourceImages_inStates_destinationImages_(v9, v44, v10, v11, labels, v33, v46, v47);
  }

  else
  {
    v33 = objc_msgSend_encodeBatchToCommandBuffer_sourceImages_inStates_(self, a2, commandBuffer, sourceImage, labels, v5, v6, v7);
  }

  MPSDecrementReadCount();
  return v33;
}

@end