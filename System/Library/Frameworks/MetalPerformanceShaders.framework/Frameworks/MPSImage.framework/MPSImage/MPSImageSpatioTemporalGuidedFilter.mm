@interface MPSImageSpatioTemporalGuidedFilter
- (MPSImageSpatioTemporalGuidedFilter)initWithCoder:(id)coder device:(id)device;
- (MPSImageSpatioTemporalGuidedFilter)initWithDevice:(id)device filterDescriptor:(id)descriptor;
- (id)allocateIntermediateTextureWithDevice:(id)device textureDescriptor:(id)descriptor;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)newTemporaryIntermediate:(id)intermediate texture:(id)texture;
- (void)allocateResourcesWithDevice:(id)device;
- (void)compileKernels;
- (void)dealloc;
- (void)encodeDownsamplingOn:(id)on inputTexture:(id)texture outputTexture:(id)outputTexture;
- (void)encodeReconstructionToCommandBuffer:(id)buffer guidanceTexture:(id)texture coefficientsTextureArray:(id)array destinationTextureArray:(id)textureArray;
- (void)encodeReconstructionToCommandBuffer:(id)buffer guidanceTexture:(id)texture constraintsTexture:(id)constraintsTexture coefficientsTextureArray:(id)array destinationTexture:(id)destinationTexture;
- (void)encodeRegressionToCommandBuffer:(id)buffer sourceTextureArray:(id)array guidanceTexture:(id)texture constraintsTextureArray:(id)textureArray numberOfIterations:(unint64_t)iterations destinationCoefficientsTextureArray:(id)coefficientsTextureArray;
- (void)encodeShiftOn:(id)on textureArray:(id)array by:(unint64_t)by;
- (void)encodeToCommandBuffer:(id)buffer sourceTextureArray:(id)array guidanceTexture:(id)texture constraintsTextureArray:(id)textureArray numberOfIterations:(unint64_t)iterations destinationTextureArray:(id)destinationTextureArray;
- (void)encodeWithCoder:(id)coder;
- (void)validateCoefficientsTextures:(id)textures;
@end

@implementation MPSImageSpatioTemporalGuidedFilter

