@interface ABPKDepthBasedScaleEstimation
- (ABPKDepthBasedScaleEstimation)init;
- (float)estimateScaleFromDepthData:(CGFloat)a3 depthConfidenceData:(CGFloat)a4 timestamp:(__n128)a5 imageResolution:(__n128)a6 imageIntrinsics:(__n128)a7 cameraFromBodyPose:(uint64_t)a8 liftingResult:(__CVBuffer *)a9;
- (float)estimateScaleFromJasperCloud:(float32x4_t)a3 cameraFromBodyPose:(float32x4_t)a4 liftingResult:(float32x4_t)a5;
- (void)resetState;
@end

@implementation ABPKDepthBasedScaleEstimation

- (ABPKDepthBasedScaleEstimation)init
{
  v3 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v3, OS_LOG_TYPE_DEBUG, " ABPKDepthBasedScaleEstimation: Initializing ", buf, 2u);
  }

  v7.receiver = self;
  v7.super_class = ABPKDepthBasedScaleEstimation;
  v4 = [(ABPKDepthBasedScaleEstimation *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(ABPKDepthBasedScaleEstimation *)v4 resetState];
  }

  return v5;
}

- (void)resetState
{
  v3 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_23EDDC000, v3, OS_LOG_TYPE_DEBUG, " ABPKDepthBasedScaleEstimation: Reset state ", v4, 2u);
  }

  self->_depth_scaler_num_den = 0;
  self->_depth_scaler_observation_count = 0;
}

