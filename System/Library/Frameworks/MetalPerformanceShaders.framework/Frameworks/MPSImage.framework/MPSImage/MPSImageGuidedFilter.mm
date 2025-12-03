@interface MPSImageGuidedFilter
- (MPSImageGuidedFilter)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSImageGuidedFilter)initWithDevice:(id)device kernelDiameter:(NSUInteger)kernelDiameter;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (void)dealloc;
- (void)encodeReconstructionInternalToCommandEncoder:(id)encoder commandBuffer:(id)buffer guidanceTexture:(id)texture coefficientsTexture:(id)coefficientsTexture destinationTexture:(id)destinationTexture;
- (void)encodeReconstructionInternalToCommandEncoder:(id)encoder commandBuffer:(id)buffer guidanceTexture:(id)texture coefficientsTextureA:(id)a coefficientsTextureB:(id)b destinationTexture:(id)destinationTexture;
- (void)encodeReconstructionToCommandEncoder:(id)encoder commandBuffer:(id)buffer guidanceTexture:(id)texture coefficientsTexture:(id)coefficientsTexture destinationTexture:(id)destinationTexture;
- (void)encodeReconstructionToCommandEncoder:(id)encoder commandBuffer:(id)buffer guidanceTexture:(id)texture coefficientsTextureA:(id)a coefficientsTextureB:(id)b destinationTexture:(id)destinationTexture;
- (void)encodeRegressionInternalToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceTexture:(id)texture guidanceTexture:(id)guidanceTexture weightsTexture:(id)weightsTexture destinationCoefficientsTexture:(id)coefficientsTexture;
- (void)encodeRegressionInternalToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceTexture:(id)texture guidanceTexture:(id)guidanceTexture weightsTexture:(id)weightsTexture destinationCoefficientsTextureA:(id)a destinationCoefficientsTextureB:(id)b;
- (void)encodeRegressionToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceTexture:(id)texture guidanceTexture:(id)guidanceTexture weightsTexture:(id)weightsTexture destinationCoefficientsTexture:(id)coefficientsTexture;
- (void)encodeRegressionToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceTexture:(id)texture guidanceTexture:(id)guidanceTexture weightsTexture:(id)weightsTexture destinationCoefficientsTextureA:(id)a destinationCoefficientsTextureB:(id)b;
- (void)encodeWithCoder:(id)coder;
- (void)initFilterInfoWithDevice:(id)device;
@end

@implementation MPSImageGuidedFilter

- (void)initFilterInfoWithDevice:(id)device
{
  v5 = [MPSImageBox alloc];
  v8 = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_(v5, v6, device, self->_kernelDiameter, self->_kernelDiameter, v7);
  self->_boxFilter = v8;
  v14 = objc_msgSend_options(v8, v9, v10, v11, v12, v13);
  objc_msgSend_setOptions_(v8, v15, v14 | 2, v16, v17, v18);
  objc_msgSend_setEdgeMode_(self->_boxFilter, v19, 0, v20, v21, v22);
  v23 = [MPSImageLanczosScale alloc];
  v28 = objc_msgSend_initWithDevice_(v23, v24, device, v25, v26, v27);
  self->_lanczosScaler = v28;
  v34 = objc_msgSend_options(v28, v29, v30, v31, v32, v33);
  objc_msgSend_setOptions_(v28, v35, v34 | 2, v36, v37, v38);
  objc_msgSend_setEdgeMode_(self->_lanczosScaler, v39, 1, v40, v41, v42);
  v43 = [MPSImageBilinearScale alloc];
  v48 = objc_msgSend_initWithDevice_(v43, v44, device, v45, v46, v47);
  self->_bilinearScaler = v48;
  v54 = objc_msgSend_options(v48, v49, v50, v51, v52, v53);
  objc_msgSend_setOptions_(v48, v55, v54 | 2, v56, v57, v58);
  bilinearScaler = self->_bilinearScaler;

  objc_msgSend_setEdgeMode_(bilinearScaler, v59, 1, v60, v61, v62);
}

- (MPSImageGuidedFilter)initWithDevice:(id)device kernelDiameter:(NSUInteger)kernelDiameter
{
  v12.receiver = self;
  v12.super_class = MPSImageGuidedFilter;
  result = [(MPSKernel *)&v12 initWithDevice:?];
  if (result)
  {
    result->_kernelDiameter = kernelDiameter;
    result->_epsilon = 0.0;
    result->_reconstructScale = 1.0;
    result->_reconstructOffset = 0.0;
    result->_rescaleCoefficients = 0;
    result->_reconstructionCoefficientsSampleBicubic = 0;
    v11 = result;
    objc_msgSend_initFilterInfoWithDevice_(result, v7, device, v8, v9, v10);
    return v11;
  }

  return result;
}

