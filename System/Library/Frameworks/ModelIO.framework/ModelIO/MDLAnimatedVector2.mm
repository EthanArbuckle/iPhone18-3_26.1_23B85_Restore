@interface MDLAnimatedVector2
- (NSUInteger)getDouble2Array:(vector_double2 *)valuesArray maxCount:(NSUInteger)maxCount;
- (NSUInteger)getFloat2Array:(vector_float2 *)valuesArray maxCount:(NSUInteger)maxCount;
- (VtValue)defaultVtValue;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)precision;
- (vector_double2)double2AtTime:(NSTimeInterval)time;
- (vector_float2)float2AtTime:(NSTimeInterval)time;
- (void)resetWithDouble2Array:(const vector_double2 *)valuesArray atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)count;
- (void)resetWithFloat2Array:(const vector_float2 *)valuesArray atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)count;
- (void)resetWithUsdAttribute:(const void *)attribute timeScale:(double)scale;
- (void)resetWithUsdAttribute:(const void *)attribute timeScale:(double)scale time:(double)time;
- (void)setFloat2:(vector_float2)value atTime:(NSTimeInterval)time;
@end

@implementation MDLAnimatedVector2

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = MDLAnimatedVector2;
  return [(MDLAnimatedValue *)&v4 copyWithZone:zone];
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
  if ((sub_239F2A554(v6) & 1) == 0 && (sub_239F2A58C(v6) & 1) == 0)
  {
    v4 = sub_239F2A5C4(v6);
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
    goto LABEL_10;
  }

  v6[0] = 0;
  v6[1] = 0;
  sub_239E5F7D4(v6, begin + 1);
  if (!sub_239F2A58C(v6))
  {
    if (sub_239F2A554(v6))
    {
      *v3 = 0;
      v3[1] = &off_284D16808 + 3;
      goto LABEL_8;
    }

    if (sub_239F2A5C4(v6))
    {
      v3[1] = &off_284D168C0 + 2;
      operator new();
    }

    self = sub_239E5B240(v6);
LABEL_10:
    v3[1] = 0;
    goto LABEL_11;
  }

  v3[1] = &off_284D16750 + 3;
  *v3 = 0;
LABEL_8:
  self = sub_239E5B240(v6);
LABEL_11:
  v5 = *MEMORY[0x277D85DE8];
  result._info._ptrAndBits = a2;
  result._storage = self;
  return result;
}

