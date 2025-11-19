uint64_t bmBufferResizeCoordConvert(uint64_t result, unsigned int a2, unsigned int a3, unsigned int a4, int a5, float *a6, float *a7, float a8, float a9)
{
  if (!a5)
  {
    *a6 = (a8 / result) * a3;
    v10 = (a9 / a2) * a4;
    goto LABEL_7;
  }

  v9 = a3 / result;
  if (v9 >= (a4 / a2))
  {
    v9 = a4 / a2;
  }

  *a6 = v9 * a8;
  *a7 = v9 * a9;
  if (a5 == 2)
  {
    *a6 = ((a3 - (v9 * result)) * 0.5) + *a6;
    v10 = ((a4 - (v9 * a2)) * 0.5) + *a7;
LABEL_7:
    *a7 = v10;
  }

  return result;
}

float bmBufferResizeCoordConvertReversed(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4, int a5, float *a6, float *a7, float a8, float a9)
{
  v9 = a3;
  if (a5)
  {
    v10 = v9 / a1;
    if (v10 >= (a4 / a2))
    {
      v10 = a4 / a2;
    }

    v11 = (v9 - (v10 * a1)) * 0.5;
    v12 = (a4 - (v10 * a2)) * 0.5;
    if (a5 != 2)
    {
      v12 = 0.0;
      v11 = 0.0;
    }

    v13 = 1.0 / v10;
    *a6 = v13 * (a8 - v11);
    result = v13 * (a9 - v12);
    *a7 = result;
  }

  else
  {
    *a6 = (a8 / v9) * a1;
    result = (a9 / a4) * a2;
    *a7 = result;
  }

  return result;
}

void BmMixedBufSize::BmMixedBufSize(BmMixedBufSize *this)
{
  *this = 0;
}

{
  *this = 0;
}

float bmMinimum(float result, float a2)
{
  if (result >= a2)
  {
    return a2;
  }

  return result;
}

uint64_t bmMinimum(uint64_t result, unsigned int a2)
{
  if (result >= a2)
  {
    return a2;
  }

  else
  {
    return result;
  }
}

uint64_t bmMinimum(uint64_t result, int a2)
{
  if (result >= a2)
  {
    return a2;
  }

  else
  {
    return result;
  }
}

float bmMaximum(float result, float a2)
{
  if (result < a2)
  {
    return a2;
  }

  return result;
}

uint64_t bmMaximum(uint64_t result, unsigned int a2)
{
  if (result <= a2)
  {
    return a2;
  }

  else
  {
    return result;
  }
}

uint64_t bmMaximum(uint64_t result, int a2)
{
  if (result <= a2)
  {
    return a2;
  }

  else
  {
    return result;
  }
}

uint64_t bmClamp(signed int a1, unsigned int a2, signed int a3)
{
  if (a3 >= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a3;
  }

  if (a1 >= a2)
  {
    return v3;
  }

  else
  {
    return a2;
  }
}

float bmClamp(float a1, float a2, float a3)
{
  if (a3 >= a1)
  {
    a3 = a1;
  }

  if (a1 >= a2)
  {
    return a3;
  }

  else
  {
    return a2;
  }
}

float bmSoftmax2(float a1, float a2)
{
  if (a1 >= a2)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  v4 = expf(a1 - v3);
  v5 = expf(a2 - v3);
  return v5 / (v4 + v5);
}

void bmSoftmax(float32x4_t *a1, float *a2, unsigned int a3, __n128 a4)
{
  v5 = a2;
  a4.n128_u32[0] = a1->i32[0];
  if (a3 >= 2)
  {
    v6 = &a1->f32[1];
    do
    {
      v7 = *v6++;
      v8 = v7;
      if (a4.n128_f32[0] < v7)
      {
        a4.n128_f32[0] = v8;
      }
    }

    while (v6 < &a1->f32[a3]);
  }

  if (!a3)
  {
    return;
  }

  v9 = 0;
  if (a3 < 8)
  {
    goto LABEL_12;
  }

  if ((a2 - a1) <= 0x1F)
  {
    goto LABEL_12;
  }

  v9 = a3 & 0xFFFFFFF8;
  v11 = vdupq_lane_s32(a4.n128_u64[0], 0);
  v12 = a2 + 4;
  v13 = a1 + 1;
  v14 = v9;
  do
  {
    v15 = vsubq_f32(*v13, v11);
    *(v12 - 1) = vsubq_f32(v13[-1], v11);
    *v12 = v15;
    v12 += 8;
    v13 += 2;
    v14 -= 8;
  }

  while (v14);
  if (v9 != a3)
  {
LABEL_12:
    v16 = a3 - v9;
    v17 = v9;
    v18 = &a2[v9];
    v19 = &a1->f32[v17];
    do
    {
      v20 = *v19++;
      *v18++ = v20 - a4.n128_f32[0];
      --v16;
    }

    while (v16);
  }

  if (a3 == 1)
  {
    LODWORD(v21) = 0;
    a4.n128_u64[0] = 0;
    v22 = a2;
  }

  else
  {
    v21 = a3 & 0xFFFFFFFE;
    v23 = a2 + 1;
    a4.n128_u32[0] = 0;
    v24 = v21;
    do
    {
      v45 = a4.n128_f32[0];
      v25 = *v23;
      v26 = expf(*(v23 - 1));
      a4.n128_f32[0] = (v45 + v26) + expf(v25);
      v23 += 2;
      v24 -= 2;
    }

    while (v24);
    if (v21 == a3)
    {
      goto LABEL_22;
    }

    v22 = &v5[a3 & 0xFFFFFFFE];
  }

  v27 = a3 - v21;
  do
  {
    v46 = a4;
    v28 = *v22++;
    v29 = expf(v28);
    v30 = v46;
    v30.n128_f32[0] = v46.n128_f32[0] + v29;
    a4 = v30;
    --v27;
  }

  while (v27);
LABEL_22:
  v47 = a4.n128_f32[0];
  if (a3 <= 3)
  {
    LODWORD(v31) = 0;
    goto LABEL_28;
  }

  v31 = a3 & 0xFFFFFFFC;
  v40 = vdupq_lane_s32(a4.n128_u64[0], 0);
  v32 = v5;
  v33 = v31;
  do
  {
    v44 = *v32;
    v41 = expf(COERCE_FLOAT(HIDWORD(v32->i64[0])));
    v34.f32[0] = expf(v44.f32[0]);
    v34.f32[1] = v41;
    v42 = v34;
    v35 = expf(v44.f32[2]);
    v36 = v42;
    v36.f32[2] = v35;
    v43 = v36;
    v37 = expf(v44.f32[3]);
    v38 = v43;
    v38.f32[3] = v37;
    *v32++ = vdivq_f32(v38, v40);
    v33 -= 4;
  }

  while (v33);
  if (v31 != a3)
  {
    v5 += a3 & 0xFFFFFFFC;
LABEL_28:
    v39 = a3 - v31;
    do
    {
      *v5 = expf(*v5) / v47;
      ++v5;
      --v39;
    }

    while (v39);
  }
}

void bmSoftmax(float32x4_t *a1, float *a2, unsigned int a3, unsigned int a4, double a5)
{
  v5 = a3;
  v6 = a2;
  LODWORD(a5) = a1->i32[0];
  v7 = 4 * a4;
  if (a4 * a3 > a4)
  {
    v8 = &a1->f32[v7 / 4];
    do
    {
      if (*&a5 < *v8)
      {
        *&a5 = *v8;
      }

      v8 = (v8 + v7);
    }

    while (v8 < &a1->f32[a4 * a3]);
  }

  if (a3)
  {
    v9 = 0;
    if (a3 < 8)
    {
      goto LABEL_13;
    }

    if (a4 != 1)
    {
      goto LABEL_13;
    }

    if ((a2 - a1) < 0x20)
    {
      goto LABEL_13;
    }

    v9 = a3 & 0xFFFFFFF8;
    v10 = vdupq_lane_s32(*&a5, 0);
    v11 = a1 + 1;
    v12 = a2 + 4;
    v13 = v9;
    do
    {
      v14 = vsubq_f32(*v11, v10);
      *(v12 - 1) = vsubq_f32(v11[-1], v10);
      *v12 = v14;
      v11 += 2;
      v12 += 8;
      v13 -= 8;
    }

    while (v13);
    if (v9 != a3)
    {
LABEL_13:
      v15 = a3 - v9;
      v16 = a4 * v9;
      do
      {
        a2[v16] = a1->f32[v16] - *&a5;
        v16 += a4;
        --v15;
      }

      while (v15);
    }

    v17 = 0.0;
    v18 = a2;
    v19 = a3;
    do
    {
      v17 = v17 + expf(*v18);
      v18 = (v18 + v7);
      --v19;
    }

    while (v19);
    do
    {
      *v6 = expf(*v6) / v17;
      v6 = (v6 + v7);
      --v5;
    }

    while (v5);
  }
}

uint64_t bmArgMax(signed __int8 *a1, unsigned int a2, int a3)
{
  if (a2 < 2)
  {
    return 0;
  }

  LODWORD(v3) = 0;
  v4 = *a1;
  v5 = 1;
  v6 = a3;
  do
  {
    v7 = a1[v6];
    if (v7 <= v4)
    {
      v3 = v3;
    }

    else
    {
      v3 = v5;
    }

    if (v7 > v4)
    {
      v4 = a1[v6];
    }

    ++v5;
    v6 += a3;
  }

  while (a2 != v5);
  return v3;
}

uint64_t bmQsort(uint64_t result, unint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a2 >= 2 && a3)
  {
    v8[4] = v4;
    v8[5] = v5;
    if ((a3 & 3) != 0)
    {
      v6 = a3;
    }

    else
    {
      v6 = a3 >> 2;
    }

    v7 = sub_22E62D7AC;
    v8[0] = a3;
    v8[1] = v6;
    if ((a3 & 3) == 0)
    {
      v7 = sub_22E62D8B4;
    }

    v8[2] = a4;
    v8[3] = v7;
    return sub_22E62D66C(result, a2, v8);
  }

  return result;
}

uint64_t sub_22E62D66C(uint64_t result, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = result;
  if (a2 >= 7)
  {
    do
    {
      v7 = 0;
      v8 = 0;
      v9 = v4 - 1;
      do
      {
        if ((*(a3 + 16))(v5 + *a3 * v9, v5 + *a3 * v8) >= 1)
        {
          (*(a3 + 24))(v5, v7++, v8, a3);
        }

        ++v8;
      }

      while (v9 != v8);
      (*(a3 + 24))(v5, v4 - 1, v7, a3);
      result = sub_22E62D66C(v5, v7, a3);
      v5 += *a3 + *a3 * v7;
      v4 += ~v7;
    }

    while (v4 > 6);
  }

  if (v4 >= 2)
  {
    for (i = 1; i != v4; ++i)
    {
      v10 = i;
      do
      {
        v11 = v10 - 1;
        result = (*(a3 + 16))(v5 + *a3 * (v10 - 1), v5 + *a3 * v10);
        if (result < 1)
        {
          break;
        }

        result = (*(a3 + 24))(v5, v10 - 1, v10, a3);
        --v10;
      }

      while (v11);
    }
  }

  return result;
}

uint64_t sub_22E62D7AC(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4[1];
  if (v4)
  {
    v5 = result + *a4 * a3;
    v6 = (result + *a4 * a2);
    if (v4 < 8uLL)
    {
      v7 = (result + *a4 * a3);
      goto LABEL_20;
    }

    v8 = (v4 - 1) + 1;
    if (v5 + v8 > v6 && &v6[v8] > v5)
    {
      v7 = (result + *a4 * a3);
      goto LABEL_20;
    }

    if (v4 >= 0x20uLL)
    {
      v10 = a4[1] - (a4[1] & 0x1FLL);
      v11 = (v6 + 16);
      v12 = (v5 + 16);
      v13 = v10;
      do
      {
        v14 = *(v11 - 1);
        v15 = *v11;
        v16 = *v12;
        *(v11 - 1) = *(v12 - 1);
        *v11 = v16;
        *(v12 - 1) = v14;
        *v12 = v15;
        v11 += 2;
        v12 += 2;
        v13 -= 32;
      }

      while (v13);
      if ((v4 & 0x1F) == 0)
      {
        return result;
      }

      if ((v4 & 0x1Fu) < 8uLL)
      {
        v6 += v10;
        v7 = (v5 + v10);
        LODWORD(v4) = v4 & 0x1F;
        goto LABEL_20;
      }
    }

    else
    {
      v10 = 0;
    }

    v17 = v4 - (v4 & 7);
    v7 = (v5 + v17);
    v18 = v10 + (v4 & 7) - v4;
    v19 = &v6[v10];
    v20 = (v5 + v10);
    do
    {
      v21 = *v19;
      *v19++ = *v20;
      *v20++ = v21;
      v18 += 8;
    }

    while (v18);
    if ((v4 & 7) != 0)
    {
      LODWORD(v4) = v4 & 7;
      v6 += v17;
      do
      {
LABEL_20:
        v22 = *v6;
        *v6++ = *v7;
        *v7++ = v22;
        LODWORD(v4) = v4 - 1;
      }

      while (v4);
    }
  }

  return result;
}

