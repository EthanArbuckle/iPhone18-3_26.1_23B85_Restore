@interface ADMetricDepthPipeline
+ (id)defaults;
- (ADMetricDepthPipeline)init;
- (id).cxx_construct;
- (id)initForEspressoEngine:(unint64_t)a3;
- (id)initForEspressoEngine:(unint64_t)a3 pipelineParameters:(id)a4;
- (id)outputConfidenceDescriptor;
- (id)outputDepthDescriptor;
- (id)outputNormalsDescriptor;
- (int64_t)createJasperEmbeddings:(id)a3 cropTo:(CGRect)a4 rotateBy:(int64_t)a5 outputBuffer:(id)a6 outputBatchOffset:(unint64_t)a7;
- (int64_t)createJasperEmbeddingsForRightCameraPointCloud:(id)a3 leftCameraPointCloud:(id)a4 crop:(CGRect)a5 rotation:(int64_t)a6 outputBuffer:(id)a7;
- (int64_t)fillSensorsMask:(__CVBuffer *)a3;
- (int64_t)filterJasperPointCloud:(id)a3 usingPearlInput:(__CVBuffer *)a4;
- (int64_t)filterUncertainty:(__CVBuffer *)a3 output:(__CVBuffer *)a4;
- (int64_t)postProcessEspressoConfidence:(__CVBuffer *)a3 outputConfidence:(__CVBuffer *)a4 confidenceUnits:(unint64_t)a5;
- (int64_t)postProcessEspressoDepth:(__CVBuffer *)a3 espressoConfidence:(__CVBuffer *)a4 espressoNormals:(__CVBuffer *)a5 toOutputDepth:(__CVBuffer *)a6 outputConfidence:(__CVBuffer *)a7 outputNormals:(__CVBuffer *)a8;
- (int64_t)postProcessEspressoNormals:(__CVBuffer *)a3 toOutputNormals:(__CVBuffer *)a4;
- (uint64_t)createCameraEmbeddingsForRightCameraCalibration:(uint64_t)a1 leftCameraCalibration:(uint64_t)a2 rightCameraPose:(uint64_t)a3 leftCameraPose:(uint64_t)a4 outputBuffer:(void *)a5;
- (uint64_t)emulatePeridotFromJasper:(double)a3 jasperPoses:(double)a4 jasperTimestamps:(double)a5 jasperToPlatformTransform:(int32x4_t)a6 pearlDepth:(int32x4_t)a7 pearlPose:(int32x4_t)a8 pearlCalibration:(float32x4_t)a9 outPointCloud:(uint64_t)a10 outPose:(void *)a11 outTimestamp:(uint64_t)a12;
- (uint64_t)preprocessPearlDepth:(int32x4_t)a3 pearlPose:(int32x4_t)a4 pearlCalibration:(float32x4_t)a5 colorPose:(float32x4_t)a6 colorCalibration:(float32x4_t)a7 outputBuffer:(float32x4_t)a8;
@end

@implementation ADMetricDepthPipeline

- (id).cxx_construct
{
  self->_downscaledJasperBuffer.__table_.__bucket_list_ = 0u;
  *&self->_downscaledJasperBuffer.__table_.__first_node_.__next_ = 0u;
  self->_downscaledJasperBuffer.__table_.__max_load_factor_ = 1.0;
  self->_backProjectedMap.__table_.__bucket_list_ = 0u;
  *&self->_backProjectedMap.__table_.__first_node_.__next_ = 0u;
  self->_backProjectedMap.__table_.__max_load_factor_ = 1.0;
  self->_raysMap.__table_.__bucket_list_ = 0u;
  *&self->_raysMap.__table_.__first_node_.__next_ = 0u;
  self->_raysMap.__table_.__max_load_factor_ = 1.0;
  self->_targetPearlBuffer._vptr$PixelBufferSharedPtr = &unk_285231598;
  self->_targetPearlBuffer.m_pixelBuffer = 0;
  CVPixelBufferRetain(0);
  self->_lastCameraCalibration.__table_.__bucket_list_ = 0u;
  *&self->_lastCameraCalibration.__table_.__first_node_.__next_ = 0u;
  self->_lastCameraCalibration.__table_.__max_load_factor_ = 1.0;
  self->_lastPose.__table_.__bucket_list_ = 0u;
  *&self->_lastPose.__table_.__first_node_.__next_ = 0u;
  self->_lastPose.__table_.__max_load_factor_ = 1.0;
  self->_lastSize.__table_.__bucket_list_ = 0u;
  *&self->_lastSize.__table_.__first_node_.__next_ = 0u;
  self->_lastSize.__table_.__max_load_factor_ = 1.0;
  *&self->_pixelsMap.__begin_ = 0u;
  *&self->_pixelsMap.__cap_ = 0u;
  *&self->_zMap.__end_ = 0u;
  return self;
}

