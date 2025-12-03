@interface MPSImageNormalizedHistogram
- (MPSImageHistogramInfo)histogramInfo;
- (MPSImageNormalizedHistogram)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSImageNormalizedHistogram)initWithDevice:(id)device;
- (MPSImageNormalizedHistogram)initWithDevice:(id)device histogramInfo:(const MPSImageHistogramInfo *)histogramInfo;
- (MTLRegion)clipRectSource;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (size_t)histogramSizeForSourceFormat:(MTLPixelFormat)sourceFormat;
- (void)dealloc;
- (void)encodeInternalToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceTexture:(id)texture minmaxTexture:(id)minmaxTexture histogram:(id)histogram histogramOffset:(unint64_t)offset inputExtent:(id *)extent srcStyle:(int)self0;
- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceTexture:(id)texture minmaxTexture:(id)minmaxTexture histogram:(id)histogram histogramOffset:(unint64_t)offset;
- (void)encodeWithCoder:(id)coder;
- (void)setClipRectSource:(MTLRegion *)clipRectSource;
@end

@implementation MPSImageNormalizedHistogram

- (MPSImageNormalizedHistogram)initWithDevice:(id)device
{
  v11[1] = 1;
  v12 = 0u;
  v11[0] = 256;
  __asm { FMOV            V0.4S, #1.0 }

  v13 = _Q0;
  return objc_msgSend_initWithDevice_histogramInfo_(self, a2, device, v11, v3, v4);
}

- (MPSImageHistogramInfo)histogramInfo
{
  retstr->numberOfHistogramEntries = self[1].maxPixelValue.u64[1];
  retstr->histogramForAlpha = self[2].numberOfHistogramEntries;
  maxPixelValue = self[2].maxPixelValue;
  retstr->minPixelValue = self[2].minPixelValue;
  retstr->maxPixelValue = maxPixelValue;
  return self;
}

- (MPSImageNormalizedHistogram)initWithDevice:(id)device histogramInfo:(const MPSImageHistogramInfo *)histogramInfo
{
  v22.receiver = self;
  v22.super_class = MPSImageNormalizedHistogram;
  v6 = [(MPSKernel *)&v22 initWithDevice:?];
  v7 = v6;
  if (!v6)
  {
    return v7;
  }

  if (histogramInfo)
  {
    if ((histogramInfo->numberOfHistogramEntries & (histogramInfo->numberOfHistogramEntries - 1)) == 0)
    {
      *(v6 + 11) = histogramInfo->numberOfHistogramEntries;
      v6[96] = histogramInfo->histogramForAlpha;
      *(v6 + 7) = histogramInfo->minPixelValue;
      *(v6 + 8) = histogramInfo->maxPixelValue;
      v8 = *(MEMORY[0x277CD7200] + 32);
      v9 = *MEMORY[0x277CD7200];
      *(v6 + 168) = *(MEMORY[0x277CD7200] + 16);
      *(v6 + 184) = v8;
      *(v6 + 152) = v9;
      v6[200] = 1;
      v10 = [MPSImageStatisticsMinAndMax alloc];
      v15 = objc_msgSend_initWithDevice_(v10, v11, device, v12, v13, v14);
      v7->_minmaxFilter = v15;
      objc_msgSend_setEdgeMode_(v15, v16, 0, v17, v18, v19);
      return v7;
    }

    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_9;
    }
  }

  else if (MTLReportFailureTypeEnabled())
  {
LABEL_9:
    v21 = objc_opt_class();
    NSStringFromClass(v21);
    MTLReportFailure();
  }

  return 0;
}

