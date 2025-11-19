@interface ABPK2DExtrapolationFiltering
- (ABPK2DExtrapolationFiltering)initWithUse3DSkeletonForExtrapolation:(BOOL)a3 shouldPush3DSupportSkeleton:(BOOL)a4 withExtrapolationTime:(double)a5;
- (abpk::Human)_getTrackedHumanForHumans:(abpk:(double)a4@<D0> :(float64x2_t)a5@<Q1> Human *)a3@<X8> atTimestamp:(float64_t)a6@<D2> withImageResolution:;
- (id).cxx_construct;
- (int)performExtrapolationOnHumans:()vector<abpk:(std:(CGSize)a4 :(double)a5 allocator<abpk:(int64_t)a6 :(id)a7 Human>> *)a3 :(id)a8 Human withImageResolution:atTimestamp:rotationNeeded:previousSkeleton3D:personTracker:;
- (int)performExtrapolationOnHumans:()vector<abpk:(std:(CGSize)a4 :(double)a5 allocator<abpk:(int64_t)a6 :(id)a7 Human>> *)a3 :Human withImageResolution:atTimestamp:rotationNeeded:previousSkeleton3D:;
- (void)_getTrackedHumanForHumans:(void *)a3@<X3> atTimestamp:(uint64_t)a4@<X8> withImageResolution:(double)a5@<D0> withPersonTracker:(CGFloat)a6@<D1>;
@end

@implementation ABPK2DExtrapolationFiltering

- (ABPK2DExtrapolationFiltering)initWithUse3DSkeletonForExtrapolation:(BOOL)a3 shouldPush3DSupportSkeleton:(BOOL)a4 withExtrapolationTime:(double)a5
{
  v9.receiver = self;
  v9.super_class = ABPK2DExtrapolationFiltering;
  result = [(ABPK2DExtrapolationFiltering *)&v9 init];
  if (result)
  {
    result->_extrapolationTime = a5;
    result->_use3DSupportSkeletonForExtrapolation = a3;
    result->_shouldPush3DSupportSkeleton = a4;
    result->_lastANSTTrackedInstanceId = 10000;
  }

  return result;
}

- (int)performExtrapolationOnHumans:()vector<abpk:(std:(CGSize)a4 :(double)a5 allocator<abpk:(int64_t)a6 :(id)a7 Human>> *)a3 :Human withImageResolution:atTimestamp:rotationNeeded:previousSkeleton3D:
{
  height = a4.height;
  width = a4.width;
  v13 = a7;
  memset(v15, 0, sizeof(v15));
  std::vector<abpk::Human>::__init_with_size[abi:ne200100]<abpk::Human*,abpk::Human*>(v15, a3->__begin_, a3->__end_, 0xEEEEEEEEEEEEEEEFLL * ((a3->__end_ - a3->__begin_) >> 3));
  LODWORD(a6) = [(ABPK2DExtrapolationFiltering *)self performExtrapolationOnHumans:v15 withImageResolution:a6 atTimestamp:v13 rotationNeeded:0 previousSkeleton3D:width personTracker:height, a5];
  v16 = v15;
  std::vector<abpk::Human>::__destroy_vector::operator()[abi:ne200100](&v16);

  return a6;
}

