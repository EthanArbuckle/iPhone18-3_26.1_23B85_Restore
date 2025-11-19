@interface MPSNNLossGradient
- (MPSImageBatch)encodeBatchToCommandBuffer:(id)commandBuffer sourceGradients:(MPSImageBatch *)sourceGradients sourceImages:(MPSImageBatch *)sourceImages labels:(MPSImageBatch *)labels weights:(MPSImageBatch *)weights sourceStates:(MPSStateBatch *)sourceStates;
- (MPSNNLossGradient)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSNNLossGradient)initWithDevice:(id)device;
- (MPSNNLossGradient)initWithDevice:(id)device lossDescriptor:(MPSCNNLossDescriptor *)lossDescriptor;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)debugDescription;
- (id)destinationImageDescriptorForSourceImages:(id)a3 sourceStates:(id)a4;
- (void)dealloc;
- (void)encodeBatchToCommandBuffer:(id)commandBuffer sourceGradients:(MPSImageBatch *)sourceGradients sourceImages:(MPSImageBatch *)sourceImages labels:(MPSImageBatch *)labels weights:(MPSImageBatch *)weights sourceStates:(MPSStateBatch *)sourceStates destinationGradients:(MPSImageBatch *)destinationGradients;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSNNLossGradient

- (MPSNNLossGradient)initWithDevice:(id)device
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (MPSNNLossGradient)initWithDevice:(id)device lossDescriptor:(MPSCNNLossDescriptor *)lossDescriptor
{
  v126.receiver = self;
  v126.super_class = MPSNNLossGradient;
  v13 = [(MPSCNNBinaryKernel *)&v126 initWithDevice:?];
  if (!v13)
  {
    return v13;
  }

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
      objc_msgSend_weight(lossDescriptor, v56, v57, v58, v59, v60, v61, v62);
      v13->_weight = v63;
      objc_msgSend_labelSmoothing(lossDescriptor, v64, v65, v66, v67, v68, v69, v70);
      v13->_labelSmoothing = v71;
      v13->_numberOfClasses = objc_msgSend_numberOfClasses(lossDescriptor, v72, v73, v74, v75, v76, v77, v78);
      objc_msgSend_epsilon(lossDescriptor, v79, v80, v81, v82, v83, v84, v85);
      v13->_epsilon = v86;
      objc_msgSend_delta(lossDescriptor, v87, v88, v89, v90, v91, v92, v93);
      v13->_delta = v94;
      v13->_computeLabelGradients = 0;
      v13->super._isBackwards = 1;
      v100 = objc_msgSend_rowBytesForColumns_dataType_(MEMORY[0x277CD7258], v95, 16, 268435488, v96, v97, v98, v99);
      v104 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], v101, 2, 16, v100, 268435488, v102, v103);
      v105 = objc_alloc(MEMORY[0x277CD7250]);
      v13->_reductionBuffer = objc_msgSend_initWithDevice_descriptor_(v105, v106, device, v104, v107, v108, v109, v110);
      v13->super._checkFlags |= 2u;
      v13->super._encode = sub_239CEF214;
      v13->super._batchEncode = sub_239CEF654;
      v13->super._encodeData = v13;
      v13->_propertyCallback = 0;
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

