@interface MPSImageLaplacianPyramid
- (BOOL)isValidDstPixelFormat:(unint64_t)format srcPixelFormat:(unint64_t)pixelFormat;
- (MPSImageLaplacianPyramid)initWithCoder:(id)coder device:(id)device;
- (MPSImageLaplacianPyramid)initWithDevice:(id)device kernelWidth:(unint64_t)width kernelHeight:(unint64_t)height weights:(const float *)weights;
- (MPSRegion)sourceRegionForDestinationSize:(SEL)size;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (void)cleanUpAll;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)zeroInitAll;
@end

@implementation MPSImageLaplacianPyramid

- (void)zeroInitAll
{
  *&self->_derivedState.padHeight = 0u;
  *&self->_derivedState.h_WeightsRawFull = 0u;
  *&self->_derivedState.d_WeightsRawFull = 0u;
  LODWORD(self[1].super.super.super.super.isa) = 2113961472;
  v2 = vneg_f32(0x3F0000003FLL);
  self->_derivedState.linearScaleFull = v2;
  self->_state.filterWidth = 0;
  self->_state.weights = 0;
  self->_state.filterHeight = 0;
  self->_state.isPyramidAdd = 0;
  *&self->_state.laplacianBias = v2;
  self->_autotuningState.enabled = 0;
  self->_autotuningState.copyConfigs = 0;
  self->_autotuningState.upsampleConfigs = 0;
  self->_autotuningState.copyConfigID = -1;
  self->_autotuningState.upsampleConfigID = -1;
}

- (void)cleanUpAll
{
  selfCopy = self;
  p_derivedState = &self->_derivedState;

  selfCopy = (selfCopy + 264);
  verbosityLevel = selfCopy->super.super.super._verbosityLevel;
}

- (BOOL)isValidDstPixelFormat:(unint64_t)format srcPixelFormat:(unint64_t)pixelFormat
{
  v6 = *MEMORY[0x277CD7350];
  PixelInfo = MPSDevice::GetPixelInfo(*(&self->super.super.super.super.isa + v6), format, MPSImageFeatureChannelFormatNone);
  v8 = MPSDevice::GetPixelInfo(*(&self->super.super.super.super.isa + v6), pixelFormat, MPSImageFeatureChannelFormatNone);
  v9 = BYTE3(PixelInfo) & 0xF;
  if ((PixelInfo & 0xE000000) == 0)
  {
    v9 = 1;
  }

  if ((v8 & 0xE000000) != 0)
  {
    v10 = BYTE3(v8) & 0xF;
  }

  else
  {
    v10 = 1;
  }

  return ((v8 ^ PixelInfo) & 0xFF00000000) == 0 && v9 == v10;
}

- (MPSImageLaplacianPyramid)initWithDevice:(id)device kernelWidth:(unint64_t)width kernelHeight:(unint64_t)height weights:(const float *)weights
{
  v49.receiver = self;
  v49.super_class = MPSImageLaplacianPyramid;
  v10 = [MPSImagePyramid initWithDevice:sel_initWithDevice_kernelWidth_kernelHeight_weights_ kernelWidth:? kernelHeight:? weights:?];
  if (v10)
  {
    v47 = 0;
    v48 = 0;
    if (!sub_2399425CC(&v48, &v47, v10 + 264, height, width))
    {
      goto LABEL_15;
    }

    *(v10 + 38) = height;
    *(v10 + 39) = width;
    v10[328] = 0;
    *(v10 + 332) = 0x3F80000000000000;
    v11 = objc_alloc(MEMORY[0x277CBEA90]);
    v15 = objc_msgSend_initWithBytes_length_(v11, v12, weights, 4 * width * height, v13, v14);
    *(v10 + 40) = v15;
    if (!v15)
    {
      goto LABEL_15;
    }

    v17 = v47;
    v16 = v48;
    v18 = v47 * v48;
    v19 = 4 * v47 * v48;
    v20 = objc_alloc(MEMORY[0x277CBEB28]);
    v25 = objc_msgSend_initWithLength_(v20, v21, v19, v22, v23, v24);
    *(v10 + 45) = v25;
    if (!v25)
    {
      goto LABEL_15;
    }

    v26 = 2 * v18;
    v27 = objc_alloc(MEMORY[0x277CBEB28]);
    v32 = objc_msgSend_initWithLength_(v27, v28, v26, v29, v30, v31);
    *(v10 + 46) = v32;
    if (!v32)
    {
      goto LABEL_15;
    }

    v36 = objc_msgSend_newBufferWithLength_options_(device, v33, v19, 0, v34, v35);
    *(v10 + 47) = v36;
    if (v36 && (v40 = objc_msgSend_newBufferWithLength_options_(device, v37, v26, 0, v38, v39), (*(v10 + 48) = v40) != 0))
    {
      *(v10 + 43) = v16;
      *(v10 + 44) = v17;
      *(v10 + 22) = sub_239942D58;
      sub_23994204C(v10 + 86, v10 + 76, v41, v42, v43, v44);
    }

    else
    {
LABEL_15:
      if (MTLReportFailureTypeEnabled())
      {
        v45 = objc_opt_class();
        NSStringFromClass(v45);
        MTLReportFailure();
      }

      return 0;
    }
  }

  return v10;
}

