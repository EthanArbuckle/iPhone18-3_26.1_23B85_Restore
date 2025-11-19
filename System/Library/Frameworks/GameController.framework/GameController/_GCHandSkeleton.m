@interface _GCHandSkeleton
- (BOOL)fingerPositionsChangedForCurlAmts:(id *)a3;
- (_GCHandSkeleton)initWithBoneData:(const void *)a3 profile:(void *)a4 handedness:(int64_t)a5;
- (float)getFingerCurlAmt:(id *)a3 boneType:(int64_t)a4;
- (void)_boneDataWithMotionRange:(void *)a3@<X8> curlAmts:;
- (void)_boneDataWithMotionRangeDq:(void *)a3@<X8> curlAmts:;
- (void)_convertToModelSpaceUsingDQs:(uint64_t)a1@<X2>;
- (void)_convertToModelSpaceUsingMatrices:(uint64_t)a1@<X2>;
- (void)boneDataWithTransformSpace:(uint64_t)a3@<X3> motionRange:(void *)a4@<X8>;
- (void)boneDataWithTransformSpace:(uint64_t)a3@<X3> referencePose:(void *)a4@<X8>;
@end

@implementation _GCHandSkeleton

- (_GCHandSkeleton)initWithBoneData:(const void *)a3 profile:(void *)a4 handedness:(int64_t)a5
{
  v8 = a4;
  v20.receiver = a1;
  v20.super_class = _GCHandSkeleton;
  v9 = [(_GCHandSkeleton *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_physicalInput, v8);
    memcpy(&v10->_boneData, a3, 0x3E0uLL);
    v11 = 0;
    v10->_handedness = a5;
    v12 = &kRightSkeletons;
    if (a5 == 1)
    {
      v12 = &kLeftSkeletons;
    }

    v10->referenceSkeletons = v12;
    v10->_interpolationMethod = 1;
    v13 = v10;
    do
    {
      for (i = 0; i != 992; i += 32)
      {
        v15 = (v13 + i);
        v16 = (v10->referenceSkeletons[v11] + i);
        v17 = *v16;
        v15[65] = dqMakeDualQuaternion(v16[1]);
        v15[66] = v18;
      }

      ++v11;
      v13 = (v13 + 992);
    }

    while (v11 != 4);
  }

  return v10;
}

- (void)boneDataWithTransformSpace:(uint64_t)a3@<X3> motionRange:(void *)a4@<X8>
{
  memcpy(a4, (a1 + 32), 0x3E0uLL);
  WeakRetained = objc_loadWeakRetained((a1 + 8));
  v5 = [WeakRetained objectForKeyedSubscript:@"XRPropertyButtonFingerThumb"];
  [v5 value];
  v25[0] = v6;
  v7 = objc_loadWeakRetained((a1 + 8));
  v8 = [v7 objectForKeyedSubscript:@"XRPropertyButtonFingerIndex"];
  [v8 value];
  v25[1] = v9;
  v10 = objc_loadWeakRetained((a1 + 8));
  v11 = [v10 objectForKeyedSubscript:@"XRPropertyButtonFingerMiddle"];
  [v11 value];
  v25[2] = v12;
  v13 = objc_loadWeakRetained((a1 + 8));
  v14 = [v13 objectForKeyedSubscript:@"XRPropertyButtonFingerRing"];
  [v14 value];
  v25[3] = v15;
  v16 = objc_loadWeakRetained((a1 + 8));
  v17 = [v16 objectForKeyedSubscript:@"XRPropertyButtonFingerLittle"];
  [v17 value];
  v25[4] = v18;

  result = [a1 fingerPositionsChangedForCurlAmts:v25];
  if (result)
  {
    if (*(a1 + 5008))
    {
      result = [a1 _boneDataWithMotionRangeDq:a3 curlAmts:v25];
    }

    else
    {
      result = [a1 _boneDataWithMotionRange:a3 curlAmts:v25];
    }
  }

  if (!a2)
  {
    [a1 _convertToModelSpaceUsingDQs:a1 + 32];
    return memcpy(a4, __src, 0x3E0uLL);
  }

  return result;
}

- (BOOL)fingerPositionsChangedForCurlAmts:(id *)a3
{
  if (a3->var0 == self->_lastFingerPositions[0] && a3->var1 == self->_lastFingerPositions[1] && a3->var2 == self->_lastFingerPositions[2] && a3->var3 == self->_lastFingerPositions[3] && a3->var4 == self->_lastFingerPositions[4])
  {
    return 0;
  }

  *self->_lastFingerPositions = *a3;
  return 1;
}

