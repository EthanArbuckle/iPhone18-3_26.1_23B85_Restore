void *DspLib::copy_backward(void *__src, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (4 * a2)
  {
    return memmove((a3 + 4 * a4 - 4 * a2), __src, 4 * a2);
  }

  return __src;
}

float DspLib::copyWithStrides(DspLib *this, const float *a2, char *__dst, float *a4, unint64_t a5)
{
  v5 = this;
  if (a2 == 1)
  {
    if (a4 == 1)
    {
      if (a5)
      {
        memmove(__dst, this, 4 * a5);
      }
    }

    else
    {
      if (a5 >= 4)
      {
        v8 = 0;
        v21 = 4 * a4;
        do
        {
          v22 = __dst;
          result = *v5;
          v23 = *(v5 + 1);
          v24 = *(v5 + 2);
          v25 = *(v5 + 3);
          *__dst = *v5;
          *&__dst[4 * a4] = v23;
          v26 = &__dst[v21 + v21];
          *v26 = v24;
          v27 = &v26[v21];
          *v27 = v25;
          v5 = (v5 + 16);
          v28 = v8 + 8;
          v8 += 4;
          __dst = &v27[v21];
        }

        while (v28 <= a5);
        __dst = &v22[16 * a4];
      }

      else
      {
        v8 = 0;
      }

      if (v8 < a5)
      {
        v29 = v8 + 1;
        do
        {
          v30 = *v5;
          v5 = (v5 + 4);
          result = v30;
          *__dst = v30;
          v31 = v29++;
          __dst += 4 * a4;
        }

        while (v31 < a5);
      }
    }
  }

  else if (a4 == 1)
  {
    if (a5 >= 4)
    {
      v7 = 0;
      v10 = a2;
      do
      {
        v11 = v5;
        result = *v5;
        v12 = (v5 + v10 * 4);
        v13 = *v12;
        v14 = &v12[v10];
        v15 = *v14;
        v16 = &v14[v10];
        v17 = *v16;
        *__dst = result;
        *(__dst + 1) = v13;
        *(__dst + 2) = v15;
        *(__dst + 3) = v17;
        __dst += 16;
        v18 = v7 + 8;
        v7 += 4;
        v5 = &v16[v10];
      }

      while (v18 <= a5);
      v5 = (v11 + 16 * a2);
    }

    else
    {
      v7 = 0;
    }

    if (v7 < a5)
    {
      v19 = v7 + 1;
      do
      {
        result = *v5;
        *__dst = *v5;
        __dst += 4;
        v20 = v19++;
        v5 = (v5 + 4 * a2);
      }

      while (v20 < a5);
    }
  }

  else
  {
    if (a5 >= 4)
    {
      v9 = 0;
      v32 = a2;
      do
      {
        v33 = v5;
        result = *v5;
        v34 = (v5 + v32 * 4);
        v35 = *v34;
        v36 = &v34[v32];
        v37 = *v36;
        v38 = &v36[v32];
        v39 = *v38;
        *__dst = result;
        *&__dst[4 * a4] = v35;
        *&__dst[8 * a4] = v37;
        *&__dst[12 * a4] = v39;
        v40 = v9 + 8;
        v9 += 4;
        __dst += 4 * (4 * a4);
        v5 = &v38[v32];
      }

      while (v40 <= a5);
      v5 = (v33 + 16 * a2);
    }

    else
    {
      v9 = 0;
    }

    if (v9 < a5)
    {
      v41 = v9 + 1;
      do
      {
        v42 = v41;
        result = *v5;
        *__dst = *v5;
        __dst += 4 * a4;
        v5 = (v5 + 4 * a2);
        ++v41;
      }

      while (v42 < a5);
    }
  }

  return result;
}

float DspLib::sumOfSquares(void *a1)
{
  if (!a1[1])
  {
    return 0.0;
  }

  v2 = 0;
  v3 = 0.0;
  v4 = 1;
  do
  {
    v5 = *(*a1 + 8 * v2);
    v6 = a1[2];
    __C = 0.0;
    vDSP_svesq(v5, 1, &__C, v6);
    v3 = v3 + __C;
    v2 = v4;
  }

  while (a1[1] > v4++);
  return v3;
}

void DspLib::fill(float *__C, vDSP_Length __N, float a3)
{
  __A = a3;
  if (__N)
  {
    vDSP_vfill(&__A, __C, 1, __N);
  }
}

void DspLib::fill(void *a1, float a2)
{
  v2 = a1[1];
  if (v2)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = *(*a1 + 8 * v5);
      v8 = a1[2];
      __A = a2;
      if (v8)
      {
        vDSP_vfill(&__A, v7, 1, v8);
        v2 = a1[1];
      }

      v5 = v6;
    }

    while (v2 > v6++);
  }
}

void DspLib::clear(void *a1)
{
  if (a1[1])
  {
    v2 = 0;
    v3 = 1;
    do
    {
      vDSP_vclr(*(*a1 + 8 * v2), 1, a1[2]);
      v2 = v3;
    }

    while (a1[1] > v3++);
  }
}

void DspLib::negate()
{
  JUMPOUT(0x1E12BE810);
}

{
  JUMPOUT(0x1E12BE810);
}

void DspLib::add()
{
  JUMPOUT(0x1E12BE5D0);
}

{
  JUMPOUT(0x1E12BE5D0);
}

uint64_t DspLib::add(uint64_t result, void *a2, void *a3)
{
  if (*(result + 8))
  {
    v5 = result;
    v6 = 0;
    do
    {
      result = MEMORY[0x1E12BE5D0](*(*v5 + 8 * v6), 1, *(*a2 + 8 * v6), 1, *(*a3 + 8 * v6), 1, v5[2]);
      ++v6;
    }

    while (v6 < v5[1]);
  }

  return result;
}

uint64_t DspLib::add(uint64_t *a1, __int128 *a2)
{
  v7 = *a1;
  v8 = *(a1 + 1);
  v5 = *a2;
  v6 = *(a2 + 2);
  v3 = *a1;
  v4 = a1[2];
  return DspLib::add(&v7, &v5, &v3);
}

void DspLib::subtract()
{
  JUMPOUT(0x1E12BE9A0);
}

{
  JUMPOUT(0x1E12BE9A0);
}

uint64_t DspLib::subtract(uint64_t result, void *a2)
{
  if (*(result + 8))
  {
    v3 = result;
    v4 = 0;
    v5 = 1;
    do
    {
      result = MEMORY[0x1E12BE9A0](*(*a2 + 8 * v4), 1, *(*v3 + 8 * v4), 1, *(*v3 + 8 * v4), 1, v3[2]);
      v4 = v5;
    }

    while (v3[1] > v5++);
  }

  return result;
}

uint64_t DspLib::multiply(uint64_t result, void *a2, float a3)
{
  if (*(result + 8))
  {
    v5 = result;
    v6 = 0;
    v7 = 1;
    do
    {
      v8 = *(*v5 + 8 * v6);
      v9 = v5[2];
      v10 = *(*a2 + 8 * v6);
      v12 = a3;
      result = MEMORY[0x1E12BE940](v8, 1, &v12, v10, 1, v9);
      v6 = v7;
    }

    while (v5[1] > v7++);
  }

  return result;
}

uint64_t DspLib::multiply(uint64_t *a1, float a2)
{
  v2 = *a1;
  v7 = *(a1 + 1);
  v4 = *a1;
  v5 = a1[2];
  v6 = v2;
  return DspLib::multiply(&v6, &v4, a2);
}

void DspLib::multiply()
{
  JUMPOUT(0x1E12BE7F0);
}

{
  JUMPOUT(0x1E12BE7F0);
}

uint64_t DspLib::multiply(uint64_t result, uint64_t a2)
{
  if (*(result + 8))
  {
    v3 = result;
    v4 = 0;
    v5 = 1;
    do
    {
      result = MEMORY[0x1E12BE7F0](*(*v3 + 8 * v4), 1, a2, 1, *(*v3 + 8 * v4), 1, v3[2]);
      v4 = v5;
    }

    while (v3[1] > v5++);
  }

  return result;
}

uint64_t DspLib::multiply(uint64_t result, void *a2, void *a3)
{
  if (*(result + 8))
  {
    v5 = result;
    v6 = 0;
    v7 = 1;
    do
    {
      result = MEMORY[0x1E12BE7F0](*(*v5 + 8 * v6), 1, *(*a2 + 8 * v6), 1, *(*a3 + 8 * v6), 1, v5[2]);
      v6 = v7;
    }

    while (v5[1] > v7++);
  }

  return result;
}

uint64_t DspLib::multiply(uint64_t *a1, __int128 *a2)
{
  v7 = *a1;
  v8 = *(a1 + 1);
  v5 = *a2;
  v6 = *(a2 + 2);
  v3 = *a1;
  v4 = a1[2];
  return DspLib::multiply(&v7, &v5, &v3);
}

void DspLib::clip(const float *a1, vDSP_Length __N, float *__D, float a4, float a5)
{
  __B = a4;
  __C = a5;
  vDSP_vclip(a1, 1, &__B, &__C, __D, 1, __N);
}

void DspLib::clip(float *__D, vDSP_Length __N, float a3, float a4)
{
  __B = a3;
  __C = a4;
  vDSP_vclip(__D, 1, &__B, &__C, __D, 1, __N);
}

void DspLib::clip(void *a1, void *a2, float a3, float a4)
{
  if (a1[1])
  {
    v8 = 0;
    do
    {
      v9 = *(*a1 + 8 * v8);
      v10 = a1[2];
      v11 = *(*a2 + 8 * v8);
      __C = a4;
      __B = a3;
      vDSP_vclip(v9, 1, &__B, &__C, v11, 1, v10);
      ++v8;
    }

    while (v8 < a1[1]);
  }
}

void DspLib::clip(uint64_t *a1, float a2, float a3)
{
  v3 = *a1;
  v7 = *(a1 + 1);
  v4 = *a1;
  v5 = a1[2];
  v6 = v3;
  DspLib::clip(&v6, &v4, a2, a3);
}

uint64_t DspLib::multiplyAdd(uint64_t a1, uint64_t a2, uint64_t a3, float a4, float a5)
{
  v7 = a4;
  v6 = a5;
  return MEMORY[0x1E12BE910](a1, 1, &v7, &v6, a3, 1, a2);
}

uint64_t DspLib::multiplyAdd(uint64_t a1, uint64_t a2, float a3, float a4)
{
  v6 = a3;
  v5 = a4;
  return MEMORY[0x1E12BE910](a1, 1, &v6, &v5, a1, 1, a2);
}

uint64_t DspLib::convexCombination(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v6 = a4;
  v5 = 1.0 - a4;
  return MEMORY[0x1E12BE930](a1, 1, &v5, a3, 1, &v6, a1, 1, a2);
}

void DspLib::square()
{
  JUMPOUT(0x1E12BE990);
}

{
  JUMPOUT(0x1E12BE990);
}

uint64_t DspLib::square(uint64_t result)
{
  if (*(result + 8))
  {
    v1 = result;
    v2 = 0;
    v3 = 1;
    do
    {
      result = MEMORY[0x1E12BE990](*(*v1 + 8 * v2), 1, *(*v1 + 8 * v2), 1, v1[2]);
      v2 = v3;
    }

    while (v1[1] > v3++);
  }

  return result;
}

void DspLib::poly(void *a1, const float *__A, uint64_t a3)
{
  if (a1[1])
  {
    v5 = 0;
    v6 = a3 - 1;
    v7 = 1;
    do
    {
      vDSP_vpoly(__A, 1, *(*a1 + 8 * v5), 1, *(*a1 + 8 * v5), 1, a1[2], v6);
      v5 = v7;
    }

    while (a1[1] > v7++);
  }
}

void DspLib::vsin(void *a1, void *a2)
{
  if (a1[1])
  {
    v4 = 0;
    do
    {
      v5 = *(*a1 + 8 * v4);
      v6 = *(*a2 + 8 * v4);
      v7 = a1[2];
      vvsinf(v6, v5, &v7);
      ++v4;
    }

    while (v4 < a1[1]);
  }
}

void DspLib::makeSineWave(float *__C, vDSP_Length __N)
{
  v2 = __N;
  __A = 0.0;
  __B = 6.2832 / (__N - 1);
  vDSP_vramp(&__A, &__B, __C, 1, __N);
  v6 = v2;
  vvsinf(__C, __C, &v6);
}

void DspLib::ramp(float *__C, vDSP_Length __N, int a3, float a4, float a5)
{
  v7 = __C;
  __A = a4;
  if (a3)
  {
    v8 = pow((a5 / a4), 1.0 / (__N + -1.0));
    if (__N)
    {
      v9 = a4;
      v10 = 1;
      do
      {
        v11 = v9;
        *v7++ = v11;
        v9 = v8 * v9;
      }

      while (__N > v10++);
    }
  }

  else
  {
    __B = (a5 - a4) / (__N - 1);
    vDSP_vramp(&__A, &__B, __C, 1, __N);
  }
}

uint64_t DspLib::runningSum(float *__C, vDSP_Length __N, float a3, float a4)
{
  __S = a3;
  v6 = a4 + (a3 * *__C);
  vDSP_vrsum(__C, 1, &__S, __C, 1, __N);
  v9 = v6;
  return MEMORY[0x1E12BE8A0](__C, 1, &v9, __C, 1, __N);
}

float DspLib::rms(const float *a1, vDSP_Length __N)
{
  __C = 0.0;
  vDSP_rmsqv(a1, 1, &__C, __N);
  return __C;
}

float DspLib::minv(const float *a1, vDSP_Length __N)
{
  __C = 0.0;
  vDSP_minv(a1, 1, &__C, __N);
  return __C;
}

float DspLib::maxv(const float *a1, vDSP_Length __N)
{
  __C = 0.0;
  vDSP_maxv(a1, 1, &__C, __N);
  return __C;
}

uint64_t DspLib::maxIndex(const float *a1, vDSP_Length __N)
{
  LODWORD(v3) = 0;
  v4 = 0;
  vDSP_maxvi(a1, 1, &v3, &v4, __N);
  return v3;
}

uint64_t DspLib::maxmgvi(const float *a1, vDSP_Length __N)
{
  LODWORD(v3) = 0;
  v4 = 0;
  vDSP_maxmgvi(a1, 1, &v3, &v4, __N);
  return v3;
}

uint64_t DspLib::minmgvi(const float *a1, vDSP_Length __N)
{
  LODWORD(v3) = 0;
  v4 = 0;
  vDSP_minmgvi(a1, 1, &v3, &v4, __N);
  return v3;
}

void DspLib::vmaxmg(uint64_t a1, float *__C, vDSP_Length a3)
{
  vDSP_vabs(**a1, 1, __C, 1, *(a1 + 16));
  if (*(a1 + 8) >= 2uLL)
  {
    v6 = 2;
    v7 = 1;
    do
    {
      vDSP_vmaxmg(__C, 1, *(*a1 + 8 * v7), 1, __C, 1, a3);
      v7 = v6;
    }

    while (*(a1 + 8) > v6++);
  }
}

const void ***DspLib::sum(const void ***result, void *__dst, uint64_t a3)
{
  v5 = result;
  v6 = **result;
  v7 = result[2];
  if (v6 != __dst && v7 != 0)
  {
    result = memmove(__dst, v6, 4 * v7);
  }

  if (v5[1] >= 2)
  {
    v9 = 2;
    v10 = 1;
    do
    {
      result = MEMORY[0x1E12BE5D0](__dst, 1, (*v5)[v10], 1, __dst, 1, a3);
      v10 = v9;
    }

    while (v5[1] > v9++);
  }

  return result;
}

float DspLib::sumOfSquares(const float *a1, vDSP_Length __N)
{
  __C = 0.0;
  vDSP_svesq(a1, 1, &__C, __N);
  return __C;
}

float DspLib::mean(const float *a1, vDSP_Length __N)
{
  __C = 0.0;
  vDSP_sve(a1, 1, &__C, __N);
  return __C / __N;
}

float DspLib::median(uint64_t a1, unint64_t a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1.0;
  }

  MEMORY[0x1EEE9AC00](a1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  memmove(v4, v5, v3);
  std::__sort<std::__less<float,float> &,float *>();
  v6 = &v4[4 * (a2 >> 1)];
  if (a2)
  {
    return *v6;
  }

  else
  {
    return (*(v6 - 1) + *v6) * 0.5;
  }
}

double DspLib::meanSquare(const float *a1, vDSP_Length __N)
{
  __C = 0.0;
  if (!__N)
  {
    return 0.0;
  }

  vDSP_measqv(a1, 1, &__C, __N);
  *&result = __C;
  return result;
}

float DspLib::norm(const float *a1, vDSP_Length __N)
{
  __C = 0.0;
  vDSP_svesq(a1, 1, &__C, __N);
  return sqrtf(__C);
}

void DspLib::makeTukeyWindow(uint64_t a1, unint64_t a2, float a3)
{
  if (a2)
  {
    v6 = 0;
    v7 = a3 * 0.5;
    v8 = 1.0 - (a3 * 0.5);
    v9 = 6.28318531 / a3;
    v10 = (a2 - 1);
    while (1)
    {
      v11 = v6 / v10;
      if (v11 < v7)
      {
        break;
      }

      v13 = 1.0;
      if (v11 > v8)
      {
        v12 = (v11 + -1.0) + (a3 * 0.5);
        goto LABEL_7;
      }

LABEL_8:
      *(a1 + 4 * v6++) = v13;
      if (a2 <= v6)
      {
        return;
      }
    }

    v12 = v11 + (a3 * -0.5);
LABEL_7:
    v13 = (cosf(v12 * v9) + 1.0) * 0.5;
    goto LABEL_8;
  }
}

void DspLib::makeChebychevWindow(uint64_t a1, unint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  memcpy(__dst, &unk_1DE098270, sizeof(__dst));
  if (a2)
  {
    v4 = 0;
    do
    {
      *(a1 + 4 * v4) = DspLib::elementAtIndexWithInterpolation(__dst, 100, (v4 / (a2 - 1)) * 99.0);
      ++v4;
    }

    while (a2 > v4);
  }
}

float DspLib::elementAtIndexWithInterpolation(uint64_t a1, uint64_t a2, float a3)
{
  v3 = fmaxf(a3, 0.0);
  v4 = v3;
  v5 = v3 - (v4 - 1);
  v6 = 2.0 - v5;
  if (v5 >= 1.0)
  {
    v7 = v6 * (v6 * (v6 * 0.16667));
  }

  else
  {
    v7 = ((v5 * (v5 * -0.5)) * v6) + 0.66667;
  }

  v8 = v4 + 1;
  v9 = v3 - v4;
  v10 = 2.0 - v9;
  if (v9 >= 1.0)
  {
    v11 = v10 * (v10 * (v10 * 0.16667));
  }

  else
  {
    v11 = ((v9 * (v9 * -0.5)) * v10) + 0.66667;
  }

  v12 = v4 + 2;
  v13 = v8 - v3;
  v14 = 2.0 - v13;
  if (v13 >= 1.0)
  {
    v15 = v14 * (v14 * (v14 * 0.16667));
  }

  else
  {
    v15 = ((v13 * (v13 * -0.5)) * v14) + 0.66667;
  }

  if (v8 >= a2 - 1)
  {
    v8 = a2 - 1;
  }

  v16 = v12 - v3;
  v17 = 2.0 - v16;
  if (v16 >= 1.0)
  {
    v18 = v17 * (v17 * (v17 * 0.16667));
  }

  else
  {
    v18 = ((v16 * (v16 * -0.5)) * v17) + 0.66667;
  }

  v19 = ((v11 * *(a1 + 4 * v4)) + (v7 * *(a1 + 4 * ((v4 - 1) & ~((v4 - 1) >> 31))))) + (v15 * *(a1 + 4 * v8));
  if (v12 >= a2 - 1)
  {
    v20 = a2 - 1;
  }

  else
  {
    v20 = v4 + 2;
  }

  return v19 + (v18 * *(a1 + 4 * v20));
}

void DspLib::makeRaisedCosineWindow(float *__A, vDSP_Length __N)
{
  if (__N)
  {
    v4 = 1;
    v5 = __A;
    do
    {
      v6 = sin(v4 * 3.14159265 / (__N + 1));
      *v5++ = v6;
    }

    while (__N > v4++);
  }

  __C = 0.0;
  vDSP_sve(__A, 1, &__C, __N);
  __B = __C;
  vDSP_vsdiv(__A, 1, &__B, __A, 1, __N);
}

void DspLib::makeLinearInterpolatorAndRaisedCosineCoeffs(float *a1, uint64_t a2, int a3, unint64_t a4)
{
  std::vector<float>::vector[abi:ne200100](&v18, (2 * a3 - 1));
  std::vector<float>::vector[abi:ne200100](&__p, a4);
  v7 = v18;
  v8 = v19;
  v9 = (((v19 - v18) >> 2) + 1) >> 1;
  v10 = v9 - 1;
  *(v18 + v9 - 1) = 1065353216;
  if (v9 != 1)
  {
    v11 = v9;
    v12 = (v8 - 4);
    v13 = 1;
    do
    {
      v14 = v13 / v11;
      *v7++ = v14;
      *v12-- = v14;
    }

    while (v10 > v13++);
  }

  DspLib::makeRaisedCosineWindow(__p, (v17 - __p) >> 2);
  DspLib::convolve(a1, a2, v18, (v19 - v18) >> 2, __p, (v17 - __p) >> 2);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }
}

void sub_1DDBEC1BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

float *DspLib::convolve(float *result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6)
{
  LODWORD(v6) = 0;
  v7 = 0;
  do
  {
    v8 = 0.0;
    v9 = v7;
    LODWORD(v10) = v6;
    do
    {
      v8 = v8 + (*(a3 + 4 * v10) * *(a5 + 4 * v9));
      if (v9-- < 1)
      {
        break;
      }

      v10 = (v10 + 1);
    }

    while (a4 > v10);
    *result++ = v8;
    if (v7 + 1 < a6)
    {
      v6 = v6;
    }

    else
    {
      v6 = (v6 + 1);
    }

    if (v7 + 1 < a6)
    {
      ++v7;
    }

    else
    {
      v7 = a6 - 1;
    }
  }

  while (a4 > v6);
  return result;
}

float DspLib::makeSincWindow(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, float a6)
{
  v11 = a4 * a3;
  v12 = a4 * a3 + 1;
  v13 = a4 * a3 == -1;
  std::function<void ()(std::span<float,18446744073709551615ul>)>::operator()(a5, a1, a2);
  v14 = 0.0;
  if (!v13)
  {
    v15 = 1.0 / (a3 / a6);
    v16 = v11 * -0.5 * v15;
    v17 = a1;
    do
    {
      v18 = *v17;
      v19 = 1.0;
      if (fabs(v16) >= 0.000001)
      {
        v19 = sin(v16 * 3.14159265) / (v16 * 3.14159265);
      }

      v20 = v19 * v18;
      *v17++ = v20;
      v14 = v14 + v20;
      v16 = v15 + v16;
      --v12;
    }

    while (v12);
  }

  v21 = 1.0 / v14;
  v23 = v21;
  MEMORY[0x1E12BE940](a1, 1, &v23, a1, 1, a2);
  return (a3 * a4) * 0.5;
}

uint64_t std::function<void ()(std::span<float,18446744073709551615ul>)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a2;
  v5[1] = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, v5);
}

void DspLib::makeSymmetricHannWindow(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v4 = 0;
    v5 = (a2 - 1);
    do
    {
      v6 = cos(v4 * 6.28318531 / v5) * -0.5 + 0.5;
      *(a1 + 4 * v4++) = v6;
    }

    while (a2 > v4);
  }
}

void DspLib::makeSecondHalfHannWindow(float *a1, unint64_t a2)
{
  if (a2)
  {
    v4 = ((a2 - 1) + (a2 - 1));
    v5 = 1;
    v6 = a2;
    do
    {
      v7 = cos(v6 * 6.28318531 / v4) * -0.5 + 0.5;
      *a1++ = v7;
      ++v6;
    }

    while (a2 > v5++);
  }
}

void DspLib::makePeriodicHannWindow(_DWORD *a1, unint64_t a2)
{
  *a1 = 0;
  v4 = a2 >> 1;
  if (a2 >= 2)
  {
    v5 = 1;
    do
    {
      v6 = cos(v5 * 6.28318531 / a2) * -0.5 + 0.5;
      *&a1[v5] = v6;
      v5 = (v5 + 1);
    }

    while (v4 >= v5);
  }

  if (a2 - v4 >= 2)
  {
    v7 = 2;
    v8 = 1;
    do
    {
      a1[v4 + v8] = a1[v4 - v8];
      v8 = v7;
    }

    while (a2 - v4 > v7++);
  }
}

float DspLib::dotProduct(const float *a1, vDSP_Length __N, const float *a3)
{
  __C = 0.0;
  vDSP_dotpr(a1, 1, a3, 1, &__C, __N);
  return __C;
}

uint64_t DspLib::linSpace(uint64_t result, unint64_t a2, float a3, float a4)
{
  if (a2)
  {
    v4 = 0;
    v5 = (a4 - a3) / (a2 - 1);
    do
    {
      *(result + 4 * v4) = a3 + (v4 * v5);
      ++v4;
    }

    while (a2 > v4);
  }

  return result;
}

float DspLib::createInterpolationTable(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >= 4 * a2)
  {
    v4 = a2 - 1;
    if (a2 >= 1)
    {
      v5 = 0;
      result = 0.5;
      do
      {
        if (v5 <= 1)
        {
          v7 = 1;
        }

        else
        {
          v7 = v5;
        }

        v8 = *(a1 - 4 + 4 * v7);
        v9 = *(a1 + 4 * v5);
        v10 = v5 + 1;
        if (v4 >= v5 + 1)
        {
          v11 = v5 + 1;
        }

        else
        {
          v11 = a2 - 1;
        }

        v12 = *(a1 + 4 * v11);
        v13 = v5 + 2;
        if (v4 < v5 + 2)
        {
          v13 = a2 - 1;
        }

        v14.f32[0] = v9 * 0.5;
        v14.f32[1] = -v9;
        *&v14.u32[2] = vmul_n_f32(0x3F2AAAAB00000000, v9);
        *(a3 + 16 * v5++) = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(v14, xmmword_1DE098240, v8), xmmword_1DE098250, v12), xmmword_1DE098260, *(a1 + 4 * v13));
      }

      while ((a2 & 0x7FFFFFFF) != v10);
    }
  }

  return result;
}

void DspLib::elementAtIndexWithInterpolation(uint64_t a1, uint64_t a2, const float *a3, uint64_t a4, uint64_t a5, vDSP_Length a6)
{
  v22[1] = *MEMORY[0x1E69E9840];
  if (a6)
  {
    v10 = 4 * a6;
    MEMORY[0x1EEE9AC00](a1);
    v11 = (v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    vDSP_vfrac(v12, 1, v11, 1, v13);
    MEMORY[0x1EEE9AC00](v14);
    vDSP_vfixu32(a3, 1, v11, 1, a6);
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = *v11;
LABEL_3:
    v20 = v16;
    do
    {
      if (LODWORD(v11[v15]) != LODWORD(v19))
      {
        v21 = v18;
        v18 = 1;
        vDSP_vpoly((a1 + 4 * (4 * LODWORD(v19))), 1, &v11[v17], 1, (a5 + 4 * v17), 1, v21, 3uLL);
        v19 = v11[v15];
        v15 = v20 + 1;
        v16 = v20 + 1;
        v17 = v20;
        if (a6 > v15)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }

      ++v18;
      v15 = ++v20;
    }

    while (a6 > v20);
    v20 = v17;
    if (!v18)
    {
      return;
    }

LABEL_10:
    vDSP_vpoly((a1 + 4 * (4 * LODWORD(v19))), 1, &v11[v20], 1, (a5 + 4 * v20), 1, v18, 3uLL);
  }
}

float DspLib::inv3x3real(float *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v9.f32[0] = (v4 * v8) - (v5 * v7);
  v10 = (v3 * v8) - (v5 * v6);
  *&v11 = (v3 * v7) - (v4 * v6);
  v12 = -((v1 * v8) - (v2 * v7));
  v13.f32[0] = (*a1 * v8) - (v2 * v6);
  *&v14 = -((*a1 * v7) - (v1 * v6));
  v15 = (v1 * v5) - (v2 * v4);
  v16 = -((*a1 * v5) - (v2 * v3));
  v17 = (*a1 * v4) - (v1 * v3);
  v18 = 1.0 / (((*a1 * v9.f32[0]) - (v10 * v1)) + (v2 * *&v11));
  v9.f32[1] = v12;
  v9.f32[2] = v15;
  v9.f32[3] = -v10;
  v13.f32[1] = v16;
  v13.i64[1] = __PAIR64__(v14, v11);
  *a1 = vmulq_n_f32(v9, v18);
  *(a1 + 1) = vmulq_n_f32(v13, v18);
  result = v17 * v18;
  a1[8] = result;
  return result;
}

uint64_t DspLib::matNxNInv(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  __lda = *(a1 + 16);
  v2 = MEMORY[0x1EEE9AC00](a1);
  v4 = &v8[-((v3 + 15) & 0x7FFFFFFF0)];
  __info = -1;
  v5 = sgetrf_(&__lda, &__lda, *v2, &__lda, v4, &__info);
  __lwork = __lda * __lda;
  MEMORY[0x1EEE9AC00](v5);
  sgetri_(&__lda, *a1, &__lda, v4, &v8[-v6], &__lwork, &__info);
  return __info;
}

float DspLib::peakiness(const float *a1, vDSP_Length __N)
{
  __C = 0.0;
  vDSP_sve(a1, 1, &__C, __N);
  v4 = __C;
  v7 = 0.0;
  vDSP_svesq(a1, 1, &v7, __N);
  return (sqrtf(__N) * sqrtf(v7)) / (v4 + 0.000000001);
}

void DspLib::waterFillingSolution(uint64_t a1, vDSP_Length a2, float a3)
{
  v12[1] = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](a1);
  v7 = (v12 - v6);
  if (a2)
  {
    memmove(v12 - v6, v5, 4 * a2);
    vDSP_vsort(v7, a2, 1);
    v8 = 0;
    v9 = 1;
    do
    {
      v10 = v7[v8];
      if ((v10 * (a2 - v8)) >= a3)
      {
        break;
      }

      a3 = a3 - v10;
      v8 = v9;
    }

    while (a2 > v9++);
  }

  else
  {
    vDSP_vsort((v12 - v6), 0, 1);
  }
}

