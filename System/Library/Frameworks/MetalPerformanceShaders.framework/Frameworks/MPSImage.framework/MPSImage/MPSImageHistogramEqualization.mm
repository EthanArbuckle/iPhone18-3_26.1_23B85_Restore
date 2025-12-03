@interface MPSImageHistogramEqualization
- (MPSImageHistogramEqualization)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSImageHistogramEqualization)initWithDevice:(id)device;
- (MPSImageHistogramEqualization)initWithDevice:(id)device histogramInfo:(const MPSImageHistogramInfo *)histogramInfo;
- (MPSImageHistogramInfo)histogramInfo;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (void)dealloc;
- (void)encodeTransformToCommandBuffer:(id)commandBuffer sourceTexture:(id)source histogram:(id)histogram histogramOffset:(NSUInteger)histogramOffset;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSImageHistogramEqualization

- (MPSImageHistogramEqualization)initWithDevice:(id)device
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

- (MPSImageHistogramEqualization)initWithDevice:(id)device histogramInfo:(const MPSImageHistogramInfo *)histogramInfo
{
  v25.receiver = self;
  v25.super_class = MPSImageHistogramEqualization;
  result = [(MPSUnaryImageKernel *)&v25 initWithDevice:?];
  if (!result)
  {
    return result;
  }

  if (!histogramInfo)
  {
    v22 = result;
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  numberOfHistogramEntries = histogramInfo->numberOfHistogramEntries;
  if (histogramInfo->numberOfHistogramEntries <= 0xFF)
  {
    v22 = result;
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  if ((numberOfHistogramEntries & (numberOfHistogramEntries - 1)) != 0)
  {
    v22 = result;
    if (MTLReportFailureTypeEnabled())
    {
LABEL_20:
      v23 = objc_opt_class();
      NSStringFromClass(v23);
      MTLReportFailure();
    }

LABEL_21:

    return 0;
  }

  result->super._encode = sub_23995478C;
  result->super._encodeKernelDAG = sub_239954834;
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

  LOBYTE(result->cumulativeHistogramBuffer) = v18;
  if (histogramEntries == 256)
  {
    v19 = 0x2000;
  }

  else
  {
    v19 = 32 * (histogramEntries + (histogramEntries >> 8));
  }

  v20 = result;
  v21 = objc_msgSend_newBufferWithLength_options_(device, v7, v19, 0, v8, v9);
  *&v20->encodeTransform = v21;
  if (v21)
  {
    result = v20;
    LOBYTE(v20[1].super.super.super.isa) = 0;
  }

  else
  {
    if (MTLReportFailureTypeEnabled())
    {
      v24 = objc_opt_class();
      NSStringFromClass(v24);
      MTLReportFailure();
    }

    return 0;
  }

  return result;
}

- (MPSImageHistogramEqualization)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v70.receiver = self;
  v70.super_class = MPSImageHistogramEqualization;
  v6 = [MPSUnaryImageKernel initWithCoder:sel_initWithCoder_device_ device:?];
  v11 = v6;
  if (v6)
  {
    if (*(&v6->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
    {
      v6->super._encode = sub_23995478C;
      v6->super._encodeKernelDAG = sub_239954834;
      v6->super._encodeData = v6;
      v6->histogramEntries = objc_msgSend_decodeInt64ForKey_(aDecoder, v7, @"MPSImageHistogramEqualization.histogramEntries", v8, v9, v10);
      v11->histogramAlpha = objc_msgSend_decodeBoolForKey_(aDecoder, v12, @"MPSImageHistogramEqualization.histogramAlpha", v13, v14, v15);
      objc_msgSend_decodeFloatForKey_(aDecoder, v16, @"MPSImageHistogramEqualization.minPixelValueX", v17, v18, v19);
      *&v11->minPixelValue[7] = v20;
      objc_msgSend_decodeFloatForKey_(aDecoder, v21, @"MPSImageHistogramEqualization.minPixelValueY", v22, v23, v24);
      *&v11->minPixelValue[11] = v25;
      objc_msgSend_decodeFloatForKey_(aDecoder, v26, @"MPSImageHistogramEqualization.minPixelValueZ", v27, v28, v29);
      *&v11->minPixelValue[15] = v30;
      objc_msgSend_decodeFloatForKey_(aDecoder, v31, @"MPSImageHistogramEqualization.minPixelValueW", v32, v33, v34);
      *&v11->maxPixelValue[3] = v35;
      objc_msgSend_decodeFloatForKey_(aDecoder, v36, @"MPSImageHistogramEqualization.maxPixelValueX", v37, v38, v39);
      *&v11->maxPixelValue[7] = v40;
      objc_msgSend_decodeFloatForKey_(aDecoder, v41, @"MPSImageHistogramEqualization.maxPixelValueY", v42, v43, v44);
      *&v11->maxPixelValue[11] = v45;
      objc_msgSend_decodeFloatForKey_(aDecoder, v46, @"MPSImageHistogramEqualization.maxPixelValueZ", v47, v48, v49);
      *&v11->maxPixelValue[15] = v50;
      objc_msgSend_decodeFloatForKey_(aDecoder, v51, @"MPSImageHistogramEqualization.maxPixelValueW", v52, v53, v54);
      v59 = *&v11->maxPixelValue[7];
      *(&v11->optimized256BinsUseCase + 3) = v58;
      histogramEntries = v11->histogramEntries;
      if (histogramEntries <= 0xFF)
      {
        if (!MTLReportFailureTypeEnabled())
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

      if ((histogramEntries & (histogramEntries - 1)) != 0)
      {
        if (!MTLReportFailureTypeEnabled())
        {
          goto LABEL_16;
        }

        goto LABEL_15;
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

      LOBYTE(v11->cumulativeHistogramBuffer) = v66;
      if (histogramEntries == 256)
      {
        v67 = objc_msgSend_newBufferWithLength_options_(device, v55, 0x2000, 0, v56, v57);
      }

      else
      {
        v67 = objc_msgSend_newBufferWithLength_options_(device, v55, 32 * (histogramEntries + (histogramEntries >> 8)), 0, v56, v57);
      }

      *&v11->encodeTransform = v67;
      if (v67)
      {
        LOBYTE(v11[1].super.super.super.isa) = 0;
        return v11;
      }

      if (MTLReportFailureTypeEnabled())
      {
LABEL_15:
        v68 = objc_opt_class();
        NSStringFromClass(v68);
        MTLReportFailure();
      }
    }

    else if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_15;
    }

LABEL_16:

    return 0;
  }

  return v11;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = MPSImageHistogramEqualization;
  v4 = [(MPSUnaryImageKernel *)&v10 debugDescription];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tHistogram Entries:  %lu\n\tHistogram for Alpha: %d \n\tminPixelValue: %f %f %f %f\n\tmaxPixelValue: %f %f %f %f\n\tInternal Transform Buffer: %p", v6, v7, v8, v4, self->histogramEntries, self->histogramAlpha, COERCE_FLOAT(*&self->minPixelValue[7]), COERCE_FLOAT(HIDWORD(*&self->minPixelValue[7])), COERCE_FLOAT(*&self->minPixelValue[15]), COERCE_FLOAT(HIDWORD(*&self->minPixelValue[7])), COERCE_FLOAT(*&self->maxPixelValue[7]), COERCE_FLOAT(HIDWORD(*&self->maxPixelValue[7])), COERCE_FLOAT(*&self->maxPixelValue[15]), COERCE_FLOAT(HIDWORD(*&self->maxPixelValue[7])), *&self->encodeTransform);
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v51.receiver = self;
  v51.super_class = MPSImageHistogramEqualization;
  [(MPSUnaryImageKernel *)&v51 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(coder, v5, selfCopy->histogramEntries, @"MPSImageHistogramEqualization.histogramEntries", v6, v7);
  objc_msgSend_encodeBool_forKey_(coder, v8, selfCopy->histogramAlpha, @"MPSImageHistogramEqualization.histogramAlpha", v9, v10);
  LODWORD(v11) = *&selfCopy->minPixelValue[7];
  objc_msgSend_encodeFloat_forKey_(coder, v12, @"MPSImageHistogramEqualization.minPixelValueX", v13, v14, v15, v11);
  LODWORD(v16) = *&selfCopy->minPixelValue[11];
  objc_msgSend_encodeFloat_forKey_(coder, v17, @"MPSImageHistogramEqualization.minPixelValueY", v18, v19, v20, v16);
  LODWORD(v21) = *&selfCopy->minPixelValue[15];
  objc_msgSend_encodeFloat_forKey_(coder, v22, @"MPSImageHistogramEqualization.minPixelValueZ", v23, v24, v25, v21);
  LODWORD(v26) = *&selfCopy->maxPixelValue[3];
  objc_msgSend_encodeFloat_forKey_(coder, v27, @"MPSImageHistogramEqualization.minPixelValueW", v28, v29, v30, v26);
  selfCopy = (selfCopy + 240);
  LODWORD(v31) = selfCopy->super.super.super.isa;
  objc_msgSend_encodeFloat_forKey_(coder, v32, @"MPSImageHistogramEqualization.maxPixelValueX", v33, v34, v35, v31);
  LODWORD(v36) = HIDWORD(selfCopy->super.super.super.isa);
  objc_msgSend_encodeFloat_forKey_(coder, v37, @"MPSImageHistogramEqualization.maxPixelValueY", v38, v39, v40, v36);
  LODWORD(v41) = selfCopy->super.super._options;
  objc_msgSend_encodeFloat_forKey_(coder, v42, @"MPSImageHistogramEqualization.maxPixelValueZ", v43, v44, v45, v41);
  LODWORD(v46) = HIDWORD(selfCopy->super.super._options);
  objc_msgSend_encodeFloat_forKey_(coder, v47, @"MPSImageHistogramEqualization.maxPixelValueW", v48, v49, v50, v46);
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v40.receiver = self;
  v40.super_class = MPSImageHistogramEqualization;
  v5 = [(MPSUnaryImageKernel *)&v40 copyWithZone:zone device:device];
  v11 = v5;
  if (v5)
  {
    v5[26] = self->histogramEntries;
    *(v5 + 216) = self->histogramAlpha;
    *(v5 + 14) = *&self->minPixelValue[7];
    *(v5 + 15) = *&self->maxPixelValue[7];
    *(v5 + 256) = self->cumulativeHistogramBuffer;
    *(v5 + 272) = 0;
    v12 = *MEMORY[0x277CD7350];
    v13 = *(*(v5 + v12) + 16);
    v14 = *&self->encodeTransform;
    if (v13 == (*(&self->super.super.super.isa + v12))[2])
    {
      v11[33] = v14;
    }

    else
    {
      v15 = objc_msgSend_length(v14, v6, v7, v8, v9, v10);
      v19 = objc_msgSend_newBufferWithLength_options_(v13, v16, v15, 0, v17, v18);
      v11[33] = v19;
      if (v19)
      {
        v25 = objc_msgSend_contents(v19, v20, v21, v22, v23, v24);
        v31 = objc_msgSend_contents(*&self->encodeTransform, v26, v27, v28, v29, v30);
        v37 = objc_msgSend_length(*&self->encodeTransform, v32, v33, v34, v35, v36);
        memcpy(v25, v31, v37);
      }

      else
      {
        if (MTLReportFailureTypeEnabled())
        {
          v39 = objc_opt_class();
          NSStringFromClass(v39);
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
  v4.super_class = MPSImageHistogramEqualization;
  [(MPSKernel *)&v4 dealloc];
}

- (void)encodeTransformToCommandBuffer:(id)commandBuffer sourceTexture:(id)source histogram:(id)histogram histogramOffset:(NSUInteger)histogramOffset
{
  v11 = *(&self->super.super.super.isa + *MEMORY[0x277CD7350]);
  v12 = objc_msgSend_pixelFormat(source, a2, commandBuffer, source, histogram, histogramOffset);
  PixelInfo = MPSDevice::GetPixelInfo(v11, v12, MPSImageFeatureChannelFormatNone);
  v19 = PixelInfo;
  v20 = *MEMORY[0x277CD7378];
  if (*(&self->super.super.super.isa + v20))
  {
    v26 = HIBYTE(PixelInfo) & 0xF;
    if (v26 != 4)
    {
      goto LABEL_11;
    }

LABEL_8:
    if (self->histogramAlpha)
    {
      v26 = 4;
    }

    else
    {
      v26 = 3;
    }

    goto LABEL_11;
  }

  objc_msgSend_textureType(source, v14, v15, v16, v17, v18);
  if (objc_msgSend_textureType(source, v21, v22, v23, v24, v25) != 2 && MTLReportFailureTypeEnabled())
  {
    v117 = source;
    MTLReportFailure();
  }

  v26 = HIBYTE(v19) & 0xF;
  if (v26)
  {
    if (v26 != 15)
    {
      if (v26 != 4)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    if (MTLReportFailureTypeEnabled())
    {
      v117 = source;
      v118 = objc_msgSend_pixelFormat(source, v112, v113, v114, v115, v116);
      MTLReportFailure();
    }

    v26 = 15;
  }

  else
  {
    if (MTLReportFailureTypeEnabled())
    {
      v117 = source;
      MTLReportFailure();
    }

    v26 = 0;
  }

LABEL_11:
  histogramEntries = self->histogramEntries;
  if (histogramEntries != 256)
  {
    if (v26 > 2)
    {
      if (v26 == 3)
      {
        v28 = (3 * histogramEntries) >> 8;
        goto LABEL_27;
      }

      if (v26 == 4)
      {
        v28 = (histogramEntries >> 6) & 0xFFFFFFFFFFFFFFLL;
        goto LABEL_27;
      }
    }

    else
    {
      if (v26 == 1)
      {
        v28 = histogramEntries >> 8;
        goto LABEL_27;
      }

      if (v26 == 2)
      {
        v28 = (histogramEntries >> 7) & 0xFFFFFFFFFFFFFFLL;
        goto LABEL_27;
      }
    }

    if (!MTLReportFailureTypeEnabled())
    {
      return;
    }

LABEL_24:
    v29 = objc_opt_class();
    NSStringFromClass(v29);
    MTLReportFailure();
    return;
  }

  if ((v26 - 1) >= 4)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      return;
    }

    goto LABEL_24;
  }

  v28 = v26;
LABEL_27:
  v30 = objc_alloc(MEMORY[0x277CD7210]);
  v38 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v30, v31, commandBuffer, 0, v32, v33);
  v125[5] = v38;
  v125[6] = self;
  if ((*(&self->super.super.super.isa + v20) & 0x18) != 0)
  {
    v39 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
    if (v39 || (v40 = objc_opt_class(), v41 = NSStringFromClass(v40), objc_msgSend_setLabel_(self, v42, v41, v43, v44, v45), (v39 = v41) != 0))
    {
      objc_msgSend_setLabel_(v38, v34, v39, v35, v36, v37, v117, v118);
    }
  }

  v46 = *MEMORY[0x277CD7370];
  v47 = *(&self->super.super.super.isa + v46);
  self->histogramEntries;
  ComputeState = MPSLibrary::GetComputeState();
  if (!ComputeState)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v110 = objc_opt_class();
      v117 = NSStringFromClass(v110);
      MTLReportFailure();
    }

    goto LABEL_42;
  }

  objc_msgSend_setComputePipelineState_(v38, v48, ComputeState, v49, v50, v51);
  v53 = *(&self->super.super.super.isa + v46);
  MPSLibrary::ReleaseComputeState();
  if ((objc_msgSend_retainedReferences(commandBuffer, v54, v55, v56, v57, v58) & 1) == 0)
  {
    v64 = *&self->encodeTransform;
    v125[0] = MEMORY[0x277D85DD0];
    v125[1] = 3221225472;
    v125[2] = sub_239955C30;
    v125[3] = &unk_278AC37A8;
    v125[4] = self;
    objc_msgSend_addCompletedHandler_(commandBuffer, v65, v125, v66, v67, v68);
  }

  v69 = objc_msgSend_width(source, v59, v60, v61, v62, v63, v117);
  v124 = 1.0 / (objc_msgSend_height(source, v70, v71, v72, v73, v74) * v69);
  objc_msgSend_setBuffer_offset_atIndex_(v38, v75, histogram, histogramOffset, 0, v76);
  objc_msgSend_setBuffer_offset_atIndex_(v38, v77, *&self->encodeTransform, 0, 1, v78);
  objc_msgSend_setBuffer_offset_atIndex_(v38, v79, *&self->encodeTransform, 16 * self->histogramEntries, 2, v80);
  objc_msgSend_setBytes_length_atIndex_(v38, v81, &v124, 4, 3, v82);
  objc_msgSend_setThreadgroupMemoryLength_atIndex_(v38, v83, 1024, 0, v84, v85);
  v122 = v28;
  v123 = vdupq_n_s64(1uLL);
  v120 = xmmword_239988A80;
  v121 = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v38, v86, &v122, &v120, v87, v88);
  if (self->histogramEntries >= 0x101)
  {
    v94 = *(&self->super.super.super.isa + v46);
    v99 = MPSLibrary::GetComputeState();
    if (!v99)
    {
      if (MTLReportFailureTypeEnabled())
      {
        v111 = objc_opt_class();
        v117 = NSStringFromClass(v111);
        MTLReportFailure();
      }

      goto LABEL_42;
    }

    objc_msgSend_setComputePipelineState_(v38, v95, v99, v96, v97, v98);
    v100 = *(&self->super.super.super.isa + v46);
    MPSLibrary::ReleaseComputeState();
    v119 = LODWORD(v124);
    WORD2(v119) = self->histogramEntries >> 8;
    objc_msgSend_setBuffer_offset_atIndex_(v38, v101, *&self->encodeTransform, 0, 0, v102);
    objc_msgSend_setBuffer_offset_atIndex_(v38, v103, *&self->encodeTransform, 16 * self->histogramEntries, 1, v104);
    objc_msgSend_setBytes_length_atIndex_(v38, v105, &v119, 8, 2, v106);
    v122 = v28;
    v123 = vdupq_n_s64(1uLL);
    v120 = xmmword_239988A80;
    v121 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v38, v107, &v122, &v120, v108, v109);
  }

  LOBYTE(self[1].super.super.super.isa) = 1;
LABEL_42:
  objc_msgSend_endEncoding(v38, v89, v90, v91, v92, v93, v117);
}

@end