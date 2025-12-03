@interface ABPK2DDetectionResult
- (ABPK2DDetectionResult)initWithCoder:(id)coder;
- (ABPK2DDetectionResult)initWithJoints:(ABPK2DDetectionResult *)self trackingStates:(SEL)states numberOfJoints:aligningPreviousSkeleton:rotation:;
- (ABPK2DDetectionResult)initWithJoints:(ABPK2DDetectionResult *)self trackingStates:(SEL)states numberOfJoints:imageResolution:rotation:croppedRect:liftingData:;
- (ABPK2DDetectionResult)initWithJoints:(ABPK2DDetectionResult *)self trackingStates:(SEL)states numberOfJoints:rotation:croppedRect:liftingData:;
- (BOOL)isEqual:(id)equal;
- (CGSize)imageResolution;
- (id).cxx_construct;
- (id)alignSkeleton:(id)skeleton rotationNeeded:(int64_t)needed;
- (unint64_t)hash;
- (unint64_t)trackedJointCount;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ABPK2DDetectionResult

- (ABPK2DDetectionResult)initWithJoints:(ABPK2DDetectionResult *)self trackingStates:(SEL)states numberOfJoints:rotation:croppedRect:liftingData:
{
  v11 = v6;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  v15 = v7;
  v16 = v5;
  v17 = v4;
  v18 = v3;
  v19 = v2;
  v21 = v6;
  v43.receiver = self;
  v43.super_class = ABPK2DDetectionResult;
  v22 = [(ABPK2DDetectionResult *)&v43 init];
  if (v22)
  {
    v41 = 0uLL;
    v42 = 0;
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(&v41, v19, v19 + 8 * v17, v17);
    v23 = *(v22 + 1);
    if (v23)
    {
      *(v22 + 2) = v23;
      operator delete(v23);
      *(v22 + 1) = 0;
      *(v22 + 2) = 0;
      *(v22 + 3) = 0;
    }

    *(v22 + 8) = v41;
    *(v22 + 3) = v42;
    v41 = 0uLL;
    v42 = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(&v41, v18, v18 + 4 * v17, v17);
    v24 = *(v22 + 7);
    if (v24)
    {
      *(v22 + 8) = v24;
      operator delete(v24);
      *(v22 + 7) = 0;
      *(v22 + 8) = 0;
      *(v22 + 9) = 0;
    }

    *(v22 + 56) = v41;
    *(v22 + 9) = v42;
    if (v16 == -90)
    {
      v25 = v14;
    }

    else
    {
      v25 = v15;
    }

    if (v16 == -90)
    {
      v26 = v15;
    }

    else
    {
      v26 = v14;
    }

    if (v16 == -90)
    {
      v27 = v12;
    }

    else
    {
      v27 = v13;
    }

    if (v16 == -90)
    {
      v28 = v13;
    }

    else
    {
      v28 = v12;
    }

    if (v16 == 90)
    {
      v25 = v14;
      v26 = v15;
      v27 = v12;
      v28 = v13;
    }

    v29 = *(v22 + 1);
    if (*(v22 + 2) != v29)
    {
      v30 = 0;
      do
      {
        *&v31 = v25 + COERCE_FLOAT(*(v29 + 8 * v30)) * v27;
        v32 = v26 + COERCE_FLOAT(HIDWORD(*(v29 + 8 * v30))) * v28;
        *(&v31 + 1) = v32;
        *(v29 + 8 * v30++) = v31;
        v29 = *(v22 + 1);
      }

      while (v30 < (*(v22 + 2) - v29) >> 3);
    }

    *(v22 + 13) = v16;
    objc_storeStrong(v22 + 12, v11);
    v33 = *(v22 + 13);
    if (v33)
    {
      v34 = v33 * 3.14159265 / 180.0;
      v35 = __sincosf_stret(v34);
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE7reserveEm(v22 + 4, (*(v22 + 2) - *(v22 + 1)) >> 3);
      v36 = *(v22 + 1);
      if (*(v22 + 2) != v36)
      {
        v37 = 0;
        v38.f32[0] = -v35.__sinval;
        v38.i32[1] = LODWORD(v35.__cosval);
        v40 = v38;
        do
        {
          *&v41 = vadd_f32(vmla_n_f32(vmul_n_f32(__PAIR64__(LODWORD(v35.__sinval), LODWORD(v35.__cosval)), COERCE_FLOAT(*(v36 + 8 * v37)) + -0.5), v40, COERCE_FLOAT(HIDWORD(*(v36 + 8 * v37))) + -0.5), 0x3F0000003F000000);
          _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8ne200100EOS1_((v22 + 32), &v41);
          ++v37;
          v36 = *(v22 + 1);
        }

        while (v37 < (*(v22 + 2) - v36) >> 3);
      }
    }

    else
    {
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l(v22 + 4, *(v22 + 1), *(v22 + 2), (*(v22 + 2) - *(v22 + 1)) >> 3);
    }
  }

  return v22;
}

