float32_t sub_346C0(float *a1, float32x2_t *a2, float a3)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a3;
  if (fabs(a3 + -1.0) > 0.01)
  {
    v10 = a1[2];
    __x = a1[1];
    v11 = pow(*a1, v7);
    __xa = pow(__x, v7);
    v8 = pow(v10, v7);
    v4 = v11;
    v5 = __xa;
    v6 = v8;
  }

  *a2 = vcvt_f32_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(xmmword_551F0, v5), xmmword_55200, v4), xmmword_55210, v6));
  result = v5 * -0.522 + v4 * 0.211 + v6 * 0.311;
  a2[1].f32[0] = result;
  return result;
}

float sub_347B8(_BYTE *a1, float *a2, float a3, float a4, double a5, float a6)
{
  LOBYTE(a3) = *a1;
  LOBYTE(a4) = a1[1];
  *&v6 = LODWORD(a4) * 0.587;
  v7 = *&v6 + (LODWORD(a3) * 0.299);
  LOBYTE(v6) = a1[2];
  *&v8 = v6;
  *&v9 = v7 + (*&v8 * 0.114);
  *a2 = *&v9;
  LOBYTE(v9) = *a1;
  LOBYTE(v8) = a1[1];
  *&v10 = v8 * -0.331;
  v11 = *&v10 + (v9 * -0.169);
  LOBYTE(v10) = a1[2];
  v12 = 0.5;
  *&v13 = (v11 + (v10 * 0.5)) + 128.0;
  a2[1] = *&v13;
  LOBYTE(v13) = *a1;
  LOBYTE(a6) = a1[1];
  LOBYTE(v12) = a1[2];
  result = (((LODWORD(a6) * -0.419) + (v13 * 0.5)) + (v12 * -0.081)) + 128.0;
  a2[2] = result;
  return result;
}

float sub_3487C(float *a1, float *a2)
{
  v2 = a1[1] + -128.0;
  v3 = a1[2] + -128.0;
  *a2 = (*a1 + (v2 * 0.0)) + (v3 * 1.403);
  a2[1] = (*a1 + (v2 * -0.344)) + (v3 * -0.714);
  result = (*a1 + (v2 * -1.773)) + (v3 * -0.0);
  a2[2] = result;
  return result;
}

uint64_t sub_348E8(uint64_t a1, int a2, int a3, int a4)
{
  v4 = 0;
  v5 = 0;
  v6 = a3;
  v7 = (a1 + a4);
  if (!a3)
  {
    v6 = 3.0;
  }

  v8 = v7 + 4;
  v9 = v7[4];
  v10 = (v6 + *v7 * 0.008) + *v7;
  v11 = &v7[a2 + 4];
  v12 = &v7[a2];
  v13 = &v7[-a2];
  v15 = *(v7 - 4);
  v14 = v7 - 4;
  v16.i8[0] = v9;
  v16.i8[1] = *v11;
  v16.i8[2] = *v12;
  v16.i8[3] = v14[a2];
  v16.i8[4] = v15;
  v16.i8[5] = v14[-a2];
  v16.i8[6] = *v13;
  v16.i8[7] = v8[-a2];
  v17 = vdupq_n_s32(v10);
  v18 = vmovl_u8(v16);
  v19.i64[0] = 0x100000001;
  v19.i64[1] = 0x100000001;
  v22[1] = vandq_s8(vcgtq_s32(vmovl_high_u16(v18), v17), v19);
  v22[0] = vandq_s8(vcgtq_s32(vmovl_u16(*v18.i8), v17), v19);
  v20 = 1;
  do
  {
    v5 += *(v22 + v4) * v20;
    v20 *= 2;
    v4 += 4;
  }

  while (v4 != 32);
  return v5;
}

uint64_t sub_349FC(unsigned __int8 *a1, _DWORD *a2, uint64_t a3)
{
  v4 = *a1;
  result = *a2;
  if (!v4)
  {
    v6 = a1 + 1;
    while (1)
    {
      result = (result + 1);
      if (!*v6 && result >= a3)
      {
        break;
      }

      *a2 = result;
      if (*v6++)
      {
        return result;
      }
    }

    return a3;
  }

  return result;
}

unint64_t sub_34A3C(unint64_t result, unsigned int *a2, uint64_t a3, int a4)
{
  if (*result)
  {
    return *a2;
  }

  v4 = result;
  LODWORD(result) = *a2;
  v5 = (v4 + a4);
  while (1)
  {
    result = (result + 1);
    if (*v5)
    {
      v7 = 0;
      v6 = 1;
    }

    else
    {
      v7 = __OFSUB__(result, a3);
      v6 = result - a3 < 0;
    }

    if (v6 == v7)
    {
      break;
    }

    *a2 = result;
    v8 = *v5;
    v5 += a4;
    if (v8)
    {
      return result;
    }
  }

  return a3;
}

BOOL sub_34A8C(_BYTE *a1, int a2, int a3)
{
  if (a3 == 1)
  {
    v3 = -a2;
  }

  else
  {
    v3 = a2;
  }

  if (a3 == 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 == 3)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  return !*a1 || !a1[v5] || a1[-v5] == 0;
}

BOOL sub_34ADC(_BYTE *a1, int a2, int a3)
{
  if (a3 == 3)
  {
    v3 = -a2;
  }

  else
  {
    v3 = 1;
  }

  if (a3 == 2)
  {
    v3 = a2;
  }

  if (a3 == 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3;
  }

  return !*a1 || !a1[v4] || a1[-v4] == 0;
}

unint64_t sub_34B2C(unint64_t result, unsigned int *a2, uint64_t a3, int a4, int a5)
{
  if (*result)
  {
    return *a2;
  }

  v5 = result;
  LODWORD(result) = *a2;
  while (1)
  {
    if (a5 == 3)
    {
      v6 = -a4;
    }

    else
    {
      v6 = 1;
    }

    if (a5 == 2)
    {
      v6 = a4;
    }

    if (a5 == 1)
    {
      v6 = -1;
    }

    v5 += v6;
    result = (result + 1);
    if (!*v5 && result >= a3)
    {
      break;
    }

    *a2 = result;
    if (*v5)
    {
      return result;
    }
  }

  return a3;
}

unint64_t sub_34B94(unint64_t result, unsigned int *a2, uint64_t a3, int a4, int a5)
{
  if (*result)
  {
    return *a2;
  }

  v5 = result;
  LODWORD(result) = *a2;
  while (1)
  {
    if (a5 == 1)
    {
      v6 = -a4;
    }

    else
    {
      v6 = a4;
    }

    if (a5 == 2)
    {
      v6 = -1;
    }

    if (a5 == 3)
    {
      v6 = 1;
    }

    v5 += v6;
    result = (result + 1);
    if (!*v5 && result >= a3)
    {
      break;
    }

    *a2 = result;
    if (*v5)
    {
      return result;
    }
  }

  return a3;
}