- (int64_t)filterUncertainty:(__CVBuffer *)a3 output:(__CVBuffer *)a4
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  if (PixelFormatType == CVPixelBufferGetPixelFormatType(a4) && (v8 = CVPixelBufferGetWidth(a3), v8 == CVPixelBufferGetWidth(a4)) && (v9 = CVPixelBufferGetHeight(a3), v9 == CVPixelBufferGetHeight(a4)))
  {
    if (CVPixelBufferGetPixelFormatType(a3) == 1278226536)
    {
      v10 = [(ADMetricDepthPipelineParameters *)self->_pipelineParameters confidenceLevelRanges];
      [v10 highLevel];
      v73 = v11;
      CVPixelBufferLockBaseAddress(a3, 1uLL);
      CVPixelBufferLockBaseAddress(a4, 0);
      memset(&buf, 0, sizeof(buf));
      v12 = MEMORY[0x277CBF3A0];
      PixelBufferUtils::asVImageBuffer(a3, *MEMORY[0x277CBF3A0], &buf);
      memset(&v74, 0, sizeof(v74));
      PixelBufferUtils::asVImageBuffer(a4, *v12, &v74);
      height = buf.height;
      if (!buf.height || (width = buf.width) == 0)
      {
LABEL_47:
        CVPixelBufferUnlockBaseAddress(a3, 1uLL);
        CVPixelBufferUnlockBaseAddress(a4, 0);

        return 0;
      }

      rowBytes = v74.rowBytes;
      data = buf.data;
      v17 = buf.rowBytes;
      v18 = v74.data;
      if (buf.width <= 3)
      {
        v19 = 0;
        do
        {
          v20 = 0;
          do
          {
            _H1 = data[v20];
            __asm { FCVT            S2, H1 }

            if (*v73.i32 < _S2)
            {
              _H1 = COERCE_SHORT_FLOAT(22080);
            }

            v18[v20++] = _H1;
          }

          while (v20 < width);
          ++v19;
          v18 = (v18 + rowBytes);
          data = (data + v17);
        }

        while (height > v19);
        goto LABEL_47;
      }

      if (!LODWORD(buf.width) || (buf.width - 1) >> 32)
      {
        v43 = 0;
        do
        {
          v44 = 0;
          do
          {
            _H1 = data[v44];
            __asm { FCVT            S2, H1 }

            if (*v73.i32 < _S2)
            {
              _H1 = COERCE_SHORT_FLOAT(22080);
            }

            v18[v44++] = _H1;
          }

          while (width > v44);
          ++v43;
          v18 = (v18 + rowBytes);
          data = (data + v17);
        }

        while (height > v43);
        goto LABEL_47;
      }

      v29 = v74.data + 2 * buf.width;
      v30 = buf.data + 2 * buf.width;
      v31 = vdupq_lane_s32(v73, 0);
      v32 = buf.width & 0x1FFFFFFFCLL;
      if (buf.width < 0x10)
      {
        v33 = 0;
        v34 = vdup_n_s16(0x5640u);
        while (1)
        {
          v35 = (v18 + rowBytes * v33);
          v36 = (data + v17 * v33);
          if (v35 >= &v30[v17 * v33] || v36 >= &v29[rowBytes * v33])
          {
            *v35 = vbsl_s8(vmovn_s32(vcgtq_f32(vcvtq_f32_f16(*v36), v31)), v34, *v36);
            if (v32 != 4)
            {
              v35[1] = vbsl_s8(vmovn_s32(vcgtq_f32(vcvtq_f32_f16(v36[1]), v31)), v34, v36[1]);
              if (v32 != 8)
              {
                v35[2] = vbsl_s8(vmovn_s32(vcgtq_f32(vcvtq_f32_f16(v36[2]), v31)), v34, v36[2]);
              }
            }

            v38 = width & 0x1FFFFFFFCLL;
            v39 = *v73.i32;
            if (width == v32)
            {
              goto LABEL_26;
            }
          }

          else
          {
            v38 = 0;
            v39 = *v73.i32;
          }

          v40 = v38 & 0xFFFFFFFC;
          do
          {
            _H3 = *&v36->i16[v38];
            __asm { FCVT            S4, H3 }

            if (v39 < _S4)
            {
              _H3 = COERCE_SHORT_FLOAT(22080);
            }

            *&v35->i16[v38] = _H3;
            v38 = ++v40;
          }

          while (width > v40);
LABEL_26:
          if (height <= ++v33)
          {
            goto LABEL_47;
          }
        }
      }

      v47 = 0;
      v48 = buf.width & 0x1FFFFFFF0;
      v49 = (v74.data + 16);
      v50 = (buf.data + 16);
      v51 = 32 * ((buf.width >> 4) & 0x1FFFFFFF);
      v52 = (v74.data + v51);
      v53 = (buf.data + v51);
      v54 = vdupq_n_s16(0x5640u);
      v55 = vdup_n_s16(0x5640u);
      while (1)
      {
        v56 = v18 + rowBytes * v47;
        v57 = data + v17 * v47;
        if (v56 < &v30[v17 * v47] && v57 < &v29[rowBytes * v47])
        {
          break;
        }

        v59 = v50;
        v60 = v49;
        v61 = width & 0x1FFFFFFF0;
        do
        {
          v62 = vbslq_s8(vuzp1q_s16(vcgtq_f32(vcvtq_f32_f16(*v59), v31), vcgtq_f32(vcvt_hight_f32_f16(*v59->i8), v31)), v54, *v59->i8);
          v60[-1] = vbslq_s8(vuzp1q_s16(vcgtq_f32(vcvtq_f32_f16(v59[-2]), v31), vcgtq_f32(vcvt_hight_f32_f16(*v59[-2].i8), v31)), v54, *v59[-2].i8);
          *v60 = v62;
          v60 += 2;
          v59 += 4;
          v61 -= 16;
        }

        while (v61);
        v69 = *v73.i32;
        if (width != v48)
        {
          v67 = width & 0x1FFFFFFF0;
          v68 = width & 0xFFFFFFF0;
          if ((width & 0xC) == 0)
          {
            goto LABEL_62;
          }

          v63 = v53;
          v64 = v52;
          v65 = v32 - (width & 0x1FFFFFFF0);
          do
          {
            v66 = *v63++;
            *v64++ = vbsl_s8(vmovn_s32(vcgtq_f32(vcvtq_f32_f16(v66), v31)), v55, v66);
            v65 -= 4;
          }

          while (v65);
          v67 = width & 0x1FFFFFFFCLL;
          v68 = width & 0xFFFFFFFC;
          v69 = *v73.i32;
          if (width != v32)
          {
            goto LABEL_62;
          }
        }

LABEL_49:
        ++v47;
        v49 = (v49 + rowBytes);
        v50 = (v50 + v17);
        v52 = (v52 + rowBytes);
        v53 = (v53 + v17);
        if (height <= v47)
        {
          goto LABEL_47;
        }
      }

      v67 = 0;
      v68 = 0;
      v69 = *v73.i32;
LABEL_62:
      v70 = v68 + 1;
      do
      {
        _H4 = *&v57[2 * v67];
        __asm { FCVT            S5, H4 }

        if (v69 < _S5)
        {
          _H4 = COERCE_SHORT_FLOAT(22080);
        }

        *&v56[2 * v67] = _H4;
        v67 = v70++;
      }

      while (width > v67);
      goto LABEL_49;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.data) = 0;
      v27 = MEMORY[0x277D86220];
      v28 = "cannot filter uncertainty. wrong pixel format";
LABEL_21:
      _os_log_error_impl(&dword_2402F6000, v27, OS_LOG_TYPE_ERROR, v28, &buf, 2u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf.data) = 0;
    v27 = MEMORY[0x277D86220];
    v28 = "cannot filter uncertainty. input and output buffers do not match";
    goto LABEL_21;
  }

  return -22953;
}

