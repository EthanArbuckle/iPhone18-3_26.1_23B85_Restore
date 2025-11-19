@interface MPSNNPermute
- (MPSNNDimensionOrder)dimensionOrder;
- (MPSNNPermute)initWithCoder:(id)a3 device:(id)a4;
- (MPSNNPermute)initWithDevice:(id)a3;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)destinationImageDescriptorForSourceImages:(id)a3 sourceStates:(id)a4 paddingMethod:(unint64_t)a5 sourceOffset:(id *)a6;
- (id)resultStateForSourceImage:(id)a3 sourceStates:(id)a4 destinationImage:(id)a5;
- (id)temporaryResultStateForCommandBuffer:(id)a3 sourceImage:(id)a4 sourceStates:(id)a5 destinationImage:(id)a6;
- (void)encodeBatchInternalToCommandEncoder:(id)a3 commandBuffer:(id)a4 sourceImages:(id)a5 inStates:(id)a6 destinationImages:(id)a7 srcSize:(id *)a8 destSize:(id *)a9 testClipRect:(id *)a10 testMaxClipRect:(id *)a11;
- (void)encodeBatchToCommandEncoder:(id)a3 commandBuffer:(id)a4 sourceImages:(id)a5 inStates:(id)a6 destinationImages:(id)a7;
- (void)encodeWithCoder:(id)a3;
- (void)setDimensionOrder:(MPSNNDimensionOrder *)a3;
@end

@implementation MPSNNPermute

- (MPSNNPermute)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNNPermute;
  result = [(MPSCNNKernel *)&v4 initWithDevice:a3];
  if (result)
  {
    *result->_dimensionOrder.dimensions = xmmword_239D7E290;
    *&result->_dimensionOrder.dimensions[2] = xmmword_239D909E0;
    result->super._checkFlags |= 2u;
    result->super._encode = sub_239CFA21C;
    result->super._batchEncode = sub_239CFA810;
    result->super._encodeData = result;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v7.receiver = self;
  v7.super_class = MPSNNPermute;
  result = [(MPSCNNKernel *)&v7 copyWithZone:a3 device:a4];
  v6 = *&self->_dimensionOrder.dimensions[2];
  *(result + 328) = *self->_dimensionOrder.dimensions;
  *(result + 344) = v6;
  return result;
}

