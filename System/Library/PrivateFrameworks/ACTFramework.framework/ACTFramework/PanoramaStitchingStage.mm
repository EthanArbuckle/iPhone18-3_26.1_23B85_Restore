@interface PanoramaStitchingStage
- (CGRect)roi;
- (PanoramaStitchingStage)initWithContext:(id)a3 bitDepth:(int)a4;
- (int)prepareToProcess:(int)a3 sliceWidth:(unint64_t)a4 sliceHeight:(unint64_t)a5;
- (uint64_t)_centralStitchAddSlice:(uint64_t)a3 sliceHomography:(uint64_t)a4 sliceType:(int)a5;
- (uint64_t)_seamStitchAddSlice:(__n128)a3 sliceHomography:(__n128)a4 sliceType:(uint64_t)a5;
- (uint64_t)addSlice:(uint64_t)a3 sliceHomography:(uint64_t)a4 sliceType:;
@end

@implementation PanoramaStitchingStage

- (uint64_t)_centralStitchAddSlice:(uint64_t)a3 sliceHomography:(uint64_t)a4 sliceType:(int)a5
{
  v65 = *(a1 + 80);
  v66 = a5;
  v63 = 0u;
  v64 = 0u;
  v62 = 0u;
  v67 = __invert_f3(a2);
  DWORD2(v62) = v67.columns[0].i32[2];
  DWORD2(v63) = v67.columns[1].i32[2];
  *&v62 = v67.columns[0].i64[0];
  *&v63 = v67.columns[1].i64[0];
  DWORD2(v64) = v67.columns[2].i32[2];
  *&v64 = v67.columns[2].i64[0];
  v10 = objc_msgSend_commandQueue(*(a1 + 8), v7, v8, v9);
  v14 = objc_msgSend_commandBuffer(v10, v11, v12, v13);

  objc_msgSend_setLabel_(v14, v15, @"Panorama:StitchingStage:_centralStitchAddSlice", v16);
  v20 = objc_msgSend_computeCommandEncoder(v14, v17, v18, v19);
  v24 = objc_msgSend_computeCentralStitchingMask(*(a1 + 16), v21, v22, v23);
  getThreadgroupSizeForShader(v24, &v60);

  v28 = objc_msgSend_computeCentralStitchingMask(*(a1 + 16), v25, v26, v27);
  objc_msgSend_setComputePipelineState_(v20, v29, v28, v30);

  objc_msgSend_setTexture_atIndex_(v20, v31, *(a1 + 120), 0);
  objc_msgSend_setBytes_length_atIndex_(v20, v32, &v66, 4, 0);
  objc_msgSend_setBytes_length_atIndex_(v20, v33, &v65, 4, 1);
  objc_msgSend_setBytes_length_atIndex_(v20, v34, &v62, 48, 2);
  v38 = objc_msgSend_width(*(a1 + 120), v35, v36, v37);
  v42 = objc_msgSend_height(*(a1 + 120), v39, v40, v41);
  v59[0] = v38;
  v59[1] = v42;
  v59[2] = 1;
  v57 = v60;
  v58 = v61;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v20, v43, v59, &v57);
  objc_msgSend_endEncoding(v20, v44, v45, v46);
  objc_msgSend_commit(v14, v47, v48, v49);
  if (a5 > 1)
  {
    if (a5 != 2)
    {
      if (a5 == 3)
      {
        *(a1 + 136) = 0;
        *(a1 + 144) = 0;
      }

      goto LABEL_13;
    }

    if (*(a1 + 80) != 2)
    {
      goto LABEL_13;
    }

LABEL_11:
    v50 = 0x3FE0000000000000;
    goto LABEL_12;
  }

  if (!a5)
  {
    if (*(a1 + 80) == 1)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (a5 == 1)
  {
    v50 = 0x3FDF5C28F5C28F5CLL;
LABEL_12:
    *(a1 + 136) = v50;
  }

LABEL_13:
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + 152) = _Q0;

  return 0;
}

