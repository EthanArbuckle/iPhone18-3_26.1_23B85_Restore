@interface MPSNNConcatenation
- (MPSNNConcatenation)initWithCoder:(id)coder device:(id)device;
- (MPSNNConcatenation)initWithDevice:(id)device;
- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states paddingMethod:(unint64_t)method sourceOffset:(id *)offset;
- (id)resultStateBatchForSourceImages:(id)images sourceStates:(id)states destinationImage:(id)image;
- (id)resultStateForSourceImages:(id)images sourceStates:(id)states destinationImage:(id)image;
- (id)temporaryResultStateBatchForCommandBuffer:(id)buffer sourceImages:(id)images sourceStates:(id)states destinationImage:(id)image;
- (id)temporaryResultStateForCommandBuffer:(id)buffer sourceImages:(id)images sourceStates:(id)states destinationImage:(id)image;
- (void)copyToGradientState:(id)state sourceImages:(id)images sourceStates:(id)states destinationImage:(id)image;
- (void)encodeBatchToCommandBuffer:(id)buffer sourceImages:(id)images destinationImage:(id)image;
- (void)encodeToCommandBuffer:(id)buffer sourceImages:(id)images destinationImage:(id)image;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSNNConcatenation

- (MPSNNConcatenation)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNNConcatenation;
  result = [(MPSCNNKernel *)&v4 initWithDevice:device];
  if (result)
  {
    *(&result->super.super.super.isa + *MEMORY[0x277CD7348]) = 31;
  }

  return result;
}