uint64_t sub_22E62D8B4(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4[1];
  if (v4)
  {
    v5 = result + *a4 * a3;
    v6 = (result + *a4 * a2);
    if (v4 < 8uLL)
    {
      v7 = (result + *a4 * a3);
      goto LABEL_13;
    }

    v8 = ((4 * v4 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4;
    if (v5 + v8 > v6 && v6 + v8 > v5)
    {
      v7 = (result + *a4 * a3);
      do
      {
LABEL_13:
        v17 = *v6;
        *v6++ = *v7;
        *v7++ = v17;
        LODWORD(v4) = v4 - 1;
      }

      while (v4);
      return result;
    }

    v10 = a4[1] - (a4[1] & 7);
    v7 = (v5 + 4 * v10);
    v11 = (v6 + 4);
    v12 = (v5 + 16);
    v13 = v10;
    do
    {
      v14 = *(v11 - 1);
      v15 = *v11;
      v16 = *v12;
      *(v11 - 1) = *(v12 - 1);
      *v11 = v16;
      *(v12 - 1) = v14;
      *v12 = v15;
      v11 += 2;
      v12 += 2;
      v13 -= 8;
    }

    while (v13);
    if ((v4 & 7) != 0)
    {
      LODWORD(v4) = v4 & 7;
      v6 += v10;
      goto LABEL_13;
    }
  }

  return result;
}

uint64_t bmHeapsort(uint64_t a1, unint64_t a2, unint64_t a3, int (*a4)(uint64_t, uint64_t))
{
  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  if ((a3 & 3) != 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = a3 >> 2;
  }

  v24[0] = a3;
  v24[1] = v5;
  if ((a3 & 3) != 0)
  {
    v6 = sub_22E62D7AC;
  }

  else
  {
    v6 = sub_22E62D8B4;
  }

  v25 = a4;
  v26 = v6;
  if (a2 < 7)
  {
    if (a2 >= 2)
    {
      if (a4(a1, a1 + a3) >= 1)
      {
        v6(a1, 0, 1, v24);
      }

      if (a2 != 2)
      {
        v17 = -3;
        do
        {
          if (v25(a1 + v24[0] * (v17 + 4), a1 + v24[0] * (v17 + 5)) >= 1)
          {
            v26(a1, v17 + 4, v17 + 5, v24);
            if (v25(a1 + v24[0] * (v17 + 3), a1 + v24[0] * (v17 + 4)) >= 1)
            {
              v26(a1, v17 + 3, v17 + 4, v24);
              if (v17 != -3 && v25(a1 + v24[0] * (v17 + 2), a1 + v24[0] * (v17 + 3)) >= 1)
              {
                v26(a1, v17 + 2, v17 + 3, v24);
                if (v17 != -2 && v25(a1 + v24[0] * (v17 + 1), a1 + v24[0] * (v17 + 2)) >= 1)
                {
                  v26(a1, v17 + 1, v17 + 2, v24);
                  if (v17 != -1 && v25(a1 + v24[0] * v17, a1 + v24[0] * (v17 + 1)) >= 1)
                  {
                    v26(a1, v17, v17 + 1, v24);
                  }
                }
              }
            }
          }

          ++v17;
        }

        while (2 - a2 + v17 != -3);
      }
    }
  }

  else if (a2 >= 1)
  {
    v7 = ((a2 - 2) / 2);
    v8 = a2;
    v9 = a2 - 1;
    do
    {
      v11 = 2 * v7;
      if (2 * v7 < v9)
      {
        v12 = v7;
        do
        {
          if (v25(a1 + v24[0] * (v11 | 1), a1 + v24[0] * v12) > 0)
          {
            v13 = v11 + 1;
          }

          else
          {
            v13 = v12;
          }

          v14 = v11 + 2;
          if (v14 <= v9 && v25(a1 + v24[0] * v14, a1 + v24[0] * v13) > 0)
          {
            v13 = v14;
          }

          if (v13 == v12)
          {
            break;
          }

          v26(a1, v12, v13, v24);
          v11 = 2 * v13;
          v12 = v13;
        }

        while (2 * v13 < v9);
      }

      v10 = v7-- <= 0;
    }

    while (!v10);
    if (v8 != 1)
    {
      v18 = v8 & 0x7FFFFFFF;
      do
      {
        v26(a1, 0, v18 - 1, v24);
        v19 = v18 - 2;
        if (v18 == 2)
        {
          break;
        }

        v20 = 0;
        v21 = 0;
        do
        {
          if (v25(a1 + v24[0] * (v20 | 1), a1 + v24[0] * v21) > 0)
          {
            v22 = v20 + 1;
          }

          else
          {
            v22 = v21;
          }

          v23 = v20 + 2;
          if (v23 <= v19 && v25(a1 + v24[0] * v23, a1 + v24[0] * v22) > 0)
          {
            v22 = v23;
          }

          if (v22 == v21)
          {
            break;
          }

          v26(a1, v21, v22, v24);
          v20 = 2 * v22;
          v21 = v22;
        }

        while (2 * v22 < v19);
        v10 = v18-- <= 2;
      }

      while (!v10);
    }
  }

  return 0;
}

uint64_t isort_internal(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2 >= 2)
  {
    v5 = result;
    for (i = 1; i != a2; ++i)
    {
      v7 = i;
      do
      {
        v8 = v7 - 1;
        result = (*(a3 + 16))(v5 + *a3 * (v7 - 1), v5 + *a3 * v7);
        if (result < 1)
        {
          break;
        }

        result = (*(a3 + 24))(v5, v7 - 1, v7, a3);
        --v7;
      }

      while (v8);
    }
  }

  return result;
}

void bmMunkres(float *a1, unsigned int a2, unsigned __int8 *a3, unsigned int a4, unsigned int *a5, unsigned int a6, unsigned int *a7, double a8)
{
  if (a2 == 1)
  {
    goto LABEL_15;
  }

  if (!a3)
  {
    goto LABEL_15;
  }

  v10 = a2;
  v11 = a2 * a2;
  v12 = a2 * a2 + 12 * a2 + 6;
  v13 = a2 - a3;
  v14 = a2 + v12;
  v15 = &a3[v14];
  v16 = &a3[a2 + 3 + v14];
  v17 = v16 & 0xFFFFFFFC;
  if ((v16 & 0xFFFFFFFFFFFFFFFCLL) == 0)
  {
LABEL_15:
    *a5 = 0;
    return;
  }

  v18 = 4 * a2;
  if (a2)
  {
    for (i = 0; i != a2; ++i)
    {
      v20 = 0;
      v21 = &a1[i];
      v22 = 3.4028e38;
      v23 = a2;
      do
      {
        if (*(v21 + v20) < v22)
        {
          v22 = *(v21 + v20);
        }

        v20 += v18;
        --v23;
      }

      while (v23);
      if (v22 > 0.0)
      {
        v24 = 0;
        v25 = a2;
        do
        {
          *(v21 + v24) = *(v21 + v24) - v22;
          v24 += v18;
          --v25;
        }

        while (v25);
      }
    }

    v26 = 0;
    v27 = 0;
    v28 = a2 & 0xFFFFFFF8;
    while (1)
    {
      v29 = (a1 + v26 + 16);
      v30 = (a1 + v26);
      LODWORD(a8) = 2139095039;
      v31 = a2;
      do
      {
        v32 = *v30++;
        v33 = v32;
        if (v32 < *&a8)
        {
          *&a8 = v33;
        }

        --v31;
      }

      while (v31);
      if (*&a8 <= 0.0)
      {
        goto LABEL_18;
      }

      if (a2 > 7)
      {
        v35 = vdupq_lane_s32(*&a8, 0);
        v36 = a2 & 0xFFFFFFF8;
        do
        {
          v37 = vsubq_f32(*v29, v35);
          v29[-1] = vsubq_f32(v29[-1], v35);
          *v29 = v37;
          v29 += 2;
          v36 -= 8;
        }

        while (v36);
        v34 = a2 & 0xFFFFFFF8;
        if (v28 == a2)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v34 = 0;
      }

      v38 = a2 - v34;
      v39 = (&a1[v34] + v26);
      do
      {
        *v39 = *v39 - *&a8;
        ++v39;
        --v38;
      }

      while (v38);
LABEL_18:
      ++v27;
      v26 += v18;
      if (v27 == a2)
      {
        goto LABEL_33;
      }
    }
  }

  v28 = 0;
LABEL_33:
  v40 = v11 + 8 * a2 + v18;
  if (a2 <= 1uLL)
  {
    v41 = 1;
  }

  else
  {
    v41 = a2;
  }

  if (!a2)
  {

    bzero(a3, v40 + 6);
    return;
  }

  v288 = v40 + 6;
  v264 = &a3[a2 + 3 + v14];
  v293 = v28;
  v266 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
  __dst = (&a3[v17 + 3 + v18 - a3] & 0xFFFFFFFFFFFFFFFCLL);
  v268 = &a3[((v17 + v18 + 3) & 0xFFFFFFFC) + 3 + v18 - a3] & 0xFFFFFFFFFFFFFFFCLL;
  v270 = (&a3[4 * v11 + 3 + ((((v17 + v18 + 3) & 0xFFFFFFFC) + v18 + 3) & 0xFFFFFFFC) - a3] & 0xFFFFFFFFFFFFFFFCLL);
  v42 = vdupq_n_s32(a2);
  v299 = a2 & 0xFFFFFFF0;
  v271 = a2 & 0xC;
  v280 = a2 & 0xFFFFFFE0;
  v276 = a2 & 0x1C;
  v297 = v41;
  v43 = a2 < 4;
  v44 = (a2 + 5) * a2;
  v45 = (a2 + 6) * a2;
  v292 = 4 * a2;
  v46 = (a2 + 4) * a2;
  v47 = (a2 + 7) * a2;
  v289 = &a3[v12];
  v265 = 4 * a2;
  v48 = (a3 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v49 = &a3[(v48 + v18 - a3) + 3] & 0xFFFFFFFFFFFFFFFCLL;
  v50 = &a3[((v48 + v18 + 3) & 0xFFFFFFFC) + v18 - a3];
  v51 = &a3[v13 + v11 + ((v48 + v18 + 3) & 0xFFFFFFFC) + v18];
  v286 = &a3[a2 + a2 + v13 + v11 + ((v48 + v18 + 3) & 0xFFFFFFFC) + v18];
  v287 = &a3[v13 + v51];
  v52 = (v18 + ((a3 + 3) & 0xFFFFFFFC) + 3) & 0xFFFFFFFC;
  v53 = v45 - a3 + v52;
  v54 = v53 - (v44 - a3 + v52);
  v55 = (a2 + 13) * a2 + 6 - v53;
  v56 = v12 - (v46 - a3 + v52);
  v57 = &a3[v47 - a3 + v52];
  v59 = &v57[v10] > a5 && v57 < &a5[v10];
  v60 = v54 < 0x10 || a2 < 4;
  v61 = v55 < 0x20 || a2 < 4;
  v284 = v61;
  v285 = v60;
  v62 = v56 < 0x20 || a2 < 4;
  v283 = v62;
  v279 = v43 || v59;
  v300 = &a3[v44 + ((v48 + v18 + 3) & 0xFFFFFFFC) - a3];
  v63 = &a3[v45 + ((v48 + v18 + 3) & 0xFFFFFFFC) - a3];
  v278 = v63 + 7;
  v298 = v10 & 0xFFFFFFFC;
  v277 = v63 + 1;
  v296 = &a3[v14];
  v275 = &a3[v14 + 16];
  v301 = v63;
  v274 = (v63 + 16);
  v281 = &a3[v47 + ((v48 + v18 + 3) & 0xFFFFFFFC) - a3];
  v295 = &a3[v12];
  v272 = &a3[v46 + ((v48 + v18 + 3) & 0xFFFFFFFC) - a3 + 16];
  v273 = &a3[v12 + 16];
  v291 = v42;
  v282 = &a3[v46 + ((v48 + v18 + 3) & 0xFFFFFFFC) - a3];
LABEL_53:
  bzero(a3, v288);
  v66 = a5 + 4;
  v67 = v293;
  if (a2 < 8)
  {
    v68 = 0;
    v69 = a1;
    v71 = v286;
    v70 = v287;
LABEL_57:
    v72 = v10 - v68;
    v73 = &a5[v68];
    do
    {
      *v73++ = a2;
      --v72;
    }

    while (v72);
    goto LABEL_59;
  }

  do
  {
    *(v66 - 1) = v291;
    *v66 = v291;
    v66 += 8;
    v67 -= 8;
  }

  while (v67);
  v68 = v293;
  v69 = a1;
  v71 = v286;
  v70 = v287;
  if (v293 != v10)
  {
    goto LABEL_57;
  }

LABEL_59:
  v74 = 0;
  v75 = 0;
  v76 = 0;
  v77.i64[0] = 0x100000001;
  v77.i64[1] = 0x100000001;
  v78.i64[0] = 0x101010101010101;
  v78.i64[1] = 0x101010101010101;
  do
  {
    v79 = &v50[v75];
    v80 = v49;
    v81 = v10;
    v82 = (v69 + v74);
    do
    {
      if (*v82 > 0.000001)
      {
        *v79 = 1;
      }

      else
      {
        ++*v80;
        ++*(v48 + 4 * v76);
      }

      ++v79;
      ++v80;
      ++v82;
      --v81;
    }

    while (v81);
    ++v76;
    v75 += a2;
    v74 += v292;
  }

  while (v76 != v10);
  v83 = 0;
  v84 = 0;
  while (1)
  {
    if (*(v48 + 4 * v83) == 1)
    {
      v85 = 0;
      v86 = &v50[v83 * a2];
      do
      {
        v87 = v86[v85];
        if (!v86[v85])
        {
          v51[v83] = 1;
          v86[v85] = 2;
          a5[v85] = v83;
          --*(v48 + 4 * v83);
          --*(v49 + 4 * v85);
          v88 = &v50[v85];
          v89 = v83;
          v90 = v10;
          v91 = v48;
          do
          {
            if (v89 && !v88[v87])
            {
              v88[v87] = 3;
              --*(v49 + 4 * v85);
              --*v91;
            }

            v87 += a2;
            ++v91;
            --v89;
            --v90;
          }

          while (v90);
          v84 = 1;
        }

        ++v85;
      }

      while (v85 != v10);
    }

    if (++v83 == v10)
    {
      v92 = 0;
      v93 = v84;
      do
      {
        if (*(v49 + 4 * v92) == 1)
        {
          v94 = 0;
          v95 = 0;
          do
          {
            v96 = &v50[v95 * a2];
            if (!v96[v92])
            {
              v97 = 0;
              v51[v95] = 1;
              v96[v92] = 2;
              a5[v92] = v95;
              --*(v48 + 4 * v95);
              v98 = &v50[v94];
              --*(v49 + 4 * v92);
              do
              {
                if (v92 != v97 && !v98[v97])
                {
                  v98[v97] = 3;
                  --*(v48 + 4 * v95);
                  --*(v49 + 4 * v97);
                }

                ++v97;
              }

              while (v10 != v97);
              v93 = 1;
            }

            ++v95;
            v94 += a2;
          }

          while (v95 != v10);
        }

        ++v92;
      }

      while (v92 != v10);
      v83 = 0;
      v84 = 0;
      if ((v93 & 1) == 0)
      {
        break;
      }
    }
  }

  v99 = 0;
  v100 = 0;
  do
  {
    if (*(v48 + 4 * v99))
    {
      v101 = 0;
      v102 = &v50[v99 * a2];
      v103 = 1;
      do
      {
        if (!v102[v101])
        {
          if (v103)
          {
            v104 = 0;
            v105 = 0;
            v51[v99] = 1;
            v102[v101] = 2;
            a5[v101] = v99;
            v71[v101] = 1;
            --*(v48 + 4 * v99);
            --*(v49 + 4 * v101);
            v106 = &v50[v101];
            do
            {
              if (v99 != v105 && !v106[v104])
              {
                v106[v104] = 3;
                --*(v49 + 4 * v101);
                --*(v48 + 4 * v105);
              }

              ++v105;
              v104 += a2;
            }

            while (v10 != v105);
            v103 = 0;
            v100 = 1;
          }

          else
          {
            v103 = 0;
            v102[v101] = 3;
            --*(v48 + 4 * v99);
            --*(v49 + 4 * v101);
          }
        }

        ++v101;
      }

      while (v101 != v10);
    }

    ++v99;
  }

  while (v99 != v10);
  if (v285)
  {
    v107 = 0;
    v108 = v282;
    goto LABEL_179;
  }

  v109 = v278;
  v111 = v10 & 0xFFFFFFF0;
  v110 = v300;
  v108 = v282;
  if (a2 < 0x10)
  {
    v112 = 0;
    goto LABEL_145;
  }

  do
  {
    v64 = vceqzq_s8(*v110);
    if (v64.i8[0])
    {
      *(v109 - 7) = 1;
      if ((v64.i8[1] & 1) == 0)
      {
        goto LABEL_112;
      }
    }

    else if ((v64.i8[1] & 1) == 0)
    {
LABEL_112:
      if (v64.i8[2])
      {
        goto LABEL_113;
      }

      goto LABEL_129;
    }

    *(v109 - 6) = 1;
    if (v64.i8[2])
    {
LABEL_113:
      *(v109 - 5) = 1;
      if ((v64.i8[3] & 1) == 0)
      {
        goto LABEL_114;
      }

      goto LABEL_130;
    }

LABEL_129:
    if ((v64.i8[3] & 1) == 0)
    {
LABEL_114:
      if (v64.i8[4])
      {
        goto LABEL_115;
      }

      goto LABEL_131;
    }

LABEL_130:
    *(v109 - 4) = 1;
    if (v64.i8[4])
    {
LABEL_115:
      *(v109 - 3) = 1;
      if ((v64.i8[5] & 1) == 0)
      {
        goto LABEL_116;
      }

      goto LABEL_132;
    }

LABEL_131:
    if ((v64.i8[5] & 1) == 0)
    {
LABEL_116:
      if (v64.i8[6])
      {
        goto LABEL_117;
      }

      goto LABEL_133;
    }

LABEL_132:
    *(v109 - 2) = 1;
    if (v64.i8[6])
    {
LABEL_117:
      *(v109 - 1) = 1;
      if ((v64.i8[7] & 1) == 0)
      {
        goto LABEL_118;
      }

      goto LABEL_134;
    }

LABEL_133:
    if ((v64.i8[7] & 1) == 0)
    {
LABEL_118:
      if (v64.i8[8])
      {
        goto LABEL_119;
      }

      goto LABEL_135;
    }

LABEL_134:
    *v109 = 1;
    if (v64.i8[8])
    {
LABEL_119:
      v109[1] = 1;
      if ((v64.i8[9] & 1) == 0)
      {
        goto LABEL_120;
      }

      goto LABEL_136;
    }

LABEL_135:
    if ((v64.i8[9] & 1) == 0)
    {
LABEL_120:
      if (v64.i8[10])
      {
        goto LABEL_121;
      }

      goto LABEL_137;
    }

LABEL_136:
    v109[2] = 1;
    if (v64.i8[10])
    {
LABEL_121:
      v109[3] = 1;
      if ((v64.i8[11] & 1) == 0)
      {
        goto LABEL_122;
      }

      goto LABEL_138;
    }

LABEL_137:
    if ((v64.i8[11] & 1) == 0)
    {
LABEL_122:
      if (v64.i8[12])
      {
        goto LABEL_123;
      }

      goto LABEL_139;
    }

LABEL_138:
    v109[4] = 1;
    if (v64.i8[12])
    {
LABEL_123:
      v109[5] = 1;
      if ((v64.i8[13] & 1) == 0)
      {
        goto LABEL_124;
      }

      goto LABEL_140;
    }

LABEL_139:
    if ((v64.i8[13] & 1) == 0)
    {
LABEL_124:
      if ((v64.i8[14] & 1) == 0)
      {
        goto LABEL_141;
      }

      goto LABEL_125;
    }

LABEL_140:
    v109[6] = 1;
    if ((v64.i8[14] & 1) == 0)
    {
LABEL_141:
      if ((v64.i8[15] & 1) == 0)
      {
        goto LABEL_109;
      }

      goto LABEL_142;
    }

LABEL_125:
    v109[7] = 1;
    if ((v64.i8[15] & 1) == 0)
    {
      goto LABEL_109;
    }

LABEL_142:
    v109[8] = 1;
LABEL_109:
    ++v110;
    v109 += 16;
    v111 -= 16;
  }

  while (v111);
  if (v299 == v10)
  {
    goto LABEL_157;
  }

  v107 = v10 & 0xFFFFFFF0;
  v112 = v107;
  if (!v271)
  {
    goto LABEL_179;
  }

LABEL_145:
  v113 = v112 - (v10 & 0xFFFFFFFC);
  v114 = &v300[v112];
  v115 = &v277[v112];
  while (2)
  {
    v64.i32[0] = *v114;
    *v64.i8 = vceqz_s16(*&vmovl_u8(*v64.i8));
    if (v64.i8[0])
    {
      *(v115 - 1) = 1;
      if ((v64.i8[2] & 1) == 0)
      {
        goto LABEL_149;
      }

LABEL_153:
      *v115 = 1;
      if ((v64.i8[4] & 1) == 0)
      {
        goto LABEL_154;
      }

LABEL_150:
      v115[1] = 1;
      if (v64.i8[6])
      {
        goto LABEL_155;
      }
    }

    else
    {
      if (v64.i8[2])
      {
        goto LABEL_153;
      }

LABEL_149:
      if (v64.i8[4])
      {
        goto LABEL_150;
      }

LABEL_154:
      if (v64.i8[6])
      {
LABEL_155:
        v115[2] = 1;
      }
    }

    ++v114;
    v115 += 4;
    v113 += 4;
    if (v113)
    {
      continue;
    }

    break;
  }

  v107 = v10 & 0xFFFFFFFC;
  if (v298 == v10)
  {
    goto LABEL_157;
  }

LABEL_179:
  v132 = v10 - v107;
  v133 = &v301[v107];
  v134 = &v300[v107];
  do
  {
    if (!*v134++)
    {
      *v133 = 1;
    }

    ++v133;
    --v132;
  }

  while (v132);
LABEL_157:
  v116 = 0;
  v117 = 0;
  do
  {
    if (v70[v116])
    {
      v118 = &v50[v116 * a2];
      v119 = v108;
      v120 = a5;
      v121 = v10;
      v122 = v117;
      do
      {
        v124 = *v118++;
        v123 = v124;
        if ((v124 == 3 || v123 == 0) && !*v119)
        {
          v122 = 1;
          *v119 = 1;
          v126 = *v120;
          if (v126 < a2 && !v70[v126])
          {
            v70[v126] = 1;
          }
        }

        ++v120;
        ++v119;
        --v121;
      }

      while (v121);
    }

    else
    {
      v122 = v117;
    }

    v127 = v116 + 1 == v10;
    v128 = v116 + 1 != v10;
    if (v116 + 1 == v10)
    {
      v116 = 0;
    }

    else
    {
      ++v116;
    }

    v117 = v128 & v122;
  }

  while (!v127 || (v122 & 1) != 0);
  if (v284)
  {
    v129 = 0;
    v130 = 0;
    v131 = v297;
LABEL_192:
    v159 = v10 - v129;
    v160 = &v296[v129];
    v161 = &v301[v129];
    do
    {
      v162 = *v161++;
      *v160++ = v162 == 0;
      if (!v162)
      {
        ++v130;
      }

      --v159;
    }

    while (v159);
  }

  else
  {
    v131 = v297;
    if (a2 >= 0x20)
    {
      v137 = 0uLL;
      v138 = v274;
      v139 = v275;
      v140 = 0uLL;
      v141 = v10 & 0xFFFFFFE0;
      v142 = 0uLL;
      v143 = 0uLL;
      v144 = 0uLL;
      v145 = 0uLL;
      v146 = 0uLL;
      v147 = 0uLL;
      do
      {
        v148 = vceqzq_s8(v138[-1]);
        v149 = vceqzq_s8(*v138);
        v150 = vmovl_u8(*v148.i8);
        v139[-1] = vandq_s8(v148, v78);
        *v139 = vandq_s8(v149, v78);
        v151 = vmovl_high_u8(v148);
        v152 = vmovl_u8(*v149.i8);
        v153 = vmovl_high_u8(v149);
        v143 = vaddq_s32(v143, vandq_s8(vmovl_high_u16(v151), v77));
        v142 = vaddq_s32(v142, vandq_s8(vmovl_u16(*v151.i8), v77));
        v140 = vaddq_s32(v140, vandq_s8(vmovl_high_u16(v150), v77));
        v137 = vaddq_s32(v137, vandq_s8(vmovl_u16(*v150.i8), v77));
        v147 = vaddq_s32(v147, vandq_s8(vmovl_high_u16(v153), v77));
        v146 = vaddq_s32(v146, vandq_s8(vmovl_u16(*v153.i8), v77));
        v145 = vaddq_s32(v145, vandq_s8(vmovl_high_u16(v152), v77));
        v144 = vaddq_s32(v144, vandq_s8(vmovl_u16(*v152.i8), v77));
        v139 += 2;
        v138 += 2;
        v141 -= 32;
      }

      while (v141);
      v65 = vaddq_s32(vaddq_s32(v145, v140), vaddq_s32(v147, v143));
      v64 = vaddq_s32(vaddq_s32(vaddq_s32(v144, v137), vaddq_s32(v146, v142)), v65);
      v130 = vaddvq_s32(v64);
      if (v280 == v10)
      {
        goto LABEL_196;
      }

      v129 = v10 & 0xFFFFFFE0;
      v136 = v129;
      if (!v276)
      {
        goto LABEL_192;
      }
    }

    else
    {
      v130 = 0;
      v136 = 0;
    }

    v64 = v130;
    v154 = v136 - (v10 & 0xFFFFFFFC);
    v155 = &v296[v136];
    v156 = &v301[v136];
    do
    {
      v157 = *v156++;
      v65.i32[0] = v157;
      v158 = vceqz_s16(*&vmovl_u8(*v65.i8));
      *v155 = vuzp1_s8(vand_s8(v158, 0x1000100010001), *v64.i8).u32[0];
      v155 += 4;
      v65 = vandq_s8(vmovl_u16(v158), v77);
      v64 = vaddq_s32(v64, v65);
      v154 += 4;
    }

    while (v154);
    v130 = vaddvq_s32(v64);
    v129 = v10 & 0xFFFFFFFC;
    if (v298 != v10)
    {
      goto LABEL_192;
    }
  }

LABEL_196:
  if (v283)
  {
    v163 = 0;
LABEL_207:
    v189 = v10 - v163;
    v190 = &v295[v163];
    v191 = &v108[v163];
    do
    {
      v192 = *v191++;
      *v190++ = v192;
      if (v192)
      {
        ++v130;
      }

      --v189;
    }

    while (v189);
  }

  else
  {
    if (a2 >= 0x20)
    {
      v165 = 0uLL;
      v166 = v130;
      v167 = v272;
      v168 = v273;
      v169 = v10 & 0xFFFFFFE0;
      v170 = 0uLL;
      v171 = 0uLL;
      v172 = 0uLL;
      v173 = 0uLL;
      v174 = 0uLL;
      v175 = 0uLL;
      do
      {
        v176 = v167[-1];
        v177 = *v167;
        v168[-1] = v176;
        *v168 = v177;
        v178 = vtstq_s8(v176, v176);
        v179 = vmovl_u8(*v178.i8);
        v180 = vmovl_high_u8(v178);
        v181 = vtstq_s8(v177, v177);
        v182 = vmovl_u8(*v181.i8);
        v183 = vmovl_high_u8(v181);
        v171 = vaddq_s32(v171, vandq_s8(vmovl_high_u16(v180), v77));
        v170 = vaddq_s32(v170, vandq_s8(vmovl_u16(*v180.i8), v77));
        v165 = vaddq_s32(v165, vandq_s8(vmovl_high_u16(v179), v77));
        v166 = vaddq_s32(v166, vandq_s8(vmovl_u16(*v179.i8), v77));
        v175 = vaddq_s32(v175, vandq_s8(vmovl_high_u16(v183), v77));
        v174 = vaddq_s32(v174, vandq_s8(vmovl_u16(*v183.i8), v77));
        v173 = vaddq_s32(v173, vandq_s8(vmovl_high_u16(v182), v77));
        v172 = vaddq_s32(v172, vandq_s8(vmovl_u16(*v182.i8), v77));
        v168 += 2;
        v167 += 2;
        v169 -= 32;
      }

      while (v169);
      v65 = vaddq_s32(vaddq_s32(v173, v165), vaddq_s32(v175, v171));
      v64 = vaddq_s32(vaddq_s32(vaddq_s32(v172, v166), vaddq_s32(v174, v170)), v65);
      v130 = vaddvq_s32(v64);
      if (v280 == v10)
      {
        goto LABEL_211;
      }

      v163 = v10 & 0xFFFFFFE0;
      v164 = v163;
      if (!v276)
      {
        goto LABEL_207;
      }
    }

    else
    {
      v164 = 0;
    }

    v64 = v130;
    v184 = v164 - (v10 & 0xFFFFFFFC);
    v185 = &v295[v164];
    v186 = &v108[v164];
    do
    {
      v187 = *v186++;
      v65.i32[0] = v187;
      *v185 = v187;
      v185 += 4;
      v188 = vmovl_u8(*v65.i8).u64[0];
      v65 = vandq_s8(vmovl_u16(vtst_s16(v188, v188)), v77);
      v64 = vaddq_s32(v64, v65);
      v184 += 4;
    }

    while (v184);
    v130 = vaddvq_s32(v64);
    v163 = v10 & 0xFFFFFFFC;
    if (v298 != v10)
    {
      goto LABEL_207;
    }
  }

LABEL_211:
  if (((v130 == a2) & v100) != 1)
  {
    goto LABEL_264;
  }

  if (!v279)
  {
    v194 = a5 + 8;
    v195 = v281;
    v196 = v10 & 0xFFFFFFF0;
    if (a2 < 0x10)
    {
      v197 = 0;
      goto LABEL_252;
    }

    while (1)
    {
      v64 = vtstq_s8(*v195, *v195);
      if (v64.i8[0])
      {
        *(v194 - 8) = a2;
        if ((v64.i8[1] & 1) == 0)
        {
          goto LABEL_219;
        }
      }

      else if ((v64.i8[1] & 1) == 0)
      {
LABEL_219:
        if (v64.i8[2])
        {
          goto LABEL_220;
        }

        goto LABEL_236;
      }

      *(v194 - 7) = a2;
      if (v64.i8[2])
      {
LABEL_220:
        *(v194 - 6) = a2;
        if ((v64.i8[3] & 1) == 0)
        {
          goto LABEL_221;
        }

        goto LABEL_237;
      }

LABEL_236:
      if ((v64.i8[3] & 1) == 0)
      {
LABEL_221:
        if (v64.i8[4])
        {
          goto LABEL_222;
        }

        goto LABEL_238;
      }

LABEL_237:
      *(v194 - 5) = a2;
      if (v64.i8[4])
      {
LABEL_222:
        *(v194 - 4) = a2;
        if ((v64.i8[5] & 1) == 0)
        {
          goto LABEL_223;
        }

        goto LABEL_239;
      }

LABEL_238:
      if ((v64.i8[5] & 1) == 0)
      {
LABEL_223:
        if (v64.i8[6])
        {
          goto LABEL_224;
        }

        goto LABEL_240;
      }

LABEL_239:
      *(v194 - 3) = a2;
      if (v64.i8[6])
      {
LABEL_224:
        *(v194 - 2) = a2;
        if ((v64.i8[7] & 1) == 0)
        {
          goto LABEL_225;
        }

        goto LABEL_241;
      }

LABEL_240:
      if ((v64.i8[7] & 1) == 0)
      {
LABEL_225:
        if (v64.i8[8])
        {
          goto LABEL_226;
        }

        goto LABEL_242;
      }

LABEL_241:
      *(v194 - 1) = a2;
      if (v64.i8[8])
      {
LABEL_226:
        *v194 = a2;
        if ((v64.i8[9] & 1) == 0)
        {
          goto LABEL_227;
        }

        goto LABEL_243;
      }

LABEL_242:
      if ((v64.i8[9] & 1) == 0)
      {
LABEL_227:
        if (v64.i8[10])
        {
          goto LABEL_228;
        }

        goto LABEL_244;
      }

LABEL_243:
      v194[1] = a2;
      if (v64.i8[10])
      {
LABEL_228:
        v194[2] = a2;
        if ((v64.i8[11] & 1) == 0)
        {
          goto LABEL_229;
        }

        goto LABEL_245;
      }

LABEL_244:
      if ((v64.i8[11] & 1) == 0)
      {
LABEL_229:
        if (v64.i8[12])
        {
          goto LABEL_230;
        }

        goto LABEL_246;
      }

LABEL_245:
      v194[3] = a2;
      if (v64.i8[12])
      {
LABEL_230:
        v194[4] = a2;
        if ((v64.i8[13] & 1) == 0)
        {
          goto LABEL_231;
        }

        goto LABEL_247;
      }

LABEL_246:
      if ((v64.i8[13] & 1) == 0)
      {
LABEL_231:
        if (v64.i8[14])
        {
          goto LABEL_232;
        }

        goto LABEL_248;
      }

LABEL_247:
      v194[5] = a2;
      if (v64.i8[14])
      {
LABEL_232:
        v194[6] = a2;
        if (v64.i8[15])
        {
          goto LABEL_249;
        }

        goto LABEL_216;
      }

LABEL_248:
      if (v64.i8[15])
      {
LABEL_249:
        v194[7] = a2;
      }

LABEL_216:
      ++v195;
      v194 += 16;
      v196 -= 16;
      if (!v196)
      {
        if (v299 == v10)
        {
          goto LABEL_264;
        }

        v193 = v10 & 0xFFFFFFF0;
        v197 = v193;
        if (!v271)
        {
          goto LABEL_287;
        }

LABEL_252:
        v198 = v197 - (v10 & 0xFFFFFFFC);
        v199 = &v281[v197];
        v200 = &a5[v197 + 2];
        while (2)
        {
          v64.i32[0] = *v199;
          v201 = vmovl_u8(*v64.i8).u64[0];
          *v64.i8 = vtst_s16(v201, v201);
          if (v64.i8[0])
          {
            *(v200 - 2) = a2;
            if ((v64.i8[2] & 1) == 0)
            {
              goto LABEL_256;
            }

LABEL_260:
            *(v200 - 1) = a2;
            if ((v64.i8[4] & 1) == 0)
            {
              goto LABEL_261;
            }

LABEL_257:
            *v200 = a2;
            if (v64.i8[6])
            {
              goto LABEL_262;
            }
          }

          else
          {
            if (v64.i8[2])
            {
              goto LABEL_260;
            }

LABEL_256:
            if (v64.i8[4])
            {
              goto LABEL_257;
            }

LABEL_261:
            if (v64.i8[6])
            {
LABEL_262:
              v200[1] = a2;
            }
          }

          ++v199;
          v200 += 4;
          v198 += 4;
          if (!v198)
          {
            v193 = v10 & 0xFFFFFFFC;
            if (v298 == v10)
            {
              goto LABEL_264;
            }

            goto LABEL_287;
          }

          continue;
        }
      }
    }
  }

  v193 = 0;
LABEL_287:
  v218 = v10 - v193;
  v219 = &a5[v193];
  v220 = &v281[v193];
  do
  {
    if (*v220++)
    {
      *v219 = a2;
    }

    ++v219;
    --v218;
  }

  while (v218);
LABEL_264:
  if (v130 != a2)
  {
    v202 = 0;
    v203 = 0;
    v204 = 3.4028e38;
    do
    {
      v205 = (v69 + v202);
      v206 = v289;
      v207 = v10;
      do
      {
        v208 = *v206++;
        if (!v208 && !v15[v203] && *v205 < v204 && *v205 > 0.000001)
        {
          v204 = *v205;
        }

        ++v205;
        --v207;
      }

      while (v207);
      ++v203;
      v202 += v292;
    }

    while (v203 != v10);
    v210 = 0;
    v211 = 0;
LABEL_279:
    v212 = (v69 + v210);
    v213 = v289;
    v214 = v131;
    while (1)
    {
      v215 = *v213++;
      v216 = v15[v211];
      if (v215)
      {
        if (!v15[v211])
        {
          goto LABEL_281;
        }

        v217 = v204 + *v212;
      }

      else
      {
        if (v15[v211])
        {
          goto LABEL_281;
        }

        v217 = fmaxf(*v212 - v204, 0.0);
      }

      *v212 = v217;
LABEL_281:
      ++v212;
      if (!--v214)
      {
        ++v211;
        v210 += v292;
        if (v211 != v131)
        {
          goto LABEL_279;
        }

        goto LABEL_53;
      }
    }
  }

  v222 = 0;
  while (a5[v222 / 4] != a2)
  {
    v222 += 4;
    if (v265 == v222)
    {
      return;
    }
  }

  memcpy(__dst, a5, v292);
  bzero(v266, v265);
  v223 = 0;
  v224 = 0;
  do
  {
    v225 = 0;
    v226 = 0;
    do
    {
      if (*(&a1[v226] + v223) <= 0.000001)
      {
        *(v268 + 4 * (v225 + v266[v226]++)) = v224;
      }

      ++v226;
      v225 += a2;
    }

    while (v10 != v226);
    ++v224;
    v223 += v292;
  }

  while (v224 != v10);
  v227 = 0;
  if (a2 < 8)
  {
    v228 = __dst;
    goto LABEL_367;
  }

  v228 = __dst;
  if ((v264 - __dst) < 0x20)
  {
    goto LABEL_367;
  }

  v229 = __dst + 1;
  v230 = v266 + 4;
  v231 = v293;
  while (2)
  {
    v232 = *v229;
    v233 = vmovn_s32(vcgtq_u32(v291, v229[-1]));
    if (v233.i8[0])
    {
      *(v230 - 4) = 1;
      if ((v233.i8[2] & 1) == 0)
      {
        goto LABEL_310;
      }

LABEL_314:
      *(v230 - 3) = 1;
      if ((v233.i8[4] & 1) == 0)
      {
        goto LABEL_315;
      }

LABEL_311:
      *(v230 - 2) = 1;
      if ((v233.i8[6] & 1) == 0)
      {
        goto LABEL_317;
      }

LABEL_316:
      *(v230 - 1) = 1;
      goto LABEL_317;
    }

    if (v233.i8[2])
    {
      goto LABEL_314;
    }

LABEL_310:
    if (v233.i8[4])
    {
      goto LABEL_311;
    }

LABEL_315:
    if (v233.i8[6])
    {
      goto LABEL_316;
    }

LABEL_317:
    v234 = vmovn_s32(vcgtq_u32(v291, v232));
    if (v234.i8[0])
    {
      *v230 = 1;
      if ((v234.i8[2] & 1) == 0)
      {
        goto LABEL_319;
      }

LABEL_323:
      v230[1] = 1;
      if ((v234.i8[4] & 1) == 0)
      {
        goto LABEL_324;
      }

LABEL_320:
      v230[2] = 1;
      if (v234.i8[6])
      {
        goto LABEL_325;
      }
    }

    else
    {
      if (v234.i8[2])
      {
        goto LABEL_323;
      }

LABEL_319:
      if (v234.i8[4])
      {
        goto LABEL_320;
      }

LABEL_324:
      if (v234.i8[6])
      {
LABEL_325:
        v230[3] = 1;
      }
    }

    v229 += 2;
    v230 += 8;
    v231 -= 8;
    if (v231)
    {
      continue;
    }

    break;
  }

  v227 = v293;
  if (v293 != v10)
  {
LABEL_367:
    v259 = v10 - v227;
    v260 = v227;
    v261 = &v266[v227];
    v262 = &v228->u32[v260];
    do
    {
      v263 = *v262++;
      if (v263 < a2)
      {
        *v261 = 1;
      }

      ++v261;
      --v259;
    }

    while (v259);
  }

  bzero(v270, v265);
  v235 = 0;
  while (1)
  {
    do
    {
      while (1)
      {
        bzero(v15, v10);
        v236 = __dst;
        v237 = v10;
        do
        {
          v239 = *v236++;
          v238 = v239;
          if (v239 < a2)
          {
            v15[v238] = 1;
          }

          --v237;
        }

        while (v237);
        v240 = 0;
        v241 = 0;
        v242 = v270;
        while (1)
        {
          v243 = __dst->u32[v241];
          if (v243 >= a2)
          {
            break;
          }

LABEL_334:
          a5[v241++] = v243;
          v240 += v10;
          if (v241 == v297)
          {
            goto LABEL_364;
          }
        }

        v244 = v270[v241];
        v245 = v266[v241];
        if (v244 < v245)
        {
          v246 = v235 + 1;
          v247 = v270[v241];
          do
          {
            v243 = *(v268 + 4 * (v240 + v247));
            if (!v15[v243])
            {
              v15[v243] = 1;
              v270[v241] = v247;
              v235 = v246;
              goto LABEL_334;
            }

            ++v247;
            ++v246;
          }

          while (v245 != v247);
          v235 = v235 + v245 - v244;
        }

        if (v241 < a2)
        {
          bzero(&v270[v241], 4 * (~v241 + a2) + 4);
          v242 = v270;
        }

        if (v235 > 0x1F3)
        {
          break;
        }

        v251 = v241;
        v249 = &v270[v241 - 1];
        while (1)
        {
          v252 = v251 - 1;
          if (v251 < 1)
          {
            break;
          }

          v250 = *v249 + 1;
          if (v250 < v266[v251 - 1])
          {
            goto LABEL_346;
          }

          *v249-- = 0;
          --v251;
          if (!v252)
          {
            goto LABEL_351;
          }
        }
      }
    }

    while (v241 < 1);
    v248 = (v241 - 1);
    v249 = &v242[v248];
    v250 = v242[v248] + 1;
    if (v250 >= v266[v248])
    {
      break;
    }

LABEL_346:
    *v249 = v250;
  }

  *v249 = 0;
LABEL_351:
  bzero(v15, v10);
  v253 = a5;
  v254 = v10;
  do
  {
    v256 = *v253++;
    v255 = v256;
    if (v256 < a2)
    {
      v15[v255] = 1;
    }

    --v254;
  }

  while (v254);
  v257 = 0;
  LODWORD(v258) = 0;
  do
  {
    if (a5[v257] >= a2)
    {
      if (v258 < a2)
      {
        v258 = v258;
        while (v15[v258])
        {
          if (v10 == ++v258)
          {
            LODWORD(v258) = v10;
            break;
          }
        }
      }

      a5[v257] = v258;
      LODWORD(v258) = v258 + 1;
    }

    ++v257;
  }

  while (v257 != v10);
LABEL_364:
  if (a7)
  {
    *a7 = v235;
  }
}

unint64_t acNonMaxSuppression(uint64_t a1, unsigned int a2, _DWORD *a3, unsigned int a4, float a5, float a6)
{
  if (!a2)
  {
    return 0;
  }

  v9 = a1;
  bmHeapsort(a1, a2, 0x20uLL, acDetRectScoreCompare);
  if (a2 >= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = a2;
  }

  if (a4)
  {
    v12 = 0;
    v13 = v9 + 32;
    v61 = v9;
    v14 = -2;
    do
    {
      v15 = v9 + 32 * v12++;
      *a3 = *(v15 + 28);
      if (v12 >= v11)
      {
        v11 = v12;
        goto LABEL_8;
      }

      v16 = v11 + v14;
      v17 = *(v15 + 16);
      v18 = 1;
      v19 = v13;
      v20 = v17;
      v11 = v12;
      while (1)
      {
        if (v20 != *(v19 + 16))
        {
LABEL_53:
          v48 = v11;
          v11 = (v11 + 1);
          v49 = *(v19 + 16);
          v50 = (v9 + 32 * v48);
          *v50 = *v19;
          v50[1] = v49;
          goto LABEL_54;
        }

        if (v20)
        {
          v21 = *(v15 + 4);
          v22 = *(v19 + 4);
          if (*v15 >= *v19)
          {
            v23 = *v15;
          }

          else
          {
            v23 = *v19;
          }

          if (v21 >= v22)
          {
            v24 = *(v15 + 4);
          }

          else
          {
            v24 = *(v19 + 4);
          }

          v25 = *(v15 + 8);
          v26 = *(v15 + 12);
          v27 = *(v19 + 8);
          v28 = *(v19 + 12);
          if (v25 >= v27)
          {
            v29 = *(v19 + 8);
          }

          else
          {
            v29 = *(v15 + 8);
          }

          if (v26 >= v28)
          {
            v30 = *(v19 + 12);
          }

          else
          {
            v30 = *(v15 + 12);
          }

          v31 = v29 - v23;
          v32 = 0.0;
          v33 = fmaxf(v31, 0.0) * fmaxf(v30 - v24, 0.0);
          if (v33 >= 0.00000011921)
          {
            v34 = ((fmaxf(v25 - *v15, 0.0) * fmaxf(v26 - v21, 0.0)) + (fmaxf(v27 - *v19, 0.0) * fmaxf(v28 - v22, 0.0))) - v33;
            if (v34 >= 0.00000011921)
            {
              v32 = v33 / v34;
            }

            else
            {
              v32 = 0.0;
            }
          }

          if (v32 <= a5)
          {
            goto LABEL_53;
          }
        }

        else
        {
          v35 = *(v15 + 8);
          v36 = *(v15 + 12);
          v37 = *(v15 + 4);
          v38 = fmaxf(v35 - *v15, 0.0) * fmaxf(v36 - v37, 0.0);
          v39 = *(v19 + 4);
          if (*v15 >= *v19)
          {
            v40 = *v15;
          }

          else
          {
            v40 = *v19;
          }

          if (v37 >= v39)
          {
            v41 = *(v15 + 4);
          }

          else
          {
            v41 = *(v19 + 4);
          }

          v42 = *(v19 + 8);
          v43 = *(v19 + 12);
          if (v35 >= v42)
          {
            v35 = *(v19 + 8);
          }

          if (v36 >= v43)
          {
            v36 = *(v19 + 12);
          }

          v44 = fmaxf(v35 - v40, 0.0) * fmaxf(v36 - v41, 0.0);
          if (fminf(v38, v44) >= 0.00000011921)
          {
            v45 = v44 / v38;
          }

          else
          {
            v45 = 0.0;
          }

          if (v45 <= a6)
          {
            v46 = 0.0;
            if (v44 >= 0.00000011921)
            {
              v47 = (v38 + (fmaxf(v42 - *v19, 0.0) * fmaxf(v43 - v39, 0.0))) - v44;
              if (v47 >= 0.00000011921)
              {
                v46 = v44 / v47;
              }

              else
              {
                v46 = 0.0;
              }
            }

            if (v46 <= a5)
            {
              goto LABEL_53;
            }
          }
        }

        if (!v17 && *(v19 + 24) > 0.57)
        {
          a3[v18++] = *(v19 + 28);
        }

LABEL_54:
        if (!v16)
        {
          break;
        }

        v20 = *(v15 + 16);
        --v16;
        v19 += 32;
      }

      if (!v17 && v18 >= 2)
      {
        v62 = v14;
        v63 = v12;
        v64 = v13;
        v51 = 0;
        v52 = -3.4028e38;
        v53 = a3 + 1;
        v65 = v18 - 1;
        v54 = v18 - 1;
        do
        {
          v55 = a3[v51];
          v56 = v53;
          v57 = v54;
          do
          {
            v58 = *v56++;
            v59 = sinf((fabs((v55 - v58)) * 3.1416) / 360.0);
            if (v52 <= v59)
            {
              v52 = v59;
            }

            --v57;
          }

          while (v57);
          ++v51;
          --v54;
          ++v53;
        }

        while (v51 != v65);
        v9 = v61;
        if (v52 > 0.22)
        {
          *(v15 + 28) = *(v15 + 28) + 1080.0;
        }

        v12 = v63;
        v13 = v64;
        v14 = v62;
      }

LABEL_8:
      --v14;
      v13 += 32;
    }

    while (v12 < v11);
  }

  return v11;
}

uint64_t acRemoveUpperBodyOverlapBoxes(_OWORD *a1, unsigned int a2, unsigned __int8 *a3, float a4)
{
  if (!a2)
  {
    return 0;
  }

  v4 = a3;
  v7 = a2;
  bzero(a3, a2);
  v8 = 0;
  v22 = a1;
  v9 = a1 + 2;
  v10 = 1;
  do
  {
    v11 = v8 + 1;
    if (v8 + 1 < v7)
    {
      v12 = &v22[2 * v8];
      v13 = v9;
      v14 = v10;
      do
      {
        v15 = *(v12 + 4) == 2 && *(v13 + 4) == 2;
        if (v15 && acDetRectOverlapFirstBoxWithDistance(v12, v13) > a4)
        {
          if (*(v12 + 6) <= *(v13 + 6))
          {
            v16 = v8;
          }

          else
          {
            v16 = v14;
          }

          v4[v16] = 1;
        }

        ++v14;
        v13 += 2;
      }

      while (v7 != v14);
    }

    ++v10;
    v9 += 2;
    ++v8;
  }

  while (v11 != v7);
  result = 0;
  v18 = v22;
  do
  {
    if (!*v4++)
    {
      v20 = v18[1];
      v21 = &v22[2 * result];
      *v21 = *v18;
      v21[1] = v20;
      result = (result + 1);
    }

    v18 += 2;
    --v7;
  }

  while (v7);
  return result;
}

unint64_t acNonMaxSuppressionAnimalHead(uint64_t a1, unint64_t a2, float a3)
{
  v3 = a2;
  if (a2)
  {
    bmHeapsort(a1, a2, 0x20uLL, acDetRectScoreCompare);
    v6 = 0;
    v7 = (a1 + 32);
    v8 = -1;
    do
    {
      v9 = v6 + 1;
      if (v6 + 1 >= v3)
      {
        v3 = v6 + 1;
      }

      else
      {
        v10 = v3 + v8;
        v11 = v7;
        v3 = v6 + 1;
        v12 = (a1 + 32 * v6);
        do
        {
          v16 = v12[2].i32[0];
          if (v16 != v11[2].i32[0])
          {
            goto LABEL_7;
          }

          if ((v16 & 0xFFFFFFFE) == 8)
          {
            v17 = v12[1];
            v18 = vmaxnm_f32(vsub_f32(v17, *v12), 0);
            v19 = vmul_lane_f32(v18, v18, 1);
            v20 = vmaxnm_f32(vsub_f32(vbsl_s8(vcgt_f32(v11[1], v17), v17, v11[1]), vbsl_s8(vcgt_f32(*v11, *v12), *v11, *v12)), 0);
            v21 = vmul_lane_f32(v20, v20, 1);
            v22 = fminf(v19.f32[0], v21.f32[0]);
            LODWORD(v23) = vdiv_f32(v21, v19).u32[0];
            if (v22 < 0.00000011921)
            {
              v23 = 0.0;
            }

            if (v23 <= a3)
            {
LABEL_7:
              v13 = v3;
              v3 = (v3 + 1);
              v14 = *v11[2].f32;
              v15 = (a1 + 32 * v13);
              *v15 = *v11->f32;
              v15[1] = v14;
            }
          }

          v11 += 4;
          --v10;
        }

        while (v10);
      }

      --v8;
      v7 += 4;
      v6 = v9;
    }

    while (v9 < v3);
  }

  return v3;
}

unint64_t acNonMaxSuppressionHead(uint64_t a1, unint64_t a2, float a3)
{
  v3 = a2;
  if (a2)
  {
    bmHeapsort(a1, a2, 0x20uLL, acDetRectScoreCompare);
    v6 = 0;
    v7 = (a1 + 32);
    v8 = -1;
    do
    {
      v9 = v6 + 1;
      if (v6 + 1 >= v3)
      {
        v3 = v6 + 1;
      }

      else
      {
        v10 = v3 + v8;
        v11 = v7;
        v3 = v6 + 1;
        v12 = (a1 + 32 * v6);
        do
        {
          v16 = v12[2].u32[0];
          if (v16 == v11[2].i32[0])
          {
            v17 = v16 > 9;
            v18 = (1 << v16) & 0x302;
            if (v17 || v18 == 0)
            {
              goto LABEL_7;
            }
          }

          v20 = v12[1];
          v21 = vmaxnm_f32(vsub_f32(v20, *v12), 0);
          v22 = vmul_lane_f32(v21, v21, 1);
          v23 = vmaxnm_f32(vsub_f32(vbsl_s8(vcgt_f32(v11[1], v20), v20, v11[1]), vbsl_s8(vcgt_f32(*v11, *v12), *v11, *v12)), 0);
          v24 = vmul_lane_f32(v23, v23, 1);
          v25 = fminf(v22.f32[0], v24.f32[0]);
          LODWORD(v26) = vdiv_f32(v24, v22).u32[0];
          if (v25 < 0.00000011921)
          {
            v26 = 0.0;
          }

          if (v26 <= a3)
          {
LABEL_7:
            v13 = v3;
            v3 = (v3 + 1);
            v14 = *v11[2].f32;
            v15 = (a1 + 32 * v13);
            *v15 = *v11->f32;
            v15[1] = v14;
          }

          v11 += 4;
          --v10;
        }

        while (v10);
      }

      --v8;
      v7 += 4;
      v6 = v9;
    }

    while (v9 < v3);
  }

  return v3;
}

unint64_t acNonMaxSuppressionSmallBox(uint64_t a1, unint64_t a2, float a3)
{
  v3 = a2;
  if (a2)
  {
    bmHeapsort(a1, a2, 0x20uLL, acDetRectScoreCompare);
    v6 = 0;
    v7 = a1 + 32;
    v8 = -1;
    do
    {
      v9 = v6 + 1;
      if (v6 + 1 >= v3)
      {
        v3 = v6 + 1;
      }

      else
      {
        v10 = v3 + v8;
        v11 = v7;
        v3 = v6 + 1;
        v12 = a1 + 32 * v6;
        do
        {
          if (*(v12 + 16) != *(v11 + 16))
          {
            goto LABEL_7;
          }

          v16 = *(v12 + 4);
          v17 = *(v11 + 4);
          if (*v12 >= *v11)
          {
            v18 = *v12;
          }

          else
          {
            v18 = *v11;
          }

          if (v16 >= v17)
          {
            v19 = *(v12 + 4);
          }

          else
          {
            v19 = *(v11 + 4);
          }

          v20 = *(v12 + 8);
          v21 = *(v12 + 12);
          v22 = *(v11 + 8);
          v23 = *(v11 + 12);
          if (v20 >= v22)
          {
            v24 = *(v11 + 8);
          }

          else
          {
            v24 = *(v12 + 8);
          }

          if (v21 >= v23)
          {
            v25 = *(v11 + 12);
          }

          else
          {
            v25 = *(v12 + 12);
          }

          v26 = v24 - v18;
          v27 = 0.0;
          v28 = fmaxf(v26, 0.0) * fmaxf(v25 - v19, 0.0);
          if (v28 >= 0.00000011921)
          {
            v29 = fmaxf(v22 - *v11, 0.0) * fmaxf(v23 - v17, 0.0);
            v30 = fmaxf(v20 - *v12, 0.0) * fmaxf(v21 - v16, 0.0);
            if (v30 >= v29)
            {
              v30 = v29;
            }

            if (v30 >= 0.00000011921)
            {
              v27 = v28 / v30;
            }

            else
            {
              v27 = 0.0;
            }
          }

          if (v27 <= a3)
          {
LABEL_7:
            v13 = v3;
            v3 = (v3 + 1);
            v14 = *(v11 + 16);
            v15 = (a1 + 32 * v13);
            *v15 = *v11;
            v15[1] = v14;
          }

          v11 += 32;
          --v10;
        }

        while (v10);
      }

      --v8;
      v7 += 32;
      v6 = v9;
    }

    while (v9 < v3);
  }

  return v3;
}

unint64_t acNonMaxSuppressionFirstBox(uint64_t a1, unint64_t a2, float a3)
{
  v3 = a2;
  if (a2)
  {
    bmHeapsort(a1, a2, 0x20uLL, acDetRectScoreCompare);
    v6 = 0;
    v7 = (a1 + 32);
    v8 = -1;
    do
    {
      v9 = v6 + 1;
      if (v6 + 1 >= v3)
      {
        v3 = v6 + 1;
      }

      else
      {
        v10 = v3 + v8;
        v11 = v7;
        v3 = v6 + 1;
        v12 = (a1 + 32 * v6);
        do
        {
          if (v12[2].i32[0] != v11[2].i32[0])
          {
            goto LABEL_7;
          }

          v16 = v12[1];
          v17 = vmaxnm_f32(vsub_f32(v16, *v12), 0);
          v18 = vmul_lane_f32(v17, v17, 1);
          v19 = vmaxnm_f32(vsub_f32(vbsl_s8(vcgt_f32(v11[1], v16), v16, v11[1]), vbsl_s8(vcgt_f32(*v11, *v12), *v11, *v12)), 0);
          v20 = vmul_lane_f32(v19, v19, 1);
          v21 = fminf(v18.f32[0], v20.f32[0]);
          LODWORD(v22) = vdiv_f32(v20, v18).u32[0];
          if (v21 < 0.00000011921)
          {
            v22 = 0.0;
          }

          if (v22 <= a3)
          {
LABEL_7:
            v13 = v3;
            v3 = (v3 + 1);
            v14 = *v11[2].f32;
            v15 = (a1 + 32 * v13);
            *v15 = *v11->f32;
            v15[1] = v14;
          }

          v11 += 4;
          --v10;
        }

        while (v10);
      }

      --v8;
      v7 += 4;
      v6 = v9;
    }

    while (v9 < v3);
  }

  return v3;
}

uint64_t acRemoveOverlapBoxes(_OWORD *a1, unsigned int a2, unsigned __int8 *a3, float a4)
{
  if (!a2)
  {
    return 0;
  }

  v4 = a3;
  v7 = a2;
  bzero(a3, a2);
  v8 = 0;
  v9 = (a1 + 2);
  v10 = 1;
  do
  {
    v11 = v8 + 1;
    if (v8 + 1 < v7)
    {
      v12 = &a1[2 * v8];
      v13 = v9;
      v14 = v10;
      do
      {
        v15 = v12[1];
        v16 = v13[1];
        if (*v12 >= *v13)
        {
          v17 = *v12;
        }

        else
        {
          v17 = *v13;
        }

        if (v15 >= v16)
        {
          v18 = v12[1];
        }

        else
        {
          v18 = v13[1];
        }

        v19 = v12[2];
        v20 = v12[3];
        v21 = v13[2];
        v22 = v13[3];
        if (v19 >= v21)
        {
          v23 = v13[2];
        }

        else
        {
          v23 = v12[2];
        }

        if (v20 >= v22)
        {
          v24 = v13[3];
        }

        else
        {
          v24 = v12[3];
        }

        v25 = v23 - v17;
        v26 = 0.0;
        v27 = fmaxf(v25, 0.0) * fmaxf(v24 - v18, 0.0);
        if (v27 >= 0.00000011921)
        {
          v28 = ((fmaxf(v19 - *v12, 0.0) * fmaxf(v20 - v15, 0.0)) + (fmaxf(v21 - *v13, 0.0) * fmaxf(v22 - v16, 0.0))) - v27;
          if (v28 >= 0.00000011921)
          {
            v26 = v27 / v28;
          }

          else
          {
            v26 = 0.0;
          }
        }

        if (v26 > a4)
        {
          if (v12[6] <= v13[6])
          {
            v29 = v8;
          }

          else
          {
            v29 = v14;
          }

          v4[v29] = 1;
        }

        ++v14;
        v13 += 8;
      }

      while (v7 != v14);
    }

    ++v10;
    v9 += 8;
    ++v8;
  }

  while (v11 != v7);
  result = 0;
  v31 = a1;
  do
  {
    if (!*v4++)
    {
      v33 = v31[1];
      v34 = &a1[2 * result];
      *v34 = *v31;
      v34[1] = v33;
      result = (result + 1);
    }

    v31 += 2;
    --v7;
  }

  while (v7);
  return result;
}

uint64_t acRemoveHeadOverlapBoxes(_OWORD *a1, unsigned int a2, unsigned __int8 *a3, float a4)
{
  if (!a2)
  {
    return 0;
  }

  v4 = a3;
  v7 = a2;
  bzero(a3, a2);
  v8 = 0;
  v9 = a1 + 14;
  v10 = 1;
  do
  {
    v11 = v8 + 1;
    if (v8 + 1 < v7)
    {
      v12 = &a1[2 * v8];
      v13 = v9;
      v14 = v10;
      do
      {
        v15 = v12[2].u32[0];
        v16 = v15 != *(v13 - 2) || v15 > 9;
        v17 = (1 << v15) & 0x302;
        if (!v16 && v17 != 0)
        {
          v19 = v12[1];
          v20 = vmaxnm_f32(vsub_f32(v19, *v12), 0);
          v21 = vmul_lane_f32(v20, v20, 1);
          v22 = vmaxnm_f32(vsub_f32(vbsl_s8(vcgt_f32(*(v13 - 4), v19), v19, *(v13 - 4)), vbsl_s8(vcgt_f32(*(v13 - 6), *v12), *(v13 - 6), *v12)), 0);
          v23 = vmul_lane_f32(v22, v22, 1);
          v24 = fminf(v21.f32[0], v23.f32[0]);
          LODWORD(v25) = vdiv_f32(v23, v21).u32[0];
          if (v24 < 0.00000011921)
          {
            v25 = 0.0;
          }

          if (v25 > a4)
          {
            if (v12[3].f32[0] <= *v13)
            {
              v26 = v8;
            }

            else
            {
              v26 = v14;
            }

            v4[v26] = 1;
          }
        }

        ++v14;
        v13 += 8;
      }

      while (v7 != v14);
    }

    ++v10;
    v9 += 8;
    ++v8;
  }

  while (v11 != v7);
  result = 0;
  v28 = a1;
  do
  {
    if (!*v4++)
    {
      v30 = v28[1];
      v31 = &a1[2 * result];
      *v31 = *v28;
      v31[1] = v30;
      result = (result + 1);
    }

    v28 += 2;
    --v7;
  }

  while (v7);
  return result;
}

BOOL acCheckOverlapBox(uint64_t a1, unsigned int a2, uint64_t a3, float a4, float a5)
{
  if (a2)
  {
    v5 = a1 + 8;
    v6 = 1;
    v7 = a2;
    v8 = 1;
    while (1)
    {
      if (*(v5 + 8))
      {
        v9 = *(v5 - 8);
        v10 = *a3;
        v11 = *(a3 + 4);
        v12 = *(a3 + 8);
        v13 = *(a3 + 12);
      }

      else
      {
        v9 = *(v5 - 8);
        v10 = *a3;
        v11 = *(a3 + 4);
        v12 = *(a3 + 8);
        v13 = *(a3 + 12);
        if (!*(a3 + 16))
        {
          if (v9 >= v10)
          {
            v14 = *(v5 - 8);
          }

          else
          {
            v14 = *a3;
          }

          v15 = *(v5 - 4);
          v16 = *v5;
          if (v15 >= v11)
          {
            v17 = *(v5 - 4);
          }

          else
          {
            v17 = *(a3 + 4);
          }

          if (v16 >= v12)
          {
            v18 = *(a3 + 8);
          }

          else
          {
            v18 = *v5;
          }

          v19 = *(v5 + 4);
          if (v19 >= v13)
          {
            v20 = *(a3 + 12);
          }

          else
          {
            v20 = *(v5 + 4);
          }

          v21 = v18 - v14;
          v22 = 0.0;
          v23 = fmaxf(v21, 0.0) * fmaxf(v20 - v17, 0.0);
          if (v23 >= 0.00000011921)
          {
            v24 = fmaxf(v13 - v11, 0.0);
            v25 = fmaxf(v12 - v10, 0.0);
            v26 = fmaxf(v16 - v9, 0.0) * fmaxf(v19 - v15, 0.0);
            if (v26 >= (v25 * v24))
            {
              v26 = v25 * v24;
            }

            if (v26 >= 0.00000011921)
            {
              v22 = v23 / v26;
            }

            else
            {
              v22 = 0.0;
            }
          }

          if (v22 > a4)
          {
            return v8;
          }
        }
      }

      if (v9 >= v10)
      {
        v27 = v9;
      }

      else
      {
        v27 = v10;
      }

      v28 = *(v5 - 4);
      v29 = *v5;
      if (v28 >= v11)
      {
        v30 = *(v5 - 4);
      }

      else
      {
        v30 = v11;
      }

      if (v29 >= v12)
      {
        v31 = v12;
      }

      else
      {
        v31 = *v5;
      }

      v32 = *(v5 + 4);
      if (v32 >= v13)
      {
        v33 = v13;
      }

      else
      {
        v33 = *(v5 + 4);
      }

      v34 = v31 - v27;
      v35 = 0.0;
      v36 = fmaxf(v34, 0.0) * fmaxf(v33 - v30, 0.0);
      if (v36 >= 0.00000011921)
      {
        v37 = ((fmaxf(v29 - v9, 0.0) * fmaxf(v32 - v28, 0.0)) + (fmaxf(v12 - v10, 0.0) * fmaxf(v13 - v11, 0.0))) - v36;
        if (v37 >= 0.00000011921)
        {
          v35 = v36 / v37;
        }

        else
        {
          v35 = 0.0;
        }
      }

      if (v35 <= a5)
      {
        v8 = v6 < a2;
        v5 += 32;
        ++v6;
        if (--v7)
        {
          continue;
        }
      }

      return v8;
    }
  }

  return 0;
}

BOOL acCheckHeadOverlapFace(float32x2_t *a1, unsigned int a2, float32x2_t *a3, float a4)
{
  if (!a2)
  {
    return 0;
  }

  v4 = a1 + 1;
  v5 = 1;
  v6 = a2;
  v7 = 1;
  do
  {
    v8 = v4[-1];
    v9 = vmaxnm_f32(vsub_f32(*v4, v8), 0);
    v10 = vmul_lane_f32(v9, v9, 1);
    v11 = vmaxnm_f32(vsub_f32(vbsl_s8(vcgt_f32(a3[1], *v4), *v4, a3[1]), vbsl_s8(vcgt_f32(*a3, v8), *a3, v8)), 0);
    v12 = vmul_lane_f32(v11, v11, 1);
    v8.f32[0] = fminf(v10.f32[0], v12.f32[0]);
    LODWORD(v13) = vdiv_f32(v12, v10).u32[0];
    if (v8.f32[0] < 0.00000011921)
    {
      v13 = 0.0;
    }

    if (v13 > a4)
    {
      break;
    }

    v7 = v5 < a2;
    v4 += 4;
    ++v5;
    --v6;
  }

  while (v6);
  return v7;
}

BOOL acCheckOverlapBoxNormal(uint64_t a1, unsigned int a2, float *a3, float a4)
{
  if (!a2)
  {
    return 0;
  }

  v4 = a3[1];
  v5 = a3[2];
  v6 = a3[3];
  v7 = fmaxf(v5 - *a3, 0.0) * fmaxf(v6 - v4, 0.0);
  v8 = (a1 + 8);
  v9 = 1;
  v10 = a2;
  v11 = 1;
  do
  {
    v12 = *(v8 - 2);
    v13 = *(v8 - 1);
    if (v12 >= *a3)
    {
      v14 = *(v8 - 2);
    }

    else
    {
      v14 = *a3;
    }

    if (v13 >= v4)
    {
      v15 = *(v8 - 1);
    }

    else
    {
      v15 = a3[1];
    }

    v16 = v8[1];
    if (*v8 >= v5)
    {
      v17 = a3[2];
    }

    else
    {
      v17 = *v8;
    }

    if (v16 >= v6)
    {
      v18 = a3[3];
    }

    else
    {
      v18 = v8[1];
    }

    v19 = fmaxf(v17 - v14, 0.0) * fmaxf(v18 - v15, 0.0);
    v20 = 0.0;
    if (v19 >= 0.00000011921)
    {
      v21 = ((fmaxf(*v8 - v12, 0.0) * fmaxf(v16 - v13, 0.0)) + v7) - v19;
      if (v21 >= 0.00000011921)
      {
        v20 = v19 / v21;
      }

      else
      {
        v20 = 0.0;
      }
    }

    if (v20 > a4)
    {
      break;
    }

    v11 = v9 < a2;
    v8 += 8;
    ++v9;
    --v10;
  }

  while (v10);
  return v11;
}

uint64_t acNMSFaceHead(float32x2_t *a1, unsigned int a2, __int128 *a3, unsigned int *a4, float a5)
{
  v5 = *a4;
  *a4 = 0;
  if (v5)
  {
    if (a2)
    {
      v6 = 0;
      for (i = 0; i != v5; ++i)
      {
        v8 = &a3[2 * i];
        v9 = 1;
        v10 = a2;
        v11 = a1 + 1;
        v12 = 1;
        do
        {
          v13 = v11[-1];
          v14 = vmaxnm_f32(vsub_f32(*v11, v13), 0);
          v15 = vmul_lane_f32(v14, v14, 1);
          v16 = vmaxnm_f32(vsub_f32(vbsl_s8(vcgt_f32(v8[1], *v11), *v11, v8[1]), vbsl_s8(vcgt_f32(*v8, v13), *v8, v13)), 0);
          v17 = vmul_lane_f32(v16, v16, 1);
          v13.f32[0] = fminf(v15.f32[0], v17.f32[0]);
          LODWORD(v18) = vdiv_f32(v17, v15).u32[0];
          if (v13.f32[0] < 0.00000011921)
          {
            v18 = 0.0;
          }

          if (v18 > a5)
          {
            break;
          }

          v12 = v9 < a2;
          v11 += 4;
          ++v9;
          --v10;
        }

        while (v10);
        if (!v12)
        {
          v19 = &a3[2 * v6];
          v20 = *v8[2].f32;
          *v19 = *v8->f32;
          v19[1] = v20;
          v6 = *a4 + 1;
          *a4 = v6;
        }
      }
    }

    else
    {
      v21 = 0;
      v22 = a3;
      do
      {
        v23 = &a3[2 * v21];
        v24 = *v22;
        v25 = v22[1];
        v22 += 2;
        *v23 = v24;
        v23[1] = v25;
        v21 = *a4 + 1;
        *a4 = v21;
        --v5;
      }

      while (v5);
    }
  }

  return 1;
}

uint64_t acClassASuppressB(float32x2_t *a1, unsigned int a2, __int128 *a3, unsigned int *a4, float a5)
{
  v5 = *a4;
  *a4 = 0;
  if (v5)
  {
    if (a2)
    {
      v6 = 0;
      for (i = 0; i != v5; ++i)
      {
        v8 = &a3[2 * i];
        v9 = 1;
        v10 = a2;
        v11 = a1 + 1;
        v12 = 1;
        do
        {
          v13 = v11[-1];
          v14 = vmaxnm_f32(vsub_f32(*v11, v13), 0);
          v15 = vmul_lane_f32(v14, v14, 1);
          v16 = vmaxnm_f32(vsub_f32(vbsl_s8(vcgt_f32(v8[1], *v11), *v11, v8[1]), vbsl_s8(vcgt_f32(*v8, v13), *v8, v13)), 0);
          v17 = vmul_lane_f32(v16, v16, 1);
          v13.f32[0] = fminf(v15.f32[0], v17.f32[0]);
          LODWORD(v18) = vdiv_f32(v17, v15).u32[0];
          if (v13.f32[0] < 0.00000011921)
          {
            v18 = 0.0;
          }

          if (v18 > a5)
          {
            break;
          }

          v12 = v9 < a2;
          v11 += 4;
          ++v9;
          --v10;
        }

        while (v10);
        if (!v12)
        {
          v19 = &a3[2 * v6];
          v20 = *v8[2].f32;
          *v19 = *v8->f32;
          v19[1] = v20;
          v6 = *a4 + 1;
          *a4 = v6;
        }
      }
    }

    else
    {
      v21 = 0;
      v22 = a3;
      do
      {
        v23 = &a3[2 * v21];
        v24 = *v22;
        v25 = v22[1];
        v22 += 2;
        *v23 = v24;
        v23[1] = v25;
        v21 = *a4 + 1;
        *a4 = v21;
        --v5;
      }

      while (v5);
    }
  }

  return 1;
}

unint64_t acNonMaxSuppressionHand(uint64_t a1, unint64_t a2, float a3, float a4)
{
  v4 = a2;
  if (a2)
  {
    bmHeapsort(a1, a2, 0x20uLL, acDetRectScoreCompare);
    v8 = 0;
    v9 = a1 + 32;
    v10 = -1;
    while (1)
    {
      v11 = v8 + 1;
      if (v8 + 1 < v4)
      {
        break;
      }

      v4 = v8 + 1;
LABEL_4:
      --v10;
      v9 += 32;
      v8 = v11;
      if (v11 >= v4)
      {
        return v4;
      }
    }

    v12 = v4 + v10;
    v13 = v9;
    v4 = v8 + 1;
    v14 = a1 + 32 * v8;
    while (1)
    {
      if (*(v14 + 16) == *(v13 + 16))
      {
        v18 = *(v14 + 4);
        v19 = *(v13 + 4);
        if (*v14 >= *v13)
        {
          v20 = *v14;
        }

        else
        {
          v20 = *v13;
        }

        if (v18 >= v19)
        {
          v21 = *(v14 + 4);
        }

        else
        {
          v21 = *(v13 + 4);
        }

        v22 = *(v14 + 8);
        v23 = *(v14 + 12);
        v24 = *(v13 + 8);
        v25 = *(v13 + 12);
        if (v22 >= v24)
        {
          v26 = *(v13 + 8);
        }

        else
        {
          v26 = *(v14 + 8);
        }

        if (v23 >= v25)
        {
          v27 = *(v13 + 12);
        }

        else
        {
          v27 = *(v14 + 12);
        }

        v28 = fmaxf(v26 - v20, 0.0) * fmaxf(v27 - v21, 0.0);
        if (v28 >= 0.00000011921)
        {
          v29 = fmaxf(v24 - *v13, 0.0) * fmaxf(v25 - v19, 0.0);
          v30 = fmaxf(v22 - *v14, 0.0) * fmaxf(v23 - v18, 0.0);
          v31 = (v30 + v29) - v28;
          if (v31 >= 0.00000011921)
          {
            v32 = v28 / v31;
          }

          else
          {
            v32 = 0.0;
          }

          if (v32 > a3)
          {
            goto LABEL_8;
          }

          if (v30 < v29)
          {
            v29 = v30;
          }

          v33 = v29 >= 0.00000011921 ? v28 / v29 : 0.0;
          if (v33 > a4)
          {
            goto LABEL_8;
          }
        }

        else if (a3 < 0.0 || a4 < 0.0)
        {
          goto LABEL_8;
        }
      }

      v15 = v4;
      v4 = (v4 + 1);
      v16 = *(v13 + 16);
      v17 = (a1 + 32 * v15);
      *v17 = *v13;
      v17[1] = v16;
LABEL_8:
      v13 += 32;
      if (!--v12)
      {
        goto LABEL_4;
      }
    }
  }

  return v4;
}

unint64_t acNonMaxSuppressionHandIntra(uint64_t a1, unint64_t a2, char a3, _OWORD *a4, int a5, int a6, float a7, float a8, float a9)
{
  v9 = a2;
  if (a2)
  {
    bmHeapsort(a1, a2, 0x20uLL, acDetRectScoreCompare);
    v18 = 0;
    if (a3)
    {
      v19 = 0;
      v20 = -1;
      while (1)
      {
        v21 = v19 + 1;
        if (v19 + 1 >= v9)
        {
          v9 = v19 + 1;
          goto LABEL_5;
        }

        v22 = 0;
        v23 = v9 + v20;
        v24 = v18;
        v9 = v19 + 1;
        v25 = (a1 + 32 * v19);
        do
        {
          v31 = (a1 + v24);
          v32 = (a1 + v24 + 32);
          if (v25[2].i32[0] != *(a1 + v24 + 48))
          {
LABEL_8:
            v26 = v9;
            v9 = (v9 + 1);
            v27 = a1;
            goto LABEL_9;
          }

          v33 = v25->f32[1];
          if (v25->f32[0] >= *v32)
          {
            v34 = v25->f32[0];
          }

          else
          {
            v34 = *v32;
          }

          v35 = v31[9];
          v36 = v31[10];
          if (v33 >= v35)
          {
            v37 = v25->f32[1];
          }

          else
          {
            v37 = v31[9];
          }

          v38 = v25[1].f32[0];
          v39 = v25[1].f32[1];
          if (v38 >= v36)
          {
            v40 = v31[10];
          }

          else
          {
            v40 = v25[1].f32[0];
          }

          v41 = v31[11];
          if (v39 >= v41)
          {
            v42 = v31[11];
          }

          else
          {
            v42 = v25[1].f32[1];
          }

          v43 = fmaxf(v40 - v34, 0.0) * fmaxf(v42 - v37, 0.0);
          if (v43 >= 0.00000011921)
          {
            v44 = fmaxf(v36 - *v32, 0.0) * fmaxf(v41 - v35, 0.0);
            v45 = fmaxf(v38 - v25->f32[0], 0.0) * fmaxf(v39 - v33, 0.0);
            v46 = (v45 + v44) - v43;
            if (v46 >= 0.00000011921)
            {
              v47 = v43 / v46;
            }

            else
            {
              v47 = 0.0;
            }

            if (v47 <= a7)
            {
              if (v45 < v44)
              {
                v44 = v45;
              }

              v48 = v44 >= 0.00000011921 ? v43 / v44 : 0.0;
              if (v48 <= a8)
              {
                goto LABEL_8;
              }
            }
          }

          else if (a7 >= 0.0 && a8 >= 0.0)
          {
            goto LABEL_8;
          }

          v26 = v22++;
          v27 = a4;
LABEL_9:
          v28 = *v32;
          v29 = *(a1 + v24 + 48);
          v30 = &v27[2 * v26];
          *v30 = v28;
          v30[1] = v29;
          v24 += 32;
          --v23;
        }

        while (v23);
        if (v22 >= 2)
        {
          v49 = vsub_f32(v25[1], *v25);
          if ((vmul_lane_f32(v49, v49, 1).f32[0] / (a6 * a5)) < a9)
          {
            v50 = *a4;
            v51 = v22 - 1;
            v52 = (a4 + 2);
            do
            {
              v53 = *v52;
              v52 += 2;
              v54.i64[0] = v53.i64[0];
              v55.i64[0] = v50.i64[0];
              v55.i64[1] = v53.i64[1];
              v54.i64[1] = v50.i64[1];
              v50 = vbslq_s8(vcgtq_f32(v53, v50), v55, v54);
              --v51;
            }

            while (v51);
            *v25->f32 = v50;
          }
        }

LABEL_5:
        --v20;
        v18 += 32;
        v19 = v21;
        if (v21 >= v9)
        {
          return v9;
        }
      }
    }

    v56 = 0;
    v57 = -1;
    while (1)
    {
      v58 = v56 + 1;
      if (v56 + 1 < v9)
      {
        break;
      }

      v9 = v56 + 1;
LABEL_45:
      --v57;
      v18 += 32;
      v56 = v58;
      if (v58 >= v9)
      {
        return v9;
      }
    }

    v59 = 0;
    v60 = v9 + v57;
    v61 = v18;
    v9 = v56 + 1;
    v62 = a1 + 32 * v56;
    while (1)
    {
      v68 = (a1 + v61);
      v69 = (a1 + v61 + 32);
      if (*(v62 + 16) == *(a1 + v61 + 48))
      {
        v70 = *(v62 + 4);
        if (*v62 >= *v69)
        {
          v71 = *v62;
        }

        else
        {
          v71 = *v69;
        }

        v72 = v68[9];
        v73 = v68[10];
        if (v70 >= v72)
        {
          v74 = *(v62 + 4);
        }

        else
        {
          v74 = v68[9];
        }

        v75 = *(v62 + 8);
        v76 = *(v62 + 12);
        if (v75 >= v73)
        {
          v77 = v68[10];
        }

        else
        {
          v77 = *(v62 + 8);
        }

        v78 = v68[11];
        if (v76 >= v78)
        {
          v79 = v68[11];
        }

        else
        {
          v79 = *(v62 + 12);
        }

        v80 = fmaxf(v77 - v71, 0.0) * fmaxf(v79 - v74, 0.0);
        if (v80 >= 0.00000011921)
        {
          v81 = fmaxf(v73 - *v69, 0.0) * fmaxf(v78 - v72, 0.0);
          v82 = fmaxf(v75 - *v62, 0.0) * fmaxf(v76 - v70, 0.0);
          v83 = (v82 + v81) - v80;
          if (v83 >= 0.00000011921)
          {
            v84 = v80 / v83;
          }

          else
          {
            v84 = 0.0;
          }

          if (v84 > a7)
          {
            goto LABEL_77;
          }

          if (v82 < v81)
          {
            v81 = v82;
          }

          v85 = v81 >= 0.00000011921 ? v80 / v81 : 0.0;
          if (v85 > a8)
          {
LABEL_77:
            v63 = v59++;
            v64 = a4;
            goto LABEL_49;
          }
        }

        else if (a7 < 0.0 || a8 < 0.0)
        {
          goto LABEL_77;
        }
      }

      v63 = v9;
      v9 = (v9 + 1);
      v64 = a1;
LABEL_49:
      v65 = *v69;
      v66 = *(a1 + v61 + 48);
      v67 = &v64[2 * v63];
      *v67 = v65;
      v67[1] = v66;
      v61 += 32;
      if (!--v60)
      {
        goto LABEL_45;
      }
    }
  }

  return v9;
}

unint64_t acNonMaxSuppressionLowLogitFbody(uint64_t a1, unint64_t a2, float a3, float a4)
{
  v4 = a2;
  if (a2)
  {
    bmHeapsort(a1, a2, 0x20uLL, acDetRectSizeCompare);
    v8 = 0;
    v9 = a1 + 32;
    v10 = -1;
    do
    {
      v11 = v8 + 1;
      if (v8 + 1 >= v4)
      {
        v4 = v8 + 1;
      }

      else
      {
        v12 = v4 + v10;
        v13 = v9;
        v4 = v8 + 1;
        v14 = a1 + 32 * v8;
        do
        {
          v18 = *(v14 + 16);
          if (v18 != *(v13 + 16))
          {
            goto LABEL_7;
          }

          if (v18 == 11)
          {
            v19 = *(v14 + 8);
            v20 = *(v14 + 12);
            v21 = *(v14 + 4);
            v22 = fmaxf(v19 - *v14, 0.0) * fmaxf(v20 - v21, 0.0);
            v23 = *(v13 + 4);
            if (*v14 >= *v13)
            {
              v24 = *v14;
            }

            else
            {
              v24 = *v13;
            }

            if (v21 >= v23)
            {
              v25 = *(v14 + 4);
            }

            else
            {
              v25 = *(v13 + 4);
            }

            v26 = *(v13 + 8);
            v27 = *(v13 + 12);
            if (v19 >= v26)
            {
              v19 = *(v13 + 8);
            }

            if (v20 >= v27)
            {
              v20 = *(v13 + 12);
            }

            v28 = fmaxf(v19 - v24, 0.0) * fmaxf(v20 - v25, 0.0);
            v29 = fminf(v22, v28) >= 0.00000011921 ? v28 / v22 : 0.0;
            if (v29 <= a4)
            {
              v30 = 0.0;
              if (v28 >= 0.00000011921)
              {
                v31 = (v22 + (fmaxf(v26 - *v13, 0.0) * fmaxf(v27 - v23, 0.0))) - v28;
                if (v31 >= 0.00000011921)
                {
                  v30 = v28 / v31;
                }

                else
                {
                  v30 = 0.0;
                }
              }

              if (v30 <= a3)
              {
LABEL_7:
                v15 = v4;
                v4 = (v4 + 1);
                v16 = *(v13 + 16);
                v17 = (a1 + 32 * v15);
                *v17 = *v13;
                v17[1] = v16;
              }
            }
          }

          v13 += 32;
          --v12;
        }

        while (v12);
      }

      --v10;
      v9 += 32;
      v8 = v11;
    }

    while (v11 < v4);
  }

  return v4;
}

BOOL acCheckOverlapSecondFullBody(float32x2_t *a1, unsigned int a2, float32x2_t *a3, float a4, float32_t a5)
{
  if (!a2)
  {
    return 0;
  }

  v5 = 1;
  v6 = a2;
  v7 = 1;
  do
  {
    if (a1[3].f32[0] >= a5)
    {
      v8 = a3[1];
      v9 = vmaxnm_f32(vsub_f32(v8, *a3), 0);
      v10 = vmul_lane_f32(v9, v9, 1);
      v11 = vmaxnm_f32(vsub_f32(vbsl_s8(vcgt_f32(v8, a1[1]), a1[1], v8), vbsl_s8(vcgt_f32(*a3, *a1), *a3, *a1)), 0);
      v12 = vmul_lane_f32(v11, v11, 1);
      v13 = fminf(v10.f32[0], v12.f32[0]);
      LODWORD(v14) = vdiv_f32(v12, v10).u32[0];
      if (v13 < 0.00000011921)
      {
        v14 = 0.0;
      }

      if (v14 > a4)
      {
        break;
      }
    }

    v7 = v5++ < a2;
    a1 += 4;
    --v6;
  }

  while (v6);
  return v7;
}

float32x2_t *acFbodyHlogitSuppressLlogit(float32x2_t *result, unsigned int a2, uint64_t a3, unsigned int *a4, float a5, float32_t a6)
{
  v6 = *a4;
  if (v6)
  {
    if (a2)
    {
      v7 = 0;
      v8 = *a4;
      LODWORD(v6) = 0;
      do
      {
        v9 = a3 + 32 * v7;
        v10 = *(v9 + 8);
        v11 = vmaxnm_f32(vsub_f32(v10, *v9), 0);
        v12 = vmul_lane_f32(v11, v11, 1);
        v13 = 1;
        v14 = result;
        v15 = a2;
        v16 = 1;
        do
        {
          if (v14[3].f32[0] >= a6)
          {
            v17 = vmaxnm_f32(vsub_f32(vbsl_s8(vcgt_f32(v10, v14[1]), v14[1], v10), vbsl_s8(vcgt_f32(*v9, *v14), *v9, *v14)), 0);
            v18 = vmul_lane_f32(v17, v17, 1);
            v19 = fminf(v12.f32[0], v18.f32[0]);
            LODWORD(v20) = vdiv_f32(v18, v12).u32[0];
            if (v19 < 0.00000011921)
            {
              v20 = 0.0;
            }

            if (v20 > a5)
            {
              break;
            }
          }

          v16 = v13++ < a2;
          v14 += 4;
          --v15;
        }

        while (v15);
        if (!v16)
        {
          v21 = (a3 + 32 * v6);
          v22 = *(v9 + 16);
          *v21 = *v9;
          v21[1] = v22;
          LODWORD(v6) = v6 + 1;
          v8 = *a4;
        }

        ++v7;
      }

      while (v7 < v8);
    }

    else
    {
      if (v6 == 1)
      {
        v23 = 0;
      }

      else
      {
        v23 = v6 & 0xFFFFFFFE;
        if (v23 == v6)
        {
          goto LABEL_18;
        }
      }

      if ((v23 | 1uLL) > v6)
      {
        LODWORD(v6) = v23 + 1;
      }
    }
  }

LABEL_18:
  *a4 = v6;
  return result;
}

uint64_t AcAttrNode::AcAttrNode(uint64_t a1, _DWORD *a2)
{
  bzero(a1, 0x55CuLL);
  *(a1 + 1632) = 0;
  *(a1 + 1616) = 0u;
  *(a1 + 1600) = 0u;
  *(a1 + 1584) = 0u;
  *(a1 + 1568) = 0u;
  *(a1 + 1552) = 0u;
  *(a1 + 1536) = 0u;
  *(a1 + 1520) = 0u;
  *(a1 + 1504) = 0u;
  *(a1 + 1488) = 0u;
  *(a1 + 1472) = 0u;
  *(a1 + 1456) = 0u;
  *(a1 + 1440) = 0u;
  *(a1 + 1424) = 0u;
  *(a1 + 1408) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *a2 = 1;
  return a1;
}

{
  bzero(a1, 0x55CuLL);
  *(a1 + 1632) = 0;
  *(a1 + 1616) = 0u;
  *(a1 + 1600) = 0u;
  *(a1 + 1584) = 0u;
  *(a1 + 1568) = 0u;
  *(a1 + 1552) = 0u;
  *(a1 + 1536) = 0u;
  *(a1 + 1520) = 0u;
  *(a1 + 1504) = 0u;
  *(a1 + 1488) = 0u;
  *(a1 + 1472) = 0u;
  *(a1 + 1456) = 0u;
  *(a1 + 1440) = 0u;
  *(a1 + 1424) = 0u;
  *(a1 + 1408) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *a2 = 1;
  return a1;
}

void AcAttrNode::~AcAttrNode(AcAttrNode *this)
{
  AcAttrNode::releaseBuffers(this);
}

{
  AcAttrNode::releaseBuffers(this);
}

uint64_t AcAttrNode::releaseBuffers(AcAttrNode *this)
{
  v2 = *(this + 176);
  if (v2)
  {
    MEMORY[0x2318EA410](v2, 0x1000C8052888210);
    *(this + 176) = 0;
  }

  v3 = *(this + 175);
  if (v3)
  {
    MEMORY[0x2318EA410](v3, 0x1000C8052888210);
    *(this + 175) = 0;
  }

  v4 = *(this + 174);
  if (v4)
  {
    MEMORY[0x2318EA410](v4, 0x1000C8052888210);
    *(this + 174) = 0;
  }

  v5 = *(this + 173);
  if (v5)
  {
    MEMORY[0x2318EA410](v5, 0x1000C8052888210);
    *(this + 173) = 0;
  }

  v6 = *(this + 172);
  if (v6)
  {
    MEMORY[0x2318EA410](v6, 0x1000C8052888210);
    *(this + 172) = 0;
  }

  v7 = *(this + 177);
  if (v7)
  {
    MEMORY[0x2318EA410](v7, 0x1000C8052888210);
    *(this + 177) = 0;
  }

  v8 = *(this + 178);
  if (v8)
  {
    MEMORY[0x2318EA410](v8, 0x1000C8052888210);
    *(this + 178) = 0;
  }

  v9 = *(this + 179);
  if (v9)
  {
    MEMORY[0x2318EA410](v9, 0x1000C8052888210);
    *(this + 179) = 0;
  }

  v10 = *(this + 180);
  if (v10)
  {
    MEMORY[0x2318EA410](v10, 0x1000C8052888210);
    *(this + 180) = 0;
  }

  v11 = *(this + 181);
  if (v11)
  {
    MEMORY[0x2318EA410](v11, 0x1000C8052888210);
    *(this + 181) = 0;
  }

  v12 = *(this + 182);
  if (v12)
  {
    MEMORY[0x2318EA410](v12, 0x1000C8052888210);
    *(this + 182) = 0;
  }

  result = *(this + 183);
  if (result)
  {
    result = MEMORY[0x2318EA410](result, 0x1000C8052888210);
    *(this + 183) = 0;
  }

  return result;
}

uint64_t AcAttrNode::init(unsigned int *a1, const void *a2, _DWORD *a3)
{
  if (*a3 == 1)
  {
    AcAttrNode::releaseBuffers(a1);
    if (a2)
    {
      memcpy(a1, a2, 0x55CuLL);
      v5 = a1[38];
    }

    else
    {
      memcpy(a1, "1.7.3", 0x55CuLL);
    }

    operator new[]();
  }

  return 4294967289;
}

void AcAttrNode::initBinCenters(AcAttrNode *this, float *a2, float a3, float a4, unsigned int a5)
{
  if (a5)
  {
    v5 = (a3 - a4) / a5;
    v6 = (v5 * 0.5) + a4;
    v7 = a5;
    do
    {
      *a2++ = v6;
      v6 = v5 + v6;
      --v7;
    }

    while (v7);
  }
}

uint64_t AcAttrNode::preProcess(uint64_t a1, unsigned int a2, unsigned int a3, _DWORD *a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8, _DWORD *a9)
{
  LODWORD(v10) = a6;
  std::chrono::steady_clock::now();
  if (*a7 != 1)
  {
    return 4294967289;
  }

  *a9 = v10;
  if (v10)
  {
    v16 = (a9 + 1);
    v17 = a7 + 2;
    v18 = (a9 + 133);
    v19 = (a5 + 20);
    v10 = v10;
    do
    {
      v20 = vmul_n_f32(*v19, *(a1 + 64));
      v21 = vadd_f32(v19[-1], vmul_f32(vsub_f32(*v19, v20), 0x3F0000003F000000));
      v18[-1] = v21;
      *v18 = v20;
      *v17++ = acCropResizeGenerateConfig(a2, a3, a4, *(a1 + 68), *(a1 + 72), 1, v16, v21.f32[0], v21.f32[1], v20.f32[0], v20.f32[1]);
      v16 += 52;
      v18 += 2;
      v19 += 351;
      --v10;
    }

    while (v10);
  }

  return 0;
}

uint64_t AcAttrNode::postProcess(uint64_t a1, uint64_t a2, int a3, _DWORD *a4, uint64_t a5, unsigned int a6, double a7, double a8, double a9, double a10, double a11, double a12, float32x4_t a13, float32x4_t a14)
{
  v129 = *MEMORY[0x277D85DE8];
  if (*a4 == 1)
  {
    if (a3 == 7)
    {
      if (*(a4 + a6 + 8))
      {
        v16 = 0;
        v17 = a1 + 1472;
        v18 = a1 + 1416;
        v19 = a1 + 192;
        do
        {
          v20 = (a2 + 24 * v16);
          v21 = v17 + 24 * v16;
          v22 = *v20;
          *(v21 + 16) = *(v20 + 2);
          *v21 = v22;
          v23 = *(v20 + 5);
          if (v23 != 6)
          {
            if (v23 == 1)
            {
              v42 = (4 * *(v21 + 12));
              *(v21 + 16) = v42;
              *(v21 + 20) = 6;
              v43 = *(v18 + 8 * v16);
              *v21 = v43;
              v44 = *(v20 + 2);
              if (v44)
              {
                v45 = *(v20 + 3);
                if (v45)
                {
                  LODWORD(v22) = *(v19 + 4 * v16);
                  v46 = *(v20 + 4);
                  v47 = *v20;
                  if (v45 > 7)
                  {
                    if (v43 >= v47 + v46 * (v44 - 1) + v45 || v47 >= v43->n128_u64 + 4 * v45 + v42 * (v44 - 1))
                    {
                      v51 = 0;
                      a13 = vdupq_lane_s32(*&v22, 0);
                      v52 = v43 + 1;
                      v53 = (v47 + 4);
                      do
                      {
                        v54 = v53;
                        v55 = v52;
                        v56 = v45 & 0xFFFFFFF8;
                        do
                        {
                          a14.i32[0] = *(v54 - 1);
                          v14.i32[0] = *v54;
                          v14 = vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*v14.f32)));
                          v57 = vmlaq_f32(0, vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*a14.f32))), a13);
                          a14 = vmlaq_f32(0, v14, a13);
                          v55[-1] = v57;
                          *v55 = a14;
                          v55 += 2;
                          v54 += 2;
                          v56 -= 8;
                        }

                        while (v56);
                        if ((v45 & 0xFFFFFFF8) != v45)
                        {
                          v58 = v45 & 0xFFFFFFF8;
                          do
                          {
                            a14.i8[0] = *(v47 + v58);
                            a14.f32[0] = (*&v22 * a14.u32[0]) + 0.0;
                            v43->n128_u32[v58++] = a14.i32[0];
                          }

                          while (v45 != v58);
                        }

                        v47 += v46;
                        v43 = (v43 + v42);
                        ++v51;
                        v52 = (v52 + v42);
                        v53 = (v53 + v46);
                      }

                      while (v51 != v44);
                    }

                    else
                    {
                      for (i = 0; i != v44; ++i)
                      {
                        for (j = 0; j != v45; ++j)
                        {
                          a13.i8[0] = *(v47 + j);
                          a13.f32[0] = (*&v22 * a13.u32[0]) + 0.0;
                          v43->n128_u32[j] = a13.i32[0];
                        }

                        v47 += v46;
                        v43 = (v43 + v42);
                      }
                    }
                  }

                  else
                  {
                    v48 = (v47 + 3);
                    v49 = &v43->n128_u32[3];
                    do
                    {
                      a13.i8[0] = *(v48 - 3);
                      a13.f32[0] = (*&v22 * a13.u32[0]) + 0.0;
                      *(v49 - 3) = a13.i32[0];
                      if (v45 != 1)
                      {
                        a13.i8[0] = *(v48 - 2);
                        a13.f32[0] = (*&v22 * a13.u32[0]) + 0.0;
                        *(v49 - 2) = a13.i32[0];
                        if (v45 != 2)
                        {
                          a13.i8[0] = *(v48 - 1);
                          a13.f32[0] = (*&v22 * a13.u32[0]) + 0.0;
                          *(v49 - 1) = a13.i32[0];
                          if (v45 != 3)
                          {
                            a13.i8[0] = *v48;
                            a13.f32[0] = (*&v22 * a13.u32[0]) + 0.0;
                            *v49 = a13.i32[0];
                            if (v45 != 4)
                            {
                              a13.i8[0] = v48[1];
                              a13.f32[0] = (*&v22 * a13.u32[0]) + 0.0;
                              v49[1] = a13.i32[0];
                              if (v45 != 5)
                              {
                                a13.i8[0] = v48[2];
                                a13.f32[0] = (*&v22 * a13.u32[0]) + 0.0;
                                v49[2] = a13.i32[0];
                                if (v45 != 6)
                                {
                                  a13.i8[0] = v48[3];
                                  a13.f32[0] = (*&v22 * a13.u32[0]) + 0.0;
                                  v49[3] = a13.i32[0];
                                }
                              }
                            }
                          }
                        }
                      }

                      v48 += v46;
                      v49 = (v49 + v42);
                      --v44;
                    }

                    while (v44);
                  }
                }
              }
            }

            else
            {
              if (v23)
              {
                result = 4294967293;
                goto LABEL_106;
              }

              v24 = (4 * *(v21 + 12));
              *(v21 + 16) = v24;
              *(v21 + 20) = 6;
              v25 = *(v18 + 8 * v16);
              *v21 = v25;
              v26 = *(v20 + 2);
              if (v26)
              {
                v27 = *(v20 + 3);
                if (v27)
                {
                  v28 = 0;
                  LODWORD(v22) = *(v19 + 4 * v16);
                  v29 = *(v20 + 4);
                  v30 = *v20;
                  v32 = v25 < v30 + v29 * (v26 - 1) + v27 && v30 < v25 + v24 * (v26 - 1) + 4 * v27;
                  a13 = vdupq_lane_s32(*&v22, 0);
                  v33 = v27 < 4 || v32;
                  v34 = v27 & 0xFFFFFFFC;
                  do
                  {
                    if (v33)
                    {
                      v35 = 0;
                    }

                    else
                    {
                      if (v27 < 0x10)
                      {
                        v36 = 0;
LABEL_27:
                        v41 = 4 * v36;
                        do
                        {
                          a14.i32[0] = *(v30 + v36);
                          a14 = vcvtq_n_f32_s32(vqtbl1q_s8(a14, xmmword_22E662490), 0x18uLL);
                          v14 = vmlaq_f32(0, a14, a13);
                          *(v25 + v41) = v14;
                          v36 += 4;
                          v41 += 16;
                        }

                        while (v34 != v36);
                        v35 = v27 & 0xFFFFFFFC;
                        if (v34 == v27)
                        {
                          goto LABEL_18;
                        }

                        goto LABEL_30;
                      }

                      v37 = 0;
                      v38 = v30;
                      do
                      {
                        v39 = *v38++;
                        a14 = vcvtq_n_f32_s32(vqtbl1q_s8(v39, xmmword_22E6624C0), 0x18uLL);
                        v14 = vmlaq_f32(0, vcvtq_n_f32_s32(vqtbl1q_s8(v39, xmmword_22E6624A0), 0x18uLL), a13);
                        v40 = (v25 + v37);
                        v40[2] = vmlaq_f32(0, vcvtq_n_f32_s32(vqtbl1q_s8(v39, xmmword_22E6624B0), 0x18uLL), a13);
                        v40[3] = vmlaq_f32(0, a14, a13);
                        *v40 = vmlaq_f32(0, vcvtq_n_f32_s32(vqtbl1q_s8(v39, xmmword_22E662490), 0x18uLL), a13);
                        v40[1] = v14;
                        v37 += 64;
                      }

                      while (((4 * v27) & 0x3FFFFFFC0) != v37);
                      if ((v27 & 0xFFFFFFF0) == v27)
                      {
                        goto LABEL_18;
                      }

                      v36 = v27 & 0xFFFFFFF0;
                      v35 = v36;
                      if ((v27 & 0xC) != 0)
                      {
                        goto LABEL_27;
                      }
                    }

                    do
                    {
LABEL_30:
                      a14.i8[0] = *(v30 + v35);
                      a14 = vmovl_s16(*&vmovl_s8(*a14.f32));
                      a14.f32[0] = (*&v22 * a14.i32[0]) + 0.0;
                      *(v25 + 4 * v35++) = a14.i32[0];
                    }

                    while (v27 != v35);
LABEL_18:
                    v30 += v29;
                    v25 += v24;
                    ++v28;
                  }

                  while (v28 != v26);
                }
              }
            }
          }

          ++v16;
        }

        while (v16 != 7);
        *(a5 + 101) = 257;
        *(a5 + 103) = 1;
        v63 = *(a1 + 20) / 100.0;
        v64 = *(a1 + 1472);
        v65 = *(a1 + 1488);
        v66 = *(v64 + v65);
        if (*v64 >= v66)
        {
          v67 = *v64;
        }

        else
        {
          v67 = *(v64 + v65);
        }

        v68 = expf(*v64 - v67);
        v69 = expf(v66 - v67);
        v70 = v69 / (v68 + v69);
        if (v70 >= v63)
        {
          v71 = ((((v70 - v63) / (1.0 - v63)) * 100.0) + 0.5);
          if (v71 >= 100)
          {
            v71 = 100;
          }

          if (v71 <= 1)
          {
            v71 = 1;
          }
        }

        else
        {
          v71 = -1;
        }

        *(a5 + 56) = v71;
        v127 = 0;
        v72 = *(a1 + 24);
        v73 = *(a1 + 28);
        *(a5 + 60) = acAttrReduceBlink((a1 + 1496), v72, v73, &v127 + 1);
        *(a5 + 64) = acAttrReduceBlink((a1 + 1520), v72, v73, &v127);
        v75 = *(a1 + 148);
        if (v75 >= 0xA)
        {
          v76 = 10;
        }

        else
        {
          v76 = v75;
        }

        if (v75)
        {
          v77 = 0;
          v78 = 0;
          v79 = *(a1 + 1376);
          v80 = *(a1 + 1544);
          v81 = *(a1 + 1560);
          do
          {
            v74.n128_u32[0] = *(v80 + v77);
            v128[0].i32[v78++] = v74.n128_u32[0];
            v77 += v81;
          }

          while (v76 != v78);
          v82 = v128;
          bmSoftmax(v128, v128[0].f32, v76, v74);
          v83.n128_u64[0] = 0;
          do
          {
            v84 = v82->f32[0];
            v82 = (v82 + 4);
            v85 = v84;
            v86 = *v79++;
            v83.n128_f32[0] = v83.n128_f32[0] + (v85 * v86);
            --v76;
          }

          while (v76);
        }

        else
        {
          bmSoftmax(v128, v128[0].f32, v76, v74);
          v83.n128_u64[0] = 0;
        }

        v87 = -0.5;
        if (v83.n128_f32[0] > 0.0)
        {
          v87 = 0.5;
        }

        v83.n128_u32[0] = (v83.n128_f32[0] + v87);
        v88 = v83.n128_i32[0];
        v89 = *(a1 + 152);
        if (v89 >= 0xA)
        {
          v90 = 10;
        }

        else
        {
          v90 = v89;
        }

        if (v89)
        {
          v91 = 0;
          v92 = 0;
          v93 = *(a1 + 1384);
          v94 = *(a1 + 1568);
          v95 = *(a1 + 1584);
          do
          {
            v83.n128_u32[0] = *(v94 + v91);
            v128[0].i32[v92++] = v83.n128_u32[0];
            v91 += v95;
          }

          while (v90 != v92);
          v96 = v128;
          bmSoftmax(v128, v128[0].f32, v90, v83);
          v97 = 0.0;
          do
          {
            v98 = v96->f32[0];
            v96 = (v96 + 4);
            v99 = v98;
            v100 = *v93++;
            v97 = v97 + (v99 * v100);
            --v90;
          }

          while (v90);
        }

        else
        {
          bmSoftmax(v128, v128[0].f32, v90, v83);
          v97 = 0.0;
        }

        if (fabsf(v88) >= *(a1 + 60))
        {
          *(a5 + 64) = 0;
          *(a5 + 56) = 0;
        }

        else
        {
          v101 = HIBYTE(v127) | v127;
          v102 = -0.5;
          if (v97 > 0.0)
          {
            v102 = 0.5;
          }

          v103 = fabsf((v97 + v102));
          v104 = *(a1 + 56);
          if ((v103 >= v104) | v101 & 1 && (*(a5 + 60) = 0, *(a5 + 64) = 0, v103 >= v104))
          {
            *(a5 + 56) = 0;
          }

          else if ((v101 & 1) == 0)
          {
            v106 = *(a1 + 1616);
            v107 = *(a1 + 1632);
            v108.i32[0] = *v106;
            v109 = *(a5 + 20);
            v110 = vmul_n_f32(v109, *(a1 + 64));
            v111.i32[0] = *(v106 + (2 * v107));
            v112 = vadd_f32(*(a5 + 12), vmul_f32(vsub_f32(v109, v110), 0x3F0000003F000000));
            v111.i32[1] = *(v106 + (3 * v107));
            __asm { FMOV            V6.2S, #1.0 }

            v117 = vmla_f32(v112, v110, vbic_s8(vbsl_s8(vcgt_f32(v111, _D6), _D6, v111), vcltz_f32(v111)));
            v118 = vmul_f32(vmul_f32(v110, vdup_n_s32(0x3E4CCCCDu)), 0x3F0000003F000000);
            v119 = vsub_f32(v117, v118);
            v120 = vbsl_s8(vcgt_f32(v112, v119), v112, v119);
            v121 = vadd_f32(v117, v118);
            v122 = vadd_f32(v112, v110);
            v108.i32[1] = *(v106 + v107);
            *(a5 + 68) = v120;
            *(a5 + 76) = vsub_f32(vbsl_s8(vcgt_f32(v122, v121), v121, v122), v120);
            v123 = vmla_f32(v112, v110, vbic_s8(vbsl_s8(vcgt_f32(v108, _D6), _D6, v108), vcltz_f32(v108)));
            v124 = vsub_f32(v123, v118);
            v125 = vbsl_s8(vcgt_f32(v112, v124), v112, v124);
            v126 = vadd_f32(v123, v118);
            *(a5 + 84) = v125;
            *(a5 + 92) = vsub_f32(vbsl_s8(vcgt_f32(v122, v126), v126, v122), v125);
            goto LABEL_104;
          }
        }

        *(a5 + 84) = 0u;
        *(a5 + 68) = 0u;
LABEL_104:
        result = 0;
        goto LABEL_106;
      }

      result = 0;
      *(a5 + 101) = 0;
      *(a5 + 103) = 0;
    }

    else
    {
      result = 4294967292;
    }
  }

  else
  {
    result = 4294967289;
  }