- (MPSNNLossGradient)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v98.receiver = self;
  v98.super_class = MPSNNLossGradient;
  v6 = [MPSCNNBinaryKernel initWithCoder:sel_initWithCoder_device_ device:?];
  v13 = v6;
  if (!v6)
  {
    return v13;
  }

  if (*(&v6->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 != 0x10000)
  {
    if (!MTLReportFailureTypeEnabled())
    {
LABEL_10:

      return 0;
    }

    v96 = objc_opt_class();
    NSStringFromClass(v96);
LABEL_9:
    MTLReportFailure();
    goto LABEL_10;
  }

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
  if (v21 >= 4)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

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
  v13->_computeLabelGradients = objc_msgSend_decodeInt32ForKey_(aDecoder, v62, @"MPSNNLossGradientComputeLabelGradients", v63, v64, v65, v66, v67) != 0;
  v13->super._checkFlags |= 2u;
  v13->super._encode = sub_239CEF214;
  v13->super._batchEncode = sub_239CEF654;
  v13->super._encodeData = v13;
  v73 = objc_msgSend_rowBytesForColumns_dataType_(MEMORY[0x277CD7258], v68, 16, 268435488, v69, v70, v71, v72);
  v77 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], v74, 2, 16, v73, 268435488, v75, v76);
  v78 = objc_alloc(MEMORY[0x277CD7250]);
  v13->_reductionBuffer = objc_msgSend_initWithDevice_descriptor_(v78, v79, device, v77, v80, v81, v82, v83);
  v13->_propertyCallback = 0;
  if (objc_msgSend_decodeBoolForKey_(aDecoder, v84, @"MPSCNNGram_hasPropertyCallback", v85, v86, v87, v88, v89))
  {
    v13->_propertyCallback = objc_msgSend_decodeObjectForKey_(aDecoder, v90, @"MPSCNNGram_propertyCallback", v91, v92, v93, v94, v95);
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v83.receiver = self;
  v83.super_class = MPSNNLossGradient;
  [(MPSCNNBinaryKernel *)&v83 encodeWithCoder:?];
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
  objc_msgSend_encodeInt32_forKey_(a3, v53, self->_computeLabelGradients, @"MPSNNLossGradientComputeLabelGradients", v54, v55, v56, v57);
  if (self->_propertyCallback && (objc_msgSend_conformsToProtocol_(self->_propertyCallback, v58, &unk_284D09FA0, v59, v60, v61, v62, v63) & 1) != 0)
  {
    v64 = objc_opt_class();
    v72 = objc_msgSend_supportsSecureCoding(v64, v65, v66, v67, v68, v69, v70, v71);
    objc_msgSend_encodeBool_forKey_(a3, v73, v72, @"MPSCNNGram_hasPropertyCallback", v74, v75, v76, v77);
    if (v72)
    {
      objc_msgSend_encodeObject_forKey_(a3, v78, self->_propertyCallback, @"MPSCNNGram_propertyCallback", v79, v80, v81, v82);
    }
  }

  else
  {
    objc_msgSend_encodeBool_forKey_(a3, v58, 0, @"MPSCNNGram_hasPropertyCallback", v60, v61, v62, v63);
  }
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v29.receiver = self;
  v29.super_class = MPSNNLossGradient;
  v7 = [MPSCNNBinaryKernel copyWithZone:sel_copyWithZone_device_ device:?];
  v14 = v7;
  if (v7)
  {
    *(v7 + 113) = self->_lossType;
    *(v7 + 114) = self->_reductionType;
    *(v7 + 416) = self->_reduceAcrossBatch;
    *(v7 + 115) = LODWORD(self->_weight);
    *(v7 + 116) = LODWORD(self->_labelSmoothing);
    v7[60] = self->_numberOfClasses;
    *(v7 + 117) = LODWORD(self->_epsilon);
    *(v7 + 118) = LODWORD(self->_delta);
    *(v7 + 448) = self->_computeLabelGradients;
    v7[53] = 0;
    propertyCallback = self->_propertyCallback;
    if (propertyCallback && objc_msgSend_conformsToProtocol_(propertyCallback, v8, &unk_284D09E18, v9, v10, v11, v12, v13))
    {
      v14[53] = objc_msgSend_copyWithZone_(self->_propertyCallback, v8, a3, v16, v10, v11, v12, v13);
    }

    v17 = objc_msgSend_rowBytesForColumns_dataType_(MEMORY[0x277CD7258], v8, 16, 268435488, v10, v11, v12, v13);
    v21 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], v18, 2, 16, v17, 268435488, v19, v20);
    if (!a4)
    {
      a4 = (*(&self->super.super.super.isa + *MEMORY[0x277CD7350]))[2];
    }

    v22 = objc_alloc(MEMORY[0x277CD7250]);
    v14[54] = objc_msgSend_initWithDevice_descriptor_(v22, v23, a4, v21, v24, v25, v26, v27);
  }

  return v14;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSNNLossGradient;
  [(MPSCNNBinaryKernel *)&v3 dealloc];
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v13.receiver = self;
  v13.super_class = MPSNNLossGradient;
  v4 = [(MPSCNNBinaryKernel *)&v13 debugDescription];
  v11 = "NO";
  if (self->_reduceAcrossBatch)
  {
    v11 = "YES";
  }

  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tlossType: %d\treductionType: %d, across batch: %s\tweight: %f\tlabelSmoothing: %f\tnumberOfClasses: %lu\tepsilon: %f\tdelta: %f", v6, v7, v8, v9, v10, v4, self->_lossType, self->_reductionType, v11, self->_weight, self->_labelSmoothing, self->_numberOfClasses, self->_epsilon, self->_delta);
}