- (float)getFingerCurlAmt:(id *)a3 boneType:(int64_t)a4
{
  result = 0.0;
  if (a4 <= 2)
  {
    if (a4 != 1)
    {
      if (a4 != 2)
      {
        return result;
      }

      a3 = (a3 + 4);
    }
  }

  else
  {
    switch(a4)
    {
      case 3:
        a3 = (a3 + 8);
        break;
      case 4:
        a3 = (a3 + 12);
        break;
      case 5:
        a3 = (a3 + 16);
        break;
      default:
        return result;
    }
  }

  return a3->var0;
}

- (void)_boneDataWithMotionRange:(void *)a3@<X8> curlAmts:
{
  memcpy(a3, a1 + 4, 0x3E0uLL);
  v5 = 0x1FFFFFFFFFFFFF84;
  v6 = &kBoneTypes;
  v44 = xmmword_1D2DEE4B0;
  do
  {
    v7 = *v6++;
    v8 = a1[128];
    v9 = (*v8 + v5 * 8);
    v10 = v8[2];
    [a1 getFingerCurlAmt:a2 boneType:{v7, v44}];
    if (v11 <= 0.0)
    {
      v43 = &a1[v5];
      v43[64] = v9[62];
      v43[65] = v9[63];
    }

    else
    {
      v12 = v11;
      *&a1[v5 + 128] = vmlaq_n_f32(v9[62], vsubq_f32(*(v10 + v5 * 8 + 992), v9[62]), v11);
      v13 = v9[63];
      v14 = *(v10 + v5 * 8 + 1008);
      v15 = vmulq_f32(v13, v14);
      v16 = vextq_s8(v15, v15, 8uLL);
      *v15.f32 = vadd_f32(*v15.f32, *v16.f32);
      v15.f32[0] = vaddv_f32(*v15.f32);
      v16.i64[0] = 0;
      v17 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v15, v16)), 0), vnegq_f32(v14), v14);
      v18 = 1.0;
      v19 = vsubq_f32(v13, v17);
      v20 = vmulq_f32(v19, v19);
      v47 = v17;
      v48 = v13;
      v21 = vaddq_f32(v13, v17);
      v22 = vmulq_f32(v21, v21);
      v49 = v12;
      v23 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v20.i8, *&vextq_s8(v20, v20, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v22.i8, *&vextq_s8(v22, v22, 8uLL)))));
      v24 = v23 + v23;
      v25 = 1.0;
      if ((v23 + v23) != 0.0)
      {
        v25 = sinf(v23 + v23) / v24;
      }

      v26 = (1.0 - v49) * v24;
      v27 = v49;
      if (v26 != 0.0)
      {
        v45 = v25;
        v28 = sinf((1.0 - v49) * v24);
        v25 = v45;
        v27 = v49;
        v18 = v28 / v26;
      }

      v29 = v27 * v24;
      v30 = 1.0;
      if (v29 != 0.0)
      {
        v46 = v25;
        v31 = sinf(v29);
        v25 = v46;
        v27 = v49;
        v30 = v31 / v29;
      }

      v32 = v25;
      v33 = vrecpe_f32(LODWORD(v25));
      v34 = vmul_f32(v33, vrecps_f32(LODWORD(v32), v33));
      v35 = vmul_f32(v34, vrecps_f32(LODWORD(v32), v34)).f32[0];
      v34.f32[0] = (1.0 - v49) * (v35 * v18);
      v36 = vmlaq_f32(vmulq_n_f32(v47, v27 * (v35 * v30)), v48, vdupq_lane_s32(v34, 0));
      v37 = vmulq_f32(v36, v36);
      v38 = vadd_f32(*v37.i8, *&vextq_s8(v37, v37, 8uLL));
      v39 = v44;
      if (vaddv_f32(v38) != 0.0)
      {
        v40 = vadd_f32(v38, vdup_lane_s32(v38, 1)).u32[0];
        v41 = vrsqrte_f32(v40);
        v42 = vmul_f32(v41, vrsqrts_f32(v40, vmul_f32(v41, v41)));
        v39 = vmulq_n_f32(v36, vmul_f32(v42, vrsqrts_f32(v40, vmul_f32(v42, v42))).f32[0]);
      }

      *&a1[v5 + 130] = v39;
    }

    v5 += 4;
  }

  while (v5 * 8);
}

