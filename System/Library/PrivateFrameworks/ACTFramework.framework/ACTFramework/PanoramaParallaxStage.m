@interface PanoramaParallaxStage
- (PanoramaParallaxStage)initWithContext:(id)a3 bitDepth:(int)a4;
- (int)_allocateShiftPyramidLike:(id)a3;
- (int)_applyWarpToSlice:(id)a3 chroma:(id)a4 mask:(id)a5 preFlow:(id)a6 warpedLuma:(id)a7 warpedChroma:(id)a8 warpedMask:(id)a9;
- (int)_buildShiftPyramid;
- (int)prepareToProcessSliceWidth:(unint64_t)a3 sliceHeight:(unint64_t)a4;
- (int)purgeResources;
- (uint64_t)_computePreShift:(simd_float3)a3 homography:(simd_float3)a4;
- (uint64_t)addSlice:(double)a3 mask:(double)a4 homography:(uint64_t)a5 residualFlow:(__CVBuffer *)a6;
- (void)dealloc;
@end

@implementation PanoramaParallaxStage

- (void)dealloc
{
  objc_msgSend_purgeResources(self, a2, v2, v3);
  v5.receiver = self;
  v5.super_class = PanoramaParallaxStage;
  [(PanoramaParallaxStage *)&v5 dealloc];
}

- (int)_applyWarpToSlice:(id)a3 chroma:(id)a4 mask:(id)a5 preFlow:(id)a6 warpedLuma:(id)a7 warpedChroma:(id)a8 warpedMask:(id)a9
{
  metal = self->_metal;
  v70 = a9;
  v69 = a8;
  v17 = a7;
  v18 = a6;
  v19 = a5;
  v20 = a4;
  v21 = a3;
  v25 = objc_msgSend_commandQueue(metal, v22, v23, v24);
  v29 = objc_msgSend_commandBuffer(v25, v26, v27, v28);

  objc_msgSend_setLabel_(v29, v30, @"Panorama:ParallaxStage:_applyWarpToSlice", v31);
  v35 = objc_msgSend_computeCommandEncoder(v29, v32, v33, v34);
  v39 = objc_msgSend_applyWarpToSlice(self->_shaders, v36, v37, v38);
  getThreadgroupSizeForShader(v39, &v74);

  v43 = objc_msgSend_applyWarpToSlice(self->_shaders, v40, v41, v42);
  objc_msgSend_setComputePipelineState_(v35, v44, v43, v45);

  objc_msgSend_setTexture_atIndex_(v35, v46, v21, 0);
  objc_msgSend_setTexture_atIndex_(v35, v47, v20, 1);
  objc_msgSend_setTexture_atIndex_(v35, v48, v19, 2);

  objc_msgSend_setTexture_atIndex_(v35, v49, v18, 3);
  objc_msgSend_setTexture_atIndex_(v35, v50, v17, 4);

  objc_msgSend_setTexture_atIndex_(v35, v51, v69, 5);
  objc_msgSend_setTexture_atIndex_(v35, v52, v70, 6);

  v56 = objc_msgSend_width(v20, v53, v54, v55);
  v60 = objc_msgSend_height(v20, v57, v58, v59);

  v73[0] = v56;
  v73[1] = v60;
  v73[2] = 1;
  v71 = v74;
  v72 = v75;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v35, v61, v73, &v71);
  objc_msgSend_endEncoding(v35, v62, v63, v64);
  objc_msgSend_commit(v29, v65, v66, v67);

  return 0;
}