- (MPSImageSpatioTemporalGuidedFilter)initWithDevice:(id)device filterDescriptor:(id)descriptor
{
  v96.receiver = self;
  v96.super_class = MPSImageSpatioTemporalGuidedFilter;
  v6 = [(MPSKernel *)&v96 initWithDevice:?];
  if (v6)
  {
    MPSDevice = MPSDevice::GetMPSDevice();
    objc_msgSend_kernelSpatialDiameter(descriptor, v8, v9, v10, v11, v12);
    if ((objc_msgSend_kernelSpatialDiameter(descriptor, v13, v14, v15, v16, v17) & 1) == 0 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_kernelTemporalDiameter(descriptor, v18, v19, v20, v21, v22);
    if ((objc_msgSend_kernelTemporalDiameter(descriptor, v23, v24, v25, v26, v27) & 1) == 0 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (objc_msgSend_guideChannels(descriptor, v28, v29, v30, v31, v32) != 3)
    {
      objc_msgSend_guideChannels(descriptor, v33, v34, v35, v36, v37);
    }

    if (objc_msgSend_guideChannels(descriptor, v33, v34, v35, v36, v37) != 3 && objc_msgSend_guideChannels(descriptor, v38, v39, v40, v41, v42) != 4 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v6->_width = objc_msgSend_width(descriptor, v38, v39, v40, v41, v42);
    v6->_height = objc_msgSend_height(descriptor, v43, v44, v45, v46, v47);
    v6->_arrayLength = objc_msgSend_arrayLength(descriptor, v48, v49, v50, v51, v52);
    v6->_kernelSpatialDiameter = objc_msgSend_kernelSpatialDiameter(descriptor, v53, v54, v55, v56, v57);
    v6->_kernelTemporalDiameter = objc_msgSend_kernelTemporalDiameter(descriptor, v58, v59, v60, v61, v62);
    objc_msgSend_epsilon(descriptor, v63, v64, v65, v66, v67);
    v6->_epsilon = v68;
    v6->_sourceChannels = objc_msgSend_sourceChannels(descriptor, v69, v70, v71, v72, v73);
    v6->_guideChannels = objc_msgSend_guideChannels(descriptor, v74, v75, v76, v77, v78);
    v6->_preallocateIntermediates = objc_msgSend_preallocateIntermediates(descriptor, v79, v80, v81, v82, v83);
    v6->_useFloatIntermediates = 0;
    v89 = objc_msgSend_useHighPrecisionIntermediates(descriptor, v84, v85, v86, v87, v88);
    v90 = *(MPSDevice + 1476);
    v6->_useFloatIntermediates = v89 & ((v90 & 0x80) >> 7);
    v6->_supportsReadWriteTextures = (v90 & 4) != 0;
    objc_msgSend_allocateResourcesWithDevice_(v6, v91, device, v92, v93, v94);
  }

  return v6;
}

- (MPSImageSpatioTemporalGuidedFilter)initWithCoder:(id)coder device:(id)device
{
  v10.receiver = self;
  v10.super_class = MPSImageSpatioTemporalGuidedFilter;
  v4 = [(MPSKernel *)&v10 initWithCoder:coder device:device];
  v5 = v4;
  if (!v4)
  {
    return v5;
  }

  v6 = *(&v4->super.super.isa + *MEMORY[0x277CD7358] + 2) << 16;
  v7 = MTLReportFailureTypeEnabled();
  if (v6 == 0x10000)
  {
    if (v7)
    {
      MTLReportFailure();
    }

    return v5;
  }

  if (v7)
  {
    v9 = objc_opt_class();
    NSStringFromClass(v9);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v3.receiver = self;
  v3.super_class = MPSImageSpatioTemporalGuidedFilter;
  [(MPSKernel *)&v3 encodeWithCoder:coder];
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSImageSpatioTemporalGuidedFilter;
  v4 = [(MPSKernel *)&v6 copyWithZone:zone device:device];
  if (v4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return v4;
}

- (id)allocateIntermediateTextureWithDevice:(id)device textureDescriptor:(id)descriptor
{
  v7 = objc_msgSend_newTextureWithDescriptor_(device, a2, descriptor, descriptor, v4, v5);
  self->_preallocatedSize += objc_msgSend_allocatedSize(v7, v8, v9, v10, v11, v12);
  return v7;
}

- (void)allocateResourcesWithDevice:(id)device
{
  v169[2] = *MEMORY[0x277D85DE8];
  self->_preallocatedSize = 0;
  v5 = [MPSImageBox3D alloc];
  self->_boxFilter = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_kernelDepth_(v5, v6, device, self->_kernelSpatialDiameter, self->_kernelSpatialDiameter, self->_kernelTemporalDiameter);
  v7 = [MPSImageBilinearScale alloc];
  v12 = objc_msgSend_initWithDevice_(v7, v8, device, v9, v10, v11);
  self->_bilinearScaler = v12;
  objc_msgSend_setEdgeMode_(v12, v13, 1, v14, v15, v16);
  if (self->_useFloatIntermediates)
  {
    v18 = 125;
  }

  else
  {
    v18 = 115;
  }

  if (self->_useFloatIntermediates)
  {
    v19 = 105;
  }

  else
  {
    v19 = 65;
  }

  if (self->_useFloatIntermediates)
  {
    v20 = 55;
  }

  else
  {
    v20 = 25;
  }

  v25 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x277CD7058], v17, v18, self->_width, self->_height, 0);
  if (!v25 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  objc_msgSend_setTextureType_(v25, v21, 3, v22, v23, v24);
  objc_msgSend_setArrayLength_(v25, v26, self->_arrayLength, v27, v28, v29);
  objc_msgSend_setUsage_(v25, v30, 19, v31, v32, v33);
  v39 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x277CD7058], v34, v19, self->_width, self->_height, 0);
  if (!v39 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  objc_msgSend_setTextureType_(v39, v35, 3, v36, v37, v38);
  objc_msgSend_setArrayLength_(v39, v40, self->_arrayLength, v41, v42, v43);
  objc_msgSend_setUsage_(v39, v44, 19, v45, v46, v47);
  v53 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x277CD7058], v48, v20, self->_width, self->_height, 0);
  if (!v53 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  objc_msgSend_setTextureType_(v53, v49, 3, v50, v51, v52);
  objc_msgSend_setArrayLength_(v53, v54, self->_arrayLength, v55, v56, v57);
  objc_msgSend_setUsage_(v53, v58, 19, v59, v60, v61);
  v165 = v25;
  IntermediateTextureWithDevice_textureDescriptor = objc_msgSend_allocateIntermediateTextureWithDevice_textureDescriptor_(self, v62, device, v25, v63, v64);
  self->_guideStack = IntermediateTextureWithDevice_textureDescriptor;
  if (!IntermediateTextureWithDevice_textureDescriptor && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v66 = objc_alloc(MEMORY[0x277CBEB18]);
  v74 = objc_msgSend_initWithCapacity_(v66, v67, self->_sourceChannels, v68, v69, v70);
  if (self->_sourceChannels)
  {
    v75 = 0;
    do
    {
      v79 = objc_msgSend_allocateIntermediateTextureWithDevice_textureDescriptor_(self, v71, device, v53, v72, v73);
      if (!v79 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      objc_msgSend_setObject_atIndexedSubscript_(v74, v76, v79, v75, v77, v78);

      ++v75;
    }

    while (v75 < self->_sourceChannels);
  }

  v80 = objc_alloc(MEMORY[0x277CBEA60]);
  self->_sourceStackArray = objc_msgSend_initWithArray_(v80, v81, v74, v82, v83, v84);

  v85 = v25;
  v89 = objc_msgSend_allocateIntermediateTextureWithDevice_textureDescriptor_(self, v86, device, v25, v87, v88);
  self->_mean_guideStack = v89;
  if (!v89 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v93 = objc_msgSend_allocateIntermediateTextureWithDevice_textureDescriptor_(self, v90, device, v53, v91, v92);
  self->_mean_sourceStack = v93;
  if (!v93 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  guideChannels = self->_guideChannels;
  if (guideChannels == 4)
  {
    v109 = objc_msgSend_allocateIntermediateTextureWithDevice_textureDescriptor_(self, v94, device, v25, v95, v96);
    if (!v109 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v101 = objc_msgSend_allocateIntermediateTextureWithDevice_textureDescriptor_(self, v106, device, v165, v107, v108);
    if (!v101 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v105 = objc_msgSend_allocateIntermediateTextureWithDevice_textureDescriptor_(self, v110, device, v39, v111, v112);
    if (!v105 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v168[0] = v109;
    v168[1] = v101;
    v168[2] = v105;
    self->_var_I = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v113, v168, 3, v114, v115);

    goto LABEL_32;
  }

  if (guideChannels == 3)
  {
    v101 = objc_msgSend_allocateIntermediateTextureWithDevice_textureDescriptor_(self, v94, device, v25, v95, v96);
    if (!v101 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v105 = objc_msgSend_allocateIntermediateTextureWithDevice_textureDescriptor_(self, v98, device, v39, v99, v100);
    if (!v105 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v169[0] = v101;
    v169[1] = v105;
    self->_var_I = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v102, v169, 2, v103, v104);
LABEL_32:

    goto LABEL_33;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v162 = self->_guideChannels;
    MTLReportFailure();
  }

LABEL_33:
  v119 = objc_msgSend_allocateIntermediateTextureWithDevice_textureDescriptor_(self, v116, device, v53, v117, v118, v162);
  self->_constraints = v119;
  if (!v119 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (self->_preallocateIntermediates)
  {
    v120 = objc_alloc(MEMORY[0x277CBEB18]);
    v128 = objc_msgSend_initWithCapacity_(v120, v121, self->_sourceChannels, v122, v123, v124);
    if (self->_sourceChannels)
    {
      for (i = 0; i < self->_sourceChannels; ++i)
      {
        v139 = self->_guideChannels;
        if (v139 == 4)
        {
          v147 = objc_msgSend_allocateIntermediateTextureWithDevice_textureDescriptor_(self, v125, device, v85, v126, v127);
          if (!v147 && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          v151 = objc_msgSend_allocateIntermediateTextureWithDevice_textureDescriptor_(self, v144, device, v53, v145, v146);
          if (!v151 && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          v166[0] = v147;
          v166[1] = v151;
          v134 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v148, v166, 2, v149, v150);

          v85 = v165;
          objc_msgSend_addObject_(v128, v152, v134, v153, v154, v155, v163);
          goto LABEL_40;
        }

        if (v139 == 3)
        {
          v133 = objc_msgSend_allocateIntermediateTextureWithDevice_textureDescriptor_(self, v125, device, v85, v126, v127);
          if (!v133 && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          v167 = v133;
          v134 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v130, &v167, 1, v131, v132);
        }

        else
        {
          v134 = 0;
          if (MTLReportFailureTypeEnabled())
          {
            v164 = self->_guideChannels;
            MTLReportFailure();
            v134 = 0;
            objc_msgSend_addObject_(v128, v140, 0, v141, v142, v143, v164);
            goto LABEL_40;
          }
        }

        objc_msgSend_addObject_(v128, v135, v134, v136, v137, v138, v163);
LABEL_40:
      }
    }

    v156 = objc_alloc(MEMORY[0x277CBEA60]);
    self->_coefficientsTextureArray = objc_msgSend_initWithArray_(v156, v157, v128, v158, v159, v160);
  }

  v161 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSImageSpatioTemporalGuidedFilter;
  [(MPSKernel *)&v3 dealloc];
}

- (void)compileKernels
{
  v3 = *MEMORY[0x277CD7370];
  v4 = *(&self->super.super.isa + v3);
  MPSLibrary::PrefetchComputeState();
  v5 = *(&self->super.super.isa + v3);
  MPSLibrary::PrefetchComputeState();
  v6 = *(&self->super.super.isa + v3);
  MPSLibrary::PrefetchComputeState();
  v7 = *(&self->super.super.isa + v3);
  MPSLibrary::PrefetchComputeState();
  v8 = *(&self->super.super.isa + v3);
  MPSLibrary::PrefetchComputeState();
  v9 = *(&self->super.super.isa + v3);
  MPSLibrary::PrefetchComputeState();
  v10 = *(&self->super.super.isa + v3);
  MPSLibrary::PrefetchComputeState();
  v11 = *(&self->super.super.isa + v3);
  MPSLibrary::PrefetchComputeState();
  v12 = *(&self->super.super.isa + v3);
  MPSLibrary::PrefetchComputeState();
  v13 = *(&self->super.super.isa + v3);
  MPSLibrary::PrefetchComputeState();
  v14 = *(&self->super.super.isa + v3);
  MPSLibrary::PrefetchComputeState();
  v15 = *(&self->super.super.isa + v3);
  MPSLibrary::PrefetchComputeState();
  v16 = *(&self->super.super.isa + v3);
  MPSLibrary::PrefetchComputeState();
  v17 = *(&self->super.super.isa + v3);
  MPSLibrary::PrefetchComputeState();
  v18 = *(&self->super.super.isa + v3);
  MPSLibrary::PrefetchComputeState();
  v19 = *(&self->super.super.isa + v3);

  MPSLibrary::PrefetchComputeState();
}

- (void)encodeRegressionToCommandBuffer:(id)buffer sourceTextureArray:(id)array guidanceTexture:(id)texture constraintsTextureArray:(id)textureArray numberOfIterations:(unint64_t)iterations destinationCoefficientsTextureArray:(id)coefficientsTextureArray
{
  v644 = *MEMORY[0x277D85DE8];
  v606 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.isa + v606) & 1) == 0)
  {
    objc_msgSend_count(array, a2, buffer, array, texture, textureArray);
    if (!objc_msgSend_count(array, v10, v11, v12, v13, v14) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v638 = 0u;
    v639 = 0u;
    v636 = 0u;
    v637 = 0u;
    v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(array, v15, &v636, v643, 16, v16);
    v23 = MEMORY[0x277CD7350];
    if (v22)
    {
      v24 = *v637;
      do
      {
        v25 = 0;
        do
        {
          if (*v637 != v24)
          {
            objc_enumerationMutation(array);
          }

          v26 = *(*(&v636 + 1) + 8 * v25);
          v27 = *v23;
          v28 = *(&self->super.super.isa + v27);
          v29 = objc_msgSend_pixelFormat(v26, v17, v18, v19, v20, v21, textureCopy);
          MPSDevice::GetPixelInfo(v28, v29, MPSImageFeatureChannelFormatNone);
          v30 = *(&self->super.super.isa + v27);
          v36 = objc_msgSend_pixelFormat(v26, v31, v32, v33, v34, v35);
          if ((MPSDevice::GetPixelInfo(v30, v36, MPSImageFeatureChannelFormatNone) & 0xF000000) != 0x1000000 && MTLReportFailureTypeEnabled())
          {
            textureCopy = v26;
            MTLReportFailure();
          }

          ++v25;
        }

        while (v22 != v25);
        v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(array, v17, &v636, v643, 16, v21);
        v22 = v37;
      }

      while (v37);
    }

    if (self->_guideChannels == 4)
    {
      v38 = *v23;
      v39 = *(&self->super.super.isa + v38);
      v40 = objc_msgSend_pixelFormat(texture, v17, v18, v19, v20, v21);
      MPSDevice::GetPixelInfo(v39, v40, MPSImageFeatureChannelFormatNone);
      v41 = *(&self->super.super.isa + v38);
      v47 = objc_msgSend_pixelFormat(texture, v42, v43, v44, v45, v46);
      if ((MPSDevice::GetPixelInfo(v41, v47, MPSImageFeatureChannelFormatNone) & 0xF000000) != 0x4000000)
      {
        if (MTLReportFailureTypeEnabled())
        {
          textureCopy = texture;
          MTLReportFailure();
        }
      }
    }

    if (textureArray)
    {
      objc_msgSend_count(textureArray, v17, v18, v19, v20, v21);
      objc_msgSend_count(array, v48, v49, v50, v51, v52);
      v58 = objc_msgSend_count(textureArray, v53, v54, v55, v56, v57);
      if (v58 != objc_msgSend_count(array, v59, v60, v61, v62, v63) && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v634 = 0u;
      v635 = 0u;
      v632 = 0u;
      v633 = 0u;
      v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(textureArray, v64, &v632, v642, 16, v65, textureCopy);
      if (v66)
      {
        v67 = *v633;
        do
        {
          for (i = 0; i != v66; ++i)
          {
            if (*v633 != v67)
            {
              objc_enumerationMutation(textureArray);
            }

            v69 = *(*(&v632 + 1) + 8 * i);
            if (v69 != objc_msgSend_null(MEMORY[0x277CBEB68], v17, v18, v19, v20, v21, textureCopy))
            {
              if (objc_msgSend_textureType(v69, v17, v18, v19, v20, v21) != 2)
              {
                objc_msgSend_textureType(v69, v70, v71, v72, v73, v74);
              }

              if (objc_msgSend_textureType(v69, v70, v71, v72, v73, v74) != 2 && objc_msgSend_textureType(v69, v75, v76, v77, v78, v79) != 3 && MTLReportFailureTypeEnabled())
              {
                textureCopy = v69;
                MTLReportFailure();
              }

              v80 = *v23;
              v81 = *(&self->super.super.isa + v80);
              v82 = objc_msgSend_pixelFormat(v69, v75, v76, v77, v78, v79, textureCopy);
              MPSDevice::GetPixelInfo(v81, v82, MPSImageFeatureChannelFormatNone);
              v83 = *(&self->super.super.isa + v80);
              v89 = objc_msgSend_pixelFormat(v69, v84, v85, v86, v87, v88);
              if ((MPSDevice::GetPixelInfo(v83, v89, MPSImageFeatureChannelFormatNone) & 0xF000000) != 0x1000000 && MTLReportFailureTypeEnabled())
              {
                textureCopy = v69;
                MTLReportFailure();
              }
            }
          }

          v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(textureArray, v17, &v632, v642, 16, v21);
        }

        while (v66);
      }
    }

    if (!iterations && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_count(coefficientsTextureArray, v17, v18, v19, v20, v21, textureCopy);
    objc_msgSend_count(array, v90, v91, v92, v93, v94);
    v100 = objc_msgSend_count(coefficientsTextureArray, v95, v96, v97, v98, v99);
    if (v100 != objc_msgSend_count(array, v101, v102, v103, v104, v105) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v630 = 0u;
    v631 = 0u;
    v628 = 0u;
    v629 = 0u;
    v108 = objc_msgSend_countByEnumeratingWithState_objects_count_(coefficientsTextureArray, v106, &v628, v641, 16, v107);
    if (v108)
    {
      v109 = *v629;
      do
      {
        for (j = 0; j != v108; ++j)
        {
          if (*v629 != v109)
          {
            objc_enumerationMutation(coefficientsTextureArray);
          }

          objc_msgSend_validateCoefficientsTextures_(self, a2, *(*(&v628 + 1) + 8 * j), array, texture, textureArray);
        }

        v108 = objc_msgSend_countByEnumeratingWithState_objects_count_(coefficientsTextureArray, a2, &v628, v641, 16, textureArray);
      }

      while (v108);
    }
  }

  kernelTemporalDiameter = self->_kernelTemporalDiameter;
  v627 = LODWORD(self->_kernelSpatialDiameter) >> 1;
  v626 = kernelTemporalDiameter >> 1;
  guideStack = self->_guideStack;
  v113 = objc_msgSend_arrayLength(texture, a2, buffer, array, texture, textureArray);
  objc_msgSend_encodeShiftOn_textureArray_by_(self, v114, buffer, guideStack, v113, v115);
  objc_msgSend_encodeDownsamplingOn_inputTexture_outputTexture_(self, v116, buffer, texture, self->_guideStack, v117);
  objc_msgSend_encodeToCommandBuffer_sourceTexture_destinationTexture_(self->_boxFilter, v118, buffer, self->_guideStack, self->_mean_guideStack, v119);
  guideChannels = self->_guideChannels;
  if (guideChannels == 4)
  {
    v211 = *MEMORY[0x277CD7370];
    v212 = *(&self->super.super.isa + v211);
    ComputeState = MPSLibrary::GetComputeState();
    v214 = objc_alloc(MEMORY[0x277CD7210]);
    v222 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v214, v215, buffer, 0, v216, v217);
    v624 = v222;
    selfCopy4 = self;
    if ((*(&self->super.super.isa + v606) & 0x18) != 0)
    {
      v223 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
      if (v223 || (v224 = objc_opt_class(), v223 = NSStringFromClass(v224), objc_msgSend_setLabel_(self, v225, v223, v226, v227, v228), v223))
      {
        objc_msgSend_setLabel_(v222, v218, v223, v219, v220, v221);
      }
    }

    objc_msgSend_setComputePipelineState_(v222, v218, ComputeState, v219, v220, v221);
    objc_msgSend_setTexture_atIndex_(v222, v229, self->_guideStack, 0, v230, v231);
    objc_msgSend_setTexture_atIndex_(v222, v232, self->_mean_guideStack, 1, v233, v234);
    v239 = objc_msgSend_objectAtIndexedSubscript_(self->_var_I, v235, 0, v236, v237, v238);
    objc_msgSend_setTexture_atIndex_(v222, v240, v239, 2, v241, v242);
    v247 = objc_msgSend_objectAtIndexedSubscript_(self->_var_I, v243, 1, v244, v245, v246);
    objc_msgSend_setTexture_atIndex_(v222, v248, v247, 3, v249, v250);
    v255 = objc_msgSend_objectAtIndexedSubscript_(self->_var_I, v251, 2, v252, v253, v254);
    objc_msgSend_setTexture_atIndex_(v222, v256, v255, 4, v257, v258);
    objc_msgSend_setBytes_length_atIndex_(v222, v259, &self->_epsilon, 4, 0, v260);
    objc_msgSend_setBytes_length_atIndex_(v222, v261, &v627, 4, 1, v262);
    objc_msgSend_setBytes_length_atIndex_(v222, v263, &v626, 4, 2, v264);
    v270 = objc_msgSend_threadExecutionWidth(ComputeState, v265, v266, v267, v268, v269);
    v276 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v271, v272, v273, v274, v275);
    v282 = objc_msgSend_width(self->_guideStack, v277, v278, v279, v280, v281);
    v288 = objc_msgSend_height(self->_guideStack, v283, v284, v285, v286, v287);
    v294 = objc_msgSend_arrayLength(self->_guideStack, v289, v290, v291, v292, v293);
    v621 = (v270 + v282 - 1) / v270;
    v622 = (v276 / v270 + v288 - 1) / (v276 / v270);
    v623 = v294;
    v618 = v270;
    v619 = v276 / v270;
    v620 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v222, v295, &v621, &v618, v296, v297);
    v298 = *(&self->super.super.isa + v211);
    MPSLibrary::ReleaseComputeState();
    objc_msgSend_endEncoding(v222, v299, v300, v301, v302, v303);
  }

  else if (guideChannels == 3)
  {
    v121 = *MEMORY[0x277CD7370];
    v122 = *(&self->super.super.isa + v121);
    v123 = MPSLibrary::GetComputeState();
    v124 = objc_alloc(MEMORY[0x277CD7210]);
    v132 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v124, v125, buffer, 0, v126, v127);
    v624 = v132;
    selfCopy4 = self;
    if ((*(&self->super.super.isa + v606) & 0x18) != 0)
    {
      v133 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
      if (v133 || (v134 = objc_opt_class(), v133 = NSStringFromClass(v134), objc_msgSend_setLabel_(self, v135, v133, v136, v137, v138), v133))
      {
        objc_msgSend_setLabel_(v132, v128, v133, v129, v130, v131);
      }
    }

    objc_msgSend_setComputePipelineState_(v132, v128, v123, v129, v130, v131);
    objc_msgSend_setTexture_atIndex_(v132, v139, self->_guideStack, 0, v140, v141);
    objc_msgSend_setTexture_atIndex_(v132, v142, self->_mean_guideStack, 1, v143, v144);
    v149 = objc_msgSend_objectAtIndexedSubscript_(self->_var_I, v145, 0, v146, v147, v148);
    objc_msgSend_setTexture_atIndex_(v132, v150, v149, 2, v151, v152);
    v157 = objc_msgSend_objectAtIndexedSubscript_(self->_var_I, v153, 1, v154, v155, v156);
    objc_msgSend_setTexture_atIndex_(v132, v158, v157, 3, v159, v160);
    objc_msgSend_setBytes_length_atIndex_(v132, v161, &self->_epsilon, 4, 0, v162);
    objc_msgSend_setBytes_length_atIndex_(v132, v163, &v627, 4, 1, v164);
    objc_msgSend_setBytes_length_atIndex_(v132, v165, &v626, 4, 2, v166);
    v172 = objc_msgSend_threadExecutionWidth(v123, v167, v168, v169, v170, v171);
    v178 = objc_msgSend_maxTotalThreadsPerThreadgroup(v123, v173, v174, v175, v176, v177);
    v184 = objc_msgSend_width(self->_guideStack, v179, v180, v181, v182, v183);
    v190 = objc_msgSend_height(self->_guideStack, v185, v186, v187, v188, v189);
    v196 = objc_msgSend_arrayLength(self->_guideStack, v191, v192, v193, v194, v195);
    v621 = (v172 + v184 - 1) / v172;
    v622 = (v178 / v172 + v190 - 1) / (v178 / v172);
    v623 = v196;
    v618 = v172;
    v619 = v178 / v172;
    v620 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v132, v197, &v621, &v618, v198, v199);
    v200 = *(&self->super.super.isa + v121);
    MPSLibrary::ReleaseComputeState();
    objc_msgSend_endEncoding(v132, v201, v202, v203, v204, v205);
  }

  else if (MTLReportFailureTypeEnabled())
  {
    textureCopy = self->_guideChannels;
    MTLReportFailure();
  }

  if (objc_msgSend_count(array, v206, v207, v208, v209, v210, textureCopy))
  {
    v308 = 0;
    do
    {
      v611 = v308;
      v309 = objc_msgSend_objectAtIndexedSubscript_(array, v304, v308, v305, v306, v307);
      v314 = objc_msgSend_objectAtIndexedSubscript_(self->_sourceStackArray, v310, v611, v311, v312, v313);
      v320 = objc_msgSend_arrayLength(v309, v315, v316, v317, v318, v319);
      objc_msgSend_encodeShiftOn_textureArray_by_(self, v321, buffer, v314, v320, v322);
      v327 = objc_msgSend_objectAtIndexedSubscript_(self->_sourceStackArray, v323, v611, v324, v325, v326);
      objc_msgSend_encodeDownsamplingOn_inputTexture_outputTexture_(self, v328, buffer, v309, v327, v329);
      if (!textureArray)
      {
        goto LABEL_64;
      }

      v335 = objc_msgSend_count(textureArray, v330, v331, v332, v333, v334);
      v336 = v611;
      if (v611 >= v335)
      {
        v608 = 0;
        goto LABEL_67;
      }

      v337 = objc_msgSend_objectAtIndexedSubscript_(textureArray, v330, v611, v332, v333, v334);
      if (v337 == objc_msgSend_null(MEMORY[0x277CBEB68], v338, v339, v340, v341, v342))
      {
LABEL_64:
        v608 = 0;
      }

      else
      {
        constraints = self->_constraints;
        v344 = objc_msgSend_objectAtIndexedSubscript_(textureArray, v330, v611, v332, v333, v334);
        v350 = objc_msgSend_arrayLength(v344, v345, v346, v347, v348, v349);
        objc_msgSend_encodeShiftOn_textureArray_by_(self, v351, buffer, constraints, v350, v352);
        v357 = objc_msgSend_objectAtIndexedSubscript_(textureArray, v353, v611, v354, v355, v356);
        objc_msgSend_encodeDownsamplingOn_inputTexture_outputTexture_(self, v358, buffer, v357, self->_constraints, v359);
        v608 = 1;
      }

      v336 = v611;
LABEL_67:
      v360 = objc_msgSend_objectAtIndexedSubscript_(coefficientsTextureArray, v330, v336, v332, v333, v334);
      if (iterations)
      {
        v366 = v360;
        v613 = 0;
        do
        {
          boxFilter = self->_boxFilter;
          v368 = objc_msgSend_objectAtIndexedSubscript_(self->_sourceStackArray, v361, v611, v363, v364, v365);
          objc_msgSend_encodeToCommandBuffer_sourceTexture_destinationTexture_(boxFilter, v369, buffer, v368, self->_mean_sourceStack, v370);
          v371 = self->_guideChannels;
          if (v371 == 4)
          {
            v605 = *MEMORY[0x277CD7370];
            v475 = *(&self->super.super.isa + v605);
            v476 = MPSLibrary::GetComputeState();
            v477 = objc_alloc(MEMORY[0x277CD7210]);
            v485 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v477, v478, buffer, 0, v479, v480);
            v624 = v485;
            selfCopy4 = self;
            if ((*(&self->super.super.isa + v606) & 0x18) != 0)
            {
              v486 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
              if (v486 || (v487 = objc_opt_class(), v486 = NSStringFromClass(v487), objc_msgSend_setLabel_(self, v488, v486, v489, v490, v491), v486))
              {
                objc_msgSend_setLabel_(v485, v481, v486, v482, v483, v484);
              }
            }

            objc_msgSend_setComputePipelineState_(v485, v481, v476, v482, v483, v484);
            objc_msgSend_setTexture_atIndex_(v485, v492, self->_guideStack, 0, v493, v494);
            v499 = objc_msgSend_objectAtIndexedSubscript_(self->_sourceStackArray, v495, v611, v496, v497, v498);
            objc_msgSend_setTexture_atIndex_(v485, v500, v499, 1, v501, v502);
            objc_msgSend_setTexture_atIndex_(v485, v503, self->_mean_guideStack, 2, v504, v505);
            objc_msgSend_setTexture_atIndex_(v485, v506, self->_mean_sourceStack, 3, v507, v508);
            v513 = objc_msgSend_objectAtIndexedSubscript_(self->_var_I, v509, 0, v510, v511, v512);
            objc_msgSend_setTexture_atIndex_(v485, v514, v513, 4, v515, v516);
            v521 = objc_msgSend_objectAtIndexedSubscript_(self->_var_I, v517, 1, v518, v519, v520);
            objc_msgSend_setTexture_atIndex_(v485, v522, v521, 5, v523, v524);
            v529 = objc_msgSend_objectAtIndexedSubscript_(self->_var_I, v525, 2, v526, v527, v528);
            objc_msgSend_setTexture_atIndex_(v485, v530, v529, 6, v531, v532);
            v537 = objc_msgSend_objectAtIndexedSubscript_(v366, v533, 0, v534, v535, v536);
            objc_msgSend_setTexture_atIndex_(v485, v538, v537, 7, v539, v540);
            v545 = objc_msgSend_objectAtIndexedSubscript_(v366, v541, 1, v542, v543, v544);
            objc_msgSend_setTexture_atIndex_(v485, v546, v545, 8, v547, v548);
            objc_msgSend_setBytes_length_atIndex_(v485, v549, &v627, 4, 0, v550);
            objc_msgSend_setBytes_length_atIndex_(v485, v551, &v626, 4, 1, v552);
            v558 = objc_msgSend_threadExecutionWidth(v476, v553, v554, v555, v556, v557);
            v564 = objc_msgSend_maxTotalThreadsPerThreadgroup(v476, v559, v560, v561, v562, v563);
            v570 = objc_msgSend_width(self->_guideStack, v565, v566, v567, v568, v569);
            v576 = objc_msgSend_height(self->_guideStack, v571, v572, v573, v574, v575);
            v582 = objc_msgSend_arrayLength(self->_guideStack, v577, v578, v579, v580, v581);
            v621 = (v558 + v570 - 1) / v558;
            v622 = (v564 / v558 + v576 - 1) / (v564 / v558);
            v623 = v582;
            v618 = v558;
            v619 = v564 / v558;
            v620 = 1;
            objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v485, v583, &v621, &v618, v584, v585);
            v586 = *(&self->super.super.isa + v605);
            MPSLibrary::ReleaseComputeState();
            objc_msgSend_endEncoding(v485, v587, v588, v589, v590, v591);
          }

          else if (v371 == 3)
          {
            v604 = *MEMORY[0x277CD7370];
            v372 = *(&self->super.super.isa + v604);
            v373 = MPSLibrary::GetComputeState();
            v374 = objc_alloc(MEMORY[0x277CD7210]);
            v382 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v374, v375, buffer, 0, v376, v377);
            v624 = v382;
            selfCopy4 = self;
            if ((*(&self->super.super.isa + v606) & 0x18) != 0)
            {
              v383 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
              if (v383 || (v384 = objc_opt_class(), v383 = NSStringFromClass(v384), objc_msgSend_setLabel_(self, v385, v383, v386, v387, v388), v383))
              {
                objc_msgSend_setLabel_(v382, v378, v383, v379, v380, v381);
              }
            }

            objc_msgSend_setComputePipelineState_(v382, v378, v373, v379, v380, v381);
            objc_msgSend_setTexture_atIndex_(v382, v389, self->_guideStack, 0, v390, v391);
            v396 = objc_msgSend_objectAtIndexedSubscript_(self->_sourceStackArray, v392, v611, v393, v394, v395);
            objc_msgSend_setTexture_atIndex_(v382, v397, v396, 1, v398, v399);
            objc_msgSend_setTexture_atIndex_(v382, v400, self->_mean_guideStack, 2, v401, v402);
            objc_msgSend_setTexture_atIndex_(v382, v403, self->_mean_sourceStack, 3, v404, v405);
            v410 = objc_msgSend_objectAtIndexedSubscript_(self->_var_I, v406, 0, v407, v408, v409);
            objc_msgSend_setTexture_atIndex_(v382, v411, v410, 4, v412, v413);
            v418 = objc_msgSend_objectAtIndexedSubscript_(self->_var_I, v414, 1, v415, v416, v417);
            objc_msgSend_setTexture_atIndex_(v382, v419, v418, 5, v420, v421);
            v426 = objc_msgSend_objectAtIndexedSubscript_(v366, v422, 0, v423, v424, v425);
            objc_msgSend_setTexture_atIndex_(v382, v427, v426, 6, v428, v429);
            objc_msgSend_setBytes_length_atIndex_(v382, v430, &v627, 4, 0, v431);
            objc_msgSend_setBytes_length_atIndex_(v382, v432, &v626, 4, 1, v433);
            v439 = objc_msgSend_threadExecutionWidth(v373, v434, v435, v436, v437, v438);
            v445 = objc_msgSend_maxTotalThreadsPerThreadgroup(v373, v440, v441, v442, v443, v444);
            v451 = objc_msgSend_width(self->_guideStack, v446, v447, v448, v449, v450);
            v457 = objc_msgSend_height(self->_guideStack, v452, v453, v454, v455, v456);
            v463 = objc_msgSend_arrayLength(self->_guideStack, v458, v459, v460, v461, v462);
            v621 = (v439 + v451 - 1) / v439;
            v622 = (v445 / v439 + v457 - 1) / (v445 / v439);
            v623 = v463;
            v618 = v439;
            v619 = v445 / v439;
            v620 = 1;
            objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v382, v464, &v621, &v618, v465, v466);
            v467 = *(&self->super.super.isa + v604);
            MPSLibrary::ReleaseComputeState();
            objc_msgSend_endEncoding(v382, v468, v469, v470, v471, v472);
          }

          else if (MTLReportFailureTypeEnabled())
          {
            v602 = self->_guideChannels;
            MTLReportFailure();
          }

          v616 = 0u;
          v617 = 0u;
          v614 = 0u;
          v615 = 0u;
          v592 = objc_msgSend_countByEnumeratingWithState_objects_count_(v366, v473, &v614, v640, 16, v474, v602);
          if (v592)
          {
            v593 = *v615;
            do
            {
              for (k = 0; k != v592; ++k)
              {
                if (*v615 != v593)
                {
                  objc_enumerationMutation(v366);
                }

                objc_msgSend_encodeToCommandBuffer_sourceTexture_destinationTexture_(self->_boxFilter, v361, buffer, *(*(&v614 + 1) + 8 * k), *(*(&v614 + 1) + 8 * k), v365);
              }

              v592 = objc_msgSend_countByEnumeratingWithState_objects_count_(v366, v361, &v614, v640, 16, v365);
            }

            while (v592);
          }

          if (v613 < iterations - 1 || self->_arrayLength >= 2)
          {
            if (v608)
            {
              v595 = self->_constraints;
            }

            else
            {
              v595 = 0;
            }

            v596 = self->_guideStack;
            v597 = objc_msgSend_objectAtIndexedSubscript_(self->_sourceStackArray, v361, v611, v363, v364, v365);
            objc_msgSend_encodeReconstructionToCommandBuffer_guidanceTexture_constraintsTexture_coefficientsTextureArray_destinationTexture_(self, v598, buffer, v596, v595, v366, v597);
          }

          ++v613;
        }

        while (v613 != iterations);
      }

      v599 = objc_msgSend_count(array, v361, v362, v363, v364, v365);
      v308 = v611 + 1;
    }

    while (v611 + 1 < v599);
  }

  v600 = *MEMORY[0x277D85DE8];
}

- (void)encodeReconstructionToCommandBuffer:(id)buffer guidanceTexture:(id)texture constraintsTexture:(id)constraintsTexture coefficientsTextureArray:(id)array destinationTexture:(id)destinationTexture
{
  v12 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.isa + v12) & 1) == 0)
  {
    if (objc_msgSend_textureType(destinationTexture, a2, buffer, texture, constraintsTexture, array) != 2)
    {
      objc_msgSend_textureType(destinationTexture, v13, v14, v15, v16, v17);
    }

    if (objc_msgSend_textureType(destinationTexture, v13, v14, v15, v16, v17) != 2 && objc_msgSend_textureType(destinationTexture, v18, v19, v20, v21, v22) != 3 && MTLReportFailureTypeEnabled())
    {
      destinationTextureCopy = destinationTexture;
      MTLReportFailure();
    }

    objc_msgSend_textureType(texture, v18, v19, v20, v21, v22, destinationTextureCopy);
    objc_msgSend_textureType(destinationTexture, v23, v24, v25, v26, v27);
    v33 = objc_msgSend_textureType(texture, v28, v29, v30, v31, v32);
    if (v33 != objc_msgSend_textureType(destinationTexture, v34, v35, v36, v37, v38) && MTLReportFailureTypeEnabled())
    {
      textureCopy = texture;
      MTLReportFailure();
    }

    objc_msgSend_arrayLength(texture, v39, v40, v41, v42, v43, textureCopy);
    objc_msgSend_arrayLength(destinationTexture, v44, v45, v46, v47, v48);
    v54 = objc_msgSend_arrayLength(texture, v49, v50, v51, v52, v53);
    if (v54 != objc_msgSend_arrayLength(destinationTexture, v55, v56, v57, v58, v59) && MTLReportFailureTypeEnabled())
    {
      textureCopy2 = texture;
      MTLReportFailure();
    }

    v65 = *MEMORY[0x277CD7350];
    v66 = *(&self->super.super.isa + v65);
    v67 = objc_msgSend_pixelFormat(texture, v60, v61, v62, v63, v64, textureCopy2);
    MPSDevice::GetPixelInfo(v66, v67, MPSImageFeatureChannelFormatNone);
    v68 = *(&self->super.super.isa + v65);
    v74 = objc_msgSend_pixelFormat(texture, v69, v70, v71, v72, v73);
    if ((MPSDevice::GetPixelInfo(v68, v74, MPSImageFeatureChannelFormatNone) & 0xF000000) != 0x4000000 && MTLReportFailureTypeEnabled())
    {
      constraintsTextureCopy = texture;
      MTLReportFailure();
    }

    if (!constraintsTexture)
    {
      goto LABEL_13;
    }

    objc_msgSend_textureType(constraintsTexture, v75, v76, v77, v78, v79);
    objc_msgSend_textureType(destinationTexture, v80, v81, v82, v83, v84);
    v90 = objc_msgSend_textureType(constraintsTexture, v85, v86, v87, v88, v89);
    if (v90 != objc_msgSend_textureType(destinationTexture, v91, v92, v93, v94, v95) && MTLReportFailureTypeEnabled())
    {
      constraintsTextureCopy = constraintsTexture;
      MTLReportFailure();
    }

    objc_msgSend_arrayLength(constraintsTexture, v96, v97, v98, v99, v100, constraintsTextureCopy);
    objc_msgSend_arrayLength(destinationTexture, v101, v102, v103, v104, v105);
    v111 = objc_msgSend_arrayLength(constraintsTexture, v106, v107, v108, v109, v110);
    if (v111 != objc_msgSend_arrayLength(destinationTexture, v112, v113, v114, v115, v116) && MTLReportFailureTypeEnabled())
    {
      constraintsTextureCopy2 = constraintsTexture;
      MTLReportFailure();
    }

    v122 = *(&self->super.super.isa + v65);
    v123 = objc_msgSend_pixelFormat(constraintsTexture, v117, v118, v119, v120, v121, constraintsTextureCopy2);
    MPSDevice::GetPixelInfo(v122, v123, MPSImageFeatureChannelFormatNone);
    v124 = *(&self->super.super.isa + v65);
    v130 = objc_msgSend_pixelFormat(constraintsTexture, v125, v126, v127, v128, v129);
    if ((MPSDevice::GetPixelInfo(v124, v130, MPSImageFeatureChannelFormatNone) & 0xF000000) != 0x1000000 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
      objc_msgSend_validateCoefficientsTextures_(self, v344, array, v345, v346, v347, constraintsTexture);
    }

    else
    {
LABEL_13:
      objc_msgSend_validateCoefficientsTextures_(self, v75, array, v77, v78, v79, constraintsTextureCopy);
    }
  }

  arrayCopy = array;
  v131 = objc_msgSend_width(texture, a2, buffer, texture, constraintsTexture, array);
  if (v131 == objc_msgSend_width(destinationTexture, v132, v133, v134, v135, v136))
  {
    v142 = objc_msgSend_height(texture, v137, v138, v139, v140, v141);
    v148 = v142 != objc_msgSend_height(destinationTexture, v143, v144, v145, v146, v147);
    if (!constraintsTexture)
    {
LABEL_19:
      v155 = 0;
      if (self->_supportsReadWriteTextures)
      {
        goto LABEL_20;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v148 = 1;
    if (!constraintsTexture)
    {
      goto LABEL_19;
    }
  }

  v149 = objc_msgSend_width(constraintsTexture, v137, v138, v139, v140, v141);
  if (v149 == objc_msgSend_width(texture, v150, v151, v152, v153, v154))
  {
    goto LABEL_19;
  }

  v162 = objc_msgSend_height(constraintsTexture, v137, v138, v139, v140, v141);
  v155 = v162 != objc_msgSend_height(texture, v163, v164, v165, v166, v167);
  if (self->_supportsReadWriteTextures)
  {
LABEL_20:
    v354 = 0;
    guideChannels = self->_guideChannels;
    if (guideChannels != 4)
    {
      goto LABEL_21;
    }

    goto LABEL_28;
  }

LABEL_27:
  v168 = objc_msgSend_newTemporaryIntermediate_texture_(self, v137, buffer, destinationTexture, v140, v141);
  v174 = objc_msgSend_blitCommandEncoder(buffer, v169, v170, v171, v172, v173);
  v354 = v168;
  objc_msgSend_copyFromTexture_toTexture_(v174, v175, destinationTexture, v168, v176, v177);
  objc_msgSend_endEncoding(v174, v178, v179, v180, v181, v182);
  guideChannels = self->_guideChannels;
  if (guideChannels != 4)
  {
LABEL_21:
    if (guideChannels == 3)
    {
      if (v148 || v155)
      {
        v157 = *MEMORY[0x277CD7370];
        v158 = *(&self->super.super.isa + v157);
        ComputeState = MPSLibrary::GetComputeState();
        LODWORD(v160) = v157;
        v161 = arrayCopy;
      }

      else
      {
        supportsReadWriteTextures = self->_supportsReadWriteTextures;
        objc_msgSend_textureType(destinationTexture, v137, v138, v139, v140, v141);
        v160 = *MEMORY[0x277CD7370];
        v189 = *(&self->super.super.isa + v160);
        v161 = arrayCopy;
        ComputeState = MPSLibrary::GetComputeState();
      }

      v192 = objc_alloc(MEMORY[0x277CD7210]);
      v200 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v192, v193, buffer, 0, v194, v195);
      v363 = v200;
      selfCopy2 = self;
      if ((*(&self->super.super.isa + v12) & 0x18) != 0)
      {
        v201 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
        if (v201 || (v202 = objc_opt_class(), v203 = v160, v160 = NSStringFromClass(v202), objc_msgSend_setLabel_(self, v204, v160, v205, v206, v207), v201 = v160, LODWORD(v160) = v203, v201))
        {
          objc_msgSend_setLabel_(v200, v196, v201, v197, v198, v199);
        }
      }

      objc_msgSend_setComputePipelineState_(v200, v196, ComputeState, v197, v198, v199);
      v212 = objc_msgSend_objectAtIndexedSubscript_(v161, v208, 0, v209, v210, v211);
      objc_msgSend_setTexture_atIndex_(v200, v213, v212, 0, v214, v215);
      objc_msgSend_setTexture_atIndex_(v200, v216, texture, 1, v217, v218);
      objc_msgSend_setTexture_atIndex_(v200, v219, constraintsTexture, 2, v220, v221);
      if (self->_supportsReadWriteTextures)
      {
        objc_msgSend_setTexture_atIndex_(v200, v222, destinationTexture, 3, v223, v224);
      }

      else
      {
        objc_msgSend_setTexture_atIndex_(v200, v222, v354, 4, v223, v224);
        objc_msgSend_setTexture_atIndex_(v200, v230, destinationTexture, 5, v231, v232);
      }

      v233 = objc_msgSend_threadExecutionWidth(ComputeState, v225, v226, v227, v228, v229);
      v239 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v234, v235, v236, v237, v238);
      v360 = (v233 + objc_msgSend_width(destinationTexture, v240, v241, v242, v243, v244) - 1) / v233;
      v361 = (v239 / v233 + objc_msgSend_height(destinationTexture, v245, v246, v247, v248, v249) - 1) / (v239 / v233);
      v362 = objc_msgSend_arrayLength(destinationTexture, v250, v251, v252, v253, v254);
      v357 = v233;
      v358 = v239 / v233;
      v359 = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v200, v255, &v360, &v357, v256, v257);
      v258 = *(&self->super.super.isa + v160);
      MPSLibrary::ReleaseComputeState();
      objc_msgSend_endEncoding(v200, v259, v260, v261, v262, v263);
    }

    else if (MTLReportFailureTypeEnabled())
    {
      v353 = self->_guideChannels;
      MTLReportFailure();
    }

    return;
  }

