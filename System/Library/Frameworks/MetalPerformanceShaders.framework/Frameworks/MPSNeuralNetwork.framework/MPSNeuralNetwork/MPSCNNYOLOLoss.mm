@interface MPSCNNYOLOLoss
- (MPSCNNYOLOLoss)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSCNNYOLOLoss)initWithDevice:(id)device;
- (MPSCNNYOLOLoss)initWithDevice:(id)device lossDescriptor:(MPSCNNYOLOLossDescriptor *)lossDescriptor;
- (MPSImage)encodeToCommandBuffer:(id)commandBuffer sourceImage:(MPSImage *)sourceImage labels:(MPSCNNLossLabels *)labels;
- (MPSImageBatch)encodeBatchToCommandBuffer:(id)commandBuffer sourceImages:(MPSImageBatch *)sourceImage labels:(MPSCNNLossLabelsBatch *)labels;
- (float)countPresetobjectsSourceImages:(id)a3 labels:(id)a4;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)debugDescription;
- (void)dealloc;
- (void)encodeBatchToCommandBuffer:(id)commandBuffer sourceImages:(MPSImageBatch *)sourceImage labels:(MPSCNNLossLabelsBatch *)labels destinationImages:(MPSImageBatch *)destinationImage;
- (void)encodeToCommandBuffer:(id)commandBuffer sourceImage:(MPSImage *)sourceImage labels:(MPSCNNLossLabels *)labels destinationImage:(MPSImage *)destinationImage;
- (void)encodeWithCoder:(id)a3;
- (void)initializeSupportFiltersWithDevice:(id)a3 lossDescriptor:(id)a4;
@end

@implementation MPSCNNYOLOLoss

