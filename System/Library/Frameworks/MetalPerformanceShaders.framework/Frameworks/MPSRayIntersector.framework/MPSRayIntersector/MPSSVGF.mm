@interface MPSSVGF
- (MPSSVGF)copyWithZone:(NSZone *)zone device:(id)device;
- (MPSSVGF)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSSVGF)initWithDevice:(id)device;
- (MPSSVGFFunctionHash)getHashForKernelID:(SEL)d haveMotionVectorTexture:(unint64_t)texture haveDepthNormalTexture:(BOOL)normalTexture haveSecondTexture:(BOOL)secondTexture;
- (MPSSVGFParams)params;
- (id)description;
- (unint64_t)channelCount:(id)count;
- (void)dealloc;
- (void)encodeBilateralFilterToCommandBuffer:(id)commandBuffer stepDistance:(NSUInteger)stepDistance sourceTexture:(id)sourceTexture destinationTexture:(id)destinationTexture sourceTexture2:(id)sourceTexture2 destinationTexture2:(id)destinationTexture2 depthNormalTexture:(id)depthNormalTexture;
- (void)encodeReprojectionToCommandBuffer:(id)commandBuffer sourceTexture:(id)sourceTexture previousTexture:(id)previousTexture destinationTexture:(id)destinationTexture previousLuminanceMomentsTexture:(id)previousLuminanceMomentsTexture destinationLuminanceMomentsTexture:(id)destinationLuminanceMomentsTexture sourceTexture2:(id)sourceTexture2 previousTexture2:(id)previousTexture2 destinationTexture2:(id)destinationTexture2 previousLuminanceMomentsTexture2:(id)previousLuminanceMomentsTexture2 destinationLuminanceMomentsTexture2:(id)destinationLuminanceMomentsTexture2 previousFrameCountTexture:(id)previousFrameCountTexture destinationFrameCountTexture:(id)destinationFrameCountTexture motionVectorTexture:(id)motionVectorTexture depthNormalTexture:(id)depthNormalTexture previousDepthNormalTexture:(id)previousDepthNormalTexture;
- (void)encodeVarianceEstimationToCommandBuffer:(id)commandBuffer sourceTexture:(id)sourceTexture luminanceMomentsTexture:(id)luminanceMomentsTexture destinationTexture:(id)destinationTexture sourceTexture2:(id)sourceTexture2 luminanceMomentsTexture2:(id)luminanceMomentsTexture2 destinationTexture2:(id)destinationTexture2 frameCountTexture:(id)frameCountTexture depthNormalTexture:(id)depthNormalTexture;
- (void)encodeWithCoder:(NSCoder *)coder;
- (void)setBilateralFilterSigma:(float)bilateralFilterSigma;
- (void)setChannelCount2:(NSUInteger)channelCount2;
- (void)setChannelCount:(NSUInteger)channelCount;
- (void)setDepthWeight:(float)depthWeight;
- (void)setLuminanceWeight:(float)luminanceWeight;
- (void)setNormalWeight:(float)normalWeight;
- (void)setReprojectionThreshold:(float)reprojectionThreshold;
- (void)setTemporalReprojectionBlendFactor:(float)temporalReprojectionBlendFactor;
- (void)setTemporalWeighting:(MPSTemporalWeighting)temporalWeighting;
- (void)setVarianceEstimationSigma:(float)varianceEstimationSigma;
- (void)setVariancePrefilterSigma:(float)variancePrefilterSigma;
@end

@implementation MPSSVGF

- (void)setVariancePrefilterSigma:(float)variancePrefilterSigma
{
  if (variancePrefilterSigma <= 0.0)
  {
    sub_239E207EC();
  }

  self->_variancePrefilterSigma = variancePrefilterSigma;
}

- (void)setBilateralFilterSigma:(float)bilateralFilterSigma
{
  if (bilateralFilterSigma <= 0.0)
  {
    sub_239E20838();
  }

  self->_bilateralFilterSigma = bilateralFilterSigma;
}

- (void)setTemporalWeighting:(MPSTemporalWeighting)temporalWeighting
{
  if (temporalWeighting >= 2)
  {
    sub_239E20884();
  }

  self->_temporalWeighting = temporalWeighting;
}

- (void)setTemporalReprojectionBlendFactor:(float)temporalReprojectionBlendFactor
{
  if (temporalReprojectionBlendFactor < 0.0 || temporalReprojectionBlendFactor > 1.0)
  {
    sub_239E208D4();
  }

  self->_temporalReprojectionBlendFactor = temporalReprojectionBlendFactor;
}

- (void)setDepthWeight:(float)depthWeight
{
  if (depthWeight <= 0.0)
  {
    sub_239E20920();
  }

  self->_depthWeight = depthWeight;
}

- (void)setNormalWeight:(float)normalWeight
{
  if (normalWeight < 0.0)
  {
    sub_239E2096C();
  }

  self->_normalWeight = normalWeight;
}

- (void)setLuminanceWeight:(float)luminanceWeight
{
  if (luminanceWeight < 0.0)
  {
    sub_239E209B8();
  }

  self->_luminanceWeight = luminanceWeight;
}

- (void)setReprojectionThreshold:(float)reprojectionThreshold
{
  if (reprojectionThreshold < 0.0)
  {
    sub_239E20A04();
  }

  self->_reprojectionThreshold = reprojectionThreshold;
}

- (void)setVarianceEstimationSigma:(float)varianceEstimationSigma
{
  if (varianceEstimationSigma <= 0.0)
  {
    sub_239E20A50();
  }

  self->_varianceEstimationSigma = varianceEstimationSigma;
}