uint64_t DspLib::AverageRms::initialize(uint64_t this, double a2)
{
  *this = a2;
  *(this + 8) = 1;
  return this;
}

uint64_t DspLib::AverageRms::configure(uint64_t result, int a2, double a3, float a4)
{
  *(result + 12) = a4;
  *(result + 16) = a3;
  *(result + 48) = a2;
  *(result + 40) = 0;
  v4 = -100.0;
  if (a2 != 1)
  {
    v4 = 0.0;
  }

  *(result + 32) = v4;
  return result;
}

uint64_t DspLib::AverageRms::reset(uint64_t this)
{
  *(this + 40) = 0;
  v1 = -100.0;
  if (*(this + 48) != 1)
  {
    v1 = 0.0;
  }

  *(this + 32) = v1;
  return this;
}

void DspLib::AverageRms::process(uint64_t a1, uint64_t a2, vDSP_Length a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    __N = a3;
    __C = *(a1 + 12);
    MEMORY[0x1E12BE940](a2, 1, &__C, v10, 1, a3);
    __C = 0.0;
    vDSP_rmsqv(v10, 1, &__C, __N);
    v5 = __C;
    if (*(a1 + 48) == 1)
    {
      v5 = log10f(__C + 0.00001) * 20.0;
    }

    if (a3 == *(a1 + 40))
    {
      v6 = *(a1 + 24);
    }

    else
    {
      v6 = exp(-1.0 / (*(a1 + 16) * 1000.0 * ceil(*a1 / a3) / 1000.0));
      *(a1 + 24) = v6;
      *(a1 + 40) = a3;
    }

    v7 = v6;
    *(a1 + 32) = v5 + (v7 * (*(a1 + 32) - v5));
  }
}

void DspLib::SideChain::Algorithm::initialize(DspLib::SideChain::Algorithm *this, double a2, unint64_t a3)
{
  std::vector<float>::resize(this, a3);
  std::vector<float>::resize(this + 3, a3);
  *(this + 48) = 1;
  v6 = a2;
  *(this + 13) = v6;
  DspLib::Biquad::ParametricFilter::initialize((this + 792), 1uLL, v6, 1uLL);
  DspLib::Biquad::ParametricFilter::initialize((this + 896), 1uLL, *(this + 13), 1uLL);
  *(this + 69) = xmmword_1DE098400;

  DspLib::Biquad::ParametricFilter::setParametricEQ(this + 896, 0x41A0000000000000uLL, 0x3F34FDF400000000, 0, 0x41uLL);
}

void DspLib::SideChain::Algorithm::uninitialize(DspLib::SideChain::Algorithm *this)
{
  *(this + 48) = 0;
  DspLib::Biquad::ParametricFilter::uninitialize((this + 792));
  DspLib::Biquad::ParametricFilter::uninitialize((this + 896));
  DspLib::Biquad::ParametricFilter::uninitialize((this + 1000));
  *(this + 1) = *this;
  *(this + 4) = *(this + 3);
}

void DspLib::SideChain::Algorithm::reset(DspLib::SideChain::Algorithm *this)
{
  DspLib::Biquad::SetupWrapper::reset((this + 840));
  DspLib::Biquad::SetupWrapper::reset((this + 944));
  DspLib::Biquad::Filter::initializeStates((this + 896), 1.0);
  DspLib::Biquad::SetupWrapper::reset((this + 1048));
  *(this + 277) = 0;
  *(this + 279) = 0;
  *(this + 190) = 0;
  *(this + 194) = 0;
  *(this + 98) = 0;
}

void DspLib::SideChain::Algorithm::setParameters(uint64_t a1, unint64_t a2, double *a3, uint64_t a4)
{
  DspLib::Biquad::ParametricFilter::setParametricEQ(a1 + 792, a2, a3, 0, 0x41uLL);
  if (*(a4 + 12) == 1)
  {
    DspLib::Biquad::ParametricFilter::uninitialize((a1 + 1000));
  }

  else
  {
    DspLib::SideChain::Algorithm::configureHilbertTransform(a1, a2, *(&a2 + 1));
  }

  DspLib::SideChain::Algorithm::createGainTable(a1, *a4, *(a4 + 4), *(a4 + 8));
  v7 = *(a4 + 12);
  *(a1 + 772) = *(a4 + 20);
  *(a1 + 764) = v7;
}

void DspLib::SideChain::Algorithm::configureHilbertTransform(uint64_t a1, int a2, float a3)
{
  if (a2 == 8)
  {
    v5 = 20.0;
  }

  else
  {
    if (a2 != 9)
    {
      goto LABEL_6;
    }

    v5 = 20000.0;
  }

  a3 = sqrtf(a3 * v5);
LABEL_6:
  DspLib::Biquad::ParametricFilter::initialize((a1 + 1000), 2uLL, *(a1 + 52), 1uLL);
  v6 = 10000.0;
  if (a3 <= 10000.0)
  {
    v6 = a3;
  }

  if (a3 >= 40.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 40.0;
  }

  DspLib::Biquad::ParametricFilter::setParametricEQ(a1 + 1000, (COERCE_UNSIGNED_INT(v7 * 0.5) << 32) | 0xB, 0x3EBD70A400000000, 0, 0);

  DspLib::Biquad::ParametricFilter::setParametricEQ(a1 + 1000, (COERCE_UNSIGNED_INT(v7 + v7) << 32) | 0xB, 0x3EBD70A400000000, 0, 1uLL);
}

void DspLib::SideChain::Algorithm::createGainTable(DspLib *a1, float a2, float a3, float a4)
{
  v6 = 0;
  v17 = *MEMORY[0x1E69E9840];
  if (a3 <= 0.0)
  {
    v7 = a3;
  }

  else
  {
    v7 = 0.0;
  }

  v8 = fmaxf(a3, 0.0);
  v9 = 10.0;
  if (a4 <= 10.0)
  {
    v9 = a4;
  }

  v10 = (1.0 / v9) + -1.0;
  if (a4 < 0.1)
  {
    v10 = 9.0;
  }

  if (a4 >= 9.9)
  {
    v11 = -1.0;
  }

  else
  {
    v11 = v10;
  }

  v12 = -100.0;
  do
  {
    v13 = (v12 - a2) * v11;
    if (v8 >= v13)
    {
      v14 = (v12 - a2) * v11;
    }

    else
    {
      v14 = v8;
    }

    if (v13 >= v7)
    {
      v15 = v14;
    }

    else
    {
      v15 = v7;
    }

    *&v16[v6] = DspLib::dB2Amp(a1, v15);
    v12 = v12 + 2.3256;
    v6 += 4;
  }

  while (v6 != 176);
  DspLib::createInterpolationTable(v16, 44, a1 + 56, 0xB0uLL);
}

void DspLib::SideChain::Algorithm::process(uint64_t a1, uint64_t a2, uint64_t a3, float *a4, unint64_t a5)
{
  v26[2] = *MEMORY[0x1E69E9840];
  DspLib::Biquad::Filter::process((a1 + 792), a2, a3, a4, a5);
  if (*(a1 + 1000) == 1)
  {
    v8 = *(a1 + 1104);
    v26[0] = a4;
    v26[1] = a4;
    v9 = *(a1 + 24);
    v24 = *a1;
    v25 = v9;
    *&v21 = v26;
    *(&v21 + 1) = 2;
    v10 = a5 / v8 + 1;
    v22 = a5;
    __A.realp = &v24;
    __A.imagp = 2;
    v20 = a5;
    DspLib::Biquad::Filter::process((a1 + 1000), &v21, &__A);
    MEMORY[0x1EEE9AC00](v11);
    v23[0] = &__A - 8 * v12;
    v23[1] = v23[0] + 4 * v12;
    *&v21 = v23;
    *(&v21 + 1) = 2;
    v22 = v10;
    __A.realp = &v24;
    __A.imagp = 2;
    v20 = a5;
    DspLib::DownSampler::process((a1 + 1104), &__A, &v21);
    v13 = v22;
    v14 = v21;
    *(a1 + 784) = v22;
    __A = *v14;
    v20 = v13;
    vDSP_zvabs(&__A, 1, v25, 1, v13);
    DspLib::SideChain::Algorithm::gainForLevel(a1, v25, *(a1 + 784), v24, *(a1 + 784));
    DspLib::SampleAndHoldUpSampler::process((a1 + 1112), v24, *(a1 + 784), a4, a5);
  }

  else
  {
    v15 = DspLib::sumOfSquares(a4, a5);
    v16 = sqrtf((v15 / a5) + (v15 / a5));
    if (a5)
    {
      v17 = *(a1 + 776);
      v18 = 772;
      if (v17 < v16)
      {
        v18 = 768;
      }

      v16 = v17 + ((v16 - v17) * (1.0 - expf(-1.0 / ((*(a1 + v18) * (*(a1 + 52) / a5)) / 1000.0))));
      *(a1 + 776) = v16;
    }

    *(a1 + 760) = v16;
    *&v21 = v16;
    LODWORD(__A.realp) = 0;
    DspLib::SideChain::Algorithm::gainForLevel(a1, &v21, 1uLL, &__A, 1uLL);
    DspLib::fill(a4, a5, *&__A.realp);
  }

  DspLib::Biquad::Filter::process((a1 + 896), a4, a5, a4, a5);
}

void DspLib::SideChain::Algorithm::gainForLevel(uint64_t a1, const float *a2, vDSP_Length __N, float *__D, vDSP_Length a5)
{
  DspLib::clip(a2, __N, __D, 0.00001, 1.0);
  DspLib::amp2dB(__D, a5, 1.0);
  DspLib::add(__D, a5, 100.0);
  DspLib::multiply(__D, a5, 0.43);

  DspLib::elementAtIndexWithInterpolation(a1 + 56, 176, __D, a5, __D, a5);
}

float DspLib::SideChain::Algorithm::gainForLevel(DspLib::SideChain::Algorithm *this, float a2)
{
  v4 = a2;
  __D = 0.0;
  DspLib::SideChain::Algorithm::gainForLevel(this, &v4, 1uLL, &__D, 1uLL);
  return __D;
}

double DspLib::SideChain::Algorithm::sideChainLevelLinear(DspLib::SideChain::Algorithm *this)
{
  if (*(this + 1000) == 1)
  {
    v1 = *(this + 98);
    if (v1)
    {
      *&result = DspLib::mean(*(this + 3), v1);
    }

    else
    {
      return 0.0;
    }
  }

  else
  {
    LODWORD(result) = *(this + 190);
  }

  return result;
}

float DspLib::LoudspeakerSystemIDV1::PilotTone::initialize(DspLib::LoudspeakerSystemIDV1::PilotTone *this, double a2)
{
  *(this + 1) = a2;
  *this = 1;
  *(this + 20) = 0;
  *(this + 42) = 257;
  *(this + 22) = 0;
  result = *(this + 10);
  *(this + 8) = result;
  return result;
}

float DspLib::LoudspeakerSystemIDV1::PilotTone::reset(DspLib::LoudspeakerSystemIDV1::PilotTone *this)
{
  *(this + 20) = 0;
  *(this + 42) = 257;
  *(this + 22) = 0;
  result = *(this + 10);
  *(this + 8) = result;
  return result;
}

void DspLib::LoudspeakerSystemIDV1::PilotTone::setParameters(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    v5 = *(a1 + 16);
    if (a3 != DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV1::Parameters::kDefinition, 0xAu))
    {
      DspLib::AlgorithmBaseNewParameters::parameterGroup();
    }

    v6 = DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV1::Parameters::kDefinition, 5u);
    v7 = (a2 + 4 * v6);
    v8 = DspLib::dB2Amp(v6, v7[1]);
    v9 = *v7;
    v10 = *(a1 + 8);
    v11 = (v10 / fmaxf(roundf(v10 / 2000.0), 1.0)) * 0.00097656;
    v12 = *v7 / v11;
    v13 = vcvtas_u32_f32(v12);
    *(a1 + 24) = v13;
    v14 = v11 * roundf(v12);
    v15 = v14;
    *(a1 + 16) = v14;
    if (fmodf(v10, v14) > 0.5)
    {
      if (v13 - 513 >= 0xFFFFFE02)
      {
        v20 = v13;
        do
        {
          v18 = v11 * v20;
          v21 = v10 - (v18 * floorf(v10 / v18));
          v19 = v21 >= 0.5;
          v22 = v20 + 1;
          if (v21 < 0.5)
          {
            break;
          }

          v23 = v20 - 2;
          ++v20;
        }

        while (v23 < 0x1FE);
        v17 = v22 - 1;
      }

      else
      {
        v17 = v13 - 1;
        v18 = 0.0;
        v19 = 1;
      }

      do
      {
        if (v13 - 511 < 0xFFFFFE02)
        {
          goto LABEL_13;
        }

        v24 = v11 * v13--;
      }

      while ((v10 - (v24 * floorf(v10 / v24))) >= 0.5);
      if (v19)
      {
LABEL_13:
        v15 = (v10 / floorf(v10 / v9));
        *(a1 + 16) = v15;
        goto LABEL_19;
      }

      v25 = v18;
      if (vabdd_f64(v15, v18) >= vabdd_f64(v15, v24))
      {
        v18 = v24;
      }

      v15 = v18;
      *(a1 + 16) = v18;
      if (vabdd_f64(v18, v25) >= vabdd_f64(v18, v24))
      {
        v17 = v13 + 1;
      }

      *(a1 + 24) = v17;
    }

LABEL_19:
    if (v15 == 0.0)
    {
      v26 = 0;
    }

    else
    {
      v26 = (v10 / v15);
    }

    isEqual = DspLib::isEqual(v16, v8, *(a1 + 28), 1.0e-20);
    if (!isEqual || (v28 = v5, !(v29 = DspLib::isEqual(isEqual, v28, *(a1 + 16), 1.0e-20))))
    {
      *(a1 + 28) = v8;
      *(a1 + 92) = 1.0 - v8;
      std::vector<float>::resize((a1 + 56), v26);
      *(a1 + 80) = 0;
      v30 = *(a1 + 56);
      v31 = *(a1 + 64) - v30;
      if (v31)
      {
        v32 = 0;
        v33 = v31 >> 2;
        v34 = (v31 >> 2);
        do
        {
          v35 = (v32 / v34) * 6.28318531;
          *(v30 + 4 * v32++) = sinf(v35) * *(a1 + 28);
        }

        while (v33 > v32);
      }
    }

    *(a1 + 36) = DspLib::dB2Power(v29, v7[3]);
    *(a1 + 40) = DspLib::dB2Power(v36, v7[4]);
    v37 = *(a1 + 8);
    *(a1 + 48) = expf(-1.0 / (((v7[2] * 1000.0) * v37) / 1000.0));
    *(a1 + 44) = expf(-1.0 / ((((v7[2] + v7[2]) * 1000.0) * v37) / 1000.0));
    *(a1 + 1) = 1;
  }

  else
  {
    DspLib::LoudspeakerSystemIDV1::PilotTone::setParameters();
  }
}

void DspLib::LoudspeakerSystemIDV1::PilotTone::process(DspLib::LoudspeakerSystemIDV1::PilotTone *this, const float *a2, vDSP_Length a3)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*this)
  {
    if (*(this + 1))
    {
      DspLib::LoudspeakerSystemIDV1::PilotTone::updatePilotToneVectorFromLookUpTable(this, &v7, a3);
      v6 = DspLib::meanSquare(a2, a3);
      *(this + 85) = *&v6 < *(this + 8);
      DspLib::multiply(a2, a3, *(this + 23));
      DspLib::add();
    }

    DspLib::LoudspeakerSystemIDV1::PilotTone::process();
  }

  else
  {
    DspLib::LoudspeakerSystemIDV1::PilotTone::process();
  }
}

void *DspLib::LoudspeakerSystemIDV1::PilotTone::updatePilotToneVectorFromLookUpTable(void *this, float *__dst, unsigned int a3)
{
  v4 = __dst;
  v5 = this;
  v6 = a3;
  v7 = this[7];
  v8 = this[8] - v7;
  v9 = v8 >> 2;
  if (v8 >> 2 >= a3)
  {
    v21 = *(this + 20);
    if (v9 - v21 >= a3)
    {
      if (a3)
      {
        this = DspLib::copy((v7 + 4 * v21), a3, __dst);
        LODWORD(v21) = *(v5 + 80);
      }

      LODWORD(v25) = v21 + a3;
    }

    else
    {
      v22 = v8 >> 2;
      v23 = __dst;
      v24 = v22 - v21;
      if (v22 != v21)
      {
        this = DspLib::copy((v7 + 4 * v21), (v22 - v21), __dst);
        v23 = &v4[v24];
      }

      v25 = a3 - v24;
      if (v25)
      {
        this = DspLib::copy(*(v5 + 56), v25, v23);
      }
    }

    *(v5 + 80) = v25;
  }

  else
  {
    v10 = vcvtps_u32_f32(a3 / v9);
    if (v10)
    {
      v11 = 0;
      v12 = *(this + 20);
      v13 = __dst;
      v14 = a3;
      do
      {
        v15 = *(v5 + 56);
        v16 = (*(v5 + 64) - v15) >> 2;
        v17 = v16 - v12;
        v18 = a3 - v11;
        if (v16 - v12 <= a3 - v11)
        {
          if (v16 != v12)
          {
            this = DspLib::copy((v15 + 4 * v12), v16 - v12, v13);
            v20 = &v13[v14];
            v14 -= v17;
            v13 = &v20[-v14];
          }

          v18 = 0;
          v11 += v17;
        }

        else
        {
          if (v18)
          {
            this = DspLib::copy((v15 + 4 * v12), a3 - v11, v13);
            v19 = &v13[v14];
            v14 -= v18;
            v13 = &v19[-v14];
          }

          v11 = a3;
        }

        *(v5 + 80) = v18;
        v12 = v18;
        --v10;
      }

      while (v10);
    }
  }

  if (*(v5 + 84) != 1)
  {
    if ((*(v5 + 85) & 1) == 0)
    {
      return this;
    }

    goto LABEL_26;
  }

  if (*(v5 + 85))
  {
LABEL_26:
    v28 = (v5 + 36);
    v26 = *(v5 + 48);
    v27 = 0.0;
    goto LABEL_27;
  }

  v26 = *(v5 + 44);
  v27 = 1.0 - v26;
  v28 = (v5 + 40);
LABEL_27:
  *(v5 + 32) = *v28;
  v29 = *(v5 + 88);
  if (a3)
  {
    do
    {
      *v4 = v29 * *v4;
      ++v4;
      v29 = v27 + (*(v5 + 88) * v26);
      *(v5 + 88) = v29;
      --v6;
    }

    while (v6);
  }

  *(v5 + 84) = v29 < v26;
  return this;
}

void DspLib::LoudspeakerSystemIDV1::PilotTone::status(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    v2 = *(a1 + 16);
    *(a2 + 44) = v2;
    *(a2 + 136) = *(a1 + 24);
  }

  else
  {
    DspLib::LoudspeakerSystemIDV1::PilotTone::status();
  }
}

void DspLib::LoudspeakerSystemIDV1::PilotTone::setParameters()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/LoudspeakerManagerV1/LoudspeakerSystemIDV1/dsp/DspLibLoudspeakerSystemIDV1PilotTone.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 41);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::LoudspeakerSystemIDV1::PilotTone::process()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/LoudspeakerManagerV1/LoudspeakerSystemIDV1/dsp/DspLibLoudspeakerSystemIDV1PilotTone.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 71);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/LoudspeakerManagerV1/LoudspeakerSystemIDV1/dsp/DspLibLoudspeakerSystemIDV1PilotTone.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 72);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::LoudspeakerSystemIDV1::PilotTone::status()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/LoudspeakerManagerV1/LoudspeakerSystemIDV1/dsp/DspLibLoudspeakerSystemIDV1PilotTone.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 82);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::LoudspeakerHealth::initialize(DspLib::LoudspeakerHealth *this, double a2, unsigned int a3)
{
  *this = a2;
  *(this + 3) = a3;
  *(this + 26) = vcvtad_u64_f64(a2 * 0.300000012);
  std::vector<DspLib::AverageRms>::resize(this + 2, a3);
  v4 = *(this + 2);
  v5 = *(this + 3);
  if (v4 != v5)
  {
    do
    {
      DspLib::AverageRms::initialize(v4, *this);
      v4 += 56;
    }

    while (v4 != v5);
    v4 = *(this + 2);
    v5 = *(this + 3);
  }

  while (v4 != v5)
  {
    DspLib::AverageRms::configure(v4, 1, 1.0, 1.0);
    v4 += 56;
  }

  std::vector<float>::resize(this + 5, *(this + 3));
  DspLib::clear(*(this + 5), (*(this + 6) - *(this + 5)) >> 2);
  std::vector<float>::resize(this + 8, *(this + 3));
  DspLib::clear(*(this + 8), (*(this + 9) - *(this + 8)) >> 2);
  std::vector<float>::resize(this + 11, *(this + 3));
  DspLib::clear(*(this + 11), (*(this + 12) - *(this + 11)) >> 2);
  std::vector<float>::resize(this + 14, *(this + 3));
  DspLib::clear(*(this + 14), (*(this + 15) - *(this + 14)) >> 2);
  std::vector<float>::resize(this + 17, *(this + 3));
  DspLib::clear(*(this + 17), (*(this + 18) - *(this + 17)) >> 2);
  std::vector<float>::resize(this + 20, *(this + 3));
  DspLib::clear(*(this + 20), (*(this + 21) - *(this + 20)) >> 2);
  std::vector<unsigned long>::resize(this + 23, *(this + 3));
  v6 = *(this + 23);
  v7 = *(this + 24) - v6;
  if (v7 >= 1)
  {
    bzero(v6, v7);
  }

  *(this + 8) = 1;

  DspLib::LoudspeakerHealth::reset(this);
}

void std::vector<DspLib::AverageRms>::resize(void *a1, unint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<DspLib::AverageRms>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 56 * a2;
  }
}

void DspLib::LoudspeakerHealth::reset(DspLib::LoudspeakerHealth *this)
{
  v2 = *(this + 2);
  v3 = *(this + 3);
  while (v2 != v3)
  {
    DspLib::AverageRms::reset(v2);
    v2 += 56;
  }

  v4 = *(this + 11);
  v5 = *(this + 12);
  if (v4 != v5)
  {
    memset_pattern16(v4, &unk_1DE098430, v5 - v4);
  }

  v6 = *(this + 14);
  v7 = *(this + 15);
  if (v6 != v7)
  {
    memset_pattern16(v6, &unk_1DE098430, v7 - v6);
  }

  v8 = *(this + 23);
  v9 = *(this + 24) - v8;
  if (v9 >= 1)
  {

    bzero(v8, v9);
  }
}

uint64_t DspLib::LoudspeakerHealth::uninitialize(uint64_t this)
{
  v1 = *(this + 16);
  v2 = *(this + 24);
  if (v1 != v2)
  {
    v3 = 0;
    v4 = (v2 - v1 - 56) / 0x38uLL;
    v5 = vdupq_n_s64(v4);
    v6 = (v4 + 16) & 0xFFFFFFFFFFFFFF0;
    v7 = *(this + 16);
    do
    {
      v8 = vdupq_n_s64(v3);
      v9 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(v8, xmmword_1DE095160)));
      if (vuzp1_s8(vuzp1_s16(v9, *v5.i8), *v5.i8).u8[0])
      {
        v7[8] = 0;
      }

      if (vuzp1_s8(vuzp1_s16(v9, *&v5), *&v5).i8[1])
      {
        v7[64] = 0;
      }

      if (vuzp1_s8(vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, vorrq_s8(v8, xmmword_1DE095150)))), *&v5).i8[2])
      {
        v7[120] = 0;
        v7[176] = 0;
      }

      v10 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(v8, xmmword_1DE095220)));
      if (vuzp1_s8(*&v5, vuzp1_s16(v10, *&v5)).i32[1])
      {
        v7[232] = 0;
      }

      if (vuzp1_s8(*&v5, vuzp1_s16(v10, *&v5)).i8[5])
      {
        v7[288] = 0;
      }

      if (vuzp1_s8(*&v5, vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, vorrq_s8(v8, xmmword_1DE0952D0))))).i8[6])
      {
        v7[344] = 0;
        v7[400] = 0;
      }

      v11 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(v8, xmmword_1DE0952C0)));
      if (vuzp1_s8(vuzp1_s16(v11, *v5.i8), *v5.i8).u8[0])
      {
        v7[456] = 0;
      }

      if (vuzp1_s8(vuzp1_s16(v11, *&v5), *&v5).i8[1])
      {
        v7[512] = 0;
      }

      if (vuzp1_s8(vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, vorrq_s8(v8, xmmword_1DE0952B0)))), *&v5).i8[2])
      {
        v7[568] = 0;
        v7[624] = 0;
      }

      v12 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(v8, xmmword_1DE0952A0)));
      if (vuzp1_s8(*&v5, vuzp1_s16(v12, *&v5)).i32[1])
      {
        v7[680] = 0;
      }

      if (vuzp1_s8(*&v5, vuzp1_s16(v12, *&v5)).i8[5])
      {
        v7[736] = 0;
      }

      if (vuzp1_s8(*&v5, vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, vorrq_s8(v8, xmmword_1DE095290))))).i8[6])
      {
        v7[792] = 0;
        v7[848] = 0;
      }

      v3 += 16;
      v7 += 896;
    }

    while (v6 != v3);
  }

  *(this + 24) = v1;
  *(this + 48) = *(this + 40);
  *(this + 72) = *(this + 64);
  *(this + 96) = *(this + 88);
  *(this + 120) = *(this + 112);
  *(this + 144) = *(this + 136);
  *(this + 168) = *(this + 160);
  *(this + 192) = *(this + 184);
  *(this + 8) = 0;
  return this;
}

float DspLib::LoudspeakerHealth::setAmplifierVoltsPerFullScale(DspLib::LoudspeakerHealth *this, unsigned int a2, float a3)
{
  *(*(this + 17) + 4 * a2) = DspLib::amp2dB(this, a3) + -50.0;
  DspLib::AverageRms::configure(*(this + 2) + 56 * a2, 1, 1.0, a3);
  result = *(*(this + 17) + 4 * a2) + -3.0;
  *(*(this + 5) + 4 * a2) = result;
  return result;
}

void DspLib::LoudspeakerHealth::process(uint64_t a1, uint64_t a2, vDSP_Length a3, uint64_t a4, unsigned int a5)
{
  v5 = *(a4 + 196);
  *(a1 + 220) = v5;
  if (a3 && v5)
  {
    v10 = a5;
    v11 = 56 * a5;
    DspLib::AverageRms::process(*(a1 + 16) + v11, a2, a3);
    *(*(a1 + 88) + 4 * a5) = *(a4 + 184);
    *(*(a1 + 112) + 4 * a5) = *(a4 + 188);
    v13 = *(a1 + 136);
    v14 = *(a1 + 184);
    if (*(*(a1 + 16) + v11 + 32) <= *(v13 + 4 * a5))
    {
      v15 = 0;
    }

    else
    {
      v15 = *(v14 + 8 * v10) + a3;
    }

    *(v14 + 8 * v10) = v15;
    v16 = *(a4 + 192);
    v17 = *(a1 + 160);
    if (v16 != *(v17 + 4 * v10))
    {
      *(v17 + 4 * v10) = v16;
      v18 = *(v13 + 4 * v10);
      *(*(a1 + 64) + 4 * v10) = (v18 - DspLib::amp2dB(v12, v16)) + -3.0;
    }
  }
}

float DspLib::LoudspeakerHealth::status(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DspLib::LoudspeakerHealth::updateSpeakerHealthStatus(a1);
  v7 = *(a1 + 12);
  if (v7)
  {
    v8 = *(a1 + 136);
    v9 = *(a1 + 88);
    v10 = *(a1 + 112);
    v11 = *(a1 + 40);
    v12 = *(a1 + 64);
    v13 = (*(a1 + 16) + 32);
    v14 = (a2 + 12);
    do
    {
      v15 = *v13;
      v13 += 14;
      *(v14 - 3) = v15;
      v16 = *v8++;
      *(v14 - 2) = v16;
      v17 = *v9++;
      *(v14 - 1) = v17;
      v18 = *v10++;
      *v14 = v18;
      v19 = *v11++;
      v14[1] = v19;
      v20 = *v12++;
      v14[2] = v20;
      v14 += 6;
      --v7;
    }

    while (v7);
  }

  result = *(a1 + 216);
  v22 = a2 + 4 * a3;
  LOBYTE(v6) = *(a1 + 220);
  *(v22 - 8) = result;
  *(v22 - 4) = v6;
  return result;
}

uint64_t DspLib::LoudspeakerHealth::updateSpeakerHealthStatus(uint64_t this)
{
  v1 = *(this + 12);
  if (v1)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    do
    {
      if (*(*(this + 184) + 8 * v3) <= *(this + 208))
      {
        v7 = *(this + 216) & (3 << v2);
      }

      else
      {
        v5 = *(*(this + 88) + 4 * v3);
        v6 = *(*(this + 40) + 4 * v3);
        if (v5 >= v6 || *(*(this + 112) + 4 * v3) >= *(*(this + 64) + 4 * v3))
        {
          if ((v5 <= v6 || *(*(this + 112) + 4 * v3) >= *(*(this + 64) + 4 * v3)) && (v5 >= v6 || *(*(this + 112) + 4 * v3) <= *(*(this + 64) + 4 * v3)))
          {
            v7 = 1 << v2;
          }

          else
          {
            v7 = 2 << v2;
          }
        }

        else
        {
          v7 = 3 << v2;
        }
      }

      v4 |= v7;
      ++v3;
      v2 += 2;
    }

    while (v1 != v3);
  }

  else
  {
    v4 = 0;
  }

  *(this + 216) = v4;
  return this;
}

