@interface ABPK2dSkeleton
- (ABPK2dSkeleton)init;
- (ABPK2dSkeleton)initWithType:(int64_t)type;
- (CGRect)boundingBox;
- (CGSize)imageRes;
- (id).cxx_construct;
- (id)description;
- (id)toDictionary;
- (int)overlaySkeletonOnImage:(__CVBuffer *)image withResult:(__CVBuffer *)result withColor:;
- (void)computeBoundingBox;
- (void)printData;
- (void)setJointConfidences:(const float *)confidences;
- (void)setJointVisibility:(const unsigned int *)visibility;
- (void)setKeypoints2d:(ABPK2dSkeleton *)self withImageRes:(SEL)res;
- (void)setNormalizedKeypoints2d:(ABPK2dSkeleton *)self withImageRes:(SEL)res;
@end

@implementation ABPK2dSkeleton

- (ABPK2dSkeleton)init
{
  v28.receiver = self;
  v28.super_class = ABPK2dSkeleton;
  v2 = [(ABPK2dSkeleton *)&v28 init];
  if (v2)
  {
    v3 = [[ABPKSkeletonDefinition alloc] initWithType:0];
    v4 = *(v2 + 15);
    *(v2 + 15) = v3;

    skeletonDefinition = [v2 skeletonDefinition];
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEEC2B8ne200100Em(&v26, [skeletonDefinition jointCount]);
    v7 = v2 + 8;
    v6 = *(v2 + 1);
    if (v6)
    {
      *(v2 + 2) = v6;
      operator delete(v6);
      *v7 = 0;
      *(v2 + 2) = 0;
      *(v2 + 3) = 0;
    }

    *(v2 + 8) = v26;
    *(v2 + 3) = v27;
    v26 = 0uLL;
    v27 = 0;

    skeletonDefinition2 = [v2 skeletonDefinition];
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEEC2B8ne200100Em(&v26, [skeletonDefinition2 jointCount]);
    v10 = v2 + 32;
    v9 = *(v2 + 4);
    if (v9)
    {
      *(v2 + 5) = v9;
      operator delete(v9);
      *v10 = 0;
      *(v2 + 5) = 0;
      *(v2 + 6) = 0;
    }

    *(v2 + 2) = v26;
    *(v2 + 6) = v27;
    v27 = 0;
    v26 = 0uLL;

    v11 = 0;
    __asm { FMOV            V8.2S, #-1.0 }

    while (1)
    {
      skeletonDefinition3 = [v2 skeletonDefinition];
      jointCount = [skeletonDefinition3 jointCount];

      if (jointCount <= v11)
      {
        break;
      }

      *(*v7 + 8 * v11) = _D8;
      *(*v10 + 8 * v11++) = _D8;
    }

    __asm { FMOV            V0.2D, #1.0 }

    *(v2 + 136) = _Q0;
    *(v2 + 16) = 0;
    skeletonDefinition4 = [v2 skeletonDefinition];
    std::vector<float>::vector[abi:ne200100](&v26, [skeletonDefinition4 jointCount]);
    v21 = *(v2 + 7);
    if (v21)
    {
      *(v2 + 8) = v21;
      operator delete(v21);
      *(v2 + 7) = 0;
      *(v2 + 8) = 0;
      *(v2 + 9) = 0;
    }

    *(v2 + 56) = v26;
    *(v2 + 9) = v27;
    v27 = 0;
    v26 = 0uLL;

    skeletonDefinition5 = [v2 skeletonDefinition];
    std::vector<unsigned int>::vector[abi:ne200100](&v26, [skeletonDefinition5 jointCount]);
    v23 = *(v2 + 10);
    if (v23)
    {
      *(v2 + 11) = v23;
      operator delete(v23);
      *(v2 + 10) = 0;
      *(v2 + 11) = 0;
      *(v2 + 12) = 0;
    }

    *(v2 + 5) = v26;
    *(v2 + 12) = v27;
    v27 = 0;
    v26 = 0uLL;

    v2[104] = 0;
    v24 = v2;
  }

  return v2;
}

- (ABPK2dSkeleton)initWithType:(int64_t)type
{
  v20.receiver = self;
  v20.super_class = ABPK2dSkeleton;
  v4 = [(ABPK2dSkeleton *)&v20 init];
  v5 = v4;
  if (v4 && (v4->_skeletonType = type, v6 = [[ABPKSkeletonDefinition alloc] initWithType:type], skeletonDefinition = v5->_skeletonDefinition, v5->_skeletonDefinition = v6, skeletonDefinition, v5->_skeletonDefinition))
  {
    skeletonDefinition = [(ABPK2dSkeleton *)v5 skeletonDefinition];
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEEC2B8ne200100Em(&v18, [skeletonDefinition jointCount]);
    v9 = *v5->_anon_8;
    if (v9)
    {
      *&v5->_anon_8[8] = v9;
      operator delete(v9);
      *v5->_anon_8 = 0;
      *&v5->_anon_8[8] = 0;
      *&v5->_anon_8[16] = 0;
    }

    *v5->_anon_8 = v18;
    *&v5->_anon_8[16] = v19;
    v18 = 0uLL;
    v19 = 0;

    skeletonDefinition2 = [(ABPK2dSkeleton *)v5 skeletonDefinition];
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEEC2B8ne200100Em(&v18, [skeletonDefinition2 jointCount]);
    v11 = *v5->_anon_20;
    if (v11)
    {
      *&v5->_anon_20[8] = v11;
      operator delete(v11);
      *v5->_anon_20 = 0;
      *&v5->_anon_20[8] = 0;
      *&v5->_anon_20[16] = 0;
    }

    *v5->_anon_20 = v18;
    *&v5->_anon_20[16] = v19;
    v19 = 0;
    v18 = 0uLL;

    skeletonDefinition3 = [(ABPK2dSkeleton *)v5 skeletonDefinition];
    std::vector<float>::vector[abi:ne200100](&v18, [skeletonDefinition3 jointCount]);
    begin = v5->_confidences.__begin_;
    if (begin)
    {
      v5->_confidences.__end_ = begin;
      operator delete(begin);
      v5->_confidences.__begin_ = 0;
      v5->_confidences.__end_ = 0;
      v5->_confidences.__cap_ = 0;
    }

    *&v5->_confidences.__begin_ = v18;
    v5->_confidences.__cap_ = v19;
    v19 = 0;
    v18 = 0uLL;

    skeletonDefinition4 = [(ABPK2dSkeleton *)v5 skeletonDefinition];
    std::vector<unsigned int>::vector[abi:ne200100](&v18, [skeletonDefinition4 jointCount]);
    v15 = v5->_visibility.__begin_;
    if (v15)
    {
      v5->_visibility.__end_ = v15;
      operator delete(v15);
      v5->_visibility.__begin_ = 0;
      v5->_visibility.__end_ = 0;
      v5->_visibility.__cap_ = 0;
    }

    *&v5->_visibility.__begin_ = v18;
    v5->_visibility.__cap_ = v19;
    v19 = 0;
    v18 = 0uLL;

    v16 = v5;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)description
{
  v3 = objc_opt_new();
  for (i = 0; i < [(ABPKSkeletonDefinition *)self->_skeletonDefinition jointCount]; ++i)
  {
    v5 = [(ABPKSkeletonDefinition *)self->_skeletonDefinition jointName:i];
    v6 = [v3 stringByAppendingFormat:@"%@ : (%f, %f)\n", v5, COERCE_FLOAT(*(*self->_anon_8 + 8 * i)), COERCE_FLOAT(HIDWORD(*(*self->_anon_8 + 8 * i)))];

    v3 = v6;
  }

  return v3;
}

- (void)setNormalizedKeypoints2d:(ABPK2dSkeleton *)self withImageRes:(SEL)res
{
  v22 = v3;
  v23 = v4;
  v5 = v2;
  v27 = *MEMORY[0x277D85DE8];
  skeletonDefinition = [(ABPK2dSkeleton *)self skeletonDefinition];
  jointCount = [skeletonDefinition jointCount];
  if (jointCount)
  {
    memmove(*self->_anon_20, v5, 8 * jointCount);
  }

  v9 = 0;
  v10 = 0;
  v11.f64[0] = v22;
  v11.f64[1] = v23;
  v24 = v11;
  __asm { FMOV            V9.2S, #-1.0 }

  while (1)
  {
    skeletonDefinition2 = [(ABPK2dSkeleton *)self skeletonDefinition];
    jointCount2 = [skeletonDefinition2 jointCount];

    if (jointCount2 <= v9)
    {
      break;
    }

    v18 = *(*self->_anon_20 + 8 * v9);
    if (v18.f32[0] == -1.0 || COERCE_FLOAT(HIDWORD(*(*self->_anon_20 + 8 * v9))) == -1.0)
    {
      *(*self->_anon_8 + 8 * v9) = _D9;
      ++v10;
    }

    else
    {
      *(*self->_anon_8 + 8 * v9) = vcvt_f32_f64(vmulq_f64(v24, vcvtq_f64_f32(v18)));
    }

    ++v9;
  }

  v20 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v26 = v10;
    _os_log_impl(&dword_23EDDC000, v20, OS_LOG_TYPE_DEBUG, " missingJointsCount: %d ", buf, 8u);
  }

  self->_imageRes.width = v22;
  self->_imageRes.height = v23;
  [(ABPK2dSkeleton *)self computeBoundingBox];
  v21 = *MEMORY[0x277D85DE8];
}

- (void)setKeypoints2d:(ABPK2dSkeleton *)self withImageRes:(SEL)res
{
  v20 = v3;
  v21 = v4;
  v5 = v2;
  skeletonDefinition = [(ABPK2dSkeleton *)self skeletonDefinition];
  jointCount = [skeletonDefinition jointCount];
  if (jointCount)
  {
    memmove(*self->_anon_8, v5, 8 * jointCount);
  }

  v9 = 0;
  v10.f64[0] = v20;
  v10.f64[1] = v21;
  v22 = v10;
  __asm { FMOV            V8.2S, #-1.0 }

  while (1)
  {
    skeletonDefinition2 = [(ABPK2dSkeleton *)self skeletonDefinition];
    jointCount2 = [skeletonDefinition2 jointCount];

    if (jointCount2 <= v9)
    {
      break;
    }

    v17 = *(*self->_anon_8 + 8 * v9);
    _ZF = v17.f32[0] == -1.0 || COERCE_FLOAT(HIDWORD(*(*self->_anon_8 + 8 * v9))) == -1.0;
    v19 = _D8;
    if (!_ZF)
    {
      v19 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(v17), v22));
    }

    *(*self->_anon_20 + 8 * v9++) = v19;
  }

  self->_imageRes.width = v20;
  self->_imageRes.height = v21;

  [(ABPK2dSkeleton *)self computeBoundingBox];
}

- (void)computeBoundingBox
{
  v3 = 0;
  v4 = 0.0;
  v5 = 3.4028e38;
  v6 = 0.0;
  v7 = 3.4028e38;
  while (1)
  {
    skeletonDefinition = [(ABPK2dSkeleton *)self skeletonDefinition];
    jointCount = [skeletonDefinition jointCount];

    if (jointCount <= v3)
    {
      break;
    }

    v10 = *self->_anon_8;
    v11 = *(v10 + 8 * v3);
    if (*&v11 != -1.0 && *(&v11 + 1) != -1.0)
    {
      if (*&v11 > v6)
      {
        v13 = *&v11;
      }

      else
      {
        v13 = v6;
      }

      if (*&v11 < v7)
      {
        v7 = *&v11;
      }

      else
      {
        v6 = v13;
      }

      if (*(&v11 + 1) >= v5)
      {
        if (*(&v11 + 1) > v4)
        {
          LODWORD(v4) = HIDWORD(*(v10 + 8 * v3));
        }
      }

      else
      {
        LODWORD(v5) = HIDWORD(*(v10 + 8 * v3));
      }
    }

    ++v3;
  }

  self->_boundingBox.origin.x = v7;
  self->_boundingBox.origin.y = v5;
  self->_boundingBox.size.width = ((v6 - v7) + 1.0);
  self->_boundingBox.size.height = ((v4 - v5) + 1.0);
}

- (void)setJointConfidences:(const float *)confidences
{
  skeletonDefinition = [(ABPK2dSkeleton *)self skeletonDefinition];
  jointCount = [skeletonDefinition jointCount];
  if (jointCount)
  {
    memmove(self->_confidences.__begin_, confidences, 4 * jointCount);
  }
}

- (void)setJointVisibility:(const unsigned int *)visibility
{
  skeletonDefinition = [(ABPK2dSkeleton *)self skeletonDefinition];
  jointCount = [skeletonDefinition jointCount];
  if (jointCount)
  {
    memmove(self->_visibility.__begin_, visibility, 4 * jointCount);
  }
}

- (void)printData
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    width = self->_imageRes.width;
    height = self->_imageRes.height;
    *buf = 134218240;
    v19 = width;
    v20 = 2048;
    v21 = height;
    _os_log_impl(&dword_23EDDC000, v3, OS_LOG_TYPE_DEBUG, " Image res: %f,%f ", buf, 0x16u);
  }

  if ([(ABPKSkeletonDefinition *)self->_skeletonDefinition jointCount])
  {
    v6 = 0;
    do
    {
      v7 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = [(ABPKSkeletonDefinition *)self->_skeletonDefinition jointName:v6];
        *buf = 138412290;
        v19 = *&v8;
        _os_log_impl(&dword_23EDDC000, v7, OS_LOG_TYPE_DEBUG, " %@ ", buf, 0xCu);
      }

      v9 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = *self->_anon_8;
        v11 = COERCE_FLOAT(*(v10 + 8 * v6));
        v12 = COERCE_FLOAT(HIDWORD(*(v10 + 8 * v6)));
        *buf = 134218240;
        v19 = v11;
        v20 = 2048;
        v21 = v12;
        _os_log_impl(&dword_23EDDC000, v9, OS_LOG_TYPE_DEBUG, " \t Keypoint:    (%f,%f) ", buf, 0x16u);
      }

      v13 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v14 = self->_visibility.__begin_[v6];
        *buf = 67109120;
        LODWORD(v19) = v14;
        _os_log_impl(&dword_23EDDC000, v13, OS_LOG_TYPE_DEBUG, " \t Visibility:  %u ", buf, 8u);
      }

      v15 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = self->_confidences.__begin_[v6];
        *buf = 134217984;
        v19 = v16;
        _os_log_impl(&dword_23EDDC000, v15, OS_LOG_TYPE_DEBUG, " \t Confidence:  %f ", buf, 0xCu);
      }

      ++v6;
    }

    while (v6 < [(ABPKSkeletonDefinition *)self->_skeletonDefinition jointCount]);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)toDictionary
{
  v17[2] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = 0;
  v5 = 4;
  while ([(ABPKSkeletonDefinition *)self->_skeletonDefinition jointCount]> v4)
  {
    v6 = objc_opt_new();
    v7 = [MEMORY[0x277CCABB0] numberWithFloat:*(*self->_anon_8 + 8 * v4)];
    v17[0] = v7;
    LODWORD(v8) = *(*self->_anon_8 + v5);
    v9 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
    v17[1] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];

    [v6 setObject:v10 forKeyedSubscript:@"positions2d"];
    *&v11 = self->_confidences.__begin_[v4];
    v12 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
    [v6 setObject:v12 forKeyedSubscript:@"confidence"];

    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_visibility.__begin_[v4]];
    [v6 setObject:v13 forKeyedSubscript:@"visibility"];

    v14 = [(ABPKSkeletonDefinition *)self->_skeletonDefinition jointName:v4];
    [v3 setObject:v6 forKeyedSubscript:v14];

    ++v4;
    v5 += 8;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v3;
}

- (int)overlaySkeletonOnImage:(__CVBuffer *)image withResult:(__CVBuffer *)result withColor:
{
  if (!result)
  {
    v10 = v4;
    v8 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v8, OS_LOG_TYPE_ERROR, " Overlay image not initialized ", buf, 2u);
    }

    v4 = v10;
  }

  return overlay2dResultOnImage(self, image, result, v4);
}

- (CGRect)boundingBox
{
  x = self->_boundingBox.origin.x;
  y = self->_boundingBox.origin.y;
  width = self->_boundingBox.size.width;
  height = self->_boundingBox.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)imageRes
{
  width = self->_imageRes.width;
  height = self->_imageRes.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id).cxx_construct
{
  *(self + 88) = 0u;
  *(self + 72) = 0u;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end