- (MPSImageGuidedFilter)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v41.receiver = self;
  v41.super_class = MPSImageGuidedFilter;
  v6 = [MPSKernel initWithCoder:sel_initWithCoder_device_ device:?];
  v11 = v6;
  if (!v6)
  {
    return v11;
  }

  if (*(&v6->super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    v6->_kernelDiameter = objc_msgSend_decodeInt64ForKey_(aDecoder, v7, @"MPSGuidedFilter.kernelDiameter", v8, v9, v10);
    objc_msgSend_decodeFloatForKey_(aDecoder, v12, @"MPSGuidedFilter.epsilon", v13, v14, v15);
    v11->_epsilon = v16;
    objc_msgSend_decodeFloatForKey_(aDecoder, v17, @"MPSGuidedFilter.scale", v18, v19, v20);
    v11->_reconstructScale = v21;
    objc_msgSend_decodeFloatForKey_(aDecoder, v22, @"MPSGuidedFilter.offset", v23, v24, v25);
    v11->_reconstructOffset = v26;
    v11->_rescaleCoefficients = objc_msgSend_decodeBoolForKey_(aDecoder, v27, @"MPSGuidedFilter.rescale", v28, v29, v30);
    v11->_reconstructionCoefficientsSampleBicubic = objc_msgSend_decodeBoolForKey_(aDecoder, v31, @"MPSGuidedFilter._reconstructionCoefficientsSampleBicubic", v32, v33, v34);
    objc_msgSend_initFilterInfoWithDevice_(v11, v35, device, v36, v37, v38);
    return v11;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v40 = objc_opt_class();
    NSStringFromClass(v40);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v29.receiver = self;
  v29.super_class = MPSImageGuidedFilter;
  [(MPSKernel *)&v29 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(coder, v5, self->_kernelDiameter, @"MPSGuidedFilter.kernelDiameter", v6, v7);
  *&v8 = self->_epsilon;
  objc_msgSend_encodeFloat_forKey_(coder, v9, @"MPSGuidedFilter.epsilon", v10, v11, v12, v8);
  *&v13 = self->_reconstructScale;
  objc_msgSend_encodeFloat_forKey_(coder, v14, @"MPSGuidedFilter.scale", v15, v16, v17, v13);
  *&v18 = self->_reconstructOffset;
  objc_msgSend_encodeFloat_forKey_(coder, v19, @"MPSGuidedFilter.offset", v20, v21, v22, v18);
  objc_msgSend_encodeBool_forKey_(coder, v23, self->_rescaleCoefficients, @"MPSGuidedFilter.rescale", v24, v25);
  objc_msgSend_encodeBool_forKey_(coder, v26, self->_reconstructionCoefficientsSampleBicubic, @"MPSGuidedFilter._reconstructionCoefficientsSampleBicubic", v27, v28);
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSImageGuidedFilter;
  result = [(MPSKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 11) = self->_kernelDiameter;
    *(result + 24) = LODWORD(self->_epsilon);
    *(result + 25) = LODWORD(self->_reconstructScale);
    *(result + 26) = LODWORD(self->_reconstructOffset);
    *(result + 108) = self->_rescaleCoefficients;
    *(result + 109) = self->_reconstructionCoefficientsSampleBicubic;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSImageGuidedFilter;
  [(MPSKernel *)&v3 dealloc];
}

- (void)encodeRegressionInternalToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceTexture:(id)texture guidanceTexture:(id)guidanceTexture weightsTexture:(id)weightsTexture destinationCoefficientsTexture:(id)coefficientsTexture
{
  v14 = objc_msgSend_width(coefficientsTexture, a2, encoder, buffer, texture, guidanceTexture);
  v20 = objc_msgSend_height(coefficientsTexture, v15, v16, v17, v18, v19);
  v21 = *(&self->super.super.isa + *MEMORY[0x277CD7378]);
  v22 = *MEMORY[0x277CD7370];
  v23 = *(&self->super.super.isa + v22);
  ComputeState = MPSLibrary::GetComputeState();
  if (ComputeState)
  {
    objc_msgSend_setComputePipelineState_(encoder, v25, ComputeState, v26, v27, v28);
    v29 = *(&self->super.super.isa + v22);
    MPSLibrary::ReleaseComputeState();
    v56[0] = LODWORD(self->_epsilon);
    kernelDiameter = self->_kernelDiameter;
    v56[1] = kernelDiameter >> 1;
    *&v56[2] = 1.0 / (kernelDiameter * kernelDiameter);
    objc_msgSend_setTexture_atIndex_(encoder, v31, guidanceTexture, 0, v32, v33);
    objc_msgSend_setTexture_atIndex_(encoder, v34, texture, 1, v35, v36);
    objc_msgSend_setTexture_atIndex_(encoder, v37, weightsTexture, 2, v38, v39);
    objc_msgSend_setTexture_atIndex_(encoder, v40, coefficientsTexture, 3, v41, v42);
    v43 = *(&self->super.super.isa + *MEMORY[0x277CD7350]);
    Sampler = MPSDevice::GetSampler();
    objc_msgSend_setSamplerState_atIndex_(encoder, v45, Sampler, 0, v46, v47);
    objc_msgSend_setBytes_length_atIndex_(encoder, v48, v56, 12, 0, v49);
    v55[0] = (((v14 + 1) >> 1) + 7) >> 3;
    v55[1] = (v20 + 7) >> 3;
    v55[2] = 1;
    v53 = xmmword_239988F20;
    v54 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v50, v55, &v53, v51, v52);
  }
}

- (void)encodeRegressionToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceTexture:(id)texture guidanceTexture:(id)guidanceTexture weightsTexture:(id)weightsTexture destinationCoefficientsTexture:(id)coefficientsTexture
{
  v15 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.isa + v15) & 1) == 0)
  {
    v16 = *MEMORY[0x277CD7350];
    v17 = *(&self->super.super.isa + v16);
    v18 = objc_msgSend_pixelFormat(texture, a2, encoder, buffer, texture, guidanceTexture);
    MPSDevice::GetPixelInfo(v17, v18, MPSImageFeatureChannelFormatNone);
    v19 = *(&self->super.super.isa + v16);
    v25 = objc_msgSend_pixelFormat(texture, v20, v21, v22, v23, v24);
    if ((MPSDevice::GetPixelInfo(v19, v25, MPSImageFeatureChannelFormatNone) & 0xF000000) != 0x1000000 && MTLReportFailureTypeEnabled())
    {
      weightsTextureCopy = texture;
      MTLReportFailure();
    }

    if (weightsTexture)
    {
      v30 = *(&self->super.super.isa + v16);
      v31 = objc_msgSend_pixelFormat(weightsTexture, a2, v26, v27, v28, v29);
      MPSDevice::GetPixelInfo(v30, v31, MPSImageFeatureChannelFormatNone);
      v32 = *(&self->super.super.isa + v16);
      v38 = objc_msgSend_pixelFormat(weightsTexture, v33, v34, v35, v36, v37);
      if ((MPSDevice::GetPixelInfo(v32, v38, MPSImageFeatureChannelFormatNone) & 0xF000000) != 0x1000000)
      {
        if (MTLReportFailureTypeEnabled())
        {
          weightsTextureCopy = weightsTexture;
          MTLReportFailure();
        }
      }
    }
  }

  if (encoder)
  {

    objc_msgSend_encodeRegressionInternalToCommandEncoder_commandBuffer_sourceTexture_guidanceTexture_weightsTexture_destinationCoefficientsTexture_(self, a2, encoder, buffer, texture, guidanceTexture, weightsTexture, coefficientsTexture);
  }

  else
  {
    v39 = objc_alloc(MEMORY[0x277CD7210]);
    v47 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v39, v40, buffer, 0, v41, v42);
    if ((*(&self->super.super.isa + v15) & 0x18) != 0)
    {
      v48 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
      if (v48 || (v49 = objc_opt_class(), v50 = NSStringFromClass(v49), objc_msgSend_setLabel_(self, v51, v50, v52, v53, v54), (v48 = v50) != 0))
      {
        objc_msgSend_setLabel_(v47, v43, v48, v44, v45, v46, weightsTextureCopy);
      }
    }

    objc_msgSend_encodeRegressionInternalToCommandEncoder_commandBuffer_sourceTexture_guidanceTexture_weightsTexture_destinationCoefficientsTexture_(self, v43, v47, buffer, texture, guidanceTexture, weightsTexture, coefficientsTexture, weightsTextureCopy);
    objc_msgSend_endEncoding(v47, v55, v56, v57, v58, v59);
  }
}

