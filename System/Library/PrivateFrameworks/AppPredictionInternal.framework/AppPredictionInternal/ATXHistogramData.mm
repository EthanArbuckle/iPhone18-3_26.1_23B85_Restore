@interface ATXHistogramData
- (ATXHistogramData)init;
- (ATXHistogramData)initWithCategoricalHistogram:(id)histogram;
- (ATXHistogramData)initWithCoder:(id)coder;
- (ATXHistogramData)initWithTimeHistogram:(id)histogram;
- (float)lookupSmoothedWithBucketCount:(unsigned __int16)count distanceScale:(float)scale a:(unsigned __int16)a b:(unsigned __int16)b;
- (float)lookupUnsmoothedA:(unsigned __int16)a b:(unsigned __int16)b;
- (id).cxx_construct;
- (id)aSet;
- (id)bSet;
- (int)countWhereA:(unsigned __int16)a b:(unsigned __int16)b;
- (void)add:(float)add a:(unsigned __int16)a b:(unsigned __int16)b;
- (void)applyPermutationToA:(id)a;
- (void)clear;
- (void)decayByFactor:(float)factor;
- (void)decayWithHalfLifeInDays:(float)days;
- (void)deleteWhereA:(unsigned __int16)a b:(unsigned __int16)b;
- (void)encodeWithCoder:(id)coder;
- (void)enumerate:(id)enumerate;
@end

@implementation ATXHistogramData

- (id).cxx_construct
{
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 0;
  return self;
}