void std::vector<DspLib::AverageRms>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (0x6DB6DB6DB6DB6DB7 * ((v5 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = v4 + 56 * a2;
      do
      {
        *v4 = 0uLL;
        *(v4 + 16) = 0uLL;
        *(v4 + 48) = 0;
        *(v4 + 32) = 0uLL;
        *(v4 + 12) = 1065353216;
        *(v4 + 16) = 0x4024000000000000;
        v4 += 56;
      }

      while (v4 != v10);
      v4 = v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v6 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0x492492492492492)
    {
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0x6DB6DB6DB6DB6DB7 * ((v5 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x249249249249249)
    {
      v9 = 0x492492492492492;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::allocator<DspLib::AverageRms>::allocate_at_least[abi:ne200100](a1, v9);
    }

    v11 = 56 * v6;
    v12 = 56 * v6 + 56 * a2;
    v13 = v11;
    do
    {
      *v13 = 0uLL;
      *(v13 + 16) = 0uLL;
      *(v13 + 48) = 0;
      *(v13 + 32) = 0uLL;
      *(v13 + 12) = 1065353216;
      *(v13 + 16) = 0x4024000000000000;
      v13 += 56;
    }

    while (v13 != v12);
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v12;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

void std::allocator<DspLib::AverageRms>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t DspLib::BuzzKill::Algorithm::initialize(DspLib::BuzzKill::Algorithm *this, int a2, double a3)
{
  v4 = DspLib::AlgorithmBase::initialize(this, a2, a3);
  if (v4)
  {
    v5 = (*(*this + 232))(this);
    DspLib::ComplexVector::setLength((this + 336), v5);
    v6 = (*(*this + 64))(this);
    v7 = (*(*this + 232))(this);
    DspLib::ChannelBuffer::resize((this + 240), v6, v7);
    v8 = (*(*this + 64))(this);
    v9 = (*(*this + 232))(this);
    DspLib::ChannelBuffer::resize((this + 288), v8, v9);
    v10 = (*(*this + 64))(this);
    std::vector<float *>::resize(this + 52, v10);
    v11 = (*(*this + 48))(this);
    DspLib::Biquad::ParametricFilter::initialize((this + 448), 1uLL, v11, 1uLL);
    operator new();
  }

  return v4;
}

void DspLib::BuzzKill::Algorithm::uninitialize(DspLib::BuzzKill::Algorithm *this)
{
  *(this + 8) = 0;
  DspLib::ComplexVector::setLength((this + 336), 0);
  std::vector<std::vector<unsigned int>>::clear[abi:ne200100](this + 30);
  *(this + 34) = *(this + 33);
  std::vector<std::vector<unsigned int>>::clear[abi:ne200100](this + 36);
  *(this + 40) = *(this + 39);
  std::unique_ptr<DspLib::BuzzKill::FFTForDisplay>::reset[abi:ne200100](this + 55, 0);
  std::unique_ptr<DspLib::BuzzKill::HighBuzzKillFFT>::reset[abi:ne200100](this + 172, 0);
  DspLib::Biquad::ParametricFilter::uninitialize((this + 448));
  v2 = *(this + 69);
  *(this + 69) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  DspLib::FFT::Filterbank::uninitialize((this + 968));
  DspLib::FFT::Filterbank::uninitialize((this + 560));
  DspLib::ComplexVector::setLength((this + 1472), 0);
  DspLib::ComplexVector::setLength((this + 1552), 0);
  *(this + 175) = *(this + 174);
  *(this + 181) = *(this + 180);
  *(this + 178) = *(this + 177);
  *(this + 346) = 0;
  std::vector<std::vector<float>>::resize(this + 340, 0);
  std::vector<std::vector<float>>::resize(this + 327, 0);
  *(this + 205) = *(this + 204);
  *(this + 208) = *(this + 207);
  DspLib::BuzzKill::MitigationFilterBank::uninitialize((this + 1696));
  std::vector<AUSM::FloatVector>::clear[abi:ne200100](this + 317);
  DspLib::Biquad::ParametricFilter::uninitialize((this + 2760));
  std::vector<AUSM::FloatVector>::clear[abi:ne200100](this + 359);
  *(this + 688) = 0;
  *(this + 640) = 0;
  *(this + 614) = *(this + 613);
  *(this + 53) = *(this + 52);
}

void *std::unique_ptr<DspLib::BuzzKill::FFTForDisplay>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[55];
    if (v3)
    {
      v2[56] = v3;
      operator delete(v3);
    }

    DspLib::FFT::Filterbank::~Filterbank((v2 + 3));

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

DspLib::FFT::Filterbank **std::unique_ptr<DspLib::BuzzKill::HighBuzzKillFFT>::reset[abi:ne200100](DspLib::FFT::Filterbank **result, DspLib::FFT::Filterbank *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 87);
    if (v3)
    {
      *(v2 + 88) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 84);
    if (v4)
    {
      *(v2 + 85) = v4;
      operator delete(v4);
    }

    DspLib::FFT::Filterbank::~Filterbank(v2);

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void DspLib::BuzzKill::Algorithm::reset(DspLib::BuzzKill::Algorithm *this)
{
  if (*(this + 8))
  {
    v2 = *(this + 55);
    if (v2)
    {
      DspLib::BuzzKill::FFTForDisplay::reset(v2);
    }

    DspLib::Biquad::SetupWrapper::reset((this + 496));
    v3 = *(this + 69);
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    DspLib::FFT::Filterbank::reset((this + 560));
    DspLib::FFT::Filterbank::reset((this + 968));
    v4 = *(this + 172);
    if (v4)
    {
      DspLib::FFT::Filterbank::reset(v4);
    }

    DspLib::fill(*(this + 180), (*(this + 181) - *(this + 180)) >> 2, 1.0);
    DspLib::clear(*(this + 207), (*(this + 208) - *(this + 207)) >> 2);
    DspLib::clear(*(this + 204), (*(this + 205) - *(this + 204)) >> 2);
    DspLib::BuzzKill::MitigationFilterBank::reset((this + 1696));
    v5 = *(this + 317);
    v6 = *(this + 318);
    while (v5 != v6)
    {
      DspLib::CircularDelay::reset(v5);
      v5 = (v5 + 32);
    }

    v7 = *(this + 327);
    v8 = *(this + 328);
    while (v7 != v8)
    {
      v9 = *(v7 + 8);
      if (*v7 != v9)
      {
        bzero(*v7, v9 - *v7);
      }

      v7 += 24;
    }

    *(this + 660) = 0;
    DspLib::FIRDecimator::reset((this + 2672));
    DspLib::Biquad::SetupWrapper::reset((this + 2808));
    *(this + 717) = 0;
    v10 = *(this + 359);
    v11 = *(this + 360);
    while (v10 != v11)
    {
      DspLib::CircularDelay::reset(v10);
      v10 = (v10 + 32);
    }

    *(this + 2896) = 1;
  }

  else
  {
    DspLib::BuzzKill::Algorithm::reset();
  }
}

void DspLib::BuzzKill::Algorithm::setParameters(uint64_t a1, void *a2, uint64_t a3, __n128 a4)
{
  v80[4] = *MEMORY[0x1E69E9840];
  DspLib::AlgorithmBase::setParameters(a1, a2, a3, a4);
  if (!(*(*a1 + 40))(a1))
  {
    return;
  }

  DspLib::BuzzKill::Algorithm::setAlgorithmVersion(a1, vcvtas_u32_f32(*(*(a1 + 24) + 68)));
  v5 = vcvtas_u32_f32(*(*(a1 + 24) + 64)) - 1;
  if (v5 > 3)
  {
    v7 = 11025.0;
    v6 = 1159479296;
  }

  else
  {
    v6 = dword_1DE098460[v5];
    v7 = flt_1DE098470[v5];
  }

  *(a1 + 4928) = v6;
  v8 = *(a1 + 16);
  v9 = v8;
  v10 = (v9 / v7);
  if (v10 >= 0x3E8)
  {
    v11 = 1000;
  }

  else
  {
    v11 = (v9 / v7);
  }

  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1;
  }

  *(a1 + 2752) = v12;
  if (v12)
  {
    *(a1 + 2864) = v12;
    *(a1 + 2868) = 0;
  }

  DspLib::Biquad::ParametricFilter::initialize((a1 + 2760), 1uLL, v8, 1uLL);
  if (v5 > 3)
  {
    v13 = 0x451C400000000008;
  }

  else
  {
    v13 = *&asc_1DE0985E0[8 * v5];
  }

  DspLib::Biquad::ParametricFilter::setParametricEQ(a1 + 2760, v13, 0x3F33333300000000, 0, 0x41uLL);
  v14 = *(a1 + 16);
  v15 = *(a1 + 2752);
  isEqual = DspLib::isEqual(v16, *(*(a1 + 24) + 64), 0.0, 1.0e-20);
  if (isEqual)
  {
    v18 = &DspLib::BuzzKill::kPolynomial2k5kHz;
  }

  else
  {
    v19 = v14 / v15;
    v20 = v19;
    v21 = DspLib::isEqual(isEqual, v19, 11025.0, 4.0);
    if (v21)
    {
      v18 = &DspLib::BuzzKill::kPolynomial3kHz1;
    }

    else
    {
      v22 = DspLib::isEqual(v21, v20, 12000.0, 4.0);
      if (v22)
      {
        v18 = &DspLib::BuzzKill::kPolynomial3kHz2;
      }

      else
      {
        v23 = DspLib::isEqual(v22, v20, 14700.0, 4.0);
        if (v23)
        {
          v18 = &DspLib::BuzzKill::kPolynomial4kHz1;
        }

        else
        {
          v24 = DspLib::isEqual(v23, v20, 16000.0, 4.0);
          if (v24)
          {
            v18 = &DspLib::BuzzKill::kPolynomial4kHz2;
          }

          else
          {
            v25 = DspLib::isEqual(v24, v20, 22050.0, 4.0);
            if (v25)
            {
              v18 = &DspLib::BuzzKill::kPolynomial6kHz1;
            }

            else
            {
              v26 = DspLib::isEqual(v25, v20, 24000.0, 4.0);
              if (!v26)
              {
                v77 = DspLib::isEqual(v26, v20, 44100.0, 4.0);
                if (v77)
                {
                  v18 = &DspLib::BuzzKill::kPolynomial20kHz1;
                  v27 = 10;
                }

                else
                {
                  v78 = DspLib::isEqual(v77, v20, 48000.0, 4.0);
                  if (v78)
                  {
                    v27 = 10;
                  }

                  else
                  {
                    v27 = 1;
                  }

                  if (v78)
                  {
                    v18 = &DspLib::BuzzKill::kPolynomial20kHz2;
                  }

                  else
                  {
                    v18 = &DspLib::BuzzKill::kPolynomialBypass;
                  }
                }

                goto LABEL_31;
              }

              v18 = &DspLib::BuzzKill::kPolynomial6kHz2;
            }
          }
        }
      }
    }
  }

  v27 = 5;
LABEL_31:
  std::vector<float>::resize((a1 + 4904), v27);
  DspLib::copy(v18, v27, *(a1 + 4904));
  if ((*(*a1 + 208))(a1))
  {
    v28 = *(a1 + 440);
    if (!v28)
    {
      operator new();
    }

    v29 = (*(*a1 + 48))(a1);
    v30 = (*(*a1 + 64))(a1);
    DspLib::BuzzKill::FFTForDisplay::initialize(v28, v29, v30);
    DspLib::BuzzKill::FFTForDisplay::setParameters(*(a1 + 440), *(a1 + 24), 10, *(*(a1 + 24) + 104));
  }

  else
  {
    std::unique_ptr<DspLib::BuzzKill::FFTForDisplay>::reset[abi:ne200100]((a1 + 440), 0);
  }

  v32 = *(a1 + 24);
  DspLib::FFT::Filterbank::setParameters(a1 + 560, (v32 + 120), 10, v31);
  DspLib::FFT::Filterbank::setParameters(a1 + 968, (v32 + 120), 10, v33);
  v34 = 1 << *(*(a1 + 24) + 120);
  v35 = *(a1 + 16);
  v36 = fmaxf((v35 / *(a1 + 2752)) / v34, 0.001);
  v37 = vcvtas_u32_f32(*(a1 + 4928) / v36);
  *(a1 + 1388) = v34;
  v38 = v34 >> 1;
  if (v38 >= v37)
  {
    v38 = v37;
  }

  if (*(a1 + 1384) != v38)
  {
    *(a1 + 1384) = v38;
    DspLib::ComplexVector::setLength((a1 + 1472), v38 + 1);
    DspLib::ComplexVector::setLength((a1 + 1552), (*(a1 + 1384) + 1));
    std::vector<float>::resize((a1 + 1392), (*(a1 + 1384) + 1));
    std::vector<float>::resize((a1 + 1440), *(a1 + 1384));
    DspLib::fill(*(a1 + 1440), (*(a1 + 1448) - *(a1 + 1440)) >> 2, 1.0);
    std::vector<DspLib::BuzzKill::SortList>::resize((a1 + 1416), *(a1 + 1384));
    v38 = *(a1 + 1384);
  }

  v39 = __CFADD__(v38, 1);
  LODWORD(v40) = v38 + 1;
  if (!v39)
  {
    v41 = 0;
    v42 = *(a1 + 1392);
    v43 = vcvtas_u32_f32(v36 / 2.15);
    v44 = v36 * 0.5;
    do
    {
      v45 = v36 * v41;
      if (v40 >= v43)
      {
        LODWORD(v40) = v43;
      }

      if (v40 <= 2)
      {
        v46 = 2;
      }

      else
      {
        v46 = v40;
      }

      v47 = v45 - v44;
      if ((v45 - v44) < 0.0)
      {
        v47 = 0.0;
      }

      DspLib::BuzzKill::Algorithm::getThresholdSpectrum(a1, *(a1 + 1560), v46, v47, v44 + v45, 0);
      *(v42 + 4 * v41++) = DspLib::minv(*(a1 + 1560), v46);
      v40 = (*(a1 + 1384) + 1);
    }

    while (v41 < v40);
  }

  v48 = *(a1 + 24);
  v49 = *(a1 + 2468) == vcvtas_u32_f32(v48[23]);
  DspLib::BuzzKill::MitigationFilterBank::setParameters(a1 + 1696, v48, *(a1 + 2752));
  if (!v49)
  {
    std::vector<float>::resize((a1 + 1656), *(a1 + 2468));
    std::vector<float>::resize((a1 + 1632), *(a1 + 2468));
  }

  MEMORY[0x1EEE9AC00](v50);
  v52 = &v80[-1] - v51;
  v53 = *(a1 + 2752);
  v54 = 3 * v53;
  v55 = (24 * v53) | 1;
  v80[0] = &unk_1F59193D0;
  v80[1] = DspLib::makeChebychevWindow;
  v80[3] = v80;
  DspLib::makeSincWindow(&v80[-1] - v51, v55, v53, 0x18u, v80, 0.75);
  std::__function::__value_func<void ()(std::span<float,18446744073709551615ul>)>::~__value_func[abi:ne200100](v80);
  v56 = *(a1 + 2752);
  if (v56 != *(a1 + 2560))
  {
    *(a1 + 2560) = v56;
    DspLib::multiply(v52, v55, sqrtf(v56));
    v57 = *(a1 + 2560);
    v58 = (*(*a1 + 232))(a1);
    DspLib::FIRDecimator::setSrcParameters((a1 + 2672), v57, v58);
    DspLib::FIRDecimator::setCoefficients((a1 + 2672), v52, v55);
    LODWORD(v57) = *(a1 + 2560);
    v59 = (*(*a1 + 232))(a1);
    DspLib::PolyPhaseInterpolator::setSrcParameters((a1 + 2568), v57, v59 / *(a1 + 2560) + 1);
    DspLib::PolyPhaseInterpolator::setCoefficients((a1 + 2568), v52, v55);
  }

  v60 = *(a1 + 2872);
  for (i = *(a1 + 2880); v60 != i; v60 = (v60 + 32))
  {
    DspLib::CircularDelay::setLength(v60, (8 * v54));
  }

  v62 = *(a1 + 24);
  v63 = exp2f(v62[20]) + -1.0;
  *(a1 + 1688) = v63;
  v64 = v63 + 1.0;
  *(a1 + 1680) = v64;
  *(a1 + 1684) = 1.0 / v64;
  v65 = vcvtas_u32_f32((v62[25] / v36) * 0.5);
  *(a1 + 1464) = v65;
  v66 = 3 * v65;
  v67 = *(a1 + 1384);
  if (v66 > v67)
  {
    *(a1 + 1464) = v67 / 3;
  }

  v68 = *(a1 + 16);
  v69 = vcvtas_u32_f32((v62[19] / 1000.0) * v68);
  *(a1 + 2528) = v69;
  v70 = *(a1 + 2536);
  v71 = *(a1 + 2544);
  if (v70 != v71)
  {
    v72 = (v69 - v55) & ~((v69 - v55) >> 31);
    do
    {
      DspLib::CircularDelay::setLength(v70, v72);
      v70 = (v70 + 32);
    }

    while (v70 != v71);
    v62 = *(a1 + 24);
  }

  v73 = v62[28];
  v74 = *(a1 + 1376);
  if (v74)
  {
    v75 = v73 <= 0.5;
  }

  else
  {
    v75 = 0;
  }

  if (v75)
  {
    std::unique_ptr<DspLib::BuzzKill::HighBuzzKillFFT>::reset[abi:ne200100]((a1 + 1376), 0);
    v74 = *(a1 + 1376);
  }

  else if (!v74 && v73 > 0.5)
  {
    operator new();
  }

  if (v74)
  {
    v76 = *(a1 + 16) * 0.5;
    DspLib::BuzzKill::Algorithm::getThresholdSpectrum(a1, (v74 + 540), 0x21uLL, 0.0, v76, 0);
    DspLib::multiply(v74 + 540, 33, 0.5);
    memset_pattern16((v74 + 540), &unk_1DE095DF0, 0x18uLL);
  }
}

uint64_t DspLib::BuzzKill::Algorithm::setAlgorithmVersion(DspLib::BuzzKill::Algorithm *this, unsigned int a2)
{
  result = (*(**(this + 69) + 16))(*(this + 69));
  if (a2)
  {
    if (result != 2)
    {
      operator new();
    }
  }

  else if (result)
  {
    operator new();
  }

  *(this + 1696) = a2 > 1;
  *(this + 2898) = a2 > 2;
  return result;
}

void std::vector<DspLib::BuzzKill::SortList>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<DspLib::BuzzKill::SortList>::__append(a1, a2 - v2);
  }
}

void DspLib::BuzzKill::Algorithm::getThresholdSpectrum(DspLib::BuzzKill::Algorithm *this, float *a2, vDSP_Length a3, float a4, float a5, int a6)
{
  v27[1] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v26 = 626;
LABEL_37:
    DspLib::BuzzKill::Algorithm::getThresholdSpectrum(v26);
    return;
  }

  if (a3 > 0xF4240)
  {
    v26 = 627;
    goto LABEL_37;
  }

  if (a4 < 0.0)
  {
    v26 = 628;
    goto LABEL_37;
  }

  if (a4 < 1.0 && (a6 & 1) != 0)
  {
    v26 = 629;
    goto LABEL_37;
  }

  if (a3 < 2)
  {
    v26 = 630;
    goto LABEL_37;
  }

  if (a5 < 1.0)
  {
    v26 = 631;
    goto LABEL_37;
  }

  if (a5 < a4)
  {
    v26 = 632;
    goto LABEL_37;
  }

  if (*(this + 8) != 1)
  {
    v26 = 633;
    goto LABEL_37;
  }

  v9 = *(this + 2) * 0.5;
  if (v9 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = v9;
  }

  if (v9 >= a5)
  {
    v11 = a5;
  }

  else
  {
    v11 = v9;
  }

  if (a6)
  {
    v12 = powf(v11 / v10, 1.0 / (a3 + -1.0));
    v13 = 0.0;
  }

  else
  {
    v13 = (v11 - v10) / (a3 - 1);
    v12 = 1.0;
  }

  v14 = DspLib::dB2Amp(this, *(*(this + 3) + 40));
  DspLib::fill(a2, a3, v14);
  v15 = 0;
  if (a3 >= 0x1F5)
  {
    v16 = 501;
  }

  else
  {
    v16 = a3;
  }

  v17 = 1.0;
  do
  {
    *(this + v15 + 725) = (v13 * v15) + (v10 * v17);
    v17 = v12 * v17;
    ++v15;
  }

  while (v16 != v15);
  for (i = 0; i != 160; i += 16)
  {
    v19 = *(this + 3) + i;
    if (*(v19 + 224) > 0.5)
    {
      v21 = *(v19 + 228);
      v20 = *(v19 + 232);
      v22 = *(v19 + 236);
      DspLib::Biquad::ParametricFilter::initialize((this + 448), 1uLL, *(this + 2), 1uLL);
      DspLib::Biquad::ParametricFilter::setParametricEQ(this + 448, (v21 << 32) | 3, (v20 | (v22 << 32)), 0, 0x41uLL);
      MEMORY[0x1EEE9AC00](v23);
      DspLib::Biquad::amplitudeResponse(this + 56, this + 2900, v16, v27 - ((4 * v16 + 15) & 0xFFFFFFFFFFFFFFF0), v16, 0, *(this + 65), v24, v25);
      DspLib::multiply();
    }
  }
}

double DspLib::BuzzKill::Algorithm::processBlock(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (*(*(a1 + 24) + 60) <= 0.5)
  {
    v5 = **(a1 + 240);
    v6 = *(a2 + 8);
    v37 = *a2;
    v38 = v6;
    v39 = v4;
    DspLib::sum(&v37, v5, v4);
    v7 = (*(*a1 + 64))(a1);
    DspLib::multiply(v5, v4, 2.0 / v7);
    if (*(a1 + 2752) < 2u)
    {
      v8 = v4;
    }

    else
    {
      DspLib::Biquad::Filter::process((a1 + 2760), v5, v4, v5, v4);
      v32 = v5;
      v33 = v5;
      v37 = &v33;
      v38 = 1;
      v39 = v4;
      v34 = &v32;
      v35 = 1;
      v36 = v4;
      DspLib::DownSampler::process((a1 + 2864), &v34, &v37);
      v8 = v39;
    }

    v9 = *(a1 + 336);
    v10 = *(a1 + 344);
    (*(**(a1 + 552) + 56))(*(a1 + 552), v5);
    LODWORD(v33) = 0;
    v11 = DspLib::BuzzKill::Algorithm::processBuzzAnalysis(a1, &v33, v9, v8, v10, v8);
    if (v11)
    {
      LODWORD(v12) = 0;
      do
      {
        v13 = v12;
        if (v4 >= (*(a1 + 2752) * v11 + v12))
        {
          v14 = (*(a1 + 2752) * v11);
        }

        else
        {
          v14 = v4 - v12;
        }

        v15 = *(a2 + 8);
        v17 = *(a1 + 416);
        v16 = *(a1 + 424);
        if (v15)
        {
          v18 = 0;
          v19 = *a2;
          do
          {
            v17[v18] = v19[v18] + 4 * v13;
            ++v18;
          }

          while (v15 > v18);
        }

        v20 = (v16 - v17) >> 3;
        v37 = v17;
        v38 = v20;
        v39 = v14;
        v34 = v17;
        v35 = v20;
        v36 = v14;
        DspLib::MultiChannelCircularDelay::process((a1 + 2536), &v37, &v34);
        v37 = v17;
        v38 = v20;
        v39 = v14;
        DspLib::BuzzKill::Algorithm::processFilterBank(a1, &v37);
        v12 = (v13 + v14);
        v11 = DspLib::BuzzKill::Algorithm::processBuzzAnalysis(a1, &v33, v9, v8, v10, v8);
      }

      while (v11);
    }

    else
    {
      v12 = 0;
    }

    v21 = v4 > v12;
    v22 = v4 - v12;
    if (v21)
    {
      v23 = *(a2 + 8);
      v24 = *(a1 + 416);
      v25 = (*(a1 + 424) - v24) >> 3;
      if (v23)
      {
        v26 = 0;
        v27 = *a2;
        do
        {
          v24[v26] = v27[v26] + 4 * v12;
          ++v26;
        }

        while (v23 > v26);
      }

      v37 = v24;
      v38 = v25;
      v39 = v22;
      v34 = v24;
      v35 = v25;
      v36 = v22;
      DspLib::MultiChannelCircularDelay::process((a1 + 2536), &v37, &v34);
      v37 = v24;
      v38 = v25;
      v39 = v22;
      DspLib::BuzzKill::Algorithm::processFilterBank(a1, &v37);
    }

    v4 = *(a2 + 16);
  }

  v28 = *a2;
  v29 = *(a2 + 8);
  if ((*(*a1 + 208))(a1))
  {
    DspLib::CPUMeasure::pause((a1 + 104));
    if (*(a1 + 440))
    {
      v31 = **(a1 + 240);
      v37 = v28;
      v38 = v29;
      v39 = v4;
      DspLib::sum(&v37, v31, v4);
      DspLib::BuzzKill::FFTForDisplay::process(*(a1 + 440), v31, v4);
    }

    *&result = DspLib::CPUMeasure::resume((a1 + 104)).u64[0];
  }

  return result;
}

uint64_t DspLib::BuzzKill::Algorithm::processBuzzAnalysis(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v22 = a6 - *a2;
  v23[0] = a5 + 4 * a6 - 4 * v22;
  v20 = v23;
  v21 = 1;
  DspLib::FFT::Filterbank::audioInput(a1 + 560, &v20);
  v22 = a4 - *a2;
  v23[0] = a3 + 4 * a4 - 4 * v22;
  v20 = v23;
  v21 = 1;
  *a2 += DspLib::FFT::Filterbank::audioInput(a1 + 968, &v20);
  v10 = *(*(a1 + 920) + 88);
  if (v10 == *(*(a1 + 1328) + 88))
  {
    if (v10 && (*(a1 + 2897) & 1) == 0)
    {
      if ((*(a1 + 2896) & 1) == 0)
      {
        v11 = *(a1 + 16);
        v12 = 1.0 - expf(-1.0 / ((*(*(a1 + 24) + 88) * (v11 / (v10 * *(a1 + 2752)))) / 1000.0));
        v13 = *(a1 + 2468);
        v14 = *(a1 + 1440);
        v15 = *(a1 + 1448) - v14;
        if (v13)
        {
          v16 = *(a1 + 2496);
          do
          {
            *v16 = *v16 + ((1.0 - *v16) * v12);
            ++v16;
            --v13;
          }

          while (v13);
        }

        if ((v15 & 0x3FFFFFFFCLL) != 0)
        {
          v17 = (v15 >> 2);
          do
          {
            *v14 = *v14 + ((1.0 - *v14) * v12);
            ++v14;
            --v17;
          }

          while (v17);
        }
      }

      DspLib::FFT::amplitude(*(a1 + 896), *(a1 + 1480), *(a1 + 1488));
      MEMORY[0x1EEE9AC00](v18);
      DspLib::multiply();
    }
  }

  else
  {
    DspLib::BuzzKill::Algorithm::processBuzzAnalysis();
  }

  return v10;
}

void DspLib::BuzzKill::Algorithm::processFilterBank(uint64_t a1, void *a2)
{
  v4 = a2[2];
  v5 = *(a1 + 2560);
  if (*(a1 + 2896))
  {
    v6 = *(a1 + 1376);
    if (v5 < 2)
    {
      if (!v6)
      {
        return;
      }
    }

    else if (!v6)
    {
      v7 = a2[1];
      v8 = a2[2];
      *v22 = *a2;
      *&v22[8] = v7;
      *&v22[16] = v4;
      *v21 = *a2;
      *&v21[16] = v8;
      DspLib::MultiChannelCircularDelay::process((a1 + 2872), v22, v21);
      return;
    }

    v14 = a2[1];
    v15 = a2[2];
    *v22 = *a2;
    *&v22[8] = v14;
    *&v22[16] = v4;
    *v21 = *a2;
    *&v21[16] = v15;
LABEL_12:
    DspLib::BuzzKill::HighBuzzKillFFT::process(v6, v22, v21);
    return;
  }

  if (v5 < 2)
  {
    v16 = a2[1];
    v17 = a2[2];
    *v22 = *a2;
    *&v22[8] = v16;
    *&v22[16] = v4;
    *v21 = *a2;
    *&v21[16] = v17;
    DspLib::BuzzKill::MitigationFilterBank::process(a1 + 1696, v22, v21);
    v6 = *(a1 + 1376);
    if (!v6)
    {
      return;
    }

    v18 = *a2;
    *&v22[8] = *(a2 + 1);
    *v21 = *a2;
    *&v21[16] = a2[2];
    *v22 = v18;
    goto LABEL_12;
  }

  v9 = (*(a1 + 272) - *(a1 + 264)) >> 3;
  *v22 = *(a1 + 264);
  *&v22[8] = v9;
  *&v22[16] = v4;
  v10 = a2[1];
  *v21 = *a2;
  *&v21[8] = v10;
  *&v21[16] = v4;
  DspLib::FIRDecimator::process((a1 + 2672), v21, v22);
  v11 = *(a1 + 312);
  v12 = (*(a1 + 320) - v11) >> 3;
  *v21 = *v22;
  *&v21[16] = *&v22[16];
  *&v19 = v11;
  *(&v19 + 1) = v12;
  v20 = *&v22[16];
  DspLib::BuzzKill::MitigationFilterBank::process(a1 + 1696, v21, &v19);
  *v21 = *v22;
  *&v21[16] = *&v22[16];
  *&v19 = v11;
  *(&v19 + 1) = v12;
  v20 = *&v22[16];
  DspLib::subtract(v21, &v19);
  *v21 = *v22;
  *&v21[8] = *&v22[8];
  *&v19 = v11;
  *(&v19 + 1) = v12;
  v20 = v4;
  DspLib::PolyPhaseInterpolator::process((a1 + 2568), v21, &v19);
  v13 = *(a1 + 1376);
  *v21 = *a2;
  *&v21[8] = *(a2 + 1);
  v19 = *a2;
  v20 = a2[2];
  if (v13)
  {
    DspLib::BuzzKill::HighBuzzKillFFT::process(v13, v21, &v19);
  }

  else
  {
    DspLib::MultiChannelCircularDelay::process((a1 + 2872), v21, &v19);
  }

  *v21 = *a2;
  *&v21[16] = a2[2];
  *&v19 = v11;
  *(&v19 + 1) = v12;
  v20 = v4;
  DspLib::subtract(v21, &v19);
}