- (void)encodeReconstructionInternalToCommandEncoder:(id)encoder commandBuffer:(id)buffer guidanceTexture:(id)texture coefficientsTexture:(id)coefficientsTexture destinationTexture:(id)destinationTexture
{
  MEMORY[0x23EE7BAC0](v209, buffer, destinationTexture);
  v206 = objc_msgSend_width(coefficientsTexture, v10, v11, v12, v13, v14);
  v207 = objc_msgSend_height(coefficientsTexture, v15, v16, v17, v18, v19);
  v208 = 1;
  PixelInfo = 0;
  v20 = *MEMORY[0x277CD7350];
  v21 = *(&self->super.super.isa + v20);
  v27 = objc_msgSend_pixelFormat(coefficientsTexture, v22, v23, v24, v25, v26);
  PixelInfo = MPSDevice::GetPixelInfo(v21, v27, MPSImageFeatureChannelFormatNone);
  CompressedTempTexture = MPSAutoCache::GetCompressedTempTexture();
  v194 = MPSAutoCache::GetCompressedTempTexture();
  v34 = BYTE4(PixelInfo) << 32 == 0x1800000000 && ((*(&self->super.super.isa + v20))[1476] & 0x80) == 0;
  v195.i32[0] = SLODWORD(self->_kernelDiameter) / 2;
  v35 = objc_msgSend_width(coefficientsTexture, v29, v30, v31, v32, v33);
  v41 = objc_msgSend_height(coefficientsTexture, v36, v37, v38, v39, v40);
  v42 = *MEMORY[0x277CD7370];
  v43 = *(&self->super.super.isa + v42);
  ComputeState = MPSLibrary::GetComputeState();
  if (ComputeState)
  {
    objc_msgSend_setComputePipelineState_(encoder, v44, ComputeState, v45, v46, v47);
    v49 = *(&self->super.super.isa + v42);
    MPSLibrary::ReleaseComputeState();
    objc_msgSend_setTexture_atIndex_(encoder, v50, coefficientsTexture, 0, v51, v52);
    objc_msgSend_setTexture_atIndex_(encoder, v53, CompressedTempTexture, 1, v54, v55);
    objc_msgSend_setBytes_length_atIndex_(encoder, v56, &v195, 4, 0, v57);
    *&v197 = (v35 + 15) >> 4;
    *(&v197 + 1) = (v41 + 15) >> 4;
    v198 = 1;
    v203 = vdupq_n_s64(0x10uLL);
    v204 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v58, &v197, &v203, v59, v60);
    v61 = *(&self->super.super.isa + v42);
    v66 = MPSLibrary::GetComputeState();
    if (v66)
    {
      objc_msgSend_setComputePipelineState_(encoder, v62, v66, v63, v64, v65);
      v67 = *(&self->super.super.isa + v42);
      MPSLibrary::ReleaseComputeState();
      objc_msgSend_setTexture_atIndex_(encoder, v68, CompressedTempTexture, 0, v69, v70);
      objc_msgSend_setTexture_atIndex_(encoder, v71, v194, 1, v72, v73);
      objc_msgSend_setBytes_length_atIndex_(encoder, v74, &v195, 4, 0, v75);
      *&v197 = (v35 + 15) >> 4;
      *(&v197 + 1) = (v41 + 15) >> 4;
      v198 = 1;
      v203 = vdupq_n_s64(0x10uLL);
      v204 = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v76, &v197, &v203, v77, v78);
      if (self->_rescaleCoefficients)
      {
        v84 = objc_msgSend_width(destinationTexture, v79, v80, v81, v82, v83);
        v90 = objc_msgSend_height(destinationTexture, v85, v86, v87, v88, v89);
        v206 = v84 >> 1;
        v207 = v90 >> 1;
        v208 = 1;
        v91 = MPSAutoCache::GetCompressedTempTexture();
        v97 = v91;
        if (self->_reconstructScale == 1.0)
        {
          self->_reconstructOffset;
        }

        v98 = objc_msgSend_width(v91, v92, v93, v94, v95, v96);
        v104 = objc_msgSend_height(v97, v99, v100, v101, v102, v103);
        v206 = v98 >> 1;
        v207 = v104 >> 1;
        v208 = 1;
        if (v98 >> 1 <= objc_msgSend_width(v194, v105, v106, v107, v108, v109) || (v115 = v207, v115 <= objc_msgSend_height(v194, v110, v111, v112, v113, v114)))
        {
          objc_msgSend_encodeToCommandBuffer_sourceTexture_destinationTexture_(self->_bilinearScaler, v110, buffer, v194, v97, v114);
        }

        else
        {
          v116 = MPSAutoCache::GetCompressedTempTexture();
          objc_msgSend_encodeToCommandBuffer_sourceTexture_destinationTexture_(self->_lanczosScaler, v117, buffer, v194, v116, v118);
          objc_msgSend_encodeToCommandBuffer_sourceTexture_destinationTexture_(self->_bilinearScaler, v119, buffer, v116, v97, v120);
        }
      }

      else
      {
        v97 = 0;
        if (!v34)
        {
          self->_reconstructionCoefficientsSampleBicubic;
        }
      }

      if (self->_rescaleCoefficients)
      {
        v121 = v97;
      }

      else
      {
        v121 = v194;
      }

      v122 = *(&self->super.super.isa + v20);
      v123 = objc_msgSend_pixelFormat(v121, v79, v80, v81, v82, v83);
      v124 = sub_23996E594(*(v122 + 1476), v123);
      *&v125 = -1;
      *(&v125 + 1) = -1;
      v201 = v125;
      v202 = v125;
      v199 = -1;
      v200 = v125;
      v197 = v125;
      v198 = v124;
      v126 = *(&self->super.super.isa + v42);
      v131 = MPSLibrary::GetComputeState();
      if (v131)
      {
        objc_msgSend_setComputePipelineState_(encoder, v127, v131, v128, v129, v130);
        v132 = *(&self->super.super.isa + v42);
        MPSLibrary::ReleaseComputeState();
        if (self->_rescaleCoefficients)
        {
          __asm { FMOV            V0.2S, #1.0 }
        }

        else
        {
          v143 = objc_msgSend_width(v194, v133, v134, v135, v136, v137);
          v149 = objc_msgSend_height(v194, v144, v145, v146, v147, v148);
          v155 = objc_msgSend_width(destinationTexture, v150, v151, v152, v153, v154);
          v161 = objc_msgSend_height(destinationTexture, v156, v157, v158, v159, v160);
          v162.f32[0] = v143;
          v162.f32[1] = v149;
          v163.f32[0] = v155;
          v163.f32[1] = v161;
          _D0 = vdiv_f32(v162, v163);
        }

        reconstructOffset = self->_reconstructOffset;
        v203.i32[0] = LODWORD(self->_reconstructScale);
        *&v203.i32[1] = reconstructOffset;
        v203.u64[1] = _D0;
        objc_msgSend_setBytes_length_atIndex_(encoder, v133, &v203, 16, 0, v137);
        objc_msgSend_setTexture_atIndex_(encoder, v165, v121, 0, v166, v167);
        objc_msgSend_setTexture_atIndex_(encoder, v168, texture, 1, v169, v170);
        objc_msgSend_setTexture_atIndex_(encoder, v171, destinationTexture, 2, v172, v173);
        v179 = objc_msgSend_width(destinationTexture, v174, v175, v176, v177, v178);
        v185 = objc_msgSend_height(destinationTexture, v180, v181, v182, v183, v184);
        if (self->_rescaleCoefficients)
        {
          v189 = (v179 + 1) >> 1;
        }

        else
        {
          v189 = v179;
        }

        if (self->_rescaleCoefficients)
        {
          v190 = (v185 + 1) >> 1;
        }

        else
        {
          v190 = v185;
        }

        v203.i64[0] = (v189 + 15) >> 4;
        v203.i64[1] = (v190 + 15) >> 4;
        v204 = 1;
        v195 = vdupq_n_s64(0x10uLL);
        v196 = 1;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v186, &v203, &v195, v187, v188);
      }
    }
  }

  MPSAutoCache::~MPSAutoCache(v209);
}