LABEL_106:
  v105 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AcAttrNode::getParams(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (*a2 != 1)
  {
    return 4294967289;
  }

  v3 = 0;
  v4 = *(a1 + 76);
  *&v5 = *(a1 + 20);
  *(&v5 + 1) = *(a1 + 68);
  *a3 = v5;
  *(a3 + 16) = v4;
  *(a3 + 20) = 10 * ((v4 * DWORD2(v5) + 63) & 0x7FFFFFC0) * HIDWORD(v5);
  *(a3 + 24) = *(a1 + 80);
  *(a3 + 52) = *(a1 + 108);
  *(a3 + 80) = *(a1 + 136);
  *(a3 + 28) = *(a1 + 84);
  *(a3 + 56) = *(a1 + 112);
  *(a3 + 84) = *(a1 + 140);
  *(a3 + 32) = *(a1 + 88);
  *(a3 + 60) = *(a1 + 116);
  *(a3 + 88) = *(a1 + 144);
  *(a3 + 36) = *(a1 + 92);
  *(a3 + 64) = *(a1 + 120);
  *(a3 + 92) = *(a1 + 148);
  *(a3 + 40) = *(a1 + 96);
  *(a3 + 68) = *(a1 + 124);
  *(a3 + 96) = *(a1 + 152);
  *(a3 + 44) = *(a1 + 100);
  *(a3 + 72) = *(a1 + 128);
  *(a3 + 100) = *(a1 + 156);
  *(a3 + 48) = *(a1 + 104);
  *(a3 + 76) = *(a1 + 132);
  *(a3 + 104) = *(a1 + 160);
  *(a3 + 112) = *(a1 + 168);
  *(a3 + 116) = *(a1 + 172);
  *(a3 + 120) = *(a1 + 176);
  *(a3 + 124) = *(a1 + 180);
  *(a3 + 128) = *(a1 + 184);
  v6 = *(a1 + 188);
  *(a3 + 132) = v6;
  v7 = *(a1 + 164);
  if (v7 <= 7)
  {
    v3 = dword_22E66268C[v7];
  }

  v8 = *(a1 + 136) * *(a1 + 108) * ((v3 * *(a1 + 80) + 63) & 0xFFFFFFC0);
  *(a3 + 136) = v8;
  v9 = *(a1 + 168);
  if (v9 > 7)
  {
    v10 = 0;
  }

  else
  {
    v10 = dword_22E66268C[v9];
  }

  v12 = v8 + *(a1 + 140) * *(a1 + 112) * ((v10 * *(a1 + 84) + 63) & 0xFFFFFFC0);
  *(a3 + 136) = v12;
  v13 = *(a1 + 172);
  if (v13 > 7)
  {
    v14 = 0;
  }

  else
  {
    v14 = dword_22E66268C[v13];
  }

  v15 = v12 + *(a1 + 144) * *(a1 + 116) * ((v14 * *(a1 + 88) + 63) & 0xFFFFFFC0);
  *(a3 + 136) = v15;
  v16 = *(a1 + 176);
  if (v16 > 7)
  {
    v17 = 0;
  }

  else
  {
    v17 = dword_22E66268C[v16];
  }

  v18 = v15 + *(a1 + 148) * *(a1 + 120) * ((v17 * *(a1 + 92) + 63) & 0xFFFFFFC0);
  *(a3 + 136) = v18;
  v19 = *(a1 + 180);
  if (v19 > 7)
  {
    v20 = 0;
  }

  else
  {
    v20 = dword_22E66268C[v19];
  }

  v21 = v18 + *(a1 + 152) * *(a1 + 124) * ((v20 * *(a1 + 96) + 63) & 0xFFFFFFC0);
  *(a3 + 136) = v21;
  v22 = *(a1 + 184);
  if (v22 > 7)
  {
    v23 = 0;
  }

  else
  {
    v23 = dword_22E66268C[v22];
  }

  v24 = v21 + *(a1 + 156) * *(a1 + 128) * ((v23 * *(a1 + 100) + 63) & 0xFFFFFFC0);
  *(a3 + 136) = v24;
  if (v6 > 7)
  {
    v25 = 0;
  }

  else
  {
    v25 = dword_22E66268C[v6];
  }

  *(a3 + 136) = 10 * (v24 + *(a1 + 160) * *(a1 + 132) * ((v25 * *(a1 + 104) + 63) & 0x7FFFFFC0));
  *(a3 + 140) = *(a1 + 192);
  v26 = *(a1 + 220);
  v27 = *(a1 + 236);
  v28 = *(a1 + 252);
  *(a3 + 216) = *(a1 + 268);
  *(a3 + 200) = v28;
  *(a3 + 184) = v27;
  *(a3 + 168) = v26;
  *(a3 + 144) = *(a1 + 196);
  v29 = *(a1 + 284);
  v30 = *(a1 + 300);
  v31 = *(a1 + 332);
  *(a3 + 264) = *(a1 + 316);
  *(a3 + 280) = v31;
  *(a3 + 248) = v30;
  *(a3 + 232) = v29;
  *(a3 + 148) = *(a1 + 200);
  v32 = *(a1 + 348);
  v33 = *(a1 + 364);
  v34 = *(a1 + 396);
  *(a3 + 328) = *(a1 + 380);
  *(a3 + 344) = v34;
  *(a3 + 296) = v32;
  *(a3 + 312) = v33;
  *(a3 + 152) = *(a1 + 204);
  v35 = *(a1 + 412);
  v36 = *(a1 + 428);
  v37 = *(a1 + 460);
  *(a3 + 392) = *(a1 + 444);
  *(a3 + 408) = v37;
  *(a3 + 360) = v35;
  *(a3 + 376) = v36;
  *(a3 + 156) = *(a1 + 208);
  v38 = *(a1 + 476);
  v39 = *(a1 + 492);
  v40 = *(a1 + 524);
  *(a3 + 456) = *(a1 + 508);
  *(a3 + 472) = v40;
  *(a3 + 424) = v38;
  *(a3 + 440) = v39;
  *(a3 + 160) = *(a1 + 212);
  v41 = *(a1 + 540);
  v42 = *(a1 + 556);
  v43 = *(a1 + 588);
  *(a3 + 520) = *(a1 + 572);
  *(a3 + 536) = v43;
  *(a3 + 488) = v41;
  *(a3 + 504) = v42;
  *(a3 + 164) = *(a1 + 216);
  v44 = *(a1 + 604);
  v45 = *(a1 + 620);
  v46 = *(a1 + 652);
  *(a3 + 584) = *(a1 + 636);
  *(a3 + 600) = v46;
  *(a3 + 552) = v44;
  *(a3 + 568) = v45;
  v47 = *(a1 + 668);
  v48 = *(a1 + 684);
  v49 = *(a1 + 716);
  *(a3 + 648) = *(a1 + 700);
  *(a3 + 664) = v49;
  *(a3 + 616) = v47;
  *(a3 + 632) = v48;
  v50 = *(a1 + 732);
  v51 = *(a1 + 748);
  v52 = *(a1 + 780);
  *(a3 + 712) = *(a1 + 764);
  *(a3 + 728) = v52;
  *(a3 + 680) = v50;
  *(a3 + 696) = v51;
  v53 = *(a1 + 796);
  v54 = *(a1 + 812);
  v55 = *(a1 + 844);
  *(a3 + 776) = *(a1 + 828);
  *(a3 + 792) = v55;
  *(a3 + 744) = v53;
  *(a3 + 760) = v54;
  v56 = *(a1 + 860);
  v57 = *(a1 + 876);
  v58 = *(a1 + 908);
  *(a3 + 840) = *(a1 + 892);
  *(a3 + 856) = v58;
  *(a3 + 808) = v56;
  *(a3 + 824) = v57;
  v59 = *(a1 + 924);
  v60 = *(a1 + 940);
  v61 = *(a1 + 972);
  *(a3 + 904) = *(a1 + 956);
  *(a3 + 920) = v61;
  *(a3 + 872) = v59;
  *(a3 + 888) = v60;
  v62 = *(a1 + 988);
  v63 = *(a1 + 1004);
  v64 = *(a1 + 1036);
  *(a3 + 968) = *(a1 + 1020);
  *(a3 + 984) = v64;
  *(a3 + 936) = v62;
  *(a3 + 952) = v63;
  v65 = *(a1 + 1052);
  v66 = *(a1 + 1068);
  v67 = *(a1 + 1100);
  *(a3 + 1032) = *(a1 + 1084);
  *(a3 + 1048) = v67;
  *(a3 + 1000) = v65;
  *(a3 + 1016) = v66;
  v68 = *(a1 + 1116);
  v69 = *(a1 + 1132);
  v70 = *(a1 + 1164);
  *(a3 + 1096) = *(a1 + 1148);
  *(a3 + 1112) = v70;
  *(a3 + 1064) = v68;
  *(a3 + 1080) = v69;
  v71 = *(a1 + 1180);
  v72 = *(a1 + 1196);
  v73 = *(a1 + 1228);
  *(a3 + 1160) = *(a1 + 1212);
  *(a3 + 1176) = v73;
  *(a3 + 1128) = v71;
  *(a3 + 1144) = v72;
  v74 = *(a1 + 1244);
  v75 = *(a1 + 1260);
  v76 = *(a1 + 1292);
  *(a3 + 1224) = *(a1 + 1276);
  *(a3 + 1240) = v76;
  *(a3 + 1192) = v74;
  *(a3 + 1208) = v75;
  v77 = *(a1 + 1308);
  v78 = *(a1 + 1324);
  v79 = *(a1 + 1356);
  *(a3 + 1288) = *(a1 + 1340);
  *(a3 + 1304) = v79;
  *(a3 + 1256) = v77;
  *(a3 + 1272) = v78;
  return 0;
}

