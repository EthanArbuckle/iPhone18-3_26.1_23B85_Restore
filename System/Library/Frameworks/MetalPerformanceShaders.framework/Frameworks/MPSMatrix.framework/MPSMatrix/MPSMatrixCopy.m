@interface MPSMatrixCopy
- (MPSMatrixCopy)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (MPSMatrixCopy)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSMatrixCopy)initWithDevice:(id)device copyRows:(NSUInteger)copyRows copyColumns:(NSUInteger)copyColumns sourcesAreTransposed:(BOOL)sourcesAreTransposed destinationsAreTransposed:(BOOL)destinationsAreTransposed;
- (id)debugDescription;
- (void)encodeToCommandBuffer:(id)a3 encoder:(id)a4 copyDescriptor:(id)a5 rowPermuteIndices:(id)a6 rowPermuteOffset:(unint64_t)a7 columnPermuteIndices:(id)a8 columnPermuteOffset:(unint64_t)a9;
- (void)encodeToCommandBuffer:(id)commandBuffer copyDescriptor:(MPSMatrixCopyDescriptor *)copyDescriptor rowPermuteIndices:(MPSVector *)rowPermuteIndices rowPermuteOffset:(NSUInteger)rowPermuteOffset columnPermuteIndices:(MPSVector *)columnPermuteIndices columnPermuteOffset:(NSUInteger)columnPermuteOffset;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSMatrixCopy

- (MPSMatrixCopy)initWithDevice:(id)device copyRows:(NSUInteger)copyRows copyColumns:(NSUInteger)copyColumns sourcesAreTransposed:(BOOL)sourcesAreTransposed destinationsAreTransposed:(BOOL)destinationsAreTransposed
{
  if (*(&self->super.super.isa + *MEMORY[0x277CD7378]))
  {
    goto LABEL_4;
  }

  if (!copyRows)
  {
    v12 = self;
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (!copyColumns)
  {
    v12 = self;
    if (MTLReportFailureTypeEnabled())
    {
LABEL_10:
      v13 = objc_opt_class();
      NSStringFromClass(v13);
      MTLReportFailure();
    }

LABEL_11:

    return 0;
  }

LABEL_4:
  v14.receiver = self;
  v14.super_class = MPSMatrixCopy;
  result = [(MPSKernel *)&v14 initWithDevice:device];
  if (result)
  {
    result->_copyColumns = copyColumns;
    result->_copyRows = copyRows;
    result->_sourcesAreTransposed = sourcesAreTransposed;
    result->_destinationsAreTransposed = destinationsAreTransposed;
  }

  return result;
}

- (void)encodeToCommandBuffer:(id)commandBuffer copyDescriptor:(MPSMatrixCopyDescriptor *)copyDescriptor rowPermuteIndices:(MPSVector *)rowPermuteIndices rowPermuteOffset:(NSUInteger)rowPermuteOffset columnPermuteIndices:(MPSVector *)columnPermuteIndices columnPermuteOffset:(NSUInteger)columnPermuteOffset
{
  v15 = objc_msgSend_filledCount(copyDescriptor, a2, commandBuffer, copyDescriptor, rowPermuteIndices, rowPermuteOffset, columnPermuteIndices, columnPermuteOffset);
  if (v15)
  {
    v16 = v15;
    v17 = objc_alloc(MEMORY[0x277CD7210]);
    v30 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v17, v18, commandBuffer, 0, v19, v20, v21, v22);
    if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
    {
      v24 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
      if (v24 || (v31 = objc_opt_class(), v32 = NSStringFromClass(v31), objc_msgSend_setLabel_(self, v33, v32, v34, v35, v36, v37, v38), (v24 = v32) != 0))
      {
        objc_msgSend_setLabel_(v30, v23, v24, v25, v26, v27, v28, v29);
      }
    }

    v39 = objc_msgSend_sourceMatrices(copyDescriptor, v23, v24, v25, v26, v27, v28, v29);
    objc_msgSend_encodeToCommandBuffer_encoder_copyDescriptor_rowPermuteIndices_rowPermuteOffset_columnPermuteIndices_columnPermuteOffset_(self, v40, commandBuffer, v30, copyDescriptor, rowPermuteIndices, rowPermuteOffset, columnPermuteIndices, columnPermuteOffset);
    v48 = MEMORY[0x277CD7388];
    do
    {
      v49 = *v39;
      if (*v39 && *(&v49[3].super.super.isa + *v48))
      {
        MPSDecrementReadCount(v49);
      }

      ++v39;
      --v16;
    }

    while (v16);
    v50 = MEMORY[0x277CD74A0];
    if (columnPermuteIndices && *(&columnPermuteIndices[3].super.isa + *MEMORY[0x277CD74A0]))
    {
      MPSDecrementReadCount(columnPermuteIndices);
    }

    if (rowPermuteIndices)
    {
      if (*(&rowPermuteIndices[3].super.isa + *v50))
      {
        MPSDecrementReadCount(rowPermuteIndices);
      }
    }

    objc_msgSend_endEncoding(v30, v41, v42, v43, v44, v45, v46, v47);
  }
}