- (void)encodeReconstructionToCommandEncoder:(id)encoder commandBuffer:(id)buffer guidanceTexture:(id)texture coefficientsTexture:(id)coefficientsTexture destinationTexture:(id)destinationTexture
{
  v13 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.isa + v13) & 1) == 0)
  {
    v14 = objc_msgSend_width(texture, a2, encoder, buffer, texture, coefficientsTexture);
    if (v14 == objc_msgSend_width(destinationTexture, v15, v16, v17, v18, v19))
    {
      objc_msgSend_height(texture, v20, v21, v22, v23, v24);
      objc_msgSend_height(destinationTexture, v25, v26, v27, v28, v29);
    }

    v30 = objc_msgSend_width(texture, v20, v21, v22, v23, v24);
    if (v30 != objc_msgSend_width(destinationTexture, v31, v32, v33, v34, v35) || (v41 = objc_msgSend_height(texture, v36, v37, v38, v39, v40), v41 != objc_msgSend_height(destinationTexture, v42, v43, v44, v45, v46)))
    {
      if (MTLReportFailureTypeEnabled())
      {
        destinationTextureCopy = destinationTexture;
        textureCopy = texture;
        MTLReportFailure();
      }
    }
  }

  if (encoder)
  {

    objc_msgSend_encodeReconstructionInternalToCommandEncoder_commandBuffer_guidanceTexture_coefficientsTexture_destinationTexture_(self, a2, encoder, buffer, texture, coefficientsTexture, destinationTexture);
  }

  else
  {
    v47 = objc_alloc(MEMORY[0x277CD7210]);
    v55 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v47, v48, buffer, 0, v49, v50);
    if ((*(&self->super.super.isa + v13) & 0x18) != 0)
    {
      v56 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
      if (v56 || (v57 = objc_opt_class(), v58 = NSStringFromClass(v57), objc_msgSend_setLabel_(self, v59, v58, v60, v61, v62), (v56 = v58) != 0))
      {
        objc_msgSend_setLabel_(v55, v51, v56, v52, v53, v54, destinationTextureCopy, textureCopy, v55, self);
      }
    }

    objc_msgSend_encodeReconstructionInternalToCommandEncoder_commandBuffer_guidanceTexture_coefficientsTexture_destinationTexture_(self, v51, v55, buffer, texture, coefficientsTexture, destinationTexture, destinationTextureCopy, textureCopy);
    objc_msgSend_endEncoding(v55, v63, v64, v65, v66, v67);
  }
}