LABEL_28:
  if (v148 || v155)
  {
    v183 = *MEMORY[0x277CD7370];
    v184 = *(&self->super.super.isa + v183);
    v185 = MPSLibrary::GetComputeState();
    LODWORD(v186) = v183;
    v187 = arrayCopy;
  }

  else
  {
    v190 = self->_supportsReadWriteTextures;
    objc_msgSend_textureType(destinationTexture, v137, v138, v139, v140, v141);
    v186 = *MEMORY[0x277CD7370];
    v191 = *(&self->super.super.isa + v186);
    v187 = arrayCopy;
    v185 = MPSLibrary::GetComputeState();
  }

  v264 = objc_alloc(MEMORY[0x277CD7210]);
  v272 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v264, v265, buffer, 0, v266, v267);
  v363 = v272;
  selfCopy2 = self;
  if ((*(&self->super.super.isa + v12) & 0x18) != 0)
  {
    v273 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
    if (v273 || (v274 = objc_opt_class(), v275 = v186, v186 = NSStringFromClass(v274), objc_msgSend_setLabel_(self, v276, v186, v277, v278, v279), v273 = v186, LODWORD(v186) = v275, v273))
    {
      objc_msgSend_setLabel_(v272, v268, v273, v269, v270, v271);
    }
  }

  objc_msgSend_setComputePipelineState_(v272, v268, v185, v269, v270, v271);
  v284 = objc_msgSend_objectAtIndexedSubscript_(v187, v280, 0, v281, v282, v283);
  objc_msgSend_setTexture_atIndex_(v272, v285, v284, 0, v286, v287);
  v292 = objc_msgSend_objectAtIndexedSubscript_(v187, v288, 1, v289, v290, v291);
  objc_msgSend_setTexture_atIndex_(v272, v293, v292, 1, v294, v295);
  objc_msgSend_setTexture_atIndex_(v272, v296, texture, 2, v297, v298);
  objc_msgSend_setTexture_atIndex_(v272, v299, constraintsTexture, 3, v300, v301);
  if (self->_supportsReadWriteTextures)
  {
    objc_msgSend_setTexture_atIndex_(v272, v302, destinationTexture, 4, v303, v304);
  }

  else
  {
    objc_msgSend_setTexture_atIndex_(v272, v302, v354, 5, v303, v304);
    objc_msgSend_setTexture_atIndex_(v272, v310, destinationTexture, 6, v311, v312);
  }

  v313 = objc_msgSend_threadExecutionWidth(v185, v305, v306, v307, v308, v309);
  v319 = objc_msgSend_maxTotalThreadsPerThreadgroup(v185, v314, v315, v316, v317, v318);
  v360 = (v313 + objc_msgSend_width(destinationTexture, v320, v321, v322, v323, v324) - 1) / v313;
  v361 = (v319 / v313 + objc_msgSend_height(destinationTexture, v325, v326, v327, v328, v329) - 1) / (v319 / v313);
  v362 = objc_msgSend_arrayLength(destinationTexture, v330, v331, v332, v333, v334);
  v357 = v313;
  v358 = v319 / v313;
  v359 = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v272, v335, &v360, &v357, v336, v337);
  v338 = *(&self->super.super.isa + v186);
  MPSLibrary::ReleaseComputeState();
  objc_msgSend_endEncoding(v272, v339, v340, v341, v342, v343);
}