- (MPSCNNYOLOLoss)initWithDevice:(id)device
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (void)initializeSupportFiltersWithDevice:(id)a3 lossDescriptor:(id)a4
{
  self->_reductionType = objc_msgSend_reductionType(a4, a2, a3, a4, v4, v5, v6, v7);
  self->_reduceAcrossBatch = objc_msgSend_reduceAcrossBatch(a4, v11, v12, v13, v14, v15, v16, v17);
  self->_reductionBuffer = 0;
  v23 = objc_msgSend_rowBytesForColumns_dataType_(MEMORY[0x277CD7258], v18, 16, 268435488, v19, v20, v21, v22);
  v27 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], v24, 2, 16, v23, 268435488, v25, v26);
  v28 = objc_alloc(MEMORY[0x277CD7250]);
  self->_reductionBuffer = objc_msgSend_initWithDevice_descriptor_(v28, v29, a3, v27, v30, v31, v32, v33);
  self->_firstLossTexture = 0;
  v41 = objc_msgSend_XYLossDescriptor(a4, v34, v35, v36, v37, v38, v39, v40);
  objc_msgSend_reductionType(v41, v42, v43, v44, v45, v46, v47, v48);
  LODWORD(v27) = self->_reductionType;
  v56 = objc_msgSend_XYLossDescriptor(a4, v49, v50, v51, v52, v53, v54, v55);
  if (v27 != objc_msgSend_reductionType(v56, v57, v58, v59, v60, v61, v62, v63) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v71 = objc_msgSend_WHLossDescriptor(a4, v64, v65, v66, v67, v68, v69, v70);
  objc_msgSend_reductionType(v71, v72, v73, v74, v75, v76, v77, v78);
  reductionType = self->_reductionType;
  v87 = objc_msgSend_WHLossDescriptor(a4, v80, v81, v82, v83, v84, v85, v86);
  if (reductionType != objc_msgSend_reductionType(v87, v88, v89, v90, v91, v92, v93, v94) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v102 = objc_msgSend_confidenceLossDescriptor(a4, v95, v96, v97, v98, v99, v100, v101);
  objc_msgSend_reductionType(v102, v103, v104, v105, v106, v107, v108, v109);
  v110 = self->_reductionType;
  v118 = objc_msgSend_confidenceLossDescriptor(a4, v111, v112, v113, v114, v115, v116, v117);
  if (v110 != objc_msgSend_reductionType(v118, v119, v120, v121, v122, v123, v124, v125) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v133 = objc_msgSend_classesLossDescriptor(a4, v126, v127, v128, v129, v130, v131, v132);
  objc_msgSend_reductionType(v133, v134, v135, v136, v137, v138, v139, v140);
  v141 = self->_reductionType;
  v149 = objc_msgSend_classesLossDescriptor(a4, v142, v143, v144, v145, v146, v147, v148);
  if (v141 != objc_msgSend_reductionType(v149, v150, v151, v152, v153, v154, v155, v156) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v157 = [MPSCNNLoss alloc];
  v165 = objc_msgSend_XYLossDescriptor(a4, v158, v159, v160, v161, v162, v163, v164);
  self->_lossXY = objc_msgSend_initWithDevice_lossDescriptor_(v157, v166, a3, v165, v167, v168, v169, v170);
  v171 = [MPSCNNLoss alloc];
  v179 = objc_msgSend_WHLossDescriptor(a4, v172, v173, v174, v175, v176, v177, v178);
  self->_lossWH = objc_msgSend_initWithDevice_lossDescriptor_(v171, v180, a3, v179, v181, v182, v183, v184);
  v185 = [MPSCNNLoss alloc];
  v193 = objc_msgSend_confidenceLossDescriptor(a4, v186, v187, v188, v189, v190, v191, v192);
  self->_lossConfidence = objc_msgSend_initWithDevice_lossDescriptor_(v185, v194, a3, v193, v195, v196, v197, v198);
  v199 = [MPSCNNLoss alloc];
  v207 = objc_msgSend_classesLossDescriptor(a4, v200, v201, v202, v203, v204, v205, v206);
  self->_lossClasses = objc_msgSend_initWithDevice_lossDescriptor_(v199, v208, a3, v207, v209, v210, v211, v212);
  self->_rescore = objc_msgSend_rescore(a4, v213, v214, v215, v216, v217, v218, v219);
  self->_numberOfAnchorBoxes = objc_msgSend_numberOfAnchorBoxes(a4, v220, v221, v222, v223, v224, v225, v226);
  self->_anchorBoxes = objc_msgSend_anchorBoxes(a4, v227, v228, v229, v230, v231, v232, v233);
  objc_msgSend_scaleXY(a4, v234, v235, v236, v237, v238, v239, v240);
  self->_scaleXY = v241;
  objc_msgSend_scaleWH(a4, v242, v243, v244, v245, v246, v247, v248);
  self->_scaleWH = v249;
  objc_msgSend_scaleNoObject(a4, v250, v251, v252, v253, v254, v255, v256);
  self->_scaleNoObject = v257;
  objc_msgSend_scaleObject(a4, v258, v259, v260, v261, v262, v263, v264);
  self->_scaleObject = v265;
  objc_msgSend_scaleClass(a4, v266, v267, v268, v269, v270, v271, v272);
  self->_scaleClass = v273;
  self->_rescore = objc_msgSend_rescore(a4, v274, v275, v276, v277, v278, v279, v280);
  objc_msgSend_minIOUForObjectPresence(a4, v281, v282, v283, v284, v285, v286, v287);
  self->_minIOUForObjectPresence = v288;
  objc_msgSend_maxIOUForObjectAbsence(a4, v289, v290, v291, v292, v293, v294, v295);
  self->_maxIOUForObjectAbsence = v296;
}

- (MPSCNNYOLOLoss)initWithDevice:(id)device lossDescriptor:(MPSCNNYOLOLossDescriptor *)lossDescriptor
{
  v13.receiver = self;
  v13.super_class = MPSCNNYOLOLoss;
  v6 = [(MPSCNNKernel *)&v13 initWithDevice:?];
  if (v6)
  {
    v6->_encodingSemaphore = dispatch_semaphore_create(1);
    objc_msgSend_initializeSupportFiltersWithDevice_lossDescriptor_(v6, v7, device, lossDescriptor, v8, v9, v10, v11);
    v6->super._isBackwards = 0;
    v6->super._checkFlags |= 2u;
    v6->super._encode = sub_239D58060;
    v6->super._batchEncode = sub_239D582EC;
    v6->super._encodeData = v6;
  }

  return v6;
}

- (MPSCNNYOLOLoss)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v186.receiver = self;
  v186.super_class = MPSCNNYOLOLoss;
  v6 = [MPSCNNKernel initWithCoder:sel_initWithCoder_device_ device:?];
  if (v6)
  {
    v6->_encodingSemaphore = dispatch_semaphore_create(1);
    if (*(&v6->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
    {
      v6->_reductionType = objc_msgSend_decodeInt32ForKey_(aDecoder, v7, @"MPSCNNYOLOLossReductionType", v8, v9, v10, v11, v12);
      v6->_reduceAcrossBatch = objc_msgSend_decodeBoolForKey_(aDecoder, v13, @"MPSCNNYOLOLossReduceAcrossBatch", v14, v15, v16, v17, v18);
      v6->_numberOfAnchorBoxes = objc_msgSend_decodeInt32ForKey_(aDecoder, v19, @"MPSCNNYOLOLossNumberOfAnchorBoxes", v20, v21, v22, v23, v24);
      objc_msgSend_decodeFloatForKey_(aDecoder, v25, @"kMPSCNNYOLOLoss_scaleXY_Key", v26, v27, v28, v29, v30);
      v6->_scaleXY = v31;
      objc_msgSend_decodeFloatForKey_(aDecoder, v32, @"kMPSCNNYOLOLoss_scaleWH_Key", v33, v34, v35, v36, v37);
      v6->_scaleWH = v38;
      objc_msgSend_decodeFloatForKey_(aDecoder, v39, @"kMPSCNNYOLOLoss_scaleNoObject_Key", v40, v41, v42, v43, v44);
      v6->_scaleNoObject = v45;
      objc_msgSend_decodeFloatForKey_(aDecoder, v46, @"kMPSCNNYOLOLoss_scaleObject_Key", v47, v48, v49, v50, v51);
      v6->_scaleObject = v52;
      objc_msgSend_decodeFloatForKey_(aDecoder, v53, @"kMPSCNNYOLOLoss_scaleClass_Key", v54, v55, v56, v57, v58);
      v6->_scaleClass = v59;
      objc_msgSend_decodeFloatForKey_(aDecoder, v60, @"kMPSCNNYOLOLoss_minIOUForObjectPresence_Key", v61, v62, v63, v64, v65);
      v6->_minIOUForObjectPresence = v66;
      objc_msgSend_decodeFloatForKey_(aDecoder, v67, @"kMPSCNNYOLOLoss_maxIOUForObjectAbsence_Key", v68, v69, v70, v71, v72);
      v6->_maxIOUForObjectAbsence = v73;
      v6->_rescore = objc_msgSend_decodeBoolForKey_(aDecoder, v74, @"kMPSCNNYOLOLoss_rescore_Key", v75, v76, v77, v78, v79);
      v185 = objc_opt_class();
      v86 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v80, @"%@.className", v81, v82, v83, v84, v85, @"MPSCNNYOLOLossLossXY");
      v6->_lossXY = sub_239BFCF40(aDecoder, v86, @"MPSCNNYOLOLossLossXY", &v185, v87, v88, v89, v90);
      v97 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v91, @"%@.className", v92, v93, v94, v95, v96, @"MPSCNNYOLOLossLossWH");
      v6->_lossWH = sub_239BFCF40(aDecoder, v97, @"MPSCNNYOLOLossLossWH", &v185, v98, v99, v100, v101);
      v108 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v102, @"%@.className", v103, v104, v105, v106, v107, @"MPSCNNYOLOLossLossConfidence");
      v6->_lossConfidence = sub_239BFCF40(aDecoder, v108, @"MPSCNNYOLOLossLossConfidence", &v185, v109, v110, v111, v112);
      v119 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v113, @"%@.className", v114, v115, v116, v117, v118, @"MPSCNNYOLOLossLossClasses");
      v6->_lossClasses = sub_239BFCF40(aDecoder, v119, @"MPSCNNYOLOLossLossClasses", &v185, v120, v121, v122, v123);
      v6->_anchorBoxes = 0;
      if (objc_msgSend_decodeBoolForKey_(aDecoder, v124, @"MPSCNNYOLOLossAnchorBoxes", v125, v126, v127, v128, v129))
      {
        v187 = 0;
        v130 = objc_alloc(MEMORY[0x277CCACA8]);
        v137 = objc_msgSend_initWithFormat_(v130, v131, @"%@%@", v132, v133, v134, v135, v136, @"MPSCNNYOLOLossAnchorBoxes", @".length");
        v138 = objc_alloc(MEMORY[0x277CCACA8]);
        v145 = objc_msgSend_initWithFormat_(v138, v139, @"%@%@", v140, v141, v142, v143, v144, @"MPSCNNYOLOLossAnchorBoxes", @".data");
        v152 = objc_msgSend_decodeInt64ForKey_(aDecoder, v146, v137, v147, v148, v149, v150, v151);
        v158 = objc_msgSend_decodeBytesForKey_returnedLength_(aDecoder, v153, v145, &v187, v154, v155, v156, v157);

        if (!v158 || 4 * v152 != v187 || (v159 = malloc_type_malloc(4 * v152, 0x100004052888210uLL)) == 0)
        {
          v160 = 0;
LABEL_15:
          free(v160);
          v6->super._checkFlags |= 2u;
          v6->super._encode = sub_239D58060;
          v6->super._batchEncode = sub_239D582EC;
          v6->super._encodeData = v6;
          v173 = objc_msgSend_rowBytesForColumns_dataType_(MEMORY[0x277CD7258], v168, 16, 268435488, v169, v170, v171, v172);
          v177 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], v174, 2, 16, v173, 268435488, v175, v176);
          v178 = objc_alloc(MEMORY[0x277CD7250]);
          v6->_reductionBuffer = objc_msgSend_initWithDevice_descriptor_(v178, v179, device, v177, v180, v181, v182, v183);
          v6->_firstLossTexture = 0;
          return v6;
        }

        v160 = v159;
        MPSCopyToFromNetworkByteOrder32();
      }

      else
      {
        v160 = 0;
        v152 = 0;
      }

      if (v152 == 2 * v6->_numberOfAnchorBoxes)
      {
        v162 = objc_alloc(MEMORY[0x277CBEA90]);
        v6->_anchorBoxes = objc_msgSend_initWithBytes_length_(v162, v163, v160, 4 * v152, v164, v165, v166, v167);
      }

      goto LABEL_15;
    }

    if (MTLReportFailureTypeEnabled())
    {
      v161 = objc_opt_class();
      NSStringFromClass(v161);
      MTLReportFailure();
    }

    return 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v231.receiver = self;
  v231.super_class = MPSCNNYOLOLoss;
  [(MPSCNNKernel *)&v231 encodeWithCoder:?];
  objc_msgSend_encodeInt32_forKey_(a3, v5, self->_reductionType, @"MPSCNNYOLOLossReductionType", v6, v7, v8, v9);
  objc_msgSend_encodeBool_forKey_(a3, v10, self->_reduceAcrossBatch, @"MPSCNNYOLOLossReduceAcrossBatch", v11, v12, v13, v14);
  objc_msgSend_encodeInt32_forKey_(a3, v15, LODWORD(self->_numberOfAnchorBoxes), @"MPSCNNYOLOLossNumberOfAnchorBoxes", v16, v17, v18, v19);
  *&v20 = self->_scaleXY;
  objc_msgSend_encodeFloat_forKey_(a3, v21, @"kMPSCNNYOLOLoss_scaleXY_Key", v22, v23, v24, v25, v26, v20);
  *&v27 = self->_scaleWH;
  objc_msgSend_encodeFloat_forKey_(a3, v28, @"kMPSCNNYOLOLoss_scaleWH_Key", v29, v30, v31, v32, v33, v27);
  *&v34 = self->_scaleNoObject;
  objc_msgSend_encodeFloat_forKey_(a3, v35, @"kMPSCNNYOLOLoss_scaleNoObject_Key", v36, v37, v38, v39, v40, v34);
  *&v41 = self->_scaleObject;
  objc_msgSend_encodeFloat_forKey_(a3, v42, @"kMPSCNNYOLOLoss_scaleObject_Key", v43, v44, v45, v46, v47, v41);
  *&v48 = self->_scaleClass;
  objc_msgSend_encodeFloat_forKey_(a3, v49, @"kMPSCNNYOLOLoss_scaleClass_Key", v50, v51, v52, v53, v54, v48);
  *&v55 = self->_minIOUForObjectPresence;
  objc_msgSend_encodeFloat_forKey_(a3, v56, @"kMPSCNNYOLOLoss_minIOUForObjectPresence_Key", v57, v58, v59, v60, v61, v55);
  *&v62 = self->_maxIOUForObjectAbsence;
  objc_msgSend_encodeFloat_forKey_(a3, v63, @"kMPSCNNYOLOLoss_maxIOUForObjectAbsence_Key", v64, v65, v66, v67, v68, v62);
  objc_msgSend_encodeBool_forKey_(a3, v69, self->_rescore, @"kMPSCNNYOLOLoss_rescore_Key", v70, v71, v72, v73);
  lossXY = self->_lossXY;
  v81 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v75, @"%@.className", v76, v77, v78, v79, v80, @"MPSCNNYOLOLossLossXY");
  v82 = objc_autoreleasePoolPush();
  v83 = objc_opt_class();
  if (v83)
  {
    v84 = NSStringFromClass(v83);
    v91 = objc_msgSend_cStringUsingEncoding_(v84, v85, 1, v86, v87, v88, v89, v90);
    if (v91)
    {
      v92 = v91;
      v93 = strlen(v91);
      if (v93)
      {
        objc_msgSend_encodeBytes_length_forKey_(a3, v94, v92, v93 + 1, v81, v95, v96, v97);
        objc_msgSend_encodeObject_forKey_(a3, v98, lossXY, @"MPSCNNYOLOLossLossXY", v99, v100, v101, v102);
      }
    }
  }

  objc_autoreleasePoolPop(v82);
  lossWH = self->_lossWH;
  v110 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v104, @"%@.className", v105, v106, v107, v108, v109, @"MPSCNNYOLOLossLossWH");
  v111 = objc_autoreleasePoolPush();
  v112 = objc_opt_class();
  if (v112)
  {
    v113 = NSStringFromClass(v112);
    v120 = objc_msgSend_cStringUsingEncoding_(v113, v114, 1, v115, v116, v117, v118, v119);
    if (v120)
    {
      v121 = v120;
      v122 = strlen(v120);
      if (v122)
      {
        objc_msgSend_encodeBytes_length_forKey_(a3, v123, v121, v122 + 1, v110, v124, v125, v126);
        objc_msgSend_encodeObject_forKey_(a3, v127, lossWH, @"MPSCNNYOLOLossLossWH", v128, v129, v130, v131);
      }
    }
  }

  objc_autoreleasePoolPop(v111);
  lossConfidence = self->_lossConfidence;
  v139 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v133, @"%@.className", v134, v135, v136, v137, v138, @"MPSCNNYOLOLossLossConfidence");
  v140 = objc_autoreleasePoolPush();
  v141 = objc_opt_class();
  if (v141)
  {
    v142 = NSStringFromClass(v141);
    v149 = objc_msgSend_cStringUsingEncoding_(v142, v143, 1, v144, v145, v146, v147, v148);
    if (v149)
    {
      v150 = v149;
      v151 = strlen(v149);
      if (v151)
      {
        objc_msgSend_encodeBytes_length_forKey_(a3, v152, v150, v151 + 1, v139, v153, v154, v155);
        objc_msgSend_encodeObject_forKey_(a3, v156, lossConfidence, @"MPSCNNYOLOLossLossConfidence", v157, v158, v159, v160);
      }
    }
  }

  objc_autoreleasePoolPop(v140);
  lossClasses = self->_lossClasses;
  v168 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v162, @"%@.className", v163, v164, v165, v166, v167, @"MPSCNNYOLOLossLossClasses");
  v169 = objc_autoreleasePoolPush();
  v170 = objc_opt_class();
  if (v170)
  {
    v171 = NSStringFromClass(v170);
    v178 = objc_msgSend_cStringUsingEncoding_(v171, v172, 1, v173, v174, v175, v176, v177);
    if (v178)
    {
      v179 = v178;
      v180 = strlen(v178);
      if (v180)
      {
        objc_msgSend_encodeBytes_length_forKey_(a3, v181, v179, v180 + 1, v168, v182, v183, v184);
        objc_msgSend_encodeObject_forKey_(a3, v185, lossClasses, @"MPSCNNYOLOLossLossClasses", v186, v187, v188, v189);
      }
    }
  }

  objc_autoreleasePoolPop(v169);
  v197 = objc_msgSend_bytes(self->_anchorBoxes, v190, v191, v192, v193, v194, v195, v196);
  numberOfAnchorBoxes = self->_numberOfAnchorBoxes;
  objc_msgSend_encodeBool_forKey_(a3, v199, v197 != 0, @"MPSCNNYOLOLossAnchorBoxes", v200, v201, v202, v203);
  if (v197)
  {
    v204 = objc_alloc(MEMORY[0x277CCACA8]);
    v211 = objc_msgSend_initWithFormat_(v204, v205, @"%@%@", v206, v207, v208, v209, v210, @"MPSCNNYOLOLossAnchorBoxes", @".length");
    v212 = objc_alloc(MEMORY[0x277CCACA8]);
    v219 = objc_msgSend_initWithFormat_(v212, v213, @"%@%@", v214, v215, v216, v217, v218, @"MPSCNNYOLOLossAnchorBoxes", @".data");
    objc_msgSend_encodeInt64_forKey_(a3, v220, 2 * numberOfAnchorBoxes, v211, v221, v222, v223, v224);

    v225 = malloc_type_malloc(8 * numberOfAnchorBoxes, 0x100004052888210uLL);
    if (v225)
    {
      v226 = v225;
      MPSCopyToFromNetworkByteOrder32();
      objc_msgSend_encodeBytes_length_forKey_(a3, v227, v226, 8 * numberOfAnchorBoxes, v219, v228, v229, v230);
      free(v226);
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v50.receiver = self;
  v50.super_class = MPSCNNYOLOLoss;
  v6 = [(MPSCNNKernel *)&v50 copyWithZone:a3 device:a4];
  v7 = v6;
  if (v6)
  {
    v6[90] = self->_reductionType;
    *(v6 + 364) = self->_reduceAcrossBatch;
    *(v6 + 51) = self->_anchorBoxes;
    v7[52] = self->_numberOfAnchorBoxes;
    *(v7 + 92) = LODWORD(self->_scaleXY);
    *(v7 + 93) = LODWORD(self->_scaleWH);
    *(v7 + 94) = LODWORD(self->_scaleNoObject);
    *(v7 + 95) = LODWORD(self->_scaleObject);
    *(v7 + 96) = LODWORD(self->_scaleClass);
    *(v7 + 365) = self->_rescore;
    *(v7 + 97) = LODWORD(self->_minIOUForObjectPresence);
    *(v7 + 98) = LODWORD(self->_maxIOUForObjectAbsence);
    v13 = *MEMORY[0x277CD7350];
    v14 = *(&self->super.super.super.isa + v13);
    v15 = *(v7 + v13);
    v16 = *(v15 + 16);
    lossXY = self->_lossXY;
    if (*(v14 + 16) == v16)
    {
      v7[41] = lossXY;
      v7[42] = self->_lossWH;
      v7[43] = self->_lossConfidence;
      v7[44] = self->_lossClasses;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v7[41] = objc_msgSend_copyWithZone_device_(lossXY, v8, a3, *(v15 + 16), v9, v10, v11, v12);
      v7[42] = objc_msgSend_copyWithZone_device_(self->_lossWH, v18, a3, v16, v19, v20, v21, v22);
      v7[43] = objc_msgSend_copyWithZone_device_(self->_lossConfidence, v23, a3, v16, v24, v25, v26, v27);
      v7[44] = objc_msgSend_copyWithZone_device_(self->_lossClasses, v28, a3, v16, v29, v30, v31, v32);
      if (!v16)
      {
LABEL_5:
        v7[54] = 0;
        return v7;
      }
    }

    v38 = objc_msgSend_rowBytesForColumns_dataType_(MEMORY[0x277CD7258], v33, 16, 268435488, v34, v35, v36, v37);
    v42 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], v39, 2, 16, v38, 268435488, v40, v41);
    v43 = objc_alloc(MEMORY[0x277CD7250]);
    v7[53] = objc_msgSend_initWithDevice_descriptor_(v43, v44, v16, v42, v45, v46, v47, v48);
    goto LABEL_5;
  }

  return v7;
}

