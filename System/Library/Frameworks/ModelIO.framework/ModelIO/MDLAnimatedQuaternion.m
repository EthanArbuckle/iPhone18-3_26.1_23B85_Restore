@interface MDLAnimatedQuaternion
- (NSUInteger)getDoubleQuaternionArray:(simd_quatd *)valuesArray maxCount:(NSUInteger)maxCount;
- (NSUInteger)getFloatQuaternionArray:(simd_quatf *)valuesArray maxCount:(NSUInteger)maxCount;
- (VtValue)defaultVtValue;
- (id)copyWithZone:(_NSZone *)a3;
- (simd_quatd)doubleQuaternionAtTime:(NSTimeInterval)time;
- (simd_quatf)floatQuaternionAtTime:(NSTimeInterval)time;
- (unint64_t)precision;
- (void)resetWithDoubleQuaternionArray:(const simd_quatd *)valuesArray atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)count;
- (void)resetWithFloatQuaternionArray:(const simd_quatf *)valuesArray atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)count;
- (void)resetWithUsdAttribute:(const void *)a3 timeScale:(double)a4;
- (void)resetWithUsdAttribute:(const void *)a3 timeScale:(double)a4 time:(double)a5;
- (void)setDoubleQuaternion:(__int128 *)a3 atTime:;
@end

@implementation MDLAnimatedQuaternion

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = MDLAnimatedQuaternion;
  return [(MDLAnimatedValue *)&v4 copyWithZone:a3];
}

