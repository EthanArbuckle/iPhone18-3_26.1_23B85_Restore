@interface MPSImageFindKeypoints
- (MPSImageFindKeypoints)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSImageFindKeypoints)initWithDevice:(id)device info:(const MPSImageKeypointRangeInfo *)info;
- (MPSImageKeypointRangeInfo)keypointRangeInfo;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)debugDescription;
- (void)encodeInternalToCommandEncoder:(id)a3 commandBuffer:(id)a4 sourceTexture:(id)a5 regions:(id *)a6 numberOfRegions:(unint64_t)a7 keypointCountBuffer:(id)a8 keypointCountBufferOffset:(unint64_t)a9 keypointDataBuffer:(id)a10 keypointDataBufferOffset:(unint64_t)a11 rectangles:(id *)a12 histogramBuffer:(id)a13 keypointInfoBuffer:(id)a14 rowCountersBuffer:(id)a15 heightCountersBuffer:(id)a16 maxRectangleHeight:(unint64_t)a17;
- (void)encodeToCommandEncoder:(id)a3 commandBuffer:(id)a4 sourceTexture:(id)a5 regions:(id *)a6 numberOfRegions:(unint64_t)a7 keypointCountBuffer:(id)a8 keypointCountBufferOffset:(unint64_t)a9 keypointDataBuffer:(id)a10 keypointDataBufferOffset:(unint64_t)a11;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSImageFindKeypoints

- (MPSImageKeypointRangeInfo)keypointRangeInfo
{
  p_keypointRangeInfo = &self->_keypointRangeInfo;
  maximumKeypoints = self->_keypointRangeInfo.maximumKeypoints;
  minimumThresholdValue_low = LODWORD(p_keypointRangeInfo->minimumThresholdValue);
  result.minimumThresholdValue = *&minimumThresholdValue_low;
  result.maximumKeypoints = maximumKeypoints;
  return result;
}

- (MPSImageFindKeypoints)initWithDevice:(id)device info:(const MPSImageKeypointRangeInfo *)info
{
  v10.receiver = self;
  v10.super_class = MPSImageFindKeypoints;
  result = [(MPSKernel *)&v10 initWithDevice:device];
  if (result)
  {
    if (info)
    {
      if (info->maximumKeypoints)
      {
        minimumThresholdValue = info->minimumThresholdValue;
        if (minimumThresholdValue >= 0.0 && minimumThresholdValue <= 1.0)
        {
          result->_keypointRangeInfo.maximumKeypoints = info->maximumKeypoints;
          result->_keypointRangeInfo.minimumThresholdValue = minimumThresholdValue;
          return result;
        }

        v8 = result;
        if (MTLReportFailureTypeEnabled())
        {
          goto LABEL_15;
        }

LABEL_16:

        return 0;
      }

      v8 = result;
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_16;
      }
    }

    else
    {
      v8 = result;
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_16;
      }
    }

LABEL_15:
    v9 = objc_opt_class();
    NSStringFromClass(v9);
    MTLReportFailure();
    goto LABEL_16;
  }

  return result;
}