double sub_34BFC(uint64_t *a1, uint64_t *a2, uint64_t *a3, double *a4, double *a5, double *a6)
{
  v9 = *a1 / 255.0;
  v10 = *a2 / 255.0;
  v11 = *a3;
  if (v9 <= 0.0404499993)
  {
    v13 = v9 / 12.9200001;
  }

  else
  {
    v12 = (v9 + 0.0549999997) / 1.05499995;
    v13 = powf(v12, 2.4);
  }

  v14 = v11 / 255.0;
  if (v10 <= 0.04045)
  {
    v16 = v10 / 12.9200001;
  }

  else
  {
    v15 = (v10 + 0.0549999997) / 1.05499995;
    v16 = powf(v15, 2.4);
  }

  if (v14 <= 0.0404499993)
  {
    v18 = v14 / 12.9200001;
  }

  else
  {
    v17 = (v14 + 0.0549999997) / 1.05499995;
    v18 = powf(v17, 2.4);
  }

  v19 = v18 * 100.0;
  *a4 = v16 * 100.0 * 0.357600003 + v13 * 100.0 * 0.412400007 + v19 * 0.180500001;
  *a5 = v16 * 100.0 * 0.715200007 + v13 * 100.0 * 0.212599993 + v19 * 0.0722000003;
  result = v16 * 100.0 * 0.119199999 + v13 * 100.0 * 0.0193000007 + v19 * 0.950500011;
  *a6 = result;
  return result;
}

void sub_34DC8(uint64_t a1, float64x2_t *a2)
{
  for (i = 0; i != 24; i += 8)
  {
    v5 = *(a1 + i);
    if (v5 <= 0.04045)
    {
      v6 = v5 / 12.92;
    }

    else
    {
      v6 = pow((v5 + 0.055) / 1.055, 2.4);
    }

    *(&v10 + i) = v6;
  }

  v7 = v10;
  v8 = v11;
  v9 = v12;
  *a2 = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(xmmword_55220, v11), xmmword_55230, v10), xmmword_55240, v12);
  a2[1].f64[0] = v8 * 0.1192 + v7 * 0.0193 + v9 * 0.9505;
}

float64x2_t sub_34EFC(float64x2_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1->f64[1];
  v5 = v4 / 0.333333333;
  v6 = a1[1].f64[0];
  if (v4 / 0.333333333 <= 0.00885645168)
  {
    v8 = v5 * 903.296296;
  }

  else
  {
    v10 = *a1;
    v7 = pow(v5, 0.333333333);
    v3 = v10;
    v8 = v7 * 116.0 + -16.0;
  }

  *a2 = v8;
  result = vmulq_n_f64(vaddq_f64(vdivq_f64(vmulq_f64(v3, xmmword_55250), vdupq_lane_s64(COERCE__INT64(v3.f64[0] + v4 * 15.0 + v6 * 3.0), 0)), xmmword_55260), v8 * 13.0);
  *(a2 + 8) = result;
  return result;
}

double sub_34FC4(uint64_t a1, uint64_t a2)
{
  sub_34DC8(a1, &v4);
  *&result = *&sub_34EFC(&v4, a2);
  return result;
}

double sub_3502C(_BYTE *a1, _BYTE *a2, double a3, double a4, double a5)
{
  LOBYTE(a3) = *a1;
  v5 = *&a3 / 255.0;
  LOBYTE(a5) = a1[1];
  *&v6 = *&a5 / 255.0;
  *v25 = v5;
  v25[1] = v6;
  LOBYTE(v5) = a1[2];
  *&v7 = *&v5 / 255.0;
  v25[2] = v7;
  LOBYTE(v7) = *a2;
  v8 = v7 / 255.0;
  LOBYTE(v6) = a2[1];
  *v24 = v8;
  *&v24[1] = v6 / 255.0;
  LOBYTE(v8) = a2[2];
  *&v24[2] = *&v8 / 255.0;
  sub_34DC8(v25, &v26);
  v9 = v26;
  v10 = v26.f64[1] / 0.333333333;
  v23 = v27;
  if (v26.f64[1] / 0.333333333 <= 0.00885645168)
  {
    v11 = v10 * 903.296296;
  }

  else
  {
    v11 = pow(v10, 0.333333333) * 116.0 + -16.0;
  }

  sub_34DC8(v24, &v26);
  v12 = v26;
  v13 = v26.f64[1] / 0.333333333;
  v14 = v27;
  if (v26.f64[1] / 0.333333333 <= 0.00885645168)
  {
    v15 = v13 * 903.296296;
  }

  else
  {
    v15 = pow(v13, 0.333333333) * 116.0 + -16.0;
  }

  v16 = v9.f64[0] + v9.f64[1] * 15.0 + v23 * 3.0;
  v17 = (v9.f64[1] * 9.0 / v16 + -0.473684211) * (v11 * 13.0);
  v18 = (v9.f64[0] * 4.0 / v16 + -0.222222222) * (v11 * 13.0);
  v19 = v12.f64[0] + v12.f64[1] * 15.0 + v14 * 3.0;
  v20 = v12.f64[1] * 9.0 / v19;
  v21 = (v12.f64[0] * 4.0 / v19 + -0.222222222) * (v15 * 13.0);
  return fabs(sqrt((v21 - v18) * (v21 - v18) + (v15 - v11) * (v15 - v11) + ((v20 + -0.473684211) * (v15 * 13.0) - v17) * ((v20 + -0.473684211) * (v15 * 13.0) - v17)));
}

double sub_3523C(_BYTE *a1, double *a2, double a3)
{
  LOBYTE(a3) = *a1;
  v3 = *&a3 / 255.0;
  *a2 = v3;
  LOBYTE(v3) = a1[1];
  v4 = *&v3 / 255.0;
  a2[1] = v4;
  LOBYTE(v4) = a1[2];
  result = *&v4 / 255.0;
  a2[2] = result;
  return result;
}

char *sub_35278(char *result, _BYTE *a2, int a3, int a4, int a5, int a6)
{
  if (a4 >= 1)
  {
    v6 = 0;
    v7 = a5;
    v8 = a4;
    do
    {
      if (a3 >= 1)
      {
        v9 = 0;
        v10 = result;
        v11 = a2;
        do
        {
          v12 = a6;
          v13 = v10;
          v14 = v11;
          if (a6 >= 1)
          {
            do
            {
              v15 = *v13++;
              *v14++ = v15;
              --v12;
            }

            while (v12);
          }

          ++v9;
          v11 += a6;
          v10 += a6;
        }

        while (v9 != a3);
      }

      ++v6;
      a2 += a3;
      result += v7;
    }

    while (v6 != v8);
  }

  return result;
}

