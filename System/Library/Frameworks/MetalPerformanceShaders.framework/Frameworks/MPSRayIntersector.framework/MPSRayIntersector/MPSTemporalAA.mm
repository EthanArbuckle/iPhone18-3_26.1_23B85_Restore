@interface MPSTemporalAA
- (MPSTemporalAA)copyWithZone:(NSZone *)zone device:(id)device;
- (MPSTemporalAA)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSTemporalAA)initWithDevice:(id)device;
- (MPSTemporalAAFunctionHash)getHashForKernelID:(unint64_t)d haveMotionVectorTexture:(BOOL)texture haveDepthTexture:(BOOL)depthTexture;
- (id)description;
- (unint64_t)channelCount:(id)count;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)commandBuffer sourceTexture:(id)sourceTexture previousTexture:(id)previousTexture destinationTexture:(id)destinationTexture motionVectorTexture:(id)motionVectorTexture depthTexture:(id)depthTexture;
- (void)encodeWithCoder:(NSCoder *)coder;
- (void)setBlendFactor:(float)blendFactor;
@end

@implementation MPSTemporalAA

- (void)setBlendFactor:(float)blendFactor
{
  if (blendFactor < 0.0 || blendFactor > 1.0)
  {
    sub_239E21F18();
  }

  self->_blendFactor = blendFactor;
}

- (MPSTemporalAA)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSTemporalAA;
  result = [(MPSKernel *)&v4 initWithDevice:device];
  if (result)
  {
    result->_blendFactor = 0.1;
  }

  return result;
}

