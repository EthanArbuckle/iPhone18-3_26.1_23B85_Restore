@interface MDLAnimatedVector3Array
- (NSUInteger)getDouble3Array:(vector_double3 *)array maxCount:(NSUInteger)maxCount atTime:(NSTimeInterval)time;
- (NSUInteger)getDouble3Array:(vector_double3 *)valuesArray maxCount:(NSUInteger)maxCount;
- (NSUInteger)getFloat3Array:(vector_float3 *)array maxCount:(NSUInteger)maxCount atTime:(NSTimeInterval)time;
- (NSUInteger)getFloat3Array:(vector_float3 *)valuesArray maxCount:(NSUInteger)maxCount;
- (VtValue)defaultVtValue;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initWithElementCount:(NSUInteger)arrayElementCount;
- (unint64_t)precision;
- (void)resetWithDouble3Array:(const vector_double3 *)valuesArray count:(NSUInteger)valuesCount atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)timesCount;
- (void)resetWithFloat3Array:(const vector_float3 *)valuesArray count:(NSUInteger)valuesCount atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)timesCount;
- (void)resetWithUsdAttribute:(const void *)attribute timeScale:(double)scale;
- (void)resetWithUsdAttribute:(const void *)attribute timeScale:(double)scale time:(double)time;
- (void)setDouble3Array:(const vector_double3 *)array count:(NSUInteger)count atTime:(NSTimeInterval)time;
- (void)setFloat3Array:(const vector_float3 *)array count:(NSUInteger)count atTime:(NSTimeInterval)time;
@end

@implementation MDLAnimatedVector3Array

