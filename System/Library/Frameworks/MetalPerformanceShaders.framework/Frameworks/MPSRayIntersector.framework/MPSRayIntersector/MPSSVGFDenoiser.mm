@interface MPSSVGFDenoiser
- (MPSSVGFDenoiser)initWithDevice:(id)device;
- (MPSSVGFDenoiser)initWithSVGF:(MPSSVGF *)svgf textureAllocator:(id)textureAllocator;
- (id)encodeToCommandBuffer:(id)commandBuffer sourceTexture:(id)sourceTexture motionVectorTexture:(id)motionVectorTexture depthNormalTexture:(id)depthNormalTexture previousDepthNormalTexture:(id)previousDepthNormalTexture;
- (void)dealloc;
- (void)encodeClearToCommandBuffer:(id)a3;
- (void)encodeToCommandBuffer:(id)commandBuffer sourceTexture:(id)sourceTexture destinationTexture:(id *)destinationTexture sourceTexture2:(id)sourceTexture2 destinationTexture2:(id *)destinationTexture2 motionVectorTexture:(id)motionVectorTexture depthNormalTexture:(id)depthNormalTexture previousDepthNormalTexture:(id)previousDepthNormalTexture;
- (void)releaseTemporaryTextures;
- (void)setBilateralFilterIterations:(NSUInteger)bilateralFilterIterations;
@end

@implementation MPSSVGFDenoiser

- (void)setBilateralFilterIterations:(NSUInteger)bilateralFilterIterations
{
  if (!bilateralFilterIterations)
  {
    sub_239E21D88();
  }

  self->_bilateralFilterIterations = bilateralFilterIterations;
}

- (MPSSVGFDenoiser)initWithDevice:(id)device
{
  v5 = [MPSSVGF alloc];
  v9 = objc_msgSend_initWithDevice_(v5, v6, device, v7, v8);
  v10 = [MPSSVGFDefaultTextureAllocator alloc];
  v14 = objc_msgSend_initWithDevice_(v10, v11, device, v12, v13);

  return MEMORY[0x2821F9670](self, sel_initWithSVGF_textureAllocator_, v9, v14, v15);
}

- (MPSSVGFDenoiser)initWithSVGF:(MPSSVGF *)svgf textureAllocator:(id)textureAllocator
{
  v8.receiver = self;
  v8.super_class = MPSSVGFDenoiser;
  v6 = [(MPSSVGFDenoiser *)&v8 init];
  if (v6)
  {
    v6->_svgf = svgf;
    v6->_textureAllocator = textureAllocator;
    v6->_bilateralFilterIterations = 5;
    v6->_clear = 1;
  }

  return v6;
}

- (void)dealloc
{
  objc_msgSend_releaseTemporaryTextures(self, a2, v2, v3, v4);

  self->_svgf = 0;
  self->_textureAllocator = 0;
  v6.receiver = self;
  v6.super_class = MPSSVGFDenoiser;
  [(MPSSVGFDenoiser *)&v6 dealloc];
}

- (void)releaseTemporaryTextures
{
  prevMomentsTexture = self->_prevMomentsTexture;
  if (prevMomentsTexture)
  {
    objc_msgSend_returnTexture_(self->_textureAllocator, a2, prevMomentsTexture, v2, v3);

    self->_prevMomentsTexture = 0;
  }

  prevMomentsTexture2 = self->_prevMomentsTexture2;
  if (prevMomentsTexture2)
  {
    objc_msgSend_returnTexture_(self->_textureAllocator, a2, prevMomentsTexture2, v2, v3);

    self->_prevMomentsTexture2 = 0;
  }

  prevTexture = self->_prevTexture;
  if (prevTexture)
  {
    objc_msgSend_returnTexture_(self->_textureAllocator, a2, prevTexture, v2, v3);

    self->_prevTexture = 0;
  }

  prevTexture2 = self->_prevTexture2;
  if (prevTexture2)
  {
    objc_msgSend_returnTexture_(self->_textureAllocator, a2, prevTexture2, v2, v3);

    self->_prevTexture2 = 0;
  }

  prevFrameCountTexture = self->_prevFrameCountTexture;
  if (prevFrameCountTexture)
  {
    objc_msgSend_returnTexture_(self->_textureAllocator, a2, prevFrameCountTexture, v2, v3);

    self->_prevFrameCountTexture = 0;
  }
}