- (ABPK2DDetectionResult)initWithJoints:(ABPK2DDetectionResult *)self trackingStates:(SEL)states numberOfJoints:imageResolution:rotation:croppedRect:liftingData:
{
  v8 = v3;
  v9 = v2;
  result = [ABPK2DDetectionResult initWithJoints:"initWithJoints:trackingStates:numberOfJoints:rotation:croppedRect:liftingData:" trackingStates:v4 numberOfJoints:v5 rotation:v6 croppedRect:v7 liftingData:?];
  if (result)
  {
    result->_imageResolution.width = v9;
    result->_imageResolution.height = v8;
  }

  return result;
}

- (unint64_t)trackedJointCount
{
  begin = self->_jointTrackingStates.__begin_;
  end = self->_jointTrackingStates.__end_;
  if (begin == end)
  {
    return 0;
  }

  v4 = 0;
  do
  {
    v5 = *begin++;
    v4 += v5;
  }

  while (begin != end);
  return v4;
}

- (ABPK2DDetectionResult)initWithJoints:(ABPK2DDetectionResult *)self trackingStates:(SEL)states numberOfJoints:aligningPreviousSkeleton:rotation:
{
  v7 = v6;
  v8 = v4;
  v9 = v3;
  v10 = v2;
  v12 = v5;
  v82.receiver = self;
  v82.super_class = ABPK2DDetectionResult;
  v13 = [(ABPK2DDetectionResult *)&v82 init];
  if (!v13)
  {
LABEL_42:
    v61 = v13;
    goto LABEL_43;
  }

  v14 = 0;
  if (v8)
  {
    v15 = 4 * v8;
    v16 = v9;
    do
    {
      v17 = *v16++;
      v14 += v17;
      v15 -= 4;
    }

    while (v15);
  }

  trackedJointCount = [v12 trackedJointCount];
  v80[0] = 0;
  v80[1] = 0;
  if (v14 >= trackedJointCount)
  {
    v19 = trackedJointCount;
  }

  else
  {
    v19 = v14;
  }

  v20 = (2 * v19);
  v81 = 2 * v19;
  cva::MatrixData<float,0ul,0ul,false>::reserve(v80, (8 * v19));
  v78[0] = 0;
  v78[1] = 0;
  v79 = v20;
  cva::MatrixData<float,0ul,0ul,false>::reserve(v78, v20);
  rawJointsOutput = [v12 rawJointsOutput];
  jointCount = [v12 jointCount];
  jointTrackingStates = [v12 jointTrackingStates];
  if (v8 >= jointCount)
  {
    v24 = jointCount;
  }

  else
  {
    v24 = v8;
  }

  if (v24)
  {
    v25 = 0;
    v26 = v81;
    v27 = v80[0];
    v28 = 2 * v81;
    v29 = 3 * v81;
    v30 = v79;
    v31 = v78[0];
    v32 = (v10 + 4);
    v33 = rawJointsOutput + 1;
    v34 = "((row < mixed().rows()) && (col < mixed().columns())) || cva::detail::assertMessage(Index out of bounds!)";
    do
    {
      v35 = *v9++;
      if (v35 && *jointTrackingStates)
      {
        if (v26 <= v25 || (v27[v25] = *(v33 - 1), *&v27[v26 + v25] = -*v33, v27[v28 + v25] = 1065353216, v27[v29 + v25] = 0, v36 = v25 + 1, v26 <= v36))
        {
          v66 = 2269;
          goto LABEL_46;
        }

        v27[v36] = *v33;
        v27[v26 + v36] = *(v33 - 1);
        v27[(v28 + v36)] = 0;
        v27[(v29 + v36)] = 1065353216;
        if (v30 <= v25 || (v31[v25] = *(v32 - 1), v30 <= v36))
        {
          v66 = 2283;
          v34 = "(i < mixed().elements()) || cva::detail::assertMessage(Index out of bounds!)";
LABEL_46:
          __assert_rtn("assert_in_bounds", "matrixmixin.h", v66, v34);
        }

        v31[v36] = *v32;
        v25 += 2;
      }

      v32 += 2;
      v33 += 2;
      ++jointTrackingStates;
      --v24;
    }

    while (v24);
  }

  v71 = v80;
  v72[0] = &v71;
  v72[1] = v80;
  memset(&v73, 0, sizeof(v73));
  cva::assign<false,false,cva::Matrix<float,4u,4u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,4u,false> const>,cva::Matrix<float,0u,4u,false>>(&v73, v72);
  cva::inv<cva::Matrix<float,4u,4u,false>,4u,true,float>(&v73, &v74);
  v70 = v80;
  v75[0] = &v74;
  v75[1] = &v70;
  if (v81 != v79)
  {
    __assert_rtn("MatrixMultExpr", "matrixmultexpr.h", 100, "((lhs.ref().columns() == rhs.ref().rows())) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
  }

  v76[0] = v75;
  v76[1] = v78;
  v77 = 0uLL;
  cva::assign<false,false,cva::Matrix<float,4u,1u,false>,cva::MatrixMultExpr<cva::Matrix<float,4u,4u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,4u,false> const>>,cva::Matrix<float,0u,1u,false>>(&v77, v76);
  v39 = v77;
  v37.i64[0] = *&v39 >> 64;
  v38 = v39;
  v69 = v37;
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE7reserveEm(v13 + 1, jointCount);
  if (jointCount)
  {
    *&v40 = -*(&v38 + 1);
    HIDWORD(v40) = v38;
    v67 = v40;
    v41 = vneg_f32(0x3F0000003FLL);
    v42 = jointCount;
    do
    {
      v43 = vaddq_f32(v69, vmlaq_lane_f32(vmulq_n_f32(v38, COERCE_FLOAT(*rawJointsOutput)), v67, *rawJointsOutput, 1)).u64[0];
      v44 = vdupq_lane_s64(v43, 0);
      v45.i32[0] = vmovn_s32(vcgtq_f32(v44, xmmword_23EE285B0)).u32[0];
      v45.i32[1] = vmovn_s32(vcgtq_f32(xmmword_23EE285B0, v44)).i32[1];
      if (vmaxv_u16(v45))
      {
        *v74.columns[0].f32 = v41;
      }

      else
      {
        v74.columns[0].i64[0] = v43;
      }

      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8ne200100EOS1_((v13 + 8), &v74);
      ++rawJointsOutput;
      --v42;
    }

    while (v42);
  }

  if ([ABPK2DDetectionResult initWithJoints:trackingStates:numberOfJoints:aligningPreviousSkeleton:rotation:]::onceToken != -1)
  {
    [ABPK2DDetectionResult initWithJoints:trackingStates:numberOfJoints:aligningPreviousSkeleton:rotation:];
    if (v7)
    {
      goto LABEL_30;
    }

LABEL_35:
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l(v13 + 4, *(v13 + 1), *(v13 + 2), (*(v13 + 2) - *(v13 + 1)) >> 3);
    v52 = [ABPK2DDetectionResult initWithJoints:trackingStates:numberOfJoints:aligningPreviousSkeleton:rotation:]::rootIndex;
    v54 = *(v10 + 8 * [ABPK2DDetectionResult initWithJoints:trackingStates:numberOfJoints:aligningPreviousSkeleton:rotation:]::rootIndex);
    v55 = [ABPK2DDetectionResult initWithJoints:trackingStates:numberOfJoints:aligningPreviousSkeleton:rotation:]::neckIndex;
    v57 = *(v10 + 8 * [ABPK2DDetectionResult initWithJoints:trackingStates:numberOfJoints:aligningPreviousSkeleton:rotation:]::neckIndex);
    goto LABEL_36;
  }

  if (!v7)
  {
    goto LABEL_35;
  }

LABEL_30:
  v46 = v7 * 3.14159265 / 180.0;
  v47 = __sincosf_stret(v46);
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE7reserveEm(v13 + 4, (*(v13 + 2) - *(v13 + 1)) >> 3);
  v48.f32[0] = -v47.__sinval;
  v48.i32[1] = LODWORD(v47.__cosval);
  v68 = v48;
  v49 = *(v13 + 1);
  if (*(v13 + 2) != v49)
  {
    v50 = 0;
    do
    {
      v51 = vadd_f32(*(v49 + 8 * v50), 0xBF000000BF000000);
      *v74.columns[0].f32 = vadd_f32(vmla_lane_f32(vmul_n_f32(__PAIR64__(LODWORD(v47.__sinval), LODWORD(v47.__cosval)), v51.f32[0]), v68, v51, 1), 0x3F0000003F000000);
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8ne200100EOS1_((v13 + 32), &v74);
      ++v50;
      v49 = *(v13 + 1);
    }

    while (v50 < (*(v13 + 2) - v49) >> 3);
  }

  v52 = [ABPK2DDetectionResult initWithJoints:trackingStates:numberOfJoints:aligningPreviousSkeleton:rotation:]::rootIndex;
  v53 = vadd_f32(*(v10 + 8 * [ABPK2DDetectionResult initWithJoints:trackingStates:numberOfJoints:aligningPreviousSkeleton:rotation:]::rootIndex), 0xBF000000BF000000);
  v54 = vadd_f32(vmla_lane_f32(vmul_n_f32(__PAIR64__(LODWORD(v47.__sinval), LODWORD(v47.__cosval)), v53.f32[0]), v68, v53, 1), 0x3F0000003F000000);
  v55 = [ABPK2DDetectionResult initWithJoints:trackingStates:numberOfJoints:aligningPreviousSkeleton:rotation:]::neckIndex;
  v56 = vadd_f32(*(v10 + 8 * [ABPK2DDetectionResult initWithJoints:trackingStates:numberOfJoints:aligningPreviousSkeleton:rotation:]::neckIndex), 0xBF000000BF000000);
  v57 = vadd_f32(vmla_lane_f32(vmul_n_f32(__PAIR64__(LODWORD(v47.__sinval), LODWORD(v47.__cosval)), v56.f32[0]), v68, v56, 1), 0x3F0000003F000000);
LABEL_36:
  v58 = *(v13 + 4);
  v59 = vsub_f32(v54, *(v58 + 8 * v52));
  if (sqrtf(vaddv_f32(vmul_f32(v59, v59))) <= 0.05)
  {
    v60 = vsub_f32(v57, *(v58 + 8 * v55));
    if (sqrtf(vaddv_f32(vmul_f32(v60, v60))) <= 0.05)
    {
      jointTrackingStates2 = [v12 jointTrackingStates];
      jointTrackingStates3 = [v12 jointTrackingStates];
      memset(&v74, 0, 24);
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(&v74, jointTrackingStates2, jointTrackingStates3 + 4 * jointCount, (jointTrackingStates3 + 4 * jointCount - jointTrackingStates2) >> 2);
      v64 = *(v13 + 7);
      if (v64)
      {
        *(v13 + 8) = v64;
        operator delete(v64);
        *(v13 + 7) = 0;
        *(v13 + 8) = 0;
        *(v13 + 9) = 0;
      }

      *(v13 + 56) = v74.columns[0];
      *(v13 + 9) = v74.columns[1].i64[0];
      *(v13 + 13) = v7;
      free(v78[0]);
      free(v80[0]);
      goto LABEL_42;
    }
  }

  free(v78[0]);
  free(v80[0]);
  v61 = 0;
LABEL_43:

  return v61;
}

void __104__ABPK2DDetectionResult_initWithJoints_trackingStates_numberOfJoints_aligningPreviousSkeleton_rotation___block_invoke()
{
  v0 = [[ABPKSkeletonDefinition alloc] initWithType:0];
  [ABPK2DDetectionResult initWithJoints:trackingStates:numberOfJoints:aligningPreviousSkeleton:rotation:]::rootIndex = [(ABPKSkeletonDefinition *)v0 indexOfJointWithName:@"root"];
  [ABPK2DDetectionResult initWithJoints:trackingStates:numberOfJoints:aligningPreviousSkeleton:rotation:]::neckIndex = [(ABPKSkeletonDefinition *)v0 indexOfJointWithName:@"neck"];
}

- (id)alignSkeleton:(id)skeleton rotationNeeded:(int64_t)needed
{
  skeletonCopy = skeleton;
  trackedJointCount = [(ABPK2DDetectionResult *)self trackedJointCount];
  trackedJointCount2 = [skeletonCopy trackedJointCount];
  v67[0] = 0;
  v67[1] = 0;
  if (trackedJointCount >= trackedJointCount2)
  {
    v9 = trackedJointCount2;
  }

  else
  {
    v9 = trackedJointCount;
  }

  v10 = (2 * v9);
  v68 = 2 * v9;
  cva::MatrixData<float,0ul,0ul,false>::reserve(v67, (8 * v9));
  v65[0] = 0;
  v65[1] = 0;
  v66 = v10;
  cva::MatrixData<float,0ul,0ul,false>::reserve(v65, v10);
  v11 = 0;
  v12 = 0;
  v13 = 1;
  v14 = "((row < mixed().rows()) && (col < mixed().columns())) || cva::detail::assertMessage(Index out of bounds!)";
  while (-[ABPK2DDetectionResult jointCount](self, "jointCount") > v11 && [skeletonCopy jointCount] > v11)
  {
    if (-[ABPK2DDetectionResult jointTrackingStates](self, "jointTrackingStates")[4 * v11] && *([skeletonCopy jointTrackingStates] + 4 * v11))
    {
      rawJointsOutput = [skeletonCopy rawJointsOutput];
      if (v68 <= v12)
      {
        goto LABEL_33;
      }

      *(v67[0] + v12) = *(rawJointsOutput + 8 * v11);
      rawJointsOutput2 = [skeletonCopy rawJointsOutput];
      v17 = v68;
      if (v68 <= v12)
      {
        goto LABEL_33;
      }

      v18 = v67[0];
      *(v67[0] + v68 + v12) = -*(rawJointsOutput2 + 4 * v13);
      v19 = v12 + 2 * v17;
      v18[v19] = 1065353216;
      v18[v19 + v17] = 0;
      rawJointsOutput3 = [skeletonCopy rawJointsOutput];
      v21 = v12 + 1;
      if (v68 <= v21 || (*(v67[0] + v21) = *(rawJointsOutput3 + 4 * v13), v22 = [skeletonCopy rawJointsOutput], v23 = v68, v68 <= v21))
      {
LABEL_33:
        v53 = 2269;
        goto LABEL_35;
      }

      v24 = v67[0];
      *(v67[0] + v68 + v21) = *(v22 + 8 * v11);
      v25 = v21 + 2 * v23;
      v24[v25] = 0;
      v24[v25 + v23] = 1065353216;
      rawJointsOutput4 = [(ABPK2DDetectionResult *)self rawJointsOutput];
      if (v66 <= v12 || (*(v65[0] + v12) = *(rawJointsOutput4 + 8 * v11), v27 = [(ABPK2DDetectionResult *)self rawJointsOutput], v66 <= v21))
      {
        v53 = 2283;
        v14 = "(i < mixed().elements()) || cva::detail::assertMessage(Index out of bounds!)";
LABEL_35:
        __assert_rtn("assert_in_bounds", "matrixmixin.h", v53, v14);
      }

      *(v65[0] + v21) = *(v27 + 4 * v13);
      v12 += 2;
    }

    ++v11;
    v13 += 2;
  }

  v58 = v67;
  v59[0] = &v58;
  v59[1] = v67;
  memset(&v60, 0, sizeof(v60));
  cva::assign<false,false,cva::Matrix<float,4u,4u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,4u,false> const>,cva::Matrix<float,0u,4u,false>>(&v60, v59);
  cva::inv<cva::Matrix<float,4u,4u,false>,4u,true,float>(&v60, &__p);
  v57 = v67;
  v62[0] = &__p;
  v62[1] = &v57;
  if (v68 != v66)
  {
    __assert_rtn("MatrixMultExpr", "matrixmultexpr.h", 100, "((lhs.ref().columns() == rhs.ref().rows())) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
  }

  v63[0] = v62;
  v63[1] = v65;
  v64 = 0uLL;
  cva::assign<false,false,cva::Matrix<float,4u,1u,false>,cva::MatrixMultExpr<cva::Matrix<float,4u,4u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,4u,false> const>>,cva::Matrix<float,0u,1u,false>>(&v64, v63);
  v30 = v64;
  v28.i64[0] = *&v30 >> 64;
  v29 = v30;
  v56 = v28;
  memset(&__p, 0, 24);
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE7reserveEm(&__p, [skeletonCopy jointCount]);
  v31 = 0;
  *&v32 = -*(&v29 + 1);
  HIDWORD(v32) = v29;
  v55 = v32;
  v54 = xmmword_23EE285B0;
  v33 = vneg_f32(0x3F0000003FLL);
  while ([skeletonCopy jointCount] > v31)
  {
    rawJointsOutput5 = [skeletonCopy rawJointsOutput];
    v35 = vaddq_f32(v56, vmlaq_lane_f32(vmulq_n_f32(v29, COERCE_FLOAT(*(rawJointsOutput5 + 8 * v31))), v55, *(rawJointsOutput5 + 8 * v31), 1)).u64[0];
    v36 = vdupq_lane_s64(v35, 0);
    v37.i32[0] = vmovn_s32(vcgtq_f32(v36, v54)).u32[0];
    v37.i32[1] = vmovn_s32(vcgtq_f32(v54, v36)).i32[1];
    if (vmaxv_u16(v37))
    {
      *v60.columns[0].f32 = v33;
    }

    else
    {
      v60.columns[0].i64[0] = v35;
    }

    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8ne200100EOS1_(&__p, &v60);
    ++v31;
  }

  v38 = [ABPK2DDetectionResult alloc];
  v39 = __p.columns[0].i64[0];
  jointTrackingStates = [skeletonCopy jointTrackingStates];
  v41 = [(ABPK2DDetectionResult *)v38 initWithJoints:v39 trackingStates:jointTrackingStates numberOfJoints:(__p.columns[0].i64[1] - __p.columns[0].i64[0]) >> 3 rotation:needed croppedRect:0 liftingData:0.0, 0.0, 1.0, 1.0];
  v42 = [[ABPKSkeletonDefinition alloc] initWithType:0];
  v43 = [(ABPKSkeletonDefinition *)v42 indexOfJointWithName:@"root"];
  v44 = [(ABPKSkeletonDefinition *)v42 indexOfJointWithName:@"neck"];
  v45 = *([(ABPK2DDetectionResult *)self joints]+ 8 * v43);
  v46 = *([(ABPK2DDetectionResult *)v41 joints]+ 8 * v43);
  v47 = *([(ABPK2DDetectionResult *)self joints]+ 8 * v44);
  joints = [(ABPK2DDetectionResult *)v41 joints];
  v49 = vsub_f32(v45, v46);
  if (sqrtf(vaddv_f32(vmul_f32(v49, v49))) <= 0.05 && (v50 = vsub_f32(v47, *(joints + 8 * v44)), sqrtf(vaddv_f32(vmul_f32(v50, v50))) <= 0.05))
  {
    v51 = v41;
  }

  else
  {
    v51 = 0;
  }

  if (__p.columns[0].i64[0])
  {
    __p.columns[0].i64[1] = __p.columns[0].i64[0];
    operator delete(__p.columns[0].i64[0]);
  }

  free(v65[0]);
  free(v67[0]);

  return v51;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{-[ABPK2DDetectionResult jointCount](self, "jointCount")}];
  [coderCopy encodeObject:v4 forKey:@"jointCount"];

  liftingData = [(ABPK2DDetectionResult *)self liftingData];
  [coderCopy encodeObject:liftingData forKey:@"liftingData"];

  [(ABPK2DDetectionResult *)self imageResolution];
  *&v6 = v6;
  [coderCopy encodeFloat:@"imageResolution.width" forKey:v6];
  [(ABPK2DDetectionResult *)self imageResolution];
  *&v8 = v7;
  [coderCopy encodeFloat:@"imageResolution.height" forKey:v8];
  [coderCopy encodeInteger:-[ABPK2DDetectionResult rotation](self forKey:{"rotation"), @"rotation"}];
  [coderCopy encodeBytes:-[ABPK2DDetectionResult rawJointsOutput](self length:"rawJointsOutput") forKey:{8 * -[ABPK2DDetectionResult jointCount](self, "jointCount"), @"rawJointsData"}];
  [coderCopy encodeBytes:-[ABPK2DDetectionResult jointTrackingStates](self length:"jointTrackingStates") forKey:{4 * -[ABPK2DDetectionResult jointCount](self, "jointCount"), @"jointTrackingStates"}];
}

- (ABPK2DDetectionResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"jointCount"];
  unsignedLongValue = [v5 unsignedLongValue];

  v7 = [coderCopy decodeIntegerForKey:@"rotation"];
  [coderCopy decodeFloatForKey:@"imageResolution.width"];
  v9 = v8;
  [coderCopy decodeFloatForKey:@"imageResolution.height"];
  v11 = v10;
  v21 = 0;
  v12 = [coderCopy decodeBytesForKey:@"rawJointsData" returnedLength:&v21];
  if (unsignedLongValue != v21 >> 3)
  {
    NSLog(&cfstr_InconsistentJo.isa);
LABEL_6:
    selfCopy = 0;
    goto LABEL_7;
  }

  v13 = v12;
  v20 = 0;
  v14 = [coderCopy decodeBytesForKey:@"jointTrackingStates" returnedLength:&v20];
  if (unsignedLongValue != v20 >> 2)
  {
    NSLog(&cfstr_InconsistentTr.isa);
    goto LABEL_6;
  }

  v15 = v14;
  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"liftingData"];
  v17 = [[ABPK2DDetectionResult alloc] initWithJoints:v13 trackingStates:v15 numberOfJoints:unsignedLongValue imageResolution:v7 rotation:v16 croppedRect:v9 liftingData:v11, 0.0, 0.0, 1.0, 1.0];

  self = v17;
  selfCopy = self;