- (unint64_t)precision
{
  v6[2] = *MEMORY[0x277D85DE8];
  begin = self->super._timeSampledData.__begin_;
  if (self->super._timeSampledData.__end_ == begin)
  {
    goto LABEL_7;
  }

  v6[0] = 0;
  v6[1] = 0;
  sub_239E5F7D4(v6, begin + 1);
  if ((sub_239F284BC(v6) & 1) == 0 && (sub_239F2DE8C(v6) & 1) == 0)
  {
    v4 = sub_239F28A58(v6);
    sub_239E5B240(v6);
    if (v4)
    {
      result = 2;
      goto LABEL_8;
    }

LABEL_7:
    result = 0;
    goto LABEL_8;
  }

  sub_239E5B240(v6);
  result = 1;
LABEL_8:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (VtValue)defaultVtValue
{
  v3 = v2;
  v6[2] = *MEMORY[0x277D85DE8];
  begin = self->super._timeSampledData.__begin_;
  if (self->super._timeSampledData.__end_ == begin)
  {
LABEL_9:
    *(v3 + 8) = 0;
    goto LABEL_10;
  }

  v6[0] = 0;
  v6[1] = 0;
  sub_239E5F7D4(v6, begin + 1);
  if (!sub_239F2DE8C(v6))
  {
    if (sub_239F284BC(v6))
    {
      *(v3 + 8) = &off_284D16A30;
      operator new();
    }

    if (sub_239F28A58(v6))
    {
      *(v3 + 8) = &off_284D16AE8;
      operator new();
    }

    self = sub_239E5B240(v6);
    goto LABEL_9;
  }

  *(v3 + 8) = &off_284D16978 + 1;
  self = sub_239E5B240(v6);
LABEL_10:
  v5 = *MEMORY[0x277D85DE8];
  result._info._ptrAndBits = a2;
  result._storage = self;
  return result;
}

- (void)resetWithUsdAttribute:(const void *)a3 timeScale:(double)a4
{
  v11[2] = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTimeSamples();
  begin = self->super._timeSampledData.__begin_;
  end = self->super._timeSampledData.__end_;
  if (end != begin)
  {
    do
    {
      v7 = (end - 24);
      sub_239E5B240(end - 16);
      end = v7;
    }

    while (v7 != begin);
  }

  self->super._timeSampledData.__end_ = begin;
  sub_239F236EC(&self->super._timeSampledData.__begin_, 0);
  v11[0] = 0;
  v11[1] = 0;
  pxrInternal__aapl__pxrReserved__::UsdAttribute::Get();
  if ((sub_239F2DE8C(v11) & 1) != 0 || (sub_239F284BC(v11) & 1) != 0 || sub_239F28A58(v11))
  {
    v9 = 0;
    sub_239E5F7D4(v10, v11);
    sub_239F237C8(&self->super._timeSampledData, &v9);
    sub_239E5B240(v10);
  }

  sub_239E5B240(v11);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)resetWithUsdAttribute:(const void *)a3 timeScale:(double)a4 time:(double)a5
{
  v11[2] = *MEMORY[0x277D85DE8];
  v11[0] = 0;
  v11[1] = 0;
  pxrInternal__aapl__pxrReserved__::UsdAttribute::Get();
  if ((sub_239F2DE8C(v11) & 1) != 0 || (sub_239F284BC(v11) & 1) != 0 || sub_239F28A58(v11))
  {
    v9 = a5 * a4;
    sub_239E5F7D4(v10, v11);
    sub_239F237C8(&self->super._timeSampledData, &v9);
    sub_239E5B240(v10);
  }

  sub_239E5B240(v11);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setDoubleQuaternion:(__int128 *)a3 atTime:
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *a3;
  v4 = a3[1];
  v5 = 0;
  v6 = &off_284D16AE8;
  operator new();
}

- (simd_quatf)floatQuaternionAtTime:(NSTimeInterval)time
{
  v54 = *MEMORY[0x277D85DE8];
  v51 = 0.0;
  v52 = 0;
  v53 = 0;
  v48 = 0.0;
  v49 = 0;
  v50 = 0;
  sub_239F24610(&self->super._timeSampledData, &v51, &v48, time);
  v46 = 0;
  if (v53 && ((sub_239F2DE8C(&v52) & 1) != 0 || (sub_239F284BC(&v52) & 1) != 0 || (sub_239F28A58(&v52) & 1) != 0))
  {
    v5 = sub_239F284BC(&v52);
    v6 = &v52;
    if ((v5 & 1) == 0)
    {
      v6 = sub_239F2EA20(&v52);
    }

    v7 = sub_239F2E98C(v6);
    v8 = *v7;
    if (!self->super._interpolation)
    {
      goto LABEL_25;
    }

    v44 = *v7;
    if (v50)
    {
      if (v51 != v48 && ((v9 = &v49, (sub_239F2DE8C(&v49) & 1) != 0) || (sub_239F284BC(&v49) & 1) != 0 || sub_239F28A58(&v49)))
      {
        if ((sub_239F284BC(&v49) & 1) == 0)
        {
          v9 = sub_239F2EA20(&v49);
        }

        v10 = sub_239F2E98C(v9);
        v11 = fmax(fmin((time - v51) / (v48 - v51), 1.0), 0.0);
        v12 = vmulq_f32(*v10, v44);
        v13 = vextq_s8(v12, v12, 8uLL);
        *v12.f32 = vadd_f32(*v12.f32, *v13.f32);
        v12.f32[0] = vaddv_f32(*v12.f32);
        v13.i64[0] = 0;
        v14 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v12, v13)), 0), vnegq_f32(*v10), *v10);
        v15 = 1.0;
        v16 = 1.0 - v11;
        v17 = vsubq_f32(v44, v14);
        v18 = vmulq_f32(v17, v17);
        v47 = v14;
        v19 = vaddq_f32(v14, v44);
        v20 = vmulq_f32(v19, v19);
        v21 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v18.i8, *&vextq_s8(v18, v18, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v20.i8, *&vextq_s8(v20, v20, 8uLL)))));
        v22 = v21 + v21;
        v23 = (v21 + v21) == 0.0;
        v24 = 1.0;
        if (!v23)
        {
          v24 = sinf(v22) / v22;
        }

        v25 = LODWORD(v24);
        v26 = vrecpe_f32(LODWORD(v24));
        v27 = vmul_f32(vrecps_f32(v25, v26), v26);
        LODWORD(v28) = vmul_f32(v27, vrecps_f32(v25, v27)).u32[0];
        if ((v16 * v22) != 0.0)
        {
          v42 = v28;
          v29 = sinf(v16 * v22);
          v28 = v42;
          v15 = v29 / (v16 * v22);
        }

        v30 = vmulq_n_f32(v44, (v28 * v16) * v15);
        v31 = v22 * v11;
        v32 = 1.0;
        if (v31 != 0.0)
        {
          v43 = v28;
          v45 = v30;
          v33 = sinf(v31);
          v28 = v43;
          v30 = v45;
          v32 = v33 / v31;
        }

        v34 = vmlaq_n_f32(v30, v47, (v28 * v11) * v32);
        v35 = vmulq_f32(v34, v34);
        v36 = vadd_f32(*v35.i8, *&vextq_s8(v35, v35, 8uLL));
        if (vaddv_f32(v36) == 0.0)
        {
          v8 = xmmword_239F9C1B0;
        }

        else
        {
          v37 = vadd_f32(v36, vdup_lane_s32(v36, 1)).u32[0];
          v38 = vrsqrte_f32(v37);
          v39 = vmul_f32(vrsqrts_f32(v37, vmul_f32(v38, v38)), v38);
          v8 = vmulq_n_f32(v34, vmul_f32(v39, vrsqrts_f32(v37, vmul_f32(v39, v39))).f32[0]);
        }
      }

      else
      {
        v8 = v44;
      }

