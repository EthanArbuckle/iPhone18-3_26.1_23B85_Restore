@interface MDLAnimatedVector3
- (NSUInteger)getDouble3Array:(vector_double3 *)valuesArray maxCount:(NSUInteger)maxCount;
- (NSUInteger)getFloat3Array:(vector_float3 *)valuesArray maxCount:(NSUInteger)maxCount;
- (VtValue)defaultVtValue;
- (id)copyWithZone:(_NSZone *)a3;
- (uint64_t)double3AtTime:(double)a3@<D0>;
- (unint64_t)precision;
- (vector_float3)float3AtTime:(NSTimeInterval)time;
- (void)resetWithDouble3Array:(const vector_double3 *)valuesArray atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)count;
- (void)resetWithFloat3Array:(const vector_float3 *)valuesArray atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)count;
- (void)resetWithUsdAttribute:(const void *)a3 timeScale:(double)a4;
- (void)resetWithUsdAttribute:(const void *)a3 timeScale:(double)a4 time:(double)a5;
- (void)setDouble3:(__int128 *)a3 atTime:;
@end

@implementation MDLAnimatedVector3

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = MDLAnimatedVector3;
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
  if ((sub_239E6A188(v6) & 1) == 0 && (sub_239F2B858(v6) & 1) == 0)
  {
    v4 = sub_239F26A84(v6);
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
  if (!sub_239F2B858(v6))
  {
    if (sub_239E6A188(v6))
    {
      *(v3 + 8) = &off_284D165E0 + 2;
      operator new();
    }

    if (sub_239F26A84(v6))
    {
      *(v3 + 8) = &off_284D16698 + 2;
      operator new();
    }

    self = sub_239E5B240(v6);
    goto LABEL_9;
  }

  *(v3 + 4) = 0;
  *v3 = 0;
  *(v3 + 8) = &off_284D16528 + 3;
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
  if ((sub_239F2B858(v11) & 1) != 0 || (sub_239E6A188(v11) & 1) != 0 || sub_239F26A84(v11))
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
  if ((sub_239F2B858(v11) & 1) != 0 || (sub_239E6A188(v11) & 1) != 0 || sub_239F26A84(v11))
  {
    v9 = a5 * a4;
    sub_239E5F7D4(v10, v11);
    sub_239F237C8(&self->super._timeSampledData, &v9);
    sub_239E5B240(v10);
  }

  sub_239E5B240(v11);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setDouble3:(__int128 *)a3 atTime:
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = *a3;
  v3 = *(a3 + 2);
  v5 = 0;
  v6 = &off_284D16698 + 2;
  operator new();
}

- (vector_float3)float3AtTime:(NSTimeInterval)time
{
  v21 = *MEMORY[0x277D85DE8];
  v18 = 0.0;
  v19 = 0;
  v20 = 0;
  v15 = 0.0;
  v16 = 0;
  v17 = 0;
  sub_239F24610(&self->super._timeSampledData, &v18, &v15, time);
  if (v20)
  {
    if ((sub_239E6A188(&v19) & 1) != 0 || (v4 = sub_239F2C218(&v19), sub_239EF2160(&v19, v4), v20))
    {
      v5 = sub_239EEDF80(&v19);
      if (self->super._interpolation)
      {
        v7 = *(v5 + 8);
        v6 = *v5;
        if (v17)
        {
          if (v18 != v15)
          {
            if ((sub_239E6A188(&v16) & 1) != 0 || (v8 = sub_239F2C218(&v16), sub_239EF2160(&v16, v8), v17))
            {
              v9 = sub_239EEDF80(&v16);
              v10 = *v9;
              v11 = *(v9 + 8);
            }
          }
        }
      }
    }
  }

  sub_239E5B240(&v16);
  v12 = sub_239E5B240(&v19);
  v14 = *MEMORY[0x277D85DE8];
  result.i64[1] = v13;
  result.i64[0] = v12;
  return result;
}