LABEL_7:

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    jointCount = [(ABPK2DDetectionResult *)self jointCount];
    if (jointCount == [v5 jointCount])
    {
      v7 = *self->_anon_8;
      v8 = *&self->_anon_8[8];
      v9 = v5[1];
      if (v8 - v7 == v5[2] - v9)
      {
        if (v8 == v7)
        {
LABEL_9:
          v12 = *self->_anon_20;
          v13 = *&self->_anon_20[8] - v12;
          if (v13)
          {
            v14 = v13 >> 3;
            v15 = v5[4];
            if (v14 <= 1)
            {
              v14 = 1;
            }

            while (1)
            {
              v16 = vsub_f32(*v15, *v12);
              if (sqrtf(vaddv_f32(vmul_f32(v16, v16))) > 0.00000011921)
              {
                break;
              }

              ++v12;
              ++v15;
              if (!--v14)
              {
                goto LABEL_14;
              }
            }
          }

          else
          {
LABEL_14:
            if (self->_rotation == v5[13])
            {
              liftingData = [(ABPK2DDetectionResult *)self liftingData];
              liftingData2 = [v5 liftingData];
              v19 = [liftingData isEqual:liftingData2];

LABEL_18:
              goto LABEL_19;
            }
          }
        }

        else
        {
          v10 = v8 - v7;
          if (v10 <= 1)
          {
            v10 = 1;
          }

          while (1)
          {
            v11 = vsub_f32(*v9, *v7);
            if (sqrtf(vaddv_f32(vmul_f32(v11, v11))) > 0.00000011921)
            {
              break;
            }

            ++v7;
            ++v9;
            if (!--v10)
            {
              goto LABEL_9;
            }
          }
        }
      }
    }

    v19 = 0;
    goto LABEL_18;
  }

  v19 = 0;
LABEL_19:

  return v19;
}

- (unint64_t)hash
{
  result = [(ABPK2DDetectionResult *)self jointCount];
  if (result)
  {
    v4 = COERCE_FLOAT(**self->_anon_20);
    LODWORD(v5) = HIDWORD(*(*&self->_anon_20[8] - 8));
    return [(ABPK2DDetectionResult *)self jointCount]^ v4 ^ v5;
  }

  return result;
}

- (CGSize)imageResolution
{
  width = self->_imageResolution.width;
  height = self->_imageResolution.height;
  result.height = height;
  result.width = width;
  return result;
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

@end