LABEL_25:
      v46 = v8;
    }
  }

  sub_239E5B240(&v49);
  sub_239E5B240(&v52);
  v40 = *MEMORY[0x277D85DE8];
  return v46;
}

- (simd_quatd)doubleQuaternionAtTime:(NSTimeInterval)time
{
  v6 = v3;
  v31 = *MEMORY[0x277D85DE8];
  v28 = 0.0;
  v29 = 0;
  v30 = 0;
  v25 = 0.0;
  v26 = 0;
  v27 = 0;
  sub_239F24610(&self->super._timeSampledData, &v28, &v25, time);
  if (!v30 || (sub_239F2DE8C(&v29) & 1) == 0 && (sub_239F284BC(&v29) & 1) == 0 && (sub_239F28A58(&v29) & 1) == 0)
  {
    goto LABEL_11;
  }

  v7 = sub_239F28A58(&v29);
  v8 = &v29;
  if ((v7 & 1) == 0)
  {
    v8 = sub_239F2ED58(&v29);
  }

  v9 = sub_239F2ECC4(v8);
  v10 = v9[1];
  if (!self->super._interpolation)
  {
    *v6 = *v9;
    v6[1] = v10;
    goto LABEL_19;
  }

  v21 = v9[1];
  v22 = *v9;
  if (v27)
  {
    if (v28 != v25 && ((v11 = &v26, (sub_239F2DE8C(&v26) & 1) != 0) || (sub_239F284BC(&v26) & 1) != 0 || (sub_239F28A58(&v26) & 1) != 0))
    {
      if ((sub_239F28A58(&v26) & 1) == 0)
      {
        v11 = sub_239F2ED58(&v26);
      }

      v12 = sub_239F2ECC4(v11);
      v13 = *v12;
      v14 = v12[1];
      v15 = fmax(fmin((time - v28) / (v25 - v28), 1.0), 0.0);
      v24[0] = v22;
      v24[1] = v21;
      v23[0] = v13;
      v23[1] = v14;
      sub_239F28A90(v24, v23, v6, v15);
    }

    else
    {
      *v6 = v22;
      v6[1] = v21;
    }
  }

  else
  {
LABEL_11:
    *v6 = 0u;
    v6[1] = 0u;
  }

LABEL_19:
  sub_239E5B240(&v26);
  sub_239E5B240(&v29);
  v20 = *MEMORY[0x277D85DE8];
  result.vector.f64[3] = v19;
  result.vector.f64[2] = v18;
  result.vector.f64[1] = v17;
  result.vector.f64[0] = v16;
  return result;
}