- (CGRect)roi
{
  x = self->_roi.origin.x;
  y = self->_roi.origin.y;
  width = self->_roi.size.width;
  height = self->_roi.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (PanoramaStitchingStage)initWithContext:(id)a3 bitDepth:(int)a4
{
  v7 = a3;
  v17.receiver = self;
  v17.super_class = PanoramaStitchingStage;
  v8 = [(PanoramaStitchingStage *)&v17 init];
  v9 = v8;
  if (v8 && (objc_storeStrong(&v8->_metal, a3), v10 = [PanoramaStitchingShaders alloc], v13 = objc_msgSend_initWithContext_(v10, v11, v7, v12), shaders = v9->_shaders, v9->_shaders = v13, shaders, v9->_shaders))
  {
    v9->_direction = 1;
    v9->_isReadyToProcess = 0;
    v9->_bitDepth = a4;
    v15 = v9;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (uint64_t)_seamStitchAddSlice:(__n128)a3 sliceHomography:(__n128)a4 sliceType:(uint64_t)a5
{
  *&v231[16] = a3;
  *&v231[32] = a4;
  *v231 = a2;
  v246 = *(a1 + 80);
  v244 = 0uLL;
  v245 = 0;
  LumaMTLPixelFormat = getLumaMTLPixelFormat(*(a1 + 88));
  ChromaMTLPixelFormat = getChromaMTLPixelFormat(*(a1 + 88));
  v12 = 3;
  v15 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(*(a1 + 8), v13, a6, LumaMTLPixelFormat, 3, 0);
  if (v15)
  {
    v12 = 3;
    v19 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(*(a1 + 8), v14, a6, ChromaMTLPixelFormat, 3, 1);
    if (v19)
    {
      v20 = objc_msgSend_commandQueue(*(a1 + 8), v16, v17, v18);
      v24 = objc_msgSend_commandBuffer(v20, v21, v22, v23);

      objc_msgSend_setLabel_(v24, v25, @"Panorama:StitchingStage:_seamStitchAddSlice", v26);
      v33 = objc_msgSend_computeCommandEncoder(v24, v27, v28, v29);
      if (a7 == 1)
      {
        v241 = 0u;
        v242 = 0u;
        v240 = 0u;
        v247 = __invert_f3(*v231);
        DWORD2(v240) = v247.columns[0].i32[2];
        DWORD2(v241) = v247.columns[1].i32[2];
        *&v240 = v247.columns[0].i64[0];
        *&v241 = v247.columns[1].i64[0];
        DWORD2(v242) = v247.columns[2].i32[2];
        *&v242 = v247.columns[2].i64[0];
        v62 = objc_msgSend_computeSeamCost(*(a1 + 16), v59, v60, v61);
        getThreadgroupSizeForShader(v62, &v244);

        v66 = objc_msgSend_computeSeamCost(*(a1 + 16), v63, v64, v65);
        objc_msgSend_setComputePipelineState_(v33, v67, v66, v68);

        objc_msgSend_setTexture_atIndex_(v33, v69, *(a1 + 24), 0);
        objc_msgSend_setTexture_atIndex_(v33, v70, *(a1 + 32), 1);
        objc_msgSend_setTexture_atIndex_(v33, v71, v15, 2);
        objc_msgSend_setTexture_atIndex_(v33, v72, v19, 3);
        objc_msgSend_setTexture_atIndex_(v33, v73, *(a1 + 72), 4);
        objc_msgSend_setTexture_atIndex_(v33, v74, *(a1 + 128), 5);
        v75 = sub_23C471888();
        objc_msgSend_setBytes_length_atIndex_(v75, v76, v77, v78, 0);
        v79 = sub_23C471824();
        objc_msgSend_setBytes_length_atIndex_(v79, v80, v81, v82, 1);
        v86 = objc_msgSend_width(v19, v83, v84, v85);
        v90 = objc_msgSend_height(v19, v87, v88, v89);
        sub_23C471834(v90, v91, v92, v93, v94, v95, v96, v97, *v231, *&v231[8], *&v231[16], *&v231[24], *&v231[32], *&v231[40], *v238, *&v238[16], v239, v240, *(&v240 + 1), v241, *(&v241 + 1), v242, *(&v242 + 1), *v243, *&v243[8], *&v243[16]);
        v101 = objc_msgSend_seamCutDescend(*(a1 + 16), v98, v99, v100);
        sub_23C4718A8(v101, v102, v103, v104);

        objc_msgSend_setTexture_atIndex_(v33, v105, *(a1 + 72), 0);
        v106 = sub_23C471824();
        objc_msgSend_setBytes_length_atIndex_(v106, v107, v108, v109, 0);
        *v243 = 1;
        *&v243[8] = xmmword_23C47B2B0;
        *v238 = 1;
        *&v238[8] = xmmword_23C47B2B0;
        objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v33, v110, v243, v238);
        v114 = objc_msgSend_seamCutAscend(*(a1 + 16), v111, v112, v113);
        sub_23C4718A8(v114, v115, v116, v117);

        objc_msgSend_setTexture_atIndex_(v33, v118, *(a1 + 72), 0);
        objc_msgSend_setTexture_atIndex_(v33, v119, *(a1 + 120), 1);
        v120 = sub_23C471824();
        objc_msgSend_setBytes_length_atIndex_(v120, v121, v122, v123, 0);
        v124 = sub_23C471888();
        objc_msgSend_setBytes_length_atIndex_(v124, v125, v126, v127, 1);
        *v243 = xmmword_23C47B2C0;
        *&v243[16] = 1;
        *v238 = xmmword_23C47B2C0;
        *&v238[16] = 1;
        objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v33, v128, v243, v238);
        v132 = objc_msgSend_initializeSeamPreviousSliceWithMask(*(a1 + 16), v129, v130, v131);
        getThreadgroupSizeForShader(v132, v243);
        v244 = *v243;
        v245 = *&v243[16];

        v136 = objc_msgSend_initializeSeamPreviousSliceWithMask(*(a1 + 16), v133, v134, v135);
        sub_23C4718A8(v136, v137, v138, v139);

        objc_msgSend_setTexture_atIndex_(v33, v140, v15, 0);
        objc_msgSend_setTexture_atIndex_(v33, v141, v19, 1);
        objc_msgSend_setTexture_atIndex_(v33, v142, *(a1 + 120), 2);
        objc_msgSend_setTexture_atIndex_(v33, v143, *(a1 + 24), 3);
        objc_msgSend_setTexture_atIndex_(v33, v144, *(a1 + 32), 4);
        objc_msgSend_setTexture_atIndex_(v33, v145, *(a1 + 40), 5);
        objc_msgSend_setTexture_atIndex_(v33, v146, *(a1 + 48), 6);
        objc_msgSend_setTexture_atIndex_(v33, v147, *(a1 + 56), 7);
        objc_msgSend_setTexture_atIndex_(v33, v148, *(a1 + 64), 8);
        v149 = sub_23C471888();
        objc_msgSend_setBytes_length_atIndex_(v149, v150, v151, v152, 0);
        v153 = sub_23C471824();
        objc_msgSend_setBytes_length_atIndex_(v153, v154, v155, v156, 1);
        objc_msgSend_width(v19, v157, v158, v159);
        v163 = objc_msgSend_height(v19, v160, v161, v162);
        sub_23C471834(v163, v164, v165, v166, v167, v168, v169, v170, v232, v233, v234, v235, v236, v237, *v238, *&v238[16], v239, v240, *(&v240 + 1), v241, *(&v241 + 1), v242, *(&v242 + 1), *v243, *&v243[8], *&v243[16]);
        v171 = *(a1 + 24);
        objc_storeStrong((a1 + 24), *(a1 + 40));
        v172 = *(a1 + 40);
        *(a1 + 40) = v171;
        v173 = v171;

        v174 = *(a1 + 32);
        objc_storeStrong((a1 + 32), *(a1 + 48));
        v175 = *(a1 + 48);
        *(a1 + 48) = v174;
      }

      else if (!a7)
      {
        v34 = objc_msgSend__centralStitchAddSlice_sliceHomography_sliceType_(a1, v30, a6, 3, *v231, *&v231[16], *&v231[32]);
        if (v34)
        {
          v12 = v34;
          goto LABEL_9;
        }

        v38 = objc_msgSend_initializeSeamPreviousSlice(*(a1 + 16), v35, v36, v37);
        getThreadgroupSizeForShader(v38, &v244);

        v42 = objc_msgSend_initializeSeamPreviousSlice(*(a1 + 16), v39, v40, v41);
        objc_msgSend_setComputePipelineState_(v33, v43, v42, v44);

        objc_msgSend_setTexture_atIndex_(v33, v45, v15, 0);
        objc_msgSend_setTexture_atIndex_(v33, v46, v19, 1);
        objc_msgSend_setTexture_atIndex_(v33, v47, *(a1 + 24), 2);
        objc_msgSend_setTexture_atIndex_(v33, v48, *(a1 + 32), 3);
        *&v240 = objc_msgSend_width(v19, v49, v50, v51);
        *(&v240 + 1) = objc_msgSend_height(v19, v52, v53, v54);
        *&v55 = sub_23C471868().n128_u64[0];
        objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v33, v56, v57, v58, v55);
      }

      objc_msgSend_endEncoding(v33, v30, v31, v32, *v231, *&v231[16], *&v231[32]);
      objc_msgSend_commit(v24, v176, v177, v178);
      v182 = objc_msgSend_commandQueue(*(a1 + 8), v179, v180, v181);
      v186 = objc_msgSend_commandBuffer(v182, v183, v184, v185);

      objc_msgSend_setLabel_(v186, v187, @"Panorama:StitchingStage:initializeSeamPreviousSlice", v188);
      v192 = objc_msgSend_computeCommandEncoder(v186, v189, v190, v191);

      v196 = objc_msgSend_initializeSeamPreviousSlice(*(a1 + 16), v193, v194, v195);
      getThreadgroupSizeForShader(v196, &v240);
      v244 = v240;
      v245 = v241;

      v200 = objc_msgSend_initializeSeamPreviousSlice(*(a1 + 16), v197, v198, v199);
      objc_msgSend_setComputePipelineState_(v192, v201, v200, v202);

      objc_msgSend_setTexture_atIndex_(v192, v203, v15, 0);
      objc_msgSend_setTexture_atIndex_(v192, v204, v19, 1);
      objc_msgSend_setTexture_atIndex_(v192, v205, *(a1 + 56), 2);
      objc_msgSend_setTexture_atIndex_(v192, v206, *(a1 + 64), 3);
      v210 = objc_msgSend_width(v19, v207, v208, v209);
      v214 = objc_msgSend_height(v19, v211, v212, v213);
      *&v240 = v210;
      *(&v240 + 1) = v214;
      *&v215 = sub_23C471868().n128_u64[0];
      objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v192, v216, v217, v218, v215);
      objc_msgSend_endEncoding(v192, v219, v220, v221);
      objc_msgSend_commit(v186, v222, v223, v224);
      v12 = 0;
      *(a1 + 136) = 0;
      *(a1 + 144) = 0;
      __asm { FMOV            V0.2D, #1.0 }

      *(a1 + 152) = _Q0;
      v33 = v192;
      v24 = v186;
    }

    else
    {
      v33 = 0;
      v24 = 0;
    }
  }

  else
  {
    v19 = 0;
    v33 = 0;
    v24 = 0;
  }

LABEL_9:

  return v12;
}

