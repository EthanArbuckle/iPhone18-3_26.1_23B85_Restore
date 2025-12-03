@interface PanoramaRegistrationStage
- (BOOL)_isRetrogradeMotion:(__n128)motion tolerance:(double)tolerance;
- (CGRect)roi;
- (PanoramaRegistrationStage)initWithContext:(id)context;
- (__n128)registerNewSlice:(float32x4_t)slice withHFromGyro:(float32x4_t)gyro registrationCallback:(uint64_t)callback;
- (float32x4_t)_setRegistrationParams:(float32x4_t)params initTransform:(float32x4_t)transform;
- (int)prepareToProcessWithDevice:(id)device library:(id)library commandQueue:(id)queue width:(unint64_t)width height:(unint64_t)height;
- (int)resetState;
- (uint64_t)_checkForNaNs:;
- (uint64_t)_computeRegistration:(double)registration metadata:(double)metadata initTransform:(uint64_t)transform;
- (uint64_t)_isTranslationOutlier:(uint64_t)outlier;
- (uint64_t)_logTransform:(void *)transform metadata:(uint64_t)metadata message:(int)message error:;
- (void)dealloc;
- (void)replacePreviousSlice:(__CVBuffer *)slice;
- (void)setHomography:(__n128)homography;
@end

@implementation PanoramaRegistrationStage

- (void)dealloc
{
  lastSlice = self->_lastSlice;
  if (lastSlice)
  {
    CVPixelBufferRelease(lastSlice);
  }

  self->_lastSlice = 0;
  residualFlow = self->_residualFlow;
  if (residualFlow)
  {
    CVPixelBufferRelease(residualFlow);
  }

  self->_residualFlow = 0;
  v5.receiver = self;
  v5.super_class = PanoramaRegistrationStage;
  [(PanoramaRegistrationStage *)&v5 dealloc];
}

- (int)resetState
{
  lastSlice = self->_lastSlice;
  if (lastSlice)
  {
    CVPixelBufferRelease(lastSlice);
  }

  v6 = MEMORY[0x277D860B0];
  self->_lastSlice = 0;
  v7 = v6[1];
  *&self[1].super.isa = *v6;
  *&self[1]._shaders = v7;
  *&self[1]._direction = v6[2];
  *&self->_homographyFailure = 0;
  self->_direction = 1;
  self->_slicesProcessed = 0;
  objc_msgSend_reset(self->_lkt, a2, v2, v3);
  return 0;
}

- (int)prepareToProcessWithDevice:(id)device library:(id)library commandQueue:(id)queue width:(unint64_t)width height:(unint64_t)height
{
  v49[1] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  libraryCopy = library;
  queueCopy = queue;
  heightCopy = height;
  widthCopy = width;
  if (!self->_lkt)
  {
    v16 = [LKTFlowGPU alloc];
    v18 = objc_msgSend_initWithMetalContext_ICPtransform_width_height_nscales_flowUpperMostScale_(v16, v17, self->_metal, 8, width, height, 0xFFFFFFFFLL, self->_flowUpperMostScale);
    lkt = self->_lkt;
    self->_lkt = v18;

    objc_msgSend_setInputPixelFormat_(self->_lkt, v20, 2, v21);
    objc_msgSend_setUseNonLocalRegularization_(self->_lkt, v22, 0, v23);
  }

  if (self->_flowUpperMostScale >= 1)
  {
    calculateHalfResolution(&widthCopy, &heightCopy);
  }

  p_residualFlow = &self->_residualFlow;
  if (!self->_residualFlow)
  {
    v48 = *MEMORY[0x277CC4DE8];
    v49[0] = MEMORY[0x277CBEC10];
    v25 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v14, v49, &v48, 1);
    v26 = widthCopy;
    v27 = heightCopy;
    v28 = v25;
    CVPixelBufferCreate(0, v26, v27, 0x32433068u, v28, &self->_residualFlow);
    if (!*p_residualFlow)
    {
      goto LABEL_14;
    }

    objc_msgSend_setOutputUV_(self->_lkt, v29, *p_residualFlow, v30);
  }

  if (!self->_registrationWeights)
  {
    v28 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x277CD7058], v14, 55, widthCopy, heightCopy, 0);
    objc_msgSend_setUsage_(v28, v32, 3, v33);
    v37 = objc_msgSend_device(self->_metal, v34, v35, v36);
    v40 = objc_msgSend_newTextureWithDescriptor_(v37, v38, v28, v39);
    registrationWeights = self->_registrationWeights;
    self->_registrationWeights = v40;

    v44 = self->_registrationWeights;
    if (v44)
    {
      objc_msgSend_setICPWeights_(self->_lkt, v42, v44, v43);
      v31 = 0;
LABEL_12:

      goto LABEL_13;
    }