- (id)destinationImageDescriptorForSourceImages:(id)a3 sourceStates:(id)a4
{
  v70.receiver = self;
  v70.super_class = MPSNNLossGradient;
  v5 = [(MPSCNNBinaryKernel *)&v70 destinationImageDescriptorForSourceImages:a3 sourceStates:a4];
  v12 = objc_msgSend_objectAtIndexedSubscript_(a3, v6, 1, v7, v8, v9, v10, v11);
  v20 = objc_msgSend_width(v12, v13, v14, v15, v16, v17, v18, v19);
  objc_msgSend_setWidth_(v5, v21, v20, v22, v23, v24, v25, v26);
  v33 = objc_msgSend_objectAtIndexedSubscript_(a3, v27, 1, v28, v29, v30, v31, v32);
  v41 = objc_msgSend_height(v33, v34, v35, v36, v37, v38, v39, v40);
  objc_msgSend_setHeight_(v5, v42, v41, v43, v44, v45, v46, v47);
  v54 = objc_msgSend_objectAtIndexedSubscript_(a3, v48, 1, v49, v50, v51, v52, v53);
  v62 = objc_msgSend_featureChannels(v54, v55, v56, v57, v58, v59, v60, v61);
  objc_msgSend_setFeatureChannels_(v5, v63, v62, v64, v65, v66, v67, v68);
  return v5;
}

