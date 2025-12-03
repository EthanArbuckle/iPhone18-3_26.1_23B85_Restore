@interface MPSImageHistogramSpecification
- (MPSImageHistogramInfo)histogramInfo;
- (MPSImageHistogramSpecification)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSImageHistogramSpecification)initWithDevice:(id)device;
- (MPSImageHistogramSpecification)initWithDevice:(id)device histogramInfo:(const MPSImageHistogramInfo *)histogramInfo;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (void)dealloc;
- (void)encodeTransformToCommandBuffer:(id)commandBuffer sourceTexture:(id)source sourceHistogram:(id)sourceHistogram sourceHistogramOffset:(NSUInteger)sourceHistogramOffset desiredHistogram:(id)desiredHistogram desiredHistogramOffset:(NSUInteger)desiredHistogramOffset;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSImageHistogramSpecification

- (MPSImageHistogramSpecification)initWithDevice:(id)device
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
  retstr->numberOfHistogramEntries = self[4].minPixelValue.u64[0];
  retstr->histogramForAlpha = self[4].minPixelValue.i8[8];
  v3 = *&self[5].numberOfHistogramEntries;
  retstr->minPixelValue = self[4].maxPixelValue;
  retstr->maxPixelValue = v3;
  return self;
}

- (MPSImageHistogramSpecification)initWithDevice:(id)device histogramInfo:(const MPSImageHistogramInfo *)histogramInfo
{
  v24.receiver = self;
  v24.super_class = MPSImageHistogramSpecification;
  result = [(MPSUnaryImageKernel *)&v24 initWithDevice:?];
  if (!result)
  {
    return result;
  }

  if (!histogramInfo)
  {
    v21 = result;
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  numberOfHistogramEntries = histogramInfo->numberOfHistogramEntries;
  if (histogramInfo->numberOfHistogramEntries <= 0xFF)
  {
    v21 = result;
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if ((numberOfHistogramEntries & (numberOfHistogramEntries - 1)) != 0)
  {
    v21 = result;
    if (MTLReportFailureTypeEnabled())
    {
LABEL_17:
      v22 = objc_opt_class();
      NSStringFromClass(v22);
      MTLReportFailure();
    }

LABEL_18:

    return 0;
  }

  result->super._encode = sub_23997F0E8;
  result->super._encodeData = result;
  result->histogramEntries = numberOfHistogramEntries;
  result->histogramAlpha = histogramInfo->histogramForAlpha;
  *&result->minPixelValue[7] = histogramInfo->minPixelValue;
  maxPixelValue = histogramInfo->maxPixelValue;
  *&result->maxPixelValue[7] = maxPixelValue;
  histogramEntries = result->histogramEntries;
  if (histogramEntries != 256)
  {
    goto LABEL_7;
  }

  __asm { FMOV            V2.4S, #1.0 }

  if ((vmaxv_u8(vmovn_s16(vmvnq_s8(vuzp1q_s16(vceqzq_f32(*&result->minPixelValue[7]), vceqq_f32(maxPixelValue, _Q2))))) & 1) == 0)
  {
    v18 = 1;
  }

  else
  {
LABEL_7:
    v18 = 0;
  }

  LOBYTE(result->specificationBuffer) = v18;
  v19 = result;
  v20 = objc_msgSend_newBufferWithLength_options_(device, v7, 16 * (3 * histogramEntries + (histogramEntries >> 8)), 0, v8, v9);
  *&v19->encodeTransform = v20;
  if (v20)
  {
    result = v19;
    LOBYTE(v19[1].super.super.super.isa) = 0;
  }

  else
  {
    if (MTLReportFailureTypeEnabled())
    {
      v23 = objc_opt_class();
      NSStringFromClass(v23);
      MTLReportFailure();
    }

    return 0;
  }

  return result;
}

- (MPSImageHistogramSpecification)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v70.receiver = self;
  v70.super_class = MPSImageHistogramSpecification;
  v6 = [MPSUnaryImageKernel initWithCoder:sel_initWithCoder_device_ device:?];
  v11 = v6;
  if (v6)
  {
    if (*(&v6->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
    {
      v6->super._encode = sub_23997F0E8;
      v6->super._encodeData = v6;
      v6->histogramEntries = objc_msgSend_decodeInt64ForKey_(aDecoder, v7, @"MPSImageHistogramSpecification.histogramEntries", v8, v9, v10);
      v11->histogramAlpha = objc_msgSend_decodeBoolForKey_(aDecoder, v12, @"MPSImageHistogramSpecification.histogramAlpha", v13, v14, v15);
      objc_msgSend_decodeFloatForKey_(aDecoder, v16, @"MPSImageHistogramSpecification.minPixelValueX", v17, v18, v19);
      *&v11->minPixelValue[7] = v20;
      objc_msgSend_decodeFloatForKey_(aDecoder, v21, @"MPSImageHistogramSpecification.minPixelValueY", v22, v23, v24);
      *&v11->minPixelValue[11] = v25;
      objc_msgSend_decodeFloatForKey_(aDecoder, v26, @"MPSImageHistogramSpecification.minPixelValueZ", v27, v28, v29);
      *&v11->minPixelValue[15] = v30;
      objc_msgSend_decodeFloatForKey_(aDecoder, v31, @"MPSImageHistogramSpecification.minPixelValueW", v32, v33, v34);
      *&v11->maxPixelValue[3] = v35;
      objc_msgSend_decodeFloatForKey_(aDecoder, v36, @"MPSImageHistogramSpecification.maxPixelValueX", v37, v38, v39);
      *&v11->maxPixelValue[7] = v40;
      objc_msgSend_decodeFloatForKey_(aDecoder, v41, @"MPSImageHistogramSpecification.maxPixelValueY", v42, v43, v44);
      *&v11->maxPixelValue[11] = v45;
      objc_msgSend_decodeFloatForKey_(aDecoder, v46, @"MPSImageHistogramSpecification.maxPixelValueZ", v47, v48, v49);
      *&v11->maxPixelValue[15] = v50;
      objc_msgSend_decodeFloatForKey_(aDecoder, v51, @"MPSImageHistogramSpecification.maxPixelValueW", v52, v53, v54);
      v59 = *&v11->maxPixelValue[7];
      *(&v11->optimized256BinsUseCase + 3) = v58;
      histogramEntries = v11->histogramEntries;
      if (histogramEntries <= 0xFF)
      {
        if (!MTLReportFailureTypeEnabled())
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }

      if ((histogramEntries & (histogramEntries - 1)) != 0)
      {
        if (!MTLReportFailureTypeEnabled())
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }

      if (histogramEntries != 256)
      {
        goto LABEL_8;
      }

      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqzq_f32(*&v11->minPixelValue[7])))))
      {
        goto LABEL_8;
      }

      v59.i32[3] = v58;
      __asm { FMOV            V0.4S, #1.0 }

      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(v59, _Q0)))))
      {
LABEL_8:
        v66 = 0;
      }

      else
      {
        v66 = 1;
      }

      LOBYTE(v11->specificationBuffer) = v66;
      v67 = objc_msgSend_newBufferWithLength_options_(device, v55, 16 * (3 * histogramEntries + (histogramEntries >> 8)), 0, v56, v57);
      *&v11->encodeTransform = v67;
      if (v67)
      {
        LOBYTE(v11[1].super.super.super.isa) = 0;
        return v11;
      }

      if (MTLReportFailureTypeEnabled())
      {
LABEL_12:
        v68 = objc_opt_class();
        NSStringFromClass(v68);
        MTLReportFailure();
      }
    }

    else if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_12;
    }