- (void)encodeRegressionInternalToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceTexture:(id)texture guidanceTexture:(id)guidanceTexture weightsTexture:(id)weightsTexture destinationCoefficientsTextureA:(id)a destinationCoefficientsTextureB:(id)b
{
  v15 = objc_msgSend_width(a, a2, encoder, buffer, texture, guidanceTexture);
  v21 = objc_msgSend_height(a, v16, v17, v18, v19, v20);
  v22 = *(&self->super.super.isa + *MEMORY[0x277CD7378]);
  v23 = *MEMORY[0x277CD7370];
  v24 = *(&self->super.super.isa + v23);
  ComputeState = MPSLibrary::GetComputeState();
  if (ComputeState)
  {
    objc_msgSend_setComputePipelineState_(encoder, v26, ComputeState, v27, v28, v29);
    v30 = *(&self->super.super.isa + v23);
    MPSLibrary::ReleaseComputeState();
    v60[0] = LODWORD(self->_epsilon);
    kernelDiameter = self->_kernelDiameter;
    v60[1] = kernelDiameter >> 1;
    *&v60[2] = 1.0 / (kernelDiameter * kernelDiameter);
    objc_msgSend_setTexture_atIndex_(encoder, v32, guidanceTexture, 0, v33, v34);
    objc_msgSend_setTexture_atIndex_(encoder, v35, texture, 1, v36, v37);
    objc_msgSend_setTexture_atIndex_(encoder, v38, weightsTexture, 2, v39, v40);
    objc_msgSend_setTexture_atIndex_(encoder, v41, a, 3, v42, v43);
    objc_msgSend_setTexture_atIndex_(encoder, v44, b, 4, v45, v46);
    v47 = *(&self->super.super.isa + *MEMORY[0x277CD7350]);
    Sampler = MPSDevice::GetSampler();
    objc_msgSend_setSamplerState_atIndex_(encoder, v49, Sampler, 0, v50, v51);
    objc_msgSend_setBytes_length_atIndex_(encoder, v52, v60, 12, 0, v53);
    v59[0] = (v15 + 7) >> 3;
    v59[1] = (v21 + 7) >> 3;
    v59[2] = 1;
    v57 = xmmword_239988F20;
    v58 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v54, v59, &v57, v55, v56);
  }
}

