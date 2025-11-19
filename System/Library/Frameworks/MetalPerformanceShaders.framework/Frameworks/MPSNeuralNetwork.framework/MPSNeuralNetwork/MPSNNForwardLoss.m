@interface MPSNNForwardLoss
- (MPSImageBatch)encodeBatchToCommandBuffer:(id)commandBuffer sourceImages:(MPSImageBatch *)sourceImages labels:(MPSImageBatch *)labels weights:(MPSImageBatch *)weights destinationStates:(MPSStateBatch *)outStates destinationStateIsTemporary:(BOOL)isTemporary;
- (MPSNNForwardLoss)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSNNForwardLoss)initWithDevice:(id)device;
- (MPSNNForwardLoss)initWithDevice:(id)device lossDescriptor:(MPSCNNLossDescriptor *)lossDescriptor;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)debugDescription;
- (id)destinationImageDescriptorForSourceImages:(id)a3 sourceStates:(id)a4;
- (id)resultStateForSourceImage:(id)a3 sourceStates:(id)a4 destinationImage:(id)a5;
- (id)temporaryResultStateForCommandBuffer:(id)a3 sourceImage:(id)a4 sourceStates:(id)a5 destinationImage:(id)a6;
- (void)dealloc;
- (void)encodeBatchToCommandBuffer:(id)commandBuffer sourceImages:(MPSImageBatch *)sourceImages labels:(MPSImageBatch *)labels weights:(MPSImageBatch *)weights destinationStates:(MPSStateBatch *)destinationStates destinationImages:(MPSImageBatch *)destinationImages;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSNNForwardLoss

- (MPSNNForwardLoss)initWithDevice:(id)device
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (MPSNNForwardLoss)initWithDevice:(id)device lossDescriptor:(MPSCNNLossDescriptor *)lossDescriptor
{
  v126.receiver = self;
  v126.super_class = MPSNNForwardLoss;
  v13 = [(MPSCNNKernel *)&v126 initWithDevice:?];
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
      v13->super._isBackwards = 0;
      v13->_reductionBuffer = 0;
      v100 = objc_msgSend_rowBytesForColumns_dataType_(MEMORY[0x277CD7258], v95, 16, 268435488, v96, v97, v98, v99);
      v104 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], v101, 2, 16, v100, 268435488, v102, v103);
      v105 = objc_alloc(MEMORY[0x277CD7250]);
      v13->_reductionBuffer = objc_msgSend_initWithDevice_descriptor_(v105, v106, device, v104, v107, v108, v109, v110);
      v13->super._checkFlags |= 2u;
      v13->super._encode = sub_239CED26C;
      v13->super._batchEncode = sub_239CED5B8;
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