- (void)resetWithFloatQuaternionArray:(const simd_quatf *)valuesArray atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)count
{
  v16 = *MEMORY[0x277D85DE8];
  begin = self->super._timeSampledData.__begin_;
  end = self->super._timeSampledData.__end_;
  if (end != begin)
  {
    do
    {
      v11 = (end - 24);
      sub_239E5B240(end - 16);
      end = v11;
    }

    while (v11 != begin);
  }

  self->super._timeSampledData.__end_ = begin;
  if (count)
  {
    v14 = *timesArray;
    v13 = *valuesArray;
    v15 = &off_284D16A30;
    operator new();
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)resetWithDoubleQuaternionArray:(const simd_quatd *)valuesArray atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)count
{
  v17 = *MEMORY[0x277D85DE8];
  begin = self->super._timeSampledData.__begin_;
  end = self->super._timeSampledData.__end_;
  if (end != begin)
  {
    do
    {
      v11 = (end - 24);
      sub_239E5B240(end - 16);
      end = v11;
    }

    while (v11 != begin);
  }

  self->super._timeSampledData.__end_ = begin;
  if (count)
  {
    v15 = *timesArray;
    v13 = *valuesArray->vector.f64;
    v14 = *&valuesArray->vector.f64[2];
    v16 = &off_284D16AE8;
    operator new();
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (NSUInteger)getFloatQuaternionArray:(simd_quatf *)valuesArray maxCount:(NSUInteger)maxCount
{
  v15[2] = *MEMORY[0x277D85DE8];
  if (0xAAAAAAAAAAAAAAABLL * ((self->super._timeSampledData.__end_ - self->super._timeSampledData.__begin_) >> 3) >= maxCount)
  {
    v4 = maxCount;
  }

  else
  {
    v4 = 0xAAAAAAAAAAAAAAABLL * ((self->super._timeSampledData.__end_ - self->super._timeSampledData.__begin_) >> 3);
  }

  if (v4)
  {
    v7 = 0;
    v8 = v4;
    do
    {
      v15[0] = 0;
      v15[1] = 0;
      begin = self->super._timeSampledData.__begin_;
      v14 = *(begin + v7);
      sub_239E5F7D4(v15, (begin + v7 + 8));
      if (sub_239F284BC(v15))
      {
        v10 = sub_239F2E98C(v15);
      }

      else
      {
        v11 = sub_239F2EA20(v15);
        v10 = sub_239F2E98C(v11);
      }

      *valuesArray++ = *v10;
      sub_239E5B240(v15);
      v7 += 24;
      --v8;
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v4;
}

- (NSUInteger)getDoubleQuaternionArray:(simd_quatd *)valuesArray maxCount:(NSUInteger)maxCount
{
  v16[2] = *MEMORY[0x277D85DE8];
  if (0xAAAAAAAAAAAAAAABLL * ((self->super._timeSampledData.__end_ - self->super._timeSampledData.__begin_) >> 3) >= maxCount)
  {
    v4 = maxCount;
  }

  else
  {
    v4 = 0xAAAAAAAAAAAAAAABLL * ((self->super._timeSampledData.__end_ - self->super._timeSampledData.__begin_) >> 3);
  }

  if (v4)
  {
    v7 = 0;
    v8 = v4;
    do
    {
      v16[0] = 0;
      v16[1] = 0;
      begin = self->super._timeSampledData.__begin_;
      v15 = *(begin + v7);
      sub_239E5F7D4(v16, (begin + v7 + 8));
      if (sub_239F28A58(v16))
      {
        v10 = sub_239F2ECC4(v16);
      }

      else
      {
        v11 = sub_239F2ED58(v16);
        v10 = sub_239F2ECC4(v11);
      }

      v12 = v10[1];
      *valuesArray->vector.f64 = *v10;
      *&valuesArray->vector.f64[2] = v12;
      ++valuesArray;
      sub_239E5B240(v16);
      v7 += 24;
      --v8;
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v4;
}

@end