- (MPSNNPermute)initWithCoder:(id)a3 device:(id)a4
{
  v33.receiver = self;
  v33.super_class = MPSNNPermute;
  v5 = [(MPSCNNKernel *)&v33 initWithCoder:a3 device:a4];
  v12 = v5;
  if (!v5)
  {
    return v12;
  }

  v5->super._checkFlags |= 2u;
  if (*(&v5->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    v5->_dimensionOrder.dimensions[0] = objc_msgSend_decodeInt64ForKey_(a3, v6, @"MPSNNPermuteDimensionOrder0", v7, v8, v9, v10, v11);
    v12->_dimensionOrder.dimensions[1] = objc_msgSend_decodeInt64ForKey_(a3, v13, @"MPSNNPermuteDimensionOrder1", v14, v15, v16, v17, v18);
    v12->_dimensionOrder.dimensions[2] = objc_msgSend_decodeInt64ForKey_(a3, v19, @"MPSNNPermuteDimensionOrder2", v20, v21, v22, v23, v24);
    v12->_dimensionOrder.dimensions[3] = objc_msgSend_decodeInt64ForKey_(a3, v25, @"MPSNNPermuteDimensionOrder3", v26, v27, v28, v29, v30);
    v12->super._encode = sub_239CFA21C;
    v12->super._batchEncode = sub_239CFA810;
    v12->super._encodeData = v12;
    return v12;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v32 = objc_opt_class();
    NSStringFromClass(v32);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v25.receiver = self;
  v25.super_class = MPSNNPermute;
  [(MPSCNNKernel *)&v25 encodeWithCoder:?];
  v4 += 41;
  objc_msgSend_encodeInt64_forKey_(a3, v5, *v4, @"MPSNNPermuteDimensionOrder0", v6, v7, v8, v9);
  objc_msgSend_encodeInt64_forKey_(a3, v10, v4[1], @"MPSNNPermuteDimensionOrder1", v11, v12, v13, v14);
  objc_msgSend_encodeInt64_forKey_(a3, v15, v4[2], @"MPSNNPermuteDimensionOrder2", v16, v17, v18, v19);
  objc_msgSend_encodeInt64_forKey_(a3, v20, v4[3], @"MPSNNPermuteDimensionOrder3", v21, v22, v23, v24);
}

- (id)destinationImageDescriptorForSourceImages:(id)a3 sourceStates:(id)a4 paddingMethod:(unint64_t)a5 sourceOffset:(id *)a6
{
  v51[3] = *MEMORY[0x277D85DE8];
  v50.receiver = self;
  v50.super_class = MPSNNPermute;
  v7 = [(MPSCNNKernel *)&v50 destinationImageDescriptorForSourceImages:a3 sourceStates:a4 paddingMethod:a5 sourceOffset:a6];
  v15 = v7;
  p_dimensionOrder = &self->_dimensionOrder;
  if (p_dimensionOrder->dimensions[3] == 3)
  {
    v51[0] = objc_msgSend_featureChannels(v7, v8, v9, v10, v11, v12, v13, v14);
    v51[1] = objc_msgSend_width(v15, v17, v18, v19, v20, v21, v22, v23);
    v51[2] = objc_msgSend_height(v15, v24, v25, v26, v27, v28, v29, v30);
    objc_msgSend_setFeatureChannels_(v15, v31, v51[p_dimensionOrder->dimensions[0]], v32, v33, v34, v35, v36);
    objc_msgSend_setWidth_(v15, v37, v51[p_dimensionOrder->dimensions[1]], v38, v39, v40, v41, v42);
    objc_msgSend_setHeight_(v15, v43, v51[p_dimensionOrder->dimensions[2]], v44, v45, v46, v47, v48);
  }

  return v15;
}

- (void)encodeBatchInternalToCommandEncoder:(id)a3 commandBuffer:(id)a4 sourceImages:(id)a5 inStates:(id)a6 destinationImages:(id)a7 srcSize:(id *)a8 destSize:(id *)a9 testClipRect:(id *)a10 testMaxClipRect:(id *)a11
{
  v820 = *MEMORY[0x277D85DE8];
  v13 = objc_msgSend_sourceFeatureChannelOffset(self, a2, a3, a4, a5, a6, a7, a8);
  v21 = objc_msgSend_destinationFeatureChannelOffset(self, v14, v15, v16, v17, v18, v19, v20);
  v738 = *MEMORY[0x277CD7350];
  v740 = (*(**(&self->super.super.super.isa + v738) + 56))(*(&self->super.super.super.isa + v738));
  if (v740)
  {
    v29 = objc_msgSend_maxBatchSize(self, v22, v23, v24, v25, v26, v27, v28);
  }

  else
  {
    v29 = 1;
  }

  v760 = v29;
  v739 = malloc_type_calloc(v29, 0x78uLL, 0x10E004012FEE65DuLL);
  v762 = self;
  objc_msgSend_offset(self, v30, v31, v32, v33, v34, v35, v36);
  v37.i16[0] = *v808;
  v753 = v37;
  objc_msgSend_offset(self, v38, v39, v40, v41, v42, v43, v44);
  v51 = v753;
  v51.i16[2] = *&v765[8];
  v754 = v51;
  v52 = a7;
  v51.i16[0] = self->super._kernelWidth;
  v51.i16[2] = self->super._kernelHeight;
  v749 = v51;
  v51.i16[0] = self->super._dilationRateX;
  v51.i16[2] = self->super._dilationRateY;
  v751 = v51;
  if (a7)
  {
    v53 = objc_msgSend_objectAtIndexedSubscript_(a7, v45, 0, v46, v47, v48, v49, v50);
    v52 = objc_msgSend_featureChannels(v53, v54, v55, v56, v57, v58, v59, v60);
  }

  v61 = 328;
  p_dimensionOrder = &self->_dimensionOrder;
  v62 = -1;
  do
  {
    v63 = *(&self->super.super.super.isa + v61);
    ++v62;
    v61 += 8;
  }

  while (v63 != 3);
  if (v52 >= v21)
  {
    v64 = v52 - v21;
  }

  else
  {
    v64 = 0;
  }

  v65 = objc_msgSend_objectAtIndexedSubscript_(a5, v45, 0, v46, v47, v48, v49, v50);
  v807[0] = objc_msgSend_featureChannels(v65, v66, v67, v68, v69, v70, v71, v72);
  v79 = objc_msgSend_objectAtIndexedSubscript_(a5, v73, 0, v74, v75, v76, v77, v78);
  v807[1] = objc_msgSend_width(v79, v80, v81, v82, v83, v84, v85, v86);
  v93 = objc_msgSend_objectAtIndexedSubscript_(a5, v87, 0, v88, v89, v90, v91, v92);
  v807[2] = objc_msgSend_height(v93, v94, v95, v96, v97, v98, v99, v100);
  v807[3] = objc_msgSend_count(a5, v101, v102, v103, v104, v105, v106, v107);
  memset(v800, 0, sizeof(v800));
  *v765 = *a9;
  v108 = *&a10->var0.var2;
  *v808 = *&a10->var0.var0;
  *&v808[16] = v108;
  *&v808[32] = *&a10->var1.var1;
  MPSGetEffectiveClipRegion(v800[0].i64, v765, v808);
  v116 = v800[2].i64[1];
  if (v62 == 3)
  {
    v116 = 0;
  }

  v759 = v116;
  v733 = objc_msgSend_count(a5, v109, v110, v111, v112, v113, v114, v115);
  if (v62)
  {
    v124 = 1;
  }

  else
  {
    v124 = v759 == 0;
  }

  if (v124)
  {
    v125 = 1;
  }

  else
  {
    v125 = v740;
  }

  if ((v125 & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    v727 = objc_opt_class();
    v728 = NSStringFromClass(v727);
    v729 = NSStringFromSelector(a2);
    MTLReportFailure();
  }

  if (objc_msgSend_retainedReferences(a4, v117, v118, v119, v120, v121, v122, v123, v728, v729))
  {
    aSelectora = 0;
  }

  else
  {
    aSelectora = objc_opt_new();
    v799[0] = MEMORY[0x277D85DD0];
    v799[1] = 3221225472;
    v799[2] = sub_239CFCE28;
    v799[3] = &unk_278B28F28;
    v799[4] = aSelectora;
    objc_msgSend_addCompletedHandler_(a4, v126, v799, v127, v128, v129, v130, v131);
  }

  v132 = *&self->_dimensionOrder.dimensions[2];
  v797 = *p_dimensionOrder->dimensions;
  v798 = v132;
  v795 = xmmword_239D90E18;
  v796 = unk_239D90E28;
  v133 = *(&v797 + v62);
  *(&v797 + v62) = *(&v132 + 1);
  v134 = *(&v795 + v62);
  *(&v795 + v62) = 3;
  v135 = *&self->_dimensionOrder.dimensions[2];
  v805 = *p_dimensionOrder->dimensions;
  v806 = v135;
  *(&v798 + 1) = v133;
  v136 = v807[*(&v797 + 1)];
  *(&v796 + 1) = v134;
  v137 = v807[v798];
  var2 = a8->var2;
  v794[0] = v136;
  v794[1] = v137;
  v794[2] = var2;
  memset(v793, 0, sizeof(v793));
  v139 = v794;
  if (!v759)
  {
    v139 = a9;
  }

  *v765 = *&v139->var0;
  *&v765[16] = v139->var2;
  if (v759)
  {
    v140 = a11;
  }

  else
  {
    v140 = a10;
  }

  v141 = *&v140->var0.var2;
  *v808 = *&v140->var0.var0;
  *&v808[16] = v141;
  *&v808[32] = *&v140->var1.var1;
  MPSGetEffectiveClipRegion(v793[0].i64, v765, v808);
  if (v759)
  {
    v149 = 0;
  }

  else
  {
    v149 = v21;
  }

  v150 = v64;
  if (v759)
  {
    v150 = v807[v797];
  }

  v791 = 0u;
  v792 = 0u;
  memset(v790, 0, sizeof(v790));
  v788 = 0u;
  v789 = 0u;
  memset(v787, 0, sizeof(v787));
  v784 = 0u;
  v780 = v793[2].i64[1];
  v781 = 0;
  v782 = 0;
  v783 = v739;
  v151 = vmovn_s64(v793[0]);
  LOWORD(v152) = v151.i16[0];
  WORD1(v152) = v151.i16[2];
  HIDWORD(v152) = ((v149 + 3) >> 2);
  v153 = vmovn_s64(*(&v793[1] + 8));
  v151.i16[0] = v153.i16[0];
  v151.i16[1] = v153.i16[2];
  v151.i32[1] = ((v150 + 3) >> 2);
  v785 = v152;
  v786 = v151;
  v154 = a7;
  if (v759)
  {
    v155 = &v807[v797];
    v156 = a5;
  }

  else
  {
    v155 = (objc_msgSend_objectAtIndexedSubscript_(a7, v142, 0, v144, v145, v146, v147, v148) + *MEMORY[0x277CD72F8]);
    v154 = a7;
    v156 = a7;
  }

  v157 = v154 == 0;
  LOWORD(v787[0]) = *v155;
  HIWORD(v787[0]) = objc_msgSend_count(v156, v142, v143, v144, v145, v146, v147, v148);
  v787[1] = 1;
  LOWORD(v787[2]) = 0;
  HIWORD(v787[2]) = v760;
  v787[6] = 0;
  *&v788 = 0;
  v158 = vmls_s32(v754, v751, vshr_n_u32(vand_s8(v749, 0xFFFF0000FFFFLL), 1uLL));
  *&v787[3] = 0;
  WORD5(v788) = v158.i16[2];
  v744 = v158;
  WORD4(v788) = v158.i16[0];
  HIDWORD(v788) = 0;
  WORD1(v789) = v749.i16[2];
  LOWORD(v789) = v749.i16[0];
  WORD3(v789) = v754.i16[2];
  WORD2(v789) = v754.i16[0];
  strideInPixelsX = self->super._strideInPixelsX;
  WORD5(v789) = self->super._strideInPixelsY;
  WORD4(v789) = strideInPixelsX;
  HIWORD(v789) = v751.i16[2];
  WORD6(v789) = v751.i16[0];
  LOWORD(v790[0]) = objc_msgSend_sourceFeatureChannelOffset(self, v160, v161, v162, v163, v164, v165, v166);
  WORD1(v790[0]) = *(objc_msgSend_objectAtIndexedSubscript_(a5, v167, 0, v168, v169, v170, v171, v172) + *MEMORY[0x277CD72F8]);
  objc_msgSend_offset(self, v173, v174, v175, v176, v177, v178, v179);
  HIDWORD(v790[0]) = *&v808[16];
  *&v790[1] = v793[0];
  *&v790[3] = v793[1];
  *&v790[5] = v793[2];
  objc_msgSend_offset(self, v180, v181, v182, v183, v184, v185, v186);
  *&v792 = v149;
  *(&v792 + 1) = v13;
  v779 = 0;
  v777 = 0u;
  v778 = 0u;
  v775 = 0u;
  v776 = 0u;
  v773 = 0u;
  v774 = 0u;
  v771 = 0u;
  v772 = 0u;
  v769 = 0u;
  v770 = 0u;
  v767 = 0u;
  v768 = 0u;
  v766 = 0u;
  memset(v765, 0, sizeof(v765));
  *v765 = objc_msgSend_count(a5, v187, v188, v189, v190, v191, v192, v193);
  *&v765[8] = objc_msgSend_count(a7, v194, v195, v196, v197, v198, v199, v200);
  *&v765[16] = 0u;
  v766 = 0u;
  *&v767 = v739;
  DWORD2(v767) = 0;
  *&v768 = 0;
  v208 = vmovn_s64(v800[0]);
  LOWORD(v209) = v208.i16[0];
  WORD1(v209) = v208.i16[2];
  HIDWORD(v209) = ((v21 + 3) >> 2);
  v210 = vmovn_s64(*(&v800[1] + 8));
  v208.i16[0] = v210.i16[0];
  v208.i16[1] = v210.i16[2];
  v208.i32[1] = ((v64 + 3) >> 2);
  *(&v768 + 1) = v209;
  *&v769 = v208;
  if (v157)
  {
    v218 = 0;
    WORD4(v769) = 0;
  }

  else
  {
    WORD4(v769) = *(objc_msgSend_objectAtIndexedSubscript_(a7, v201, 0, v203, v204, v205, v206, v207) + *MEMORY[0x277CD72F8]);
    v218 = objc_msgSend_count(a7, v211, v212, v213, v214, v215, v216, v217);
  }

  WORD5(v769) = v218;
  HIDWORD(v769) = 1;
  LOWORD(v770) = 0;
  WORD1(v770) = v760;
  LODWORD(v771) = 0;
  *(&v771 + 1) = 0;
  *(&v770 + 4) = 0;
  WORD1(v772) = v744.i16[2];
  LOWORD(v772) = v744.i16[0];
  DWORD1(v772) = 0;
  WORD5(v772) = v749.i16[2];
  WORD4(v772) = v749.i16[0];
  HIWORD(v772) = v754.i16[2];
  v219 = self->super._strideInPixelsX;
  WORD6(v772) = v754.i16[0];
  WORD1(v773) = self->super._strideInPixelsY;
  LOWORD(v773) = v219;
  WORD3(v773) = v751.i16[2];
  WORD2(v773) = v751.i16[0];
  if (v759)
  {
    v220 = 0;
  }

  else
  {
    v220 = v13;
  }

  WORD4(v773) = v220;
  v755 = v807[v797];
  WORD5(v773) = v755;
  objc_msgSend_offset(v762, v201, v202, v203, v204, v205, v206, v207);
  HIDWORD(v773) = *&v808[16];
  v774 = v800[0];
  v775 = v800[1];
  v776 = v800[2];
  objc_msgSend_offset(v762, v221, v222, v223, v224, v225, v226, v227);
  *(&v778 + 1) = v21;
  v779 = v220;
  MEMORY[0x23EE7D040](v764, a4, 0);
  v228 = 125;
  if (v150 == 2)
  {
    v228 = 105;
  }

  if (v150 == 1)
  {
    v229 = MTLPixelFormatR32Float;
  }

  else
  {
    v229 = v228;
  }

  PixelInfo = MPSDevice::GetPixelInfo(*(&v762->super.super.super.isa + v738), v229, MPSImageFeatureChannelFormatNone);
  v231 = objc_alloc(MEMORY[0x277CBEB18]);
  v743 = objc_msgSend_initWithCapacity_(v231, v232, v760, v233, v234, v235, v236, v237);
  if (v760 && v759)
  {
    v238 = v807[*(&v797 + 1)];
    v239 = v807[v798];
    v240 = (PixelInfo >> 24) & 0xF;
    if ((PixelInfo & 0xFF00000000) <= 0x1000000000)
    {
      v241 = &unk_239D90E60;
    }

    else
    {
      v241 = &unk_239D90E38;
    }

    v242 = v760;
    do
    {
      v243 = *(&v762->super.super.super.isa + v738);
      v244 = objc_autoreleasePoolPush();
      v246 = objc_msgSend_imageDescriptorWithChannelFormat_width_height_featureChannels_numberOfImages_usage_(MEMORY[0x277CD7220], v245, 4, v238, v239, v755, 1, 19);
      *&v801 = MPSDevice::GetPixelInfo(v243, v241[v240], MPSImageFeatureChannelFormatNone);
      *v808 = objc_msgSend_width(v246, v247, v248, v249, v250, v251, v252, v253);
      *&v808[8] = objc_msgSend_height(v246, v254, v255, v256, v257, v258, v259, v260);
      *&v808[16] = (objc_msgSend_featureChannels(v246, v261, v262, v263, v264, v265, v266, v267) + 3) >> 2;
      TempTexture = MPSAutoCache::GetTempTexture();
      v269 = objc_alloc(MEMORY[0x277CD7218]);
      v277 = objc_msgSend_featureChannels(v246, v270, v271, v272, v273, v274, v275, v276);
      v283 = objc_msgSend_initWithTexture_featureChannels_(v269, v278, TempTexture, v277, v279, v280, v281, v282);
      objc_autoreleasePoolPop(v244);
      objc_msgSend_addObject_(v743, v284, v283, v285, v286, v287, v288, v289);

      --v242;
    }

    while (v242);
  }

  if (v733)
  {
    v742 = 0;
    v750 = 0;
    if (v759)
    {
      v290 = v743;
    }

    else
    {
      v290 = a7;
    }

    v291 = a5;
    if (v759)
    {
      v291 = v743;
    }

    v731 = v291;
    v732 = v290;
    v736 = 0;
    v292 = MEMORY[0x277CD7318];
    do
    {
      context = objc_autoreleasePoolPush();
      v300 = objc_msgSend_count(a5, v293, v294, v295, v296, v297, v298, v299);
      v308 = v300;
      v756 = v300 - v750;
      if (v760 >= v300 - v750)
      {
        v309 = v300 - v750;
      }

      else
      {
        v309 = v760;
      }

      if (v740)
      {
        LODWORD(v801) = 0;
        objc_msgSend_offset(v762, v301, v302, v303, v304, v305, v306, v307);
        v316 = sub_239CFCE30(a5, a4, *&v808[16] + v750, v309, &v801, v310, v311, v312);
        *&v788 = v316;
        v787[6] = v801;
        *v808 = v801;
        if (v759)
        {
          v317 = 0;
        }

        else
        {
          v317 = v793[1].i64[0] + v750;
        }

        v325 = sub_239CFCE30(v732, a4, v317, v309, v808, v313, v314, v315);
        *(&v784 + 1) = v325;
        v326 = *v808;
        LODWORD(v784) = *v808;
        if (aSelectora)
        {
          objc_msgSend_addObject_(aSelectora, v318, v316, v320, v321, v322, v323, v324);
          objc_msgSend_addObject_(aSelectora, v327, v325, v328, v329, v330, v331, v332);
          v326 = *v808;
        }

        *(&v771 + 1) = v325;
        LODWORD(v771) = v326;
      }

      else
      {
        objc_msgSend_offset(v762, v301, v302, v303, v304, v305, v306, v307);
        v339 = objc_msgSend_objectAtIndexedSubscript_(a5, v333, *&v808[16] + v750, v334, v335, v336, v337, v338);
        v347 = objc_msgSend_texture(v339, v340, v341, v342, v343, v344, v345, v346);
        *&v788 = v347;
        objc_msgSend_offset(v762, v348, v349, v350, v351, v352, v353, v354);
        v361 = *(objc_msgSend_objectAtIndexedSubscript_(a5, v355, *&v808[16] + v750, v356, v357, v358, v359, v360) + *MEMORY[0x277CD72F0]);
        v369 = objc_msgSend_textureType(v347, v362, v363, v364, v365, v366, v367, v368);
        if (v361 - 1 > 4)
        {
          v377 = 0;
        }

        else
        {
          v377 = dword_239D90E88[v361 - 1];
        }

        if (v369 == 3)
        {
          v378 = v377 + 1;
        }

        else
        {
          v378 = v377;
        }

        objc_msgSend_device(v347, v370, v371, v372, v373, v374, v375, v376);
        MPSDevice = MPSDevice::GetMPSDevice();
        v387 = objc_msgSend_pixelFormat(v347, v380, v381, v382, v383, v384, v385, v386);
        if ((MPSDevice::GetPixelInfo(MPSDevice, v387, v361) & 0x3000000) != 0)
        {
          v394 = v378 | 4;
        }

        else
        {
          v394 = v378;
        }

        v787[6] = v394;
        if (v759)
        {
          v395 = objc_msgSend_objectAtIndexedSubscript_(v732, v388, 0, v389, v390, v391, v392, v393);
        }

        else
        {
          v395 = objc_msgSend_objectAtIndexedSubscript_(v732, v388, v793[1].i64[0] + v750, v389, v390, v391, v392, v393);
        }

        v403 = v395;
        v404 = objc_msgSend_texture(v395, v396, v397, v398, v399, v400, v401, v402);
        *(&v784 + 1) = v404;
        v405 = *&v403[*MEMORY[0x277CD72F0]];
        v413 = objc_msgSend_textureType(v404, v406, v407, v408, v409, v410, v411, v412);
        if (v405 - 1 > 4)
        {
          v421 = 0;
        }

        else
        {
          v421 = dword_239D90E88[v405 - 1];
        }

        if (v413 == 3)
        {
          v422 = v421 + 1;
        }

        else
        {
          v422 = v421;
        }

        objc_msgSend_device(v404, v414, v415, v416, v417, v418, v419, v420);
        v423 = MPSDevice::GetMPSDevice();
        v431 = objc_msgSend_pixelFormat(v404, v424, v425, v426, v427, v428, v429, v430);
        v432 = MPSDevice::GetPixelInfo(v423, v431, v405);
        v433 = v422 | 4;
        if ((v432 & 0x3000000) == 0)
        {
          v433 = v422;
        }

        LODWORD(v784) = v433;
        if (aSelectora)
        {
          objc_msgSend_addObject_(aSelectora, v318, v347, v320, v321, v322, v323, v324);
          objc_msgSend_addObject_(aSelectora, v434, v404, v435, v436, v437, v438, v439);
        }

        *(&v771 + 1) = v404;
        LODWORD(v771) = v394;
      }

      v781 = v309;
      v782 = v750;
      HIWORD(v790[0]) = v309;
      v786.i16[3] = v309;
      LOWORD(v787[2]) = v742;
      if (v309)
      {
        v440 = 0;
        if (v760 >= v308 + v736)
        {
          v441 = v308 + v736;
        }

        else
        {
          v441 = v760;
        }

        v442 = (v739 + 7);
        do
        {
          while (1)
          {
            objc_msgSend_offset(v762, v318, v319, v320, v321, v322, v323, v324);
            v456 = objc_msgSend_objectAtIndexedSubscript_(a5, v443, v750 + v440 + *&v808[16], v444, v445, v446, v447, v448);
            if (v759)
            {
              v457 = objc_msgSend_objectAtIndexedSubscript_(v743, v449, v440, v451, v452, v453, v454, v455);
            }

            else
            {
              objc_msgSend_clipRect(v762, v449, v450, v451, v452, v453, v454, v455);
              v457 = objc_msgSend_objectAtIndexedSubscript_(a7, v458, v750 + v440 + *&v808[16], v459, v460, v461, v462, v463);
            }

            v464 = v457;
            v465 = *v292;
            v466 = v456 + *MEMORY[0x277CD7320];
            explicit = atomic_load_explicit(v466, memory_order_acquire);
            if ((*(v466 + 56) & 2) != 0)
            {
              if (*(v466 + 52) < 2u)
              {
                v468 = 2;
              }

              else
              {
                v468 = 3;
              }
            }

            else if (explicit)
            {
              v468 = objc_msgSend_textureType(explicit, v318, v319, v320, v321, v322, v323, v324);
            }

            else
            {
              v468 = objc_msgSend_textureType(*(v466 + 40), v318, v319, v320, v321, v322, v323, v324);
            }

            v469 = *(v456 + *MEMORY[0x277CD72F0]) - 1;
            if (v469 > 4)
            {
              v470 = 0;
            }

            else
            {
              v470 = dword_239D90E88[v469];
            }

            if (v468 == 3)
            {
              ++v470;
            }

            if (*(v456 + *MEMORY[0x277CD7310]) > 1uLL)
            {
              v470 |= 2u;
            }

            if ((*(v456 + *v292) & 0x3000000) != 0)
            {
              v470 |= 4u;
            }

            v471 = *(v456 + *MEMORY[0x277CD72F8]);
            v472 = 2;
            if (v471 > 4)
            {
              v472 = 3;
            }

            v473 = *(v456 + *MEMORY[0x277CD7300]);
            *(v442 - 7) = v456;
            *(v442 - 6) = v456 + v465;
            *(v442 - 10) = v470;
            *(v442 - 4) = v471;
            *(v442 - 3) = v472;
            *(v442 - 2) = 0;
            *(v442 - 1) = v473;
            *(v442 + 7) = 0;
            if (v464)
            {
              break;
            }

            *(v442 + 6) = 0;
            *(v442 + 1) = 0u;
            *(v442 + 2) = 0u;
            *v442 = 0u;
            v442 += 120;
            if (v441 == ++v440)
            {
              goto LABEL_141;
            }
          }

          v474 = *v292;
          v475 = v464 + *MEMORY[0x277CD7320];
          v476 = atomic_load_explicit(v475, memory_order_acquire);
          if ((*(v475 + 56) & 2) != 0)
          {
            if (*(v475 + 52) < 2u)
            {
              v477 = 2;
            }

            else
            {
              v477 = 3;
            }
          }

          else if (v476)
          {
            v477 = objc_msgSend_textureType(v476, v318, v319, v320, v321, v322, v323, v324);
          }

          else
          {
            v477 = objc_msgSend_textureType(*(v475 + 40), v318, v319, v320, v321, v322, v323, v324);
          }

          v478 = *(v464 + *MEMORY[0x277CD72F0]) - 1;
          if (v478 > 4)
          {
            v479 = 0;
          }

          else
          {
            v479 = dword_239D90E88[v478];
          }

          if (v477 == 3)
          {
            ++v479;
          }

          if (*(v464 + *MEMORY[0x277CD7310]) > 1uLL)
          {
            v479 |= 2u;
          }

          if ((*(v464 + *v292) & 0x3000000) != 0)
          {
            v479 |= 4u;
          }

          v480 = *(v464 + *MEMORY[0x277CD72F8]);
          v481 = 2;
          if (v480 > 4)
          {
            v481 = 3;
          }

          v482 = *(v464 + *MEMORY[0x277CD7300]);
          *v442 = v464;
          *(v442 + 1) = v464 + v474;
          *(v442 + 4) = v479;
          *(v442 + 3) = v480;
          *(v442 + 4) = v481;
          *(v442 + 5) = 0;
          *(v442 + 6) = v482;
          ++v440;
          v442 += 120;
        }

        while (v441 != v440);
LABEL_141:
        if (v756 < v760)
        {
LABEL_142:
          bzero(&v739[15 * v441], 120 * (v760 - v309));
        }
      }

      else
      {
        v441 = 0;
        if (v756 < v760)
        {
          goto LABEL_142;
        }
      }

      v483 = v798;
      *p_dimensionOrder->dimensions = v797;
      *&v762->_dimensionOrder.dimensions[2] = v483;
      sub_239CFA810(v762, a3, a4, &v780, v321, v322, v323, v324);
      objc_msgSend_offset(v762, v484, v485, v486, v487, v488, v489, v490);
      objc_msgSend_subarrayWithRange_(a5, v491, *&v808[16] + v750, v309, v492, v493, v494, v495);
      MPSDecrementReadCount();
      *&v765[16] = v309;
      v766.i64[0] = v750;
      HIWORD(v773) = v309;
      WORD5(v773) = *(objc_msgSend_objectAtIndexedSubscript_(v731, v496, 0, v497, v498, v499, v500, v501) + *MEMORY[0x277CD72F8]);
      if (v309)
      {
        v509 = 0;
        if (v760 >= v308 + v736)
        {
          v510 = v308 + v736;
        }

        else
        {
          v510 = v760;
        }

        v511 = v739;
        do
        {
          if (v759)
          {
            v516 = objc_msgSend_objectAtIndexedSubscript_(v743, v502, v509, v504, v505, v506, v507, v508);
          }

          else
          {
            objc_msgSend_offset(v762, v502, v503, v504, v505, v506, v507, v508);
            v516 = objc_msgSend_objectAtIndexedSubscript_(a5, v517, v750 + v509 + *&v808[16], v518, v519, v520, v521, v522);
          }

          v523 = v516;
          v524 = *v292;
          v525 = v516 + *MEMORY[0x277CD7320];
          v526 = atomic_load_explicit(v525, memory_order_acquire);
          if ((*(v525 + 56) & 2) != 0)
          {
            if (*(v525 + 52) < 2u)
            {
              v527 = 2;
            }

            else
            {
              v527 = 3;
            }
          }

          else if (v526)
          {
            v527 = objc_msgSend_textureType(v526, v502, v503, v504, v505, v506, v507, v508);
          }

          else
          {
            v527 = objc_msgSend_textureType(*(v525 + 40), v502, v503, v504, v505, v506, v507, v508);
          }

          v528 = *(v523 + *MEMORY[0x277CD72F0]) - 1;
          if (v528 <= 4)
          {
            v512 = dword_239D90E88[v528];
          }

          else
          {
            v512 = 0;
          }

          if (v527 == 3)
          {
            ++v512;
          }

          if (*(v523 + *MEMORY[0x277CD7310]) > 1uLL)
          {
            v512 |= 2u;
          }

          if ((*(v523 + *v292) & 0x3000000) != 0)
          {
            v512 |= 4u;
          }

          v513 = *(v523 + *MEMORY[0x277CD72F8]);
          v514 = *(v523 + *MEMORY[0x277CD7300]);
          v515 = 2;
          if (v513 > 4)
          {
            v515 = 3;
          }

          *v511 = v523;
          v511[1] = v523 + v524;
          *(v511 + 4) = v512;
          v511[3] = v513;
          v511[4] = v515;
          v511[5] = 0;
          v511[6] = v514;
          v511[14] = 0;
          ++v509;
          v511 += 15;
        }

        while (v510 != v509);
      }

      else
      {
        v510 = 0;
      }

      if (v756 < v760)
      {
        bzero(&v739[15 * v510], 120 * (v760 - v309));
      }

      v529 = v796;
      *p_dimensionOrder->dimensions = v795;
      *&v762->_dimensionOrder.dimensions[2] = v529;
      if (v759)
      {
        v752 = 0;
        v530 = 0;
        while (2)
        {
          v531 = objc_msgSend_count(a7, v502, v503, v504, v505, v506, v507, v508);
          v538 = v531;
          v539 = v531 - v530;
          if (v760 >= v531 - v530)
          {
            v540 = v531 - v530;
          }

          else
          {
            v540 = v760;
          }

          if (v740)
          {
            *v808 = 0;
            v503 = sub_239CFCE30(a7, a4, v530, v540, v808, v535, v536, v537);
            *&v768 = v503;
            DWORD2(v767) = *v808;
            if (aSelectora)
            {
              objc_msgSend_addObject_(aSelectora, v502, v503, v504, v505, v506, v507, v508);
            }
          }

          else
          {
            v541 = objc_msgSend_objectAtIndexedSubscript_(a7, v532, v530, v533, v534, v535, v536, v537);
            v549 = objc_msgSend_texture(v541, v542, v543, v544, v545, v546, v547, v548);
            v556 = *(objc_msgSend_objectAtIndexedSubscript_(a7, v550, v530, v551, v552, v553, v554, v555) + *MEMORY[0x277CD72F0]);
            v564 = objc_msgSend_textureType(v549, v557, v558, v559, v560, v561, v562, v563);
            if (v556 - 1 > 4)
            {
              v572 = 0;
            }

            else
            {
              v572 = dword_239D90E88[v556 - 1];
            }

            if (v564 == 3)
            {
              v573 = v572 + 1;
            }

            else
            {
              v573 = v572;
            }

            objc_msgSend_device(v549, v565, v566, v567, v568, v569, v570, v571);
            v574 = MPSDevice::GetMPSDevice();
            v582 = objc_msgSend_pixelFormat(v549, v575, v576, v577, v578, v579, v580, v581);
            v583 = MPSDevice::GetPixelInfo(v574, v582, v556);
            v584 = v573 | 4;
            if ((v583 & 0x3000000) == 0)
            {
              v584 = v573;
            }

            *&v768 = v549;
            DWORD2(v767) = v584;
            if (aSelectora)
            {
              objc_msgSend_addObject_(aSelectora, v502, v549, v504, v505, v506, v507, v508);
            }
          }

          *&v765[24] = v540;
          v766.i64[1] = v530;
          WORD3(v769) = v540;
          LOWORD(v770) = v742;
          if (v540)
          {
            if (v760 >= v538 + v752)
            {
              v585 = v538 + v752;
            }

            else
            {
              v585 = v760;
            }

            v586 = v530;
            v587 = v739 + 13;
            v588 = v585;
            do
            {
              if (a7)
              {
                objc_msgSend_clipRect(v762, v502, v503, v504, v505, v506, v507, v508);
                v599 = objc_msgSend_objectAtIndexedSubscript_(a7, v593, v586 + *&v808[16], v594, v595, v596, v597, v598);
              }

              else
              {
                v599 = 0;
              }

              v600 = *v292;
              v601 = v599 + *MEMORY[0x277CD7320];
              v602 = atomic_load_explicit(v601, memory_order_acquire);
              if ((*(v601 + 56) & 2) != 0)
              {
                if (*(v601 + 52) < 2u)
                {
                  v603 = 2;
                }

                else
                {
                  v603 = 3;
                }
              }

              else if (v602)
              {
                v603 = objc_msgSend_textureType(v602, v502, v503, v504, v505, v506, v507, v508);
              }

              else
              {
                v603 = objc_msgSend_textureType(*(v601 + 40), v502, v503, v504, v505, v506, v507, v508);
              }

              v604 = *(v599 + *MEMORY[0x277CD72F0]) - 1;
              if (v604 <= 4)
              {
                v589 = dword_239D90E88[v604];
              }

              else
              {
                v589 = 0;
              }

              if (v603 == 3)
              {
                ++v589;
              }

              if (*(v599 + *MEMORY[0x277CD7310]) > 1uLL)
              {
                v589 |= 2u;
              }

              if ((*(v599 + *v292) & 0x3000000) != 0)
              {
                v589 |= 4u;
              }

              v590 = *(v599 + *MEMORY[0x277CD72F8]);
              v591 = 2;
              if (v590 > 4)
              {
                v591 = 3;
              }

              v592 = *(v599 + *MEMORY[0x277CD7300]);
              *(v587 - 6) = v599;
              *(v587 - 5) = v599 + v600;
              *(v587 - 8) = v589;
              *(v587 - 3) = v590;
              *(v587 - 2) = v591;
              *(v587 - 1) = 0;
              *v587 = v592;
              v587 += 15;
              ++v586;
              --v588;
            }

            while (v588);
          }

          else
          {
            v585 = 0;
          }

          if (v539 < v760)
          {
            bzero(&v739[15 * v585], 120 * (v760 - v540));
          }

          if (!v775.i64[1] || !v776.i64[0])
          {
            goto LABEL_177;
          }

          v605 = *(&v762->super.super.super.isa + v738);
          objc_msgSend_dimensionOrder(v762, v502, v503, v504, v505, v506, v507, v508);
          v606 = *&v808[24];
          v614 = objc_msgSend_maxBatchSize(v762, v607, v608, v609, v610, v611, v612, v613);
          *v808 = v614;
          *&v808[8] = BYTE8(v767) & 0x3F | ((v771 & 0x3F) << 6);
          *&v808[16] = v606;
          memset(&v808[24], 0, 56);
          MPSLibrary::CreateUberShaderKey();
          PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
          MPSLibrary::ReleaseMPSKey();
          v623 = objc_msgSend_width(*v767, v616, v617, v618, v619, v620, v621, v622, 0, 0, 0, 0, 0);
          v631 = objc_msgSend_height(*v767, v624, v625, v626, v627, v628, v629, v630);
          v639.i16[0] = v623;
          v639.i16[1] = v631;
          v639.i16[2] = (WORD5(v773) + 3) >> 2;
          v639.i16[3] = *&v765[16];
          v757 = v639;
          switch(v606)
          {
            case 2:
              v639.i16[1] = *&v765[24];
              break;
            case 1:
              v639.i16[0] = *&v765[24];
              break;
            case 0:
              v639.i16[2] = (*&v765[24] + 3) >> 2;
              v639.i16[3] = (*&v765[16] + 3) >> 2;
              break;
            default:
LABEL_233:
              v640 = objc_msgSend_maxTotalThreadsPerThreadgroup(PipelineStateForMPSKey, v632, v633, v634, v635, v636, v637, v638);
              v804 = 0;
              sub_239CFDA18(*(v605 + 16), v640, &v804, v641, v642, v643, v644, v645, v757);
              v745 = v652;
              v653 = v652.u16[2];
              HIWORD(v769) = v652.i16[0] * v652.i16[1] * v652.i16[2];
              if (v757.u16[2] >= 2u)
              {
                v655 = 0x80000000 / v757.u16[2];
                v656 = __clz(v655);
                v657 = v655 >> (16 - v656);
                v658 = v656 + 15;
                v659 = -65536 * v757.u16[2] * v657 / v757.u16[2];
                if (v659 <= v657)
                {
                  v660 = v657;
                }

                else
                {
                  v660 = v657 + 1;
                }

                if (v659 <= v657)
                {
                  LOWORD(v657) = 0;
                }

                v654 = (v658 << 48) | ((v659 - v657) << 32) | (v660 << 16) | v757.u16[2];
              }

              else
              {
                v654 = 65537;
              }

              v758 = v804;
              *(&v770 + 4) = v654;
              objc_msgSend_setComputePipelineState_(a3, v646, PipelineStateForMPSKey, v647, v648, v649, v650, v651);
              v668 = *(&v771 + 1);
              if ((v771 & 2) == 0)
              {
                objc_msgSend_setTexture_atIndex_(a3, v661, *(&v771 + 1), v614, v664, v665, v666, v667);
                goto LABEL_262;
              }

              v673 = objc_msgSend_count(*(&v771 + 1), v661, v662, v663, v664, v665, v666, v667);
              v737 = v653;
              v818 = 0u;
              v819 = 0u;
              v816 = 0u;
              v817 = 0u;
              v814 = 0u;
              v815 = 0u;
              v812 = 0u;
              v813 = 0u;
              v810 = 0u;
              v811 = 0u;
              v809 = 0u;
              memset(v808, 0, sizeof(v808));
              if (v614)
              {
                v674 = v673;
                for (i = 0; i < v614; i += v677)
                {
                  if (v674 <= i)
                  {
                    v676 = 0;
                    if (v614 - i >= 0x20)
                    {
                      v677 = 32;
                    }

                    else
                    {
                      v677 = v614 - i;
                    }

                    v678 = v677;
                    if (!v677)
                    {
                      goto LABEL_254;
                    }
                  }

                  else
                  {
                    if (v674 - i >= 0x20)
                    {
                      v676 = 32;
                      objc_msgSend_getObjects_range_(v668, v669, v808, i, 32, v670, v671, v672);
                    }

                    else
                    {
                      v676 = v674 - i;
                      objc_msgSend_getObjects_range_(v668, v669, v808, i, v674 - i, v670, v671, v672);
                    }

                    if (v614 - i >= 0x20)
                    {
                      v677 = 32;
                    }

                    else
                    {
                      v677 = v614 - i;
                    }

                    v678 = v677 - v676;
                    if (v677 == v676)
                    {
                      goto LABEL_254;
                    }
                  }

                  bzero(&v808[8 * v676], 8 * v678);
LABEL_254:
                  objc_msgSend_setTextures_withRange_(a3, v669, v808, i + v614, v677, v670, v671, v672);
                }
              }

              v653 = v737;
LABEL_262:
              objc_msgSend_setBytes_length_atIndex_(a3, v669, &v772, 32, 1, v670, v671, v672);
              Sampler = MPSDevice::GetSampler();
              objc_msgSend_setSamplerState_atIndex_(a3, v680, Sampler, 1, v681, v682, v683, v684);
              v692 = v768;
              if ((BYTE8(v767) & 2) == 0)
              {
                objc_msgSend_setTexture_atIndex_(a3, v685, v768, 0, v688, v689, v690, v691);
                goto LABEL_283;
              }

              v697 = objc_msgSend_count(v768, v685, v686, v687, v688, v689, v690, v691);
              v698 = v653;
              v818 = 0u;
              v819 = 0u;
              v816 = 0u;
              v817 = 0u;
              v814 = 0u;
              v815 = 0u;
              v812 = 0u;
              v813 = 0u;
              v810 = 0u;
              v811 = 0u;
              v809 = 0u;
              memset(v808, 0, sizeof(v808));
              if (!v614)
              {
LABEL_282:
                v653 = v698;
LABEL_283:
                objc_msgSend_setBytes_length_atIndex_(a3, v693, &v768 + 8, 40, 0, v694, v695, v696);
                v803 = vrev64_s32(vmovn_s64(v766));
                objc_msgSend_setBytes_length_atIndex_(a3, v704, &v803, 8, 30, v705, v706, v707);
                v708 = vand_s8(*&vmovl_u16(v758), 0xFFFF0000FFFFLL);
                *&v709 = v708.u32[0];
                *(&v709 + 1) = v708.u32[1];
                *v808 = v709;
                *&v808[16] = (v758.i16[2] * v758.i16[3]);
                v710 = vand_s8(*&vmovl_u16(v745), 0xFFFF0000FFFFLL);
                *&v709 = v710.u32[0];
                *(&v709 + 1) = v710.u32[1];
                v801 = v709;
                v802 = v653;
                objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a3, v711, v808, &v801, v712, v713, v714, v715);
LABEL_177:
                v530 += v760;
                v752 -= v760;
                if (v530 >= v759)
                {
                  goto LABEL_284;
                }

                continue;
              }

              v699 = v697;
              v700 = 0;
              while (2)
              {
                if (v699 <= v700)
                {
                  v701 = 0;
                  if (v614 - v700 >= 0x20)
                  {
                    v702 = 32;
                  }

                  else
                  {
                    v702 = v614 - v700;
                  }

                  v703 = v702;
                  if (v702)
                  {
LABEL_274:
                    bzero(&v808[8 * v701], 8 * v703);
                  }
                }

                else
                {
                  if (v699 - v700 >= 0x20)
                  {
                    v701 = 32;
                    objc_msgSend_getObjects_range_(v692, v693, v808, v700, 32, v694, v695, v696);
                  }

                  else
                  {
                    v701 = v699 - v700;
                    objc_msgSend_getObjects_range_(v692, v693, v808, v700, v699 - v700, v694, v695, v696);
                  }

                  if (v614 - v700 >= 0x20)
                  {
                    v702 = 32;
                  }

                  else
                  {
                    v702 = v614 - v700;
                  }

                  v703 = v702 - v701;
                  if (v702 != v701)
                  {
                    goto LABEL_274;
                  }
                }

                objc_msgSend_setTextures_withRange_(a3, v693, v808, v700, v702, v694, v695, v696);
                v700 += v702;
                if (v700 >= v614)
                {
                  goto LABEL_282;
                }

                continue;
              }
          }

          break;
        }

        v757 = v639;
        goto LABEL_233;
      }

LABEL_284:
      objc_autoreleasePoolPop(context);
      ++v742;
      v736 -= v760;
      v750 += v760;
    }

    while (v750 < v733);
  }

  v716 = v806;
  *p_dimensionOrder->dimensions = v805;
  *&v762->_dimensionOrder.dimensions[2] = v716;

  free(v739);
  if (a6)
  {
    v723 = objc_msgSend_objectAtIndexedSubscript_(a6, v717, 0, v718, v719, v720, v721, v722);
    v724 = *&v762->_dimensionOrder.dimensions[2];
    v723[18] = *p_dimensionOrder->dimensions;
    v723[19] = v724;
    v725 = v762->_dimensionOrder.dimensions[1];
    *&v808[8 * p_dimensionOrder->dimensions[0]] = 0;
    *&v808[8 * v725] = 1;
    v726 = v762->_dimensionOrder.dimensions[3];
    *&v808[8 * v762->_dimensionOrder.dimensions[2]] = 2;
    *&v808[8 * v726] = 3;
    v723[20] = *v808;
    v723[21] = *&v808[16];
  }

  MPSAutoCache::~MPSAutoCache(v764);
}

- (void)encodeBatchToCommandEncoder:(id)a3 commandBuffer:(id)a4 sourceImages:(id)a5 inStates:(id)a6 destinationImages:(id)a7
{
  v8 = a7;
  v9 = a6;
  v11 = a4;
  v14 = objc_msgSend_objectAtIndexedSubscript_(a5, a2, 0, a4, a5, a6, a7, v7);
  v22 = objc_msgSend_width(v14, v15, v16, v17, v18, v19, v20, v21);
  v29 = objc_msgSend_objectAtIndexedSubscript_(a5, v23, 0, v24, v25, v26, v27, v28);
  v37 = objc_msgSend_height(v29, v30, v31, v32, v33, v34, v35, v36);
  v52 = objc_msgSend_count(a5, v38, v39, v40, v41, v42, v43, v44);
  if (v8)
  {
    v53 = objc_msgSend_objectAtIndexedSubscript_(v8, v45, 0, v47, v48, v49, v50, v51);
    v166 = objc_msgSend_width(v53, v54, v55, v56, v57, v58, v59, v60);
    v67 = objc_msgSend_objectAtIndexedSubscript_(v8, v61, 0, v62, v63, v64, v65, v66);
    v165 = objc_msgSend_height(v67, v68, v69, v70, v71, v72, v73, v74);
    v164 = objc_msgSend_count(v8, v75, v76, v77, v78, v79, v80, v81);
    if (self)
    {
      v161 = v8;
      v88 = v52;
      v89 = a3;
      v90 = v37;
      v91 = v22;
      v92 = v11;
      v93 = v9;
      v94 = v175;
      objc_msgSend_clipRect(self, v45, v82, v83, v84, v85, v86, v87);
      v103 = v174;
      v167 = v103 >> 64;
      v102 = v103;
LABEL_9:
      v163 = *v94;
      v184 = 0uLL;
      v185 = 0;
      v9 = v93;
      v11 = v92;
      v22 = v91;
      v37 = v90;
      a3 = v89;
      v52 = v88;
      v8 = v161;
      goto LABEL_10;
    }

LABEL_13:
    v163 = 0;
    v167 = 0;
    v102 = 0;
    memset(v175, 0, sizeof(v175));
    v174 = 0u;
    v184 = *&v175[1];
    v185 = 0;
    if (!a5)
    {
      return;
    }

    goto LABEL_14;
  }

  if (!self)
  {
    v164 = 0;
    v165 = 0;
    v166 = 0;
    goto LABEL_13;
  }

  objc_msgSend_offset(self, v45, v46, v47, v48, v49, v50, v51);
  if ((v168 & 0x8000000000000000) == 0)
  {
    objc_msgSend_offset(self, v104, v105, v106, v107, v108, v109, v110);
    v102 = v184;
    objc_msgSend_offset(self, v111, v112, v113, v114, v115, v116, v117);
    if ((v182 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_23:
    v167 = 0;
    objc_msgSend_offset(self, v118, v119, v120, v121, v122, v123, v124);
    if ((v177 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

  v102 = 0;
  objc_msgSend_offset(self, v104, v105, v106, v107, v108, v109, v110);
  if (v182 < 0)
  {
    goto LABEL_23;
  }

LABEL_7:
  objc_msgSend_offset(self, v118, v119, v120, v121, v122, v123, v124);
  v167 = v179;
  objc_msgSend_offset(self, v125, v126, v127, v128, v129, v130, v131);
  if ((v177 & 0x8000000000000000) == 0)
  {
LABEL_8:
    v161 = 0;
    v88 = v52;
    v89 = a3;
    v90 = v37;
    v91 = v22;
    v92 = v11;
    v93 = v9;
    v94 = v176;
    objc_msgSend_offset(self, v95, v96, v97, v98, v99, v100, v101);
    v164 = 0;
    v165 = 0;
    v166 = 0;
    goto LABEL_9;
  }

LABEL_24:
  v163 = 0;
  v164 = 0;
  v165 = 0;
  v166 = 0;
LABEL_10:
  objc_msgSend_clipRect(self, v95, v96, v97, v98, v99, v100, v101);
  v184 = *&v175[1];
  v185 = v175[3];
  if (!a5)
  {
    return;
  }

LABEL_14:
  if (a3)
  {
    v181 = v22;
    v182 = v37;
    v183 = v52;
    v178 = v166;
    v179 = v165;
    v180 = v164;
    *&v174 = v102;
    *(&v174 + 1) = v167;
    v175[0] = v163;
    *&v175[1] = v184;
    v175[3] = v185;
    v168 = v102;
    v169 = v167;
    v170 = v163;
    v171 = -1;
    v172 = -1;
    v173 = -1;
    objc_msgSend_encodeBatchInternalToCommandEncoder_commandBuffer_sourceImages_inStates_destinationImages_srcSize_destSize_testClipRect_testMaxClipRect_(self, v45, a3, v11, a5, v9, v8, &v181, &v178, &v174, &v168);
  }

  else
  {
    v162 = v9;
    v132 = objc_alloc(MEMORY[0x277CD7210]);
    v160 = v11;
    v144 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v132, v133, v11, 0, v134, v135, v136, v137);
    v176[1] = v144;
    v176[2] = self;
    if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
    {
      v145 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
      if (v145 || (v146 = objc_opt_class(), v145 = NSStringFromClass(v146), objc_msgSend_setLabel_(self, v147, v145, v148, v149, v150, v151, v152), v145))
      {
        objc_msgSend_setLabel_(v144, v138, v145, v139, v140, v141, v142, v143);
      }
    }

    v181 = v22;
    v182 = v37;
    v183 = v52;
    v178 = v166;
    v179 = v165;
    v180 = v164;
    *&v174 = v102;
    *(&v174 + 1) = v167;
    v175[0] = v163;
    *&v175[1] = v184;
    v175[3] = v185;
    v168 = v102;
    v169 = v167;
    v170 = v163;
    v171 = -1;
    v172 = -1;
    v173 = -1;
    objc_msgSend_encodeBatchInternalToCommandEncoder_commandBuffer_sourceImages_inStates_destinationImages_srcSize_destSize_testClipRect_testMaxClipRect_(self, v138, v144, v160, a5, v162, v8, &v181, &v178, &v174, &v168);
    objc_msgSend_endEncoding(v144, v153, v154, v155, v156, v157, v158, v159);
  }
}

- (id)resultStateForSourceImage:(id)a3 sourceStates:(id)a4 destinationImage:(id)a5
{
  v9 = [MPSNNPermuteGradientState alloc];
  v16 = objc_msgSend_initWithResource_(v9, v10, 0, v11, v12, v13, v14, v15);
  objc_msgSend_copyToGradientState_sourceImage_sourceStates_destinationImage_(self, v17, v16, a3, a4, a5, v18, v19);
  v20 = *&self->_dimensionOrder.dimensions[2];
  v16[18] = *self->_dimensionOrder.dimensions;
  v16[19] = v20;
  v21 = self->_dimensionOrder.dimensions[1];
  *(v25 + self->_dimensionOrder.dimensions[0]) = 0;
  *(v25 + v21) = 1;
  v22 = self->_dimensionOrder.dimensions[3];
  *(v25 + self->_dimensionOrder.dimensions[2]) = 2;
  *(v25 + v22) = 3;
  v23 = v25[1];
  v16[20] = v25[0];
  v16[21] = v23;

  return v16;
}

- (id)temporaryResultStateForCommandBuffer:(id)a3 sourceImage:(id)a4 sourceStates:(id)a5 destinationImage:(id)a6
{
  v12 = objc_msgSend_temporaryStateWithCommandBuffer_(MPSNNPermuteGradientState, a2, a3, a4, a5, a6, v6, v7);
  objc_msgSend_copyToGradientState_sourceImage_sourceStates_destinationImage_(self, v13, v12, a4, a5, a6, v14, v15);
  v16 = *&self->_dimensionOrder.dimensions[2];
  v12[18] = *self->_dimensionOrder.dimensions;
  v12[19] = v16;
  v17 = self->_dimensionOrder.dimensions[1];
  *(v21 + self->_dimensionOrder.dimensions[0]) = 0;
  *(v21 + v17) = 1;
  v18 = self->_dimensionOrder.dimensions[3];
  *(v21 + self->_dimensionOrder.dimensions[2]) = 2;
  *(v21 + v18) = 3;
  v19 = v21[1];
  v12[20] = v21[0];
  v12[21] = v19;
  return v12;
}

- (MPSNNDimensionOrder)dimensionOrder
{
  v3 = *&self[10].dimensions[3];
  *retstr->dimensions = *&self[10].dimensions[1];
  *&retstr->dimensions[2] = v3;
  return self;
}

- (void)setDimensionOrder:(MPSNNDimensionOrder *)a3
{
  v3 = *&a3->dimensions[2];
  *self->_dimensionOrder.dimensions = *a3->dimensions;
  *&self->_dimensionOrder.dimensions[2] = v3;
}

@end