- (int)performExtrapolationOnHumans:()vector<abpk:(std:(CGSize)a4 :(double)a5 allocator<abpk:(int64_t)a6 :(id)a7 Human>> *)a3 :(id)a8 Human withImageResolution:atTimestamp:rotationNeeded:previousSkeleton3D:personTracker:
{
  height = a4.height;
  width = a4.width;
  v82[2] = *MEMORY[0x277D85DE8];
  anon_178 = self->_anon_178;
  v16 = a7;
  v17 = a8;
  std::vector<abpk::Human>::__vdeallocate(anon_178 + 16);
  *(anon_178 + 128) = *a3;
  a3->__begin_ = 0;
  a3->__end_ = 0;
  a3->__cap_ = 0;
  v18 = *(anon_178 + 16);
  if (v18 == self->_rawTrackedHumanVector.__end_)
  {
    v30 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v30, OS_LOG_TYPE_DEBUG, " \t\t No humans detected in the image ", buf, 2u);
    }

    goto LABEL_58;
  }

  v20 = *v18;
  v19 = v18[1];
  v21 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v22 = 0xEEEEEEEEEEEEEEEFLL * ((self->_rawTrackedHumanVector.__end_ - self->_rawTrackedHumanVector.__begin_) >> 3);
    *buf = 134217984;
    *&buf[4] = v22;
    _os_log_impl(&dword_23EDDC000, v21, OS_LOG_TYPE_DEBUG, " \t ABPK2DExtrapolationFiltering: Found 2d skeletons: %lu ", buf, 0xCu);
  }

  if (v17)
  {
    v23 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v24 = [v17 count];
      *buf = 134217984;
      *&buf[4] = v24;
      _os_log_impl(&dword_23EDDC000, v23, OS_LOG_TYPE_DEBUG, " \t ABPK2DExtrapolationFiltering: Found full bodies in the image: %lu ", buf, 0xCu);
    }

    if ([v17 count])
    {
      v25 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23EDDC000, v25, OS_LOG_TYPE_DEBUG, " \t Associating skeletons with ANST BBs ", buf, 2u);
      }

      memset(v73, 0, sizeof(v73));
      std::vector<abpk::Human>::__init_with_size[abi:ne200100]<abpk::Human*,abpk::Human*>(v73, self->_rawTrackedHumanVector.__begin_, self->_rawTrackedHumanVector.__end_, 0xEEEEEEEEEEEEEEEFLL * ((self->_rawTrackedHumanVector.__end_ - self->_rawTrackedHumanVector.__begin_) >> 3));
      [(ABPK2DExtrapolationFiltering *)self _getTrackedHumanForHumans:v73 atTimestamp:v17 withImageResolution:a5 withPersonTracker:width, height];
      v26 = *anon_178;
      if (*anon_178)
      {
        *&self->_anon_178[8] = v26;
        operator delete(v26);
        *anon_178 = 0;
        *(anon_178 + 1) = 0;
        *(anon_178 + 2) = 0;
      }

      *anon_178 = *buf;
      *&self->_anon_178[16] = v75;
      v75 = 0;
      memset(buf, 0, sizeof(buf));
      v27 = *&self->_anon_178[24];
      if (v27)
      {
        *&self->_anon_178[32] = v27;
        operator delete(v27);
        *&self->_anon_178[24] = 0;
        *&self->_anon_178[32] = 0;
        *&self->_anon_178[40] = 0;
      }

      *&self->_anon_178[24] = *__p;
      *&self->_anon_178[40] = v77;
      __p[1] = 0;
      v77 = 0;
      __p[0] = 0;
      v28 = *&self->_anon_178[48];
      if (v28)
      {
        *&self->_anon_178[56] = v28;
        operator delete(v28);
        *(anon_178 + 6) = 0;
        *(anon_178 + 7) = 0;
        *(anon_178 + 8) = 0;
      }

      *(anon_178 + 3) = v78;
      *&self->_anon_178[64] = v79;
      v79 = 0;
      v78 = 0uLL;
      _ZNSt3__123__optional_storage_baseINS_6vectorIDv2_fNS_9allocatorIS2_EEEELb0EE13__assign_fromB8ne200100INS_27__optional_move_assign_baseIS5_Lb0EEEEEvOT_(&self->_anon_178[72], &v80);
      *&self->_anon_178[104] = v82[0];
      *&self->_anon_178[109] = *(v82 + 5);
      if (v81 == 1 && v80.n128_u64[0])
      {
        v80.n128_u64[1] = v80.n128_u64[0];
        operator delete(v80.n128_u64[0]);
      }

      if (v78)
      {
        *(&v78 + 1) = v78;
        operator delete(v78);
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }

      v29 = v73;
      goto LABEL_50;
    }
  }

  else
  {
    v31 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v31, OS_LOG_TYPE_DEBUG, " \t ABPK2DExtrapolationFiltering: No full bodies in the image ", buf, 2u);
    }
  }

  v32 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v32, OS_LOG_TYPE_DEBUG, " \t Associating skeletons with legacy 2d skeleton matching ", buf, 2u);
  }

  memset(v72, 0, sizeof(v72));
  std::vector<abpk::Human>::__init_with_size[abi:ne200100]<abpk::Human*,abpk::Human*>(v72, self->_rawTrackedHumanVector.__begin_, self->_rawTrackedHumanVector.__end_, 0xEEEEEEEEEEEEEEEFLL * ((self->_rawTrackedHumanVector.__end_ - self->_rawTrackedHumanVector.__begin_) >> 3));
  [(ABPK2DExtrapolationFiltering *)self _getTrackedHumanForHumans:v72 atTimestamp:a5 withImageResolution:width, height];
  v33 = *anon_178;
  if (*anon_178)
  {
    *&self->_anon_178[8] = v33;
    operator delete(v33);
    *anon_178 = 0;
    *(anon_178 + 1) = 0;
    *(anon_178 + 2) = 0;
  }

  *anon_178 = *buf;
  *&self->_anon_178[16] = v75;
  v75 = 0;
  memset(buf, 0, sizeof(buf));
  v34 = *&self->_anon_178[24];
  if (v34)
  {
    *&self->_anon_178[32] = v34;
    operator delete(v34);
    *&self->_anon_178[24] = 0;
    *&self->_anon_178[32] = 0;
    *&self->_anon_178[40] = 0;
  }

  *&self->_anon_178[24] = *__p;
  *&self->_anon_178[40] = v77;
  __p[1] = 0;
  v77 = 0;
  __p[0] = 0;
  v35 = *&self->_anon_178[48];
  if (v35)
  {
    *&self->_anon_178[56] = v35;
    operator delete(v35);
    *(anon_178 + 6) = 0;
    *(anon_178 + 7) = 0;
    *(anon_178 + 8) = 0;
  }

  *(anon_178 + 3) = v78;
  *&self->_anon_178[64] = v79;
  v79 = 0;
  v78 = 0uLL;
  _ZNSt3__123__optional_storage_baseINS_6vectorIDv2_fNS_9allocatorIS2_EEEELb0EE13__assign_fromB8ne200100INS_27__optional_move_assign_baseIS5_Lb0EEEEEvOT_(&self->_anon_178[72], &v80);
  *&self->_anon_178[104] = v82[0];
  *&self->_anon_178[109] = *(v82 + 5);
  if (v81 == 1 && v80.n128_u64[0])
  {
    v80.n128_u64[1] = v80.n128_u64[0];
    operator delete(v80.n128_u64[0]);
  }

  if (v78)
  {
    *(&v78 + 1) = v78;
    operator delete(v78);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  v29 = v72;
LABEL_50:
  v71.__begin_ = v29;
  std::vector<abpk::Human>::__destroy_vector::operator()[abi:ne200100](&v71);
  v36 = *self->_anon_178;
  v37 = *&self->_anon_178[8];
  if (v37 == v36)
  {
LABEL_58:
    self->_extrapolationFilter2D.m_values.__end_ = self->_extrapolationFilter2D.m_values.__begin_;
    self->_extrapolationFilter2DForLiftingData.m_values.__end_ = self->_extrapolationFilter2DForLiftingData.m_values.__begin_;
    v41 = -6667;
    goto LABEL_96;
  }

  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l(self->_anon_100, v36, v37, (v37 - v36) >> 3);
  std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&self->_anon_100[24], *&self->_anon_178[24], *&self->_anon_178[32], (*&self->_anon_178[32] - *&self->_anon_178[24]) >> 2);
  std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&self->_anon_100[48], *&self->_anon_178[48], *&self->_anon_178[56], (*&self->_anon_178[56] - *&self->_anon_178[48]) >> 2);
  _ZNSt3__123__optional_storage_baseINS_6vectorIDv2_fNS_9allocatorIS2_EEEELb0EE13__assign_fromB8ne200100IRKNS_27__optional_copy_assign_baseIS5_Lb0EEEEEvOT_(&self->_anon_100[72], &self->_anon_178[72]);
  *&self->_anon_100[104] = *&self->_anon_178[104];
  *&self->_anon_100[112] = *&self->_anon_178[112];
  self->_anon_100[116] = self->_anon_178[116];
  if (v16)
  {
    v38 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v38, OS_LOG_TYPE_DEBUG, " Previous 3d skeleton is not nil ", buf, 2u);
    }

    if ([v16 jointCount])
    {
      v39 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23EDDC000, v39, OS_LOG_TYPE_DEBUG, " Previous 3d skeleton valid. Using it for alignment ", buf, 2u);
      }

      v40 = [[ABPK2DDetectionResult alloc] initWithJoints:*abpk::Human::jointVector(self->_anon_100) trackingStates:*&self->_anon_100[24] numberOfJoints:(*&self->_anon_100[8] - *self->_anon_100) >> 3 aligningPreviousSkeleton:v16 rotation:a6];
    }

    else
    {
      v42 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23EDDC000, v42, OS_LOG_TYPE_DEBUG, " previousSkeleton3D.jointCount == 0 ", buf, 2u);
      }

      v43 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23EDDC000, v43, OS_LOG_TYPE_DEBUG, " Setting _aligned3DSkeleton = nil ", buf, 2u);
      }

      v40 = 0;
    }

    aligned3DSkeleton = self->_aligned3DSkeleton;
    self->_aligned3DSkeleton = v40;
  }

  anon_210 = self->_anon_210;
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l(self->_anon_210, *self->_anon_100, *&self->_anon_100[8], (*&self->_anon_100[8] - *self->_anon_100) >> 3);
  std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&self->_anon_210[24], *&self->_anon_100[24], *&self->_anon_100[32], (*&self->_anon_100[32] - *&self->_anon_100[24]) >> 2);
  std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&self->_anon_210[48], *&self->_anon_100[48], *&self->_anon_100[56], (*&self->_anon_100[56] - *&self->_anon_100[48]) >> 2);
  _ZNSt3__123__optional_storage_baseINS_6vectorIDv2_fNS_9allocatorIS2_EEEELb0EE13__assign_fromB8ne200100IRKNS_27__optional_copy_assign_baseIS5_Lb0EEEEEvOT_(&self->_anon_210[72], &self->_anon_100[72]);
  *&self->_anon_210[104] = *&self->_anon_100[104];
  *&self->_anon_210[112] = *&self->_anon_100[112];
  self->_anon_210[116] = self->_anon_100[116];
  v46 = *&self->_anon_210[24];
  if (!*v46 && v46[1] && v46[16])
  {
    v47 = (*anon_210)[1];
    v48 = vsub_f32(v47, (*anon_210)[16]);
    v49 = vmul_f32(v48, v48);
    v50 = vadd_f32(v49, vdup_lane_s32(v49, 1)).u32[0];
    v51 = vrsqrte_f32(v50);
    v52 = vmul_f32(v51, vrsqrts_f32(v50, vmul_f32(v51, v51)));
    abpk::Human::updateJoint(self->_anon_210, 0, COERCE_DOUBLE(vmla_f32(v47, vdup_n_s32(0x3E99999Au), vmul_n_f32(vmul_n_f32(v48, vmul_f32(v52, vrsqrts_f32(v50, vmul_f32(v52, v52))).f32[0]), sqrtf(vaddv_f32(v49))))));
  }

  abpk::Human::resize(self->_anon_210, 0xEuLL);
  v53 = abpk::SkeletonJointFilter<float>::filter(&self->_extrapolationFilter2D, *self->_anon_100, (*&self->_anon_100[8] - *self->_anon_100) >> 2, a5);
  v54 = abpk::SkeletonJointFilter<float>::filter(&self->_extrapolationFilter2DForLiftingData, *self->_anon_210, (*&self->_anon_210[8] - *self->_anon_210) >> 2, a5);
  memset(buf, 0, sizeof(buf));
  v75 = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(buf, *&self->_anon_100[24], *&self->_anon_100[32], (*&self->_anon_100[32] - *&self->_anon_100[24]) >> 2);
  abpk::Human::updateFromRawJointArray(self->_anon_100, v53);
  v55 = self->_aligned3DSkeleton;
  if (v55 && self->_use3DSupportSkeletonForExtrapolation)
  {
    v56 = [(ABPK2DDetectionResult *)v55 rawJointsOutput];
    v57 = v19 - v20;
    memset(&v71, 0, sizeof(v71));
    std::vector<int>::reserve(&v71, (v19 - v20) >> 2);
    if (v19 != v20)
    {
      v58 = 0;
      if ((v57 >> 3) <= 1)
      {
        v59 = 1;
      }

      else
      {
        v59 = v57 >> 3;
      }

      v60 = 4;
      do
      {
        if (*(*buf + 4 * v58) || (v61 = vsub_f32(*(*abpk::Human::jointVector(self->_anon_100) + 8 * v58), *(v56 + 8 * v58)), sqrtf(vaddv_f32(vmul_f32(v61, v61))) <= 0.03))
        {
          std::vector<float>::push_back[abi:ne200100](&v71.__begin_, (*self->_anon_100 + v60 - 4));
          std::vector<float>::push_back[abi:ne200100](&v71.__begin_, (*self->_anon_100 + v60));
        }

        else
        {
          v69 = HIDWORD(*(v56 + 8 * v58));
          v70 = *(v56 + 8 * v58);
          std::vector<float>::push_back[abi:ne200100](&v71.__begin_, &v70);
          v70 = v69;
          std::vector<float>::push_back[abi:ne200100](&v71.__begin_, &v70);
        }

        ++v58;
        v60 += 8;
      }

      while (v59 != v58);
    }

    v62 = abpk::SkeletonJointFilter<float>::filter(&self->_extrapolationFilter2D, v71.__begin_, v71.__end_ - v71.__begin_, a5);
    abpk::Human::updateFromRawJointArray(self->_anon_100, v62);
    if (v71.__begin_)
    {
      v71.__end_ = v71.__begin_;
      operator delete(v71.__begin_);
    }

    extrapolationTime = -1.0;
  }

  else
  {
    extrapolationTime = self->_extrapolationTime;
  }

  v64 = abpk::SkeletonJointFilter<float>::applyTimeConstraint(&self->_extrapolationFilter2D, a5, extrapolationTime);
  abpk::Human::updateFromRawJointArray(self->_anon_100, v64);
  if (*&self->_anon_100[104] < ((*&self->_anon_100[8] - *self->_anon_100) >> 3))
  {
    v65 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v71.__begin_) = 0;
      _os_log_impl(&dword_23EDDC000, v65, OS_LOG_TYPE_DEBUG, " \t\t Missing joints detected in _trackedHuman skeleton. ", &v71, 2u);
    }

    abpk::Human::printMissingJoints(self->_anon_100);
  }

  abpk::Human::updateFromRawJointArray(self->_anon_210, v54);
  if (*&self->_anon_210[104] < ((*&self->_anon_210[8] - *self->_anon_210) >> 3))
  {
    v66 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v71.__begin_) = 0;
      _os_log_impl(&dword_23EDDC000, v66, OS_LOG_TYPE_DEBUG, " \t\t Missing joints detected in _trackedHumanForLifting skeleton. ", &v71, 2u);
    }

    abpk::Human::printMissingJoints(anon_210);
  }

  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  v41 = 0;