- (void)resetWithUsdAttribute:(const void *)attribute timeScale:(double)scale
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
  if ((sub_239F2A58C(v11) & 1) != 0 || (sub_239F2A554(v11) & 1) != 0 || sub_239F2A5C4(v11))
  {
    v9 = 0;
    sub_239E5F7D4(v10, v11);
    sub_239F237C8(&self->super._timeSampledData, &v9);
    sub_239E5B240(v10);
  }

  sub_239E5B240(v11);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)resetWithUsdAttribute:(const void *)attribute timeScale:(double)scale time:(double)time
{
  v11[2] = *MEMORY[0x277D85DE8];
  v11[0] = 0;
  v11[1] = 0;
  pxrInternal__aapl__pxrReserved__::UsdAttribute::Get();
  if ((sub_239F2A58C(v11) & 1) != 0 || (sub_239F2A554(v11) & 1) != 0 || sub_239F2A5C4(v11))
  {
    v9 = time * scale;
    sub_239E5F7D4(v10, v11);
    sub_239F237C8(&self->super._timeSampledData, &v9);
    sub_239E5B240(v10);
  }

  sub_239E5B240(v11);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setFloat2:(vector_float2)value atTime:(NSTimeInterval)time
{
  v16[2] = *MEMORY[0x277D85DE8];
  v16[1] = &off_284D16808 + 3;
  v16[0] = value;
  begin = self->super._timeSampledData.__begin_;
  p_timeSampledData = &self->super._timeSampledData;
  if (self->super._timeSampledData.__end_ != begin)
  {
    v13 = 0.0;
    v14[0] = 0;
    sub_239E5F7D4(&v13, begin + 1);
    if ((sub_239F2A554(&v13) & 1) == 0)
    {
      objc_msgSend_defaultVtValue(self, v8, v9);
      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(v15);
      v11 = sub_239F3090C(v16, Typeid);
      sub_239EF2160(v16, v11);
      sub_239E5B240(v15);
    }

    sub_239E5B240(&v13);
  }

  v13 = time;
  sub_239E5F7D4(v14, v16);
  sub_239F23C24(p_timeSampledData, &v13);
  sub_239E5B240(v14);
  sub_239E5B240(v16);
  v12 = *MEMORY[0x277D85DE8];
}

- (vector_float2)float2AtTime:(NSTimeInterval)time
{
  v20 = *MEMORY[0x277D85DE8];
  v17 = 0.0;
  v18 = 0;
  v19 = 0;
  v14 = 0.0;
  v15 = 0;
  v16 = 0;
  sub_239F24610(&self->super._timeSampledData, &v17, &v14, time);
  v5 = 0;
  if (v19)
  {
    if ((sub_239F2A554(&v18) & 1) != 0 || (v6 = sub_239F2AEF4(&v18), sub_239EF2160(&v18, v6), v19))
    {
      v7 = sub_239F2AF80(&v18);
      v8 = *v7;
      if (!self->super._interpolation)
      {
LABEL_7:
        v5 = *v7;
        goto LABEL_8;
      }

      if (v16)
      {
        if (v17 == v14)
        {
          goto LABEL_7;
        }

        if ((sub_239F2A554(&v15) & 1) != 0 || (v11 = sub_239F2AEF4(&v15), sub_239EF2160(&v15, v11), v16))
        {
          v12 = sub_239F2AF80(&v15);
          v13 = fmax(fmin((time - v17) / (v14 - v17), 1.0), 0.0);
          v5 = vmla_n_f32(vmul_n_f32(*v12, v13), v8, 1.0 - v13);
        }
      }
    }
  }

LABEL_8:
  sub_239E5B240(&v15);
  sub_239E5B240(&v18);
  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

- (vector_double2)double2AtTime:(NSTimeInterval)time
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
    if ((sub_239F2A5C4(&v19) & 1) != 0 || (v5 = sub_239F2B1B8(&v19), sub_239EF2160(&v19, v5), v20))
    {
      v6 = sub_239F2B244(&v19);
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

        if ((sub_239F2A5C4(&v16) & 1) != 0 || (v8 = sub_239F2B1B8(&v16), sub_239EF2160(&v16, v8), v17))
        {
          v9 = sub_239F2B244(&v16);
          v10 = fmax(fmin((time - v18) / (v15 - v18), 1.0), 0.0);
          v7 = vmlaq_n_f64(vmulq_n_f64(*v9, v10), v13, 1.0 - v10);
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

- (void)resetWithFloat2Array:(const vector_float2 *)valuesArray atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)count
{
  v17[2] = *MEMORY[0x277D85DE8];
  begin = self->super._timeSampledData.__begin_;
  end = self->super._timeSampledData.__end_;
  p_timeSampledData = &self->super._timeSampledData;
  if (end != begin)
  {
    do
    {
      v12 = (end - 24);
      sub_239E5B240(end - 16);
      end = v12;
    }

    while (v12 != begin);
  }

  for (self->super._timeSampledData.__end_ = begin; count; --count)
  {
    v13 = *timesArray;
    v14 = *valuesArray;
    v17[1] = &off_284D16808 + 3;
    v16 = v13;
    v17[0] = v14;
    sub_239F237C8(p_timeSampledData, &v16);
    sub_239E5B240(v17);
    ++valuesArray;
    ++timesArray;
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)resetWithDouble2Array:(const vector_double2 *)valuesArray atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)count
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
    v15 = &off_284D168C0 + 2;
    operator new();
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (NSUInteger)getFloat2Array:(vector_float2 *)valuesArray maxCount:(NSUInteger)maxCount
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
      v10 = sub_239F2A554(v15);
      v11 = v15;
      if ((v10 & 1) == 0)
      {
        v11 = sub_239F2AEF4(v15);
      }

      *valuesArray++ = *sub_239F2AF80(v11);
      sub_239E5B240(v15);
      v7 += 24;
      --v8;
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v4;
}

- (NSUInteger)getDouble2Array:(vector_double2 *)valuesArray maxCount:(NSUInteger)maxCount
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
      v10 = sub_239F2A5C4(v15);
      v11 = v15;
      if ((v10 & 1) == 0)
      {
        v11 = sub_239F2B1B8(v15);
      }

      *valuesArray++ = *sub_239F2B244(v11);
      sub_239E5B240(v15);
      v7 += 24;
      --v8;
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v4;
}

@end