- (uint64_t)emulatePeridotFromJasper:(double)a3 jasperPoses:(double)a4 jasperTimestamps:(double)a5 jasperToPlatformTransform:(int32x4_t)a6 pearlDepth:(int32x4_t)a7 pearlPose:(int32x4_t)a8 pearlCalibration:(float32x4_t)a9 outPointCloud:(uint64_t)a10 outPose:(void *)a11 outTimestamp:(uint64_t)a12
{
  v22 = a11;
  v65 = a15;
  v23 = objc_alloc(MEMORY[0x277CED040]);
  LODWORD(v24) = 1017370378;
  v25 = [v23 initWithIntrinsics:0 cameraToPlatformTransform:*&_PromotedConst_10355 pixelSize:unk_240407F90 referenceDimensions:8.58993628e10 distortionModel:{a2, a3, a4, a5, v24, 0x4051800000000000, 0x4056800000000000}];
  for (i = 0; ; ++i)
  {
    if ([v22 count] <= i)
    {
      goto LABEL_16;
    }

    v27 = [v22 objectAtIndexedSubscript:i];
    v28 = [MEMORY[0x277CBEB68] null];
    v29 = [v27 isEqual:v28];

    if ((v29 & 1) == 0 && !*[v27 bankIds])
    {
      break;
    }
  }

  if (i == -1)
  {
LABEL_16:
    *a16 = 0;
    v46 = -22950;
    goto LABEL_24;
  }

  v30 = [v22 objectAtIndexedSubscript:i];
  v31 = [v30 pointCloudByChangingPointOfViewByTransform:v25 to:{*&_PromotedConst_10356, unk_240407FC0, 0.0, unk_240407FE0}];
  v32 = [v31 mutableCopy];

  pixelBufferOut = 0;
  BufferAttributes = getBufferAttributes();
  if (CVPixelBufferCreate(*MEMORY[0x277CBECE8], 0x46uLL, 0x5AuLL, 0x66646570u, BufferAttributes, &pixelBufferOut) || (v34 = pixelBufferOut) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to create projected pearl, will not emulate Peridot", buf, 2u);
    }

    *a16 = 0;
    v46 = -22950;
  }

  else
  {
    BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBufferOut);
    CVPixelBufferLockBaseAddress(v34, 1uLL);
    BaseAddress = CVPixelBufferGetBaseAddress(v34);
    v35 = (a12 + (i << 6));
    v36 = vtrn2q_s32(a6, a7);
    v36.i32[2] = a8.i32[1];
    v37 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(vzip1q_s32(vzip1q_s32(a6, a8), a7), a9.f32[0]), v36, *a9.f32, 1), vzip1q_s32(vzip2q_s32(a6, a8), vdupq_laneq_s32(a7, 2)), a9, 2);
    v39 = v35[2];
    v38 = v35[3];
    v40 = v35[1];
    [*(a1 + 32) warpDepth:a14 srcCalibration:v65 dstCalibration:v25 poseTransform:v34 warpedDepth:{*vmlaq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*v35, *a6.i32), v40, *a7.i32), v39, *a8.i32), 0, v38).i64, *vmlaq_f32(vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(*v35, *a6.i8, 1), v40, *a7.i8, 1), v39, *a8.i8, 1), 0, v38).i64, *vmlaq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(*v35, a6, 2), v40, a7, 2), v39, a8, 2), 0, v38).i64, *vaddq_f32(v38, vmlsq_laneq_f32(vmlsq_lane_f32(vmulq_n_f32(*v35, vnegq_f32(v37).f32[0]), v40, *v37.f32, 1), v39, v37, 2)).i64}];
    v41 = [v32 echoIds];
    v42 = [v32 cameraPixels];
    v43 = [v32 mutableConfidences];
    v57 = i;
    v44 = [v32 mutablePoints];
    for (j = 0; j < [v32 length]; ++j)
    {
      if (!*(v41 + j) && *(v43 + 4 * j) < 0.8)
      {
        v66 = *&BaseAddress[4 * *v42 + BytesPerRow * v42[1]] * 1000.0;
        if (v66 < 1000.0)
        {
          [v25 backProject:1 undistortedPixels:v42 withZ:&v66 outPoints:v44];
          *(v43 + 4 * j) = 1065353216;
        }
      }

      v42 += 2;
      v44 += 16;
    }

    CVPixelBufferUnlockBaseAddress(v34, 1uLL);
    CVPixelBufferRelease(v34);
    [v32 applyPerformanceOverrides];
    v47 = v32;
    v46 = 0;
    *a16 = v32;
    v48 = *v35;
    v49 = v35[1];
    v50 = v35[3];
    *(a17 + 2) = v35[2];
    *(a17 + 3) = v50;
    *a17 = v48;
    *(a17 + 1) = v49;
    if (a13 && a18)
    {
      v46 = 0;
      *a18 = *(a13 + 8 * v57);
    }
  }

LABEL_24:
  return v46;
}