LABEL_96:

  v67 = *MEMORY[0x277D85DE8];
  return v41;
}

- (void)_getTrackedHumanForHumans:(void *)a3@<X3> atTimestamp:(uint64_t)a4@<X8> withImageResolution:(double)a5@<D0> withPersonTracker:(CGFloat)a6@<D1>
{
  v75 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = __ABPKLogSharedInstance();
  v72 = a5;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v14, OS_LOG_TYPE_DEBUG, " ANST Bounding boxes ", buf, 2u);
  }

  v15 = 0;
  v16 = a6;
  v17 = v16 / 288.0;
  v18 = a7;
  v19 = v18 / 192.0;
  while ([v13 count] > v15)
  {
    v20 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      LODWORD(v74) = v15;
      _os_log_impl(&dword_23EDDC000, v20, OS_LOG_TYPE_DEBUG, " Person: %d ", buf, 8u);
    }

    v21 = [v13 objectAtIndexedSubscript:v15];
    [v21 boundingBox];
    printCGRect(v79, v17, v19);

    ++v15;
  }

  v22 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v22, OS_LOG_TYPE_DEBUG, " 2d Skeleton Bounding boxes ", buf, 2u);
  }

  v23 = *a2;
  if (*a2 != a2[1])
  {
    v24 = 0.0;
    do
    {
      v25 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v74 = v24;
        _os_log_impl(&dword_23EDDC000, v25, OS_LOG_TYPE_DEBUG, " Human: %lu ", buf, 0xCu);
      }

      v76.width = a6;
      v76.height = a7;
      v80.origin.x = abpk::Human::boundingBox(v23, v76);
      printCGRect(v80, 1.0, 1.0);
      ++*&v24;
      v23 = (v23 + 120);
    }

    while (v23 != a2[1]);
  }

  v26 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v27 = x0_0[82];
    *buf = 134217984;
    v74 = v27;
    _os_log_impl(&dword_23EDDC000, v26, OS_LOG_TYPE_DEBUG, " _lastANSTTrackedInstanceId %lu ", buf, 0xCu);
  }

  for (i = 0; i < [v13 count]; ++i)
  {
    v29 = [v13 objectAtIndexedSubscript:i];
    v30 = [v29 objectID] == *(x0_0 + 82);

    if (v30)
    {
      v45 = [v13 objectAtIndexedSubscript:i];
      [v45 boundingBox];
      v47 = v46;
      v49 = v48;
      v51 = v50;
      v53 = v52;

      v54 = [v13 objectAtIndexedSubscript:i];
      *&v43 = COERCE_DOUBLE([v54 objectID]);

      v55 = v17;
      v35 = v47 * v17;
      v56 = v19;
      v37 = v49 * v19;
      v39 = v51 * v55;
      v41 = v53 * v56;
      x0_0[83] = v72;
      goto LABEL_30;
    }
  }

  v31 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v31, OS_LOG_TYPE_DEBUG, " _lastANSTTrackedInstanceId not found in the current frame ", buf, 2u);
  }

  x0_0[2] = x0_0[1];
  x0_0[18] = x0_0[17];
  if (a5 - x0_0[83] > 2.0)
  {
    v32 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v32, OS_LOG_TYPE_DEBUG, " Primary person occluded for more than set threshold. Shifting tracking to a different person ", buf, 2u);
    }

    v33 = [v13 objectAtIndexedSubscript:0];
    [v33 boundingBox];
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;

    v42 = [v13 objectAtIndexedSubscript:0];
    *&v43 = COERCE_DOUBLE([v42 objectID]);

    v44 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v74 = *&v43;
      _os_log_impl(&dword_23EDDC000, v44, OS_LOG_TYPE_DEBUG, " Picked %lu as the new ID ", buf, 0xCu);
    }

