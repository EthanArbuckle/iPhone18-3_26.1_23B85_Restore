@interface ARPointCloud
+ (id)concatPointClouds:(id)clouds;
+ (id)emptyPointCloud;
+ (void)emptyPointCloud;
- (ARHitTestResult)_hitTestPointFromOrigin:(float32x4_t)origin withDirection:(float)direction maximumAngle:(float32x4_t)angle cameraToWorldTransform:(float32x4_t)transform;
- (ARPointCloud)initWithCV3DPointData:(id)data minVergenceAngleCosine:(double)cosine;
- (ARPointCloud)initWithCoder:(id)coder;
- (ARPointCloud)initWithDepthPointCloud:(id)cloud;
- (ARPointCloud)initWithPointData:(id)data;
- (ARPointCloud)pointCloudByApplyingTransform:(float32x4_t)transform;
- (BOOL)isEqual:(id)equal;
- (NSUInteger)count;
- (const)points;
- (const)vergenceAngleCosines;
- (double)computeBounds;
- (float32x4_t)initWithPointsVector:(__n128 *)vector identifiersVector:(__n128 *)identifiersVector vergenceAngleCosinesVector:(__n128 *)cosinesVector;
- (id).cxx_construct;
- (id)description;
- (id)filterPointCloudFrom:(ARPointCloud *)self ellipsoid:(SEL)ellipsoid;
- (id)filterPointCloudWithIdentifiers:(set<unsigned long)long;
- (id)initWithPointsVector:(__int128 *)vector identifiersVector:(uint64_t)identifiersVector;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ARPointCloud

- (ARPointCloud)initWithPointData:(id)data
{
  dataCopy = data;
  v20 = 0uLL;
  v21 = 0;
  v18[0] = 0;
  v18[1] = 0;
  v19 = 0;
  v5 = [dataCopy length];
  bytes = [dataCopy bytes];
  v7 = v5 >> 5;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(&v20, v5 >> 5);
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE7reserveEm(v18, v5 >> 5);
  if (v5 >= 0x20)
  {
    v8 = (bytes + 24);
    do
    {
      v9 = *(v8 - 3);
      *&v9.f64[0] = vcvt_f32_f64(v9);
      v10 = *(v8 - 1);
      *&v9.f64[1] = v10;
      v17 = v9;
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8ne200100EOS1_(&v20, &v17);
      *&v17.f64[0] = *v8;
      std::vector<unsigned long long>::push_back[abi:ne200100](v18, &v17);
      v8 += 4;
      --v7;
    }

    while (v7);
  }

  *v15 = v20;
  v16 = v21;
  v21 = 0;
  v20 = 0uLL;
  *__p = *v18;
  v14 = v19;
  v18[0] = 0;
  v18[1] = 0;
  v19 = 0;
  v11 = [(ARPointCloud *)self initWithPointsVector:v15 identifiersVector:__p];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v15[0])
  {
    v15[1] = v15[0];
    operator delete(v15[0]);
  }

  if (v18[0])
  {
    v18[1] = v18[0];
    operator delete(v18[0]);
  }

  if (v20)
  {
    *(&v20 + 1) = v20;
    operator delete(v20);
  }

  return v11;
}

