@interface MPSImageHistogram
- (MPSImageHistogram)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSImageHistogram)initWithDevice:(id)device;
- (MPSImageHistogram)initWithDevice:(id)device histogramInfo:(const MPSImageHistogramInfo *)histogramInfo;
- (MPSImageHistogramInfo)histogramInfo;
- (MTLRegion)clipRectSource;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (size_t)histogramSizeForSourceFormat:(MTLPixelFormat)sourceFormat;
- (void)encodeInternalToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceTextures:(id)textures histogram:(id)histogram histogramOffset:(unint64_t)offset kernelDAGObject:(id)object inputExtent:(id *)extent srcStyle:(int)self0;
- (void)encodeToCommandBuffer:(id)commandBuffer sourceTexture:(id)source histogram:(id)histogram histogramOffset:(NSUInteger)histogramOffset;
- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceTexture:(id)texture histogram:(id)histogram histogramOffset:(unint64_t)offset;
- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sources:(id)sources histogram:(id)histogram histogramOffset:(unint64_t)offset kernelDAGObject:(id)object;
- (void)encodeWithCoder:(id)coder;
- (void)setClipRectSource:(MTLRegion *)clipRectSource;
@end

@implementation MPSImageHistogram

- (MPSImageHistogram)initWithDevice:(id)device
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