- (void)dealloc
{
  encodingSemaphore = self->_encodingSemaphore;
  if (encodingSemaphore)
  {
    dispatch_release(encodingSemaphore);
  }

  v4.receiver = self;
  v4.super_class = MPSCNNYOLOLoss;
  [(MPSCNNKernel *)&v4 dealloc];
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v69.receiver = self;
  v69.super_class = MPSCNNYOLOLoss;
  v4 = [(MPSCNNKernel *)&v69 debugDescription];
  v12 = objc_msgSend_debugDescription(self->_lossXY, v5, v6, v7, v8, v9, v10, v11);
  v20 = objc_msgSend_debugDescription(self->_lossWH, v13, v14, v15, v16, v17, v18, v19);
  v28 = objc_msgSend_debugDescription(self->_lossConfidence, v21, v22, v23, v24, v25, v26, v27);
  v36 = objc_msgSend_debugDescription(self->_lossClasses, v29, v30, v31, v32, v33, v34, v35);
  v43 = "YES";
  if (!self->_reduceAcrossBatch)
  {
    v43 = "NO";
  }

  v44 = objc_msgSend_stringWithFormat_(v3, v37, @"%@\n\n\tlossXY: \n\n%@\n\n\tlossWH: \n\n%@\n\n\tlossConfidence: \n\n%@\n\n\tlossClasses: \n\n%@\n\n\n\treductionType = %d, across batches = %s\n\tscaleXY = %f\n\tscaleWH = %f\n\tscaleNoObject = %f\n\tscaleObject = %f\n\tscaleClass = %f\n\tminIOUForObjectPresence = %f\n\tmaxIOUForObjectAbsence = %f\n\tnumberOfAnchorBoxes = %lu\n\t\n\tanchorBoxes:\n\t", v38, v39, v40, v41, v42, v4, v12, v20, v28, v36, self->_reductionType, v43, self->_scaleXY, self->_scaleWH, self->_scaleNoObject, self->_scaleObject, self->_scaleClass, self->_minIOUForObjectPresence, self->_maxIOUForObjectAbsence, self->_numberOfAnchorBoxes);
  v52 = objc_msgSend_bytes(self->_anchorBoxes, v45, v46, v47, v48, v49, v50, v51);
  if (self->_numberOfAnchorBoxes)
  {
    v59 = 0;
    v60 = (v52 + 4);
    do
    {
      v61 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v53, @"%lu (w, h) = (%f, %f)\n\t"), v54, v55, v56, v57, v58, v59, *(v60 - 1), *v60);
      v44 = objc_msgSend_stringByAppendingString_(v44, v62, v61, v63, v64, v65, v66, v67);
      ++v59;
      v60 += 2;
    }

    while (v59 < self->_numberOfAnchorBoxes);
  }

  return v44;
}