LABEL_30:
    v57 = *a2;
    if (*a2 == a2[1])
    {
      v59 = -10000.0;
    }

    else
    {
      v58 = 0;
      v59 = -10000.0;
      do
      {
        v77.width = a6;
        v77.height = a7;
        v60 = abpk::Human::boundingBox(v57, v77);
        v64 = computeIOUbetweenRects(v60, v61, v62, v63, v35, v37, v39, v41);
        v65 = __ABPKLogSharedInstance();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134217984;
          v74 = v64;
          _os_log_impl(&dword_23EDDC000, v65, OS_LOG_TYPE_DEBUG, " \t\t iou: %f ", buf, 0xCu);
        }

        if (v64 > v59)
        {
          v58 = v57;
          v59 = v64;
        }

        v57 = (v57 + 120);
      }

      while (v57 != a2[1]);
      if (v59 >= 0.0)
      {
        goto LABEL_43;
      }
    }

    v66 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v66, OS_LOG_TYPE_DEBUG, " IOU is lower than threshold. No closest human found from the previous frame. Assigning new tracking id ", buf, 2u);
    }

    v58 = *a2;
    x0_0[2] = x0_0[1];
    x0_0[18] = x0_0[17];
LABEL_43:
    v67 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v74 = v59;
      _os_log_impl(&dword_23EDDC000, v67, OS_LOG_TYPE_DEBUG, " Associated skeleton with IOU: %f ", buf, 0xCu);
    }

    v68 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v68, OS_LOG_TYPE_DEBUG, " _lastANSTTrackedInstanceIdBB ", buf, 2u);
    }

    v81.origin.x = v35;
    v81.origin.y = v37;
    v81.size.width = v39;
    v81.size.height = v41;
    printCGRect(v81, 1.0, 1.0);
    v69 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v69, OS_LOG_TYPE_DEBUG, " Human ", buf, 2u);
    }

    v78.width = a6;
    v78.height = a7;
    v82.origin.x = abpk::Human::boundingBox(v58, v78);
    printCGRect(v82, 1.0, 1.0);
    if (*(x0_0 + 82) != v43)
    {
      x0_0[2] = x0_0[1];
      x0_0[18] = x0_0[17];
    }

    x0_0[82] = *&v43;
    *(x0_0 + 81) = v58;
    abpk::Human::Human(a4, v58);
    goto LABEL_55;
  }

  v70 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v70, OS_LOG_TYPE_DEBUG, " Primary person occluded. Waiting for them to be visible. ", buf, 2u);
  }

  *(a4 + 112) = 0;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