uint64_t sub_35300(uint64_t result, int a2, unsigned int a3, int a4, int a5)
{
  if (a3 >= 2)
  {
    v5 = 0;
    v6 = a4;
    do
    {
      if (a2 >= 1)
      {
        v7 = 0;
        for (i = 0; i != a2; ++i)
        {
          if (a5 >= 1)
          {
            v9 = (*(result + v5 * v6 + i * a5 + 1) + *(result + v5 * v6 + i * a5) + *(result + v5 * v6 + i * a5 + 2)) * 0.333333333;
            v10 = (*(result + (a3 - v5) * v6 + i * a5 + 1) + *(result + (a3 - v5) * v6 + i * a5) + *(result + (a3 - v5) * v6 + i * a5 + 2)) * 0.333333333;
            if (v9 <= v10)
            {
              v11 = result + v5 * v6;
            }

            else
            {
              v11 = result + (a3 - v5) * v6;
            }

            if (v9 <= v10)
            {
              v12 = result + (a3 - v5) * v6;
            }

            else
            {
              v12 = result + v5 * v6;
            }

            v13 = (v11 + v7);
            v14 = (v12 + v7);
            v15 = a5;
            do
            {
              v16 = *v14++;
              *v13++ = v16;
              --v15;
            }

            while (v15);
          }

          v7 += a5;
        }
      }

      ++v5;
    }

    while (v5 != a3 >> 1);
  }

  return result;
}

uint64_t sub_353E4(uint64_t result, int a2, int a3, int a4, int a5)
{
  if (a3 >= 1)
  {
    v6 = 0;
    v7 = a5;
    v8 = a4;
    v9 = a3;
    v10 = (result + 2);
    v11 = a2;
    do
    {
      v12 = v11;
      v13 = v10;
      if (a2 >= 1)
      {
        do
        {
          result = printf("{%d,%d,%d},", *(v13 - 2), *(v13 - 1), *v13);
          v13 += v7;
          --v12;
        }

        while (v12);
      }

      ++v6;
      v10 += v8;
    }

    while (v6 != v9);
  }

  return result;
}

float sub_354DC(double a1, double a2, double a3, double a4, float a5, float a6, float a7)
{
  v10 = a6;
  v11 = a5;
  v12 = a5 - a1;
  if (a2 <= a6 && a4 <= v10)
  {
    v15 = a7;
    v16 = pow(fabs(v12), a7);
    v17 = pow(vabdd_f64(v10, a2), v15);
    v18 = pow(v16 + v17, 1.0 / v15);
    v19 = pow(vabdd_f64(v11, a3), v15);
    v20 = pow(vabdd_f64(v10, a4), v15);
    return v18 + pow(v19 + v20, 1.0 / v15);
  }

  else
  {
    return sqrt((v10 - a2) * (v10 - a2) + v12 * v12) + sqrt((v10 - a4) * (v10 - a4) + (v11 - a3) * (v11 - a3));
  }
}

BOOL sub_355C8(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, long double a10)
{
  v18 = sqrt((a2 - a6) * (a2 - a6) + (a1 - a5) * (a1 - a5));
  v19 = sqrt((a4 - a6) * (a4 - a6) + (a3 - a5) * (a3 - a5));
  if (v18 >= v19)
  {
    v18 = v19;
  }

  return sub_3563C(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, v18 * 0.02);
}

BOOL sub_3563C(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, long double a10, double a11)
{
  v19 = a1 - a5;
  v20 = a2 - a6;
  v21 = sqrt(v20 * v20 + v19 * v19);
  v22 = v21;
  v23 = a3 - a5;
  v24 = a4 - a6;
  v25 = sqrt(v24 * v24 + v23 * v23);
  v26 = v25;
  v27 = 0.0;
  v28 = 0.0;
  v29 = 0.0;
  if (v22 >= 0.01)
  {
    v28 = v19 / v22;
    v29 = v20 / v22;
  }

  v30 = 0.0;
  if (v26 >= 0.01)
  {
    v27 = v23 / v26;
    v30 = v24 / v26;
  }

  v31 = 1.0 / v26;
  v32 = 1.0 / v22;
  v33 = a7 - a5;
  v34 = (a8 - a6) * v29 + (a7 - a5) * v28;
  v35 = (a8 - a6) * v30 + v33 * v27;
  if (v34 >= 0.0)
  {
    a10 = a9;
  }

  v37 = pow(fabs(v32 * v34), a10);
  return v37 + pow(fabs(v31 * v35), a10) < a11 + 1.0;
}

BOOL sub_35750(double a1, double a2, double a3, double a4, double a5, double a6, long double a7, long double a8, double a9)
{
  if (a6 <= a4)
  {
    a7 = a8;
  }

  v21 = pow(fabs((a5 - a3) / a1), a7);
  return v21 + pow(fabs((a6 - a4) / a2), a7) < a9 + 1.0;
}

BOOL sub_357D4(double a1, double a2, double a3, double a4, double a5, double a6, long double a7, long double a8, double a9)
{
  if (a5 <= a3)
  {
    a7 = a8;
  }

  v21 = pow(fabs((a5 - a3) / a1), a7);
  return v21 + pow(fabs((a6 - a4) / a2), a7) < a9 + 1.0;
}

double sub_35874(int a1, int a2, int a3, int *a4, int *a5, double result)
{
  if (a1 == 3)
  {
    *a4 = a3;
    result = result - a2 + -1.0;
    *a5 = result;
  }

  else if (!a1)
  {
    *a5 = a3;
    *a4 = a2;
  }

  return result;
}

double sub_358AC(int a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6)
{
  v9 = a2;
  if (a1 == 2)
  {
    v11 = a6 - CGRectGetMaxY(*&a2);
    v14.origin.x = v9;
    v14.origin.y = a3;
    v14.size.width = a4;
    v14.size.height = a5;
    CGRectGetMinX(v14);
    return v11;
  }

  else if (a1 == 3)
  {
    MinY = CGRectGetMinY(*&a2);
    v13.origin.x = v9;
    v13.origin.y = a3;
    v13.size.width = a4;
    v13.size.height = a5;
    CGRectGetMaxX(v13);
    return MinY;
  }

  return v9;
}

double sub_35984(int a1, double a2, double a3)
{
  if (a1 == 3)
  {
    return a3;
  }

  return result;
}

uint64_t sub_359AC(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7)
{
  v7 = 4 * a4;
  v8 = a1 + (a4 - a3) * v7;
  v9 = a1 + (a5 - a2) * v7;
  v10 = a1 + v7 * a2;
  if (a6)
  {
    v10 = v9;
  }

  if (a6 == 3)
  {
    v11 = (a5 - a2) * a7;
  }

  else
  {
    v11 = a7 * a3;
  }

  if (a6 == 3)
  {
    v10 = v8;
  }

  return v10 + v11;
}