- (MPSNNConcatenation)initWithCoder:(id)coder device:(id)device
{
  v7.receiver = self;
  v7.super_class = MPSNNConcatenation;
  result = [(MPSCNNKernel *)&v7 initWithCoder:coder device:device];
  if (result && *(&result->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 != 0x10000)
  {
    v5 = result;
    if (MTLReportFailureTypeEnabled())
    {
      v6 = objc_opt_class();
      NSStringFromClass(v6);
      MTLReportFailure();
    }

    return 0;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v3.receiver = self;
  v3.super_class = MPSNNConcatenation;
  [(MPSCNNKernel *)&v3 encodeWithCoder:coder];
}

- (void)encodeToCommandBuffer:(id)buffer sourceImages:(id)images destinationImage:(id)image
{
  v226 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.super.isa + v226) & 1) == 0)
  {
    if (!buffer && MTLReportFailureTypeEnabled())
    {
      v206 = objc_opt_class();
      v213 = NSStringFromClass(v206);
      MTLReportFailure();
    }

    if (!images && MTLReportFailureTypeEnabled())
    {
      v207 = objc_opt_class();
      v213 = NSStringFromClass(v207);
      MTLReportFailure();
    }

    if (!image && MTLReportFailureTypeEnabled())
    {
      v208 = objc_opt_class();
      v213 = NSStringFromClass(v208);
      MTLReportFailure();
    }

    v11 = *MEMORY[0x277CD7348];
    if ((*(&self->super.super.super.isa + v226) & ~*(&self->super.super.super.isa + v11)) != 0 && MTLReportFailureTypeEnabled())
    {
      v209 = objc_opt_class();
      v213 = NSStringFromClass(v209);
      v217 = *(&self->super.super.super.isa + v226) & ~*(&self->super.super.super.isa + v11);
      MTLReportFailure();
    }
  }

  if (images && image)
  {
    v12 = *(image + *MEMORY[0x277CD7318]);
    v220 = *(image + *MEMORY[0x277CD7300]);
    v13 = image + *MEMORY[0x277CD7320];
    v14 = *(image + *MEMORY[0x277CD72F8]);
    v22 = objc_msgSend_destinationFeatureChannelOffset(self, a2, buffer, images, image, v5, v6, v7);
    v23 = *(image + *MEMORY[0x277CD7330]);
    v24 = *(image + *MEMORY[0x277CD7308]);
    v223 = *(image + *MEMORY[0x277CD7310]);
    if ((*(&self->super.super.super.isa + v226) & 1) == 0)
    {
      if ((v12 & 0x200000000000) == 0 && MTLReportFailureTypeEnabled())
      {
        v211 = objc_opt_class();
        v213 = NSStringFromClass(v211);
        MTLReportFailure();
      }

      explicit = atomic_load_explicit(v13, memory_order_acquire);
      if ((v13[56] & 2) != 0)
      {
        v26 = v13;
        do
        {
          v26 = *(v26 + 5);
          explicit = atomic_load_explicit(v26, memory_order_acquire);
        }

        while ((v26[56] & 2) != 0);
      }

      else
      {
        v26 = v13;
      }

      if (!explicit)
      {
        explicit = *(v26 + 5);
      }

      if ((objc_msgSend_usage(explicit, v15, v16, v17, v18, v19, v20, v21, v213, v217) & 2) == 0 && MTLReportFailureTypeEnabled())
      {
        v212 = objc_opt_class();
        v213 = NSStringFromClass(v212);
        MTLReportFailure();
      }
    }

    v27 = atomic_load_explicit(v13, memory_order_acquire);
    if ((v13[56] & 2) == 0)
    {
      if (!v27)
      {
        v27 = *(v13 + 5);
      }

      objc_msgSend_textureType(v27, v15, v16, v17, v18, v19, v20, v21, v213);
    }

    ComputeState = MPSLibrary::GetComputeState();
    v35 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v28, v29, v30, v31, v32, v33, v34);
    v43 = 63 - __clz(v35);
    if (v35)
    {
      v44 = v43;
    }

    else
    {
      v44 = 0x8000000000000000;
    }

    v224 = objc_msgSend_count(images, v36, v37, v38, v39, v40, v41, v42, v213);
    if (!(*(&self->super.super.super.isa + v226) & 1 | v224) && MTLReportFailureTypeEnabled())
    {
      v210 = objc_opt_class();
      v214 = NSStringFromClass(v210);
      MTLReportFailure();
    }

    if (objc_msgSend_retainedReferences(buffer, v45, v46, v47, v48, v49, v50, v51, v214))
    {
      v228 = 0;
    }

    else
    {
      v52 = objc_opt_new();
      v244[0] = MEMORY[0x277D85DD0];
      v244[1] = 3221225472;
      v244[2] = sub_239BE312C;
      v244[3] = &unk_278B28F28;
      v228 = v52;
      v244[4] = v52;
      objc_msgSend_addCompletedHandler_(buffer, v53, v244, v54, v55, v56, v57, v58);
    }

    v59 = objc_alloc(MEMORY[0x277CD7210]);
    v72 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v59, v60, buffer, 0, v61, v62, v63, v64);
    v242 = v72;
    selfCopy = self;
    if ((*(&self->super.super.super.isa + v226) & 0x18) != 0)
    {
      v66 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
      if (v66 || (v73 = objc_opt_class(), v74 = NSStringFromClass(v73), objc_msgSend_setLabel_(self, v75, v74, v76, v77, v78, v79, v80), (v66 = v74) != 0))
      {
        objc_msgSend_setLabel_(v72, v65, v66, v67, v68, v69, v70, v71);
      }
    }

    if (v224)
    {
      v81 = v24;
      v82 = 0;
      v219 = (v14 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v83.i32[1] = 65537;
      v83.i16[0] = v23;
      v221 = 1 << (v44 - (v44 >> 1));
      v84 = 1 << (v44 >> 1);
      v83.i16[1] = v81;
      v227 = v83;
      for (i = objc_msgSend_objectAtIndexedSubscript_(images, v65, 0, v67, v68, v69, v70, v71); ; i = objc_msgSend_objectAtIndexedSubscript_(images, v65, v82, v67, v68, v69, v70, v71))
      {
        v93 = i;
        v94 = i + *MEMORY[0x277CD7320];
        v95 = *(i + *MEMORY[0x277CD72F8]);
        v230 = *(v94 + 56);
        if (*(i + *MEMORY[0x277CD7300]) != *(image + *MEMORY[0x277CD7300]) && MTLReportFailureTypeEnabled())
        {
          v201 = objc_opt_class();
          v215 = NSStringFromClass(v201);
          MTLReportFailure();
        }

        v96 = v95 + 3;
        v229 = v96 & 0xFFFFFFFFFFFFFFFCLL;
        if ((*(&self->super.super.super.isa + v226) & 1) == 0)
        {
          if ((v230 & 1) != 0 && !*(&v93->super.super.isa + *MEMORY[0x277CD7490]) && MTLReportFailureTypeEnabled())
          {
            v204 = objc_opt_class();
            v217 = v82;
            v218 = v93;
            v215 = NSStringFromClass(v204);
            MTLReportFailure();
          }

          if (*(&v93->super.super.isa + *MEMORY[0x277CD7300]) != v220 && MTLReportFailureTypeEnabled())
          {
            v202 = objc_opt_class();
            v215 = NSStringFromClass(v202);
            v217 = v82;
            MTLReportFailure();
          }

          if (v229 + v22 > v219 && MTLReportFailureTypeEnabled())
          {
            v203 = objc_opt_class();
            v215 = NSStringFromClass(v203);
            MTLReportFailure();
          }
        }

        v240 = 0uLL;
        v241 = 0;
        objc_msgSend_offset(self, v86, v87, v88, v89, v90, v91, v92, v215);
        v239 = 0;
        v104 = *(image + *MEMORY[0x277CD72F8]) + 3;
        v233 = 0;
        v234 = v227;
        v235 = 0x1000000000000;
        v236 = 65537;
        v237 = v96 >> 2;
        v238 = v223;
        v105 = *(image + *MEMORY[0x277CD7300]);
        if (v105 == 1)
        {
          *&v107 = 0;
          *(&v107 + 6) = ((v22 + 3) >> 2);
          v108 = v227;
          v108.i16[3] = v96 >> 2;
          v233 = v107;
          v234 = v108;
          HIWORD(v236) = v104 >> 2;
        }

        else if (!v105)
        {
          v106 = v227;
          v106.i16[0] = v96 >> 2;
          v233 = ((v22 + 3) >> 2);
          v234 = v106;
          LOWORD(v236) = v104 >> 2;
          v235 = 1;
        }

        v109 = image + *MEMORY[0x277CD7320];
        for (j = atomic_load_explicit(v109, memory_order_acquire); (v109[56] & 2) != 0; j = atomic_load_explicit(v109, memory_order_acquire))
        {
          v109 = *(v109 + 5);
        }

        if (j)
        {
          v111 = objc_msgSend_width(j, v97, v98, v99, v100, v101, v102, v103);
        }

        else
        {
          v111 = objc_msgSend_width(*(v109 + 5), v97, v98, v99, v100, v101, v102, v103);
        }

        v119 = v111;
        v120 = image + *MEMORY[0x277CD7320];
        for (k = atomic_load_explicit(v120, memory_order_acquire); (v120[56] & 2) != 0; k = atomic_load_explicit(v120, memory_order_acquire))
        {
          v120 = *(v120 + 5);
        }

        if (k)
        {
          v122 = objc_msgSend_height(k, v112, v113, v114, v115, v116, v117, v118);
        }

        else
        {
          v122 = objc_msgSend_height(*(v120 + 5), v112, v113, v114, v115, v116, v117, v118);
        }

        v130 = v122;
        v131 = image + *MEMORY[0x277CD7320];
        v132 = atomic_load_explicit(v131, memory_order_acquire);
        if ((v131[56] & 2) != 0)
        {
          v133 = *(v131 + 13);
        }

        else if (v132)
        {
          LOWORD(v133) = objc_msgSend_arrayLength(v132, v123, v124, v125, v126, v127, v128, v129);
        }

        else
        {
          LOWORD(v133) = objc_msgSend_arrayLength(*(v131 + 5), v123, v124, v125, v126, v127, v128, v129);
        }

        v134.i16[2] = 1;
        v134.i16[0] = v119;
        v134.i16[1] = v130;
        v134.i16[3] = v133;
        v234 = vmin_u16(v234, vqsub_u16(v134, v233));
        v135 = vmovn_s64(v240);
        WORD1(v239) = v135.i16[2];
        LOWORD(v239) = v135.i16[0];
        WORD2(v239) = v241;
        v136 = *(&v93->super.super.isa + *MEMORY[0x277CD72F8]) + 3;
        HIWORD(v239) = v136 >> 2;
        v137 = *(&v93->super.super.isa + *MEMORY[0x277CD7300]);
        if (v137)
        {
          if (v137 == 1)
          {
            WORD2(v239) = (v136 >> 2) * v241;
          }

          else if (MTLReportFailureTypeEnabled())
          {
            v138 = objc_opt_class();
            v217 = v82;
            v218 = v93;
            v216 = NSStringFromClass(v138);
            MTLReportFailure();
          }
        }

        else
        {
          WORD1(v239) = v135.i16[2];
          LOWORD(v239) = v135.i16[0] * (v136 >> 2);
        }

        v139 = atomic_load_explicit(v94, memory_order_acquire);
        if (v139)
        {
          v140 = atomic_load_explicit(v13, memory_order_acquire);
          if ((v13[56] & 2) == 0)
          {
            goto LABEL_69;
          }
        }

        else
        {
          MPSAutoTexture::AllocateTexture(v94, 0);
          v139 = atomic_load_explicit(v94, memory_order_acquire);
          v140 = atomic_load_explicit(v13, memory_order_acquire);
          if ((v13[56] & 2) == 0)
          {
LABEL_69:
            if (v140)
            {
              v141 = objc_msgSend_textureType(v140, v123, v124, v125, v126, v127, v128, v129);
            }

            else
            {
              v141 = objc_msgSend_textureType(*(v13 + 5), v123, v124, v125, v126, v127, v128, v129);
            }

            if (v141 != 3)
            {
              goto LABEL_85;
            }

            goto LABEL_76;
          }
        }

        if (*(v13 + 13) < 2u)
        {
          goto LABEL_85;
        }

LABEL_76:
        v142 = atomic_load_explicit(v94, memory_order_acquire);
        if ((*(v94 + 56) & 2) != 0)
        {
          if (*(v94 + 52) < 2u)
          {
            goto LABEL_80;
          }
        }

        else
        {
          if (v142)
          {
            v143 = objc_msgSend_textureType(v142, v123, v124, v125, v126, v127, v128, v129);
          }

          else
          {
            v143 = objc_msgSend_textureType(*(v94 + 40), v123, v124, v125, v126, v127, v128, v129);
          }

          if (v143 == 2)
          {
LABEL_80:
            v144 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v139, v123, *(v94 + 32) & 0x3FFLL, 3, 0, 1, 0, 1, v216, v217, v218);
            if (v144)
            {
              goto LABEL_100;
            }

            if (MTLReportFailureTypeEnabled())
            {
LABEL_140:
              v205 = objc_opt_class();
              v216 = NSStringFromClass(v205);
              v217 = v139;
              MTLReportFailure();
            }

LABEL_141:
            v144 = 0;
            goto LABEL_100;
          }
        }

LABEL_85:
        v145 = atomic_load_explicit(v13, memory_order_acquire);
        if ((v13[56] & 2) != 0)
        {
          if (*(v13 + 13) >= 2u)
          {
            goto LABEL_96;
          }
        }

        else
        {
          if (v145)
          {
            v146 = objc_msgSend_textureType(v145, v123, v124, v125, v126, v127, v128, v129);
          }

          else
          {
            v146 = objc_msgSend_textureType(*(v13 + 5), v123, v124, v125, v126, v127, v128, v129);
          }

          if (v146 != 2)
          {
LABEL_96:
            v144 = v139;
            goto LABEL_100;
          }
        }

        v147 = atomic_load_explicit(v94, memory_order_acquire);
        if ((*(v94 + 56) & 2) != 0)
        {
          if (*(v94 + 52) < 2u)
          {
            goto LABEL_96;
          }
        }

        else
        {
          if (v147)
          {
            v148 = objc_msgSend_textureType(v147, v123, v124, v125, v126, v127, v128, v129);
          }

          else
          {
            v148 = objc_msgSend_textureType(*(v94 + 40), v123, v124, v125, v126, v127, v128, v129);
          }

          if (v148 != 3)
          {
            goto LABEL_96;
          }
        }

        v144 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v139, v123, *(v94 + 32) & 0x3FFLL, 2, 0, 1, WORD2(v239), 1, v216);
        if (!v144)
        {
          if (MTLReportFailureTypeEnabled())
          {
            goto LABEL_140;
          }

          goto LABEL_141;
        }

LABEL_100:
        v149 = v242;
        objc_msgSend_setComputePipelineState_(v242, v123, ComputeState, v125, v126, v127, v128, v129, v216);
        objc_msgSend_setTexture_atIndex_(v149, v150, v144, 0, v151, v152, v153, v154);
        v160 = atomic_load_explicit(v13, memory_order_acquire);
        if (!v160)
        {
          MPSAutoTexture::AllocateTexture(v13, 0);
          v160 = atomic_load_explicit(v13, memory_order_acquire);
        }

        objc_msgSend_setTexture_atIndex_(v149, v155, v160, 1, v156, v157, v158, v159);
        v161 = v242;
        objc_msgSend_setBytes_length_atIndex_(v242, v162, &v233, 40, 0, v163, v164, v165);
        Sampler = MPSDevice::GetSampler();
        objc_msgSend_setSamplerState_atIndex_(v161, v167, Sampler, 0, v168, v169, v170, v171);
        objc_msgSend_addObject_(v228, v172, v144, v173, v174, v175, v176, v177);
        v184 = atomic_load_explicit(v13, memory_order_acquire);
        if (!v184)
        {
          MPSAutoTexture::AllocateTexture(v13, 0);
          v184 = atomic_load_explicit(v13, memory_order_acquire);
        }

        objc_msgSend_addObject_(v228, v178, v184, v179, v180, v181, v182, v183);
        if (v221 >= 2 * v234.u16[0])
        {
          if (v234.u16[0] <= 1u)
          {
            v199 = 1;
          }

          else
          {
            v199 = v234.u16[0];
          }

          v191 = v221 / v199;
          if (v221 < v199)
          {
            v200 = 1;
          }

          else
          {
            v200 = v221 / v199;
          }

          v190 = v221 / v200;
          v192 = v234.u16[1];
          if (v84 < 2 * v234.u16[1])
          {
LABEL_123:
            v195 = v84;
            if (v190)
            {
              goto LABEL_113;
            }

            goto LABEL_124;
          }
        }

        else
        {
          v190 = v221;
          v191 = 1;
          v192 = v234.u16[1];
          if (v84 < 2 * v234.u16[1])
          {
            goto LABEL_123;
          }
        }

        if (v192 <= 1)
        {
          v193 = 1;
        }

        else
        {
          v193 = v192;
        }

        v191 *= v84 / v193;
        if (v84 < v193)
        {
          v194 = 1;
        }

        else
        {
          v194 = v84 / v193;
        }

        v195 = v84 / v194;
        if (v190)
        {
LABEL_113:
          v196 = (v234.u16[0] + v190 - 1) / v190;
          if (v195)
          {
            goto LABEL_114;
          }

          goto LABEL_125;
        }

LABEL_124:
        v196 = 0;
        if (v195)
        {
LABEL_114:
          v197 = (v192 + v195 - 1) / v195;
          if (v191)
          {
            goto LABEL_115;
          }

          goto LABEL_126;
        }

LABEL_125:
        v197 = 0;
        if (v191)
        {
LABEL_115:
          v198 = (v234.u16[3] + v191 - 1) / v191;
          goto LABEL_127;
        }

LABEL_126:
        v198 = 0;
LABEL_127:
        v72 = v242;
        v232[0] = v196;
        v232[1] = v197;
        v232[2] = v198;
        v231[0] = v190;
        v231[1] = v195;
        v231[2] = v191;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v242, v185, v232, v231, v186, v187, v188, v189);
        if (v144 != v139)
        {
        }

        if (v230)
        {
          MPSDecrementReadCount(v93);
        }

        v22 += v229;
        if (++v82 == v224)
        {
          break;
        }
      }
    }

    objc_msgSend_endEncoding(v72, v65, v66, v67, v68, v69, v70, v71);
  }
}