LABEL_13:

    return 0;
  }

  return v11;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = MPSImageHistogramSpecification;
  v4 = [(MPSUnaryImageKernel *)&v10 debugDescription];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tHistogram Entries:  %lu\n\tHistogram for Alpha: %d \n\tminPixelValue: %f %f %f %f\n\tmaxPixelValue: %f %f %f %f\n\tInternal Transform Buffer: %p", v6, v7, v8, v4, self->histogramEntries, self->histogramAlpha, COERCE_FLOAT(*&self->minPixelValue[7]), COERCE_FLOAT(HIDWORD(*&self->minPixelValue[7])), COERCE_FLOAT(*&self->minPixelValue[15]), COERCE_FLOAT(HIDWORD(*&self->minPixelValue[7])), COERCE_FLOAT(*&self->maxPixelValue[7]), COERCE_FLOAT(HIDWORD(*&self->maxPixelValue[7])), COERCE_FLOAT(*&self->maxPixelValue[15]), COERCE_FLOAT(HIDWORD(*&self->maxPixelValue[7])), *&self->encodeTransform);
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v51.receiver = self;
  v51.super_class = MPSImageHistogramSpecification;
  [(MPSUnaryImageKernel *)&v51 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(coder, v5, selfCopy->histogramEntries, @"MPSImageHistogramSpecification.histogramEntries", v6, v7);
  objc_msgSend_encodeBool_forKey_(coder, v8, selfCopy->histogramAlpha, @"MPSImageHistogramSpecification.histogramAlpha", v9, v10);
  LODWORD(v11) = *&selfCopy->minPixelValue[7];
  objc_msgSend_encodeFloat_forKey_(coder, v12, @"MPSImageHistogramSpecification.minPixelValueX", v13, v14, v15, v11);
  LODWORD(v16) = *&selfCopy->minPixelValue[11];
  objc_msgSend_encodeFloat_forKey_(coder, v17, @"MPSImageHistogramSpecification.minPixelValueY", v18, v19, v20, v16);
  LODWORD(v21) = *&selfCopy->minPixelValue[15];
  objc_msgSend_encodeFloat_forKey_(coder, v22, @"MPSImageHistogramSpecification.minPixelValueZ", v23, v24, v25, v21);
  LODWORD(v26) = *&selfCopy->maxPixelValue[3];
  objc_msgSend_encodeFloat_forKey_(coder, v27, @"MPSImageHistogramSpecification.minPixelValueW", v28, v29, v30, v26);
  selfCopy = (selfCopy + 240);
  LODWORD(v31) = selfCopy->super.super.super.isa;
  objc_msgSend_encodeFloat_forKey_(coder, v32, @"MPSImageHistogramSpecification.maxPixelValueX", v33, v34, v35, v31);
  LODWORD(v36) = HIDWORD(selfCopy->super.super.super.isa);
  objc_msgSend_encodeFloat_forKey_(coder, v37, @"MPSImageHistogramSpecification.maxPixelValueY", v38, v39, v40, v36);
  LODWORD(v41) = selfCopy->super.super._options;
  objc_msgSend_encodeFloat_forKey_(coder, v42, @"MPSImageHistogramSpecification.maxPixelValueZ", v43, v44, v45, v41);
  LODWORD(v46) = HIDWORD(selfCopy->super.super._options);
  objc_msgSend_encodeFloat_forKey_(coder, v47, @"MPSImageHistogramSpecification.maxPixelValueW", v48, v49, v50, v46);
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v40.receiver = self;
  v40.super_class = MPSImageHistogramSpecification;
  v5 = [(MPSUnaryImageKernel *)&v40 copyWithZone:zone device:device];
  v11 = v5;
  if (v5)
  {
    v5[26] = self->histogramEntries;
    *(v5 + 216) = self->histogramAlpha;
    *(v5 + 14) = *&self->minPixelValue[7];
    *(v5 + 15) = *&self->maxPixelValue[7];
    *(v5 + 256) = self->specificationBuffer;
    *(v5 + 272) = 0;
    v12 = *MEMORY[0x277CD7350];
    v13 = *(*(v5 + v12) + 16);
    v14 = *&self->encodeTransform;
    if ((*(&self->super.super.super.isa + v12))[2] == v13)
    {
      v11[33] = v14;
    }

    else
    {
      v15 = objc_msgSend_length(v14, v6, v7, v8, v9, v10);
      v19 = objc_msgSend_newBufferWithLength_options_(v13, v16, v15, 0, v17, v18);
      v11[33] = v19;
      v25 = objc_msgSend_contents(v19, v20, v21, v22, v23, v24);
      v31 = objc_msgSend_contents(*&self->encodeTransform, v26, v27, v28, v29, v30);
      v37 = objc_msgSend_length(*&self->encodeTransform, v32, v33, v34, v35, v36);
      memcpy(v25, v31, v37);
      if (!v11[33])
      {
        if (MTLReportFailureTypeEnabled())
        {
          v38 = objc_opt_class();
          NSStringFromClass(v38);
          MTLReportFailure();
        }

        return 0;
      }
    }
  }

  return v11;
}