- (MPSNNForwardLoss)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v92.receiver = self;
  v92.super_class = MPSNNForwardLoss;
  v6 = [MPSCNNKernel initWithCoder:sel_initWithCoder_device_ device:?];
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

    v90 = objc_opt_class();
    NSStringFromClass(v90);
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
  v13->super._checkFlags |= 2u;
  v13->super._encode = sub_239CED26C;
  v13->super._batchEncode = sub_239CED5B8;
  v13->super._encodeData = v13;
  v13->_reductionBuffer = 0;
  v13->_firstLossImage = 0;
  v67 = objc_msgSend_rowBytesForColumns_dataType_(MEMORY[0x277CD7258], v62, 16, 268435488, v63, v64, v65, v66);
  v71 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], v68, 2, 16, v67, 268435488, v69, v70);
  v72 = objc_alloc(MEMORY[0x277CD7250]);
  v13->_reductionBuffer = objc_msgSend_initWithDevice_descriptor_(v72, v73, device, v71, v74, v75, v76, v77);
  v13->_propertyCallback = 0;
  if (objc_msgSend_decodeBoolForKey_(aDecoder, v78, @"MPSCNNGram_hasPropertyCallback", v79, v80, v81, v82, v83))
  {
    v13->_propertyCallback = objc_msgSend_decodeObjectForKey_(aDecoder, v84, @"MPSCNNGram_propertyCallback", v85, v86, v87, v88, v89);
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v78.receiver = self;
  v78.super_class = MPSNNForwardLoss;
  [(MPSCNNKernel *)&v78 encodeWithCoder:?];
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
  if (self->_propertyCallback && (objc_msgSend_conformsToProtocol_(self->_propertyCallback, v53, &unk_284D09FA0, v54, v55, v56, v57, v58) & 1) != 0)
  {
    v59 = objc_opt_class();
    v67 = objc_msgSend_supportsSecureCoding(v59, v60, v61, v62, v63, v64, v65, v66);
    objc_msgSend_encodeBool_forKey_(a3, v68, v67, @"MPSCNNGram_hasPropertyCallback", v69, v70, v71, v72);
    if (v67)
    {
      objc_msgSend_encodeObject_forKey_(a3, v73, self->_propertyCallback, @"MPSCNNGram_propertyCallback", v74, v75, v76, v77);
    }
  }

  else
  {
    objc_msgSend_encodeBool_forKey_(a3, v53, 0, @"MPSCNNGram_hasPropertyCallback", v55, v56, v57, v58);
  }
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v39.receiver = self;
  v39.super_class = MPSNNForwardLoss;
  v7 = [MPSCNNKernel copyWithZone:sel_copyWithZone_device_ device:?];
  v13 = v7;
  if (v7)
  {
    *(v7 + 90) = self->_lossType;
    *(v7 + 91) = self->_reductionType;
    *(v7 + 328) = self->_reduceAcrossBatch;
    *(v7 + 92) = LODWORD(self->_weight);
    *(v7 + 93) = LODWORD(self->_labelSmoothing);
    v7[48] = self->_numberOfClasses;
    *(v7 + 94) = LODWORD(self->_epsilon);
    *(v7 + 95) = LODWORD(self->_delta);
    self->_reductionBuffer = 0;
    self->_firstLossImage = 0;
    v14 = objc_msgSend_rowBytesForColumns_dataType_(MEMORY[0x277CD7258], v8, 16, 268435488, v9, v10, v11, v12);
    v18 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], v15, 2, 16, v14, 268435488, v16, v17);
    if (!a4)
    {
      a4 = (*(&self->super.super.super.isa + *MEMORY[0x277CD7350]))[2];
    }

    v19 = objc_alloc(MEMORY[0x277CD7250]);
    v13[43] = objc_msgSend_initWithDevice_descriptor_(v19, v20, a4, v18, v21, v22, v23, v24);
    v13[44] = 0;
    v13[42] = 0;
    propertyCallback = self->_propertyCallback;
    if (propertyCallback && objc_msgSend_conformsToProtocol_(propertyCallback, v25, &unk_284D09E18, v26, v27, v28, v29, v30))
    {
      v13[42] = objc_msgSend_copyWithZone_(self->_propertyCallback, v32, a3, v33, v34, v35, v36, v37);
    }
  }

  return v13;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSNNForwardLoss;
  [(MPSCNNKernel *)&v3 dealloc];
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v13.receiver = self;
  v13.super_class = MPSNNForwardLoss;
  v4 = [(MPSCNNKernel *)&v13 debugDescription];
  v11 = "NO";
  if (self->_reduceAcrossBatch)
  {
    v11 = "YES";
  }

  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tlossType: %d\treductionType: %d, across batch = %s\tweight: %f\tlabelSmoothing: %f\tnumberOfClasses: %lu\tepsilon: %f\tdelta: %f", v6, v7, v8, v9, v10, v4, self->_lossType, self->_reductionType, v11, self->_weight, self->_labelSmoothing, self->_numberOfClasses, self->_epsilon, self->_delta);
}

