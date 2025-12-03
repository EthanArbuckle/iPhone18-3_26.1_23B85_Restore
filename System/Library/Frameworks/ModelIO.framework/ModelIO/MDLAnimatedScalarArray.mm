@interface MDLAnimatedScalarArray
- (NSUInteger)getDoubleArray:(double *)array maxCount:(NSUInteger)maxCount atTime:(NSTimeInterval)time;
- (NSUInteger)getDoubleArray:(double *)valuesArray maxCount:(NSUInteger)maxCount;
- (NSUInteger)getFloatArray:(float *)array maxCount:(NSUInteger)maxCount atTime:(NSTimeInterval)time;
- (NSUInteger)getFloatArray:(float *)valuesArray maxCount:(NSUInteger)maxCount;
- (VtValue)defaultVtValue;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initWithElementCount:(NSUInteger)arrayElementCount;
- (unint64_t)precision;
- (void)resetWithDoubleArray:(const double *)valuesArray count:(NSUInteger)valuesCount atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)timesCount;
- (void)resetWithFloatArray:(const float *)valuesArray count:(NSUInteger)valuesCount atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)timesCount;
- (void)resetWithUsdAttribute:(const void *)attribute timeScale:(double)scale;
- (void)resetWithUsdAttribute:(const void *)attribute timeScale:(double)scale time:(double)time;
- (void)setDoubleArray:(const double *)array count:(NSUInteger)count atTime:(NSTimeInterval)time;
- (void)setFloatArray:(const float *)array count:(NSUInteger)count atTime:(NSTimeInterval)time;
@end

@implementation MDLAnimatedScalarArray