- (ARPointCloud)initWithCV3DPointData:(id)data minVergenceAngleCosine:(double)cosine
{
  dataCopy = data;
  v36 = 0uLL;
  v37 = 0;
  v34[0] = 0;
  v34[1] = 0;
  v35 = 0;
  memset(&v33, 0, sizeof(v33));
  v7 = [dataCopy length];
  bytes = [dataCopy bytes];
  v9 = v7 / 0x28;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(&v36, v7 / 0x28);
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE7reserveEm(v34, v7 / 0x28);
  std::vector<float>::reserve(&v33, v7 / 0x28);
  if (v7 >= 0x28)
  {
    v10 = 0;
    v11 = (bytes + 32);
    do
    {
      v12 = *v11;
      if (*v11 <= cosine)
      {
        v13 = *(v11 - 4);
        *&v13.f64[0] = vcvt_f32_f64(v13);
        v14 = *(v11 - 2);
        *&v13.f64[1] = v14;
        v32 = v13;
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8ne200100EOS1_(&v36, &v32);
        v32.f64[0] = *(v11 - 1);
        std::vector<unsigned long long>::push_back[abi:ne200100](v34, &v32);
        v15 = v12;
        end = v33.__end_;
        if (v33.__end_ >= v33.__end_cap_.__value_)
        {
          begin = v33.__begin_;
          v19 = v33.__end_ - v33.__begin_;
          v20 = v33.__end_ - v33.__begin_;
          v21 = v20 + 1;
          if ((v20 + 1) >> 62)
          {
            _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
          }

          v22 = v33.__end_cap_.__value_ - v33.__begin_;
          if ((v33.__end_cap_.__value_ - v33.__begin_) >> 1 > v21)
          {
            v21 = v22 >> 1;
          }

          if (v22 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v23 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v23 = v21;
          }

          if (v23)
          {
            std::allocator<unsigned int>::allocate_at_least[abi:ne200100](&v33, v23);
          }

          *(4 * v20) = v15;
          v17 = (4 * v20 + 4);
          memcpy(0, begin, v19);
          v24 = v33.__begin_;
          v33.__begin_ = 0;
          v33.__end_ = v17;
          v33.__end_cap_.__value_ = 0;
          if (v24)
          {
            operator delete(v24);
          }
        }

        else
        {
          *v33.__end_ = v15;
          v17 = end + 1;
        }

        v33.__end_ = v17;
        ++v10;
      }

      v11 += 5;
      --v9;
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(&v36, v10);
  std::vector<unsigned long long>::resize(v34, v10);
  std::vector<float>::resize(&v33, v10);
  *v30 = v36;
  v31 = v37;
  v37 = 0;
  v36 = 0uLL;
  *v28 = *v34;
  v29 = v35;
  v34[0] = 0;
  v34[1] = 0;
  v35 = 0;
  __p = v33;
  memset(&v33, 0, sizeof(v33));
  v25 = [(ARPointCloud *)self initWithPointsVector:v30 identifiersVector:v28 vergenceAngleCosinesVector:&__p];
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }

  if (v28[0])
  {
    v28[1] = v28[0];
    operator delete(v28[0]);
  }

  if (v30[0])
  {
    v30[1] = v30[0];
    operator delete(v30[0]);
  }

  if (v33.__begin_)
  {
    v33.__end_ = v33.__begin_;
    operator delete(v33.__begin_);
  }

  if (v34[0])
  {
    v34[1] = v34[0];
    operator delete(v34[0]);
  }

  if (v36)
  {
    *(&v36 + 1) = v36;
    operator delete(v36);
  }

  return v25;
}

- (id)initWithPointsVector:(__int128 *)vector identifiersVector:(uint64_t)identifiersVector
{
  v11 = *vector;
  v12 = *(vector + 2);
  *(vector + 1) = 0;
  *(vector + 2) = 0;
  *vector = 0;
  *v9 = *identifiersVector;
  v10 = *(identifiersVector + 16);
  *(identifiersVector + 8) = 0;
  *(identifiersVector + 16) = 0;
  *identifiersVector = 0;
  v7 = 0;
  v8 = 0;
  __p = 0;
  v4 = [self initWithPointsVector:&v11 identifiersVector:v9 vergenceAngleCosinesVector:&__p];
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }

  if (v11)
  {
    *(&v11 + 1) = v11;
    operator delete(v11);
  }

  return v4;
}

- (float32x4_t)initWithPointsVector:(__n128 *)vector identifiersVector:(__n128 *)identifiersVector vergenceAngleCosinesVector:(__n128 *)cosinesVector
{
  v13.receiver = self;
  v13.super_class = ARPointCloud;
  v8 = [(ARPointCloud *)&v13 init];
  v9 = v8;
  if (v8)
  {
    std::vector<ARPatch>::__move_assign(v8->_anon_8, vector);
    std::vector<ARPatch>::__move_assign(&v9[2], identifiersVector);
    std::vector<ARPatch>::__move_assign(&v9[3].i64[1], cosinesVector);
    v10.i64[0] = 0x3F0000003FLL;
    v10.i64[1] = 0x3F0000003FLL;
    v11 = vnegq_f32(v10);
    v9[5] = v11;
    v9[6] = v11;
  }

  return v9;
}