- (void)encodeRegressionToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceTexture:(id)texture guidanceTexture:(id)guidanceTexture weightsTexture:(id)weightsTexture destinationCoefficientsTextureA:(id)a destinationCoefficientsTextureB:(id)b
{
  guidanceTextureCopy = guidanceTexture;
  textureCopy = texture;
  bufferCopy = buffer;
  v16 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.isa + v16) & 1) == 0)
  {
    objc_msgSend_width(a, a2, encoder, buffer, texture, guidanceTexture);
    objc_msgSend_width(b, v17, v18, v19, v20, v21);
    v27 = objc_msgSend_width(a, v22, v23, v24, v25, v26);
    if (v27 != objc_msgSend_width(b, v28, v29, v30, v31, v32) && MTLReportFailureTypeEnabled())
    {
      weightsTextureCopy = objc_msgSend_width(a, v33, v34, v35, v36, v37);
      v103 = objc_msgSend_width(b, v92, v93, v94, v95, v96);
      MTLReportFailure();
    }

    objc_msgSend_height(a, v33, v34, v35, v36, v37, weightsTextureCopy, v103);
    objc_msgSend_height(b, v38, v39, v40, v41, v42);
    v48 = objc_msgSend_height(a, v43, v44, v45, v46, v47);
    if (v48 != objc_msgSend_height(b, v49, v50, v51, v52, v53) && MTLReportFailureTypeEnabled())
    {
      weightsTextureCopy = objc_msgSend_height(a, a2, v54, v55, v56, v57);
      v103 = objc_msgSend_height(b, v97, v98, v99, v100, v101);
      MTLReportFailure();
    }

    if (weightsTexture)
    {
      v104 = v16;
      v58 = bufferCopy;
      v59 = textureCopy;
      v60 = guidanceTextureCopy;
      v61 = *MEMORY[0x277CD7350];
      v62 = *(&self->super.super.isa + v61);
      v63 = objc_msgSend_pixelFormat(weightsTexture, a2, v54, v55, v56, v57);
      MPSDevice::GetPixelInfo(v62, v63, MPSImageFeatureChannelFormatNone);
      v64 = *(&self->super.super.isa + v61);
      guidanceTextureCopy = v60;
      textureCopy = v59;
      bufferCopy = v58;
      v16 = v104;
      v70 = objc_msgSend_pixelFormat(weightsTexture, v65, v66, v67, v68, v69);
      if ((MPSDevice::GetPixelInfo(v64, v70, MPSImageFeatureChannelFormatNone) & 0xF000000) != 0x1000000)
      {
        if (MTLReportFailureTypeEnabled())
        {
          weightsTextureCopy = weightsTexture;
          MTLReportFailure();
        }
      }
    }
  }

  if (encoder)
  {

    objc_msgSend_encodeRegressionInternalToCommandEncoder_commandBuffer_sourceTexture_guidanceTexture_weightsTexture_destinationCoefficientsTextureA_destinationCoefficientsTextureB_(self, a2, encoder, bufferCopy, textureCopy, guidanceTextureCopy, weightsTexture, a);
  }

  else
  {
    v71 = objc_alloc(MEMORY[0x277CD7210]);
    v79 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v71, v72, bufferCopy, 0, v73, v74);
    if ((*(&self->super.super.isa + v16) & 0x18) != 0)
    {
      v80 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
      if (v80 || (v81 = objc_opt_class(), v82 = NSStringFromClass(v81), objc_msgSend_setLabel_(self, v83, v82, v84, v85, v86), (v80 = v82) != 0))
      {
        objc_msgSend_setLabel_(v79, v75, v80, v76, v77, v78, weightsTextureCopy, v103);
      }
    }

    objc_msgSend_encodeRegressionInternalToCommandEncoder_commandBuffer_sourceTexture_guidanceTexture_weightsTexture_destinationCoefficientsTextureA_destinationCoefficientsTextureB_(self, v75, v79, bufferCopy, textureCopy, guidanceTextureCopy, weightsTexture, a, b);
    objc_msgSend_endEncoding(v79, v87, v88, v89, v90, v91);
  }
}