uint64_t DspLib::BuzzKill::Algorithm::getPartialsBeyondThreshold(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a7 >= 2)
  {
    v13 = a6;
    v15 = a2;
    v17 = 0;
    v18 = 1;
    v19 = *(a1 + 1416);
    do
    {
      if (*(a6 + 4 * v18) > *(a2 + 4 * v18))
      {
        v20 = (v19 + 8 * v17);
        *v20 = *(a4 + 4 * v18);
        v20[1] = v18;
        ++v17;
      }

      v18 = (v18 + 1);
    }

    while (a7 > v18);
    if (v17)
    {
      v47 = v17;
      std::__introsort<std::_ClassicAlgPolicy,DspLib::BuzzKill::findFFTBinsBeyondThreshold(std::span<float const,18446744073709551615ul>,std::span<float const,18446744073709551615ul>,std::span<float const,18446744073709551615ul>,std::span<DspLib::BuzzKill::SortList,18446744073709551615ul>)::$_0 &,DspLib::BuzzKill::SortList*,false>(v19, (v19 + 8 * v17), 126 - 2 * __clz(v17), 1);
      DspLib::copy(*(a1 + 1480), *(a1 + 1488), *(a1 + 1560));
      DspLib::FFT::amplitude(*(a1 + 1304), *(a1 + 1552), *(a1 + 1568));
      DspLib::BuzzKill::BuzzKillFFT::processWithDifference((a1 + 968));
      DspLib::BuzzKill::BuzzKillFFT::processWithDifference((a1 + 560));
      DspLib::FFT::amplitude(*(a1 + 1304), *(a1 + 1472), *(a1 + 1488));
      DspLib::FFT::amplitude(*(a1 + 896), *(a1 + 1480), *(a1 + 1488));
      v21 = 0;
      v46 = 0;
      while (1)
      {
        v22 = *(*(a1 + 1416) + 8 * v21 + 4);
        v23 = v15;
        v24 = v13;
        v25 = *(v15 + 4 * v22) / (*(v13 + 4 * v22) + COERCE_FLOAT(71362));
        *(a4 + 4 * v22) = *(a4 + 4 * v22) * v25;
        v26 = sqrtf(v25);
        v27 = (v22 - 1);
        *(a4 + 4 * v27) = *(a4 + 4 * v27) * v26;
        v28 = v22 + 1;
        if ((v22 + 1) < *(a1 + 1384))
        {
          *(a4 + 4 * v28) = v26 * *(a4 + 4 * v28);
        }

        v29 = DspLib::ComplexSpan::operator[]((a1 + 1472), v22);
        v31 = v30;
        v32 = DspLib::ComplexSpan::operator[]((a1 + 1552), v22);
        v33 = *(a1 + 4904);
        v34 = (*(a1 + 4912) - v33) >> 2;
        v35 = *(a1 + 16);
        v37 = sqrtf((v31 * v31) + (v29 * v29)) / (sqrtf((v36 * v36) + (v32 * v32)) + COERCE_FLOAT(71362));
        v38 = (v35 / *(a1 + 2752)) / 6.28318531 * (v37 * v37);
        v39 = cos(v37);
        *&v39 = v38 / sqrt(1.0 - v39 + 1.0 - v39);
        v49 = *&v39;
        v48 = 1.0;
        DspLib::poly(v33, v34, &v49, 1uLL, &v48);
        v40 = v49 * v48;
        if ((v49 * v48) <= *(*(a1 + 24) + 84) || v40 >= *(a1 + 4928))
        {
          v13 = v24;
          v15 = v23;
        }

        else if (v46)
        {
          v41 = 0;
          v42 = v46;
          v15 = v23;
          while (v40 <= *(*(a1 + 1656) + v41) || v40 >= *(*(a1 + 1632) + v41))
          {
            v41 += 4;
            if (4 * v46 == v41)
            {
              goto LABEL_20;
            }
          }

          v13 = v24;
        }

        else
        {
          v42 = 0;
          v15 = v23;
LABEL_20:
          *(a9 + 4 * v42) = v40;
          *(a11 + 4 * v42) = v25;
          if (*(a1 + 2898) == 1)
          {
            v43 = *(a1 + 1560);
            v44 = *(v15 + 4 * v22) / ((sqrtf(((*(v43 + 4 * v22) * *(v43 + 4 * v22)) + (*(v43 + 4 * v27) * *(v43 + 4 * v27))) + (*(v43 + 4 * v28) * *(v43 + 4 * v28))) * 0.82) + 1.0e-20);
          }

          else
          {
            v44 = *(a4 + 4 * v22);
          }

          v13 = v24;
          *(a13 + 4 * v42) = v44;
          *(*(a1 + 1632) + 4 * v42) = v40 * *(a1 + 1680);
          *(*(a1 + 1656) + 4 * v42) = v40 * *(a1 + 1684);
          v46 = (v46 + 1);
          if (v46 == *(a1 + 2468))
          {
            return v46;
          }
        }

        if (++v21 == v47)
        {
          return v46;
        }
      }
    }
  }

  return 0;
}

double DspLib::BuzzKill::Algorithm::latencySamples(DspLib::BuzzKill::Algorithm *this, double a2)
{
  if ((*(this + 8) & 1) == 0)
  {
    DspLib::BuzzKill::Algorithm::latencySamples();
  }

  LODWORD(a2) = *(this + 632);
  return *&a2;
}

void DspLib::BuzzKill::Algorithm::status(double *a1, uint64_t a2, vDSP_Length __N)
{
  if (a1[1])
  {
    DspLib::clear(a2, __N);
    v6 = a1[2];
    *(a2 + 12) = v6;
    v7 = (*(*a1 + 72))(a1);
    v8 = a1[2];
    *&v7 = v7 / v8 * 1000.0;
    *(a2 + 16) = LODWORD(v7);
    DspLib::BuzzKill::Algorithm::getThresholdSpectrum(a1, (a2 + 40), 0x1F5uLL, *(*(a1 + 3) + 48), *(*(a1 + 3) + 52), 1);
    DspLib::amp2dB((a2 + 40), 0x1F5uLL, 1.0);
    DspLib::BuzzKill::MitigationFilterBank::status((a1 + 212), a2, *(*(a1 + 3) + 48), *(*(a1 + 3) + 52), __N, *(*(a1 + 3) + 60) > 0.5);
    if ((*(*a1 + 208))(a1) && (v9 = *(a1 + 55)) != 0)
    {

      DspLib::BuzzKill::FFTForDisplay::status(v9, a2);
    }

    else
    {

      DspLib::fill((a2 + 4048), 0x1F5uLL, -100.0);
    }
  }

  else
  {
    DspLib::BuzzKill::Algorithm::status();
  }
}

void DspLib::BuzzKill::MitigationFilterBank::process(uint64_t a1, __int128 *a2, __int128 *a3)
{
  if (**a2 != **a3)
  {
    v5 = *a2;
    v6 = *(a2 + 2);
    v8 = *a3;
    v9 = *(a3 + 2);
    DspLib::copy(&v5, &v8);
  }

  v8 = *a3;
  v9 = *(a3 + 2);
  LOBYTE(v5) = 0;
  v7 = 0;
  DspLib::AlgorithmBase::process(a1 + 32, &v8, &v5);
}

void DspLib::BuzzKill::Algorithm::~Algorithm(DspLib::BuzzKill::Algorithm *this)
{
  DspLib::BuzzKill::Algorithm::~Algorithm(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F591A500;
  v2 = *(this + 613);
  if (v2)
  {
    *(this + 614) = v2;
    operator delete(v2);
  }

  v16 = (this + 2872);
  std::vector<AUSM::FloatVector>::__destroy_vector::operator()[abi:ne200100](&v16);
  v16 = (this + 2840);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v16);
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 2808));
  v3 = *(this + 348);
  if (v3)
  {
    *(this + 349) = v3;
    operator delete(v3);
  }

  v16 = (this + 2720);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v16);
  v4 = *(this + 335);
  if (v4)
  {
    *(this + 336) = v4;
    operator delete(v4);
  }

  v5 = *(this + 331);
  if (v5)
  {
    *(this + 332) = v5;
    operator delete(v5);
  }

  v16 = (this + 2616);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v16);
  v16 = (this + 2584);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v16);
  v16 = (this + 2536);
  std::vector<AUSM::FloatVector>::__destroy_vector::operator()[abi:ne200100](&v16);
  v6 = *(this + 312);
  if (v6)
  {
    *(this + 313) = v6;
    operator delete(v6);
  }

  v7 = *(this + 309);
  if (v7)
  {
    *(this + 310) = v7;
    operator delete(v7);
  }

  DspLib::NotchFilterBank::FilterBank::~FilterBank((this + 1728));
  v8 = *(this + 207);
  if (v8)
  {
    *(this + 208) = v8;
    operator delete(v8);
  }

  v9 = *(this + 204);
  if (v9)
  {
    *(this + 205) = v9;
    operator delete(v9);
  }

  DspLib::ComplexVector::~ComplexVector((this + 1552));
  DspLib::ComplexVector::~ComplexVector((this + 1472));
  v10 = *(this + 180);
  if (v10)
  {
    *(this + 181) = v10;
    operator delete(v10);
  }

  v11 = *(this + 177);
  if (v11)
  {
    *(this + 178) = v11;
    operator delete(v11);
  }

  v12 = *(this + 174);
  if (v12)
  {
    *(this + 175) = v12;
    operator delete(v12);
  }

  std::unique_ptr<DspLib::BuzzKill::HighBuzzKillFFT>::reset[abi:ne200100](this + 172, 0);
  DspLib::FFT::Filterbank::~Filterbank((this + 968));
  DspLib::FFT::Filterbank::~Filterbank((this + 560));
  v13 = *(this + 69);
  *(this + 69) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v16 = (this + 528);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v16);
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 496));
  v14 = *(this + 59);
  if (v14)
  {
    *(this + 60) = v14;
    operator delete(v14);
  }

  std::unique_ptr<DspLib::BuzzKill::FFTForDisplay>::reset[abi:ne200100](this + 55, 0);
  v15 = *(this + 52);
  if (v15)
  {
    *(this + 53) = v15;
    operator delete(v15);
  }

  DspLib::ComplexVector::~ComplexVector((this + 336));
  DspLib::ChannelBuffer::~ChannelBuffer((this + 288));
  DspLib::ChannelBuffer::~ChannelBuffer((this + 240));
  DspLib::AlgorithmBase::~AlgorithmBase(this);
}

void std::vector<DspLib::BuzzKill::SortList>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,DspLib::BuzzKill::findFFTBinsBeyondThreshold(std::span<float const,18446744073709551615ul>,std::span<float const,18446744073709551615ul>,std::span<float const,18446744073709551615ul>,std::span<DspLib::BuzzKill::SortList,18446744073709551615ul>)::$_0 &,DspLib::BuzzKill::SortList*,false>(uint64_t result, float *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = (a2 - v8) >> 3;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        if (*(a2 - 2) >= *v8)
        {
          return result;
        }

        v62 = *v8;
LABEL_109:
        *v8 = *(a2 - 1);
LABEL_110:
        *(a2 - 1) = v62;
        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v65 = *(v8 + 8);
      v66 = *v8;
      v67 = *(v8 + 16);
      if (v65 >= *v8)
      {
        if (v67 < v65)
        {
          v111 = *(v8 + 8);
          v110 = *(v8 + 16);
          *(v8 + 8) = v110;
          *(v8 + 16) = v111;
          v67 = *&v111;
          if (v66 > *&v110)
          {
            v112 = *v8;
            *v8 = v110;
            *(v8 + 8) = v112;
          }
        }
      }

      else
      {
        v68 = *v8;
        LODWORD(v69) = *v8;
        if (v67 < v65)
        {
          *v8 = *(v8 + 16);
          goto LABEL_180;
        }

        *v8 = *(v8 + 8);
        *(v8 + 8) = v68;
        if (v67 < v69)
        {
          *(v8 + 8) = *(v8 + 16);
LABEL_180:
          *(v8 + 16) = v68;
          v67 = v69;
        }
      }

      if (*(a2 - 2) < v67)
      {
        v118 = *(v8 + 16);
        *(v8 + 16) = *(a2 - 1);
        *(a2 - 1) = v118;
        if (*(v8 + 16) < *(v8 + 8))
        {
          v120 = *(v8 + 8);
          v119 = *(v8 + 16);
          *(v8 + 8) = v119;
          *(v8 + 16) = v120;
          if (*v8 > *&v119)
          {
            v121 = *v8;
            *v8 = v119;
            *(v8 + 8) = v121;
          }
        }
      }

      return result;
    }

    if (v9 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,DspLib::BuzzKill::findFFTBinsBeyondThreshold(std::span<float const,18446744073709551615ul>,std::span<float const,18446744073709551615ul>,std::span<float const,18446744073709551615ul>,std::span<DspLib::BuzzKill::SortList,18446744073709551615ul>)::$_0 &,DspLib::BuzzKill::SortList*,0>(v8, (v8 + 8), (v8 + 16), (v8 + 24), a2 - 1);
    }

LABEL_10:
    if (v9 <= 23)
    {
      v70 = (v8 + 8);
      v72 = v8 == a2 || v70 == a2;
      if (a4)
      {
        if (!v72)
        {
          v73 = 0;
          v74 = v8;
          do
          {
            v75 = v70;
            v76 = *(v74 + 8);
            if (v76 < *v74)
            {
              v77 = *(v74 + 12);
              v78 = v73;
              while (1)
              {
                *(v8 + v78 + 8) = *(v8 + v78);
                if (!v78)
                {
                  break;
                }

                v79 = *(v8 + v78 - 8);
                v78 -= 8;
                if (v79 <= v76)
                {
                  v80 = v8 + v78 + 8;
                  goto LABEL_129;
                }
              }

              v80 = v8;
LABEL_129:
              *v80 = v76;
              *(v80 + 4) = v77;
            }

            v70 = v75 + 2;
            v73 += 8;
            v74 = v75;
          }

          while (v75 + 2 != a2);
        }
      }

      else if (!v72)
      {
        do
        {
          v113 = v70;
          v114 = *(v7 + 8);
          if (v114 < *v7)
          {
            v115 = *(v7 + 12);
            do
            {
              v116 = v70;
              v117 = *(v70 - 1);
              v70 -= 2;
              *v116 = v117;
            }

            while (*(v116 - 4) > v114);
            *v70 = v114;
            *(v70 + 1) = v115;
          }

          v70 = (v113 + 8);
          v7 = v113;
        }

        while ((v113 + 8) != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v81 = (v9 - 2) >> 1;
        v82 = v81;
        do
        {
          v83 = v82;
          if (v81 >= v82)
          {
            v84 = (2 * v82) | 1;
            v85 = (v8 + 8 * v84);
            if (2 * v83 + 2 < v9 && *v85 < v85[2])
            {
              v85 += 2;
              v84 = 2 * v83 + 2;
            }

            v86 = (v8 + 8 * v83);
            v87 = *v86;
            if (*v85 >= *v86)
            {
              v88 = *(v86 + 1);
              do
              {
                v89 = v86;
                v86 = v85;
                *v89 = *v85;
                if (v81 < v84)
                {
                  break;
                }

                v90 = 2 * v84;
                v84 = (2 * v84) | 1;
                v85 = (v8 + 8 * v84);
                v91 = v90 + 2;
                if (v91 < v9 && *v85 < v85[2])
                {
                  v85 += 2;
                  v84 = v91;
                }
              }

              while (*v85 >= v87);
              *v86 = v87;
              *(v86 + 1) = v88;
            }
          }

          v82 = v83 - 1;
        }

        while (v83);
        do
        {
          v92 = 0;
          v93 = *v8;
          v94 = v8;
          do
          {
            v95 = v94;
            v96 = &v94[2 * v92];
            v94 = v96 + 2;
            v97 = 2 * v92;
            v92 = (2 * v92) | 1;
            v98 = v97 + 2;
            if (v98 < v9)
            {
              v100 = v96[4];
              v99 = v96 + 4;
              if (*(v99 - 2) < v100)
              {
                v94 = v99;
                v92 = v98;
              }
            }

            *v95 = *v94;
          }

          while (v92 <= ((v9 - 2) >> 1));
          a2 -= 2;
          if (v94 == a2)
          {
            *v94 = v93;
          }

          else
          {
            *v94 = *a2;
            *a2 = v93;
            v101 = (v94 - v8 + 8) >> 3;
            v102 = v101 < 2;
            v103 = v101 - 2;
            if (!v102)
            {
              v104 = v103 >> 1;
              v105 = (v8 + 8 * v104);
              v106 = *v94;
              if (*v105 < *v94)
              {
                v107 = *(v94 + 1);
                do
                {
                  v108 = v94;
                  v94 = v105;
                  *v108 = *v105;
                  if (!v104)
                  {
                    break;
                  }

                  v104 = (v104 - 1) >> 1;
                  v105 = (v8 + 8 * v104);
                }

                while (*v105 < v106);
                *v94 = v106;
                *(v94 + 1) = v107;
              }
            }
          }

          v102 = v9-- <= 2;
        }

        while (!v102);
      }

      return result;
    }

    v10 = (v8 + 8 * (v9 >> 1));
    v11 = v10;
    v12 = *(a2 - 2);
    if (v9 >= 0x81)
    {
      v13 = *v10;
      if (*v10 >= *v8)
      {
        if (v12 < v13)
        {
          v17 = *v10;
          *v10 = *(a2 - 1);
          *(a2 - 1) = v17;
          if (*v10 < *v8)
          {
            v18 = *v8;
            *v8 = *v10;
            *v10 = v18;
          }
        }
      }

      else
      {
        v14 = *v8;
        if (v12 < v13)
        {
          *v8 = *(a2 - 1);
          goto LABEL_27;
        }

        *v8 = *v10;
        *v10 = v14;
        if (*(a2 - 2) < *&v14)
        {
          *v10 = *(a2 - 1);
LABEL_27:
          *(a2 - 1) = v14;
        }
      }

      v21 = v10 - 2;
      v22 = *(v10 - 2);
      v23 = *(a2 - 4);
      if (v22 >= *(v8 + 8))
      {
        if (v23 < v22)
        {
          v25 = *v21;
          *v21 = *(a2 - 2);
          *(a2 - 2) = v25;
          if (*v21 < *(v8 + 8))
          {
            v26 = *(v8 + 8);
            *(v8 + 8) = *v21;
            *v21 = v26;
          }
        }
      }

      else
      {
        v24 = *(v8 + 8);
        if (v23 < v22)
        {
          *(v8 + 8) = *(a2 - 2);
          goto LABEL_39;
        }

        *(v8 + 8) = *v21;
        *v21 = v24;
        if (*(a2 - 4) < *&v24)
        {
          *v21 = *(a2 - 2);
LABEL_39:
          *(a2 - 2) = v24;
        }
      }

      v28 = v10[2];
      v27 = (v10 + 2);
      v29 = v28;
      v30 = *(a2 - 6);
      if (v28 >= *(v8 + 16))
      {
        if (v30 < v29)
        {
          v32 = *v27;
          *v27 = *(a2 - 3);
          *(a2 - 3) = v32;
          if (*v27 < *(v8 + 16))
          {
            v33 = *(v8 + 16);
            *(v8 + 16) = *v27;
            *v27 = v33;
          }
        }
      }

      else
      {
        v31 = *(v8 + 16);
        if (v30 < v29)
        {
          *(v8 + 16) = *(a2 - 3);
          goto LABEL_48;
        }

        *(v8 + 16) = *v27;
        *v27 = v31;
        if (*(a2 - 6) < *&v31)
        {
          *v27 = *(a2 - 3);
LABEL_48:
          *(a2 - 3) = v31;
        }
      }

      v34 = *v11;
      v35 = *v21;
      v36 = *v27;
      if (*v11 >= *v21)
      {
        v37 = *v11;
        if (v36 < v34)
        {
          v38 = *v27;
          *v11 = *v27;
          *v27 = v37;
          if (v35 <= *&v38)
          {
            v37 = v38;
          }

          else
          {
            v37 = *v21;
            *v21 = v38;
            *v11 = v37;
          }
        }
      }

      else
      {
        v37 = *v21;
        if (v36 >= v34)
        {
          *v21 = *v11;
          *v11 = v37;
          if (v36 < *&v37)
          {
            v39 = *v27;
            *v11 = *v27;
            *v27 = v37;
            v37 = v39;
          }
        }

        else
        {
          *v21 = *v27;
          *v27 = v37;
          v37 = *v11;
        }
      }

      v40 = *v8;
      *v8 = v37;
      *v11 = v40;
      goto LABEL_59;
    }

    v15 = *v8;
    if (*v8 >= *v10)
    {
      if (v12 < v15)
      {
        v19 = *v8;
        *v8 = *(a2 - 1);
        *(a2 - 1) = v19;
        if (*v8 < *v10)
        {
          v20 = *v10;
          *v10 = *v8;
          *v8 = v20;
        }
      }

      goto LABEL_59;
    }

    v16 = *v10;
    if (v12 < v15)
    {
      *v10 = *(a2 - 1);
LABEL_36:
      *(a2 - 1) = v16;
      goto LABEL_59;
    }

    *v10 = *v8;
    *v8 = v16;
    if (*(a2 - 2) < *&v16)
    {
      *v8 = *(a2 - 1);
      goto LABEL_36;
    }

LABEL_59:
    --a3;
    if (a4)
    {
      v41 = *v8;
LABEL_62:
      v42 = 0;
      v43 = *(v8 + 4);
      do
      {
        v44 = *(v8 + v42 + 8);
        v42 += 8;
      }

      while (v44 < v41);
      v45 = v8 + v42;
      v46 = a2;
      if (v42 == 8)
      {
        v46 = a2;
        do
        {
          if (v45 >= v46)
          {
            break;
          }

          v48 = *(v46 - 2);
          v46 -= 2;
        }

        while (v48 >= v41);
      }

      else
      {
        do
        {
          v47 = *(v46 - 2);
          v46 -= 2;
        }

        while (v47 >= v41);
      }

      v8 += v42;
      if (v45 < v46)
      {
        v49 = v46;
        do
        {
          v50 = *v8;
          *v8 = *v49;
          *v49 = v50;
          do
          {
            v51 = *(v8 + 8);
            v8 += 8;
          }

          while (v51 < v41);
          do
          {
            v52 = *(v49 - 2);
            v49 -= 2;
          }

          while (v52 >= v41);
        }

        while (v8 < v49);
      }

      if (v8 - 8 != v7)
      {
        *v7 = *(v8 - 8);
      }

      *(v8 - 8) = v41;
      *(v8 - 4) = v43;
      if (v45 < v46)
      {
        goto LABEL_81;
      }

      v53 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,DspLib::BuzzKill::findFFTBinsBeyondThreshold(std::span<float const,18446744073709551615ul>,std::span<float const,18446744073709551615ul>,std::span<float const,18446744073709551615ul>,std::span<DspLib::BuzzKill::SortList,18446744073709551615ul>)::$_0 &,DspLib::BuzzKill::SortList*>(v7, v8 - 8);
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,DspLib::BuzzKill::findFFTBinsBeyondThreshold(std::span<float const,18446744073709551615ul>,std::span<float const,18446744073709551615ul>,std::span<float const,18446744073709551615ul>,std::span<DspLib::BuzzKill::SortList,18446744073709551615ul>)::$_0 &,DspLib::BuzzKill::SortList*>(v8, a2);
      if (result)
      {
        a2 = (v8 - 8);
        if (!v53)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v53)
      {
LABEL_81:
        result = std::__introsort<std::_ClassicAlgPolicy,DspLib::BuzzKill::findFFTBinsBeyondThreshold(std::span<float const,18446744073709551615ul>,std::span<float const,18446744073709551615ul>,std::span<float const,18446744073709551615ul>,std::span<DspLib::BuzzKill::SortList,18446744073709551615ul>)::$_0 &,DspLib::BuzzKill::SortList*,false>(v7, v8 - 8, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v41 = *v8;
      if (*(v8 - 8) < *v8)
      {
        goto LABEL_62;
      }

      if (*(a2 - 2) <= v41)
      {
        v55 = v8 + 8;
        do
        {
          v8 = v55;
          if (v55 >= a2)
          {
            break;
          }

          v55 += 8;
        }

        while (*v8 <= v41);
      }

      else
      {
        do
        {
          v54 = *(v8 + 8);
          v8 += 8;
        }

        while (v54 <= v41);
      }

      v56 = a2;
      if (v8 < a2)
      {
        v56 = a2;
        do
        {
          v57 = *(v56 - 2);
          v56 -= 2;
        }

        while (v57 > v41);
      }

      v58 = *(v7 + 4);
      while (v8 < v56)
      {
        v59 = *v8;
        *v8 = *v56;
        *v56 = v59;
        do
        {
          v60 = *(v8 + 8);
          v8 += 8;
        }

        while (v60 <= v41);
        do
        {
          v61 = *(v56 - 2);
          v56 -= 2;
        }

        while (v61 > v41);
      }

      if (v8 - 8 != v7)
      {
        *v7 = *(v8 - 8);
      }

      a4 = 0;
      *(v8 - 8) = v41;
      *(v8 - 4) = v58;
    }
  }

  v63 = *(v8 + 8);
  v64 = *(a2 - 2);
  if (v63 >= *v8)
  {
    if (v64 < v63)
    {
      v109 = *(v8 + 8);
      *(v8 + 8) = *(a2 - 1);
      *(a2 - 1) = v109;
      if (*(v8 + 8) < *v8)
      {
        *v8 = vextq_s8(*v8, *v8, 8uLL);
      }
    }
  }

  else
  {
    v62 = *v8;
    if (v64 < v63)
    {
      goto LABEL_109;
    }

    *v8 = *(v8 + 8);
    *(v8 + 8) = v62;
    if (*(a2 - 2) < *&v62)
    {
      *(v8 + 8) = *(a2 - 1);
      goto LABEL_110;
    }
  }

  return result;
}

float *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,DspLib::BuzzKill::findFFTBinsBeyondThreshold(std::span<float const,18446744073709551615ul>,std::span<float const,18446744073709551615ul>,std::span<float const,18446744073709551615ul>,std::span<DspLib::BuzzKill::SortList,18446744073709551615ul>)::$_0 &,DspLib::BuzzKill::SortList*,0>(float *result, float *a2, float *a3, void *a4, void *a5)
{
  v5 = *a2;
  v6 = *a3;
  if (*a2 >= *result)
  {
    if (v6 < v5)
    {
      v7 = *a2;
      *a2 = *a3;
      *a3 = v7;
      if (*a2 >= *result)
      {
        goto LABEL_7;
      }

      v8 = *result;
      *result = *a2;
      *a2 = v8;
      v6 = *a3;
    }
  }

  else
  {
    v7 = *result;
    if (v6 < v5)
    {
      *result = *a3;
      *a3 = v7;
LABEL_7:
      v6 = *&v7;
      goto LABEL_10;
    }

    *result = *a2;
    *a2 = v7;
    v6 = *a3;
    if (*a3 < *&v7)
    {
      *a2 = *a3;
      *a3 = v7;
      v6 = *&v7;
    }
  }

LABEL_10:
  if (*a4 < v6)
  {
    v9 = *a3;
    *a3 = *a4;
    *a4 = v9;
    if (*a3 < *a2)
    {
      v10 = *a2;
      *a2 = *a3;
      *a3 = v10;
      if (*a2 < *result)
      {
        v11 = *result;
        *result = *a2;
        *a2 = v11;
      }
    }
  }

  if (*a5 < *a4)
  {
    v12 = *a4;
    *a4 = *a5;
    *a5 = v12;
    if (*a4 < *a3)
    {
      v13 = *a3;
      *a3 = *a4;
      *a4 = v13;
      if (*a3 < *a2)
      {
        v14 = *a2;
        *a2 = *a3;
        *a3 = v14;
        if (*a2 < *result)
        {
          v15 = *result;
          *result = *a2;
          *a2 = v15;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,DspLib::BuzzKill::findFFTBinsBeyondThreshold(std::span<float const,18446744073709551615ul>,std::span<float const,18446744073709551615ul>,std::span<float const,18446744073709551615ul>,std::span<DspLib::BuzzKill::SortList,18446744073709551615ul>)::$_0 &,DspLib::BuzzKill::SortList*>(uint64_t a1, uint64_t a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v4 = *(a1 + 8);
      v5 = *(a2 - 8);
      if (v4 >= *a1)
      {
        if (v5 < v4)
        {
          v16 = *(a1 + 8);
          *(a1 + 8) = *(a2 - 8);
          *(a2 - 8) = v16;
          if (*(a1 + 8) < *a1)
          {
            *a1 = vextq_s8(*a1, *a1, 8uLL);
          }
        }

        return 1;
      }

      v3 = *a1;
      if (v5 >= v4)
      {
        *a1 = *(a1 + 8);
        *(a1 + 8) = v3;
        if (*(a2 - 8) >= *&v3)
        {
          return 1;
        }

        *(a1 + 8) = *(a2 - 8);
        goto LABEL_13;
      }

LABEL_12:
      *a1 = *(a2 - 8);
LABEL_13:
      *(a2 - 8) = v3;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,DspLib::BuzzKill::findFFTBinsBeyondThreshold(std::span<float const,18446744073709551615ul>,std::span<float const,18446744073709551615ul>,std::span<float const,18446744073709551615ul>,std::span<DspLib::BuzzKill::SortList,18446744073709551615ul>)::$_0 &,DspLib::BuzzKill::SortList*,0>(a1, (a1 + 8), (a1 + 16), (a1 + 24), (a2 - 8));
        return 1;
      }

      goto LABEL_14;
    }

    v11 = *(a1 + 8);
    v12 = *a1;
    v13 = *(a1 + 16);
    if (v11 >= *a1)
    {
      if (v13 < v11)
      {
        v21 = *(a1 + 8);
        v20 = *(a1 + 16);
        *(a1 + 8) = v20;
        *(a1 + 16) = v21;
        v13 = *&v21;
        if (v12 > *&v20)
        {
          v22 = *a1;
          *a1 = v20;
          *(a1 + 8) = v22;
        }
      }

      goto LABEL_48;
    }

    v14 = *a1;
    LODWORD(v15) = *a1;
    if (v13 >= v11)
    {
      *a1 = *(a1 + 8);
      *(a1 + 8) = v14;
      if (v13 >= v15)
      {
LABEL_48:
        if (*(a2 - 8) < v13)
        {
          v31 = *(a1 + 16);
          *(a1 + 16) = *(a2 - 8);
          *(a2 - 8) = v31;
          if (*(a1 + 16) < *(a1 + 8))
          {
            v33 = *(a1 + 8);
            v32 = *(a1 + 16);
            *(a1 + 8) = v32;
            *(a1 + 16) = v33;
            if (*a1 > *&v32)
            {
              v34 = *a1;
              *a1 = v32;
              *(a1 + 8) = v34;
            }
          }
        }

        return 1;
      }

      *(a1 + 8) = *(a1 + 16);
    }

    else
    {
      *a1 = *(a1 + 16);
    }

    *(a1 + 16) = v14;
    v13 = v15;
    goto LABEL_48;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    if (*(a2 - 8) < *a1)
    {
      v3 = *a1;
      goto LABEL_12;
    }

    return 1;
  }

LABEL_14:
  v6 = (a1 + 16);
  v7 = *(a1 + 16);
  v8 = *(a1 + 8);
  v9 = *a1;
  if (v8 >= *a1)
  {
    if (v7 < v8)
    {
      v18 = *(a1 + 8);
      v17 = *(a1 + 16);
      *(a1 + 8) = v17;
      *(a1 + 16) = v18;
      if (v9 > *&v17)
      {
        v19 = *a1;
        *a1 = v17;
        *(a1 + 8) = v19;
      }
    }
  }

  else
  {
    v10 = *a1;
    if (v7 >= v8)
    {
      *a1 = *(a1 + 8);
      *(a1 + 8) = v10;
      if (v7 >= *&v10)
      {
        goto LABEL_34;
      }

      *(a1 + 8) = *(a1 + 16);
    }

    else
    {
      *a1 = *(a1 + 16);
    }

    *(a1 + 16) = v10;
  }

LABEL_34:
  v23 = a1 + 24;
  if (a1 + 24 == a2)
  {
    return 1;
  }

  v24 = 0;
  v25 = 0;
  while (1)
  {
    v26 = *v23;
    if (*v23 < *v6)
    {
      v27 = *(v23 + 4);
      v28 = v24;
      while (1)
      {
        *(a1 + v28 + 24) = *(a1 + v28 + 16);
        if (v28 == -16)
        {
          break;
        }

        v29 = *(a1 + v28 + 8);
        v28 -= 8;
        if (v29 <= v26)
        {
          v30 = a1 + v28 + 24;
          goto LABEL_42;
        }
      }

      v30 = a1;
LABEL_42:
      *v30 = v26;
      *(v30 + 4) = v27;
      if (++v25 == 8)
      {
        return v23 + 8 == a2;
      }
    }

    v6 = v23;
    v24 += 8;
    v23 += 8;
    if (v23 == a2)
    {
      return 1;
    }
  }
}

DspLib::AnalyticSignalTransformPolyPhase *DspLib::AnalyticSignalTransformPolyPhase::AnalyticSignalTransformPolyPhase(DspLib::AnalyticSignalTransformPolyPhase *this)
{
  *(this + 8) = 0;
  *(this + 3) = 0;
  *this = &unk_1F591AB88;
  *(this + 16) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 160) = 0;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 25) = xmmword_1DE095FA0;
  *(this + 26) = xmmword_1DE095FA0;
  *(this + 27) = xmmword_1DE095FA0;
  DspLib::ChannelBuffer::ChannelBuffer((this + 448), 0, 0);
  DspLib::ChannelBuffer::ChannelBuffer((this + 496), 0, 0);
  DspLib::ChannelBuffer::ChannelBuffer((this + 544), 0, 0);
  DspLib::ChannelBuffer::ChannelBuffer((this + 592), 0, 0);
  return this;
}

void sub_1DDBF1D04(_Unwind_Exception *a1)
{
  DspLib::ChannelBuffer::~ChannelBuffer((v1 + 68));
  DspLib::ChannelBuffer::~ChannelBuffer((v1 + 62));
  DspLib::ChannelBuffer::~ChannelBuffer((v1 + 56));
  v4 = v1[47];
  if (v4)
  {
    v1[48] = v4;
    operator delete(v4);
  }

  v5 = v1[44];
  if (v5)
  {
    v1[45] = v5;
    operator delete(v5);
  }

  v6 = v1[41];
  if (v6)
  {
    v1[42] = v6;
    operator delete(v6);
  }

  v7 = v1[38];
  if (v7)
  {
    v1[39] = v7;
    operator delete(v7);
  }

  DspLib::Biquad::Filter::~Filter((v1 + 29));
  DspLib::Biquad::Filter::~Filter((v1 + 20));
  DspLib::Biquad::Filter::~Filter((v1 + 11));
  DspLib::Biquad::Filter::~Filter(v2);
  _Unwind_Resume(a1);
}

void DspLib::BuzzKill::Algorithm::reset()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/BuzzKill/dsp/DspLibBuzzKill.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 143);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::BuzzKill::Algorithm::getThresholdSpectrum(int a1)
{
  v2 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/BuzzKill/dsp/DspLibBuzzKill.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v2, a1);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::BuzzKill::Algorithm::processBuzzAnalysis()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/BuzzKill/dsp/DspLibBuzzKill.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 462);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::BuzzKill::Algorithm::latencySamples()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/BuzzKill/dsp/DspLibBuzzKill.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 495);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::BuzzKill::Algorithm::status()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/BuzzKill/dsp/DspLibBuzzKill.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 695);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