- (ARPointCloud)initWithDepthPointCloud:(id)cloud
{
  cloudCopy = cloud;
  kdebug_trace();
  v6 = [cloudCopy length];
  v17.receiver = self;
  v17.super_class = ARPointCloud;
  v7 = [(ARPointCloud *)&v17 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_depthPointCloud, cloud);
    std::vector<unsigned long long>::vector[abi:ne200100](&v15, v6);
    begin = v8->_identifiersVector.__begin_;
    if (begin)
    {
      v8->_identifiersVector.__end_ = begin;
      operator delete(begin);
      v8->_identifiersVector.__begin_ = 0;
      v8->_identifiersVector.__end_ = 0;
      v8->_identifiersVector.__cap_ = 0;
    }

    *&v8->_identifiersVector.__begin_ = v15;
    v8->_identifiersVector.__cap_ = v16;
    p_vergenceAngleCosinesVector = &v8->_vergenceAngleCosinesVector;
    v10 = v8->_vergenceAngleCosinesVector.__begin_;
    if (v10)
    {
      v8->_vergenceAngleCosinesVector.__end_ = v10;
      operator delete(v10);
      p_vergenceAngleCosinesVector->__begin_ = 0;
      v8->_vergenceAngleCosinesVector.__end_ = 0;
      v8->_vergenceAngleCosinesVector.__cap_ = 0;
    }

    p_vergenceAngleCosinesVector->__begin_ = 0;
    v8->_vergenceAngleCosinesVector.__end_ = 0;
    v8->_vergenceAngleCosinesVector.__cap_ = 0;
    v12.i64[0] = 0x3F0000003FLL;
    v12.i64[1] = 0x3F0000003FLL;
    v13 = vnegq_f32(v12);
    *v8->_centroid = v13;
    *v8->_standardDeviation = v13;
  }

  kdebug_trace();

  return v8;
}

- (NSUInteger)count
{
  depthPointCloud = self->_depthPointCloud;
  if (depthPointCloud)
  {
    return [(ADJasperPointCloud *)depthPointCloud length];
  }

  else
  {
    return (*&self->_anon_8[8] - *self->_anon_8) >> 4;
  }
}

- (const)points
{
  depthPointCloud = self->_depthPointCloud;
  if (depthPointCloud)
  {
    return [(ADJasperPointCloud *)depthPointCloud points];
  }

  else
  {
    return *self->_anon_8;
  }
}

- (const)vergenceAngleCosines
{
  if (self->_vergenceAngleCosinesVector.__end_ == self->_vergenceAngleCosinesVector.__begin_)
  {
    return 0;
  }

  else
  {
    return self->_vergenceAngleCosinesVector.__begin_;
  }
}

- (double)computeBounds
{
  if (![self count])
  {
    return 0.0;
  }

  if ([self count])
  {
    v2 = 0;
    v3.i64[0] = 0x80000000800000;
    v3.i64[1] = 0x80000000800000;
    v4.i64[0] = 0x80000000800000;
    v4.i64[1] = 0x80000000800000;
    v13 = v4;
    v15 = vnegq_f32(v3);
    do
    {
      v5 = *([self points] + 16 * v2);
      v5.i32[3] = 0;
      v6 = v16;
      v6.i32[3] = 0;
      v7 = vminnmq_f32(v5, v6);
      v8 = v14;
      v8.i32[3] = 0;
      v13 = vmaxnmq_f32(v5, v8);
      v15 = v7;
      ++v2;
    }

    while (v2 < [self count]);
  }

  else
  {
    v10.i64[0] = 0x80000000800000;
    v10.i64[1] = 0x80000000800000;
    v11.i64[0] = 0x80000000800000;
    v11.i64[1] = 0x80000000800000;
    v13 = v11;
    v15 = vnegq_f32(v10);
  }

  v12.i64[0] = 0x3F0000003F000000;
  v12.i64[1] = 0x3F0000003F000000;
  *&result = vaddq_f32(v15, vmulq_f32(vsubq_f32(v13, v15), v12)).u64[0];
  return result;
}