- (MPSTemporalAA)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v13.receiver = self;
  v13.super_class = MPSTemporalAA;
  v5 = [(MPSKernel *)&v13 initWithCoder:aDecoder device:device];
  v9 = v5;
  if (v5)
  {
    if (*(&v5->super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
    {
      objc_msgSend_decodeFloatForKey_(aDecoder, v6, @"MPSTemporalAAKeyBlendFactor", v7, v8);
      v9->_blendFactor = v10;
    }

    else
    {
      if (MTLReportFailureTypeEnabled())
      {
        v11 = objc_opt_class();
        NSStringFromClass(v11);
        MTLReportFailure();
      }

      return 0;
    }
  }

  return v9;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MPSTemporalAA;
  [(MPSKernel *)&v2 dealloc];
}

- (void)encodeWithCoder:(NSCoder *)coder
{
  *(&self->super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v9.receiver = self;
  v9.super_class = MPSTemporalAA;
  [(MPSKernel *)&v9 encodeWithCoder:?];
  *&v5 = self->_blendFactor;
  objc_msgSend_encodeFloat_forKey_(coder, v6, @"MPSTemporalAAKeyBlendFactor", v7, v8, v5);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = MPSTemporalAA;
  v4 = [(MPSTemporalAA *)&v9 description];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tblend factor: %f", v6, v7, v4, self->_blendFactor);
}

- (MPSTemporalAA)copyWithZone:(NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSTemporalAA;
  result = [(MPSKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    result->_blendFactor = self->_blendFactor;
  }

  return result;
}

- (MPSTemporalAAFunctionHash)getHashForKernelID:(unint64_t)d haveMotionVectorTexture:(BOOL)texture haveDepthTexture:(BOOL)depthTexture
{
  v5 = 2;
  if (!texture)
  {
    v5 = 0;
  }

  v6 = v5 & 0xFFFFFFFFFFFFFFFELL | d & 1;
  v7 = 4;
  if (!depthTexture)
  {
    v7 = 0;
  }

  return (v6 | v7);
}

- (unint64_t)channelCount:(id)count
{
  v5 = *(&self->super.super.isa + *MEMORY[0x277CD7350]);
  v6 = objc_msgSend_pixelFormat(count, a2, count, v3, v4);
  PixelInfo = MPSDevice::GetPixelInfo(v5, v6, MPSImageFeatureChannelFormatNone);
  if ((PixelInfo & 0xE000000) != 0)
  {
    return HIBYTE(PixelInfo) & 0xF;
  }

  else
  {
    return 1;
  }
}

- (void)encodeToCommandBuffer:(id)commandBuffer sourceTexture:(id)sourceTexture previousTexture:(id)previousTexture destinationTexture:(id)destinationTexture motionVectorTexture:(id)motionVectorTexture depthTexture:(id)depthTexture
{
  if (*(&self->super.super.isa + *MEMORY[0x277CD7378]))
  {
    goto LABEL_9;
  }

  if (commandBuffer)
  {
    if (sourceTexture)
    {
      goto LABEL_4;
    }
  }

  else
  {
    sub_239E21FD8();
    if (sourceTexture)
    {
LABEL_4:
      if (previousTexture)
      {
        goto LABEL_5;
      }

      goto LABEL_21;
    }
  }

  sub_239E22028();
  if (previousTexture)
  {
LABEL_5:
    if (destinationTexture)
    {
      goto LABEL_6;
    }

LABEL_22:
    sub_239E220C8();
    if (!motionVectorTexture)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

LABEL_21:
  sub_239E22078();
  if (!destinationTexture)
  {
    goto LABEL_22;
  }

LABEL_6:
  if (!motionVectorTexture)
  {
    goto LABEL_9;
  }

LABEL_7:
  objc_msgSend_channelCount_(self, a2, motionVectorTexture, sourceTexture, previousTexture);
  if (objc_msgSend_channelCount_(self, v15, motionVectorTexture, v16, v17) <= 1)
  {
    sub_239E22118(self, motionVectorTexture);
  }

LABEL_9:
  if (objc_msgSend_retainedReferences(commandBuffer, a2, commandBuffer, sourceTexture, previousTexture))
  {
    v19 = 0;
  }

  else
  {
    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  haveDepthTexture = objc_msgSend_getPipelineForFunctionName_kernelID_haveMotionVectorTexture_haveDepthTexture_(self, v18, @"TAAKernel", 0, motionVectorTexture != 0, depthTexture != 0);
  v77 = commandBuffer;
  v25 = objc_msgSend_computeCommandEncoder(commandBuffer, v21, v22, v23, v24);
  objc_msgSend_setLabel_(v25, v26, @"MPSTemporalAA", v27, v28);
  objc_msgSend_setComputePipelineState_(v25, v29, haveDepthTexture, v30, v31);
  objc_msgSend_params(self, v32, v33, v34, v35);
  v82 = v36;
  objc_msgSend_setBytes_length_atIndex_(v25, v37, &v82, 4, 0);
  objc_msgSend_setTexture_atIndex_(v25, v38, previousTexture, 0, v39);
  objc_msgSend_setTexture_atIndex_(v25, v40, destinationTexture, 1, v41);
  objc_msgSend_setTexture_atIndex_(v25, v42, sourceTexture, 2, v43);
  objc_msgSend_setTexture_atIndex_(v25, v44, motionVectorTexture, 3, v45);
  objc_msgSend_setTexture_atIndex_(v25, v46, depthTexture, 4, v47);
  v81[0] = (objc_msgSend_width(destinationTexture, v48, v49, v50, v51) + 7) >> 3;
  v81[1] = (objc_msgSend_height(destinationTexture, v52, v53, v54, v55) + 7) >> 3;
  v81[2] = 1;
  v79 = vdupq_n_s64(8uLL);
  v80 = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v25, v56, v81, &v79, v57);
  objc_msgSend_endEncoding(v25, v58, v59, v60, v61);
  if (v19)
  {
    objc_msgSend_addObject_(v19, v62, haveDepthTexture, v63, v64);
    objc_msgSend_addObject_(v19, v65, previousTexture, v66, v67);
    objc_msgSend_addObject_(v19, v68, sourceTexture, v69, v70);
    objc_msgSend_addObject_(v19, v71, destinationTexture, v72, v73);
    if (motionVectorTexture)
    {
      objc_msgSend_addObject_(v19, v74, motionVectorTexture, v75, v76);
    }

    if (depthTexture)
    {
      objc_msgSend_addObject_(v19, v74, depthTexture, v75, v76);
    }

    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = sub_239DF2468;
    v78[3] = &unk_278B3B370;
    v78[4] = v19;
    objc_msgSend_addCompletedHandler_(v77, v74, v78, v75, v76);
  }
}

@end