- (void)encodeBatchToCommandBuffer:(id)buffer sourceImages:(id)images destinationImage:(id)image
{
  v12 = objc_msgSend_count(image, a2, buffer, images, image, v5, v6, v7);
  v20 = objc_msgSend_count(images, v13, v14, v15, v16, v17, v18, v19);
  v27 = v20;
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0 && v20)
  {
    v28 = 0;
    do
    {
      v29 = objc_msgSend_objectAtIndexedSubscript_(images, v21, v28, v22, v23, v24, v25, v26, v108, v109, v110, v111);
      objc_msgSend_count(v29, v30, v31, v32, v33, v34, v35, v36);
      v43 = objc_msgSend_objectAtIndexedSubscript_(images, v37, v28, v38, v39, v40, v41, v42);
      if (objc_msgSend_count(v43, v44, v45, v46, v47, v48, v49, v50) < v12 && MTLReportFailureTypeEnabled())
      {
        v51 = objc_opt_class();
        v52 = NSStringFromClass(v51);
        v59 = objc_msgSend_objectAtIndexedSubscript_(images, v53, v28, v54, v55, v56, v57, v58);
        v110 = objc_msgSend_count(v59, v60, v61, v62, v63, v64, v65, v66);
        v111 = v12;
        v108 = v52;
        v109 = v28;
        MTLReportFailure();
      }

      ++v28;
    }

    while (v27 != v28);
  }

  v67 = objc_autoreleasePoolPush();
  v74 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v68, v27, v69, v70, v71, v72, v73);
  if (v12)
  {
    v81 = v74;
    if (v27)
    {
      for (i = 0; i != v12; ++i)
      {
        for (j = 0; j != v27; ++j)
        {
          v84 = objc_msgSend_objectAtIndexedSubscript_(images, v75, j, v76, v77, v78, v79, v80, v108, v109, v110, v111);
          v91 = objc_msgSend_objectAtIndexedSubscript_(v84, v85, i, v86, v87, v88, v89, v90);
          objc_msgSend_setObject_atIndexedSubscript_(v81, v92, v91, j, v93, v94, v95, v96);
        }

        v97 = objc_msgSend_objectAtIndexedSubscript_(image, v75, i, v76, v77, v78, v79, v80);
        objc_msgSend_encodeToCommandBuffer_sourceImages_destinationImage_(self, v98, buffer, v81, v97, v99, v100, v101);
      }
    }

    else
    {
      for (k = 0; k != v12; ++k)
      {
        v103 = objc_msgSend_objectAtIndexedSubscript_(image, v75, k, v76, v77, v78, v79, v80, v108, v109, v110, v111);
        objc_msgSend_encodeToCommandBuffer_sourceImages_destinationImage_(self, v104, buffer, v81, v103, v105, v106, v107);
      }
    }
  }

  objc_autoreleasePoolPop(v67);
}

- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states paddingMethod:(unint64_t)method sourceOffset:(id *)offset
{
  v10 = objc_msgSend_count(images, a2, images, states, method, offset, v6, v7);
  if (*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 1 | v10)
  {
    v17 = v10;
    if (v10)
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = -1;
      v22 = MEMORY[0x277CD7310];
      v23 = -1;
      v24 = -1;
      for (i = objc_msgSend_objectAtIndexedSubscript_(images, v11, 0, v12, v13, v14, v15, v16); ; i = objc_msgSend_objectAtIndexedSubscript_(images, v11, v20, v26, v27, v28, v29, v30))
      {
        v32 = *(i + *MEMORY[0x277CD72F0]);
        if (v32 <= 5)
        {
          v33 = byte_239D7D6F0[v32];
          v34 = *(i + *MEMORY[0x277CD72F8]);
          if (v19 <= 5)
          {
LABEL_4:
            v31 = byte_239D7D6F0[v19];
            goto LABEL_5;
          }
        }

        else
        {
          v33 = 0;
          v34 = *(i + *MEMORY[0x277CD72F8]);
          if (v19 <= 5)
          {
            goto LABEL_4;
          }
        }

        v31 = 0;
LABEL_5:
        v18 += (v34 + 3) & 0xFFFFFFFFFFFFFFFCLL;
        if (v33 > v31)
        {
          v19 = *(i + *MEMORY[0x277CD72F0]);
        }

        if (v21 >= *(i + *MEMORY[0x277CD7330]))
        {
          v21 = *(i + *MEMORY[0x277CD7330]);
        }

        if (v23 >= *(i + *MEMORY[0x277CD7308]))
        {
          v23 = *(i + *MEMORY[0x277CD7308]);
        }

        if (v24 >= *(i + *v22))
        {
          v24 = *(i + *v22);
        }

        if (v17 == ++v20)
        {
          goto LABEL_23;
        }
      }
    }
  }

  else if (MTLReportFailureTypeEnabled())
  {
    v35 = objc_opt_class();
    NSStringFromClass(v35);
    MTLReportFailure();
  }

  v19 = 0;
  v18 = 0;
  v24 = -1;
  v23 = -1;
  v21 = -1;