- (id)initWithElementCount:(NSUInteger)arrayElementCount
{
  v8.receiver = self;
  v8.super_class = MDLAnimatedVector3Array;
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
  v5.super_class = MDLAnimatedVector3Array;
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
  if ((sub_239E6AE34(v6) & 1) == 0 && (sub_239F2573C(v6) & 1) == 0)
  {
    v4 = sub_239F25774(v6);
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
    if (sub_239F2573C(v7))
    {
      sub_239F25960(v6, 0);
      *(v3 + 8) = &off_284D15BD0;
      sub_239EB5D90();
    }

    if (sub_239E6AE34(v7))
    {
      sub_239E6D0E8(v6, 0);
      *(v3 + 8) = &off_284D15C88;
      sub_239EB5D90();
    }

    if (sub_239F25774(v7))
    {
      sub_239F259D8(v6, 0);
      *(v3 + 8) = &off_284D15D40;
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
  if ((sub_239F2573C(v11) & 1) != 0 || (sub_239E6AE34(v11) & 1) != 0 || sub_239F25774(v11))
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
  if ((sub_239F2573C(v11) & 1) != 0 || (sub_239E6AE34(v11) & 1) != 0 || sub_239F25774(v11))
  {
    v9 = time * scale;
    sub_239E5F7D4(v10, v11);
    sub_239F237C8(&self->super._timeSampledData, &v9);
    sub_239E5B240(v10);
  }

  sub_239E5B240(v11);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setFloat3Array:(const vector_float3 *)array count:(NSUInteger)count atTime:(NSTimeInterval)time
{
  v5 = count;
  v16 = *MEMORY[0x277D85DE8];
  elementCount = self->_elementCount;
  if (elementCount == count)
  {
    v7 = array;
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_239E6D0E8(v12, count);
    if (v5)
    {
      v8 = 0;
      do
      {
        v11 = *v7;
        sub_239E56B84(v12);
        v9 = v13 + v8;
        *v9 = v11.i64[0];
        *(v9 + 8) = v11.i32[2];
        ++v7;
        v8 += 12;
        --v5;
      }

      while (v5);
    }

    v14 = 0;
    v15 = &off_284D15C88;
    sub_239EB5D90();
  }

  NSLog(&cfstr_ArrayCountLuHa_0.isa, a2, array, time, count, elementCount);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)setDouble3Array:(const vector_double3 *)array count:(NSUInteger)count atTime:(NSTimeInterval)time
{
  v5 = count;
  v17 = *MEMORY[0x277D85DE8];
  elementCount = self->_elementCount;
  if (elementCount == count)
  {
    v7 = array;
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    sub_239F259D8(v13, count);
    if (v5)
    {
      v8 = 0;
      do
      {
        v11 = *v7->f64;
        v12 = *&v7->f64[2];
        sub_239F32888(v13);
        v9 = v14 + v8;
        *v9 = v11;
        *(v9 + 16) = v12;
        ++v7;
        v8 += 24;
        --v5;
      }

      while (v5);
    }

    v15 = 0;
    v16 = &off_284D15D40;
    sub_239EB5D90();
  }

  NSLog(&cfstr_ArrayCountLuHa_0.isa, a2, array, time, count, elementCount);
  v10 = *MEMORY[0x277D85DE8];
}

- (NSUInteger)getFloat3Array:(vector_float3 *)array maxCount:(NSUInteger)maxCount atTime:(NSTimeInterval)time
{
  v5 = maxCount;
  v43 = *MEMORY[0x277D85DE8];
  elementCount = self->_elementCount;
  if (elementCount <= maxCount)
  {
    v8 = array;
    v40 = 0.0;
    v41 = 0;
    v42 = 0;
    v37 = 0.0;
    v38 = 0;
    v39 = 0;
    v36 = 0;
    memset(v35, 0, sizeof(v35));
    v34 = 0;
    memset(v33, 0, sizeof(v33));
    sub_239F24610(&self->super._timeSampledData, &v40, &v37, time);
    if (v42)
    {
      if ((sub_239E6AE34(&v41) & 1) != 0 || (v10 = sub_239E6ADA8(&v41), sub_239EF2160(&v41, v10), v42))
      {
        v11 = sub_239E6AD14(&v41);
        sub_239EBE6A0(v35, v11);
        if (!self->super._interpolation)
        {
          if (*&v35[0] < v5)
          {
            v5 = *&v35[0];
          }

          if (v5)
          {
            v15 = 0;
            v16 = v5;
            do
            {
              sub_239E56B84(v35);
              v17.i64[0] = *(v36 + v15);
              v17.i32[2] = *(v36 + v15 + 8);
              *v8++ = v17;
              v15 += 12;
              --v16;
            }

            while (v16);
          }

          goto LABEL_32;
        }

        if (v39)
        {
          if (v40 == v37)
          {
            if (*&v35[0] < v5)
            {
              v5 = *&v35[0];
            }

            if (v5)
            {
              v12 = 0;
              v13 = v5;
              do
              {
                sub_239E56B84(v35);
                v14.i64[0] = *(v36 + v12);
                v14.i32[2] = *(v36 + v12 + 8);
                *v8++ = v14;
                v12 += 12;
                --v13;
              }

              while (v13);
            }

            goto LABEL_32;
          }

          if ((sub_239E6A188(&v38) & 1) != 0 || (v18 = sub_239E6ADA8(&v38), sub_239EF2160(&v38, v18), v39))
          {
            v19 = sub_239E6AD14(&v38);
            sub_239EBE6A0(v33, v19);
            v21 = *&v35[0];
            if (*&v33[0] < *&v35[0])
            {
              v21 = *&v33[0];
            }

            if (v21 < v5)
            {
              v5 = v21;
            }

            if (v5)
            {
              v22 = 0;
              *&v20 = fmax(fmin((time - v40) / (v37 - v40), 1.0), 0.0);
              *&v23 = *&v20;
              *&v20 = 1.0 - *&v23;
              v31 = v20;
              v32 = *&v23;
              v24 = vdup_lane_s32(v23, 0);
              v25 = v5;
              do
              {
                sub_239E56B84(v35);
                v26 = *(v36 + v22);
                v27 = *(v36 + v22 + 8);
                sub_239E56B84(v33);
                v28.i32[3] = HIDWORD(v31);
                *v28.f32 = vmla_f32(vmul_n_f32(v26, *&v31), v24, *(v34 + v22));
                v28.f32[2] = (v27 * *&v31) + (*(v34 + v22 + 8) * v32);
                *v8++ = v28;
                v22 += 12;
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
    sub_239E56C80(v33);
    sub_239E56C80(v35);
    sub_239E5B240(&v38);
    sub_239E5B240(&v41);
    goto LABEL_33;
  }

  NSLog(&cfstr_ArrayCountLuHa_0.isa, a2, array, time, maxCount, elementCount);
  v5 = 0;
LABEL_33:
  v29 = *MEMORY[0x277D85DE8];
  return v5;
}

- (NSUInteger)getDouble3Array:(vector_double3 *)array maxCount:(NSUInteger)maxCount atTime:(NSTimeInterval)time
{
  v5 = maxCount;
  v44 = *MEMORY[0x277D85DE8];
  elementCount = self->_elementCount;
  if (elementCount <= maxCount)
  {
    v8 = array;
    v41 = 0.0;
    v42 = 0;
    v43 = 0;
    v38 = 0.0;
    v39 = 0;
    v40 = 0;
    v37 = 0;
    memset(v36, 0, sizeof(v36));
    v35 = 0;
    memset(v34, 0, sizeof(v34));
    sub_239F24610(&self->super._timeSampledData, &v41, &v38, time);
    if (v43)
    {
      if ((sub_239F25774(&v42) & 1) != 0 || (v10 = sub_239F268B0(&v42), sub_239EF2160(&v42, v10), v43))
      {
        v11 = sub_239F2693C(&v42);
        sub_239F269D0(v36, v11);
        if (!self->super._interpolation)
        {
          if (*&v36[0] < v5)
          {
            v5 = *&v36[0];
          }

          if (v5)
          {
            v15 = 0;
            v16 = v5;
            do
            {
              sub_239F32888(v36);
              *&v17 = *(v37 + v15 + 16);
              *v8->f64 = *(v37 + v15);
              *&v8->f64[2] = v17;
              ++v8;
              v15 += 24;
              --v16;
            }

            while (v16);
          }

          goto LABEL_32;
        }

        if (v40)
        {
          if (v41 == v38)
          {
            if (*&v36[0] < v5)
            {
              v5 = *&v36[0];
            }

            if (v5)
            {
              v12 = 0;
              v13 = v5;
              do
              {
                sub_239F32888(v36);
                *&v14 = *(v37 + v12 + 16);
                *v8->f64 = *(v37 + v12);
                *&v8->f64[2] = v14;
                ++v8;
                v12 += 24;
                --v13;
              }

              while (v13);
            }

            goto LABEL_32;
          }

          if ((sub_239F26A84(&v39) & 1) != 0 || (v18 = sub_239F268B0(&v39), sub_239EF2160(&v39, v18), v40))
          {
            v19 = sub_239F2693C(&v39);
            sub_239F269D0(v34, v19);
            v21 = *&v36[0];
            if (*&v34[0] < *&v36[0])
            {
              v21 = *&v34[0];
            }

            if (v21 < v5)
            {
              v5 = v21;
            }

            if (v5)
            {
              v22 = 0;
              *&v23 = fmax(fmin((time - v41) / (v38 - v41), 1.0), 0.0);
              *&v20 = 1.0 - *&v23;
              v31 = v20;
              v32 = *&v23;
              v30 = vdupq_lane_s64(v23, 0);
              v24 = v5;
              do
              {
                sub_239F32888(v36);
                v25 = *(v37 + v22);
                v33 = *(v37 + v22 + 8);
                sub_239F32888(v34);
                v26.i64[1] = *(&v31 + 1);
                *v26.i64 = v25 * *&v31 + *(v35 + v22) * v32;
                v27 = vmlaq_f64(vmulq_n_f64(v33, *&v31), v30, *(v35 + v22 + 8));
                *v8->f64 = vzip1q_s64(v26, v27);
                *&v8->f64[2] = vdupq_laneq_s64(v27, 1);
                ++v8;
                v22 += 24;
                --v24;
              }

              while (v24);
            }

            goto LABEL_32;
          }
        }
      }
    }

    v5 = 0;
LABEL_32:
    sub_239E56C80(v34);
    sub_239E56C80(v36);
    sub_239E5B240(&v39);
    sub_239E5B240(&v42);
    goto LABEL_33;
  }

  NSLog(&cfstr_ArrayCountLuHa_0.isa, a2, array, time, maxCount, elementCount);
  v5 = 0;
LABEL_33:
  v28 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)resetWithFloat3Array:(const vector_float3 *)valuesArray count:(NSUInteger)valuesCount atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)timesCount
{
  v24 = *MEMORY[0x277D85DE8];
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
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    sub_239E6D0E8(v20, elementCount);
    if (timesCount)
    {
      v13 = 0;
      if (self->_elementCount)
      {
        v14 = 0;
        v15 = 0;
        do
        {
          v19 = valuesArray[v13];
          sub_239E56B84(v20);
          v16 = v21 + v14;
          *v16 = v19.i64[0];
          *(v16 + 8) = v19.i32[2];
          ++v13;
          ++v15;
          v14 += 12;
        }

        while (v15 < self->_elementCount);
      }

      v22 = *timesArray;
      v23 = &off_284D15C88;
      sub_239EB5D90();
    }

    sub_239E56C80(v20);
  }

  else
  {
    NSLog(&cfstr_ValueArrayCoun.isa, a2, valuesArray, timesCount, elementCount, elementCount * timesCount, valuesCount);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)resetWithDouble3Array:(const vector_double3 *)valuesArray count:(NSUInteger)valuesCount atTimes:(const NSTimeInterval *)timesArray count:(NSUInteger)timesCount
{
  v26 = *MEMORY[0x277D85DE8];
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
    v23 = 0;
    memset(v22, 0, sizeof(v22));
    sub_239F259D8(v22, elementCount);
    if (timesCount)
    {
      v13 = 0;
      if (self->_elementCount)
      {
        v14 = 0;
        v15 = 0;
        do
        {
          v16 = &valuesArray[v13];
          v20 = *v16->f64;
          v21 = *&v16->f64[2];
          sub_239F32888(v22);
          v17 = v23 + v14;
          *v17 = v20;
          *(v17 + 16) = v21;
          ++v13;
          ++v15;
          v14 += 24;
        }

        while (v15 < self->_elementCount);
      }

      v24 = *timesArray;
      v25 = &off_284D15D40;
      sub_239EB5D90();
    }

    sub_239E56C80(v22);
  }

  else
  {
    NSLog(&cfstr_ValueArrayCoun.isa, a2, valuesArray, timesCount, elementCount, elementCount * timesCount, valuesCount);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (NSUInteger)getFloat3Array:(vector_float3 *)valuesArray maxCount:(NSUInteger)maxCount
{
  v28[2] = *MEMORY[0x277D85DE8];
  begin = self->super._timeSampledData.__begin_;
  end = self->super._timeSampledData.__end_;
  v7 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  result = v7 * self->_elementCount;
  if (result <= maxCount)
  {
    if (end != begin)
    {
      v9 = 0;
      v10 = 0;
      v22 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
      if (v7 <= 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
      }

      do
      {
        v27 = 0;
        v28[0] = 0;
        v28[1] = 0;
        v12 = (self->super._timeSampledData.__begin_ + 24 * v9);
        v27 = *v12;
        sub_239E5F7D4(v28, v12 + 1);
        if ((sub_239E6AE34(v28) & 1) == 0)
        {
          v13 = sub_239E6ADA8(v28);
          sub_239EF2160(v28, v13);
        }

        if (sub_239E6AE34(v28))
        {
          v26 = 0;
          v24 = 0u;
          v25 = 0u;
          v14 = sub_239E6AD14(v28);
          v15 = *(v14 + 16);
          v24 = *v14;
          v25 = v15;
          v16 = *(v14 + 32);
          v26 = v16;
          if (v16)
          {
            v17 = (v16 - 16);
            if (*(&v25 + 1))
            {
              v17 = *(&v25 + 1);
            }

            atomic_fetch_add_explicit(v17, 1uLL, memory_order_relaxed);
          }

          if (self->_elementCount)
          {
            v18 = 0;
            v19 = 0;
            do
            {
              sub_239E56B84(&v24);
              v20.i64[0] = *(v26 + v18);
              v20.i32[2] = *(v26 + v18 + 8);
              valuesArray[v10 + v19++] = v20;
              v18 += 12;
            }

            while (v19 < self->_elementCount);
            v10 += v19;
          }

          sub_239E56C80(&v24);
        }

        sub_239E5B240(v28);
        ++v9;
      }

      while (v9 != v11);
      result = self->_elementCount * v22;
    }
  }

  else
  {
    NSLog(&cfstr_ValuesarraySiz.isa, a2, maxCount, result);
    result = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

- (NSUInteger)getDouble3Array:(vector_double3 *)valuesArray maxCount:(NSUInteger)maxCount
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
      v9 = 0;
      v10 = 0;
      v23 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
      if (v7 <= 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
      }

      do
      {
        v28 = 0;
        v29[0] = 0;
        v29[1] = 0;
        v12 = (self->super._timeSampledData.__begin_ + 24 * v9);
        v28 = *v12;
        sub_239E5F7D4(v29, v12 + 1);
        if ((sub_239F25774(v29) & 1) == 0)
        {
          v13 = sub_239F268B0(v29);
          sub_239EF2160(v29, v13);
        }

        if (sub_239F25774(v29))
        {
          v27 = 0;
          v25 = 0u;
          v26 = 0u;
          v14 = sub_239F2693C(v29);
          v15 = *(v14 + 16);
          v25 = *v14;
          v26 = v15;
          v16 = *(v14 + 32);
          v27 = v16;
          if (v16)
          {
            v17 = (v16 - 16);
            if (*(&v26 + 1))
            {
              v17 = *(&v26 + 1);
            }

            atomic_fetch_add_explicit(v17, 1uLL, memory_order_relaxed);
          }

          if (self->_elementCount)
          {
            v18 = 0;
            v19 = 0;
            do
            {
              sub_239F32888(&v25);
              *&v20 = *(v27 + v18 + 16);
              v21 = &valuesArray[v10 + v19];
              *v21->f64 = *(v27 + v18);
              *&v21->f64[2] = v20;
              ++v19;
              v18 += 24;
            }

            while (v19 < self->_elementCount);
            v10 += v19;
          }

          sub_239E56C80(&v25);
        }

        sub_239E5B240(v29);
        ++v9;
      }

      while (v9 != v11);
      result = self->_elementCount * v23;
    }
  }

  else
  {
    NSLog(&cfstr_ValuesarraySiz.isa, a2, maxCount, result);
    result = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return result;
}

@end