- (float)estimateScaleFromDepthData:(CGFloat)a3 depthConfidenceData:(CGFloat)a4 timestamp:(__n128)a5 imageResolution:(__n128)a6 imageIntrinsics:(__n128)a7 cameraFromBodyPose:(uint64_t)a8 liftingResult:(__CVBuffer *)a9
{
  *&v62[16] = a6;
  *&v62[32] = a7;
  *v62 = a5;
  v91 = *MEMORY[0x277D85DE8];
  v21 = a11;
  v22 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v22, OS_LOG_TYPE_DEBUG, " ABPKDepthBasedScaleEstimation: Estimating scale from AppleDepth data ", buf, 2u);
  }

  if (a2 - *(a1 + 8) > 1.0)
  {
    [a1 resetState];
  }

  Width = CVPixelBufferGetWidth(a9);
  Height = CVPixelBufferGetHeight(a9);
  v25 = Height;
  v93.width = Width;
  v93.height = Height;
  v92.width = a3;
  v92.height = a4;
  v27.f32[0] = ABPKAdjustIntrinsicsForViewportSize(*v62, v92, v93);
  v26 = 0;
  v27.i32[3] = 0;
  v28.i32[3] = 0;
  v29.i32[3] = 0;
  *v81 = a15;
  *&v81[16] = a16;
  v82 = a17;
  v83 = a18;
  do
  {
    *&buf[v26] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v27, COERCE_FLOAT(*&v81[v26])), v28, *&v81[v26], 1), v29, *&v81[v26], 2), xmmword_23EE28170, *&v81[v26], 3);
    v26 += 16;
  }

  while (v26 != 64);
  v60 = v85;
  v61 = *buf;
  v58 = v87;
  v59 = v86;
  CVPixelBufferLockBaseAddress(a9, 0);
  CVPixelBufferLockBaseAddress(a10, 0);
  v30 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v30, OS_LOG_TYPE_DEBUG, " \t Accessing depth data pointers ", buf, 2u);
  }

  BaseAddress = CVPixelBufferGetBaseAddress(a9);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a9);
  v33 = CVPixelBufferGetBaseAddress(a10);
  v34 = CVPixelBufferGetBytesPerRow(a10);
  memset(buf, 0, sizeof(buf));
  v85.i64[0] = 0;
  memset(v81, 0, 24);
  memset(&v80, 0, sizeof(v80));
  std::vector<int>::reserve(buf, [v21 jointCount]);
  std::vector<int>::reserve(v81, [v21 jointCount]);
  std::vector<int>::reserve(&v80, [v21 jointCount]);
  v35 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
  {
    *v75 = 0;
    _os_log_impl(&dword_23EDDC000, v35, OS_LOG_TYPE_DEBUG, " \t Extracting depth data for the 2d keypoints ", v75, 2u);
  }

  v36 = 0;
  v37 = v34;
  v38 = BytesPerRow >> 2;
  v39 = v37 >> 2;
  while ([v21 jointCount] > v36)
  {
    if ([v21 isJointTracked:v36])
    {
      v44 = [v21 joints];
      *v40.i32 = COERCE_FLOAT(HIDWORD(*&v44[4 * v36])) / 1000.0;
      *v41.i32 = COERCE_FLOAT(*&v44[4 * v36 + 2]) / 1000.0;
      v64 = v40;
      v65 = COERCE_FLOAT(*&v44[4 * v36]) / 1000.0;
      v63 = v41;
      v42 = vaddq_f32(v58, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v61, v65), v60, *v40.i32), v59, *v41.i32));
      v43 = vdivq_f32(v42, vdupq_laneq_s32(v42, 2)).u64[0];
      LODWORD(v44) = llroundf(*&v43);
      if ((v44 & 0x80000000) == 0 && v44 < Width)
      {
        v45 = llroundf(*(&v43 + 1));
        if ((v45 & 0x80000000) == 0 && v45 < v25)
        {
          DepthAndConfidenceInNeighborood(v44, v45, BaseAddress, v33, Width, v25, v38, v39);
          *v75 = v46;
          v76 = v47;
          std::vector<float>::push_back[abi:ne200100](v81, v75);
          std::vector<float>::push_back[abi:ne200100](&v80.__begin_, &v76);
          v71 = vaddq_f32(a18, vmlaq_f32(vmlaq_f32(vmulq_n_f32(a15, v65), vdupq_lane_s32(v64, 0), a16), vdupq_lane_s32(v63, 0), a17)).u32[2];
          std::vector<float>::push_back[abi:ne200100](buf, &v71);
        }
      }
    }

    ++v36;
  }

  CVPixelBufferUnlockBaseAddress(a9, 0);
  CVPixelBufferUnlockBaseAddress(a10, 0);
  v48 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
  {
    *v75 = 0;
    _os_log_impl(&dword_23EDDC000, v48, OS_LOG_TYPE_DEBUG, " \t Performing optimization ", v75, 2u);
  }

  *v75 = (*&buf[8] - *buf) >> 2;
  v77 = *buf;
  v78 = *v75;
  v79 = 0;
  v70 = 0;
  v71 = (*&v81[8] - *v81) >> 2;
  v72 = *v81;
  v73 = v71;
  v74 = 0;
  v67 = (v80.__end_ - v80.__begin_) >> 2;
  begin = v80.__begin_;
  v69 = v67;
  v89 = v75;
  v90 = &v67;
  cva::MatrixRef<float,0u,1u,false>::operator=<cva::MatrixBinaryExpr<cva::MatrixRef<float,0u,1u,false>,cva::MatrixRef<float,0u,1u,false>,cva::detail::MulOp>>(v75, &v89);
  v89 = &v71;
  v90 = &v67;
  cva::MatrixRef<float,0u,1u,false>::operator=<cva::MatrixBinaryExpr<cva::MatrixRef<float,0u,1u,false>,cva::MatrixRef<float,0u,1u,false>,cva::detail::MulOp>>(&v71, &v89);
  v66 = v75;
  if (*v75 != v71)
  {
    __assert_rtn("MatrixMultExpr", "matrixmultexpr.h", 100, "((lhs.ref().columns() == rhs.ref().rows())) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
  }

  v89 = &v66;
  v90 = &v71;
  v88 = 0.0;
  cva::assign<false,false,cva::Matrix<float,1u,1u,false>,cva::MatrixTransposeExpr<cva::MatrixRef<float,0u,1u,false>>,cva::MatrixRef<float,0u,1u,false>>(&v88, &v89);
  v49 = v88;
  v66 = v75;
  v89 = &v66;
  v90 = v75;
  v88 = 0.0;
  cva::assign<false,false,cva::Matrix<float,1u,1u,false>,cva::MatrixTransposeExpr<cva::MatrixRef<float,0u,1u,false>>,cva::MatrixRef<float,0u,1u,false>>(&v88, &v89);
  v50 = -1.0;
  if (v49 > 0.0 && v88 > 0.0)
  {
    v51 = v49 + *(a1 + 16);
    v52 = v88 + *(a1 + 20);
    *(a1 + 16) = v51;
    *(a1 + 20) = v52;
    *(a1 + 8) = a2;
    v50 = v51 / v52;
  }

  if (v80.__begin_)
  {
    v80.__end_ = v80.__begin_;
    operator delete(v80.__begin_);
  }

  if (*v81)
  {
    *&v81[8] = *v81;
    operator delete(*v81);
  }

  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  v53 = *MEMORY[0x277D85DE8];
  return v50;
}

