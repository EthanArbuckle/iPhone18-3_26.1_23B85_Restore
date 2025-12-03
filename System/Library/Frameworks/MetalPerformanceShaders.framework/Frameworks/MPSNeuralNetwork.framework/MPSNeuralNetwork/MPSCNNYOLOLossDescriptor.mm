@interface MPSCNNYOLOLossDescriptor
+ (MPSCNNYOLOLossDescriptor)cnnLossDescriptorWithXYLossType:(MPSCNNLossType)XYLossType WHLossType:(MPSCNNLossType)WHLossType confidenceLossType:(MPSCNNLossType)confidenceLossType classesLossType:(MPSCNNLossType)classesLossType reductionType:(MPSCNNReductionType)reductionType anchorBoxes:(NSData *)anchorBoxes numberOfAnchorBoxes:(NSUInteger)numberOfAnchorBoxes;
- (MPSCNNYOLOLossDescriptor)initWithXYLossType:(unsigned int)type WHLossType:(unsigned int)lossType confidenceLossType:(unsigned int)confidenceLossType classesLossType:(unsigned int)classesLossType reductionType:(int)reductionType anchorBoxes:(id)boxes numberOfAnchorBoxes:(unint64_t)anchorBoxes;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (void)dealloc;
@end

@implementation MPSCNNYOLOLossDescriptor

- (MPSCNNYOLOLossDescriptor)initWithXYLossType:(unsigned int)type WHLossType:(unsigned int)lossType confidenceLossType:(unsigned int)confidenceLossType classesLossType:(unsigned int)classesLossType reductionType:(int)reductionType anchorBoxes:(id)boxes numberOfAnchorBoxes:(unint64_t)anchorBoxes
{
  v10 = *&reductionType;
  v11 = *&classesLossType;
  v12 = *&confidenceLossType;
  v13 = *&lossType;
  v14 = *&type;
  v152.receiver = self;
  v152.super_class = MPSCNNYOLOLossDescriptor;
  v15 = [(MPSCNNYOLOLossDescriptor *)&v152 init];
  v22 = v15;
  if (v15)
  {
    objc_msgSend_setAnchorBoxes_(v15, v16, boxes, v17, v18, v19, v20, v21);
    objc_msgSend_setNumberOfAnchorBoxes_(v22, v23, anchorBoxes, v24, v25, v26, v27, v28);
    LODWORD(v29) = 10.0;
    objc_msgSend_setScaleXY_(v22, v30, v31, v32, v33, v34, v35, v36, v29);
    LODWORD(v37) = 10.0;
    objc_msgSend_setScaleWH_(v22, v38, v39, v40, v41, v42, v43, v44, v37);
    LODWORD(v45) = 5.0;
    objc_msgSend_setScaleNoObject_(v22, v46, v47, v48, v49, v50, v51, v52, v45);
    LODWORD(v53) = 1120403456;
    objc_msgSend_setScaleObject_(v22, v54, v55, v56, v57, v58, v59, v60, v53);
    LODWORD(v61) = 2.0;
    objc_msgSend_setScaleClass_(v22, v62, v63, v64, v65, v66, v67, v68, v61);
    LODWORD(v69) = 1060320051;
    objc_msgSend_setMinIOUForObjectPresence_(v22, v70, v71, v72, v73, v74, v75, v76, v69);
    LODWORD(v77) = 1050253722;
    objc_msgSend_setMaxIOUForObjectAbsence_(v22, v78, v79, v80, v81, v82, v83, v84, v77);
    objc_msgSend_setRescore_(v22, v85, 1, v86, v87, v88, v89, v90);
    objc_msgSend_setReductionType_(v22, v91, v10, v92, v93, v94, v95, v96);
    objc_msgSend_setReduceAcrossBatch_(v22, v97, 0, v98, v99, v100, v101, v102);
    v108 = objc_msgSend_cnnLossDescriptorWithType_reductionType_(MPSCNNLossDescriptor, v103, v14, v10, v104, v105, v106, v107);
    objc_msgSend_setXYLossDescriptor_(v22, v109, v108, v110, v111, v112, v113, v114);
    v120 = objc_msgSend_cnnLossDescriptorWithType_reductionType_(MPSCNNLossDescriptor, v115, v13, v10, v116, v117, v118, v119);
    objc_msgSend_setWHLossDescriptor_(v22, v121, v120, v122, v123, v124, v125, v126);
    v132 = objc_msgSend_cnnLossDescriptorWithType_reductionType_(MPSCNNLossDescriptor, v127, v12, v10, v128, v129, v130, v131);
    objc_msgSend_setConfidenceLossDescriptor_(v22, v133, v132, v134, v135, v136, v137, v138);
    v144 = objc_msgSend_cnnLossDescriptorWithType_reductionType_(MPSCNNLossDescriptor, v139, v11, v10, v140, v141, v142, v143);
    objc_msgSend_setClassesLossDescriptor_(v22, v145, v144, v146, v147, v148, v149, v150);
  }

  return v22;
}