- (void)encodeBatchToCommandBuffer:(id)commandBuffer sourceGradients:(MPSImageBatch *)sourceGradients sourceImages:(MPSImageBatch *)sourceImages labels:(MPSImageBatch *)labels weights:(MPSImageBatch *)weights sourceStates:(MPSStateBatch *)sourceStates destinationGradients:(MPSImageBatch *)destinationGradients
{
  v241 = *MEMORY[0x277D85DE8];
  v23 = objc_msgSend_count(sourceGradients, a2, commandBuffer, sourceGradients, sourceImages, labels, weights, sourceStates);
  if (self->_reduceAcrossBatch && v23 < objc_msgSend_count(sourceImages, v16, v17, v18, v19, v20, v21, v22))
  {
    v23 = objc_msgSend_count(sourceImages, v24, v25, v26, v27, v28, v29, v30);
  }

  if (v23)
  {
    v229 = commandBuffer;
    v226 = sourceImages;
    v224 = weights;
    v31 = objc_alloc(MEMORY[0x277CBEB18]);
    v38 = objc_msgSend_initWithCapacity_(v31, v32, v23, v33, v34, v35, v36, v37);
    v39 = objc_alloc(MEMORY[0x277CBEB18]);
    v53 = objc_msgSend_initWithCapacity_(v39, v40, v23, v41, v42, v43, v44, v45);
    for (i = 0; i != v23; ++i)
    {
      if (self->_reduceAcrossBatch && objc_msgSend_count(sourceGradients, v46, v47, v48, v49, v50, v51, v52) < v23)
      {
        v55 = objc_msgSend_objectAtIndexedSubscript_(sourceGradients, v46, 0, v48, v49, v50, v51, v52);
      }

      else
      {
        v55 = objc_msgSend_objectAtIndexedSubscript_(sourceGradients, v46, i, v48, v49, v50, v51, v52);
      }

      objc_msgSend_setObject_atIndexedSubscript_(v53, v56, v55, i, v57, v58, v59, v60);
    }

    if (self->_reduceAcrossBatch && objc_msgSend_count(sourceGradients, v46, v47, v48, v49, v50, v51, v52) < v23)
    {
      objc_msgSend_objectAtIndexedSubscript_(sourceGradients, v46, 0, v48, v49, v50, v51, v52);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        MPSImageBatchIncrementReadCount(sourceGradients, v23 - 1);
      }
    }

    v223 = v23;
    if (self->_reductionType)
    {
      v61 = 1;
      v62 = 1;
      v221 = 1;
      v222 = v38;
      v63 = &OBJC_IVAR___MPSNNScale__destSize;
      v228 = labels;
      batch = v53;
      v225 = self;
      if (sourceStates)
      {
LABEL_17:
        v64 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v46, 0, v48, v49, v50, v51, v52);
        delta = self->_delta;
        epsilon = self->_epsilon;
        labelSmoothing = self->_labelSmoothing;
        weight = self->_weight;
        self->_delta = v64[76];
        self->_epsilon = v64[75];
        self->_labelSmoothing = v64[74];
        self->_weight = v64[73];
        goto LABEL_32;
      }
    }

    else
    {
      v69 = objc_msgSend_objectAtIndexedSubscript_(labels, v46, 0, v48, v49, v50, v51, v52);
      v76 = objc_msgSend_objectAtIndexedSubscript_(v53, v70, 0, v71, v72, v73, v74, v75);
      v84 = objc_msgSend_width(v76, v77, v78, v79, v80, v81, v82, v83);
      v92 = objc_msgSend_width(v69, v85, v86, v87, v88, v89, v90, v91);
      if (v84 >= v92)
      {
        v62 = v92;
      }

      else
      {
        v62 = v84;
      }

      v99 = objc_msgSend_objectAtIndexedSubscript_(v53, v93, 0, v94, v95, v96, v97, v98);
      v107 = objc_msgSend_height(v99, v100, v101, v102, v103, v104, v105, v106);
      v115 = objc_msgSend_height(v69, v108, v109, v110, v111, v112, v113, v114);
      if (v107 >= v115)
      {
        v61 = v115;
      }

      else
      {
        v61 = v107;
      }

      v122 = objc_msgSend_objectAtIndexedSubscript_(v53, v116, 0, v117, v118, v119, v120, v121);
      v130 = objc_msgSend_featureChannels(v122, v123, v124, v125, v126, v127, v128, v129);
      v138 = objc_msgSend_featureChannels(v69, v131, v132, v133, v134, v135, v136, v137);
      if (v130 >= v138)
      {
        v139 = v138;
      }

      else
      {
        v139 = v130;
      }

      v221 = v139;
      v222 = v38;
      v63 = &OBJC_IVAR___MPSNNScale__destSize;
      v228 = labels;
      batch = v53;
      v225 = self;
      if (sourceStates)
      {
        goto LABEL_17;
      }
    }

    propertyCallback = self->_propertyCallback;
    labelSmoothing = 0.0;
    if (propertyCallback)
    {
      v141 = v63[258];
      weight = *(&self->super.super.super.isa + v141);
      v142 = objc_msgSend_objectAtIndexedSubscript_(v226, v46, 0, v48, v49, v50, v51, v52);
      v149 = objc_msgSend_objectAtIndexedSubscript_(v53, v143, 0, v144, v145, v146, v147, v148);
      objc_msgSend_scalarWeightForSourceImage_destinationImage_(propertyCallback, v150, v142, v149, v151, v152, v153, v154);
      *(&self->super.super.super.isa + v141) = v155;
      delta = 0.0;
    }

    else
    {
      delta = 0.0;
      weight = 0.0;
    }

    epsilon = 0.0;