- (MPSImageLaplacianPyramid)initWithCoder:(id)coder device:(id)device
{
  v119.receiver = self;
  v119.super_class = MPSImageLaplacianPyramid;
  v6 = [MPSImagePyramid initWithCoder:sel_initWithCoder_device_ device:?];
  v12 = v6;
  if (v6)
  {
    v117 = 0;
    v118 = 0;
    v13 = objc_msgSend_kernelHeight(v6, v7, v8, v9, v10, v11);
    v19 = objc_msgSend_kernelWidth(v12, v14, v15, v16, v17, v18);
    if (sub_2399425CC(&v118, &v117, &v12->_autotuningState.enabled, v13, v19))
    {
      v25 = objc_msgSend_kernelHeight(v12, v20, v21, v22, v23, v24);
      v31 = objc_msgSend_kernelWidth(v12, v26, v27, v28, v29, v30);
      v32 = objc_alloc(MEMORY[0x277CBEB28]);
      v33 = v31 * v25;
      v38 = objc_msgSend_initWithLength_(v32, v34, 4 * v31 * v25, v35, v36, v37);
      p_state = &v12->_state;
      v12->_state.weights = v38;
      if (v38)
      {
        if (v33)
        {
          v43 = v38;
          v44 = 0;
          while (1)
          {
            v45 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v39, @"MPSImageLaplacianPyramid.weights%lu", v40, v41, v42, v44);
            objc_msgSend_decodeFloatForKey_(coder, v46, v45, v47, v48, v49);
            *(objc_msgSend_mutableBytes(v43, v50, v51, v52, v53, v54) + 4 * v44) = v55;
            if (objc_msgSend_error(coder, v56, v57, v58, v59, v60))
            {
              break;
            }

            if (v33 == ++v44)
            {
              goto LABEL_8;
            }
          }
        }

        else
        {
LABEL_8:
          *p_state = v25;
          v12->_state.filterWidth = v31;
          v12->_state.isPyramidAdd = objc_msgSend_decodeBoolForKey_(coder, v39, @"MPSImageLaplacianPyramid.isPyramidAdd", v40, v41, v42);
          if (!objc_msgSend_error(coder, v61, v62, v63, v64, v65))
          {
            objc_msgSend_decodeFloatForKey_(coder, v66, @"MPSImageLaplacianPyramid.laplacianBias", v67, v68, v69);
            v12->_state.laplacianBias = v70;
            if (!objc_msgSend_error(coder, v71, v72, v73, v74, v75))
            {
              objc_msgSend_decodeFloatForKey_(coder, v76, @"MPSImageLaplacianPyramid.laplacianScale", v77, v78, v79);
              v12->_state.laplacianScale = v80;
              if (!objc_msgSend_error(coder, v81, v82, v83, v84, v85))
              {
                v89 = v117;
                v88 = v118;
                v90 = v117 * v118;
                v91 = 4 * v117 * v118;
                v92 = objc_alloc(MEMORY[0x277CBEB28]);
                v97 = objc_msgSend_initWithLength_(v92, v93, v91, v94, v95, v96);
                v12->_derivedState.h_WeightsRawFull = v97;
                if (v97)
                {
                  v98 = objc_alloc(MEMORY[0x277CBEB28]);
                  v103 = objc_msgSend_initWithLength_(v98, v99, 2 * v90, v100, v101, v102);
                  v12->_derivedState.h_WeightsRawHalf = v103;
                  if (v103)
                  {
                    v107 = objc_msgSend_newBufferWithLength_options_(device, v104, v91, 0, v105, v106);
                    v12->_derivedState.d_WeightsRawFull = v107;
                    if (v107)
                    {
                      v111 = objc_msgSend_newBufferWithLength_options_(device, v108, 2 * v90, 0, v109, v110);
                      v12->_derivedState.d_WeightsRawHalf = v111;
                      if (v111)
                      {
                        v12->_derivedState.padHeight = v88;
                        v12->_derivedState.padWidth = v89;
                        v12->super.super._encode = sub_239942D58;
                        sub_23994204C(&v12->_derivedState, p_state, v112, v113, v114, v115);
                        return v12;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    if (MTLReportFailureTypeEnabled())
    {
      v86 = objc_opt_class();
      NSStringFromClass(v86);
      MTLReportFailure();
    }

    return 0;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v56.receiver = self;
  v56.super_class = MPSImageLaplacianPyramid;
  v11 = [(MPSImagePyramid *)&v56 copyWithZone:zone device:?];
  if (v11)
  {
    v54 = 0;
    v55 = 0;
    v12 = objc_msgSend_kernelHeight(self, v6, v7, v8, v9, v10);
    v18 = objc_msgSend_kernelWidth(self, v13, v14, v15, v16, v17);
    if (!sub_2399425CC(&v55, &v54, v11 + 264, v12, v18))
    {
      goto LABEL_14;
    }

    v19 = *&self->_state.laplacianScale;
    v20 = *&self->_state.weights;
    *(v11 + 19) = *&self->_state.filterHeight;
    *(v11 + 20) = v20;
    *(v11 + 42) = v19;
    v21 = self->_state.weights;
    v22 = v11 + 86;
    v24 = v54;
    v23 = v55;
    v25 = v54 * v55;
    v26 = 4 * v54 * v55;
    v27 = objc_alloc(MEMORY[0x277CBEB28]);
    v32 = objc_msgSend_initWithLength_(v27, v28, v26, v29, v30, v31);
    *(v11 + 45) = v32;
    if (!v32)
    {
      goto LABEL_14;
    }

    v33 = 2 * v25;
    v34 = objc_alloc(MEMORY[0x277CBEB28]);
    v39 = objc_msgSend_initWithLength_(v34, v35, v33, v36, v37, v38);
    *(v11 + 46) = v39;
    if (!v39)
    {
      goto LABEL_14;
    }

    v43 = objc_msgSend_newBufferWithLength_options_(device, v40, v26, 0, v41, v42);
    *(v11 + 47) = v43;
    if (v43 && (v47 = objc_msgSend_newBufferWithLength_options_(device, v44, v33, 0, v45, v46), (*(v11 + 48) = v47) != 0))
    {
      *v22 = v23;
      *(v11 + 44) = v24;
      sub_23994204C(v22, &self->_state, v48, v49, v50, v51);
      *(v11 + 22) = sub_239942D58;
    }

    else
    {
LABEL_14:
      if (MTLReportFailureTypeEnabled())
      {
        v52 = objc_opt_class();
        NSStringFromClass(v52);
        MTLReportFailure();
      }

      return 0;
    }
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  v31.receiver = self;
  v31.super_class = MPSImageLaplacianPyramid;
  [(MPSImagePyramid *)&v31 encodeWithCoder:?];
  if (self->_state.filterWidth * self->_state.filterHeight)
  {
    v9 = 0;
    do
    {
      v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"MPSImageLaplacianPyramid.weights%lu", v6, v7, v8, v9);
      LODWORD(v16) = *(objc_msgSend_bytes(self->_state.weights, v11, v12, v13, v14, v15) + 4 * v9);
      objc_msgSend_encodeFloat_forKey_(coder, v17, v10, v18, v19, v20, v16);
      ++v9;
    }

    while (v9 < self->_state.filterWidth * self->_state.filterHeight);
  }

  objc_msgSend_encodeBool_forKey_(coder, v5, self->_state.isPyramidAdd, @"MPSImageLaplacianPyramid.isPyramidAdd", v7, v8);
  *&v21 = self->_state.laplacianBias;
  objc_msgSend_encodeFloat_forKey_(coder, v22, @"MPSImageLaplacianPyramid.laplacianBias", v23, v24, v25, v21);
  *&v26 = self->_state.laplacianScale;
  objc_msgSend_encodeFloat_forKey_(coder, v27, @"MPSImageLaplacianPyramid.laplacianScale", v28, v29, v30, v26);
}

- (void)dealloc
{
  objc_msgSend_cleanUpAll(self, a2, v2, v3, v4, v5);
  objc_msgSend_zeroInitAll(self, v7, v8, v9, v10, v11);
  v12.receiver = self;
  v12.super_class = MPSImageLaplacianPyramid;
  [(MPSImagePyramid *)&v12 dealloc];
}

- (MPSRegion)sourceRegionForDestinationSize:(SEL)size
{
  *&retstr->origin.z = 0u;
  *&retstr->size.height = 0u;
  *&retstr->origin.x = 0u;
  v12 = *a4;
  v11.receiver = self;
  v11.super_class = MPSImageLaplacianPyramid;
  [(MPSRegion *)&v11 sourceRegionForDestinationSize:&v12];
  v10.receiver = self;
  v10.super_class = MPSImageLaplacianPyramid;
  retstr->origin.y = retstr->origin.y - ([(MPSRegion *)&v10 kernelHeight]>> 1);
  v9.receiver = self;
  v9.super_class = MPSImageLaplacianPyramid;
  retstr->origin.x = retstr->origin.x - ([(MPSRegion *)&v9 kernelWidth]>> 1);
  v8.receiver = self;
  v8.super_class = MPSImageLaplacianPyramid;
  retstr->size.height = retstr->size.height + ([(MPSRegion *)&v8 kernelHeight]- 1);
  v7.receiver = self;
  v7.super_class = MPSImageLaplacianPyramid;
  result = [(MPSRegion *)&v7 kernelWidth];
  retstr->size.width = retstr->size.width + (&result[-1].size.depth + 7);
  return result;
}

@end