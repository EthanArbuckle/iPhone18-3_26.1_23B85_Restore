@interface MDLAnimatedScalar
- (NSUInteger)getDoubleArray:(double *)valuesArray maxCount:(NSUInteger)maxCount;
- (NSUInteger)getFloatArray:(float *)valuesArray maxCount:(NSUInteger)maxCount;
- (VtValue)defaultVtValue;
- (double)doubleAtTime:(NSTimeInterval)time;
- (float)floatAtTime:(NSTimeInterval)time;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)precision;
- (void)resetWithDoubleArray:(const double *)valuesArray atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)count;
- (void)resetWithFloatArray:(const float *)valuesArray atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)count;
- (void)resetWithUsdAttribute:(const void *)attribute timeScale:(double)scale;
- (void)resetWithUsdAttribute:(const void *)attribute timeScale:(double)scale time:(double)time;
- (void)setDouble:(double)value atTime:(NSTimeInterval)time;
- (void)setFloat:(float)value atTime:(NSTimeInterval)time;
@end

@implementation MDLAnimatedScalar

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = MDLAnimatedScalar;
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
  if ((sub_239E6A084(v6) & 1) == 0 && (sub_239F2940C(v6) & 1) == 0)
  {
    v4 = sub_239F24D70(v6);
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
  if (!sub_239F2940C(v6))
  {
    if (sub_239E6A084(v6))
    {
      *(v3 + 8) = &unk_284D15333;
      *v3 = 0;
      goto LABEL_8;
    }

    if (sub_239F24D70(v6))
    {
      *v3 = 0;
      *(v3 + 8) = &unk_284D153EB;
      goto LABEL_8;
    }

    self = sub_239E5B240(v6);
LABEL_10:
    *(v3 + 8) = 0;
    goto LABEL_11;
  }

  *(v3 + 8) = &off_284D15610 + 3;
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
  if ((sub_239F2940C(v11) & 1) != 0 || (sub_239E6A084(v11) & 1) != 0 || sub_239F24D70(v11))
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
  if ((sub_239F2940C(v11) & 1) != 0 || (sub_239E6A084(v11) & 1) != 0 || sub_239F24D70(v11))
  {
    v9 = time * scale;
    sub_239E5F7D4(v10, v11);
    sub_239F237C8(&self->super._timeSampledData, &v9);
    sub_239E5B240(v10);
  }

  sub_239E5B240(v11);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setFloat:(float)value atTime:(NSTimeInterval)time
{
  v16[2] = *MEMORY[0x277D85DE8];
  v16[1] = &unk_284D15333;
  v16[0] = LODWORD(value);
  begin = self->super._timeSampledData.__begin_;
  p_timeSampledData = &self->super._timeSampledData;
  if (self->super._timeSampledData.__end_ != begin)
  {
    v13 = 0.0;
    v14[0] = 0;
    sub_239E5F7D4(&v13, begin + 1);
    if ((sub_239E6A084(&v13) & 1) == 0)
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

- (void)setDouble:(double)value atTime:(NSTimeInterval)time
{
  v16[2] = *MEMORY[0x277D85DE8];
  v16[1] = &unk_284D153EB;
  *v16 = value;
  begin = self->super._timeSampledData.__begin_;
  p_timeSampledData = &self->super._timeSampledData;
  if (self->super._timeSampledData.__end_ != begin)
  {
    v13 = 0.0;
    v14[0] = 0;
    sub_239E5F7D4(&v13, begin + 1);
    if ((sub_239F24D70(&v13) & 1) == 0)
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

- (float)floatAtTime:(NSTimeInterval)time
{
  v20 = *MEMORY[0x277D85DE8];
  v17 = 0.0;
  v18 = 0;
  v19 = 0;
  v14 = 0.0;
  v15 = 0;
  v16 = 0;
  sub_239F24610(&self->super._timeSampledData, &v17, &v14, time);
  v5 = 0.0;
  if (v19)
  {
    if ((sub_239E6A084(&v18) & 1) != 0 || (v6 = sub_239F29CD0(&v18), sub_239EF2160(&v18, v6), v19))
    {
      v7 = sub_239E6A0BC(&v18);
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

        if ((sub_239E6A084(&v15) & 1) != 0 || (v11 = sub_239F29CD0(&v15), sub_239EF2160(&v15, v11), v16))
        {
          v12 = sub_239E6A0BC(&v15);
          v13 = fmax(fmin((time - v17) / (v14 - v17), 1.0), 0.0);
          v5 = v8 + ((*v12 - v8) * v13);
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

- (double)doubleAtTime:(NSTimeInterval)time
{
  v19 = *MEMORY[0x277D85DE8];
  v16 = 0.0;
  v17 = 0;
  v18 = 0;
  v13 = 0.0;
  v14 = 0;
  v15 = 0;
  sub_239F24610(&self->super._timeSampledData, &v16, &v13, time);
  v5 = 0.0;
  if (v18)
  {
    if ((sub_239F24D70(&v17) & 1) != 0 || (v6 = sub_239F29EF4(&v17), sub_239EF2160(&v17, v6), v18))
    {
      v7 = sub_239F29F80(&v17);
      v8 = *v7;
      if (!self->super._interpolation)
      {
LABEL_7:
        v5 = *v7;
        goto LABEL_8;
      }

      if (v15)
      {
        if (v16 == v13)
        {
          goto LABEL_7;
        }

        if ((sub_239F24D70(&v14) & 1) != 0 || (v11 = sub_239F29EF4(&v14), sub_239EF2160(&v14, v11), v15))
        {
          v12 = sub_239F29F80(&v14);
          v5 = v8 + fmax(fmin((time - v16) / (v13 - v16), 1.0), 0.0) * (*v12 - v8);
        }
      }
    }
  }

LABEL_8:
  sub_239E5B240(&v14);
  sub_239E5B240(&v17);
  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)resetWithFloatArray:(const float *)valuesArray atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)count
{
  v18 = *MEMORY[0x277D85DE8];
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
    v15 = *timesArray;
    v13 = *valuesArray;
    v17 = &unk_284D15333;
    v16 = v13;
    sub_239F237C8(p_timeSampledData, &v15);
    sub_239E5B240(&v16);
    ++valuesArray;
    ++timesArray;
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)resetWithDoubleArray:(const double *)valuesArray atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)count
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
    v17[1] = &unk_284D153EB;
    v16 = v13;
    v17[0] = v14;
    sub_239F237C8(p_timeSampledData, &v16);
    sub_239E5B240(v17);
    ++valuesArray;
    ++timesArray;
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (NSUInteger)getFloatArray:(float *)valuesArray maxCount:(NSUInteger)maxCount
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
      v10 = sub_239E6A084(v15);
      v11 = v15;
      if ((v10 & 1) == 0)
      {
        v11 = sub_239F29CD0(v15);
      }

      *valuesArray++ = *sub_239E6A0BC(v11);
      sub_239E5B240(v15);
      v7 += 24;
      --v8;
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v4;
}

- (NSUInteger)getDoubleArray:(double *)valuesArray maxCount:(NSUInteger)maxCount
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
      v10 = sub_239F24D70(v15);
      v11 = v15;
      if ((v10 & 1) == 0)
      {
        v11 = sub_239F29EF4(v15);
      }

      *valuesArray++ = *sub_239F29F80(v11);
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