- (void)encodeToCommandBuffer:(id)a3 encoder:(id)a4 copyDescriptor:(id)a5 rowPermuteIndices:(id)a6 rowPermuteOffset:(unint64_t)a7 columnPermuteIndices:(id)a8 columnPermuteOffset:(unint64_t)a9
{
  v357 = *MEMORY[0x277D85DE8];
  v337 = objc_msgSend_filledCount(a5, a2, a3, a4, a5, a6, a7, a8);
  if (v337)
  {
    v313 = a4;
    v326 = objc_msgSend_sourceMatrices(a5, v14, v15, v16, v17, v18, v19, v20);
    v333 = objc_msgSend_destinationMatrices(a5, v21, v22, v23, v24, v25, v26, v27);
    v334 = objc_msgSend_cpuOffsetsVector(a5, v28, v29, v30, v31, v32, v33, v34);
    v335 = self;
    v314 = a6;
    v315 = a8;
    if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0)
    {
      if (objc_msgSend_allocCount(a5, v35, v36, v37, v38, v39, v40, v41) != v337 && MTLReportFailureTypeEnabled())
      {
        v303 = objc_opt_class();
        v307 = NSStringFromClass(v303);
        MTLReportFailure();
      }

      if (!a3 && MTLReportFailureTypeEnabled())
      {
        v304 = objc_opt_class();
        v307 = NSStringFromClass(v304);
        MTLReportFailure();
      }

      if (!v326 && MTLReportFailureTypeEnabled())
      {
        v305 = objc_opt_class();
        v307 = NSStringFromClass(v305);
        MTLReportFailure();
      }

      if (!v333 && MTLReportFailureTypeEnabled())
      {
        v306 = objc_opt_class();
        v307 = NSStringFromClass(v306);
        MTLReportFailure();
      }

      v42 = 0;
      v43 = (v334 + 8);
      do
      {
        if (v334)
        {
          v331 = *(v43 - 2);
          v44 = *v43;
          v329 = *(v43 - 1);
          v45 = v43[1];
        }

        else
        {
          v45 = 0;
          v44 = 0;
          v329 = 0;
          v331 = 0;
        }

        if (v337 == 1)
        {
          v46 = 0;
        }

        else
        {
          v46 = v42;
        }

        v47 = v326[v46];
        v48 = *(v333 + 8 * v46);
        v49 = objc_msgSend_columns(v48, v35, v36, v37, v38, v39, v40, v41, v307);
        v57 = objc_msgSend_rows(v48, v50, v51, v52, v53, v54, v55, v56);
        objc_msgSend_matrices(v48, v58, v59, v60, v61, v62, v63, v64);
        if (v335->_destinationsAreTransposed)
        {
          v72 = v44;
        }

        else
        {
          v72 = v45;
        }

        if (v335->_destinationsAreTransposed)
        {
          v73 = v45;
        }

        else
        {
          v73 = v44;
        }

        destinationsAreTransposed = v335->_destinationsAreTransposed;
        v75 = *(&v335->super.super.isa + OBJC_IVAR___MPSMatrixCopy__copyColumns[destinationsAreTransposed]);
        v76 = !v335->_destinationsAreTransposed;
        v77 = *(&v335->super.super.isa + OBJC_IVAR___MPSMatrixCopy__copyColumns[v76]);
        v324 = v75;
        if (v72 + v75 > v49)
        {
          v101 = v77;
          v102 = MTLReportFailureTypeEnabled();
          v77 = v101;
          if (v102)
          {
            v103 = objc_opt_class();
            v308 = NSStringFromClass(v103);
            MTLReportFailure();
            v77 = v101;
          }
        }

        v327 = v77;
        if (v77 + v73 > v57 && MTLReportFailureTypeEnabled())
        {
          v104 = objc_opt_class();
          v308 = NSStringFromClass(v104);
          MTLReportFailure();
        }

        if (v335->_sourcesAreTransposed)
        {
          v78 = v331;
        }

        else
        {
          v78 = v329;
        }

        if (v335->_sourcesAreTransposed)
        {
          v79 = v329;
        }

        else
        {
          v79 = v331;
        }

        v80 = objc_msgSend_columns(v47, v65, v66, v67, v68, v69, v70, v71, v308);
        v88 = objc_msgSend_rows(v47, v81, v82, v83, v84, v85, v86, v87);
        objc_msgSend_matrices(v47, v89, v90, v91, v92, v93, v94, v95);
        v96 = 1;
        sourcesAreTransposed = v335->_sourcesAreTransposed;
        v98 = *(&v335->super.super.isa + OBJC_IVAR___MPSMatrixCopy__copyColumns[sourcesAreTransposed]);
        if (v335->_sourcesAreTransposed)
        {
          v96 = 0;
        }

        v99 = *(&v335->super.super.isa + OBJC_IVAR___MPSMatrixCopy__copyColumns[v96]);
        if (v98 + v78 > v80 && MTLReportFailureTypeEnabled())
        {
          v105 = objc_opt_class();
          v307 = NSStringFromClass(v105);
          MTLReportFailure();
        }

        if (v99 + v79 > v88 && MTLReportFailureTypeEnabled())
        {
          v106 = objc_opt_class();
          v307 = NSStringFromClass(v106);
          MTLReportFailure();
        }

        if (v315 && v324 + a9 > objc_msgSend_length(v315, v35, v36, v37, v38, v39, v40, v41) && MTLReportFailureTypeEnabled())
        {
          v107 = objc_opt_class();
          v307 = NSStringFromClass(v107);
          MTLReportFailure();
        }

        if (v314 && v327 + a7 > objc_msgSend_length(v314, v35, v36, v37, v38, v39, v40, v41) && MTLReportFailureTypeEnabled())
        {
          v100 = objc_opt_class();
          v307 = NSStringFromClass(v100);
          MTLReportFailure();
        }

        ++v42;
        v43 += 4;
      }

      while (v337 != v42);
    }

    v312 = objc_msgSend_gpuOffsetsVector(a5, v35, v36, v37, v38, v39, v40, v41, v307);
    v310 = objc_msgSend_gpuBufferOffset(a5, v108, v109, v110, v111, v112, v113, v114);
    v311 = *(&v335->super.super.isa + *MEMORY[0x277CD7370]);
    v115 = v335->_destinationsAreTransposed;
    v116 = v335->_sourcesAreTransposed;
    copyRows = v335->_copyRows;
    copyColumns = v335->_copyColumns;
    v345 = copyRows;
    v346 = objc_msgSend_matrices(*v326, v118, v119, v120, v121, v122, v123, v124);
    v332 = v115;
    v347 = v115;
    v330 = v116;
    v348 = v116;
    if ((objc_msgSend_dataType(*v326, v125, v126, v127, v128, v129, v130, v131) & 0xFFF8) == 0x20)
    {
      v139 = 2;
    }

    else
    {
      v139 = (objc_msgSend_dataType(*v326, v132, v133, v134, v135, v136, v137, v138) & 0xFFF8) == 16;
    }

    v328 = v139;
    v140 = 0;
    v309 = 4 * a7;
    v141 = (v334 + 8);
    v142 = MEMORY[0x277CD7388];
    v143 = v337;
    do
    {
      v153 = 0;
      v356 = 0;
      v320 = v143 - 13;
      if (v143 >= 0xD)
      {
        v154 = 13;
      }

      else
      {
        v154 = v143;
      }

      if (v154 <= 1)
      {
        v154 = 1;
      }

      v317 = v143;
      v318 = 13 - v154;
      v155 = (13 - v154) & 0xFFFFFFFFFFFFFFFCLL;
      v316 = v154;
      v156 = &v354[v154 + 2];
      v336 = 8 * v154;
      v157 = &v351[v154 + 2];
      memset(v355, 0, sizeof(v355));
      v353 = 0;
      memset(v352, 0, sizeof(v352));
      v322 = v141;
      v325 = v140;
      v158 = v140;
      v159 = &v349;
      v160 = *MEMORY[0x277CD73B0];
      v161 = v326;
      do
      {
        if (v337 == 1)
        {
          v175 = 0;
        }

        else
        {
          v175 = v158;
        }

        v176 = v161[v175];
        v177 = *(v333 + 8 * v175);
        v178 = &v343[v153];
        v179 = *MEMORY[0x277CD73A0];
        v180 = *&v176[v179] >> v328;
        *v178 = *&v176[v160] >> v328;
        v178[1] = v180;
        v181 = *(v177 + v179) >> v328;
        v178[26] = *(v177 + v160) >> v328;
        v178[27] = v181;
        v182 = &v176[*v142];
        explicit = atomic_load_explicit(v182, memory_order_acquire);
        if (explicit)
        {
          v354[v153 / 8] = explicit;
          v184 = (v177 + *v142);
          v185 = atomic_load_explicit(v184, memory_order_acquire);
          if (v185)
          {
            goto LABEL_93;
          }
        }

        else
        {
          MPSAutoBuffer::AllocateBuffer(v182, 0);
          v142 = MEMORY[0x277CD7388];
          v161 = v326;
          v354[v153 / 8] = atomic_load_explicit(v182, memory_order_acquire);
          v184 = (v177 + *v142);
          v185 = atomic_load_explicit(v184, memory_order_acquire);
          if (v185)
          {
LABEL_93:
            v351[v153 / 8] = v185;
            v164 = v334;
            if (v334)
            {
              goto LABEL_70;
            }

            goto LABEL_97;
          }
        }

        MPSAutoBuffer::AllocateBuffer(v184, 0);
        v142 = MEMORY[0x277CD7388];
        v161 = v326;
        v351[v153 / 8] = atomic_load_explicit(v184, memory_order_acquire);
        v164 = v334;
        if (v334)
        {
LABEL_70:
          v162 = *(v141 - 2);
          v163 = *(v141 - 1);
          v164 = *v141;
          v165 = v141[1];
          goto LABEL_71;
        }

LABEL_97:
        v165 = 0;
        v163 = 0;
        v162 = 0;
LABEL_71:
        if (v330)
        {
          v166 = v162;
        }

        else
        {
          v166 = v163;
        }

        if (v330)
        {
          v162 = v163;
        }

        v167 = *MEMORY[0x277CD73A8];
        v168 = *MEMORY[0x277CD7398];
        v169 = *MEMORY[0x277CD73B0];
        *(v355 + v153) = *&v176[v167] + *&v176[v169] * v162 + v166 * (*&v176[v168] >> 3);
        if (v332)
        {
          v170 = v164;
        }

        else
        {
          v170 = v165;
        }

        if (v332)
        {
          v164 = v165;
        }

        v171 = *(v177 + *MEMORY[0x277CD7390]);
        if (v171 <= v170)
        {
          v172 = 0;
        }

        else
        {
          v172 = v171 - v170;
        }

        *v159 = v172;
        v173 = *(v177 + *MEMORY[0x277CD73B8]);
        if (v173 <= v164)
        {
          v174 = 0;
        }

        else
        {
          v174 = v173 - v164;
        }

        *(v352 + v153) = *(v177 + v167) + *(v177 + v169) * v164 + v170 * (*(v177 + v168) >> 3);
        v153 += 8;
        v159[13] = v174;
        ++v159;
        ++v158;
        v141 += 4;
        v160 = v169;
      }

      while (v336 != v153);
      v186 = v337 - v325;
      if (v337 - v325 >= 0xD)
      {
        v186 = 13;
      }

      v319 = v186;
      if (v317 <= 0xC)
      {
        bzero(v355 + v336, 104 - v336);
        bzero(v352 + v336, 104 - v336);
        v161 = v326;
        v187 = v354[0];
        v188 = v351[0];
        if (v318 <= 3)
        {
          goto LABEL_105;
        }

        v316 += v318 & 0xFFFFFFFFFFFFFFFCLL;
        v189 = vdupq_n_s64(v354[0]);
        v190 = vdupq_n_s64(v351[0]);
        do
        {
          *(v156 - 1) = v189;
          *v156 = v189;
          v156 += 4;
          *(v157 - 1) = v190;
          *v157 = v190;
          v157 += 4;
          v155 -= 4;
        }

        while (v155);
        if (v318 != (v318 & 0xFFFFFFFFFFFFFFFCLL))
        {
LABEL_105:
          v191 = v316;
          do
          {
            v354[v191] = v187;
            v351[v191++] = v188;
          }

          while (v191 != 13);
        }
      }

      v192 = *(*v161 + v168) >> 3;
      ComputeState = MPSLibrary::GetComputeState();
      objc_msgSend_setComputePipelineState_(v313, v194, ComputeState, v195, v196, v197, v198, v199);
      v207 = objc_msgSend_threadExecutionWidth(ComputeState, v200, v201, v202, v203, v204, v205, v206);
      if (v207 <= 1)
      {
        v208 = 1;
      }

      else
      {
        v208 = v207;
      }

      MPSLibrary::ReleaseComputeState();
      v212 = v345;
      v213 = copyColumns;
      if (v345 <= copyColumns)
      {
        v214 = 1;
      }

      else
      {
        v214 = v208;
      }

      if (v345 > copyColumns)
      {
        v215 = 1;
      }

      else
      {
        v215 = v208;
      }

      objc_msgSend_setBuffers_offsets_withRange_(v313, v209, v354, v355, 1, 13, v210, v211);
      objc_msgSend_setBuffers_offsets_withRange_(v313, v216, v351, v352, 14, 13, v217, v218);
      if (!v312)
      {
        objc_msgSend_setBuffer_offset_atIndex_(v313, v219, v354[0], 0, 27, v220, v221, v222);
        v350 = 0;
        if (v314)
        {
          goto LABEL_123;
        }

LABEL_129:
        objc_msgSend_setBuffer_offset_atIndex_(v313, v235, v354[0], 0, 28, v239, v240, v241);
        v269 = v325;
        if (!v315)
        {
          goto LABEL_62;
        }

        goto LABEL_130;
      }

      v223 = v214;
      v224 = *MEMORY[0x277CD74A0];
      v225 = (v312 + v224);
      v226 = atomic_load_explicit((v312 + v224), memory_order_acquire);
      if (!v226)
      {
        MPSAutoBuffer::AllocateBuffer((v312 + v224), 0);
        v226 = atomic_load_explicit(v225, memory_order_acquire);
      }

      objc_msgSend_setBuffer_offset_atIndex_(v313, v219, v226, v310 + 16 * v325, 27, v220, v221, v222);
      v350 = 1;
      v234 = objc_msgSend_retainedReferences(a3, v227, v228, v229, v230, v231, v232, v233);
      v214 = v223;
      if (!v325 && (v234 & 1) == 0)
      {
        v242 = v226;
        v342[0] = MEMORY[0x277D85DD0];
        v342[1] = 3221225472;
        v342[2] = sub_2399DB2D8;
        v342[3] = &unk_278AFD238;
        v342[4] = v226;
        objc_msgSend_addCompletedHandler_(a3, v243, v342, v244, v245, v246, v247, v248);
      }

      if (!v314)
      {
        goto LABEL_129;
      }

LABEL_123:
      v249 = objc_msgSend_data(v314, v235, v236, v237, v238, v239, v240, v241);
      objc_msgSend_setBuffer_offset_atIndex_(v313, v250, v249, v309, 28, v251, v252, v253);
      v261 = objc_msgSend_retainedReferences(a3, v254, v255, v256, v257, v258, v259, v260);
      v269 = v325;
      if (!v325 && (v261 & 1) == 0)
      {
        v270 = objc_msgSend_data(v314, v262, v263, v264, v265, v266, v267, v268);
        v271 = v270;
        v341[0] = MEMORY[0x277D85DD0];
        v341[1] = 3221225472;
        v341[2] = sub_2399DB2E0;
        v341[3] = &unk_278AFD238;
        v341[4] = v270;
        objc_msgSend_addCompletedHandler_(a3, v272, v341, v273, v274, v275, v276, v277);
      }

      if (!v315)
      {
LABEL_62:
        objc_msgSend_setBuffer_offset_atIndex_(v313, v262, v354[0], 0, 29, v266, v267, v268);
        goto LABEL_63;
      }

LABEL_130:
      v278 = objc_msgSend_data(v315, v262, v263, v264, v265, v266, v267, v268);
      objc_msgSend_setBuffer_offset_atIndex_(v313, v279, v278, 4 * a9, 29, v280, v281, v282);
      v290 = objc_msgSend_retainedReferences(a3, v283, v284, v285, v286, v287, v288, v289);
      if (!v269 && (v290 & 1) == 0)
      {
        v294 = objc_msgSend_data(v315, v144, v291, v292, v293, v145, v146, v147);
        v295 = v294;
        v340[0] = MEMORY[0x277D85DD0];
        v340[1] = 3221225472;
        v340[2] = sub_2399DB2E8;
        v340[3] = &unk_278AFD238;
        v340[4] = v294;
        objc_msgSend_addCompletedHandler_(a3, v296, v340, v297, v298, v299, v300, v301);
      }

LABEL_63:
      objc_msgSend_setBytes_length_atIndex_(v313, v144, v343, 332, 0, v145, v146, v147);
      v339[0] = (v213 + v215 - 1) / v215;
      v339[1] = (v212 + v214 - 1) / v214;
      v339[2] = v319;
      v338[0] = v215;
      v338[1] = v214;
      v338[2] = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v313, v148, v339, v338, v149, v150, v151, v152);
      v140 = v269 + 13;
      v143 = v320;
      v141 = v322 + 52;
      v142 = MEMORY[0x277CD7388];
    }

    while (v140 < v337);
  }

  v302 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:(id)a3
{
  *(&self->super.super.isa + *MEMORY[0x277CD7358]) = *(&self->super.super.isa + *MEMORY[0x277CD7358]) | 0x10100;
  v25.receiver = self;
  v25.super_class = MPSMatrixCopy;
  [(MPSKernel *)&v25 encodeWithCoder:?];
  objc_msgSend_encodeBool_forKey_(a3, v5, self->_sourcesAreTransposed, @"MPSMatrixLookUpAndCopy.transposeSource", v6, v7, v8, v9);
  objc_msgSend_encodeBool_forKey_(a3, v10, self->_destinationsAreTransposed, @"MPSMatrixLookUpAndCopy.transposeDestination", v11, v12, v13, v14);
  objc_msgSend_encodeInt64_forKey_(a3, v15, self->_copyRows, @"MPSMatrixLookUpAndCopy.copyRows", v16, v17, v18, v19);
  objc_msgSend_encodeInt64_forKey_(a3, v20, self->_copyColumns, @"MPSMatrixLookUpAndCopy.copyColumns", v21, v22, v23, v24);
}