LABEL_14:
    v31 = 2;
    goto LABEL_12;
  }

  v31 = 0;
LABEL_13:

  return v31;
}

- (uint64_t)_checkForNaNs:
{
  for (i = 0; i != 3; ++i)
  {
      ;
    }
  }

  return 0;
}

- (uint64_t)_isTranslationOutlier:(uint64_t)outlier
{
  v20 = a5.n128_u32[2];
  if (objc_msgSend__checkForNaNs_(self, a2, outlier, a4, *&a6))
  {
    return 1;
  }

  _S0 = v20;
  __asm { FMLA            S1, S0, V2.S[2] }

  v14 = sqrtf(_S1);
  v15 = self[22];
  v16 = self + 12;
  if (v15 >= 10)
  {
    v18 = 0;
    v19 = 0.0;
    do
    {
      v19 = v19 + *&v16[v18++];
    }

    while (v18 != 10);
    if (vabds_f32(v19 / 10.0, v14) > 4032.0)
    {
      return 1;
    }

    v17 = v15 % 0xAu;
  }

  else
  {
    v17 = v15 % 10;
  }

  result = 0;
  *&v16[v17] = v14;
  self[22] = v15 + 1;
  return result;
}

- (BOOL)_isRetrogradeMotion:(__n128)motion tolerance:(double)tolerance
{
  if (*(self + 32) == 1)
  {
    return motion.n128_f32[2] < -a5;
  }

  else
  {
    return motion.n128_f32[2] > a5;
  }
}

- (uint64_t)_logTransform:(void *)transform metadata:(uint64_t)metadata message:(int)message error:
{
  v6 = objc_msgSend_objectForKeyedSubscript_(transform, a2, @"SliceNumber", metadata);
  v10 = objc_msgSend_intValue(v6, v7, v8, v9);

  if (message)
  {
    v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();

    HostTime = ACT_getHostTime();
    return panoLog(4, "FrameID:%04d time %.3f: %s %9.6f %9.6f %9.6f  %9.6f %9.6f %9.6f  %9.6f %9.6f %9.6f\n", v10, *&HostTime);
  }

  else
  {
    v12 = ACT_getHostTime();
    return panoLog(32, "FrameID:%04d time %.3f: %s %9.6f %9.6f %9.6f  %9.6f %9.6f %9.6f  %9.6f %9.6f %9.6f\n", v10, *&v12);
  }
}

- (float32x4_t)_setRegistrationParams:(float32x4_t)params initTransform:(float32x4_t)transform
{
  v7 = a6;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = objc_msgSend_objectForKeyedSubscript_(v7, v9, @"PreviousFrameDropped", v10);
  v15 = objc_msgSend_BOOLValue(v11, v12, v13, v14);

  v18 = objc_msgSend_objectForKeyedSubscript_(v7, v16, @"SliceNumber", v17);
  v22 = objc_msgSend_intValue(v18, v19, v20, v21);

  v26 = vdupq_n_s32(0x2EDBE6FFu);
  v27 = vandq_s8(vandq_s8(vcgeq_f32(v26, vabdq_f32(params, *(MEMORY[0x277D860B0] + 16))), vcgeq_f32(v26, vabdq_f32(a2, *MEMORY[0x277D860B0]))), vcgeq_f32(v26, vabdq_f32(transform, *(MEMORY[0x277D860B0] + 32))));
  v27.i32[3] = v27.i32[2];
  if ((vminvq_u32(v27) & 0x80000000) != 0)
  {
    a2 = *(self + 176);
    v28 = 0.0000001;
  }

  else
  {
    v28 = 0.0001;
  }

  if (objc_msgSend_getMaxNumberOfScales(*(self + 24), v23, v24, v25) >= 1)
  {
    v33 = 0;
    do
    {
      *&v32 = v28;
      v34 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v29, v30, v31, v32);
      objc_msgSend_addObject_(v8, v35, v34, v36);

      ++v33;
    }

    while (v33 < objc_msgSend_getMaxNumberOfScales(*(self + 24), v37, v38, v39));
  }

  v40 = *(self + 24);
  ICPDecimationFactor = objc_msgSend__getICPDecimationFactor(self, v29, v30, v31);
  objc_msgSend_setPresetICP_withRegularizerTerms_decimation_factor_(v40, v42, 5, v8, ICPDecimationFactor);
  HostTime = ACT_getHostTime();
  LODWORD(v40) = objc_msgSend_nscales_icp(*(self + 24), v44, v45, v46);
  v50 = objc_msgSend_warping_scheme_icp(*(self + 24), v47, v48, v49);
  panoLog(32, "FrameID:%04d time %.3f: registration settings scales=%d warps=%d reg_term=%.10f prevFrameDropped=%d\n", v22, HostTime, v40, v50, v28, v15);

  return a2;
}