- (id)filterPointCloudFrom:(ARPointCloud *)self ellipsoid:(SEL)ellipsoid
{
  v14 = v2;
  v15 = v3;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v22 = 0uLL;
  v23 = 0;
  v20[0] = 0;
  v20[1] = 0;
  v21 = 0;
  v8 = vext_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL), 4uLL);
  while (v7 < [(ARPointCloud *)self count:*&v14])
  {
    v9 = vabdq_f32([(ARPointCloud *)self points][v5], v14);
    if (*v9.i32 < *v15.i32)
    {
      v10 = vcgt_f32(v8, *&vextq_s8(v9, v9, 4uLL));
      if (v10.i8[0] & 1) != 0 && (v10.i8[4])
      {
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8ne200100EOS1_(&v22, ([(ARPointCloud *)self points]+ v5));
        std::vector<unsigned long long>::push_back[abi:ne200100](v20, &self->_identifiersVector.__begin_[v6]);
      }
    }

    ++v7;
    ++v6;
    v5 += 16;
  }

  v11 = [ARPointCloud alloc];
  *v18 = v22;
  v19 = v23;
  v23 = 0;
  v22 = 0uLL;
  *__p = *v20;
  v17 = v21;
  v20[0] = 0;
  v20[1] = 0;
  v21 = 0;
  v12 = [(ARPointCloud *)v11 initWithPointsVector:v18 identifiersVector:__p];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v18[0])
  {
    v18[1] = v18[0];
    operator delete(v18[0]);
  }

  if (v20[0])
  {
    v20[1] = v20[0];
    operator delete(v20[0]);
  }

  if (v22)
  {
    *(&v22 + 1) = v22;
    operator delete(v22);
  }

  return v12;
}

- (id)filterPointCloudWithIdentifiers:(set<unsigned long)long
{
  v4 = 0;
  v21 = 0uLL;
  v22 = 0;
  v19[0] = 0;
  v19[1] = 0;
  p_var1 = &a3->var0.var1;
  v20 = 0;
  while (v4 < [(ARPointCloud *)self count])
  {
    left = p_var1->__left_;
    if (p_var1->__left_)
    {
      v7 = self->_identifiersVector.__begin_[v4];
      v8 = p_var1;
      do
      {
        v9 = *(left + 4);
        v10 = v9 >= v7;
        v11 = v9 < v7;
        if (v10)
        {
          v8 = left;
        }

        left = *(left + v11);
      }

      while (left);
      if (v8 != p_var1 && v7 >= v8[4].__left_)
      {
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8ne200100EOS1_(&v21, ([(ARPointCloud *)self points]+ 16 * v4));
        std::vector<unsigned long long>::push_back[abi:ne200100](v19, &self->_identifiersVector.__begin_[v4]);
      }
    }

    ++v4;
  }

  v12 = [ARPointCloud alloc];
  *v17 = v21;
  v18 = v22;
  v22 = 0;
  v21 = 0uLL;
  *__p = *v19;
  v16 = v20;
  v19[0] = 0;
  v19[1] = 0;
  v20 = 0;
  v13 = [(ARPointCloud *)v12 initWithPointsVector:v17 identifiersVector:__p];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v17[0])
  {
    v17[1] = v17[0];
    operator delete(v17[0]);
  }

  if (v19[0])
  {
    v19[1] = v19[0];
    operator delete(v19[0]);
  }

  if (v21)
  {
    *(&v21 + 1) = v21;
    operator delete(v21);
  }

  return v13;
}

