@interface MPSMatrixFindTopK
- (MPSMatrixFindTopK)copyWithZone:(NSZone *)zone device:(id)device;
- (MPSMatrixFindTopK)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSMatrixFindTopK)initWithDevice:(id)device numberOfTopKValues:(NSUInteger)numberOfTopKValues;
- (id)debugDescription;
- (void)encodeToCommandBuffer:(id)commandBuffer inputMatrix:(MPSMatrix *)inputMatrix resultIndexMatrix:(MPSMatrix *)resultIndexMatrix resultValueMatrix:(MPSMatrix *)resultValueMatrix;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSMatrixFindTopK

- (MPSMatrixFindTopK)initWithDevice:(id)device numberOfTopKValues:(NSUInteger)numberOfTopKValues
{
  v6.receiver = self;
  v6.super_class = MPSMatrixFindTopK;
  result = [(MPSMatrixUnaryKernel *)&v6 initWithDevice:device];
  if (result)
  {
    result->_sourceColumns = -1;
    result->_sourceRows = -1;
    result->_numberOfTopKValues = numberOfTopKValues;
    result->_indexOffset = 0;
    result->_alongColumns = 0;
  }

  return result;
}

- (MPSMatrixFindTopK)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v39.receiver = self;
  v39.super_class = MPSMatrixFindTopK;
  v5 = [(MPSMatrixUnaryKernel *)&v39 initWithCoder:aDecoder device:device];
  v12 = v5;
  if (v5)
  {
    if (*(&v5->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
    {
      v5->_sourceColumns = -1;
      v5->_sourceRows = -1;
      v5->_sourceColumns = objc_msgSend_decodeInt64ForKey_(aDecoder, v6, @"MPMatrixFindTopK._sourceColumns;", v7, v8, v9, v10, v11);
      v12->_sourceRows = objc_msgSend_decodeInt64ForKey_(aDecoder, v13, @"MPMatrixFindTopK._sourceRows", v14, v15, v16, v17, v18);
      v12->_numberOfTopKValues = objc_msgSend_decodeInt64ForKey_(aDecoder, v19, @"MPMatrixFindTopK._numberOfTopKValues;", v20, v21, v22, v23, v24);
      v12->_indexOffset = objc_msgSend_decodeInt64ForKey_(aDecoder, v25, @"MPMatrixFindTopK._indexOffset", v26, v27, v28, v29, v30);
      v12->_alongColumns = objc_msgSend_decodeBoolForKey_(aDecoder, v31, @"MPSMatrixFindTopK._alongColumns", v32, v33, v34, v35, v36);
    }

    else
    {
      if (MTLReportFailureTypeEnabled())
      {
        v37 = objc_opt_class();
        NSStringFromClass(v37);
        MTLReportFailure();
      }

      return 0;
    }
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v30.receiver = self;
  v30.super_class = MPSMatrixFindTopK;
  [(MPSMatrixUnaryKernel *)&v30 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(coder, v5, self->_sourceColumns, @"MPMatrixFindTopK._sourceColumns;", v6, v7, v8, v9);
  objc_msgSend_encodeInt64_forKey_(coder, v10, self->_sourceRows, @"MPMatrixFindTopK._sourceRows", v11, v12, v13, v14);
  objc_msgSend_encodeInt64_forKey_(coder, v15, self->_numberOfTopKValues, @"MPMatrixFindTopK._numberOfTopKValues;", v16, v17, v18, v19);
  objc_msgSend_encodeInt64_forKey_(coder, v20, self->_indexOffset, @"MPMatrixFindTopK._indexOffset", v21, v22, v23, v24);
  objc_msgSend_encodeBool_forKey_(coder, v25, self->_alongColumns, @"MPSMatrixFindTopK._alongColumns", v26, v27, v28, v29);
}

- (MPSMatrixFindTopK)copyWithZone:(NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSMatrixFindTopK;
  result = [(MPSMatrixUnaryKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    result->_sourceColumns = self->_sourceColumns;
    result->_sourceRows = self->_sourceRows;
    result->_indexOffset = self->_indexOffset;
    result->_numberOfTopKValues = self->_numberOfTopKValues;
    result->_alongColumns = self->_alongColumns;
  }

  return result;
}

- (void)encodeToCommandBuffer:(id)commandBuffer inputMatrix:(MPSMatrix *)inputMatrix resultIndexMatrix:(MPSMatrix *)resultIndexMatrix resultValueMatrix:(MPSMatrix *)resultValueMatrix
{
  v10 = objc_alloc(MEMORY[0x277CD7210]);
  v23 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v10, v11, commandBuffer, 0, v12, v13, v14, v15);
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
  {
    v17 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
    if (v17 || (v24 = objc_opt_class(), v25 = NSStringFromClass(v24), objc_msgSend_setLabel_(self, v26, v25, v27, v28, v29, v30, v31), (v17 = v25) != 0))
    {
      objc_msgSend_setLabel_(v23, v16, v17, v18, v19, v20, v21, v22);
    }
  }

  alongColumns = self->_alongColumns;
  v359 = *(&self->super.super.super.isa + *MEMORY[0x277CD7370]);
  sourceColumns = self->_sourceColumns;
  sourceRows = self->_sourceRows;
  indexOffset = self->_indexOffset;
  v380 = 0;
  v381 = 0;
  v382 = 0;
  objc_msgSend_sourceMatrixOrigin(self, v16, v17, v18, v19, v20, v21, v22);
  v377 = 0;
  v378 = 0;
  v379 = 0;
  objc_msgSend_resultMatrixOrigin(self, v34, v35, v36, v37, v38, v39, v40);
  numberOfTopKValues = self->_numberOfTopKValues;
  if (!numberOfTopKValues)
  {
    goto LABEL_90;
  }

  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (!commandBuffer && MTLReportFailureTypeEnabled())
    {
      v324 = objc_opt_class();
      v336 = NSStringFromClass(v324);
      MTLReportFailure();
    }

    if (!inputMatrix && MTLReportFailureTypeEnabled())
    {
      v325 = objc_opt_class();
      v336 = NSStringFromClass(v325);
      MTLReportFailure();
    }

    if (!resultValueMatrix && MTLReportFailureTypeEnabled())
    {
      v326 = objc_opt_class();
      v336 = NSStringFromClass(v326);
      MTLReportFailure();
    }

    if (!resultIndexMatrix && MTLReportFailureTypeEnabled())
    {
      v327 = objc_opt_class();
      v336 = NSStringFromClass(v327);
      MTLReportFailure();
    }

    objc_msgSend_dataType(inputMatrix, v41, v42, v43, v44, v45, v46, v47, v336);
    objc_msgSend_dataType(resultValueMatrix, v49, v50, v51, v52, v53, v54, v55);
    v63 = objc_msgSend_dataType(inputMatrix, v56, v57, v58, v59, v60, v61, v62);
    if (v63 != objc_msgSend_dataType(resultValueMatrix, v64, v65, v66, v67, v68, v69, v70) && MTLReportFailureTypeEnabled())
    {
      v328 = objc_opt_class();
      v337 = NSStringFromClass(v328);
      MTLReportFailure();
    }

    if (objc_msgSend_dataType(inputMatrix, v71, v72, v73, v74, v75, v76, v77, v337) != 268435488)
    {
      objc_msgSend_dataType(inputMatrix, v78, v79, v80, v81, v82, v83, v84);
    }

    if (objc_msgSend_dataType(inputMatrix, v78, v79, v80, v81, v82, v83, v84) != 268435488 && objc_msgSend_dataType(inputMatrix, v41, v42, v43, v44, v45, v46, v47) != 268435472 && MTLReportFailureTypeEnabled())
    {
      v330 = objc_opt_class();
      v336 = NSStringFromClass(v330);
      MTLReportFailure();
    }

    if (numberOfTopKValues >= 0x11 && MTLReportFailureTypeEnabled())
    {
      v329 = objc_opt_class();
      v336 = NSStringFromClass(v329);
      MTLReportFailure();
    }
  }

  v376 = numberOfTopKValues;
  v85 = *MEMORY[0x277CD73B0];
  v86 = *(&resultValueMatrix->super.isa + v85);
  v87 = *(&inputMatrix->super.isa + v85);
  v375 = indexOffset;
  v88 = *(&resultIndexMatrix->super.isa + v85);
  v369 = v86;
  v370 = v87;
  v89 = *MEMORY[0x277CD73A0];
  v90 = *(&resultValueMatrix->super.isa + v89);
  v91 = *(&inputMatrix->super.isa + v89);
  v371 = v90;
  v372 = v91;
  v92 = *(&resultIndexMatrix->super.isa + v89);
  v373 = v88;
  v374 = v92;
  v361 = objc_msgSend_batchStart(self, v41, v42, v43, v44, v45, v46, v47, v336);
  v100 = objc_msgSend_batchSize(self, v93, v94, v95, v96, v97, v98, v99);
  if (objc_msgSend_columns(inputMatrix, v101, v102, v103, v104, v105, v106, v107) >= v381)
  {
    v115 = objc_msgSend_columns(inputMatrix, v108, v109, v110, v111, v112, v113, v114);
    if (v115 - v381 < sourceColumns)
    {
      LODWORD(sourceColumns) = v115 - v381;
    }
  }

  else
  {
    LODWORD(sourceColumns) = 0;
  }

  if (objc_msgSend_rows(inputMatrix, v108, v109, v110, v111, v112, v113, v114) >= v380)
  {
    v125 = objc_msgSend_rows(inputMatrix, v116, v117, v118, v119, v120, v121, v122);
    v124 = v125 - v380 >= sourceRows ? sourceRows : v125 - v380;
  }

  else
  {
    v124 = 0;
  }

  v368 = v123;
  v367 = __PAIR64__(v124, sourceColumns);
  v133 = objc_msgSend_matrices(inputMatrix, v116, v117, v118, v119, v120, v121, v122) <= v361 ? 0 : objc_msgSend_matrices(inputMatrix, v126, v127, v128, v129, v130, v131, v132) - v361;
  if (objc_msgSend_matrices(resultValueMatrix, v126, v127, v128, v129, v130, v131, v132) <= v361)
  {
    goto LABEL_90;
  }

  v134 = objc_msgSend_matrices(resultValueMatrix, v41, v42, v43, v44, v45, v46, v47) - v361;
  if (v133 < v134)
  {
    v134 = v133;
  }

  if (v134 >= v100)
  {
    v134 = v100;
  }

  if (!v134 || !sourceColumns || !v124)
  {
    goto LABEL_90;
  }

  v357 = v134;
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    objc_msgSend_rows(resultValueMatrix, v41, v42, v43, v44, v45, v46, v47);
    v142 = objc_msgSend_rows(resultValueMatrix, v135, v136, v137, v138, v139, v140, v141);
    if (alongColumns)
    {
      if (v377 + sourceColumns > v142 && MTLReportFailureTypeEnabled())
      {
        v331 = objc_opt_class();
        v338 = NSStringFromClass(v331);
        MTLReportFailure();
      }

      objc_msgSend_columns(resultValueMatrix, v143, v144, v145, v146, v147, v148, v149, v338);
      if (v378 + numberOfTopKValues > objc_msgSend_columns(resultValueMatrix, v150, v151, v152, v153, v154, v155, v156) && MTLReportFailureTypeEnabled())
      {
        v333 = objc_opt_class();
        v339 = NSStringFromClass(v333);
        MTLReportFailure();
      }

      objc_msgSend_rows(inputMatrix, v157, v158, v159, v160, v161, v162, v163, v339);
      if (v380 + numberOfTopKValues <= objc_msgSend_rows(inputMatrix, v164, v165, v166, v167, v168, v169, v170) || (MTLReportFailureTypeEnabled() & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    else
    {
      if (v377 + v124 > v142 && MTLReportFailureTypeEnabled())
      {
        v332 = objc_opt_class();
        v338 = NSStringFromClass(v332);
        MTLReportFailure();
      }

      objc_msgSend_columns(resultValueMatrix, v143, v144, v145, v146, v147, v148, v149, v338);
      if (v378 + numberOfTopKValues > objc_msgSend_columns(resultValueMatrix, v171, v172, v173, v174, v175, v176, v177) && MTLReportFailureTypeEnabled())
      {
        v334 = objc_opt_class();
        v340 = NSStringFromClass(v334);
        MTLReportFailure();
      }

      objc_msgSend_columns(inputMatrix, v178, v179, v180, v181, v182, v183, v184, v340);
      if (v381 + numberOfTopKValues <= objc_msgSend_columns(inputMatrix, v185, v186, v187, v188, v189, v190, v191) || !MTLReportFailureTypeEnabled())
      {
        goto LABEL_49;
      }
    }

    v335 = objc_opt_class();
    v338 = NSStringFromClass(v335);
    MTLReportFailure();
  }

LABEL_49:
  objc_msgSend_dataType(inputMatrix, v41, v42, v43, v44, v45, v46, v47, v338);
  if (alongColumns)
  {
    ComputeState = MPSLibrary::GetComputeState();
    objc_msgSend_setComputePipelineState_(v23, v193, ComputeState, v194, v195, v196, v197, v198);
    v206 = objc_msgSend_threadExecutionWidth(ComputeState, v199, v200, v201, v202, v203, v204, v205);
    v214 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v207, v208, v209, v210, v211, v212, v213);
    MPSLibrary::ReleaseComputeState();
    if (v367 >= (v206 << 6))
    {
      v206 <<= v214 >= 4 * v206;
      if (((*(&self->super.super.super.isa + *MEMORY[0x277CD7350]))[1477] & 4) != 0)
      {
        v287 = 1;
      }

      else
      {
        v287 = 2;
      }

      if (!v206)
      {
        goto LABEL_80;
      }
    }

    else
    {
      if (v367 < 8)
      {
        v220 = 1;
LABEL_78:
        v287 = v206;
        v341 = (v367 + v220 - 1) / v220;
LABEL_81:
        v343 = v287;
        v344 = v220;
        v288 = 8 * v220 * v287;
        v289 = 2;
        if (numberOfTopKValues > 0xC)
        {
          v289 = 3;
        }

        objc_msgSend_setThreadgroupMemoryLength_atIndex_(v23, v215, (v288 << v289) + v288, 0, v216, v217, v218, v219);
        v294 = *MEMORY[0x277CD7398];
        v295 = *(&inputMatrix->super.isa + v294);
        v351 = *(&resultValueMatrix->super.isa + v294);
        v355 = *(&resultIndexMatrix->super.isa + v294);
        v296 = *MEMORY[0x277CD73B0];
        v297 = *(&inputMatrix->super.isa + v296);
        v298 = *MEMORY[0x277CD73A8];
        v299 = *(&inputMatrix->super.isa + v298);
        v349 = *(&resultValueMatrix->super.isa + v296);
        v347 = *(&resultValueMatrix->super.isa + v298);
        v353 = *(&resultIndexMatrix->super.isa + v296);
        v300 = (inputMatrix + *MEMORY[0x277CD7388]);
        v301 = *(&resultIndexMatrix->super.isa + v298);
        explicit = atomic_load_explicit(v300, memory_order_acquire);
        if (!explicit)
        {
          MPSAutoBuffer::AllocateBuffer(v300, 0);
          explicit = atomic_load_explicit(v300, memory_order_acquire);
        }

        objc_msgSend_setBuffer_offset_atIndex_(v23, v290, explicit, v381 * (v295 >> 3) + v297 * v380 + v299 + v361 * v372, 1, v291, v292, v293);
        v307 = (resultIndexMatrix + *MEMORY[0x277CD7388]);
        v308 = atomic_load_explicit(v307, memory_order_acquire);
        if (!v308)
        {
          MPSAutoBuffer::AllocateBuffer(v307, 0);
          v308 = atomic_load_explicit(v307, memory_order_acquire);
        }

        objc_msgSend_setBuffer_offset_atIndex_(v23, v303, v308, v378 * (v355 >> 3) + v353 * v377 + v301 + v361 * v374, 2, v304, v305, v306);
        v313 = (resultValueMatrix + *MEMORY[0x277CD7388]);
        v314 = atomic_load_explicit(v313, memory_order_acquire);
        if (!v314)
        {
          MPSAutoBuffer::AllocateBuffer(v313, 0);
          v314 = atomic_load_explicit(v313, memory_order_acquire);
        }

        objc_msgSend_setBuffer_offset_atIndex_(v23, v309, v314, v378 * (v351 >> 3) + v349 * v377 + v347 + v361 * v371, 3, v310, v311, v312);
        objc_msgSend_setBytes_length_atIndex_(v23, v315, &v367, 48, 0, v316, v317, v318);
        v364 = v341;
        v365 = v357;
        v366 = 1;
        v362 = v344;
        v363.i64[0] = v343;
        v363.i64[1] = 1;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v23, v319, &v364, &v362, v320, v321, v322, v323);
        goto LABEL_90;
      }

      if (v367 < 0x20)
      {
        v220 = 16;
        v206 = 16;
        goto LABEL_78;
      }

      v287 = 4;
      if (!v206)
      {
LABEL_80:
        v220 = 0;
        v341 = 0;
        goto LABEL_81;
      }
    }

    v220 = v206;
    v206 = v287;
    goto LABEL_78;
  }

  v221 = MPSLibrary::GetComputeState();
  objc_msgSend_setComputePipelineState_(v23, v222, v221, v223, v224, v225, v226, v227);
  v235 = objc_msgSend_threadExecutionWidth(v221, v228, v229, v230, v231, v232, v233, v234);
  v243 = objc_msgSend_maxTotalThreadsPerThreadgroup(v221, v236, v237, v238, v239, v240, v241, v242);
  MPSLibrary::ReleaseComputeState();
  v345 = HIDWORD(v367);
  v249 = 64;
  if (v367 <= 0x3FF)
  {
    v249 = v235;
  }

  if (v367 > 0x7FF)
  {
    v249 = 128;
  }

  if (v249 >= v243)
  {
    v249 = v243;
  }

  if (v249 >= v367)
  {
    v250 = v235;
  }

  else
  {
    v250 = v249;
  }

  v342 = v250;
  v251 = 8 * v250;
  v252 = 2;
  if (numberOfTopKValues > 0xC)
  {
    v252 = 3;
  }

  objc_msgSend_setThreadgroupMemoryLength_atIndex_(v23, v244, (v251 << v252) + v251, 0, v245, v246, v247, v248);
  v257 = *MEMORY[0x277CD7398];
  v258 = *(&inputMatrix->super.isa + v257);
  v350 = *(&resultValueMatrix->super.isa + v257);
  v354 = *(&resultIndexMatrix->super.isa + v257);
  v259 = *MEMORY[0x277CD73B0];
  v260 = *(&inputMatrix->super.isa + v259);
  v261 = *MEMORY[0x277CD73A8];
  v262 = *(&inputMatrix->super.isa + v261);
  v348 = *(&resultValueMatrix->super.isa + v259);
  v346 = *(&resultValueMatrix->super.isa + v261);
  v352 = *(&resultIndexMatrix->super.isa + v259);
  v263 = (inputMatrix + *MEMORY[0x277CD7388]);
  v264 = *(&resultIndexMatrix->super.isa + v261);
  v265 = atomic_load_explicit(v263, memory_order_acquire);
  if (!v265)
  {
    MPSAutoBuffer::AllocateBuffer(v263, 0);
    v265 = atomic_load_explicit(v263, memory_order_acquire);
  }

  objc_msgSend_setBuffer_offset_atIndex_(v23, v253, v265, v381 * (v258 >> 3) + v260 * v380 + v262 + v361 * v372, 1, v254, v255, v256);
  v270 = (resultIndexMatrix + *MEMORY[0x277CD7388]);
  v271 = atomic_load_explicit(v270, memory_order_acquire);
  if (!v271)
  {
    MPSAutoBuffer::AllocateBuffer(v270, 0);
    v271 = atomic_load_explicit(v270, memory_order_acquire);
  }

  objc_msgSend_setBuffer_offset_atIndex_(v23, v266, v271, v378 * (v354 >> 3) + v352 * v377 + v264 + v361 * v374, 2, v267, v268, v269);
  v276 = (resultValueMatrix + *MEMORY[0x277CD7388]);
  v277 = atomic_load_explicit(v276, memory_order_acquire);
  if (!v277)
  {
    MPSAutoBuffer::AllocateBuffer(v276, 0);
    v277 = atomic_load_explicit(v276, memory_order_acquire);
  }

  objc_msgSend_setBuffer_offset_atIndex_(v23, v272, v277, v378 * (v350 >> 3) + v348 * v377 + v346 + v361 * v371, 3, v273, v274, v275);
  objc_msgSend_setBytes_length_atIndex_(v23, v278, &v367, 48, 0, v279, v280, v281);
  v364 = v345;
  v365 = v357;
  v366 = 1;
  v362 = v342;
  v363 = vdupq_n_s64(1uLL);
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v23, v282, &v364, &v362, v283, v284, v285, v286);
LABEL_90:
  objc_msgSend_endEncoding(v23, v41, v42, v43, v44, v45, v46, v47);
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v13.receiver = self;
  v13.super_class = MPSMatrixFindTopK;
  v4 = [(MPSMatrixUnaryKernel *)&v13 debugDescription];
  numberOfTopKValues = self->_numberOfTopKValues;
  return objc_msgSend_stringWithFormat_(v3, v6, @"%@\n\tsourceRows:  \t\t\t%lu\n\tsourceColumns: \t\t\t%lu\n\tnumberOfTopKValues:\t\t%lu\n\tindexOffset:\t%lu\n", v7, v8, v9, v10, v11, v4, self->_sourceRows, self->_sourceColumns, numberOfTopKValues, self->_indexOffset);
}

@end