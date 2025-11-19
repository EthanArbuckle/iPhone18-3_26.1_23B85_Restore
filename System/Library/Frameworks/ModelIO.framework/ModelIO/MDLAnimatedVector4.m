@interface MDLAnimatedVector4
- (NSUInteger)getDouble4Array:(vector_double4 *)valuesArray maxCount:(NSUInteger)maxCount;
- (NSUInteger)getFloat4Array:(vector_float4 *)valuesArray maxCount:(NSUInteger)maxCount;
- (VtValue)defaultVtValue;
- (id)copyWithZone:(_NSZone *)a3;
- (uint64_t)double4AtTime:(double)a3@<D0>;
- (unint64_t)precision;
- (vector_float4)float4AtTime:(NSTimeInterval)time;
- (void)resetWithDouble4Array:(const vector_double4 *)valuesArray atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)count;
- (void)resetWithFloat4Array:(const vector_float4 *)valuesArray atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)count;
- (void)resetWithUsdAttribute:(const void *)a3 timeScale:(double)a4;
- (void)resetWithUsdAttribute:(const void *)a3 timeScale:(double)a4 time:(double)a5;
- (void)setDouble4:(__int128 *)a3 atTime:;
@end

@implementation MDLAnimatedVector4

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = MDLAnimatedVector4;
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
  if ((sub_239E6A150(v6) & 1) == 0 && (sub_239F2CB70(v6) & 1) == 0)
  {
    v4 = sub_239F2CBA8(v6);
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
    v3[1] = 0;
    goto LABEL_10;
  }

  v6[0] = 0;
  v6[1] = 0;
  sub_239E5F7D4(v6, begin + 1);
  if (!sub_239F2CB70(v6))
  {
    if (sub_239E6A150(v6))
    {
      v3[1] = &off_284D163B8 + 2;
      operator new();
    }

    if (sub_239F2CBA8(v6))
    {
      v3[1] = &off_284D16470 + 2;
      operator new();
    }

    self = sub_239E5B240(v6);
    goto LABEL_9;
  }

  *v3 = 0;
  v3[1] = &off_284D16300 + 3;
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
  if ((sub_239F2CB70(v11) & 1) != 0 || (sub_239E6A150(v11) & 1) != 0 || sub_239F2CBA8(v11))
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
  if ((sub_239F2CB70(v11) & 1) != 0 || (sub_239E6A150(v11) & 1) != 0 || sub_239F2CBA8(v11))
  {
    v9 = a5 * a4;
    sub_239E5F7D4(v10, v11);
    sub_239F237C8(&self->super._timeSampledData, &v9);
    sub_239E5B240(v10);
  }

  sub_239E5B240(v11);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setDouble4:(__int128 *)a3 atTime:
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *a3;
  v4 = a3[1];
  v5 = 0;
  v6 = &off_284D16470 + 2;
  operator new();
}

- (vector_float4)float4AtTime:(NSTimeInterval)time
{
  v21 = *MEMORY[0x277D85DE8];
  v18 = 0.0;
  v19 = 0;
  v20 = 0;
  v15 = 0.0;
  v16 = 0;
  v17 = 0;
  sub_239F24610(&self->super._timeSampledData, &v18, &v15, time);
  v14 = 0u;
  if (v20)
  {
    if ((sub_239E6A150(&v19) & 1) != 0 || (v5 = sub_239F2D53C(&v19), sub_239EF2160(&v19, v5), v20))
    {
      v6 = sub_239EEDEEC(&v19);
      v7 = *v6;
      if (!self->super._interpolation)
      {
LABEL_11:
        v14 = v7;
        goto LABEL_12;
      }

      v13 = *v6;
      if (v17)
      {
        if (v18 == v15)
        {
          v7 = *v6;
          goto LABEL_11;
        }

        if ((sub_239E6A150(&v16) & 1) != 0 || (v8 = sub_239F2D53C(&v16), sub_239EF2160(&v16, v8), v17))
        {
          v9 = sub_239EEDEEC(&v16);
          v10 = fmax(fmin((time - v18) / (v15 - v18), 1.0), 0.0);
          v7 = vmlaq_n_f32(vmulq_n_f32(*v9, v10), v13, 1.0 - v10);
          goto LABEL_11;
        }
      }
    }
  }

LABEL_12:
  sub_239E5B240(&v16);
  sub_239E5B240(&v19);
  v11 = *MEMORY[0x277D85DE8];
  return v14;
}

- (uint64_t)double4AtTime:(double)a3@<D0>
{
  v23 = *MEMORY[0x277D85DE8];
  v20 = 0.0;
  v21 = 0;
  v22 = 0;
  v17 = 0.0;
  v18 = 0;
  v19 = 0;
  sub_239F24610((a1 + 8), &v20, &v17, a3);
  if (!v22)
  {
    goto LABEL_12;
  }

  if ((sub_239F2CBA8(&v21) & 1) == 0)
  {
    v6 = sub_239F2D79C(&v21);
    sub_239EF2160(&v21, v6);
    if (!v22)
    {
      goto LABEL_12;
    }
  }

  v7 = sub_239F2D828(&v21);
  v8 = *v7;
  v16 = *v7;
  v9 = v7[1];
  if (!*(a1 + 32))
  {
    goto LABEL_13;
  }

  if (!v19)
  {
    goto LABEL_12;
  }

  v15 = v7[1];
  if (v20 != v17)
  {
    if ((sub_239F2CBA8(&v18) & 1) != 0 || (v10 = sub_239F2D79C(&v18), sub_239EF2160(&v18, v10), v19))
    {
      v11 = sub_239F2D828(&v18);
      v12 = fmax(fmin((a3 - v20) / (v17 - v20), 1.0), 0.0);
      v9 = vmlaq_n_f64(vmulq_n_f64(v11[1], v12), v15, 1.0 - v12);
      v8 = vmlaq_n_f64(vmulq_n_f64(*v11, v12), v16, 1.0 - v12);
      goto LABEL_13;
    }

LABEL_12:
    v8 = 0uLL;
    v9 = 0uLL;
    goto LABEL_13;
  }

  v9 = v7[1];
LABEL_13:
  *a2 = v8;
  a2[1] = v9;
  sub_239E5B240(&v18);
  result = sub_239E5B240(&v21);
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)resetWithFloat4Array:(const vector_float4 *)valuesArray atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)count
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
    v15 = &off_284D163B8 + 2;
    operator new();
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)resetWithDouble4Array:(const vector_double4 *)valuesArray atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)count
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
    v13 = *valuesArray->f64;
    v14 = *&valuesArray->f64[2];
    v16 = &off_284D16470 + 2;
    operator new();
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (NSUInteger)getFloat4Array:(vector_float4 *)valuesArray maxCount:(NSUInteger)maxCount
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
      v10 = sub_239E6A150(v15);
      v11 = v15;
      if ((v10 & 1) == 0)
      {
        v11 = sub_239F2D53C(v15);
      }

      *valuesArray++ = *sub_239EEDEEC(v11);
      sub_239E5B240(v15);
      v7 += 24;
      --v8;
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v4;
}

- (NSUInteger)getDouble4Array:(vector_double4 *)valuesArray maxCount:(NSUInteger)maxCount
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
      v10 = sub_239F2CBA8(v17);
      v11 = v17;
      if ((v10 & 1) == 0)
      {
        v11 = sub_239F2D79C(v17);
      }

      v12 = sub_239F2D828(v11);
      v13 = v12[1];
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