- (id)destinationImageDescriptorForSourceImages:(id)a3 sourceStates:(id)a4
{
  v26.receiver = self;
  v26.super_class = MPSNNForwardLoss;
  v5 = [(MPSCNNKernel *)&v26 destinationImageDescriptorForSourceImages:a3 sourceStates:a4];
  v12 = v5;
  if (self->_reductionType)
  {
    objc_msgSend_setWidth_(v5, v6, 1, v7, v8, v9, v10, v11);
    objc_msgSend_setHeight_(v12, v13, 1, v14, v15, v16, v17, v18);
    objc_msgSend_setFeatureChannels_(v12, v19, 1, v20, v21, v22, v23, v24);
  }

  return v12;
}

- (void)encodeBatchToCommandBuffer:(id)commandBuffer sourceImages:(MPSImageBatch *)sourceImages labels:(MPSImageBatch *)labels weights:(MPSImageBatch *)weights destinationStates:(MPSStateBatch *)destinationStates destinationImages:(MPSImageBatch *)destinationImages
{
  v9 = destinationStates;
  v247 = *MEMORY[0x277D85DE8];
  v15 = objc_msgSend_count(sourceImages, a2, commandBuffer, sourceImages, labels, weights, destinationStates, destinationImages);
  if (!v15)
  {
    return;
  }

  v16 = v15;
  v235 = commandBuffer;
  v17 = objc_alloc(MEMORY[0x277CBEB18]);
  v24 = objc_msgSend_initWithCapacity_(v17, v18, v16, v19, v20, v21, v22, v23);
  v25 = objc_alloc(MEMORY[0x277CBEB18]);
  v230 = objc_msgSend_initWithCapacity_(v25, v26, v16, v27, v28, v29, v30, v31);
  for (i = 0; i != v16; ++i)
  {
    if (self->_reduceAcrossBatch && objc_msgSend_count(destinationImages, v32, v33, v34, v35, v36, v37, v38) < v16)
    {
      v40 = objc_msgSend_objectAtIndexedSubscript_(destinationImages, v32, 0, v34, v35, v36, v37, v38);
    }

    else
    {
      v40 = objc_msgSend_objectAtIndexedSubscript_(destinationImages, v32, i, v34, v35, v36, v37, v38);
    }

    objc_msgSend_setObject_atIndexedSubscript_(v24, v41, v40, i, v42, v43, v44, v45);
  }

  v234 = labels;
  v233 = weights;
  if (!self->_reductionType)
  {
    v48 = objc_msgSend_objectAtIndexedSubscript_(labels, v32, 0, v34, v35, v36, v37, v38);
    v55 = objc_msgSend_objectAtIndexedSubscript_(destinationImages, v49, 0, v50, v51, v52, v53, v54);
    v63 = objc_msgSend_width(v55, v56, v57, v58, v59, v60, v61, v62);
    v64 = v48;
    v72 = objc_msgSend_width(v48, v65, v66, v67, v68, v69, v70, v71);
    if (v63 >= v72)
    {
      v46 = v72;
    }

    else
    {
      v46 = v63;
    }

    v79 = objc_msgSend_objectAtIndexedSubscript_(destinationImages, v73, 0, v74, v75, v76, v77, v78);
    v87 = objc_msgSend_height(v79, v80, v81, v82, v83, v84, v85, v86);
    v95 = objc_msgSend_height(v48, v88, v89, v90, v91, v92, v93, v94);
    if (v87 >= v95)
    {
      v102 = v95;
    }

    else
    {
      v102 = v87;
    }

    v103 = objc_msgSend_objectAtIndexedSubscript_(destinationImages, v96, 0, v97, v98, v99, v100, v101);
    v111 = objc_msgSend_featureChannels(v103, v104, v105, v106, v107, v108, v109, v110);
    v119 = objc_msgSend_featureChannels(v64, v112, v113, v114, v115, v116, v117, v118);
    if (v111 >= v119)
    {
      v120 = v119;
    }

    else
    {
      v120 = v111;
    }

    v225 = v120;
    v226 = v102;
    v231 = v24;
    v232 = self;
    v229 = sourceImages;
    v227 = v16;
    if (v9)
    {
      goto LABEL_10;
    }

LABEL_21:
    v121 = objc_autoreleasePoolPush();
    v122 = objc_alloc(MEMORY[0x277CBEB18]);
    v135 = objc_msgSend_initWithCapacity_(v122, v123, v16, v124, v125, v126, v127, v128);
    do
    {
      v136 = objc_msgSend_objectAtIndexedSubscript_(sourceImages, v129, v9, v130, v131, v132, v133, v134);
      v143 = objc_msgSend_objectAtIndexedSubscript_(v24, v137, v9, v138, v139, v140, v141, v142);
      v148 = objc_msgSend_resultStateForSourceImage_sourceStates_destinationImage_(self, v144, v136, 0, v143, v145, v146, v147);
      objc_msgSend_setObject_atIndexedSubscript_(v135, v149, v148, v9, v150, v151, v152, v153);
      v9 = (v9 + 1);
    }

    while (v16 != v9);
    v47 = v46;
    objc_autoreleasePoolPop(v121);
    v228 = v135;
    v9 = v135;
    goto LABEL_24;
  }

  v46 = 1;
  v225 = 1;
  v226 = 1;
  v231 = v24;
  v232 = self;
  v229 = sourceImages;
  v227 = v16;
  if (!v9)
  {
    goto LABEL_21;
  }

LABEL_10:
  v47 = v46;
  v228 = 0;
LABEL_24:
  v154 = 0;
  v155 = &OBJC_IVAR___MPSNNScale__destSize;
  do
  {
    v156 = [MPSCNNLossLabels alloc];
    v164 = v155;
    v165 = objc_msgSend_device(v235, v157, v158, v159, v160, v161, v162, v163);
    v244[0] = v47;
    v244[1] = v226;
    v244[2] = v225;
    v172 = objc_msgSend_objectAtIndexedSubscript_(v234, v166, v154, v167, v168, v169, v170, v171);
    v179 = objc_msgSend_objectAtIndexedSubscript_(v233, v173, v154, v174, v175, v176, v177, v178);
    v180 = v165;
    v155 = v164;
    v184 = objc_msgSend_initWithDevice_lossImageSize_labelsImage_weightsImage_(v156, v181, v180, v244, v172, v179, v182, v183);
    v191 = objc_msgSend_objectAtIndexedSubscript_(v9, v185, v154, v186, v187, v188, v189, v190);
    *(v191 + v164[244]) = v184;

    ++v154;
  }

  while (v227 != v154);
  v196 = v229;
  if (v232->_reduceAcrossBatch && v233 && v232->_reductionType == 3)
  {
    v242 = 0u;
    v243 = 0u;
    v240 = 0u;
    v241 = 0u;
    v197 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v192, &v240, v246, 16, v193, v194, v195);
    if (v197)
    {
      v202 = v197;
      v203 = *v241;
      do
      {
        for (j = 0; j != v202; ++j)
        {
          if (*v241 != v203)
          {
            objc_enumerationMutation(v9);
          }

          *(*(*(*(&v240 + 1) + 8 * j) + 312) + 129) = 1;
        }

        v202 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v198, &v240, v246, 16, v199, v200, v201);
      }

      while (v202);
    }

    v196 = v229;
    MPSImageBatchIncrementReadCount(v229, 1);
    objc_msgSend_encodeBatchToCommandBuffer_sourceImages_inStates_destinationImages_(v232, v205, v235, v229, v9, v231, v206, v207);
    v238 = 0u;
    v239 = 0u;
    v236 = 0u;
    v237 = 0u;
    v212 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v208, &v236, v245, 16, v209, v210, v211);
    if (v212)
    {
      v214 = v212;
      v215 = *v237;
      do
      {
        for (k = 0; k != v214; ++k)
        {
          if (*v237 != v215)
          {
            objc_enumerationMutation(v9);
          }

          *(*(*(*(&v236 + 1) + 8 * k) + 312) + 129) = 0;
        }

        v214 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v192, &v236, v245, 16, v213, v194, v195);
      }

      while (v214);
    }
  }

  objc_msgSend_encodeBatchToCommandBuffer_sourceImages_inStates_destinationImages_(v232, v192, v235, v196, v9, v231, v194, v195);
  if (v233)
  {
    MPSDecrementReadCount();
  }

  MPSDecrementReadCount();
  for (m = 0; m != v227; ++m)
  {
    v224 = objc_msgSend_objectAtIndexedSubscript_(v9, v217, m, v218, v219, v220, v221, v222);

    *(v224 + v164[244]) = 0;
  }
}