- (void)encodeReconstructionToCommandBuffer:(id)buffer guidanceTexture:(id)texture coefficientsTextureArray:(id)array destinationTextureArray:(id)textureArray
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    objc_msgSend_count(textureArray, a2, buffer, texture, array, textureArray);
    objc_msgSend_count(array, v11, v12, v13, v14, v15);
    v21 = objc_msgSend_count(textureArray, v16, v17, v18, v19, v20);
    if (v21 != objc_msgSend_count(array, v22, v23, v24, v25, v26))
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }
  }

  if (objc_msgSend_count(array, a2, buffer, texture, array, textureArray))
  {
    v31 = 0;
    do
    {
      v32 = objc_msgSend_objectAtIndexedSubscript_(array, v27, v31, v28, v29, v30);
      v37 = objc_msgSend_objectAtIndexedSubscript_(textureArray, v33, v31, v34, v35, v36);
      objc_msgSend_encodeReconstructionToCommandBuffer_guidanceTexture_constraintsTexture_coefficientsTextureArray_destinationTexture_(self, v38, buffer, texture, 0, v32, v37);
      ++v31;
    }

    while (v31 < objc_msgSend_count(array, v39, v40, v41, v42, v43));
  }
}

- (void)encodeToCommandBuffer:(id)buffer sourceTextureArray:(id)array guidanceTexture:(id)texture constraintsTextureArray:(id)textureArray numberOfIterations:(unint64_t)iterations destinationTextureArray:(id)destinationTextureArray
{
  v131 = *MEMORY[0x277D85DE8];
  coefficientsTextureArray = self->_coefficientsTextureArray;
  MEMORY[0x23EE7BAC0](v127, buffer, 0);
  if (!coefficientsTextureArray)
  {
    v16 = objc_alloc(MEMORY[0x277CBEB18]);
    v22 = objc_msgSend_count(destinationTextureArray, v17, v18, v19, v20, v21);
    v27 = objc_msgSend_initWithCapacity_(v16, v23, v22, v24, v25, v26);
    iterationsCopy = iterations;
    textureCopy = texture;
    height = self->_height;
    width = self->_width;
    v125 = height;
    arrayLength = self->_arrayLength;
    v29 = *MEMORY[0x277CD7350];
    if (self->_useFloatIntermediates)
    {
      v30 = MTLPixelFormatRGBA32Float;
    }

    else
    {
      v30 = MTLPixelFormatRGBA16Float;
    }

    PixelInfo = MPSDevice::GetPixelInfo(*(&self->super.super.isa + v29), v30, MPSImageFeatureChannelFormatNone);
    v32 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x277CD7058], v31, PixelInfo & 0x3FF, width, v125, 0);
    objc_msgSend_setStorageMode_(v32, v33, 2, v34, v35, v36);
    objc_msgSend_setArrayLength_(v32, v37, self->_arrayLength, v38, v39, v40);
    objc_msgSend_setTextureType_(v32, v41, 3, v42, v43, v44);
    v45 = (*(**(&self->super.super.isa + v29) + 40))(*(&self->super.super.isa + v29));
    objc_msgSend_setCpuCacheMode_(v32, v46, v45, v47, v48, v49);
    objc_msgSend_setUsage_(v32, v50, 3, v51, v52, v53);
    if (!v32 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (self->_useFloatIntermediates)
    {
      v54 = MTLPixelFormatR32Float;
    }

    else
    {
      v54 = MTLPixelFormatR16Float;
    }

    v122 = MPSDevice::GetPixelInfo(*(&self->super.super.isa + v29), v54, MPSImageFeatureChannelFormatNone);
    v56 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x277CD7058], v55, v122 & 0x3FF, width, v125, 0);
    objc_msgSend_setStorageMode_(v56, v57, 2, v58, v59, v60);
    objc_msgSend_setArrayLength_(v56, v61, self->_arrayLength, v62, v63, v64);
    objc_msgSend_setTextureType_(v56, v65, 3, v66, v67, v68);
    v69 = (*(**(&self->super.super.isa + v29) + 40))(*(&self->super.super.isa + v29));
    objc_msgSend_setCpuCacheMode_(v56, v70, v69, v71, v72, v73);
    objc_msgSend_setUsage_(v56, v74, 3, v75, v76, v77);
    if (!v56 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    textureArrayCopy = textureArray;
    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v80 = objc_msgSend_countByEnumeratingWithState_objects_count_(destinationTextureArray, v78, &v118, v130, 16, v79);
    if (v80)
    {
      v81 = *v119;
      while (1)
      {
        if (*v119 != v81)
        {
          objc_enumerationMutation(destinationTextureArray);
        }

        guideChannels = self->_guideChannels;
        if (guideChannels == 4)
        {
          v128[0] = MPSAutoCache::GetTempTexture();
          v128[1] = MPSAutoCache::GetTempTexture();
          v86 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v87, v128, 2, v88, v89);
        }

        else
        {
          if (guideChannels != 3)
          {
            if (MTLReportFailureTypeEnabled())
            {
              v112 = self->_guideChannels;
              MTLReportFailure();
            }

            v90 = 0;
            objc_msgSend_addObject_(v27, v95, 0, v96, v97, v98, v112);
            goto LABEL_22;
          }

          TempTexture = MPSAutoCache::GetTempTexture();
          v86 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v83, &TempTexture, 1, v84, v85);
        }

        v90 = v86;
        objc_msgSend_addObject_(v27, v91, v90, v92, v93, v94, v112);
LABEL_22:

        if (!--v80)
        {
          v80 = objc_msgSend_countByEnumeratingWithState_objects_count_(destinationTextureArray, v99, &v118, v130, 16, v100);
          if (!v80)
          {
            break;
          }
        }
      }
    }

    v101 = objc_alloc(MEMORY[0x277CBEA60]);
    textureArray = textureArrayCopy;
    coefficientsTextureArray = objc_msgSend_initWithArray_(v101, v102, v27, v103, v104, v105);

    v117[0] = MEMORY[0x277D85DD0];
    v117[1] = 3221225472;
    v117[2] = sub_239941248;
    v117[3] = &unk_278AC37A8;
    v117[4] = coefficientsTextureArray;
    objc_msgSend_addCompletedHandler_(buffer, v106, v117, v107, v108, v109);
    texture = textureCopy;
    iterations = iterationsCopy;
  }

  objc_msgSend_encodeRegressionToCommandBuffer_sourceTextureArray_guidanceTexture_constraintsTextureArray_numberOfIterations_destinationCoefficientsTextureArray_(self, v15, buffer, array, texture, textureArray, iterations, coefficientsTextureArray);
  objc_msgSend_encodeReconstructionToCommandBuffer_guidanceTexture_constraintsTextureArray_coefficientsTextureArray_destinationTextureArray_(self, v110, buffer, texture, textureArray, coefficientsTextureArray, destinationTextureArray);
  MPSAutoCache::~MPSAutoCache(v127);
  v111 = *MEMORY[0x277D85DE8];
}