- (ATXHistogramData)init
{
  v10.receiver = self;
  v10.super_class = ATXHistogramData;
  v2 = [(ATXHistogramData *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v5 = v2 + 8;
    v4 = *(v2 + 1);
    if (v4)
    {
      *(v3 + 2) = v4;
      free(v4);
      *v5 = 0;
      *(v3 + 2) = 0;
      *(v3 + 3) = 0;
    }

    v7 = v3 + 40;
    v6 = *(v3 + 5);
    v8 = 0uLL;
    *v5 = 0u;
    *(v3 + 24) = 0u;
    if (v6)
    {
      *(v3 + 6) = v6;
      free(v6);
      v8 = 0uLL;
      *v7 = 0;
      *(v3 + 6) = 0;
      *(v3 + 7) = 0;
    }

    v3[72] = 0;
    *v7 = v8;
    *(v3 + 56) = v8;
    operator new();
  }

  return 0;
}

- (id)bSet
{
  v3 = objc_opt_new();
  ptr = self->_guardedData.__ptr_;
  pthread_mutex_lock((ptr + 8));
  v5 = *ptr;
  if (*(*ptr + 56))
  {
    v6 = 0;
    v7 = 1;
    do
    {
      [v3 addIndex:*(*(v5 + 32) + 4 * v6)];
      v6 = v7;
      v5 = *ptr;
    }

    while (*(*ptr + 56) > v7++);
  }

  v9 = v3;
  pthread_mutex_unlock((ptr + 8));

  return v9;
}

- (void)clear
{
  ptr = self->_guardedData.__ptr_;
  pthread_mutex_lock((ptr + 8));
  if (*(*ptr + 64) == 1)
  {
    __break(1u);
  }

  else
  {
    _ZN12_GLOBAL__N_110SimdVectorIDv8_ffE6resizeEm(*ptr, 0);
    _ZN12_GLOBAL__N_110SimdVectorIDv8_ijE6resizeEm(*ptr + 32, 0);
    pthread_mutex_unlock((ptr + 8));
  }
}

- (void)add:(float)add a:(unsigned __int16)a b:(unsigned __int16)b
{
  if ((LODWORD(add) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    bCopy = b;
    aCopy = a;
    ptr = self->_guardedData.__ptr_;
    pthread_mutex_lock((ptr + 8));
    v9 = *ptr;
    if (*(*ptr + 64))
    {
      __break(1u);
    }

    else
    {
      v10 = v9[7];
      if (v10)
      {
        v11 = 0;
        while (*(v9[4] + 4 * v11) != (bCopy | (aCopy << 16)))
        {
          if (v10 == ++v11)
          {
            goto LABEL_7;
          }
        }

        *(*v9 + 4 * v11) = fmaxf(*(*v9 + 4 * v11) + add, 0.0);
      }

      else
      {
LABEL_7:
        if (add >= 0.0)
        {
          v12 = v9[3];
          _ZN12_GLOBAL__N_110SimdVectorIDv8_ffE6resizeEm(*ptr, v12 + 1);
          *(*v9 + 4 * v12) = fmaxf(add, 0.0);
          v13 = *ptr;
          v14 = *(*ptr + 56);
          _ZN12_GLOBAL__N_110SimdVectorIDv8_ijE6resizeEm(*ptr + 32, v14 + 1);
          *(*(v13 + 32) + 4 * v14) = bCopy | (aCopy << 16);
        }
      }

      pthread_mutex_unlock((ptr + 8));
    }
  }
}

- (float)lookupUnsmoothedA:(unsigned __int16)a b:(unsigned __int16)b
{
  bCopy = b;
  aCopy = a;
  ptr = self->_guardedData.__ptr_;
  pthread_mutex_lock((ptr + 8));
  v7 = **ptr;
  v8 = *(*ptr + 8) - v7;
  if (v8)
  {
    v9 = v8 >> 5;
    v10 = *(*ptr + 32);
    v11 = vdupq_n_s32(bCopy | (aCopy << 16));
    if (v9 <= 1)
    {
      v9 = 1;
    }

    v12 = 0uLL;
    v13.i64[0] = -1;
    v13.i64[1] = -1;
    v14 = vceqq_s16(v11, v13);
    v15 = vmovn_s16(v14);
    v16 = 0uLL;
    do
    {
      v18 = *v10;
      v17 = v10[1];
      v10 += 2;
      v19 = vceqq_s16(v18, v11);
      v20 = vorrq_s8(vceqq_s16(v17, v11), v14);
      v22 = *v7;
      v21 = v7[1];
      v7 += 2;
      v16 = vaddq_f32(v16, vandq_s8(vandq_s8(v21, v20), vrev32q_s16(v20)));
      v12 = vaddq_f32(v12, vandq_s8(vandq_s8(v22, vorrq_s8(v19, v14)), vrev32q_s16(vcltzq_s16(vshlq_n_s16(vmovl_u8(vorr_s8(vmovn_s16(v19), v15)), 0xFuLL)))));
      --v9;
    }

    while (v9);
  }

  else
  {
    v12 = 0uLL;
    v16 = 0uLL;
  }

  v25 = v16;
  v26 = v12;
  pthread_mutex_unlock((ptr + 8));
  v23 = vaddq_f32(v26, v25);
  result = vaddv_f32(vadd_f32(*v23.i8, *&vextq_s8(v23, v23, 8uLL)));
  if ((LODWORD(result) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    return 0.0;
  }

  return result;
}

- (float)lookupSmoothedWithBucketCount:(unsigned __int16)count distanceScale:(float)scale a:(unsigned __int16)a b:(unsigned __int16)b
{
  bCopy = b;
  aCopy = a;
  countCopy = count;
  if (b == 0xFFFF)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ATXHistogramData.mm" lineNumber:329 description:{@"Invalid parameter not satisfying: %@", @"b != SUMALL"}];
  }

  ptr = self->_guardedData.__ptr_;
  pthread_mutex_lock((ptr + 8));
  v11 = **ptr;
  v12 = *(*ptr + 8);
  v13 = v12 - v11;
  if (v12 == v11)
  {
    v19 = 0uLL;
    v30 = 0uLL;
  }

  else
  {
    v14 = 0;
    v15 = v13 >> 5;
    v16 = vdupq_n_s32((aCopy << 16) | 0xFFFFu);
    v17 = vdupq_n_s32(bCopy);
    v18 = vdupq_n_s32(countCopy);
    v19 = 0uLL;
    v20.i64[0] = -1;
    v20.i64[1] = -1;
    v21 = vceqq_s16(v16, v20);
    v22 = vmovn_s16(v21);
    v23.i64[0] = 0xFF000000FFLL;
    v23.i64[1] = 0xFF000000FFLL;
    __asm { FMOV            V6.4S, #1.0 }

    v29 = vdupq_n_s32(0x3F36DB6Eu);
    v30 = 0uLL;
    do
    {
      v31 = *(*ptr + 32) + 32 * v14;
      v33 = *v31;
      v32 = *(v31 + 16);
      v34 = vceqq_s16(*v31, v16);
      v35 = vorrq_s8(vceqq_s16(v32, v16), v21);
      v36 = (v11 + 32 * v14);
      v37 = vabdq_s32(vandq_s8(v33, v23), v17);
      v38 = vabdq_s32(vandq_s8(v32, v23), v17);
      v39 = vmulq_n_f32(vcvtq_f32_s32(vminq_s32(vsubq_s32(v18, v38), v38)), scale);
      v40 = vmulq_n_f32(vcvtq_f32_s32(vminq_s32(vsubq_s32(v18, v37), v37)), scale);
      v41 = vmulq_f32(vmlaq_f32(_Q6, v39, v39), v29);
      v42 = vmulq_f32(vmlaq_f32(_Q6, v40, v40), v29);
      v43 = vrecpeq_f32(v42);
      v44 = vrecpeq_f32(v41);
      v30 = vaddq_f32(v30, vmulq_f32(vmulq_f32(v44, vrecpsq_f32(v41, v44)), vandq_s8(vandq_s8(v36[1], v35), vrev32q_s16(v35))));
      v19 = vaddq_f32(v19, vmulq_f32(vmulq_f32(v43, vrecpsq_f32(v42, v43)), vandq_s8(vandq_s8(*v36, vorrq_s8(v34, v21)), vrev32q_s16(vcltzq_s16(vshlq_n_s16(vmovl_u8(vorr_s8(vmovn_s16(v34), v22)), 0xFuLL))))));
      ++v14;
    }

    while (v15 > v14);
  }

  v49 = v30;
  v51 = v19;
  pthread_mutex_unlock((ptr + 8));
  v45 = vaddq_f32(v51, v49);
  result = vaddv_f32(vadd_f32(*v45.i8, *&vextq_s8(v45, v45, 8uLL)));
  if ((LODWORD(result) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    return 0.0;
  }

  return result;
}

- (void)enumerate:(id)enumerate
{
  enumerateCopy = enumerate;
  ptr = self->_guardedData.__ptr_;
  pthread_mutex_lock((ptr + 8));
  v5 = *ptr;
  v6 = *(*ptr + 64);
  *(v5 + 64) = 1;
  if (*(v5 + 56))
  {
    v7 = 0;
    v8 = 1;
    do
    {
      if (*(*v5 + 4 * v7) > 0.0)
      {
        v9 = *(*(v5 + 32) + 4 * v7);
        (*(enumerateCopy + 2))(enumerateCopy, HIWORD(v9), v9);
        v5 = *ptr;
      }

      v7 = v8;
    }

    while (*(v5 + 56) > v8++);
  }

  *(v5 + 64) = v6;
  pthread_mutex_unlock((ptr + 8));
}

- (int)countWhereA:(unsigned __int16)a b:(unsigned __int16)b
{
  if ((b & a) == 0xFFFF)
  {
    ptr = self->_guardedData.__ptr_;
    pthread_mutex_lock((ptr + 8));
    v5 = *(*ptr + 24);
    pthread_mutex_unlock((ptr + 8));
    return v5;
  }

  if (a == 0xFFFF)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __34__ATXHistogramData_countWhereA_b___block_invoke;
    v10[3] = &unk_27859DEC0;
    bCopy = b;
    v10[4] = &v12;
    [(ATXHistogramData *)self enumerate:v10];
LABEL_8:
    v5 = *(v13 + 6);
    _Block_object_dispose(&v12, 8);
    return v5;
  }

  if (b == 0xFFFF)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __34__ATXHistogramData_countWhereA_b___block_invoke_2;
    v8[3] = &unk_27859DEC0;
    aCopy = a;
    v8[4] = &v12;
    [(ATXHistogramData *)self enumerate:v8];
    goto LABEL_8;
  }

  [ATXHistogramData lookupUnsmoothedA:"lookupUnsmoothedA:b:" b:?];
  return v4 > 0.0;
}

uint64_t __34__ATXHistogramData_countWhereA_b___block_invoke(uint64_t result, uint64_t a2, int a3)
{
  if (*(result + 40) == a3)
  {
    ++*(*(*(result + 32) + 8) + 24);
  }

  return result;
}

uint64_t __34__ATXHistogramData_countWhereA_b___block_invoke_2(uint64_t result, int a2)
{
  if (*(result + 40) == a2)
  {
    ++*(*(*(result + 32) + 8) + 24);
  }

  return result;
}

- (void)deleteWhereA:(unsigned __int16)a b:(unsigned __int16)b
{
  if ((b & a) == 0xFFFF)
  {

    [(ATXHistogramData *)self clear];
  }

  else
  {
    bCopy = b;
    aCopy = a;
    ptr = self->_guardedData.__ptr_;
    pthread_mutex_lock((ptr + 8));
    v7 = *ptr;
    if (*(*ptr + 64) == 1)
    {
      __break(1u);
    }

    else
    {
      v8 = v7[3];
      if (v8)
      {
        v9 = 0;
        v10 = 0;
        v11 = v7[4];
        do
        {
          v12 = *(v11 + 4 * v9);
          v14 = bCopy == 0xFFFF || bCopy == *(v11 + 4 * v9);
          v15 = HIWORD(v12) == aCopy || aCopy == 0xFFFF;
          if (!v15 || !v14)
          {
            *(v11 + 4 * v10) = v12;
            *(*v7 + 4 * v10++) = *(*v7 + 4 * v9);
          }

          ++v9;
        }

        while (v8 != v9);
        _ZN12_GLOBAL__N_110SimdVectorIDv8_ffE6resizeEm(v7, v10);
        _ZN12_GLOBAL__N_110SimdVectorIDv8_ijE6resizeEm(*ptr + 32, v10);
      }

      pthread_mutex_unlock((ptr + 8));
    }
  }
}

- (void)decayByFactor:(float)factor
{
  ptr = self->_guardedData.__ptr_;
  pthread_mutex_lock((ptr + 8));
  if (*(*ptr + 64))
  {
    __break(1u);
  }

  else
  {
    v4 = **ptr;
    if (*(*ptr + 8) != v4)
    {
      v5 = 0;
      do
      {
        v6 = (v4 + 32 * v5);
        v7 = vmulq_n_f32(v6[1], factor);
        *v6 = vmulq_n_f32(*v6, factor);
        v6[1] = v7;
        ++v5;
        v4 = **ptr;
      }

      while (v5 < (*(*ptr + 8) - v4) >> 5);
    }

    pthread_mutex_unlock((ptr + 8));
  }
}

- (void)decayWithHalfLifeInDays:(float)days
{
  v4 = exp2(-1.0 / days);
  *&v4 = v4;

  [(ATXHistogramData *)self decayByFactor:v4];
}

- (id)aSet
{
  v3 = objc_opt_new();
  ptr = self->_guardedData.__ptr_;
  pthread_mutex_lock((ptr + 8));
  v5 = *ptr;
  if (*(*ptr + 56))
  {
    v6 = 0;
    v7 = 1;
    do
    {
      [v3 addIndex:*(*(v5 + 32) + 4 * v6 + 2)];
      v6 = v7;
      v5 = *ptr;
    }

    while (*(*ptr + 56) > v7++);
  }

  v9 = v3;
  pthread_mutex_unlock((ptr + 8));

  return v9;
}

- (ATXHistogramData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ATXHistogramData *)self init];
  if (!v5)
  {
    goto LABEL_23;
  }

  v6 = objc_autoreleasePoolPush();
  ptr = v5->_guardedData.__ptr_;
  pthread_mutex_lock((ptr + 1));
  v8 = [coderCopy decodeInt32ForKey:@"count"];
  if (!v8)
  {
    goto LABEL_15;
  }

  v9 = v8;
  _ZN12_GLOBAL__N_110SimdVectorIDv8_ffE6resizeEm(*ptr, v8);
  _ZN12_GLOBAL__N_110SimdVectorIDv8_ijE6resizeEm((*ptr + 4), v9);
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"scores"];
  v11 = [v10 length];
  if (v11 == 4 * v9)
  {
    if (v10)
    {
      memcpy(**ptr, [v10 bytes], objc_msgSend(v10, "length"));
    }

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"abs"];

    if ([v12 length] == v11)
    {
      if (v12)
      {
        memcpy((*ptr)[4], [v12 bytes], objc_msgSend(v12, "length"));
      }

      v13 = (*ptr)[3];
      if (v13)
      {
        v14 = **ptr;
        v15 = 1;
        do
        {
          if ((*v14 & 0x7FFFFFFFu) >= 0x7F800000)
          {
            *v14 = 0;
          }

          ++v14;
        }

        while (v13 > v15++);
      }

LABEL_15:
      v17 = 1;
      goto LABEL_22;
    }

    v18 = __atxlog_handle_default();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [ATXHistogramData initWithCoder:];
    }

    v10 = v12;
  }

  else
  {
    v18 = __atxlog_handle_default();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [ATXHistogramData initWithCoder:];
    }
  }

  v17 = 0;