- (void)_boneDataWithMotionRangeDq:(void *)a3@<X8> curlAmts:
{
  memcpy(a3, (a1 + 32), 0x3E0uLL);
  v5 = -992;
  v6 = &kBoneTypes;
  do
  {
    v7 = *v6++;
    [a1 getFingerCurlAmt:a2 boneType:{v7, *&v19, *&v20}];
    if (v8 <= 0.0)
    {
      v16 = a1 + v5;
      *(v16 + 1024) = *(**(a1 + 1024) + v5 + 992);
      *(v16 + 1040) = *(**(a1 + 1024) + v5 + 1008);
    }

    else
    {
      v9 = v8;
      dqIdentity();
      v10 = *(a1 + v5 + 2032);
      v11 = *(a1 + v5 + 2048);
      v12 = *(a1 + v5 + 4016);
      v13 = *(a1 + v5 + 4032);
      if (*(a1 + 5008) == 1)
      {
        *v14.i64 = dqDLB(v10, *v11.i64, v12, *v13.i64, v9);
      }

      else
      {
        dqScLERP(v10, v11, v12, v13, v9);
      }

      v19 = v15;
      v20 = v14;
      *&v17 = dqGetTranslation(v14, v15);
      *(a1 + v5 + 1024) = v17;
      *&v18 = dqGetRotation(v20, v19);
      *(a1 + v5 + 1040) = v18;
    }

    v5 += 32;
  }

  while (v5);
}

- (void)boneDataWithTransformSpace:(uint64_t)a3@<X3> referencePose:(void *)a4@<X8>
{
  if (a3 <= 1)
  {
    if (a3 <= 1)
    {
      v5 = (*(a1 + 1024) + 8 * (a2 == 0));
      goto LABEL_8;
    }

LABEL_11:
    [_GCHandSkeleton boneDataWithTransformSpace:referencePose:];
  }

  if (a3 != 2 && a3 != 3)
  {
    goto LABEL_11;
  }

  v6 = *(a1 + 1024);
  v7 = (v6 + 16);
  v5 = (v6 + 24);
  if (a2)
  {
    v5 = v7;
  }

LABEL_8:
  v8 = *v5;

  return memcpy(a4, v8, 0x3E0uLL);
}