- (int64_t)postProcessEspressoNormals:(__CVBuffer *)a3 toOutputNormals:(__CVBuffer *)a4
{
  v115 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  if (!a3 || !a4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *v113 = a3;
      *&v113[8] = 2048;
      v114 = a4;
      v27 = MEMORY[0x277D86220];
      v28 = "normals postprocess buffer cannot be null: %p,%p";
LABEL_20:
      v29 = 22;
LABEL_29:
      _os_log_error_impl(&dword_2402F6000, v27, OS_LOG_TYPE_ERROR, v28, buf, v29);
      goto LABEL_23;
    }

    goto LABEL_23;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  v8 = CVPixelBufferGetPixelFormatType(a4);
  v9 = [(ADEspressoMetricDepthInferenceDescriptor *)self->_inferenceDescriptor normalsOutput];
  v10 = [v9 imageDescriptor];
  if (PixelFormatType == [v10 pixelFormat])
  {
    v11 = [(ADMetricDepthPipeline *)self outputNormalsDescriptor];
    v12 = [v11 pixelFormat];

    if (v8 == v12)
    {
      v13 = PixelBufferUtils::componentsPerPixelForPixelFormat(PixelFormatType, 0);
      if (PixelFormatType == 1380411457)
      {
        v14 = v13;
        if (v8 == 1380410945)
        {
          Width = CVPixelBufferGetWidth(a3);
          Height = CVPixelBufferGetHeight(a3);
          if (Width == CVPixelBufferGetWidth(a4) && Height == CVPixelBufferGetHeight(a4))
          {
            CVPixelBufferLockBaseAddress(a3, 1uLL);
            CVPixelBufferLockBaseAddress(a4, 0);
            BaseAddress = CVPixelBufferGetBaseAddress(a3);
            v33 = CVPixelBufferGetBaseAddress(a4);
            BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
            v35 = CVPixelBufferGetBytesPerRow(a4);
            if (Height)
            {
              v36 = Width * v14;
              if (Width * v14)
              {
                if (v36 > 3)
                {
                  v62 = v36 & 0xFFFFFFFFFFFFFFFCLL;
                  if (v36 > 0xF)
                  {
                    if (v36 == (v36 & 0xFFFFFFFFFFFFFFF0))
                    {
                      v73 = 0;
                      v74 = v33 + 2;
                      v75 = BaseAddress + 2;
                      do
                      {
                        v76 = v75;
                        v77 = v74;
                        v78 = Width * v14;
                        do
                        {
                          v79 = *v76[-2].i8;
                          v80 = vcvtq_f32_f16(*v76);
                          v81 = vcvt_hight_f32_f16(*v76->i8);
                          v77[-2] = vcvtq_f32_f16(*v79.i8);
                          v77[-1] = vcvt_hight_f32_f16(v79);
                          *v77 = v80;
                          v77[1] = v81;
                          v77 += 4;
                          v76 += 4;
                          v78 -= 16;
                        }

                        while (v78);
                        ++v73;
                        v74 = (v74 + v35);
                        v75 = (v75 + BytesPerRow);
                      }

                      while (v73 != Height);
                    }

                    else
                    {
                      v90 = 0;
                      v91 = v33 + 2;
                      v92 = BaseAddress + 2;
                      v93 = &v33[4 * (v36 >> 4)];
                      v94 = &BaseAddress[4 * (v36 >> 4)];
                      do
                      {
                        v95 = v92;
                        v96 = v91;
                        v97 = v36 & 0xFFFFFFFFFFFFFFF0;
                        do
                        {
                          v98 = *v95[-2].i8;
                          v99 = vcvtq_f32_f16(*v95);
                          v100 = vcvt_hight_f32_f16(*v95->i8);
                          v96[-2] = vcvtq_f32_f16(*v98.i8);
                          v96[-1] = vcvt_hight_f32_f16(v98);
                          *v96 = v99;
                          v96[1] = v100;
                          v96 += 4;
                          v95 += 4;
                          v97 -= 16;
                        }

                        while (v97);
                        v101 = v36 & 0xFFFFFFFFFFFFFFF0;
                        if ((v36 & 0xC) == 0)
                        {
                          goto LABEL_94;
                        }

                        v102 = v94;
                        v103 = v93;
                        v104 = v62 - (v36 & 0xFFFFFFFFFFFFFFF0);
                        do
                        {
                          v105 = *v102++;
                          *v103++ = vcvtq_f32_f16(v105);
                          v104 -= 4;
                        }

                        while (v104);
                        v101 = v36 & 0xFFFFFFFFFFFFFFFCLL;
                        if (v36 != v62)
                        {
LABEL_94:
                          v106 = v36 - v101;
                          v107 = &v33->i32[v101];
                          v108 = BaseAddress + 2 * v101;
                          do
                          {
                            v109 = *v108;
                            v108 += 2;
                            _H0 = v109;
                            __asm { FCVT            S0, H0 }

                            *v107++ = _S0;
                            --v106;
                          }

                          while (v106);
                        }

                        ++v90;
                        v91 = (v91 + v35);
                        v92 = (v92 + BytesPerRow);
                        v93 = (v93 + v35);
                        v94 = (v94 + BytesPerRow);
                        v33 = (v33 + v35);
                        BaseAddress = (BaseAddress + BytesPerRow);
                      }

                      while (v90 != Height);
                    }
                  }

                  else if (v36 == v62)
                  {
                    for (i = 0; i != Height; ++i)
                    {
                      v64 = BaseAddress;
                      v65 = v33;
                      v66 = Width * v14;
                      do
                      {
                        v67 = *v64++;
                        *v65++ = vcvtq_f32_f16(v67);
                        v66 -= 4;
                      }

                      while (v66);
                      v33 = (v33 + v35);
                      BaseAddress = (BaseAddress + BytesPerRow);
                    }
                  }

                  else
                  {
                    for (j = 0; j != Height; ++j)
                    {
                      v83 = BaseAddress;
                      v84 = v33;
                      v85 = v36 & 0xFFFFFFFFFFFFFFFCLL;
                      do
                      {
                        v86 = *v83++;
                        *v84++ = vcvtq_f32_f16(v86);
                        v85 -= 4;
                      }

                      while (v85);
                      v87 = v36 & 0xC;
                      do
                      {
                        _H0 = BaseAddress->i16[v87];
                        __asm { FCVT            S0, H0 }

                        v33->i32[v87++] = _S0;
                      }

                      while (v36 != v87);
                      v33 = (v33 + v35);
                      BaseAddress = (BaseAddress + BytesPerRow);
                    }
                  }
                }

                else
                {
                  for (k = 0; k != Height; ++k)
                  {
                    v38 = BaseAddress;
                    v39 = v33;
                    v40 = Width * v14;
                    do
                    {
                      v41 = v38->i16[0];
                      v38 = (v38 + 2);
                      _H0 = v41;
                      __asm { FCVT            S0, H0 }

                      v39->i32[0] = _S0;
                      v39 = (v39 + 4);
                      --v40;
                    }

                    while (v40);
                    v33 = (v33 + v35);
                    BaseAddress = (BaseAddress + BytesPerRow);
                  }
                }
              }
            }

            goto LABEL_85;
          }

LABEL_40:
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_23;
          }

          *buf = 134218240;
          *v113 = Width;
          *&v113[8] = 2048;
          v114 = Height;
          v27 = MEMORY[0x277D86220];
          v28 = "postprocess buffer dimensions must match: %lu,%lu";
          goto LABEL_20;
        }

        if (v8 == 1380411457)
        {
          Width = CVPixelBufferGetWidth(a3);
          Height = CVPixelBufferGetHeight(a3);
          if (Width == CVPixelBufferGetWidth(a4) && Height == CVPixelBufferGetHeight(a4))
          {
            CVPixelBufferLockBaseAddress(a3, 1uLL);
            CVPixelBufferLockBaseAddress(a4, 0);
            v17 = CVPixelBufferGetBaseAddress(a3);
            v18 = CVPixelBufferGetBaseAddress(a4);
            v19 = CVPixelBufferGetBytesPerRow(a3);
            v20 = CVPixelBufferGetBytesPerRow(a4);
            if (!Height || (v21 = Width * v14) == 0)
            {
LABEL_85:
              CVPixelBufferUnlockBaseAddress(a3, 1uLL);
              CVPixelBufferUnlockBaseAddress(a4, 0);
              v30 = 0;
              goto LABEL_24;
            }

            if (v21 <= 3)
            {
              for (m = 0; m != Height; ++m)
              {
                v23 = v17;
                v24 = v18;
                v25 = Width * v14;
                do
                {
                  v26 = *v23;
                  v23 += 2;
                  *v24 = v26;
                  v24 += 2;
                  --v25;
                }

                while (v25);
                v18 += v20;
                v17 += v19;
              }

              goto LABEL_85;
            }

            _CF = v17 >= &v18[2 * v21 + v20 * (Height - 1)] || v18 >= &v17[2 * v21 + v19 * (Height - 1)];
            if (!_CF || ((v20 | v19) & 0x8000000000000000) != 0)
            {
              for (n = 0; n != Height; ++n)
              {
                v69 = v17;
                v70 = v18;
                v71 = Width * v14;
                do
                {
                  v72 = *v69;
                  v69 += 2;
                  *v70 = v72;
                  v70 += 2;
                  --v71;
                }

                while (v71);
                v18 += v20;
                v17 += v19;
              }

              goto LABEL_85;
            }

            v48 = 0;
            v49 = v18 + 16;
            v50 = (v17 + 16);
            while (v21 >= 0x10)
            {
              v52 = v50;
              v53 = v49;
              v54 = v21 & 0xFFFFFFFFFFFFFFF0;
              do
              {
                v55 = *v52;
                *(v53 - 1) = *(v52 - 1);
                *v53 = v55;
                v53 += 2;
                v52 += 2;
                v54 -= 16;
              }

              while (v54);
              if (v21 == (v21 & 0xFFFFFFFFFFFFFFF0))
              {
                goto LABEL_49;
              }

              v51 = v21 & 0xFFFFFFFFFFFFFFF0;
              v56 = v21 & 0xFFFFFFFFFFFFFFF0;
              if ((v21 & 0xC) != 0)
              {
                goto LABEL_56;
              }

              do
              {
LABEL_59:
                *&v18[2 * v56] = *&v17[2 * v56];
                ++v56;
              }

              while (v21 != v56);
LABEL_49:
              ++v48;
              v49 = (v49 + v20);
              v50 = (v50 + v19);
              v18 += v20;
              v17 += v19;
              if (v48 == Height)
              {
                goto LABEL_85;
              }
            }

            v51 = 0;
LABEL_56:
            v57 = v51 - (v21 & 0xFFFFFFFFFFFFFFFCLL);
            v58 = 2 * v51;
            v59 = &v18[2 * v51];
            v60 = &v17[v58];
            do
            {
              v61 = *v60;
              v60 += 8;
              *v59 = v61;
              v59 += 8;
              v57 += 4;
            }

            while (v57);
            v56 = v21 & 0xFFFFFFFFFFFFFFFCLL;
            if (v21 == (v21 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_49;
            }

            goto LABEL_59;
          }

          goto LABEL_40;
        }
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        *v113 = PixelFormatType;
        *&v113[4] = 1024;
        *&v113[6] = v8;
        v27 = MEMORY[0x277D86220];
        v28 = "postprocess pixel formats not supported: %u,%u";
LABEL_28:
        v29 = 14;
        goto LABEL_29;
      }

      goto LABEL_23;
    }
  }

  else
  {
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 67109376;
    *v113 = PixelFormatType;
    *&v113[4] = 1024;
    *&v113[6] = v8;
    v27 = MEMORY[0x277D86220];
    v28 = "postprocess pixel formats must match pipeline descriptors: %u,%u";
    goto LABEL_28;
  }

LABEL_23:
  v30 = -22953;
LABEL_24:
  kdebug_trace();
  return v30;
}