LABEL_22:
  pthread_mutex_unlock((ptr + 1));
  objc_autoreleasePoolPop(v6);
  if ((v17 & 1) == 0)
  {
    v19 = 0;
    goto LABEL_25;
  }

LABEL_23:
  v19 = v5;
LABEL_25:

  return v19;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  ptr = self->_guardedData.__ptr_;
  pthread_mutex_lock((ptr + 8));
  [coderCopy encodeInt32:*(*ptr + 24) forKey:@"count"];
  v5 = *ptr;
  if (*(*ptr + 24))
  {
    v6 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:**ptr length:4 * *(*ptr + 24)];
    [coderCopy encodeObject:v6 forKey:@"scores"];

    v5 = *ptr;
  }

  if (v5[7])
  {
    v7 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:*(*ptr + 32) length:4 * *(*ptr + 56)];
    [coderCopy encodeObject:v7 forKey:@"abs"];
  }

  pthread_mutex_unlock((ptr + 8));
}

- (ATXHistogramData)initWithTimeHistogram:(id)histogram
{
  histogramCopy = histogram;
  if (!histogramCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ATXHistogramData.mm" lineNumber:592 description:{@"Invalid parameter not satisfying: %@", @"histogram"}];
  }

  v6 = [(ATXHistogramData *)self init];
  v7 = v6;
  if (v6)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __42__ATXHistogramData_initWithTimeHistogram___block_invoke;
    v10[3] = &unk_27859DEE8;
    v11 = v6;
    [histogramCopy enumerate:v10];
  }

  return v7;
}