+ (id)concatPointClouds:(id)clouds
{
  v52 = *MEMORY[0x1E69E9840];
  cloudsCopy = clouds;
  if ([cloudsCopy count])
  {
    v49 = 0;
    __n = 0;
    v48 = &v49;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v4 = cloudsCopy;
    v5 = [v4 countByEnumeratingWithState:&v44 objects:v51 count:16];
    if (v5)
    {
      v6 = *v45;
      LOBYTE(v7) = 1;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v45 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v44 + 1) + 8 * i);
          v10 = 0;
          v7 = ([v9 vergenceAngleCosines] != 0) & v7;
          while (v10 < [v9 count])
          {
            identifiers = [v9 identifiers];
            points = [v9 points];
            v13 = *(points + 16 * v10);
            v14 = 0;
            if (v7)
            {
              v32 = *(points + 16 * v10);
              v14 = *([v9 vergenceAngleCosines] + 4 * v10);
              v13 = v32;
            }

            HIDWORD(v13) = v14;
            v42[0] = *(identifiers + 8 * v10);
            v43 = v13;
            _ZNSt3__16__treeINS_12__value_typeIyDv4_fEENS_19__map_value_compareIyS3_NS_4lessIyEELb1EEENS_9allocatorIS3_EEE25__emplace_unique_key_argsIyJNS_4pairIyS2_EEEEENSC_INS_15__tree_iteratorIS3_PNS_11__tree_nodeIS3_PvEElEEbEERKT_DpOT0_(&v48, v42);
            ++v10;
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v44 objects:v51 count:16];
      }

      while (v5);
    }

    else
    {
      v7 = 1;
    }

    v42[0] = 0;
    v42[1] = 0;
    *&v43 = 0;
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(v42, __n);
    v40[0] = 0;
    v40[1] = 0;
    v41 = 0;
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE7reserveEm(v40, __n);
    memset(&v39, 0, sizeof(v39));
    if (v7)
    {
      std::vector<float>::reserve(&v39, __n);
    }

    v16 = v48;
    if (v48 != &v49)
    {
      do
      {
        if (v7)
        {
          v17 = *(v16 + 15);
          end = v39.__end_;
          if (v39.__end_ >= v39.__end_cap_.__value_)
          {
            begin = v39.__begin_;
            v21 = v39.__end_ - v39.__begin_;
            v22 = v39.__end_ - v39.__begin_;
            v23 = v22 + 1;
            if ((v22 + 1) >> 62)
            {
              _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
            }

            v24 = v39.__end_cap_.__value_ - v39.__begin_;
            if ((v39.__end_cap_.__value_ - v39.__begin_) >> 1 > v23)
            {
              v23 = v24 >> 1;
            }

            if (v24 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v25 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v25 = v23;
            }

            if (v25)
            {
              std::allocator<unsigned int>::allocate_at_least[abi:ne200100](&v39, v25);
            }

            *(4 * v22) = v17;
            v19 = (4 * v22 + 4);
            memcpy(0, begin, v21);
            v26 = v39.__begin_;
            v39.__begin_ = 0;
            v39.__end_ = v19;
            v39.__end_cap_.__value_ = 0;
            if (v26)
            {
              operator delete(v26);
            }
          }

          else
          {
            *v39.__end_ = v17;
            v19 = end + 1;
          }

          v39.__end_ = v19;
        }

        v38 = *(v16 + 3);
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8ne200100EOS1_(v42, &v38);
        std::vector<unsigned long long>::push_back[abi:ne200100](v40, v16 + 4);
        v27 = v16[1];
        if (v27)
        {
          do
          {
            v28 = v27;
            v27 = *v27;
          }

          while (v27);
        }

        else
        {
          do
          {
            v28 = v16[2];
            v29 = *v28 == v16;
            v16 = v28;
          }

          while (!v29);
        }

        v16 = v28;
      }

      while (v28 != &v49);
    }

    v30 = [ARPointCloud alloc];
    *v36 = *v42;
    v37 = v43;
    v42[1] = 0;
    *&v43 = 0;
    v42[0] = 0;
    *v34 = *v40;
    v35 = v41;
    v40[0] = 0;
    v40[1] = 0;
    v41 = 0;
    __p = v39;
    memset(&v39, 0, sizeof(v39));
    v15 = [(ARPointCloud *)v30 initWithPointsVector:v36 identifiersVector:v34 vergenceAngleCosinesVector:&__p];
    if (__p.__begin_)
    {
      __p.__end_ = __p.__begin_;
      operator delete(__p.__begin_);
    }

    if (v34[0])
    {
      v34[1] = v34[0];
      operator delete(v34[0]);
    }

    if (v36[0])
    {
      v36[1] = v36[0];
      operator delete(v36[0]);
    }

    if (v39.__begin_)
    {
      v39.__end_ = v39.__begin_;
      operator delete(v39.__begin_);
    }

    if (v40[0])
    {
      v40[1] = v40[0];
      operator delete(v40[0]);
    }

    if (v42[0])
    {
      v42[1] = v42[0];
      operator delete(v42[0]);
    }

    std::__tree<std::array<unsigned char,16ul>>::destroy(&v48, v49);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)emptyPointCloud
{
  v8 = 0;
  v9 = 0;
  v6 = 0;
  v7 = 0;
  __p = 0;
  v5 = 0;
  v2 = [[self alloc] initWithPointsVector:&v7 identifiersVector:&__p];
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }

  if (v7)
  {
    v8 = v7;
    operator delete(v7);
  }

  return v2;
}