uint64_t AcAttrNode::setUpNetBuffers(uint64_t result, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  if (result > 0xA)
  {
    return 4294967292;
  }

  v4 = *(a2 + 4);
  if (!v4)
  {
    return 4294967292;
  }

  v5 = *(a2 + 16);
  if (!v5)
  {
    return 4294967292;
  }

  v6 = *(a2 + 12);
  if (v6 < a3[5])
  {
    return 4294967292;
  }

  v7 = *(a2 + 24);
  if (v7 < a3[34])
  {
    return 4294967292;
  }

  if (result)
  {
    v8 = a3[3];
    v9 = a3[4] * a3[2];
    v10 = (v9 + 63) & 0xFFFFFFC0;
    v11 = result;
    v12 = v10 * v8;
    v13 = a4 + 3;
    v14 = v12;
    v15 = result;
    while (1)
    {
      *(v13 - 3) = v4;
      *(v13 - 1) = v8;
      *v13 = v9;
      v13[1] = v10;
      v13[2] = 1;
      if (v14 > v6)
      {
        break;
      }

      v4 += v12;
      v13 += 6;
      v14 += v12;
      if (!--v15)
      {
        if (*a2 == 1)
        {
          v16 = a3[27];
          v17 = a3[28];
          v18 = a3[29];
          v19 = a3[30];
          v21 = a3[31];
          v20 = a3[32];
          v22 = a4 + 101;
          v23 = v5;
          v24 = a3[33];
          while (1)
          {
            *(v22 - 41) = v23 + *(a2 + 28);
            v25 = a3[6];
            *(v22 - 38) = v25;
            v26 = a3[20] * a3[13];
            *(v22 - 39) = v26;
            *(v22 - 36) = v16;
            v27 = v16 >= 8 ? 0 : dword_22E66268C[v16];
            v28 = (v27 * v25 + 63) & 0xFFFFFFC0;
            *(v22 - 37) = v28;
            if (v23 + *(a2 + 28) + v28 * v26 - v5 > v7)
            {
              break;
            }

            *(v22 - 35) = v23 + *(a2 + 32);
            v29 = a3[7];
            *(v22 - 32) = v29;
            v30 = a3[21] * a3[14];
            *(v22 - 33) = v30;
            *(v22 - 30) = v17;
            v31 = v17 > 7 ? 0 : dword_22E66268C[v17];
            v32 = (v31 * v29 + 63) & 0xFFFFFFC0;
            *(v22 - 31) = v32;
            if (v23 + *(a2 + 32) + v32 * v30 - v5 > v7)
            {
              break;
            }

            *(v22 - 29) = v23 + *(a2 + 36);
            v33 = a3[8];
            *(v22 - 26) = v33;
            v34 = a3[22] * a3[15];
            *(v22 - 27) = v34;
            *(v22 - 24) = v18;
            v35 = v18 > 7 ? 0 : dword_22E66268C[v18];
            v36 = (v35 * v33 + 63) & 0xFFFFFFC0;
            *(v22 - 25) = v36;
            if (v23 + *(a2 + 36) + v36 * v34 - v5 > v7)
            {
              break;
            }

            *(v22 - 23) = v23 + *(a2 + 40);
            v37 = a3[9];
            *(v22 - 20) = v37;
            v38 = a3[23] * a3[16];
            *(v22 - 21) = v38;
            *(v22 - 18) = v19;
            v39 = v19 > 7 ? 0 : dword_22E66268C[v19];
            v40 = (v39 * v37 + 63) & 0xFFFFFFC0;
            *(v22 - 19) = v40;
            if (v23 + *(a2 + 40) + v40 * v38 - v5 > v7)
            {
              break;
            }

            *(v22 - 17) = v23 + *(a2 + 44);
            v41 = a3[10];
            *(v22 - 14) = v41;
            v42 = a3[24] * a3[17];
            *(v22 - 15) = v42;
            *(v22 - 12) = v21;
            v43 = v21 > 7 ? 0 : dword_22E66268C[v21];
            v44 = (v43 * v41 + 63) & 0xFFFFFFC0;
            *(v22 - 13) = v44;
            if (v23 + *(a2 + 44) + v44 * v42 - v5 > v7)
            {
              break;
            }

            *(v22 - 11) = v23 + *(a2 + 48);
            v45 = a3[11];
            *(v22 - 8) = v45;
            v46 = a3[25] * a3[18];
            *(v22 - 9) = v46;
            *(v22 - 6) = v20;
            v47 = v20 > 7 ? 0 : dword_22E66268C[v20];
            v48 = (v47 * v45 + 63) & 0xFFFFFFC0;
            *(v22 - 7) = v48;
            if (v23 + *(a2 + 48) + v48 * v46 - v5 > v7)
            {
              break;
            }

            *(v22 - 5) = v23 + *(a2 + 52);
            v49 = a3[12];
            *(v22 - 2) = v49;
            v50 = a3[26] * a3[19];
            *(v22 - 3) = v50;
            *v22 = v24;
            v51 = v24 > 7 ? 0 : dword_22E66268C[v24];
            v52 = (v51 * v49 + 63) & 0xFFFFFFC0;
            *(v22 - 1) = v52;
            v23 += *(a2 + 52) + (v52 * v50);
            if (v23 - v5 > v7)
            {
              break;
            }

            result = 0;
            v22 += 42;
            if (!--v11)
            {
              return result;
            }
          }
        }

        else
        {
          v53 = v5 + *(a2 + 28);
          v54 = a3[27];
          v55 = a4 + 65;
          v56 = result;
          while (1)
          {
            *(v55 - 5) = v53;
            v57 = a3[6];
            *(v55 - 2) = v57;
            v58 = a3[20] * a3[13];
            *(v55 - 3) = v58;
            *v55 = v54;
            v59 = v54 > 7 ? 0 : dword_22E66268C[v54];
            v60 = (v59 * v57 + 63) & 0xFFFFFFC0;
            *(v55 - 1) = v60;
            v53 += v60 * v58;
            if (v53 - v5 > v7)
            {
              break;
            }

            v55 += 42;
            if (!--v56)
            {
              v61 = v5 + *(a2 + 32);
              v62 = a3[28];
              v63 = a4 + 71;
              v64 = v11;
              while (1)
              {
                *(v63 - 5) = v61;
                v65 = a3[7];
                *(v63 - 2) = v65;
                v66 = a3[21] * a3[14];
                *(v63 - 3) = v66;
                *v63 = v62;
                v67 = v62 > 7 ? 0 : dword_22E66268C[v62];
                v68 = (v67 * v65 + 63) & 0xFFFFFFC0;
                *(v63 - 1) = v68;
                v61 += v68 * v66;
                if (v61 - v5 > v7)
                {
                  break;
                }

                v63 += 42;
                if (!--v64)
                {
                  v69 = v5 + *(a2 + 36);
                  v70 = a3[29];
                  v71 = a4 + 77;
                  v72 = v11;
                  while (1)
                  {
                    *(v71 - 5) = v69;
                    v73 = a3[8];
                    *(v71 - 2) = v73;
                    v74 = a3[22] * a3[15];
                    *(v71 - 3) = v74;
                    *v71 = v70;
                    v75 = v70 > 7 ? 0 : dword_22E66268C[v70];
                    v76 = (v75 * v73 + 63) & 0xFFFFFFC0;
                    *(v71 - 1) = v76;
                    v69 += v76 * v74;
                    if (v69 - v5 > v7)
                    {
                      break;
                    }

                    v71 += 42;
                    if (!--v72)
                    {
                      v77 = v5 + *(a2 + 40);
                      v78 = a3[30];
                      v79 = a4 + 83;
                      v80 = v11;
                      while (1)
                      {
                        *(v79 - 5) = v77;
                        v81 = a3[9];
                        *(v79 - 2) = v81;
                        v82 = a3[23] * a3[16];
                        *(v79 - 3) = v82;
                        *v79 = v78;
                        v83 = v78 > 7 ? 0 : dword_22E66268C[v78];
                        v84 = (v83 * v81 + 63) & 0xFFFFFFC0;
                        *(v79 - 1) = v84;
                        v77 += v84 * v82;
                        if (v77 - v5 > v7)
                        {
                          break;
                        }

                        v79 += 42;
                        if (!--v80)
                        {
                          v85 = v5 + *(a2 + 44);
                          v86 = a3[31];
                          v87 = a4 + 89;
                          v88 = v11;
                          while (1)
                          {
                            *(v87 - 5) = v85;
                            v89 = a3[10];
                            *(v87 - 2) = v89;
                            v90 = a3[24] * a3[17];
                            *(v87 - 3) = v90;
                            *v87 = v86;
                            v91 = v86 > 7 ? 0 : dword_22E66268C[v86];
                            v92 = (v91 * v89 + 63) & 0xFFFFFFC0;
                            *(v87 - 1) = v92;
                            v85 += v92 * v90;
                            if (v85 - v5 > v7)
                            {
                              break;
                            }

                            v87 += 42;
                            if (!--v88)
                            {
                              v93 = v5 + *(a2 + 48);
                              v94 = a3[32];
                              v95 = a4 + 95;
                              v96 = v11;
                              while (1)
                              {
                                *(v95 - 5) = v93;
                                v97 = a3[11];
                                *(v95 - 2) = v97;
                                v98 = a3[25] * a3[18];
                                *(v95 - 3) = v98;
                                *v95 = v94;
                                v99 = v94 > 7 ? 0 : dword_22E66268C[v94];
                                v100 = (v99 * v97 + 63) & 0xFFFFFFC0;
                                *(v95 - 1) = v100;
                                v93 += v100 * v98;
                                if (v93 - v5 > v7)
                                {
                                  break;
                                }

                                v95 += 42;
                                if (!--v96)
                                {
                                  v101 = v5 + *(a2 + 52);
                                  v102 = a3[33];
                                  for (i = a4 + 101; ; i += 42)
                                  {
                                    *(i - 5) = v101;
                                    v104 = a3[12];
                                    *(i - 2) = v104;
                                    v105 = a3[26] * a3[19];
                                    *(i - 3) = v105;
                                    *i = v102;
                                    v106 = v102 > 7 ? 0 : dword_22E66268C[v102];
                                    v107 = (v106 * v104 + 63) & 0xFFFFFFC0;
                                    *(i - 1) = v107;
                                    v101 += v107 * v105;
                                    if (v101 - v5 > v7)
                                    {
                                      break;
                                    }

                                    result = 0;
                                    if (!--v11)
                                    {
                                      return result;
                                    }
                                  }

                                  return 4294967292;
                                }
                              }

                              return 4294967292;
                            }
                          }

                          return 4294967292;
                        }
                      }

                      return 4294967292;
                    }
                  }

                  return 4294967292;
                }
              }

              return 4294967292;
            }
          }
        }

        return 4294967292;
      }
    }

    return 4294967292;
  }

  return result;
}

