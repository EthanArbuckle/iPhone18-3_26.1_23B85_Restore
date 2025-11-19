@interface ADBinocularDepthPipeline
- (ADBinocularDepthPipeline)initWithPrioritization:(int64_t)a3 espressoEngine:(unint64_t)a4;
- (int64_t)extractYChannelFromColorInput:(__CVBuffer *)a3 toBuffer:(__CVBuffer *)a4;
- (int64_t)postProcessDisparity:(__CVBuffer *)a3 outputDepth:(__CVBuffer *)a4;
- (int64_t)postProcessEspressoConfidence:(__CVBuffer *)a3 outputConfidence:(__CVBuffer *)a4;
- (int64_t)postProcessEspressoConfidence:(__CVBuffer *)a3 outputConfidence:(__CVBuffer *)a4 confidenceUnits:(unint64_t)a5;
- (int64_t)prepareStereoWarpMeshesWithRefCalib:(id)a3 auxCalib:(id)a4;
- (int64_t)warpImage:(__CVBuffer *)a3 processedImage:(__CVBuffer *)a4 isRef:(BOOL)a5;
@end

@implementation ADBinocularDepthPipeline

- (int64_t)postProcessDisparity:(__CVBuffer *)a3 outputDepth:(__CVBuffer *)a4
{
  v18 = 335681884;
  v19 = 0u;
  v20 = 0u;
  kdebug_trace();
  if (self->_refCalib)
  {
    if (self->_auxCalib)
    {
      auxOutputCalib = self->_auxOutputCalib;
      if (auxOutputCalib)
      {
        [(ADCameraCalibration *)auxOutputCalib intrinsicMatrix];
        v16 = v8;
        [(ADCameraCalibration *)self->_refCalib cameraToPlatformTransform];
        v15 = v9;
        [(ADCameraCalibration *)self->_auxCalib cameraToPlatformTransform];
        v11 = vsubq_f32(v10, v15);
        v12 = vmulq_f32(v11, v11);
        PixelBufferUtils::inPlaceColorScaling(a3, 1, 1.0 / (v16 * (sqrtf(v12.f32[2] + vaddv_f32(*v12.f32)) / 1000.0)), 0.0, 1);
      }
    }
  }

  v13 = [ADUtils postProcessDepth:a3 depthOutput:a4];
  if (v13 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed populating depth pixel buffer from disparity", buf, 2u);
  }

  kdebug_trace();
  return v13;
}

- (int64_t)postProcessEspressoConfidence:(__CVBuffer *)a3 outputConfidence:(__CVBuffer *)a4 confidenceUnits:(unint64_t)a5
{
  kdebug_trace();
  v8 = [ADUtils postProcessConfidence:a3 confidenceOutput:a4 rawConfidenceUnits:2 outConfidenceUnits:a5 confidenceLevelRanges:0];
  kdebug_trace();
  return v8;
}

- (int64_t)postProcessEspressoConfidence:(__CVBuffer *)a3 outputConfidence:(__CVBuffer *)a4
{
  v7 = [(ADBinocularDepthPipelineParameters *)self->_pipelineParameters confidenceUnits];

  return [(ADBinocularDepthPipeline *)self postProcessEspressoConfidence:a3 outputConfidence:a4 confidenceUnits:v7];
}