- (MPSImageBatch)encodeBatchToCommandBuffer:(id)commandBuffer sourceImages:(MPSImageBatch *)sourceImages labels:(MPSImageBatch *)labels weights:(MPSImageBatch *)weights destinationStates:(MPSStateBatch *)outStates destinationStateIsTemporary:(BOOL)isTemporary
{
  v180 = isTemporary;
  v8 = outStates;
  v9 = weights;
  v194[1] = *MEMORY[0x277D85DE8];
  v14 = objc_msgSend_count(sourceImages, a2, commandBuffer, sourceImages, labels, weights, outStates, isTemporary);
  v194[0] = objc_msgSend_objectAtIndexedSubscript_(sourceImages, v15, 0, v16, v17, v18, v19, v20);
  v26 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v21, v194, 1, v22, v23, v24, v25);
  v32 = objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_(self, v27, v26, 0, v28, v29, v30, v31);
  v33 = v32;
  v34 = *MEMORY[0x277CD7378];
  if (*(&self->super.super.super.isa + v34))
  {
    if (!v32)
    {
      return 0;
    }
  }

  else if (!v32)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v35 = objc_opt_class();
      NSStringFromClass(v35);
      MTLReportFailure();
    }

    return 0;
  }

  destinationImageAllocator = self->super._destinationImageAllocator;
  v182 = v14;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v48 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v37, v14, v38, v39, v40, v41, v42);
    if (v48)
    {
      v49 = v14;
      v47 = v48;
      if (v49)
      {
        v177 = v8;
        batch = v9;
        v50 = v48;
        v51 = 0;
        v52 = v182;
        do
        {
          v53 = objc_msgSend_imageForCommandBuffer_imageDescriptor_kernel_(destinationImageAllocator, v43, commandBuffer, v33, self, v44, v45, v46, v174);
          objc_msgSend_setObject_atIndexedSubscript_(v50, v54, v53, v51, v55, v56, v57, v58);
          if ((*(&self->super.super.super.isa + v34) & 1) == 0)
          {
            objc_msgSend_objectAtIndexedSubscript_(v50, v43, v51, v59, v60, v44, v45, v46);
            v52 = v182;
            if (!objc_msgSend_objectAtIndexedSubscript_(v50, v61, v51, v62, v63, v64, v65, v66))
            {
              if (MTLReportFailureTypeEnabled())
              {
                v67 = objc_opt_class();
                v174 = NSStringFromClass(v67);
                MTLReportFailure();
              }
            }
          }

          ++v51;
        }

        while (v52 != v51);
        v47 = v50;
        v8 = v177;
        v9 = batch;
      }

      goto LABEL_18;
    }

    return 0;
  }

  v47 = objc_msgSend_imageBatchForCommandBuffer_imageDescriptor_kernel_count_(destinationImageAllocator, v37, commandBuffer, v33, self, v14, v41, v42);
  if (!v47)
  {
    return 0;
  }

