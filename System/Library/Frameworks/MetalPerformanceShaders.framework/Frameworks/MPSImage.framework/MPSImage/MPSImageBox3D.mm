@interface MPSImageBox3D
+ (id)supportedPixelFormats;
- (MPSImageBox3D)initWithCoder:(id)a3 device:(id)a4;
- (MPSImageBox3D)initWithDevice:(id)a3;
- (MPSImageBox3D)initWithDevice:(id)a3 kernelWidth:(unint64_t)a4 kernelHeight:(unint64_t)a5 kernelDepth:(unint64_t)a6;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)a3 sourceTexture:(id)a4 destinationTexture:(id)a5;
@end

@implementation MPSImageBox3D

+ (id)supportedPixelFormats
{
  if (qword_280B15A00 != -1)
  {
    dispatch_once(&qword_280B15A00, &unk_284C6BAA8);
  }

  return qword_280B15A08;
}

- (MPSImageBox3D)initWithDevice:(id)a3 kernelWidth:(unint64_t)a4 kernelHeight:(unint64_t)a5 kernelDepth:(unint64_t)a6
{
  v22.receiver = self;
  v22.super_class = MPSImageBox3D;
  v10 = [(MPSUnaryImageKernel *)&v22 initWithDevice:?];
  if (v10)
  {
    MPSDevice = MPSDevice::GetMPSDevice();
    if (a4 & a5 & a6)
    {
      if (a4 == a5)
      {
        v12 = MPSDevice;
        v10->_kernelWidth = a4;
        v10->_kernelHeight = a4;
        v10->_kernelDepth = a6;
        v13 = [MPSImageBox alloc];
        v16 = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_(v13, v14, a3, a4, a4, v15);
        v10->_boxFilter = v16;
        objc_msgSend_setEdgeMode_(v16, v17, 0, v18, v19, v20);
        v10->_supportsReadWriteTextures = (*(v12 + 1476) & 4) != 0;
        return v10;
      }

      if (MTLReportFailureTypeEnabled())
      {
        goto LABEL_9;
      }
    }

    else if (MTLReportFailureTypeEnabled())
    {
LABEL_9:
      MTLReportFailure();
    }

    return 0;
  }

  return v10;
}