uint64_t sub_359F0(uint64_t result, int a2, int a3, int a4, int a5, int a6, int a7)
{
  v7 = a7 * a4;
  if (a6 > 1)
  {
    if (a6 != 2)
    {
      if (a6 != 3)
      {
        return result;
      }

      v8 = result + v7 * (~a2 + a5);
      v9 = ~a3;
      return v8 + (v9 + a4) * a7;
    }

    result += v7 * a2 + a7 * a3;
  }

  else
  {
    if (a6)
    {
      if (a6 != 1)
      {
        return result;
      }

      v8 = result + v7 * a3;
      v9 = ~a2;
      return v8 + (v9 + a4) * a7;
    }

    result += v7 * (~a3 + a5) + a7 * a2;
  }

  return result;
}

uint64_t sub_35A60(uint64_t result, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  if (a6 > 1)
  {
    if (a6 != 2)
    {
      if (a6 != 3)
      {
        return result;
      }

      v8 = result + (~a2 + a5) * a8;
      v9 = ~a3;
      return v8 + (v9 + a4) * a7;
    }

    result += a8 * a2 + a7 * a3;
  }

  else
  {
    if (a6)
    {
      if (a6 != 1)
      {
        return result;
      }

      v8 = result + a8 * a3;
      v9 = ~a2;
      return v8 + (v9 + a4) * a7;
    }

    result += (~a3 + a5) * a8 + a7 * a2;
  }

  return result;
}

uint64_t sub_35ACC(uint64_t result, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  if (a6 > 1)
  {
    if (a6 == 2)
    {
      v8 = result + 4 * a8 * a2;
      v10 = a7 * a3;
      return v8 + 4 * v10;
    }

    if (a6 != 3)
    {
      return result;
    }

    v8 = result + 4 * (~a2 + a5) * a8;
    v9 = ~a3;
  }

  else
  {
    if (!a6)
    {
      result += 4 * (a7 * a2 + (~a3 + a5) * a8);
      return result;
    }

    if (a6 != 1)
    {
      return result;
    }

    v8 = result + 4 * a8 * a3;
    v9 = ~a2;
  }

  v10 = (v9 + a4) * a7;
  return v8 + 4 * v10;
}

uint64_t sub_35B4C(uint64_t result, int a2, int a3, int a4, int a5, int a6, int a7)
{
  v7 = a7 * a4;
  if (a6 > 1)
  {
    if (a6 == 2)
    {
      v8 = result + 4 * v7 * a2;
      v10 = a7 * a3;
      return v8 + 4 * v10;
    }

    if (a6 != 3)
    {
      return result;
    }

    v8 = result + 4 * v7 * (~a2 + a5);
    v9 = ~a3;
  }

  else
  {
    if (!a6)
    {
      v8 = result + 4 * v7 * (~a3 + a5);
      v10 = a7 * a2;
      return v8 + 4 * v10;
    }

    if (a6 != 1)
    {
      return result;
    }

    v8 = result + 4 * v7 * a3;
    v9 = ~a2;
  }

  v10 = (v9 + a4) * a7;
  return v8 + 4 * v10;
}

float64x2_t *sub_35C44(float64x2_t *result)
{
  v1 = *result;
  v2 = vmulq_f64(v1, v1);
  v3 = result[1].f64[0];
  v4 = sqrt(v2.f64[1] + v1.f64[0] * v1.f64[0] + v3 * v3);
  if (v4 == 0.0)
  {
    v5 = 0uLL;
    v6 = 0.0;
  }

  else
  {
    v5 = vdivq_f64(v1, vdupq_lane_s64(*&v4, 0));
    v6 = v3 / v4;
  }

  *result = v5;
  result[1].f64[0] = v6;
  return result;
}

