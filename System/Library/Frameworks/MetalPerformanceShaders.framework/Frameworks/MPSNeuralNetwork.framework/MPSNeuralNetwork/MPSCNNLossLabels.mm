@interface MPSCNNLossLabels
- (MPSCNNLossLabels)init;
- (MPSCNNLossLabels)initWithDevice:(id)device labelsDescriptor:(MPSCNNLossDataDescriptor *)labelsDescriptor;
- (MPSCNNLossLabels)initWithDevice:(id)device lossImageSize:(MTLSize *)lossImageSize labelsDescriptor:(MPSCNNLossDataDescriptor *)labelsDescriptor weightsDescriptor:(MPSCNNLossDataDescriptor *)weightsDescriptor;
- (MPSCNNLossLabels)initWithDevice:(id)device lossImageSize:(MTLSize *)lossImageSize labelsImage:(MPSImage *)labelsImage weightsImage:(MPSImage *)weightsImage;
- (MPSImage)labelsImage;
- (MPSImage)lossImage;
- (MPSImage)weightsImage;
- (void)dealloc;
@end

@implementation MPSCNNLossLabels

- (MPSCNNLossLabels)init
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (MPSCNNLossLabels)initWithDevice:(id)device labelsDescriptor:(MPSCNNLossDataDescriptor *)labelsDescriptor
{
  v7 = vdupq_n_s64(1uLL);
  v8 = 1;
  return objc_msgSend_initWithDevice_lossImageSize_labelsDescriptor_weightsDescriptor_(self, a2, device, &v7, labelsDescriptor, 0, v4, v5);
}