float DspLib::Biquad::read@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  result = *(a1 + 16);
  *(a2 + 16) = result;
  return result;
}

float DspLib::Biquad::read(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v4 = (a3 + 16);
    v5 = (a1 + 16);
    v6 = 1;
    do
    {
      result = *v5;
      *(v4 - 1) = *(v5 - 1);
      *v4 = result;
      v4 += 5;
      v5 += 5;
    }

    while (a4 > v6++);
  }

  return result;
}

float DspLib::Biquad::write(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 4) = *(a1 + 4);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 12) = *(a1 + 12);
  result = *(a1 + 16);
  *(a2 + 16) = result;
  return result;
}

float DspLib::Biquad::write(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = (a1 + 16);
    v4 = (a3 + 16);
    v5 = 1;
    do
    {
      result = *v3;
      *(v4 - 1) = *(v3 - 1);
      *v4 = result;
      v4 += 5;
      v3 += 5;
    }

    while (a2 > v5++);
  }

  return result;
}

uint64_t DspLib::Biquad::validate(uint64_t a1)
{
  v1 = COERCE_FLOAT(HIDWORD(*a1)) * -0.5;
  v2 = -(*(a1 + 16) - v1 * v1);
  v3 = fabs(v1) + sqrt(v2);
  if (v2 < 0.0)
  {
    v3 = *(a1 + 16);
  }

  v4 = v3 < 1.0;
  v5.i64[0] = 0x7F0000007FLL;
  v5.i64[1] = 0x7F0000007FLL;
  v6 = vmovn_s32(vcgeq_s32((*a1 & __PAIR128__(0x7FFFFFFF7FFFFFFFLL, 0x7FFFFFFF7FFFFFFFLL)), vnegq_f32(v5)));
  v6.i16[0] = vmaxv_u16(v6);
  if (v4)
  {
    return ((*(a1 + 16) & 0x7FFFFFFFu) < 0x7F800000) & ~v6.i32[0];
  }

  else
  {
    return 0;
  }
}

uint64_t DspLib::Biquad::validate(__int128 *a1, uint64_t a2)
{
  if (!a2)
  {
    return 1;
  }

  v2 = a2;
  LODWORD(v4) = 1;
  do
  {
    v6 = *a1;
    v7 = *(a1 + 4);
    v4 = v4 & DspLib::Biquad::validate(&v6);
    a1 = (a1 + 20);
    --v2;
  }

  while (v2);
  return v4;
}

double DspLib::Biquad::frequencyResponse(float *a1, int a2, double a3, double a4, double a5)
{
  if (a2 == 1)
  {
    v17 = 0.0 - a3 * a3;
    v18 = a3 * 0.0 + a3 * 0.0;
    v19 = a1[2];
    if (v19 == 0.0)
    {
      v20 = a1[1];
      v21 = *a1;
      v22 = v20 == 0.0;
      v23 = v21 * 0.0 + v20;
      if (v20 == 0.0)
      {
        v24 = 0.0;
      }

      else
      {
        v24 = v21 * a3;
      }

      if (!v22)
      {
        v21 = v23;
      }
    }

    else
    {
      v25 = *a1;
      v26 = a1[1];
      v27 = v17 * v25 + v26 * 0.0;
      v24 = v18 * v25 + v26 * a3;
      v21 = v27 + v19;
    }

    v29 = a1[3];
    v28 = a1[4];
    v30 = v18 + v29 * a3;
    v31 = v17 + v29 * 0.0 + v28;
    a5 = 1.0;
    v32 = v29 == 0.0;
    if (v29 == 0.0)
    {
      v33 = 1.0;
    }

    else
    {
      v33 = v29;
    }

    if (v32)
    {
      v34 = 0.0;
    }

    else
    {
      v34 = a3;
    }

    if (v28 == 0.0)
    {
      v35 = v33;
    }

    else
    {
      v35 = v31;
    }

    if (v28 == 0.0)
    {
      v30 = v34;
    }

    v36 = v30 * v30 + v35 * v35;
    if (v36 != 0.0)
    {
      return (v24 * v30 + v21 * v35) * (1.0 / v36);
    }
  }

  else if (!a2)
  {
    v7 = __sincos_stret(a3);
    sinval = v7.__sinval;
    cosval = v7.__cosval;
    v9 = cosval * cosval - sinval * sinval;
    v10 = -(sinval * cosval) - cosval * sinval;
    v11 = a1[3];
    v12 = a1[4];
    v13 = v9 * v12;
    v14 = v10 * v12 - v7.__sinval * v11;
    a5 = 1.0;
    v15 = v7.__cosval * v11 + v13 + 1.0;
    v16 = v14 * v14 + v15 * v15;
    if (v16 != 0.0)
    {
      return (v14 * (v10 * a1[2] - v7.__sinval * a1[1]) + (v7.__cosval * a1[1] + v9 * a1[2] + *a1) * v15) / v16;
    }
  }

  return a5;
}

void DspLib::dspLibMessenger(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  v3 = DspLib::dspLibMessenger(void)::sMessengerCache;
  if (!DspLib::dspLibMessenger(void)::sMessengerCache || (v3 = std::__shared_weak_count::lock(DspLib::dspLibMessenger(void)::sMessengerCache), (a1[1] = v3) == 0) || (v4 = DspLib::dspLibMessenger(void)::sMessengerCache, *a1 = DspLib::dspLibMessenger(void)::sMessengerCache, v5 = v3, !v4))
  {
    v11 = 1;
    v6 = caulk::concurrent::messenger::shared_logging_priority(v3);
    std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&__p, v6);
    v7 = v6[2];
    *&v10[13] = *(v6 + 45);
    *v10 = v7;
    std::optional<std::string>::operator=[abi:ne200100]<char const(&)[17],void>(&__p, "DspLib messenger");
    std::allocate_shared[abi:ne200100]<caulk::concurrent::messenger,std::allocator<caulk::concurrent::messenger>,caulk::concurrent::messenger::thread_strategy &,caulk::thread::attributes &,0>();
  }

  atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  DspLib::dspLibMessenger(void)::sMessengerCache = v4;
  v8 = DspLib::dspLibMessenger(void)::sMessengerCache;
  DspLib::dspLibMessenger(void)::sMessengerCache = v5;
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }
}

void sub_1DDBF25A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a18 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::optional<std::string>::operator=[abi:ne200100]<char const(&)[17],void>(std::string *this, char *__s)
{
  if (this[1].__r_.__value_.__s.__data_[0] == 1)
  {
    std::string::__assign_external(this, __s);
  }

  else
  {
    v4 = strlen(__s);
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = v4;
    if (v4 >= 0x17)
    {
      operator new();
    }

    *(&this->__r_.__value_.__s + 23) = v4;
    if (v4)
    {
      memmove(this, __s, v4);
    }

    this->__r_.__value_.__s.__data_[v5] = 0;
    this[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return this;
}

DspLib::Log::Instance *DspLib::Log::uninitialize(caulk::concurrent::messenger ***this)
{
  if (*this)
  {
    caulk::concurrent::messenger::drain(**this);
  }

  return std::unique_ptr<DspLib::Log::Instance>::reset[abi:ne200100](this, 0);
}

DspLib::Log::Instance *std::unique_ptr<DspLib::Log::Instance>::reset[abi:ne200100](DspLib::Log::Instance **a1, DspLib::Log::Instance *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    DspLib::Log::Instance::~Instance(result);

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

uint64_t DspLib::Log::Instance::write(std::string::size_type a1, char *__src, std::string::size_type a3)
{
  v6 = *(a1 + 40);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24) - v7;
  v9 = *(a1 + 64) - *(a1 + 56) + (v8 >> 2);
  if (a3 > v9)
  {
    v10 = CFTimeZoneCopySystem();
    CurrentGregorianDate = CATimeUtilities::GetCurrentGregorianDate(v10);
    v13 = v12;
    CFRelease(v10);
    DspLib::Log::Instance::getBufferOverflowErrorString(CurrentGregorianDate, v13, v9, &v23);
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v23.__r_.__value_.__l.__data_, v23.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v23;
    }

    DspLib::Log::Instance::enqueueInstanceLogString(a1, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    v7 = *(a1 + 16);
    v8 = *(a1 + 24) - v7;
  }

  v14 = v8 >> 2;
  v15 = *(a1 + 40);
  if (v6 + a3 >= v14)
  {
    v17 = v14 - v15;
    if (v14 - v15 == -1)
    {
      v18 = a3;
    }

    else
    {
      v18 = v14 - v15;
    }

    DspLib::copy(__src, v18, (v7 + 4 * v15));
    v16 = a3 - v17;
    DspLib::copy(&__src[4 * v17], a3 - v17, *(a1 + 16));
  }

  else
  {
    DspLib::copy(__src, a3, (v7 + 4 * v15));
    v16 = *(a1 + 40) + a3;
  }

  *(a1 + 40) = v16;
  *(a1 + 56) += a3;
  v19 = *a1;
  v23.__r_.__value_.__r.__words[0] = a1;
  v23.__r_.__value_.__l.__size_ = a3;
  v20 = caulk::concurrent::details::rt_message_call<DspLib::Log::Instance::enqueueWrittenFloatValues(unsigned long)::{lambda(void)#1}>::create(&v23);
  return caulk::concurrent::messenger::enqueue(v19, v20);
}

void sub_1DDBF2A30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](std::string *a1, __int128 *a2)
{
  a1->__r_.__value_.__s.__data_[0] = 0;
  a1[1].__r_.__value_.__s.__data_[0] = 0;
  std::__optional_storage_base<std::string,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<std::string,false> const&>(a1, a2);
  return a1;
}

void sub_1DDBF2B2C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__optional_storage_base<std::string,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<std::string,false> const&>(std::string *this, __int128 *a2)
{
  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
    }

    else
    {
      v3 = *a2;
      this->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&this->__r_.__value_.__l.__data_ = v3;
    }

    this[1].__r_.__value_.__s.__data_[0] = 1;
  }
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __n)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
    if (__n > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(this, v8, __n - v8, size, 0, size, __n, __s);
      return this;
    }
  }

  if (__n)
  {
    memmove(v7, __s, __n);
    LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

uint64_t DspLib::Log::Instance::Instance(uint64_t a1, const std::string *a2, int a3)
{
  v61 = *MEMORY[0x1E69E9840];
  *(a1 + 16) = 0u;
  v47 = (a1 + 16);
  v6 = (a1 + 72);
  v7 = (a1 + 488);
  *(a1 + 536) = 0;
  v8 = MEMORY[0x1E69E5530] + 64;
  *a1 = 0u;
  *(a1 + 32) = 0;
  *(a1 + 488) = v8;
  v9 = *(MEMORY[0x1E69E54D0] + 16);
  v10 = *(MEMORY[0x1E69E54D0] + 8);
  *(a1 + 72) = v10;
  v11 = v9;
  *(v6 + *(v10 - 24)) = v9;
  v12 = (a1 + 72 + *(*(a1 + 72) - 24));
  std::ios_base::init(v12, (a1 + 80));
  v13 = MEMORY[0x1E69E5530] + 24;
  v12[1].__vftable = 0;
  v12[1].__fmtflags_ = -1;
  *v6 = v13;
  *v7 = v8;
  MEMORY[0x1E12BCB10](a1 + 80);
  *(a1 + 1104) = 0;
  v14 = MEMORY[0x1E69E5530] + 64;
  *(a1 + 1056) = MEMORY[0x1E69E5530] + 64;
  *(a1 + 640) = v10;
  *(a1 + 640 + *(v10 - 24)) = v11;
  v15 = (a1 + 640 + *(*(a1 + 640) - 24));
  std::ios_base::init(v15, (a1 + 648));
  v16 = MEMORY[0x1E69E5530] + 24;
  v15[1].__vftable = 0;
  v15[1].__fmtflags_ = -1;
  *(a1 + 640) = v16;
  *(a1 + 1056) = v14;
  MEMORY[0x1E12BCB10](a1 + 648);
  v17 = (a1 + 1208);
  *(a1 + 1224) = 0;
  *(a1 + 1208) = 0u;
  DspLib::dspLibMessenger(&v60);
  v18 = *(a1 + 8);
  data = v60.__pn_.__r_.__value_.__l.__data_;
  *a1 = *&v60.__pn_.__r_.__value_.__l.__data_;
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  LODWORD(v60.__pn_.__r_.__value_.__l.__data_) = 0;
  std::vector<float>::resize(v47, (2 * a3), &v60, data);
  size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v21 = a2->__r_.__value_.__r.__words[0];
    size = a2->__r_.__value_.__l.__size_;
  }

  else
  {
    v21 = a2;
  }

  v22 = &v21[-1].__r_.__value_.__r.__words[2] + 7;
  while (size)
  {
    v23 = *(v22 + size--);
    if (v23 == 47)
    {
      v24 = size + 1;
      goto LABEL_11;
    }
  }

  v24 = 0;
LABEL_11:
  std::string::basic_string(&v59, a2, 0, v24, &v60);
  v25 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((v25 & 0x8000000000000000) != 0)
  {
    v25 = a2->__r_.__value_.__l.__size_;
  }

  std::string::basic_string(&v58, a2, v24, v25, &v60);
  v26 = CFTimeZoneCopySystem();
  CurrentGregorianDate = CATimeUtilities::GetCurrentGregorianDate(v26);
  v29 = v28;
  CFRelease(v26);
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v60.__pn_, &v59);
  std::__fs::filesystem::__create_directories(&v60, 0);
  if (SHIBYTE(v60.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__pn_.__r_.__value_.__l.__data_);
  }

  v30 = MGGetStringAnswer();
  CStringPtr = CFStringGetCStringPtr(v30, 0x8000100u);
  v32 = "";
  if (CStringPtr)
  {
    v32 = CStringPtr;
  }

  v33 = &v59;
  if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v33 = v59.__r_.__value_.__r.__words[0];
  }

  v34 = llround(v29);
  v35 = &v58;
  if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v35 = v58.__r_.__value_.__r.__words[0];
  }

  snprintf(&v60, 0x200uLL, "%s%s_%04d%02d%02d_%02d%02d%02d_%s", v33, v32, CurrentGregorianDate, (CurrentGregorianDate >> 8) >> 24, (CurrentGregorianDate >> 16) >> 24, (CurrentGregorianDate >> 24) >> 24, SHIDWORD(CurrentGregorianDate) >> 24, v34, v35);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v52);
  v36 = strlen(&v60);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v53, &v60, v36);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v52, &__str);
  p_str = __str.__r_.__value_.__r.__words[0];
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v38 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v38 = __str.__r_.__value_.__l.__size_;
  }

  v39 = &p_str[-1].__r_.__value_.__r.__words[2] + 7;
  while (v38)
  {
    v40 = v39[v38--];
    if (v40 == 46)
    {
      goto LABEL_31;
    }
  }

  v38 = -1;
LABEL_31:
  std::string::basic_string(&v50, &__str, 0, v38, __p);
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  v59 = v50;
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v41 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v41 = __str.__r_.__value_.__l.__size_;
  }

  std::string::basic_string(&v50, &__str, v38, v41, __p);
  if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v42 = HIBYTE(v59.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v42 = v59.__r_.__value_.__l.__size_;
  }

  std::string::basic_string[abi:ne200100](__p, v42 + 14);
  if (v49 >= 0)
  {
    v43 = __p;
  }

  else
  {
    v43 = __p[0];
  }

  if (v42)
  {
    if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v44 = &v59;
    }

    else
    {
      v44 = v59.__r_.__value_.__r.__words[0];
    }

    memmove(v43, v44, v42);
  }

  strcpy(v43 + v42, "_OVERWRITE.txt");
  if (*(a1 + 1231) < 0)
  {
    operator delete(*v17);
  }

  *v17 = *__p;
  *(a1 + 1224) = v49;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v52, __p);
  std::ofstream::open();
  if (SHIBYTE(v49) < 0)
  {
    operator delete(__p[0]);
  }

  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v52[0] = *MEMORY[0x1E69E54D8];
  v45 = *(MEMORY[0x1E69E54D8] + 72);
  *(v52 + *(v52[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v53 = v45;
  v54 = MEMORY[0x1E69E5548] + 16;
  if (v56 < 0)
  {
    operator delete(v55[7].__locale_);
  }

  v54 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v55);
  std::iostream::~basic_iostream();
  MEMORY[0x1E12BD050](&v57);
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1DDBF3474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a38);
  if (a73 < 0)
  {
    operator delete(a72);
  }

  if (a75 < 0)
  {
    operator delete(a74);
  }

  if (*(v75 + 1231) < 0)
  {
    operator delete(*v78);
  }

  std::ofstream::~ofstream(v77);
  std::ofstream::~ofstream(v76);
  v80 = *a19;
  if (*a19)
  {
    *(v75 + 24) = v80;
    operator delete(v80);
  }

  v81 = *(v75 + 8);
  if (v81)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v81);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x1E69E5560] + 104;
  a1[16] = MEMORY[0x1E69E5560] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x1E69E5560] + 64;
  a1[2] = MEMORY[0x1E69E5560] + 64;
  v5 = MEMORY[0x1E69E54D8];
  v6 = *(MEMORY[0x1E69E54D8] + 24);
  v7 = *(MEMORY[0x1E69E54D8] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x1E69E5560] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_1DDBF3848(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x1E12BD050](v1);
  _Unwind_Resume(a1);
}

const void *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100]@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = std::stringbuf::view[abi:ne200100](a1 + 24);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    result = memmove(a2, result, v4);
  }

  a2[v5] = 0;
  return result;
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54D8];
  v3 = *MEMORY[0x1E69E54D8];
  *a1 = *MEMORY[0x1E69E54D8];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x1E12BD050](a1 + 128);
  return a1;
}

{
  v2 = MEMORY[0x1E69E54D8];
  v3 = *MEMORY[0x1E69E54D8];
  *a1 = *MEMORY[0x1E69E54D8];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

void *std::ofstream::~ofstream(void *a1)
{
  v2 = MEMORY[0x1E69E54D0];
  v3 = *MEMORY[0x1E69E54D0];
  *a1 = *MEMORY[0x1E69E54D0];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x1E12BCB20](a1 + 1);
  std::ostream::~ostream();
  MEMORY[0x1E12BD050](a1 + 52);
  return a1;
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(std::string *a1, std::string *a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  v3 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  size = a2->__r_.__value_.__l.__size_;
  if (v3 < 0)
  {
    a2 = a2->__r_.__value_.__r.__words[0];
  }

  if (v3 < 0)
  {
    v3 = size;
  }

  std::string::append[abi:ne200100]<char const*,0>(a1, a2, (a2 + v3));
  return a1;
}

void sub_1DDBF3B84(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::string::append[abi:ne200100]<char const*,0>(std::string *this, std::string *__src, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v7 = a3 - __src;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == __src)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v11 = this->__r_.__value_.__r.__words[2];
    v8 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v10 = this->__r_.__value_.__r.__words[0];
    v9 = HIBYTE(v11);
  }

  else
  {
    if (a3 == __src)
    {
      return this;
    }

    v8 = 22;
    LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    v10 = this;
  }

  if (v10 > __src || (&v10->__r_.__value_.__l.__data_ + size + 1) <= __src)
  {
    if (v8 - size < v7)
    {
      std::string::__grow_by(this, v8, size - v8 + v7, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    }

    v14 = this;
    if ((v9 & 0x80) != 0)
    {
      v14 = this->__r_.__value_.__r.__words[0];
    }

    v15 = v14 + size;
    if (a3 != __src)
    {
      memmove(v14 + size, __src, v7);
    }

    v15[v7] = 0;
    v16 = v7 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v16;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v16 & 0x7F;
    }
  }

  else
  {
    std::string::__init_with_size[abi:ne200100]<char *,char *>(__p, __src, a3, v7);
    if ((v19 & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v13 = v19;
    }

    else
    {
      v13 = __p[1];
    }

    std::string::append(this, v12, v13);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return this;
}

void sub_1DDBF3CFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1E12BCF50](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5548] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_1DDBF3DAC(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1E12BCB90](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x1E69E5318]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x1E12BCBA0](v13);
  return a1;
}