LABEL_32:
    v156 = 0;
    v157 = v62;
    do
    {
      v158 = [MPSCNNLossLabels alloc];
      v166 = objc_msgSend_device(v229, v159, v160, v161, v162, v163, v164, v165);
      v238[0] = v157;
      v238[1] = v61;
      v238[2] = v221;
      v173 = objc_msgSend_objectAtIndexedSubscript_(v228, v167, v156, v168, v169, v170, v171, v172);
      v180 = objc_msgSend_objectAtIndexedSubscript_(v224, v174, v156, v175, v176, v177, v178, v179);
      v184 = objc_msgSend_initWithDevice_lossImageSize_labelsImage_weightsImage_(v158, v181, v166, v238, v173, v180, v182, v183);
      objc_msgSend_setObject_atIndexedSubscript_(v222, v185, v184, v156, v186, v187, v188, v189);

      ++v156;
    }

    while (v223 != v156);
    v194 = batch;
    if (v225->_reduceAcrossBatch && v224 && v225->_reductionType == 3)
    {
      v236 = 0u;
      v237 = 0u;
      v234 = 0u;
      v235 = 0u;
      v195 = objc_msgSend_countByEnumeratingWithState_objects_count_(v222, v190, &v234, v240, 16, v191, v192, v193);
      if (v195)
      {
        v200 = v195;
        v201 = *v235;
        do
        {
          for (j = 0; j != v200; ++j)
          {
            if (*v235 != v201)
            {
              objc_enumerationMutation(v222);
            }

            *(*(*(&v234 + 1) + 8 * j) + 129) = 1;
          }

          v200 = objc_msgSend_countByEnumeratingWithState_objects_count_(v222, v196, &v234, v240, 16, v197, v198, v199);
        }

        while (v200);
      }

      v194 = batch;
      MPSImageBatchIncrementReadCount(batch, 1);
      MPSImageBatchIncrementReadCount(v226, 1);
      objc_msgSend_encodeBatchToCommandBuffer_primaryImages_secondaryImages_inStates_destinationImages_(v225, v203, v229, batch, v226, v222, destinationGradients, v204);
      v232 = 0u;
      v233 = 0u;
      v230 = 0u;
      v231 = 0u;
      v209 = objc_msgSend_countByEnumeratingWithState_objects_count_(v222, v205, &v230, v239, 16, v206, v207, v208);
      if (v209)
      {
        v212 = v209;
        v213 = *v231;
        do
        {
          for (k = 0; k != v212; ++k)
          {
            if (*v231 != v213)
            {
              objc_enumerationMutation(v222);
            }

            *(*(*(&v230 + 1) + 8 * k) + 129) = 0;
          }

          v212 = objc_msgSend_countByEnumeratingWithState_objects_count_(v222, v190, &v230, v239, 16, v210, v211, v193);
        }

        while (v212);
      }
    }

    objc_msgSend_encodeBatchToCommandBuffer_primaryImages_secondaryImages_inStates_destinationImages_(v225, v190, v229, v194, v226, v222, destinationGradients, v193);
    if (sourceStates)
    {
      objc_msgSend_objectAtIndexedSubscript_(sourceStates, v215, 0, v216, v217, v218, v219, v220);
      v225->_delta = delta;
      v225->_epsilon = epsilon;
      v225->_labelSmoothing = labelSmoothing;
    }

    else if (!v225->_propertyCallback)
    {
LABEL_55:
      if (v224)
      {
        MPSDecrementReadCount();
      }

      MPSDecrementReadCount();
      MPSDecrementReadCount();

      return;
    }

    v225->_weight = weight;
    goto LABEL_55;
  }
}