- (void)encodeReconstructionInternalToCommandEncoder:(id)encoder commandBuffer:(id)buffer guidanceTexture:(id)texture coefficientsTextureA:(id)a coefficientsTextureB:(id)b destinationTexture:(id)destinationTexture
{
  MEMORY[0x23EE7BAC0](v201, buffer, destinationTexture);
  v198 = objc_msgSend_width(a, v13, v14, v15, v16, v17);
  v199 = objc_msgSend_height(a, v18, v19, v20, v21, v22);
  v200 = 1;
  PixelInfo = 0;
  v23 = *MEMORY[0x277CD7350];
  v24 = *(&self->super.super.isa + v23);
  v30 = objc_msgSend_pixelFormat(a, v25, v26, v27, v28, v29);
  PixelInfo = MPSDevice::GetPixelInfo(v24, v30, MPSImageFeatureChannelFormatNone);
  CompressedTempTexture = MPSAutoCache::GetCompressedTempTexture();
  v31 = MPSAutoCache::GetCompressedTempTexture();
  v186 = MPSAutoCache::GetCompressedTempTexture();
  v188 = MPSAutoCache::GetCompressedTempTexture();
  v189 = v31;
  destinationTextureCopy = destinationTexture;
  v37 = BYTE4(PixelInfo) << 32 == 0x1800000000 && ((*(&self->super.super.isa + v23))[1476] & 0x80) == 0;
  v190.i32[0] = SLODWORD(self->_kernelDiameter) / 2;
  v38 = objc_msgSend_width(a, v32, v33, v34, v35, v36);
  v44 = objc_msgSend_height(a, v39, v40, v41, v42, v43);
  v45 = *MEMORY[0x277CD7370];
  v46 = *(&self->super.super.isa + v45);
  ComputeState = MPSLibrary::GetComputeState();
  if (ComputeState)
  {
    objc_msgSend_setComputePipelineState_(encoder, v47, ComputeState, v48, v49, v50);
    v52 = *(&self->super.super.isa + v45);
    MPSLibrary::ReleaseComputeState();
    objc_msgSend_setTexture_atIndex_(encoder, v53, a, 0, v54, v55);
    objc_msgSend_setTexture_atIndex_(encoder, v56, CompressedTempTexture, 1, v57, v58);
    objc_msgSend_setBytes_length_atIndex_(encoder, v59, &v190, 4, 0, v60);
    v61 = (v38 + 15) >> 4;
    v62 = (v44 + 15) >> 4;
    v192 = v61;
    v193 = v62;
    v194 = 1;
    v195 = vdupq_n_s64(0x10uLL);
    v196 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v63, &v192, &v195, v64, v65);
    objc_msgSend_setTexture_atIndex_(encoder, v66, b, 0, v67, v68);
    objc_msgSend_setTexture_atIndex_(encoder, v69, v186, 1, v70, v71);
    objc_msgSend_setBytes_length_atIndex_(encoder, v72, &v190, 4, 0, v73);
    v192 = v61;
    v193 = v62;
    v194 = 1;
    v195 = vdupq_n_s64(0x10uLL);
    v196 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v74, &v192, &v195, v75, v76);
    v77 = *(&self->super.super.isa + v45);
    v82 = MPSLibrary::GetComputeState();
    if (v82)
    {
      objc_msgSend_setComputePipelineState_(encoder, v78, v82, v79, v80, v81);
      v83 = *(&self->super.super.isa + v45);
      MPSLibrary::ReleaseComputeState();
      objc_msgSend_setTexture_atIndex_(encoder, v84, CompressedTempTexture, 0, v85, v86);
      objc_msgSend_setTexture_atIndex_(encoder, v87, v189, 1, v88, v89);
      objc_msgSend_setBytes_length_atIndex_(encoder, v90, &v190, 4, 0, v91);
      v192 = v61;
      v193 = v62;
      v194 = 1;
      v195 = vdupq_n_s64(0x10uLL);
      v196 = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v92, &v192, &v195, v93, v94);
      objc_msgSend_setTexture_atIndex_(encoder, v95, v186, 0, v96, v97);
      objc_msgSend_setTexture_atIndex_(encoder, v98, v188, 1, v99, v100);
      objc_msgSend_setBytes_length_atIndex_(encoder, v101, &v190, 4, 0, v102);
      v192 = v61;
      v193 = v62;
      v194 = 1;
      v195 = vdupq_n_s64(0x10uLL);
      v196 = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v103, &v192, &v195, v104, v105);
      if (!v37)
      {
        self->_reconstructionCoefficientsSampleBicubic;
      }

      v111 = *(&self->super.super.isa + v23);
      v112 = objc_msgSend_pixelFormat(v189, v106, v107, v108, v109, v110);
      v113 = *(v111 + 1476);
      v114 = *(&self->super.super.isa + v23);
      v120 = objc_msgSend_pixelFormat(v188, v115, v116, v117, v118, v119);
      LODWORD(v112) = sub_23996E594(v113, v112);
      v194 = v112 & sub_23996E594(*(v114 + 1476), v120);
      v121 = *(&self->super.super.isa + v45);
      v126 = MPSLibrary::GetComputeState();
      if (v126)
      {
        objc_msgSend_setComputePipelineState_(encoder, v122, v126, v123, v124, v125);
        v127 = *(&self->super.super.isa + v45);
        MPSLibrary::ReleaseComputeState();
        v133 = objc_msgSend_width(v189, v128, v129, v130, v131, v132);
        v139 = objc_msgSend_height(v189, v134, v135, v136, v137, v138);
        v145 = objc_msgSend_width(destinationTextureCopy, v140, v141, v142, v143, v144);
        v151 = objc_msgSend_height(destinationTextureCopy, v146, v147, v148, v149, v150);
        v152.f32[0] = v133;
        v152.f32[1] = v139;
        v153.f32[0] = v145;
        v153.f32[1] = v151;
        v154 = vdiv_f32(v152, v153);
        v153.i32[0] = LODWORD(self->_reconstructOffset);
        v195.i32[0] = LODWORD(self->_reconstructScale);
        v195.i32[1] = v153.i32[0];
        v195.u64[1] = v154;
        objc_msgSend_setBytes_length_atIndex_(encoder, v155, &v195, 16, 0, v156);
        objc_msgSend_setTexture_atIndex_(encoder, v157, v189, 0, v158, v159);
        objc_msgSend_setTexture_atIndex_(encoder, v160, v188, 1, v161, v162);
        objc_msgSend_setTexture_atIndex_(encoder, v163, texture, 2, v164, v165);
        objc_msgSend_setTexture_atIndex_(encoder, v166, destinationTextureCopy, 3, v167, v168);
        v174 = objc_msgSend_width(destinationTextureCopy, v169, v170, v171, v172, v173);
        v180 = objc_msgSend_height(destinationTextureCopy, v175, v176, v177, v178, v179);
        v195.i64[0] = (v174 + 15) >> 4;
        v195.i64[1] = (v180 + 15) >> 4;
        v196 = 1;
        v190 = vdupq_n_s64(0x10uLL);
        v191 = 1;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v181, &v195, &v190, v182, v183);
      }
    }
  }

  MPSAutoCache::~MPSAutoCache(v201);
}