- (MPSImageFindKeypoints)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v18.receiver = self;
  v18.super_class = MPSImageFindKeypoints;
  v5 = [(MPSKernel *)&v18 initWithCoder:aDecoder device:device];
  v10 = v5;
  if (!v5)
  {
    return v10;
  }

  if (*(&v5->super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    v5->_keypointRangeInfo.maximumKeypoints = objc_msgSend_decodeInt64ForKey_(aDecoder, v6, @"MPSImageHistogram.maximumKeypointsEntries", v7, v8, v9);
    objc_msgSend_decodeFloatForKey_(aDecoder, v11, @"MPSImageHistogram.minimumThresholdValue", v12, v13, v14);
    v10->_keypointRangeInfo.minimumThresholdValue = v15;
    return v10;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v17 = objc_opt_class();
    NSStringFromClass(v17);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  *(&self->super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v13.receiver = self;
  v13.super_class = MPSImageFindKeypoints;
  [(MPSKernel *)&v13 encodeWithCoder:?];
  v4 = (v4 + 88);
  objc_msgSend_encodeInt64_forKey_(a3, v5, v4->super.super.isa, @"MPSImageHistogram.maximumKeypointsEntries", v6, v7);
  LODWORD(v8) = v4->super._options;
  objc_msgSend_encodeFloat_forKey_(a3, v9, @"MPSImageHistogram.minimumThresholdValue", v10, v11, v12, v8);
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v6.receiver = self;
  v6.super_class = MPSImageFindKeypoints;
  result = [(MPSKernel *)&v6 copyWithZone:a3 device:a4];
  if (result)
  {
    *(result + 88) = self->_keypointRangeInfo;
  }

  return result;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = MPSImageFindKeypoints;
  v4 = [(MPSKernel *)&v10 debugDescription];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tMaximum Keypoints: %d \n\tMinimum Threshold Value: %f", v6, v7, v8, v4, self->_keypointRangeInfo.maximumKeypoints, self->_keypointRangeInfo.minimumThresholdValue);
}

- (void)encodeInternalToCommandEncoder:(id)a3 commandBuffer:(id)a4 sourceTexture:(id)a5 regions:(id *)a6 numberOfRegions:(unint64_t)a7 keypointCountBuffer:(id)a8 keypointCountBufferOffset:(unint64_t)a9 keypointDataBuffer:(id)a10 keypointDataBufferOffset:(unint64_t)a11 rectangles:(id *)a12 histogramBuffer:(id)a13 keypointInfoBuffer:(id)a14 rowCountersBuffer:(id)a15 heightCountersBuffer:(id)a16 maxRectangleHeight:(unint64_t)a17
{
  v20 = *MEMORY[0x277CD7370];
  v21 = *(&self->super.super.isa + v20);
  ComputeState = MPSLibrary::GetComputeState();
  if (ComputeState)
  {
    objc_msgSend_setComputePipelineState_(a3, v23, ComputeState, v24, v25, v26);
    v27 = *(&self->super.super.isa + v20);
    MPSLibrary::ReleaseComputeState();
    objc_msgSend_setTexture_atIndex_(a3, v28, a5, 0, v29, v30);
    objc_msgSend_setBuffer_offset_atIndex_(a3, v31, a13, 0, 0, v32);
    objc_msgSend_setBytes_length_atIndex_(a3, v33, &self->_keypointRangeInfo.minimumThresholdValue, 4, 1, v34);
    v35 = 8 * a7;
    objc_msgSend_setBytes_length_atIndex_(a3, v36, a12, 8 * a7, 2, v37);
    v135 = a7;
    v136 = vdupq_n_s64(1uLL);
    *v134 = vdupq_n_s64(0x10uLL);
    *&v134[16] = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a3, v38, &v135, v134, v39, v40);
    v41 = *(&self->super.super.isa + v20);
    v42 = MPSLibrary::GetComputeState();
    if (v42)
    {
      objc_msgSend_setComputePipelineState_(a3, v43, v42, v44, v45, v46);
      v47 = *(&self->super.super.isa + v20);
      MPSLibrary::ReleaseComputeState();
      v50 = self->_keypointRangeInfo.minimumThresholdValue * 256.0;
      if (v50 > 255.0)
      {
        v50 = 255.0;
      }

      v133[0] = self->_keypointRangeInfo.maximumKeypoints;
      v133[1] = v50;
      objc_msgSend_setBuffer_offset_atIndex_(a3, v48, a13, 0, 0, v49);
      objc_msgSend_setBytes_length_atIndex_(a3, v51, v133, 4, 1, v52);
      objc_msgSend_setBuffer_offset_atIndex_(a3, v53, a14, 0, 2, v54);
      objc_msgSend_setThreadgroupMemoryLength_atIndex_(a3, v55, 1040, 0, v56, v57);
      v135 = a7;
      v136 = vdupq_n_s64(1uLL);
      *v134 = xmmword_239988A80;
      *&v134[16] = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a3, v58, &v135, v134, v59, v60);
      v61 = *(&self->super.super.isa + v20);
      v62 = MPSLibrary::GetComputeState();
      if (v62)
      {
        objc_msgSend_setComputePipelineState_(a3, v63, v62, v64, v65, v66);
        v67 = *(&self->super.super.isa + v20);
        MPSLibrary::ReleaseComputeState();
        objc_msgSend_setTexture_atIndex_(a3, v68, a5, 0, v69, v70);
        objc_msgSend_setBuffer_offset_atIndex_(a3, v71, a14, 0, 0, v72);
        objc_msgSend_setBytes_length_atIndex_(a3, v73, a12, v35, 1, v74);
        objc_msgSend_setBuffer_offset_atIndex_(a3, v75, a15, 0, 2, v76);
        objc_msgSend_setThreadgroupMemoryLength_atIndex_(a3, v77, 128, 0, v78, v79);
        v135 = a17;
        v136.i64[0] = a7;
        v136.i64[1] = 1;
        *v134 = 32;
        *&v134[8] = vdupq_n_s64(1uLL);
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a3, v80, &v135, v134, v81, v82);
        v83 = *(&self->super.super.isa + v20);
        v84 = MPSLibrary::GetComputeState();
        if (v84)
        {
          objc_msgSend_setComputePipelineState_(a3, v85, v84, v86, v87, v88);
          v89 = *(&self->super.super.isa + v20);
          MPSLibrary::ReleaseComputeState();
          objc_msgSend_setTexture_atIndex_(a3, v90, a5, 0, v91, v92);
          objc_msgSend_setBuffer_offset_atIndex_(a3, v93, a14, 0, 0, v94);
          objc_msgSend_setBytes_length_atIndex_(a3, v95, a12, v35, 1, v96);
          objc_msgSend_setBuffer_offset_atIndex_(a3, v97, a15, 0, 2, v98);
          objc_msgSend_setBuffer_offset_atIndex_(a3, v99, a16, 0, 3, v100);
          objc_msgSend_setBuffer_offset_atIndex_(a3, v101, a8, a9, 4, v102);
          v135 = a7;
          v136 = vdupq_n_s64(1uLL);
          *v134 = v136;
          *&v134[16] = 1;
          objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a3, v103, &v135, v134, v104, v105);
          v106 = *(&self->super.super.isa + v20);
          v107 = MPSLibrary::GetComputeState();
          if (v107)
          {
            objc_msgSend_setComputePipelineState_(a3, v108, v107, v109, v110, v111);
            v112 = *(&self->super.super.isa + v20);
            MPSLibrary::ReleaseComputeState();
            objc_msgSend_setTexture_atIndex_(a3, v113, a5, 0, v114, v115);
            objc_msgSend_setBytes_length_atIndex_(a3, v116, v133, 4, 0, v117);
            objc_msgSend_setBuffer_offset_atIndex_(a3, v118, a14, 0, 1, v119);
            objc_msgSend_setBytes_length_atIndex_(a3, v120, a12, v35, 2, v121);
            objc_msgSend_setBuffer_offset_atIndex_(a3, v122, a15, 0, 3, v123);
            objc_msgSend_setBuffer_offset_atIndex_(a3, v124, a16, 0, 4, v125);
            objc_msgSend_setBuffer_offset_atIndex_(a3, v126, a10, a11, 5, v127);
            v135 = (a17 + 31) >> 5;
            v136.i64[0] = a7;
            v136.i64[1] = 1;
            *v134 = 32;
            *&v134[8] = vdupq_n_s64(1uLL);
            objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a3, v128, &v135, v134, v129, v130);
          }
        }
      }
    }

    free(a12);
  }

  else
  {

    free(a12);
  }
}

