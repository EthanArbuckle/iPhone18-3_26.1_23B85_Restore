@interface ABPKCameraRegistration
- (ABPKCameraRegistration)init;
- (ABPKRegistrationData)estimateCameraPoseFromMatchingwithImageIntrinsics:(__n128)a3 imageResolution:(__n128)a4 joints2d:(float64_t)a5 jointsLifted3D:(float64_t)a6 jointsLifted3DCount:(uint64_t)a7;
- (id).cxx_construct;
- (id)runCameraRegistrationWithImageIntrinsics:(__n128)a3 imageResolution:(__n128)a4 liftingResult:(float64_t)a5;
@end

@implementation ABPKCameraRegistration

- (ABPKCameraRegistration)init
{
  v3 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v3, OS_LOG_TYPE_DEBUG, " ABPKCameraRegistration: Initializing ", buf, 2u);
  }

  v5.receiver = self;
  v5.super_class = ABPKCameraRegistration;
  return [(ABPKCameraRegistration *)&v5 init];
}

- (ABPKRegistrationData)estimateCameraPoseFromMatchingwithImageIntrinsics:(__n128)a3 imageResolution:(__n128)a4 joints2d:(float64_t)a5 jointsLifted3D:(float64_t)a6 jointsLifted3DCount:(uint64_t)a7
{
  v62 = a2;
  v63 = a3;
  v64 = a4;
  v14 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_23EDDC000, v14, OS_LOG_TYPE_DEBUG, " ABPKCameraRegistration: Estimating camera pose ", buf, 2u);
  }

  v15 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_23EDDC000, v15, OS_LOG_TYPE_DEBUG, " \t Retargetting 2d keypoints to lifting skeleton type ", buf, 2u);
  }

  v61[0] = 0;
  v61[1] = 0;
  v60 = v61;
  *buf = 0x800000000;
  std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::pair<int,int>>(&v60, buf);
  *buf = 0x700000001;
  std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::pair<int,int>>(&v60, buf);
  *buf = 0xD00000002;
  std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::pair<int,int>>(&v60, buf);
  *buf = 0xE00000003;
  std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::pair<int,int>>(&v60, buf);
  *buf = 0xF00000004;
  std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::pair<int,int>>(&v60, buf);
  *buf = 0xA00000005;
  std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::pair<int,int>>(&v60, buf);
  *buf = 0xB00000006;
  std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::pair<int,int>>(&v60, buf);
  *buf = 0xC00000007;
  std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::pair<int,int>>(&v60, buf);
  *buf = 0x100000008;
  std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::pair<int,int>>(&v60, buf);
  *buf = 0x200000009;
  std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::pair<int,int>>(&v60, buf);
  *buf = 0x30000000ALL;
  std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::pair<int,int>>(&v60, buf);
  *buf = 0x40000000BLL;
  std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::pair<int,int>>(&v60, buf);
  *buf = 0x50000000CLL;
  std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::pair<int,int>>(&v60, buf);
  *buf = 0x60000000DLL;
  std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::pair<int,int>>(&v60, buf);
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEEC2B8ne200100Em(&v58, 0x10uLL);
  v16 = v60;
  __asm { FMOV            V8.2S, #-1.0 }

  if (v60 != v61)
  {
    v22.f64[0] = a5;
    v22.f64[1] = a6;
    do
    {
      v23 = a8[*(v16 + 7)];
      if (v23.f32[0] < 0.0 || v23.f32[1] < 0.0)
      {
        *&v58[8 * *(v16 + 8)] = _D8;
      }

      else
      {
        *&v58[8 * *(v16 + 8)] = vcvt_f32_f64(vmulq_f64(v22, vcvtq_f64_f32(v23)));
      }

      v24 = v16[1];
      if (v24)
      {
        do
        {
          v25 = v24;
          v24 = *v24;
        }

        while (v24);
      }

      else
      {
        do
        {
          v25 = v16[2];
          _ZF = *v25 == v16;
          v16 = v25;
        }

        while (!_ZF);
      }

      v16 = v25;
    }

    while (v25 != v61);
  }

  if (determineDeviceANEVersionPriorOrEqualToH12())
  {
    *v58 = vmul_f32(vadd_f32(*(v58 + 32), *(v58 + 8)), 0x3F0000003F000000);
    v26 = *(v58 + 64);
    v27 = vmul_f32(vadd_f32(v26, *(v58 + 56)), 0x3F0000003F000000);
    *&v28 = -(v27.f32[0] - (v26.f32[0] * 2.0));
    v26.f32[0] = v27.f32[1] * -0.6 + v26.f32[1] * 1.6;
    HIDWORD(v28) = v26.i32[0];
    *(v58 + 9) = v28;
  }

  else
  {
    v29 = a8[16];
    v30.f64[0] = a5;
    v30.f64[1] = a6;
    v31 = COERCE_DOUBLE(vcvt_f32_f64(vmulq_f64(v30, vcvtq_f64_f32(v29))));
    if (v29.f32[1] < 0.0)
    {
      v31 = _D8;
    }

    if (v29.f32[0] >= 0.0)
    {
      v32 = v31;
    }

    else
    {
      v32 = _D8;
    }

    v33 = v58;
    *(v58 + 9) = v32;
    v35 = v33[7];
    v34 = v33[8];
    if (v35.f32[0] >= 0.0 && v34.f32[0] >= 0.0 && v34.f32[1] >= 0.0)
    {
      v36 = vcvtq_f64_f32(vsub_f32(v35, v34));
      *v36.f64 = sqrt(vaddvq_f64(vmulq_f64(v36, v36)));
      *v36.f64 = v34.f32[1] + *v36.f64 * -0.5;
      v34.i32[1] = LODWORD(v36.f64[0]);
    }

    v33[9] = v34;
  }

  v37 = *(MEMORY[0x277D860B8] + 16);
  v57[0] = *MEMORY[0x277D860B8];
  v57[1] = v37;
  v38 = *(MEMORY[0x277D860B8] + 48);
  v57[2] = *(MEMORY[0x277D860B8] + 32);
  v57[3] = v38;
  v39 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_23EDDC000, v39, OS_LOG_TYPE_DEBUG, " \t Performing registration ", buf, 2u);
  }

  btr::BodyRegistration::RegisterBody(a1 + 16, v58, (v59 - v58) >> 3, a9, a10, v57, 1, &v62, buf);
  if (buf[0])
  {
    v40 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *v47 = 0;
      _os_log_impl(&dword_23EDDC000, v40, OS_LOG_TYPE_ERROR, " \t\t Registration Failed ", v47, 2u);
    }

    v41 = 0;
  }

  else
  {
    v42 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      *v47 = 0;
      _os_log_impl(&dword_23EDDC000, v42, OS_LOG_TYPE_DEBUG, " \t Creating result type ", v47, 2u);
    }

    v43 = [ABPKRegistrationData alloc];
    v41 = [(ABPKRegistrationData *)v43 initWithImagePoints:v62.n128_f64[0] imagePointsCount:v63.n128_f64[0] jointsLifted3D:v64.n128_f64[0] jointsLifted3DCount:a5 cameraIntrinsics:a6 imageDimensions:v49 cameraFromBodyPose:v50 registrationValid:v51, v52];
  }

  if (__p)
  {
    v56 = __p;
    operator delete(__p);
  }

  if (v53)
  {
    v54 = v53;
    operator delete(v53);
  }

  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }

  std::__tree<unsigned char>::destroy(&v60, v61[0]);

  return v41;
}