- (void)setChannelCount:(NSUInteger)channelCount
{
  if (channelCount - 1 >= 3)
  {
    sub_239E20A9C();
  }

  self->_channelCount = channelCount;
}

- (void)setChannelCount2:(NSUInteger)channelCount2
{
  if (channelCount2 - 1 >= 3)
  {
    sub_239E20AE8();
  }

  self->_channelCount2 = channelCount2;
}

- (MPSSVGF)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSSVGF;
  result = [(MPSKernel *)&v4 initWithDevice:device];
  if (result)
  {
    result->_temporalWeighting = 0;
    result->_temporalReprojectionBlendFactor = 0.2;
    result->_bilateralFilterSigma = 1.2;
    result->_depthWeight = 1.0;
    result->_normalWeight = 128.0;
    result->_luminanceWeight = 4.0;
    result->_variancePrefilterSigma = 1.33;
    result->_reprojectionThreshold = 0.01;
    result->_varianceEstimationSigma = 2.0;
    result->_minimumFramesForVarianceEstimation = 4;
    result->_varianceEstimationRadius = 3;
    result->_variancePrefilterRadius = 1;
    result->_bilateralFilterRadius = 2;
    result->_channelCount = 3;
    result->_channelCount2 = 3;
  }

  return result;
}

- (MPSSVGF)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v62.receiver = self;
  v62.super_class = MPSSVGF;
  v5 = [(MPSKernel *)&v62 initWithCoder:aDecoder device:device];
  v9 = v5;
  if (v5)
  {
    if (*(&v5->super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
    {
      v5->_temporalWeighting = objc_msgSend_decodeInt64ForKey_(aDecoder, v6, @"MPSSVGFKeyTemporalWeighting", v7, v8);
      objc_msgSend_decodeFloatForKey_(aDecoder, v10, @"MPSSVGFKeyTemporalReprojectionBlendFactor", v11, v12);
      v9->_temporalReprojectionBlendFactor = v13;
      objc_msgSend_decodeFloatForKey_(aDecoder, v14, @"MPSSVGFKeyVariancePrefilterSigma", v15, v16);
      v9->_variancePrefilterSigma = v17;
      objc_msgSend_decodeFloatForKey_(aDecoder, v18, @"MPSSVGFKeyBilateralFilterSigma", v19, v20);
      v9->_bilateralFilterSigma = v21;
      objc_msgSend_decodeFloatForKey_(aDecoder, v22, @"MPSSVGFKeyDepthWeight", v23, v24);
      v9->_depthWeight = v25;
      objc_msgSend_decodeFloatForKey_(aDecoder, v26, @"MPSSVGFKeyNormalWeight", v27, v28);
      v9->_normalWeight = v29;
      objc_msgSend_decodeFloatForKey_(aDecoder, v30, @"MPSSVGFKeyLuminanceWeight", v31, v32);
      v9->_luminanceWeight = v33;
      objc_msgSend_decodeFloatForKey_(aDecoder, v34, @"MPSSVGFKeyReprojectionThreshold", v35, v36);
      v9->_reprojectionThreshold = v37;
      objc_msgSend_decodeFloatForKey_(aDecoder, v38, @"MPSSVGFKeyVarianceEstimationSigma", v39, v40);
      v9->_varianceEstimationSigma = v41;
      v9->_minimumFramesForVarianceEstimation = objc_msgSend_decodeInt64ForKey_(aDecoder, v42, @"MPSSVGFKeyMinimumFramesForVarianceEstimation", v43, v44);
      v9->_varianceEstimationRadius = objc_msgSend_decodeInt64ForKey_(aDecoder, v45, @"MPSSVGFKeyVarianceEstimationRadius", v46, v47);
      v9->_variancePrefilterRadius = objc_msgSend_decodeInt64ForKey_(aDecoder, v48, @"MPSSVGFKeyVariancePrefilterRadius", v49, v50);
      v9->_bilateralFilterRadius = objc_msgSend_decodeInt64ForKey_(aDecoder, v51, @"MPSSVGFKeyBilateralFilterRadius", v52, v53);
      v9->_channelCount = objc_msgSend_decodeInt64ForKey_(aDecoder, v54, @"MPSSVGFKeyChannelCount", v55, v56);
      v9->_channelCount2 = objc_msgSend_decodeInt64ForKey_(aDecoder, v57, @"MPSSVGFKeyChannelCount2", v58, v59);
    }

    else
    {
      if (MTLReportFailureTypeEnabled())
      {
        v60 = objc_opt_class();
        NSStringFromClass(v60);
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
  v2.super_class = MPSSVGF;
  [(MPSKernel *)&v2 dealloc];
}

- (void)encodeWithCoder:(NSCoder *)coder
{
  *(&self->super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v51.receiver = self;
  v51.super_class = MPSSVGF;
  [(MPSKernel *)&v51 encodeWithCoder:?];
  objc_msgSend_encodeInteger_forKey_(coder, v5, self->_temporalWeighting, @"MPSSVGFKeyTemporalWeighting", v6);
  *&v7 = self->_temporalReprojectionBlendFactor;
  objc_msgSend_encodeFloat_forKey_(coder, v8, @"MPSSVGFKeyTemporalReprojectionBlendFactor", v9, v10, v7);
  *&v11 = self->_variancePrefilterSigma;
  objc_msgSend_encodeFloat_forKey_(coder, v12, @"MPSSVGFKeyVariancePrefilterSigma", v13, v14, v11);
  *&v15 = self->_bilateralFilterSigma;
  objc_msgSend_encodeFloat_forKey_(coder, v16, @"MPSSVGFKeyBilateralFilterSigma", v17, v18, v15);
  *&v19 = self->_depthWeight;
  objc_msgSend_encodeFloat_forKey_(coder, v20, @"MPSSVGFKeyDepthWeight", v21, v22, v19);
  *&v23 = self->_normalWeight;
  objc_msgSend_encodeFloat_forKey_(coder, v24, @"MPSSVGFKeyNormalWeight", v25, v26, v23);
  *&v27 = self->_luminanceWeight;
  objc_msgSend_encodeFloat_forKey_(coder, v28, @"MPSSVGFKeyLuminanceWeight", v29, v30, v27);
  *&v31 = self->_reprojectionThreshold;
  objc_msgSend_encodeFloat_forKey_(coder, v32, @"MPSSVGFKeyReprojectionThreshold", v33, v34, v31);
  *&v35 = self->_varianceEstimationSigma;
  objc_msgSend_encodeFloat_forKey_(coder, v36, @"MPSSVGFKeyVarianceEstimationSigma", v37, v38, v35);
  objc_msgSend_encodeInteger_forKey_(coder, v39, self->_minimumFramesForVarianceEstimation, @"MPSSVGFKeyMinimumFramesForVarianceEstimation", v40);
  objc_msgSend_encodeInteger_forKey_(coder, v41, self->_varianceEstimationRadius, @"MPSSVGFKeyVarianceEstimationRadius", v42);
  objc_msgSend_encodeInteger_forKey_(coder, v43, self->_variancePrefilterRadius, @"MPSSVGFKeyVariancePrefilterRadius", v44);
  objc_msgSend_encodeInteger_forKey_(coder, v45, self->_bilateralFilterRadius, @"MPSSVGFKeyBilateralFilterRadius", v46);
  objc_msgSend_encodeInteger_forKey_(coder, v47, self->_channelCount, @"MPSSVGFKeyChannelCount", v48);
  objc_msgSend_encodeInteger_forKey_(coder, v49, self->_channelCount2, @"MPSSVGFKeyChannelCount2", v50);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v13.receiver = self;
  v13.super_class = MPSSVGF;
  v4 = [(MPSSVGF *)&v13 description];
  temporalWeighting = self->_temporalWeighting;
  if (temporalWeighting == 1)
  {
    v9 = "MPSTemporalWeightingExponentialMovingAverage";
  }

  else
  {
    v9 = "Unknown";
  }

  if (temporalWeighting)
  {
    v10 = v9;
  }

  else
  {
    v10 = "MPSTemporalWeightingAverage";
  }

  channelCount = self->_channelCount;
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\ttemporal weighting: %s\n\ttemporal reprojection blend factor: %f\n\tvariance prefilter sigma: %f\n\tbilateral filter sigma: %f\n\tdepth weight: %f\n\tnormal weight: %f\n\tluminance weight: %f\n\treprojection threshold: %f\n\tvariance estimation sigma: %f\n\tminimum frames for variance estimation: %u\n\tvariance estimation radius: %u\n\tvariance prefilter radius: %u\n\tbilateral filter radius: %u\n\tchannel count: %u\n\tchannel count 2: %u", v6, v7, v4, v10, self->_temporalReprojectionBlendFactor, self->_variancePrefilterSigma, self->_bilateralFilterSigma, self->_depthWeight, self->_normalWeight, self->_luminanceWeight, self->_reprojectionThreshold, self->_varianceEstimationSigma, self->_minimumFramesForVarianceEstimation, self->_varianceEstimationRadius, self->_variancePrefilterRadius, self->_bilateralFilterRadius, channelCount, self->_channelCount2);
}

- (MPSSVGF)copyWithZone:(NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSSVGF;
  result = [(MPSKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    result->_temporalWeighting = self->_temporalWeighting;
    result->_temporalReprojectionBlendFactor = self->_temporalReprojectionBlendFactor;
    result->_variancePrefilterSigma = self->_variancePrefilterSigma;
    result->_bilateralFilterSigma = self->_bilateralFilterSigma;
    result->_depthWeight = self->_depthWeight;
    result->_normalWeight = self->_normalWeight;
    result->_luminanceWeight = self->_luminanceWeight;
    result->_reprojectionThreshold = self->_reprojectionThreshold;
    result->_varianceEstimationSigma = self->_varianceEstimationSigma;
    result->_minimumFramesForVarianceEstimation = self->_minimumFramesForVarianceEstimation;
    result->_varianceEstimationRadius = self->_varianceEstimationRadius;
    result->_variancePrefilterRadius = self->_variancePrefilterRadius;
    result->_bilateralFilterRadius = self->_bilateralFilterRadius;
    result->_channelCount = self->_channelCount;
    result->_channelCount2 = self->_channelCount2;
  }

  return result;
}

- (MPSSVGFFunctionHash)getHashForKernelID:(SEL)d haveMotionVectorTexture:(unint64_t)texture haveDepthNormalTexture:(BOOL)normalTexture haveSecondTexture:(BOOL)secondTexture
{
  if (normalTexture)
  {
    v7 = 8;
  }

  else
  {
    v7 = 0;
  }

  if (secondTexture)
  {
    v8 = 16;
  }

  else
  {
    v8 = 0;
  }

  if (a7)
  {
    v9 = 32;
  }

  else
  {
    v9 = 0;
  }

  v10 = (v8 | v7 | v9) & 0xFFFB | *&retstr->var0.var0 & 0xFC00 | texture & 3 | (4 * (*&self[4].var0.var0 & 1));
  v11 = *&self[6].var3;
  retstr->var3 = *&self[6].var1;
  *(&retstr->var3 + 1) = v11;
  retstr[1].var0.var0 = self[7].var0.var1;
  *&retstr->var0.var0 = v10 & 0xFC3F | ((self[5].var1 & 3) << 6) | ((self[5].var3 & 3) << 8);
  return self;
}

- (MPSSVGFParams)params
{
  var1 = self[3].var1;
  retstr->var2 = self[3].var0;
  retstr->var3 = var1;
  retstr->var4 = self[3].var2;
  var4 = self[2].var4;
  var3 = self[3].var3;
  retstr->var0 = self[2].var8;
  retstr->var1 = var3;
  retstr->var6 = self[3].var4;
  retstr->var7 = var4;
  retstr->var5 = *&self[4].var0;
  LODWORD(retstr->var8) = self[2].var5;
  return self;
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

- (void)encodeReprojectionToCommandBuffer:(id)commandBuffer sourceTexture:(id)sourceTexture previousTexture:(id)previousTexture destinationTexture:(id)destinationTexture previousLuminanceMomentsTexture:(id)previousLuminanceMomentsTexture destinationLuminanceMomentsTexture:(id)destinationLuminanceMomentsTexture sourceTexture2:(id)sourceTexture2 previousTexture2:(id)previousTexture2 destinationTexture2:(id)destinationTexture2 previousLuminanceMomentsTexture2:(id)previousLuminanceMomentsTexture2 destinationLuminanceMomentsTexture2:(id)destinationLuminanceMomentsTexture2 previousFrameCountTexture:(id)previousFrameCountTexture destinationFrameCountTexture:(id)destinationFrameCountTexture motionVectorTexture:(id)motionVectorTexture depthNormalTexture:(id)depthNormalTexture previousDepthNormalTexture:(id)previousDepthNormalTexture
{
  v21 = sourceTexture;
  v222 = *MEMORY[0x277CD7378];
  if (*(&self->super.super.isa + v222))
  {
    goto LABEL_48;
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
    sub_239E20B9C();
    if (v21)
    {
      goto LABEL_4;
    }
  }

  sub_239E20BEC();
LABEL_4:
  objc_msgSend_channelCount_(self, a2, v21, sourceTexture, previousTexture);
  if (objc_msgSend_channelCount_(self, v25, v21, v26, v27) < self->_channelCount)
  {
    sub_239E20C3C();
    if (previousTexture)
    {
      goto LABEL_6;
    }
  }

  else if (previousTexture)
  {
    goto LABEL_6;
  }

  sub_239E20C94();
LABEL_6:
  objc_msgSend_channelCount_(self, v28, previousTexture, v29, v30);
  if (objc_msgSend_channelCount_(self, v31, previousTexture, v32, v33) < self->_channelCount)
  {
    sub_239E20CE4();
    if (destinationTexture)
    {
      goto LABEL_8;
    }
  }

  else if (destinationTexture)
  {
    goto LABEL_8;
  }

  sub_239E20D3C();
LABEL_8:
  objc_msgSend_channelCount_(self, v34, destinationTexture, v35, v36);
  if (objc_msgSend_channelCount_(self, v37, destinationTexture, v38, v39) < self->_channelCount)
  {
    sub_239E20D8C();
    if (previousLuminanceMomentsTexture)
    {
      goto LABEL_10;
    }
  }

  else if (previousLuminanceMomentsTexture)
  {
    goto LABEL_10;
  }

  sub_239E20DE4();
LABEL_10:
  objc_msgSend_channelCount_(self, v40, previousLuminanceMomentsTexture, v41, v42);
  if (objc_msgSend_channelCount_(self, v43, previousLuminanceMomentsTexture, v44, v45) <= 1)
  {
    sub_239E20E34();
    if (destinationLuminanceMomentsTexture)
    {
      goto LABEL_12;
    }
  }

  else if (destinationLuminanceMomentsTexture)
  {
    goto LABEL_12;
  }

  sub_239E20E84();
LABEL_12:
  objc_msgSend_channelCount_(self, v46, destinationLuminanceMomentsTexture, v47, v48);
  if (objc_msgSend_channelCount_(self, v49, destinationLuminanceMomentsTexture, v50, v51) <= 1)
  {
    sub_239E20ED4();
  }

  if (sourceTexture2)
  {
    objc_msgSend_channelCount_(self, v52, sourceTexture2, v53, v54);
    if (objc_msgSend_channelCount_(self, v55, sourceTexture2, v56, v57) < self->_channelCount2)
    {
      sub_239E20F24();
    }

    v61 = previousTexture2;
    if (!previousTexture2)
    {
      sub_239E20F7C();
      v61 = 0;
    }

    v62 = destinationLuminanceMomentsTexture;
    v63 = v61;
    objc_msgSend_channelCount_(self, v58, v61, v59, v60);
    if (objc_msgSend_channelCount_(self, v64, v63, v65, v66) < self->_channelCount2)
    {
      sub_239E20FCC();
    }

    v70 = destinationTexture2;
    if (destinationTexture2)
    {
      objc_msgSend_channelCount_(self, v67, destinationTexture2, v68, v69);
    }

    else
    {
      sub_239E21024();
      v70 = 0;
      objc_msgSend_channelCount_(self, v211, 0, v212, v213);
    }

    v21 = sourceTexture;
    if (objc_msgSend_channelCount_(self, v71, v70, v72, v73) < self->_channelCount2)
    {
      sub_239E21074();
    }

    v77 = previousLuminanceMomentsTexture2;
    destinationLuminanceMomentsTexture = v62;
    if (previousLuminanceMomentsTexture2)
    {
      objc_msgSend_channelCount_(self, v74, previousLuminanceMomentsTexture2, v75, v76);
    }

    else
    {
      sub_239E210CC();
      v77 = 0;
      objc_msgSend_channelCount_(self, v214, 0, v215, v216);
    }

    if (objc_msgSend_channelCount_(self, v78, v77, v79, v80) <= 1)
    {
      sub_239E2111C();
    }

    v84 = destinationLuminanceMomentsTexture2;
    if (destinationLuminanceMomentsTexture2)
    {
      objc_msgSend_channelCount_(self, v81, destinationLuminanceMomentsTexture2, v82, v83);
    }

    else
    {
      sub_239E2116C();
      v84 = 0;
      objc_msgSend_channelCount_(self, v217, 0, v218, v219);
    }

    if (objc_msgSend_channelCount_(self, v85, v84, v86, v87) <= 1)
    {
      sub_239E211BC();
    }
  }

  v88 = previousFrameCountTexture;
  if (previousFrameCountTexture)
  {
    objc_msgSend_channelCount_(self, v52, previousFrameCountTexture, v53, v54);
  }

  else
  {
    sub_239E2120C();
    v88 = 0;
    objc_msgSend_channelCount_(self, v205, 0, v206, v207);
  }

  if (!objc_msgSend_channelCount_(self, v89, v88, v90, v91))
  {
    sub_239E2125C();
  }

  v95 = destinationFrameCountTexture;
  if (destinationFrameCountTexture)
  {
    objc_msgSend_channelCount_(self, v92, destinationFrameCountTexture, v93, v94);
  }

  else
  {
    sub_239E212AC();
    v95 = 0;
    objc_msgSend_channelCount_(self, v208, 0, v209, v210);
  }

  if (!objc_msgSend_channelCount_(self, v96, v95, v97, v98))
  {
    sub_239E212FC();
  }

  if (motionVectorTexture)
  {
    objc_msgSend_channelCount_(self, a2, motionVectorTexture, sourceTexture, previousTexture);
    if (objc_msgSend_channelCount_(self, v99, motionVectorTexture, v100, v101) <= 1)
    {
      sub_239E2134C();
      if (previousDepthNormalTexture)
      {
        goto LABEL_44;
      }
    }

    else if (previousDepthNormalTexture)
    {
      goto LABEL_44;
    }

    sub_239E2139C();
LABEL_44:
    objc_msgSend_channelCount_(self, v102, previousDepthNormalTexture, v103, v104);
    if (objc_msgSend_channelCount_(self, v105, previousDepthNormalTexture, v106, v107) == 4)
    {
      if (depthNormalTexture)
      {
        goto LABEL_46;
      }
    }

    else
    {
      sub_239E213EC();
      if (depthNormalTexture)
      {
        goto LABEL_46;
      }
    }

    sub_239E2143C();
LABEL_46:
    objc_msgSend_channelCount_(self, v108, depthNormalTexture, v109, v110);
    if (objc_msgSend_channelCount_(self, v111, depthNormalTexture, v112, v113) != 4)
    {
      sub_239E2148C();
    }
  }

LABEL_48:
  v221 = destinationLuminanceMomentsTexture;
  if (objc_msgSend_retainedReferences(commandBuffer, a2, commandBuffer, sourceTexture, previousTexture))
  {
    v115 = 0;
  }

  else
  {
    v115 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  if ((*(&self->super.super.isa + v222) & 2) != 0)
  {
    v116 = @"reprojectKernelHalf";
  }

  else
  {
    v116 = @"reprojectKernelFloat";
  }

  haveSecondTexture = objc_msgSend_getPipelineForFunctionName_kernelID_haveMotionVectorTexture_haveDepthNormalTexture_haveSecondTexture_(self, v114, v116, 0, motionVectorTexture != 0, depthNormalTexture != 0, sourceTexture2 != 0);
  v223 = commandBuffer;
  v122 = objc_msgSend_computeCommandEncoder(commandBuffer, v118, v119, v120, v121);
  objc_msgSend_setLabel_(v122, v123, @"MPSSVGF reprojection", v124, v125);
  objc_msgSend_setComputePipelineState_(v122, v126, haveSecondTexture, v127, v128);
  v230 = 0;
  memset(v229, 0, sizeof(v229));
  objc_msgSend_params(self, v129, v130, v131, v132);
  objc_msgSend_setBytes_length_atIndex_(v122, v133, v229, 36, 0);
  objc_msgSend_setTexture_atIndex_(v122, v134, v21, 0, v135);
  objc_msgSend_setTexture_atIndex_(v122, v136, previousTexture, 1, v137);
  objc_msgSend_setTexture_atIndex_(v122, v138, previousLuminanceMomentsTexture, 2, v139);
  objc_msgSend_setTexture_atIndex_(v122, v140, destinationTexture, 3, v141);
  objc_msgSend_setTexture_atIndex_(v122, v142, v221, 4, v143);
  objc_msgSend_setTexture_atIndex_(v122, v144, sourceTexture2, 5, v145);
  objc_msgSend_setTexture_atIndex_(v122, v146, previousTexture2, 6, v147);
  objc_msgSend_setTexture_atIndex_(v122, v148, previousLuminanceMomentsTexture2, 7, v149);
  objc_msgSend_setTexture_atIndex_(v122, v150, destinationTexture2, 8, v151);
  objc_msgSend_setTexture_atIndex_(v122, v152, destinationLuminanceMomentsTexture2, 9, v153);
  objc_msgSend_setTexture_atIndex_(v122, v154, previousFrameCountTexture, 10, v155);
  objc_msgSend_setTexture_atIndex_(v122, v156, destinationFrameCountTexture, 11, v157);
  objc_msgSend_setTexture_atIndex_(v122, v158, motionVectorTexture, 12, v159);
  objc_msgSend_setTexture_atIndex_(v122, v160, depthNormalTexture, 13, v161);
  objc_msgSend_setTexture_atIndex_(v122, v162, previousDepthNormalTexture, 14, v163);
  v228[0] = (objc_msgSend_width(destinationTexture, v164, v165, v166, v167) + 7) >> 3;
  v228[1] = (objc_msgSend_height(destinationTexture, v168, v169, v170, v171) + 7) >> 3;
  v228[2] = 1;
  v226 = vdupq_n_s64(8uLL);
  v227 = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v122, v172, v228, &v226, v173);
  objc_msgSend_endEncoding(v122, v174, v175, v176, v177);
  if (v115)
  {
    objc_msgSend_addObject_(v115, v178, haveSecondTexture, v179, v180);
    objc_msgSend_addObject_(v115, v181, sourceTexture, v182, v183);
    objc_msgSend_addObject_(v115, v184, previousTexture, v185, v186);
    objc_msgSend_addObject_(v115, v187, previousLuminanceMomentsTexture, v188, v189);
    objc_msgSend_addObject_(v115, v190, destinationTexture, v191, v192);
    objc_msgSend_addObject_(v115, v193, v221, v194, v195);
    if (sourceTexture2)
    {
      objc_msgSend_addObject_(v115, v196, sourceTexture2, v197, v198);
    }

    if (previousTexture2)
    {
      objc_msgSend_addObject_(v115, v196, previousTexture2, v197, v198);
    }

    if (previousLuminanceMomentsTexture2)
    {
      objc_msgSend_addObject_(v115, v196, previousLuminanceMomentsTexture2, v197, v198);
    }

    if (destinationTexture2)
    {
      objc_msgSend_addObject_(v115, v196, destinationTexture2, v197, v198);
    }

    if (destinationLuminanceMomentsTexture2)
    {
      objc_msgSend_addObject_(v115, v196, destinationLuminanceMomentsTexture2, v197, v198);
    }

    objc_msgSend_addObject_(v115, v196, previousFrameCountTexture, v197, v198);
    objc_msgSend_addObject_(v115, v199, destinationFrameCountTexture, v200, v201);
    if (motionVectorTexture)
    {
      objc_msgSend_addObject_(v115, v202, motionVectorTexture, v203, v204);
    }

    if (depthNormalTexture)
    {
      objc_msgSend_addObject_(v115, v202, depthNormalTexture, v203, v204);
    }

    if (previousDepthNormalTexture)
    {
      objc_msgSend_addObject_(v115, v202, previousDepthNormalTexture, v203, v204);
    }

    v225[0] = MEMORY[0x277D85DD0];
    v225[1] = 3221225472;
    v225[2] = sub_239DEFC80;
    v225[3] = &unk_278B3B370;
    v225[4] = v115;
    objc_msgSend_addCompletedHandler_(v223, v202, v225, v203, v204);
  }
}

- (void)encodeVarianceEstimationToCommandBuffer:(id)commandBuffer sourceTexture:(id)sourceTexture luminanceMomentsTexture:(id)luminanceMomentsTexture destinationTexture:(id)destinationTexture sourceTexture2:(id)sourceTexture2 luminanceMomentsTexture2:(id)luminanceMomentsTexture2 destinationTexture2:(id)destinationTexture2 frameCountTexture:(id)frameCountTexture depthNormalTexture:(id)depthNormalTexture
{
  v13 = destinationTexture;
  v16 = *MEMORY[0x277CD7378];
  if (*(&self->super.super.isa + v16))
  {
    goto LABEL_31;
  }

  v17 = *MEMORY[0x277CD7378];
  if (!commandBuffer)
  {
    sub_239E214DC();
  }

  v19 = sourceTexture;
  if (sourceTexture)
  {
    objc_msgSend_channelCount_(self, a2, sourceTexture, sourceTexture, luminanceMomentsTexture);
  }

  else
  {
    sub_239E2152C();
    v19 = 0;
    objc_msgSend_channelCount_(self, v129, 0, v130, v131);
  }

  if (objc_msgSend_channelCount_(self, v20, v19, v21, v22) < self->_channelCount)
  {
    sub_239E2157C();
  }

  v13 = destinationTexture;
  if (!destinationTexture)
  {
    sub_239E215D4();
  }

  objc_msgSend_channelCount_(self, v23, destinationTexture, v24, v25);
  v29 = objc_msgSend_channelCount_(self, v26, destinationTexture, v27, v28);
  v16 = v17;
  if (v29 < self->_channelCount + 1)
  {
    sub_239E21624();
  }

  v33 = luminanceMomentsTexture;
  if (luminanceMomentsTexture)
  {
    objc_msgSend_channelCount_(self, v30, luminanceMomentsTexture, v31, v32);
  }

  else
  {
    sub_239E2167C();
    v33 = 0;
    objc_msgSend_channelCount_(self, v132, 0, v133, v134);
  }

  if (objc_msgSend_channelCount_(self, v34, v33, v35, v36) <= 1)
  {
    sub_239E216CC();
    if (sourceTexture2)
    {
LABEL_16:
      objc_msgSend_channelCount_(self, v37, sourceTexture2, v38, v39);
      if (objc_msgSend_channelCount_(self, v40, sourceTexture2, v41, v42) < self->_channelCount2)
      {
        sub_239E2171C();
        if (destinationTexture2)
        {
          goto LABEL_18;
        }
      }

      else if (destinationTexture2)
      {
        goto LABEL_18;
      }

      sub_239E21774();
LABEL_18:
      objc_msgSend_channelCount_(self, v43, destinationTexture2, v44, v45);
      if (objc_msgSend_channelCount_(self, v46, destinationTexture2, v47, v48) < self->_channelCount2 + 1)
      {
        sub_239E217C4();
        if (luminanceMomentsTexture2)
        {
          goto LABEL_20;
        }
      }

      else if (luminanceMomentsTexture2)
      {
        goto LABEL_20;
      }

      sub_239E2181C();
LABEL_20:
      objc_msgSend_channelCount_(self, v49, luminanceMomentsTexture2, v50, v51);
      if (objc_msgSend_channelCount_(self, v52, luminanceMomentsTexture2, v53, v54) <= 1)
      {
        sub_239E2186C();
      }
    }
  }

  else if (sourceTexture2)
  {
    goto LABEL_16;
  }

  if (!frameCountTexture)
  {
    sub_239E218BC();
  }

  objc_msgSend_channelCount_(self, v37, frameCountTexture, v38, v39);
  if (!objc_msgSend_channelCount_(self, v55, frameCountTexture, v56, v57))
  {
    sub_239E2190C();
  }

  if (self->_minimumFramesForVarianceEstimation >= 2)
  {
    if (!depthNormalTexture)
    {
      sub_239E2195C();
    }

    objc_msgSend_channelCount_(self, a2, depthNormalTexture, sourceTexture, luminanceMomentsTexture);
    if (objc_msgSend_channelCount_(self, v58, depthNormalTexture, v59, v60) != 4)
    {
      sub_239E219AC();
    }
  }

LABEL_31:
  v137 = commandBuffer;
  if (objc_msgSend_retainedReferences(commandBuffer, a2, commandBuffer, sourceTexture, luminanceMomentsTexture))
  {
    v62 = 0;
  }

  else
  {
    v62 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  if ((*(&self->super.super.isa + v16) & 2) != 0)
  {
    v63 = @"varianceKernelHalf";
  }

  else
  {
    v63 = @"varianceKernelFloat";
  }

  haveSecondTexture = objc_msgSend_getPipelineForFunctionName_kernelID_haveMotionVectorTexture_haveDepthNormalTexture_haveSecondTexture_(self, v61, v63, 1, 0, depthNormalTexture != 0, luminanceMomentsTexture2 != 0);
  v69 = objc_msgSend_computeCommandEncoder(v137, v65, v66, v67, v68);
  objc_msgSend_setLabel_(v69, v70, @"MPSSVGF variance estimation", v71, v72);
  objc_msgSend_setComputePipelineState_(v69, v73, haveSecondTexture, v74, v75);
  v143 = 0;
  memset(v142, 0, sizeof(v142));
  objc_msgSend_params(self, v76, v77, v78, v79);
  objc_msgSend_setBytes_length_atIndex_(v69, v80, v142, 36, 0);
  objc_msgSend_setTexture_atIndex_(v69, v81, v13, 0, v82);
  objc_msgSend_setTexture_atIndex_(v69, v83, luminanceMomentsTexture, 1, v84);
  objc_msgSend_setTexture_atIndex_(v69, v85, sourceTexture, 2, v86);
  objc_msgSend_setTexture_atIndex_(v69, v87, destinationTexture2, 3, v88);
  objc_msgSend_setTexture_atIndex_(v69, v89, luminanceMomentsTexture2, 4, v90);
  objc_msgSend_setTexture_atIndex_(v69, v91, sourceTexture2, 5, v92);
  objc_msgSend_setTexture_atIndex_(v69, v93, depthNormalTexture, 6, v94);
  objc_msgSend_setTexture_atIndex_(v69, v95, frameCountTexture, 7, v96);
  v141[0] = (objc_msgSend_width(v13, v97, v98, v99, v100) + 7) >> 3;
  v141[1] = (objc_msgSend_height(v13, v101, v102, v103, v104) + 7) >> 3;
  v141[2] = 1;
  v139 = vdupq_n_s64(8uLL);
  v140 = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v69, v105, v141, &v139, v106);
  objc_msgSend_endEncoding(v69, v107, v108, v109, v110);
  if (v62)
  {
    objc_msgSend_addObject_(v62, v111, haveSecondTexture, v112, v113);
    objc_msgSend_addObject_(v62, v114, sourceTexture, v115, v116);
    objc_msgSend_addObject_(v62, v117, luminanceMomentsTexture, v118, v119);
    objc_msgSend_addObject_(v62, v120, v13, v121, v122);
    if (sourceTexture2)
    {
      objc_msgSend_addObject_(v62, v123, sourceTexture2, v124, v125);
    }

    if (luminanceMomentsTexture2)
    {
      objc_msgSend_addObject_(v62, v123, luminanceMomentsTexture2, v124, v125);
    }

    if (destinationTexture2)
    {
      objc_msgSend_addObject_(v62, v123, destinationTexture2, v124, v125);
    }

    objc_msgSend_addObject_(v62, v123, frameCountTexture, v124, v125);
    if (depthNormalTexture)
    {
      objc_msgSend_addObject_(v62, v126, depthNormalTexture, v127, v128);
    }

    v138[0] = MEMORY[0x277D85DD0];
    v138[1] = 3221225472;
    v138[2] = sub_239DF020C;
    v138[3] = &unk_278B3B370;
    v138[4] = v62;
    objc_msgSend_addCompletedHandler_(v137, v126, v138, v127, v128);
  }
}

- (void)encodeBilateralFilterToCommandBuffer:(id)commandBuffer stepDistance:(NSUInteger)stepDistance sourceTexture:(id)sourceTexture destinationTexture:(id)destinationTexture sourceTexture2:(id)sourceTexture2 destinationTexture2:(id)destinationTexture2 depthNormalTexture:(id)depthNormalTexture
{
  v16 = *MEMORY[0x277CD7378];
  if (*(&self->super.super.isa + v16))
  {
    goto LABEL_18;
  }

  if (!commandBuffer)
  {
    sub_239E219FC();
  }

  if (!sourceTexture)
  {
    sub_239E21A4C();
  }

  objc_msgSend_channelCount_(self, a2, sourceTexture, stepDistance, sourceTexture);
  if (objc_msgSend_channelCount_(self, v17, sourceTexture, v18, v19) < self->_channelCount + 1)
  {
    sub_239E21A9C();
    if (destinationTexture)
    {
      goto LABEL_8;
    }
  }

  else if (destinationTexture)
  {
    goto LABEL_8;
  }

  sub_239E21AF4();
LABEL_8:
  objc_msgSend_channelCount_(self, v20, destinationTexture, v21, v22);
  if (objc_msgSend_channelCount_(self, v23, destinationTexture, v24, v25) < self->_channelCount + 1)
  {
    sub_239E21B44();
    if (sourceTexture2)
    {
LABEL_10:
      objc_msgSend_channelCount_(self, v26, sourceTexture2, v27, v28);
      if (objc_msgSend_channelCount_(self, v29, sourceTexture2, v30, v31) < self->_channelCount2 + 1)
      {
        sub_239E21B9C();
        if (destinationTexture2)
        {
          goto LABEL_12;
        }
      }

      else if (destinationTexture2)
      {
        goto LABEL_12;
      }

      sub_239E21BF4();
LABEL_12:
      objc_msgSend_channelCount_(self, v32, destinationTexture2, v33, v34);
      if (objc_msgSend_channelCount_(self, v35, destinationTexture2, v36, v37) < self->_channelCount2 + 1)
      {
        sub_239E21C44();
      }
    }
  }

  else if (sourceTexture2)
  {
    goto LABEL_10;
  }

  if (!depthNormalTexture)
  {
    sub_239E21C9C();
  }

  objc_msgSend_channelCount_(self, v26, depthNormalTexture, v27, v28);
  if (objc_msgSend_channelCount_(self, v38, depthNormalTexture, v39, v40) != 4)
  {
    sub_239E21CEC();
  }

LABEL_18:
  v110 = destinationTexture2;
  v42 = sourceTexture;
  if (objc_msgSend_retainedReferences(commandBuffer, a2, commandBuffer, stepDistance, sourceTexture))
  {
    v43 = 0;
  }

  else
  {
    v43 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  if ((*(&self->super.super.isa + v16) & 2) != 0)
  {
    v44 = @"bilateralKernelHalf";
  }

  else
  {
    v44 = @"bilateralKernelFloat";
  }

  haveSecondTexture = objc_msgSend_getPipelineForFunctionName_kernelID_haveMotionVectorTexture_haveDepthNormalTexture_haveSecondTexture_(self, v41, v44, 2, 0, depthNormalTexture != 0, sourceTexture2 != 0);
  v50 = objc_msgSend_computeCommandEncoder(commandBuffer, v46, v47, v48, v49);
  v54 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v51, @"MPSSVGF bilateral filter (stepDistance=%u)", v52, v53, stepDistance);
  objc_msgSend_setLabel_(v50, v55, v54, v56, v57);
  objc_msgSend_setComputePipelineState_(v50, v58, haveSecondTexture, v59, v60);
  v116[0] = stepDistance;
  v115 = 0;
  memset(v114, 0, sizeof(v114));
  objc_msgSend_params(self, v61, v62, v63, v64);
  objc_msgSend_setBytes_length_atIndex_(v50, v65, v114, 36, 0);
  objc_msgSend_setBytes_length_atIndex_(v50, v66, v116, 4, 1);
  objc_msgSend_setTexture_atIndex_(v50, v67, destinationTexture, 0, v68);
  objc_msgSend_setTexture_atIndex_(v50, v69, v42, 1, v70);
  objc_msgSend_setTexture_atIndex_(v50, v71, v110, 2, v72);
  objc_msgSend_setTexture_atIndex_(v50, v73, sourceTexture2, 3, v74);
  objc_msgSend_setTexture_atIndex_(v50, v75, depthNormalTexture, 4, v76);
  v81 = objc_msgSend_width(destinationTexture, v77, v78, v79, v80);
  v86 = objc_msgSend_height(destinationTexture, v82, v83, v84, v85);
  v89 = 8;
  if (((*(&self->super.super.isa + *MEMORY[0x277CD7350]))[369] & 0x400) != 0)
  {
    v90 = 3;
  }

  else
  {
    v89 = 16;
    v90 = 4;
  }

  v113[0] = (v89 - 1 + v81) >> v90;
  v113[1] = (v89 - 1 + v86) >> v90;
  v113[2] = 1;
  v112[0] = v89;
  v112[1] = v89;
  v112[2] = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v50, v87, v113, v112, v88);
  objc_msgSend_endEncoding(v50, v91, v92, v93, v94);
  if (v43)
  {
    objc_msgSend_addObject_(v43, v95, haveSecondTexture, v96, v97);
    objc_msgSend_addObject_(v43, v98, v42, v99, v100);
    objc_msgSend_addObject_(v43, v101, destinationTexture, v102, v103);
    if (sourceTexture2)
    {
      objc_msgSend_addObject_(v43, v104, sourceTexture2, v105, v106);
    }

    if (v110)
    {
      objc_msgSend_addObject_(v43, v104, v110, v105, v106);
    }

    objc_msgSend_addObject_(v43, v104, depthNormalTexture, v105, v106);
    v111[0] = MEMORY[0x277D85DD0];
    v111[1] = 3221225472;
    v111[2] = sub_239DF069C;
    v111[3] = &unk_278B3B370;
    v111[4] = v43;
    objc_msgSend_addCompletedHandler_(commandBuffer, v107, v111, v108, v109);
  }
}

@end