- (float)estimateScaleFromJasperCloud:(float32x4_t)a3 cameraFromBodyPose:(float32x4_t)a4 liftingResult:(float32x4_t)a5
{
  v38 = a4;
  v39 = a5;
  v36 = a2;
  v37 = a3;
  v10 = a7;
  v11 = a8;
  v12 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v12, OS_LOG_TYPE_DEBUG, " ABPKDepthBasedScaleEstimation: Estimating scale from Jasper point cloud data ", buf, 2u);
  }

  ExtractJasperNSZs(v10, buf);
  v13 = 0;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v52 = 0x700000000;
  do
  {
    v14 = *(&v52 + v13);
    if ([v11 isJointTracked:{v14, *&v36, *&v37, *&v38, *&v39}])
    {
      v15 = [v11 joints];
      v16 = *buf;
      if (*buf != v60)
      {
        v40 = vaddq_f32(v39, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v36, COERCE_FLOAT(*(v15 + 16 * v14)) / 1000.0), v37, COERCE_FLOAT(HIDWORD(*(v15 + 16 * v14))) / 1000.0), v38, COERCE_FLOAT(*(v15 + 16 * v14 + 8)) / 1000.0));
        v17 = vdiv_f32(*v40.i8, vdup_laneq_s32(v40, 2));
        v18 = *buf + 16;
        v19 = vsub_f32(**buf, v17);
        v20 = vaddv_f32(vmul_f32(v19, v19));
        if (v60 != (*buf + 16))
        {
          v21 = (*buf + 16);
          do
          {
            v22 = *v21;
            v21 += 2;
            v23 = vsub_f32(v22, v17);
            v24 = vaddv_f32(vmul_f32(v23, v23));
            if (v24 < v20)
            {
              v16 = v18;
              v20 = v24;
            }

            v18 = v21;
          }

          while (v21 != v60);
        }

        if (sqrtf(v20) <= 0.03)
        {
          v48 = v16[1].f32[0];
          if (v48 > 0.0)
          {
            std::vector<float>::push_back[abi:ne200100](&v53, &v48);
            v44 = v40.i32[2];
            std::vector<float>::push_back[abi:ne200100](&v56, &v44);
          }
        }
      }
    }

    v13 += 4;
  }

  while (v13 != 8);
  v25 = v53;
  if (v53 == v54)
  {
    v31 = -1.0;
  }

  else
  {
    v26 = (v57 - v56) >> 2;
    v47 = 0;
    v48 = *&v26;
    v49 = v56;
    v50 = v26;
    v51 = 0;
    v27 = (v54 - v53) >> 2;
    v44 = v27;
    v45 = v53;
    v46 = v27;
    if (v27)
    {
      v28 = 4 * ((v54 - v53) >> 2);
      do
      {
        *v25 = *v25 + 0.1;
        ++v25;
        v28 -= 4;
      }

      while (v28);
    }

    v29 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      *v42 = 0;
      _os_log_impl(&dword_23EDDC000, v29, OS_LOG_TYPE_DEBUG, " \t Performing optimization ", v42, 2u);
    }

    v41 = &v48;
    if (v26 != v27)
    {
      __assert_rtn("MatrixMultExpr", "matrixmultexpr.h", 100, "((lhs.ref().columns() == rhs.ref().rows())) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
    }

    *v42 = &v41;
    v43 = &v44;
    v61 = 0.0;
    cva::assign<false,false,cva::Matrix<float,1u,1u,false>,cva::MatrixTransposeExpr<cva::MatrixRef<float,0u,1u,false>>,cva::MatrixRef<float,0u,1u,false>>(&v61, v42);
    v30 = v61;
    v41 = &v48;
    *v42 = &v41;
    v43 = &v48;
    v61 = 0.0;
    cva::assign<false,false,cva::Matrix<float,1u,1u,false>,cva::MatrixTransposeExpr<cva::MatrixRef<float,0u,1u,false>>,cva::MatrixRef<float,0u,1u,false>>(&v61, v42);
    v31 = -1.0;
    v25 = v53;
    if (v30 > 0.0 && v61 > 0.0)
    {
      v32 = v30 + *(a1 + 16);
      v33 = v61 + *(a1 + 20);
      *(a1 + 16) = v32;
      *(a1 + 20) = v33;
      v34 = *(a1 + 24) + v54 - v25;
      *(a1 + 24) = v34;
      if (v34 >= 8)
      {
        v31 = v32 / v33;
      }
    }
  }

  if (v25)
  {
    v54 = v25;
    operator delete(v25);
  }

  if (v56)
  {
    v57 = v56;
    operator delete(v56);
  }

  if (*buf)
  {
    v60 = *buf;
    operator delete(*buf);
  }

  return v31;
}

@end