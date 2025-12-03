@interface MPSImageFindKeypoints
- (MPSImageFindKeypoints)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSImageFindKeypoints)initWithDevice:(id)device info:(const MPSImageKeypointRangeInfo *)info;
- (MPSImageKeypointRangeInfo)keypointRangeInfo;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (void)encodeInternalToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceTexture:(id)texture regions:(id *)regions numberOfRegions:(unint64_t)ofRegions keypointCountBuffer:(id)countBuffer keypointCountBufferOffset:(unint64_t)offset keypointDataBuffer:(id)self0 keypointDataBufferOffset:(unint64_t)self1 rectangles:(id *)self2 histogramBuffer:(id)self3 keypointInfoBuffer:(id)self4 rowCountersBuffer:(id)self5 heightCountersBuffer:(id)self6 maxRectangleHeight:(unint64_t)self7;
- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceTexture:(id)texture regions:(id *)regions numberOfRegions:(unint64_t)ofRegions keypointCountBuffer:(id)countBuffer keypointCountBufferOffset:(unint64_t)offset keypointDataBuffer:(id)self0 keypointDataBufferOffset:(unint64_t)self1;
- (void)encodeWithCoder:(id)coder;
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

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  *(&self->super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v13.receiver = self;
  v13.super_class = MPSImageFindKeypoints;
  [(MPSKernel *)&v13 encodeWithCoder:?];
  selfCopy = (selfCopy + 88);
  objc_msgSend_encodeInt64_forKey_(coder, v5, selfCopy->super.super.isa, @"MPSImageHistogram.maximumKeypointsEntries", v6, v7);
  LODWORD(v8) = selfCopy->super._options;
  objc_msgSend_encodeFloat_forKey_(coder, v9, @"MPSImageHistogram.minimumThresholdValue", v10, v11, v12, v8);
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSImageFindKeypoints;
  result = [(MPSKernel *)&v6 copyWithZone:zone device:device];
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

- (void)encodeInternalToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceTexture:(id)texture regions:(id *)regions numberOfRegions:(unint64_t)ofRegions keypointCountBuffer:(id)countBuffer keypointCountBufferOffset:(unint64_t)offset keypointDataBuffer:(id)self0 keypointDataBufferOffset:(unint64_t)self1 rectangles:(id *)self2 histogramBuffer:(id)self3 keypointInfoBuffer:(id)self4 rowCountersBuffer:(id)self5 heightCountersBuffer:(id)self6 maxRectangleHeight:(unint64_t)self7
{
  v20 = *MEMORY[0x277CD7370];
  v21 = *(&self->super.super.isa + v20);
  ComputeState = MPSLibrary::GetComputeState();
  if (ComputeState)
  {
    objc_msgSend_setComputePipelineState_(encoder, v23, ComputeState, v24, v25, v26);
    v27 = *(&self->super.super.isa + v20);
    MPSLibrary::ReleaseComputeState();
    objc_msgSend_setTexture_atIndex_(encoder, v28, texture, 0, v29, v30);
    objc_msgSend_setBuffer_offset_atIndex_(encoder, v31, histogramBuffer, 0, 0, v32);
    objc_msgSend_setBytes_length_atIndex_(encoder, v33, &self->_keypointRangeInfo.minimumThresholdValue, 4, 1, v34);
    v35 = 8 * ofRegions;
    objc_msgSend_setBytes_length_atIndex_(encoder, v36, rectangles, 8 * ofRegions, 2, v37);
    ofRegionsCopy3 = ofRegions;
    v136 = vdupq_n_s64(1uLL);
    *v134 = vdupq_n_s64(0x10uLL);
    *&v134[16] = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v38, &ofRegionsCopy3, v134, v39, v40);
    v41 = *(&self->super.super.isa + v20);
    v42 = MPSLibrary::GetComputeState();
    if (v42)
    {
      objc_msgSend_setComputePipelineState_(encoder, v43, v42, v44, v45, v46);
      v47 = *(&self->super.super.isa + v20);
      MPSLibrary::ReleaseComputeState();
      v50 = self->_keypointRangeInfo.minimumThresholdValue * 256.0;
      if (v50 > 255.0)
      {
        v50 = 255.0;
      }

      v133[0] = self->_keypointRangeInfo.maximumKeypoints;
      v133[1] = v50;
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v48, histogramBuffer, 0, 0, v49);
      objc_msgSend_setBytes_length_atIndex_(encoder, v51, v133, 4, 1, v52);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v53, infoBuffer, 0, 2, v54);
      objc_msgSend_setThreadgroupMemoryLength_atIndex_(encoder, v55, 1040, 0, v56, v57);
      ofRegionsCopy3 = ofRegions;
      v136 = vdupq_n_s64(1uLL);
      *v134 = xmmword_239988A80;
      *&v134[16] = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v58, &ofRegionsCopy3, v134, v59, v60);
      v61 = *(&self->super.super.isa + v20);
      v62 = MPSLibrary::GetComputeState();
      if (v62)
      {
        objc_msgSend_setComputePipelineState_(encoder, v63, v62, v64, v65, v66);
        v67 = *(&self->super.super.isa + v20);
        MPSLibrary::ReleaseComputeState();
        objc_msgSend_setTexture_atIndex_(encoder, v68, texture, 0, v69, v70);
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v71, infoBuffer, 0, 0, v72);
        objc_msgSend_setBytes_length_atIndex_(encoder, v73, rectangles, v35, 1, v74);
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v75, countersBuffer, 0, 2, v76);
        objc_msgSend_setThreadgroupMemoryLength_atIndex_(encoder, v77, 128, 0, v78, v79);
        ofRegionsCopy3 = height;
        v136.i64[0] = ofRegions;
        v136.i64[1] = 1;
        *v134 = 32;
        *&v134[8] = vdupq_n_s64(1uLL);
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v80, &ofRegionsCopy3, v134, v81, v82);
        v83 = *(&self->super.super.isa + v20);
        v84 = MPSLibrary::GetComputeState();
        if (v84)
        {
          objc_msgSend_setComputePipelineState_(encoder, v85, v84, v86, v87, v88);
          v89 = *(&self->super.super.isa + v20);
          MPSLibrary::ReleaseComputeState();
          objc_msgSend_setTexture_atIndex_(encoder, v90, texture, 0, v91, v92);
          objc_msgSend_setBuffer_offset_atIndex_(encoder, v93, infoBuffer, 0, 0, v94);
          objc_msgSend_setBytes_length_atIndex_(encoder, v95, rectangles, v35, 1, v96);
          objc_msgSend_setBuffer_offset_atIndex_(encoder, v97, countersBuffer, 0, 2, v98);
          objc_msgSend_setBuffer_offset_atIndex_(encoder, v99, heightCountersBuffer, 0, 3, v100);
          objc_msgSend_setBuffer_offset_atIndex_(encoder, v101, countBuffer, offset, 4, v102);
          ofRegionsCopy3 = ofRegions;
          v136 = vdupq_n_s64(1uLL);
          *v134 = v136;
          *&v134[16] = 1;
          objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v103, &ofRegionsCopy3, v134, v104, v105);
          v106 = *(&self->super.super.isa + v20);
          v107 = MPSLibrary::GetComputeState();
          if (v107)
          {
            objc_msgSend_setComputePipelineState_(encoder, v108, v107, v109, v110, v111);
            v112 = *(&self->super.super.isa + v20);
            MPSLibrary::ReleaseComputeState();
            objc_msgSend_setTexture_atIndex_(encoder, v113, texture, 0, v114, v115);
            objc_msgSend_setBytes_length_atIndex_(encoder, v116, v133, 4, 0, v117);
            objc_msgSend_setBuffer_offset_atIndex_(encoder, v118, infoBuffer, 0, 1, v119);
            objc_msgSend_setBytes_length_atIndex_(encoder, v120, rectangles, v35, 2, v121);
            objc_msgSend_setBuffer_offset_atIndex_(encoder, v122, countersBuffer, 0, 3, v123);
            objc_msgSend_setBuffer_offset_atIndex_(encoder, v124, heightCountersBuffer, 0, 4, v125);
            objc_msgSend_setBuffer_offset_atIndex_(encoder, v126, dataBuffer, bufferOffset, 5, v127);
            ofRegionsCopy3 = (height + 31) >> 5;
            v136.i64[0] = ofRegions;
            v136.i64[1] = 1;
            *v134 = 32;
            *&v134[8] = vdupq_n_s64(1uLL);
            objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v128, &ofRegionsCopy3, v134, v129, v130);
          }
        }
      }
    }

    free(rectangles);
  }

  else
  {

    free(rectangles);
  }
}

- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceTexture:(id)texture regions:(id *)regions numberOfRegions:(unint64_t)ofRegions keypointCountBuffer:(id)countBuffer keypointCountBufferOffset:(unint64_t)offset keypointDataBuffer:(id)self0 keypointDataBufferOffset:(unint64_t)self1
{
  v17 = *MEMORY[0x277CD7378];
  v18 = *(&self->super.super.isa + v17);
  if ((v18 & 1) == 0)
  {
    if (!texture && MTLReportFailureTypeEnabled())
    {
      v78 = objc_opt_class();
      textureCopy2 = NSStringFromClass(v78);
      MTLReportFailure();
    }

    v19 = v18 & 0xFFFFFFFFFFFFFFE2;
    if (v19 && MTLReportFailureTypeEnabled())
    {
      v79 = objc_opt_class();
      textureCopy2 = NSStringFromClass(v79);
      v92 = v19;
      MTLReportFailure();
    }

    objc_msgSend_textureType(texture, a2, encoder, buffer, texture, regions, textureCopy2, v92);
    if (objc_msgSend_textureType(texture, v20, v21, v22, v23, v24) != 2 && MTLReportFailureTypeEnabled())
    {
      textureCopy = texture;
      MTLReportFailure();
    }

    objc_msgSend_pixelFormat(texture, v25, v26, v27, v28, v29, textureCopy);
    if (objc_msgSend_pixelFormat(texture, v30, v31, v32, v33, v34) != 10 && MTLReportFailureTypeEnabled())
    {
      textureCopy2 = texture;
      v92 = objc_msgSend_pixelFormat(texture, v80, v81, v82, v83, v84);
      MTLReportFailure();
    }
  }

  if ((*(&self->super.super.isa + v17) & 1) == 0)
  {
    if (!regions && MTLReportFailureTypeEnabled())
    {
      v85 = objc_opt_class();
      textureCopy2 = NSStringFromClass(v85);
      MTLReportFailure();
    }

    if (!ofRegions && MTLReportFailureTypeEnabled())
    {
      v86 = objc_opt_class();
      textureCopy2 = NSStringFromClass(v86);
      MTLReportFailure();
    }

    if (!countBuffer && MTLReportFailureTypeEnabled())
    {
      v87 = objc_opt_class();
      textureCopy2 = NSStringFromClass(v87);
      MTLReportFailure();
    }

    if (!dataBuffer && MTLReportFailureTypeEnabled())
    {
      v88 = objc_opt_class();
      textureCopy2 = NSStringFromClass(v88);
      MTLReportFailure();
    }
  }

  selfCopy = self;
  v35 = MEMORY[0x23EE7BAC0](v98, buffer, 0);
  TempBuffer = MPSAutoCache::GetTempBuffer(v35, ofRegions << 10, 0);
  v37 = malloc_type_malloc(8 * ofRegions, 0x100004000313F17uLL);
  v38 = v37;
  countBufferCopy = countBuffer;
  bufferCopy = buffer;
  regionsCopy = regions;
  v39 = 0;
  if (ofRegions)
  {
    v40 = v37 + 2;
    p_var1 = &regions->var1.var1;
    ofRegionsCopy = ofRegions;
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

      --ofRegionsCopy;
    }

    while (ofRegionsCopy);
  }

  v47 = MPSAutoCache::GetTempBuffer(v98, 4 * ofRegions, 0);
  v53 = objc_msgSend_height(texture, v48, v49, v50, v51, v52);
  v54 = MPSAutoCache::GetTempBuffer(v98, v53 * 4 * ofRegions, 0);
  v55 = MPSAutoCache::GetTempBuffer(v98, 4 * ofRegions, 0);
  if (TempBuffer && v47 && v54)
  {
    v57 = v55;
    if (encoder)
    {
      objc_msgSend_encodeInternalToCommandEncoder_commandBuffer_sourceTexture_regions_numberOfRegions_keypointCountBuffer_keypointCountBufferOffset_keypointDataBuffer_keypointDataBufferOffset_rectangles_histogramBuffer_keypointInfoBuffer_rowCountersBuffer_heightCountersBuffer_maxRectangleHeight_(selfCopy, v56, encoder, bufferCopy, texture, regionsCopy, ofRegions, countBuffer, offset, dataBuffer, bufferOffset, v38, TempBuffer, v47, v54, v55, v39);
    }

    else
    {
      v58 = objc_alloc(MEMORY[0x277CD7210]);
      v66 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v58, v59, bufferCopy, 0, v60, v61);
      if ((*(&selfCopy->super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
      {
        v67 = *(&selfCopy->super.super.isa + *MEMORY[0x277CD7360]);
        if (v67 || (v68 = objc_opt_class(), v67 = NSStringFromClass(v68), objc_msgSend_setLabel_(selfCopy, v69, v67, v70, v71, v72), v67))
        {
          objc_msgSend_setLabel_(v66, v62, v67, v63, v64, v65, textureCopy2, v92);
        }
      }

      objc_msgSend_encodeInternalToCommandEncoder_commandBuffer_sourceTexture_regions_numberOfRegions_keypointCountBuffer_keypointCountBufferOffset_keypointDataBuffer_keypointDataBufferOffset_rectangles_histogramBuffer_keypointInfoBuffer_rowCountersBuffer_heightCountersBuffer_maxRectangleHeight_(selfCopy, v62, v66, bufferCopy, texture, regionsCopy, ofRegions, countBufferCopy, offset, dataBuffer, bufferOffset, v38, TempBuffer, v47, v54, v57, v39);
      objc_msgSend_endEncoding(v66, v73, v74, v75, v76, v77);
    }
  }

  else
  {
    if (!regions && (*(&selfCopy->super.super.isa + v17) & 1) == 0 && MTLReportFailureTypeEnabled())
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