- (ATXHistogramData)initWithCategoricalHistogram:(id)histogram
{
  histogramCopy = histogram;
  if (!histogramCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ATXHistogramData.mm" lineNumber:603 description:{@"Invalid parameter not satisfying: %@", @"histogram"}];
  }

  v6 = [(ATXHistogramData *)self init];
  v7 = v6;
  if (v6)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __49__ATXHistogramData_initWithCategoricalHistogram___block_invoke;
    v10[3] = &unk_27859DEE8;
    v11 = v6;
    [histogramCopy enumerate:v10];
  }

  return v7;
}

- (void)applyPermutationToA:(id)a
{
  v22 = *MEMORY[0x277D85DE8];
  aCopy = a;
  v5 = aCopy;
  if (!aCopy)
  {
    v16 = __atxlog_handle_default();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [ATXHistogramData applyPermutationToA:];
    }

    goto LABEL_15;
  }

  bytes = [aCopy bytes];
  v7 = [v5 length];
  ptr = self->_guardedData.__ptr_;
  pthread_mutex_lock((ptr + 8));
  v9 = *ptr;
  if ((*(*ptr + 64) & 1) == 0)
  {
    if (*(v9 + 56))
    {
      v10 = 0;
      v11 = 1;
      do
      {
        v12 = *(v9 + 32);
        v13 = *(v12 + 4 * v10) >> 16;
        if (HIWORD(*(v12 + 4 * v10)) >= (v7 >> 1))
        {
          v14 = __atxlog_handle_default();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109376;
            v19 = v13;
            v20 = 1024;
            v21 = (v7 >> 1);
            _os_log_error_impl(&dword_2263AA000, v14, OS_LOG_TYPE_ERROR, "%u not found in permutation of length %u", buf, 0xEu);
          }

          v9 = *ptr;
        }

        else
        {
          *(v12 + 4 * v10) = *(v12 + 4 * v10) | (*(bytes + 2 * v13) << 16);
        }

        v10 = v11;
      }

      while (*(v9 + 56) > v11++);
    }

    pthread_mutex_unlock((ptr + 8));
LABEL_15:

    v17 = *MEMORY[0x277D85DE8];
    return;
  }

  __break(1u);
}

- (void)applyPermutationToA:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end