- (uint64_t)double3AtTime:(double)a3@<D0>
{
  v24 = *MEMORY[0x277D85DE8];
  v21 = 0.0;
  v22 = 0;
  v23 = 0;
  v18 = 0.0;
  v19 = 0;
  v20 = 0;
  sub_239F24610((a1 + 8), &v21, &v18, a3);
  if (!v23)
  {
    goto LABEL_11;
  }

  if ((sub_239F26A84(&v22) & 1) == 0)
  {
    v6 = sub_239F2C46C(&v22);
    sub_239EF2160(&v22, v6);
    if (!v23)
    {
      goto LABEL_11;
    }
  }

  v7 = sub_239F2C4F8(&v22);
  v8 = *v7;
  v9.f64[0] = *(v7 + 16);
  if (!*(a1 + 32))
  {
LABEL_10:
    v16 = v9;
    v17 = v8;
    goto LABEL_12;
  }

  if (!v20)
  {
LABEL_11:
    v16 = 0u;
    v17 = 0u;
    goto LABEL_12;
  }

  v16 = v9;
  v17 = *v7;
  if (v21 != v18)
  {
    if ((sub_239F26A84(&v19) & 1) != 0 || (v10 = sub_239F2C46C(&v19), sub_239EF2160(&v19, v10), v20))
    {
      v11 = sub_239F2C4F8(&v19);
      v12.f64[0] = v11[1].f64[0];
      v13 = fmax(fmin((a3 - v21) / (v18 - v21), 1.0), 0.0);
      v9 = vmlaq_n_f64(vmulq_n_f64(v12, v13), v16, 1.0 - v13);
      v8 = vmlaq_n_f64(vmulq_n_f64(*v11, v13), v17, 1.0 - v13);
      goto LABEL_10;
    }

    goto LABEL_11;
  }

LABEL_12:
  sub_239E5B240(&v19);
  result = sub_239E5B240(&v22);
  *a2 = v17;
  a2[1] = v16;
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)resetWithFloat3Array:(const vector_float3 *)valuesArray atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)count
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
    v15 = &off_284D165E0 + 2;
    operator new();
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)resetWithDouble3Array:(const vector_double3 *)valuesArray atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)count
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
    v13 = *&valuesArray->f64[2];
    v14 = *valuesArray->f64;
    v16 = &off_284D16698 + 2;
    operator new();
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (NSUInteger)getFloat3Array:(vector_float3 *)valuesArray maxCount:(NSUInteger)maxCount
{
  v17[2] = *MEMORY[0x277D85DE8];
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
      v17[0] = 0;
      v17[1] = 0;
      begin = self->super._timeSampledData.__begin_;
      v16 = *(begin + v7);
      sub_239E5F7D4(v17, (begin + v7 + 8));
      v10 = sub_239E6A188(v17);
      v11 = v17;
      if ((v10 & 1) == 0)
      {
        v11 = sub_239F2C218(v17);
      }

      v12 = sub_239EEDF80(v11);
      v13.i64[0] = *v12;
      v13.i32[2] = *(v12 + 8);
      *valuesArray++ = v13;
      sub_239E5B240(v17);
      v7 += 24;
      --v8;
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v4;
}

- (NSUInteger)getDouble3Array:(vector_double3 *)valuesArray maxCount:(NSUInteger)maxCount
{
  v17[2] = *MEMORY[0x277D85DE8];
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
      v17[0] = 0;
      v17[1] = 0;
      begin = self->super._timeSampledData.__begin_;
      v16 = *(begin + v7);
      sub_239E5F7D4(v17, (begin + v7 + 8));
      v10 = sub_239F26A84(v17);
      v11 = v17;
      if ((v10 & 1) == 0)
      {
        v11 = sub_239F2C46C(v17);
      }

      v12 = sub_239F2C4F8(v11);
      *&v13 = *(v12 + 16);
      *valuesArray->f64 = *v12;
      *&valuesArray->f64[2] = v13;
      ++valuesArray;
      sub_239E5B240(v17);
      v7 += 24;
      --v8;
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v4;
}

@end