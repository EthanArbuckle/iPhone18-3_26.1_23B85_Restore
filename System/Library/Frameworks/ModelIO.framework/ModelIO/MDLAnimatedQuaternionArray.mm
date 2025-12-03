@interface MDLAnimatedQuaternionArray
- (NSUInteger)getDoubleQuaternionArray:(simd_quatd *)array maxCount:(NSUInteger)maxCount atTime:(NSTimeInterval)time;
- (NSUInteger)getDoubleQuaternionArray:(simd_quatd *)valuesArray maxCount:(NSUInteger)maxCount;
- (NSUInteger)getFloatQuaternionArray:(simd_quatf *)array maxCount:(NSUInteger)maxCount atTime:(NSTimeInterval)time;
- (NSUInteger)getFloatQuaternionArray:(simd_quatf *)valuesArray maxCount:(NSUInteger)maxCount;
- (VtValue)defaultVtValue;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initWithElementCount:(NSUInteger)arrayElementCount;
- (unint64_t)precision;
- (void)resetWithDoubleQuaternionArray:(const simd_quatd *)valuesArray count:(NSUInteger)valuesCount atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)timesCount;
- (void)resetWithFloatQuaternionArray:(const simd_quatf *)valuesArray count:(NSUInteger)valuesCount atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)timesCount;
- (void)resetWithUsdAttribute:(const void *)attribute timeScale:(double)scale;
- (void)resetWithUsdAttribute:(const void *)attribute timeScale:(double)scale time:(double)time;
- (void)setDoubleQuaternionArray:(const simd_quatd *)array count:(NSUInteger)count atTime:(NSTimeInterval)time;
- (void)setFloatQuaternionArray:(const simd_quatf *)array count:(NSUInteger)count atTime:(NSTimeInterval)time;
@end

@implementation MDLAnimatedQuaternionArray