- (void)dealloc
{
  v3 = *&self->encodeTransform;
  if (v3)
  {
  }

  v4.receiver = self;
  v4.super_class = MPSImageHistogramSpecification;
  [(MPSKernel *)&v4 dealloc];
}

- (void)encodeTransformToCommandBuffer:(id)commandBuffer sourceTexture:(id)source sourceHistogram:(id)sourceHistogram sourceHistogramOffset:(NSUInteger)sourceHistogramOffset desiredHistogram:(id)desiredHistogram desiredHistogramOffset:(NSUInteger)desiredHistogramOffset
{
  v15 = *(&self->super.super.super.isa + *MEMORY[0x277CD7350]);
  v16 = objc_msgSend_pixelFormat(source, a2, commandBuffer, source, sourceHistogram, sourceHistogramOffset);
  PixelInfo = MPSDevice::GetPixelInfo(v15, v16, MPSImageFeatureChannelFormatNone);
  v23 = PixelInfo;
  v24 = *MEMORY[0x277CD7378];
  if (*(&self->super.super.super.isa + v24))
  {
    LODWORD(v30) = HIBYTE(PixelInfo) & 0xF;
    if (v30 != 4)
    {
      goto LABEL_11;
    }

LABEL_8:
    if (self->histogramAlpha)
    {
      LODWORD(v30) = 4;
    }

    else
    {
      LODWORD(v30) = 3;
    }

    goto LABEL_11;
  }

  objc_msgSend_textureType(source, v18, v19, v20, v21, v22);
  if (objc_msgSend_textureType(source, v25, v26, v27, v28, v29) != 2 && MTLReportFailureTypeEnabled())
  {
    v172 = source;
    MTLReportFailure();
  }

  LODWORD(v30) = HIBYTE(v23) & 0xF;
  if (v30)
  {
    if (v30 != 15)
    {
      if (v30 != 4)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    if (MTLReportFailureTypeEnabled())
    {
      v172 = source;
      v174 = objc_msgSend_pixelFormat(source, v167, v168, v169, v170, v171);
      MTLReportFailure();
    }

    LODWORD(v30) = 15;
  }

  else
  {
    if (MTLReportFailureTypeEnabled())
    {
      v172 = source;
      MTLReportFailure();
    }

    LODWORD(v30) = 0;
  }

LABEL_11:
  histogramEntries = self->histogramEntries;
  if (histogramEntries != 256)
  {
    if (v30 > 2)
    {
      if (v30 == 3)
      {
        v30 = (3 * histogramEntries) >> 8;
        goto LABEL_27;
      }

      if (v30 == 4)
      {
        v30 = (histogramEntries >> 6) & 0xFFFFFFFFFFFFFFLL;
        goto LABEL_27;
      }
    }

    else
    {
      if (v30 == 1)
      {
        v30 = histogramEntries >> 8;
        goto LABEL_27;
      }

      if (v30 == 2)
      {
        v30 = (histogramEntries >> 7) & 0xFFFFFFFFFFFFFFLL;
        goto LABEL_27;
      }
    }

    if (!MTLReportFailureTypeEnabled())
    {
      return;
    }

LABEL_24:
    v32 = objc_opt_class();
    NSStringFromClass(v32);
    MTLReportFailure();
    return;
  }

  if ((v30 - 1) >= 4)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      return;
    }

    goto LABEL_24;
  }

  v30 = v30;
