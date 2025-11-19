@interface MDLAnimatedMatrix4x4
- (NSUInteger)getDouble4x4Array:(matrix_double4x4 *)valuesArray maxCount:(NSUInteger)maxCount;
- (NSUInteger)getFloat4x4Array:(matrix_float4x4 *)valuesArray maxCount:(NSUInteger)maxCount;
- (VtValue)defaultVtValue;
- (id)copyWithZone:(_NSZone *)a3;
- (matrix_float4x4)float4x4AtTime:(NSTimeInterval)time;
- (uint64_t)double4x4AtTime:(double)a3@<D0>;
- (unint64_t)precision;
- (void)resetWithDouble4x4Array:(const matrix_double4x4 *)valuesArray atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)count;
- (void)resetWithFloat4x4Array:(const matrix_float4x4 *)valuesArray atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)count;
- (void)resetWithUsdAttribute:(const void *)a3 timeScale:(double)a4;
- (void)resetWithUsdAttribute:(const void *)a3 timeScale:(double)a4 time:(double)a5;
- (void)setDouble4x4:(__int128 *)a3 atTime:;
@end

@implementation MDLAnimatedMatrix4x4

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = MDLAnimatedMatrix4x4;
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
  if ((sub_239F2F3BC(v6) & 1) == 0 && (sub_239F2F3BC(v6) & 1) == 0)
  {
    v4 = sub_239F2F3F4(v6);
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
  if (self->super._timeSampledData.__end_ != begin)
  {
    v6[0] = 0;
    v6[1] = 0;
    sub_239E5F7D4(v6, begin + 1);
    if (sub_239F2F3BC(v6))
    {
      *(v3 + 8) = &off_284D16C58 + 2;
      operator new();
    }

    if (sub_239F2F3BC(v6))
    {
      *(v3 + 8) = &off_284D16C58 + 2;
      operator new();
    }

    if (sub_239F2F3F4(v6))
    {
      *(v3 + 8) = &off_284D16D10 + 2;
      operator new();
    }

    self = sub_239E5B240(v6);
  }

  *(v3 + 8) = 0;
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
  if ((sub_239F2F3BC(v11) & 1) != 0 || (sub_239F2F3BC(v11) & 1) != 0 || sub_239F2F3F4(v11))
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
  if ((sub_239F2F3BC(v11) & 1) != 0 || (sub_239F2F3BC(v11) & 1) != 0 || sub_239F2F3F4(v11))
  {
    v9 = a5 * a4;
    sub_239E5F7D4(v10, v11);
    sub_239F237C8(&self->super._timeSampledData, &v9);
    sub_239E5B240(v10);
  }

  sub_239E5B240(v11);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setDouble4x4:(__int128 *)a3 atTime:
{
  v13 = *MEMORY[0x277D85DE8];
  v9 = a3[3];
  v10 = a3[1];
  v5 = a3[2];
  v6 = *a3;
  v7 = a3[7];
  v8 = a3[5];
  v3 = a3[6];
  v4 = a3[4];
  v11 = 0;
  v12 = &off_284D16D10 + 2;
  operator new();
}

- (matrix_float4x4)float4x4AtTime:(NSTimeInterval)time
{
  v25 = *MEMORY[0x277D85DE8];
  v22 = 0.0;
  v23 = 0;
  v24 = 0;
  v19 = 0.0;
  v20 = 0;
  v21 = 0;
  sub_239F24610(&self->super._timeSampledData, &v22, &v19, time);
  if (!v24)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    goto LABEL_12;
  }

  if ((sub_239F2F3BC(&v23) & 1) == 0)
  {
    v5 = sub_239F2FE50(&v23);
    sub_239EF2160(&v23, v5);
    if (!v24)
    {
      goto LABEL_11;
    }
  }

  v6 = sub_239F2FEDC(&v23);
  v17 = v6[1];
  v18 = *v6;
  v15 = v6[3];
  v16 = v6[2];
  if (self->super._interpolation)
  {
    if (!v21)
    {
      goto LABEL_11;
    }

    if (v22 != v19)
    {
      if ((sub_239F2F3BC(&v20) & 1) != 0 || (v7 = sub_239F2FE50(&v20), sub_239EF2160(&v20, v7), v21))
      {
        v8 = sub_239F2FEDC(&v20);
        v9 = fmax(fmin((time - v22) / (v19 - v22), 1.0), 0.0);
        v17 = vmlaq_n_f32(vmulq_n_f32(v8[1], v9), v17, 1.0 - v9);
        v18 = vmlaq_n_f32(vmulq_n_f32(*v8, v9), v18, 1.0 - v9);
        v15 = vmlaq_n_f32(vmulq_n_f32(v8[3], v9), v15, 1.0 - v9);
        v16 = vmlaq_n_f32(vmulq_n_f32(v8[2], v9), v16, 1.0 - v9);
        goto LABEL_12;
      }

LABEL_11:
      v17 = *(MEMORY[0x277D860B8] + 16);
      v18 = *MEMORY[0x277D860B8];
      v15 = *(MEMORY[0x277D860B8] + 48);
      v16 = *(MEMORY[0x277D860B8] + 32);
    }
  }

LABEL_12:
  sub_239E5B240(&v20);
  sub_239E5B240(&v23);
  v10 = *MEMORY[0x277D85DE8];
  v12 = v17;
  v11 = v18;
  v14 = v15;
  v13 = v16;
  result.columns[3] = v14;
  result.columns[2] = v13;
  result.columns[1] = v12;
  result.columns[0] = v11;
  return result;
}