- (MPSImageBatch)encodeBatchToCommandBuffer:(id)commandBuffer sourceGradients:(MPSImageBatch *)sourceGradients sourceImages:(MPSImageBatch *)sourceImages labels:(MPSImageBatch *)labels weights:(MPSImageBatch *)weights sourceStates:(MPSStateBatch *)sourceStates
{
  v242 = *MEMORY[0x277D85DE8];
  v21 = objc_msgSend_count(sourceGradients, a2, commandBuffer, sourceGradients, sourceImages, labels, weights, sourceStates);
  if (self->_reduceAcrossBatch && v21 < objc_msgSend_count(sourceImages, v14, v15, v16, v17, v18, v19, v20))
  {
    v21 = objc_msgSend_count(sourceImages, v22, v23, v24, v25, v26, v27, v28);
  }

  v226 = sourceImages;
  v29 = objc_alloc(MEMORY[0x277CBEB18]);
  v43 = objc_msgSend_initWithCapacity_(v29, v30, v21, v31, v32, v33, v34, v35);
  if (v21)
  {
    for (i = 0; i != v21; ++i)
    {
      if (self->_reduceAcrossBatch && objc_msgSend_count(sourceGradients, v36, v37, v38, v39, v40, v41, v42) < v21)
      {
        v45 = objc_msgSend_objectAtIndexedSubscript_(sourceGradients, v36, 0, v38, v39, v40, v41, v42);
      }

      else
      {
        v45 = objc_msgSend_objectAtIndexedSubscript_(sourceGradients, v36, i, v38, v39, v40, v41, v42);
      }

      objc_msgSend_setObject_atIndexedSubscript_(v43, v46, v45, i, v47, v48, v49, v50);
    }
  }

  batch = v43;
  v229 = v21;
  v223 = 416;
  if (self->_reduceAcrossBatch && objc_msgSend_count(sourceGradients, v36, v37, v38, v39, v40, v41, v42) < v21)
  {
    objc_msgSend_objectAtIndexedSubscript_(sourceGradients, v36, 0, v38, v39, v40, v41, v42);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      MPSImageBatchIncrementReadCount(sourceGradients, v21 - 1);
    }
  }

  else if (!v21)
  {
    v51 = weights;
    v59 = 0;
LABEL_29:
    v123 = 1;
    v114 = 1;
    v90 = 1;
    v132 = &OBJC_IVAR___MPSNNScale__destSize;
    v230 = labels;
    v224 = self;
    v225 = sourceStates;
    if (!sourceStates)
    {
      goto LABEL_26;
    }

LABEL_30:
    v135 = v90;
    v152 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v36, 0, v38, v39, v40, v41, v42, v223);
    delta = self->_delta;
    epsilon = self->_epsilon;
    labelSmoothing = self->_labelSmoothing;
    weight = self->_weight;
    self->_delta = v152[76];
    self->_epsilon = v152[75];
    self->_labelSmoothing = v152[74];
    self->_weight = v152[73];
    v155 = commandBuffer;
    if (!v229)
    {
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  v51 = weights;
  v52 = objc_alloc(MEMORY[0x277CBEB18]);
  v59 = objc_msgSend_initWithCapacity_(v52, v53, v21, v54, v55, v56, v57, v58);
  if (self->_reductionType)
  {
    goto LABEL_29;
  }

  v60 = objc_msgSend_objectAtIndexedSubscript_(labels, v36, 0, v38, v39, v40, v41, v42);
  v67 = objc_msgSend_objectAtIndexedSubscript_(batch, v61, 0, v62, v63, v64, v65, v66);
  v75 = objc_msgSend_width(v67, v68, v69, v70, v71, v72, v73, v74);
  v83 = objc_msgSend_width(v60, v76, v77, v78, v79, v80, v81, v82);
  if (v75 >= v83)
  {
    v90 = v83;
  }

  else
  {
    v90 = v75;
  }

  v91 = objc_msgSend_objectAtIndexedSubscript_(batch, v84, 0, v85, v86, v87, v88, v89, 416);
  v99 = objc_msgSend_height(v91, v92, v93, v94, v95, v96, v97, v98);
  v107 = objc_msgSend_height(v60, v100, v101, v102, v103, v104, v105, v106);
  if (v99 >= v107)
  {
    v114 = v107;
  }

  else
  {
    v114 = v99;
  }

  v115 = objc_msgSend_objectAtIndexedSubscript_(batch, v108, 0, v109, v110, v111, v112, v113);
  v123 = objc_msgSend_featureChannels(v115, v116, v117, v118, v119, v120, v121, v122);
  v131 = objc_msgSend_featureChannels(v60, v124, v125, v126, v127, v128, v129, v130);
  if (v123 >= v131)
  {
    v123 = v131;
  }

  v132 = &OBJC_IVAR___MPSNNScale__destSize;
  v230 = labels;
  v224 = self;
  v225 = sourceStates;
  if (sourceStates)
  {
    goto LABEL_30;
  }

LABEL_26:
  propertyCallback = self->_propertyCallback;
  delta = 0.0;
  v135 = v90;
  if (propertyCallback)
  {
    v136 = v132[258];
    weight = *(&self->super.super.super.isa + v136);
    v138 = objc_msgSend_objectAtIndexedSubscript_(v226, v36, 0, v38, v39, v40, v41, v42);
    v145 = objc_msgSend_objectAtIndexedSubscript_(batch, v139, 0, v140, v141, v142, v143, v144);
    objc_msgSend_scalarWeightForSourceImage_destinationImage_(propertyCallback, v146, v138, v145, v147, v148, v149, v150);
    *(&self->super.super.super.isa + v136) = v151;
  }

  else
  {
    weight = 0.0;
  }

  labelSmoothing = 0.0;
  epsilon = 0.0;
  v155 = commandBuffer;
  if (v229)
  {
LABEL_34:
    v156 = v114;
    v157 = v123;
    for (j = 0; j != v229; ++j)
    {
      v159 = [MPSCNNLossLabels alloc];
      v167 = objc_msgSend_device(v155, v160, v161, v162, v163, v164, v165, v166);
      v239[0] = v135;
      v239[1] = v156;
      v239[2] = v157;
      v174 = objc_msgSend_objectAtIndexedSubscript_(v230, v168, j, v169, v170, v171, v172, v173);
      v181 = objc_msgSend_objectAtIndexedSubscript_(v51, v175, j, v176, v177, v178, v179, v180);
      v185 = objc_msgSend_initWithDevice_lossImageSize_labelsImage_weightsImage_(v159, v182, v167, v239, v174, v181, v183, v184);
      objc_msgSend_setObject_atIndexedSubscript_(v59, v186, v185, j, v187, v188, v189, v190);
    }
  }

LABEL_36:
  if ((*(&v224->super.super.super.isa + v223) & 1) != 0 && v51 && v224->_reductionType == 3)
  {
    v237 = 0u;
    v238 = 0u;
    v235 = 0u;
    v236 = 0u;
    v191 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v36, &v235, v241, 16, v40, v41, v42);
    if (v191)
    {
      v196 = v191;
      v197 = *v236;
      do
      {
        for (k = 0; k != v196; ++k)
        {
          if (*v236 != v197)
          {
            objc_enumerationMutation(v59);
          }

          *(*(*(&v235 + 1) + 8 * k) + 129) = 1;
        }

        v196 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v192, &v235, v241, 16, v193, v194, v195);
      }

      while (v196);
    }

    MPSImageBatchIncrementReadCount(batch, 1);
    MPSImageBatchIncrementReadCount(v226, 1);
    v205 = objc_msgSend_encodeBatchToCommandBuffer_primaryImages_secondaryImages_inStates_(v224, v207, commandBuffer, batch, v226, v59, v208, v209);
    v231 = 0u;
    v232 = 0u;
    v233 = 0u;
    v234 = 0u;
    v214 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v210, &v231, v240, 16, v211, v212, v213);
    if (v214)
    {
      v219 = v214;
      v220 = *v232;
      do
      {
        for (m = 0; m != v219; ++m)
        {
          if (*v232 != v220)
          {
            objc_enumerationMutation(v59);
          }

          *(*(*(&v231 + 1) + 8 * m) + 129) = 0;
        }

        v219 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v215, &v231, v240, 16, v216, v217, v218);
      }

      while (v219);
    }

    objc_msgSend_encodeBatchToCommandBuffer_primaryImages_secondaryImages_inStates_destinationImages_(v224, v215, commandBuffer, batch, v226, v59, v205, v218, v223);
    v206 = v225;
    if (!v225)
    {
LABEL_56:
      if (!v224->_propertyCallback)
      {
        goto LABEL_58;
      }

      goto LABEL_57;
    }
  }

  else
  {
    v205 = objc_msgSend_encodeBatchToCommandBuffer_primaryImages_secondaryImages_inStates_(v224, v36, commandBuffer, batch, v226, v59, v41, v42, v223);
    v206 = v225;
    if (!v225)
    {
      goto LABEL_56;
    }
  }

  objc_msgSend_objectAtIndexedSubscript_(v206, v199, 0, v200, v201, v202, v203, v204);
  v224->_delta = delta;
  v224->_epsilon = epsilon;
  v224->_labelSmoothing = labelSmoothing;
LABEL_57:
  v224->_weight = weight;
LABEL_58:
  if (v51)
  {
    MPSDecrementReadCount();
  }

  MPSDecrementReadCount();
  MPSDecrementReadCount();

  return v205;
}

@end