- (void)encodeToCommandEncoder:(id)a3 commandBuffer:(id)a4 sourceTexture:(id)a5 regions:(id *)a6 numberOfRegions:(unint64_t)a7 keypointCountBuffer:(id)a8 keypointCountBufferOffset:(unint64_t)a9 keypointDataBuffer:(id)a10 keypointDataBufferOffset:(unint64_t)a11
{
  v17 = *MEMORY[0x277CD7378];
  v18 = *(&self->super.super.isa + v17);
  if ((v18 & 1) == 0)
  {
    if (!a5 && MTLReportFailureTypeEnabled())
    {
      v78 = objc_opt_class();
      v90 = NSStringFromClass(v78);
      MTLReportFailure();
    }

    v19 = v18 & 0xFFFFFFFFFFFFFFE2;
    if (v19 && MTLReportFailureTypeEnabled())
    {
      v79 = objc_opt_class();
      v90 = NSStringFromClass(v79);
      v92 = v19;
      MTLReportFailure();
    }

    objc_msgSend_textureType(a5, a2, a3, a4, a5, a6, v90, v92);
    if (objc_msgSend_textureType(a5, v20, v21, v22, v23, v24) != 2 && MTLReportFailureTypeEnabled())
    {
      v91 = a5;
      MTLReportFailure();
    }

    objc_msgSend_pixelFormat(a5, v25, v26, v27, v28, v29, v91);
    if (objc_msgSend_pixelFormat(a5, v30, v31, v32, v33, v34) != 10 && MTLReportFailureTypeEnabled())
    {
      v90 = a5;
      v92 = objc_msgSend_pixelFormat(a5, v80, v81, v82, v83, v84);
      MTLReportFailure();
    }
  }

  if ((*(&self->super.super.isa + v17) & 1) == 0)
  {
    if (!a6 && MTLReportFailureTypeEnabled())
    {
      v85 = objc_opt_class();
      v90 = NSStringFromClass(v85);
      MTLReportFailure();
    }

    if (!a7 && MTLReportFailureTypeEnabled())
    {
      v86 = objc_opt_class();
      v90 = NSStringFromClass(v86);
      MTLReportFailure();
    }

    if (!a8 && MTLReportFailureTypeEnabled())
    {
      v87 = objc_opt_class();
      v90 = NSStringFromClass(v87);
      MTLReportFailure();
    }

    if (!a10 && MTLReportFailureTypeEnabled())
    {
      v88 = objc_opt_class();
      v90 = NSStringFromClass(v88);
      MTLReportFailure();
    }
  }

  v97 = self;
  v35 = MEMORY[0x23EE7BAC0](v98, a4, 0);
  TempBuffer = MPSAutoCache::GetTempBuffer(v35, a7 << 10, 0);
  v37 = malloc_type_malloc(8 * a7, 0x100004000313F17uLL);
  v38 = v37;
  v93 = a8;
  v95 = a4;
  v96 = a6;
  v39 = 0;
  if (a7)
  {
    v40 = v37 + 2;
    p_var1 = &a6->var1.var1;
    v42 = a7;
    do
    {
      v43 = vmovn_s64(*(p_var1 - 2));
      *(v40 - 1) = v43.i16[2];
      *(v40 - 2) = v43.i16[0];
      v44 = vmovn_s64(*(p_var1 - 1));
      v40[1] = v44.i16[2];
      *v40 = v44.i16[0];
      v40 += 4;
      v46 = *p_var1;
      p_var1 += 6;
      v45 = v46;
      if (v39 <= v46)
      {
        v39 = v45;
      }

      --v42;
    }

    while (v42);
  }

  v47 = MPSAutoCache::GetTempBuffer(v98, 4 * a7, 0);
  v53 = objc_msgSend_height(a5, v48, v49, v50, v51, v52);
  v54 = MPSAutoCache::GetTempBuffer(v98, v53 * 4 * a7, 0);
  v55 = MPSAutoCache::GetTempBuffer(v98, 4 * a7, 0);
  if (TempBuffer && v47 && v54)
  {
    v57 = v55;
    if (a3)
    {
      objc_msgSend_encodeInternalToCommandEncoder_commandBuffer_sourceTexture_regions_numberOfRegions_keypointCountBuffer_keypointCountBufferOffset_keypointDataBuffer_keypointDataBufferOffset_rectangles_histogramBuffer_keypointInfoBuffer_rowCountersBuffer_heightCountersBuffer_maxRectangleHeight_(v97, v56, a3, v95, a5, v96, a7, a8, a9, a10, a11, v38, TempBuffer, v47, v54, v55, v39);
    }

    else
    {
      v58 = objc_alloc(MEMORY[0x277CD7210]);
      v66 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v58, v59, v95, 0, v60, v61);
      if ((*(&v97->super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
      {
        v67 = *(&v97->super.super.isa + *MEMORY[0x277CD7360]);
        if (v67 || (v68 = objc_opt_class(), v67 = NSStringFromClass(v68), objc_msgSend_setLabel_(v97, v69, v67, v70, v71, v72), v67))
        {
          objc_msgSend_setLabel_(v66, v62, v67, v63, v64, v65, v90, v92);
        }
      }

      objc_msgSend_encodeInternalToCommandEncoder_commandBuffer_sourceTexture_regions_numberOfRegions_keypointCountBuffer_keypointCountBufferOffset_keypointDataBuffer_keypointDataBufferOffset_rectangles_histogramBuffer_keypointInfoBuffer_rowCountersBuffer_heightCountersBuffer_maxRectangleHeight_(v97, v62, v66, v95, a5, v96, a7, v93, a9, a10, a11, v38, TempBuffer, v47, v54, v57, v39);
      objc_msgSend_endEncoding(v66, v73, v74, v75, v76, v77);
    }
  }

  else
  {
    if (!a6 && (*(&v97->super.super.isa + v17) & 1) == 0 && MTLReportFailureTypeEnabled())
    {
      v89 = objc_opt_class();
      NSStringFromClass(v89);
      MTLReportFailure();
    }

    free(v38);
  }

  MPSAutoCache::~MPSAutoCache(v98);
}

@end