- (int)_buildShiftPyramid
{
  v5 = objc_msgSend_commandQueue(self->_metal, a2, v2, v3);
  v9 = objc_msgSend_commandBuffer(v5, v6, v7, v8);

  objc_msgSend_setLabel_(v9, v10, @"Panorama:ParallaxStage:_buildShiftPyramid", v11);
  v15 = objc_msgSend_computeCommandEncoder(v9, v12, v13, v14);
  v19 = objc_msgSend_downsampleShifts(self->_shaders, v16, v17, v18);
  getThreadgroupSizeForShader(v19, &v52);

  for (i = 1; i != 4; ++i)
  {
    v23 = objc_msgSend_objectAtIndexedSubscript_(self->_preShiftPyramid, v20, i - 1, v21);
    v26 = objc_msgSend_objectAtIndexedSubscript_(self->_preShiftPyramid, v24, i, v25);
    v30 = objc_msgSend_downsampleShifts(self->_shaders, v27, v28, v29);
    objc_msgSend_setComputePipelineState_(v15, v31, v30, v32);

    objc_msgSend_setTexture_atIndex_(v15, v33, v23, 0);
    objc_msgSend_setTexture_atIndex_(v15, v34, v26, 1);
    v38 = objc_msgSend_width(v26, v35, v36, v37);
    v42 = objc_msgSend_height(v26, v39, v40, v41);
    v51[0] = v38;
    v51[1] = v42;
    v51[2] = 1;
    v49 = v52;
    v50 = v53;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v15, v43, v51, &v49);
  }

  objc_msgSend_endEncoding(v15, v20, v44, v21);
  objc_msgSend_commit(v9, v45, v46, v47);

  return 0;
}

- (uint64_t)_computePreShift:(simd_float3)a3 homography:(simd_float3)a4
{
  v55.columns[1] = a3;
  v55.columns[2] = a4;
  v55.columns[0] = a2;
  v64[0] = a2;
  v64[1] = a3;
  v64[2] = a4;
  v62 = 0u;
  v63 = 0u;
  v61 = 0u;
  v7 = a6;
  v65 = __invert_f3(v55);
  DWORD2(v61) = v65.columns[0].i32[2];
  DWORD2(v62) = v65.columns[1].i32[2];
  *&v61 = v65.columns[0].i64[0];
  *&v62 = v65.columns[1].i64[0];
  DWORD2(v63) = v65.columns[2].i32[2];
  *&v63 = v65.columns[2].i64[0];
  v11 = objc_msgSend_commandQueue(a1[1], v8, v9, v10);
  v15 = objc_msgSend_commandBuffer(v11, v12, v13, v14);

  objc_msgSend_setLabel_(v15, v16, @"Panorama:ParallaxStage:_computePreShift", v17);
  v21 = objc_msgSend_computeCommandEncoder(v15, v18, v19, v20);
  v25 = objc_msgSend_computePreShifts(a1[2], v22, v23, v24);
  getThreadgroupSizeForShader(v25, &v59);

  v29 = objc_msgSend_computePreShifts(a1[2], v26, v27, v28);
  objc_msgSend_setComputePipelineState_(v21, v30, v29, v31);

  objc_msgSend_setTexture_atIndex_(v21, v32, v7, 0);
  v35 = objc_msgSend_objectAtIndexedSubscript_(a1[5], v33, 0, v34);
  objc_msgSend_setTexture_atIndex_(v21, v36, v35, 1);

  objc_msgSend_setBytes_length_atIndex_(v21, v37, v64, 48, 0);
  objc_msgSend_setBytes_length_atIndex_(v21, v38, &v61, 48, 1);
  v42 = objc_msgSend_width(v7, v39, v40, v41);
  v46 = objc_msgSend_height(v7, v43, v44, v45);

  v58[0] = v42;
  v58[1] = v46;
  v58[2] = 1;
  v56 = v59;
  v57 = v60;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v21, v47, v58, &v56);
  objc_msgSend_endEncoding(v21, v48, v49, v50);
  objc_msgSend_commit(v15, v51, v52, v53);

  return 0;
}

- (int)purgeResources
{
  if (self->_warpedFrame)
  {
    warpedLuma = self->_warpedLuma;
    self->_warpedLuma = 0;

    warpedChroma = self->_warpedChroma;
    self->_warpedChroma = 0;

    CVPixelBufferRelease(self->_warpedFrame);
    self->_warpedFrame = 0;
  }

  warpedMask = self->_warpedMask;
  if (warpedMask)
  {
    self->_warpedMask = 0;
  }

  return 0;
}