- (MPSCNNLossLabels)initWithDevice:(id)device lossImageSize:(MTLSize *)lossImageSize labelsDescriptor:(MPSCNNLossDataDescriptor *)labelsDescriptor weightsDescriptor:(MPSCNNLossDataDescriptor *)weightsDescriptor
{
  depth = lossImageSize->depth;
  p_lossImageSize = &self->_lossImageSize;
  *&self->_lossImageSize.width = *&lossImageSize->width;
  self->_lossImageSize.depth = depth;
  self->_isScalarLoss = 1;
  self->_hasStateWeights = 0;
  self->_numFeatureChannels_loss = 0;
  self->_numFeatureChannels_labels = 0;
  self->_userLabelsImage = 0;
  self->_userWeightsImage = 0;
  if (self->_lossImageSize.width > 1 || self->_lossImageSize.height > 1 || self->_lossImageSize.depth >= 2)
  {
    self->_isScalarLoss = 0;
  }

  data = labelsDescriptor->_data;
  layout = labelsDescriptor->_layout;
  width = labelsDescriptor->_size.width;
  height = labelsDescriptor->_size.height;
  v12 = labelsDescriptor->_size.depth;
  v13 = objc_alloc(MEMORY[0x277CBEA90]);
  v21 = objc_msgSend_bytes(data, v14, v15, v16, v17, v18, v19, v20);
  v299 = data;
  v29 = objc_msgSend_length(data, v22, v23, v24, v25, v26, v27, v28);
  v30 = v21;
  v31 = v12;
  self->_userData = objc_msgSend_initWithBytes_length_(v13, v32, v30, v29, v33, v34, v35, v36);
  v296 = layout;
  self->_userDataLayout = layout;
  self->_numFeatureChannels_labels = v12;
  v44 = p_lossImageSize->depth;
  self->_numFeatureChannels_loss = v44;
  if (!p_lossImageSize->width || !p_lossImageSize->height || !v44)
  {
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (!data)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  bytesPerRow = labelsDescriptor->_bytesPerRow;
  bytesPerImage = labelsDescriptor->_bytesPerImage;
  v47 = objc_msgSend_length(v299, v37, v38, v39, v40, v41, v42, v43);
  if (!v47)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if ((v47 & 3) != 0)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v55 = height;
  v56 = width;
  v57 = 4 * width * height * v12;
  if (v57 < v47)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (width < p_lossImageSize->width || height < p_lossImageSize->height || v12 < p_lossImageSize->depth)
  {
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (weightsDescriptor)
  {
    v60 = weightsDescriptor->_data;
    if (!v60 || (objc_msgSend_bytes(weightsDescriptor->_data, v48, v49, v50, v51, v52, v53, v54), !objc_msgSend_bytes(v60, v61, v62, v63, v64, v65, v66, v67)))
    {
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    v294 = bytesPerImage;
    if (weightsDescriptor->_size.width != width || weightsDescriptor->_size.height != height || weightsDescriptor->_size.depth != v12)
    {
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    v293 = bytesPerRow;
    v75 = weightsDescriptor->_layout;
    v76 = weightsDescriptor->_bytesPerRow;
    v77 = weightsDescriptor->_bytesPerImage;
    v78 = objc_msgSend_length(v60, v68, v69, v70, v71, v72, v73, v74);
    if (!v78)
    {
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    v55 = height;
    v56 = width;
    if ((v78 & 3) != 0)
    {
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if (v57 < v78)
    {
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if (width >= p_lossImageSize->width && height >= p_lossImageSize->height && v31 >= p_lossImageSize->depth)
    {
      v287 = v77;
      v288 = v76;
      v289 = v75;
      v290 = width;
      v291 = height;
      v292 = v31;
      goto LABEL_38;
    }

    if (MTLReportFailureTypeEnabled())
    {
LABEL_16:
      v58 = objc_opt_class();
      NSStringFromClass(v58);
      MTLReportFailure();
    }

LABEL_17:

    return 0;
  }

  v293 = bytesPerRow;
  v294 = bytesPerImage;
  v60 = 0;
  v289 = 0;
  v290 = 0;
  v291 = 0;
  v292 = 0;
  v287 = 0;
  v288 = 0;
LABEL_38:
  v79 = v31;
  v80 = objc_opt_new();
  v87 = v80;
  if (v31 + 3 <= 7)
  {
    objc_msgSend_setTextureType_(v80, v81, 2, v82, v83, v84, v85, v86);
  }

  else
  {
    objc_msgSend_setTextureType_(v80, v81, 3, v82, v83, v84, v85, v86);
  }

  v94 = 125;
  if (v31 == 2)
  {
    v94 = 105;
  }

  if (v31 == 1)
  {
    objc_msgSend_setPixelFormat_(v87, v88, 55, v89, v90, v91, v92, v93);
  }

  else
  {
    objc_msgSend_setPixelFormat_(v87, v88, v94, v89, v90, v91, v92, v93);
  }

  objc_msgSend_setWidth_(v87, v95, v56, v96, v97, v98, v99, v100);
  objc_msgSend_setHeight_(v87, v101, v55, v102, v103, v104, v105, v106);
  objc_msgSend_setArrayLength_(v87, v107, (v31 + 3) >> 2, v108, v109, v110, v111, v112);
  objc_msgSend_setUsage_(v87, v113, 19, v114, v115, v116, v117, v118);
  if (weightsDescriptor && objc_msgSend_bytes(v60, v119, v120, v121, v122, v123, v124, v125))
  {
    v126 = objc_opt_new();
    v133 = v126;
    if ((v292 + 3) <= 7)
    {
      objc_msgSend_setTextureType_(v126, v127, 2, v128, v129, v130, v131, v132);
    }

    else
    {
      objc_msgSend_setTextureType_(v126, v127, 3, v128, v129, v130, v131, v132);
    }

    v140 = 125;
    if (v292 == 2)
    {
      v140 = 105;
    }

    v141 = v133;
    if (v292 == 1)
    {
      objc_msgSend_setPixelFormat_(v133, v134, 55, v135, v136, v137, v138, v139);
    }

    else
    {
      objc_msgSend_setPixelFormat_(v133, v134, v140, v135, v136, v137, v138, v139);
    }

    objc_msgSend_setWidth_(v133, v142, v290, v143, v144, v145, v146, v147);
    objc_msgSend_setHeight_(v133, v148, v291, v149, v150, v151, v152, v153);
    objc_msgSend_setArrayLength_(v133, v154, (v292 + 3) >> 2, v155, v156, v157, v158, v159);
    objc_msgSend_setUsage_(v133, v160, 19, v161, v162, v163, v164, v165);
  }

  else
  {
    v141 = 0;
  }

  v166 = objc_opt_new();
  v173 = v166;
  v174 = p_lossImageSize->depth + 3;
  v175 = v174 >> 2;
  if (v174 <= 7)
  {
    objc_msgSend_setTextureType_(v166, v167, 2, v168, v169, v170, v171, v172);
  }

  else
  {
    objc_msgSend_setTextureType_(v166, v167, 3, v168, v169, v170, v171, v172);
  }

  v182 = p_lossImageSize->depth;
  v183 = 125;
  if (v182 == 2)
  {
    v183 = 105;
  }

  if (v182 == 1)
  {
    objc_msgSend_setPixelFormat_(v173, v176, 55, v177, v178, v179, v180, v181);
  }

  else
  {
    objc_msgSend_setPixelFormat_(v173, v176, v183, v177, v178, v179, v180, v181);
  }

  objc_msgSend_setWidth_(v173, v184, p_lossImageSize->width, v185, v186, v187, v188, v189);
  objc_msgSend_setHeight_(v173, v190, p_lossImageSize->height, v191, v192, v193, v194, v195);
  objc_msgSend_setArrayLength_(v173, v196, v175, v197, v198, v199, v200, v201);
  objc_msgSend_setUsage_(v173, v202, 19, v203, v204, v205, v206, v207);
  v208 = objc_alloc_init(MEMORY[0x277CD72A0]);
  objc_msgSend_appendTexture_(v208, v209, v87, v210, v211, v212, v213, v214);
  objc_msgSend_appendTexture_(v208, v215, v173, v216, v217, v218, v219, v220);
  if (weightsDescriptor && objc_msgSend_bytes(v60, v221, v222, v223, v224, v225, v226, v227))
  {
    objc_msgSend_appendTexture_(v208, v228, v141, v229, v230, v231, v232, v233);
  }

  v308.receiver = self;
  v308.super_class = MPSCNNLossLabels;
  v234 = [(MPSState *)&v308 initWithDevice:device resourceList:v208];
  v306 = 0uLL;
  v307 = 0;
  v235 = MEMORY[0x277CD7480];
  v236 = v234;
  if (*(&v234->super.super.isa + *MEMORY[0x277CD7480]))
  {
    v237 = *(&v234->super.super.isa + *MEMORY[0x277CD7488]);
    v238 = (v237 + 8);
    explicit = atomic_load_explicit((v237 + 8), memory_order_acquire);
    v240 = v79;
    v241 = v296;
    if (!explicit)
    {
      MPSAutoTexture::AllocateTexture((v237 + 8), 0);
      explicit = atomic_load_explicit(v238, memory_order_acquire);
    }
  }

  else
  {
    explicit = 0;
    v240 = v79;
    v241 = v296;
  }

  v242 = objc_alloc(MEMORY[0x277CD7218]);
  v248 = objc_msgSend_initWithTexture_featureChannels_(v242, v243, explicit, v240, v244, v245, v246, v247);
  v256 = objc_msgSend_bytes(v299, v249, v250, v251, v252, v253, v254, v255);
  v301 = v306;
  v302 = v307;
  v303 = v56;
  v304 = v55;
  v305 = 1;
  objc_msgSend_writeBytes_dataLayout_bytesPerRow_bytesPerImage_region_featureChannelInfo_imageIndex_(v248, v257, v256, v241, v293, v294, &v301, v258, 0, v240, 0);

  if (weightsDescriptor && objc_msgSend_bytes(v60, v259, v260, v261, v262, v263, v264, v265))
  {
    if (*(&v236->super.super.isa + *v235))
    {
      v266 = *(&v236->super.super.isa + *MEMORY[0x277CD7488]);
      v267 = (v266 + 152);
      v268 = atomic_load_explicit((v266 + 152), memory_order_acquire);
      v269 = v289;
      if (!v268)
      {
        MPSAutoTexture::AllocateTexture((v266 + 152), 0);
        v268 = atomic_load_explicit(v267, memory_order_acquire);
      }
    }

    else
    {
      v268 = 0;
      v269 = v289;
    }

    v270 = objc_alloc(MEMORY[0x277CD7218]);
    v276 = objc_msgSend_initWithTexture_featureChannels_(v270, v271, v268, v292, v272, v273, v274, v275);
    v284 = objc_msgSend_bytes(v60, v277, v278, v279, v280, v281, v282, v283);
    v301 = 0uLL;
    v302 = 0;
    v303 = v290;
    v304 = v291;
    v305 = 1;
    objc_msgSend_writeBytes_dataLayout_bytesPerRow_bytesPerImage_region_featureChannelInfo_imageIndex_(v276, v285, v284, v269, v288, v287, &v301, v286, 0, v292, 0);

    v236->_hasStateWeights = 1;
  }

  return v236;
}

- (MPSCNNLossLabels)initWithDevice:(id)device lossImageSize:(MTLSize *)lossImageSize labelsImage:(MPSImage *)labelsImage weightsImage:(MPSImage *)weightsImage
{
  depth = lossImageSize->depth;
  p_lossImageSize = &self->_lossImageSize;
  *&self->_lossImageSize.width = *&lossImageSize->width;
  self->_lossImageSize.depth = depth;
  self->_isScalarLoss = 1;
  self->_hasStateWeights = 0;
  self->_numFeatureChannels_loss = 0;
  self->_numFeatureChannels_labels = 0;
  self->_userLabelsImage = labelsImage;
  self->_userWeightsImage = weightsImage;
  if (p_lossImageSize->width > 1 || p_lossImageSize->height > 1 || p_lossImageSize->depth >= 2)
  {
    self->_isScalarLoss = 0;
  }

  self->_userData = 0;
  self->_userDataLayout = 0;
  v19 = objc_msgSend_width(labelsImage, v12, v13, v14, v15, v16, v17, v18);
  v27 = objc_msgSend_height(labelsImage, v20, v21, v22, v23, v24, v25, v26);
  v35 = objc_msgSend_featureChannels(labelsImage, v28, v29, v30, v31, v32, v33, v34);
  self->_numFeatureChannels_labels = v35;
  v43 = p_lossImageSize->depth;
  self->_numFeatureChannels_loss = v43;
  if (!p_lossImageSize->width || (height = p_lossImageSize->height) == 0 || !v43)
  {
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v45 = v35;
  if (v19 < p_lossImageSize->width || v27 < height || v35 < v43)
  {
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  if (!weightsImage)
  {
    goto LABEL_27;
  }

  v46 = objc_msgSend_width(weightsImage, v36, v37, v38, v39, v40, v41, v42);
  v54 = objc_msgSend_height(weightsImage, v47, v48, v49, v50, v51, v52, v53);
  v62 = objc_msgSend_featureChannels(weightsImage, v55, v56, v57, v58, v59, v60, v61);
  if (v46 != v19 || v54 != v27 || v62 != v45)
  {
    if (MTLReportFailureTypeEnabled())
    {
LABEL_23:
      v63 = objc_opt_class();
      NSStringFromClass(v63);
      MTLReportFailure();
    }

LABEL_24:

    return 0;
  }

  if (v19 < p_lossImageSize->width || v27 < p_lossImageSize->height || v45 < p_lossImageSize->depth)
  {
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_23;
    }

    goto LABEL_24;
  }

LABEL_27:
  v65 = objc_opt_new();
  v72 = v65;
  v73 = p_lossImageSize->depth + 3;
  v74 = v73 >> 2;
  if (v73 <= 7)
  {
    objc_msgSend_setTextureType_(v65, v66, 2, v67, v68, v69, v70, v71);
  }

  else
  {
    objc_msgSend_setTextureType_(v65, v66, 3, v67, v68, v69, v70, v71);
  }

  v81 = p_lossImageSize->depth;
  v82 = 125;
  if (v81 == 2)
  {
    v82 = 105;
  }

  if (v81 == 1)
  {
    objc_msgSend_setPixelFormat_(v72, v75, 55, v76, v77, v78, v79, v80);
  }

  else
  {
    objc_msgSend_setPixelFormat_(v72, v75, v82, v76, v77, v78, v79, v80);
  }

  objc_msgSend_setWidth_(v72, v83, p_lossImageSize->width, v84, v85, v86, v87, v88);
  objc_msgSend_setHeight_(v72, v89, p_lossImageSize->height, v90, v91, v92, v93, v94);
  objc_msgSend_setArrayLength_(v72, v95, v74, v96, v97, v98, v99, v100);
  objc_msgSend_setUsage_(v72, v101, 19, v102, v103, v104, v105, v106);
  v107 = objc_alloc_init(MEMORY[0x277CD72A0]);
  objc_msgSend_appendTexture_(v107, v108, v72, v109, v110, v111, v112, v113);
  v114.receiver = self;
  v114.super_class = MPSCNNLossLabels;
  return [(MPSState *)&v114 initWithDevice:device resourceList:v107];
}

- (MPSImage)lossImage
{
  if (*(&self->super.super.isa + *MEMORY[0x277CD7480]))
  {
    v3 = (*(&self->super.super.isa + *MEMORY[0x277CD7488]) + 72 * (self->_userLabelsImage == 0));
    v4 = v3 + 1;
    explicit = atomic_load_explicit(v3 + 1, memory_order_acquire);
    if (!explicit)
    {
      MPSAutoTexture::AllocateTexture((v3 + 1), 0);
      explicit = atomic_load_explicit(v4, memory_order_acquire);
    }
  }

  else
  {
    explicit = 0;
  }

  v6 = objc_alloc(MEMORY[0x277CD7218]);
  v12 = objc_msgSend_initWithTexture_featureChannels_(v6, v7, explicit, self->_numFeatureChannels_loss, v8, v9, v10, v11);

  return v12;
}

- (MPSImage)labelsImage
{
  userLabelsImage = self->_userLabelsImage;
  if (userLabelsImage)
  {
    v3 = userLabelsImage;
  }

  else
  {
    if (*(&self->super.super.isa + *MEMORY[0x277CD7480]))
    {
      v6 = *(&self->super.super.isa + *MEMORY[0x277CD7488]);
      v7 = (v6 + 8);
      explicit = atomic_load_explicit((v6 + 8), memory_order_acquire);
      if (!explicit)
      {
        MPSAutoTexture::AllocateTexture((v6 + 8), 0);
        explicit = atomic_load_explicit(v7, memory_order_acquire);
      }
    }

    else
    {
      explicit = 0;
    }

    v9 = objc_alloc(MEMORY[0x277CD7218]);
    v3 = objc_msgSend_initWithTexture_featureChannels_(v9, v10, explicit, self->_numFeatureChannels_labels, v11, v12, v13, v14);
  }

  return v3;
}

- (MPSImage)weightsImage
{
  userWeightsImage = self->_userWeightsImage;
  if (userWeightsImage)
  {
    v3 = userWeightsImage;

    return v3;
  }

  if (self->_hasStateWeights)
  {
    if (*(&self->super.super.isa + *MEMORY[0x277CD7480]))
    {
      v5 = *(&self->super.super.isa + *MEMORY[0x277CD7488]);
      v6 = (v5 + 152);
      explicit = atomic_load_explicit((v5 + 152), memory_order_acquire);
      if (!explicit)
      {
        v8 = self;
        MPSAutoTexture::AllocateTexture((v5 + 152), 0);
        self = v8;
        explicit = atomic_load_explicit(v6, memory_order_acquire);
      }

      v9 = self;
    }

    else
    {
      v9 = self;
      explicit = 0;
    }

    v10 = objc_alloc(MEMORY[0x277CD7218]);
    v3 = objc_msgSend_initWithTexture_featureChannels_(v10, v11, explicit, v9->_numFeatureChannels_labels, v12, v13, v14, v15);

    return v3;
  }

  return 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSCNNLossLabels;
  [(MPSState *)&v3 dealloc];
}

@end