LABEL_27:
  v175 = v30;
  v33 = objc_alloc(MEMORY[0x277CD7210]);
  v42 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v33, v34, commandBuffer, 0, v35, v36);
  v180[5] = v42;
  v180[6] = self;
  if ((*(&self->super.super.super.isa + v24) & 0x18) != 0)
  {
    v38 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
    if (v38 || (v43 = objc_opt_class(), v44 = NSStringFromClass(v43), objc_msgSend_setLabel_(self, v45, v44, v46, v47, v48), (v38 = v44) != 0))
    {
      objc_msgSend_setLabel_(v42, v37, v38, v39, v40, v41, v172, v174);
    }
  }

  if ((objc_msgSend_retainedReferences(commandBuffer, v37, v38, v39, v40, v41, v172) & 1) == 0)
  {
    v49 = *&self->encodeTransform;
    v180[0] = MEMORY[0x277D85DD0];
    v180[1] = 3221225472;
    v180[2] = sub_239980808;
    v180[3] = &unk_278AC37A8;
    v180[4] = self;
    objc_msgSend_addCompletedHandler_(commandBuffer, v50, v180, v51, v52, v53);
  }

  v54 = *MEMORY[0x277CD7370];
  v55 = *(&self->super.super.super.isa + v54);
  if (self->histogramEntries == 256)
  {
    ComputeState = MPSLibrary::GetComputeState();
    if (ComputeState)
    {
      objc_msgSend_setComputePipelineState_(v42, v56, ComputeState, v57, v58, v59);
      v61 = *(&self->super.super.super.isa + v54);
      MPSLibrary::ReleaseComputeState();
      objc_msgSend_setBuffer_offset_atIndex_(v42, v62, sourceHistogram, sourceHistogramOffset, 0, v63);
      objc_msgSend_setBuffer_offset_atIndex_(v42, v64, desiredHistogram, desiredHistogramOffset, 1, v65);
      objc_msgSend_setBuffer_offset_atIndex_(v42, v66, *&self->encodeTransform, 0, 2, v67);
      objc_msgSend_setBuffer_offset_atIndex_(v42, v68, *&self->encodeTransform, 16 * self->histogramEntries, 3, v69);
      objc_msgSend_setThreadgroupMemoryLength_atIndex_(v42, v70, 2048, 0, v71, v72);
      v178 = v175;
      v179 = vdupq_n_s64(1uLL);
      *v177 = 128;
      *&v177[8] = v179;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v42, v73, &v178, v177, v74, v75);
LABEL_39:
      v139 = *(&self->super.super.super.isa + v54);
      v144 = MPSLibrary::GetComputeState();
      if (v144)
      {
        objc_msgSend_setComputePipelineState_(v42, v140, v144, v141, v142, v143);
        v145 = *(&self->super.super.super.isa + v54);
        MPSLibrary::ReleaseComputeState();
        v176 = 0;
        v146 = self->histogramEntries;
        *&v176 = 1.0 / v146;
        WORD2(v176) = v146;
        objc_msgSend_setBuffer_offset_atIndex_(v42, v147, *&self->encodeTransform, 0, 0, v148);
        objc_msgSend_setBuffer_offset_atIndex_(v42, v149, *&self->encodeTransform, 16 * self->histogramEntries, 1, v150);
        objc_msgSend_setBuffer_offset_atIndex_(v42, v151, *&self->encodeTransform, 32 * self->histogramEntries, 2, v152);
        objc_msgSend_setBytes_length_atIndex_(v42, v153, &v176, 8, 3, v154);
        v178 = v175;
        v179 = vdupq_n_s64(1uLL);
        *v177 = 256;
        *&v177[8] = v179;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v42, v155, &v178, v177, v156, v157);
        LOBYTE(self[1].super.super.super.isa) = 1;
      }

      else if (MTLReportFailureTypeEnabled())
      {
        v163 = objc_opt_class();
        v173 = NSStringFromClass(v163);
        MTLReportFailure();
      }

      goto LABEL_50;
    }

    if (MTLReportFailureTypeEnabled())
    {
LABEL_44:
      v164 = objc_opt_class();
      v173 = NSStringFromClass(v164);
      MTLReportFailure();
    }
  }

  else
  {
    v76 = MPSLibrary::GetComputeState();
    if (v76)
    {
      v77 = *(&self->super.super.super.isa + v54);
      v82 = MPSLibrary::GetComputeState();
      if (!v82)
      {
        if (MTLReportFailureTypeEnabled())
        {
          v165 = objc_opt_class();
          v173 = NSStringFromClass(v165);
          MTLReportFailure();
        }

        v166 = *(&self->super.super.super.isa + v54);
        MPSLibrary::ReleaseComputeState();
        goto LABEL_50;
      }

      objc_msgSend_setComputePipelineState_(v42, v78, v76, v79, v80, v81);
      objc_msgSend_setBuffer_offset_atIndex_(v42, v83, sourceHistogram, sourceHistogramOffset, 0, v84);
      objc_msgSend_setBuffer_offset_atIndex_(v42, v85, *&self->encodeTransform, 0, 1, v86);
      objc_msgSend_setBuffer_offset_atIndex_(v42, v87, *&self->encodeTransform, 48 * self->histogramEntries, 2, v88);
      objc_msgSend_setThreadgroupMemoryLength_atIndex_(v42, v89, 1024, 0, v90, v91);
      *&v177[16] = 1;
      v178 = v175;
      v179 = vdupq_n_s64(1uLL);
      *v177 = xmmword_239988A80;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v42, v92, &v178, v177, v93, v94);
      objc_msgSend_setComputePipelineState_(v42, v95, v82, v96, v97, v98);
      v176 = 1065353216;
      WORD2(v176) = self->histogramEntries >> 8;
      objc_msgSend_setBuffer_offset_atIndex_(v42, v99, *&self->encodeTransform, 0, 0, v100);
      objc_msgSend_setBuffer_offset_atIndex_(v42, v101, *&self->encodeTransform, 48 * self->histogramEntries, 1, v102);
      objc_msgSend_setBytes_length_atIndex_(v42, v103, &v176, 8, 2, v104);
      v179 = vdupq_n_s64(1uLL);
      *v177 = xmmword_239988A80;
      *&v177[16] = 1;
      v178 = v175;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v42, v105, &v178, v177, v106, v107);
      objc_msgSend_setComputePipelineState_(v42, v108, v76, v109, v110, v111);
      objc_msgSend_setBuffer_offset_atIndex_(v42, v112, desiredHistogram, desiredHistogramOffset, 0, v113);
      objc_msgSend_setBuffer_offset_atIndex_(v42, v114, *&self->encodeTransform, 16 * self->histogramEntries, 1, v115);
      objc_msgSend_setBuffer_offset_atIndex_(v42, v116, *&self->encodeTransform, 48 * self->histogramEntries, 2, v117);
      objc_msgSend_setThreadgroupMemoryLength_atIndex_(v42, v118, 1024, 0, v119, v120);
      v178 = v175;
      v179 = vdupq_n_s64(1uLL);
      *v177 = 128;
      *&v177[8] = v179;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v42, v121, &v178, v177, v122, v123);
      objc_msgSend_setComputePipelineState_(v42, v124, v82, v125, v126, v127);
      objc_msgSend_setBuffer_offset_atIndex_(v42, v128, *&self->encodeTransform, 16 * self->histogramEntries, 0, v129);
      objc_msgSend_setBuffer_offset_atIndex_(v42, v130, *&self->encodeTransform, 48 * self->histogramEntries, 1, v131);
      objc_msgSend_setBytes_length_atIndex_(v42, v132, &v176, 8, 2, v133);
      v178 = v175;
      v179 = vdupq_n_s64(1uLL);
      *v177 = 128;
      *&v177[8] = v179;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v42, v134, &v178, v177, v135, v136);
      v137 = *(&self->super.super.super.isa + v54);
      MPSLibrary::ReleaseComputeState();
      v138 = *(&self->super.super.super.isa + v54);
      MPSLibrary::ReleaseComputeState();
      goto LABEL_39;
    }

    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_44;
    }
  }

LABEL_50:
  objc_msgSend_endEncoding(v42, v158, v159, v160, v161, v162, v173);
}

@end