- (void)replacePreviousSlice:(__CVBuffer *)slice
{
  lastSlice = self->_lastSlice;
  if (lastSlice)
  {
    CVPixelBufferRelease(lastSlice);
  }

  self->_lastSlice = slice;

  CVPixelBufferRetain(slice);
}

- (CGRect)roi
{
  x = self->_roi.origin.x;
  y = self->_roi.origin.y;
  width = self->_roi.size.width;
  height = self->_roi.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setHomography:(__n128)homography
{
  v4[0] = a2;
  v4[1] = homography;
  v4[2] = a4;
  objc_copyStruct((self + 176), v4, 48, 1, 0);
}

- (PanoramaRegistrationStage)initWithContext:(id)context
{
  contextCopy = context;
  v23.receiver = self;
  v23.super_class = PanoramaRegistrationStage;
  v6 = [(PanoramaRegistrationStage *)&v23 init];
  v7 = v6;
  if (v6 && (objc_storeStrong(&v6->_metal, context), v8 = [PanoramaRegistrationShaders alloc], v11 = objc_msgSend_initWithContext_(v8, v9, contextCopy, v10), shaders = v7->_shaders, v7->_shaders = v11, shaders, v7->_shaders) && (lkt = v7->_lkt, v7->_lkt = 0, lkt, v7->_direction = 1, LKTFlowUpperMostScale = objc_msgSend__getLKTFlowUpperMostScale(v7, v14, v15, v16), v7->_flowUpperMostScale = LKTFlowUpperMostScale, LKTFlowUpperMostScale <= 1))
  {
    v7->_lastSlice = 0;
    v18 = MEMORY[0x277D860B0];
    v19 = *(MEMORY[0x277D860B0] + 16);
    *&v7[1].super.isa = *MEMORY[0x277D860B0];
    *&v7[1]._shaders = v19;
    *&v7[1]._direction = *(v18 + 32);
    *v7->_translationsMagnitude = 0u;
    *&v7->_translationsMagnitude[4] = 0u;
    *(&v7->_translationsMagnitude[7] + 1) = 0u;
    registrationWeights = v7->_registrationWeights;
    v7->_residualFlow = 0;
    v7->_registrationWeights = 0;

    fig_note_initialize_category_with_default_work();
    v21 = v7;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (uint64_t)_computeRegistration:(double)registration metadata:(double)metadata initTransform:(uint64_t)transform
{
  v9 = a7;
  if (*(self + 24))
  {
    Width = CVPixelBufferGetWidth(a6);
    Height = CVPixelBufferGetHeight(a6);
    objc_msgSend__resetHomographyFailureFlagToFalse(self, v12, v13, v14);
    objc_msgSend__resetRetrogradeMotionFlagToFalse(self, v15, v16, v17);
    objc_msgSend__setRegistrationParams_initTransform_(self, v18, v9, v19, a2, registration, metadata);
    v23 = convertCoordMetalToLKT(v20, v21, v22, Width, Height);
    v91 = v24;
    v97 = v23;
    v85 = v25;
    objc_msgSend__logTransform_metadata_message_error_(self, v26, v9, "transform init    ", 0);
    objc_msgSend_estimatePanoRegistration_metadata_initTForm_(*(self + 24), v27, a6, v9, v97, v91, v85);
    objc_msgSend_getParametricTransform(*(self + 24), v28, v29, v30);
    v92 = v32;
    v98 = v31;
    v86 = v33;
    v35 = objc_msgSend__logTransform_metadata_message_error_(self, v34, v9, "transform computed", 0);
    *&v43 = sub_23C46A094(v35, v36, v37, v38, v39, v40, v41, v42, v86, *(&v86 + 1), v92, *(&v92 + 1), v98).n128_u64[0];
    isTranslationOutlier = objc_msgSend__isTranslationOutlier_(v44, v45, v46, v47, v43);
    if (isTranslationOutlier)
    {
      v56 = objc_msgSend__setHomographyFailureFlag(self, v49, v50, v51);
      *&v63 = sub_23C46A094(v56, v57, v58, "transform computed", v59, v60, v61, v62, v87, v89, v93, v95, *&v99).n128_u64[0];
      isTranslationOutlier = objc_msgSend__logTransform_metadata_message_error_(v64, v65, v9, v66, 1, v63);
    }

    *&v67 = sub_23C46A094(isTranslationOutlier, v49, v50, v51, v52, v53, v54, v55, v87, v89, v93, v95, *&v99).n128_u64[0];
    if (objc_msgSend__isRetrogradeMotion_tolerance_(v68, v69, v70, v71, v67))
    {
      objc_msgSend__setRetrogradeMotionFlag(self, v72, v73, v74);
    }

    v75.f32[0] = Width;
    v76 = convertCoordLKTToMetal(v100, v94, v88, v75, Height);
    v77 = 0;
    *(self + 184) = v78;
    *(self + 200) = v79;
    *(self + 176) = v76;
    *(self + 192) = v80;
    *(self + 216) = v81;
    *(self + 208) = v82;
  }

  else
  {
    v77 = 2;
  }

  return v77;
}

- (__n128)registerNewSlice:(float32x4_t)slice withHFromGyro:(float32x4_t)gyro registrationCallback:(uint64_t)callback
{
  v39 = *MEMORY[0x277D85DE8];
  v9 = a7;
  ImageBuffer = CMSampleBufferGetImageBuffer(a6);
  v32 = *(MEMORY[0x277D860B0] + 16);
  v34 = *MEMORY[0x277D860B0];
  v30 = *(MEMORY[0x277D860B0] + 32);
  v12 = CMGetAttachment(a6, @"MetadataDictionary", 0);
  if (!*(self + 40))
  {
    v13 = vandq_s8(vandq_s8(vceqq_f32(slice, v32), vceqq_f32(a2, v34)), vceqq_f32(gyro, v30));
    v13.i32[3] = v13.i32[2];
    if ((vminvq_u32(v13) & 0x80000000) == 0)
    {
      v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *(self + 40) = ImageBuffer;
    CVPixelBufferRetain(ImageBuffer);
  }

  if (*(self + 93) == 1)
  {
    v15 = 0;
    v16 = *(self + 176);
    v17 = *(self + 192);
    v18 = *(self + 208);
    v38[0] = a2;
    v38[1] = slice;
    v38[2] = gyro;
    v35 = 0u;
    v36 = 0u;
    *v37 = 0u;
    do
    {
      *(&v35 + v15 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v16, COERCE_FLOAT(*&v38[v15])), v17, *v38[v15].f32, 1), v18, v38[v15], 2);
      ++v15;
    }

    while (v15 != 3);
    inited = objc_msgSend__computeRegistration_metadata_initTransform_(self, v11, ImageBuffer, v12, *&v35, *&v36, v37[0]);
  }

  else
  {
    inited = objc_msgSend__computeRegistration_metadata_initTransform_(self, v11, ImageBuffer, v12, *a2.i64, *slice.i64, *gyro.i64);
  }

  if (!inited)
  {
    v33 = *(self + 192);
    v34 = *(self + 176);
    v31 = *(self + 208);
    if ((objc_msgSend_hasHomographyFailureFlag(self, v20, v21, v22) & 1) == 0 && (objc_msgSend_hasRetrogradeMotionFlag(self, v23, v24, v25) & 1) == 0)
    {
      objc_msgSend_replacePreviousSlice_(self, v23, ImageBuffer, v25);
      if (!v9)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    objc_msgSend_resetCurrentFrameIndex(*(self + 24), v23, v24, v25);
    if (v9)
    {
LABEL_14:
      v9[2](v9, *(self + 120), v34, v33, v31);
    }
  }

LABEL_15:

  return v34;
}

@end