- (MPSMatrixCopy)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7358]) & 0xFFFF0000) == 0x10000)
  {
    v35.receiver = self;
    v35.super_class = MPSMatrixCopy;
    result = [(MPSKernel *)&v35 initWithCoder:aDecoder device:device];
    if (result)
    {
      v12 = result;
      result->_sourcesAreTransposed = objc_msgSend_decodeBoolForKey_(aDecoder, v6, @"MPSMatrixLookUpAndCopy.transposeSource", v7, v8, v9, v10, v11);
      v12->_destinationsAreTransposed = objc_msgSend_decodeBoolForKey_(aDecoder, v13, @"MPSMatrixLookUpAndCopy.transposeDestination", v14, v15, v16, v17, v18);
      v12->_copyRows = objc_msgSend_decodeInt64ForKey_(aDecoder, v19, @"MPSMatrixLookUpAndCopy.copyRows", v20, v21, v22, v23, v24);
      v31 = objc_msgSend_decodeInt64ForKey_(aDecoder, v25, @"MPSMatrixLookUpAndCopy.copyColumns", v26, v27, v28, v29, v30);
      result = v12;
      v12->_copyColumns = v31;
    }
  }

  else
  {
    if ((*(&self->super.super.isa + *MEMORY[0x277CD7358]) & 0xFF00) != 0x100)
    {
      v32 = self;
      v33 = MTLReportFailureTypeEnabled();
      self = v32;
      if (v33)
      {
        v34 = objc_opt_class();
        NSStringFromClass(v34);
        MTLReportFailure();
        self = v32;
      }
    }

    return 0;
  }

  return result;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v14.receiver = self;
  v14.super_class = MPSMatrixCopy;
  v4 = [(MPSKernel *)&v14 debugDescription];
  v11 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
  if (!v11)
  {
    v11 = &stru_284CAA7D8;
  }

  if (self->_destinationsAreTransposed)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  if (self->_sourcesAreTransposed)
  {
    return objc_msgSend_stringWithFormat_(v3, v5, @"%@ %@\n\transposeDestination (%@) transposeSource (%@) subMatrixRows: %ld \n\tsubMatrixColumns: %ld \n\tdevice: %p", v6, v7, v8, v9, v10, v4, v11, v12, @"YES", self->_copyRows, self->_copyColumns, (*(&self->super.super.isa + *MEMORY[0x277CD7350]))[2]);
  }

  else
  {
    return objc_msgSend_stringWithFormat_(v3, v5, @"%@ %@\n\transposeDestination (%@) transposeSource (%@) subMatrixRows: %ld \n\tsubMatrixColumns: %ld \n\tdevice: %p", v6, v7, v8, v9, v10, v4, v11, v12, @"NO", self->_copyRows, self->_copyColumns, (*(&self->super.super.isa + *MEMORY[0x277CD7350]))[2]);
  }
}

- (MPSMatrixCopy)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v6.receiver = self;
  v6.super_class = MPSMatrixCopy;
  result = [(MPSKernel *)&v6 copyWithZone:a3 device:a4];
  if (result)
  {
    result->_destinationsAreTransposed = self->_destinationsAreTransposed;
    result->_sourcesAreTransposed = self->_sourcesAreTransposed;
    result->_copyColumns = self->_copyColumns;
    result->_copyRows = self->_copyRows;
  }

  return result;
}

@end