- (uint64_t)addSlice:(uint64_t)a3 sliceHomography:(uint64_t)a4 sliceType:
{
  if (*(a1 + 92) != 1)
  {
    return 2;
  }

  v4 = *(a1 + 84);
  if (v4 != 1)
  {
    if (!v4)
    {
      return objc_msgSend__centralStitchAddSlice_sliceHomography_sliceType_(a1, a2, a3, a4);
    }

    return 2;
  }

  return MEMORY[0x2821F9670](a1, sel__seamStitchAddSlice_sliceHomography_sliceType_, a3, a4);
}

- (int)prepareToProcess:(int)a3 sliceWidth:(unint64_t)a4 sliceHeight:(unint64_t)a5
{
  sub_23C471898();
  v13 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(v9, v10, v11, v12);
  objc_msgSend_setUsage_(v13, v14, 3, v15);
  v19 = objc_msgSend_device(self->_metal, v16, v17, v18);
  v22 = objc_msgSend_newTextureWithDescriptor_(v19, v20, v13, v21);
  stitchingMask = self->_stitchingMask;
  self->_stitchingMask = v22;

  if (!self->_stitchingMask)
  {
    goto LABEL_12;
  }

  v25 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x277CD7058], v24, 25, a4, a5, 0);

  objc_msgSend_setUsage_(v25, v26, 3, v27);
  v31 = objc_msgSend_device(self->_metal, v28, v29, v30);
  v34 = objc_msgSend_newTextureWithDescriptor_(v31, v32, v25, v33);
  seamStagingLuma = self->_seamStagingLuma;
  self->_seamStagingLuma = v34;

  if (!self->_seamStagingLuma || (objc_msgSend_device(self->_metal, v36, v37, v38), v39 = objc_claimAutoreleasedReturnValue(), v42 = objc_msgSend_newTextureWithDescriptor_(v39, v40, v25, v41), seamStagingLumaDst = self->_seamStagingLumaDst, self->_seamStagingLumaDst = v42, seamStagingLumaDst, v39, !self->_seamStagingLumaDst) || (objc_msgSend_device(self->_metal, v44, v45, v46), v47 = objc_claimAutoreleasedReturnValue(), v50 = objc_msgSend_newTextureWithDescriptor_(v47, v48, v25, v49), prevLuma = self->_prevLuma, self->_prevLuma = v50, prevLuma, v47, !self->_prevLuma))
  {
    v97 = 2;
    v13 = v25;
    goto LABEL_11;
  }

  sub_23C471898();
  v13 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(v52, v53, v54, v55);

  objc_msgSend_setUsage_(v13, v56, 3, v57);
  v61 = objc_msgSend_device(self->_metal, v58, v59, v60);
  v64 = objc_msgSend_newTextureWithDescriptor_(v61, v62, v13, v63);
  seamStagingChroma = self->_seamStagingChroma;
  self->_seamStagingChroma = v64;

  if (self->_seamStagingChroma && (objc_msgSend_device(self->_metal, v66, v67, v68), v69 = objc_claimAutoreleasedReturnValue(), v72 = objc_msgSend_newTextureWithDescriptor_(v69, v70, v13, v71), seamStagingChromaDst = self->_seamStagingChromaDst, self->_seamStagingChromaDst = v72, seamStagingChromaDst, v69, self->_seamStagingChromaDst) && (objc_msgSend_device(self->_metal, v74, v75, v76), v77 = objc_claimAutoreleasedReturnValue(), v80 = objc_msgSend_newTextureWithDescriptor_(v77, v78, v13, v79), prevChroma = self->_prevChroma, self->_prevChroma = v80, prevChroma, v77, self->_prevChroma))
  {
    sub_23C471898();
    v86 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(v82, v83, v84, v85);

    objc_msgSend_setUsage_(v86, v87, 3, v88);
    v92 = objc_msgSend_device(self->_metal, v89, v90, v91);
    v95 = objc_msgSend_newTextureWithDescriptor_(v92, v93, v86, v94);
    seamCost = self->_seamCost;
    self->_seamCost = v95;

    if (self->_seamCost)
    {
      v97 = 0;
      self->_isReadyToProcess = 1;
      self->_stitchingMode = a3;
    }

    else
    {
      v97 = 2;
    }

    v13 = v86;
  }

  else
  {
LABEL_12:
    v97 = 2;
  }

LABEL_11:

  return v97;
}

@end