- (MPSImageBox3D)initWithCoder:(id)a3 device:(id)a4
{
  v5.receiver = self;
  v5.super_class = MPSImageBox3D;
  if ([(MPSUnaryImageKernel *)&v5 initWithCoder:a3 device:a4]&& MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (MPSImageBox3D)initWithDevice:(id)a3
{
  if (MTLReportFailureTypeEnabled())
  {
    v6 = objc_opt_class();
    NSStringFromClass(v6);
    MTLReportFailure();
  }

  return objc_msgSend_initWithDevice_kernelWidth_kernelHeight_kernelDepth_(self, v5, a3, 1, 1, 1);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSImageBox3D;
  [(MPSKernel *)&v3 dealloc];
}

- (void)encodeToCommandBuffer:(id)a3 sourceTexture:(id)a4 destinationTexture:(id)a5
{
  v8 = objc_msgSend_supportedPixelFormats(MPSImageBox3D, a2, a3, a4, a5, v5);
  v9 = MEMORY[0x277CCABB0];
  v15 = objc_msgSend_pixelFormat(a4, v10, v11, v12, v13, v14);
  v20 = objc_msgSend_numberWithUnsignedInteger_(v9, v16, v15, v17, v18, v19);
  objc_msgSend_containsObject_(v8, v21, v20, v22, v23, v24);
  v30 = objc_msgSend_supportedPixelFormats(MPSImageBox3D, v25, v26, v27, v28, v29);
  v31 = MEMORY[0x277CCABB0];
  v499 = a4;
  v37 = objc_msgSend_pixelFormat(a4, v32, v33, v34, v35, v36);
  v42 = objc_msgSend_numberWithUnsignedInteger_(v31, v38, v37, v39, v40, v41);
  if ((objc_msgSend_containsObject_(v30, v43, v42, v44, v45, v46) & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    v485 = a4;
    v490 = objc_msgSend_pixelFormat(a4, v47, v48, v49, v50, v51);
    MTLReportFailure();
  }

  v52 = objc_msgSend_supportedPixelFormats(MPSImageBox3D, v47, v48, v49, v50, v51, v485, v490);
  v53 = MEMORY[0x277CCABB0];
  v59 = objc_msgSend_pixelFormat(a5, v54, v55, v56, v57, v58);
  v64 = objc_msgSend_numberWithUnsignedInteger_(v53, v60, v59, v61, v62, v63);
  objc_msgSend_containsObject_(v52, v65, v64, v66, v67, v68);
  v74 = objc_msgSend_supportedPixelFormats(MPSImageBox3D, v69, v70, v71, v72, v73);
  v75 = MEMORY[0x277CCABB0];
  v81 = objc_msgSend_pixelFormat(a5, v76, v77, v78, v79, v80);
  v86 = objc_msgSend_numberWithUnsignedInteger_(v75, v82, v81, v83, v84, v85);
  if ((objc_msgSend_containsObject_(v74, v87, v86, v88, v89, v90) & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    v486 = a5;
    v491 = objc_msgSend_pixelFormat(a5, v91, v92, v93, v94, v95);
    MTLReportFailure();
  }

  if (objc_msgSend_textureType(a4, v91, v92, v93, v94, v95, v486, v491) != 2)
  {
    objc_msgSend_textureType(a4, v96, v97, v98, v99, v100);
  }

  if (objc_msgSend_textureType(a4, v96, v97, v98, v99, v100) != 2 && objc_msgSend_textureType(a4, v101, v102, v103, v104, v105) != 3 && MTLReportFailureTypeEnabled())
  {
    v487 = a4;
    MTLReportFailure();
  }

  objc_msgSend_textureType(a5, v101, v102, v103, v104, v105, v487);
  objc_msgSend_textureType(a4, v106, v107, v108, v109, v110);
  v116 = objc_msgSend_textureType(a5, v111, v112, v113, v114, v115);
  if (v116 != objc_msgSend_textureType(a4, v117, v118, v119, v120, v121) && MTLReportFailureTypeEnabled())
  {
    v488 = a5;
    MTLReportFailure();
  }

  v127 = objc_msgSend_width(a4, v122, v123, v124, v125, v126, v488);
  if (v127 != objc_msgSend_width(a5, v128, v129, v130, v131, v132) || (v138 = objc_msgSend_height(a4, v133, v134, v135, v136, v137), v138 != objc_msgSend_height(a5, v139, v140, v141, v142, v143)) || (v149 = objc_msgSend_arrayLength(a4, v144, v145, v146, v147, v148), v149 != objc_msgSend_arrayLength(a5, v150, v151, v152, v153, v154)))
  {
    if (MTLReportFailureTypeEnabled())
    {
      v489 = a5;
      v492 = a4;
      MTLReportFailure();
    }
  }

  v494 = a5;
  if (self->_kernelDepth < 2)
  {
    v493 = 0;
    v497 = a5;
    if (!self->_supportsReadWriteTextures)
    {
      goto LABEL_15;
    }

LABEL_26:
    v236 = a4;
    if (!objc_msgSend_arrayLength(a4, v155, v156, v157, v158, v159, v489, v492))
    {
      goto LABEL_33;
    }

    goto LABEL_27;
  }

  v160 = MEMORY[0x277CD7058];
  v161 = objc_msgSend_pixelFormat(a4, v155, v156, v157, v158, v159);
  v167 = objc_msgSend_width(a4, v162, v163, v164, v165, v166);
  v173 = objc_msgSend_height(a4, v168, v169, v170, v171, v172);
  v175 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(v160, v174, v161, v167, v173, 0);
  v181 = objc_msgSend_textureType(a4, v176, v177, v178, v179, v180);
  objc_msgSend_setTextureType_(v175, v182, v181, v183, v184, v185);
  v191 = objc_msgSend_arrayLength(a4, v186, v187, v188, v189, v190);
  objc_msgSend_setArrayLength_(v175, v192, v191, v193, v194, v195);
  objc_msgSend_setUsage_(v175, v196, 19, v197, v198, v199);
  objc_msgSend_setStorageMode_(v175, v200, 2, v201, v202, v203);
  v493 = objc_msgSend_temporaryImageWithCommandBuffer_textureDescriptor_(MEMORY[0x277CD72A8], v204, a3, v175, v205, v206);
  v497 = objc_msgSend_texture(v493, v207, v208, v209, v210, v211);
  if (self->_supportsReadWriteTextures)
  {
    goto LABEL_26;
  }

LABEL_15:
  v212 = MEMORY[0x277CD7058];
  v213 = objc_msgSend_pixelFormat(a4, v155, v156, v157, v158, v159, v489, v492);
  v219 = objc_msgSend_width(a4, v214, v215, v216, v217, v218);
  v225 = objc_msgSend_height(a4, v220, v221, v222, v223, v224);
  v227 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(v212, v226, v213, v219, v225, 0);
  objc_msgSend_setUsage_(v227, v228, 3, v229, v230, v231);
  objc_msgSend_setStorageMode_(v227, v232, 2, v233, v234, v235);
  v236 = a4;
  v240 = objc_msgSend_temporaryImageWithCommandBuffer_textureDescriptor_(MEMORY[0x277CD72A8], v237, a3, v227, v238, v239);
  v246 = objc_msgSend_arrayLength(v499, v241, v242, v243, v244, v245);
  objc_msgSend_setReadCount_(v240, v247, v246, v248, v249, v250);
  v496 = objc_msgSend_texture(v240, v251, v252, v253, v254, v255);
  if (!objc_msgSend_arrayLength(v499, v256, v257, v258, v259, v260))
  {
LABEL_23:
    if (v240)
    {
      objc_msgSend_setReadCount_(v240, v261, 0, v263, v264, v265);
    }

    goto LABEL_33;
  }

  if (v240)
  {
    v266 = 0;
    do
    {
      v267 = objc_msgSend_pixelFormat(v499, v261, v262, v263, v264, v265);
      v269 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v499, v268, v267, 2, 0, 1, v266, 1);
      v275 = objc_msgSend_pixelFormat(v497, v270, v271, v272, v273, v274);
      v277 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v497, v276, v275, 2, 0, 1, v266, 1);
      v495 = v269;
      objc_msgSend_encodeToCommandBuffer_sourceTexture_destinationTexture_(self->_boxFilter, v278, a3, v269, v496, v279);
      v280 = *MEMORY[0x277CD7370];
      v281 = *(&self->super.super.super.isa + v280);
      ComputeState = MPSLibrary::GetComputeState();
      v283 = objc_alloc(MEMORY[0x277CD7210]);
      v291 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v283, v284, a3, 0, v285, v286);
      v508 = v291;
      v509 = self;
      if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
      {
        v292 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
        if (v292 || (v293 = objc_opt_class(), v294 = NSStringFromClass(v293), objc_msgSend_setLabel_(self, v295, v294, v296, v297, v298), (v292 = v294) != 0))
        {
          objc_msgSend_setLabel_(v291, v287, v292, v288, v289, v290);
        }
      }

      objc_msgSend_setComputePipelineState_(v291, v287, ComputeState, v288, v289, v290);
      objc_msgSend_setTexture_atIndex_(v291, v299, v496, 0, v300, v301);
      objc_msgSend_setTexture_atIndex_(v291, v302, v277, 1, v303, v304);
      v507 = LODWORD(self->_kernelWidth) >> 1;
      objc_msgSend_setBytes_length_atIndex_(v291, v305, &v507, 4, 0, v306);
      v312 = objc_msgSend_threadExecutionWidth(ComputeState, v307, v308, v309, v310, v311);
      v318 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v313, v314, v315, v316, v317);
      v324 = objc_msgSend_width(v499, v319, v320, v321, v322, v323);
      v330 = objc_msgSend_height(v499, v325, v326, v327, v328, v329);
      v504 = (v312 + v324 - 1) / v312;
      v505 = (v318 / v312 + v330 - 1) / (v318 / v312);
      v506 = 1;
      v501 = v312;
      v502 = v318 / v312;
      v503 = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v291, v331, &v504, &v501, v332, v333);
      v334 = *(&self->super.super.super.isa + v280);
      MPSLibrary::ReleaseComputeState();
      objc_msgSend_endEncoding(v291, v335, v336, v337, v338, v339);

      ++v266;
    }

    while (v266 < objc_msgSend_arrayLength(v499, v340, v341, v342, v343, v344));
    goto LABEL_23;
  }