- (id)initWithElementCount:(NSUInteger)arrayElementCount
{
  v8.receiver = self;
  v8.super_class = MDLAnimatedScalarArray;
  v4 = [(MDLAnimatedValue *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_elementCount = arrayElementCount;
    v6 = v4;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = MDLAnimatedScalarArray;
  result = [(MDLAnimatedValue *)&v5 copyWithZone:zone];
  *(result + 5) = self->_elementCount;
  return result;
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
  if ((sub_239EC8434(v6) & 1) == 0 && (sub_239F2320C(v6) & 1) == 0)
  {
    v4 = sub_239F23244(v6);
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
  v7[2] = *MEMORY[0x277D85DE8];
  begin = self->super._timeSampledData.__begin_;
  if (self->super._timeSampledData.__end_ != begin)
  {
    v7[0] = 0;
    v7[1] = 0;
    sub_239E5F7D4(v7, begin + 1);
    if (sub_239F2320C(v7))
    {
      sub_239F23430(v6, 0);
      *(v3 + 8) = &off_284D15A60;
      sub_239EB5D90();
    }

    if (sub_239EC8434(v7))
    {
      sub_239EC7200(v6, 0);
      *(v3 + 8) = &off_284D158F0;
      sub_239ECA11C();
    }

    if (sub_239F23244(v7))
    {
      sub_239EC793C(v6, 0);
      *(v3 + 8) = &off_284D159A8;
      sub_239ECA11C();
    }

    self = sub_239E5B240(v7);
  }

  *(v3 + 8) = 0;
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
  if ((sub_239F2320C(v11) & 1) != 0 || (sub_239EC8434(v11) & 1) != 0 || sub_239F23244(v11))
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
  if ((sub_239F2320C(v11) & 1) != 0 || (sub_239EC8434(v11) & 1) != 0 || sub_239F23244(v11))
  {
    v9 = time * scale;
    sub_239E5F7D4(v10, v11);
    sub_239F237C8(&self->super._timeSampledData, &v9);
    sub_239E5B240(v10);
  }

  sub_239E5B240(v11);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setFloatArray:(const float *)array count:(NSUInteger)count atTime:(NSTimeInterval)time
{
  v15 = *MEMORY[0x277D85DE8];
  elementCount = self->_elementCount;
  if (elementCount == count)
  {
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    sub_239EC7200(v11, count);
    if (count)
    {
      v8 = 0;
      do
      {
        v9 = array[v8];
        sub_239EBF2E0(v11);
        *(v12 + 4 * v8++) = v9;
      }

      while (count != v8);
    }

    v13 = 0;
    v14 = &off_284D158F0;
    sub_239ECA11C();
  }

  NSLog(&cfstr_ArrayCountLuHa_1.isa, a2, array, time, count, elementCount);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)setDoubleArray:(const double *)array count:(NSUInteger)count atTime:(NSTimeInterval)time
{
  v15 = *MEMORY[0x277D85DE8];
  elementCount = self->_elementCount;
  if (elementCount == count)
  {
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    sub_239EC793C(v11, count);
    if (count)
    {
      v8 = 0;
      do
      {
        v9 = array[v8];
        sub_239ECA544(v11);
        *(v12 + 8 * v8++) = v9;
      }

      while (count != v8);
    }

    v13 = 0;
    v14 = &off_284D159A8;
    sub_239ECA11C();
  }

  NSLog(&cfstr_ArrayCountLuHa_1.isa, a2, array, time, count, elementCount);
  v10 = *MEMORY[0x277D85DE8];
}

- (NSUInteger)getFloatArray:(float *)array maxCount:(NSUInteger)maxCount atTime:(NSTimeInterval)time
{
  v5 = maxCount;
  v32 = *MEMORY[0x277D85DE8];
  elementCount = self->_elementCount;
  if (elementCount <= maxCount)
  {
    v29 = 0.0;
    v30 = 0;
    v31 = 0;
    v26 = 0.0;
    v27 = 0;
    v28 = 0;
    v25 = 0;
    memset(v24, 0, sizeof(v24));
    v23 = 0;
    memset(v22, 0, sizeof(v22));
    sub_239F24610(&self->super._timeSampledData, &v29, &v26, time);
    if (v31)
    {
      if ((sub_239EC8434(&v30) & 1) != 0 || (v10 = sub_239F24810(&v30), sub_239EF2160(&v30, v10), v31))
      {
        v11 = sub_239EC4DC4(&v30);
        sub_239EBEACC(v24, v11);
        if (!self->super._interpolation)
        {
          if (*&v24[0] < v5)
          {
            v5 = *&v24[0];
          }

          if (v5)
          {
            for (i = 0; i != v5; ++i)
            {
              sub_239EBF2E0(v24);
              array[i] = *(v25 + 4 * i);
            }
          }

          goto LABEL_32;
        }

        if (v28)
        {
          if (v29 == v26)
          {
            if (*&v24[0] < v5)
            {
              v5 = *&v24[0];
            }

            if (v5)
            {
              for (j = 0; j != v5; ++j)
              {
                sub_239EBF2E0(v24);
                array[j] = *(v25 + 4 * j);
              }
            }

            goto LABEL_32;
          }

          if ((sub_239E6A084(&v27) & 1) != 0 || (v14 = sub_239F24810(&v27), sub_239EF2160(&v27, v14), v28))
          {
            v15 = sub_239EC4DC4(&v27);
            sub_239EBEACC(v22, v15);
            v16 = *&v24[0];
            if (*&v22[0] < *&v24[0])
            {
              v16 = *&v22[0];
            }

            if (v16 < v5)
            {
              v5 = v16;
            }

            if (v5)
            {
              v17 = 0;
              v18 = fmax(fmin((time - v29) / (v26 - v29), 1.0), 0.0);
              do
              {
                sub_239EBF2E0(v24);
                v19 = *(v25 + 4 * v17);
                sub_239EBF2E0(v22);
                array[v17] = v19 + ((*(v23 + 4 * v17) - v19) * v18);
                ++v17;
              }

              while (v5 != v17);
            }

            goto LABEL_32;
          }
        }
      }
    }

    v5 = 0;
LABEL_32:
    sub_239E56C80(v22);
    sub_239E56C80(v24);
    sub_239E5B240(&v27);
    sub_239E5B240(&v30);
    goto LABEL_33;
  }

  NSLog(&cfstr_ArrayCountLuHa_1.isa, a2, array, time, maxCount, elementCount);
  v5 = 0;
LABEL_33:
  v20 = *MEMORY[0x277D85DE8];
  return v5;
}

- (NSUInteger)getDoubleArray:(double *)array maxCount:(NSUInteger)maxCount atTime:(NSTimeInterval)time
{
  v5 = maxCount;
  v32 = *MEMORY[0x277D85DE8];
  elementCount = self->_elementCount;
  if (elementCount <= maxCount)
  {
    v29 = 0.0;
    v30 = 0;
    v31 = 0;
    v26 = 0.0;
    v27 = 0;
    v28 = 0;
    v25 = 0;
    memset(v24, 0, sizeof(v24));
    v23 = 0;
    memset(v22, 0, sizeof(v22));
    sub_239F24610(&self->super._timeSampledData, &v29, &v26, time);
    if (v31)
    {
      if ((sub_239F23244(&v30) & 1) != 0 || (v10 = sub_239F24B9C(&v30), sub_239EF2160(&v30, v10), v31))
      {
        v11 = sub_239F24C28(&v30);
        sub_239F24CBC(v24, v11);
        if (!self->super._interpolation)
        {
          if (*&v24[0] < v5)
          {
            v5 = *&v24[0];
          }

          if (v5)
          {
            for (i = 0; i != v5; ++i)
            {
              sub_239ECA544(v24);
              array[i] = *(v25 + 8 * i);
            }
          }

          goto LABEL_32;
        }

        if (v28)
        {
          if (v29 == v26)
          {
            if (*&v24[0] < v5)
            {
              v5 = *&v24[0];
            }

            if (v5)
            {
              for (j = 0; j != v5; ++j)
              {
                sub_239ECA544(v24);
                array[j] = *(v25 + 8 * j);
              }
            }

            goto LABEL_32;
          }

          if ((sub_239F24D70(&v27) & 1) != 0 || (v14 = sub_239F24B9C(&v27), sub_239EF2160(&v27, v14), v28))
          {
            v15 = sub_239F24C28(&v27);
            sub_239F24CBC(v22, v15);
            v16 = *&v24[0];
            if (*&v22[0] < *&v24[0])
            {
              v16 = *&v22[0];
            }

            if (v16 < v5)
            {
              v5 = v16;
            }

            if (v5)
            {
              v17 = 0;
              v18 = fmax(fmin((time - v29) / (v26 - v29), 1.0), 0.0);
              do
              {
                sub_239ECA544(v24);
                v19 = *(v25 + 8 * v17);
                sub_239ECA544(v22);
                array[v17] = v19 + (*(v23 + 8 * v17) - v19) * v18;
                ++v17;
              }

              while (v5 != v17);
            }

            goto LABEL_32;
          }
        }
      }
    }

    v5 = 0;
LABEL_32:
    sub_239E56C80(v22);
    sub_239E56C80(v24);
    sub_239E5B240(&v27);
    sub_239E5B240(&v30);
    goto LABEL_33;
  }

  NSLog(&cfstr_ArrayCountLuHa_1.isa, a2, array, time, maxCount, elementCount);
  v5 = 0;
LABEL_33:
  v20 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)resetWithFloatArray:(const float *)valuesArray count:(NSUInteger)valuesCount atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)timesCount
{
  v21 = *MEMORY[0x277D85DE8];
  elementCount = self->_elementCount;
  if (elementCount * timesCount == valuesCount)
  {
    begin = self->super._timeSampledData.__begin_;
    end = self->super._timeSampledData.__end_;
    if (end != begin)
    {
      do
      {
        v12 = (end - 24);
        sub_239E5B240(end - 16);
        end = v12;
      }

      while (v12 != begin);
      LODWORD(elementCount) = self->_elementCount;
    }

    self->super._timeSampledData.__end_ = begin;
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    sub_239EC7200(v17, elementCount);
    if (timesCount)
    {
      if (self->_elementCount)
      {
        v13 = 0;
        do
        {
          v14 = valuesArray[v13];
          sub_239EBF2E0(v17);
          *(v18 + 4 * v13++) = v14;
        }

        while (v13 < self->_elementCount);
      }

      v19 = *timesArray;
      v20 = &off_284D158F0;
      sub_239ECA11C();
    }

    sub_239E56C80(v17);
  }

  else
  {
    NSLog(&cfstr_ValueArrayCoun.isa, a2, timesCount, elementCount, elementCount * timesCount, valuesCount);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)resetWithDoubleArray:(const double *)valuesArray count:(NSUInteger)valuesCount atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)timesCount
{
  v21 = *MEMORY[0x277D85DE8];
  elementCount = self->_elementCount;
  if (elementCount * timesCount == valuesCount)
  {
    begin = self->super._timeSampledData.__begin_;
    end = self->super._timeSampledData.__end_;
    if (end != begin)
    {
      do
      {
        v12 = (end - 24);
        sub_239E5B240(end - 16);
        end = v12;
      }

      while (v12 != begin);
      LODWORD(elementCount) = self->_elementCount;
    }

    self->super._timeSampledData.__end_ = begin;
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    sub_239EC793C(v17, elementCount);
    if (timesCount)
    {
      if (self->_elementCount)
      {
        v13 = 0;
        do
        {
          v14 = valuesArray[v13];
          sub_239ECA544(v17);
          *(v18 + 8 * v13++) = v14;
        }

        while (v13 < self->_elementCount);
      }

      v19 = *timesArray;
      v20 = &off_284D159A8;
      sub_239ECA11C();
    }

    sub_239E56C80(v17);
  }

  else
  {
    NSLog(&cfstr_ValueArrayCoun.isa, a2, timesCount, elementCount, elementCount * timesCount, valuesCount);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (NSUInteger)getFloatArray:(float *)valuesArray maxCount:(NSUInteger)maxCount
{
  v26[2] = *MEMORY[0x277D85DE8];
  begin = self->super._timeSampledData.__begin_;
  end = self->super._timeSampledData.__end_;
  v7 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  result = v7 * self->_elementCount;
  if (result <= maxCount)
  {
    if (end != begin)
    {
      v10 = 0;
      v11 = 0;
      v21 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
      if (v7 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
      }

      do
      {
        v25 = 0;
        v26[0] = 0;
        v26[1] = 0;
        v13 = (self->super._timeSampledData.__begin_ + 24 * v10);
        v25 = *v13;
        sub_239E5F7D4(v26, v13 + 1);
        if ((sub_239EC8434(v26) & 1) == 0)
        {
          v14 = sub_239F24810(v26);
          sub_239EF2160(v26, v14);
        }

        if (sub_239EC8434(v26))
        {
          v24 = 0;
          v22 = 0u;
          v23 = 0u;
          v15 = sub_239EC4DC4(v26);
          v16 = *(v15 + 16);
          v22 = *v15;
          v23 = v16;
          v17 = *(v15 + 32);
          v24 = v17;
          if (v17)
          {
            v18 = (v17 - 16);
            if (*(&v23 + 1))
            {
              v18 = *(&v23 + 1);
            }

            atomic_fetch_add_explicit(v18, 1uLL, memory_order_relaxed);
          }

          if (self->_elementCount)
          {
            v19 = 0;
            do
            {
              sub_239EBF2E0(&v22);
              valuesArray[v11 + v19] = *(v24 + 4 * v19);
              ++v19;
            }

            while (v19 < self->_elementCount);
            v11 += v19;
          }

          sub_239E56C80(&v22);
        }

        sub_239E5B240(v26);
        ++v10;
      }

      while (v10 != v12);
      result = self->_elementCount * v21;
    }
  }

  else
  {
    NSLog(&cfstr_ValuesarraySiz.isa, a2, valuesArray, maxCount, result);
    result = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

- (NSUInteger)getDoubleArray:(double *)valuesArray maxCount:(NSUInteger)maxCount
{
  v26[2] = *MEMORY[0x277D85DE8];
  begin = self->super._timeSampledData.__begin_;
  end = self->super._timeSampledData.__end_;
  v7 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  result = v7 * self->_elementCount;
  if (result <= maxCount)
  {
    if (end != begin)
    {
      v10 = 0;
      v11 = 0;
      v21 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
      if (v7 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
      }

      do
      {
        v25 = 0;
        v26[0] = 0;
        v26[1] = 0;
        v13 = (self->super._timeSampledData.__begin_ + 24 * v10);
        v25 = *v13;
        sub_239E5F7D4(v26, v13 + 1);
        if ((sub_239F23244(v26) & 1) == 0)
        {
          v14 = sub_239F24B9C(v26);
          sub_239EF2160(v26, v14);
        }

        if (sub_239F23244(v26))
        {
          v24 = 0;
          v22 = 0u;
          v23 = 0u;
          v15 = sub_239F24C28(v26);
          v16 = *(v15 + 16);
          v22 = *v15;
          v23 = v16;
          v17 = *(v15 + 32);
          v24 = v17;
          if (v17)
          {
            v18 = (v17 - 16);
            if (*(&v23 + 1))
            {
              v18 = *(&v23 + 1);
            }

            atomic_fetch_add_explicit(v18, 1uLL, memory_order_relaxed);
          }

          if (self->_elementCount)
          {
            v19 = 0;
            do
            {
              sub_239ECA544(&v22);
              valuesArray[v11 + v19] = *(v24 + 8 * v19);
              ++v19;
            }

            while (v19 < self->_elementCount);
            v11 += v19;
          }

          sub_239E56C80(&v22);
        }

        sub_239E5B240(v26);
        ++v10;
      }

      while (v10 != v12);
      result = self->_elementCount * v21;
    }
  }

  else
  {
    NSLog(&cfstr_ValuesarraySiz.isa, a2, valuesArray, maxCount, result);
    result = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

@end