LABEL_23:
  v36 = MEMORY[0x277CD7220];

  return objc_msgSend_imageDescriptorWithChannelFormat_width_height_featureChannels_numberOfImages_usage_(v36, v11, v19, v21, v23, v18, v24, 19);
}

- (id)resultStateForSourceImages:(id)images sourceStates:(id)states destinationImage:(id)image
{
  v9 = [MPSNNConcatenationGradientState alloc];
  v19 = objc_msgSend_initWithResource_(v9, v10, 0, v11, v12, v13, v14, v15);
  if (v19)
  {
    objc_msgSend_copyToGradientState_sourceImages_sourceStates_destinationImage_(self, v16, v19, images, states, image, v17, v18);
    if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x10) != 0)
    {
      v20 = MEMORY[0x277CCACA8];
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v29 = objc_msgSend_stringWithFormat_(v20, v23, @"created by %@", v24, v25, v26, v27, v28, v22);
      objc_msgSend_setLabel_(v19, v30, v29, v31, v32, v33, v34, v35);
    }
  }

  return v19;
}

- (id)temporaryResultStateForCommandBuffer:(id)buffer sourceImages:(id)images sourceStates:(id)states destinationImage:(id)image
{
  v15 = objc_msgSend_temporaryStateWithCommandBuffer_(MPSNNConcatenationGradientState, a2, buffer, images, states, image, v6, v7);
  if (v15)
  {
    objc_msgSend_copyToGradientState_sourceImages_sourceStates_destinationImage_(self, v12, v15, images, states, image, v13, v14);
    if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x10) != 0)
    {
      v16 = MEMORY[0x277CCACA8];
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v25 = objc_msgSend_stringWithFormat_(v16, v19, @"created by %@", v20, v21, v22, v23, v24, v18);
      objc_msgSend_setLabel_(v15, v26, v25, v27, v28, v29, v30, v31);
    }
  }

  return v15;
}