- (void)encodeReconstructionToCommandEncoder:(id)encoder commandBuffer:(id)buffer guidanceTexture:(id)texture coefficientsTextureA:(id)a coefficientsTextureB:(id)b destinationTexture:(id)destinationTexture
{
  v15 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.isa + v15) & 1) == 0)
  {
    v16 = objc_msgSend_width(texture, a2, encoder, buffer, texture, a);
    if (v16 == objc_msgSend_width(destinationTexture, v17, v18, v19, v20, v21))
    {
      objc_msgSend_height(texture, v22, v23, v24, v25, v26);
      objc_msgSend_height(destinationTexture, v27, v28, v29, v30, v31);
    }

    v32 = objc_msgSend_width(texture, v22, v23, v24, v25, v26);
    if (v32 != objc_msgSend_width(destinationTexture, v33, v34, v35, v36, v37) || (v43 = objc_msgSend_height(texture, v38, v39, v40, v41, v42), v43 != objc_msgSend_height(destinationTexture, v44, v45, v46, v47, v48)))
    {
      if (MTLReportFailureTypeEnabled())
      {
        destinationTextureCopy = destinationTexture;
        textureCopy = texture;
        MTLReportFailure();
      }
    }
  }

  if (encoder)
  {

    objc_msgSend_encodeReconstructionInternalToCommandEncoder_commandBuffer_guidanceTexture_coefficientsTextureA_coefficientsTextureB_destinationTexture_(self, a2, encoder, buffer, texture, a, b, destinationTexture);
  }

  else
  {
    v49 = objc_alloc(MEMORY[0x277CD7210]);
    v57 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v49, v50, buffer, 0, v51, v52);
    if ((*(&self->super.super.isa + v15) & 0x18) != 0)
    {
      v58 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
      if (v58 || (v59 = objc_opt_class(), v60 = NSStringFromClass(v59), objc_msgSend_setLabel_(self, v61, v60, v62, v63, v64), (v58 = v60) != 0))
      {
        objc_msgSend_setLabel_(v57, v53, v58, v54, v55, v56, destinationTextureCopy, textureCopy, v57, self);
      }
    }

    objc_msgSend_encodeReconstructionInternalToCommandEncoder_commandBuffer_guidanceTexture_coefficientsTextureA_coefficientsTextureB_destinationTexture_(self, v53, v57, buffer, texture, a, b, destinationTexture, destinationTextureCopy, textureCopy);
    objc_msgSend_endEncoding(v57, v65, v66, v67, v68, v69);
  }
}

@end