- (void)encodeToCommandBuffer:(id)commandBuffer sourceImage:(MPSImage *)sourceImage labels:(MPSCNNLossLabels *)labels destinationImage:(MPSImage *)destinationImage
{
  v33[1] = *MEMORY[0x277D85DE8];
  dispatch_semaphore_wait(self->_encodingSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v33[0] = sourceImage;
  v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v11, v33, 1, v12, v13, v14, v15);
  v32 = labels;
  v22 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v17, &v32, 1, v18, v19, v20, v21);
  objc_msgSend_countPresetobjectsSourceImages_labels_(self, v23, v16, v22, v24, v25, v26, v27);
  self->_countOfPresentObjects = v28;
  objc_msgSend_encodeToCommandBuffer_sourceImage_inState_destinationImage_(self, v29, commandBuffer, sourceImage, labels, destinationImage, v30, v31);
  dispatch_semaphore_signal(self->_encodingSemaphore);
  MPSDecrementReadCount(&labels->super);
}

- (MPSImage)encodeToCommandBuffer:(id)commandBuffer sourceImage:(MPSImage *)sourceImage labels:(MPSCNNLossLabels *)labels
{
  v34[1] = *MEMORY[0x277D85DE8];
  dispatch_semaphore_wait(self->_encodingSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v34[0] = sourceImage;
  v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v9, v34, 1, v10, v11, v12, v13);
  v33 = labels;
  v20 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v15, &v33, 1, v16, v17, v18, v19);
  objc_msgSend_countPresetobjectsSourceImages_labels_(self, v21, v14, v20, v22, v23, v24, v25);
  self->_countOfPresentObjects = v26;
  v31 = objc_msgSend_encodeToCommandBuffer_sourceImage_inState_(self, v27, commandBuffer, sourceImage, labels, v28, v29, v30);
  dispatch_semaphore_signal(self->_encodingSemaphore);
  MPSDecrementReadCount(&labels->super);
  return v31;
}