- (int64_t)postProcessEspressoDepth:(__CVBuffer *)a3 espressoConfidence:(__CVBuffer *)a4 espressoNormals:(__CVBuffer *)a5 toOutputDepth:(__CVBuffer *)a6 outputConfidence:(__CVBuffer *)a7 outputNormals:(__CVBuffer *)a8
{
  kdebug_trace();
  v15 = [ADUtils postProcessDepth:a3 depthOutput:a6];
  kdebug_trace();
  if (a7 && a4 && !v15)
  {
    v15 = [(ADMetricDepthPipeline *)self postProcessEspressoConfidence:a4 outputConfidence:a7 confidenceUnits:[(ADMetricDepthPipelineParameters *)self->_pipelineParameters confidenceUnits]];
  }

  if (!a8 || !a5 || v15)
  {
    return v15;
  }

  return [(ADMetricDepthPipeline *)self postProcessEspressoNormals:a5 toOutputNormals:a8];
}

- (int64_t)postProcessEspressoConfidence:(__CVBuffer *)a3 outputConfidence:(__CVBuffer *)a4 confidenceUnits:(unint64_t)a5
{
  kdebug_trace();
  v9 = [(ADMetricDepthPipelineParameters *)self->_pipelineParameters confidenceLevelRanges];
  v10 = [ADUtils postProcessConfidence:a3 confidenceOutput:a4 rawConfidenceUnits:3 outConfidenceUnits:a5 confidenceLevelRanges:v9];

  kdebug_trace();
  return v10;
}

- (int64_t)fillSensorsMask:(__CVBuffer *)a3
{
  CVPixelBufferLockBaseAddress(a3, 0);
  memset(&__dst, 0, sizeof(__dst));
  PixelBufferUtils::asVImageBuffer(a3, *MEMORY[0x277CBF3A0], &__dst);
  if (__dst.rowBytes == 640 && (PixelFormatType = CVPixelBufferGetPixelFormatType(a3), PixelBufferUtils::pixelSizeForPixelFormat(PixelFormatType, 0) == 2))
  {
    v5 = [objc_opt_class() defaults];
    v6 = [v5 integerForKey:kADDeviceConfigurationKeyMetricDepthActiveMaskMode];

    if (v6 >= 2)
    {
      memcpy(__dst.data, &metricDepthSensorsMask, 640 * __dst.height);
    }

    else
    {
      v8 = 320 * __dst.height;
      if ((320 * __dst.height) >= 1)
      {
        *v7.i16 = v6;
        v9 = vdupq_lane_s16(v7, 0);
        v10 = (__dst.data + 16);
        do
        {
          v10[-1] = v9;
          *v10 = v9;
          v10 += 2;
          v8 -= 16;
        }

        while (v8);
      }
    }

    v11 = 0;
  }

  else
  {
    v11 = -22951;
  }

  CVPixelBufferUnlockBaseAddress(a3, 0);
  return v11;
}

- (uint64_t)preprocessPearlDepth:(int32x4_t)a3 pearlPose:(int32x4_t)a4 pearlCalibration:(float32x4_t)a5 colorPose:(float32x4_t)a6 colorCalibration:(float32x4_t)a7 outputBuffer:(float32x4_t)a8
{
  v59 = *MEMORY[0x277D85DE8];
  v18 = a12;
  v19 = a13;
  v20 = a14;
  v51 = 335685140;
  v52 = 0u;
  v53 = 0u;
  kdebug_trace();
  [v19 referenceDimensions];
  if ([v20 width] == v21 && (objc_msgSend(v19, "referenceDimensions"), objc_msgSend(v20, "height") == v22))
  {
    v41 = a11;
    v23 = [v20 data];
    v24 = *(a1 + 192);
    if (!v24 || CVPixelBufferGetBaseAddress(v24) != v23 || (Width = CVPixelBufferGetWidth(*(a1 + 192)), Width != [v20 width]) || (Height = CVPixelBufferGetHeight(*(a1 + 192)), Height != objc_msgSend(v20, "height")))
    {
      texture = 0;
      v27 = [v20 width];
      v28 = [v20 height];
      v29 = [*(a1 + 376) pearlInput];
      v30 = [v29 imageDescriptor];
      v31 = [v30 pixelFormat];
      v32 = [v20 rowBytes];
      CVPixelBufferCreateWithBytes(*MEMORY[0x277CBECE8], v27, v28, v31, v23, v32, 0, 0, 0, &texture);

      v33 = texture;
      *buf = &unk_285231598;
      *&buf[8] = texture;
      CVPixelBufferRetain(texture);
      CVPixelBufferRelease(v33);
      CVPixelBufferRelease(*(a1 + 192));
      *(a1 + 192) = *&buf[8];
      *buf = &unk_285231598;
      *&buf[8] = 0;
      CVPixelBufferRelease(0);
    }

    v34 = vtrn2q_s32(a2, a3);
    v34.i32[2] = a4.i32[1];
    v35 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(vzip1q_s32(vzip1q_s32(a2, a4), a3), a5.f32[0]), v34, *a5.f32, 1), vzip1q_s32(vzip2q_s32(a2, a4), vdupq_laneq_s32(a3, 2)), a5, 2);
    v36 = [*(a1 + 32) warpDepth:v41 srcCalibration:v18 dstCalibration:v19 poseTransform:*(a1 + 192) warpedDepth:{*vmlaq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(a6, *a2.i32), a7, *a3.i32), a8, *a4.i32), 0, a9).i64, *vmlaq_f32(vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(a6, *a2.i8, 1), a7, *a3.i8, 1), a8, *a4.i8, 1), 0, a9).i64, *vmlaq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(a6, a2, 2), a7, a3, 2), a8, a4, 2), 0, a9).i64, *vaddq_f32(a9, vmlsq_laneq_f32(vmlsq_lane_f32(vmulq_n_f32(a6, vnegq_f32(v35).f32[0]), a7, *v35.f32, 1), a8, v35, 2)).i64}];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [v19 referenceDimensions];
      v39 = v38;
      [v19 referenceDimensions];
      *buf = 134218752;
      *&buf[4] = v39;
      *&buf[12] = 2048;
      *&buf[14] = v40;
      v55 = 2048;
      v56 = [v20 width];
      v57 = 2048;
      v58 = [v20 height];
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Color dimensions expected match target buffer, actually it is (%zux%zu) vs expected (%zux%zu)", buf, 0x2Au);
    }

    v36 = -22953;
  }

  kdebug_trace();

  return v36;
}

- (uint64_t)createCameraEmbeddingsForRightCameraCalibration:(uint64_t)a1 leftCameraCalibration:(uint64_t)a2 rightCameraPose:(uint64_t)a3 leftCameraPose:(uint64_t)a4 outputBuffer:(void *)a5
{
  v5 = a5;
  memcpy([v5 data], &metricDepthCameraEmbeddingPadded, objc_msgSend(v5, "size"));

  return 0;
}

- (int64_t)createJasperEmbeddingsForRightCameraPointCloud:(id)a3 leftCameraPointCloud:(id)a4 crop:(CGRect)a5 rotation:(int64_t)a6 outputBuffer:(id)a7
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v15 = a3;
  v16 = a4;
  v17 = a7;
  v18 = [(ADMetricDepthPipeline *)self createJasperEmbeddings:v15 cropTo:a6 rotateBy:v17 outputBuffer:0 outputBatchOffset:x, y, width, height];
  if (v18)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v24 = 0;
      v19 = MEMORY[0x277D86220];
      v20 = "failed embedding jasper for right camera";
      v21 = &v24;
