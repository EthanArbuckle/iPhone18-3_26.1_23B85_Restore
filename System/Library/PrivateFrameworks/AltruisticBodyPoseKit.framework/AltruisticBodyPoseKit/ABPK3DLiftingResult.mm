@interface ABPK3DLiftingResult
- (ABPK3DLiftingResult)init;
- (ABPK3DLiftingResult)initWithJoints:(ABPK3DLiftingResult *)self numberOfJoints:(SEL)joints rawNetworkOutputs:referenceDetectionResult:;
- (ABPK3DLiftingResult)initWithJoints:(__n128 *)joints rawNetworkOutputs:(__n128 *)outputs referenceDetectionResult:(void *)result;
- (BOOL)isJointTracked:(int64_t)tracked;
- (id).cxx_construct;
- (id)createResultScaledByFactor:(float)factor;
- (void)init;
@end

@implementation ABPK3DLiftingResult

- (ABPK3DLiftingResult)init
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v5 = 0;
  v6 = 0;
  __p = 0;
  v2 = [(ABPK3DLiftingResult *)self initWithJoints:&v7 rawNetworkOutputs:&__p referenceDetectionResult:0];
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

- (ABPK3DLiftingResult)initWithJoints:(__n128 *)joints rawNetworkOutputs:(__n128 *)outputs referenceDetectionResult:(void *)result
{
  resultCopy = result;
  v13.receiver = self;
  v13.super_class = ABPK3DLiftingResult;
  v10 = [(ABPK3DLiftingResult *)&v13 init];
  v11 = v10;
  if (v10)
  {
    std::vector<float>::__move_assign(v10->_anon_8, joints);
    objc_storeStrong(&v11->_skeletonDetectionResult2D, result);
    std::vector<float>::__move_assign(v11->_anon_20, outputs);
  }

  return v11;
}

- (ABPK3DLiftingResult)initWithJoints:(ABPK3DLiftingResult *)self numberOfJoints:(SEL)joints rawNetworkOutputs:referenceDetectionResult:
{
  v6 = v4;
  v7 = v3;
  v8 = v2;
  v10 = v5;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(&v16, v8, v8 + 16 * v7, v7);
  __p = 0;
  v14 = 0;
  v15 = 0;
  if (v6)
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(&__p, v6, v6 + 16 * v7, v7);
  }

  v11 = [(ABPK3DLiftingResult *)self initWithJoints:&v16 rawNetworkOutputs:&__p referenceDetectionResult:v10];
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  return v11;
}

- (id)createResultScaledByFactor:(float)factor
{
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEEC2B8ne200100Em(&__p, (*&self->_anon_8[8] - *self->_anon_8) >> 4);
  v4 = *self->_anon_8;
  v5 = *&self->_anon_8[8];
  if (v4 != v5)
  {
    v6 = __p;
    do
    {
      v7 = *v4++;
      *v6++ = vmulq_n_f32(v7, factor);
    }

    while (v4 != v5);
  }

  v8 = [ABPK3DLiftingResult alloc];
  v9 = __p;
  v10 = v16;
  skeletonDetectionResult2D = [(ABPK3DLiftingResult *)self skeletonDetectionResult2D];
  v12 = [(ABPK3DLiftingResult *)v8 initWithJoints:v9 numberOfJoints:(v10 - v9) >> 4 referenceDetectionResult:skeletonDetectionResult2D];

  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  return v12;
}

- (BOOL)isJointTracked:(int64_t)tracked
{
  if (tracked < 0)
  {
    return 0;
  }

  if (((*&self->_anon_8[8] - *self->_anon_8) >> 4) - 1 >= tracked)
  {
    v4 = ARRigInputJointsDependencies[tracked];
    if ([(ABPK2DDetectionResult *)self->_skeletonDetectionResult2D jointCount]- 1 >= v4)
    {
      return [(ABPK2DDetectionResult *)self->_skeletonDetectionResult2D jointTrackingStates][4 * v4] == 1;
    }
  }

  return 0;
}

- (id).cxx_construct
{
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

- (void)init
{
  v2 = *self;
  if (v2)
  {
    *(self + 8) = v2;
    operator delete(v2);
  }
}

@end