- (void)_convertToModelSpaceUsingMatrices:(uint64_t)a1@<X2>
{
  v2 = 0;
  v78 = *MEMORY[0x1E69E9840];
  a2[30] = 0u;
  a2[31] = 0u;
  a2[28] = 0u;
  a2[29] = 0u;
  a2[26] = 0u;
  a2[27] = 0u;
  a2[24] = 0u;
  a2[25] = 0u;
  a2[22] = 0u;
  a2[23] = 0u;
  a2[20] = 0u;
  a2[21] = 0u;
  a2[18] = 0u;
  a2[19] = 0u;
  a2[16] = 0u;
  a2[17] = 0u;
  a2[14] = 0u;
  a2[15] = 0u;
  a2[12] = 0u;
  a2[13] = 0u;
  a2[10] = 0u;
  a2[11] = 0u;
  a2[8] = 0u;
  a2[9] = 0u;
  a2[6] = 0u;
  a2[7] = 0u;
  a2[4] = 0u;
  a2[5] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  __asm { FMOV            V2.2S, #0.25 }

  *a2 = 0u;
  a2[1] = 0u;
  v7 = MEMORY[0x1E69E9B18];
  do
  {
    if (v2)
    {
      v8 = 0;
      v9 = (a1 + 32 * v2);
      v10 = *v9;
      _Q5 = v9[1];
      _S6 = HIDWORD(v9[1].i64[0]);
      _S7 = _Q5.i32[2];
      __asm { FMLS            S19, S7, V5.S[2] }

      _S16 = _Q5.i32[3];
      __asm { FMLA            S19, S16, V5.S[3] }

      v17 = vmuls_lane_f32(_Q5.f32[2], _Q5, 3);
      v18.f32[0] = vmuls_lane_f32(_Q5.f32[1], _Q5, 3);
      HIDWORD(v19) = 0;
      LODWORD(v19) = _S19;
      *(&v19 + 1) = (v17 + (_Q5.f32[0] * _Q5.f32[1])) + (v17 + (_Q5.f32[0] * _Q5.f32[1]));
      *(&v19 + 2) = -(v18.f32[0] - (_Q5.f32[0] * _Q5.f32[2])) - (v18.f32[0] - (_Q5.f32[0] * _Q5.f32[2]));
      v20 = -(v17 - (_Q5.f32[0] * _Q5.f32[1])) - (v17 - (_Q5.f32[0] * _Q5.f32[1]));
      __asm
      {
        FMLA            S20, S6, V5.S[1]
        FMLA            S20, S16, V5.S[3]
        FMLA            S21, S7, V5.S[1]
      }

      HIDWORD(v24) = 0;
      *&v24 = v20;
      *(&v24 + 1) = _S20 - (_Q5.f32[0] * _Q5.f32[0]);
      *(&v24 + 2) = _S21 + _S21;
      v18.f32[1] = -(_Q5.f32[0] * _Q5.f32[3]);
      v25 = (&v74 + 4 * parentIndices[v2]);
      v26 = *v25;
      v27 = v25[1];
      v28 = v25[2];
      v29 = v25[3];
      v30 = vmla_laneq_f32(v18, *_Q5.f32, _Q5, 2);
      *&v31 = vadd_f32(v30, v30);
      __asm
      {
        FMLA            S16, S7, V5.S[2]
        FMLS            S7, S6, V5.S[1]
      }

      *(&v31 + 1) = _S7;
      v10.i32[3] = 1.0;
      v69[0] = v19;
      v69[1] = v24;
      v69[2] = v31;
      v69[3] = v10;
      v70 = 0uLL;
      v71 = 0uLL;
      v72 = 0uLL;
      v73 = 0uLL;
      do
      {
        *(&v70 + v8 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v26, COERCE_FLOAT(v69[v8])), v27, *&v69[v8], 1), v28, v69[v8], 2), v29, v69[v8], 3);
        ++v8;
      }

      while (v8 != 4);
      v34 = &v74 + 4 * v2;
      v36 = v70;
      v35 = v71;
      v37 = v72;
      v38 = v73;
      *v34 = v70;
      v34[1] = v35;
      v34[2] = v37;
      v34[3] = v38;
    }

    else
    {
      v39 = v7[1];
      v74 = *v7;
      v75 = v39;
      v40 = v7[3];
      v76 = v7[2];
      v77 = v40;
      v36 = v74;
      v35 = v75;
      v37 = v76;
      v38 = v77;
    }

    v41 = &a2[2 * v2];
    *v41 = v38;
    v42 = *&v37.i32[2] + (*v36.i32 + *&v35.i32[1]);
    if (v42 >= 0.0)
    {
      v49 = sqrtf(v42 + 1.0);
      v50 = v49 + v49;
      v51 = vrecpe_f32(COERCE_UNSIGNED_INT(v49 + v49));
      v52 = vmul_f32(v51, vrecps_f32(COERCE_UNSIGNED_INT(v49 + v49), v51));
      v52.i32[0] = vmul_f32(v52, vrecps_f32(COERCE_UNSIGNED_INT(v49 + v49), v52)).u32[0];
      *v59.i8 = vmul_n_f32(vsub_f32(vzip1_s32(*&vextq_s8(v35, v35, 8uLL), *v37.i8), vext_s8(*v37.i8, *&vextq_s8(v36, v36, 8uLL), 4uLL)), v52.f32[0]);
      v53.f32[0] = *&v36.i32[1] - *v35.i32;
      v53.f32[1] = v50;
      v52.i32[1] = 0.25;
      v61 = vmul_f32(v53, v52);
    }

    else if (*v36.i32 < *&v35.i32[1] || *v36.i32 < *&v37.i32[2])
    {
      v44 = 1.0 - *v36.i32;
      if (*&v35.i32[1] >= *&v37.i32[2])
      {
        v62 = sqrtf(*&v35.i32[1] + (v44 - *&v37.i32[2]));
        *&v63 = v62 + v62;
        v64 = vrecpe_f32(v63);
        v65 = vmul_f32(v64, vrecps_f32(v63, v64));
        v66.f32[0] = *&v36.i32[1] + *v35.i32;
        v66.i32[1] = v63;
        v67.i32[0] = vmul_f32(v65, vrecps_f32(v63, v65)).u32[0];
        v61 = vmul_n_f32(vext_s8(vadd_f32(*v37.i8, vdup_laneq_s32(v35, 2)), vsub_f32(*v37.i8, *&vextq_s8(v36, v36, 8uLL)), 4uLL), v67.f32[0]);
        v67.i32[1] = 0.25;
        *v59.i8 = vmul_f32(v66, v67);
      }

      else
      {
        v45 = sqrtf(*&v37.i32[2] + (v44 - *&v35.i32[1]));
        v46.f32[0] = v45 + v45;
        v47 = vrecpe_f32(COERCE_UNSIGNED_INT(v45 + v45));
        v48 = vmul_f32(v47, vrecps_f32(COERCE_UNSIGNED_INT(v45 + v45), v47));
        v48.i32[0] = vmul_f32(v48, vrecps_f32(COERCE_UNSIGNED_INT(v45 + v45), v48)).u32[0];
        *v59.i8 = vmul_n_f32(vadd_f32(vzip1_s32(*&vextq_s8(v36, v36, 8uLL), *&vextq_s8(v35, v35, 8uLL)), *v37.i8), v48.f32[0]);
        v46.f32[1] = *&v36.i32[1] - *v35.i32;
        v61 = vmul_f32(v46, __PAIR64__(v48.u32[0], _D2));
      }
    }

    else
    {
      v54 = sqrtf(*v36.i32 + ((1.0 - *&v35.i32[1]) - *&v37.i32[2]));
      v55.f32[0] = v54 + v54;
      v56 = vrecpe_f32(v55.u32[0]);
      v57 = vmul_f32(v56, vrecps_f32(v55.u32[0], v56));
      LODWORD(v58) = vmul_f32(v57, vrecps_f32(v55.u32[0], v57)).u32[0];
      v55.f32[1] = *&v36.i32[1] + *v35.i32;
      *v59.i8 = vmul_f32(v55, __PAIR64__(LODWORD(v58), _D2));
      v60.i32[0] = vadd_f32(*&vextq_s8(v36, v36, 8uLL), *v37.i8).u32[0];
      v60.i32[1] = vsub_f32(vdup_laneq_s32(v35, 2), *&v37).i32[1];
      v61 = vmul_n_f32(v60, v58);
    }

    v59.u64[1] = v61;
    v41[1] = v59;
    ++v2;
  }

  while (v2 != 31);
  v68 = *MEMORY[0x1E69E9840];
}