LABEL_8:
      _os_log_error_impl(&dword_2402F6000, v19, OS_LOG_TYPE_ERROR, v20, v21, 2u);
    }
  }

  else
  {
    v18 = [(ADMetricDepthPipeline *)self createJasperEmbeddings:v16 cropTo:a6 rotateBy:v17 outputBuffer:1 outputBatchOffset:x, y, width, height];
    if (v18 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v23 = 0;
      v19 = MEMORY[0x277D86220];
      v20 = "failed embedding jasper for left camera";
      v21 = &v23;
      goto LABEL_8;
    }
  }

  return v18;
}

- (int64_t)createJasperEmbeddings:(id)a3 cropTo:(CGRect)a4 rotateBy:(int64_t)a5 outputBuffer:(id)a6 outputBatchOffset:(unint64_t)a7
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v44 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a6;
  v37 = a7;
  v34 = 335683472;
  v35 = 0u;
  v36 = 0u;
  kdebug_trace();
  if ([v16 width] == (width * 0.125) && objc_msgSend(v16, "height") == (height * 0.125))
  {
    v32 = &v37;
    v17 = std::__hash_table<std::__hash_value_type<unsigned long,PixelBufferSharedPtr>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,PixelBufferSharedPtr>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,PixelBufferSharedPtr>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,PixelBufferSharedPtr>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(&self->_downscaledJasperBuffer.__table_.__bucket_list_.__ptr_, v37)[4];
    *buf = &unk_285231598;
    *&buf[8] = v17;
    CVPixelBufferRetain(v17);
    if (!*&buf[8] || (v18 = CVPixelBufferGetWidth(*&buf[8]), v18 != [v16 width]) || (v19 = CVPixelBufferGetHeight(*&buf[8]), v19 != objc_msgSend(v16, "height")))
    {
      v21 = [(ADEspressoMetricDepthInferenceDescriptor *)self->_inferenceDescriptor jasperInput];
      v22 = [v21 imageDescriptor];
      if (PixelBufferUtils::pixelSizeForPixelFormat([v22 pixelFormat], 0) == 2)
      {
        v23 = 1751410032;
      }

      else
      {
        v23 = 1717855600;
      }

      v24 = [v16 width];
      v25 = [v16 height];
      pixelBufferOut = 0;
      BufferAttributes = getBufferAttributes();
      if (CVPixelBufferCreate(*MEMORY[0x277CBECE8], v24, v25, v23, BufferAttributes, &pixelBufferOut))
      {
        v27 = 0;
      }

      else
      {
        v27 = pixelBufferOut;
      }

      v32 = &unk_285231598;
      texture = v27;
      CVPixelBufferRetain(v27);
      CVPixelBufferRelease(v27);
      pixelBufferOut = &v37;
      v28 = std::__hash_table<std::__hash_value_type<unsigned long,PixelBufferSharedPtr>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,PixelBufferSharedPtr>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,PixelBufferSharedPtr>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,PixelBufferSharedPtr>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(&self->_downscaledJasperBuffer.__table_.__bucket_list_.__ptr_, v37);
      CVPixelBufferRelease(v28[4]);
      v28[4] = v27;
      texture = 0;
      CVPixelBufferRelease(*&buf[8]);
      *&buf[8] = CVPixelBufferRetain(v27);
      v32 = &unk_285231598;
      CVPixelBufferRelease(0);
    }

    if (v15)
    {
      v29 = [(ADMetricDepthPipelineParameters *)self->_pipelineParameters pointCloudFilter];
      v30 = [v15 projectJasperPointsFilteredBy:v29 croppedBy:a5 rotatedBy:*&buf[8] andScaledInto:{x, y, width, height}];

      if (v30)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          LOWORD(v32) = 0;
          _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error while projecting jasper points", &v32, 2u);
        }

        goto LABEL_25;
      }
    }

    else
    {
      if (ADDebugUtilsADVerboseLogsEnabled == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v32) = 0;
        _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Received nil jasper point cloud", &v32, 2u);
      }

      PixelBufferUtils::blacken(*&buf[8], v20);
    }

    v30 = [(ADEmbeddings *)self->_jasperEmbeddings embedDepthMapUsingFourierEncoding:*&buf[8] outputBuffer:v16 outputChannelOffset:0 outputBatchOffset:v37, v32];
LABEL_25:
    *buf = &unk_285231598;
    CVPixelBufferRelease(*&buf[8]);
    goto LABEL_26;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 134218752;
    *&buf[4] = width;
    *&buf[12] = 2048;
    *&buf[14] = height;
    v40 = 2048;
    v41 = [v16 width];
    v42 = 2048;
    v43 = [v16 height];
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Crop dimensions expected to be x8 than target buffer, actually it is (%zux%zu) vs expected (%zux%zu)", buf, 0x2Au);
  }

  v30 = -22953;
LABEL_26:
  kdebug_trace();

  return v30;
}

- (int64_t)filterJasperPointCloud:(id)a3 usingPearlInput:(__CVBuffer *)a4
{
  v53 = *MEMORY[0x277D85DE8];
  v48 = a3;
  if (!v48)
  {
    if (ADDebugUtilsADVerboseLogsEnabled == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Received nil point cloud, skipping filtering", buf, 2u);
    }

    goto LABEL_43;
  }

  if (a4)
  {
    [(ADMetricDepthPipelineParameters *)self->_pipelineParameters pearlJasperCoFilteringMaxPearlDepth];
    if (v6 <= 0.0)
    {
LABEL_43:
      v31 = 0;
      goto LABEL_44;
    }

    Width = CVPixelBufferGetWidth(a4);
    Height = CVPixelBufferGetHeight(a4);
    BytesPerRow = CVPixelBufferGetBytesPerRow(a4);
    PixelFormatType = CVPixelBufferGetPixelFormatType(a4);
    CVPixelBufferLockBaseAddress(a4, 1uLL);
    BaseAddress = CVPixelBufferGetBaseAddress(a4);
    if (PixelFormatType == 1717855600)
    {
      [(ADMetricDepthPipelineParameters *)self->_pipelineParameters pearlJasperCoFilteringMaxPearlDepth];
      v33 = v32;
      [(ADMetricDepthPipelineParameters *)self->_pipelineParameters pearlJasperCoFilteringMaxAllowedDisagreement];
      v35 = v34;
      v36 = v48;
      v37 = 0;
      for (i = 0; i < [v36 length]; ++i)
      {
        v39 = *([v36 cameraPixels] + v37);
        v40 = *([v36 cameraPixels] + v37 + 8);
        if (Width > v39 && Height > v40)
        {
          v42 = [v36 points];
          LODWORD(v43) = *&BaseAddress[4 * v39 + BytesPerRow * v40];
          if (*&v43 < v33 && *&v43 > 0.0)
          {
            v44 = *(v42 + v37 + 8) / 1000.0;
            *&v43 = vabds_f32(*&v43, v44);
            if (v44 > 0.0 && *&v43 > v35)
            {
              *([v36 mutableConfidences] + 4 * i) = 0;
            }
          }
        }

        v37 += 16;
      }

      goto LABEL_42;
    }

    if (PixelFormatType == 1751410032)
    {
      [(ADMetricDepthPipelineParameters *)self->_pipelineParameters pearlJasperCoFilteringMaxPearlDepth];
      v13 = v12;
      [(ADMetricDepthPipelineParameters *)self->_pipelineParameters pearlJasperCoFilteringMaxAllowedDisagreement];
      v15 = v14;
      v16 = v48;
      v17 = 0;
      for (j = 0; j < [v16 length]; ++j)
      {
        v19 = *([v16 cameraPixels] + v17);
        v20 = *([v16 cameraPixels] + v17 + 8);
        if (Width > v19 && Height > v20)
        {
          v22 = [v16 points];
          __asm { FCMP            H0, #0 }

          if (!(_NF ^ _VF | _ZF))
          {
            __asm { FCVT            S0, H0 }

            if (v13 > _S0)
            {
              _D1 = *(v22 + v17 + 8) / 1000.0;
              __asm
              {
                FCVT            H1, D1
                FCMP            H1, #0
                FCVT            S1, H1
              }

              *&_D0 = vabds_f32(_S0, *&_D1);
              if (_NF ^ _VF | _ZF)
              {
                v30 = 1;
              }

              else
              {
                v30 = *&_D0 <= v15;
              }

              if (!v30)
              {
                *([v16 mutableConfidences] + 4 * j) = 0;
              }
            }
          }
        }

        v17 += 16;
      }

LABEL_42:

      CVPixelBufferUnlockBaseAddress(a4, 1uLL);
      goto LABEL_43;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      PixelBufferUtils::pixelFormatAsString(PixelFormatType, buf);
      v47 = v50 >= 0 ? buf : *buf;
      *v51 = 136315138;
      v52 = v47;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Jasper and Pearl buffers have a non-supported pixel format (%s)!", v51, 0xCu);
      if (v50 < 0)
      {
        operator delete(*buf);
      }
    }

    v31 = -22950;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Received nil pearl buffer, aborting", buf, 2u);
    }

    v31 = -22953;
  }

LABEL_44:

  return v31;
}