void sub_1DDBF401C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x1E12BCBA0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1DDBF3FFCLL);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_1DDBF4250(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::stringbuf::view[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 96);
  if ((v1 & 0x10) != 0)
  {
    v3 = *(a1 + 48);
    if (*(a1 + 88) < v3)
    {
      *(a1 + 88) = v3;
    }

    return *(a1 + 40);
  }

  else if ((v1 & 8) != 0)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

void DspLib::Log::Instance::~Instance(DspLib::Log::Instance *this)
{
  caulk::concurrent::messenger::drain(*this);
  v2 = (this + 72);
  if (!std::filebuf::close())
  {
    std::ios_base::clear((v2 + *(*v2 - 24)), *(v2 + *(*v2 - 24) + 32) | 4);
  }

  v3 = (this + 640);
  if (*(this + 96) && !std::filebuf::close())
  {
    std::ios_base::clear((v3 + *(*v3 - 24)), *(v3 + *(*v3 - 24) + 32) | 4);
  }

  if (*(this + 1231) < 0)
  {
    operator delete(*(this + 151));
  }

  v4 = MEMORY[0x1E69E54D0];
  v5 = *MEMORY[0x1E69E54D0];
  *(this + 80) = *MEMORY[0x1E69E54D0];
  v6 = *(v4 + 24);
  *(v3 + *(v5 - 24)) = v6;
  MEMORY[0x1E12BCB20](this + 648);
  std::ostream::~ostream();
  MEMORY[0x1E12BD050](this + 1056);
  *(this + 9) = v5;
  *(v2 + *(v5 - 24)) = v6;
  MEMORY[0x1E12BCB20](this + 80);
  std::ostream::~ostream();
  MEMORY[0x1E12BD050](this + 488);
  v7 = *(this + 2);
  if (v7)
  {
    *(this + 3) = v7;
    operator delete(v7);
  }

  v8 = *(this + 1);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

uint64_t DspLib::Log::Instance::getBufferOverflowErrorString@<X0>(unint64_t a1@<X1>, double a2@<X2>, int a3@<W3>, _BYTE *a4@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = llround(a2 * 1000.0);
  snprintf(__str, 0x78uLL, "Log buffer overwrite at write position: %d by %d values --- at time: %04ld-%02d-%02d %02d:%02d:%02d.%03d\n", a3, a1, ((a1 >> 8) >> 24), (a1 >> 16) >> 24, (a1 >> 24) >> 24, SHIDWORD(a1) >> 24, v5 / 1000, v5 % 1000, v9);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v10);
  v6 = strlen(__str);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, __str, v6);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v10, a4);
  v10[0] = *MEMORY[0x1E69E54D8];
  v7 = *(MEMORY[0x1E69E54D8] + 72);
  *(v10 + *(v10[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v11 = v7;
  v12 = MEMORY[0x1E69E5548] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v13);
  std::iostream::~basic_iostream();
  return MEMORY[0x1E12BD050](&v15);
}

void DspLib::Log::Instance::enqueueInstanceLogString(caulk::concurrent::messenger **a1, uint64_t a2)
{
  v2 = *a1;
  v4 = a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v3 = caulk::concurrent::details::rt_message_call<DspLib::Log::Instance::enqueueInstanceLogString(std::string)::{lambda(void)#1}>::create(&v4);
  caulk::concurrent::messenger::enqueue(v2, v3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

uint64_t caulk::concurrent::details::rt_message_call<DspLib::Log::Instance::enqueueInstanceLogString(std::string)::{lambda(void)#1}>::create(uint64_t a1)
{
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    result = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(result + 16) = 0;
    *result = &unk_1F591A678;
    *(result + 8) = 0;
    *(result + 24) = *a1;
    v3 = *(a1 + 8);
    *(result + 48) = *(a1 + 24);
    *(result + 32) = v3;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *result = &unk_1F591A620;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void caulk::concurrent::details::rt_message_call<DspLib::Log::Instance::enqueueInstanceLogString(std::string)::{lambda(void)#1}>::~rt_message_call(void **this)
{
  *this = &unk_1F591A678;
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  caulk::concurrent::message::~message(this);
}

{
  *this = &unk_1F591A678;
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  caulk::concurrent::message::~message(this);

  JUMPOUT(0x1E12BD160);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<DspLib::Log::Instance::enqueueInstanceLogString(std::string)::{lambda(void)#1}>::perform(uint64_t a1)
{
  v3 = a1;
  v1 = *(a1 + 24);
  if (*(a1 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&v4, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    v4 = *(a1 + 32);
  }

  DspLib::Log::Instance::printOutQueueString(v1, &v4);
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  return caulk::concurrent::details::rt_message_call<DspLib::Log::Instance::enqueueInstanceLogString(std::string)::{lambda(void)#1}>::rt_cleanup::~rt_cleanup(&v3);
}

void caulk::concurrent::details::message_call<DspLib::Log::Instance::enqueueInstanceLogString(std::string)::{lambda(void)#1}>::~message_call(void **this)
{
  *this = &unk_1F591A678;
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  caulk::concurrent::message::~message(this);
}

{
  *this = &unk_1F591A678;
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  caulk::concurrent::message::~message(this);

  JUMPOUT(0x1E12BD160);
}

void std::apply[abi:ne200100]<DspLib::Log::Instance::enqueueInstanceLogString(std::string)::{lambda(void)#1} &,std::tuple<> &>(uint64_t a1)
{
  v1 = *a1;
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    __p = *(a1 + 8);
  }

  DspLib::Log::Instance::printOutQueueString(v1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1DDBF4B60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *DspLib::Log::Instance::printOutQueueString(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 768))
  {
    std::ofstream::open();
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a1 + 640), v5, v6);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<DspLib::Log::Instance::enqueueInstanceLogString(std::string)::{lambda(void)#1}>::rt_cleanup::~rt_cleanup(uint64_t *a1)
{
  v2 = *a1;
  *v2 = &unk_1F591A678;
  if (*(v2 + 55) < 0)
  {
    operator delete(*(v2 + 32));
  }

  caulk::concurrent::message::~message(v2);
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    caulk::rt_safe_memory_resource::rt_deallocate(result, v2);
    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t caulk::concurrent::details::rt_message_call<DspLib::Log::Instance::enqueueWrittenFloatValues(unsigned long)::{lambda(void)#1}>::create(_OWORD *a1)
{
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    result = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = *a1;
    *result = &unk_1F591A6A0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void caulk::concurrent::details::rt_message_call<DspLib::Log::Instance::enqueueWrittenFloatValues(unsigned long)::{lambda(void)#1}>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12BD160);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<DspLib::Log::Instance::enqueueWrittenFloatValues(unsigned long)::{lambda(void)#1}>::perform(uint64_t a1)
{
  v2 = a1;
  DspLib::Log::Instance::writeFloatValuesToDisk(*(a1 + 24), *(a1 + 32));
  return caulk::concurrent::details::rt_message_call<AUECMIMO::LogMaster(void)::$_0,double &,double &,BOOL,BOOL,BOOL>::rt_cleanup::~rt_cleanup(&v2);
}

void sub_1DDBF4D48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  caulk::concurrent::details::rt_message_call<AUECMIMO::LogMaster(void)::$_0,double &,double &,BOOL,BOOL,BOOL>::rt_cleanup::~rt_cleanup(va);
  _Unwind_Resume(a1);
}

uint64_t DspLib::Log::Instance::writeFloatValuesToDisk(DspLib::Log::Instance *this, uint64_t a2)
{
  v4 = *(this + 6);
  v5 = *(this + 3) - *(this + 2);
  if (v4 + a2 >= (v5 >> 2))
  {
    v8 = (v5 >> 2) - v4;
    std::ostream::write();
    v7 = a2 - v8;
    result = std::ostream::write();
  }

  else
  {
    result = std::ostream::write();
    v7 = *(this + 6) + a2;
  }

  *(this + 6) = v7;
  *(this + 8) += a2;
  return result;
}

void *std::__shared_ptr_emplace<caulk::concurrent::messenger>::__shared_ptr_emplace[abi:ne200100]<caulk::concurrent::messenger::thread_strategy &,caulk::thread::attributes &,std::allocator<caulk::concurrent::messenger>,0>(void *a1, unsigned int *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F591A6F8;
  MEMORY[0x1E12BC1D0](a1 + 3, *a2);
  return a1;
}

void std::__shared_ptr_emplace<caulk::concurrent::messenger>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F591A6F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12BD160);
}

void std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t DspLib::ToneMeister::Algorithm::initialize(vDSP_Length *this, int a2, double a3)
{
  v4 = DspLib::AlgorithmBase::initialize(this, a2, a3);
  if (v4)
  {
    v5 = (*(*this + 64))(this);
    DspLib::Biquad::Filter::initialize((this + 414), v5, this[421]);
    v6 = (*(*this + 64))(this);
    std::vector<float>::resize(this + 483, v6);
    v7 = (*(*this + 64))(this);
    std::vector<BOOL>::resize((this + 486), v7, 0);
    *(this + 8) = 1;
    DspLib::ToneMeister::Algorithm::setMaxFrequencies(this);
    v8 = (*(*this + 208))(this);
    (*(*this + 216))(this, v8);
  }

  (*(*this + 160))(this);
  return v4;
}

uint64_t DspLib::ToneMeister::Algorithm::setMaxFrequencies(DspLib::ToneMeister::Algorithm *this)
{
  v1 = 0;
  v2 = *(this + 2);
  v3 = v2 * 0.49;
  if (v3 <= 20000.0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 20000.0;
  }

  v5 = this + 240;
  do
  {
    *&v5[4 * DspLib::ToneMeister::Parameters::toneMeisterParameter(v1, 3)] = v4;
    *&v5[4 * DspLib::ToneMeister::Parameters::toneMeisterParameter(v1, 4)] = v4;
    *&v5[4 * DspLib::ToneMeister::Parameters::toneMeisterParameter(v1, 5)] = v4;
    result = DspLib::ToneMeister::Parameters::toneMeisterParameter(v1, 6);
    *&v5[4 * result] = v4;
    v1 = (v1 + 1);
  }

  while (v1 != 50);
  return result;
}

void DspLib::ToneMeister::Algorithm::uninitialize(DspLib::ToneMeister::Algorithm *this)
{
  *(this + 28) = *(this + 27);
  *(this + 484) = *(this + 483);
  DspLib::Biquad::Filter::uninitialize((this + 3312));
  *(this + 424) = *(this + 423);
  *(this + 427) = *(this + 426);
  *(this + 430) = *(this + 429);
  DspLib::FFT::Filterbank::uninitialize((this + 3456));
  std::vector<std::unique_ptr<DspLib::AlgorithmInterface>>::clear[abi:ne200100](this + 496);
  *(this + 487) = 0;
  DspLib::ToneMeister::Algorithm::deleteSharedBuffers(this);
  *(this + 8) = 0;
}

void DspLib::ToneMeister::Algorithm::deleteSharedBuffers(DspLib::ToneMeister::Algorithm *this)
{
  v2 = *(this + 493);
  v3 = 0uLL;
  *(this + 246) = 0u;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    v3 = 0uLL;
  }

  v4 = *(this + 495);
  *(this + 247) = v3;
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void DspLib::ToneMeister::Algorithm::reset(float **this)
{
  DspLib::Biquad::SetupWrapper::reset((this + 420));
  DspLib::FFT::Filterbank::reset((this + 432));
  DspLib::clear(this[426], this[427] - this[426]);
  v2 = this[496];
  v3 = this[497];
  while (v2 != v3)
  {
    v4 = *v2;
    v2 += 2;
    (*(*v4 + 168))(v4);
  }

  v5 = this[499];
  if (v5)
  {
    *(v5 + 2) = 0;
    *(v5 + 32) = 0;
  }
}

void DspLib::ToneMeister::Algorithm::copyStatesFrom(DspLib::ToneMeister::Algorithm *this, const DspLib::ToneMeister::Algorithm *a2)
{
  if ((*(*this + 208))(this))
  {
    if ((*(*a2 + 208))(a2))
    {
      DspLib::copy(*(a2 + 426), (*(a2 + 427) - *(a2 + 426)) >> 2, *(this + 426));
      DspLib::FFT::Filterbank::copyStatesFrom(this + 432, a2 + 432);
      if ((*(*this + 208))(this))
      {
        if ((*(*a2 + 208))(a2))
        {
          v4 = *(a2 + 104);
          v5 = *(a2 + 120);
          *(this + 136) = *(a2 + 136);
          *(this + 120) = v5;
          *(this + 104) = v4;
          v6 = *(a2 + 152);
          v7 = *(a2 + 168);
          v8 = *(a2 + 184);
          *(this + 200) = *(a2 + 200);
          *(this + 184) = v8;
          *(this + 168) = v7;
          *(this + 152) = v6;
        }
      }
    }
  }

  v9 = *(this + 497);
  v10 = *(this + 496);
  if (v9 - v10 == *(a2 + 497) - *(a2 + 496) && v10 != v9)
  {
    v12 = 0;
    do
    {
      v13 = *v10++;
      v14 = v12 + 1;
      DspLib::DynamicFilter::Algorithm::copyStatesFrom(v13, *(*(a2 + 496) + 8 * v12));
      v12 = v14;
    }

    while (v10 != v9);
  }

  v15 = *(this + 499);
  if (v15)
  {
    v16 = *(a2 + 499);
    if (v16)
    {
      v17 = *(v16 + 16);
      *(v15 + 16) = v17;
      *(v15 + 32) = v17 != 0;
    }
  }

  v18 = *(this + 421);
  if (v18 && v18 == *(a2 + 421))
  {

    DspLib::Biquad::Filter::copyStatesFrom((this + 3312), (a2 + 3312));
  }
}

__n128 DspLib::DynamicFilter::Algorithm::copyStatesFrom(DspLib::DynamicFilter::Algorithm *this, const DspLib::DynamicFilter::Algorithm *a2)
{
  DspLib::SideChain::Algorithm::copyStatesFrom((this + 344), (a2 + 344));
  v4 = *(this + 210);
  v5 = *(a2 + 210);
  if (*(v4 + 7) == *(v5 + 7))
  {
    v6 = *(v4 + 6);
    if (v6)
    {
      if (v6 == *(v5 + 6))
      {
        DspLib::Biquad::Filter::copyStatesFrom(v4, v5);
      }
    }
  }

  v7 = *(this + 211);
  v8 = *(a2 + 211);
  if (*(v7 + 7) == *(v8 + 7))
  {
    v9 = *(v7 + 6);
    if (v9)
    {
      if (v9 == *(v8 + 6))
      {
        DspLib::Biquad::Filter::copyStatesFrom(v7, v8);
      }
    }
  }

  (*(*a2 + 200))(a2, &v11, 1);
  result.n128_u32[0] = v11;
  *(this + 1696) = *(a2 + 1696);
  result.n128_u32[1] = *(a2 + 435);
  result.n128_u64[1] = *(a2 + 218);
  *(this + 1736) = result;
  return result;
}

_DWORD *DspLib::ToneMeister::Algorithm::setChannelLinkMode(_DWORD *result, int a2)
{
  if (result[980] != a2)
  {
    result[980] = a2;
    return (*(*result + 160))();
  }

  return result;
}

void DspLib::ToneMeister::Algorithm::setMeteringIsEnabled(DspLib::ToneMeister::Algorithm *this, char a2)
{
  *(this + 96) = a2;
  if ((*(*this + 208))(this))
  {
    std::vector<float>::resize(this + 423, 0x200uLL);
    std::vector<float>::resize(this + 426, 0x2001uLL);
    std::vector<float>::resize(this + 429, 0x2001uLL);
    DspLib::FFT::Filterbank::initialize((this + 3456), 1, *(this + 2));
    v3 = *(this + 423);
    v4 = (*(this + 424) - v3) >> 2;
    v5 = DspLib::ToneMeister::Parameters::toneMeisterParameter(0, 3);
    (*(*this + 112))(this, v5);
    DspLib::ramp(v3, v4, 1, 20.0, v6);
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v7 = xmmword_1DE095130;
    DspLib::FFT::Filterbank::setParameters(this + 3456, &v7, 10, xmmword_1DE095130);
  }

  else
  {
    *(this + 424) = *(this + 423);
    *(this + 427) = *(this + 426);
    *(this + 430) = *(this + 429);

    DspLib::FFT::Filterbank::uninitialize((this + 3456));
  }
}

void DspLib::ToneMeister::Algorithm::setParameters(uint64_t a1, void *a2, uint64_t a3, __n128 a4)
{
  DspLib::AlgorithmBase::setParameters(a1, a2, a3, a4);
  if ((*(*a1 + 40))(a1))
  {
    *(a1 + 3924) = **(a1 + 24) >= 0.5;
    v5 = (*(*a1 + 64))(a1);
    if (v5)
    {
      v6 = 0;
      do
      {
        v7 = *(a1 + 24);
        v8 = 0.0;
        if (((1 << v6) & vcvtas_u32_f32(v7[12])) == 0)
        {
          v8 = DspLib::dB2Amp(v5, v7[4]);
          v7 = *(a1 + 24);
        }

        v9 = *(a1 + 3864);
        *(v9 + 4 * v6) = v8;
        if (((1 << v6) & vcvtas_u32_f32(v7[10])) != 0)
        {
          v8 = -v8;
          *(v9 + 4 * v6) = v8;
        }

        isEqual = DspLib::isEqual(v5, v8, 1.0, 1.0e-20);
        v11 = *(a1 + 3888);
        v12 = v6 >> 6;
        v13 = 1 << v6;
        if (isEqual)
        {
          v14 = *(v11 + 8 * v12) & ~v13;
        }

        else
        {
          v14 = *(v11 + 8 * v12) | v13;
        }

        *(v11 + 8 * v12) = v14;
        ++v6;
        v5 = (*(*a1 + 64))(a1);
      }

      while (v6 < v5);
    }

    v15 = 0;
    *(a1 + 3912) = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    while (v15 < (*(*a1 + 64))(a1))
    {
      v16 = 0;
      v17 = 0;
      v38 = 0uLL;
      v39 = 0;
      do
      {
        if (DspLib::ToneMeister::Algorithm::channelHasBiquads(a1, v16, v15))
        {
          DspLib::ToneMeister::Algorithm::designFilter(a1, v16, v15, &__p);
          if (DspLib::Biquad::validate(__p, 0xCCCCCCCCCCCCCCCDLL * ((v37 - __p) >> 2)))
          {
            v18 = *(&v38 + 1);
            if (*(&v38 + 1) >= v39)
            {
              v19 = std::vector<std::vector<DspLib::Biquad::Section>>::__emplace_back_slow_path<std::vector<DspLib::Biquad::Section>&>(&v38, &__p);
            }

            else
            {
              **(&v38 + 1) = 0;
              *(v18 + 8) = 0;
              *(v18 + 16) = 0;
              std::vector<DspLib::Biquad::Section>::__init_with_size[abi:ne200100]<DspLib::Biquad::Section*,DspLib::Biquad::Section*>(v18, __p, v37, 0xCCCCCCCCCCCCCCCDLL * ((v37 - __p) >> 2));
              v19 = v18 + 24;
            }

            *(&v38 + 1) = v19;
            v17 -= 858993459 * ((*(v19 - 16) - *(v19 - 24)) >> 2);
          }

          if (__p)
          {
            v37 = __p;
            operator delete(__p);
          }
        }

        ++v16;
      }

      while (v16 != 50);
      *(a1 + 3912) += v17;
      v20 = *(a1 + 3916);
      if (v20 <= v17)
      {
        v20 = v17;
      }

      *(a1 + 3916) = v20;
      v21 = v41;
      if (v41 >= v42)
      {
        v22 = std::vector<std::vector<std::vector<DspLib::Biquad::Section>>>::__emplace_back_slow_path<std::vector<std::vector<DspLib::Biquad::Section>>&>(&v40, &v38);
      }

      else
      {
        *v41 = 0;
        *(v21 + 8) = 0;
        *(v21 + 16) = 0;
        std::vector<std::vector<DspLib::Biquad::Section>>::__init_with_size[abi:ne200100]<std::vector<DspLib::Biquad::Section>*,std::vector<DspLib::Biquad::Section>*>(v21, v38, *(&v38 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v38 + 1) - v38) >> 3));
        v22 = v21 + 24;
      }

      v41 = v22;
      __p = &v38;
      std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&__p);
      ++v15;
    }

    DspLib::Biquad::Filter::setNumberOfStages((a1 + 3312), *(a1 + 3916));
    for (i = 0; i < (*(*a1 + 64))(a1); ++i)
    {
      v24 = v40;
      v25 = (v40 + 24 * i);
      v26 = *v25;
      if (v25[1] == *v25)
      {
        LODWORD(v28) = 0;
      }

      else
      {
        v27 = 0;
        LODWORD(v28) = 0;
        v29 = 1;
        do
        {
          v30 = (v26 + 24 * v27);
          v31 = v30[1] - *v30;
          if (v31)
          {
            DspLib::Biquad::Filter::setCoefficients(a1 + 3312, *v30, 0xCCCCCCCCCCCCCCCDLL * (v31 >> 2), v28, i);
            LODWORD(v28) = v28 - 858993459 * ((v30[1] - *v30) >> 2);
            v24 = v40;
          }

          v27 = v29;
          v26 = *(v24 + 24 * i);
        }

        while (0xAAAAAAAAAAAAAAABLL * ((*(v24 + 24 * i + 8) - v26) >> 3) > v29++);
      }

      if (v28 < *(a1 + 3916))
      {
        v28 = v28;
        do
        {
          LODWORD(v39) = 0;
          v38 = DspLib::Biquad::kBypassSection;
          DspLib::Biquad::Filter::setCoefficients(a1 + 3312, &v38, 1, v28++, i);
        }

        while (v28 < *(a1 + 3916));
      }
    }

    DspLib::ToneMeister::Algorithm::setupDynamicFilters(a1);
    v34 = DspLib::dB2Amp(v33, *(*(a1 + 24) + 56));
    *(a1 + 3928) = v34;
    *(a1 + 3925) = !DspLib::isEqual(v35, v34, 1.0, 1.0e-20);
    *&v38 = &v40;
    std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v38);
  }
}

void sub_1DDBF5BFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17)
{
  __p = &a16;
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

BOOL DspLib::ToneMeister::Algorithm::channelHasBiquads(DspLib::ToneMeister::Algorithm *this, unsigned int a2, char a3)
{
  v5 = this;
  v6 = 5 * a2;
  LODWORD(this) = vcvtas_u32_f32(fmaxf(*(*(this + 3) + 40 * a2 + 68), 0.0));
  v7 = DspLib::ToneMeister::Parameters::categoryOfFilterType(this);
  if (v7 == 4)
  {
    return 0;
  }

  LODWORD(v7) = vcvtas_u32_f32(fmaxf(*(*(v5 + 3) + 8 * v6 + 68), 0.0));
  v10 = DspLib::ToneMeister::Parameters::categoryOfFilterType(v7);
  v11 = DspLib::ToneMeister::Algorithm::filterAndGroupAreActive(v5, a2);
  if (v10 == 5)
  {
    if (v11)
    {
      return *(v5 + 980) == 0;
    }

    return 0;
  }

  if (!v11)
  {
    return 0;
  }

  v8 = 1;
  if (*(v5 + 980) != 1)
  {
    v12 = 1 << a3;
    if ((v12 & vcvtas_u32_f32(*(*(v5 + 3) + 4 * DspLib::ToneMeister::Parameters::toneMeisterParameter(a2, 7)))) == 0)
    {
      return (v12 & vcvtas_u32_f32(*(*(v5 + 3) + 4 * DspLib::ToneMeister::Parameters::toneMeisterParameter(a2, 8)))) != 0;
    }
  }

  return v8;
}

void DspLib::ToneMeister::Algorithm::designFilter(DspLib::ToneMeister::Algorithm *this@<X0>, unsigned int a2@<W1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v7 = a2;
  v8 = *(this + 3);
  v9 = 5 * a2;
  v10 = vcvtas_u32_f32(fmaxf(*(v8 + 40 * a2 + 68), 0.0));
  v11 = v10 > 0xE;
  v12 = (1 << v10) & 0x78FF;
  v13 = v11 || v12 == 0;
  if (v13 || *(this + 980))
  {
    v14 = 0;
  }

  else
  {
    v15 = DspLib::ToneMeister::Parameters::toneMeisterParameter(a2, 7);
    v8 = *(this + 3);
    if ((vcvtas_u32_f32(*(v8 + 4 * v15)) >> a3))
    {
      v16 = DspLib::ToneMeister::Parameters::toneMeisterParameter(v7, 8);
      v8 = *(this + 3);
      v14 = vcvtas_u32_f32(*(v8 + 4 * v16)) != 0;
    }

    else
    {
      v14 = 1;
    }
  }

  v17 = 8 * v9;
  v18 = (v8 + v17);
  switch(vcvtas_u32_f32(fmaxf(*(v8 + v17 + 68), 0.0)))
  {
    case 0u:
      v19 = DspLib::ToneMeister::Algorithm::valueForFilterParameterWithAutomation(this, v7, 3);
      v20 = DspLib::ToneMeister::Algorithm::valueForFilterParameterWithAutomation(this, v7, 4);
      v21 = DspLib::ToneMeister::Algorithm::valueForFilterParameterWithAutomation(this, v7, 5);
      v22 = DspLib::ToneMeister::Algorithm::valueForFilterParameterWithAutomation(this, v7, 6);
      v23 = DspLib::ToneMeister::Algorithm::valueForFilterParameterWithAutomation(this, v7, 2);
      v24 = *(this + 2);
      DspLib::Biquad::Design::fractionalOrderBandShelf(v14, v19, v20, v21, v22, v23, *(*(this + 3) + 24), v24, __p);
      goto LABEL_77;
    case 1u:
      v57 = DspLib::ToneMeister::Algorithm::valueForFilterParameterWithAutomation(this, v7, 4);
      if (v57 <= 19.9)
      {
        v58 = v57;
      }

      else
      {
        v58 = 19.9;
      }

      if (v57 >= 0.1)
      {
        v59 = v58;
      }

      else
      {
        v59 = 0.1;
      }

      v60 = DspLib::ToneMeister::Algorithm::valueForFilterParameterWithAutomation(this, v7, 2);
      v62 = v59 * DspLib::dB2Amp(v61, fabsf(v60) * 0.5);
      if (*(*(this + 3) + 52) < 0.5)
      {
        v63 = DspLib::ToneMeister::Algorithm::valueForFilterParameterWithAutomation(this, v7, 2);
        DspLib::Biquad::Design::gunnesQualityConversion(v64, v62, v63);
        v62 = v65;
      }

      std::vector<DspLib::Biquad::Section>::resize(a4, 1uLL);
      LODWORD(v131) = 16;
      HIDWORD(v131) = DspLib::ToneMeister::Algorithm::valueForFilterParameterWithAutomation(this, v7, 3);
      v38 = DspLib::ToneMeister::Algorithm::valueForFilterParameterWithAutomation(this, v7, 2);
      if (v62 <= 19.9)
      {
        v39 = v62;
      }

      else
      {
        v39 = 19.9;
      }

      if (v62 < 0.1)
      {
        v39 = 0.1;
      }

      goto LABEL_59;
    case 2u:
      v50 = DspLib::ToneMeister::Algorithm::valueForFilterParameterWithAutomation(this, v7, 3);
      v51 = DspLib::ToneMeister::Algorithm::valueForFilterParameterWithAutomation(this, v7, 4);
      v52 = DspLib::ToneMeister::Algorithm::valueForFilterParameterWithAutomation(this, v7, 2);
      v53 = *(this + 2);
      DspLib::Biquad::Design::fractionalOrderShelf(v14, v50, v51, v52, v53, *(*(this + 3) + 24), __p);
      goto LABEL_77;
    case 3u:
      v75 = DspLib::ToneMeister::Algorithm::valueForFilterParameterWithAutomation(this, v7, 5);
      v76 = DspLib::ToneMeister::Algorithm::valueForFilterParameterWithAutomation(this, v7, 3);
      LODWORD(v77) = vcvtas_u32_f32(fmaxf(v75, 1.0));
      v78 = *(this + 2);
      DspLib::Biquad::Design::butterworthLowPass(v77, v76, v78, v14, __p);
      goto LABEL_77;
    case 4u:
      v79 = DspLib::ToneMeister::Algorithm::valueForFilterParameterWithAutomation(this, v7, 5);
      v80 = DspLib::ToneMeister::Algorithm::valueForFilterParameterWithAutomation(this, v7, 3);
      LODWORD(v81) = vcvtas_u32_f32(fmaxf(v79, 1.0));
      v82 = *(this + 2);
      DspLib::Biquad::Design::butterworthHighPass(v81, v80, v82, v14, __p);
      goto LABEL_77;
    case 5u:
      std::vector<DspLib::Biquad::Section>::resize(a4, 1uLL);
      LODWORD(v131) = 14;
      HIDWORD(v131) = DspLib::ToneMeister::Algorithm::valueForFilterParameterWithAutomation(this, v7, 3);
      v132 = DspLib::ToneMeister::Algorithm::valueForFilterParameterWithAutomation(this, v7, 2);
      v54 = DspLib::ToneMeister::Algorithm::valueForFilterParameterWithAutomation(this, v7, 4);
      v55 = 19.9;
      if (v54 <= 19.9)
      {
        v55 = v54;
      }

      if (v54 >= 0.1)
      {
        v27 = v55;
      }

      else
      {
        v27 = 0.1;
      }

      goto LABEL_70;
    case 6u:
      std::vector<DspLib::Biquad::Section>::resize(a4, 1uLL);
      LODWORD(v131) = 2;
      HIDWORD(v131) = DspLib::ToneMeister::Algorithm::valueForFilterParameterWithAutomation(this, v7, 3);
      v132 = 0.0;
      v67 = DspLib::ToneMeister::Algorithm::valueForFilterParameterWithAutomation(this, v7, 4);
      v68 = 19.9;
      if (v67 <= 19.9)
      {
        v68 = v67;
      }

      if (v67 >= 0.1)
      {
        v27 = v68;
      }

      else
      {
        v27 = 0.1;
      }

      goto LABEL_70;
    case 7u:
      v69 = DspLib::ToneMeister::Algorithm::valueForFilterParameterWithAutomation(this, v7, 3);
      v70 = DspLib::ToneMeister::Algorithm::valueForFilterParameterWithAutomation(this, v7, 2);
      v71 = *(this + 2);
      DspLib::Biquad::Design::easttyBaxandallToneTilt(v14, LODWORD(v69), LODWORD(v70), v71, v72, __p);
      std::vector<DspLib::Biquad::Section>::__assign_with_size[abi:ne200100]<DspLib::Biquad::Section const*,DspLib::Biquad::Section const*>(a4, __p, v127, 2uLL);
      break;
    case 8u:
      v87 = DspLib::ToneMeister::Algorithm::valueForFilterParameterWithAutomation(this, v7, 3);
      v88 = DspLib::ToneMeister::Algorithm::valueForFilterParameterWithAutomation(this, v7, 4);
      LODWORD(v89) = vcvtas_u32_f32(fmaxf(DspLib::ToneMeister::Algorithm::valueForFilterParameterWithAutomation(this, v7, 5), 1.0));
      v90 = *(this + 2);
      DspLib::Biquad::Design::allpass(v89, LODWORD(v87), LODWORD(v88), v90, v91, __p);
      goto LABEL_77;
    case 9u:
      std::vector<DspLib::Biquad::Section>::resize(a4, 1uLL);
      v131 = 26;
      v132 = DspLib::ToneMeister::Algorithm::valueForFilterParameterWithAutomation(this, v7, 2);
      v133 = 0.0;
      v83 = *(this + 2);
      DspLib::Biquad::Design::ParametricEQ::design(&v131, v83, 0, v84, __p);
      goto LABEL_75;
    case 0xAu:
      if (*(this + 980) == 1)
      {
        break;
      }

      if (((1 << a3) & vcvtas_u32_f32(*(*(this + 3) + 4 * DspLib::ToneMeister::Parameters::toneMeisterParameter(v7, 7)))) != 0)
      {
        v28 = DspLib::ToneMeister::Algorithm::valueForFilterParameterWithAutomation(this, v7, 3);
        v29 = DspLib::ToneMeister::Algorithm::valueForFilterParameterWithAutomation(this, v7, 4);
        v30 = DspLib::ToneMeister::Algorithm::valueForFilterParameterWithAutomation(this, v7, 6);
        DspLib::Biquad::Design::phaseEqualizer(v28, v29, v30, *(this + 2), __p);
        std::vector<DspLib::Biquad::Section>::resize(a4, 1uLL);
        v31 = *a4;
        v32 = *&v125[4];
        v31[4] = v126;
        *v31 = v32;
      }

      if (((1 << a3) & vcvtas_u32_f32(*(*(this + 3) + 4 * DspLib::ToneMeister::Parameters::toneMeisterParameter(v7, 8)))) == 0)
      {
        break;
      }

      v33 = DspLib::ToneMeister::Algorithm::valueForFilterParameterWithAutomation(this, v7, 3);
      v34 = DspLib::ToneMeister::Algorithm::valueForFilterParameterWithAutomation(this, v7, 4);
      v35 = DspLib::ToneMeister::Algorithm::valueForFilterParameterWithAutomation(this, v7, 6);
      DspLib::Biquad::Design::phaseEqualizer(v33, v34, v35, *(this + 2), __p);
      std::vector<DspLib::Biquad::Section>::resize(a4, 1uLL);
      goto LABEL_75;
    case 0xBu:
      std::vector<DspLib::Biquad::Section>::resize(a4, 1uLL);
      v56 = DspLib::ToneMeister::Algorithm::valueForFilterParameterWithAutomation(this, v7, 4);
      LODWORD(v131) = 19;
      HIDWORD(v131) = DspLib::ToneMeister::Algorithm::valueForFilterParameterWithAutomation(this, v7, 3);
      v38 = DspLib::ToneMeister::Algorithm::valueForFilterParameterWithAutomation(this, v7, 2);
      v39 = 19.9;
      if (v56 <= 19.9)
      {
        v39 = v56;
      }

      if (v56 < 0.1)
      {
        v39 = 0.1;
      }

      goto LABEL_59;
    case 0xCu:
      std::vector<DspLib::Biquad::Section>::resize(a4, 1uLL);
      v36 = DspLib::ToneMeister::Algorithm::valueForFilterParameterWithAutomation(this, v7, 4);
      LODWORD(v131) = 17;
      HIDWORD(v131) = DspLib::ToneMeister::Algorithm::valueForFilterParameterWithAutomation(this, v7, 3);
      v38 = DspLib::ToneMeister::Algorithm::valueForFilterParameterWithAutomation(this, v7, 2);
      v39 = 19.9;
      if (v36 <= 19.9)
      {
        v39 = v36;
      }

      if (v36 < 0.1)
      {
        v39 = 0.1;
      }

LABEL_59:
      v132 = v38;
      v133 = v39;
      v66 = *(this + 2);
      DspLib::Biquad::Design::ParametricEQ::design(&v131, v66, v14, v37, __p);
      goto LABEL_75;
    case 0xDu:
      std::vector<DspLib::Biquad::Section>::resize(a4, 1uLL);
      v25 = DspLib::ToneMeister::Algorithm::valueForFilterParameterWithAutomation(this, v7, 4);
      LODWORD(v131) = 0;
      HIDWORD(v131) = DspLib::ToneMeister::Algorithm::valueForFilterParameterWithAutomation(this, v7, 3);
      v132 = 0.0;
      v27 = 19.9;
      if (v25 <= 19.9)
      {
        v27 = v25;
      }

      if (v25 < 0.1)
      {
        v27 = 0.1;
      }

      goto LABEL_70;
    case 0xEu:
      std::vector<DspLib::Biquad::Section>::resize(a4, 1uLL);
      v73 = *(*(this + 3) + v17 + 80);
      LODWORD(v131) = 1;
      HIDWORD(v131) = DspLib::ToneMeister::Algorithm::valueForFilterParameterWithAutomation(this, v7, 3);
      v132 = 0.0;
      v27 = 19.9;
      if (v73 <= 19.9)
      {
        v27 = v73;
      }

      if (v73 < 0.1)
      {
        v27 = 0.1;
      }

LABEL_70:
      v133 = v27;
      v74 = *(this + 2);
      DspLib::Biquad::Design::ParametricEQ::design(&v131, v74, v14, v26, __p);
LABEL_75:
      v85 = *a4;
      v86 = *__p;
      *(v85 + 16) = *v125;
      *v85 = v86;
      break;
    case 0x14u:
      DspLib::ToneMeister::Algorithm::designLinkwitzRileyCrossover(this, v7, a3, __p);
LABEL_77:
      v92 = *a4;
      if (*a4)
      {
        a4[1] = v92;
        operator delete(v92);
      }

      *a4 = *__p;
      a4[2] = *v125;
      break;
    case 0x15u:
      v110 = v18[19];
      v111 = v18[20];
      v112 = v18[21];
      v113 = v18[22];
      v114 = *(v8 + 12);
      v115 = DspLib::ToneMeister::Algorithm::valueForFilterParameterWithAutomation(this, v7, 2);
      v116 = 30.0;
      if (v113 <= 30.0)
      {
        v117 = v113;
      }

      else
      {
        v117 = 30.0;
      }

      if (v113 >= 0.0)
      {
        v118 = v117;
      }

      else
      {
        v118 = 0.0;
      }

      if (v112 <= 30.0)
      {
        v116 = v112;
      }

      if (v112 >= 0.0)
      {
        v119 = v116;
      }

      else
      {
        v119 = 0.0;
      }

      v120 = 20000.0;
      if (v111 <= 20000.0)
      {
        v120 = v111;
      }

      if (v111 >= 5000.0)
      {
        v121 = v120;
      }

      else
      {
        v121 = 5000.0;
      }

      v122 = 500.0;
      if (v110 <= 500.0)
      {
        v122 = v110;
      }

      v123 = 100.0;
      if (v110 >= 100.0)
      {
        v123 = v122;
      }

      DspLib::Biquad::Design::ISO226LoudnessEQ::design(v114 - v115, *(this + 2), LODWORD(v123), LODWORD(v121), v119, v118, __p);
      std::vector<DspLib::Biquad::Section>::__assign_with_size[abi:ne200100]<DspLib::Biquad::Section const*,DspLib::Biquad::Section const*>(a4, __p, v128, 3uLL);
      break;
    case 0x16u:
      v96 = v18[19];
      v97 = v18[20];
      v98 = v18[21];
      v99 = v18[22];
      v100 = *(v8 + 12);
      v101 = DspLib::ToneMeister::Algorithm::valueForFilterParameterWithAutomation(this, v7, 2);
      v102 = 30.0;
      if (v99 <= 30.0)
      {
        v103 = v99;
      }

      else
      {
        v103 = 30.0;
      }

      if (v99 >= 0.0)
      {
        v104 = v103;
      }

      else
      {
        v104 = 0.0;
      }

      if (v98 <= 30.0)
      {
        v102 = v98;
      }

      if (v98 >= 0.0)
      {
        v105 = v102;
      }

      else
      {
        v105 = 0.0;
      }

      v106 = 20000.0;
      if (v97 <= 20000.0)
      {
        v106 = v97;
      }

      if (v97 >= 5000.0)
      {
        v107 = v106;
      }

      else
      {
        v107 = 5000.0;
      }

      v108 = 500.0;
      if (v96 <= 500.0)
      {
        v108 = v96;
      }

      v109 = 100.0;
      if (v96 >= 100.0)
      {
        v109 = v108;
      }

      DspLib::Biquad::Design::ChenMazurRiceLoudnessEQ::design(v100 - v101, *(this + 2), v109, LODWORD(v107), v105, v104, __p);
      std::vector<DspLib::Biquad::Section>::__assign_with_size[abi:ne200100]<DspLib::Biquad::Section const*,DspLib::Biquad::Section const*>(a4, __p, v127, 2uLL);
      break;
    case 0x17u:
      if (*(this + 980) != 1)
      {
        if (((1 << a3) & vcvtas_u32_f32(*(*(this + 3) + 4 * DspLib::ToneMeister::Parameters::toneMeisterParameter(v7, 7)))) != 0)
        {
          DspLib::Biquad::Design::HilbertTransfrom::real(__p);
          std::vector<DspLib::Biquad::Section>::__assign_with_size[abi:ne200100]<DspLib::Biquad::Section const*,DspLib::Biquad::Section const*>(a4, __p, v130, 5uLL);
        }

        else if (((1 << a3) & vcvtas_u32_f32(*(*(this + 3) + 4 * DspLib::ToneMeister::Parameters::toneMeisterParameter(v7, 8)))) != 0)
        {
          DspLib::Biquad::Design::HilbertTransfrom::imag(__p);
          std::vector<DspLib::Biquad::Section>::__assign_with_size[abi:ne200100]<DspLib::Biquad::Section const*,DspLib::Biquad::Section const*>(a4, __p, v129, 4uLL);
        }
      }

      break;
    case 0x18u:
      v40 = DspLib::ToneMeister::Algorithm::valueForFilterParameterWithAutomation(this, v7, 5);
      v41 = (1 << a3) & vcvtas_u32_f32(*(*(this + 3) + 4 * DspLib::ToneMeister::Parameters::toneMeisterParameter(v7, 7)));
      v42 = ((1 << a3) & vcvtas_u32_f32(*(*(this + 3) + 4 * DspLib::ToneMeister::Parameters::toneMeisterParameter(v7, 8)))) != 0;
      v43 = DspLib::ToneMeister::Algorithm::valueForFilterParameterWithAutomation(this, v7, 3);
      v44 = DspLib::ToneMeister::Algorithm::valueForFilterParameterWithAutomation(this, v7, 4);
      v45 = *(this + 2);
      v47 = DspLib::Biquad::Design::NevilleThieleCrossover::relativeNotchLocation(v46, fmaxf(v44, 20.0), v43, v45);
      v48 = vcvtas_u32_f32(fminf(fmaxf(v40, 3.0), 8.0));
      if ((v41 != 0) != v42)
      {
        v49 = v41 == 0;
      }

      else
      {
        v49 = 2;
      }

      DspLib::Biquad::Design::NevilleThieleCrossover::design(v49, v48, __p, v43, v47, *(this + 2));
      std::vector<DspLib::Biquad::Section>::__assign_with_size[abi:ne200100]<std::__wrap_iter<DspLib::Biquad::Section const*>,std::__wrap_iter<DspLib::Biquad::Section const*>>(a4, __p[0], __p[1], 0xCCCCCCCCCCCCCCCDLL * ((__p[1] - __p[0]) >> 2));
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      break;
    default:
      break;
  }

  if (v14)
  {
    v93 = 1 << a3;
    v94 = (v93 & vcvtas_u32_f32(*(*(this + 3) + 4 * DspLib::ToneMeister::Parameters::toneMeisterParameter(v7, 7)))) != 0 && vcvtas_u32_f32(*(*(this + 3) + 4 * DspLib::ToneMeister::Parameters::toneMeisterParameter(v7, 8))) && *(this + 980) == 0;
    if ((v93 & vcvtas_u32_f32(*(*(this + 3) + 4 * DspLib::ToneMeister::Parameters::toneMeisterParameter(v7, 8)))) == 0 || v94)
    {
      if (!v94)
      {
        return;
      }

      DspLib::Biquad::Design::squaredFilter(*a4, 0xCCCCCCCCCCCCCCCDLL * ((a4[1] - *a4) >> 2), __p);
    }

    else
    {
      if (*(this + 980))
      {
        return;
      }

      DspLib::Biquad::Design::allpassFromPoles(*a4, 0xCCCCCCCCCCCCCCCDLL * ((a4[1] - *a4) >> 2), 1, __p);
    }

    v95 = *a4;
    if (*a4)
    {
      a4[1] = v95;
      operator delete(v95);
    }

    *a4 = *__p;
    a4[2] = *v125;
  }
}

void sub_1DDBF6B04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

void DspLib::ToneMeister::Algorithm::setupDynamicFilters(DspLib::ToneMeister::Algorithm *this)
{
  v2 = 0;
  v3 = 0;
  do
  {
    v3 += DspLib::ToneMeister::Algorithm::filterIsDynamicAndActive(this, v2++);
  }

  while (v2 != 50);
  if (v3 >= 0x32)
  {
    v4 = 50;
  }

  else
  {
    v4 = v3;
  }

  if (v3)
  {
    DspLib::ToneMeister::Algorithm::createSharedBuffers(this);
  }

  else
  {
    DspLib::ToneMeister::Algorithm::deleteSharedBuffers(this);
  }

  v5 = *(this + 497);
  v6 = *(this + 496);
  v7 = (v5 - v6) >> 3;
  if (v7 > v4)
  {
    v8 = (v5 - 8);
    v9 = v5 - 8;
    do
    {
      v10 = *v8;
      *v8 = 0;
      if (v10)
      {
        (*(*v10 + 8))(v10);
        v6 = *(this + 496);
      }

      *(this + 497) = v8;
      v7 = (v9 - v6) >> 3;
      v9 -= 8;
      --v8;
    }

    while (v7 > v4);
  }

  if (v7 < v4)
  {
    std::make_unique[abi:ne200100]<DspLib::DynamicFilter::Algorithm,std::shared_ptr<DspLib::ChannelBuffer> &,std::shared_ptr<DspLib::ChannelBuffer> &,0>();
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 1;
  do
  {
    if (DspLib::ToneMeister::Algorithm::filterIsDynamicAndActive(this, v11) && v12 <= 0x31)
    {
      v15 = (*(*this + 64))(this);
      v16 = ~(-1 << v15);
      if (*(this + 980) == 1)
      {
        v17 = ~(-1 << v15);
      }

      else
      {
        v17 = vcvtas_u32_f32(*(*(this + 3) + 4 * DspLib::ToneMeister::Parameters::toneMeisterParameter(v11, 7)));
        if (*(this + 980) != 1)
        {
          v16 = vcvtas_u32_f32(*(*(this + 3) + 4 * DspLib::ToneMeister::Parameters::toneMeisterParameter(v11, 8)));
        }
      }

      v18 = 0;
      v19 = -1;
      do
      {
        v19 += DspLib::ToneMeister::Algorithm::filterIsDynamicAndActive(this, v18++);
      }

      while (v14 != v18);
      v20 = *(*(this + 3) + 4 * DspLib::ToneMeister::Parameters::dynamicFilterParameter(v19, 0));
      v21 = *(*(this + 3) + 4 * DspLib::ToneMeister::Parameters::dynamicFilterParameter(v19, 1));
      v22 = *(*(this + 3) + 4 * DspLib::ToneMeister::Parameters::dynamicFilterParameter(v19, 2));
      *&v36[9] = v17;
      *&v36[10] = v16;
      v36[4] = DspLib::ToneMeister::Algorithm::valueForFilterParameterWithAutomation(this, v11, 2);
      v36[0] = DspLib::ToneMeister::Algorithm::valueForFilterParameterWithAutomation(this, v11, 3);
      v36[1] = *(*(this + 3) + 4 * DspLib::ToneMeister::Parameters::toneMeisterParameter(v11, 4));
      v36[5] = *(*(this + 3) + 4 * DspLib::ToneMeister::Parameters::toneMeisterParameter(v11, 5));
      v23 = DspLib::ToneMeister::Parameters::toneMeisterParameter(v11, 6);
      v24 = *(this + 3);
      v36[2] = *(v24 + 4 * v23);
      v25 = 0;
      v26 = vcvtas_u32_f32(fmaxf(*(v24 + 40 * v11 + 68), 0.0)) - 16;
      if (v26 <= 3)
      {
        v25 = dword_1DE098880[v26];
      }

      v36[3] = v25;
      v36[6] = v20;
      v36[7] = v21;
      v36[8] = v22;
      v27 = *(*(this + 496) + 8 * v12);
      v28 = (*(*this + 64))(this);
      (*(*this + 48))(this);
      (*(*v27 + 24))(v27, v28);
      v29 = *(*(this + 496) + 8 * v12);
      (*(*v29 + 160))(v29, v36, 11, 0);
      ++v12;
      v30 = vcvtas_u32_f32(fmaxf(*(*(this + 3) + 40 * v11 + 68), 0.0));
      v31 = v30 & 0xFFFFFFFC;
      v32 = v30 - 15;
      if (v31 == 16)
      {
        v33 = v32;
      }

      else
      {
        v33 = 0;
      }

      v34 = DspLib::ToneMeister::Algorithm::valueForFilterParameterWithAutomation(this, v11, 2);
      v13 |= DspLib::DynamicFilter::crossFadeIsNeeded(v33, v34);
    }

    ++v11;
    ++v14;
  }

  while (v11 != 50);
  v35 = (this + 3992);
  if (v13)
  {
    if (!*v35)
    {
      (*(*this + 232))(this);
      operator new();
    }

    DspLib::ToneMeister::CrossFade::setParameters(*v35, 0x241A00000uLL);
  }

  else
  {
    std::unique_ptr<DspLib::ToneMeister::CrossFade>::reset[abi:ne200100](this + 499, 0);
  }
}

void sub_1DDBF71E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16)
  {
    (*(*a16 + 8))(a16);
  }

  _Unwind_Resume(exception_object);
}

double DspLib::ToneMeister::Algorithm::processBlock(uint64_t a1, void *a2)
{
  v2 = a2[2];
  if (v2)
  {
    if ((*(a1 + 3924) & 1) == 0)
    {
      if ((*(*a1 + 64))(a1))
      {
        v5 = 0;
        do
        {
          if ((*(*(a1 + 3888) + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v5))
          {
            DspLib::multiply(*(*a2 + 8 * v5), a2[2], *(*(a1 + 3864) + 4 * v5));
          }

          ++v5;
        }

        while (v5 < (*(*a1 + 64))(a1));
      }

      v6 = a2[1];
      v7 = a2[2];
      *&v30 = *a2;
      *(&v30 + 1) = v6;
      v31 = v7;
      *&v28 = v30;
      *(&v28 + 1) = v6;
      v29 = v7;
      DspLib::Biquad::Filter::process((a1 + 3312), &v30, &v28);
      v8 = *(a1 + 3992);
      if (v8)
      {
        v9 = *(v8 + 16);
        *&v28 = *(v8 + 40) + 4 * v9;
        *(&v28 + 1) = v2;
        v27[0] = *(v8 + 64) + 4 * v9;
        v27[1] = v2;
        v10 = *(a1 + 3968);
        v11 = *(a1 + 3976);
        if (v10 != v11)
        {
          do
          {
            v12 = *v10++;
            v30 = *a2;
            v31 = a2[2];
            DspLib::DynamicFilter::Algorithm::processBlockFade(v12, &v30, &v28, v27, *(*(a1 + 3992) + 32));
          }

          while (v10 != v11);
          v8 = *(a1 + 3992);
          v9 = *(v8 + 16);
        }

        v13 = v9 + v2;
        v14 = *(v8 + 24);
        v15 = v13 >= v14;
        v16 = v13 < v14;
        if (v15)
        {
          v13 = 0;
        }

        *(v8 + 16) = v13;
        *(v8 + 32) = v16;
      }

      else
      {
        v24 = *(a1 + 3968);
        v25 = *(a1 + 3976);
        while (v24 != v25)
        {
          v26 = *v24++;
          v30 = *a2;
          v31 = a2[2];
          DspLib::DynamicFilter::Algorithm::processBlockFade(v26, &v30, 0, 0, 0);
        }
      }

      if (*(a1 + 3925) == 1)
      {
        v30 = *a2;
        v31 = a2[2];
        DspLib::multiply(&v30, *(a1 + 3928));
      }
    }

    v17 = *a2;
    v18 = a2[1];
    v19 = a2[2];
    if ((*(*a1 + 208))(a1))
    {
      DspLib::CPUMeasure::pause((a1 + 104));
      v21 = *(a1 + 3968);
      v22 = *(a1 + 3976);
      while (v21 != v22)
      {
        v23 = *v21++;
        DspLib::DynamicFilter::Algorithm::updateSidechainLevelForDisplay(v23);
      }

      *&v30 = v17;
      *(&v30 + 1) = v18;
      v31 = v19;
      DspLib::ToneMeister::Algorithm::processRTA(a1, &v30, *(a1 + 3408), (*(a1 + 3416) - *(a1 + 3408)) >> 2);
      *&result = DspLib::CPUMeasure::resume((a1 + 104)).u64[0];
    }
  }

  return result;
}

void DspLib::ToneMeister::processRTASpectrum(uint64_t a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5, float *a6, vDSP_Length a7)
{
  v7 = a4;
  v8 = v7 / (2 * a2 - 2);
  if (a7)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    while (1)
    {
      v13 = *(a3 + 4 * v12);
      v12 = v10;
      v14 = *(a3 + 4 * v9);
      v15 = v14 / v8;
      if ((v14 / v8) > (a2 - 2))
      {
        v15 = (a2 - 2);
      }

      v16 = v15;
      a6[v9] = ((*(a1 + 4 * (v15 + 1)) * (v15 - v15)) + ((1.0 - (v15 - v15)) * *(a1 + 4 * v15))) + 0.00001;
      if ((v14 - v13) > v8)
      {
        break;
      }

      v9 = ++v10;
      v11 = v15;
      if (a7 <= v10)
      {
        goto LABEL_10;
      }
    }

    v16 = v11;
    LODWORD(v9) = v10;
  }

  else
  {
    v16 = 0;
    LODWORD(v9) = 0;
  }

LABEL_10:
  if (a7 > v9)
  {
    v17 = v9;
    do
    {
      v18 = (*(a3 + 4 * v17) / v8) + 0.5;
      if (v18 > (a2 - 1))
      {
        v18 = (a2 - 1);
      }

      v19 = v18;
      v20 = *(a1 + 4 * v18);
      if (v16 <= v19)
      {
        if (v16 + 1 <= v19 + 1)
        {
          v21 = v19 + 1;
        }

        else
        {
          v21 = v16 + 1;
        }

        do
        {
          if (*(a1 + 4 * v16) > v20)
          {
            v20 = *(a1 + 4 * v16);
          }

          ++v16;
        }

        while (v21 != v16);
        v16 = v21;
      }

      a6[v17] = v20 + 0.00001;
      LODWORD(v9) = v9 + 1;
      v17 = v9;
    }

    while (a7 > v9);
  }

  DspLib::amp2dBSafe(a6, a7, 1.0e-20);
}

void DspLib::ToneMeister::Algorithm::status(uint64_t a1, uint64_t a2, vDSP_Length __N)
{
  DspLib::clear(a2, __N);
  if ((*(*a1 + 208))(a1))
  {
    *(a2 + 12) = 0;
    *(a2 + 16) = vrev64_s32(vcvt_f32_u32(*(a1 + 3912)));
    DspLib::ToneMeister::processRTASpectrum(*(a1 + 3408), (*(a1 + 3416) - *(a1 + 3408)) >> 2, *(a1 + 3384), *(a1 + 16), (*(a1 + 3392) - *(a1 + 3384)) >> 2, (a2 + 32), 0x200uLL);
    v5 = *(a1 + 3968);
    v6 = *(a1 + 3976);
    if (v5 != v6)
    {
      v7 = 520;
      do
      {
        v8 = *v5++;
        (*(*v8 + 200))(v8, &v9, 1);
        *(a2 + 4 * v7++) = v9;
      }

      while (v5 != v6);
    }
  }

  else
  {

    DspLib::fill((a2 + 32), 0x200uLL, -100.0);
  }
}

float DspLib::ToneMeister::Algorithm::valueForFilterParameterWithAutomation(DspLib::ToneMeister::Algorithm *this, uint64_t a2, DspLib::ToneMeister::Parameters *a3)
{
  v6 = 5 * a2;
  v7 = *(*(this + 3) + 40 * a2 + 4 * a3 + 64);
  if (DspLib::ToneMeister::Algorithm::filterIsAutomated(this, a2))
  {
    v8 = *(this + 3);
    v9 = *(v8 + 8 * v6 + 68);
    v10 = *(v8 + 12);
    v11 = DspLib::ToneMeister::Algorithm::automationForFilter(this, a2);
    v12 = DspLib::ToneMeister::Parameters::toneMeisterParameter(a2, 0);
    LODWORD(v12) = vcvtas_u32_f32(fmaxf(*(*(this + 3) + 4 * v12), 0.0));
    if (DspLib::ToneMeister::Parameters::filterStateIsActive(v12))
    {
      if (v11[1] == 2.0)
      {
        if (a3 == 2)
        {
          return v7 + DspLib::ToneMeister::Parameters::automatedGain(v11, v10, v7);
        }

        else if (DspLib::ToneMeister::Parameters::isFilterFrequencyParameter(a3, vcvtas_u32_f32(fmaxf(v9, 0.0))))
        {
          v13 = DspLib::ToneMeister::Parameters::filterCenterFrequency((*(this + 3) + 8 * v6 + 64));
          return v7 * DspLib::ToneMeister::Parameters::automatedFrequency(v11, v10, v13);
        }
      }
    }
  }

  return v7;
}

void DspLib::ToneMeister::Algorithm::designLinkwitzRileyCrossover(DspLib::ToneMeister::Algorithm *this@<X0>, DspLib::ToneMeister::Parameters *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v4) = vcvtas_u32_f32(fminf(fmaxf(DspLib::ToneMeister::Algorithm::valueForFilterParameterWithAutomation(this, a2, 5), 1.0), 20.0));
  v9 = DspLib::ToneMeister::Algorithm::valueForFilterParameterWithAutomation(this, a2, 3);
  v10 = (1 << a3) & vcvtas_u32_f32(*(*(this + 3) + 4 * DspLib::ToneMeister::Parameters::toneMeisterParameter(a2, 7)));
  v11 = (1 << a3) & vcvtas_u32_f32(*(*(this + 3) + 4 * DspLib::ToneMeister::Parameters::toneMeisterParameter(a2, 8)));
  if (v10)
  {
    v12 = *(this + 2);
    v13 = a4;
    v14 = 0;
  }

  else if (v11)
  {
    v12 = *(this + 2);
    v13 = a4;
    v14 = 1;
  }

  else
  {
    if ((v4 & 1) != 0 && v10 == 0)
    {
      DspLib::Biquad::Design::LinkwitzRileyCrossover::design(v4, 1, a4, v9, *(this + 2));
      v15 = *a4;
      *v15 = vneg_f32(**a4);
      v15[1].f32[0] = -v15[1].f32[0];
      return;
    }

    if ((v10 != 0) != (v11 != 0))
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      return;
    }

    v12 = *(this + 2);
    v13 = a4;
    v14 = 2;
  }

  DspLib::Biquad::Design::LinkwitzRileyCrossover::design(v4, v14, v13, v9, v12);
}

void DspLib::ToneMeister::Algorithm::processRTA(double *a1, uint64_t a2, float *a3, vDSP_Length a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 16);
  v17 = v7;
  DspLib::clear(v18, v7);
  if ((*(*a1 + 64))(a1))
  {
    v8 = 0;
    do
    {
      if ((vcvtas_u32_f32(*(*(a1 + 3) + 28)) >> v8))
      {
        DspLib::add();
      }

      ++v8;
    }

    while (v8 < (*(*a1 + 64))(a1));
  }

  v9 = (*(*a1 + 64))(a1);
  DspLib::multiply(v18, v17, 2.0 / v9);
  if (v7)
  {
    for (i = 0; i < v7; i = (v11 + i))
    {
      v15[0] = &v16;
      v15[1] = 1;
      v15[2] = v17 - i;
      v16 = &v18[i];
      v11 = DspLib::FFT::Filterbank::audioInput((a1 + 432), v15);
      v12 = *(*(a1 + 477) + 88);
      if (v12)
      {
        v13 = a1[2] / v12 * *(*(a1 + 3) + 36) / 1000.0;
        v14 = expf(-1.0 / v13);
        DspLib::multiply(a3, a4, v14);
        DspLib::FFT::amplitude(*(a1 + 474), *(a1 + 429), (*(a1 + 430) - *(a1 + 429)) >> 2);
        DspLib::vmax(a3, a4, *(a1 + 429));
      }
    }
  }
}

BOOL DspLib::ToneMeister::Algorithm::filterIsEnabled(DspLib::ToneMeister::Algorithm *this, DspLib::ToneMeister::Parameters *a2)
{
  v3 = DspLib::ToneMeister::Parameters::toneMeisterParameter(a2, 0);
  LODWORD(v3) = vcvtas_u32_f32(fmaxf(*(*(this + 3) + 4 * v3), 0.0));

  return DspLib::ToneMeister::Parameters::filterStateIsEnabled(v3);
}

unint64_t DspLib::ToneMeister::Algorithm::filterIsActive(DspLib::ToneMeister::Algorithm *this, DspLib::ToneMeister::Parameters *a2)
{
  v3 = DspLib::ToneMeister::Parameters::toneMeisterParameter(a2, 0);
  LODWORD(v3) = vcvtas_u32_f32(fmaxf(*(*(this + 3) + 4 * v3), 0.0));

  return DspLib::ToneMeister::Parameters::filterStateIsActive(v3);
}

unint64_t DspLib::ToneMeister::Algorithm::filterAndGroupAreActive(DspLib::ToneMeister::Algorithm *this, DspLib::ToneMeister::Parameters *a2)
{
  v4 = DspLib::ToneMeister::Parameters::toneMeisterParameter(a2, 0);
  LODWORD(v4) = vcvtas_u32_f32(fmaxf(*(*(this + 3) + 4 * v4), 0.0));
  result = DspLib::ToneMeister::Parameters::filterStateIsActive(v4);
  if (result)
  {
    return ((vcvtas_u32_f32(*(*(this + 3) + 4)) >> vcvtas_u32_f32(*(*(this + 3) + 4 * DspLib::ToneMeister::Parameters::toneMeisterParameter(a2, 9)))) & 1) == 0;
  }

  return result;
}

BOOL DspLib::ToneMeister::Algorithm::filterIsAutomated(DspLib::ToneMeister::Algorithm *this, uint64_t a2)
{
  v9 = 0;
  v4 = (*(*this + 152))(this, 0);
  AutomationForFilter = DspLib::ToneMeister::Parameters::findAutomationForFilter(a2, v4, &v9, v5);
  result = 0;
  if (AutomationForFilter)
  {
    v8 = (*(*this + 152))(this, 0);
    return vcvtas_u32_f32(*(v8 + 4 * DspLib::ToneMeister::Parameters::automationParameterForSlot(v9, 1))) == 2;
  }

  return result;
}

unint64_t DspLib::ToneMeister::Algorithm::filterIsDynamicAndActive(DspLib::ToneMeister::Algorithm *this, unsigned int a2)
{
  v3 = this;
  LODWORD(this) = vcvtas_u32_f32(fmaxf(*(*(this + 3) + 40 * a2 + 68), 0.0));
  if (DspLib::ToneMeister::Parameters::categoryOfFilterType(this) != 4)
  {
    return 0;
  }

  return DspLib::ToneMeister::Algorithm::filterAndGroupAreActive(v3, a2);
}

uint64_t DspLib::ToneMeister::Algorithm::dynamicFilterIndex(DspLib::ToneMeister::Algorithm *this, unint64_t a2)
{
  v3 = this;
  v4 = 0;
  v5 = -1;
  v6 = 1;
  do
  {
    LODWORD(this) = vcvtas_u32_f32(fmaxf(*(*(v3 + 3) + 40 * v4 + 68), 0.0));
    this = DspLib::ToneMeister::Parameters::categoryOfFilterType(this);
    if (this == 4)
    {
      ++v5;
    }

    v4 = v6++;
  }

  while (v4 <= a2);
  return v5;
}

BOOL DspLib::ToneMeister::Algorithm::groupIsEmpty(DspLib::ToneMeister::Algorithm *this, uint64_t a2)
{
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = DspLib::ToneMeister::Parameters::toneMeisterParameter(v4, 9);
    v7 = *(this + 3);
    LODWORD(v7) = vcvtas_u32_f32(*(v7 + 4 * v6));
    if (v7 == a2 && vcvtas_u32_f32(fmaxf(*(*(this + 3) + 4 * DspLib::ToneMeister::Parameters::toneMeisterParameter(v4, 0)), 0.0)))
    {
      break;
    }

    v5 = v4 > 0x30;
    v4 = (v4 + 1);
  }

  while (v4 != 50);
  return v5;
}

uint64_t DspLib::ToneMeister::Algorithm::automationForFilter(DspLib::ToneMeister::Algorithm *this, uint64_t a2)
{
  v5 = 0;
  AutomationForFilter = DspLib::ToneMeister::Parameters::findAutomationForFilter(a2, *(this + 3), &v5, a2);
  result = 0;
  if (AutomationForFilter)
  {
    return *(this + 3) + 4 * DspLib::ToneMeister::Parameters::automationParameterForSlot(v5, 0);
  }

  return result;
}

void DspLib::ToneMeister::Algorithm::createSharedBuffers(std::__shared_weak_count **this)
{
  v2 = 0;
  v3 = 0;
  do
  {
    v3 += DspLib::ToneMeister::Algorithm::filterIsDynamicAndActive(this, v2++);
  }

  while (v2 != 50);
  if (v3)
  {
    if (!this[492])
    {
      _ZNSt3__115allocate_sharedB8ne200100IN6DspLib13ChannelBufferENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    }

    if (!this[494])
    {
      _ZNSt3__115allocate_sharedB8ne200100IN6DspLib13ChannelBufferENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    }
  }

  else
  {
    v4 = this[493];
    v5 = 0uLL;
    *(this + 246) = 0u;
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v5 = 0uLL;
    }

    v6 = this[495];
    *(this + 247) = v5;
    if (v6)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void sub_1DDBF83EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  MEMORY[0x1E12BD160](v13, v12);
  _Unwind_Resume(a1);
}

void DspLib::ToneMeister::CrossFade::setParameters(uint64_t a1, unint64_t a2)
{
  LODWORD(v2) = vcvtad_u64_f64(*a1 * (*&a2 / 1000.0));
  v5 = (v2 + 1);
  *(a1 + 24) = v5;
  v6 = *(a1 + 8) + v5 - 1;
  std::vector<float>::resize((a1 + 40), v6);
  std::vector<float>::resize((a1 + 64), v6);
  DspLib::fill(*(a1 + 40), (*(a1 + 48) - *(a1 + 40)) >> 2, 1.0);
  DspLib::clear(*(a1 + 64), (*(a1 + 72) - *(a1 + 64)) >> 2);
  if (v2)
  {
    v7 = HIDWORD(a2);
    v8 = *(a1 + 24);
    v9 = *(a1 + 40);
    if (v7 == 1)
    {
      DspLib::ramp(v9, v8, 1, 1.0 / v2, 1.0);
    }

    else
    {
      DspLib::ramp(v9, v8, 0, 0.0, 1.0);
      if (v7 == 2)
      {
        DspLib::square();
      }
    }

    v10 = *(a1 + 64);
    DspLib::multiply(*(a1 + 40), v2, v10, -1.0);

    DspLib::add(v10, v2, 1.0);
  }
}

void *std::unique_ptr<DspLib::ToneMeister::CrossFade>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      v2[9] = v3;
      operator delete(v3);
    }

    v4 = v2[5];
    if (v4)
    {
      v2[6] = v4;
      operator delete(v4);
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void DspLib::ToneMeister::Algorithm::~Algorithm(DspLib::ToneMeister::Algorithm *this)
{
  DspLib::ToneMeister::Algorithm::~Algorithm(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F591A748;
  std::unique_ptr<DspLib::ToneMeister::CrossFade>::reset[abi:ne200100](this + 499, 0);
  v10 = (this + 3968);
  std::vector<std::unique_ptr<DspLib::AlgorithmInterface>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v2 = *(this + 495);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 493);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 486);
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(this + 483);
  if (v5)
  {
    *(this + 484) = v5;
    operator delete(v5);
  }

  DspLib::FFT::Filterbank::~Filterbank((this + 3456));
  v6 = *(this + 429);
  if (v6)
  {
    *(this + 430) = v6;
    operator delete(v6);
  }

  v7 = *(this + 426);
  if (v7)
  {
    *(this + 427) = v7;
    operator delete(v7);
  }

  v8 = *(this + 423);
  if (v8)
  {
    *(this + 424) = v8;
    operator delete(v8);
  }

  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 3360));
  v9 = *(this + 417);
  if (v9)
  {
    *(this + 418) = v9;
    operator delete(v9);
  }

  DspLib::AlgorithmBase::~AlgorithmBase(this);
}

void DspLib::SideChain::Algorithm::copyStatesFrom(DspLib::SideChain::Algorithm *this, const DspLib::SideChain::Algorithm *a2)
{
  if (*(this + 48) == 1 && *(a2 + 48) == 1)
  {
    *(this + 98) = *(a2 + 98);
    *(this + 190) = *(a2 + 190);
    *(this + 194) = *(a2 + 194);
    *(this + 277) = *(a2 + 277);
    *(this + 279) = *(a2 + 279);
    *(this + 280) = *(a2 + 280);
    if (*(this + 119) == *(a2 + 119))
    {
      v4 = *(this + 118);
      if (v4)
      {
        if (v4 == *(a2 + 118))
        {
          DspLib::Biquad::Filter::copyStatesFrom((this + 896), (a2 + 896));
        }
      }
    }

    if (*(this + 106) == *(a2 + 106))
    {
      v5 = *(this + 105);
      if (v5)
      {
        if (v5 == *(a2 + 105))
        {
          DspLib::Biquad::Filter::copyStatesFrom((this + 792), (a2 + 792));
        }
      }
    }

    if (*(this + 132) == *(a2 + 132))
    {
      v6 = *(this + 131);
      if (v6)
      {
        if (v6 == *(a2 + 131))
        {

          DspLib::Biquad::Filter::copyStatesFrom((this + 1000), (a2 + 1000));
        }
      }
    }
  }
}

uint64_t std::vector<std::vector<DspLib::Biquad::Section>>::__emplace_back_slow_path<std::vector<DspLib::Biquad::Section>&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::allocator<std::vector<DspLib::Biquad::Section>>::allocate_at_least[abi:ne200100](a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<DspLib::Biquad::Section>::__init_with_size[abi:ne200100]<DspLib::Biquad::Section*,DspLib::Biquad::Section*>(24 * v2, *a2, a2[1], 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 2));
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::vector<float>>::~__split_buffer(&v14);
  return v8;
}

void sub_1DDBF8868(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<DspLib::Biquad::Section>::__init_with_size[abi:ne200100]<DspLib::Biquad::Section*,DspLib::Biquad::Section*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<DspLib::Biquad::Section>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DDBF88DC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::vector<std::vector<DspLib::Biquad::Section>>>::__emplace_back_slow_path<std::vector<std::vector<DspLib::Biquad::Section>>&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::allocator<std::vector<DspLib::Biquad::Section>>::allocate_at_least[abi:ne200100](a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<std::vector<DspLib::Biquad::Section>>::__init_with_size[abi:ne200100]<std::vector<DspLib::Biquad::Section>*,std::vector<DspLib::Biquad::Section>*>(24 * v2, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::vector<std::vector<DspLib::Biquad::Section>>>::~__split_buffer(&v14);
  return v8;
}

void sub_1DDBF8A20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<std::vector<DspLib::Biquad::Section>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::vector<DspLib::Biquad::Section>>::__init_with_size[abi:ne200100]<std::vector<DspLib::Biquad::Section>*,std::vector<DspLib::Biquad::Section>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<DspLib::Biquad::Section>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DDBF8A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::vector<DspLib::Biquad::Section>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::allocator<std::vector<DspLib::Biquad::Section>>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<DspLib::Biquad::Section>>,std::vector<DspLib::Biquad::Section>*,std::vector<DspLib::Biquad::Section>*,std::vector<DspLib::Biquad::Section>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<DspLib::Biquad::Section>::__init_with_size[abi:ne200100]<DspLib::Biquad::Section*,DspLib::Biquad::Section*>(v4, *v6, v6[1], 0xCCCCCCCCCCCCCCCDLL * ((v6[1] - *v6) >> 2));
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<DspLib::Biquad::Section>>,std::vector<DspLib::Biquad::Section>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<DspLib::Biquad::Section>>,std::vector<DspLib::Biquad::Section>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<DspLib::LinearDelay>,DspLib::LinearDelay*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void **std::__split_buffer<std::vector<std::vector<DspLib::Biquad::Section>>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<std::vector<DspLib::Biquad::Section>>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<std::vector<DspLib::Biquad::Section>>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

void *std::vector<DspLib::Biquad::Section>::__assign_with_size[abi:ne200100]<std::__wrap_iter<DspLib::Biquad::Section const*>,std::__wrap_iter<DspLib::Biquad::Section const*>>(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (0xCCCCCCCCCCCCCCCDLL * ((v8 - *result) >> 2) < a4)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (a4 <= 0xCCCCCCCCCCCCCCCLL)
    {
      v10 = 0xCCCCCCCCCCCCCCCDLL * (v8 >> 2);
      v11 = 2 * v10;
      if (2 * v10 <= a4)
      {
        v11 = a4;
      }

      if (v10 >= 0x666666666666666)
      {
        v12 = 0xCCCCCCCCCCCCCCCLL;
      }

      else
      {
        v12 = v11;
      }

      std::vector<DspLib::Biquad::Section>::__vallocate[abi:ne200100](v7, v12);
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  v13 = result[1];
  v14 = v13 - v9;
  if (0xCCCCCCCCCCCCCCCDLL * ((v13 - v9) >> 2) >= a4)
  {
    v20 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v20);
    }

    v19 = &v9[v20];
  }

  else
  {
    if (v13 != v9)
    {
      result = memmove(*result, __src, v13 - v9);
      v13 = v7[1];
    }

    v15 = &__src[v14];
    v16 = v13;
    if (&__src[v14] != a3)
    {
      v16 = v13;
      v17 = v13;
      do
      {
        v18 = *v15;
        *(v17 + 4) = *(v15 + 4);
        *v17 = v18;
        v17 += 20;
        v15 += 20;
        v16 += 20;
      }

      while (v15 != a3);
    }

    v19 = v16;
  }

  v7[1] = v19;
  return result;
}

uint64_t std::__split_buffer<std::unique_ptr<DspLib::DynamicFilter::Algorithm>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<DspLib::DynamicFilter::Algorithm>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<DspLib::DynamicFilter::Algorithm>>::__destruct_at_end[abi:ne200100](void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

void sub_1DDBF8FD4()
{
  DspLib::LoudspeakerSystemIDV1::LR2InductanceModel::initialize((v0 + 1168), v1);
  DspLib::ComplexVector::setLength((v0 + 8), *(v0 + 632));
  DspLib::ComplexVector::setLength((v0 + 88), *(v0 + 1608));
  *v0 = 1;
  DspLib::LoudspeakerSystemIDV1::SingleResonanceModel::reset((v0 + 184));
}

void DspLib::LoudspeakerSystemIDV1::ModelFit::uninitialize(DspLib::LoudspeakerSystemIDV1::ModelFit *this)
{
  DspLib::LoudspeakerSystemIDV1::SingleResonanceModel::uninitialize((this + 184));
  DspLib::LoudspeakerSystemIDV1::LR2InductanceModel::uninitialize((this + 1168));
  DspLib::ComplexVector::setLength((this + 8), 0);

  DspLib::ComplexVector::setLength((this + 88), 0);
}

void DspLib::LoudspeakerSystemIDV1::ModelFit::setParameters(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    DspLib::LoudspeakerSystemIDV1::SingleResonanceModel::setParameters(a1 + 184, a2, a3);
    DspLib::LoudspeakerSystemIDV1::LR2InductanceModel::setParameters(a1 + 1168, a2, a3);
    DspLib::ComplexVector::setLength((a1 + 8), *(a1 + 632));
    DspLib::ComplexVector::setLength((a1 + 88), *(a1 + 1608));
    if (a3 != DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV1::Parameters::kDefinition, 0xAu))
    {
      DspLib::AlgorithmBaseNewParameters::parameterGroup();
    }

    *(a1 + 168) = *(a2 + 4 * DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV1::Parameters::kDefinition, 7u)) >= 0.5;
    if (a3 != DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV1::Parameters::kDefinition, 0xAu))
    {
      DspLib::AlgorithmBaseNewParameters::parameterGroup();
    }

    *(a1 + 169) = *(a2 + 4 * DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV1::Parameters::kDefinition, 6u) + 12) >= 0.5;
    if (a3 != DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV1::Parameters::kDefinition, 0xAu))
    {
      DspLib::AlgorithmBaseNewParameters::parameterGroup();
    }

    v6 = *(a2 + 4);
    if (v6 >= 0.5 && (*(a1 + 2) & 1) == 0)
    {
      DspLib::LoudspeakerSystemIDV1::SingleResonanceModel::reset((a1 + 184));
    }

    *(a1 + 2) = v6 >= 0.5;
    DspLib::LoudspeakerSystemIDV1::SingleResonanceModel::readFromNvm((a1 + 184));
    DspLib::LoudspeakerSystemIDV1::LR2InductanceModel::readFromNvm((a1 + 1168));
    *(a1 + 1) = 1;
  }

  else
  {
    DspLib::LoudspeakerSystemIDV1::ModelFit::setParameters();
  }
}