- (void)encodeBatchToCommandBuffer:(id)commandBuffer sourceImages:(MPSImageBatch *)sourceImage labels:(MPSCNNLossLabelsBatch *)labels destinationImages:(MPSImageBatch *)destinationImage
{
  dispatch_semaphore_wait(self->_encodingSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  objc_msgSend_countPresetobjectsSourceImages_labels_(self, v11, sourceImage, labels, v12, v13, v14, v15);
  self->_countOfPresentObjects = v16;
  objc_msgSend_encodeBatchToCommandBuffer_sourceImages_inStates_destinationImages_(self, v17, commandBuffer, sourceImage, labels, destinationImage, v18, v19);
  dispatch_semaphore_signal(self->_encodingSemaphore);

  MPSDecrementReadCount();
}

- (MPSImageBatch)encodeBatchToCommandBuffer:(id)commandBuffer sourceImages:(MPSImageBatch *)sourceImage labels:(MPSCNNLossLabelsBatch *)labels
{
  dispatch_semaphore_wait(self->_encodingSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  objc_msgSend_countPresetobjectsSourceImages_labels_(self, v9, sourceImage, labels, v10, v11, v12, v13);
  self->_countOfPresentObjects = v14;
  v19 = objc_msgSend_encodeBatchToCommandBuffer_sourceImages_inStates_(self, v15, commandBuffer, sourceImage, labels, v16, v17, v18);
  dispatch_semaphore_signal(self->_encodingSemaphore);
  MPSDecrementReadCount();
  return v19;
}

- (float)countPresetobjectsSourceImages:(id)a3 labels:(id)a4
{
  numberOfAnchorBoxes = self->_numberOfAnchorBoxes;
  v7 = malloc_type_malloc(8 * numberOfAnchorBoxes, 0x100004052888210uLL);
  v14 = objc_msgSend_objectAtIndexedSubscript_(a3, v8, 0, v9, v10, v11, v12, v13);
  v22 = objc_msgSend_featureChannels(v14, v15, v16, v17, v18, v19, v20, v21);
  v29 = objc_msgSend_objectAtIndexedSubscript_(a3, v23, 0, v24, v25, v26, v27, v28);
  v37 = objc_msgSend_width(v29, v30, v31, v32, v33, v34, v35, v36);
  v44 = objc_msgSend_objectAtIndexedSubscript_(a3, v38, 0, v39, v40, v41, v42, v43);
  v52 = objc_msgSend_height(v44, v45, v46, v47, v48, v49, v50, v51);
  v60 = objc_msgSend_bytes(self->_anchorBoxes, v53, v54, v55, v56, v57, v58, v59);
  v176 = a3;
  if (objc_msgSend_count(a3, v61, v62, v63, v64, v65, v66, v67))
  {
    v74 = v22 / numberOfAnchorBoxes;
    v75 = 0;
    if (numberOfAnchorBoxes <= 1)
    {
      v76 = 1;
    }

    else
    {
      v76 = numberOfAnchorBoxes;
    }

    v171 = v52 * v37;
    if (v52)
    {
      v77 = v37 == 0;
    }

    else
    {
      v77 = 1;
    }

    v78 = v77;
    v175 = v78;
    v79 = 0.0;
    while (1)
    {
      v178 = v75;
      v87 = objc_msgSend_objectAtIndexedSubscript_(a4, v68, v75, v69, v70, v71, v72, v73, v171);
      v88 = v87[10];
      if (v88)
      {
        v96 = objc_msgSend_bytes(v88, v80, v81, v82, v83, v84, v85, v86);
        v97 = 0;
        v98 = v87[11] == 1;
        v99 = v178;
        if ((v175 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v100 = objc_msgSend_labelsImage(v87, v80, v81, v82, v83, v84, v85, v86);
        v172 = objc_msgSend_height(v100, v101, v102, v103, v104, v105, v106, v107);
        v115 = objc_msgSend_labelsImage(v87, v108, v109, v110, v111, v112, v113, v114);
        v173 = v172 * objc_msgSend_width(v115, v116, v117, v118, v119, v120, v121, v122);
        v130 = objc_msgSend_labelsImage(v87, v123, v124, v125, v126, v127, v128, v129);
        v138 = objc_msgSend_featureChannels(v130, v131, v132, v133, v134, v135, v136, v137);
        v174 = malloc_type_malloc(4 * v173 * v138, 0x100004052888210uLL);
        v146 = objc_msgSend_labelsImage(v87, v139, v140, v141, v142, v143, v144, v145);
        objc_msgSend_readBytes_dataLayout_imageIndex_(v146, v147, v174, 0, 0, v148, v149, v150);
        v97 = v174;
        v98 = 0;
        v96 = v174;
        v99 = v178;
        if ((v175 & 1) == 0)
        {
LABEL_17:
          v151 = 0;
          if (v98)
          {
            v152 = v171;
          }

          else
          {
            v152 = 1;
          }

          v153 = 2 * v152;
          v154 = 3 * v152;
          v155 = 4 * v152;
          do
          {
            v156 = 0;
            do
            {
              v157 = 0;
              v158 = -1.0;
              v159 = v60;
              v91 = v7;
              v92 = v76;
              do
              {
                v160 = v156 + (v151 + v157 * v74 * v52) * v37;
                if (!v98)
                {
                  v160 = v157 * v74 + v74 * numberOfAnchorBoxes * (v156 + v151 * v37);
                }

                v94 = v160 + v154;
                v161.i32[0] = *(v96 + 4 * (v160 + v153));
                v161.i32[1] = *(v96 + 4 * (v160 + v154));
                v162 = *v159++;
                v163 = vminnm_f32(vmul_f32(v162, 0x3F0000003F000000), vmul_f32(v161, 0x3F0000003F000000));
                v164 = vmaxnm_f32(vadd_f32(v163, v163), 0);
                v165 = vmul_f32(vzip1_s32(v162, v164), vzip2_s32(v162, v164));
                v166 = v165.f32[1] / ((v165.f32[0] + (*(v96 + 4 * (v160 + v153)) * *(v96 + 4 * (v160 + v154)))) - v165.f32[1]);
                v93 = *(v96 + 4 * (v160 + v155)) == 1.0;
                LODWORD(v91[numberOfAnchorBoxes]) = v93;
                *v91++ = v166;
                if (v166 > v158)
                {
                  v158 = v166;
                }

                ++v157;
                --v92;
              }

              while (v92);
              v167 = v7;
              v89 = v76;
              do
              {
                v90 = LODWORD(v167[numberOfAnchorBoxes]);
                if ((*v167 >= v158 || *v167 > self->_minIOUForObjectPresence) && v90 != 0)
                {
                  v79 = v79 + 1.0;
                }

                ++v167;
                --v89;
              }

              while (v89);
              ++v156;
            }

            while (v156 != v37);
            ++v151;
          }

          while (v151 != v52);
        }
      }

      if (v97)
      {
        free(v97);
      }

      v75 = v99 + 1;
      if (v75 >= objc_msgSend_count(v176, v89, v90, v91, v92, v93, v94, v95))
      {
        goto LABEL_43;
      }
    }
  }

  v79 = 0.0;
LABEL_43:
  free(v7);
  return v79;
}

@end