- (uint64_t)double4x4AtTime:(double)a3@<D0>
{
  v49 = *MEMORY[0x277D85DE8];
  v46 = 0.0;
  v47 = 0;
  v48 = 0;
  v43 = 0.0;
  v44 = 0;
  v45 = 0;
  sub_239F24610((a1 + 8), &v46, &v43, a3);
  if (v48)
  {
    if ((sub_239F2F3F4(&v47) & 1) != 0 || (v6 = sub_239F30278(&v47), sub_239EF2160(&v47, v6), v48))
    {
      v7 = sub_239F30304(&v47);
      v8 = v7[1];
      v9 = v7[2];
      v10 = v7[3];
      v11 = v7[4];
      v12 = v7[5];
      v13 = v7[6];
      v14 = v7[7];
      if (!*(a1 + 32))
      {
LABEL_9:
        *a2 = *v7;
        a2[1] = v8;
        a2[2] = v9;
        a2[3] = v10;
        a2[4] = v11;
        a2[5] = v12;
        a2[6] = v13;
        a2[7] = v14;
        goto LABEL_14;
      }

      v35 = *v7;
      v36 = v7[3];
      v37 = v7[1];
      v38 = v7[2];
      v39 = v7[4];
      v40 = v7[5];
      v41 = v7[6];
      v42 = v7[7];
      if (v45)
      {
        if (v46 == v43)
        {
          goto LABEL_9;
        }

        if ((sub_239F2F3F4(&v44) & 1) != 0 || (v15 = sub_239F30278(&v44), sub_239EF2160(&v44, v15), v45))
        {
          v16 = sub_239F30304(&v44);
          v17 = *(v16 + 32);
          v18 = *(v16 + 64);
          v19 = *(v16 + 96);
          v20 = fmax(fmin((a3 - v46) / (v43 - v46), 1.0), 0.0);
          v21 = 1.0 - v20;
          v22 = v21;
          *&v20 = v20;
          v23 = *&v20;
          v24 = vmulq_n_f64(*(v16 + 16), v23);
          v25 = vmulq_n_f64(*(v16 + 48), v23);
          v26 = vmulq_n_f64(*(v16 + 80), v23);
          v27 = vmulq_n_f64(*(v16 + 112), v23);
          *a2 = vmlaq_n_f64(vmulq_n_f64(*v16, v23), v35, v22);
          a2[1] = vmlaq_n_f64(v24, v37, v22);
          a2[2] = vmlaq_n_f64(vmulq_n_f64(v17, v23), v38, v22);
          a2[3] = vmlaq_n_f64(v25, v36, v22);
          a2[4] = vmlaq_n_f64(vmulq_n_f64(v18, v23), v39, v22);
          a2[5] = vmlaq_n_f64(v26, v40, v22);
          a2[6] = vmlaq_n_f64(vmulq_n_f64(v19, v23), v41, v22);
          a2[7] = vmlaq_n_f64(v27, v42, v22);
          goto LABEL_14;
        }
      }
    }

    v28 = MEMORY[0x277D860A0];
    v29 = *(MEMORY[0x277D860A0] + 80);
    a2[4] = *(MEMORY[0x277D860A0] + 64);
    a2[5] = v29;
    v30 = v28[7];
    a2[6] = v28[6];
    a2[7] = v30;
    v31 = v28[1];
    *a2 = *v28;
    a2[1] = v31;
    v32 = v28[3];
    a2[2] = v28[2];
    a2[3] = v32;
    goto LABEL_14;
  }

  a2[6] = 0u;
  a2[7] = 0u;
  a2[4] = 0u;
  a2[5] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
LABEL_14:
  sub_239E5B240(&v44);
  result = sub_239E5B240(&v47);
  v34 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)resetWithFloat4x4Array:(const matrix_float4x4 *)valuesArray atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)count
{
  v19 = *MEMORY[0x277D85DE8];
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
    v17 = *timesArray;
    v15 = valuesArray->columns[1];
    v16 = valuesArray->columns[0];
    v13 = valuesArray->columns[3];
    v14 = valuesArray->columns[2];
    v18 = &off_284D16C58 + 2;
    operator new();
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)resetWithDouble4x4Array:(const matrix_double4x4 *)valuesArray atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)count
{
  v23 = *MEMORY[0x277D85DE8];
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
    v21 = *timesArray;
    v19 = *&valuesArray->columns[1].f64[2];
    v20 = *&valuesArray->columns[0].f64[2];
    v15 = *valuesArray->columns[1].f64;
    v16 = *valuesArray->columns[0].f64;
    v17 = *&valuesArray->columns[3].f64[2];
    v18 = *&valuesArray->columns[2].f64[2];
    v13 = *valuesArray->columns[3].f64;
    v14 = *valuesArray->columns[2].f64;
    v22 = &off_284D16D10 + 2;
    operator new();
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (NSUInteger)getFloat4x4Array:(matrix_float4x4 *)valuesArray maxCount:(NSUInteger)maxCount
{
  v18[2] = *MEMORY[0x277D85DE8];
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
    v6 = 0;
    v7 = &valuesArray->columns[2];
    v8 = v4;
    do
    {
      v18[0] = 0;
      v18[1] = 0;
      begin = self->super._timeSampledData.__begin_;
      v17 = *(begin + v6);
      sub_239E5F7D4(v18, (begin + v6 + 8));
      if (sub_239F2F3BC(v18))
      {
        v10 = sub_239F2FEDC(v18);
      }

      else
      {
        v11 = sub_239F2FE50(v18);
        v10 = sub_239F2FEDC(v11);
      }

      v12 = v10[1];
      v13 = v10[2];
      v14 = v10[3];
      v7[-2] = *v10;
      v7[-1] = v12;
      *v7 = v13;
      v7[1] = v14;
      v7 += 4;
      sub_239E5B240(v18);
      v6 += 24;
      --v8;
    }

    while (v8);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v4;
}

- (NSUInteger)getDouble4x4Array:(matrix_double4x4 *)valuesArray maxCount:(NSUInteger)maxCount
{
  v22[2] = *MEMORY[0x277D85DE8];
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
    v6 = 0;
    v7 = &valuesArray->columns[2];
    v8 = v4;
    do
    {
      v22[0] = 0;
      v22[1] = 0;
      begin = self->super._timeSampledData.__begin_;
      v21 = *(begin + v6);
      sub_239E5F7D4(v22, (begin + v6 + 8));
      if (sub_239F2F3F4(v22))
      {
        v10 = sub_239F30304(v22);
      }

      else
      {
        v11 = sub_239F30278(v22);
        v10 = sub_239F30304(v11);
      }

      v12 = v10[1];
      v13 = v10[2];
      v14 = v10[3];
      v15 = v10[4];
      v16 = v10[5];
      v17 = v10[6];
      v18 = v10[7];
      *v7[-2].f64 = *v10;
      *&v7[-2].f64[2] = v12;
      *v7[-1].f64 = v13;
      *&v7[-1].f64[2] = v14;
      *v7->f64 = v15;
      *&v7->f64[2] = v16;
      *v7[1].f64 = v17;
      *&v7[1].f64[2] = v18;
      sub_239E5B240(v22);
      v7 += 4;
      v6 += 24;
      --v8;
    }

    while (v8);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v4;
}

@end