LABEL_55:

  v71 = *MEMORY[0x277D85DE8];
}

- (abpk::Human)_getTrackedHumanForHumans:(abpk:(double)a4@<D0> :(float64x2_t)a5@<Q1> Human *)a3@<X8> atTimestamp:(float64_t)a6@<D2> withImageResolution:
{
  if (*(a1 + 8) == *(a1 + 16))
  {
    v9 = *a2;
    if (*a2 != a2[1])
    {
      v25 = -2147500000.0;
      v26 = *a2;
      do
      {
        v27 = v26[13];
        *&a4 = abpk::Human::area(v26, *&a4);
        *&a4 = *&a4 + v27;
        if (*&a4 > v25)
        {
          v9 = v26;
          v25 = *&a4;
        }

        v26 += 15;
      }

      while (v26 != a2[1]);
    }
  }

  else
  {
    v10 = *a2;
    v9 = a2[1];
    if (*a2 == v9)
    {
      v12 = 3.4028e38;
    }

    else
    {
      v11 = a4;
      a5.f64[1] = a6;
      v12 = 3.4028e38;
      v37 = a5;
      do
      {
        memset(&buf, 0, sizeof(buf));
        std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&buf, *(a1 + 8), *(a1 + 16), (*(a1 + 16) - *(a1 + 8)) >> 2);
        v39 = 0;
        v40 = 0;
        v41 = 0;
        std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v39, *(a1 + 32), *(a1 + 40), (*(a1 + 40) - *(a1 + 32)) >> 2);
        __p = 0;
        v43 = 0;
        v44 = 0;
        std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&__p, *(a1 + 56), *(a1 + 64), (*(a1 + 64) - *(a1 + 56)) >> 3);
        v13 = *(a1 + 96);
        v45 = *(a1 + 80);
        v46[0] = v13;
        *(v46 + 12) = *(a1 + 108);
        v14 = abpk::SkeletonJointFilter<float>::filter(&buf, *v10, (v10[1] - *v10) >> 2, v11);
        v15 = *v10;
        v16 = v10[1];
        v17 = v16 - *v10;
        if (v16 == *v10)
        {
          a4 = 0.0;
        }

        else
        {
          v18 = 0;
          v19 = v17 >> 2;
          begin = v14->__begin_;
          a4 = 0.0;
          do
          {
            v21 = vcvt_f32_f64(vmulq_f64(v37, vcvtq_f64_f32(*v15)));
            if (v21.f32[0] >= 0.0 && v21.f32[1] >= 0.0)
            {
              v22 = vcvt_f32_f64(vmulq_f64(v37, vcvtq_f64_f32(*begin)));
              v23 = vcltz_f32(v22);
              if (((v23.i32[0] | v23.i32[1]) & 1) == 0)
              {
                v24 = vsub_f32(v21, v22);
                *&a4 = *&a4 + sqrtf(vaddv_f32(vmul_f32(v24, v24)));
              }
            }

            v18 += 2;
            ++v15;
            ++begin;
          }

          while (v18 < v19);
        }

        if (*&a4 <= v12)
        {
          v9 = v10;
          v12 = *&a4;
        }

        if (__p)
        {
          v43 = __p;
          operator delete(__p);
        }

        if (v39)
        {
          v40 = v39;
          operator delete(v39);
        }

        if (buf.__begin_)
        {
          buf.__end_ = buf.__begin_;
          operator delete(buf.__begin_);
        }

        v10 += 15;
      }

      while (v10 != a2[1]);
      v10 = *a2;
    }

    *&a4 = (4 * (((v10[1] - *v10) >> 1) + ((v10[1] - *v10) >> 3)));
    if (v12 > *&a4)
    {
      *(a1 + 16) = *(a1 + 8);
      *(a1 + 144) = *(a1 + 136);
    }
  }

  v28 = v9[13];
  v29 = abpk::Human::area(v9, *&a4);
  v30 = v29.f32[0] + v28;
  v31 = *a2;
  v32 = -2147500000.0;
  if (*a2 != a2[1])
  {
    v33 = *a2;
    do
    {
      if (v33 != v9)
      {
        v34 = v33[13];
        v29 = abpk::Human::area(v33, v29);
        v29.f32[0] = v29.f32[0] + v34;
        if (v29.f32[0] > v32)
        {
          v31 = v33;
          v32 = v29.f32[0];
        }
      }

      v33 += 15;
    }

    while (v33 != a2[1]);
  }

  if (v32 > v30)
  {
    v35 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf.__begin_) = 0;
      _os_log_impl(&dword_23EDDC000, v35, OS_LOG_TYPE_DEBUG, " Resetting tracking as new human found ", &buf, 2u);
    }

    *(a1 + 16) = *(a1 + 8);
    *(a1 + 144) = *(a1 + 136);
    v9 = v31;
  }

  *(a1 + 648) = v9;
  return abpk::Human::Human(a3, v9);
}

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 5) = xmmword_23EE289D0;
  *(self + 6) = xmmword_23EE289E0;
  *(self + 14) = 0x40D5555542C80000;
  *(self + 30) = 1045220557;
  *(self + 136) = 0u;
  *(self + 152) = 0u;
  *(self + 168) = 0u;
  *(self + 184) = 0u;
  *(self + 25) = 0;
  *(self + 13) = xmmword_23EE289D0;
  *(self + 14) = xmmword_23EE289E0;
  *(self + 30) = 0x40D5555542C80000;
  *(self + 62) = 1045220557;
  *(self + 352) = 0;
  *(self + 368) = 0;
  *(self + 372) = 0;
  *(self + 313) = 0u;
  *(self + 18) = 0u;
  *(self + 19) = 0u;
  *(self + 16) = 0u;
  *(self + 17) = 0u;
  *(self + 472) = 0;
  *(self + 488) = 0;
  *(self + 492) = 0;
  *(self + 376) = 0u;
  *(self + 392) = 0u;
  *(self + 408) = 0u;
  *(self + 424) = 0u;
  *(self + 433) = 0u;
  *(self + 624) = 0;
  *(self + 640) = 0;
  *(self + 644) = 0;
  *(self + 81) = 0;
  *(self + 504) = 0u;
  *(self + 520) = 0u;
  *(self + 536) = 0u;
  *(self + 552) = 0u;
  *(self + 568) = 0u;
  *(self + 584) = 0u;
  *(self + 600) = 0;
  return self;
}

@end