void DspLib::LoudspeakerSystemIDV1::ModelFit::process(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, int a6, float a7)
{
  if (*(a1 + 1))
  {
    DspLib::LoudspeakerSystemIDV1::SingleResonanceModel::readFromNvm((a1 + 184));
    DspLib::LoudspeakerSystemIDV1::LR2InductanceModel::readFromNvm((a1 + 1168));
    if (a6)
    {
      *(a1 + 588) = 0;
      *(a1 + 1572) = 0;
    }

    else
    {
      v14 = *(a1 + 4);
      if (v14 == 2)
      {
        if (*(a1 + 169) == 1)
        {
          DspLib::LoudspeakerSystemIDV1::SingleResonanceModel::calculateEstimatedResonanceModel(a1 + 184, (a1 + 88), (a1 + 1672), (a1 + 1080));
          DspLib::LoudspeakerSystemIDV1::LR2InductanceModel::process(a1 + 1168, a2, a3, a4, a5, (a1 + 88), a7);
        }

        else
        {
          *(a1 + 1572) = 0;
        }

        *(a1 + 170) = 1;
        *(a1 + 4) = 0;
      }

      else if (v14 == 1)
      {
        if (*(a1 + 168) == 1)
        {
          DspLib::LoudspeakerSystemIDV1::LR2InductanceModel::calculateEstimatedInductanceModel(a1 + 1168, (a1 + 8), (a1 + 696), (a1 + 2056));
          DspLib::LoudspeakerSystemIDV1::SingleResonanceModel::process(a1 + 184, a2, a3, a4, a5, (a1 + 8), a7);
        }

        else
        {
          *(a1 + 588) = 0;
        }

        *(a1 + 4) = 2;
      }
    }

    DspLib::LoudspeakerSystemIDV1::SingleResonanceModel::writeToNvm((a1 + 184));

    DspLib::LoudspeakerSystemIDV1::LR2InductanceModel::writeToNvm((a1 + 1168));
  }

  else
  {
    DspLib::LoudspeakerSystemIDV1::ModelFit::process();
  }
}