- (id)temporaryResultStateBatchForCommandBuffer:(id)buffer sourceImages:(id)images sourceStates:(id)states destinationImage:(id)image
{
  imageCopy = image;
  v14 = objc_msgSend_objectAtIndexedSubscript_(images, a2, 0, images, states, image, v6, v7);
  v29 = objc_msgSend_count(v14, v15, v16, v17, v18, v19, v20, v21);
  selfCopy = self;
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (!buffer && MTLReportFailureTypeEnabled())
    {
      v222 = objc_opt_class();
      v224 = NSStringFromClass(v222);
      v226 = NSStringFromSelector(a2);
      MTLReportFailure();
    }

    if (!images && MTLReportFailureTypeEnabled())
    {
      v223 = objc_opt_class();
      v224 = NSStringFromClass(v223);
      v226 = NSStringFromSelector(a2);
      MTLReportFailure();
    }

    if (states && objc_msgSend_count(states, v22, v23, v24, v25, v26, v27, v28))
    {
      v36 = 0;
      do
      {
        v37 = objc_msgSend_objectAtIndexedSubscript_(states, v30, v36, v31, v32, v33, v34, v35, v224, v226);
        objc_msgSend_count(v37, v38, v39, v40, v41, v42, v43, v44);
        v51 = objc_msgSend_objectAtIndexedSubscript_(states, v45, v36, v46, v47, v48, v49, v50);
        if (objc_msgSend_count(v51, v52, v53, v54, v55, v56, v57, v58) < v29 && MTLReportFailureTypeEnabled())
        {
          v66 = objc_opt_class();
          v225 = NSStringFromClass(v66);
          v227 = NSStringFromSelector(a2);
          MTLReportFailure();
        }

        ++v36;
      }

      while (v36 < objc_msgSend_count(states, v59, v60, v61, v62, v63, v64, v65, v225, v227));
    }
  }

  if (!v29)
  {
    return 0;
  }

  v67 = objc_autoreleasePoolPush();
  v75 = objc_msgSend_count(images, v68, v69, v70, v71, v72, v73, v74);
  v82 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v76, v75, v77, v78, v79, v80, v81);
  v90 = v82;
  if (v75 && v82)
  {
    for (i = 0; i != v75; ++i)
    {
      v92 = objc_msgSend_objectAtIndexedSubscript_(images, v83, i, v85, v86, v87, v88, v89, v224, v226);
      v99 = objc_msgSend_objectAtIndexedSubscript_(v92, v93, 0, v94, v95, v96, v97, v98);
      objc_msgSend_setObject_atIndexedSubscript_(v90, v100, v99, i, v101, v102, v103, v104);
    }
  }

  if (states)
  {
    v105 = objc_msgSend_count(states, v83, v84, v85, v86, v87, v88, v89);
    v112 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v106, v105, v107, v108, v109, v110, v111);
    if (v112 && v105)
    {
      for (j = 0; j != v105; ++j)
      {
        v114 = objc_msgSend_objectAtIndexedSubscript_(states, v83, j, v85, v86, v87, v88, v89, v224, v226);
        v121 = objc_msgSend_objectAtIndexedSubscript_(v114, v115, 0, v116, v117, v118, v119, v120);
        objc_msgSend_setObject_atIndexedSubscript_(v112, v122, v121, j, v123, v124, v125, v126);
      }
    }
  }

  else
  {
    v112 = 0;
  }

  v127 = objc_msgSend_objectAtIndexedSubscript_(imageCopy, v83, 0, v85, v86, v87, v88, v89, v224, v226);
  v131 = objc_msgSend_temporaryResultStateForCommandBuffer_sourceImages_sourceStates_destinationImage_(selfCopy, v128, buffer, v90, v112, v127, v129, v130);
  if (!v131 || (v132 = v131, (v230 = malloc_type_malloc(8 * v29, 0x80040B8603338uLL)) == 0))
  {
    objc_autoreleasePoolPop(v67);
    return 0;
  }

  context = v67;
  if (!objc_msgSend_isResultStateReusedAcrossBatch(selfCopy, v133, v134, v135, v136, v137, v138, v139))
  {
    v230->i64[0] = v132;
    v149 = 0x277CBE000uLL;
    if (v29 == 1)
    {
      goto LABEL_53;
    }

    v150 = 2;
    if (v29 > 2)
    {
      v150 = v29;
    }

    v229 = v150;
    v151 = 1;
    while (1)
    {
      v157 = objc_msgSend_count(images, v140, v141, v142, v143, v144, v145, v146);
      v164 = objc_msgSend_arrayWithCapacity_(*(v149 + 2840), v158, v157, v159, v160, v161, v162, v163);
      v172 = v164;
      if (v157 && v164)
      {
        for (k = 0; k != v157; ++k)
        {
          v174 = objc_msgSend_objectAtIndexedSubscript_(images, v165, k, v167, v168, v169, v170, v171);
          v181 = objc_msgSend_objectAtIndexedSubscript_(v174, v175, v151, v176, v177, v178, v179, v180);
          objc_msgSend_setObject_atIndexedSubscript_(v172, v182, v181, k, v183, v184, v185, v186);
        }
      }

      if (states)
      {
        v187 = objc_msgSend_count(states, v165, v166, v167, v168, v169, v170, v171);
        v152 = objc_msgSend_arrayWithCapacity_(*(v149 + 2840), v188, v187, v189, v190, v191, v192, v193);
        if (v152 && v187)
        {
          bufferCopy = buffer;
          v195 = imageCopy;
          for (m = 0; m != v187; ++m)
          {
            v197 = objc_msgSend_objectAtIndexedSubscript_(states, v165, m, v167, v168, v169, v170, v171);
            v204 = objc_msgSend_objectAtIndexedSubscript_(v197, v198, v151, v199, v200, v201, v202, v203);
            objc_msgSend_setObject_atIndexedSubscript_(v152, v205, v204, m, v206, v207, v208, v209);
          }

          imageCopy = v195;
          buffer = bufferCopy;
          v149 = 0x277CBE000;
          v153 = objc_msgSend_objectAtIndexedSubscript_(imageCopy, v165, v151, v167, v168, v169, v170, v171);
          goto LABEL_37;
        }
      }

      else
      {
        v152 = 0;
      }

      v153 = objc_msgSend_objectAtIndexedSubscript_(imageCopy, v165, v151, v167, v168, v169, v170, v171);
LABEL_37:
      v230->i64[v151++] = objc_msgSend_temporaryResultStateForCommandBuffer_sourceImages_sourceStates_destinationImage_(selfCopy, v154, buffer, v172, v152, v153, v155, v156);
      if (v151 == v229)
      {
        goto LABEL_53;
      }
    }
  }

  if (v29 < 4)
  {
    v147 = 0;
LABEL_51:
    v213 = v29 - v147;
    v214 = v230 + v147;
    do
    {
      *v214++ = v132;
      --v213;
    }

    while (v213);
    goto LABEL_53;
  }

  v147 = v29 & 0xFFFFFFFFFFFFFFFCLL;
  v210 = vdupq_n_s64(v132);
  v211 = v230 + 1;
  v212 = v29 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v211[-1] = v210;
    *v211 = v210;
    v211 += 2;
    v212 -= 4;
  }

  while (v212);
  if (v29 != v147)
  {
    goto LABEL_51;
  }