uint64_t acTrkGroupAssignGetTempBuffers(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 4 * a1 * a1;
  v5 = a1 * a1 + 12 * a1 + v4 + ((4 * a1) | 3) + 2 * (((4 * a1) | 3) + a1) + 9;
  if (a2)
  {
    v6 = (a2 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v7 = 4 * a1 - a2;
    v8 = (a2 + 3 + (v6 + v7)) & 0xFFFFFFFFFFFFFFFCLL;
    *a4 = v6;
    *(a4 + 8) = v8;
    v9 = (a2 + 3 + (v8 + v7)) & 0xFFFFFFFFFFFFFFFCLL;
    v10 = (a2 + 3 + (v9 + v7)) & 0xFFFFFFFFFFFFFFFCLL;
    *(a4 + 16) = v9;
    *(a4 + 24) = v10;
    v11 = (a2 + 3 + (v10 + v7)) & 0xFFFFFFFFFFFFFFFCLL;
    v12 = (a2 + 3 + (v11 + v7)) & 0xFFFFFFFFFFFFFFFCLL;
    v13 = v4 - a2;
    *(a4 + 32) = v11;
    *(a4 + 40) = v12;
    v14 = (a2 + 3 + (v12 + v13)) & 0xFFFFFFFFFFFFFFFCLL;
    v15 = a2 + (v14 + v13);
    *(a4 + 64) = v5;
    *(a4 + 48) = v14;
    *(a4 + 56) = v15;
    v16 = (a2 + 3 + (v5 - a2 + v15)) & 0xFFFFFFFFFFFFFFFCLL;
    *(a4 + 72) = v16;
    *(a4 + 80) = a1 & 0x3FFFFFFF;
    v17 = (a2 + 3 + (v16 + v7)) & 0xFFFFFFFFFFFFFFFCLL;
    v18 = (a2 + 3 + (v17 + v7)) & 0xFFFFFFFFFFFFFFFCLL;
    *(a4 + 88) = v17;
    *(a4 + 96) = v18;
    v19 = (a2 + 3 + (v18 + v7)) & 0xFFFFFFFFFFFFFFFCLL;
    *(a4 + 104) = v19;
    *(a4 + 112) = (a2 + 3 + (v19 + v7)) & 0xFFFFFFFFFFFFFFFCLL;
  }

  return (v5 + 8 * a1 * a1 + 40 * a1 + 36);
}

void acTrkGroupAssign(uint64_t a1, int a2, uint64_t a3, int a4, int a5, int a6, uint64_t a7, _DWORD *a8, _DWORD *a9, unsigned int *a10, void *a11)
{
  v218 = *MEMORY[0x277D85DE8];
  v216 = 0;
  v214 = 0u;
  v215 = 0u;
  v212 = 0u;
  v213 = 0u;
  v210 = 0u;
  v211 = 0u;
  v209 = 0u;
  TempBuffers = acTrkGroupAssignGetTempBuffers(a4 + a2, a11, a3, &v209);
  bzero(a11, TempBuffers);
  v18 = v209;
  v19 = v210;
  v20 = v211;
  v21 = *(&v212 + 1);
  v207 = v212;
  v22 = *(&v213 + 1);
  v23 = *(&v214 + 1);
  v24 = v215;
  if (a2)
  {
    v25 = 0;
    v26 = 0;
    v27 = (a1 + 8);
    do
    {
      if (*v27 == a5)
      {
        *(v18 + 4 * v26++) = v25;
      }

      v27 += 441;
      ++v25;
    }

    while (a2 != v25);
    if (!a4)
    {
      if (!v26)
      {
        goto LABEL_246;
      }

      goto LABEL_241;
    }

    v202 = v22;
  }

  else
  {
    if (!a4)
    {
      goto LABEL_246;
    }

    v202 = *(&v213 + 1);
    v26 = 0;
  }

  v28 = 0;
  v29 = 0;
  LODWORD(v30) = 0;
  v31 = a9;
  do
  {
    v33 = (a3 + 1764 * v28);
    if (v33[2] == a6)
    {
      *(*(&v18 + 1) + 4 * v30) = v28;
      v34 = v33[1];
      if (v34)
      {
        *(v20 + 4 * v29++) = v34;
      }

      LODWORD(v30) = v30 + 1;
      v35 = *v33;
      v36 = *a10;
      v37 = v36;
      v38 = a9;
      if (v36)
      {
        while (1)
        {
          v39 = *v38;
          v38 += 3;
          if (v39 == v35)
          {
            break;
          }

          if (!--v37)
          {
            v32 = *a10;
            goto LABEL_12;
          }
        }
      }

      else
      {
        v32 = 0;
LABEL_12:
        *a10 = v36 + 1;
        a9[3 * v32] = v35;
      }
    }

    ++v28;
  }

  while (v28 != a4);
  v206 = v23;
  if (!v26 || !v30)
  {
    if (!v26)
    {
      if (v30)
      {
        v30 = v30;
        v109 = *(&v19 + 1);
        memcpy(*(&v19 + 1), *(&v18 + 1), 4 * v30);
        v110 = a9;
        v111 = a10;
        v112 = v206;
        v113 = v19;
        v114 = a8;
        v115 = 0;
        v116 = 0;
        goto LABEL_206;
      }

      goto LABEL_246;
    }

LABEL_241:
    v184 = v26;
    memcpy(v19, v18, 4 * v26);
    v113 = v19;
    v114 = a8;
    goto LABEL_244;
  }

  v40 = 0;
  if (v26 <= v30)
  {
    v41 = v30;
  }

  else
  {
    v41 = v26;
  }

  v43 = *(a7 + 4);
  v42 = *(a7 + 8);
  v44 = *(a7 + 12);
  v199 = *(a7 + 16);
  v45 = v26;
  do
  {
    v46 = 0;
    v47 = a1 + 1764 * *(v18 + 4 * v40);
    v48 = *(v47 + 12);
    v49 = vadd_f32(v48, *(v47 + 20));
    v50 = vmaxnm_f32(vsub_f32(v49, v48), 0);
    v51 = vmul_lane_f32(v50, v50, 1);
    v52 = *(&v18 + 1);
    v53 = v41;
    do
    {
      v54 = *v52++;
      v55 = a3 + 1764 * v54;
      v56 = *(v55 + 12);
      v57 = vadd_f32(v56, *(v55 + 20));
      v58 = vmaxnm_f32(vsub_f32(vbsl_s8(vcgt_f32(v57, v49), v49, v57), vbsl_s8(vcgt_f32(v56, v48), v56, v48)), 0);
      v59 = vmul_lane_f32(v58, v58, 1);
      v60 = fminf(v51.f32[0], v59.f32[0]);
      v62 = vdiv_f32(v59, v51).f32[0] > 0.0 && v60 >= 0.00000011921;
      v46 += v62;
      --v53;
    }

    while (v53);
    if (v46 <= 1)
    {
      v63 = v42;
    }

    else
    {
      v63 = v43;
    }

    v217[v40++] = v63;
  }

  while (v40 != v26);
  v200 = v21;
  v201 = v29;
  v64 = 0;
  v65 = 0;
  v66 = 0;
  v67 = v41 & 0xFFFFFFF8;
  v208 = v41 - v26;
  v205 = (v41 - v26) & 0xFFFFFFF8;
  v68 = vdupq_n_s32(0x42C80000u);
  do
  {
    if (v65 < v30)
    {
      v69 = 0;
      v70 = a3 + 1764 * *(*(&v18 + 1) + 4 * v65);
      v71 = *(v70 + 12);
      v72 = vadd_f32(v71, *(v70 + 20));
      v73 = *(v70 + 8);
      v74 = (fmaxf(vsub_f32(v72, v71).f32[0], 0.0) * fmaxf(v72.f32[1] - v71.f32[1], 0.0)) + 0.00000011921;
      v75 = v66 + 1;
      v76 = v217;
      v77 = v18;
      v78 = v26;
      do
      {
        v79 = v66;
        v80 = *v77++;
        v81 = v75;
        v82 = a1 + 1764 * v80;
        v83 = *(v82 + 12);
        v84 = vadd_f32(v83, *(v82 + 20));
        v85 = v84.f32[1];
        v86 = v83.f32[1];
        if (vcgt_f32(v71, v83).u8[0])
        {
          v87 = v71.f32[0];
        }

        else
        {
          v87 = v83.f32[0];
        }

        if (v83.f32[1] < v71.f32[1])
        {
          v86 = v71.f32[1];
        }

        if (vcgt_f32(v72, v84).u8[0])
        {
          v88 = v84.f32[0];
        }

        else
        {
          v88 = v72.f32[0];
        }

        v89 = vdup_lane_s32(v84, 0);
        v89.f32[0] = v88;
        v90 = vdup_lane_s32(v83, 0);
        if (v84.f32[1] >= v72.f32[1])
        {
          v85 = v72.f32[1];
        }

        v90.f32[0] = v87;
        v84.f32[0] = v85;
        v83.f32[0] = v86;
        v92 = vmul_f32(vmaxnm_f32(vsub_f32(v89, v90), 0), vmaxnm_f32(vsub_f32(v84, v83), 0));
        v91 = fminf(v92.f32[1], v92.f32[0]);
        v92.f32[0] = v92.f32[0] / v92.f32[1];
        if (v91 < 0.00000011921)
        {
          v92.f32[0] = 0.0;
        }

        if (v73 == 9 && *(v70 + 528))
        {
          v92.f32[0] = 0.0;
        }

        if (v42 > 0.0001)
        {
          v93 = v92.f32[0] - v44;
          if ((*(v82 + 8) & 0xFFFFFFFE) != 0xA)
          {
            v93 = v92.f32[0];
          }

          if ((v92.f32[1] / v74) < *v76)
          {
            v92.f32[0] = v93;
          }
        }

        if (v92.f32[0] >= 0.95)
        {
          ++v69;
        }

        *(*(&v20 + 1) + 4 * v79) = 10.0 - v92.f32[0];
        v66 = v79 + 1;
        ++v76;
        ++v75;
        --v78;
      }

      while (v78);
      if (v30 <= v26)
      {
        goto LABEL_88;
      }

      if (v208 < 8)
      {
        v100 = v26;
      }

      else
      {
        v100 = v26;
        v101 = (v41 - v26) & 0xFFFFFFF8;
        if (-2 - v79 >= v41 - 1 - v26)
        {
          do
          {
            v102 = (*(&v20 + 1) + 4 * v81);
            *v102 = v68;
            v102[1] = v68;
            v81 += 8;
            v101 -= 8;
          }

          while (v101);
          v66 += v205;
          v100 = v26 + v205;
          if (v208 == v205)
          {
LABEL_88:
            if (v26 < 2 || v69 < 2)
            {
              v31 = a9;
            }

            else
            {
              v104 = v64;
              v105 = v18;
              v106 = v26;
              v31 = a9;
              do
              {
                v107 = *(*(&v20 + 1) + 4 * v104);
                if ((10.0 - v107) >= 0.95)
                {
                  v108 = vmaxnm_f32(vsub_f32(vadd_f32(*(a1 + 1764 * *v105 + 12), *(a1 + 1764 * *v105 + 20)), *(a1 + 1764 * *v105 + 12)), 0);
                  *(*(&v20 + 1) + 4 * v104) = v107 - (vmul_lane_f32(v108, v108, 1).f32[0] / v74);
                }

                ++v105;
                ++v104;
                --v106;
              }

              while (v106);
            }

            goto LABEL_41;
          }
        }
      }

      v103 = v41 - v100;
      do
      {
        *(*(&v20 + 1) + 4 * v66++) = 1120403456;
        --v103;
      }

      while (v103);
      goto LABEL_88;
    }

    v94 = 0;
    v95 = __CFADD__(v66, v41 - 1);
    if (v41 < 8)
    {
      goto LABEL_76;
    }

    if (v95)
    {
      goto LABEL_76;
    }

    v96 = v41 & 0xFFFFFFF8;
    v97 = v66;
    do
    {
      v98 = (*(&v20 + 1) + 4 * v97);
      *v98 = v68;
      v98[1] = v68;
      v97 += 8;
      v96 -= 8;
    }

    while (v96);
    v66 += v67;
    v94 = v41 & 0xFFFFFFF8;
    if (v41 != v67)
    {
LABEL_76:
      v99 = v41 - v94;
      do
      {
        *(*(&v20 + 1) + 4 * v66++) = 1120403456;
        --v99;
      }

      while (v99);
    }

LABEL_41:
    ++v65;
    v64 += v41;
  }

  while (v65 != v41);
  if (v199)
  {
    v117 = 0;
    v118 = 0;
    while (2)
    {
      if (v118 >= v30)
      {
        goto LABEL_103;
      }

      v121 = (a3 + 1764 * *(*(&v18 + 1) + 4 * v118));
      v122 = *a10;
      if (v122)
      {
        v123 = v31;
        while (*v123 != *v121)
        {
          v123 += 3;
          if (!--v122)
          {
            goto LABEL_109;
          }
        }

        v124 = v123[1];
      }

      else
      {
LABEL_109:
        v124 = -1;
      }

      v125 = v45;
      v126 = v18;
      while (1)
      {
        v127 = *v126++;
        if (*(a1 + 1764 * v127) == v124)
        {
          break;
        }

        if (!--v125)
        {
          goto LABEL_103;
        }
      }

      if (v124 == -1)
      {
        goto LABEL_103;
      }

      v128 = 0;
      while (v124 != *(a1 + 1764 * *(v18 + 4 * v128)))
      {
        if (v45 == ++v128)
        {
          LODWORD(v128) = -1;
          break;
        }
      }

      v129 = 3.4028e38;
      v130 = v117;
      v131 = v41;
      do
      {
        if (*(*(&v20 + 1) + 4 * v130) < v129)
        {
          v129 = *(*(&v20 + 1) + 4 * v130);
        }

        ++v130;
        --v131;
      }

      while (v131);
      LODWORD(v132) = 0;
      v133 = v41;
      do
      {
        if (vabds_f32(v129, *(*(&v20 + 1) + 4 * (v117 + v131))) < 0.00000011921)
        {
          v24[v132] = v131;
          LODWORD(v132) = v132 + 1;
        }

        LODWORD(v131) = v131 + 1;
        --v133;
      }

      while (v133);
      if (v132)
      {
        v132 = v132;
        v134 = v24;
        while (1)
        {
          v135 = *v134++;
          if (v135 == v128)
          {
            break;
          }

          if (!--v132)
          {
            goto LABEL_132;
          }
        }

        v136 = v128;
      }

      else
      {
LABEL_132:
        v136 = *v24;
      }

      v137 = 3.4028e38;
      v138 = v128;
      v139 = v41;
      do
      {
        if (*(*(&v20 + 1) + 4 * v138) < v137)
        {
          v137 = *(*(&v20 + 1) + 4 * v138);
        }

        v138 += v41;
        --v139;
      }

      while (v139);
      LODWORD(v140) = 0;
      v141 = v128;
      do
      {
        if (vabds_f32(v137, *(*(&v20 + 1) + 4 * v141)) < 0.00000011921)
        {
          v24[v140] = v139;
          LODWORD(v140) = v140 + 1;
        }

        ++v139;
        v141 += v41;
      }

      while (v41 != v139);
      if (v140)
      {
        v140 = v140;
        v142 = v24;
        while (1)
        {
          v143 = *v142++;
          if (v143 == v118)
          {
            break;
          }

          if (!--v140)
          {
            goto LABEL_146;
          }
        }

        v144 = v118;
      }

      else
      {
LABEL_146:
        v144 = *v24;
      }

      v145 = *a10;
      if (v136 == v128 && v118 == v144)
      {
        if (v145)
        {
          v146 = *v121;
          v147 = v31;
          while (*v147 != v146)
          {
            v147 += 3;
            if (!--v145)
            {
              goto LABEL_162;
            }
          }

          v147[2] = 0;
          goto LABEL_162;
        }

LABEL_99:
        v119 = 0.0;
      }

      else
      {
        if (!v145)
        {
          goto LABEL_99;
        }

        v146 = *v121;
        v148 = v31;
        while (*v148 != v146)
        {
          v148 += 3;
          if (!--v145)
          {
            goto LABEL_162;
          }
        }

        ++v148[2];
LABEL_162:
        v149 = *a10;
        v119 = 0.0;
        v150 = v31;
        if (v149)
        {
          while (*v150 != v146)
          {
            v150 += 3;
            if (!--v149)
            {
              goto LABEL_100;
            }
          }

          v119 = v150[2] * 0.5;
        }
      }

LABEL_100:
      v120 = 0.5 - (v119 / v199);
      if (v120 < 0.0)
      {
        v120 = 0.0;
      }

      *(*(&v20 + 1) + 4 * (v128 + v41 * v118)) = *(*(&v20 + 1) + 4 * (v128 + v41 * v118)) - v120;
LABEL_103:
      ++v118;
      v117 += v41;
      if (v118 == v41)
      {
        break;
      }

      continue;
    }
  }

  memcpy(v207, *(&v20 + 1), 4 * (v41 * v41));
  bmMunkres(*(&v20 + 1), v41, v200, v151, v202, v152, 0, v153);
  v110 = a9;
  v111 = a10;
  v116 = 0;
  v115 = 0;
  v154 = 0;
  v155 = 0;
  v114 = a8;
  v156 = *a7;
  v113 = v19;
  v112 = v206;
  v109 = *(&v19 + 1);
  while (2)
  {
    v157 = v202[v155];
    if (v155 >= v45)
    {
      *(*(&v19 + 1) + 4 * v154++) = *(*(&v18 + 1) + 4 * v157);
    }

    else if (v157 >= v30)
    {
      *(v19 + 4 * v115++) = *(v18 + 4 * v155);
    }

    else if ((10.0 - *(v207 + (v155 + v157 * v41))) <= v156)
    {
      v164 = *v111;
      v165 = *(a3 + 1764 * *(*(&v18 + 1) + 4 * v157));
      v166 = v164;
      v167 = a9;
      if (v164)
      {
        while (1)
        {
          v168 = *v167;
          v167 += 3;
          if (v168 == v165)
          {
            break;
          }

          if (!--v166)
          {
            v169 = *v111;
            goto LABEL_192;
          }
        }

        v172 = a9;
        v111 = a10;
        while (*v172 != v165)
        {
          v172 += 3;
          if (!--v164)
          {
            goto LABEL_193;
          }
        }

        *(v172 + 1) = 0xFFFFFFFFLL;
      }

      else
      {
        v169 = 0;
LABEL_192:
        v111 = a10;
        *a10 = v164 + 1;
        a9[3 * v169] = v165;
      }

LABEL_193:
      *(*(&v19 + 1) + 4 * v154++) = *(*(&v18 + 1) + 4 * v157);
      *(v19 + 4 * v115++) = *(v18 + 4 * v155);
      v112 = v206;
    }

    else
    {
      v158 = (a1 + 1764 * *(v18 + 4 * v155));
      v159 = (a3 + 1764 * *(*(&v18 + 1) + 4 * v157));
      v160 = *v111;
      if (v160)
      {
        v161 = a9;
        while (*v161 != *v159 || v161[1] == *v158)
        {
          v161 += 3;
          if (!--v160)
          {
            goto LABEL_179;
          }
        }

        v161[1] = *v158;
        v161[2] = 0;
      }

LABEL_179:
      v162 = v159[1];
      if (v162)
      {
        v158[1] = v162;
        v163 = v159[1];
        goto LABEL_181;
      }

      v170 = v158[1];
      if (v170)
      {
        if (v201)
        {
          if (*v20 == v170)
          {
            goto LABEL_190;
          }

          v173 = 0;
          while (v201 - 1 != v173)
          {
            v174 = *(v20 + 4 + 4 * v173++);
            if (v174 == v170)
            {
              if (v173 < v201)
              {
                goto LABEL_190;
              }

              break;
            }
          }
        }

        v159[1] = v170;
        v163 = v158[1];
LABEL_181:
        v112 = v206;
        v206[v116++] = v163;
        v111 = a10;
      }

      else
      {
LABEL_190:
        v171 = (*a8)++;
        v159[1] = v171;
        v158[1] = v171;
        v112 = v206;
        v111 = a10;
      }
    }

    if (++v155 != v41)
    {
      continue;
    }

    break;
  }

  if (v154)
  {
    v30 = v154;
LABEL_206:
    v175 = 0;
    while (2)
    {
      v177 = (a3 + 1764 * *(v109 + 4 * v175));
      v178 = *v111;
      if (v178)
      {
        v179 = v110;
        while (*v179 != *v177)
        {
          v179 += 3;
          if (!--v178)
          {
            goto LABEL_213;
          }
        }

        *(v179 + 1) = 0xFFFFFFFFLL;
        v180 = v177[1];
        if (!v116)
        {
LABEL_220:
          v183 = 0;
          if (!v180)
          {
            goto LABEL_207;
          }

LABEL_224:
          if (v183)
          {
            goto LABEL_207;
          }

          v112[v116++] = v180;
          goto LABEL_208;
        }
      }

      else
      {
LABEL_213:
        v180 = v177[1];
        if (!v116)
        {
          goto LABEL_220;
        }
      }

      if (*v112 != v180)
      {
        v181 = 0;
        while (v116 - 1 != v181)
        {
          v182 = v112[++v181];
          if (v182 == v180)
          {
            goto LABEL_223;
          }
        }

        v181 = v116;
LABEL_223:
        v183 = v181 < v116;
        if (v180)
        {
          goto LABEL_224;
        }
      }

LABEL_207:
      v176 = (*v114)++;
      v177[1] = v176;
LABEL_208:
      if (++v175 == v30)
      {
        break;
      }

      continue;
    }
  }

  if (v115)
  {
    v184 = v115;
    if (v116)
    {
      for (i = 0; i != v184; ++i)
      {
        v187 = a1 + 1764 * v113[i];
        v190 = *(v187 + 4);
        v188 = (v187 + 4);
        v189 = v190;
        if (*v112 == v190)
        {
          goto LABEL_229;
        }

        v191 = 0;
        while (v116 - 1 != v191)
        {
          v192 = v112[++v191];
          if (v192 == v189)
          {
            if (!v189)
            {
              goto LABEL_229;
            }

            goto LABEL_238;
          }
        }

        v191 = v116;
        if (!v189)
        {
          goto LABEL_229;
        }

LABEL_238:
        if (v191 < v116)
        {
LABEL_229:
          v186 = (*v114)++;
          *v188 = v186;
        }
      }

      goto LABEL_246;
    }

    do
    {
LABEL_244:
      v193 = *v113++;
      v194 = a1 + 1764 * v193;
      v196 = *(v194 + 4);
      v195 = (v194 + 4);
      if (!v196)
      {
        v197 = (*v114)++;
        *v195 = v197;
      }

      --v184;
    }

    while (v184);
  }

LABEL_246:
  v198 = *MEMORY[0x277D85DE8];
}

double acTrkGroupTemporalInfoReset(uint64_t a1)
{
  result = NAN;
  *a1 = -1;
  *(a1 + 8) = 0;
  return result;
}

_DWORD *acTrkHandChiralityTemporalSmoothing(_DWORD *result, uint64_t a2, int a3, int a4, int a5, char a6, unsigned int a7, char a8)
{
  v8 = *(a2 + 8);
  if ((v8 & 0xFFFFFFFE) != 0xA)
  {
    return result;
  }

  if (a6)
  {
    if (a7 >= result[205])
    {
      LODWORD(v9) = result[205];
    }

    else
    {
      LODWORD(v9) = a7;
    }

    if (v9)
    {
      v10 = 0;
      v11 = 0;
      if (v9 >= 6)
      {
        v9 = 6;
      }

      else
      {
        v9 = v9;
      }

      v12 = result + 146;
      do
      {
        v14 = *v12;
        v12 += 11;
        v13 = v14;
        if (v14 == 10)
        {
          v15 = v11 + 1;
        }

        else
        {
          v15 = v11;
        }

        if (v13 == 11)
        {
          ++v10;
        }

        else
        {
          v11 = v15;
        }

        --v9;
      }

      while (v9);
      if (v8 == a3)
      {
        goto LABEL_37;
      }

      if (v11 <= v10)
      {
        if (v11 < v10)
        {
          v8 = 11;
        }
      }

      else
      {
        v8 = 10;
      }
    }

    else if (v8 == a3)
    {
      goto LABEL_37;
    }

    result[2] = v8;
    a3 = *(a2 + 8);
LABEL_37:
    if (*(a2 + 28) < 2u)
    {
      v18 = a8;
    }

    else
    {
      v18 = 0;
    }

    if (a3 != 10 || (v18 & 1) != 0)
    {
      if (!((a3 != 11) | v18 & 1))
      {
        ++result[425];
      }
    }

    else
    {
      ++result[424];
    }

    goto LABEL_45;
  }

  if (v8 != a3)
  {
    v16 = result[424];
    v17 = result[425];
    if (v16 <= v17)
    {
      if (v16 >= v17)
      {
LABEL_32:
        result[2] = v8;
        goto LABEL_45;
      }

      if (v8 == 10 && v16 + a4 >= v17)
      {
        goto LABEL_33;
      }
    }

    else if (v8 != 11 || v17 + a5 < v16)
    {
LABEL_33:
      result[2] = 10;
      goto LABEL_45;
    }

    v8 = 11;
    goto LABEL_32;
  }

LABEL_45:
  v19 = *(a2 + 8);
  if (v19 == 10)
  {
    v20 = 424;
  }

  else
  {
    if (v19 != 11)
    {
      return result;
    }

    v20 = 425;
  }

  ++result[v20];
  return result;
}

float acTrkLabelCenterSizeSmoothing(unsigned int *__src, char *__dst, uint64_t a3, unsigned int a4, uint64_t a5, int a6, int a7, unsigned int a8, float *a9, float *a10, float *a11, float *a12)
{
  v12 = 0;
  v13 = a11;
  *a9 = *(__dst + 5);
  *a10 = *(__dst + 6);
  v14 = __src[2];
  v15 = 5;
  if ((v14 & 0xFFFFFFFE) == 0xA)
  {
    v15 = 6;
  }

  v16 = __src[205];
  v17 = (v14 < 9) & (0x13Fu >> v14);
  v18 = v16 - 1;
  v19 = v15;
  if (v17)
  {
LABEL_4:
    v19 = qword_22E662798[v14];
  }

  while (v12 < *(a5 + 8 + 4 * v19) && v12 < v16)
  {
    v21 = &__src[11 * v18 + 137];
    *a9 = v21[2] + *a9;
    *a10 = v21[3] + *a10;
    ++v12;
    --v18;
    v19 = v15;
    if (v17)
    {
      goto LABEL_4;
    }
  }

  v22 = (__dst + 12);
  v23 = (v12 + 1);
  *a9 = *a9 / v23;
  result = *a10 / v23;
  *a10 = result;
  v25 = *(__dst + 2);
  switch(v25)
  {
    case 0:
      if (*(__src + 104) && !__dst[104])
      {
        v55 = *(a5 + 180);
        v56 = __src[11];
        v57 = v56 >= 0 && v56 < v55;
        v58 = v57;
        v60 = v56 <= 360 - v55 || v56 > 360;
        v61 = *(__dst + 3);
        v62 = 1;
        if (v61 >= 0.0)
        {
          v63 = *(__dst + 4);
          if (v63 >= 0.0)
          {
            v62 = (v61 + *(__dst + 5)) > a8 || (v63 + *(__dst + 6)) > a8;
          }
        }

        v64 = *(__src + 218);
        if (v58)
        {
          if (v64 >= 0.03 || v62)
          {
            goto LABEL_75;
          }

LABEL_73:
          v66 = __src[214];
          if (v66)
          {
            if (v66 >= __src[215])
            {
              goto LABEL_75;
            }
          }

          else
          {
            __src[215] = 5;
          }

          v114 = *(__dst + 7);
          v117 = *v22;
          v90 = __src;
          v115 = a3;
          v116 = __dst;
          v91 = a5;
          v92 = a8;
          v93 = a7;
          v94 = a6;
          v95 = a4;
          memcpy(__dst, __src, 0x210uLL);
          a4 = v95;
          a6 = v94;
          a7 = v93;
          a8 = v92;
          v13 = a11;
          a3 = v115;
          a5 = v91;
          __src = v90;
          __dst = v116;
          *v22 = v117;
          *(v116 + 7) = v114;
          ++v90[214];
          if (!v95)
          {
            goto LABEL_99;
          }

          goto LABEL_76;
        }

        if (v64 >= 0.03)
        {
          v60 = 1;
        }

        if (!v60 && !v62)
        {
          goto LABEL_73;
        }
      }

LABEL_75:
      __src[214] = 0;
      if (!a4)
      {
        goto LABEL_99;
      }

LABEL_76:
      v67 = a4;
      while (*(a3 + 4) != a6 || *(a3 + 8) != 1)
      {
        a3 += 1764;
        if (!--v67)
        {
          goto LABEL_99;
        }
      }

      v68 = *(a3 + 12);
      v69 = vadd_f32(v68, *(a3 + 20));
      v70 = *(__dst + 12);
      v71 = *(__dst + 20);
      v72 = vadd_f32(v70, v71);
      v73 = vmaxnm_f32(vsub_f32(vbsl_s8(vcgt_f32(v69, v72), v72, v69), vbsl_s8(vcgt_f32(v68, v70), v68, v70)), 0);
      v74 = vmul_lane_f32(v73, v73, 1).f32[0];
      if (v74 >= 0.00000011921)
      {
        v75 = vsub_f32(v69, v68);
        v76 = fmaxf(v75.f32[1], 0.0);
        v77 = fmaxf(v75.f32[0], 0.0);
        v78 = vsub_f32(v72, v70);
        v79 = fmaxf(v78.f32[0], 0.0);
        v80 = v77 * v76;
        v81 = v79 * fmaxf(v78.f32[1], 0.0);
        v82 = v81 >= (v77 * v76) ? v77 * v76 : v81;
        if (v82 >= 0.00000011921)
        {
          v83 = v74 / v82;
          v84 = vmul_lane_f32(v71, v71, 1).f32[0] / ((a8 * a7) + 0.0001);
          v85 = (v81 + v80) - v74;
          v86 = v74 / v85;
          v87 = v83 <= 0.75 || v85 < 0.00000011921;
          v88 = v87 || v86 <= 0.6;
          if (!v88 && v84 < 0.15)
          {
            *a9 = __src[5];
            *a10 = __src[6];
          }
        }
      }

LABEL_99:
      v96 = *(__dst + 5);
      result = *(__dst + 6);
      v97 = __dst[104];
      v98 = *(__src + 104);
      if (v98 != v97)
      {
        __src[206] = 0;
        __src[216] = 0;
        if (v97 && !v98)
        {
          v101 = __src[207] + 1;
          __src[207] = v101;
          __src[208] = 1;
          if (*(a5 + 164) == 1)
          {
            result = ((__src[210] / (__src[134] + 0.0001)) * (1.0 - (__src[209] / (*(a5 + 160) + __src[211])))) * *(a5 + 168);
            __src[211] = vcvtps_s32_f32(result);
          }

          else
          {
            __src[211] = 0;
          }

          goto LABEL_130;
        }

        v101 = 0;
        *(__src + 207) = 0;
        *a9 = v96;
LABEL_129:
        *a10 = result;
LABEL_130:
        v111 = __src[211] + *(a5 + 160);
        v112 = __src[208];
        if (v101 < v111 && v112)
        {
          *a9 = __src[5];
          result = *(__src + 6);
          *a10 = result;
          v112 = __src[208];
        }

        if (v101 < v111 && v112)
        {
          v113 = 0.0;
          if (((*a9 * *a10) / ((a8 * a7) + 0.0001)) > 0.1)
          {
            v113 = 0.5;
          }

          *v13 = ((v113 * (*(__src + 3) + (*(__src + 5) * 0.5))) + ((1.0 - v113) * (*(__dst + 3) + (*(__dst + 5) * 0.5)))) - (*a9 * 0.5);
          result = ((v113 * (*(__src + 4) + (*(__src + 6) * 0.5))) + ((1.0 - v113) * (*(__dst + 4) + (*(__dst + 6) * 0.5)))) - (*a10 * 0.5);
          *a12 = result;
        }

        return result;
      }

      if (__dst[104])
      {
        v99 = 0;
        *(__src + 209) = 0;
        v100 = 211;
      }

      else
      {
        v102 = __src[207];
        if (!v102 || v102 >= __src[211] + *(a5 + 160))
        {
LABEL_103:
          *(__src + 207) = 0;
          if (__src[206] % *(a5 + 172))
          {
            v101 = 0;
            *a9 = __src[5];
            result = *(__src + 6);
          }

          else
          {
            __src[206] = 0;
            if (!v97)
            {
              v103 = *(__src + 217);
              v104 = v96 * result;
              v105 = *a9 * *a10;
              if (v103 <= v105)
              {
                v106 = v103 / v105;
              }

              else
              {
                v106 = v105 / v103;
              }

              v57 = v103 <= v104;
              v107 = v103 / v104;
              v108 = v104 / v103;
              if (v57)
              {
                v108 = v107;
              }

              if (v108 <= v106)
              {
                v96 = *a9;
              }

              *a9 = v96;
              if (v108 <= v106)
              {
                result = *a10;
              }

              *a10 = result;
            }

            result = *a9;
            v109 = *a9 / (*(__src + 5) + 0.0001);
            v101 = 0;
            if (v109 <= 1.5)
            {
              goto LABEL_130;
            }

            v110 = (1.0 / (v109 + 0.0001)) + 0.05;
            if (v110 <= 0.2)
            {
              v110 = 0.6;
            }

            *a9 = result * v110;
            result = v110 * *a10;
          }

          goto LABEL_129;
        }

        __src[209] = v102;
        v99 = __src[134];
        v100 = 210;
      }

      __src[v100] = v99;
      goto LABEL_103;
    case 9:
      *a9 = *(__dst + 5);
      result = *(__dst + 6);
      *a10 = result;
      v27 = 0.1;
      v26 = result;
      break;
    case 1:
      v26 = *(__dst + 6);
      v27 = 0.03;
      break;
    default:
      return result;
  }

  v29 = *(__dst + 3);
  v28 = *(__dst + 4);
  v30 = *(__dst + 5);
  v31 = v29 + v30;
  v32 = v28 + v26;
  v34 = *(__src + 3);
  v33 = *(__src + 4);
  v35 = *(__src + 5);
  v36 = v33 + *(__src + 6);
  v37 = (vabds_f32(v29, v34) / v30) <= v27;
  v38 = (vabds_f32(v29 + v30, v34 + v35) / v30) <= v27;
  v39 = vabds_f32(v28, v33) / v26;
  v40 = vabds_f32(v28 + v26, v36) / v26;
  v41 = v39 <= v27 && v37;
  v42 = v39 <= v27 && v38;
  if (v40 > v27)
  {
    v37 = 0;
    v38 = 0;
  }

  if ((v42 + v41 + v37 + v38) >= 2)
  {
    v43 = v29 - v34;
    v44 = v31 - (v34 + v35);
    v45 = (v28 - v33) * (v28 - v33);
    v46 = sqrtf(v45 + (v43 * v43));
    v47 = sqrtf(v45 + (v44 * v44));
    v48 = (v32 - v36) * (v32 - v36);
    v49 = v48 + (v43 * v43);
    v50 = 3.4028e38;
    if (v46 < 3.4028e38)
    {
      v42 = 0;
      v37 = 0;
      v38 = 0;
      LOBYTE(v41) = 1;
      v50 = v46;
    }

    v51 = v48 + (v44 * v44);
    v52 = sqrtf(v49);
    if (v47 < v50)
    {
      LOBYTE(v41) = 0;
      v37 = 0;
      v38 = 0;
      v42 = 1;
      v50 = v47;
    }

    v53 = sqrtf(v51);
    if (v52 < v50)
    {
      LOBYTE(v41) = 0;
      v42 = 0;
      v38 = 0;
      v37 = 1;
      v50 = v52;
    }

    if (v53 < v50)
    {
      LOBYTE(v41) = 0;
      v42 = 0;
      v37 = 0;
      v38 = 1;
    }
  }

  if (v25 == 9)
  {
    v54 = 5;
  }

  else
  {
    v54 = *(a5 + 184);
  }

  if (__src[134] % v54)
  {
    result = *(__src + 6);
  }

  else
  {
    v35 = *a9;
  }

  if (!v41)
  {
    if (v42)
    {
      *v22 = v31 - v35;
    }

    else
    {
      if (v38)
      {
        v65 = v32 - result;
        *(__dst + 3) = v31 - v35;
      }

      else
      {
        if (!v37)
        {
          return result;
        }

        v65 = v32 - result;
      }

      *(__dst + 4) = v65;
    }
  }

  *(__dst + 5) = v35;
  *(__dst + 6) = result;
  *a9 = v35;
  *a10 = result;
  return result;
}

uint64_t acTrkTermClassIndex(unsigned int a1)
{
  if (a1 < 9 && ((0x13Fu >> a1) & 1) != 0)
  {
    return dword_22E6626F8[a1];
  }

  if ((a1 & 0xFFFFFFFE) == 0xA)
  {
    return 6;
  }

  return 5;
}

BOOL acTrkCheckBoxCornerNearImageBoundary(unsigned int a1, unsigned int a2, float a3, float a4, float a5, float a6)
{
  v6 = 1;
  if (a3 >= 0.0 && a4 >= 0.0 && (a3 + a5) <= a2)
  {
    return (a4 + a6) > a1;
  }

  return v6;
}

uint64_t acTrkFacialAttrTemporalSmoothing(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unsigned int a6, float a7)
{
  v7 = *(a2 + 8);
  if (v7)
  {
    v8 = *(a2 + 32);
    v9 = *(a2 + 44);
    v10 = *(a2 + 48);
    v11 = *(a2 + 104);
    v12 = *(a2 + 428);
    if (*(result + 8) == 9)
    {
      *(result + 548) = *(a2 + 12);
      *(result + 564) = v11;
      *(result + 580) = v12;
      *(result + 572) = v10;
      *(result + 568) = v9;
      *(result + 584) = v7;
      *(result + 588) = v8;
LABEL_96:
      *(result + 820) = 1;
      return result;
    }

    v34 = *(result + 820);
    if (v34 >= 6)
    {
      *(result + 768) = *(a2 + 12);
      *(result + 784) = v11;
      *(result + 800) = v12;
      *(result + 792) = v10;
      *(result + 788) = v9;
      *(result + 804) = v7;
      *(result + 808) = v8;
      return result;
    }

    v35 = result + 44 * v34;
    *(v35 + 548) = *(a2 + 12);
    *(v35 + 564) = v11;
    *(v35 + 580) = v12;
    *(v35 + 572) = v10;
    *(v35 + 568) = v9;
    *(v35 + 584) = v7;
    *(v35 + 588) = v8;
    goto LABEL_100;
  }

  *&v13 = *(a2 + 12);
  v14 = *(a2 + 20);
  v15 = *(a2 + 32);
  v16 = *(a2 + 44);
  v17 = *(a2 + 104);
  v18 = *(result + 820);
  v19 = v18 - 1;
  if (!v18)
  {
    v19 = 0;
  }

  if (*(a2 + 104))
  {
    v20 = *(a2 + 48);
    _ZF = *(result + 828) >= (*(result + 844) + *(a4 + 160)) || *(result + 832) == 0;
    if (!_ZF)
    {
      v17 = 0;
      *(result + 136) = 0u;
      *(result + 32) = 0;
      *(result + 36) = vdupq_n_s32(0xFFFFFE97);
      *(result + 52) = -361;
      *(result + 56) = 0u;
      *(result + 72) = 0u;
      *(result + 88) = 0u;
      *(result + 104) = 0u;
      *(result + 116) = 0u;
      *(result + 412) = 0;
      *(result + 420) = 0;
      *(result + 404) = 0;
      *(result + 132) = -1;
      *(result + 152) = 0u;
      *(result + 168) = 0u;
      *(result + 184) = 0u;
      *(result + 200) = 0u;
      *(result + 216) = 0u;
      *(result + 232) = 0u;
      *(result + 248) = 0u;
      *(result + 264) = 0u;
      *(result + 280) = 0u;
      *(result + 296) = 0u;
      *(result + 312) = 0u;
      *(result + 328) = 0u;
      *(result + 344) = 0u;
      *(result + 360) = 0u;
      *(result + 376) = 0u;
      *(result + 392) = 0;
      *(result + 400) = -1;
      *(result + 428) = -1;
      *(result + 440) = 0;
      *(result + 448) = 0;
      *(result + 432) = 0;
      *(result + 460) = 0u;
      *(result + 476) = 0u;
      *(result + 492) = 0u;
      *(result + 508) = 0u;
      *(result + 524) = 0;
    }

    if (*(a4 + 44) < a7 || !*(result + 548 + 44 * v19 + 16))
    {
      goto LABEL_39;
    }

    v22 = *(a2 + 104) != 0;
    v23 = *(a2 + 44);
    v24 = v23 < 0x5B;
    v25 = (v23 - 270) < 0x5B;
    v26 = v23;
    v27 = *(a4 + 40);
    if (v27)
    {
      if (v18 >= v27 - 1)
      {
        v28 = v27 - 1;
      }

      else
      {
        v28 = v18;
      }

      v29 = v28 + 1;
      v30 = v28 + 2;
      v31 = v18 - 1;
      while (v18)
      {
        v32 = result + 548 + 44 * v31;
        v22 &= *(v32 + 16);
        LODWORD(v32) = *(v32 + 20);
        v24 = v24 & (v32 < 0x5B);
        v25 = v25 & ((v32 - 270) < 0x5B);
        v26 = v26 + v32;
        --v31;
        --v18;
        if (!--v27)
        {
          v29 = v30;
          break;
        }
      }

      v33 = v29;
      if ((v22 & 1) == 0)
      {
LABEL_39:
        v37 = *(result + 548 + 44 * v19 + 24);
        if (!v17)
        {
          goto LABEL_51;
        }

        if (v37 != -361)
        {
          if (v20 > 500)
          {
            v41 = *(result + 548 + 44 * v19 + 24);
            if (v37 < 500)
            {
LABEL_44:
              if ((-858993459 * *(result + 824)) < 0x33333334 || a3 == -361)
              {
                v43 = v41;
              }

              else
              {
                v43 = a3;
              }

              *(result + 48) = v43;
              v37 = v41;
LABEL_51:
              v44 = (result + 548 + 44 * v19);
              v45 = v44[5].f32[0];
              if (fabsf(v45 + 1.0) >= 0.000001)
              {
                v46 = vdiv_f32(vdiv_f32(vabd_f32(v14, v44[1]), v14), vdup_n_s32(0x3D4CCCCDu));
                if (v46.f32[0] <= 1.0)
                {
                  v47 = v46.f32[0];
                }

                else
                {
                  v47 = 1.0;
                }

                v48 = vcltz_f32(v46).i8[4];
                v49 = vdiv_f32(vabd_f32(*&v13, *v44), v14);
                v50 = vadd_f32(v49, v49);
                __asm { FMOV            V16.2S, #1.0 }

                v55 = vbic_s8(vbsl_s8(vcgt_f32(v50, _D16), _D16, v50), vcltz_f32(v50));
                if (!_ZF)
                {
                  v47 = 0.0;
                }

                v46.i32[0] = v46.i32[1];
                if (v46.f32[1] > 1.0)
                {
                  v46.f32[0] = 1.0;
                }

                if (v48)
                {
                  v46.f32[0] = 0.0;
                }

                v56 = fminf(fmaxf(((vaddv_f32(v55) + v47) + v46.f32[0]) * 0.125, 0.01), 1.0);
                v57 = (v45 * (1.0 - v56)) + (v15 * v56);
                v15 = 10000.0;
                if (v57 <= 10000.0)
                {
                  v15 = v57;
                }

                if (v57 < 0.0)
                {
                  v15 = 0.0;
                }

                *(result + 32) = v15;
              }

              if (v17)
              {
                if (a6)
                {
                  v58 = 0;
                  while (*result != *(a5 + 4 * v58))
                  {
                    v58 += 6;
                    if (6 * a6 == v58)
                    {
                      goto LABEL_71;
                    }
                  }

                  v60 = v58 + 5;
                  if (*(a5 + 4 * v60))
                  {
                    v38 = *(a2 + 428);
                    *(result + 428) = v38;
                    *(a5 + 4 * v60) = 0;
                  }

                  else
                  {
                    v38 = v44[4].i32[0];
                    *(result + 428) = v38;
                  }
                }

                else
                {
LABEL_71:
                  v38 = -1;
                  *(result + 428) = -1;
                }
              }

              else
              {
                if (a6)
                {
                  v59 = 0;
                  while (*result != *(a5 + 4 * v59))
                  {
                    v59 += 6;
                    if (6 * a6 == v59)
                    {
                      goto LABEL_93;
                    }
                  }

                  *(a5 + 4 * (v59 + 5)) = 0;
                }

LABEL_93:
                LOBYTE(v17) = 0;
                *(result + 428) = -1;
                v38 = v44[4].i32[0];
              }

              goto LABEL_94;
            }
          }

          if (v20 >= 500 || v37 <= 500)
          {
            v61 = v37 - 1080;
            if (v37 <= 500)
            {
              v61 = *(result + 548 + 44 * v19 + 24);
            }

            v62 = v61 + 360;
            if ((v61 + 0.0001) >= 0.0)
            {
              v62 = v61;
            }

            v41 = v20;
            if ((v62 - 121) <= 0x76)
            {
              v63 = v20 - 1080;
              if (v37 <= 500)
              {
                v63 = v20;
              }

              if ((v63 + 0.0001) < 0.0)
              {
                v63 += 360;
              }

              v64 = v63 - v62;
              if (v64 < 11)
              {
                v67 = v37 - 10;
                if (v64 >= -10)
                {
                  v41 = v20;
                }

                else
                {
                  v41 = v67;
                }
              }

              else
              {
                v41 = v37 + 10;
              }
            }

            goto LABEL_44;
          }
        }

        v41 = v20;
        goto LABEL_44;
      }
    }

    else
    {
      v33 = 1.0;
      if (!*(a2 + 104))
      {
        goto LABEL_39;
      }
    }

    if ((v25 ^ v24))
    {
      v39 = (v26 / v33);
      *(result + 44) = v39;
      if (v39 >= 0x5B)
      {
        v39 -= 360;
      }

      if (v39 >= 90)
      {
        v39 = 90;
      }

      if (v39 <= -90)
      {
        v39 = -90;
      }

      v40 = (((v39 + 90) / 45.0) + 0.5) % 5;
      if (v40 > 0xFFFFFFFA)
      {
        v40 += 5;
      }

      *(result + 36) = AcDetNode::m_kFacePoseYawCenters[v40];
    }

    goto LABEL_39;
  }

  v36 = result + 44 * v19;
  v37 = *(v36 + 572);
  v38 = *(v36 + 580);
LABEL_94:
  if (*(result + 8) == 9)
  {
    *(&v13 + 1) = v14;
    *(result + 548) = v13;
    *(result + 564) = v17;
    *(result + 580) = v38;
    *(result + 572) = v37;
    *(result + 568) = v16;
    *(result + 584) = 0;
    *(result + 588) = v15;
    goto LABEL_96;
  }

  v65 = *(result + 820);
  if (v65 >= 6)
  {
    *(&v13 + 1) = v14;
    *(result + 768) = v13;
    *(result + 784) = v17;
    *(result + 800) = v38;
    *(result + 792) = v37;
    *(result + 788) = v16;
    *(result + 804) = 0;
    *(result + 808) = v15;
    return result;
  }

  v66 = result + 44 * v65;
  *(&v13 + 1) = v14;
  *(v66 + 548) = v13;
  *(v66 + 564) = v17;
  *(v66 + 580) = v38;
  *(v66 + 572) = v37;
  *(v66 + 568) = v16;
  *(v66 + 584) = 0;
  *(v66 + 588) = v15;
LABEL_100:
  ++*(result + 820);
  return result;
}

uint64_t acTrkObjectAssocTrkDetGetTempBuffers(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 12 * a1;
  v5 = 4 * a1;
  v6 = (4 * a1) | 3;
  v7 = a1 * a1 + 12 * a1 + 4 * a1 * a1 + v6 + 2 * (v6 + a1) + 9;
  v8 = 4 * a1 * a1;
  v9 = 8 * a1;
  v10 = 528 * a1;
  if (a2)
  {
    v11 = a2 + 3;
    v12 = (a2 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v13 = v5 - a2;
    *a4 = v12;
    *(a4 + 8) = (a2 + 3 + (v12 + v5 - a2)) & 0xFFFFFFFFFFFFFFFCLL;
    *(a4 + 32) = v7;
    *(a4 + 16) = (a2 + 3 + ((v12 + v5 + 3) & 0xFFFFFFFC) + v8 - a2) & 0xFFFFFFFFFFFFFFFCLL;
    *(a4 + 24) = a2 + ((((v12 + v5 + 3) & 0xFFFFFFFC) + v8 + 3) & 0xFFFFFFFC) + v8 - a2;
    *(a4 + 40) = (a2 + 3 + v7 + ((((v12 + v5 + 3) & 0xFFFFFFFC) + v8 + 3) & 0xFFFFFFFC) + v8 - a2) & 0xFFFFFFFFFFFFFFFCLL;
    *(a4 + 48) = a1 & 0x3FFFFFFF;
    *(a4 + 56) = (a2 + 3 + ((v7 + ((((v12 + v5 + 3) & 0xFFFFFFFC) + v8 + 3) & 0xFFFFFFFC) + v8 + 3) & 0xFFFFFFFC) + v5 - a2) & 0xFFFFFFFFFFFFFFFCLL;
    *(a4 + 64) = (a2 + 3 + ((((v7 + ((((v12 + v5 + 3) & 0xFFFFFFFC) + v8 + 3) & 0xFFFFFFFC) + v8 + 3) & 0xFFFFFFFC) + v5 + 3) & 0xFFFFFFFC) + v9 - a2) & 0xFFFFFFFFFFFFFFFCLL;
    v14 = a1 - a2;
    *(a4 + 72) = (a2 + 3 + ((((((v7 + ((((v12 + v5 + 3) & 0xFFFFFFFC) + v8 + 3) & 0xFFFFFFFC) + v8 + 3) & 0xFFFFFFFC) + v5 + 3) & 0xFFFFFFFC) + v9 + 3) & 0xFFFFFFFC) + v4 - a2) & 0xFFFFFFFFFFFFFFFCLL;
    *(a4 + 80) = a2 + ((((((((v7 + ((((v12 + v5 + 3) & 0xFFFFFFFC) + v8 + 3) & 0xFFFFFFFC) + v8 + 3) & 0xFFFFFFFC) + v5 + 3) & 0xFFFFFFFC) + v9 + 3) & 0xFFFFFFFC) + v4 + 3) & 0xFFFFFFFC) + v5 - a2;
    v15 = 32 * a1 - a2;
    *(a4 + 88) = a2 + a1 - a2 + ((((((((v7 + ((((v12 + v5 + 3) & 0xFFFFFFFC) + v8 + 3) & 0xFFFFFFFC) + v8 + 3) & 0xFFFFFFFC) + v5 + 3) & 0xFFFFFFFC) + v9 + 3) & 0xFFFFFFFC) + v4 + 3) & 0xFFFFFFFC) + v5;
    *(a4 + 96) = (a2 + 3 + a1 - a2 + a1 + ((((((((v7 + ((((v12 + v5 + 3) & 0xFFFFFFFC) + v8 + 3) & 0xFFFFFFFC) + v8 + 3) & 0xFFFFFFFC) + v5 + 3) & 0xFFFFFFFC) + v9 + 3) & 0xFFFFFFFC) + v4 + 3) & 0xFFFFFFFC) + v5) & 0xFFFFFFFFFFFFFFFCLL;
    v16 = (a2 + 3 + ((a1 + a1 + ((((((((v7 + ((((v12 + v5 + 3) & 0xFFFFFFFC) + v8 + 3) & 0xFFFFFFFC) + v8 + 3) & 0xFFFFFFFC) + v5 + 3) & 0xFFFFFFFC) + v9 + 3) & 0xFFFFFFFC) + v4 + 3) & 0xFFFFFFFC) + v5 + 3) & 0xFFFFFFFC) + v15) & 0xFFFFFFFFFFFFFFFCLL;
    v17 = a2 + (v16 + v15);
    *(a4 + 120) = a1;
    *(a4 + 104) = v16;
    *(a4 + 112) = v17;
    v18 = (a2 + 3 + (a1 - a2 + v17)) & 0xFFFFFFFFFFFFFFFCLL;
    *(a4 + 128) = v18;
    *(a4 + 136) = (a2 + 3 + (v18 + v5 - a2)) & 0xFFFFFFFFFFFFFFFCLL;
    v19 = (a2 + 3 + ((v18 + v5 + 3) & 0xFFFFFFFC) + v8 - a2) & 0xFFFFFFFFFFFFFFFCLL;
    *(a4 + 160) = v7;
    *(a4 + 144) = v19;
    *(a4 + 152) = a2 + (v19 + v8 - a2);
    v20 = (a2 + 3 + (v7 - a2 + v19 + v8)) & 0xFFFFFFFFFFFFFFFCLL;
    *(a4 + 168) = v20;
    *(a4 + 176) = a1 & 0x3FFFFFFF;
    v21 = (a2 + 3 + (v20 + v5 - a2)) & 0xFFFFFFFFFFFFFFFCLL;
    *(a4 + 184) = v21;
    *(a4 + 192) = (a2 + 3 + (v21 + v5 - a2)) & 0xFFFFFFFFFFFFFFFCLL;
    v22 = (a2 + 3 + ((v21 + v5 + 3) & 0xFFFFFFFC) + v5 - a2) & 0xFFFFFFFFFFFFFFFCLL;
    *(a4 + 200) = v22;
    *(a4 + 208) = (a2 + 3 + (v22 + v10 - a2)) & 0xFFFFFFFFFFFFFFFCLL;
    v23 = (a2 + 3 + ((v22 + v10 + 3) & 0xFFFFFFFC) + v5 - a2) & 0xFFFFFFFFFFFFFFFCLL;
    *(a4 + 248) = v7;
    *(a4 + 232) = (a2 + 3 + (v23 + v8 - a2)) & 0xFFFFFFFFFFFFFFFCLL;
    *(a4 + 240) = a2 + ((v23 + v8 + 3) & 0xFFFFFFFC) + v8 - a2;
    *(a4 + 256) = (a2 + 3 + v7 - a2 + ((v23 + v8 + 3) & 0xFFFFFFFC) + v8) & 0xFFFFFFFFFFFFFFFCLL;
    *(a4 + 264) = a1 & 0x3FFFFFFF;
    *(a4 + 272) = (a2 + 3 + ((v7 + ((v23 + v8 + 3) & 0xFFFFFFFC) + v8 + 3) & 0xFFFFFFFC) + v5 - a2) & 0xFFFFFFFFFFFFFFFCLL;
    *(a4 + 280) = (a2 + 3 + ((((v7 + ((v23 + v8 + 3) & 0xFFFFFFFC) + v8 + 3) & 0xFFFFFFFC) + v5 + 3) & 0xFFFFFFFC) + v5 - a2) & 0xFFFFFFFFFFFFFFFCLL;
    v24 = (a2 + 3 + ((((((v7 + ((v23 + v8 + 3) & 0xFFFFFFFC) + v8 + 3) & 0xFFFFFFFC) + v5 + 3) & 0xFFFFFFFC) + v5 + 3) & 0xFFFFFFFC) + v5 - a2) & 0xFFFFFFFFFFFFFFFCLL;
    v25 = a2 + ((((((((v7 + ((v23 + v8 + 3) & 0xFFFFFFFC) + v8 + 3) & 0xFFFFFFFC) + v5 + 3) & 0xFFFFFFFC) + v5 + 3) & 0xFFFFFFFC) + v5 + 3) & 0xFFFFFFFC) + v5 - a2;
    *(a4 + 288) = v24;
    *(a4 + 296) = v25;
    v26 = (v11 + (v14 + v25)) & 0xFFFFFFFFFFFFFFFCLL;
    *(a4 + 216) = v26;
    *(a4 + 224) = v23;
    *(a4 + 304) = (v11 + (v26 + v13)) & 0xFFFFFFFFFFFFFFFCLL;
  }

  return (592 * a1 + v4 + v9 - v6 + 8 * v6 + v5 + 6 * (v6 + v8) + 3 * v7 + 292);
}

float acTrkObjectPriority(unsigned int a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  v4 = 2.0;
  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a3 + 104) == 0;
  }

  if (!v5)
  {
    v4 = flt_22E6626AC[v3];
  }

  return (1.0 - ((*(a3 + 20) * *(a3 + 24)) / (a1 * a2))) + v4;
}

const unsigned int *acTrkObectSurplusExchange(const unsigned int *a1, unsigned int *a2)
{
  v4 = a1[1];
  result = a1 + 1;
  v3 = v4;
  v7 = a2[1];
  v5 = a2 + 1;
  v6 = v7;
  v8 = result[1];
  v9 = v5[1];
  if (v3 < v7 && v8 > v9)
  {
    v12 = v5 + 1;
    goto LABEL_11;
  }

  if (v3 > v6 && v8 < v9)
  {
    v3 = result[1];
    v12 = v5;
    ++result;
    ++v5;
LABEL_11:
    *v12 = v6 - v3 + v9;
    *v5 = *result;
  }

  return result;
}

uint64_t acTrkObjectPickDet(unsigned int a1, unsigned int a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6, int a7, uint64_t a8, unsigned int *a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14, unsigned int a15)
{
  v97[4] = *MEMORY[0x277D85DE8];
  LODWORD(v19) = *a9;
  if (*a9)
  {
    v19 = 0;
    v20 = (a10 + 8);
    do
    {
      v22 = *(a8 + 4 * v19);
      v23 = a6 + 528 * v22;
      if (*(v23 + 28) < 2u)
      {
        v21 = 100.0;
      }

      else
      {
        v24 = *(v23 + 8);
        v25 = 2.0;
        if (v24)
        {
          v26 = 0;
        }

        else
        {
          v26 = *(v23 + 104) == 0;
        }

        if (!v26)
        {
          v25 = flt_22E6626AC[v24];
        }

        v21 = (1.0 - ((*(v23 + 20) * *(v23 + 24)) / (a1 * a2))) + v25;
      }

      *(v20 - 2) = v22;
      *(v20 - 1) = *(a12 + 4 * v22);
      *v20 = v21;
      v20 += 3;
      ++v19;
    }

    while (v19 < *a9);
  }

  if (a7)
  {
    v28 = 0;
    v29 = (a6 + 104);
    do
    {
      if (*(a12 + 4 * v28) != -1)
      {
        v32 = *(v29 - 24);
        v33 = 2.0;
        if (v32)
        {
          v34 = 0;
        }

        else
        {
          v34 = *v29 == 0;
        }

        if (!v34)
        {
          v33 = flt_22E6626AC[v32];
        }

        v30 = 1.0 - ((*(v29 - 21) * *(v29 - 20)) / (a1 * a2));
        v31 = a10 + 12 * v19;
        *v31 = v28;
        *(v31 + 4) = *(a12 + 4 * v28);
        *(v31 + 8) = v30 + v33;
        LODWORD(v19) = v19 + 1;
      }

      ++v28;
      v29 += 132;
    }

    while (a7 != v28);
  }

  v35 = v19;
  result = bmHeapsort(a10, v19, 0xCuLL, sub_22E635470);
  if (a14)
  {
    if (v35)
    {
      v37 = 0;
      v38 = 0;
      v39 = (a10 + 4);
      v40 = v35;
      do
      {
        v41 = a6 + 528 * *(v39 - 1);
        if (!*(v41 + 8))
        {
          ++v37;
          if (*v39 == -1 && *(v41 + 104) && v38 <= 0x1C)
          {
            dword_27DA6A7C0[v38++] = *(v41 + 24) * *(v41 + 20);
          }
        }

        v39 += 3;
        --v40;
      }

      while (v40);
    }

    else
    {
      v38 = 0;
      v37 = 0;
    }

    if (!a4)
    {
      goto LABEL_53;
    }

    v43 = 0;
    v44 = 0;
    v45 = (a3 + 24);
    v46 = 1;
    do
    {
      if (!*(v45 - 4))
      {
        ++v44;
        v47 = &unk_27DA6A838 + 8 * v43;
        *v47 = *v45 * *(v45 - 1);
        ++v43;
        *(v47 + 1) = v46 - 1;
      }

      if (v46 >= a4)
      {
        break;
      }

      ++v46;
      v45 += 441;
    }

    while (v43 < 0x1D);
    if (v44 == 10 && v37 > 0xA && v37 <= 0xF)
    {
      if (v38)
      {
        result = bmHeapsort(&unk_27DA6A838, v43, 8uLL, sub_22E63545C);
        if (v43)
        {
          v48 = v43 - 1;
          if (v43 - 1 >= v38 - 1)
          {
            v48 = v38 - 1;
          }

          v49 = v48 + 1;
          v50 = (&unk_27DA6A838 + 8 * v43 - 4);
          v51 = dword_27DA6A7C0;
          do
          {
            if (*v51 <= (*(v50 - 1) * a15))
            {
              break;
            }

            v52 = *v50;
            v50 -= 2;
            *(a3 + 1764 * LODWORD(v52) + 544) = 2;
            ++v51;
            --v49;
          }

          while (v49);
        }
      }
    }
  }

  if (a4)
  {
    v53 = a4;
    if (a4 == 1)
    {
      v54 = 0;
      v55 = 0;
    }

    else
    {
      v76 = 0;
      v77 = 0;
      v54 = a4 & 0xFFFFFFFE;
      v78 = a3;
      v79 = v54;
      do
      {
        if (*(v78 + 544) != 2)
        {
          ++v76;
        }

        if (*(v78 + 2308) != 2)
        {
          ++v77;
        }

        v78 += 3528;
        v79 -= 2;
      }

      while (v79);
      v55 = v77 + v76;
      if (v54 == a4)
      {
        goto LABEL_107;
      }
    }

    v80 = a4 - v54;
    v81 = (a3 + 1764 * v54 + 544);
    do
    {
      if (*v81 != 2)
      {
        ++v55;
      }

      v81 += 441;
      --v80;
    }

    while (v80);
LABEL_107:
    v82 = a5 - *a9 - v55;
    if (v82 < 0)
    {
      v83 = 0;
      do
      {
        v84 = a3 + 1764 * v83;
        if (*(v84 + 544) != 2)
        {
          v85 = v35;
          v86 = (a10 + 4);
          if (v35)
          {
            while (1)
            {
              v87 = *v86;
              v86 += 3;
              result = v87;
              if (v83 == v87)
              {
                break;
              }

              if (!--v85)
              {
                goto LABEL_113;
              }
            }
          }

          else
          {
LABEL_113:
            *(v84 + 544) = 2;
            ++v82;
            --v55;
          }
        }

        ++v83;
      }

      while (v83 < a4 && v82 < 0);
    }

    v56 = 0;
    memset(v97, 0, 28);
    *v96 = xmmword_22E6626DC;
    *&v96[12] = *(&xmmword_22E6626DC + 12);
    v92 = 0;
    v93 = 0;
    v95 = 0;
    v94 = 0;
    while (1)
    {
      if (*(a3 + 544) == 2)
      {
        goto LABEL_119;
      }

      v89 = *(a3 + 8);
      if (v89 <= 1)
      {
        if (!v89)
        {
          v88 = 0;
          ++v56;
          goto LABEL_118;
        }

        if (v89 == 1)
        {
          ++HIDWORD(v97[0]);
          v88 = 1;
          goto LABEL_118;
        }
      }

      else
      {
        if ((v89 - 2) < 4 || v89 == 8)
        {
          v91 = 2;
          goto LABEL_128;
        }

        if (v89 == 9)
        {
          ++HIDWORD(v97[1]);
          v88 = 3;
          goto LABEL_118;
        }
      }

      if ((v89 & 0xFFFFFFFE) == 0xA)
      {
        v91 = 4;
      }

      else
      {
        v91 = 5;
      }

LABEL_128:
      ++*(v97 + v91);
      if (v89 > 9)
      {
        goto LABEL_142;
      }

      if (((1 << v89) & 0x128) != 0 || ((1 << v89) & 0x14) != 0)
      {
        v88 = 2;
      }

      else
      {
        if (v89 != 9)
        {
LABEL_142:
          if ((v89 & 0xFFFFFFFE) == 0xA)
          {
            v88 = 4;
          }

          else
          {
            v88 = 5;
          }

          goto LABEL_118;
        }

        v88 = 3;
      }

LABEL_118:
      result = (*(&v92 + v88) + 1);
      *(&v92 + v88) = result;
LABEL_119:
      a3 += 1764;
      if (!--v53)
      {
        goto LABEL_54;
      }
    }
  }

LABEL_53:
  memset(v97 + 4, 0, 24);
  *v96 = xmmword_22E6626DC;
  *&v96[12] = *(&xmmword_22E6626DC + 12);
  v55 = 0;
  v56 = 0;
  v92 = 0;
  v93 = 0;
  v95 = 0;
  v94 = 0;
LABEL_54:
  LODWORD(v97[0]) = v56;
  if (v35)
  {
    v57 = (a10 + 4);
    v58 = v35;
    do
    {
      if (*v57 == -1)
      {
        v60 = *(a6 + 528 * *(v57 - 1) + 8);
        if (v60 < 0xA && ((0x33Fu >> v60) & 1) != 0)
        {
          v59 = qword_22E662720[v60];
        }

        else if ((v60 & 0xFFFFFFFE) == 0xA)
        {
          v59 = 4;
        }

        else
        {
          v59 = 5;
        }

        ++*(&v92 + v59);
      }

      v57 += 3;
      --v58;
    }

    while (v58);
  }

  v61 = HIDWORD(v92);
  v62 = &v96[8];
  if (HIDWORD(v92) <= 7 && v93 > 8)
  {
    v65 = &v96[8];
    v62 = &v96[4];
    goto LABEL_77;
  }

  v64 = HIDWORD(v92) < 9 || v93 > 7;
  v61 = v93;
  v65 = &v96[4];
  if (!v64)
  {
LABEL_77:
    *v65 = 16 - v61;
    *v62 = v61;
    v66 = 0;
    if (!v35)
    {
      goto LABEL_95;
    }

    goto LABEL_78;
  }

  v66 = 0;
  if (!v35)
  {
    goto LABEL_95;
  }

LABEL_78:
  v67 = a5 - v55;
  v68 = v35 - 1;
  v69 = (a6 + 8);
  v70 = (a10 + 4);
  do
  {
    if (*v70 == -1)
    {
      v72 = *v69;
      if (v72 < 0xA && ((0x33Fu >> v72) & 1) != 0)
      {
        v73 = qword_22E662720[v72];
      }

      else if ((v72 & 0xFFFFFFFE) == 0xA)
      {
        v73 = 4;
      }

      else
      {
        v73 = 5;
      }

      v74 = *(v97 + v73);
      if (v74 < *&v96[4 * v73])
      {
        *(a8 + 4 * v66++) = *(v70 - 1);
        *(v97 + v73) = v74 + 1;
      }
    }

    LODWORD(result) = *a9;
    if (v67 >= *a9)
    {
      result = result;
    }

    else
    {
      result = v67;
    }

    v71 = v66 == result || v68-- == 0;
    v69 += 132;
    v70 += 3;
  }

  while (!v71);
LABEL_95:
  *a9 = v66;
  v75 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t acTrkCategoryLimitationIndex(unsigned int a1)
{
  if (a1 < 0xA && ((0x33Fu >> a1) & 1) != 0)
  {
    return dword_22E662770[a1];
  }

  if ((a1 & 0xFFFFFFFE) == 0xA)
  {
    return 4;
  }

  return 5;
}

unint64_t acFilterMultiFaceinSameUbody(uint64_t a1, unsigned int a2, float32x2_t *a3, uint64_t a4, uint64_t a5, unsigned int *a6, float *a7, char *__b, int a9, int a10)
{
  result = memset(__b, 255, 4 * a2);
  if (a2)
  {
    v19 = 0;
    v20 = (a1 + 20);
    v21 = a2;
    do
    {
      if (v20[-2].i32[1] == 1)
      {
        v22 = v20[-1];
        v23 = vadd_f32(v22, *v20);
        v24 = v20[1].u32[0] / 1000.0;
        v25 = &a3[4 * v19];
        *v25 = v22;
        v25[1] = v23;
        ++v19;
        v25[2].i32[0] = 2;
        v25[3].f32[0] = v24;
      }

      v20 = (v20 + 1764);
      --v21;
    }

    while (v21);
    if (v19)
    {
      v26 = 0;
      while (1)
      {
        v27 = 0;
        result = 0;
        v28 = -1;
        v29 = &a3[4 * v26];
        do
        {
          v30 = a1 + 1764 * v27;
          if (!*(v30 + 8))
          {
            v31 = 0;
            v32 = *(v30 + 12);
            v33 = vadd_f32(v32, *(v30 + 20));
            v34 = vsub_f32(v33, v32);
            v35 = vcgtz_f32(v34);
            v36 = v34.f32[1];
            if ((v35.i8[4] & 1) == 0)
            {
              v36 = 0.0;
            }

            if ((v35.i8[0] & 1) == 0)
            {
              v34.f32[0] = 0.0;
            }

            v37 = v34.f32[0] * v36;
            v38 = -1.0;
            v39 = -1;
            v40 = a3 + 1;
            do
            {
              v41 = v40[-1];
              v42 = vmaxnm_f32(vsub_f32(vbsl_s8(vcgt_f32(*v40, v33), v33, *v40), vbsl_s8(vcgt_f32(v41, v32), v41, v32)), 0);
              v43 = vmul_lane_f32(v42, v42, 1).f32[0];
              v44 = 0.0;
              if (v43 >= 0.00000011921)
              {
                v45 = vsub_f32(*v40, v41);
                v45.f32[0] = (v37 + (fmaxf(v45.f32[0], 0.0) * fmaxf(v45.f32[1], 0.0))) - v43;
                v46 = v43 / v45.f32[0];
                if (v45.f32[0] >= 0.00000011921)
                {
                  v44 = v46;
                }

                else
                {
                  v44 = 0.0;
                }
              }

              if (v44 > v38)
              {
                v39 = v31;
                v38 = v44;
              }

              ++v31;
              v40 += 4;
            }

            while (v19 != v31);
            if (v26 == v39)
            {
              v47 = vmaxnm_f32(vsub_f32(vbsl_s8(vcgt_f32(v29[1], v33), v33, v29[1]), vbsl_s8(vcgt_f32(*v29, v32), *v29, v32)), 0);
              v47.f32[0] = vmul_lane_f32(v47, v47, 1).f32[0];
              v48 = fminf(v37, v47.f32[0]);
              v49 = v47.f32[0] / v37;
              if (v48 < 0.00000011921)
              {
                v49 = 0.0;
              }

              if (v49 > *a7)
              {
                v28 = v27;
              }

              result = (v49 > *a7) | result;
            }
          }

          ++v27;
        }

        while (v27 != a2);
        if ((result & 1) == 0)
        {
          goto LABEL_9;
        }

        result = v28;
        v50 = *a6;
        if (!v50)
        {
          break;
        }

        v51 = 0;
        v52 = 0;
        v53 = 0;
        v54 = (a1 + 1764 * result + 880);
        do
        {
          v55 = a4 + 528 * *(a5 + 4 * v51);
          if (!*(v55 + 8) && ((*(v55 + 20) * *(v55 + 24)) / ((a10 * a9) + 0.0001)) < 0.08)
          {
            v56 = 0;
            v57 = *(v55 + 12);
            v58 = vadd_f32(v57, *(v55 + 20));
            v59 = vsub_f32(v58, v57);
            v60 = vcgtz_f32(v59);
            v61 = v59.f32[1];
            if ((v60.i8[4] & 1) == 0)
            {
              v61 = 0.0;
            }

            if ((v60.i8[0] & 1) == 0)
            {
              v59.f32[0] = 0.0;
            }

            v62 = v59.f32[0] * v61;
            v63 = -1.0;
            v64 = -1;
            v65 = a3 + 1;
            do
            {
              v66 = v65[-1];
              v67 = vmaxnm_f32(vsub_f32(vbsl_s8(vcgt_f32(*v65, v58), v58, *v65), vbsl_s8(vcgt_f32(v66, v57), v66, v57)), 0);
              v68 = vmul_lane_f32(v67, v67, 1).f32[0];
              v69 = 0.0;
              if (v68 >= 0.00000011921)
              {
                v70 = vsub_f32(*v65, v66);
                v70.f32[0] = (v62 + (fmaxf(v70.f32[0], 0.0) * fmaxf(v70.f32[1], 0.0))) - v68;
                v71 = v68 / v70.f32[0];
                if (v70.f32[0] >= 0.00000011921)
                {
                  v69 = v71;
                }

                else
                {
                  v69 = 0.0;
                }
              }

              if (v69 > v63)
              {
                v64 = v56;
                v63 = v69;
              }

              ++v56;
              v65 += 4;
            }

            while (v19 != v56);
            if (v26 == v64)
            {
              v72 = vmaxnm_f32(vsub_f32(vbsl_s8(vcgt_f32(v29[1], v58), v58, v29[1]), vbsl_s8(vcgt_f32(*v29, v57), *v29, v57)), 0);
              v72.f32[0] = vmul_lane_f32(v72, v72, 1).f32[0];
              v73 = fminf(v62, v72.f32[0]);
              v74 = v72.f32[0] / v62;
              if (v73 < 0.00000011921)
              {
                v74 = 0.0;
              }

              if (v74 > a7[1] && *v54 <= 1u)
              {
                *&__b[4 * v52++] = v51;
                v50 = *a6;
                v53 = 1;
              }
            }
          }

          ++v51;
        }

        while (v51 < v50);
        if ((v53 & 1) == 0)
        {
          goto LABEL_59;
        }

        ++*v54;
        v75 = *a6;
        if (!*a6)
        {
          goto LABEL_8;
        }

LABEL_60:
        if (v52)
        {
          result = 0;
          v76 = 0;
          while (v52 > 7)
          {
            v79 = vdupq_n_s64(result);
            v80 = 0uLL;
            v81 = __b + 16;
            v82 = v52 & 0xFFFFFFF8;
            v83 = 0uLL;
            do
            {
              v84 = *(v81 - 1);
              v85.i64[0] = v84;
              v85.i64[1] = DWORD1(v84);
              v86 = v85;
              v85.i64[0] = DWORD2(v84);
              v85.i64[1] = HIDWORD(v84);
              v87 = v85;
              v85.i64[0] = *v81;
              v85.i64[1] = HIDWORD(*v81);
              v88 = v85;
              v85.i64[0] = *(v81 + 1);
              v85.i64[1] = HIDWORD(*v81);
              v80 = vsubq_s32(v80, vmvnq_s8(vuzp1q_s32(vceqq_s64(v79, v86), vceqq_s64(v79, v87))));
              v83 = vsubq_s32(v83, vmvnq_s8(vuzp1q_s32(vceqq_s64(v79, v88), vceqq_s64(v79, v85))));
              v81 += 32;
              v82 -= 8;
            }

            while (v82);
            v78 = vaddvq_s32(vaddq_s32(v83, v80));
            v77 = v52 & 0xFFFFFFF8;
            if (v77 != v52)
            {
              goto LABEL_68;
            }

LABEL_72:
            if (v78)
            {
              v92 = v78 == v52;
            }

            else
            {
              v92 = 0;
            }

            if (v92)
            {
              *(a5 + 4 * v76++) = *(a5 + 4 * result);
              v75 = *a6;
            }

            if (++result >= v75)
            {
              goto LABEL_8;
            }
          }

          v77 = 0;
          v78 = 0;
LABEL_68:
          v89 = v52 - v77;
          v90 = &__b[4 * v77];
          do
          {
            v91 = *v90;
            v90 += 4;
            if (result != v91)
            {
              ++v78;
            }

            --v89;
          }

          while (v89);
          goto LABEL_72;
        }

LABEL_8:
        *a6 = v75 - v52;
LABEL_9:
        if (++v26 == v19)
        {
          return result;
        }
      }

      v52 = 0;
LABEL_59:
      *(a1 + 1764 * result + 880) = 0;
      v75 = *a6;
      if (!*a6)
      {
        goto LABEL_8;
      }

      goto LABEL_60;
    }
  }

  return result;
}

uint64_t acTrkObjectAssocTrkDet(unsigned int a1, unsigned int a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, _DWORD *a10, _DWORD *a11, _DWORD *a12, uint64_t a13, unsigned int *a14, float *a15, uint64_t a16, uint64_t a17, unsigned int a18, void *a19)
{
  if (a5 <= a7)
  {
    v24 = a7;
  }

  else
  {
    v24 = a5;
  }

  v694 = 0;
  v692 = 0u;
  v693 = 0u;
  v690 = 0u;
  v691 = 0u;
  v688 = 0u;
  v689 = 0u;
  v686 = 0u;
  v687 = 0u;
  v684 = 0u;
  v685 = 0u;
  v683 = 0u;
  *v681 = 0u;
  *v682 = 0u;
  v679 = 0u;
  v680 = 0u;
  v677 = 0u;
  v678 = 0u;
  v675 = 0u;
  v676 = 0u;
  TempBuffers = acTrkObjectAssocTrkDetGetTempBuffers(v24, a19, a3, &v675);
  bzero(a19, TempBuffers);
  v26 = v675;
  v647 = *(&v679 + 1);
  v27 = v679;
  v28 = v680;
  v29 = v683;
  v652 = a2;
  v661 = a7;
  v664 = a4;
  if (!a7)
  {
    v674 = 0;
    v37 = *a14;
    v36 = a1;
    v34 = a8;
    if (!(a4 | *a14))
    {
      goto LABEL_360;
    }

    v650 = v683;
    v648 = v679;
    v642 = v680;
    v643 = *(&v678 + 1);
    v645 = a4 == 0;
    if (!a4)
    {
      v39 = 0;
      v41 = a14;
LABEL_587:
      v673 = v39;
      v490 = a13;
      if (v37)
      {
        v491 = 0;
        __nb = vdupq_n_s32(0xFFFFFE97);
        do
        {
          bzero(v490, 0x210uLL);
          *(v490 + 36) = __nb;
          *(v490 + 52) = -361;
          *(v490 + 132) = -1;
          *(v490 + 400) = -1;
          *(v490 + 428) = -1;
          *(v490 + 528) = 0;
          *(v490 + 532) = 0;
          ++v491;
          v490 += 536;
        }

        while (v491 < *v41);
      }

      v475 = 0;
      *v41 = 0;
      v489 = a8;
      v476 = v661;
      goto LABEL_591;
    }

    v38 = 0;
    v39 = 0;
    v40 = (a8 + 60);
    v41 = a14;
    while (1)
    {
      v47 = a3 + v38;
      *(a3 + v38 + 456) = 1;
      v48 = *(a3 + v38 + 820);
      v49 = v48 - 1;
      if (!v48)
      {
        v49 = 0;
      }

      v50 = v47 + 548 + 44 * v49;
      v42 = *(v47 + 8);
      if (v42 == 9)
      {
        break;
      }

      if (v48 < 6)
      {
        v58 = a3 + 44 * v48 + v38;
        v59 = *v50;
        v60 = *(v50 + 16);
        v61 = *(v50 + 32);
        *(v58 + 588) = *(v50 + 40);
        *(v58 + 580) = v61;
        *(v58 + 548) = v59;
        *(v58 + 564) = v60;
        ++*(v47 + 820);
        if (a6)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v54 = a3 + v38;
        v55 = *v50;
        v56 = *(v50 + 16);
        v57 = *(v50 + 32);
        *(v54 + 808) = *(v50 + 40);
        *(v54 + 800) = v57;
        *(v54 + 768) = v55;
        *(v54 + 784) = v56;
        if (a6)
        {
          goto LABEL_23;
        }
      }

LABEL_24:
      if (v42 <= 2)
      {
        if (!v42)
        {
          if (*(a3 + v38 + 104))
          {
            v43 = *v40;
            if (a4 > 2)
            {
              v43 = 2;
            }
          }

          else
          {
            v43 = 2;
          }

          goto LABEL_13;
        }

        if (v42 != 1)
        {
          if (v42 != 2)
          {
            goto LABEL_44;
          }

LABEL_34:
          v42 = 2;
        }
      }

      else
      {
        if (v42 <= 4)
        {
          if (v42 != 3)
          {
            goto LABEL_34;
          }

LABEL_11:
          v42 = 3;
          goto LABEL_12;
        }

        if (v42 == 5)
        {
          goto LABEL_11;
        }

        if (v42 != 8)
        {
LABEL_44:
          if ((v42 & 0xFFFFFFFE) == 0xA)
          {
            v42 = 6;
          }

          else
          {
            v42 = 5;
          }

          goto LABEL_12;
        }

        v42 = 4;
      }

LABEL_12:
      v43 = v40[v42];
LABEL_13:
      v44 = *(a3 + v38 + 528);
      v45 = v44 >= v43;
      if (v44 < v43)
      {
        v46 = 1;
      }

      else
      {
        v46 = 2;
      }

      if (v45)
      {
        ++v39;
      }

      *(a3 + v38 + 544) = v46;
      v38 += 1764;
      if (1764 * a4 == v38)
      {
        v37 = *a14;
        goto LABEL_587;
      }
    }

    v51 = *v50;
    v52 = *(v50 + 16);
    v53 = *(v50 + 32);
    *(v47 + 588) = *(v50 + 40);
    *(v47 + 580) = v53;
    *(v47 + 548) = v51;
    *(v47 + 564) = v52;
    *(v47 + 820) = 1;
    if (!a6)
    {
      goto LABEL_24;
    }

LABEL_23:
    ++*(a3 + v38 + 528);
    goto LABEL_24;
  }

  v648 = v679;
  v30 = *(&v675 + 1);
  v643 = *(&v678 + 1);
  __dst = v676;
  v31 = *(&v683 + 1);
  v634 = *(&v685 + 1);
  v635 = v684;
  v32 = v687;
  v33 = v688;
  v639 = v689;
  v640 = v691;
  v641 = *(&v677 + 1);
  v637 = *(&v676 + 1);
  v638 = v690;
  v646 = *(&v692 + 1);
  v650 = v683;
  memset(v683, 255, 4 * a7);
  if (!(a4 | *a14))
  {
    v34 = a8;
    if (a7 > 7)
    {
      v35 = a7 & 0xFFFFFFF8;
      v255 = xmmword_22E6624F0;
      v256 = (v26 + 16);
      v257.i64[0] = 0x400000004;
      v257.i64[1] = 0x400000004;
      v258.i64[0] = 0x800000008;
      v258.i64[1] = 0x800000008;
      v259 = v35;
      a2 = v652;
      v36 = a1;
      do
      {
        v256[-1] = v255;
        *v256 = vaddq_s32(v255, v257);
        v255 = vaddq_s32(v255, v258);
        v256 += 2;
        v259 -= 8;
      }

      while (v259);
      v29 = v650;
      v27 = v648;
      if (v35 == a7)
      {
        goto LABEL_360;
      }
    }

    else
    {
      v35 = 0;
      a2 = v652;
      v36 = a1;
      v29 = v650;
      v27 = v648;
    }

    do
    {
      *&v26[4 * v35] = v35;
      ++v35;
    }

    while (a7 != v35);
LABEL_360:
    v674 = a7;
    acTrkObjectPickDet(v36, a2, a3, 0, a5, a6, a7, v26, &v674, v27, v632, v29, v633, *(v34 + 194), *(v34 + 196));
    v260 = v674;
    if (!v674)
    {
      v263 = 0;
      v262 = 0;
LABEL_377:
      *a10 = v262;
      *a11 = 0;
      *a14 = v263;
      return v262;
    }

    v261 = v36;
    v262 = 0;
    v263 = 0;
    v264 = (a2 * v261) + 0.0001;
    v671 = vdupq_n_s32(0xFFFFFE97);
    while (1)
    {
      v306 = *(a6 + 528 * *v26 + 28);
      if (v306 <= 1)
      {
        if (v306)
        {
          v307 = a13 + 536 * v263;
          bzero(v307, 0x210uLL);
          *(v307 + 36) = v671;
          *(v307 + 52) = -361;
          *(v307 + 132) = -1;
          *(v307 + 400) = -1;
          *(v307 + 428) = -1;
          *(v307 + 528) = 0;
          *(v307 + 532) = 0;
          memcpy(v307, (a6 + 528 * *v26), 0x210uLL);
          ++v263;
        }

        goto LABEL_365;
      }

      v308 = (a3 + 1764 * v262);
      bzero(v308, 0x6E4uLL);
      *(v308 + 9) = v671;
      v308[13] = -361;
      v308[33] = -1;
      v308[100] = -1;
      v308[107] = -1;
      *(v308 + 203) = 0xFF7FFFFFFFFFFFFFLL;
      *(v308 + 217) = 0;
      memcpy(v308, (a6 + 528 * *v26), 0x210uLL);
      v309 = (*a12)++;
      *v308 = v309;
      ++v308[134];
      v310 = *v26;
      v308[135] = LODWORD(a15[v310]);
      v311 = *(v308 + 5) * *(v308 + 6);
      *(v308 + 217) = v311;
      *(v308 + 218) = v311 / v264;
      v312 = a6 + 528 * v310;
      v313 = *(v312 + 8);
      v314 = *(v312 + 32);
      v315 = *(v312 + 44);
      v316 = *(v312 + 48);
      v317 = *(v312 + 104);
      v318 = *(v312 + 428);
      v319 = v308[2];
      if (v319 == 9)
      {
        *(v308 + 137) = *(v312 + 12);
        *(v308 + 564) = v317;
        v308[145] = v318;
        v308[143] = v316;
        v308[142] = v315;
        v308[146] = v313;
        v308[147] = v314;
        v308[205] = 1;
        v265 = a6 + 528 * *v26;
        v266 = *(v265 + 220);
        v267 = *(v265 + 252);
        v268 = *(v265 + 204);
        *(v308 + 254) = *(v265 + 236);
        *(v308 + 258) = v267;
        *(v308 + 246) = v268;
        *(v308 + 250) = v266;
        v269 = *(v265 + 140);
        v270 = *(v265 + 156);
        v271 = *(v265 + 188);
        *(v308 + 238) = *(v265 + 172);
        *(v308 + 242) = v271;
        *(v308 + 230) = v269;
        *(v308 + 234) = v270;
        v272 = *(v265 + 332);
        v273 = *(v265 + 348);
        v274 = *(v265 + 380);
        *(v308 + 286) = *(v265 + 364);
        *(v308 + 290) = v274;
        *(v308 + 278) = v272;
        *(v308 + 282) = v273;
        v275 = *(v265 + 268);
        v276 = *(v265 + 284);
        v277 = *(v265 + 316);
        *(v308 + 270) = *(v265 + 300);
        *(v308 + 274) = v277;
        *(v308 + 262) = v275;
        *(v308 + 266) = v276;
        v278 = a6 + 528 * *v26;
        v279 = *(v278 + 140);
        v280 = *(v278 + 156);
        v281 = *(v278 + 188);
        *(v308 + 302) = *(v278 + 172);
        *(v308 + 306) = v281;
        *(v308 + 294) = v279;
        *(v308 + 298) = v280;
        v282 = *(v278 + 204);
        v283 = *(v278 + 220);
        v284 = *(v278 + 252);
        *(v308 + 318) = *(v278 + 236);
        *(v308 + 322) = v284;
        *(v308 + 310) = v282;
        *(v308 + 314) = v283;
        v285 = *(v278 + 268);
        v286 = *(v278 + 284);
        v287 = *(v278 + 316);
        *(v308 + 334) = *(v278 + 300);
        *(v308 + 338) = v287;
        *(v308 + 326) = v285;
        *(v308 + 330) = v286;
        v288 = *(v278 + 332);
        v289 = *(v278 + 348);
        v290 = *(v278 + 380);
        *(v308 + 350) = *(v278 + 364);
        *(v308 + 354) = v290;
        *(v308 + 342) = v288;
        *(v308 + 346) = v289;
        v291 = v308 + 358;
        v292 = a6 + 528 * *v26;
      }

      else
      {
        v320 = v308[205];
        if (v320 < 6)
        {
          v321 = &v308[11 * v320];
          *(v321 + 137) = *(v312 + 12);
          *(v321 + 564) = v317;
          v321[145] = v318;
          v321[143] = v316;
          v321[142] = v315;
          v321[146] = v313;
          v321[147] = v314;
          ++v308[205];
          v305 = *v26;
          if (v319)
          {
            goto LABEL_364;
          }
        }

        else
        {
          *(v308 + 48) = *(v312 + 12);
          *(v308 + 784) = v317;
          v308[200] = v318;
          v308[198] = v316;
          v308[197] = v315;
          v308[201] = v313;
          v308[202] = v314;
          v305 = *v26;
          if (v319)
          {
            goto LABEL_364;
          }
        }

        v292 = a6 + 528 * v305;
        if (!*(v292 + 136))
        {
          goto LABEL_364;
        }

        v291 = v308 + 230;
      }

      v293 = *(v292 + 140);
      v294 = *(v292 + 156);
      v295 = *(v292 + 188);
      v291[2] = *(v292 + 172);
      v291[3] = v295;
      *v291 = v293;
      v291[1] = v294;
      v296 = *(v292 + 204);
      v297 = *(v292 + 220);
      v298 = *(v292 + 252);
      v291[6] = *(v292 + 236);
      v291[7] = v298;
      v291[4] = v296;
      v291[5] = v297;
      v299 = *(v292 + 268);
      v300 = *(v292 + 284);
      v301 = *(v292 + 316);
      v291[10] = *(v292 + 300);
      v291[11] = v301;
      v291[8] = v299;
      v291[9] = v300;
      v302 = *(v292 + 332);
      v303 = *(v292 + 348);
      v304 = *(v292 + 380);
      v291[14] = *(v292 + 364);
      v291[15] = v304;
      v291[12] = v302;
      v291[13] = v303;
      v305 = *v26;
LABEL_364:
      *(v308 + 426) = *(a6 + 528 * v305 + 12);
      *(v308 + 430) = *(a6 + 528 * *v26 + 12);
      *(v308 + 422) = *(a6 + 528 * *v26 + 28);
      v262 = (v262 + 1);
LABEL_365:
      v26 += 4;
      if (!--v260)
      {
        goto LABEL_377;
      }
    }
  }

  v645 = a4 == 0;
  v642 = v28;
  v62 = 0;
  v63 = 0;
  v673 = 0;
  v64 = a7;
  if (a4 <= a7)
  {
    v65 = a7;
  }

  else
  {
    v65 = a4;
  }

  v66 = a8;
  v67 = *(a8 + 56);
  v636 = *(a8 + 180);
  if (a4 <= 1)
  {
    v68 = 1;
  }

  else
  {
    v68 = a4;
  }

  v69 = a4;
  v658 = v65 - 1;
  v651 = v65 - 1 - a7;
  v70 = (v652 * a1) + 0.0001;
  v657 = v65 & 0xFFFFFFF8;
  v656 = v65 - a7;
  v655 = (v65 - a7) & 0xFFFFFFF8;
  v649 = v655 + a7;
  v71 = (a3 + 924);
  *&v72 = 0x4000000040000000;
  *(&v72 + 1) = 0x4000000040000000;
  v662 = v65;
  while (2)
  {
    if (v62 >= a4)
    {
      v146 = 0;
      v147 = __CFADD__(v63, v658);
      if (v65 < 8)
      {
        goto LABEL_165;
      }

      if (v147)
      {
        goto LABEL_165;
      }

      v148 = v657;
      v149 = v63;
      do
      {
        v150 = &v30[v149];
        *v150 = v72;
        v150[1] = v72;
        v149 += 8;
        v148 -= 8;
      }

      while (v148);
      v63 += v657;
      v146 = v657;
      v85 = v63;
      if (v65 != v657)
      {
LABEL_165:
        v151 = v65 - v146;
        v85 = v63;
        do
        {
          v30[v85++] = 0x40000000;
          --v151;
        }

        while (v151);
      }

      goto LABEL_56;
    }

    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = a3 + 1764 * v62;
    v77 = *(v76 + 8);
    v78 = *(v76 + 12);
    v79 = vadd_f32(v78, *(v76 + 20));
    v80 = vdupq_n_s32(v77);
    v81 = vmaxnm_f32(vsub_f32(v79, v78), 0);
    v82 = vmul_lane_f32(v81, v81, 1);
    v83 = v63 + 1;
    v84 = (a6 + 144);
    v85 = v63;
    do
    {
      v86 = v85;
      v87 = v83;
      v88 = a6 + 528 * v73;
      v89 = *(v88 + 12);
      v90 = *(v88 + 20);
      v91 = vadd_f32(v89, v90);
      v92 = vmaxnm_f32(vsub_f32(vbsl_s8(vcgt_f32(v79, v91), v91, v79), vbsl_s8(vcgt_f32(v78, v89), v78, v89)), 0);
      v93 = vmul_lane_f32(v92, v92, 1);
      v94 = 0.0;
      if (v93.f32[0] >= 0.00000011921)
      {
        v95 = vmaxnm_f32(vsub_f32(v91, v89), 0);
        v96 = vsub_f32(vadd_f32(vmul_lane_f32(v95, v95, 1), v82), v93);
        v97 = vdiv_f32(v93, v96).u32[0];
        if (v96.f32[0] >= 0.00000011921)
        {
          v94 = *&v97;
        }

        else
        {
          v94 = 0.0;
        }
      }

      v98 = *(v88 + 8);
      if (v77 == v98)
      {
        if (v77 == 1)
        {
          if (v94 > 0.2)
          {
            v128 = *(v76 + 868);
            v129 = v90.f32[0] * v90.f32[1];
            v130 = v128 <= (v90.f32[0] * v90.f32[1]);
            if (v128 <= (v90.f32[0] * v90.f32[1]))
            {
              v131 = *(v76 + 868);
            }

            else
            {
              v131 = v90.f32[0] * v90.f32[1];
            }

            if (v130)
            {
              v128 = v129;
            }

            v94 = fminf(fmaxf(((v131 / (v128 + 0.0001)) * 0.1) + (v94 * 0.9), 0.2), 0.99);
          }
        }

        else if (!v77)
        {
          v99 = 0.0;
          v100 = 0.0;
          if (v93.f32[0] >= 0.00000011921)
          {
            v101 = vmaxnm_f32(vsub_f32(v91, v89), 0);
            v102 = vmul_lane_f32(v101, v101, 1);
            if (vcgt_f32(v82, v102).u8[0])
            {
              v103 = v102.f32[0];
            }

            else
            {
              v103 = v82.f32[0];
            }

            if (v103 >= 0.00000011921)
            {
              v99 = v93.f32[0] / v103;
            }

            else
            {
              v99 = 0.0;
            }

            v104 = vsub_f32(vadd_f32(v102, v82), v93);
            v105 = vdiv_f32(v93, v104).u32[0];
            if (v104.f32[0] >= 0.00000011921)
            {
              v100 = *&v105;
            }

            else
            {
              v100 = 0.0;
            }
          }

          if (a15[v73] < *(a8 + 188) && !*(v88 + 104))
          {
            v106 = v100 >= 0.5 && *(v76 + 104) == 0;
            if (!v106)
            {
              v99 = 0.0;
            }
          }

          v107 = v100 + 0.2;
          if (v99 >= 0.2)
          {
            v99 = v107;
          }

          v108 = vmaxnm_f32(vsub_f32(v91, v89), 0);
          v109 = vmul_lane_f32(v108, v108, 1);
          v110 = v109.f32[0] < 0.00000011921;
          if (vdiv_f32(v93, v109).f32[0] < 0.25)
          {
            v110 = 1;
          }

          v136 = v93.f32[0] < 0.00000011921;
          v111 = fminf(v99, 0.99);
          v112 = v90.f32[0] * v90.f32[1];
          if (v136)
          {
            v110 = 1;
          }

          if (v82.f32[0] >= 0.00000011921)
          {
            v113 = vmaxnm_f32(vsub_f32(vbsl_s8(vcgt_f32(v91, v79), v79, v91), vbsl_s8(vcgt_f32(v89, v78), v89, v78)), 0);
            v114 = vmul_lane_f32(v113, v113, 1);
            LODWORD(v115) = vdiv_f32(v114, v82).u32[0];
            v116 = v114.f32[0] < 0.00000011921 || v115 <= 0.95;
            if (!v116 && v110)
            {
              v118 = *(v76 + 4);
              if (!v118)
              {
                goto LABEL_106;
              }

              v119 = 0;
              v120 = (a3 + 8);
              while (*(v120 - 1) != v118 || *v120 != 1)
              {
                ++v119;
                v120 += 441;
                if (a4 == v119)
                {
                  goto LABEL_106;
                }
              }

              if ((v112 / (*(a3 + 1764 * v119 + 868) + 0.0001)) > 0.4)
              {
LABEL_106:
                v111 = 0.0;
              }
            }
          }

          v121 = *(v76 + 868);
          if (*(v76 + 104))
          {
            if (v112 < (v121 * 0.8) && *(v88 + 104) == 0)
            {
              v111 = 0.0;
            }
          }

          else if (*(v88 + 104))
          {
            v134 = v112 / v70;
            v135 = v112 * 0.8;
            v136 = v134 > 0.008 && v121 < v135;
            if (v136)
            {
              v111 = 0.0;
            }
          }

          v132 = 1.0 - v111;
          *&v30[v86] = 1.0 - v111;
          if (*(v88 + 136))
          {
            v137 = 0.0;
            v138 = v84;
            v139 = v71;
            v140 = 64;
            v141 = 0.0;
            v142 = 0.0;
            do
            {
              v143 = *(v138 - 1);
              v144 = *(v139 - 1);
              v137 = (v137 + (v144 * v144)) + (*v139 * *v139);
              v141 = (v141 + (v143 * v143)) + (*v138 * *v138);
              v142 = (v142 + (v143 * v144)) + (*v138 * *v139);
              v139 += 2;
              v138 += 2;
              v140 -= 2;
            }

            while (v140);
            v145 = fmaxf(1.0 - (v142 / ((sqrtf(v141) * sqrtf(v137)) + 0.00001)), 0.0);
            if (v145 <= 0.1)
            {
              v132 = (v145 * 0.3) + (v132 * 0.7);
              *&v30[v86] = v132;
            }
          }

          goto LABEL_139;
        }
      }

      else
      {
        v124 = v77 == 10 && v98 == 11;
        v125 = vmovn_s32(vandq_s8(vceqq_s32(v80, xmmword_22E6624D0), vceqq_s32(vdupq_n_s32(v98), xmmword_22E6624E0)));
        v127 = v77 == 11 && v98 == 10;
        if ((vmaxv_u16(v125) & 1) == 0 && !v124 && !v127)
        {
          v30[v86] = 1065353216;
          goto LABEL_60;
        }
      }

      v132 = 1.0 - v94;
      *&v30[v86] = 1.0 - v94;
LABEL_139:
      if (v132 < 1.0 && v94 > 0.075)
      {
        ++v74;
        if (*(v88 + 28) > 1u)
        {
          ++v75;
        }
      }

LABEL_60:
      ++v73;
      v85 = v86 + 1;
      v84 += 132;
      v83 = v87 + 1;
    }

    while (v73 != a7);
    if (v77)
    {
      goto LABEL_169;
    }

    v160 = 0;
    v161 = 0;
    v162 = a15;
    v163 = v63;
    v164 = a7;
    do
    {
      if (*&v30[v163] < 1.0)
      {
        if (*v162 <= *(a8 + 188))
        {
          ++v160;
        }

        else
        {
          ++v161;
        }
      }

      ++v162;
      ++v163;
      --v164;
    }

    while (v164);
    v165 = *(v76 + 4);
    if (v165)
    {
      v166 = 0;
      v167 = (a3 + 8);
      while (*(v167 - 1) != v165 || *v167 != 1)
      {
        ++v166;
        v167 += 441;
        if (v68 == v166)
        {
          goto LABEL_197;
        }
      }

      v168 = 0;
      v169 = *(a3 + 1764 * v166 + 872) < 0.45;
      if (!v161)
      {
        goto LABEL_198;
      }
    }

    else
    {
LABEL_197:
      v168 = 1;
      v169 = 1;
      if (!v161)
      {
LABEL_198:
        if (!((v168 | v169) & 1 | (*(v76 + 876) > 2u)))
        {
          goto LABEL_169;
        }
      }
    }

    if (v160)
    {
      v170 = v63;
      v171 = a15;
      v172 = a7;
      do
      {
        if (*&v30[v170] < 1.0 && *v171 < *(a8 + 188))
        {
          v30[v170] = 1065353216;
        }

        ++v171;
        ++v170;
        --v172;
      }

      while (v172);
    }

LABEL_169:
    if (v74 < 2 || !v75)
    {
LABEL_209:
      v66 = a8;
      if (v77 || v74 < 2)
      {
        goto LABEL_278;
      }

      v177 = 0;
      v178 = 0;
      v179 = 0;
      v180 = 0.0;
      v181 = v63;
      v182 = (a6 + 104);
      v183 = a7;
      v184 = 0.0;
      do
      {
        v185 = *&v30[v181];
        v136 = v185 < 1.0;
        v186 = 1.0 - v185;
        if (v136 && v186 >= 0.2)
        {
          if (*v182)
          {
            if (v186 > v184)
            {
              v184 = v186;
            }

            v177 = *(v182 - 15);
            v179 = 1;
          }

          else
          {
            if (v186 > v180)
            {
              v180 = v186;
            }

            v178 = 1;
          }
        }

        v182 += 528;
        ++v181;
        --v183;
      }

      while (v183);
      v188 = v179 & v178;
      v66 = a8;
      if ((v188 & 1) == 0)
      {
        goto LABEL_278;
      }

      if (!*(v76 + 104))
      {
        if ((v184 / v180) > 0.93 && (v184 / v180) < 1.07)
        {
          v204 = (a6 + 104);
          v205 = a7;
          do
          {
            if (*&v30[v63] < 1.0 && *v204)
            {
              v30[v63] = 1065353216;
            }

            v204 += 528;
            ++v63;
            --v205;
          }

          while (v205);
        }

        else if (v180 > v184)
        {
          v196 = (a6 + 104);
          v197 = a7;
          do
          {
            if (*&v30[v63] < 1.0 && *v196)
            {
              v30[v63] = 1065353216;
            }

            v196 += 528;
            ++v63;
            --v197;
          }

          while (v197);
        }

        goto LABEL_278;
      }

      v189 = *(v76 + 44);
      if ((v189 < v636 || v189 >= 91) && (v189 < 270 || v189 > 360 - v636))
      {
        v206 = (a6 + 104);
        v207 = a7;
        do
        {
          if (*&v30[v63] < 1.0 && *v206 != 1)
          {
            v30[v63] = 1065353216;
          }

          v206 += 528;
          ++v63;
          --v207;
        }

        while (v207);
        goto LABEL_278;
      }

      v190 = v184 / (v180 + 1.1755e-38);
      if (v190 > 0.93 && v190 < 1.07)
      {
        v192 = *(v76 + 888);
        if (v192 <= 2)
        {
          v193 = (a6 + 104);
          v194 = a7;
          do
          {
            if (*&v30[v63] < 1.0 && *v193 != 1)
            {
              v30[v63] = 1065353216;
            }

            v193 += 528;
            ++v63;
            --v194;
          }

          while (v194);
          *(v76 + 888) = v192 + 1;
          goto LABEL_278;
        }
      }

      v198 = *(v76 + 848);
      if (v198 && *(v76 + 852) + 1 == *(v76 + 536))
      {
        if ((v177 - 1) < 0x45)
        {
          v201 = (a6 + 104);
          v202 = a7;
          do
          {
LABEL_294:
            if (*&v30[v63] < 1.0 && *v201 == 1)
            {
              v30[v63] = 1065353216;
            }

            v201 += 528;
            ++v63;
            --v202;
          }

          while (v202);
          *(v76 + 848) = 0;
          if (*(v76 + 848))
          {
            goto LABEL_279;
          }

          goto LABEL_281;
        }

        v199 = v177 - 291;
        v200 = (a6 + 104);
        v201 = (a6 + 104);
        v202 = a7;
        v203 = a7;
        if (v199 <= 0x44)
        {
          goto LABEL_294;
        }
      }

      else
      {
        v200 = (a6 + 104);
        v203 = a7;
      }

      do
      {
        if (*&v30[v63] < 1.0 && *v200 != 1)
        {
          v30[v63] = 1065353216;
        }

        v200 += 528;
        ++v63;
        --v203;
      }

      while (v203);
      *(v76 + 848) = v198 + 1;
      *(v76 + 852) = *(v76 + 536);
      if (*(v76 + 848))
      {
        goto LABEL_279;
      }

      goto LABEL_281;
    }

    v66 = a8;
    if (v77 < 9 && ((0x13Fu >> v77) & 1) != 0)
    {
      v152 = 0;
      v153 = 0.0;
      v154 = v63;
      v155 = (a6 + 28);
      v156 = a7;
      v157 = 0.0;
      do
      {
        v158 = *&v30[v154];
        if (v158 < 1.0)
        {
          v159 = 1.0 - v158;
          if (*v155 < 2u)
          {
            if (v159 > v157)
            {
              v157 = v159;
            }
          }

          else
          {
            if (v159 > v67)
            {
              v152 = 1;
            }

            if (v159 > v153)
            {
              v153 = v159;
            }
          }
        }

        v155 += 132;
        ++v154;
        --v156;
      }

      while (v156);
      if (v153 <= v157)
      {
        v173 = v152;
      }

      else
      {
        v173 = v152 + 1;
      }

      v174 = v63;
      v175 = (a6 + 28);
      v176 = a7;
      if (v173 == 2)
      {
        do
        {
          if (*&v30[v174] < 1.0 && *v175 <= 1u)
          {
            v30[v174] = 1065353216;
          }

          v175 += 132;
          ++v174;
          --v176;
        }

        while (v176);
      }

      goto LABEL_209;
    }

LABEL_278:
    if (*(v76 + 848))
    {
LABEL_279:
      if (*(v76 + 852) != *(v76 + 536))
      {
        *(v76 + 848) = 0;
      }
    }

LABEL_281:
    v64 = a7;
    if (a4 <= a7)
    {
      v65 = v662;
    }

    else
    {
      if (v656 < 8)
      {
        v208 = a7;
        v65 = v662;
        goto LABEL_289;
      }

      v208 = a7;
      v65 = v662;
      if (-2 - v86 < v651)
      {
        goto LABEL_289;
      }

      v209 = v655;
      do
      {
        v210 = &v30[v87];
        *v210 = v72;
        v210[1] = v72;
        v87 += 8;
        v209 -= 8;
      }

      while (v209);
      v85 += v655;
      v208 = v655 + a7;
      if (v656 != v655)
      {
LABEL_289:
        v211 = v65 - v208;
        do
        {
          v30[v85++] = 0x40000000;
          --v211;
        }

        while (v211);
      }
    }

LABEL_56:
    ++v62;
    v71 += 441;
    v63 = v85;
    if (v62 != v65)
    {
      continue;
    }

    break;
  }

  if (!a4)
  {
    v674 = v64;
    sub_22E6388B8(a3, 0, a6, v64, v641, __dst, v66, &v673, v26, &v674, v650, a15, a17, a18, a1, v652);
    v327 = v674;
    if (v674)
    {
      goto LABEL_708;
    }

    goto LABEL_382;
  }

  __n = 4 * (v65 * v65);
  memcpy(__dst, v30, __n);
  bmMunkres(v30, v65, v637, v212, v641, v213, 0, v214);
  v215 = *(&v684 + 1);
  v674 = a7;
  sub_22E6388B8(a3, a4, a6, a7, v641, __dst, a8, &v673, v26, &v674, v650, a15, a17, a18, a1, v652);
  if (!v674)
  {
    v328 = 0;
    v329 = 0;
    v330 = a8;
    goto LABEL_384;
  }

  v216 = 0;
  v217 = 0;
  v218 = 528 * a7;
  v219 = vdupq_n_s32(0x47C35000u);
  v220 = a4;
  v221 = v662;
  while (2)
  {
    if (v216 >= v69)
    {
      v245 = 0;
      v246 = __CFADD__(v217, v658);
      if (v221 < 8)
      {
        goto LABEL_343;
      }

      if (v246)
      {
        goto LABEL_343;
      }

      v247 = v657;
      v248 = v217;
      do
      {
        v249 = &v31[v248];
        *v249 = v219;
        v249[1] = v219;
        v248 += 8;
        v247 -= 8;
      }

      while (v247);
      v217 += v657;
      v245 = v657;
      if (v221 != v657)
      {
LABEL_343:
        v250 = v662 - v245;
        do
        {
          v31[v217++] = 1203982336;
          --v250;
        }

        while (v250);
      }
    }

    else
    {
      v222 = 0;
      v223 = a3 + 1764 * v216;
      v224 = *(v223 + 8);
      v225 = vadd_f32(*(v223 + 12), vadd_f32(*(v223 + 12), *(v223 + 20)));
      v226 = 0.5 * v225.f32[0];
      v227 = vmuls_lane_f32(0.5, v225, 1);
      v228 = vdupq_n_s32(v224);
      if ((v224 & 0xFFFFFFFE) == 0xA)
      {
        v229 = 6;
      }

      else
      {
        v229 = 5;
      }

      v230 = v217 + 1;
      v231 = vceqq_s32(v228, xmmword_22E6624D0);
      v232 = a15;
      do
      {
        v233 = v217;
        v234 = v230;
        v235 = v229;
        if (((v224 < 9) & (0x13Fu >> v224)) != 0)
        {
          v235 = qword_22E662798[v224];
        }

        v236 = vadd_f32(*(a6 + v222 + 12), vadd_f32(*(a6 + v222 + 12), *(a6 + v222 + 20)));
        v237 = 0.5 * v236.f32[0];
        v236.f32[0] = vmuls_lane_f32(0.5, v236, 1);
        v238 = sqrtf(((v227 - v236.f32[0]) * (v227 - v236.f32[0])) + ((v226 - v237) * (v226 - v237)));
        if (v238 > (((*(a8 + 116 + 4 * v235) + 0.01) * (*(v223 + 20) + *(v223 + 24))) * 0.5))
        {
          v238 = 100000.0;
        }

        if (*v232 < *(a8 + 188) && !*(a6 + v222 + 104))
        {
          v238 = 100000.0;
        }

        v239 = *(a6 + v222 + 8);
        if (v224 == v239)
        {
          *&v31[v217] = v238;
        }

        else
        {
          v241 = v224 == 10 && v239 == 11;
          v242 = vmovn_s32(vandq_s8(v231, vceqq_s32(vdupq_n_s32(v239), xmmword_22E6624E0)));
          v244 = v224 == 11 && v239 == 10;
          if ((vmaxv_u16(v242) & 1) != 0 || v241 || v244)
          {
            *&v31[v233] = v238;
          }

          else
          {
            v31[v233] = 1203982336;
          }
        }

        v217 = v233 + 1;
        v222 += 528;
        ++v232;
        v230 = v234 + 1;
      }

      while (v218 != v222);
      v220 = v664;
      if (v664 > v661)
      {
        if (v656 < 8)
        {
          v251 = v661;
          goto LABEL_353;
        }

        v251 = v661;
        v252 = v655;
        if (-2 - v233 < v651)
        {
          goto LABEL_353;
        }

        do
        {
          v253 = &v31[v234];
          *v253 = v219;
          v253[1] = v219;
          v234 += 8;
          v252 -= 8;
        }

        while (v252);
        v217 += v655;
        v251 = v649;
        if (v656 != v655)
        {
LABEL_353:
          v254 = v662 - v251;
          do
          {
            v31[v217++] = 1203982336;
            --v254;
          }

          while (v254);
        }
      }
    }

    ++v216;
    v221 = v662;
    if (v216 != v662)
    {
      continue;
    }

    break;
  }

  memcpy(v635, v31, __n);
  bmMunkres(v31, v662, v215, v322, v634, v323, 0, v324);
  sub_22E6398CC(a3, v220, a6, v661, v634, v635, a8, v26, &v674, v650, v32, a15, a17, a18, a1, v652);
  if (v220 == 1)
  {
    v325 = 0;
    v326 = 0;
    goto LABEL_703;
  }

  v604 = 0;
  v605 = 0;
  v325 = v69 & 0xFFFFFFFE;
  v606 = a3;
  v607 = v325;
  do
  {
    if (*(v606 + 544) == 2)
    {
      ++v604;
    }

    if (*(v606 + 2308) == 2)
    {
      ++v605;
    }

    v606 += 3528;
    v607 -= 2;
  }

  while (v607);
  v326 = v605 + v604;
  if (v325 != v69)
  {
LABEL_703:
    v608 = v69 - v325;
    v609 = (a3 + 1764 * v325 + 544);
    do
    {
      if (*v609 == 2)
      {
        ++v326;
      }

      v609 += 441;
      --v608;
    }

    while (v608);
  }

  v673 = v326;
  v327 = v674;
  if (!v674)
  {
LABEL_382:
    v328 = 0;
    v329 = 0;
    v330 = a8;
    goto LABEL_384;
  }

LABEL_708:
  v610 = 0;
  v329 = 0;
  v328 = 0;
  v611 = v327;
  v330 = a8;
  do
  {
    v612 = *&v26[4 * v610];
    v613 = a6 + 528 * v612;
    if (*(v613 + 28) < 2u)
    {
      if (*(v613 + 8))
      {
        goto LABEL_715;
      }

      if (*(v613 + 104) || a15[v612] >= *(v330 + 188))
      {
        v614 = 0;
        v616 = *(v613 + 20);
        v615 = *(v613 + 24);
        v617 = v615 * v616;
        v618 = 0.0;
        do
        {
          if (v610 != v614)
          {
            v619 = a6 + 528 * *&v26[4 * v614];
            if (*(v619 + 8) == 1)
            {
              v620 = *(v613 + 12);
              v621 = *(v613 + 16);
              v622 = v621 + v615;
              v623 = *(v619 + 12);
              v624 = *(v619 + 16);
              v625 = 0.0;
              if ((v620 + v616) > v623 && v622 > v624)
              {
                v627 = *(v619 + 20);
                v628 = *(v619 + 24);
                v629 = v624 + v628;
                if ((v623 + v627) > v620 && v629 > v621)
                {
                  v631 = fmaxf(fminf(v620 + v616, v623 + v627) - fmaxf(v620, v623), 0.0) * fmaxf(fminf(v622, v629) - fmaxf(v621, v624), 0.0);
                  v625 = v631 / fmaxf((v617 + (v627 * v628)) - v631, 0.00001);
                }
              }

              if (v625 > v618)
              {
                v618 = v625;
              }
            }
          }

          ++v614;
        }

        while (v611 != v614);
        if (v618 <= 0.85 || (v617 / v70) >= 0.11)
        {
LABEL_715:
          memcpy((*(&v32 + 1) + 528 * v328), v613, 0x210uLL);
          v330 = a8;
          *(v33 + 4 * v328++) = v612;
        }
      }
    }

    else
    {
      if (v610 != v329)
      {
        *&v26[4 * v329] = v612;
      }

      ++v329;
    }

    ++v610;
  }

  while (v610 != v611);
LABEL_384:
  v674 = v329;
  if (*a14 <= v328)
  {
    v331 = v328;
  }

  else
  {
    v331 = *a14;
  }

  a2 = v652;
  if (v331)
  {
    __na = v329;
    sub_22E639F10(a13, *a14, *(&v32 + 1), v328, v639, v330, a15);
    memcpy(*(&v639 + 1), v639, 4 * v331 * v331);
    bmMunkres(v639, v331, v638, v332, v640, v333, 0, v334);
    LODWORD(__src[0]) = 0;
    v672 = 0;
    v335 = v328;
    v336 = a13;
    sub_22E63A4C4(a13, *a14, *(&v32 + 1), v335, v640, *(&v639 + 1), a9, *(&v33 + 1), v646, &v672, __src);
    v337 = *(&v693 + 1);
    v663 = LODWORD(__src[0]);
    if (LODWORD(__src[0]))
    {
      v338 = v646;
      v339 = *(&v693 + 1);
      v340 = LODWORD(__src[0]);
      do
      {
        v341 = *v338++;
        *v339++ = *(a13 + 536 * v640[v341] + 532);
        --v340;
      }

      while (v340);
    }

    v659 = v337;
    v342 = *a14;
    if (v342)
    {
      v343 = 0;
      v344 = 0;
      v345 = (a9 + 88);
      v330 = a8;
      v346 = *(&v32 + 1);
      v347 = *(&v33 + 1);
      while (1)
      {
        v348 = *(v336 + 528);
        if (!v348)
        {
          goto LABEL_394;
        }

        v349 = *(v336 + 8);
        if (v349 > 2)
        {
          break;
        }

        if (v349)
        {
          if (v349 != 1)
          {
            if (v349 == 2)
            {
              goto LABEL_403;
            }

LABEL_411:
            v106 = (v349 & 0xFFFFFFFE) == 10;
            v349 = 5;
            if (v106)
            {
              v349 = 6;
            }
          }

LABEL_413:
          if (v348 < v345[v349])
          {
            goto LABEL_414;
          }

          goto LABEL_394;
        }

        if (*(v336 + 104))
        {
          if (v348 < *v345)
          {
            goto LABEL_414;
          }
        }

        else if (v348 < *(a9 + 84))
        {
LABEL_414:
          if (v343 != v344)
          {
            memcpy((a13 + 536 * v344), v336, 0x218uLL);
            v347 = *(&v33 + 1);
            v346 = *(&v32 + 1);
            v330 = a8;
          }

          ++v344;
        }

LABEL_394:
        ++v343;
        v336 += 536;
        if (v342 == v343)
        {
          goto LABEL_419;
        }
      }

      if (v349 > 4)
      {
        if (v349 != 5)
        {
          if (v349 != 8)
          {
            goto LABEL_411;
          }

          v349 = 4;
          goto LABEL_413;
        }
      }

      else if (v349 != 3)
      {
LABEL_403:
        v349 = 2;
        goto LABEL_413;
      }

      v349 = 3;
      goto LABEL_413;
    }

    v344 = 0;
    v330 = a8;
    v346 = *(&v32 + 1);
    v347 = *(&v33 + 1);
LABEL_419:
    *a14 = v344;
    v350 = v672;
    if (v672)
    {
      v660 = vdupq_n_s32(0xFFFFFE97);
      v351 = a13;
      do
      {
        if (*(v346 + 528 * *v347 + 28))
        {
          v352 = a13 + 536 * v344;
          v353 = v347;
          bzero(v352, 0x210uLL);
          *(v352 + 36) = v660;
          *(v352 + 52) = -361;
          *(v352 + 132) = -1;
          *(v352 + 400) = -1;
          *(v352 + 428) = -1;
          *(v352 + 528) = 0;
          *(v352 + 532) = 0;
          v351 = a13;
          memcpy((a13 + 536 * *a14), (*(&v32 + 1) + 528 * *v353), 0x210uLL);
          v347 = v353;
          v346 = *(&v32 + 1);
          v354 = *v353;
          v355 = *(&v32 + 1) + 528 * v354;
          if (!*(v355 + 8) && *(v355 + 104) && a15[*(v33 + 4 * v354)] < *(a9 + 32))
          {
            *(a13 + 536 * *a14 + 532) = 1;
          }

          v344 = *a14 + 1;
          *a14 = v344;
          v330 = a8;
        }

        ++v347;
        --v350;
      }

      while (v350);
    }

    else
    {
      v351 = a13;
    }

    if (!v344)
    {
      goto LABEL_463;
    }

    v356 = 0;
    v357 = 0;
    v358 = v693;
    do
    {
      v359 = v351 + 536 * v356;
      if (!*(v359 + 8))
      {
        if (!v344)
        {
          goto LABEL_463;
        }

        v360 = 0;
        v362 = *(v359 + 20);
        v361 = *(v359 + 24);
        v363 = (v351 + 12);
        do
        {
          if (v356 != v360 && !*(v363 - 1))
          {
            v365 = v363[2];
            v364 = v363[3];
            v366 = *(v359 + 12);
            v367 = *(v359 + 16);
            v368 = v367 + v361;
            v369 = v363[1];
            v370 = *v363 + v365;
            v371 = v369 + v364;
            v372 = (v366 + v362) > *v363 && v368 > v369;
            v373 = v372 && v370 > v366;
            if (v373 && v371 > v367)
            {
              v375 = v365 * v364;
              if (((fmaxf(fminf(v366 + v362, v370) - fmaxf(v366, *v363), 0.0) * fmaxf(fminf(v368, v371) - fmaxf(v367, v369), 0.0)) / fmaxf(fminf(v361 * v362, v375), 0.00001)) > 0.9 && v375 > ((v361 * v362) * 1.5))
              {
                v358[v357++] = v360;
                v344 = *a14;
              }
            }
          }

          ++v360;
          v363 += 134;
        }

        while (v360 < v344);
      }

      ++v356;
    }

    while (v356 < v344);
    if (v344)
    {
      v377 = 0;
      v378 = 0;
      do
      {
        v379 = v357;
        v380 = v358;
        if (v357)
        {
          while (1)
          {
            v381 = *v380++;
            if (v377 == v381)
            {
              break;
            }

            if (!--v379)
            {
              goto LABEL_461;
            }
          }
        }

        else
        {
LABEL_461:
          if (v377 != v378)
          {
            v382 = v358;
            memcpy((a13 + 536 * v378), (a13 + 536 * v377), 0x218uLL);
            v358 = v382;
            v330 = a8;
            v344 = *a14;
          }

          ++v378;
        }

        ++v377;
      }

      while (v377 < v344);
    }

    else
    {
LABEL_463:
      v378 = 0;
    }

    *a14 = v378;
    if (v663)
    {
      v383 = 0;
      a2 = v652;
      v384 = v664;
      v385 = v33;
      v386 = v646;
      v387 = v659;
      while (1)
      {
        v388 = *(v387 + v383);
        v389 = *(v385 + 4 * *(v386 + 4 * v383));
        v390 = a6 + 528 * v389;
        v391 = *(v390 + 8);
        if (v391 == 1 && v384 != 0)
        {
          v393 = (a3 + 24);
          v394 = v69;
          do
          {
            if (*(v393 - 4) == 1)
            {
              v395 = *(v390 + 12);
              v396 = *(v390 + 16);
              v397 = *(v390 + 20);
              v398 = *(v390 + 24);
              v399 = v396 + v398;
              v400 = *(v393 - 3);
              v401 = *(v393 - 2);
              v402 = *(v393 - 1);
              v403 = v400 + v402;
              v404 = v401 + *v393;
              v405 = (v395 + v397) > v400 && v399 > v401;
              v406 = v405 && v403 > v395;
              if (v406 && v404 > v396)
              {
                v408 = fmaxf(fminf(v395 + v397, v403) - fmaxf(v395, v400), 0.0) * fmaxf(fminf(v399, v404) - fmaxf(v396, v401), 0.0);
                if ((v408 / fmaxf(((v397 * v398) + (v402 * *v393)) - v408, 0.00001)) > 0.4)
                {
                  goto LABEL_468;
                }
              }
            }

            v393 += 441;
          }

          while (--v394);
        }

        if (!v391)
        {
          break;
        }

LABEL_467:
        *&v26[4 * __na++] = v389;
LABEL_468:
        if (++v383 == v663)
        {
          goto LABEL_544;
        }
      }

      if (v384)
      {
        v409 = 0;
        v410 = 0;
        v411 = -1.0;
        v412 = (a3 + 24);
        do
        {
          if (*(v412 - 4) == 1)
          {
            v413 = *(v390 + 12);
            v414 = *(v390 + 16);
            v415 = *(v390 + 20);
            v416 = *(v390 + 24);
            v417 = v414 + v416;
            v418 = *(v412 - 3);
            v419 = *(v412 - 2);
            v420 = 0.0;
            if ((v413 + v415) > v418 && v417 > v419)
            {
              v422 = *(v412 - 1);
              v423 = v419 + *v412;
              if ((v418 + v422) > v413 && v423 > v414)
              {
                v425 = fmaxf(fminf(v413 + v415, v418 + v422) - fmaxf(v413, v418), 0.0) * fmaxf(fminf(v417, v423) - fmaxf(v414, v419), 0.0);
                v420 = v425 / fmaxf(((v415 * v416) + (v422 * *v412)) - v425, 0.00001);
              }
            }

            if (v420 > v411)
            {
              v410 = v409;
              v411 = v420;
            }
          }

          v412 += 441;
          ++v409;
        }

        while (v69 != v409);
        if (v411 <= 0.0)
        {
          goto LABEL_509;
        }

        v430 = *(a3 + 1764 * v410 + 4);
        if (v384 == 1)
        {
          v431 = 0;
          v432 = 0;
LABEL_527:
          v437 = v69 - v431;
          v438 = (a3 + 4 + 1764 * v431);
          do
          {
            if (*v438 == v430)
            {
              ++v432;
            }

            v438 += 441;
            --v437;
          }

          while (v437);
          v426 = 0;
          v384 = v664;
        }

        else
        {
          v433 = 0;
          v434 = 0;
          v435 = a3;
          v436 = v69 & 0xFFFFFFFE;
          do
          {
            if (*(v435 + 4) == v430)
            {
              ++v433;
            }

            if (*(v435 + 1768) == v430)
            {
              ++v434;
            }

            v435 += 3528;
            v436 -= 2;
          }

          while (v436);
          v432 = v434 + v433;
          if ((v69 & 0xFFFFFFFE) != v69)
          {
            v431 = v69 & 0xFFFFFFFE;
            v385 = v33;
            v386 = v646;
            goto LABEL_527;
          }

          v426 = 0;
          v384 = v664;
          v385 = v33;
          v386 = v646;
        }

        v387 = v659;
        v427 = v432 == 1;
        v428 = v432 > 1;
        if (v388)
        {
LABEL_510:
          if (v428)
          {
            v429 = 1;
          }

          else
          {
            v429 = v426;
          }

          if ((v429 & 1) != 0 || *(a3 + 1764 * v410 + 540) < 0.7)
          {
            goto LABEL_468;
          }

          goto LABEL_467;
        }
      }

      else
      {
        v410 = 0;
        v411 = -1.0;
LABEL_509:
        v426 = 1;
        v427 = 0;
        v428 = 0;
        if (*(v387 + v383))
        {
          goto LABEL_510;
        }
      }

      if (v427 && v411 > 0.6)
      {
        v440 = *(v390 + 24) * *(v390 + 20);
        if (v440 > (*(a3 + 1764 * v410 + 868) * 0.8) && (v440 / v70) < 0.15)
        {
          goto LABEL_468;
        }
      }

      goto LABEL_467;
    }

    a2 = v652;
LABEL_544:
    v674 = __na;
  }

  v442 = *v681;
  acFilterMultiFaceinSameUbody(a3, v664, *v681, a6, v26, &v674, (v330 + 144), *(&v686 + 1), a1, a2);
  if (v664)
  {
    v443 = v442 + 16;
    v444 = (a3 + 20);
    do
    {
      v449 = v444[-2].i32[1] - 1;
      if (v449 <= 0xB)
      {
        v445 = dword_22E662D60[v449];
      }

      else
      {
        v445 = 0;
      }

      v446 = v444[-1];
      v447 = vadd_f32(v446, *v444);
      v448 = v444[1].u32[0];
      *(v443 - 16) = v446;
      *(v443 - 8) = v447;
      *v443 = v445;
      *(v443 + 8) = v448 / 1000.0;
      v443 += 32;
      v444 = (v444 + 1764);
      --v69;
    }

    while (v69);
  }

  v450 = v674;
  if (v674)
  {
    v451 = 0;
    v452 = 0;
    v453 = *(a8 + 36);
    v454 = *(a8 + 48);
    do
    {
      v455 = *&v26[4 * v451];
      v456 = a6 + 528 * v455;
      v457 = *(v456 + 8) - 1;
      if (v457 > 0xB)
      {
        v458 = 0;
      }

      else
      {
        v458 = dword_22E662D60[v457];
      }

      v459 = vadd_f32(*(v456 + 12), *(v456 + 20));
      v460 = *(v456 + 28);
      __src[0] = *(v456 + 12);
      __src[1] = v459;
      LODWORD(__src[2]) = v458;
      *&__src[3] = v460 / 1000.0;
      if (acCheckOverlapBox(v442, v664, __src, v453, v454))
      {
        v461 = a8;
      }

      else
      {
        v461 = a8;
        if (v451 != v452)
        {
          *&v26[4 * v452] = v455;
        }

        ++v452;
      }

      ++v451;
    }

    while (v450 != v451);
    v462 = *&v681[2];
    if (v452)
    {
      v463 = v452;
      v464 = (*&v681[2] + 24);
      v465 = v26;
      a2 = v652;
      do
      {
        v471 = *v465;
        v465 += 4;
        v470 = v471;
        v472 = a6 + 528 * v471;
        v473 = *(v472 + 8) - 1;
        if (v473 <= 0xB)
        {
          v466 = dword_22E662D60[v473];
        }

        else
        {
          v466 = 0;
        }

        v467 = *(v472 + 12);
        v468 = vadd_f32(v467, *(v472 + 20));
        v469 = *(v472 + 28);
        *(v464 - 3) = v467;
        *(v464 - 2) = v468;
        *v464 = v469 / 1000.0;
        *(v464 - 2) = v466;
        *(v464 - 1) = v470;
        v464 += 8;
        --v463;
      }

      while (v463);
    }

    else
    {
      a2 = v652;
    }
  }

  else
  {
    v452 = 0;
    v462 = *&v681[2];
    v461 = a8;
  }

  v474 = acRemoveOverlapBoxes(v462, v452, v682[0], *(v461 + 48));
  v475 = v474;
  v476 = v661;
  if (v474)
  {
    if (v474 > 0xC && (v26 < &v462[2 * v474 - 1] + 8 ? (v477 = v462 + 20 >= &v26[4 * v474]) : (v477 = 1), v477))
    {
      v478 = v474 & 7;
      if ((v474 & 7) == 0)
      {
        v478 = 8;
      }

      v479 = v474 - v478;
      v480 = v462 + 37;
      v481 = v26 + 16;
      v482 = v479;
      do
      {
        LODWORD(v483) = *(v480 - 32);
        DWORD1(v483) = *(v480 - 24);
        DWORD2(v483) = *(v480 - 16);
        HIDWORD(v483) = *(v480 - 8);
        LODWORD(v484) = *v480;
        DWORD1(v484) = v480[8];
        DWORD2(v484) = v480[16];
        HIDWORD(v484) = v480[24];
        *(v481 - 1) = v483;
        *v481 = v484;
        v480 += 64;
        v481 += 2;
        v482 -= 8;
      }

      while (v482);
      v476 = v661;
    }

    else
    {
      v479 = 0;
    }

    v485 = v474 - v479;
    v486 = &v26[4 * v479];
    v487 = &v462[2 * v479 + 1] + 1;
    do
    {
      v488 = *v487;
      v487 += 8;
      *v486 = v488;
      v486 += 4;
      --v485;
    }

    while (v485);
  }

  v674 = v474;
  v39 = v673;
  v489 = a8;
LABEL_591:
  if (v664 - v39 + v475 > a5)
  {
    if (v645)
    {
      v492 = 0;
      v493 = v643;
    }

    else
    {
      v601 = 0;
      v492 = 0;
      v602 = (a3 + 544);
      v493 = v643;
      do
      {
        if (*v602 == 1)
        {
          v603 = (v643 + 8 * v492);
          *v603 = v601;
          v603[1] = *(v602 - 2);
          ++v492;
        }

        ++v601;
        v602 += 441;
      }

      while (v664 != v601);
    }

    v494 = v493;
    bmHeapsort(v493, v492, 8uLL, sub_22E63A758);
    v489 = a8;
    v476 = v661;
    if (v492)
    {
      v495 = v664 + v475 - a5;
      if (v39 < v495)
      {
        v496 = v492 - 1;
        if (v496 >= v475 + v664 + ~v39 - a5)
        {
          v496 = v475 + v664 + ~v39 - a5;
        }

        if (v496)
        {
          v497 = v496 + 1;
          v496 = (v496 + 1) & 0x1FFFFFFFELL;
          v498 = (v494 + 8);
          v499 = v496;
          do
          {
            v500 = *(v498 - 2);
            v501 = *v498;
            v498 += 4;
            *(a3 + 1764 * v500 + 544) = 2;
            *(a3 + 1764 * v501 + 544) = 2;
            v499 -= 2;
          }

          while (v499);
          v476 = v661;
          if (v497 != v496)
          {
            v39 += v496;
            goto LABEL_603;
          }
        }

        else
        {
LABEL_603:
          v502 = v496 + 1;
          v503 = v39 + 1;
          v504 = (v494 + 8 * v496);
          do
          {
            v505 = *v504;
            v504 += 2;
            *(a3 + 1764 * v505 + 544) = 2;
            if (v502 >= v492)
            {
              break;
            }

            ++v502;
            v45 = v503++ >= v495;
          }

          while (!v45);
        }
      }
    }
  }

  acTrkObjectPickDet(a1, a2, a3, v664, a5, a6, v476, v26, &v674, v648, v632, v650, v633, *(v489 + 194), *(v489 + 196));
  if (v645)
  {
    v506 = 0;
  }

  else
  {
    v572 = 0;
    v506 = 0;
    v573 = a3;
    do
    {
      if (v573[136] <= 1)
      {
        if (v572 != v506)
        {
          memcpy((a3 + 1764 * v506), v573, 0x6E4uLL);
        }

        ++v506;
      }

      ++v572;
      v573 += 441;
    }

    while (v664 != v572);
  }

  if (v506 >= a5)
  {
    v507 = a5;
  }

  else
  {
    v507 = v506;
  }

  v508 = v674;
  if (v674 >= a5)
  {
    v508 = a5;
  }

  if (v508 + v507 <= a5)
  {
    v509 = v508;
  }

  else
  {
    v509 = a5 - v507;
  }

  if (!v509)
  {
    v559 = 0;
    v563 = a11;
    *a10 = 0;
    v262 = v507;
    v564 = v647;
    v565 = v642;
    *a11 = 0;
    if (a6)
    {
      goto LABEL_637;
    }

    goto LABEL_646;
  }

  v665 = v508 + v507;
  __nc = vdupq_n_s32(0xFFFFFE97);
  LODWORD(v262) = v507;
  while (2)
  {
    v547 = *v26;
    v26 += 4;
    v548 = (a3 + 1764 * v262);
    bzero(v548, 0x6E4uLL);
    *(v548 + 9) = __nc;
    v548[13] = -361;
    v548[33] = -1;
    v548[100] = -1;
    v548[107] = -1;
    *(v548 + 203) = 0xFF7FFFFFFFFFFFFFLL;
    v548[217] = 0;
    v549 = a6 + 528 * v547;
    v548[219] = 0;
    memcpy(v548, v549, 0x210uLL);
    v550 = (*a12)++;
    *v548 = v550;
    v548[135] = LODWORD(a15[v547]);
    v551 = *(v549 + 8);
    v552 = *(v549 + 32);
    v553 = *(v549 + 44);
    v554 = *(v549 + 48);
    v555 = *(v549 + 104);
    v556 = *(v549 + 428);
    if (v548[2] == 9)
    {
      *(v548 + 137) = *(v549 + 12);
      *(v548 + 564) = v555;
      v548[145] = v556;
      v548[143] = v554;
      v548[142] = v553;
      v548[146] = v551;
      v548[147] = v552;
      v510 = 1;
LABEL_620:
      v548[205] = v510;
      goto LABEL_621;
    }

    v557 = v548[205];
    if (v557 < 6)
    {
      v558 = &v548[11 * v557];
      *(v558 + 137) = *(v549 + 12);
      *(v558 + 564) = v555;
      v558[145] = v556;
      v558[143] = v554;
      v558[142] = v553;
      v558[146] = v551;
      v558[147] = v552;
      v510 = v548[205] + 1;
      goto LABEL_620;
    }

    *(v548 + 48) = *(v549 + 12);
    *(v548 + 784) = v555;
    v548[200] = v556;
    v548[198] = v554;
    v548[197] = v553;
    v548[201] = v551;
    v548[202] = v552;
LABEL_621:
    *(v548 + 426) = *(v549 + 12);
    *(v548 + 430) = *(v549 + 12);
    v511 = *(v549 + 220);
    v512 = *(v549 + 252);
    v513 = *(v549 + 204);
    *(v548 + 254) = *(v549 + 236);
    *(v548 + 258) = v512;
    *(v548 + 246) = v513;
    *(v548 + 250) = v511;
    v514 = *(v549 + 316);
    v516 = *(v549 + 268);
    v515 = *(v549 + 284);
    *(v548 + 270) = *(v549 + 300);
    *(v548 + 274) = v514;
    *(v548 + 262) = v516;
    *(v548 + 266) = v515;
    v517 = *(v549 + 380);
    v519 = *(v549 + 332);
    v518 = *(v549 + 348);
    *(v548 + 286) = *(v549 + 364);
    *(v548 + 290) = v517;
    *(v548 + 278) = v519;
    *(v548 + 282) = v518;
    v520 = *(v549 + 140);
    v521 = *(v549 + 156);
    v522 = *(v549 + 188);
    *(v548 + 238) = *(v549 + 172);
    *(v548 + 242) = v522;
    *(v548 + 230) = v520;
    *(v548 + 234) = v521;
    v523 = *(v549 + 140);
    v524 = *(v549 + 156);
    v525 = *(v549 + 188);
    *(v548 + 302) = *(v549 + 172);
    *(v548 + 306) = v525;
    *(v548 + 294) = v523;
    *(v548 + 298) = v524;
    v526 = *(v549 + 204);
    v527 = *(v549 + 220);
    v528 = *(v549 + 252);
    *(v548 + 318) = *(v549 + 236);
    *(v548 + 322) = v528;
    *(v548 + 310) = v526;
    *(v548 + 314) = v527;
    v529 = *(v549 + 268);
    v530 = *(v549 + 284);
    v531 = *(v549 + 316);
    *(v548 + 334) = *(v549 + 300);
    *(v548 + 338) = v531;
    *(v548 + 326) = v529;
    *(v548 + 330) = v530;
    v532 = *(v549 + 332);
    v533 = *(v549 + 348);
    v534 = *(v549 + 380);
    *(v548 + 350) = *(v549 + 364);
    *(v548 + 354) = v534;
    *(v548 + 342) = v532;
    *(v548 + 346) = v533;
    v535 = *(v549 + 140);
    v536 = *(v549 + 156);
    v537 = *(v549 + 188);
    *(v548 + 366) = *(v549 + 172);
    *(v548 + 370) = v537;
    *(v548 + 358) = v535;
    *(v548 + 362) = v536;
    v538 = *(v549 + 204);
    v539 = *(v549 + 220);
    v540 = *(v549 + 252);
    *(v548 + 382) = *(v549 + 236);
    *(v548 + 386) = v540;
    *(v548 + 374) = v538;
    *(v548 + 378) = v539;
    v541 = *(v549 + 268);
    v542 = *(v549 + 284);
    v543 = *(v549 + 316);
    *(v548 + 398) = *(v549 + 300);
    *(v548 + 402) = v543;
    *(v548 + 390) = v541;
    *(v548 + 394) = v542;
    v544 = *(v549 + 332);
    v545 = *(v549 + 348);
    v546 = *(v549 + 380);
    *(v548 + 414) = *(v549 + 364);
    *(v548 + 418) = v546;
    *(v548 + 406) = v544;
    *(v548 + 410) = v545;
    *(v548 + 422) = *(v549 + 28);
    v262 = (v262 + 1);
    if (--v509)
    {
      continue;
    }

    break;
  }

  v559 = v262 - v507;
  *a10 = v262 - v507;
  if (v262 <= v507)
  {
    v563 = a11;
    *a11 = 0;
    v564 = v647;
    v565 = v642;
    if (v507)
    {
      goto LABEL_655;
    }

    goto LABEL_663;
  }

  if (a5 >= v665)
  {
    v560 = v665;
  }

  else
  {
    v560 = a5;
  }

  v561 = v560 - v507;
  v562 = v507;
  v563 = a11;
  v564 = v647;
  v565 = v642;
  if (v561 <= 7)
  {
    do
    {
LABEL_635:
      v647->i32[v562 - v507] = v562;
      ++v562;
    }

    while (v262 != v562);
  }

  else
  {
    v566 = v561 & 0xFFFFFFFFFFFFFFF8;
    v567 = vaddq_s32(vdupq_n_s32(v507), xmmword_22E6624F0);
    v568 = v647 + 1;
    v569.i64[0] = 0x400000004;
    v569.i64[1] = 0x400000004;
    v570.i64[0] = 0x800000008;
    v570.i64[1] = 0x800000008;
    v571 = v561 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v568[-1] = v567;
      *v568 = vaddq_s32(v567, v569);
      v567 = vaddq_s32(v567, v570);
      v568 += 2;
      v571 -= 8;
    }

    while (v571);
    if (v561 != v566)
    {
      v562 = v566 + v507;
      goto LABEL_635;
    }
  }

  *a11 = 0;
  if (!a6)
  {
LABEL_646:
    if (v507)
    {
      v574 = 0;
      if (v507 < 0xC)
      {
        goto LABEL_740;
      }

      if (v559 > -v507)
      {
        goto LABEL_740;
      }

      v575 = xmmword_22E6624F0;
      v574 = v507 & 0xFFFFFFF8;
      v576.i64[0] = 0x400000004;
      v576.i64[1] = 0x400000004;
      v577.i64[0] = 0x800000008;
      v577.i64[1] = 0x800000008;
      v578 = v559;
      v579 = v574;
      do
      {
        v580 = (v564 + 4 * v578);
        *v580 = v575;
        v580[1] = vaddq_s32(v575, v576);
        v575 = vaddq_s32(v575, v577);
        v578 += 8;
        v579 -= 8;
      }

      while (v579);
      if (v574 != v507)
      {
LABEL_740:
        do
        {
          v564->i32[v559 + v574] = v574;
          ++v574;
        }

        while (v507 != v574);
      }
    }

    goto LABEL_663;
  }

LABEL_637:
  if (!v507)
  {
    goto LABEL_663;
  }

LABEL_655:
  v581 = 0;
  v582 = (a3 + 528);
  do
  {
    if (!*v582)
    {
      v564->i32[v559++] = v581;
      ++*v563;
    }

    v582 += 441;
    ++v581;
  }

  while (v507 != v581);
  v583 = 0;
  v584 = (a3 + 528);
  do
  {
    if (*v584)
    {
      v564->i32[v559++] = v583;
    }

    v584 += 441;
    ++v583;
  }

  while (v507 != v583);
LABEL_663:
  bzero(v565, v262);
  if (v262)
  {
    v585 = 0;
    v586 = a8;
    do
    {
      if (!*(v565 + v585))
      {
        memcpy(__src, (a3 + 1764 * v585), 0x6E4uLL);
        *(v565 + v585) = 1;
        v587 = v564->u32[v585];
        v588 = v585;
        if (v585 != v587)
        {
          v588 = v585;
          do
          {
            memcpy((a3 + 1764 * v588), (a3 + 1764 * v587), 0x6E4uLL);
            v588 = v564->u32[v588];
            *(v565 + v588) = 1;
            v587 = v564->u32[v588];
          }

          while (v585 != v587);
        }

        memcpy((a3 + 1764 * v588), __src, 0x6E4uLL);
        v586 = a8;
      }

      ++v585;
    }

    while (v585 != v262);
    v589 = 0;
    v590 = *(v586 + 188);
    do
    {
      v594 = a3 + v589;
      v595 = *(a3 + v589 + 536);
      if (v595 == -1)
      {
        v596 = -1;
      }

      else
      {
        v596 = v595 + 1;
      }

      *(v594 + 536) = v596;
      v597 = *(v594 + 20) * *(v594 + 24);
      *(v594 + 868) = v597;
      *(v594 + 872) = v597 / ((v652 * a1) + 0.0001);
      if (!*(v594 + 8))
      {
        ++*(v594 + 824);
        if (*(v594 + 104))
        {
          v598 = a3 + v589;
          ++*(a3 + v589 + 864);
          v593 = *(a3 + v589 + 48);
          if (v593 >= 501)
          {
            v593 -= 1080;
            *(v598 + 48) = v593;
          }

          v591 = (v593 + 540) % 360;
          if (v591 > 0xFFFFFE97)
          {
            v591 += 360;
          }

          v592 = ((v591 / 30.0) + 0.5) % 12;
          if (v592 > 0xFFFFFFF3)
          {
            v592 += 12;
          }

          *(v598 + 40) = *(a16 + 4 * v592);
          if ((v593 + 0.00000011921) < 0.0)
          {
            v593 += 360;
          }

          *(v598 + 48) = v593;
        }

        else
        {
          v599 = a3 + v589;
          if (*(a3 + v589 + 540) >= v590)
          {
            *(v599 + 876) = 0;
          }

          else
          {
            ++*(v599 + 876);
          }
        }
      }

      v589 += 1764;
    }

    while (1764 * v262 != v589);
  }

  return v262;
}