- (void)encodeClearToCommandBuffer:(id)a3
{
  v6 = objc_msgSend_computeCommandEncoder(a3, a2, a3, v3, v4);
  v7 = *(&self->_svgf->super.super.isa + *MEMORY[0x277CD7370]);
  ComputeState = MPSLibrary::GetComputeState();
  objc_msgSend_setComputePipelineState_(v6, v9, ComputeState, v10, v11);
  objc_msgSend_setTexture_atIndex_(v6, v12, self->_prevFrameCountTexture, 0, v13);
  v18 = (objc_msgSend_width(self->_prevFrameCountTexture, v14, v15, v16, v17) + 7) >> 3;
  v23 = objc_msgSend_height(self->_prevFrameCountTexture, v19, v20, v21, v22);
  v32[0] = v18;
  v32[1] = (v23 + 7) >> 3;
  v32[2] = 1;
  v30 = vdupq_n_s64(8uLL);
  v31 = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v6, v24, v32, &v30, v25);
  objc_msgSend_endEncoding(v6, v26, v27, v28, v29);
}

- (void)encodeToCommandBuffer:(id)commandBuffer sourceTexture:(id)sourceTexture destinationTexture:(id *)destinationTexture sourceTexture2:(id)sourceTexture2 destinationTexture2:(id *)destinationTexture2 motionVectorTexture:(id)motionVectorTexture depthNormalTexture:(id)depthNormalTexture previousDepthNormalTexture:(id)previousDepthNormalTexture
{
  context = objc_autoreleasePoolPush();
  if (commandBuffer)
  {
    if (sourceTexture)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_239E21DD8();
    if (sourceTexture)
    {
LABEL_3:
      if (depthNormalTexture)
      {
        goto LABEL_4;
      }

LABEL_72:
      sub_239E21E78();
      if (destinationTexture)
      {
        goto LABEL_5;
      }

      goto LABEL_73;
    }
  }

  sub_239E21E28();
  if (!depthNormalTexture)
  {
    goto LABEL_72;
  }

LABEL_4:
  if (destinationTexture)
  {
    goto LABEL_5;
  }

LABEL_73:
  sub_239E21EC8();
LABEL_5:
  v20 = objc_msgSend_channelCount(self->_svgf, v16, v17, v18, v19);
  v25 = 115;
  if (v20 == 1)
  {
    v25 = 65;
  }

  v230 = v25;
  v26 = objc_msgSend_width(sourceTexture, v21, v22, v23, v24);
  if (v26 != objc_msgSend_width(self->_prevTexture, v27, v28, v29, v30) || (v35 = objc_msgSend_height(sourceTexture, v31, v32, v33, v34), v35 != objc_msgSend_height(self->_prevTexture, v36, v37, v38, v39)) || v230 != objc_msgSend_pixelFormat(self->_prevTexture, v31, v32, v33, v34))
  {
    objc_msgSend_releaseTemporaryTextures(self, v31, v32, v33, v34);
  }

  if (!self->_prevMomentsTexture)
  {
    textureAllocator = self->_textureAllocator;
    v41 = objc_msgSend_width(sourceTexture, v31, v32, v33, v34);
    v46 = objc_msgSend_height(sourceTexture, v42, v43, v44, v45);
    self->_prevMomentsTexture = objc_msgSend_textureWithPixelFormat_width_height_(textureAllocator, v47, 65, v41, v46);
  }

  if (!self->_prevTexture)
  {
    v48 = self->_textureAllocator;
    v49 = objc_msgSend_width(sourceTexture, v31, v32, v33, v34);
    v54 = objc_msgSend_height(sourceTexture, v50, v51, v52, v53);
    self->_prevTexture = objc_msgSend_textureWithPixelFormat_width_height_(v48, v55, v230, v49, v54);
  }

  if (!self->_prevFrameCountTexture)
  {
    v56 = self->_textureAllocator;
    v57 = objc_msgSend_width(sourceTexture, v31, v32, v33, v34);
    v62 = objc_msgSend_height(sourceTexture, v58, v59, v60, v61);
    self->_prevFrameCountTexture = objc_msgSend_textureWithPixelFormat_width_height_(v56, v63, 53, v57, v62);
    self->_clear = 1;
    goto LABEL_19;
  }

  if (self->_clear)
  {
LABEL_19:
    objc_msgSend_encodeClearToCommandBuffer_(self, v31, commandBuffer, v33, v34);
    self->_clear = 0;
  }

  v64 = self->_textureAllocator;
  v65 = objc_msgSend_width(sourceTexture, v31, v32, v33, v34);
  v70 = objc_msgSend_height(sourceTexture, v66, v67, v68, v69);
  v229 = objc_msgSend_textureWithPixelFormat_width_height_(v64, v71, 65, v65, v70);
  if (sourceTexture2)
  {
    v76 = self->_textureAllocator;
    v77 = objc_msgSend_width(sourceTexture, v72, v73, v74, v75);
    v82 = objc_msgSend_height(sourceTexture, v78, v79, v80, v81);
    v228 = objc_msgSend_textureWithPixelFormat_width_height_(v76, v83, 65, v77, v82);
  }

  else
  {
    v228 = 0;
  }

  v84 = self->_textureAllocator;
  v85 = objc_msgSend_width(sourceTexture, v72, v73, v74, v75);
  v90 = objc_msgSend_height(sourceTexture, v86, v87, v88, v89);
  v226 = sourceTexture2;
  v227 = objc_msgSend_textureWithPixelFormat_width_height_(v84, v91, v230, v85, v90);
  if (sourceTexture2)
  {
    v96 = self->_textureAllocator;
    v97 = objc_msgSend_width(sourceTexture, v92, v93, v94, v95);
    v102 = objc_msgSend_height(sourceTexture, v98, v99, v100, v101);
    v104 = objc_msgSend_textureWithPixelFormat_width_height_(v96, v103, v230, v97, v102);
  }

  else
  {
    v104 = 0;
  }

  v105 = self->_textureAllocator;
  v106 = objc_msgSend_width(sourceTexture, v92, v93, v94, v95);
  v111 = objc_msgSend_height(sourceTexture, v107, v108, v109, v110);
  v113 = objc_msgSend_textureWithPixelFormat_width_height_(v105, v112, 53, v106, v111);
  objc_msgSend_encodeReprojectionToCommandBuffer_sourceTexture_previousTexture_destinationTexture_previousLuminanceMomentsTexture_destinationLuminanceMomentsTexture_sourceTexture2_previousTexture2_destinationTexture2_previousLuminanceMomentsTexture2_destinationLuminanceMomentsTexture2_previousFrameCountTexture_destinationFrameCountTexture_motionVectorTexture_depthNormalTexture_previousDepthNormalTexture_(self->_svgf, v114, commandBuffer, sourceTexture, self->_prevTexture, v227, self->_prevMomentsTexture, v229, v226, self->_prevTexture2, v104, self->_prevMomentsTexture2, v228, self->_prevFrameCountTexture, v113, motionVectorTexture, depthNormalTexture, previousDepthNormalTexture);
  objc_msgSend_returnTexture_(self->_textureAllocator, v115, self->_prevTexture, v116, v117);

  self->_prevTexture = 0;
  prevTexture2 = self->_prevTexture2;
  if (prevTexture2)
  {
    objc_msgSend_returnTexture_(self->_textureAllocator, v118, prevTexture2, v119, v120);

    self->_prevTexture2 = 0;
  }

  objc_msgSend_returnTexture_(self->_textureAllocator, v118, self->_prevMomentsTexture, v119, v120);

  self->_prevMomentsTexture = v229;
  prevMomentsTexture2 = self->_prevMomentsTexture2;
  if (prevMomentsTexture2)
  {
    objc_msgSend_returnTexture_(self->_textureAllocator, v122, prevMomentsTexture2, v123, v124);

    self->_prevMomentsTexture2 = v229;
  }

  objc_msgSend_returnTexture_(self->_textureAllocator, v122, self->_prevFrameCountTexture, v123, v124);

  self->_prevFrameCountTexture = v113;
  v126 = self->_textureAllocator;
  v131 = objc_msgSend_width(sourceTexture, v127, v128, v129, v130);
  v136 = objc_msgSend_height(sourceTexture, v132, v133, v134, v135);
  v138 = objc_msgSend_textureWithPixelFormat_width_height_(v126, v137, v230, v131, v136);
  *destinationTexture = v138;
  if (destinationTexture2)
  {
    if (v226)
    {
      v143 = self->_textureAllocator;
      v144 = objc_msgSend_width(sourceTexture, v139, v140, v141, v142);
      v149 = objc_msgSend_height(sourceTexture, v145, v146, v147, v148);
      v150 = v230;
      v152 = objc_msgSend_textureWithPixelFormat_width_height_(v143, v151, v230, v144, v149);
    }

    else
    {
      v152 = 0;
      v150 = v230;
    }

    *destinationTexture2 = v152;
    v153 = *destinationTexture;
  }

  else
  {
    v153 = v138;
    v152 = 0;
    v150 = v230;
  }

  objc_msgSend_encodeVarianceEstimationToCommandBuffer_sourceTexture_luminanceMomentsTexture_destinationTexture_sourceTexture2_luminanceMomentsTexture2_destinationTexture2_frameCountTexture_depthNormalTexture_(self->_svgf, v139, commandBuffer, v227, v229, v153, v104, v228, v152, v113, depthNormalTexture);
  objc_msgSend_returnTexture_(self->_textureAllocator, v154, v227, v155, v156);
  if (v104)
  {
    objc_msgSend_returnTexture_(self->_textureAllocator, v157, v104, v159, v160);
  }

  v161 = *destinationTexture;
  if (destinationTexture2)
  {
    v162 = *destinationTexture2;
    v163 = self->_textureAllocator;
    v164 = objc_msgSend_width(*destinationTexture, v157, v158, v159, v160);
    v169 = objc_msgSend_height(v161, v165, v166, v167, v168);
    *destinationTexture = objc_msgSend_textureWithPixelFormat_width_height_(v163, v170, v150, v164, v169);
    if (v162)
    {
      v175 = self->_textureAllocator;
      v176 = objc_msgSend_width(v161, v171, v172, v173, v174);
      v181 = objc_msgSend_height(v161, v177, v178, v179, v180);
      v183 = objc_msgSend_textureWithPixelFormat_width_height_(v175, v182, v150, v176, v181);
    }

    else
    {
      v183 = 0;
    }

    v192 = depthNormalTexture;
    *destinationTexture2 = v183;
  }

  else
  {
    v184 = self->_textureAllocator;
    v185 = objc_msgSend_width(*destinationTexture, v157, v158, v159, v160);
    v190 = objc_msgSend_height(v161, v186, v187, v188, v189);
    v162 = 0;
    *destinationTexture = objc_msgSend_textureWithPixelFormat_width_height_(v184, v191, v150, v185, v190);
    v192 = depthNormalTexture;
  }

  if (self->_bilateralFilterIterations)
  {
    v193 = 0;
    while (1)
    {
      prevTexture = v161;
      v195 = v162;
      if (v193 == 1)
      {
        prevTexture = self->_prevTexture;
        v195 = self->_prevTexture2;
      }

      if (destinationTexture2)
      {
        objc_msgSend_encodeBilateralFilterToCommandBuffer_stepDistance_sourceTexture_destinationTexture_sourceTexture2_destinationTexture2_depthNormalTexture_(self->_svgf, v171, commandBuffer, 1 << v193, prevTexture, *destinationTexture, v195, *destinationTexture2, v192);
      }

      else
      {
        objc_msgSend_encodeBilateralFilterToCommandBuffer_stepDistance_sourceTexture_destinationTexture_sourceTexture2_destinationTexture2_depthNormalTexture_(self->_svgf, v171, commandBuffer, 1 << v193, prevTexture, *destinationTexture, v195, 0, v192);
      }

      v196 = *destinationTexture;
      if (v193)
      {
        break;
      }

      self->_prevTexture = v196;
      v197 = self->_textureAllocator;
      v202 = objc_msgSend_width(v161, v198, v199, v200, v201);
      v207 = objc_msgSend_height(v161, v203, v204, v205, v206);
      v209 = objc_msgSend_textureWithPixelFormat_width_height_(v197, v208, v230, v202, v207);
      *destinationTexture = v209;
      if (destinationTexture2)
      {
        self->_prevTexture2 = *destinationTexture2;
        if (v162)
        {
          v211 = self->_textureAllocator;
          v212 = objc_msgSend_width(v161, v171, v210, v173, v174);
          v217 = objc_msgSend_height(v161, v213, v214, v215, v216);
          v219 = objc_msgSend_textureWithPixelFormat_width_height_(v211, v218, v230, v212, v217);
        }

        else
        {
          v219 = 0;
        }

        v192 = depthNormalTexture;
        *destinationTexture2 = v219;
        v196 = *destinationTexture;
        *destinationTexture = v161;
LABEL_60:
        v220 = *destinationTexture2;
        *destinationTexture2 = v162;
        v162 = v220;
        goto LABEL_61;
      }

      v196 = v209;
      *destinationTexture = v161;
      v192 = depthNormalTexture;
LABEL_61:
      ++v193;
      v161 = v196;
      if (v193 >= self->_bilateralFilterIterations)
      {
        goto LABEL_64;
      }
    }

    *destinationTexture = v161;
    if (!destinationTexture2)
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

  v196 = v161;
LABEL_64:
  objc_msgSend_returnTexture_(self->_textureAllocator, v171, *destinationTexture, v173, v174);
  if (destinationTexture2)
  {
    objc_msgSend_returnTexture_(self->_textureAllocator, v221, *destinationTexture2, v222, v223);
    *destinationTexture = v196;
    *destinationTexture2 = v162;
  }

  else
  {
    *destinationTexture = v196;
  }

  objc_autoreleasePoolPop(context);
}

- (id)encodeToCommandBuffer:(id)commandBuffer sourceTexture:(id)sourceTexture motionVectorTexture:(id)motionVectorTexture depthNormalTexture:(id)depthNormalTexture previousDepthNormalTexture:(id)previousDepthNormalTexture
{
  v8 = 0;
  objc_msgSend_encodeToCommandBuffer_sourceTexture_destinationTexture_sourceTexture2_destinationTexture2_motionVectorTexture_depthNormalTexture_previousDepthNormalTexture_(self, a2, commandBuffer, sourceTexture, &v8, 0, 0, motionVectorTexture, depthNormalTexture, previousDepthNormalTexture);
  return v8;
}

@end