uint64_t *DspLib::LoudspeakerSystemIDV1::updateEstimatedModel(DspLib::LoudspeakerSystemIDV1 *this, DSPSplitComplex *a2, float a3, DspLib::ComplexSpan *a4, float a5, const DspLib::LoudspeakerSystemIDV1::SingleResonanceModel *a6, const DspLib::LoudspeakerSystemIDV1::LR2InductanceModel *a7)
{
  v32[5] = *MEMORY[0x1E69E9840];
  v11 = MEMORY[0x1EEE9AC00](this);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v32[0] = v14;
  v32[1] = &__B - v13;
  v32[2] = 2 * v12;
  v32[3] = 2;
  v32[4] = v12;
  DspLib::LoudspeakerSystemIDV1::calculateSPlaneFrequencyVector(v32, 0.0, v16, v15);
  v18 = MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  __A.realp = v20;
  __A.imagp = (&__B - v19);
  v31 = v21;
  v22 = DspLib::LoudspeakerSystemIDV1::SingleResonanceModel::calculateEstimatedResonanceModel(a4, &__A, v32, a4 + 224);
  v23 = MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v23);
  __B.realp = v25;
  __B.imagp = (&__B - v24);
  v29 = v26;
  DspLib::LoudspeakerSystemIDV1::LR2InductanceModel::calculateEstimatedInductanceModel(a6, &__B, v32, a6 + 222);
  DspLib::ComplexSpan::operator=(a2, &__A);
  DspLib::operator+=(a2, &__B);
  return DspLib::operator+=(a2, a5);
}

void DspLib::LoudspeakerSystemIDV1::calculateSPlaneFrequencyVector(DspLib::LoudspeakerSystemIDV1 *this, float a2, float a3, DspLib::ComplexMatrixSpan *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1EEE9AC00](this);
  v8 = MEMORY[0x1EEE9AC00](v7);
  __A.realp = v10;
  __A.imagp = (&v20 - v9);
  v24 = v11;
  if (v11)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v26.imag = (a2 + (v13 * a3)) * 6.2832;
      v26.real = 0.0;
      v8 = DspLib::ComplexSpan::setElement(&__A, v12, v26);
      v12 = ++v13;
    }

    while (v24 > v13);
  }

  v14 = MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v14);
  __C.realp = v16;
  __C.imagp = (&v20 - v15);
  v22 = v17;
  DspLib::ComplexSpan::operator=(&__C, &__A);
  DspLib::ComplexMatrixSpan::setRow(this, 0, &__C);
  if (*(this + 3) >= 2uLL)
  {
    v18 = 3;
    do
    {
      DspLib::operator*=(&__C, &__A);
      DspLib::ComplexMatrixSpan::setRow(this, v18 - 2, &__C);
    }

    while (*(this + 3) >= v18++);
  }
}

void DspLib::LoudspeakerSystemIDV1::ModelFit::status(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v17 = *MEMORY[0x1E69E9840];
  if (*v1)
  {
    v6 = v5;
    v7 = v3;
    v8 = v2;
    v9 = v1;
    v10 = *(v1 + 176) * 0.0009765625;
    __A.realp = &v16;
    __A.imagp = &v15;
    v14 = 513;
    DspLib::LoudspeakerSystemIDV1::updateEstimatedModel(0x201, &__A, v10, (v1 + 184), v6, (v1 + 1168), v4);
    vDSP_zvabs(&__A, 1, (v8 + 6556), 1, v14);
    vDSP_zvphas(&__A, 1, (v8 + 8608), 1, v14);
    DspLib::LoudspeakerSystemIDV1::SingleResonanceModel::status(v9 + 184, v8);
    DspLib::LoudspeakerSystemIDV1::LR2InductanceModel::status(v9 + 1168, v8);
    if (v7)
    {
      v11 = 1;
      do
      {
        if ((*v8 & 0x7FFFFFFFu) >= 0x7F800000)
        {
          *v8 = 0;
        }

        v8 += 4;
      }

      while (v7 > v11++);
    }
  }

  else
  {
    DspLib::LoudspeakerSystemIDV1::ModelFit::status();
  }
}

void DspLib::LoudspeakerSystemIDV1::ModelFit::setParameters()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/LoudspeakerManagerV1/LoudspeakerSystemIDV1/dsp/DspLibLoudspeakerSystemIDV1ModelFit.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 47);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::LoudspeakerSystemIDV1::ModelFit::process()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/LoudspeakerManagerV1/LoudspeakerSystemIDV1/dsp/DspLibLoudspeakerSystemIDV1ModelFit.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 87);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::LoudspeakerSystemIDV1::ModelFit::status()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/LoudspeakerManagerV1/LoudspeakerSystemIDV1/dsp/DspLibLoudspeakerSystemIDV1ModelFit.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 153);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

float DspLib::SingleSampleDelay::process(float *a1, _DWORD *__src, uint64_t a3, _DWORD *a4, uint64_t a5)
{
  if (a3)
  {
    v7 = __src[a3 - 1];
    DspLib::copy_backward(__src, a3 - 1, &a4[a5 + 1 - a3], a3 - 1);
    result = *a1;
    *a4 = *a1;
    *a1 = v7;
  }

  return result;
}

void DspLib::CircularDelay::setLength(DspLib::CircularDelay *this, unint64_t a2)
{
  if (a2 != (*(this + 1) - *this) >> 2)
  {
    std::vector<float>::resize(this, a2);
    *(this + 3) = 0;
    v4 = *this;
    v5 = (*(this + 1) - *this) >> 2;

    DspLib::clear(v4, v5);
  }
}

void **DspLib::CircularDelay::read(void **result, unint64_t a2, char *__dst, unint64_t a4)
{
  if (a4)
  {
    v5 = *result;
    v6 = (result[1] - *result) >> 2;
    if (v6 >= a2 && a4 <= v6)
    {
      v8 = __dst;
      v9 = result[3] + v6 - a2;
      if (v9 >= v6)
      {
        v10 = (result[1] - *result) >> 2;
      }

      else
      {
        v10 = 0;
      }

      v11 = v9 - v10;
      v12 = v6 - v11;
      v13 = a4 - (v6 - v11);
      if (a4 <= v6 - v11)
      {
        if (a4 != -1)
        {
          v12 = a4;
        }

        v14 = &v5[4 * v11];
      }

      else
      {
        DspLib::copy(&v5[4 * v11], v12, __dst);
        __dst = &v8[4 * a4 + -4 * v13];
        v14 = v5;
        v12 = v13;
      }

      return DspLib::copy(v14, v12, __dst);
    }
  }

  return result;
}

char **DspLib::CircularDelay::write(char **result, char *__src, unint64_t a3)
{
  if (a3)
  {
    v5 = result;
    v7 = *result;
    v6 = result[1];
    v8 = v6 - *result;
    v9 = v8 >> 2;
    if (a3 <= v8 >> 2)
    {
      v13 = result[3];
      v14 = a3 - (v9 - v13);
      if (a3 <= v9 - v13)
      {
        result = DspLib::copy(__src, a3, &v7[4 * v13]);
        if (v5[3] + a3 == v9)
        {
          v14 = 0;
        }

        else
        {
          v14 = v5[3] + a3;
        }
      }

      else
      {
        DspLib::copy(__src, v9 - v13, &v7[v8 + -4 * (v9 - v13)]);
        result = DspLib::copy(&__src[4 * a3 + -4 * v14], v14, v7);
      }

      v5[3] = v14;
    }

    else if (v6 != v7)
    {
      v10 = &__src[4 * a3];
      v11 = &v10[-4 * v9];
      v12 = v5[3];
      if (v12)
      {
        DspLib::copy(v11, v9 - v12, &v7[v8 + -4 * (v9 - v12)]);
        v9 = v5[3];
        v11 = &v10[-4 * v9];
      }

      return DspLib::copy(v11, v9, v7);
    }
  }

  return result;
}

char **DspLib::CircularDelay::process(char **result, char *a2, unint64_t a3, char *__dst, unint64_t a5)
{
  v29[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v9 = result;
    v10 = *result;
    v11 = result[1];
    v12 = v11 - *result;
    v13 = v12 >> 2;
    if (a3 <= v12 >> 2)
    {
      if (__dst == a2)
      {
        v29[0] = v29;
        MEMORY[0x1EEE9AC00](result);
        v21 = v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
        DspLib::CircularDelay::read(v9, v12 >> 2, v21, a3);
        v22 = *(v9 + 3);
        v23 = a3 - (v13 - v22);
        if (a3 <= v13 - v22)
        {
          DspLib::copy(a2, a3, &v10[4 * v22]);
          if (*(v9 + 3) + a3 == v13)
          {
            v23 = 0;
          }

          else
          {
            v23 = *(v9 + 3) + a3;
          }
        }

        else
        {
          DspLib::copy(a2, v13 - v22, &v10[v12 + -4 * (v13 - v22)]);
          DspLib::copy(&a2[4 * a3 + -4 * v23], v23, v10);
        }

        *(v9 + 3) = v23;
        return DspLib::copy(v21, a3, __dst);
      }

      else
      {
        DspLib::CircularDelay::read(result, v12 >> 2, __dst, a5);
        v27 = *(v9 + 3);
        v28 = a3 - (v13 - v27);
        if (a3 <= v13 - v27)
        {
          result = DspLib::copy(a2, a3, &v10[4 * v27]);
          if (*(v9 + 3) + a3 == v13)
          {
            v28 = 0;
          }

          else
          {
            v28 = *(v9 + 3) + a3;
          }
        }

        else
        {
          DspLib::copy(a2, v13 - v27, &v10[v12 + -4 * (v13 - v27)]);
          result = DspLib::copy(&a2[4 * a3 + -4 * v28], v28, v10);
        }

        *(v9 + 3) = v28;
      }
    }

    else if (__dst == a2)
    {
      if (v11 != v10)
      {
        v29[0] = v29;
        MEMORY[0x1EEE9AC00](result);
        v15 = v29 - v14;
        DspLib::CircularDelay::read(v9, v12 >> 2, v29 - v14, v12 >> 2);
        v16 = &a2[4 * a3];
        v17 = &v16[-4 * v13];
        v18 = *(v9 + 3);
        if (v18)
        {
          DspLib::copy(v17, v13 - v18, &v10[v12 + -4 * (v13 - v18)]);
          v19 = *(v9 + 3);
          v17 = &v16[-4 * v19];
        }

        else
        {
          v19 = v12 >> 2;
        }

        DspLib::copy(v17, v19, v10);
        DspLib::copy_backward(a2, a3 - v13, &__dst[4 * a5 + -4 * (a3 - v13)], a3 - v13);
        return DspLib::copy(v15, v12 >> 2, __dst);
      }
    }

    else
    {
      DspLib::CircularDelay::read(result, v12 >> 2, __dst, v12 >> 2);
      result = DspLib::copy(a2, a3 - v13, &__dst[4 * a5 + -4 * (a3 - v13)]);
      if (v11 != v10)
      {
        v24 = &a2[4 * a3];
        v25 = &v24[-4 * v13];
        v26 = *(v9 + 3);
        if (v26)
        {
          DspLib::copy(v25, v13 - v26, &v10[v12 + -4 * (v13 - v26)]);
          v13 = *(v9 + 3);
          v25 = &v24[-4 * v13];
        }

        return DspLib::copy(v25, v13, v10);
      }
    }
  }

  return result;
}

void **DspLib::MultiChannelCircularDelay::read(void **result, unint64_t a2, void *a3)
{
  v3 = *result;
  if (result[1] != *result)
  {
    v6 = result;
    v7 = 0;
    v8 = 1;
    do
    {
      result = DspLib::CircularDelay::read(&v3[4 * v7], a2, *(*a3 + 8 * v7), a3[2]);
      v7 = v8;
      v3 = *v6;
      ++v8;
    }

    while (v7 < (v6[1] - *v6) >> 5);
  }

  return result;
}

char **DspLib::MultiChannelCircularDelay::write(char **result, void *a2)
{
  v2 = *result;
  if (result[1] != *result)
  {
    v4 = result;
    v5 = 0;
    v6 = 1;
    do
    {
      result = DspLib::CircularDelay::write(&v2[32 * v5], *(*a2 + 8 * v5), a2[2]);
      v5 = v6;
      v2 = *v4;
      ++v6;
    }

    while (v5 < (v4[1] - *v4) >> 5);
  }

  return result;
}

char **DspLib::MultiChannelCircularDelay::process(char **result, void *a2, void *a3)
{
  v3 = *result;
  if (result[1] != *result)
  {
    v6 = result;
    v7 = 0;
    v8 = 1;
    do
    {
      result = DspLib::CircularDelay::process(&v3[32 * v7], *(*a2 + 8 * v7), a2[2], *(*a3 + 8 * v7), a3[2]);
      v7 = v8;
      v3 = *v6;
      ++v8;
    }

    while (v7 < (v6[1] - *v6) >> 5);
  }

  return result;
}

void DspLib::LinearDelay::setLength(float **this, unint64_t a2)
{
  if (a2 != this[1] - *this)
  {
    std::vector<float>::resize(this, a2);
    v4 = *this;
    v5 = this[1] - *this;

    DspLib::clear(v4, v5);
  }
}

char **DspLib::LinearDelay::process(char **result, char *__src, unint64_t a3, char *__dst, uint64_t a5)
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v10 = *result;
    v9 = result[1];
    v11 = v9 - *result;
    if (v9 == *result)
    {
      if (__src != __dst)
      {

        return DspLib::copy(__src, a3, __dst);
      }
    }

    else
    {
      v12 = v11 >> 2;
      v13 = a3 - (v11 >> 2);
      if (a3 <= v11 >> 2)
      {
        MEMORY[0x1EEE9AC00](result);
        v17 = v18 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
        DspLib::copy(__src, a3, v17);
        DspLib::copy(v10, a3, __dst);
        DspLib::copy(&v10[v11 + -4 * (v12 - a3)], v12 - a3, v10);
        return DspLib::copy(v17, a3, &v10[v11 + -4 * a3]);
      }

      else
      {
        MEMORY[0x1EEE9AC00](result);
        v15 = v18 - v14;
        DspLib::copy(&__src[4 * a3 + -4 * v12], v12, v18 - v14);
        DspLib::copy_backward(__src, v13, &__dst[4 * a5 + -4 * v13], v13);
        DspLib::copy(v10, v12, __dst);
        return DspLib::copy(v15, v12, v10);
      }
    }
  }

  return result;
}

char **DspLib::LinearDelay::write(char **result, char *a2, unint64_t a3)
{
  if (a3)
  {
    v5 = *result;
    v6 = result[1] - *result;
    v7 = v6 >> 2;
    if (v6 >> 2 >= a3)
    {
      v8 = &v5[v6];
      DspLib::copy(&v5[v6 + -4 * ((v6 >> 2) - a3)], (v6 >> 2) - a3, v5);
      v5 = &v8[-4 * a3];
      v7 = a3;
    }

    else
    {
      a2 = &a2[4 * a3 + -4 * v7];
    }

    return DspLib::copy(a2, v7, v5);
  }

  return result;
}