uint64_t sub_35C8C(uint64_t a1, int a2)
{
  v2 = 0;
  v68 = xmmword_55480;
  *v69 = unk_55490;
  *&v69[16] = xmmword_554A0;
  *&v65[16] = xmmword_55440;
  v66 = unk_55450;
  *v67 = xmmword_55460;
  *&v67[16] = unk_55470;
  v64 = xmmword_55420;
  *v65 = unk_55430;
  v3 = vdupq_n_s64(0x3FE6A09E667F3BCCuLL);
  do
  {
    *&v65[v2 - 16] = vmulq_f64(*&v65[v2 - 16], v3);
    v2 += 24;
  }

  while (v2 != 144);
  v4 = v64;
  v5 = v64;
  *a1 = v64;
  *(a1 + 24) = *&v67[8];
  v6 = v68;
  v7 = v68;
  *(a1 + 48) = v68;
  *(a1 + 128) = v4;
  *(a1 + 152) = v6;
  v8 = *&v69[8];
  *(a1 + 176) = *&v69[8];
  *(a1 + 280) = v8;
  v9 = v66;
  *(a1 + 304) = v66;
  *(a1 + 408) = v9;
  *(a1 + 536) = v7;
  *(a1 + 664) = *&v69[8];
  v10 = v66;
  *(a1 + 792) = v66;
  v11 = *v65;
  v12 = *v65;
  *(a1 + 16) = *v65;
  v13 = *&v67[24];
  *(a1 + 40) = *&v67[24];
  v14 = *v69;
  v15 = *v69;
  *(a1 + 64) = *v69;
  *(a1 + 144) = v11;
  *(a1 + 168) = v14;
  v16 = *&v69[24];
  v17 = *&v69[24];
  *(a1 + 192) = *&v69[24];
  *(a1 + 296) = v16;
  v18 = *v67;
  *(a1 + 320) = *v67;
  *(a1 + 272) = v12;
  *(a1 + 400) = v12;
  *(a1 + 424) = v18;
  *(a1 + 448) = v13;
  v19 = *&v65[24];
  *(a1 + 528) = *&v65[24];
  *(a1 + 552) = v15;
  v20 = *&v67[24];
  *(a1 + 576) = *&v67[24];
  *(a1 + 656) = v19;
  *(a1 + 680) = v17;
  *(a1 + 704) = *v69;
  v21 = *&v65[24];
  *(a1 + 784) = *&v65[24];
  v22 = *v67;
  *(a1 + 808) = *v67;
  *(a1 + 832) = *&v69[24];
  *(a1 + 120) = 0xC08F400000000000;
  *(a1 + 248) = 0xC08F400000000000;
  *(a1 + 256) = v5;
  *(a1 + 376) = 0xC08F400000000000;
  *(a1 + 384) = v5;
  *(a1 + 432) = *&v67[8];
  *(a1 + 504) = 0xC08F400000000000;
  *(a1 + 512) = *&v65[8];
  *(a1 + 560) = *&v67[8];
  *(a1 + 632) = 0xC08F400000000000;
  *(a1 + 640) = *&v65[8];
  *(a1 + 688) = v68;
  *(a1 + 760) = 0xC08F400000000000;
  *(a1 + 768) = *&v65[8];
  *(a1 + 816) = *&v69[8];
  *(a1 + 888) = 0xC08F400000000000;
  v23 = *&v65[8];
  *(a1 + 912) = v21;
  *(a1 + 896) = v23;
  v24 = *&v67[8];
  *(a1 + 936) = v20;
  *(a1 + 920) = v24;
  *(a1 + 960) = v22;
  *(a1 + 944) = v10;
  *(a1 + 1016) = 0xC08F400000000000;
  if (a2 < 1)
  {
    return 8;
  }

  v25 = 0;
  v26 = (a1 + 32);
  v27 = a1 + 192;
  result = 8;
  do
  {
    if (result >= 1)
    {
      v29 = result;
      v30 = v27 + (result << 7);
      result = (4 * result);
      v31 = v26;
      do
      {
        v32 = *(v31 - 4);
        v33 = *(v31 - 1);
        v34 = (v32 + v33) * 0.5;
        v35 = *(v31 - 3);
        v36 = *(v31 - 2);
        v37 = v31[1];
        v38 = (v35 + *v31) * 0.5;
        v39 = (v36 + v37) * 0.5;
        v40 = sqrt(v38 * v38 + v34 * v34 + v39 * v39);
        v41 = 0.0;
        v42 = 0.0;
        v43 = 0.0;
        v44 = 0.0;
        if (v40 != 0.0)
        {
          v42 = v34 / v40;
          v43 = v38 / v40;
          v44 = v39 / v40;
        }

        v45 = v31[2];
        v46 = (v33 + v45) * 0.5;
        v47 = v31[3];
        v48 = v31[4];
        v49 = (*v31 + v47) * 0.5;
        v50 = (v37 + v48) * 0.5;
        v51 = sqrt(v49 * v49 + v46 * v46 + v50 * v50);
        v52 = 0.0;
        v53 = 0.0;
        if (v51 != 0.0)
        {
          v41 = v46 / v51;
          v52 = v49 / v51;
          v53 = v50 / v51;
        }

        v54 = (v32 + v45) * 0.5;
        v55 = (v35 + v47) * 0.5;
        v56 = (v36 + v48) * 0.5;
        v57 = sqrt(v55 * v55 + v54 * v54 + v56 * v56);
        if (v57 == 0.0)
        {
          v58 = 0.0;
          v59 = 0.0;
          v60 = 0.0;
        }

        else
        {
          v58 = v54 / v57;
          v59 = v55 / v57;
          v60 = v56 / v57;
        }

        v61 = *(v31 - 2);
        *(v30 - 176) = *(v31 - 2);
        *(v30 - 192) = v61;
        *(v30 - 168) = v42;
        *(v30 - 160) = v43;
        *(v30 - 152) = v44;
        *(v30 - 144) = v58;
        *(v30 - 136) = v59;
        *(v30 - 128) = v60;
        *(v30 - 72) = 0xC08F400000000000;
        *(v30 - 64) = v42;
        *(v30 - 56) = v43;
        *(v30 - 48) = v44;
        v62 = *(v31 - 1);
        *(v30 - 24) = v31[1];
        *(v30 - 40) = v62;
        *(v30 - 16) = v41;
        *(v30 - 8) = v52;
        *v30 = v53;
        *(v30 + 56) = 0xC08F400000000000;
        *(v30 + 64) = v41;
        *(v30 + 72) = v52;
        *(v30 + 80) = v53;
        v63 = *(v31 + 1);
        *(v30 + 104) = v31[4];
        *(v30 + 88) = v63;
        *(v30 + 112) = v58;
        *(v30 + 120) = v59;
        *(v30 + 128) = v60;
        *(v30 + 184) = 0xC08F400000000000;
        *(v31 - 4) = v42;
        *(v31 - 3) = v43;
        *(v31 - 2) = v44;
        *(v31 - 1) = v41;
        *v31 = v52;
        v31[1] = v53;
        v31[2] = v58;
        v31[3] = v59;
        v31[4] = v60;
        v31 += 16;
        v30 += 384;
        --v29;
      }

      while (v29);
    }

    ++v25;
  }

  while (v25 != a2);
  return result;
}

uint64_t sub_360AC(uint64_t result, int a2)
{
  if (a2 >= 1)
  {
    v2 = result;
    v3 = 0;
    v4 = a2;
    v5 = (result + 16);
    do
    {
      printf("Thickness[.0015], Line[{");
      v6 = 3;
      v7 = v5;
      do
      {
        v8 = *(v7 - 1);
        v9 = *v7;
        v7 += 3;
        printf("{%f, %f, %f}, ", *&v8, *(&v8 + 1), v9);
        --v6;
      }

      while (v6);
      printf("{%f, %f, %f} ", *(v2 + (v3 << 7)), *(v2 + (v3 << 7) + 8), *(v2 + (v3 << 7) + 16));
      printf(" }], ");
      ++v3;
      v5 += 16;
    }

    while (v3 != v4);
    v10 = 0;
    v11 = (v2 + 32);
    do
    {
      result = printf(" Text[%d, {%f,%f,%f}],", v10++, (*(v11 - 4) + *(v11 - 1) + v11[2]) / 3.0, (*(v11 - 3) + *v11 + v11[3]) / 3.0, (*(v11 - 2) + v11[1] + v11[4]) / 3.0);
      v11 += 16;
    }

    while (v4 != v10);
  }

  return result;
}

uint64_t sub_36204(uint64_t a1, int a2, float a3, float a4)
{
  LODWORD(v6) = a2;
  puts("\n");
  if (v6 >= 1)
  {
    v8 = a4;
    v9 = a3;
    v6 = v6;
    v10 = (a1 + 112);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      v10 += 16;
      printf("PointSize[%4.2f], Hue[%3.2f], Point[{%f, %f, %f}],", v8, v9, *&v11, *(&v11 + 1), v12);
      --v6;
    }

    while (v6);
  }

  return puts("\n");
}