- (PanoramaParallaxStage)initWithContext:(id)a3 bitDepth:(int)a4
{
  v7 = a3;
  v20.receiver = self;
  v20.super_class = PanoramaParallaxStage;
  v8 = [(PanoramaParallaxStage *)&v20 init];
  v9 = v8;
  if (v8 && (objc_storeStrong(&v8->_metal, a3), v10 = [PanoramaParallaxStageShaders alloc], v13 = objc_msgSend_initWithContext_(v10, v11, v7, v12), shaders = v9->_shaders, v9->_shaders = v13, shaders, v9->_shaders))
  {
    warpedMask = v9->_warpedMask;
    v9->_warpedFrame = 0;
    v9->_warpedMask = 0;

    v16 = objc_opt_new();
    preShiftPyramid = v9->_preShiftPyramid;
    v9->_preShiftPyramid = v16;

    v9->_MTLPixelFormatY = getLumaMTLPixelFormat(a4);
    v9->_MTLPixelFormatUV = getChromaMTLPixelFormat(a4);
    v9->_CVPixelFormat = getCVPixelFormat(a4);
    v18 = v9;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (int)prepareToProcessSliceWidth:(unint64_t)a3 sliceHeight:(unint64_t)a4
{
  v36[1] = *MEMORY[0x277D85DE8];
  v35 = *MEMORY[0x277CC4DE8];
  v36[0] = MEMORY[0x277CBEC10];
  v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v36, &v35, 1);
  if (objc_msgSend_width(self->_warpedLuma, v8, v9, v10) == a3 && objc_msgSend_height(self->_warpedLuma, v11, v12, v13) == a4)
  {
    goto LABEL_9;
  }

  if (objc_msgSend_purgeResources(self, v11, v12, v13) || !self->_warpedFrame && ((CVPixelBufferCreate(0, a3, a4, self->_CVPixelFormat, v7, &self->_warpedFrame), (warpedFrame = self->_warpedFrame) == 0) || (objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metal, v15, warpedFrame, self->_MTLPixelFormatY, 3, 0), v17 = objc_claimAutoreleasedReturnValue(), warpedLuma = self->_warpedLuma, self->_warpedLuma = v17, warpedLuma, !self->_warpedLuma) || (objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metal, v19, self->_warpedFrame, self->_MTLPixelFormatUV, 3, 1), v20 = objc_claimAutoreleasedReturnValue(), warpedChroma = self->_warpedChroma, self->_warpedChroma = v20, warpedChroma, !self->_warpedChroma)))
  {
    v23 = 0;
    v22 = 2;
    goto LABEL_13;
  }

  if (self->_warpedMask)
  {
LABEL_9:
    v22 = 0;
    v23 = 0;
  }

  else
  {
    v23 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x277CD7058], v14, self->_MTLPixelFormatY, a3 >> 1, a4 >> 1, 0);
    objc_msgSend_setUsage_(v23, v24, 3, v25);
    v29 = objc_msgSend_device(self->_metal, v26, v27, v28);
    v32 = objc_msgSend_newTextureWithDescriptor_(v29, v30, v23, v31);
    warpedMask = self->_warpedMask;
    self->_warpedMask = v32;

    if (self->_warpedMask)
    {
      v22 = 0;
    }

    else
    {
      v22 = 2;
    }
  }

LABEL_13:

  return v22;
}