LABEL_27:
  v345 = 0;
  do
  {
    v346 = objc_msgSend_pixelFormat(v236, v261, v262, v263, v264, v265);
    v348 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v236, v347, v346, 2, 0, 1, v345, 1);
    v354 = objc_msgSend_pixelFormat(v497, v349, v350, v351, v352, v353);
    v356 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v497, v355, v354, 2, 0, 1, v345, 1);
    objc_msgSend_encodeToCommandBuffer_sourceTexture_destinationTexture_(self->_boxFilter, v357, a3, v348, v356, v358);
    v359 = *MEMORY[0x277CD7370];
    v360 = *(&self->super.super.super.isa + v359);
    v361 = MPSLibrary::GetComputeState();
    v362 = objc_alloc(MEMORY[0x277CD7210]);
    v370 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v362, v363, a3, 0, v364, v365);
    v508 = v370;
    v509 = self;
    if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
    {
      v371 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
      if (v371 || (v372 = objc_opt_class(), v373 = NSStringFromClass(v372), objc_msgSend_setLabel_(self, v374, v373, v375, v376, v377), (v371 = v373) != 0))
      {
        objc_msgSend_setLabel_(v370, v366, v371, v367, v368, v369);
      }
    }

    objc_msgSend_setComputePipelineState_(v370, v366, v361, v367, v368, v369);
    objc_msgSend_setTexture_atIndex_(v370, v378, v356, 0, v379, v380);
    v507 = LODWORD(self->_kernelWidth) >> 1;
    objc_msgSend_setBytes_length_atIndex_(v370, v381, &v507, 4, 0, v382);
    v388 = objc_msgSend_threadExecutionWidth(v361, v383, v384, v385, v386, v387);
    v394 = objc_msgSend_maxTotalThreadsPerThreadgroup(v361, v389, v390, v391, v392, v393);
    v400 = objc_msgSend_width(v499, v395, v396, v397, v398, v399);
    v406 = objc_msgSend_height(v499, v401, v402, v403, v404, v405);
    v504 = (v388 + v400 - 1) / v388;
    v505 = (v394 / v388 + v406 - 1) / (v394 / v388);
    v506 = 1;
    v501 = v388;
    v502 = v394 / v388;
    v503 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v370, v407, &v504, &v501, v408, v409);
    v410 = *(&self->super.super.super.isa + v359);
    MPSLibrary::ReleaseComputeState();
    objc_msgSend_endEncoding(v370, v411, v412, v413, v414, v415);

    ++v345;
    v236 = v499;
  }

  while (v345 < objc_msgSend_arrayLength(v499, v416, v417, v418, v419, v420));