LABEL_18:
  if (!v180)
  {
    v74 = objc_msgSend_resultStateBatchForSourceImage_sourceStates_destinationImage_(self, v43, sourceImages, 0, v47, v44, v45, v46);
    if (!v8)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v74 = objc_msgSend_temporaryResultStateBatchForCommandBuffer_sourceImage_sourceStates_destinationImage_(self, v43, commandBuffer, sourceImages, 0, v47, v45, v46);
  if (v8)
  {
LABEL_24:
    *v8 = v74;
  }

LABEL_25:
  v176 = v47;
  v175 = self;
  batcha = sourceImages;
  v181 = labels;
  if (!self->_reductionType)
  {
    v81 = objc_msgSend_objectAtIndexedSubscript_(labels, v68, 0, v69, v70, v71, v72, v73);
    v79 = objc_msgSend_width(v81, v82, v83, v84, v85, v86, v87, v88);
    v95 = objc_msgSend_objectAtIndexedSubscript_(labels, v89, 0, v90, v91, v92, v93, v94);
    v78 = objc_msgSend_height(v95, v96, v97, v98, v99, v100, v101, v102);
    v109 = objc_msgSend_objectAtIndexedSubscript_(labels, v103, 0, v104, v105, v106, v107, v108);
    v77 = objc_msgSend_featureChannels(v109, v110, v111, v112, v113, v114, v115, v116);
    v80 = v9;
    if (!v182)
    {
      goto LABEL_31;
    }

LABEL_29:
    v117 = v78;
    for (i = 0; i != v182; ++i)
    {
      v119 = [MPSCNNLossLabels alloc];
      v127 = objc_msgSend_device(commandBuffer, v120, v121, v122, v123, v124, v125, v126);
      v191[0] = v79;
      v191[1] = v117;
      v191[2] = v77;
      v134 = objc_msgSend_objectAtIndexedSubscript_(v181, v128, i, v129, v130, v131, v132, v133);
      v141 = objc_msgSend_objectAtIndexedSubscript_(v80, v135, i, v136, v137, v138, v139, v140);
      v145 = objc_msgSend_initWithDevice_lossImageSize_labelsImage_weightsImage_(v119, v142, v127, v191, v134, v141, v143, v144);
      v152 = objc_msgSend_objectAtIndexedSubscript_(v74, v146, i, v147, v148, v149, v150, v151);
      *(v152 + 312) = v145;
    }

    goto LABEL_31;
  }

  v77 = 1;
  v78 = 1;
  v79 = 1;
  v80 = v9;
  if (v182)
  {
    goto LABEL_29;
  }

LABEL_31:
  v153 = v175;
  if (v175->_reduceAcrossBatch && v80 && v175->_reductionType == 3)
  {
    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v154 = objc_msgSend_countByEnumeratingWithState_objects_count_(v74, v68, &v187, v193, 16, v71, v72, v73);
    if (v154)
    {
      v159 = v154;
      v160 = *v188;
      do
      {
        for (j = 0; j != v159; ++j)
        {
          if (*v188 != v160)
          {
            objc_enumerationMutation(v74);
          }

          *(*(*(*(&v187 + 1) + 8 * j) + 312) + 129) = 1;
        }

        v159 = objc_msgSend_countByEnumeratingWithState_objects_count_(v74, v155, &v187, v193, 16, v156, v157, v158);
      }

      while (v159);
    }

    MPSImageBatchIncrementReadCount(batcha, 1);
    v153 = v175;
    objc_msgSend_encodeBatchToCommandBuffer_sourceImages_inStates_destinationImages_(v175, v162, commandBuffer, batcha, v74, v176, v163, v164);
    v185 = 0u;
    v186 = 0u;
    v183 = 0u;
    v184 = 0u;
    v169 = objc_msgSend_countByEnumeratingWithState_objects_count_(v74, v165, &v183, v192, 16, v166, v167, v168);
    if (v169)
    {
      v171 = v169;
      v172 = *v184;
      do
      {
        for (k = 0; k != v171; ++k)
        {
          if (*v184 != v172)
          {
            objc_enumerationMutation(v74);
          }

          *(*(*(*(&v183 + 1) + 8 * k) + 312) + 129) = 0;
        }

        v171 = objc_msgSend_countByEnumeratingWithState_objects_count_(v74, v68, &v183, v192, 16, v170, v72, v73);
      }

      while (v171);
    }
  }

  v75 = v176;
  objc_msgSend_encodeBatchToCommandBuffer_sourceImages_inStates_destinationImages_(v153, v68, commandBuffer, batcha, v74, v176, v72, v73, v174);
  if (v80)
  {
    MPSDecrementReadCount();
  }

  MPSDecrementReadCount();
  return v75;
}