- (MPSImageHistogram)initWithDevice:(id)device histogramInfo:(const MPSImageHistogramInfo *)histogramInfo
{
  v17.receiver = self;
  v17.super_class = MPSImageHistogram;
  result = [(MPSKernel *)&v17 initWithDevice:device];
  if (!result)
  {
    return result;
  }

  if (!histogramInfo)
  {
    v15 = result;
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if ((histogramInfo->numberOfHistogramEntries & (histogramInfo->numberOfHistogramEntries - 1)) != 0)
  {
    v15 = result;
    if (MTLReportFailureTypeEnabled())
    {
LABEL_13:
      v16 = objc_opt_class();
      NSStringFromClass(v16);
      MTLReportFailure();
    }

LABEL_14:

    return 0;
  }

  result->histogramEntries = histogramInfo->numberOfHistogramEntries;
  result->histogramAlpha = histogramInfo->histogramForAlpha;
  *result->minPixelValue = histogramInfo->minPixelValue;
  maxPixelValue = histogramInfo->maxPixelValue;
  *result->maxPixelValue = maxPixelValue;
  __asm { FMOV            V2.4S, #1.0 }

  v12 = (vmaxv_u8(vmovn_s16(vmvnq_s8(vuzp1q_s16(vceqzq_f32(*result->minPixelValue), vceqq_f32(maxPixelValue, _Q2))))) & 1) != 0 || result->histogramEntries >= 0x401;
  result->useMinMaxHistogramKernel = v12;
  v13 = *MEMORY[0x277CD7200];
  v14 = *(MEMORY[0x277CD7200] + 32);
  *&result->_clipRectSource.origin.z = *(MEMORY[0x277CD7200] + 16);
  *&result->_clipRectSource.size.height = v14;
  *&result->_clipRectSource.origin.x = v13;
  result->_zeroHistogram = 1;
  *&result->_minPixelThresholdValue[7] = 0;
  *&result->_minPixelThresholdValue[15] = 0;
  result->_histogramAtomicType = 0;
  return result;
}

- (MPSImageHistogram)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v112.receiver = self;
  v112.super_class = MPSImageHistogram;
  v5 = [(MPSKernel *)&v112 initWithCoder:aDecoder device:device];
  v10 = v5;
  if (v5)
  {
    if (*(&v5->super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
    {
      v5->histogramEntries = objc_msgSend_decodeInt64ForKey_(aDecoder, v6, @"MPSImageHistogram.histogramEntries", v7, v8, v9);
      v10->histogramAlpha = objc_msgSend_decodeBoolForKey_(aDecoder, v11, @"MPSImageHistogram.histogramAlpha", v12, v13, v14);
      objc_msgSend_decodeFloatForKey_(aDecoder, v15, @"MPSImageHistogram.minPixelValueX", v16, v17, v18);
      *v10->minPixelValue = v19;
      objc_msgSend_decodeFloatForKey_(aDecoder, v20, @"MPSImageHistogram.minPixelValueY", v21, v22, v23);
      *&v10->minPixelValue[4] = v24;
      objc_msgSend_decodeFloatForKey_(aDecoder, v25, @"MPSImageHistogram.minPixelValueZ", v26, v27, v28);
      *&v10->minPixelValue[8] = v29;
      objc_msgSend_decodeFloatForKey_(aDecoder, v30, @"MPSImageHistogram.minPixelValueW", v31, v32, v33);
      *&v10->minPixelValue[12] = v34;
      objc_msgSend_decodeFloatForKey_(aDecoder, v35, @"MPSImageHistogram.maxPixelValueX", v36, v37, v38);
      *v10->maxPixelValue = v39;
      objc_msgSend_decodeFloatForKey_(aDecoder, v40, @"MPSImageHistogram.maxPixelValueY", v41, v42, v43);
      *&v10->maxPixelValue[4] = v44;
      objc_msgSend_decodeFloatForKey_(aDecoder, v45, @"MPSImageHistogram.maxPixelValueZ", v46, v47, v48);
      *&v10->maxPixelValue[8] = v49;
      objc_msgSend_decodeFloatForKey_(aDecoder, v50, @"MPSImageHistogram.maxPixelValueW", v51, v52, v53);
      v58 = *v10->maxPixelValue;
      *&v10->maxPixelValue[12] = v59;
      v58.i32[3] = v59;
      __asm { FMOV            V0.4S, #1.0 }

      v65 = (vmaxv_u8(vmovn_s16(vmvnq_s8(vuzp1q_s16(vceqzq_f32(*v10->minPixelValue), vceqq_f32(v58, _Q0))))) & 1) != 0 || v10->histogramEntries != 256;
      v10->useMinMaxHistogramKernel = v65;
      v10->_clipRectSource.origin.x = objc_msgSend_decodeInt64ForKey_(aDecoder, v54, @"MPSImageHistogram.clipRectSource.origin.x", v55, v56, v57);
      v10->_clipRectSource.origin.y = objc_msgSend_decodeInt64ForKey_(aDecoder, v67, @"MPSImageHistogram.clipRectSource.origin.y", v68, v69, v70);
      v10->_clipRectSource.origin.z = objc_msgSend_decodeInt64ForKey_(aDecoder, v71, @"MPSImageHistogram.clipRectSource.origin.z", v72, v73, v74);
      v10->_clipRectSource.size.width = objc_msgSend_decodeInt64ForKey_(aDecoder, v75, @"MPSImageHistogram.clipRectSource.size.width", v76, v77, v78);
      v10->_clipRectSource.size.height = objc_msgSend_decodeInt64ForKey_(aDecoder, v79, @"MPSImageHistogram.clipRectSource.size.height", v80, v81, v82);
      v10->_clipRectSource.size.depth = objc_msgSend_decodeInt64ForKey_(aDecoder, v83, @"MPSImageHistogram.clipRectSource.size.depth", v84, v85, v86);
      v10->_zeroHistogram = objc_msgSend_decodeBoolForKey_(aDecoder, v87, @"MPSImageHistogram.zeroHistogram", v88, v89, v90);
      objc_msgSend_decodeFloatForKey_(aDecoder, v91, @"MPSImageHistogram.minPixelThresholdValueX", v92, v93, v94);
      *&v10->_minPixelThresholdValue[7] = v95;
      objc_msgSend_decodeFloatForKey_(aDecoder, v96, @"MPSImageHistogram.minPixelThresholdValueY", v97, v98, v99);
      *&v10->_minPixelThresholdValue[11] = v100;
      objc_msgSend_decodeFloatForKey_(aDecoder, v101, @"MPSImageHistogram.minPixelThresholdValueZ", v102, v103, v104);
      *&v10->_minPixelThresholdValue[15] = v105;
      objc_msgSend_decodeFloatForKey_(aDecoder, v106, @"MPSImageHistogram.minPixelThresholdValueW", v107, v108, v109);
      *&v10->_minPixelThresholdValue[19] = v110;
      v10->_histogramAtomicType = 0;
    }

    else
    {
      if (MTLReportFailureTypeEnabled())
      {
        v66 = objc_opt_class();
        NSStringFromClass(v66);
        MTLReportFailure();
      }

      return 0;
    }
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  *(&self->super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v92.receiver = self;
  v92.super_class = MPSImageHistogram;
  [(MPSKernel *)&v92 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(coder, v5, selfCopy->histogramEntries, @"MPSImageHistogram.histogramEntries", v6, v7);
  objc_msgSend_encodeBool_forKey_(coder, v8, selfCopy->histogramAlpha, @"MPSImageHistogram.histogramAlpha", v9, v10);
  LODWORD(v11) = *selfCopy->minPixelValue;
  objc_msgSend_encodeFloat_forKey_(coder, v12, @"MPSImageHistogram.minPixelValueX", v13, v14, v15, v11);
  LODWORD(v16) = *&selfCopy->minPixelValue[4];
  objc_msgSend_encodeFloat_forKey_(coder, v17, @"MPSImageHistogram.minPixelValueY", v18, v19, v20, v16);
  LODWORD(v21) = *&selfCopy->minPixelValue[8];
  objc_msgSend_encodeFloat_forKey_(coder, v22, @"MPSImageHistogram.minPixelValueZ", v23, v24, v25, v21);
  LODWORD(v26) = *&selfCopy->minPixelValue[12];
  objc_msgSend_encodeFloat_forKey_(coder, v27, @"MPSImageHistogram.minPixelValueW", v28, v29, v30, v26);
  LODWORD(v31) = *selfCopy->maxPixelValue;
  objc_msgSend_encodeFloat_forKey_(coder, v32, @"MPSImageHistogram.maxPixelValueX", v33, v34, v35, v31);
  LODWORD(v36) = *&selfCopy->maxPixelValue[4];
  objc_msgSend_encodeFloat_forKey_(coder, v37, @"MPSImageHistogram.maxPixelValueY", v38, v39, v40, v36);
  LODWORD(v41) = *&selfCopy->maxPixelValue[8];
  objc_msgSend_encodeFloat_forKey_(coder, v42, @"MPSImageHistogram.maxPixelValueZ", v43, v44, v45, v41);
  LODWORD(v46) = *&selfCopy->maxPixelValue[12];
  objc_msgSend_encodeFloat_forKey_(coder, v47, @"MPSImageHistogram.maxPixelValueW", v48, v49, v50, v46);
  objc_msgSend_encodeInt64_forKey_(coder, v51, selfCopy->_clipRectSource.origin.x, @"MPSImageHistogram.clipRectSource.origin.x", v52, v53);
  objc_msgSend_encodeInt64_forKey_(coder, v54, selfCopy->_clipRectSource.origin.y, @"MPSImageHistogram.clipRectSource.origin.y", v55, v56);
  objc_msgSend_encodeInt64_forKey_(coder, v57, selfCopy->_clipRectSource.origin.z, @"MPSImageHistogram.clipRectSource.origin.z", v58, v59);
  objc_msgSend_encodeInt64_forKey_(coder, v60, selfCopy->_clipRectSource.size.width, @"MPSImageHistogram.clipRectSource.size.width", v61, v62);
  objc_msgSend_encodeInt64_forKey_(coder, v63, selfCopy->_clipRectSource.size.height, @"MPSImageHistogram.clipRectSource.size.height", v64, v65);
  objc_msgSend_encodeInt64_forKey_(coder, v66, selfCopy->_clipRectSource.size.depth, @"MPSImageHistogram.clipRectSource.size.depth", v67, v68);
  objc_msgSend_encodeBool_forKey_(coder, v69, selfCopy->_zeroHistogram, @"MPSImageHistogram.zeroHistogram", v70, v71);
  selfCopy = (selfCopy + 208);
  LODWORD(v72) = selfCopy->super.super.isa;
  objc_msgSend_encodeFloat_forKey_(coder, v73, @"MPSImageHistogram.minPixelThresholdValueX", v74, v75, v76, v72);
  LODWORD(v77) = HIDWORD(selfCopy->super.super.isa);
  objc_msgSend_encodeFloat_forKey_(coder, v78, @"MPSImageHistogram.minPixelThresholdValueY", v79, v80, v81, v77);
  LODWORD(v82) = selfCopy->super._options;
  objc_msgSend_encodeFloat_forKey_(coder, v83, @"MPSImageHistogram.minPixelThresholdValueZ", v84, v85, v86, v82);
  LODWORD(v87) = HIDWORD(selfCopy->super._options);
  objc_msgSend_encodeFloat_forKey_(coder, v88, @"MPSImageHistogram.minPixelThresholdValueW", v89, v90, v91, v87);
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v8.receiver = self;
  v8.super_class = MPSImageHistogram;
  result = [(MPSKernel *)&v8 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 11) = self->histogramEntries;
    *(result + 96) = self->histogramAlpha;
    *(result + 7) = *self->minPixelValue;
    *(result + 8) = *self->maxPixelValue;
    *(result + 144) = self->useMinMaxHistogramKernel;
    v7 = *&self->_clipRectSource.origin.z;
    v6 = *&self->_clipRectSource.size.height;
    *(result + 152) = *&self->_clipRectSource.origin.x;
    *(result + 168) = v7;
    *(result + 184) = v6;
    *(result + 200) = self->_zeroHistogram;
    *(result + 13) = *&self->_minPixelThresholdValue[7];
    *(result + 28) = self->_histogramAtomicType;
  }

  return result;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = MPSImageHistogram;
  v4 = [(MPSKernel *)&v10 debugDescription];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tHistogram Entries:  %lu\n\tHistogram for Alpha: %d \n\tminPixelValue: %f %f %f %f\n\tmaxPixelValue: %f %f %f %f", v6, v7, v8, v4, self->histogramEntries, self->histogramAlpha, COERCE_FLOAT(*self->minPixelValue), COERCE_FLOAT(HIDWORD(*self->minPixelValue)), COERCE_FLOAT(*&self->minPixelValue[8]), COERCE_FLOAT(HIDWORD(*self->minPixelValue)), COERCE_FLOAT(*self->maxPixelValue), COERCE_FLOAT(HIDWORD(*self->maxPixelValue)), COERCE_FLOAT(*&self->maxPixelValue[8]), COERCE_FLOAT(HIDWORD(*self->maxPixelValue)));
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

- (void)encodeInternalToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceTextures:(id)textures histogram:(id)histogram histogramOffset:(unint64_t)offset kernelDAGObject:(id)object inputExtent:(id *)extent srcStyle:(int)self0
{
  v13 = MEMORY[0x277CD7370];
  if (self->_zeroHistogram)
  {
    v14 = self->histogramEntries * dword_239988CF0[style];
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
      v35 = 1024;
      if (v14 < 0x400)
      {
        v35 = v14;
      }

      v34 = v35 >> 2;
    }

    else
    {
      if (v14 <= v24)
      {
        v34 = v24;
      }

      else
      {
        v34 = v14;
      }

      *v106 = v14;
      objc_msgSend_setBytes_length_atIndex_(encoder, v30, v106, 4, 1, v31);
    }

    objc_msgSend_setBuffer_offset_atIndex_(encoder, v30, histogram, offset, 0, v31);
    *v106 = v33;
    *&v106[8] = vdupq_n_s64(1uLL);
    v111 = v34;
    v112 = *&v106[8];
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v36, v106, &v111, v37, v38);
  }

  v39 = 0;
  v40 = *&self->_minPixelThresholdValue[7];
  if (*v40.i32 > 0.0)
  {
    v41 = vcgtz_f32(vext_s8(*v40.i8, *&vextq_s8(v40, v40, 8uLL), 4uLL));
    if (v41.i8[0] & 1) != 0 && (v41.i8[4])
    {
      v39 = *&v40.i32[3] > 0.0;
    }
  }

  if (self->useMinMaxHistogramKernel)
  {
    v42 = 0;
    if (v39)
    {
      v43 = 25;
    }

    else
    {
      v43 = 20;
    }
  }

  else
  {
    histogramAtomicType = self->_histogramAtomicType;
    if (!histogramAtomicType)
    {
      v45 = *(&self->super.super.isa + *MEMORY[0x277CD7350]);
      if ((*(v45 + 1477) & 4) != 0 && *(v45 + 1472) < 7)
      {
        histogramAtomicType = 1;
      }

      else
      {
        histogramAtomicType = 2;
      }
    }

    v46 = !v39;
    if (v39)
    {
      v47 = 5;
    }

    else
    {
      v47 = 0;
    }

    if (v46)
    {
      v48 = 10;
    }

    else
    {
      v48 = 15;
    }

    v42 = histogramAtomicType != 1;
    if (histogramAtomicType == 1)
    {
      v43 = v47;
    }

    else
    {
      v43 = v48;
    }
  }

  v109 = -1;
  *&v49 = -1;
  *(&v49 + 1) = -1;
  v107 = v49;
  v108 = v49;
  *v106 = v49;
  *&v106[16] = 0xFFFFFFFFFFFFFFFFLL;
  if (object)
  {
    v109 = *(objc_msgSend_graph(object, a2, encoder, buffer, textures, histogram) + 72);
    v55 = *(objc_msgSend_graph(object, v50, v51, v52, v53, v54) + 76);
    v56 = 128;
    if (style == 4)
    {
      v56 = 384;
    }

    v57 = (v43 + style);
    v110 = v56 & 0xFFFFFFFFFFFFFF81 | (2 * (v55 & 0x3F)) | 1;
    if (v42)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v109 = 1;
    v57 = (v43 + style);
    v110 = 256;
    if (v42)
    {
LABEL_43:
      v58 = ~(__clz(self->histogramEntries) << 59) & 0x7800000000000000;
    }
  }

  v59 = *v13;
  objc_msgSend_copy(**((*(&self->super.super.isa + v59))[35] + 16 * v57), a2, encoder, buffer, textures, histogram);
  MPSLibrary::CreateUberShaderKey();
  v60 = *(&self->super.super.isa + v59);
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  if (!PipelineStateForMPSKey)
  {
    return;
  }

  objc_msgSend_setComputePipelineState_(encoder, v62, PipelineStateForMPSKey, v63, v64, v65, object, 0, 0, 0, 0);
  v66 = *(&self->super.super.isa + v59);
  MPSLibrary::ReleaseComputeState();
  if (v57 >= 0x20 && MTLReportFailureTypeEnabled())
  {
    styleCopy = style;
    v100 = 32;
    v98 = v43;
    MTLReportFailure();
  }

  v72 = *(*((*(&self->super.super.isa + v59))[35] + 16 * v57) + 64);
  v73 = v72 - 2;
  if ((v72 - 2) > 3)
  {
    LOBYTE(v75) = 4;
    v74 = 15;
  }

  else
  {
    v74 = qword_239988D58[v73];
    v75 = qword_239988D78[v73];
  }

  v76 = 0;
  v77 = *self->minPixelValue;
  histogramEntries = self->histogramEntries;
  *v71.i32 = histogramEntries;
  v79 = vdivq_f32(vdupq_lane_s32(v71, 0), vsubq_f32(*self->maxPixelValue, v77));
  v108 = 0uLL;
  *v106 = v77;
  *&v106[16] = v79;
  v107 = *&self->_minPixelThresholdValue[7];
  *v79.f32 = vmovn_s64(*&extent->var0.var0);
  WORD1(v108) = v79.i16[2];
  LOWORD(v108) = v79.i16[0];
  var1 = extent->var1.var1;
  *v77.f32 = vmovn_s64(*&extent->var1.var0);
  var0 = extent->var1.var0;
  WORD3(v108) = v77.i16[2];
  WORD2(v108) = v77.i16[0];
  *(&v108 + 2) = (histogramEntries - 1);
  WORD6(v108) = histogramEntries;
  if (style > 2)
  {
    if (style != 3)
    {
      if (style == 4)
      {
        v76 = 16 * histogramEntries;
      }

LABEL_58:
      v82 = var0 + v74;
      v83 = var1 + v74;
      if (!object)
      {
        goto LABEL_65;
      }

      goto LABEL_59;
    }

    histogramEntries *= 3;
LABEL_64:
    v76 = 4 * histogramEntries;
    v82 = var0 + v74;
    v83 = var1 + v74;
    if (!object)
    {
      goto LABEL_65;
    }

    goto LABEL_59;
  }

  if (style == 1)
  {
    goto LABEL_64;
  }

  if (style != 2)
  {
    goto LABEL_58;
  }

  v76 = 8 * histogramEntries;
  v82 = var0 + v74;
  v83 = var1 + v74;
  if (!object)
  {
LABEL_65:
    v94 = objc_msgSend_objectAtIndexedSubscript_(textures, v67, 0, v68, v69, v70, v98, styleCopy, v100);
    objc_msgSend_setTexture_atIndex_(encoder, v95, v94, 1, v96, v97);
    v87 = v82 >> v75;
    v88 = v83 >> v75;
    if ((v72 - 3) > 2)
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

LABEL_59:
  MPSSetResourcesOnCommandEncoder();
  v87 = v82 >> v75;
  v88 = v83 >> v75;
  if ((v72 - 3) <= 2)
  {
LABEL_60:
    objc_msgSend_setThreadgroupMemoryLength_atIndex_(encoder, v84, v76, 0, v85, v86, v98, styleCopy, v100);
  }

LABEL_61:
  objc_msgSend_setBuffer_offset_atIndex_(encoder, v84, histogram, offset, 29, v86, v98, styleCopy, v100);
  objc_msgSend_setBytes_length_atIndex_(encoder, v89, v106, 64, 28, v90);
  v111 = v87;
  *&v112 = v88;
  *(&v112 + 1) = 1;
  v104 = vdupq_n_s64(0x10uLL);
  v105 = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v91, &v111, &v104, v92, v93);
}

- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sources:(id)sources histogram:(id)histogram histogramOffset:(unint64_t)offset kernelDAGObject:(id)object
{
  v12 = MEMORY[0x277CD7378];
  if (object)
  {
    v13 = 0;
    v14 = *MEMORY[0x277CD7378];
LABEL_3:
    if (!histogram && (*(&self->super.super.isa + v14) & 1) == 0 && MTLReportFailureTypeEnabled())
    {
      v82 = objc_opt_class();
      v85 = NSStringFromClass(v82);
      MTLReportFailure();
    }

    if (object)
    {
      v15 = objc_msgSend_graph(object, a2, encoder, buffer, sources, histogram);
      v16 = **(***(v15 + 56) + 8);
      if (*(*(***(v15 + 56) + 8) + 8) != v16)
      {
        if ((*(*(*v16 + 16) + 8) - **(*v16 + 16)) >= 0)
        {
          operator new();
        }

        sub_239955CF4();
      }

      sub_239955C4C();
    }

    v42 = objc_msgSend_width(v13, a2, encoder, buffer, sources, histogram);
    v48 = objc_msgSend_height(v13, v43, v44, v45, v46, v47);
    v49 = *(&self->super.super.isa + *MEMORY[0x277CD7350]);
    v55 = objc_msgSend_pixelFormat(v13, v50, v51, v52, v53, v54);
    v56 = (MPSDevice::GetPixelInfo(v49, v55, MPSImageFeatureChannelFormatNone) >> 24) & 0xF;
    memset(&v92, 0, sizeof(v92));
    v91.width = v42;
    v91.height = v48;
    v91.depth = 1;
    v57 = *&self->_clipRectSource.origin.z;
    *&v90.origin.x = *&self->_clipRectSource.origin.x;
    *&v90.origin.z = v57;
    *&v90.size.height = *&self->_clipRectSource.size.height;
    MPSGetEffectiveClipRegion(&v92, &v91, &v90);
    if ((*(&self->super.super.isa + v14) & 1) == 0)
    {
      v59 = v56 == 15 || v56 == 0;
      if (v59 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if ((self->histogramEntries & (self->histogramEntries - 1)) != 0 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (v92.size.width + v92.origin.x > v42 && MTLReportFailureTypeEnabled())
      {
        v85 = (v92.size.width + v92.origin.x);
        v86 = v42;
        MTLReportFailure();
      }

      if (v92.size.height + v92.origin.y > v48 && MTLReportFailureTypeEnabled())
      {
        v85 = (v92.size.height + v92.origin.y);
        v86 = v48;
        MTLReportFailure();
      }
    }

    if (v92.size.height && v92.size.width)
    {
      if (v56 == 4)
      {
        if (self->histogramAlpha)
        {
          v56 = 4;
        }

        else
        {
          v56 = 3;
        }
      }

      bufferCopy = buffer;
      if (encoder)
      {
        v90 = v92;
        LODWORD(v86) = v56;
        objc_msgSend_encodeInternalToCommandEncoder_commandBuffer_sourceTextures_histogram_histogramOffset_kernelDAGObject_inputExtent_srcStyle_(self, v58, encoder, buffer, sources, histogram, offset, 0, &v90, v86);
      }

      else
      {
        v61 = objc_alloc(MEMORY[0x277CD7210]);
        v69 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v61, v62, buffer, 0, v63, v64);
        v91.width = v69;
        v91.height = self;
        if ((*(&self->super.super.isa + v14) & 0x18) != 0)
        {
          v70 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
          if (v70 || (v71 = objc_opt_class(), v72 = NSStringFromClass(v71), objc_msgSend_setLabel_(self, v73, v72, v74, v75, v76), (v70 = v72) != 0))
          {
            objc_msgSend_setLabel_(v69, v65, v70, v66, v67, v68, v85, v86);
          }
        }

        v90 = v92;
        LODWORD(v86) = v56;
        objc_msgSend_encodeInternalToCommandEncoder_commandBuffer_sourceTextures_histogram_histogramOffset_kernelDAGObject_inputExtent_srcStyle_(self, v65, v69, bufferCopy, sources, histogram, offset, 0, &v90, v86);
        objc_msgSend_endEncoding(v69, v77, v78, v79, v80, v81);
      }
    }

    return;
  }

  v13 = objc_msgSend_objectAtIndexedSubscript_(sources, a2, 0, buffer, sources, histogram);
  v14 = *v12;
  v22 = *(&self->super.super.isa + v14);
  if ((v22 & 1) == 0)
  {
    v23 = *(&self->super.super.isa + *MEMORY[0x277CD7350]);
    v24 = objc_msgSend_pixelFormat(0, v17, v18, v19, v20, v21);
    v30 = objc_msgSend_pixelFormat(v13, v25, v26, v27, v28, v29);
    MPSDevice::GetPixelInfo(v23, v24, MPSImageFeatureChannelFormatNone);
    PixelInfo = MPSDevice::GetPixelInfo(v23, v30, MPSImageFeatureChannelFormatNone);
    if (!v13 && MTLReportFailureTypeEnabled())
    {
      v83 = objc_opt_class();
      v85 = NSStringFromClass(v83);
      MTLReportFailure();
    }

    if ((v22 & 0xFFFFFFFFFFFFFFE0) != 0 && MTLReportFailureTypeEnabled())
    {
      v84 = objc_opt_class();
      v85 = NSStringFromClass(v84);
      v86 = v22 & 0xFFFFFFFFFFFFFFE0;
      MTLReportFailure();
    }

    objc_msgSend_textureType(v13, v31, v32, v33, v34, v35, v85, v86);
    if (objc_msgSend_textureType(v13, v37, v38, v39, v40, v41) != 2 && MTLReportFailureTypeEnabled())
    {
      v85 = v13;
      MTLReportFailure();
    }

    if ((~PixelInfo & 0xF000000) == 0 && MTLReportFailureTypeEnabled())
    {
      v85 = v13;
      v86 = v30;
      MTLReportFailure();
    }
  }

  if (v13 && (objc_msgSend_isEqual_(v13, v17, 0, v19, v20, v21) & 1) == 0)
  {
    goto LABEL_3;
  }
}

- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceTexture:(id)texture histogram:(id)histogram histogramOffset:(unint64_t)offset
{
  v15[1] = *MEMORY[0x277D85DE8];
  v15[0] = texture;
  v12 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v15, 1, texture, histogram);
  objc_msgSend_encodeToCommandEncoder_commandBuffer_sources_histogram_histogramOffset_kernelDAGObject_(self, v13, encoder, buffer, v12, histogram, offset, 0);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)encodeToCommandBuffer:(id)commandBuffer sourceTexture:(id)source histogram:(id)histogram histogramOffset:(NSUInteger)histogramOffset
{
  v13[1] = *MEMORY[0x277D85DE8];
  v13[0] = source;
  v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v13, 1, histogram, histogramOffset);
  objc_msgSend_encodeToCommandEncoder_commandBuffer_sources_histogram_histogramOffset_kernelDAGObject_(self, v11, 0, commandBuffer, v10, histogram, histogramOffset, 0);
  v12 = *MEMORY[0x277D85DE8];
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