- (int)_allocateShiftPyramidLike:(id)a3
{
  v4 = a3;
  if (objc_msgSend_count(self->_preShiftPyramid, v5, v6, v7) >= 4)
  {
    v11 = objc_msgSend_objectAtIndexedSubscript_(self->_preShiftPyramid, v8, 0, v10);
    v15 = objc_msgSend_width(v11, v12, v13, v14);
    if (v15 == objc_msgSend_width(v4, v16, v17, v18))
    {
      v21 = objc_msgSend_objectAtIndexedSubscript_(self->_preShiftPyramid, v19, 0, v20);
      v25 = objc_msgSend_height(v21, v22, v23, v24);
      v29 = objc_msgSend_height(v4, v26, v27, v28);

      v30 = 0;
      v31 = 0;
      if (v25 == v29)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  objc_msgSend_removeAllObjects(self->_preShiftPyramid, v8, v9, v10);
  v32 = MEMORY[0x277CD7058];
  v36 = objc_msgSend_width(v4, v33, v34, v35);
  v40 = objc_msgSend_height(v4, v37, v38, v39);
  v30 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(v32, v41, 65, v36, v40, 0);
  v42 = 3;
  objc_msgSend_setUsage_(v30, v43, 3, v44);
  v48 = objc_msgSend_device(self->_metal, v45, v46, v47);
  v31 = objc_msgSend_newTextureWithDescriptor_(v48, v49, v30, v50);

  if (!v31)
  {
LABEL_14:
    v56 = 0;
    goto LABEL_15;
  }

  objc_msgSend_addObject_(self->_preShiftPyramid, v51, v31, v52);
LABEL_8:
  if (objc_msgSend_count(self->_preShiftPyramid, v8, v9, v10) > 3)
  {
    v42 = 0;
    goto LABEL_14;
  }

  v56 = 0;
  while (1)
  {
    v57 = v30;
    v58 = v56;
    v59 = v31;
    v56 = objc_msgSend_lastObject(self->_preShiftPyramid, v53, v54, v55);

    v60 = MEMORY[0x277CD7058];
    v64 = objc_msgSend_width(v56, v61, v62, v63) >> 1;
    v68 = objc_msgSend_height(v56, v65, v66, v67);
    v30 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(v60, v69, 65, v64, v68 >> 1, 0);

    objc_msgSend_setUsage_(v30, v70, 3, v71);
    v75 = objc_msgSend_device(self->_metal, v72, v73, v74);
    v31 = objc_msgSend_newTextureWithDescriptor_(v75, v76, v30, v77);

    if (!v31)
    {
      break;
    }

    objc_msgSend_addObject_(self->_preShiftPyramid, v78, v31, v79);
    if (objc_msgSend_count(self->_preShiftPyramid, v80, v81, v82) >= 4)
    {
      v42 = 0;
      goto LABEL_15;
    }
  }

  v42 = 3;
LABEL_15:

  return v42;
}

- (uint64_t)addSlice:(double)a3 mask:(double)a4 homography:(uint64_t)a5 residualFlow:(__CVBuffer *)a6
{
  v11 = a7;
  Width = CVPixelBufferGetWidth(a6);
  Height = CVPixelBufferGetHeight(a6);
  v15 = objc_msgSend_prepareToProcessSliceWidth_sliceHeight_(a1, v14, Width, Height);
  if (v15)
  {
    v35 = v15;
    v18 = 0;
    v20 = 0;
    v23 = 0;
    goto LABEL_9;
  }

  v18 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(*(a1 + 8), v16, a6, *(a1 + 48), 1, 0);
  if (!v18)
  {
    v20 = 0;
    goto LABEL_13;
  }

  v20 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(*(a1 + 8), v17, a6, *(a1 + 56), 1, 1);
  if (!v20)
  {
LABEL_13:
    v23 = 0;
    goto LABEL_14;
  }

  v23 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(*(a1 + 8), v19, a8, 65, 1, 0);
  if (!v23)
  {
LABEL_14:
    v35 = 3;
    goto LABEL_9;
  }

  ShiftPyramidLike = objc_msgSend__allocateShiftPyramidLike_(a1, v21, v23, v22);
  if (ShiftPyramidLike || (ShiftPyramidLike = objc_msgSend__computePreShift_homography_(a1, v25, v23, v26, a2, a3, a4), ShiftPyramidLike) || (ShiftPyramidLike = objc_msgSend__buildShiftPyramid(a1, v27, v28, v29), ShiftPyramidLike))
  {
    v35 = ShiftPyramidLike;
  }

  else
  {
    v33 = objc_msgSend_lastObject(*(a1 + 40), v30, v31, v32);
    v35 = objc_msgSend__applyWarpToSlice_chroma_mask_preFlow_warpedLuma_warpedChroma_warpedMask_(a1, v34, v18, v20, v11, v33, *(a1 + 24), *(a1 + 32), *(a1 + 104));
  }

LABEL_9:

  return v35;
}

@end