LABEL_33:
  if (self->_kernelDepth >= 2)
  {
    v421 = *MEMORY[0x277CD7370];
    v422 = *(&self->super.super.super.isa + v421);
    v423 = MPSLibrary::GetComputeState();
    v424 = objc_alloc(MEMORY[0x277CD7210]);
    v432 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v424, v425, a3, 0, v426, v427);
    v508 = v432;
    v509 = self;
    if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
    {
      v433 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
      if (v433 || (v434 = objc_opt_class(), v435 = NSStringFromClass(v434), objc_msgSend_setLabel_(self, v436, v435, v437, v438, v439), (v433 = v435) != 0))
      {
        objc_msgSend_setLabel_(v432, v428, v433, v429, v430, v431);
      }
    }

    objc_msgSend_setComputePipelineState_(v432, v428, v423, v429, v430, v431);
    objc_msgSend_setTexture_atIndex_(v432, v440, v497, 0, v441, v442);
    objc_msgSend_setTexture_atIndex_(v432, v443, v494, 1, v444, v445);
    v507 = LODWORD(self->_kernelDepth) >> 1;
    objc_msgSend_setBytes_length_atIndex_(v432, v446, &v507, 4, 0, v447);
    v453 = objc_msgSend_threadExecutionWidth(v423, v448, v449, v450, v451, v452);
    v459 = objc_msgSend_maxTotalThreadsPerThreadgroup(v423, v454, v455, v456, v457, v458);
    v465 = objc_msgSend_width(v236, v460, v461, v462, v463, v464);
    v471 = objc_msgSend_height(v236, v466, v467, v468, v469, v470);
    v504 = (v453 + v465 - 1) / v453;
    v505 = (v459 / v453 + v471 - 1) / (v459 / v453);
    v506 = 1;
    v501 = v453;
    v502 = v459 / v453;
    v503 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v432, v472, &v504, &v501, v473, v474);
    v475 = *(&self->super.super.super.isa + v421);
    MPSLibrary::ReleaseComputeState();
    objc_msgSend_setReadCount_(v493, v476, 0, v477, v478, v479);
    objc_msgSend_endEncoding(v432, v480, v481, v482, v483, v484);
  }
}

@end