- (id)outputNormalsDescriptor
{
  v2 = [(ADEspressoMetricDepthInferenceDescriptor *)self->_inferenceDescriptor normalsOutput];
  v3 = [v2 imageDescriptor];

  return v3;
}

- (id)outputConfidenceDescriptor
{
  v2 = [(ADEspressoMetricDepthInferenceDescriptor *)self->_inferenceDescriptor confidenceOutput];
  v3 = [v2 imageDescriptor];

  return v3;
}

- (id)outputDepthDescriptor
{
  v2 = [(ADEspressoMetricDepthInferenceDescriptor *)self->_inferenceDescriptor depthOutput];
  v3 = [v2 imageDescriptor];

  return v3;
}

- (id)initForEspressoEngine:(unint64_t)a3 pipelineParameters:(id)a4
{
  v94 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v89 = 335685740;
  v90 = 0u;
  v91 = 0u;
  kdebug_trace();
  if (ADDebugUtilsADVerboseLogsEnabled == 1)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 134217984;
    v93 = a3;
    v8 = MEMORY[0x277D86220];
    v9 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    *buf = 134217984;
    v93 = a3;
    v8 = MEMORY[0x277D86220];
    v9 = OS_LOG_TYPE_INFO;
  }

  _os_log_impl(&dword_2402F6000, v8, v9, "Metric depth pipeline init for engine %lu", buf, 0xCu);