- (void)_convertToModelSpaceUsingDQs:(uint64_t)a1@<X2>
{
  v4 = 0;
  v22 = *MEMORY[0x1E69E9840];
  a2[30] = 0u;
  a2[31] = 0u;
  a2[28] = 0u;
  a2[29] = 0u;
  a2[26] = 0u;
  a2[27] = 0u;
  a2[24] = 0u;
  a2[25] = 0u;
  a2[22] = 0u;
  a2[23] = 0u;
  a2[20] = 0u;
  a2[21] = 0u;
  a2[18] = 0u;
  a2[19] = 0u;
  a2[16] = 0u;
  a2[17] = 0u;
  a2[14] = 0u;
  a2[15] = 0u;
  a2[12] = 0u;
  a2[13] = 0u;
  a2[10] = 0u;
  a2[11] = 0u;
  a2[8] = 0u;
  a2[9] = 0u;
  a2[6] = 0u;
  a2[7] = 0u;
  a2[4] = 0u;
  a2[5] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  v5 = parentIndices;
  *a2 = 0u;
  a2[1] = 0u;
  do
  {
    v7 = *v5++;
    v6 = v7;
    v8 = *(a1 + v4 * 16);
    DualQuaternion = dqMakeDualQuaternion(*(a1 + v4 * 16 + 16));
    if (v4 * 16)
    {
      v11 = &v21[v4];
      v12 = &v21[2 * v6];
      v13 = v12[1];
      *v14.i64 = dqMul(DualQuaternion, v10, *v12);
      *v11 = v14;
      v11[1] = v15;
    }

    else
    {
      *v14.i64 = dqIdentity();
      v21[0] = v14;
      v21[1] = v15;
    }

    v19 = v15;
    v20 = v14;
    *&v16 = dqGetTranslation(v14, v15);
    a2[v4] = v16;
    *&v17 = dqGetRotation(v20, v19);
    a2[v4 + 1] = v17;
    v4 += 2;
  }

  while (v4 != 62);
  v18 = *MEMORY[0x1E69E9840];
}

@end