- (id)initWithElementCount:(NSUInteger)arrayElementCount
{
  v8.receiver = self;
  v8.super_class = MDLAnimatedQuaternionArray;
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
  v5.super_class = MDLAnimatedQuaternionArray;
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
  if ((sub_239F274A0(v6) & 1) == 0 && (sub_239F274D8(v6) & 1) == 0)
  {
    v4 = sub_239F27510(v6);
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
    if (sub_239F274D8(v7))
    {
      sub_239F276FC(v6, 0);
      *(v3 + 8) = &off_284D15EB0;
      sub_239EB5D90();
    }

    if (sub_239F274A0(v7))
    {
      sub_239F2776C(v6, 0);
      *(v3 + 8) = &off_284D15F68;
      sub_239EB5D90();
    }

    if (sub_239F27510(v7))
    {
      sub_239F277DC(v6, 0);
      *(v3 + 8) = &off_284D16020;
      sub_239EB5D90();
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
  if ((sub_239F274D8(v11) & 1) != 0 || (sub_239F274A0(v11) & 1) != 0 || sub_239F27510(v11))
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
  if ((sub_239F274D8(v11) & 1) != 0 || (sub_239F274A0(v11) & 1) != 0 || sub_239F27510(v11))
  {
    v9 = time * scale;
    sub_239E5F7D4(v10, v11);
    sub_239F237C8(&self->super._timeSampledData, &v9);
    sub_239E5B240(v10);
  }

  sub_239E5B240(v11);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setFloatQuaternionArray:(const simd_quatf *)array count:(NSUInteger)count atTime:(NSTimeInterval)time
{
  v15 = *MEMORY[0x277D85DE8];
  elementCount = self->_elementCount;
  if (elementCount == count)
  {
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    sub_239F2776C(v11, count);
    if (count)
    {
      v8 = 0;
      do
      {
        v10 = array[v8];
        sub_239F33E54(v11);
        *(v12 + 16 * v8++) = v10;
      }

      while (count != v8);
    }

    v13 = 0;
    v14 = &off_284D15F68;
    sub_239EB5D90();
  }

  NSLog(&cfstr_ArrayCountLuHa_2.isa, a2, array, time, count, elementCount);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)setDoubleQuaternionArray:(const simd_quatd *)array count:(NSUInteger)count atTime:(NSTimeInterval)time
{
  v5 = count;
  v17 = *MEMORY[0x277D85DE8];
  elementCount = self->_elementCount;
  if (elementCount == count)
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    sub_239F277DC(v13, count);
    if (v5)
    {
      v8 = 0;
      do
      {
        v11 = *array[v8].vector.f64;
        v12 = *&array[v8].vector.f64[2];
        sub_239F33E98(v13);
        v9 = (v14 + v8 * 32);
        *v9 = v11;
        v9[1] = v12;
        ++v8;
        --v5;
      }

      while (v5);
    }

    v15 = 0;
    v16 = &off_284D16020;
    sub_239EB5D90();
  }

  NSLog(&cfstr_ArrayCountLuHa_2.isa, a2, array, time, count, elementCount);
  v10 = *MEMORY[0x277D85DE8];
}

- (NSUInteger)getFloatQuaternionArray:(simd_quatf *)array maxCount:(NSUInteger)maxCount atTime:(NSTimeInterval)time
{
  v5 = maxCount;
  v34 = *MEMORY[0x277D85DE8];
  elementCount = self->_elementCount;
  if (elementCount <= maxCount)
  {
    v31 = 0.0;
    v32 = 0;
    v33 = 0;
    v28 = 0.0;
    v29 = 0;
    v30 = 0;
    v27 = 0;
    memset(v26, 0, sizeof(v26));
    v25 = 0;
    memset(v24, 0, sizeof(v24));
    sub_239F24610(&self->super._timeSampledData, &v31, &v28, time);
    if (v33)
    {
      if ((sub_239F274A0(&v32) & 1) != 0 || (v10 = sub_239F282E8(&v32), sub_239EF2160(&v32, v10), v33))
      {
        v11 = sub_239F28374(&v32);
        sub_239F28408(v26, v11);
        if (!self->super._interpolation)
        {
          if (*&v26[0] < v5)
          {
            v5 = *&v26[0];
          }

          if (v5)
          {
            for (i = 0; i != v5; ++i)
            {
              sub_239F33E54(v26);
              array[i] = *(v27 + 16 * i);
            }
          }

          goto LABEL_32;
        }

        if (v30)
        {
          if (v31 == v28)
          {
            if (*&v26[0] < v5)
            {
              v5 = *&v26[0];
            }

            if (v5)
            {
              for (j = 0; j != v5; ++j)
              {
                sub_239F33E54(v26);
                array[j] = *(v27 + 16 * j);
              }
            }

            goto LABEL_32;
          }

          if ((sub_239F284BC(&v29) & 1) != 0 || (v14 = sub_239F282E8(&v29), sub_239EF2160(&v29, v14), v30))
          {
            v15 = sub_239F28374(&v29);
            sub_239F28408(v24, v15);
            v16 = *&v26[0];
            if (*&v24[0] < *&v26[0])
            {
              v16 = *&v24[0];
            }

            if (v16 < v5)
            {
              v5 = v16;
            }

            if (v5)
            {
              v17 = 0;
              v18 = fmax(fmin((time - v31) / (v28 - v31), 1.0), 0.0);
              *&v18 = v18;
              v21 = vdupq_lane_s32(*&v18, 0);
              v22 = 1.0 - *&v18;
              do
              {
                sub_239F33E54(v26);
                v23 = *(v27 + 16 * v17);
                sub_239F33E54(v24);
                array[v17] = vmlaq_f32(vmulq_n_f32(v23, v22), v21, *(v25 + 16 * v17));
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
    sub_239E56C80(v24);
    sub_239E56C80(v26);
    sub_239E5B240(&v29);
    sub_239E5B240(&v32);
    goto LABEL_33;
  }

  NSLog(&cfstr_ArrayCountLuHa_2.isa, a2, array, time, maxCount, elementCount);
  v5 = 0;
LABEL_33:
  v19 = *MEMORY[0x277D85DE8];
  return v5;
}

- (NSUInteger)getDoubleQuaternionArray:(simd_quatd *)array maxCount:(NSUInteger)maxCount atTime:(NSTimeInterval)time
{
  v5 = maxCount;
  v49 = *MEMORY[0x277D85DE8];
  elementCount = self->_elementCount;
  if (elementCount <= maxCount)
  {
    v46 = 0.0;
    v47 = 0;
    v48 = 0;
    v43 = 0.0;
    v44 = 0;
    v45 = 0;
    v42 = 0;
    memset(v41, 0, sizeof(v41));
    v40 = 0;
    memset(v39, 0, sizeof(v39));
    sub_239F24610(&self->super._timeSampledData, &v46, &v43, time);
    if (v48)
    {
      if ((sub_239F27510(&v47) & 1) != 0 || (v10 = sub_239F28884(&v47), sub_239EF2160(&v47, v10), v48))
      {
        v11 = sub_239F28910(&v47);
        sub_239F289A4(v41, v11);
        if (!self->super._interpolation)
        {
          if (*&v41[0] < v5)
          {
            v5 = *&v41[0];
          }

          if (v5)
          {
            v16 = 0;
            v17 = v5;
            do
            {
              sub_239F33E98(v41);
              v18 = *(v42 + v16 * 32 + 16);
              v19 = &array[v16];
              *v19->vector.f64 = *(v42 + v16 * 32);
              *&v19->vector.f64[2] = v18;
              ++v16;
              --v17;
            }

            while (v17);
          }

          goto LABEL_32;
        }

        if (v45)
        {
          if (v46 == v43)
          {
            if (*&v41[0] < v5)
            {
              v5 = *&v41[0];
            }

            if (v5)
            {
              v12 = 0;
              v13 = v5;
              do
              {
                sub_239F33E98(v41);
                v14 = *(v42 + v12 * 32 + 16);
                v15 = &array[v12];
                *v15->vector.f64 = *(v42 + v12 * 32);
                *&v15->vector.f64[2] = v14;
                ++v12;
                --v13;
              }

              while (v13);
            }

            goto LABEL_32;
          }

          if ((sub_239F28A58(&v44) & 1) != 0 || (v20 = sub_239F28884(&v44), sub_239EF2160(&v44, v20), v45))
          {
            v21 = sub_239F28910(&v44);
            sub_239F289A4(v39, v21);
            v22 = *&v41[0];
            if (*&v39[0] < *&v41[0])
            {
              v22 = *&v39[0];
            }

            if (v22 < v5)
            {
              v5 = v22;
            }

            if (v5)
            {
              v23 = 0;
              v24 = fmax(fmin((time - v46) / (v43 - v46), 1.0), 0.0);
              v25 = v5;
              do
              {
                sub_239F33E98(v41);
                v35 = *(v42 + v23);
                v33 = *(v42 + v23 + 8);
                v34 = *(v42 + v23 + 16);
                sub_239F33E98(v39);
                v26.f64[0] = v35;
                v26.f64[1] = v33;
                v27 = *(v40 + v23);
                v28 = *(v40 + v23 + 16);
                v37[0] = v26;
                v37[1] = v34;
                v36[0] = v27;
                v36[1] = v28;
                sub_239F28A90(v37, v36, v38, v24);
                v29 = &array[v23 / 0x20];
                v30 = v38[1];
                *v29->vector.f64 = v38[0];
                *&v29->vector.f64[2] = v30;
                v23 += 32;
                --v25;
              }

              while (v25);
            }

            goto LABEL_32;
          }
        }
      }
    }

    v5 = 0;
LABEL_32:
    sub_239E56C80(v39);
    sub_239E56C80(v41);
    sub_239E5B240(&v44);
    sub_239E5B240(&v47);
    goto LABEL_33;
  }

  NSLog(&cfstr_ArrayCountLuHa_2.isa, a2, array, time, maxCount, elementCount);
  v5 = 0;
LABEL_33:
  v31 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)resetWithFloatQuaternionArray:(const simd_quatf *)valuesArray count:(NSUInteger)valuesCount atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)timesCount
{
  v22 = *MEMORY[0x277D85DE8];
  elementCount = self->_elementCount;
  if (elementCount * timesCount == valuesCount)
  {
    begin = self->super._timeSampledData.__begin_;
    end = self->super._timeSampledData.__end_;
    if (end != begin)
    {
      do
      {
        v13 = (end - 24);
        sub_239E5B240(end - 16);
        end = v13;
      }

      while (v13 != begin);
      LODWORD(elementCount) = self->_elementCount;
    }

    self->super._timeSampledData.__end_ = begin;
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_239F2776C(v18, elementCount);
    if (timesCount)
    {
      v14 = 0;
      if (self->_elementCount)
      {
        v15 = 0;
        do
        {
          v17 = valuesArray[v14];
          sub_239F33E54(v18);
          *(v19 + 16 * v15) = v17;
          ++v14;
          ++v15;
        }

        while (v15 < self->_elementCount);
      }

      v20 = *timesArray;
      v21 = &off_284D15F68;
      sub_239EB5D90();
    }

    sub_239E56C80(v18);
  }

  else
  {
    NSLog(&cfstr_ValueArrayCoun.isa, a2, valuesArray, timesCount, elementCount, elementCount * timesCount, valuesCount);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)resetWithDoubleQuaternionArray:(const simd_quatd *)valuesArray count:(NSUInteger)valuesCount atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)timesCount
{
  v25 = *MEMORY[0x277D85DE8];
  elementCount = self->_elementCount;
  if (elementCount * timesCount == valuesCount)
  {
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
      LODWORD(elementCount) = self->_elementCount;
    }

    self->super._timeSampledData.__end_ = begin;
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    sub_239F277DC(v21, elementCount);
    if (timesCount)
    {
      v12 = 0;
      if (self->_elementCount)
      {
        v13 = 0;
        v14 = 0;
        do
        {
          v19 = *valuesArray[v13].vector.f64;
          v20 = *&valuesArray[v13].vector.f64[2];
          sub_239F33E98(v21);
          v15 = (v22 + v13 * 32);
          *v15 = v19;
          v15[1] = v20;
          ++v12;
          ++v14;
          ++v13;
        }

        while (v14 < self->_elementCount);
      }

      v23 = *timesArray;
      v24 = &off_284D16020;
      sub_239EB5D90();
    }

    sub_239E56C80(v21);
  }

  else
  {
    NSLog(&cfstr_ValueArrayCoun.isa, a2, timesCount, elementCount, elementCount * timesCount, valuesCount);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (NSUInteger)getFloatQuaternionArray:(simd_quatf *)valuesArray maxCount:(NSUInteger)maxCount
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
        if ((sub_239F274A0(v26) & 1) == 0)
        {
          v14 = sub_239F282E8(v26);
          sub_239EF2160(v26, v14);
        }

        if (sub_239F274A0(v26))
        {
          v24 = 0;
          v22 = 0u;
          v23 = 0u;
          v15 = sub_239F28374(v26);
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
              sub_239F33E54(&v22);
              valuesArray[v11 + v19] = *(v24 + 16 * v19);
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

- (NSUInteger)getDoubleQuaternionArray:(simd_quatd *)valuesArray maxCount:(NSUInteger)maxCount
{
  v29[2] = *MEMORY[0x277D85DE8];
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
        v28 = 0;
        v29[0] = 0;
        v29[1] = 0;
        v13 = (self->super._timeSampledData.__begin_ + 24 * v10);
        v28 = *v13;
        sub_239E5F7D4(v29, v13 + 1);
        if ((sub_239F27510(v29) & 1) == 0)
        {
          v14 = sub_239F28884(v29);
          sub_239EF2160(v29, v14);
        }

        if (sub_239F27510(v29))
        {
          v27 = 0;
          v25 = 0u;
          v26 = 0u;
          v15 = sub_239F28910(v29);
          v16 = *(v15 + 16);
          v25 = *v15;
          v26 = v16;
          v17 = *(v15 + 32);
          v27 = v17;
          if (v17)
          {
            v18 = (v17 - 16);
            if (*(&v26 + 1))
            {
              v18 = *(&v26 + 1);
            }

            atomic_fetch_add_explicit(v18, 1uLL, memory_order_relaxed);
          }

          if (self->_elementCount)
          {
            v19 = 0;
            do
            {
              sub_239F33E98(&v25);
              v20 = (v27 + 32 * v19);
              v21 = *v20;
              v22 = v20[1];
              v23 = &valuesArray[v11];
              *v23->vector.f64 = v21;
              *&v23->vector.f64[2] = v22;
              ++v11;
              ++v19;
            }

            while (v19 < self->_elementCount);
          }

          sub_239E56C80(&v25);
        }

        sub_239E5B240(v29);
        ++v10;
      }

      while (v10 != v12);
      result = self->_elementCount * v7;
    }
  }

  else
  {
    NSLog(&cfstr_ValuesarraySiz.isa, a2, valuesArray, maxCount, result);
    result = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return result;
}

@end