- (ADBinocularDepthPipeline)initWithPrioritization:(int64_t)a3 espressoEngine:(unint64_t)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v23 = 335679912;
  v24 = 0u;
  v25 = 0u;
  kdebug_trace();
  v22.receiver = self;
  v22.super_class = ADBinocularDepthPipeline;
  v7 = [(ADBinocularDepthPipeline *)&v22 init];
  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = objc_opt_new();
  pipelineParameters = v7->_pipelineParameters;
  v7->_pipelineParameters = v8;

  if (a3 != 2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v21 = [ADUtils prioritizationAsString:a3];
      *buf = 138412290;
      v27 = v21;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "unsupported prioritization for Binocular pipeline: %@", buf, 0xCu);
    }

    goto LABEL_8;
  }

  v10 = [ADNetworkProvider providerForNetwork:@"MindfulNet" espressoEngine:a4];
  networkProvider = v7->_networkProvider;
  v7->_networkProvider = v10;

  if (!v7->_networkProvider)
  {
LABEL_8:
    v19 = 0;
    goto LABEL_9;
  }

  v12 = [[ADEspressoBinocularDepthInferenceDescriptor alloc] initWithNetworkProvider:v7->_networkProvider prioritization:2 espressoEngine:a4];
  inferenceDescriptor = v7->_inferenceDescriptor;
  v7->_inferenceDescriptor = v12;

  v7->_prioritization = 2;
  refCalib = v7->_refCalib;
  v7->_refCalib = 0;

  auxCalib = v7->_auxCalib;
  v7->_auxCalib = 0;

  refRectifiedCalib = v7->_refRectifiedCalib;
  v7->_refRectifiedCalib = 0;

  auxRectifiedCalib = v7->_auxRectifiedCalib;
  v7->_auxRectifiedCalib = 0;

  auxOutputCalib = v7->_auxOutputCalib;
  v7->_auxOutputCalib = 0;

LABEL_5:
  v19 = v7;
LABEL_9:
  kdebug_trace();

  return v19;
}

- (int64_t)extractYChannelFromColorInput:(__CVBuffer *)a3 toBuffer:(__CVBuffer *)a4
{
  v20 = 335684520;
  v21 = 0u;
  v22 = 0u;
  kdebug_trace();
  if (CVPixelBufferGetPixelFormatType(a3) != 875704422)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
LABEL_9:
      v15 = -22953;
      goto LABEL_16;
    }

    LOWORD(src.data) = 0;
    v13 = MEMORY[0x277D86220];
    v14 = "only YUV 8 bit full range supported";
LABEL_18:
    _os_log_error_impl(&dword_2402F6000, v13, OS_LOG_TYPE_ERROR, v14, &src, 2u);
    v15 = -22953;
    goto LABEL_16;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(a4);
  v8 = [(ADEspressoBinocularDepthInferenceDescriptor *)self->_inferenceDescriptor referenceColorInput];
  v9 = [v8 imageDescriptor];
  v10 = [v9 pixelFormat];

  if (PixelFormatType != v10)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    LOWORD(src.data) = 0;
    v13 = MEMORY[0x277D86220];
    v14 = "output pixel format does not match descriptor";
    goto LABEL_18;
  }

  CVPixelBufferLockBaseAddress(a3, 1uLL);
  CVPixelBufferLockBaseAddress(a4, 0);
  memset(&src, 0, sizeof(src));
  v11 = MEMORY[0x277CBF3A0];
  PixelBufferUtils::asVImageBuffer(a3, 0, *MEMORY[0x277CBF3A0], &src);
  memset(&v18, 0, sizeof(v18));
  PixelBufferUtils::asVImageBuffer(a4, *v11, &v18);
  if (PixelFormatType == 1278226534)
  {
    v12 = vImageConvert_Planar8toPlanarF(&src, &v18, 1.0, 0.0, 0);
    goto LABEL_11;
  }

  if (PixelFormatType == 1278226536)
  {
    v12 = vImageConvert_Planar8toPlanar16F(&src, &v18, 0);
LABEL_11:
    v16 = v12;
    goto LABEL_13;
  }

  v16 = -21783;
LABEL_13:
  CVPixelBufferUnlockBaseAddress(a3, 1uLL);
  CVPixelBufferUnlockBaseAddress(a4, 0);
  PixelBufferUtils::inPlaceColorScaling(a4, 1, 255.0, 0.0, 1);
  if (v16)
  {
    v15 = -22950;
  }

  else
  {
    v15 = 0;
  }

LABEL_16:
  kdebug_trace();
  return v15;
}