- (id)runCameraRegistrationWithImageIntrinsics:(__n128)a3 imageResolution:(__n128)a4 liftingResult:(float64_t)a5
{
  *(&v64[6] + 4) = *MEMORY[0x277D85DE8];
  v60[0] = a2;
  v60[1] = a3;
  v60[2] = a4;
  v9 = a8;
  [a1 _startRunCameraRegistrationSignpost];
  v10 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v10, OS_LOG_TYPE_DEBUG, " ABPKCameraRegistration: Run camera registration ", buf, 2u);
  }

  v11 = objc_alloc_init(ABPKResultRegistration);
  v12 = *(a1 + 352);
  *(a1 + 352) = v11;

  v13 = [v9 skeletonDetectionResult2D];
  v14 = [v13 liftingData];
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE6resizeEm((a1 + 360), [v14 liftingData3DElementCount] >> 1);

  if (*(a1 + 368) != *(a1 + 360))
  {
    v15 = 0;
    v16 = 0;
    v17.f64[0] = a5;
    v17.f64[1] = a6;
    v18 = vcvt_f32_s32(vmovn_s64(vcvtq_s64_f64(v17)));
    v19 = vdup_n_s32(0x447A0000u);
    do
    {
      v20 = [v13 liftingData];
      v50 = *([v20 unnormalizedLiftingData3D] + v15);
      v21 = [v13 liftingData];
      v48 = *([v21 unnormalizedLiftingData3D] + v15 + 4);

      *(*(a1 + 360) + v15) = vdiv_f32(vmul_f32(__PAIR64__(v48, v50), v18), v19);
      ++v16;
      v15 += 8;
    }

    while (v16 < (*(a1 + 368) - *(a1 + 360)) >> 3);
  }

  [*(a1 + 352) setJoints2d:?];
  v58.transform.m_data[15] = 0.0;
  v58.transform.m_data[14] = 0.0;
  v59 = 0;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(&v58.transform.m_data[14], [v9 jointCount]);
  v22 = 0;
  v51 = vdupq_n_s32(0x447A0000u);
  while ([v9 jointCount] > v22)
  {
    v23 = [v9 joints];
    v24 = vdivq_f32(*(v23 + 16 * v22), v51);
    v24.f32[2] = COERCE_FLOAT(*(v23 + 16 * v22 + 8)) / 1000.0;
    *(*&v58.transform.m_data[14] + 16 * v22++) = v24;
  }

  v25 = *(MEMORY[0x277D860B8] + 16);
  *&v58.transform.m_data[5] = *MEMORY[0x277D860B8];
  *&v58.transform.m_data[7] = v25;
  v26 = *(MEMORY[0x277D860B8] + 48);
  *&v58.transform.m_data[9] = *(MEMORY[0x277D860B8] + 32);
  *&v58.transform.m_data[11] = v26;
  *&v58.camera_matrix.m_data[6] = *&v58.transform.m_data[5];
  *&v58.camera_matrix.m_data[8] = v25;
  *&v58.transform.m_data[1] = *&v58.transform.m_data[9];
  *&v58.transform.m_data[3] = v26;
  btr::BodyRegistration::RegisterBody(a1 + 16, *(a1 + 360), (*(a1 + 368) - *(a1 + 360)) >> 3, *&v58.transform.m_data[14], (*&v58.transform.m_data[15] - *&v58.transform.m_data[14]) >> 4, &v58.transform.m_data[5], 1, v60, buf);
  if (*buf)
  {
    v28 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *v63 = 0;
      _os_log_impl(&dword_23EDDC000, v28, OS_LOG_TYPE_DEFAULT, " \t\t Registration Failed ", v63, 2u);
    }

    [*(a1 + 352) setSuccess:{0, &v58.camera_matrix.m_data[6]}];
  }

  else
  {
    v29 = btr::ComputeReprojectionAvg(&v55, &v58, v27);
    v30 = btr::ComputeTotalBoneLength(&v58.camera_matrix.m_data[3]);
    v31 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      *v63 = 134217984;
      *v64 = v29;
      _os_log_impl(&dword_23EDDC000, v31, OS_LOG_TYPE_DEBUG, " \t\t Reprojection err evg[pixels]: %f ", v63, 0xCu);
    }

    v32 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      *v63 = 134217984;
      *v64 = v30;
      _os_log_impl(&dword_23EDDC000, v32, OS_LOG_TYPE_DEBUG, " \t\t Bones length: %f) ", v63, 0xCu);
    }

    [*(a1 + 352) setCameraFromBodyPose:{COERCE_DOUBLE(vcvt_f32_f64(v56[0])), COERCE_DOUBLE(vcvt_f32_f64(v56[2])), COERCE_DOUBLE(vcvt_f32_f64(v56[4])), COERCE_DOUBLE(vcvt_f32_f64(v57)), &v58.camera_matrix.m_data[6]}];
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm((a1 + 384), 0x10uLL);
    v33 = *&v58.camera_matrix.m_data[3];
    v34 = v58.camera_matrix.m_data[4];
    if (*&v58.camera_matrix.m_data[3] != *&v58.camera_matrix.m_data[4])
    {
      v35 = 0;
      do
      {
        v36 = *v33;
        *&v36.f64[0] = vcvt_f32_f64(*v33);
        v37 = v33[1].f64[0];
        *&v36.f64[1] = v37;
        *(*(a1 + 384) + v35) = v36;
        v33 = (v33 + 24);
        v35 += 16;
      }

      while (v33 != *&v34);
    }

    [*(a1 + 352) setJoints3dWrtBody:*(a1 + 384)];
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm((a1 + 408), 0x10uLL);
    v38 = *&v58.camera_matrix.m_data[3];
    v39 = v58.camera_matrix.m_data[4];
    if (*&v58.camera_matrix.m_data[3] != *&v58.camera_matrix.m_data[4])
    {
      v40 = 0;
      do
      {
        v61[0] = v56;
        v61[1] = 4;
        v62[0] = v61;
        v62[1] = v38;
        *(&v64[1] + 4) = 0;
        *(&v64[2] + 4) = 0;
        *(v64 + 4) = 0;
        cva::assign<false,false,cva::Matrix<double,3u,1u,false>,cva::MatrixRef<double const,3u,3u,false>,cva::Matrix<double,3u,1u,false>>(v64 + 4, v62);
        v41 = 0;
        v52 = 0uLL;
        v53 = 0.0;
        do
        {
          v52.f64[v41] = *(&v64[v41] + 4) + v57.f64[v41];
          ++v41;
        }

        while (v41 != 3);
        *&v42 = vcvt_f32_f64(v52);
        *&v43 = v53;
        *(&v42 + 1) = __PAIR64__(HIDWORD(v52.f64[1]), v43);
        *(*(a1 + 408) + 16 * v40++) = v42;
        v38 += 3;
      }

      while (v38 != *&v39);
    }

    [*(a1 + 352) setJoints3dWrtCamera:*(a1 + 408)];
    [*(a1 + 352) setSuccess:1];
  }

  [a1 _endRunCameraRegistrationSignpost];
  v44 = *(a1 + 352);
  if (*&v58.camera_matrix.m_data[3])
  {
    v58.camera_matrix.m_data[4] = v58.camera_matrix.m_data[3];
    operator delete(*&v58.camera_matrix.m_data[3]);
  }

  if (*&v58.camera_matrix.m_data[0])
  {
    v58.camera_matrix.m_data[1] = v58.camera_matrix.m_data[0];
    operator delete(*&v58.camera_matrix.m_data[0]);
  }

  if (*&v58.transform.m_data[14])
  {
    v58.transform.m_data[15] = v58.transform.m_data[14];
    operator delete(*&v58.transform.m_data[14]);
  }

  v45 = *MEMORY[0x277D85DE8];

  return v44;
}

- (id).cxx_construct
{
  *(self + 4) = 5;
  *(self + 168) = xmmword_23EE28CA8;
  *(self + 184) = unk_23EE28CB8;
  *(self + 200) = xmmword_23EE28CC8;
  *(self + 216) = unk_23EE28CD8;
  *(self + 104) = xmmword_23EE28C68;
  *(self + 120) = unk_23EE28C78;
  *(self + 136) = xmmword_23EE28C88;
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  *(self + 12) = 0;
  *(self + 152) = unk_23EE28C98;
  *(self + 20) = 0u;
  *(self + 21) = 0u;
  *(self + 18) = 0u;
  *(self + 19) = 0u;
  *(self + 16) = 0u;
  *(self + 17) = 0u;
  *(self + 15) = 0u;
  *(self + 53) = 0;
  *(self + 392) = 0u;
  *(self + 408) = 0u;
  *(self + 360) = 0u;
  *(self + 376) = 0u;
  return self;
}

@end