- (MPSImageNormalizedHistogram)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v96.receiver = self;
  v96.super_class = MPSImageNormalizedHistogram;
  v6 = [MPSKernel initWithCoder:sel_initWithCoder_device_ device:?];
  v11 = v6;
  if (v6)
  {
    if (*(&v6->super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
    {
      v6->histogramEntries = objc_msgSend_decodeInt64ForKey_(aDecoder, v7, @"MPSImageNormalizedHistogram.histogramEntries", v8, v9, v10);
      v11->histogramAlpha = objc_msgSend_decodeBoolForKey_(aDecoder, v12, @"MPSImageNormalizedHistogram.histogramAlpha", v13, v14, v15);
      objc_msgSend_decodeFloatForKey_(aDecoder, v16, @"MPSImageNormalizedHistogram.minPixelValueX", v17, v18, v19);
      *v11->minPixelValue = v20;
      objc_msgSend_decodeFloatForKey_(aDecoder, v21, @"MPSImageNormalizedHistogram.minPixelValueY", v22, v23, v24);
      *&v11->minPixelValue[4] = v25;
      objc_msgSend_decodeFloatForKey_(aDecoder, v26, @"MPSImageNormalizedHistogram.minPixelValueZ", v27, v28, v29);
      *&v11->minPixelValue[8] = v30;
      objc_msgSend_decodeFloatForKey_(aDecoder, v31, @"MPSImageNormalizedHistogram.minPixelValueW", v32, v33, v34);
      *&v11->minPixelValue[12] = v35;
      objc_msgSend_decodeFloatForKey_(aDecoder, v36, @"MPSImageNormalizedHistogram.maxPixelValueX", v37, v38, v39);
      *v11->maxPixelValue = v40;
      objc_msgSend_decodeFloatForKey_(aDecoder, v41, @"MPSImageNormalizedHistogram.maxPixelValueY", v42, v43, v44);
      *&v11->maxPixelValue[4] = v45;
      objc_msgSend_decodeFloatForKey_(aDecoder, v46, @"MPSImageNormalizedHistogram.maxPixelValueZ", v47, v48, v49);
      *&v11->maxPixelValue[8] = v50;
      objc_msgSend_decodeFloatForKey_(aDecoder, v51, @"MPSImageNormalizedHistogram.maxPixelValueW", v52, v53, v54);
      *&v11->maxPixelValue[12] = v55;
      v11->_clipRectSource.origin.x = objc_msgSend_decodeInt64ForKey_(aDecoder, v56, @"MPSImageNormalizedHistogram.clipRectSource.origin.x", v57, v58, v59);
      v11->_clipRectSource.origin.y = objc_msgSend_decodeInt64ForKey_(aDecoder, v60, @"MPSImageNormalizedHistogram.clipRectSource.origin.y", v61, v62, v63);
      v11->_clipRectSource.origin.z = objc_msgSend_decodeInt64ForKey_(aDecoder, v64, @"MPSImageNormalizedHistogram.clipRectSource.origin.z", v65, v66, v67);
      v11->_clipRectSource.size.width = objc_msgSend_decodeInt64ForKey_(aDecoder, v68, @"MPSImageNormalizedHistogram.clipRectSource.size.width", v69, v70, v71);
      v11->_clipRectSource.size.height = objc_msgSend_decodeInt64ForKey_(aDecoder, v72, @"MPSImageNormalizedHistogram.clipRectSource.size.height", v73, v74, v75);
      v11->_clipRectSource.size.depth = objc_msgSend_decodeInt64ForKey_(aDecoder, v76, @"MPSImageNormalizedHistogram.clipRectSource.size.depth", v77, v78, v79);
      v11->_zeroHistogram = objc_msgSend_decodeBoolForKey_(aDecoder, v80, @"MPSImageNormalizedHistogram.zeroHistogram", v81, v82, v83);
      v84 = [MPSImageStatisticsMinAndMax alloc];
      v89 = objc_msgSend_initWithDevice_(v84, v85, device, v86, v87, v88);
      v11->_minmaxFilter = v89;
      objc_msgSend_setEdgeMode_(v89, v90, 0, v91, v92, v93);
    }

    else
    {
      if (MTLReportFailureTypeEnabled())
      {
        v94 = objc_opt_class();
        NSStringFromClass(v94);
        MTLReportFailure();
      }

      return 0;
    }
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v72.receiver = self;
  v72.super_class = MPSImageNormalizedHistogram;
  [(MPSKernel *)&v72 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(coder, v5, self->histogramEntries, @"MPSImageNormalizedHistogram.histogramEntries", v6, v7);
  objc_msgSend_encodeBool_forKey_(coder, v8, self->histogramAlpha, @"MPSImageNormalizedHistogram.histogramAlpha", v9, v10);
  LODWORD(v11) = *self->minPixelValue;
  objc_msgSend_encodeFloat_forKey_(coder, v12, @"MPSImageNormalizedHistogram.minPixelValueX", v13, v14, v15, v11);
  LODWORD(v16) = *&self->minPixelValue[4];
  objc_msgSend_encodeFloat_forKey_(coder, v17, @"MPSImageNormalizedHistogram.minPixelValueY", v18, v19, v20, v16);
  LODWORD(v21) = *&self->minPixelValue[8];
  objc_msgSend_encodeFloat_forKey_(coder, v22, @"MPSImageNormalizedHistogram.minPixelValueZ", v23, v24, v25, v21);
  LODWORD(v26) = *&self->minPixelValue[12];
  objc_msgSend_encodeFloat_forKey_(coder, v27, @"MPSImageNormalizedHistogram.minPixelValueW", v28, v29, v30, v26);
  LODWORD(v31) = *self->maxPixelValue;
  objc_msgSend_encodeFloat_forKey_(coder, v32, @"MPSImageNormalizedHistogram.maxPixelValueX", v33, v34, v35, v31);
  LODWORD(v36) = *&self->maxPixelValue[4];
  objc_msgSend_encodeFloat_forKey_(coder, v37, @"MPSImageNormalizedHistogram.maxPixelValueY", v38, v39, v40, v36);
  LODWORD(v41) = *&self->maxPixelValue[8];
  objc_msgSend_encodeFloat_forKey_(coder, v42, @"MPSImageNormalizedHistogram.maxPixelValueZ", v43, v44, v45, v41);
  LODWORD(v46) = *&self->maxPixelValue[12];
  objc_msgSend_encodeFloat_forKey_(coder, v47, @"MPSImageNormalizedHistogram.maxPixelValueW", v48, v49, v50, v46);
  objc_msgSend_encodeInt64_forKey_(coder, v51, self->_clipRectSource.origin.x, @"MPSImageNormalizedHistogram.clipRectSource.origin.x", v52, v53);
  objc_msgSend_encodeInt64_forKey_(coder, v54, self->_clipRectSource.origin.y, @"MPSImageNormalizedHistogram.clipRectSource.origin.y", v55, v56);
  objc_msgSend_encodeInt64_forKey_(coder, v57, self->_clipRectSource.origin.z, @"MPSImageNormalizedHistogram.clipRectSource.origin.z", v58, v59);
  objc_msgSend_encodeInt64_forKey_(coder, v60, self->_clipRectSource.size.width, @"MPSImageNormalizedHistogram.clipRectSource.size.width", v61, v62);
  objc_msgSend_encodeInt64_forKey_(coder, v63, self->_clipRectSource.size.height, @"MPSImageNormalizedHistogram.clipRectSource.size.height", v64, v65);
  objc_msgSend_encodeInt64_forKey_(coder, v66, self->_clipRectSource.size.depth, @"MPSImageNormalizedHistogram.clipRectSource.size.depth", v67, v68);
  objc_msgSend_encodeBool_forKey_(coder, v69, self->_zeroHistogram, @"MPSImageNormalizedHistogram.zeroHistogram", v70, v71);
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v8.receiver = self;
  v8.super_class = MPSImageNormalizedHistogram;
  result = [(MPSKernel *)&v8 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 11) = self->histogramEntries;
    *(result + 96) = self->histogramAlpha;
    *(result + 7) = *self->minPixelValue;
    *(result + 8) = *self->maxPixelValue;
    v7 = *&self->_clipRectSource.origin.z;
    v6 = *&self->_clipRectSource.size.height;
    *(result + 152) = *&self->_clipRectSource.origin.x;
    *(result + 168) = v7;
    *(result + 184) = v6;
    *(result + 200) = self->_zeroHistogram;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSImageNormalizedHistogram;
  [(MPSKernel *)&v3 dealloc];
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = MPSImageNormalizedHistogram;
  v4 = [(MPSKernel *)&v10 debugDescription];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tHistogram Entries:  %lu\n\tHistogram for Alpha: %d", v6, v7, v8, v4, self->histogramEntries, self->histogramAlpha);
}

- (size_t)histogramSizeForSourceFormat:(MTLPixelFormat)sourceFormat
{
  PixelInfo = MPSDevice::GetPixelInfo(*(&self->super.super.isa + *MEMORY[0x277CD7350]), sourceFormat, MPSImageFeatureChannelFormatNone);
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0 && ((PixelInfo & 0x800000000000) == 0 || (PixelInfo & 0xF000000) == 0))
  {
    v7 = PixelInfo;
    v8 = MTLReportFailureTypeEnabled();
    LODWORD(PixelInfo) = v7;
    if (v8)
    {
      v9 = objc_opt_class();
      NSStringFromClass(v9);
      MTLReportFailure();
      LODWORD(PixelInfo) = v7;
    }
  }

  v5 = BYTE3(PixelInfo) & 0xF;
  if (v5 == 4)
  {
    if (self->histogramAlpha)
    {
      v5 = 4;
    }

    else
    {
      v5 = 3;
    }
  }

  return self->histogramEntries * 4 * v5;
}

- (void)encodeInternalToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceTexture:(id)texture minmaxTexture:(id)minmaxTexture histogram:(id)histogram histogramOffset:(unint64_t)offset inputExtent:(id *)extent srcStyle:(int)self0
{
  textureCopy = texture;
  if (self->_zeroHistogram)
  {
    v14 = self->histogramEntries * dword_239989980[style];
    v15 = *MEMORY[0x277CD7370];
    v16 = *(&self->super.super.isa + v15);
    ComputeState = MPSLibrary::GetComputeState();
    if (!ComputeState)
    {
      return;
    }

    v23 = ComputeState;
    v24 = objc_msgSend_threadExecutionWidth(ComputeState, v18, v19, v20, v21, v22);
    objc_msgSend_setComputePipelineState_(encoder, v25, v23, v26, v27, v28);
    v29 = *(&self->super.super.isa + v15);
    MPSLibrary::ReleaseComputeState();
    v32 = v14 >> 10;
    if (v14 >> 10 <= 1)
    {
      v32 = 1;
    }

    if (v14 < 0x100)
    {
      v33 = 1;
    }

    else
    {
      v33 = v32;
    }

    if (v14 > 0xFF)
    {
      v34 = 1024;
      if (v14 < 0x400)
      {
        v34 = v14;
      }

      v24 = v34 >> 2;
    }

    else
    {
      if (v14 > v24)
      {
        v24 = v14;
      }

      *v76 = v14;
      objc_msgSend_setBytes_length_atIndex_(encoder, v30, v76, 4, 1, v31, textureCopy);
    }

    objc_msgSend_setBuffer_offset_atIndex_(encoder, v30, histogram, offset, 0, v31, textureCopy);
    *v76 = v33;
    *&v76[8] = vdupq_n_s64(1uLL);
    v81 = v24;
    v82 = *&v76[8];
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v35, v76, &v81, v36, v37);
  }

  else
  {
    v15 = *MEMORY[0x277CD7370];
  }

  if (self->histogramEntries == 256)
  {
    v38 = 5;
  }

  else
  {
    v38 = 0;
  }

  v39 = *(&self->super.super.isa + v15);
  v40 = v38 + style;
  v41 = MPSLibrary::GetComputeState();
  if (v41)
  {
    objc_msgSend_setComputePipelineState_(encoder, v42, v41, v43, v44, v45);
    v46 = *(&self->super.super.isa + v15);
    MPSLibrary::ReleaseComputeState();
    v50 = *(*((*(&self->super.super.isa + v15))[35] + 16 * v40) + 64);
    if (v50 == 2 || v50 == 4)
    {
      v52 = 5;
      v53 = 31;
    }

    else
    {
      v52 = 4;
      v53 = 15;
    }

    v54 = *self->maxPixelValue;
    *v76 = *self->minPixelValue;
    *&v76[16] = v54;
    v55 = vmovn_s64(*&extent->var0.var0);
    var1 = extent->var1.var1;
    *&v54 = vmovn_s64(*&extent->var1.var0);
    var0 = extent->var1.var0;
    v80 = 0;
    v78 = v55.u16[2];
    v77 = v55.i16[0];
    v58 = (var0 + v53) >> v52;
    v59 = (var1 + v53) >> v52;
    v79 = WORD2(v54);
    histogramEntries = self->histogramEntries;
    HIWORD(v78) = v54;
    *&v80 = (histogramEntries - 1);
    WORD2(v80) = histogramEntries;
    objc_msgSend_setTexture_atIndex_(encoder, v47, textureCopy, 0, v48, v49, textureCopy);
    objc_msgSend_setTexture_atIndex_(encoder, v61, minmaxTexture, 1, v62, v63);
    if ((v50 - 3) <= 1)
    {
      if ((style - 1) >= 4)
      {
        objc_msgSend_setThreadgroupMemoryLength_atIndex_(encoder, v64, 0, 0, v65, v66);
      }

      else
      {
        objc_msgSend_setThreadgroupMemoryLength_atIndex_(encoder, v64, ((style - 1) << 10) + 1024, 0, v65, v66);
      }
    }

    objc_msgSend_setBuffer_offset_atIndex_(encoder, v64, histogram, offset, 0, v66);
    objc_msgSend_setBytes_length_atIndex_(encoder, v67, v76, 48, 1, v68);
    v81 = v58;
    *&v82 = v59;
    *(&v82 + 1) = 1;
    v74 = vdupq_n_s64(0x10uLL);
    v75 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v69, &v81, &v74, v70, v71);
  }
}

- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceTexture:(id)texture minmaxTexture:(id)minmaxTexture histogram:(id)histogram histogramOffset:(unint64_t)offset
{
  offsetCopy2 = offset;
  histogramCopy2 = histogram;
  minmaxTextureCopy2 = minmaxTexture;
  bufferCopy2 = buffer;
  v14 = *MEMORY[0x277CD7350];
  v15 = *MEMORY[0x277CD7378];
  v16 = *(&self->super.super.isa + v15);
  if ((v16 & 1) == 0)
  {
    v19 = *(&self->super.super.isa + v14);
    v20 = objc_msgSend_pixelFormat(0, a2, encoder, buffer, texture, minmaxTexture);
    v26 = objc_msgSend_pixelFormat(texture, v21, v22, v23, v24, v25);
    MPSDevice::GetPixelInfo(v19, v20, MPSImageFeatureChannelFormatNone);
    PixelInfo = MPSDevice::GetPixelInfo(v19, v26, MPSImageFeatureChannelFormatNone);
    if (!texture && MTLReportFailureTypeEnabled())
    {
      v105 = objc_opt_class();
      textureCopy2 = NSStringFromClass(v105);
      MTLReportFailure();
    }

    v33 = v16 & 0xFFFFFFFFFFFFFFE2;
    if (v33 && MTLReportFailureTypeEnabled())
    {
      v106 = objc_opt_class();
      textureCopy2 = NSStringFromClass(v106);
      v114 = v33;
      MTLReportFailure();
    }

    objc_msgSend_textureType(texture, v27, v28, v29, v30, v31, textureCopy2, v114);
    minmaxTextureCopy2 = minmaxTexture;
    if (objc_msgSend_textureType(texture, v34, v35, v36, v37, v38) != 2 && MTLReportFailureTypeEnabled())
    {
      textureCopy2 = texture;
      MTLReportFailure();
    }

    v39 = ~PixelInfo;
    offsetCopy2 = offset;
    histogramCopy2 = histogram;
    bufferCopy2 = buffer;
    if ((v39 & 0xF000000) == 0 && MTLReportFailureTypeEnabled())
    {
      textureCopy2 = texture;
      v114 = v26;
      MTLReportFailure();
    }
  }

  if (texture && (objc_msgSend_isEqual_(texture, a2, 0, buffer, texture, minmaxTexture) & 1) == 0)
  {
    if (!histogramCopy2 && (*(&self->super.super.isa + v15) & 1) == 0 && MTLReportFailureTypeEnabled())
    {
      v107 = objc_opt_class();
      textureCopy2 = NSStringFromClass(v107);
      MTLReportFailure();
    }

    memset(&v122, 0, sizeof(v122));
    v121.width = objc_msgSend_width(texture, v40, v41, v42, v43, v44, textureCopy2, v114);
    v121.height = objc_msgSend_height(texture, v45, v46, v47, v48, v49);
    v121.depth = 1;
    v50 = *&self->_clipRectSource.origin.z;
    *&v120.origin.x = *&self->_clipRectSource.origin.x;
    *&v120.origin.z = v50;
    *&v120.size.height = *&self->_clipRectSource.size.height;
    MPSGetEffectiveClipRegion(&v122, &v121, &v120);
    v51 = *(&self->super.super.isa + v14);
    v57 = objc_msgSend_pixelFormat(texture, v52, v53, v54, v55, v56);
    v63 = (MPSDevice::GetPixelInfo(v51, v57, MPSImageFeatureChannelFormatNone) >> 24) & 0xF;
    if ((*(&self->super.super.isa + v15) & 1) == 0)
    {
      v64 = v63 == 15 || v63 == 0;
      if (v64 && MTLReportFailureTypeEnabled())
      {
        textureCopy3 = texture;
        MTLReportFailure();
      }

      if ((self->histogramEntries & (self->histogramEntries - 1)) != 0 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      objc_msgSend_width(texture, v58, v59, v60, v61, v62, textureCopy3);
      v65 = v122.size.width + v122.origin.x;
      if (v65 > objc_msgSend_width(texture, v66, v67, v68, v69, v70) && MTLReportFailureTypeEnabled())
      {
        v113 = v122.size.width + v122.origin.x;
        v115 = objc_msgSend_width(texture, v71, v72, v73, v74, v75);
        MTLReportFailure();
      }

      objc_msgSend_height(texture, v71, v72, v73, v74, v75, v113, v115);
      v76 = v122.size.height + v122.origin.y;
      if (v76 > objc_msgSend_height(texture, v77, v78, v79, v80, v81) && MTLReportFailureTypeEnabled())
      {
        textureCopy3 = (v122.size.height + v122.origin.y);
        v115 = objc_msgSend_height(texture, v58, v108, v109, v110, v62);
        MTLReportFailure();
      }
    }

    if (v122.size.height && v122.size.width)
    {
      if (v63 == 4)
      {
        if (self->histogramAlpha)
        {
          v63 = 4;
        }

        else
        {
          v63 = 3;
        }
      }

      objc_msgSend_encodeToCommandBuffer_sourceTexture_destinationTexture_(self->_minmaxFilter, v58, bufferCopy2, texture, minmaxTextureCopy2, v62, textureCopy3, v115);
      if (encoder)
      {
        v120 = v122;
        LODWORD(v116) = v63;
        objc_msgSend_encodeInternalToCommandEncoder_commandBuffer_sourceTexture_minmaxTexture_histogram_histogramOffset_inputExtent_srcStyle_(self, v82, encoder, bufferCopy2, texture, minmaxTextureCopy2, histogramCopy2, offsetCopy2, &v120, v116);
      }

      else
      {
        v83 = objc_alloc(MEMORY[0x277CD7210]);
        v84 = bufferCopy2;
        v92 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v83, v85, bufferCopy2, 0, v86, v87);
        v121.width = v92;
        v121.height = self;
        if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
        {
          v93 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
          if (v93 || (v94 = objc_opt_class(), v95 = NSStringFromClass(v94), objc_msgSend_setLabel_(self, v96, v95, v97, v98, v99), (v93 = v95) != 0))
          {
            objc_msgSend_setLabel_(v92, v88, v93, v89, v90, v91);
          }
        }

        v120 = v122;
        LODWORD(v116) = v63;
        objc_msgSend_encodeInternalToCommandEncoder_commandBuffer_sourceTexture_minmaxTexture_histogram_histogramOffset_inputExtent_srcStyle_(self, v88, v92, v84, texture, minmaxTextureCopy2, histogramCopy2, offsetCopy2, &v120, v116);
        objc_msgSend_endEncoding(v92, v100, v101, v102, v103, v104);
      }
    }
  }
}

- (MTLRegion)clipRectSource
{
  v3 = *&self[3].size.width;
  *&retstr->origin.x = *&self[3].origin.y;
  *&retstr->origin.z = v3;
  *&retstr->size.height = *&self[3].size.depth;
  return self;
}

- (void)setClipRectSource:(MTLRegion *)clipRectSource
{
  v4 = *&clipRectSource->origin.z;
  v3 = *&clipRectSource->size.height;
  *&self->_clipRectSource.origin.x = *&clipRectSource->origin.x;
  *&self->_clipRectSource.origin.z = v4;
  *&self->_clipRectSource.size.height = v3;
}

@end