- (void)validateCoefficientsTextures:(id)textures
{
  guideChannels = self->_guideChannels;
  if (guideChannels == 4)
  {
    objc_msgSend_count(textures, a2, textures, v3, v4, v5);
    if (objc_msgSend_count(textures, v18, v19, v20, v21, v22) != 2 && MTLReportFailureTypeEnabled())
    {
      goto LABEL_11;
    }
  }

  else if (guideChannels == 3)
  {
    objc_msgSend_count(textures, a2, textures, v3, v4, v5);
    if (objc_msgSend_count(textures, v9, v10, v11, v12, v13) != 1 && MTLReportFailureTypeEnabled())
    {
      goto LABEL_11;
    }
  }

  else if (MTLReportFailureTypeEnabled())
  {
    v247 = self->_guideChannels;
LABEL_11:
    MTLReportFailure();
  }

  v23 = objc_msgSend_objectAtIndexedSubscript_(textures, v14, 0, v15, v16, v17, v247);
  objc_msgSend_textureType(v23, v24, v25, v26, v27, v28);
  v33 = objc_msgSend_objectAtIndexedSubscript_(textures, v29, 0, v30, v31, v32);
  if (objc_msgSend_textureType(v33, v34, v35, v36, v37, v38) != 3 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v43 = objc_msgSend_objectAtIndexedSubscript_(textures, v39, 0, v40, v41, v42);
  objc_msgSend_width(v43, v44, v45, v46, v47, v48);
  v53 = objc_msgSend_objectAtIndexedSubscript_(textures, v49, 0, v50, v51, v52);
  if (objc_msgSend_width(v53, v54, v55, v56, v57, v58) != self->_width && MTLReportFailureTypeEnabled())
  {
    width = self->_width;
    MTLReportFailure();
  }

  v63 = objc_msgSend_objectAtIndexedSubscript_(textures, v59, 0, v60, v61, v62, width);
  objc_msgSend_height(v63, v64, v65, v66, v67, v68);
  v73 = objc_msgSend_objectAtIndexedSubscript_(textures, v69, 0, v70, v71, v72);
  if (objc_msgSend_height(v73, v74, v75, v76, v77, v78) != self->_height && MTLReportFailureTypeEnabled())
  {
    height = self->_height;
    MTLReportFailure();
  }

  v83 = objc_msgSend_objectAtIndexedSubscript_(textures, v79, 0, v80, v81, v82, height);
  objc_msgSend_arrayLength(v83, v84, v85, v86, v87, v88);
  v93 = objc_msgSend_objectAtIndexedSubscript_(textures, v89, 0, v90, v91, v92);
  if (objc_msgSend_arrayLength(v93, v94, v95, v96, v97, v98) != self->_arrayLength && MTLReportFailureTypeEnabled())
  {
    arrayLength = self->_arrayLength;
    MTLReportFailure();
  }

  v103 = objc_msgSend_objectAtIndexedSubscript_(textures, v99, 0, v100, v101, v102, arrayLength);
  if (objc_msgSend_pixelFormat(v103, v104, v105, v106, v107, v108) != 115)
  {
    v113 = objc_msgSend_objectAtIndexedSubscript_(textures, v109, 0, v110, v111, v112);
    objc_msgSend_pixelFormat(v113, v114, v115, v116, v117, v118);
  }

  v119 = objc_msgSend_objectAtIndexedSubscript_(textures, v109, 0, v110, v111, v112);
  if (objc_msgSend_pixelFormat(v119, v120, v121, v122, v123, v124) != 115)
  {
    v129 = objc_msgSend_objectAtIndexedSubscript_(textures, v125, 0, v126, v127, v128);
    if (objc_msgSend_pixelFormat(v129, v130, v131, v132, v133, v134) != 125)
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }
  }

  if (self->_guideChannels == 4)
  {
    v135 = objc_msgSend_objectAtIndexedSubscript_(textures, v125, 1, v126, v127, v128);
    objc_msgSend_textureType(v135, v136, v137, v138, v139, v140);
    v145 = objc_msgSend_objectAtIndexedSubscript_(textures, v141, 1, v142, v143, v144);
    if (objc_msgSend_textureType(v145, v146, v147, v148, v149, v150) != 3 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v155 = objc_msgSend_objectAtIndexedSubscript_(textures, v151, 1, v152, v153, v154);
    objc_msgSend_width(v155, v156, v157, v158, v159, v160);
    v165 = objc_msgSend_objectAtIndexedSubscript_(textures, v161, 1, v162, v163, v164);
    if (objc_msgSend_width(v165, v166, v167, v168, v169, v170) != self->_width && MTLReportFailureTypeEnabled())
    {
      v251 = self->_width;
      MTLReportFailure();
    }

    v175 = objc_msgSend_objectAtIndexedSubscript_(textures, v171, 1, v172, v173, v174, v251);
    objc_msgSend_height(v175, v176, v177, v178, v179, v180);
    v185 = objc_msgSend_objectAtIndexedSubscript_(textures, v181, 1, v182, v183, v184);
    if (objc_msgSend_height(v185, v186, v187, v188, v189, v190) != self->_height && MTLReportFailureTypeEnabled())
    {
      v252 = self->_height;
      MTLReportFailure();
    }

    v195 = objc_msgSend_objectAtIndexedSubscript_(textures, v191, 1, v192, v193, v194, v252);
    objc_msgSend_arrayLength(v195, v196, v197, v198, v199, v200);
    v205 = objc_msgSend_objectAtIndexedSubscript_(textures, v201, 1, v202, v203, v204);
    if (objc_msgSend_arrayLength(v205, v206, v207, v208, v209, v210) != self->_arrayLength && MTLReportFailureTypeEnabled())
    {
      v253 = self->_arrayLength;
      MTLReportFailure();
    }

    v215 = objc_msgSend_objectAtIndexedSubscript_(textures, v211, 1, v212, v213, v214, v253);
    if (objc_msgSend_pixelFormat(v215, v216, v217, v218, v219, v220) != 25)
    {
      v225 = objc_msgSend_objectAtIndexedSubscript_(textures, v221, 1, v222, v223, v224);
      objc_msgSend_pixelFormat(v225, v226, v227, v228, v229, v230);
    }

    v231 = objc_msgSend_objectAtIndexedSubscript_(textures, v221, 1, v222, v223, v224);
    if (objc_msgSend_pixelFormat(v231, v232, v233, v234, v235, v236) != 25)
    {
      v241 = objc_msgSend_objectAtIndexedSubscript_(textures, v237, 1, v238, v239, v240);
      if (objc_msgSend_pixelFormat(v241, v242, v243, v244, v245, v246) != 55)
      {
        if (MTLReportFailureTypeEnabled())
        {

          MTLReportFailure();
        }
      }
    }
  }
}

- (id)newTemporaryIntermediate:(id)intermediate texture:(id)texture
{
  MEMORY[0x23EE7BAC0](v64, intermediate, 0);
  v61 = objc_msgSend_width(texture, v6, v7, v8, v9, v10);
  v62 = objc_msgSend_height(texture, v11, v12, v13, v14, v15);
  v63 = objc_msgSend_arrayLength(texture, v16, v17, v18, v19, v20);
  v21 = *MEMORY[0x277CD7350];
  v22 = *(&self->super.super.isa + v21);
  v28 = objc_msgSend_pixelFormat(texture, v23, v24, v25, v26, v27);
  PixelInfo = MPSDevice::GetPixelInfo(v22, v28, MPSImageFeatureChannelFormatNone);
  v30 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x277CD7058], v29, PixelInfo & 0x3FF, v61, v62, 0);
  objc_msgSend_setStorageMode_(v30, v31, 2, v32, v33, v34);
  objc_msgSend_setArrayLength_(v30, v35, v63, v36, v37, v38);
  v44 = objc_msgSend_textureType(texture, v39, v40, v41, v42, v43);
  objc_msgSend_setTextureType_(v30, v45, v44, v46, v47, v48);
  v49 = (*(**(&self->super.super.isa + v21) + 40))(*(&self->super.super.isa + v21));
  objc_msgSend_setCpuCacheMode_(v30, v50, v49, v51, v52, v53);
  objc_msgSend_setUsage_(v30, v54, 3, v55, v56, v57);
  if (!v30 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v58 = MPSAutoCache::GetTempTexture();
  MPSAutoCache::~MPSAutoCache(v64);
  return v58;
}