LABEL_53:
  v215 = objc_alloc(MEMORY[0x277CBEA60]);
  v221 = objc_msgSend_initWithObjects_count_(v215, v216, v230, v29, v217, v218, v219, v220);
  free(v230);
  objc_autoreleasePoolPop(context);

  return v221;
}

- (id)resultStateBatchForSourceImages:(id)images sourceStates:(id)states destinationImage:(id)image
{
  imageCopy = image;
  v12 = objc_msgSend_objectAtIndexedSubscript_(images, a2, 0, states, image, v5, v6, v7);
  v27 = objc_msgSend_count(v12, v13, v14, v15, v16, v17, v18, v19);
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (!images && MTLReportFailureTypeEnabled())
    {
      v222 = objc_opt_class();
      v223 = NSStringFromClass(v222);
      MTLReportFailure();
    }

    if (states && objc_msgSend_count(states, v20, v21, v22, v23, v24, v25, v26))
    {
      v34 = 0;
      do
      {
        v35 = objc_msgSend_objectAtIndexedSubscript_(states, v28, v34, v29, v30, v31, v32, v33, v223);
        objc_msgSend_count(v35, v36, v37, v38, v39, v40, v41, v42);
        v49 = objc_msgSend_objectAtIndexedSubscript_(states, v43, v34, v44, v45, v46, v47, v48);
        if (objc_msgSend_count(v49, v50, v51, v52, v53, v54, v55, v56) < v27 && MTLReportFailureTypeEnabled())
        {
          v64 = objc_opt_class();
          v224 = NSStringFromClass(v64);
          MTLReportFailure();
        }

        ++v34;
      }

      while (v34 < objc_msgSend_count(states, v57, v58, v59, v60, v61, v62, v63, v224));
    }
  }

  if (!v27)
  {
    return 0;
  }

  v65 = objc_autoreleasePoolPush();
  v73 = objc_msgSend_count(images, v66, v67, v68, v69, v70, v71, v72);
  v80 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v74, v73, v75, v76, v77, v78, v79);
  v88 = v80;
  if (v73 && v80)
  {
    for (i = 0; i != v73; ++i)
    {
      v90 = objc_msgSend_objectAtIndexedSubscript_(images, v81, i, v83, v84, v85, v86, v87, v223);
      v97 = objc_msgSend_objectAtIndexedSubscript_(v90, v91, 0, v92, v93, v94, v95, v96);
      objc_msgSend_setObject_atIndexedSubscript_(v88, v98, v97, i, v99, v100, v101, v102);
    }
  }

  if (states)
  {
    v103 = objc_msgSend_count(states, v81, v82, v83, v84, v85, v86, v87);
    v110 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v104, v103, v105, v106, v107, v108, v109);
    if (v110 && v103)
    {
      for (j = 0; j != v103; ++j)
      {
        v112 = objc_msgSend_objectAtIndexedSubscript_(states, v81, j, v83, v84, v85, v86, v87, v223);
        v119 = objc_msgSend_objectAtIndexedSubscript_(v112, v113, 0, v114, v115, v116, v117, v118);
        objc_msgSend_setObject_atIndexedSubscript_(v110, v120, v119, j, v121, v122, v123, v124);
      }
    }
  }

  else
  {
    v110 = 0;
  }

  v125 = objc_msgSend_objectAtIndexedSubscript_(imageCopy, v81, 0, v83, v84, v85, v86, v87, v223);
  v130 = objc_msgSend_resultStateForSourceImages_sourceStates_destinationImage_(self, v126, v88, v110, v125, v127, v128, v129);
  if (!v130 || (v131 = v130, (v227 = malloc_type_malloc(8 * v27, 0x80040B8603338uLL)) == 0))
  {
    objc_autoreleasePoolPop(v65);
    return 0;
  }

  context = v65;
  if (!objc_msgSend_isResultStateReusedAcrossBatch(self, v132, v133, v134, v135, v136, v137, v138))
  {
    v227->i64[0] = v131;
    v148 = 0x277CBE000uLL;
    if (v27 == 1)
    {
      goto LABEL_52;
    }

    v149 = 2;
    if (v27 > 2)
    {
      v149 = v27;
    }

    v226 = v149;
    v150 = 1;
    while (1)
    {
      v157 = objc_msgSend_count(images, v139, v140, v141, v142, v143, v144, v145);
      v164 = objc_msgSend_arrayWithCapacity_(*(v148 + 2840), v158, v157, v159, v160, v161, v162, v163);
      v172 = v164;
      if (v157 && v164)
      {
        for (k = 0; k != v157; ++k)
        {
          v174 = objc_msgSend_objectAtIndexedSubscript_(images, v165, k, v167, v168, v169, v170, v171);
          v181 = objc_msgSend_objectAtIndexedSubscript_(v174, v175, v150, v176, v177, v178, v179, v180);
          objc_msgSend_setObject_atIndexedSubscript_(v172, v182, v181, k, v183, v184, v185, v186);
        }
      }

      if (states)
      {
        v187 = objc_msgSend_count(states, v165, v166, v167, v168, v169, v170, v171);
        v151 = objc_msgSend_arrayWithCapacity_(*(v148 + 2840), v188, v187, v189, v190, v191, v192, v193);
        if (v151 && v187)
        {
          selfCopy = self;
          v195 = imageCopy;
          for (m = 0; m != v187; ++m)
          {
            v197 = objc_msgSend_objectAtIndexedSubscript_(states, v165, m, v167, v168, v169, v170, v171);
            v204 = objc_msgSend_objectAtIndexedSubscript_(v197, v198, v150, v199, v200, v201, v202, v203);
            objc_msgSend_setObject_atIndexedSubscript_(v151, v205, v204, m, v206, v207, v208, v209);
          }

          imageCopy = v195;
          self = selfCopy;
          v148 = 0x277CBE000;
          v152 = objc_msgSend_objectAtIndexedSubscript_(imageCopy, v165, v150, v167, v168, v169, v170, v171);
          goto LABEL_36;
        }
      }

      else
      {
        v151 = 0;
      }

      v152 = objc_msgSend_objectAtIndexedSubscript_(imageCopy, v165, v150, v167, v168, v169, v170, v171);
LABEL_36:
      v227->i64[v150++] = objc_msgSend_resultStateForSourceImages_sourceStates_destinationImage_(self, v153, v172, v151, v152, v154, v155, v156);
      if (v150 == v226)
      {
        goto LABEL_52;
      }
    }
  }

  if (v27 < 4)
  {
    v146 = 0;
LABEL_50:
    v213 = v27 - v146;
    v214 = v227 + v146;
    do
    {
      *v214++ = v131;
      --v213;
    }

    while (v213);
    goto LABEL_52;
  }

  v146 = v27 & 0xFFFFFFFFFFFFFFFCLL;
  v210 = vdupq_n_s64(v131);
  v211 = v227 + 1;
  v212 = v27 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v211[-1] = v210;
    *v211 = v210;
    v211 += 2;
    v212 -= 4;
  }

  while (v212);
  if (v27 != v146)
  {
    goto LABEL_50;
  }