float sub_362B0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 >= 1)
  {
    v3 = a2;
    v4 = (a3 + 8);
    v5 = (a1 + 112);
    do
    {
      *(v4 - 1) = vcvt_f32_f64(*(v5 - 2));
      v6 = *v5;
      v5 += 16;
      result = v6;
      *v4 = result;
      v4 += 3;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_362E8(uint64_t result, int a2)
{
  if (a2 >= 1)
  {
    v2 = a2;
    v3 = (result + 48);
    do
    {
      v4 = *(v3 - 6);
      v5 = *(v3 - 5);
      v6 = *(v3 - 4);
      v7 = *(v3 - 3) - v4;
      v8 = *v3 - v4;
      v9 = *(v3 - 2) - v5;
      v10 = v3[1] - v5;
      v11 = *(v3 - 1) - v6;
      v12 = v3[2] - v6;
      v13 = v9 * v12 - v10 * v11;
      v14 = v8 * v11 - v7 * v12;
      v15 = v7 * v10 - v8 * v9;
      v16 = 1.0 / sqrt(v14 * v14 + v13 * v13 + v15 * v15);
      v3[3] = v13 * v16;
      v3[4] = v14 * v16;
      v3[5] = v15 * v16;
      v3 += 16;
      --v2;
    }

    while (v2);
  }

  return result;
}

double sub_36378(uint64_t a1, int a2)
{
  if (a2 < 1)
  {
    v6 = 0.0;
  }

  else
  {
    v2 = a2;
    v3 = (a1 + 112);
    v4 = 0.0;
    v5 = 0.0;
    v6 = 0.0;
    do
    {
      v6 = v6 + *(v3 - 2);
      v5 = v5 + *(v3 - 1);
      v7 = *v3;
      v3 += 16;
      v4 = v4 + v7;
      --v2;
    }

    while (v2);
  }

  return v6 / a2;
}

uint64_t sub_363D4(uint64_t result, int a2, double a3, double a4, double a5)
{
  if (a2 >= 1)
  {
    v5 = a2;
    v6 = (result + 120);
    do
    {
      v7 = a4 * *(v6 - 5) + *(v6 - 6) * a3 + *(v6 - 4) * a5;
      if (*v6 == -1000.0 || v7 > *v6)
      {
        *(v6 - 3) = a3;
        *(v6 - 2) = a4;
        *(v6 - 1) = a5;
        *v6 = v7;
      }

      v6 += 16;
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_3642C(uint64_t a1, int a2)
{
  v4 = sub_36378(a1, a2);
  if (a2 >= 1)
  {
    v7 = v4;
    v8 = v5;
    v9 = v6;
    v10 = a2;
    v11 = (a1 + 112);
    do
    {
      v12 = *(v11 - 2);
      v13 = *(v11 - 1);
      v14 = *v11;
      v11 += 16;
      sub_363D4(a1, a2, v7 + v12 - v7, v8 + v13 - v8, v9 + v14 - v9);
      --v10;
    }

    while (v10);
  }
}

double sub_364BC(uint64_t a1, int a2, double result)
{
  if (a2 >= 1)
  {
    result = *&result;
    v3 = a2;
    v4 = vdupq_lane_s64(*&result, 0);
    v5 = (a1 + 120);
    do
    {
      v6 = *v5 + result;
      v7 = *(v5 - 1) + *(v5 - 4) * result;
      *(v5 - 3) = vmlaq_f64(*(v5 - 3), v4, *(v5 - 6));
      *(v5 - 1) = v7;
      *v5 = v6;
      v5 += 16;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_36508(uint64_t result, int a2, float a3)
{
  if (a2 >= 1)
  {
    v3 = a3;
    v4 = a2;
    v5 = (result + 120);
    do
    {
      *v5 = *v5 + v3;
      v5 += 16;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_36534(uint64_t result, int a2, float a3)
{
  if (a2 >= 1)
  {
    v3 = a3;
    v4 = a2;
    v5 = (result + 120);
    do
    {
      *v5 = *v5 - v3;
      v5 += 16;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_36560(uint64_t a1, int a2, double a3, double a4, double a5)
{
  if (a2 < 1)
  {
    return 1;
  }

  v5 = a2;
  for (i = (a1 + 72); a4 * i[1] + *i * a3 + i[2] * a5 < i[6]; i += 16)
  {
    if (!--v5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_365AC(uint64_t a1, int a2)
{
  putchar(123);
  v4 = (a1 + 128 * a2 + 16);
  v5 = 4;
  do
  {
    v6 = *(v4 - 1);
    v7 = *v4;
    v4 += 3;
    printf("{%f, %f, %f},", *&v6, *(&v6 + 1), v7);
    --v5;
  }

  while (v5);

  return puts(" } ");
}

uint64_t sub_36638(uint64_t a1, int a2)
{
  putchar(123);
  v4 = (a1 + 128 * a2 + 16);
  v5 = 3;
  do
  {
    v6 = *(v4 - 1);
    v7 = *v4;
    v4 += 3;
    printf("{%f, %f, %f},", *&v6, *(&v6 + 1), v7);
    --v5;
  }

  while (v5);

  return puts(" } ");
}

uint64_t sub_366C4(unsigned int a1)
{
  for (i = 7; i != -1; --i)
  {
    putchar((a1 >> i) & 1 | 0x30);
  }

  return putchar(32);
}

float sub_36718(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v3 = 0;
  v6 = xmmword_55270;
  v7 = a2;
  v8 = -a2;
  v9 = a2 + 1;
  v10 = 1 - a2;
  v11 = ~a2;
  v12 = a2 - 1;
  v4 = 0.0;
  do
  {
    if ((*(a1 + *(&v6 + v3)) & a3) != 0)
    {
      v4 = v4 + 1.0;
    }

    v3 += 8;
  }

  while (v3 != 64);
  return v4 * 0.125;
}

double sub_367FC(uint64_t a1, uint64_t a2, float *a3, uint64_t a4, int a5, int a6)
{
  if (a5 < 1)
  {
    return 0.0;
  }

  v6 = a5;
  v7 = (a4 + 4);
  result = 0.0;
  do
  {
    *&result = *&result + ((*(a2 + 4 * *v7 * a6 + 4 * *(v7 - 1)) * a3[1]) + (*(a1 + 4 * *v7 * a6 + 4 * *(v7 - 1)) * *a3));
    v7 += 2;
    --v6;
  }

  while (v6);
  return result;
}

void sub_38CD4(id a1)
{
  v1 = [CIColorKernel PFKernelWithString:@"kernel vec4 _pf_imToIPT(__sample im) \n { \n vec3 lms = im.r * vec3(0.3139902162, 0.15537240628, 0.01775238698) + \n im.g * vec3(0.63951293834, 0.75789446163, 0.1094420944) + \n im.b * vec3(0.04649754622, 0.08670141862, 0.87256922462); \n lms = sign(lms)*pow(abs(lms), vec3(0.43)); \n vec3 ipt = lms.r * vec3(0.4, 4.455, 0.8056) + \n lms.g * vec3(0.4, -4.851, 0.3572) + \n lms.b * vec3(0.2, 0.396, -1.1628); \n return vec4(ipt, im.a); \n } \n"];
  qword_8CEE0 = v1;

  [v1 setPerservesAlpha:1];
}

void sub_393B8(id a1)
{
  v1 = CFPreferencesCopyAppValue(@"semdev_debug_overlay", @"com.apple.coremedia");
  if (!v1)
  {
    return;
  }

  v2 = v1;
  v3 = CFGetTypeID(v1);
  if (v3 == CFStringGetTypeID())
  {
    IntValue = CFStringGetIntValue(v2);
    if (!IntValue)
    {
      IntValue = 1;
      if (CFStringCompare(v2, @"true", 1uLL))
      {
        IntValue = 1;
        if (CFStringCompare(v2, @"yes", 1uLL))
        {
          if (CFStringCompare(v2, @"false", 1uLL) && CFStringCompare(v2, @"no", 1uLL))
          {
            CFStringCompare(v2, @"0", 1uLL);
          }

          goto LABEL_15;
        }
      }
    }
  }

  else
  {
    v5 = CFGetTypeID(v2);
    if (v5 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      if (CFNumberGetValue(v2, kCFNumberIntType, &valuePtr))
      {
        IntValue = valuePtr;
      }

      else
      {
        IntValue = 0;
      }
    }

    else
    {
      v6 = CFGetTypeID(v2);
      if (v6 != CFBooleanGetTypeID())
      {
LABEL_15:
        IntValue = 0;
        goto LABEL_16;
      }

      IntValue = CFEqual(v2, kCFBooleanTrue);
    }
  }

LABEL_16:
  v7 = IntValue & ~(IntValue >> 31);
  if (v7 >= 2)
  {
    v7 = 2;
  }

  dword_8C850 = v7;
  CFRelease(v2);
}

void sub_3BA74(id a1)
{
  v1 = [CIColorKernel PFKernelWithString:@"kernel vec4 _pf_highKey(__sample im, float str) \n { \n vec3 neg = min(im.rgb, 0.0); \n vec3 pos = max(im.rgb, 1.0) - 1.0; \n im = clamp(im, 0.0, 1.0); \n vec4 im2 = 1.0-((im-1.0)*(im-1.0)); \n im2 = sqrt(im2); \n float y = dot(im.rgb, vec3(.333333)); \n float y2 = sqrt(1.0-(y-1.0)*(y-1.0)); \n y2 = mix(y2, smoothstep(0.0, 1.0, y2), 0.5); \n vec4 im3 = (y>0) ? im*y2/y : vec4(0.0, 0.0, 0.0, 1.0) ; \n im3 = mix(im3, im2, .7*sqrt(y2)); \n im3 = mix(im, im3, sqrt(y)) ; \n im.rgb = mix(im.rgb, im3.rgb, str) + pos + neg; \n return im; } \n"];
  qword_8CF38 = v1;

  [v1 setPerservesAlpha:1];
}

id sub_3BBD8(void *a1, uint64_t a2, double a3)
{
  [a1 encodeDouble:+[NSString stringWithFormat:](NSString forKey:{"stringWithFormat:", @"%@.%@", a2, @"suffix", a3}];
  v6 = [NSString stringWithFormat:@"%@.%@", a2, @"suffix"];

  return [a1 encodeDouble:v6 forKey:a3];
}

id sub_3BC80(void *a1, uint64_t a2, double a3, double a4)
{
  [a1 encodeDouble:+[NSString stringWithFormat:](NSString forKey:{"stringWithFormat:", @"%@.%@", a2, @"suffix", a3}];
  v7 = [NSString stringWithFormat:@"%@.%@", a2, @"suffix"];

  return [a1 encodeDouble:v7 forKey:a4];
}

id sub_3BD2C(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  [a1 encodeDouble:+[NSString stringWithFormat:](NSString forKey:{"stringWithFormat:", @"%@.%@", a2, @"suffix", a3}];
  [a1 encodeDouble:+[NSString stringWithFormat:](NSString forKey:{"stringWithFormat:", @"%@.%@", a2, @"suffix", a4}];
  [a1 encodeDouble:+[NSString stringWithFormat:](NSString forKey:{"stringWithFormat:", @"%@.%@", a2, @"suffix", a5}];
  v11 = [NSString stringWithFormat:@"%@.%@", a2, @"suffix"];

  return [a1 encodeDouble:v11 forKey:a6];
}

id sub_3BE28(void *a1, double *a2, uint64_t a3)
{
  [a1 encodeDouble:+[NSString stringWithFormat:](NSString forKey:{"stringWithFormat:", @"%@.%@", a3, @"suffix", *a2}];
  [a1 encodeDouble:+[NSString stringWithFormat:](NSString forKey:{"stringWithFormat:", @"%@.%@", a3, @"suffix", a2[1]}];
  [a1 encodeDouble:+[NSString stringWithFormat:](NSString forKey:{"stringWithFormat:", @"%@.%@", a3, @"suffix", a2[2]}];
  [a1 encodeDouble:+[NSString stringWithFormat:](NSString forKey:{"stringWithFormat:", @"%@.%@", a3, @"suffix", a2[3]}];
  [a1 encodeDouble:+[NSString stringWithFormat:](NSString forKey:{"stringWithFormat:", @"%@.%@", a3, @"suffix", a2[4]}];
  v6 = a2[5];
  v7 = [NSString stringWithFormat:@"%@.%@", a3, @"suffix"];

  return [a1 encodeDouble:v7 forKey:v6];
}

double sub_3BF68(void *a1, uint64_t a2)
{
  [a1 decodeDoubleForKey:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@.%@", a2, @"suffix"}];
  v5 = v4;
  [a1 decodeDoubleForKey:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@.%@", a2, @"suffix"}];
  return v5;
}

double sub_3C004(void *a1, uint64_t a2)
{
  [a1 decodeDoubleForKey:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@.%@", a2, @"suffix"}];
  v5 = v4;
  [a1 decodeDoubleForKey:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@.%@", a2, @"suffix"}];
  [a1 decodeDoubleForKey:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@.%@", a2, @"suffix"}];
  [a1 decodeDoubleForKey:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@.%@", a2, @"suffix"}];
  return v5;
}

id sub_3C0F0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  [a1 decodeDoubleForKey:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@.%@", a2, @"suffix"}];
  *a3 = v6;
  [a1 decodeDoubleForKey:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@.%@", a2, @"suffix"}];
  a3[1] = v7;
  [a1 decodeDoubleForKey:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@.%@", a2, @"suffix"}];
  a3[2] = v8;
  [a1 decodeDoubleForKey:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@.%@", a2, @"suffix"}];
  a3[3] = v9;
  [a1 decodeDoubleForKey:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@.%@", a2, @"suffix"}];
  a3[4] = v10;
  result = [a1 decodeDoubleForKey:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@.%@", a2, @"suffix"}];
  a3[5] = v12;
  return result;
}

NSValue *sub_3C204(double a1, double a2)
{
  *v3 = a1;
  *&v3[1] = a2;
  return [NSValue valueWithBytes:v3 objCType:"{CGPoint=dd}"];
}

NSValue *sub_3C23C(double a1, double a2)
{
  *v3 = a1;
  *&v3[1] = a2;
  return [NSValue valueWithBytes:v3 objCType:"{CGSize=dd}"];
}

NSValue *sub_3C274(double a1, double a2, double a3, double a4)
{
  *v5 = a1;
  *&v5[1] = a2;
  *&v5[2] = a3;
  *&v5[3] = a4;
  return [NSValue valueWithBytes:v5 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
}

double sub_3C2C8(void *a1)
{
  v2[0] = 0;
  v2[1] = 0;
  [a1 getValue:v2];
  return *v2;
}

double sub_3C2F4(void *a1)
{
  memset(v2, 0, sizeof(v2));
  [a1 getValue:v2];
  return *v2;
}

id sub_3C328@<X0>(void *a1@<X0>, _OWORD *x8_0@<X8>)
{
  x8_0[1] = 0u;
  x8_0[2] = 0u;
  *x8_0 = 0u;
  return [a1 getValue:x8_0];
}

id sub_3C354(uint64_t a1, uint64_t a2)
{
  v15 = objc_opt_self();
  v2 = objc_opt_self();
  v3 = objc_opt_self();
  v4 = objc_opt_self();
  v5 = objc_opt_self();
  v6 = objc_opt_self();
  v7 = objc_opt_self();
  v8 = objc_opt_self();
  v9 = objc_opt_self();
  v10 = objc_opt_self();
  v11 = objc_opt_self();
  v12 = [NSSet setWithObjects:v15, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, objc_opt_self(), a1, 0];

  return [NSKeyedUnarchiver unarchivedObjectOfClasses:v12 fromData:a2 error:0];
}

vImage_Error sub_3CC2C(void *a1)
{
  [a1 extent];
  result = CGRectIsInfinite(v23);
  if ((result & 1) == 0)
  {
    [a1 extent];
    x = v24.origin.x;
    y = v24.origin.y;
    width = v24.size.width;
    height = v24.size.height;
    result = CGRectIsInfinite(v24);
    if ((result & 1) == 0)
    {
      v7 = [a1 imageByClampingToExtent];
      v21 = kCIInputExtentKey;
      v22 = [CIVector vectorWithCGRect:x, y, width, height];
      v8 = [objc_msgSend(v7 imageByApplyingFilter:@"CIAreaMinMaxRed" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v22, &v21, 1)), "imageByCroppingToRect:", 0.0, 0.0, 1.0, 1.0}];
      v18 = kCIContextWorkingFormat;
      v9 = kCIFormatRGBAh;
      v19 = [NSNumber numberWithInt:kCIFormatRGBAh];
      v10 = [CIContext contextWithOptions:[NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1]];
      v17 = 0;
      [v8 extent];
      [(CIContext *)v10 render:v8 toBitmap:&v17 rowBytes:8 bounds:v9 format:[(CIContext *)v10 workingColorSpace] colorSpace:v11, v12, v13, v14];
      *&src.height = xmmword_54CB0;
      src.rowBytes = 8;
      v15.data = &v20;
      *&v15.height = xmmword_54CB0;
      v15.rowBytes = 16;
      src.data = &v17;
      return vImageConvert_Planar16FtoPlanarF(&src, &v15, 0);
    }
  }

  return result;
}

id sub_3CE34(void *a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  memset(&v17, 0, sizeof(v17));
  [a1 extent];
  v13 = v12;
  [a1 extent];
  CGAffineTransformMakeScale(&v17, v13, v14);
  v16 = v17;
  v18.origin.x = a3;
  v18.origin.y = a4;
  v18.size.width = a5;
  v18.size.height = a6;
  v19 = CGRectApplyAffineTransform(v18, &v16);
  return [objc_msgSend(a1 imageByCroppingToRect:{v19.origin.x, v19.origin.y, v19.size.width, v19.size.height), "writeToTIFF:", a2}];
}

void sub_3F1D8(id a1)
{
  v1 = getenv("CI_USE_OLD_FACE_MASK");
  if (v1)
  {
    v2 = atoi(v1);
  }

  else
  {
    v2 = byte_8C878;
  }

  byte_8C878 = v2 != 0;
}

void sub_43A3C(id a1)
{
  v1 = [CIColorKernel PFKernelWithString:@"kernel vec4 _pf_applyVignette(__sample im, __sample vig, float amt) \n { \n vec3 pos = max(im.rgb, 1.0)-1.0; \n im.rgb = clamp(im.rgb, 0.0, 1.0); \n im.rgb = mix(im.rgb, im.rgb*(vig.rgb), amt); \n im.rgb = mix(im.rgb, im.rgb*im.rgb, (1.0-vig.rgb)*.3); \n return im; \n }"];
  qword_8D0C0 = v1;

  [v1 setPerservesAlpha:1];
}

id sub_4430C(void *a1)
{
  v2 = [[LightingFacePoints alloc] initWithFaceLandmarkDictionary:a1 forImageRect:0.0, 0.0, 1.0, 1.0];
  [(LightingFacePoints *)v2 faceRect];

  if ([a1 objectForKeyedSubscript:@"faceJunkinessIndex"])
  {
    [objc_msgSend(a1 objectForKeyedSubscript:{@"faceJunkinessIndex", "floatValue"}];
  }

  if ([a1 objectForKeyedSubscript:@"faceBoundingBox"])
  {
    [objc_msgSend(objc_msgSend(a1 objectForKeyedSubscript:{@"faceBoundingBox", "objectForKeyedSubscript:", @"w", "floatValue"}];
  }

  result = [a1 objectForKeyedSubscript:@"roll"];
  if (result)
  {
    return [objc_msgSend(a1 objectForKeyedSubscript:{@"roll", "floatValue"}];
  }

  return result;
}

float sub_44480(void *a1)
{
  v1 = [a1 depthData];
  v2 = 1.6369;
  if (v1)
  {
    v3 = [v1 cameraCalibrationData];
    if (v3)
    {
      v4 = v3;
      [v3 intrinsicMatrix];
      v8 = v5;
      [v4 intrinsicMatrixReferenceDimensions];
      if (v6 > 0.0)
      {
        return v8 / v6;
      }
    }
  }

  return v2;
}

void sub_47704(id a1)
{
  v1 = getenv("CI_GPU_OFFSET_CALCULATOR");
  if (v1)
  {
    v2 = atoi(v1);
  }

  else
  {
    v2 = byte_8C879;
  }

  byte_8C879 = v2 != 0;
}

void sub_4774C(id a1)
{
  v1 = getenv("CI_OVERRIDE_MAX_NUM_VERTICES");
  if (v1)
  {
    v2 = atoi(v1);
  }

  else
  {
    v2 = byte_8C87A;
  }

  byte_8C87A = v2 != 0;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  v3 = ___sincos_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  v3 = ___sincosf_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}