- (id)resultStateForSourceImage:(id)a3 sourceStates:(id)a4 destinationImage:(id)a5
{
  v9 = [MPSNNLossGradientState alloc];
  v16 = objc_msgSend_initWithResource_(v9, v10, 0, v11, v12, v13, v14, v15);
  objc_msgSend_weight(self, v17, v18, v19, v20, v21, v22, v23);
  v16[73] = v29;
  v16[74] = LODWORD(self->_labelSmoothing);
  v16[75] = LODWORD(self->_epsilon);
  v16[76] = LODWORD(self->_delta);
  propertyCallback = self->_propertyCallback;
  if (propertyCallback)
  {
    objc_msgSend_scalarWeightForSourceImage_destinationImage_(propertyCallback, v24, a3, a5, v25, v26, v27, v28);
    v16[73] = v31;
  }

  objc_msgSend_copyToGradientState_sourceImage_sourceStates_destinationImage_(self, v24, v16, a3, a4, a5, v27, v28);
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x10) != 0)
  {
    v32 = MEMORY[0x277CCACA8];
    v33 = objc_opt_class();
    v34 = NSStringFromClass(v33);
    v41 = objc_msgSend_stringWithFormat_(v32, v35, @"created by %@", v36, v37, v38, v39, v40, v34);
    objc_msgSend_setLabel_(v16, v42, v41, v43, v44, v45, v46, v47);
  }

  return v16;
}