LABEL_7:
  v88.receiver = self;
  v88.super_class = ADMetricDepthPipeline;
  v10 = [(ADMetricDepthPipeline *)&v88 init];
  v11 = v10;
  v12 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_pipelineParameters, a4);
    v13 = [ADNetworkProvider providerForNetwork:@"MDNet" espressoEngine:a3];
    networkProvider = v12->_networkProvider;
    v12->_networkProvider = v13;

    if (!v12->_networkProvider)
    {
      v82 = 0;
      goto LABEL_58;
    }

    v15 = [(ADMetricDepthPipelineParameters *)v11->_pipelineParameters confidenceLevelRanges];
    v16 = v15 == 0;

    if (v16)
    {
      v17 = [(ADNetworkProvider *)v12->_networkProvider confidenceLevelRanges];
      [(ADMetricDepthPipelineParameters *)v11->_pipelineParameters setConfidenceLevelRanges:v17];
    }

    [(ADMetricDepthPipelineParameters *)v11->_pipelineParameters confidenceBucketingLowThreshold];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "pipelinePrameters.confidenceBucketingLowThreshold is deprecated. please use confidenceLevelRanges instead", buf, 2u);
    }

    v18 = [(ADMetricDepthPipelineParameters *)v11->_pipelineParameters confidenceLevelRanges];
    [v18 highLevel];
    v20 = v19;

    [(ADMetricDepthPipelineParameters *)v11->_pipelineParameters confidenceBucketingLowThreshold];
    v22 = v21;
    v23 = [(ADMetricDepthPipelineParameters *)v11->_pipelineParameters confidenceLevelRanges];
    LODWORD(v24) = v22;
    LODWORD(v25) = v20;
    [v23 setHighLevel:{v24, v25}];

    [(ADMetricDepthPipelineParameters *)v11->_pipelineParameters confidenceBucketingHighThreshold];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "pipelinePrameters.confidenceBucketingHighThreshold is deprecated. please use confidenceLevelRanges instead", buf, 2u);
    }

    v26 = [(ADMetricDepthPipelineParameters *)v11->_pipelineParameters confidenceLevelRanges];
    [v26 lowLevel];
    v28 = v27;

    [(ADMetricDepthPipelineParameters *)v11->_pipelineParameters confidenceBucketingHighThreshold];
    v30 = v29;
    v31 = [(ADMetricDepthPipelineParameters *)v11->_pipelineParameters confidenceLevelRanges];
    LODWORD(v32) = v28;
    LODWORD(v33) = v30;
    [v31 setLowLevel:{v32, v33}];

    v34 = [(ADMetricDepthPipelineParameters *)v11->_pipelineParameters confidenceLevelRanges];
    [v34 highLevel];
    [(ADMetricDepthPipelineParameters *)v11->_pipelineParameters setConfidenceBucketingLowThreshold:?];

    v35 = [(ADMetricDepthPipelineParameters *)v11->_pipelineParameters confidenceLevelRanges];
    [v35 lowLevel];
    LODWORD(v37) = v36;
    [(ADMetricDepthPipelineParameters *)v11->_pipelineParameters setConfidenceBucketingHighThreshold:v37];

    v38 = [[ADEspressoMetricDepthInferenceDescriptor alloc] initWithNetworkProvider:v12->_networkProvider espressoEngine:a3];
    inferenceDescriptor = v12->_inferenceDescriptor;
    v12->_inferenceDescriptor = v38;

    v40 = [(ADEspressoMetricDepthInferenceDescriptor *)v11->_inferenceDescriptor confidenceOutput];
    v41 = [v40 imageDescriptor];
    v42 = [v41 cloneWithDifferentFormat:1278226488];
    postProcessedMetricConfLevelsDesc = v12->_postProcessedMetricConfLevelsDesc;
    v12->_postProcessedMetricConfLevelsDesc = v42;

    v44 = [(ADEspressoMetricDepthInferenceDescriptor *)v12->_inferenceDescriptor confidenceOutput];
    v45 = [v44 imageDescriptor];
    v46 = [v45 cloneWithDifferentFormat:1278226536];
    postProcessedMetricActiveDepthMaskDesc = v12->_postProcessedMetricActiveDepthMaskDesc;
    v12->_postProcessedMetricActiveDepthMaskDesc = v46;

    v48 = [objc_alloc(MEMORY[0x277CED110]) initWithStreakingInfill:0];
    pearlReprojector = v12->_pearlReprojector;
    v12->_pearlReprojector = v48;

    [(ADReprojection *)v12->_pearlReprojector setFullPassReprojectionAllowed:0];
    v50 = [ADEmbeddings alloc];
    v51 = [(ADMetricDepthPipelineParameters *)v11->_pipelineParameters numCenterBands];
    *&v52 = [(ADMetricDepthPipelineParameters *)v11->_pipelineParameters maxCenterResolution];
    LODWORD(v53) = 1.0;
    v54 = [(ADEmbeddings *)v50 initWithBands:v51 maxResolution:v52 sourceFactor:v53];
    cameraCenterEmbeddings = v12->_cameraCenterEmbeddings;
    v12->_cameraCenterEmbeddings = v54;

    v56 = [ADEmbeddings alloc];
    v57 = [(ADMetricDepthPipelineParameters *)v11->_pipelineParameters numRaysBands];
    *&v58 = [(ADMetricDepthPipelineParameters *)v11->_pipelineParameters maxRaysResolution];
    LODWORD(v59) = 1.0;
    v60 = [(ADEmbeddings *)v56 initWithBands:v57 maxResolution:v58 sourceFactor:v59];
    cameraRaysEmbeddings = v12->_cameraRaysEmbeddings;
    v12->_cameraRaysEmbeddings = v60;

    v62 = [ADEmbeddings alloc];
    v63 = [(ADMetricDepthPipelineParameters *)v11->_pipelineParameters numJasperBands];
    [(ADMetricDepthPipelineParameters *)v11->_pipelineParameters maxJasperDepth];
    v64 = [ADEmbeddings initWithBands:v62 maxResolution:"initWithBands:maxResolution:sourceFactor:" sourceFactor:v63];
    jasperEmbeddings = v12->_jasperEmbeddings;
    v12->_jasperEmbeddings = v64;

    if (v12->_downscaledJasperBuffer.__table_.__size_)
    {
      next = v12->_downscaledJasperBuffer.__table_.__first_node_.__next_;
      if (next)
      {
        do
        {
          v67 = *next;
          *(next + 3) = &unk_285231598;
          CVPixelBufferRelease(*(next + 4));
          operator delete(next);
          next = v67;
        }

        while (v67);
      }

      v12->_downscaledJasperBuffer.__table_.__first_node_.__next_ = 0;
      size = v12->_downscaledJasperBuffer.__table_.__bucket_list_.__deleter_.__size_;
      if (size)
      {
        bzero(v12->_downscaledJasperBuffer.__table_.__bucket_list_.__ptr_, 8 * size);
      }

      v12->_downscaledJasperBuffer.__table_.__size_ = 0;
    }

    if (v12->_backProjectedMap.__table_.__size_)
    {
      v69 = v12->_backProjectedMap.__table_.__first_node_.__next_;
      if (v69)
      {
        do
        {
          v83 = *v69;
          v84 = v69[3];
          if (v84)
          {
            v69[4] = v84;
            operator delete(v84);
          }

          operator delete(v69);
          v69 = v83;
        }

        while (v83);
      }

      v12->_backProjectedMap.__table_.__first_node_.__next_ = 0;
      v70 = v12->_backProjectedMap.__table_.__bucket_list_.__deleter_.__size_;
      if (v70)
      {
        bzero(v12->_backProjectedMap.__table_.__bucket_list_.__ptr_, 8 * v70);
      }

      v12->_backProjectedMap.__table_.__size_ = 0;
    }

    if (v12->_raysMap.__table_.__size_)
    {
      v71 = v12->_raysMap.__table_.__first_node_.__next_;
      if (v71)
      {
        do
        {
          v85 = *v71;
          v86 = v71[3];
          if (v86)
          {
            v71[4] = v86;
            operator delete(v86);
          }

          operator delete(v71);
          v71 = v85;
        }

        while (v85);
      }

      v12->_raysMap.__table_.__first_node_.__next_ = 0;
      v72 = v12->_raysMap.__table_.__bucket_list_.__deleter_.__size_;
      if (v72)
      {
        bzero(v12->_raysMap.__table_.__bucket_list_.__ptr_, 8 * v72);
      }

      v12->_raysMap.__table_.__size_ = 0;
    }

    if (v12->_lastCameraCalibration.__table_.__size_)
    {
      v73 = v12->_lastCameraCalibration.__table_.__first_node_.__next_;
      if (v73)
      {
        do
        {
          v74 = *v73;

          operator delete(v73);
          v73 = v74;
        }

        while (v74);
      }

      v12->_lastCameraCalibration.__table_.__first_node_.__next_ = 0;
      v75 = v12->_lastCameraCalibration.__table_.__bucket_list_.__deleter_.__size_;
      if (v75)
      {
        bzero(v12->_lastCameraCalibration.__table_.__bucket_list_.__ptr_, 8 * v75);
      }

      v12->_lastCameraCalibration.__table_.__size_ = 0;
    }

    if (v12->_lastPose.__table_.__size_)
    {
      v76 = v12->_lastPose.__table_.__first_node_.__next_;
      if (v76)
      {
        do
        {
          v77 = *v76;
          operator delete(v76);
          v76 = v77;
        }

        while (v77);
      }

      v12->_lastPose.__table_.__first_node_.__next_ = 0;
      v78 = v12->_lastPose.__table_.__bucket_list_.__deleter_.__size_;
      if (v78)
      {
        bzero(v12->_lastPose.__table_.__bucket_list_.__ptr_, 8 * v78);
      }

      v12->_lastPose.__table_.__size_ = 0;
    }

    if (v12->_lastSize.__table_.__size_)
    {
      v79 = v12->_lastSize.__table_.__first_node_.__next_;
      if (v79)
      {
        do
        {
          v80 = *v79;
          operator delete(v79);
          v79 = v80;
        }

        while (v80);
      }

      v12->_lastSize.__table_.__first_node_.__next_ = 0;
      v81 = v12->_lastSize.__table_.__bucket_list_.__deleter_.__size_;
      if (v81)
      {
        bzero(v12->_lastSize.__table_.__bucket_list_.__ptr_, 8 * v81);
      }

      v12->_lastSize.__table_.__size_ = 0;
    }

    v12->_pixelsMap.__end_ = v12->_pixelsMap.__begin_;
    v12->_zMap.__end_ = v12->_zMap.__begin_;
  }

  v82 = v12;
LABEL_58:
  kdebug_trace();

  return v82;
}

- (id)initForEspressoEngine:(unint64_t)a3
{
  v5 = objc_opt_new();
  v6 = [(ADMetricDepthPipeline *)self initForEspressoEngine:a3 pipelineParameters:v5];

  return v6;
}

- (ADMetricDepthPipeline)init
{
  if ([MEMORY[0x277CEE958] hasANE])
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  return [(ADMetricDepthPipeline *)self initForEspressoEngine:v3];
}

+ (id)defaults
{
  v7[1] = *MEMORY[0x277D85DE8];
  p_opt_class_meths = &OBJC_PROTOCOL___NSObject.opt_class_meths;
  {
    v6 = kADDeviceConfigurationKeyMetricDepthActiveMaskMode;
    v7[0] = &unk_28524A770;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    +[ADMetricDepthPipeline defaults]::result = [ADDeviceConfiguration preferencesWithDefaultValues:v5];

    p_opt_class_meths = (&OBJC_PROTOCOL___NSObject + 48);
  }

  v3 = p_opt_class_meths[133];

  return v3;
}

@end