+ (MPSCNNYOLOLossDescriptor)cnnLossDescriptorWithXYLossType:(MPSCNNLossType)XYLossType WHLossType:(MPSCNNLossType)WHLossType confidenceLossType:(MPSCNNLossType)confidenceLossType classesLossType:(MPSCNNLossType)classesLossType reductionType:(MPSCNNReductionType)reductionType anchorBoxes:(NSData *)anchorBoxes numberOfAnchorBoxes:(NSUInteger)numberOfAnchorBoxes
{
  v10 = *&reductionType;
  v11 = *&classesLossType;
  v12 = *&confidenceLossType;
  v13 = *&WHLossType;
  v14 = *&XYLossType;
  v15 = [MPSCNNYOLOLossDescriptor alloc];
  v17 = objc_msgSend_initWithXYLossType_WHLossType_confidenceLossType_classesLossType_reductionType_anchorBoxes_numberOfAnchorBoxes_(v15, v16, v14, v13, v12, v11, v10, anchorBoxes, numberOfAnchorBoxes);

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  result = objc_msgSend_allocWithZone_(v5, v6, zone, v7, v8, v9, v10, v11);
  if (result)
  {
    v19 = result;
    objc_msgSend_setAnchorBoxes_(result, v13, self->_anchorBoxes, v14, v15, v16, v17, v18);
    objc_msgSend_setNumberOfAnchorBoxes_(v19, v20, self->_numberOfAnchorBoxes, v21, v22, v23, v24, v25);
    objc_msgSend_setReductionType_(v19, v26, self->_reductionType, v27, v28, v29, v30, v31);
    objc_msgSend_setReduceAcrossBatch_(v19, v32, self->_reduceAcrossBatch, v33, v34, v35, v36, v37);
    objc_msgSend_setRescore_(v19, v38, self->_rescore, v39, v40, v41, v42, v43);
    *&v44 = self->_scaleXY;
    objc_msgSend_setScaleXY_(v19, v45, v46, v47, v48, v49, v50, v51, v44);
    *&v52 = self->_scaleWH;
    objc_msgSend_setScaleWH_(v19, v53, v54, v55, v56, v57, v58, v59, v52);
    *&v60 = self->_scaleNoObject;
    objc_msgSend_setScaleNoObject_(v19, v61, v62, v63, v64, v65, v66, v67, v60);
    *&v68 = self->_scaleObject;
    objc_msgSend_setScaleObject_(v19, v69, v70, v71, v72, v73, v74, v75, v68);
    *&v76 = self->_scaleClass;
    objc_msgSend_setScaleClass_(v19, v77, v78, v79, v80, v81, v82, v83, v76);
    *&v84 = self->_minIOUForObjectPresence;
    objc_msgSend_setMinIOUForObjectPresence_(v19, v85, v86, v87, v88, v89, v90, v91, v84);
    *&v92 = self->_maxIOUForObjectAbsence;
    objc_msgSend_setMaxIOUForObjectAbsence_(v19, v93, v94, v95, v96, v97, v98, v99, v92);
    v19[1] = objc_msgSend_copyWithZone_(self->_XYLossDescriptor, v100, zone, v101, v102, v103, v104, v105);
    v19[2] = objc_msgSend_copyWithZone_(self->_WHLossDescriptor, v106, zone, v107, v108, v109, v110, v111);
    v19[3] = objc_msgSend_copyWithZone_(self->_confidenceLossDescriptor, v112, zone, v113, v114, v115, v116, v117);
    v124 = objc_msgSend_copyWithZone_(self->_classesLossDescriptor, v118, zone, v119, v120, v121, v122, v123);
    result = v19;
    v19[4] = v124;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSCNNYOLOLossDescriptor;
  [(MPSCNNYOLOLossDescriptor *)&v3 dealloc];
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v68.receiver = self;
  v68.super_class = MPSCNNYOLOLossDescriptor;
  v4 = [(MPSCNNYOLOLossDescriptor *)&v68 debugDescription];
  v12 = objc_msgSend_debugDescription(self->_XYLossDescriptor, v5, v6, v7, v8, v9, v10, v11);
  v20 = objc_msgSend_debugDescription(self->_WHLossDescriptor, v13, v14, v15, v16, v17, v18, v19);
  v28 = objc_msgSend_debugDescription(self->_confidenceLossDescriptor, v21, v22, v23, v24, v25, v26, v27);
  v36 = objc_msgSend_debugDescription(self->_classesLossDescriptor, v29, v30, v31, v32, v33, v34, v35);
  v43 = objc_msgSend_stringWithFormat_(v3, v37, @"%@\n\n\tlossXYDescriptor: \n\n%@\n\n\tlossWHDescriptor: \n\n%@\n\n\tlossConfidenceDescriptor: \n\n%@\n\n\tlossClassesDescriptor: \n\n%@\n\n\n\treductionType = %d\n\tscaleXY = %f\n\tscaleWH = %f\n\tscaleNoObject = %f\n\tscaleObject = %f\n\tscaleClass = %f\n\tminIOUForObjectPresence = %f\n\tmaxIOUForObjectAbsence = %f\n\tnumberOfAnchorBoxes = %lu\n\t\n\tanchorBoxes:\n\t", v38, v39, v40, v41, v42, v4, v12, v20, v28, v36, self->_reductionType, self->_scaleXY, self->_scaleWH, self->_scaleNoObject, self->_scaleObject, self->_scaleClass, self->_minIOUForObjectPresence, self->_maxIOUForObjectAbsence, self->_numberOfAnchorBoxes);
  v51 = objc_msgSend_bytes(self->_anchorBoxes, v44, v45, v46, v47, v48, v49, v50);
  if (self->_numberOfAnchorBoxes)
  {
    v58 = 0;
    v59 = (v51 + 4);
    do
    {
      v60 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v52, @"%lu (w, h) = (%f, %f)\n\t"), v53, v54, v55, v56, v57, v58, *(v59 - 1), *v59);
      v43 = objc_msgSend_stringByAppendingString_(v43, v61, v60, v62, v63, v64, v65, v66);
      ++v58;
      v59 += 2;
    }

    while (v58 < self->_numberOfAnchorBoxes);
  }

  return v43;
}

@end