- (id)temporaryResultStateForCommandBuffer:(id)a3 sourceImage:(id)a4 sourceStates:(id)a5 destinationImage:(id)a6
{
  if (a3)
  {
    v12 = objc_msgSend_temporaryStateWithCommandBuffer_(MPSNNLossGradientState, a2, a3, a4, a5, a6, v6, v7);
  }

  else
  {
    v20 = [MPSNNLossGradientState alloc];
    v12 = objc_msgSend_initWithResource_(v20, v21, 0, v22, v23, v24, v25, v26);
  }

  v27 = v12;
  objc_msgSend_weight(self, v13, v14, v15, v16, v17, v18, v19);
  *(v27 + 292) = v33;
  *(v27 + 296) = self->_labelSmoothing;
  *(v27 + 300) = self->_epsilon;
  *(v27 + 304) = self->_delta;
  propertyCallback = self->_propertyCallback;
  if (propertyCallback)
  {
    objc_msgSend_scalarWeightForSourceImage_destinationImage_(propertyCallback, v28, a4, a6, v29, v30, v31, v32);
    *(v27 + 292) = v35;
  }

  objc_msgSend_copyToGradientState_sourceImage_sourceStates_destinationImage_(self, v28, v27, a4, a5, a6, v31, v32);
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x10) != 0)
  {
    v36 = MEMORY[0x277CCACA8];
    v37 = objc_opt_class();
    v38 = NSStringFromClass(v37);
    v45 = objc_msgSend_stringWithFormat_(v36, v39, @"created by %@", v40, v41, v42, v43, v44, v38);
    objc_msgSend_setLabel_(v27, v46, v45, v47, v48, v49, v50, v51);
  }

  return v27;
}

@end