- (ARHitTestResult)_hitTestPointFromOrigin:(float32x4_t)origin withDirection:(float)direction maximumAngle:(float32x4_t)angle cameraToWorldTransform:(float32x4_t)transform
{
  if (![self count])
  {
    goto LABEL_14;
  }

  if ([self count])
  {
    v11 = 0;
    v10.i32[0] = -8388609;
    v32 = v10;
    v34 = a2;
    do
    {
      v35 = *([self points] + 16 * v11);
      v12 = self[14];
      if (!v12 || ![v12 confidences] || ARCheckConfidenceJasper(*(objc_msgSend(self[14], "confidences") + 4 * v11)))
      {
        v13 = vaddq_f32(a8, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(angle, v35.f32[0]), transform, *v35.f32, 1), a7, v35, 2));
        v14 = vsubq_f32(v13, a2);
        v15 = vmulq_f32(v14, v14);
        *&v16 = v15.f32[2] + vaddv_f32(*v15.f32);
        *v15.f32 = vrsqrte_f32(v16);
        *v15.f32 = vmul_f32(*v15.f32, vrsqrts_f32(v16, vmul_f32(*v15.f32, *v15.f32)));
        v17 = vmulq_f32(vmulq_n_f32(v14, vmul_f32(*v15.f32, vrsqrts_f32(v16, vmul_f32(*v15.f32, *v15.f32))).f32[0]), origin);
        v17.f32[0] = v17.f32[2] + vaddv_f32(*v17.f32);
        v18 = v32;
        v19 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v17, v32), 0), v13, v34);
        if (v17.f32[0] > v32.f32[0])
        {
          v18.f32[0] = v17.f32[0];
        }

        v32 = v18;
        v34 = v19;
      }

      ++v11;
    }

    while (v11 < [self count]);
  }

  else
  {
    v32.i32[0] = -8388609;
    v34 = a2;
  }

  if (v32.f32[0] >= cosf(direction))
  {
    v21 = vmulq_f32(vsubq_f32(v34, a2), origin);
    v36 = v21.f32[2] + vaddv_f32(*v21.f32);
    v33 = *MEMORY[0x1E69E9B18];
    v26 = *(MEMORY[0x1E69E9B18] + 32);
    v28 = *(MEMORY[0x1E69E9B18] + 16);
    v20 = [[ARHitTestResult alloc] initWithType:1];
    [(ARHitTestResult *)v20 setDistance:v36];
    v31 = vmlaq_n_f32(a2, origin, v36);
    [(ARHitTestResult *)v20 setWorldTransform:*&v33, *&v28, *&v26, *v31.i64];
    [(ARHitTestResult *)v20 setLocalTransform:*&v33, *&v28, *&v26, *vsubq_f32(v31, v34).i64];
  }

  else
  {
LABEL_14:
    v20 = 0;
  }

  return v20;
}

- (ARPointCloud)pointCloudByApplyingTransform:(float32x4_t)transform
{
  v25 = 0uLL;
  v26 = 0;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(&v25, [self count]);
  for (i = 0; i < [self count]; ++i)
  {
    points = [self points];
    v8 = vaddq_f32(a5, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, COERCE_FLOAT(*(points + 16 * i))), transform, *(points + 16 * i), 1), a4, *(points + 16 * i), 2));
    v24 = vdivq_f32(v8, vdupq_laneq_s32(v8, 3));
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8ne200100EOS1_(&v25, &v24);
  }

  v9 = [ARPointCloud alloc];
  v22 = v25;
  v23 = v26;
  v26 = 0;
  v25 = 0uLL;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v19, self[4], self[5], (self[5] - self[4]) >> 3);
  __p = 0;
  v17 = 0;
  v18 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, self[7], self[8], (self[8] - self[7]) >> 2);
  v10 = [(ARPointCloud *)v9 initWithPointsVector:&v22 identifiersVector:&v19 vergenceAngleCosinesVector:&__p];
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  if (v22)
  {
    *(&v22 + 1) = v22;
    operator delete(v22);
  }

  if (v25)
  {
    *(&v25 + 1) = v25;
    operator delete(v25);
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p count=%lu>", v5, self, -[ARPointCloud count](self, "count")];

  return v6;
}