- (int64_t)warpImage:(__CVBuffer *)a3 processedImage:(__CVBuffer *)a4 isRef:(BOOL)a5
{
  v7 = 48;
  if (a5)
  {
    v7 = 40;
  }

  v8 = *(&self->super.isa + v7);
  v9 = v8;
  if (v8)
  {
    v10 = [v8 undistortColorImage:a3 undistortedImage:a4];
    if (v10 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed warping image", v12, 2u);
    }
  }

  else
  {
    v10 = -22975;
  }

  return v10;
}

- (int64_t)prepareStereoWarpMeshesWithRefCalib:(id)a3 auxCalib:(id)a4
{
  v7 = a3;
  v8 = a4;
  v93 = 335685972;
  v94 = 0u;
  v95 = 0u;
  kdebug_trace();
  if ((v7 == 0) != (v8 != 0))
  {
    refCalib = self->_refCalib;
    if (v7 | v8)
    {
      if (![(ADCameraCalibration *)refCalib isEqual:v7]|| ([(ADCameraCalibration *)self->_auxCalib isEqual:v8]& 1) == 0)
      {
        objc_storeStrong(&self->_refCalib, a3);
        objc_storeStrong(&self->_auxCalib, a4);
        [ADBinocularDepthWarperMesh rectifyCameraPairForLeftCalib:v7 rightCalib:v8 leftRectifiedCameraToPlatformTransform:buf rightRectifiedCameraToPlatformTransform:&v85 prioritization:self->_prioritization];
        v10 = [(ADEspressoBinocularDepthInferenceDescriptor *)self->_inferenceDescriptor referenceColorInput];
        v11 = [v10 imageDescriptor];
        [v11 sizeForLayout:255];
        v13 = v12;
        v15 = v14;

        [v7 cameraToPlatformTransform];
        v17 = vdupq_n_s32(0x3727C5ACu);
        v21 = vandq_s8(vandq_s8(vcgeq_f32(v17, vabdq_f32(v18, v90)), vcgeq_f32(v17, vabdq_f32(v16, *buf))), vandq_s8(vcgeq_f32(v17, vabdq_f32(v19, v91)), vcgeq_f32(v17, vabdq_f32(v20, v92))));
        v21.i32[3] = v21.i32[2];
        if ((vminvq_u32(v21) & 0x80000000) != 0 && ([v8 cameraToPlatformTransform], v23 = vdupq_n_s32(0x3727C5ACu), v27 = vandq_s8(vandq_s8(vcgeq_f32(v23, vabdq_f32(v24, v86)), vcgeq_f32(v23, vabdq_f32(v22, v85))), vandq_s8(vcgeq_f32(v23, vabdq_f32(v25, v87)), vcgeq_f32(v23, vabdq_f32(v26, v88)))), v27.i32[3] = v27.i32[2], (vminvq_u32(v27) & 0x80000000) != 0) && (objc_msgSend(v7, "intrinsicMatrix"), v82 = v28, objc_msgSend(v8, "intrinsicMatrix"), fabsf(vsubq_f32(v82, v29).f32[0]) < 0.00001))
        {
          objc_storeStrong(&self->_refRectifiedCalib, a3);
          objc_storeStrong(&self->_auxRectifiedCalib, a4);
          objc_storeStrong(&self->_auxOutputCalib, a4);
          refWarper = self->_refWarper;
          self->_refWarper = 0;

          auxWarper = self->_auxWarper;
          self->_auxWarper = 0;
        }

        else
        {
          [(ADBinocularDepthPipelineParameters *)self->_pipelineParameters rectifiedCameraFieldOfViewWidth];
          v40 = tanf(v39 * 0.5);
          v43 = v13 / (v40 + v40);
          v44 = v43;
          if (self->_prioritization == 2)
          {
            [(ADBinocularDepthPipelineParameters *)self->_pipelineParameters rectifiedCameraFieldOfViewHeight];
            v46 = tanf(v45 * 0.5);
            v44 = v15 / (v46 + v46);
          }

          v47 = v13 * 0.5;
          *&v41 = v13 * 0.5;
          v48 = v15 * 0.5;
          *&v42 = v15 * 0.5;
          *&v48 = v43;
          *&v47 = v44;
          [MEMORY[0x277CED040] createIntrinsicsMatrixWithEflX:v48 eflY:v47 principalPointX:v41 principalPointY:v42];
          v80 = v50;
          v83 = v49;
          v78 = v51;
          auxWarper = [objc_alloc(MEMORY[0x277CED040]) initWithIntrinsics:0 cameraToPlatformTransform:*&v13 pixelSize:*&v15 referenceDimensions:? distortionModel:?];
          v52 = objc_alloc(MEMORY[0x277CED040]);
          LODWORD(v53) = 2143289344;
          v54 = [v52 initWithIntrinsics:0 cameraToPlatformTransform:v83 pixelSize:v80 referenceDimensions:v78 distortionModel:{*v85.i64, *v86.i64, *v87.i64, *v88.i64, v53, *&v13, *&v15}];
          v55 = [(ADEspressoBinocularDepthInferenceDescriptor *)self->_inferenceDescriptor auxiliaryDisparityOutput];
          v56 = [v55 imageDescriptor];
          [v56 sizeForLayout:255];
          v58 = v57;
          v60 = v59;

          v61 = v58 * v43 / v13;
          *&v61 = v61;
          v62 = v60 * v44 / v15;
          *&v62 = v62;
          v63 = v58 * 0.5;
          *&v63 = v58 * 0.5;
          v64 = v60 * 0.5;
          *&v64 = v60 * 0.5;
          [MEMORY[0x277CED040] createIntrinsicsMatrixWithEflX:v61 eflY:v62 principalPointX:v63 principalPointY:v64];
          v79 = v65;
          v81 = v66;
          v84 = v67;
          objc_storeStrong(&self->_refRectifiedCalib, auxWarper);
          objc_storeStrong(&self->_auxRectifiedCalib, v54);
          v68 = objc_alloc(MEMORY[0x277CED040]);
          LODWORD(v69) = 2143289344;
          v70 = [v68 initWithIntrinsics:0 cameraToPlatformTransform:v79 pixelSize:v81 referenceDimensions:v84 distortionModel:{*v85.i64, *v86.i64, *v87.i64, *v88.i64, v69, *&v58, *&v60}];
          auxOutputCalib = self->_auxOutputCalib;
          self->_auxOutputCalib = v70;

          v72 = self->_refWarper;
          if (!v72 || !self->_auxWarper)
          {
            v73 = objc_alloc_init(ADBinocularDepthWarperMesh);
            v74 = self->_refWarper;
            self->_refWarper = v73;

            v75 = objc_alloc_init(ADBinocularDepthWarperMesh);
            v76 = self->_auxWarper;
            self->_auxWarper = v75;

            v72 = self->_refWarper;
          }

          if (![(ADBinocularDepthWarperMesh *)v72 updateWithSource:self->_refCalib target:auxWarper]|| ![(ADBinocularDepthWarperMesh *)self->_auxWarper updateWithSource:self->_auxCalib target:v54])
          {

            v32 = -22965;
            goto LABEL_24;
          }
        }
      }

      v32 = 0;
    }

    else
    {
      self->_refCalib = 0;

      auxCalib = self->_auxCalib;
      self->_auxCalib = 0;

      refRectifiedCalib = self->_refRectifiedCalib;
      self->_refRectifiedCalib = 0;

      auxRectifiedCalib = self->_auxRectifiedCalib;
      self->_auxRectifiedCalib = 0;

      v36 = self->_auxOutputCalib;
      self->_auxOutputCalib = 0;

      v37 = self->_refWarper;
      self->_refWarper = 0;

      v38 = self->_auxWarper;
      self->_auxWarper = 0;

      v32 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Can either work with both aux and ref calib or none. Don't know how to handle only one", buf, 2u);
    }

    v32 = -22950;
  }

LABEL_24:
  kdebug_trace();

  return v32;
}

@end