- (void)encodeShiftOn:(id)on textureArray:(id)array by:(unint64_t)by
{
  if (by && objc_msgSend_arrayLength(array, a2, on, array, by, v5) > by)
  {
    v14 = objc_msgSend_blitCommandEncoder(on, v9, v10, v11, v12, v13);
    v20 = objc_msgSend_width(array, v15, v16, v17, v18, v19);
    v26 = objc_msgSend_height(array, v21, v22, v23, v24, v25);
    v32 = objc_msgSend_depth(array, v27, v28, v29, v30, v31);
    if (objc_msgSend_arrayLength(array, v33, v34, v35, v36, v37) != by)
    {
      v43 = 0;
      do
      {
        memset(v51, 0, sizeof(v51));
        v50[0] = v20;
        v50[1] = v26;
        v50[2] = v32;
        memset(v49, 0, sizeof(v49));
        objc_msgSend_copyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin_(v14, v38, array, by + v43, 0, v51, v50, array, v43, 0, v49);
        ++v43;
      }

      while (v43 < objc_msgSend_arrayLength(array, v44, v45, v46, v47, v48) - by);
    }

    objc_msgSend_endEncoding(v14, v38, v39, v40, v41, v42);
  }
}

- (void)encodeDownsamplingOn:(id)on inputTexture:(id)texture outputTexture:(id)outputTexture
{
  if (objc_msgSend_textureType(texture, a2, on, texture, outputTexture, v5) != 2)
  {
    objc_msgSend_textureType(texture, v10, v11, v12, v13, v14);
  }

  if (objc_msgSend_textureType(texture, v10, v11, v12, v13, v14) != 2 && objc_msgSend_textureType(texture, v15, v16, v17, v18, v19) != 3 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  objc_msgSend_textureType(outputTexture, v15, v16, v17, v18, v19);
  if (objc_msgSend_textureType(outputTexture, v20, v21, v22, v23, v24) != 3 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v30 = objc_msgSend_textureType(texture, v25, v26, v27, v28, v29);
  v31 = *MEMORY[0x277CD7370];
  v32 = *(&self->super.super.isa + v31);
  if (v30 == 3 || v30 == 2)
  {
    ComputeState = MPSLibrary::GetComputeState();
  }

  else
  {
    ComputeState = MPSLibrary::GetComputeState();
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  if (!ComputeState && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v34 = objc_alloc(MEMORY[0x277CD7210]);
  v42 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v34, v35, on, 0, v36, v37);
  v121[1] = v42;
  v121[2] = self;
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
  {
    v43 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
    if (v43 || (v44 = objc_opt_class(), v45 = NSStringFromClass(v44), objc_msgSend_setLabel_(self, v46, v45, v47, v48, v49), (v43 = v45) != 0))
    {
      objc_msgSend_setLabel_(v42, v38, v43, v39, v40, v41);
    }
  }

  objc_msgSend_setComputePipelineState_(v42, v38, ComputeState, v39, v40, v41);
  objc_msgSend_setTexture_atIndex_(v42, v50, texture, 0, v51, v52);
  objc_msgSend_setTexture_atIndex_(v42, v53, outputTexture, 1, v54, v55);
  v61 = objc_msgSend_width(texture, v56, v57, v58, v59, v60);
  v67 = objc_msgSend_width(outputTexture, v62, v63, v64, v65, v66);
  v73 = objc_msgSend_height(texture, v68, v69, v70, v71, v72);
  v79 = objc_msgSend_height(outputTexture, v74, v75, v76, v77, v78);
  *&v80 = v61 / v67;
  *(&v80 + 1) = v73 / v79;
  v121[0] = v80;
  objc_msgSend_setBytes_length_atIndex_(v42, v81, v121, 8, 0, v82);
  v88 = objc_msgSend_threadExecutionWidth(ComputeState, v83, v84, v85, v86, v87);
  v94 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v89, v90, v91, v92, v93);
  v120[0] = (v88 + objc_msgSend_width(outputTexture, v95, v96, v97, v98, v99) - 1) / v88;
  v120[1] = (v94 / v88 + objc_msgSend_height(outputTexture, v100, v101, v102, v103, v104) - 1) / (v94 / v88);
  v120[2] = objc_msgSend_arrayLength(outputTexture, v105, v106, v107, v108, v109);
  v119[0] = v88;
  v119[1] = v94 / v88;
  v119[2] = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v42, v110, v120, v119, v111, v112);
  v113 = *(&self->super.super.isa + v31);
  MPSLibrary::ReleaseComputeState();
  objc_msgSend_endEncoding(v42, v114, v115, v116, v117, v118);
}

@end