- (ARPointCloud)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = ARPointCloud;
  v5 = [(ARPointCloud *)&v18 init];
  if (v5)
  {
    v17 = 0;
    v6 = [coderCopy decodeBytesForKey:@"points" returnedLength:&v17];
    if (v17)
    {
      v15 = 0uLL;
      v16 = 0;
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(&v15, v6, v6 + (v17 & 0xFFFFFFFFFFFFFFF0), v17 >> 4);
      v7 = *(v5 + 1);
      if (v7)
      {
        *(v5 + 2) = v7;
        operator delete(v7);
        *(v5 + 1) = 0;
        *(v5 + 2) = 0;
        *(v5 + 3) = 0;
      }

      *(v5 + 8) = v15;
      *(v5 + 3) = v16;
    }

    v14 = 0;
    v8 = [coderCopy decodeBytesForKey:@"identifiers" returnedLength:&v14];
    if (v14)
    {
      v15 = 0uLL;
      v16 = 0;
      std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v15, v8, v8 + (v14 & 0xFFFFFFFFFFFFFFF8), v14 >> 3);
      v9 = *(v5 + 4);
      if (v9)
      {
        *(v5 + 5) = v9;
        operator delete(v9);
        *(v5 + 4) = 0;
        *(v5 + 5) = 0;
        *(v5 + 6) = 0;
      }

      *(v5 + 2) = v15;
      *(v5 + 6) = v16;
    }

    v13 = 0;
    v10 = [coderCopy decodeBytesForKey:@"vergenceAngleCosines" returnedLength:&v13];
    if (v14)
    {
      v16 = 0;
      v15 = 0uLL;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v15, v10, v10 + (v13 & 0xFFFFFFFFFFFFFFFCLL), v13 >> 2);
      v11 = *(v5 + 7);
      if (v11)
      {
        *(v5 + 8) = v11;
        operator delete(v11);
        *(v5 + 7) = 0;
        *(v5 + 8) = 0;
        *(v5 + 9) = 0;
      }

      *(v5 + 56) = v15;
      *(v5 + 9) = v16;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBytes:-[ARPointCloud points](self length:"points") forKey:{16 * -[ARPointCloud count](self, "count"), @"points"}];
  [coderCopy encodeBytes:self->_identifiersVector.__begin_ length:self->_identifiersVector.__end_ - self->_identifiersVector.__begin_ forKey:@"identifiers"];
  [coderCopy encodeBytes:self->_vergenceAngleCosinesVector.__begin_ length:self->_vergenceAngleCosinesVector.__end_ - self->_vergenceAngleCosinesVector.__begin_ forKey:@"vergenceAngleCosines"];
}

- (unint64_t)hash
{
  result = [(ARPointCloud *)self count];
  if (result)
  {
    return *self->_identifiersVector.__begin_ ^ [(ARPointCloud *)self count]^ *(self->_identifiersVector.__end_ - 1);
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = [(ARPointCloud *)self count];
    if (v6 != [v5 count])
    {
      goto LABEL_6;
    }

    if (self->_vergenceAngleCosinesVector.__end_ - self->_vergenceAngleCosinesVector.__begin_ != v5[8] - v5[7])
    {
      goto LABEL_6;
    }

    begin = self->_identifiersVector.__begin_;
    v8 = (self->_identifiersVector.__end_ - begin);
    v9 = v5[4];
    if (v8 != (v5[5] - v9) || memcmp(begin, v9, v8))
    {
      goto LABEL_6;
    }

    points = [(ARPointCloud *)self points];
    points2 = [v5 points];
    v14 = [(ARPointCloud *)self count];
    if (!v14)
    {
      goto LABEL_16;
    }

    v15 = vceqq_f32(*points, *points2);
    v15.i32[3] = v15.i32[2];
    if ((vminvq_u32(v15) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v16 = 1;
    do
    {
      v17 = v16;
      if (v14 == v16)
      {
        break;
      }

      v18 = vceqq_f32(points[v16], points2[v16]);
      v18.i32[3] = v18.i32[2];
      ++v16;
    }

    while ((vminvq_u32(v18) & 0x80000000) != 0);
    if (v17 >= v14)
    {
LABEL_16:
      v20 = self->_vergenceAngleCosinesVector.__begin_;
      end = self->_vergenceAngleCosinesVector.__end_;
      if (v20 == end)
      {
        v10 = 1;
      }

      else
      {
        v21 = v5[7];
        v22 = v20 + 1;
        do
        {
          v23 = *v21++;
          v24 = vabds_f32(*(v22 - 1), v23);
          v10 = v24 <= 0.00000011921;
        }

        while (v24 <= 0.00000011921 && v22++ != end);
      }
    }

    else
    {
LABEL_6:
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

+ (void)emptyPointCloud
{
  v2 = *self;
  if (v2)
  {
    *(self + 8) = v2;
    operator delete(v2);
  }
}

@end