LABEL_52:
  v215 = objc_alloc(MEMORY[0x277CBEA60]);
  v221 = objc_msgSend_initWithObjects_count_(v215, v216, v227, v27, v217, v218, v219, v220);
  free(v227);
  objc_autoreleasePoolPop(context);

  return v221;
}

- (void)copyToGradientState:(id)state sourceImages:(id)images sourceStates:(id)states destinationImage:(id)image
{
  v13 = objc_msgSend_objectAtIndexedSubscript_(images, a2, 0, images, states, image, v6, v7);
  v34.receiver = self;
  v34.super_class = MPSNNConcatenation;
  [(MPSCNNKernel *)&v34 copyToGradientState:state sourceImage:v13 sourceStates:states destinationImage:image];
  v27 = objc_msgSend_count(images, v14, v15, v16, v17, v18, v19, v20);
  if (*(state + 73) != v27)
  {
    free(*(state + 37));
    *(state + 73) = v27;
    *(state + 37) = malloc_type_calloc(*(state + 73), 0x10uLL, 0x1000040451B5BE8uLL);
    v27 = *(state + 73);
  }

  if (v27)
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = MEMORY[0x277CD72F8];
    do
    {
      v32 = (*(objc_msgSend_objectAtIndexedSubscript_(images, v21, v30, v22, v23, v24, v25, v26) + *v31) + 3) & 0xFFFFFFFC;
      v33 = (*(state + 37) + v28);
      *v33 = v29;
      v33[1] = v32;
      v29 += v32;
      ++v30;
      v28 += 16;
    }

    while (v30 < *(state + 73));
  }
}

@end