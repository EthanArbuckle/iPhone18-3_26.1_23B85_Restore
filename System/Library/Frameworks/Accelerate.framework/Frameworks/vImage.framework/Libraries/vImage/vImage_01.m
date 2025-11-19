void DoTRC_HLG_OETF(float *a1, uint64_t *a2, uint64_t *a3, double a4, double a5, int8x16_t a6, double a7, int8x16_t a8)
{
  v8 = a3[1];
  if (v8)
  {
    v9 = a3[2];
    if (v9)
    {
      v10 = 0;
      v12 = a1[10];
      v11 = a1[11];
      v14 = a1[12];
      v13 = a1[13];
      v15 = a1[5];
      v16 = a1[6];
      v17 = a2[3];
      v18 = a3[3];
      v28 = a1[2];
      v19 = *a2;
      v20 = *a3;
      a6.i32[0] = 1.0;
      v21.i64[0] = 0x8000000080000000;
      v21.i64[1] = 0x8000000080000000;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          v23 = *(v19 + 4 * i);
          *a8.i32 = v12;
          if (v23 >= v12)
          {
            a8.i32[0] = *(v19 + 4 * i);
            if (v23 > v11)
            {
              *a8.i32 = v11;
            }
          }

          v24 = fabsf(v16 * *a8.i32);
          if (v24 <= v15)
          {
            v26 = *vbslq_s8(v21, a6, a8).i32 * sqrtf(v24 * 3.0);
            v27 = v14;
            if (v26 < v14)
            {
              goto LABEL_6;
            }
          }

          else
          {
            v29 = a8;
            v25 = log1pf((v24 * ((0.25 / v28) * 12.0)) - (0.25 / v28));
            a8 = v29;
            v21.i64[0] = 0x8000000080000000;
            v21.i64[1] = 0x8000000080000000;
            a6.i32[0] = 1.0;
            v26 = *vbslq_s8(v21, a6, v29).i32 * ((v28 * v25) + 0.5);
            v27 = v14;
            if (v26 < v14)
            {
              goto LABEL_6;
            }
          }

          v27 = v26;
          if (v26 > v13)
          {
            v27 = v13;
          }

LABEL_6:
          *(v20 + 4 * i) = v27;
        }

        v19 += v17;
        v20 += v18;
        ++v10;
      }

      while (v10 != v8);
    }
  }
}

void DoTRCParametricInv709_1886_EOTF(uint64_t a1, char **a2, char **a3, double a4, double a5, int8x16_t a6)
{
  v8 = *a2;
  v9 = a2[3];
  v10 = *a3;
  v11 = a3[3];
  if (*(a1 + 36) == 7 && (*(a1 + 56) & 6) == 0)
  {
    if (a3[1])
    {
      v31 = 0;
      do
      {
        memcpy(v10, v8, 4 * a3[2]);
        v8 = &v9[v8];
        v10 = &v11[v10];
        ++v31;
      }

      while (v31 < a3[1]);
    }
  }

  else
  {
    v12 = a3[1];
    if (v12)
    {
      v13 = a3[2];
      if (v13)
      {
        v14 = 0;
        v15 = *(a1 + 12);
        v16 = *(a1 + 16);
        v17 = *(a1 + 20);
        v18 = *(a1 + 24);
        v19 = *(a1 + 28);
        v20 = *(a1 + 4);
        v21 = *(a1 + 8);
        v22 = *(a1 + 56);
        do
        {
          for (i = 0; i != v13; ++i)
          {
            a6.i32[0] = *(a1 + 40);
            v24 = *&v8[4 * i];
            if (v24 >= *a6.i32)
            {
              a6.i32[0] = *&v8[4 * i];
              if (v24 > *(a1 + 44))
              {
                a6.i32[0] = *(a1 + 44);
              }
            }

            v25 = fabsf(*a6.i32);
            v32 = a6;
            if ((v22 & 1) == 0)
            {
              v25 = *a6.i32;
            }

            if (v25 >= v17)
            {
              v26 = v18 + powf(v15 + (v25 * v21), v20);
            }

            else
            {
              v26 = v16 * v25;
            }

            v27 = powf(v26, v19);
            v28.i32[0] = 1.0;
            a6.i64[0] = 0x8000000080000000;
            a6.i64[1] = 0x8000000080000000;
            v29 = *vbslq_s8(a6, v28, v32).i32 * v27;
            if ((v22 & 1) == 0)
            {
              v29 = v27;
            }

            v30 = *(a1 + 48);
            if (v29 >= v30)
            {
              v30 = v29;
              if (v29 > *(a1 + 52))
              {
                v30 = *(a1 + 52);
              }
            }

            *&v10[4 * i] = v30;
          }

          v8 = &v9[v8];
          v10 = &v11[v10];
          ++v14;
        }

        while (v14 != v12);
      }
    }
  }
}

char *Print_Parameter(uint64_t a1, char *__str, size_t *a3)
{
  if (*(a1 + 35))
  {
    v6 = "YES";
  }

  else
  {
    v6 = "NO";
  }

  v7 = snprintf(__str, *a3, "\t\t%s color space transform:\n\t\t\tinputs:  %u\n\t\t\toutputs: %u\n\t\t\tcrossChan:%s\n\t\t\tsrcMask: 0x%4.4hx\n\t\t\tdstMask: 0x%4.4hx\n", (*a1 + 4), *(a1 + 32), *(a1 + 33), v6, *(a1 + 38), *(a1 + 40));
  v8 = *a3;
  if (*a3 < v7)
  {
    v7 = *a3;
  }

  *a3 = v8 - v7;
  v9 = &__str[v7];
  v10 = *(a1 + 38);
  v11 = snprintf(v9, v8 - v7, "\t\t\tchannelMask: 0x%4.4x\n", *(a1 + 38));
  v12 = *a3;
  if (*a3 < v11)
  {
    v11 = *a3;
  }

  v13 = v12 - v11;
  *a3 = v12 - v11;
  v14 = &v9[v11];
  if (v10)
  {
    v15 = 0;
    v16 = (a1 + 86);
    do
    {
      if (!v13)
      {
        break;
      }

      if (v10)
      {
        if (*(v16 - 2))
        {
          v18 = "YES";
        }

        else
        {
          v18 = "NO";
        }

        if (*(v16 - 1))
        {
          v19 = "YES";
        }

        else
        {
          v19 = "NO";
        }

        if (*v16)
        {
          v20 = "YES";
        }

        else
        {
          v20 = "NO";
        }

        v21 = snprintf(v14, v13, "\t\t\tchannel %2u:\tresult = x >= %a ?  gamma( %a * x + %a, %a) : %a * x + %a  [%a, %a]\n\t\t\t\t\t\tsymmetric: %s; extended range: %s; clamp: %s\n", v15, *(v16 - 14), *(v16 - 38), *(v16 - 34), *(v16 - 26), *(v16 - 22), *(v16 - 18), *(v16 - 10), *(v16 - 6), v18, v19, v20);
        v22 = *a3;
        if (*a3 < v21)
        {
          v21 = *a3;
        }

        v14 += v21;
        v13 = v22 - v21;
        *a3 = v22 - v21;
      }

      v16 += 40;
      ++v15;
      v17 = v10 > 1;
      LODWORD(v10) = v10 >> 1;
    }

    while (v17);
  }

  return v14;
}

char *PrintTRCStep(uint64_t a1, char *__str, size_t *a3)
{
  if (*(a1 + 35))
  {
    v6 = "YES";
  }

  else
  {
    v6 = "NO";
  }

  v7 = snprintf(__str, *a3, "\t\t%s color space transform:\n\t\t\tinputs:  %u\n\t\t\toutputs: %u\n\t\t\tcrossChan:%s\n\t\t\tsrcMask: 0x%4.4hx\n\t\t\tdstMask: 0x%4.4hx\n", (*a1 + 4), *(a1 + 32), *(a1 + 33), v6, *(a1 + 38), *(a1 + 40));
  v8 = *a3;
  if (*a3 < v7)
  {
    v7 = *a3;
  }

  *a3 = v8 - v7;
  v9 = &__str[v7];
  v10 = snprintf(v9, v8 - v7, "\t\tTRC count:      %u\n", *(a1 + 48));
  v11 = *a3;
  if (*a3 < v10)
  {
    v10 = *a3;
  }

  v12 = &v9[v10];
  v13 = v11 - v10;
  *a3 = v11 - v10;
  if (*(a1 + 48))
  {
    v14 = 0;
    for (i = (a1 + 120); ; i += 15)
    {
      v22 = snprintf(v12, v13, "\t\tTRC %lu:\n", v14);
      v23 = *a3;
      if (*a3 >= v22)
      {
        v24 = v22;
      }

      else
      {
        v24 = *a3;
      }

      v25 = v23 - v24;
      *a3 = v23 - v24;
      v26 = *i;
      v27 = "<Invalid curveTypes>";
      if (v26 <= 0xA)
      {
        v27 = GetCurveType_curveTypes[v26];
      }

      v28 = *(i + 9);
      v29 = "<Invalid CGGammaID>";
      if (v28 <= 0xF)
      {
        v29 = GetGammaName_gammaNames[v28];
      }

      v30 = &v12[v24];
      v31 = snprintf(v30, v25, "\t\t\tCurve Type %d : %s, Gamma Name : %s\n", v26, v27, v29);
      if (*a3 < v31)
      {
        v31 = *a3;
      }

      *a3 -= v31;
      v32 = (PrintTRC_kPrintFuncs[*i])(i, &v30[v31], a3);
      v33 = snprintf(v32, *a3, "\t\t\tinput range:   [%6f, %6f]\n\t\t\toutput range:  [%6f, %6f]\n\t\t\tproperties:    ", i[10], i[11], i[12], i[13]);
      v34 = *a3;
      if (*a3 < v33)
      {
        v33 = *a3;
      }

      v18 = &v32[v33];
      v19 = v34 - v33;
      *a3 = v34 - v33;
      v35 = vcnt_s8(*(i + 14));
      v35.i16[0] = vaddlv_u8(v35);
      v36 = v35.i32[0];
      if ((i[14] & 1) == 0)
      {
        break;
      }

      v38 = snprintf(v18, v19, "%s", "kCGColorFunctionSignedReflectionTRC");
      v39 = *a3;
      if (*a3 < v38)
      {
        v38 = *a3;
      }

      v18 += v38;
      v19 = v39 - v38;
      *a3 = v39 - v38;
      if (v36 >= 2)
      {
        v40 = snprintf(v18, v19, " | ");
        v41 = *a3;
        if (*a3 < v40)
        {
          v40 = *a3;
        }

        v18 += v40;
        v19 = v41 - v40;
        *a3 = v41 - v40;
      }

      v37 = 1;
      if ((i[14] & 2) != 0)
      {
        goto LABEL_37;
      }

LABEL_43:
      if ((i[14] & 4) != 0)
      {
        ++v37;
        v46 = snprintf(v18, v19, "%s", "kCGColorFunctionInputClamp");
        v47 = *a3;
        if (*a3 < v46)
        {
          v46 = *a3;
        }

        v18 += v46;
        v19 = v47 - v46;
        *a3 = v47 - v46;
        if (v37 < v36)
        {
          v48 = snprintf(v18, v19, " | ");
          v49 = *a3;
          if (*a3 < v48)
          {
            v48 = *a3;
          }

          v18 += v48;
          v19 = v49 - v48;
          *a3 = v49 - v48;
        }
      }

      if ((i[14] & 8) != 0)
      {
        ++v37;
        v50 = snprintf(v18, v19, "%s", "kCGColorMatrixOnlyFirstChannelInput");
        v51 = *a3;
        if (*a3 < v50)
        {
          v50 = *a3;
        }

        v18 += v50;
        v19 = v51 - v50;
        *a3 = v51 - v50;
        if (v37 < v36)
        {
          v52 = snprintf(v18, v19, " | ");
          v53 = *a3;
          if (*a3 < v52)
          {
            v52 = *a3;
          }

          v18 += v52;
          v19 = v53 - v52;
          *a3 = v53 - v52;
        }
      }

      if ((i[14] & 0x10) != 0)
      {
        v55 = v37 + 1;
        v56 = snprintf(v18, v19, "%s", "kCGColorMatrixOnlyFirstChannelOutput");
        v57 = *a3;
        if (*a3 < v56)
        {
          v56 = *a3;
        }

        v18 += v56;
        v19 = v57 - v56;
        *a3 = v57 - v56;
        if (v55 >= v36)
        {
          goto LABEL_13;
        }

        v54 = snprintf(v18, v19, " | ");
        goto LABEL_10;
      }

      if (!v37)
      {
        v54 = snprintf(v18, v19, "<none>");
LABEL_10:
        v16 = v54;
        v17 = *a3;
        if (*a3 < v54)
        {
          v16 = *a3;
        }

        v18 += v16;
        v19 = v17 - v16;
        *a3 = v17 - v16;
      }

LABEL_13:
      v20 = snprintf(v18, v19, "\n");
      v21 = *a3;
      if (*a3 < v20)
      {
        v20 = *a3;
      }

      v12 = &v18[v20];
      v13 = v21 - v20;
      *a3 = v21 - v20;
      if (++v14 >= *(a1 + 48))
      {
        return v12;
      }
    }

    v37 = 0;
    if ((i[14] & 2) == 0)
    {
      goto LABEL_43;
    }

LABEL_37:
    ++v37;
    v42 = snprintf(v18, v19, "%s", "kCGColorFunctionOutputClamp");
    v43 = *a3;
    if (*a3 < v42)
    {
      v42 = *a3;
    }

    v18 += v42;
    v19 = v43 - v42;
    *a3 = v43 - v42;
    if (v37 < v36)
    {
      v44 = snprintf(v18, v19, " | ");
      v45 = *a3;
      if (*a3 < v44)
      {
        v44 = *a3;
      }

      v18 += v44;
      v19 = v45 - v44;
      *a3 = v45 - v44;
    }

    goto LABEL_43;
  }

  return v12;
}

float32x4_t lerp(float32x4_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6, double a7, float32_t a8, uint64_t a9, uint64_t a10, float32x4_t a11, float32x4_t a12, float32x4_t a13, float32x4_t a14, float32x4_t a15, float32x4_t a16, float32x4_t a17, float32x4_t a18, float32x4_t a19, float32x4_t a20, float32x4_t a21, float32x4_t a22, float32x4_t a23, float32x4_t a24, float32x4_t a25)
{
  v27 = 0uLL;
  a24 = 0u;
  a25 = 0u;
  a22 = 0u;
  a23 = 0u;
  a20 = 0u;
  a21 = 0u;
  a18 = 0u;
  a19 = 0u;
  v28 = (a6 - 1);
  if (a6 < 1)
  {
    if (a5 < 1)
    {
      v28 = 0;
      a11 = 0uLL;
      a12 = 0uLL;
      a13 = 0uLL;
      v32 = 0uLL;
      v33 = 0uLL;
      v35 = 0uLL;
      v34 = 0uLL;
    }

    else
    {
      v39 = 0;
      v40 = a2 + 2 * *a3;
      do
      {
        LOWORD(a8) = *(a2 + 2 * v39);
        *&v41 = LODWORD(a8) / 65535.0;
        a22.f32[v39] = *&v41;
        LOWORD(v41) = *(v40 + 2 * v39);
        a8 = v41 / 65535.0;
        a18.f32[v39++] = a8;
      }

      while (a5 != v39);
      v28 = 0;
      v35 = a24;
      v34 = a25;
      v32 = a22;
      v33 = a23;
      a12 = a20;
      a13 = a21;
      v27 = a18;
      a11 = a19;
    }
  }

  else
  {
    lerp(&a14, a2, a3, a4, a5, (a6 - 1));
    v46 = a16;
    v47 = a17;
    v44 = a14;
    v45 = a15;
    lerp(&vars0, a2 + 2 * a3[v28], a3, a4, a5, v28);
    v32 = v44;
    v33 = v45;
    v35 = v46;
    v34 = v47;
    v27 = vars0;
  }

  v42 = *(a4 + 4 * v28);
  result = vsubq_f32(v27, v32);
  *a1 = vmlaq_n_f32(v32, result, v42);
  a1[1] = vmlaq_n_f32(v33, vsubq_f32(a11, v33), v42);
  a1[2] = vmlaq_n_f32(v35, vsubq_f32(a12, v35), v42);
  a1[3] = vmlaq_n_f32(v34, vsubq_f32(a13, v34), v42);
  return result;
}

char *Print_LUT(uint64_t a1, char *__str, size_t *a3)
{
  if (*(a1 + 35))
  {
    v6 = "YES";
  }

  else
  {
    v6 = "NO";
  }

  v7 = snprintf(__str, *a3, "\t\t%s color space transform:\n\t\t\tinputs:  %u\n\t\t\toutputs: %u\n\t\t\tcrossChan:%s\n\t\t\tsrcMask: 0x%4.4hx\n\t\t\tdstMask: 0x%4.4hx\n", (*a1 + 4), *(a1 + 32), *(a1 + 33), v6, *(a1 + 38), *(a1 + 40));
  v8 = *a3;
  if (*a3 < v7)
  {
    v7 = *a3;
  }

  *a3 = v8 - v7;
  v9 = &__str[v7];
  v10 = *(a1 + 56);
  v11 = snprintf(v9, v8 - v7, "\t\t\tgridSize: %u", *(a1 + 56));
  v12 = *a3;
  if (*a3 < v11)
  {
    v11 = *a3;
  }

  v13 = &v9[v11];
  v14 = v12 - v11;
  *a3 = v12 - v11;
  if (*(a1 + 32) >= 2u)
  {
    LODWORD(v15) = *(a1 + 56);
    v16 = 1;
    do
    {
      v17 = snprintf(v13, v14, "x%u", v15);
      v18 = *a3;
      if (*a3 < v17)
      {
        v17 = *a3;
      }

      v13 += v17;
      v14 = v18 - v17;
      *a3 = v18 - v17;
      v15 = *(a1 + 56);
      v10 *= v15;
      ++v16;
    }

    while (v16 < *(a1 + 32));
  }

  v19 = snprintf(v13, v14, "(%lu bytes)\n", 2 * v10 * *(a1 + 33));
  if (*a3 < v19)
  {
    v19 = *a3;
  }

  *a3 -= v19;
  return &v13[v19];
}

void Destruct_LUT(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    CFRelease(v1);
  }
}

char *Print_LUTStep(uint64_t a1, char *__str, size_t *a3)
{
  if (*(a1 + 35))
  {
    v6 = "YES";
  }

  else
  {
    v6 = "NO";
  }

  v7 = snprintf(__str, *a3, "\t\t%s color space transform:\n\t\t\tinputs:  %u\n\t\t\toutputs: %u\n\t\t\tcrossChan:%s\n\t\t\tsrcMask: 0x%4.4hx\n\t\t\tdstMask: 0x%4.4hx\n", (*a1 + 4), *(a1 + 32), *(a1 + 33), v6, *(a1 + 38), *(a1 + 40));
  v8 = *a3;
  if (*a3 < v7)
  {
    v7 = *a3;
  }

  v9 = v8 - v7;
  *a3 = v8 - v7;
  v10 = &__str[v7];
  v11 = *(a1 + 48);
  v12 = snprintf(v10, v9, "\t\tnGridpoints:     %lu\n\t\ttable:           %p\n\t\tstrides:         ", v11, *(a1 + 64));
  v13 = *a3;
  if (*a3 < v12)
  {
    v12 = *a3;
  }

  v14 = &v10[v12];
  v15 = v13 - v12;
  *a3 = v13 - v12;
  if (*(a1 + 32) == 1)
  {
    v16 = 0;
  }

  else
  {
    v17 = 0;
    do
    {
      v18 = snprintf(v14, v15, "%lu, ", *(a1 + 72 + 8 * v17));
      v19 = *a3;
      if (*a3 < v18)
      {
        v18 = *a3;
      }

      v14 += v18;
      v15 = v19 - v18;
      *a3 = v19 - v18;
      ++v17;
      v16 = *(a1 + 32) - 1;
    }

    while (v17 < v16);
  }

  v20 = snprintf(v14, v15, "%lu\n", *(a1 + 8 * v16 + 72));
  if (*a3 < v20)
  {
    v20 = *a3;
  }

  *a3 -= v20;
  return &v14[v20];
}

uint64_t DoConvert_LUT1D@<X0>(uint64_t result@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13)
{
  v13 = *a2;
  v14 = a2[1];
  v15 = a2[3];
  a12 = a2[2];
  a13 = v15;
  a10 = v13;
  a11 = v14;
  v16 = *(result + 38);
  vars0 = 0u;
  if (v16)
  {
    v17 = 0;
    v18 = 48;
    do
    {
      if (v16)
      {
        v20 = *(&a10 + v17);
        if (v20 >= 0.0)
        {
          v21 = *(&a10 + v17);
        }

        else
        {
          v21 = 0.0;
        }

        if (v20 <= 1.0)
        {
          v22 = v21;
        }

        else
        {
          v22 = 1.0;
        }

        v23 = *(result + v17 + 176);
        v24 = v22 * v23;
        v25 = v24 - (v23 == v24);
        v26 = v24 - v25;
        v27 = (*(result + v18) + 4 * v25);
        *(&vars0 + v17) = *v27 + (v26 * (v27[1] - *v27));
      }

      v17 += 4;
      v18 += 8;
      v19 = v16 > 1;
      v16 >>= 1;
    }

    while (v19);
    *a3 = vars0;
    a3[1] = 0u;
    a3[2] = 0u;
    a3[3] = 0u;
  }

  else
  {
    *a3 = 0uLL;
    a3[1] = 0u;
    a3[2] = 0u;
    a3[3] = 0u;
  }

  return result;
}

char *Print_LUT1D(uint64_t a1, char *__str, size_t *a3)
{
  if (*(a1 + 35))
  {
    v6 = "YES";
  }

  else
  {
    v6 = "NO";
  }

  v7 = snprintf(__str, *a3, "\t\t%s color space transform:\n\t\t\tinputs:  %u\n\t\t\toutputs: %u\n\t\t\tcrossChan:%s\n\t\t\tsrcMask: 0x%4.4hx\n\t\t\tdstMask: 0x%4.4hx\n", (*a1 + 4), *(a1 + 32), *(a1 + 33), v6, *(a1 + 38), *(a1 + 40));
  v8 = *a3;
  if (*a3 < v7)
  {
    v7 = *a3;
  }

  *a3 = v8 - v7;
  v9 = &__str[v7];
  v10 = snprintf(v9, v8 - v7, "\t\t\tentries: {");
  v11 = *a3;
  if (*a3 < v10)
  {
    v10 = *a3;
  }

  v12 = &v9[v10];
  v13 = v11 - v10;
  *a3 = v11 - v10;
  v14 = *(a1 + 38);
  if (*(a1 + 38))
  {
    v15 = (a1 + 176);
    do
    {
      if (v14 == 1)
      {
        v16 = "%u}\n";
      }

      else
      {
        v16 = "%u, ";
      }

      v17 = *v15++;
      v18 = snprintf(v12, v13, v16, v17);
      v19 = *a3;
      if (*a3 < v18)
      {
        v18 = *a3;
      }

      v13 = v19 - v18;
      v12 += v18;
      *a3 = v19 - v18;
      v20 = v14 > 1;
      v14 >>= 1;
    }

    while (v20);
  }

  return v12;
}

void Destruct_LUT1D(uint64_t a1)
{
  v2 = *(a1 + 38);
  if (v2)
  {
    v3 = *(a1 + 240);
    if (v3)
    {
      CFRelease(v3);
      v2 = *(a1 + 38);
    }
  }

  if ((v2 & 2) != 0)
  {
    v4 = *(a1 + 248);
    if (v4)
    {
      CFRelease(v4);
      v2 = *(a1 + 38);
    }
  }

  if ((v2 & 4) != 0)
  {
    v5 = *(a1 + 256);
    if (v5)
    {
      CFRelease(v5);
      v2 = *(a1 + 38);
    }
  }

  if ((v2 & 8) != 0)
  {
    v6 = *(a1 + 264);
    if (v6)
    {
      CFRelease(v6);
      v2 = *(a1 + 38);
    }
  }

  if ((v2 & 0x10) != 0)
  {
    v7 = *(a1 + 272);
    if (v7)
    {
      CFRelease(v7);
      v2 = *(a1 + 38);
    }
  }

  if ((v2 & 0x20) != 0)
  {
    v8 = *(a1 + 280);
    if (v8)
    {
      CFRelease(v8);
      v2 = *(a1 + 38);
    }
  }

  if ((v2 & 0x40) != 0)
  {
    v9 = *(a1 + 288);
    if (v9)
    {
      CFRelease(v9);
      v2 = *(a1 + 38);
    }
  }

  if ((v2 & 0x80) != 0)
  {
    v10 = *(a1 + 296);
    if (v10)
    {
      CFRelease(v10);
      v2 = *(a1 + 38);
    }
  }

  if ((v2 & 0x100) != 0)
  {
    v11 = *(a1 + 304);
    if (v11)
    {
      CFRelease(v11);
      v2 = *(a1 + 38);
    }
  }

  if ((v2 & 0x200) != 0)
  {
    v12 = *(a1 + 312);
    if (v12)
    {
      CFRelease(v12);
      v2 = *(a1 + 38);
    }
  }

  if ((v2 & 0x400) != 0)
  {
    v13 = *(a1 + 320);
    if (v13)
    {
      CFRelease(v13);
      v2 = *(a1 + 38);
    }
  }

  if ((v2 & 0x800) != 0)
  {
    v14 = *(a1 + 328);
    if (v14)
    {
      CFRelease(v14);
      v2 = *(a1 + 38);
    }
  }

  if ((v2 & 0x1000) != 0)
  {
    v15 = *(a1 + 336);
    if (v15)
    {
      CFRelease(v15);
      v2 = *(a1 + 38);
    }
  }

  if ((v2 & 0x2000) != 0)
  {
    v16 = *(a1 + 344);
    if (v16)
    {
      CFRelease(v16);
      v2 = *(a1 + 38);
    }
  }

  if ((v2 & 0x4000) != 0)
  {
    v17 = *(a1 + 352);
    if (v17)
    {
      CFRelease(v17);
      v2 = *(a1 + 38);
    }
  }

  if (v2 < 0)
  {
    v18 = *(a1 + 360);
    if (v18)
    {

      CFRelease(v18);
    }
  }
}

char *Print_Zero(uint64_t a1, char *__str, size_t *a3)
{
  v5 = "YES";
  if (!*(a1 + 35))
  {
    v5 = "NO";
  }

  v6 = snprintf(__str, *a3, "\t\t%s fill transform:\n\t\t\tinputs:  %u\n\t\t\toutputs: %u\n\t\t\tcrossChan:%s\n\t\t\tdstMask: 0x%4.4hx\n", (*a1 + 4), *(a1 + 32), *(a1 + 33), v5, *(a1 + 40));
  if (*a3 < v6)
  {
    v6 = *a3;
  }

  *a3 -= v6;
  return &__str[v6];
}

void DoConvert_LuminanceScaling(float *a1, uint64_t *a2, uint64_t *a3, int8x16_t a4)
{
  v44 = a3[1];
  if (v44)
  {
    v4 = a3[2];
    if (v4)
    {
      v6 = 0;
      v45 = a1[15];
      v46 = a1[14];
      v7 = a1[16];
      v8 = a1[17];
      v9 = a1[12];
      v10 = a1[13];
      v42 = a3[11];
      v43 = a2[11];
      v11 = *a2;
      v12 = a2[4];
      v13 = a2[8];
      v40 = a2[7];
      v41 = a2[3];
      v14 = *a3;
      v15 = a3[4];
      v16 = a3[7];
      v17 = a3[8];
      v38 = v16;
      v39 = a3[3];
      do
      {
        for (i = 0; i != v4; ++i)
        {
          v19 = *(v11 + 4 * i);
          v20 = *(v12 + 4 * i);
          v21 = *(v13 + 4 * i);
          v23 = a1[18];
          v22 = a1[19];
          if (v19 > v22)
          {
            v24 = a1[19];
          }

          else
          {
            v24 = *(v11 + 4 * i);
          }

          if (v19 >= v23)
          {
            v25 = v24;
          }

          else
          {
            v25 = a1[18];
          }

          if (v20 > v22)
          {
            v26 = a1[19];
          }

          else
          {
            v26 = *(v12 + 4 * i);
          }

          if (v20 >= v23)
          {
            v27 = v26;
          }

          else
          {
            v27 = a1[18];
          }

          if (v21 >= v23)
          {
            v23 = *(v13 + 4 * i);
            if (v21 > v22)
            {
              v23 = a1[19];
            }
          }

          if (v27 <= v23)
          {
            v28 = v23;
          }

          else
          {
            v28 = v27;
          }

          if (v25 > v28)
          {
            v28 = v25;
          }

          *a4.i32 = (((v7 * v23) + (v25 * v46)) + (v27 * v45)) + (v8 * v28);
          v47 = a4;
          *v29.i32 = v10 * powf(fmaxf(fabsf(*a4.i32), 1.1755e-38), v9);
          v30.i64[0] = 0x8000000080000000;
          v30.i64[1] = 0x8000000080000000;
          a4 = vbslq_s8(v30, v29, v47);
          v31 = v25 * *a4.i32;
          v32 = v27 * *a4.i32;
          *a4.i32 = v23 * *a4.i32;
          v33 = a1[21];
          if (v31 <= v33)
          {
            v33 = v31;
          }

          if (v31 >= a1[20])
          {
            v34 = v33;
          }

          else
          {
            v34 = a1[20];
          }

          *(v14 + 4 * i) = v34;
          v35 = a1[20];
          v36 = a1[21];
          if (v32 <= v36)
          {
            v36 = v32;
          }

          if (v32 >= v35)
          {
            v35 = v36;
          }

          *(v15 + 4 * i) = v35;
          v37 = a1[20];
          if (*a4.i32 >= v37)
          {
            v37 = *a4.i32;
            if (*a4.i32 > a1[21])
            {
              v37 = a1[21];
            }
          }

          *(v17 + 4 * i) = v37;
        }

        v11 += v41;
        v12 += v40;
        v13 += v43;
        v14 += v39;
        v15 += v38;
        v17 += v42;
        ++v6;
      }

      while (v6 != v44);
    }
  }
}

char *Print_LuminanceScalingStep(uint64_t a1, char *__str, size_t *a3)
{
  if (*(a1 + 35))
  {
    v6 = "YES";
  }

  else
  {
    v6 = "NO";
  }

  v7 = snprintf(__str, *a3, "\t\t%s color space transform:\n\t\t\tinputs:  %u\n\t\t\toutputs: %u\n\t\t\tcrossChan:%s\n\t\t\tsrcMask: 0x%4.4hx\n\t\t\tdstMask: 0x%4.4hx\n", (*a1 + 4), *(a1 + 32), *(a1 + 33), v6, *(a1 + 38), *(a1 + 40));
  v8 = *a3;
  if (*a3 < v7)
  {
    v7 = *a3;
  }

  *a3 = v8 - v7;
  v9 = &__str[v7];
  v10 = snprintf(v9, v8 - v7, "\t\tgamma:    %8f\n\t\tgain:     %8f\n\t\tcoeffs:   {%8f, %8f, %8f}\n", *(a1 + 48), *(a1 + 52), *(a1 + 56), *(a1 + 60), *(a1 + 64));
  if (*a3 < v10)
  {
    v10 = *a3;
  }

  *a3 -= v10;
  return &v9[v10];
}

void DoConvert_HLGSceneReferredMapping(float *a1, uint64_t *a2, uint64_t *a3)
{
  v46 = a3[1];
  if (v46)
  {
    v3 = a3[2];
    if (v3)
    {
      v5 = 0;
      v6 = a1[14];
      v7 = a1[15];
      v9 = a1[16];
      v8 = a1[17];
      v11 = a1[12];
      v10 = a1[13];
      v44 = a3[11];
      v45 = a2[11];
      v12 = *a2;
      v13 = a2[4];
      v14 = a2[8];
      v42 = a2[7];
      v43 = a2[3];
      v15 = *a3;
      v16 = a3[4];
      v17 = a3[7];
      v18 = a3[8];
      v40 = v17;
      v41 = a3[3];
      v47 = v6;
      do
      {
        for (i = 0; i != v3; ++i)
        {
          v20 = *(v12 + 4 * i);
          v21 = *(v13 + 4 * i);
          v22 = *(v14 + 4 * i);
          v23 = a1[18];
          v24 = a1[19];
          if (v20 > v24)
          {
            v25 = a1[19];
          }

          else
          {
            v25 = *(v12 + 4 * i);
          }

          if (v20 >= v23)
          {
            v26 = v25;
          }

          else
          {
            v26 = a1[18];
          }

          if (v21 > v24)
          {
            v27 = a1[19];
          }

          else
          {
            v27 = *(v13 + 4 * i);
          }

          if (v21 < v23)
          {
            v27 = a1[18];
          }

          if (v22 <= v24)
          {
            v24 = *(v14 + 4 * i);
          }

          if (v22 >= v23)
          {
            v28 = v24;
          }

          else
          {
            v28 = a1[18];
          }

          v29 = v10 * v26;
          v30 = v10 * v27;
          v31 = v10 * v28;
          if (v29 <= (v10 * v27))
          {
            v32 = v10 * v27;
          }

          else
          {
            v32 = v29;
          }

          if (v32 <= v31)
          {
            v33 = v31;
          }

          else
          {
            v33 = v32;
          }

          v48 = (((v7 * v30) + (v29 * v6)) + (v31 * v9)) + (v33 * v8);
          v34 = powf(v29, v11);
          v35 = powf(v30, v11);
          v36 = powf(v31, v11);
          v6 = v47;
          if (v34 <= v35)
          {
            v37 = v35;
          }

          else
          {
            v37 = v34;
          }

          if (v37 <= v36)
          {
            v37 = v36;
          }

          v38 = (((v7 * v35) + (v47 * v34)) + (v9 * v36)) + (v8 * v37);
          if (v38 == 0.0)
          {
            v39 = 1.0;
          }

          else
          {
            v39 = v48 / v38;
          }

          *(v15 + 4 * i) = v34 * v39;
          *(v16 + 4 * i) = v35 * v39;
          *(v18 + 4 * i) = v36 * v39;
        }

        v12 += v43;
        v13 += v42;
        v14 += v45;
        v15 += v41;
        v16 += v40;
        v18 += v44;
        ++v5;
      }

      while (v5 != v46);
    }
  }
}

char *Print_HLGSceneReferredMappingStep(uint64_t a1, char *__str, size_t *a3)
{
  if (*(a1 + 35))
  {
    v6 = "YES";
  }

  else
  {
    v6 = "NO";
  }

  v7 = snprintf(__str, *a3, "\t\t%s color space transform:\n\t\t\tinputs:  %u\n\t\t\toutputs: %u\n\t\t\tcrossChan:%s\n\t\t\tsrcMask: 0x%4.4hx\n\t\t\tdstMask: 0x%4.4hx\n", (*a1 + 4), *(a1 + 32), *(a1 + 33), v6, *(a1 + 38), *(a1 + 40));
  v8 = *a3;
  if (*a3 < v7)
  {
    v7 = *a3;
  }

  *a3 = v8 - v7;
  v9 = &__str[v7];
  v10 = snprintf(v9, v8 - v7, "\t\tgamma:    %8f\n\t\tgain:     %8f\n\t\tcoeffs:   {%8f, %8f, %8f}\n", *(a1 + 48), *(a1 + 52), *(a1 + 56), *(a1 + 60), *(a1 + 64));
  if (*a3 < v10)
  {
    v10 = *a3;
  }

  *a3 -= v10;
  return &v9[v10];
}

void DoConvert_PQToneMapping(float *a1, uint64_t *a2, uint64_t *a3)
{
  v36 = a3[1];
  if (v36)
  {
    v3 = a3[2];
    if (v3)
    {
      v5 = 0;
      v6 = a1[21];
      v40 = 1.0 - v6;
      v41 = a1[22];
      v8 = a1[18];
      v7 = a1[19];
      v42 = v6;
      v9 = v6 + 1.0 - (v7 + v7);
      v38 = v9;
      v39 = -((v6 + 2.0) - (v7 * 3.0));
      v45 = a1[13];
      v46 = a1[12];
      v10 = a1[14];
      v11 = a1[15];
      v34 = a3[11];
      v35 = a2[11];
      v43 = a1[17] - v8;
      v44 = a1[16];
      v12 = *a2;
      v13 = a2[4];
      v14 = a2[8];
      v32 = a2[7];
      v33 = a2[3];
      v15 = *a3;
      v16 = a3[4];
      v17 = a3[7];
      v18 = a3[8];
      v30 = v17;
      v31 = a3[3];
      v19 = 1.0;
      do
      {
        v37 = v5;
        for (i = 0; i != v3; ++i)
        {
          v24 = *(v12 + 4 * i);
          v25 = *(v13 + 4 * i);
          v26 = *(v14 + 4 * i);
          v27 = ((v25 * a1[27]) + (a1[26] * v24)) + (a1[28] * v26);
          if (v27 != 0.0)
          {
            v28 = powf(v27 / 10000.0, v46);
            v29 = (1.0 / v43) * (powf((v10 + (v11 * v28)) / (v19 + (v44 * v28)), v45) - v8);
            if (v29 >= v42)
            {
              v29 = v42 + ((v41 * (v29 - v42)) * (v40 + ((v41 * (v29 - v42)) * (v39 + ((v41 * (v29 - v42)) * v38)))));
            }

            v21 = 0.0;
            if (v29 >= 0.0)
            {
              v19 = 1.0;
              if (v29 < 1.0)
              {
                v21 = v29 + (((1.0 - v29) * ((1.0 - v29) * ((1.0 - v29) * 0.0))) * (1.0 - v29));
              }

              else
              {
                v21 = v29;
              }
            }

            v22 = powf(v8 + (v21 * v43), 1.0 / v45);
            v23 = (powf(fmaxf(v22 - v10, 0.0) / (v11 + (-v44 * v22)), 1.0 / v46) * 10000.0) / v27;
            v24 = v24 * v23;
            v25 = v25 * v23;
            v26 = v26 * v23;
          }

          *(v15 + 4 * i) = v24;
          *(v16 + 4 * i) = v25;
          *(v18 + 4 * i) = v26;
        }

        v12 += v33;
        v13 += v32;
        v14 += v35;
        v15 += v31;
        v16 += v30;
        v18 += v34;
        v5 = v37 + 1;
      }

      while (v37 + 1 != v36);
    }
  }
}

char *Print_PQToneMappingStep(uint64_t a1, char *__str, size_t *a3)
{
  if (*(a1 + 35))
  {
    v6 = "YES";
  }

  else
  {
    v6 = "NO";
  }

  v7 = snprintf(__str, *a3, "\t\t%s color space transform:\n\t\t\tinputs:  %u\n\t\t\toutputs: %u\n\t\t\tcrossChan:%s\n\t\t\tsrcMask: 0x%4.4hx\n\t\t\tdstMask: 0x%4.4hx\n", (*a1 + 4), *(a1 + 32), *(a1 + 33), v6, *(a1 + 38), *(a1 + 40));
  v8 = *a3;
  v9 = v7;
  if (*a3 < v7)
  {
    v9 = *a3;
  }

  v10 = &__str[v9];
  v11 = *(a1 + 48);
  v12 = *(a1 + 52);
  v13 = *(a1 + 56);
  v14 = *(a1 + 60);
  v15 = *(a1 + 64);
  v16 = *(a1 + 68);
  v17 = *(a1 + 72);
  v18 = *(a1 + 96);
  v19 = *(a1 + 100);
  v20 = *(a1 + 76);
  v21 = *(a1 + 80);
  v22 = *(a1 + 84);
  v23 = *(a1 + 88);
  v24 = *(a1 + 104);
  v25 = *(a1 + 108);
  v26 = *(a1 + 112);
  v27 = *(a1 + 116);
  *a3 = v8 - v9;
  v28 = snprintf(v10, v8 - v9, "\t\tpq_eotf:  {m1: %f, m2: %f, c1: %f, c2: %f, c3: %f}\n\t\tpq_eetf:  \n\t\t\tmasterPeakInv:  %f\n\t\t\tmasterBlackInv: %f\n\t\t\targetPeakInv:   %f\n\t\t\targetBlackInv:  %f\n\t\t\tmaxLum:         %f\n\t\t\tminLum:         %f\n\t\t\tKneeStart:      %f\n\t\t\tKneeStartScale: %f\n\t\tcoeffs:           {%8f, %8f, %8f, %8f}\n", v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
  if (*a3 < v28)
  {
    v28 = *a3;
  }

  *a3 -= v28;
  return &v10[v28];
}

_BYTE *CreateColorSpaceTransformZero(char a1, __int16 a2)
{
  result = vImage_malloc(0x30uLL);
  if (result)
  {
    *result = &CreateColorSpaceTransformZero_zero_vtbl;
    result[33] = a1;
    result[32] = a1;
    result[35] = 0;
    *(result + 20) = a2;
    *(result + 19) = a2;
  }

  return result;
}

BOOL SafeCFNumberGetValue(CFTypeRef cf, CFNumberType a2, void *a3)
{
  if (cf)
  {
    v6 = CFGetTypeID(cf);
    if (v6 == CFNumberGetTypeID())
    {
      return CFNumberGetValue(cf, a2, a3) != 0;
    }
  }

  else
  {
    TypeID = CFNullGetTypeID();
    if (TypeID == CFNumberGetTypeID())
    {
      return CFNumberGetValue(cf, a2, a3) != 0;
    }
  }

  return 0;
}

char *Print_kCGColorTRCParametricType0(uint64_t a1, char *__str, size_t *a3)
{
  v5 = snprintf(__str, *a3, "\t\t\tType 0:        Y = X^%f\n", *(a1 + 4));
  if (*a3 < v5)
  {
    v5 = *a3;
  }

  *a3 -= v5;
  return &__str[v5];
}

char *Print_kCGColorTRCParametricType1(float *a1, char *__str, size_t *a3)
{
  v5 = snprintf(__str, *a3, "\t\t\tType 1:        Y = X >= %f ? (%f * X + %f)^%f : 0\n", (-a1[3] / a1[2]), a1[2], a1[3], a1[1]);
  if (*a3 < v5)
  {
    v5 = *a3;
  }

  *a3 -= v5;
  return &__str[v5];
}

char *Print_kCGColorTRCParametricType2(float *a1, char *__str, size_t *a3)
{
  v5 = snprintf(__str, *a3, "\t\t\tType 2:        Y = X >= %f ? (%f * X + %f)^%f + %f : %f\n", (-a1[3] / a1[2]), a1[2], a1[3], a1[1], a1[4], a1[4]);
  if (*a3 < v5)
  {
    v5 = *a3;
  }

  *a3 -= v5;
  return &__str[v5];
}

char *Print_kCGColorTRCParametricType3(float *a1, char *__str, size_t *a3)
{
  v5 = snprintf(__str, *a3, "\t\t\tType 3:        Y = X >= %f ? (%f * X + %f)^%f : %f*X\n", a1[5], a1[2], a1[3], a1[1], a1[4]);
  if (*a3 < v5)
  {
    v5 = *a3;
  }

  *a3 -= v5;
  return &__str[v5];
}

char *Print_kCGColorTRCParametricType4(float *a1, char *__str, size_t *a3)
{
  v5 = snprintf(__str, *a3, "\t\t\tType 4:        Y = X >= %f ? (%f * X + %f)^%f + %f : %f * X + %f\n", a1[5], a1[2], a1[3], a1[1], a1[6], a1[4], a1[7]);
  if (*a3 < v5)
  {
    v5 = *a3;
  }

  *a3 -= v5;
  return &__str[v5];
}

char *Print_kCGColorTRCTable(uint64_t a1, char *__str, size_t *a3)
{
  v5 = snprintf(__str, *a3, "\t\t\tType table:\n\t\t\ttable size:   %lu\n\t\t\tneg extension: %8f * x + %8f\n\t\t\tpos extension: %8f * x + %8f\n\t\t\tinput range:   [%6f, %6f]\n\t\t\toutput range:  [%6f, %6f]\n\t\t\tproperties:    ", *(a1 + 4), *(a1 + 28), *(a1 + 32), *(a1 + 20), *(a1 + 24), *(a1 + 40), *(a1 + 44), *(a1 + 48), *(a1 + 52));
  if (*a3 < v5)
  {
    v5 = *a3;
  }

  *a3 -= v5;
  return &__str[v5];
}

char *Print_kCGColorTRCParametricPQ_EOTF_Type(float *a1, char *__str, size_t *a3)
{
  v5 = snprintf(__str, *a3, "\t\t\tPQ EOTF:   Y = |X|**%f\n\t\t\t           Y = MAX(Y - %f, 0) / (%f - %f * Y)\n\t\t\t           Y = %f * Y**%f\n", a1[2], a1[4], a1[5], a1[6], a1[7], a1[3]);
  if (*a3 < v5)
  {
    v5 = *a3;
  }

  *a3 -= v5;
  return &__str[v5];
}

char *Print_kCGColorTRCParametricPQ_InvEOTF_Type(float *a1, char *__str, size_t *a3)
{
  v5 = snprintf(__str, *a3, "\t\t\tPQ InvEOTF:    Y = |X| * %f\n\t\t\t               Y = Y ** %f\n\t\t\t               Y = (%f + %f * Y) / (1.0 + %f * Y)\n\t\t\t               Y = Y ** %f\n", a1[7], a1[2], a1[4], a1[5], a1[6], a1[3]);
  if (*a3 < v5)
  {
    v5 = *a3;
  }

  *a3 -= v5;
  return &__str[v5];
}

char *Print_kCGColorTRCParametricHLG_InvOETF_Type(float *a1, char *__str, size_t *a3)
{
  v5 = snprintf(__str, *a3, "\t\t\tHLG InvOETF:   Y = MAX(0.0, (1 - %f) * |X| + %f)\n\t\t\t               if ( Y > 0.5)\n\t\t\t                   Y = (exp((Y - %f) / %f) + %f) * %f\n\t\t\t               else\n\t\t\t                   Y = Y * Y * %f\n", a1[7], a1[7], a1[4], a1[2], a1[3], a1[5], a1[6]);
  if (*a3 < v5)
  {
    v5 = *a3;
  }

  *a3 -= v5;
  return &__str[v5];
}

char *Print_kCGColorTRCParametricHLG_OETF_Type(float *a1, char *__str, size_t *a3)
{
  v5 = snprintf(__str, *a3, "\t\t\tHLG OETF:      Y = |X| * %f\n\t\t\t               if ( Y < %f)\n\t\t\t                   Y = sqrt(3 * Y)\n\t\t\t               else\n\t\t\t                   Y = %f * log(12.0 * X - %f) + %f\n", a1[6], a1[5], a1[2], a1[3], a1[4]);
  if (*a3 < v5)
  {
    v5 = *a3;
  }

  *a3 -= v5;
  return &__str[v5];
}

char *Print_kCGColorTRCParametricInv709_1886_EOTF_Type(float *a1, char *__str, size_t *a3)
{
  v5 = snprintf(__str, *a3, "\t\t\t709->1886 EOTF: if ( X >= %f)\n\t\t\t                    Y = ((%fX+%f)^%f + %f)^%f  ()\n\t\t\t                else\n\t\t\t                    Y = (%fX)^%f\n", a1[5], a1[2], a1[3], a1[1], a1[6], a1[7], a1[4], a1[7]);
  if (*a3 < v5)
  {
    v5 = *a3;
  }

  *a3 -= v5;
  return &__str[v5];
}

void DoConvert_LUTStep(uint64_t a1, uint64_t a2, void *a3)
{
  v78[17] = *MEMORY[0x277D85DE8];
  memset(v78, 0, 128);
  memset(v77, 0, sizeof(v77));
  __pattern4 = 2143289344;
  memset_pattern4(__b, &__pattern4, 0x400uLL);
  v6 = *(a1 + 32);
  if (!*(a1 + 32))
  {
    v57 = *MEMORY[0x277D85DE8];
    return;
  }

  v68 = a3[2];
  v63 = a3[1];
  v7 = *(a1 + 33);
  v8 = 1 << v6;
  v9 = *(a1 + 48);
  v10 = (a2 + 32 * v6 - 32);
  v11 = v76;
  v12 = v78;
  v13 = *(a1 + 32);
  do
  {
    *v12++ = *v10;
    *v11++ = v10[3];
    v10 -= 4;
    --v13;
  }

  while (v13);
  if (v7)
  {
    v14 = v75;
    v15 = v77;
    v16 = v7;
    do
    {
      *v15++ = *a3;
      *v14++ = a3[3];
      a3 += 4;
      --v16;
    }

    while (v16);
  }

  v17 = v8 >> 1;
  v18 = vImage_malloc(8 * (v8 >> 1));
  if (v6 == 1)
  {
    *v18 = 0;
  }

  else
  {
    v58 = 0;
    v59 = 2;
    if (v6 > 2)
    {
      v59 = v6;
    }

    do
    {
      v60 = 0;
      v61 = (a1 + 80);
      for (i = 1; i != v59; ++i)
      {
        if ((v58 >> i))
        {
          v60 += *v61;
        }

        ++v61;
      }

      v18[v58 / 2] = v60;
      v58 += 2;
    }

    while (v58 < v8);
  }

  v69 = v18;
  if (!v63)
  {
    goto LABEL_52;
  }

  v19 = 0;
  v20 = a1 + 72;
  v21 = 4 * v7;
  if (v17 <= 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = v17;
  }

  v70 = v22;
  v66 = v6;
  v67 = a1;
  v65 = a1 + 72;
  while (2)
  {
    v64 = v19;
    if (!v68)
    {
      goto LABEL_45;
    }

    v23 = 0;
    while (2)
    {
      v24 = 0;
      v25 = *(a1 + 64);
      do
      {
        v28 = *(v78[v24] + 4 * v23);
        v29 = 0.0;
        if (v28 >= 0.0)
        {
          v29 = *(v78[v24] + 4 * v23);
          if (v28 > 1.0)
          {
            v29 = 1.0;
          }
        }

        v26 = v29 * (v9 - 1);
        v27 = v26;
        if (v9 - 2 < v26)
        {
          v27 = v9 - 2;
        }

        v25 += *(v20 + 8 * v24) * v27;
        v74[v24++] = v26 - v27;
      }

      while (v6 != v24);
      v30 = 0;
      v31 = 0;
      do
      {
        if (v7)
        {
          v34 = (v25 + v69[v30]);
          v35 = v74[0];
          v36 = -v74[0];
          v37 = __src;
          v38 = v7;
          do
          {
            *v37++ = (*v34 + (*v34 * v36)) + (v34[v7] * v35);
            ++v34;
            --v38;
          }

          while (v38);
          if ((v31 & 1) == 0)
          {
LABEL_26:
            v32 = 1;
            v33 = __b;
            goto LABEL_27;
          }

          v39 = 1;
          v33 = __b;
          v32 = 1;
          do
          {
            v40 = 0;
            v41 = v74[v39];
            do
            {
              *&__src[v40] = (*&v33[v40] + (*&v33[v40] * -v41)) + (*&__src[v40] * v41);
              v40 += 4;
            }

            while (v21 != v40);
            v31 ^= v32;
            v33 += v21;
            v32 *= 2;
            ++v39;
          }

          while ((v32 & v31) != 0);
        }

        else
        {
          if ((v31 & 1) == 0)
          {
            goto LABEL_26;
          }

          v32 = 1;
          v33 = __b;
          do
          {
            v31 ^= v32;
            v32 *= 2;
            v33 += v21;
          }

          while ((v32 & v31) != 0);
        }

LABEL_27:
        memcpy(v33, __src, 4 * v7);
        v31 |= v32;
        ++v30;
      }

      while (v30 != v70);
      if (v7)
      {
        v42 = v77;
        v43 = __src;
        v44 = v7;
        do
        {
          v45 = *v43++;
          v46 = v45;
          v47 = *v42++;
          *(v47 + 4 * v23) = v46;
          --v44;
        }

        while (v44);
      }

      ++v23;
      a1 = v67;
      v20 = v65;
      v6 = v66;
      if (v23 != v68)
      {
        continue;
      }

      break;
    }

LABEL_45:
    v48 = *(a1 + 32);
    if (*(a1 + 32))
    {
      v49 = v76;
      v50 = v78;
      do
      {
        v51 = *v49++;
        *v50++ += v51;
        --v48;
      }

      while (v48);
    }

    v52 = *(a1 + 33);
    if (*(a1 + 33))
    {
      v53 = v75;
      v54 = v77;
      do
      {
        v55 = *v53++;
        *v54++ += v55;
        --v52;
      }

      while (v52);
    }

    v19 = v64 + 1;
    if (v64 + 1 != v63)
    {
      continue;
    }

    break;
  }

LABEL_52:
  v56 = *MEMORY[0x277D85DE8];

  vImage_free(v69);
}

void DestroyLUTStep(uint64_t a1)
{
  if (a1)
  {
    CFRelease(*(a1 + 56));
  }
}

void vImageCVImageFormat_Finalize(void *a1)
{
  if (a1)
  {
    v2 = a1[3];
    if (v2)
    {
      v2(a1, a1[2]);
    }

    v3 = a1[5];
    if (v3)
    {
      CFRelease(v3);
      a1[5] = 0;
    }

    v4 = a1[6];
    if (v4)
    {
      CGColorSpaceRelease(v4);
      a1[6] = 0;
    }

    a1[4] = 0;
    *(a1 + 220) = 0;
  }
}

CFHashCode vImageCVImageFormat_Hash(uint64_t a1)
{
  v1 = *(a1 + 220);
  v2 = *(a1 + 48);
  if (v2)
  {
    return v1 | (CFHash(v2) << 32);
  }

  return v1;
}

uint64_t vImageCVImageFormat_Equal(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 220);
  if (!v2)
  {
    return v2;
  }

  if (v2 != *(a2 + 220) || *(a1 + 264) != *(a2 + 264))
  {
    return 0;
  }

  v3 = *(a1 + 32);
  v4 = *(a2 + 32);
  if (v3 != v4)
  {
    v2 = 0;
    if (!v3 || !v4)
    {
      return v2;
    }

    if (*v3 != *v4)
    {
      return 0;
    }

    if (v3[1] != v4[1] || v3[2] != v4[2] || v3[3] != v4[3] || v3[4] != v4[4] || v3[5] != v4[5] || v3[6] != v4[6] || v3[7] != v4[7])
    {
      return 0;
    }
  }

  v6 = *(a1 + 224);
  if (v6 != *(a2 + 224))
  {
    return 0;
  }

  if (v6)
  {
    v7 = (a1 + 184);
    v8 = (a2 + 184);
    v9 = (a2 + 80);
    v10 = (a1 + 80);
    do
    {
      v12 = *v7++;
      v11 = v12;
      v13 = *v8++;
      if (v11 != v13)
      {
        return 0;
      }

      v14 = *(v10 - 3);
      v15 = *(v9 - 3);
      if (v14 != v15)
      {
        return 0;
      }

      v16 = *(v10 - 2);
      v17 = *(v9 - 2);
      if (v16 != v17)
      {
        return 0;
      }

      v18 = *(v10 - 1);
      v19 = *(v9 - 1);
      if (v18 != v19)
      {
        return 0;
      }

      v20 = *v10;
      v21 = *v9;
      if (v20 != v21)
      {
        return 0;
      }

      v9 += 4;
      v10 += 4;
    }

    while (--v6);
  }

  v2 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!v2)
    {
      return v2;
    }

    v22 = a1;
    v23 = a2;
    v24 = CFEqual(*(a1 + 40), *(a2 + 40));
    a2 = v23;
    v2 = v24;
    a1 = v22;
    if (!v2)
    {
      return v2;
    }
  }

  else if (v2)
  {
    return 0;
  }

  v25 = *(a1 + 48);
  v26 = *(a2 + 48);
  if (v25)
  {
    if (v26 && CFEqual(v25, v26))
    {
      return 1;
    }
  }

  else if (!v26)
  {
    return 1;
  }

  return 0;
}

CFStringRef vImageCVImageFormat_copyFormattingDesc(uint64_t a1, const __CFDictionary *a2)
{
  v3 = vImageCVImageFormat_copyDebugDesc(a1);
  v4 = CFStringCreateWithFormat(0, a2, @"%@", v3);
  CFRelease(v3);
  return v4;
}

CFStringRef vImageCVImageFormat_copyDebugDesc(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 220);
  v3 = *(a1 + 316);
  if (v3 != 1)
  {
    if (v3)
    {
      strcpy(__str, "\n\t\t<Error:Unknown vImageMatrixType>");
      v4 = *(a1 + 40);
      if (!v4)
      {
        goto LABEL_15;
      }
    }

    else
    {
      strcpy(__str, "\n\t\t<kvImageMatrixType_None>");
      v4 = *(a1 + 40);
      if (!v4)
      {
        goto LABEL_15;
      }
    }

LABEL_9:
    v6 = CFGetTypeID(v4);
    if (v6 != CFStringGetTypeID() || !CFStringGetCString(*(a1 + 40), buffer, 256, 0x600u))
    {
      snprintf(buffer, 0x100uLL, "%p <unable to get description>", *(a1 + 40));
    }

    if (!*(a1 + 48))
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v5 = *(a1 + 32);
  if (!v5)
  {
    strncpy(__str, "<RGB->YUV conversion matrix missing>", 0x200uLL);
    v4 = *(a1 + 40);
    if (!v4)
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  snprintf(__str, 0x200uLL, "\n\t\t%10.14f %10.14f %10.14f\n\t\t%10.14f %10.14f %10.14f\n\t\t%10.14f %10.14f %10.14f", *v5, v5[1], v5[2], v5[3], v5[4], v5[5], v5[5], v5[6], v5[7]);
  v4 = *(a1 + 40);
  if (v4)
  {
    goto LABEL_9;
  }

LABEL_15:
  strncpy(buffer, "<chroma location missing>", 0x100uLL);
  if (!*(a1 + 48))
  {
LABEL_17:
    strncpy(buffer, "<RGB Base colorspace missing>", 0x100uLL);
    goto LABEL_24;
  }

LABEL_16:
  TypeID = CGColorSpaceGetTypeID();
  if (TypeID == CFGetTypeID(*(a1 + 48)))
  {
    goto LABEL_17;
  }

  v8 = CFCopyDescription(*(a1 + 48));
  if (v8)
  {
    v9 = v8;
    v10 = CFGetTypeID(v8);
    if (v10 != CFStringGetTypeID() || !CFStringGetCString(v9, v13, 1024, 0x600u))
    {
      snprintf(v13, 0x400uLL, "%p <unable to get description>", *(a1 + 48));
    }

    CFRelease(v9);
  }

  else
  {
    snprintf(v13, 0x400uLL, "%p <unable to get description>", *(a1 + 48));
  }

LABEL_24:
  snprintf(cStr, 0x800uLL, "vImageCVFormatRef %p:\n\ttype: '%c%c%c%c'\n\tmatrix: %s\n\tchroma location: %s\n\tRGB base colorspace: %s\n", a1, (v2 >> 24), (v2 << 8 >> 24), (v2 >> 8), v2, __str, buffer, v13);
  result = CFStringCreateWithCString(0, cStr, 0x600u);
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CVImageFormat_Create(int a1, uint64_t a2, const __CFString *a3, CGColorSpace *a4, int a5)
{
  v5 = a2;
  v7 = 0;
  v8 = 1.0;
  if (a1 > 1278226535)
  {
    if (a1 <= 1714696751)
    {
      if (a1 > 1380410944)
      {
        if (a1 <= 1647392358)
        {
          if (a1 == 1380410945)
          {
            v12 = 0;
            v13 = 0;
            v15 = 0;
            v16 = 0;
            v17 = 0;
            v18 = 0;
            v19 = 0;
            v20 = 0;
            if (a5)
            {
              v14 = 8453;
            }

            else
            {
              v14 = 8451;
            }

            v30 = 1;
            v42 = 128;
            v22 = 32;
            v29 = 4;
            v41 = 24;
            v11 = 17;
            v10 = 3;
            v9 = 2;
            v34 = 864026624;
            v26 = 0xFFF0000000000000;
            v23 = INFINITY;
            v27 = 0.0;
            v28 = 1.0;
            v31 = INFINITY;
            *&v32 = 0.0;
            v33 = 1.0;
            v35 = INFINITY;
            v36 = 0xFFF0000000000000;
            v37 = 0.0;
            v38 = 1.0;
            v39 = INFINITY;
            v40 = 0.0;
            v7 = 0xFFF0000000000000;
            v43 = 1;
            v25 = 1;
            v45 = 1;
            v24 = 128;
            v21 = 1;
            if (_MergedGlobals_1 == -1)
            {
              goto LABEL_151;
            }

            goto LABEL_75;
          }

          if (a1 != 1380411457)
          {
            if (a1 == 1630697081)
            {
              v13 = 0;
              a5 = 0;
              v14 = 0;
              v16 = 0;
              v18 = 0;
              v17 = 16;
              v24 = 32;
              v45 = 1;
              v43 = 2;
              v42 = 24;
              v22 = 8;
              v29 = 4;
              v41 = 19;
              v11 = 17;
              v10 = 23;
              v9 = 20;
              v30 = 22;
              v27 = 16.0;
              v34 = 969775719;
              *&v32 = 128.0;
              v28 = 235.0;
              v23 = 255.0;
              v8 = 240.0;
              v26 = 0;
              v31 = 255.0;
              v33 = 240.0;
              v35 = 255.0;
              v36 = 0;
              v37 = 0.0;
              v38 = 255.0;
              v39 = 255.0;
              v40 = 128.0;
              v12 = 17;
              v25 = 2;
              v15 = 1;
              v19 = 1;
              v20 = 1;
              v21 = 1;
              if (_MergedGlobals_1 != -1)
              {
                goto LABEL_75;
              }

              goto LABEL_151;
            }

            goto LABEL_94;
          }

          v12 = 0;
          v13 = 0;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = 0;
          v20 = 0;
          if (a5)
          {
            v14 = 8453;
          }

          else
          {
            v14 = 8451;
          }

          v30 = 1;
          v42 = 64;
          v22 = 16;
          v29 = 4;
          v41 = 24;
          v11 = 17;
          v10 = 3;
          v9 = 2;
          v34 = 864026624;
          v26 = 0xFFF0000000000000;
          v23 = INFINITY;
          v27 = 0.0;
          v28 = 1.0;
          v31 = INFINITY;
          *&v32 = 0.0;
          v33 = 1.0;
          v35 = INFINITY;
          v36 = 0xFFF0000000000000;
          v37 = 0.0;
          v38 = 1.0;
          v39 = INFINITY;
          v40 = 0.0;
          v7 = 0xFFF0000000000000;
          goto LABEL_128;
        }

        if (a1 != 1647392359)
        {
          if (a1 == 1647522401)
          {
            v10 = 0;
            v11 = 0;
            v12 = 0;
            v13 = 0;
            v15 = 0;
            v16 = 0;
            v17 = 0;
            v18 = 0;
            v19 = 0;
            v20 = 0;
            if (a5)
            {
              v14 = 12294;
            }

            else
            {
              v14 = 12292;
            }

            v9 = 1;
            v42 = 32;
            v22 = 16;
            v29 = 2;
            v41 = 24;
            v26 = 0;
            v30 = 17;
            v27 = 0.0;
            v34 = 902614426;
            *&v32 = 0.0;
            v33 = 0.0;
            v8 = 65535.0;
            v23 = 65535.0;
            v35 = 0.0;
            v28 = 65535.0;
            v36 = 0;
            v31 = 65535.0;
            v37 = 0.0;
            v38 = 0.0;
            v39 = 0.0;
            goto LABEL_183;
          }

          if (a1 == 1647589490)
          {
            v11 = 0;
            v12 = 0;
            v13 = 0;
            a5 = 0;
            v15 = 0;
            v16 = 0;
            v17 = 0;
            v18 = 0;
            v19 = 0;
            v20 = 0;
            v21 = 0;
            v30 = 1;
            v42 = 48;
            v22 = 16;
            v14 = 12288;
            v41 = 24;
            v10 = 3;
            v9 = 2;
            v34 = 902614426;
            v8 = 65535.0;
            v26 = 0;
            v23 = 65535.0;
            v27 = 0.0;
            v28 = 65535.0;
            v31 = 65535.0;
            *&v32 = 0.0;
            v33 = 65535.0;
            v36 = 0;
            v35 = 65535.0;
            v37 = 0.0;
            v38 = 0.0;
            v39 = 0.0;
            v40 = 0.0;
            v29 = 3;
            v43 = 1;
            v25 = 1;
            v45 = 1;
            v24 = 48;
            if (_MergedGlobals_1 != -1)
            {
              goto LABEL_75;
            }

            goto LABEL_151;
          }

          goto LABEL_94;
        }

        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        a5 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v26 = 0;
        v30 = 1;
        v27 = 0.0;
        v22 = 16;
        v28 = 0.0;
        v14 = 12288;
        v41 = 24;
        v31 = 0.0;
        *&v32 = 0.0;
        v34 = 902614426;
        v33 = 0.0;
        v8 = 65535.0;
        v35 = 0.0;
        v23 = 65535.0;
        v36 = 0;
        v37 = 0.0;
        v38 = 0.0;
        v39 = 0.0;
        v29 = 1;
        v42 = 16;
LABEL_126:
        v40 = 0.0;
        goto LABEL_139;
      }

      if (a1 <= 1278555700)
      {
        if (a1 != 1278226536)
        {
          if (a1 != 1278555445)
          {
            goto LABEL_94;
          }

LABEL_91:
          v11 = 0;
          v12 = 0;
          v13 = 0;
          a5 = 0;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = 0;
          v20 = 0;
          v8 = 31.0;
          v23 = 31.0;
          v26 = 0;
          v30 = 1;
          v27 = 0.0;
          v42 = 16;
          v28 = 31.0;
          v22 = 5;
          v14 = 6;
          v31 = 31.0;
          v41 = 24;
          *&v32 = 0.0;
          v10 = 3;
          v33 = 31.0;
          v9 = 2;
          v35 = 31.0;
          v34 = 995321869;
          v36 = 0;
          v37 = 0.0;
          v38 = 0.0;
          v39 = 0.0;
          v29 = 3;
          goto LABEL_145;
        }

        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        a5 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v30 = 1;
        v26 = 0;
        v22 = 16;
        v27 = 0.0;
        v14 = 4352;
        v28 = 0.0;
        v34 = 864026624;
        v31 = 0.0;
        *&v32 = 0.0;
        v7 = 0xFFF0000000000000;
        v33 = 0.0;
        v23 = INFINITY;
        v35 = 0.0;
        v36 = 0;
        v37 = 0.0;
        v38 = 0.0;
        v39 = 0.0;
        v41 = 1;
        v29 = 1;
        v40 = 0.0;
        v42 = 16;
        goto LABEL_139;
      }

      if (a1 != 1278555701)
      {
        if (a1 == 1378955371)
        {
          v12 = 0;
          v13 = 0;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = 0;
          v20 = 0;
          v30 = 1;
          v42 = 32;
          v22 = 10;
          v14 = 5;
          v29 = 4;
          v41 = 24;
          v11 = 17;
          v10 = 3;
          v9 = 2;
          v38 = 3.0;
          v34 = 952958989;
          v8 = 1023.0;
          v23 = 1023.0;
          v26 = 0;
          v27 = 0.0;
          v28 = 1023.0;
          v31 = 1023.0;
          *&v32 = 0.0;
          v33 = 1023.0;
          v35 = 1023.0;
          v36 = 0;
          v37 = 0.0;
          v39 = 3.0;
          v40 = 0.0;
          a5 = 1;
          goto LABEL_184;
        }

        if (a1 == 1380401729)
        {
          v12 = 0;
          v13 = 0;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = 0;
          v20 = 0;
          v10 = 3;
          if (a5)
          {
            v14 = 5;
          }

          else
          {
            v14 = 3;
          }

          v30 = 1;
          v42 = 32;
          v22 = 8;
          v29 = 4;
          v41 = 24;
          v11 = 17;
          v9 = 2;
          goto LABEL_182;
        }

        goto LABEL_94;
      }

LABEL_80:
      v11 = 0;
      v12 = 0;
      v13 = 0;
      a5 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v30 = 1;
      v8 = 31.0;
      v42 = 16;
      v23 = 31.0;
      v22 = 5;
      v26 = 0;
      v41 = 24;
      v10 = 3;
      v27 = 0.0;
      v9 = 2;
      *&v32 = 0.0;
      v33 = 31.0;
      v34 = 986713345;
      v35 = 31.0;
      v28 = 63.0;
      v36 = 0;
      v31 = 63.0;
      v37 = 0.0;
      v38 = 0.0;
      v39 = 0.0;
      v29 = 3;
      goto LABEL_126;
    }

    if (a1 > 1983131951)
    {
      if (a1 <= 2033463855)
      {
        if (a1 == 1983131952)
        {
          v11 = 0;
          v12 = 0;
          v13 = 0;
          a5 = 0;
          v14 = 0;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v20 = 0;
          v21 = 0;
          v43 = 1;
          v42 = 32;
          v22 = 10;
          v29 = 3;
          v41 = 19;
          v10 = 22;
          v9 = 20;
          v30 = 23;
          v34 = 952958989;
          *&v32 = 512.0;
          v28 = 940.0;
          v27 = 64.0;
          v23 = 1023.0;
          v8 = 960.0;
          v26 = 0;
          v31 = 1023.0;
          v33 = 960.0;
          v35 = 1023.0;
          v36 = 0;
          v37 = 0.0;
          v38 = 0.0;
          v39 = 0.0;
          v40 = 512.0;
          v25 = 1;
          v45 = 1;
          v24 = 32;
          v19 = 1;
          if (_MergedGlobals_1 != -1)
          {
            goto LABEL_75;
          }

          goto LABEL_151;
        }

        if (a1 != 2033463352)
        {
          if (a1 != 2033463606)
          {
            goto LABEL_94;
          }

          v12 = 0;
          v13 = 0;
          a5 = 0;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v20 = 0;
          v43 = 1;
          v42 = 64;
          v22 = 16;
          v14 = 4096;
          v29 = 4;
          v41 = 19;
          v11 = 23;
          v10 = 22;
          v9 = 20;
          v30 = 17;
          v34 = 902614426;
          v33 = 61440.0;
          *&v32 = 32768.0;
          v28 = 60160.0;
          v27 = 4096.0;
          v8 = 65535.0;
          v23 = 65535.0;
          v26 = 0;
          v31 = 65535.0;
          v35 = 65535.0;
          v36 = 0;
          v37 = 32768.0;
          v38 = 61440.0;
          v39 = 65535.0;
          v40 = 0.0;
          v25 = 1;
          v45 = 1;
          v24 = 64;
LABEL_99:
          v19 = 1;
          v21 = 1;
          if (_MergedGlobals_1 != -1)
          {
            goto LABEL_75;
          }

          goto LABEL_151;
        }

        v12 = 0;
        v13 = 0;
        a5 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v20 = 0;
        v43 = 1;
        v42 = 32;
        v22 = 8;
        v29 = 4;
        v41 = 19;
        v11 = 23;
        v10 = 22;
        v9 = 20;
        v30 = 17;
        v27 = 16.0;
        v34 = 969775719;
        v33 = 240.0;
        *&v32 = 128.0;
        v28 = 235.0;
        v8 = 255.0;
        v23 = 255.0;
        v26 = 0;
        goto LABEL_97;
      }

      if (a1 != 2033463856)
      {
        if (a1 == 2037741158)
        {
          v11 = 0;
          v12 = 0;
          v13 = 0;
          a5 = 0;
          v14 = 0;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v21 = 0;
          v24 = 32;
          v25 = 2;
          v43 = 1;
          v42 = 16;
          v22 = 8;
          v29 = 3;
          v41 = 19;
          v10 = 23;
          v9 = 22;
          v30 = 20;
          v34 = 969775719;
          v27 = 128.0;
          v8 = 255.0;
          v23 = 255.0;
          v26 = 0;
          v28 = 255.0;
          v31 = 255.0;
          v36 = 0;
          *&v32 = 128.0;
          v37 = 0.0;
          v33 = 255.0;
          v35 = 255.0;
          v38 = 0.0;
          v39 = 0.0;
          v40 = 0.0;
        }

        else
        {
          if (a1 != 2037741171)
          {
            goto LABEL_94;
          }

          v11 = 0;
          v12 = 0;
          v13 = 0;
          a5 = 0;
          v14 = 0;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v21 = 0;
          v24 = 32;
          v25 = 2;
          v43 = 1;
          v42 = 16;
          v22 = 8;
          v29 = 3;
          v41 = 19;
          v40 = 16.0;
          v10 = 23;
          v9 = 22;
          v30 = 20;
          v34 = 969775719;
          v28 = 240.0;
          v27 = 128.0;
          v23 = 255.0;
          v8 = 235.0;
          v26 = 0;
          v31 = 255.0;
          *&v32 = 128.0;
          v36 = 0;
          v33 = 240.0;
          v35 = 255.0;
          v37 = 0.0;
          v38 = 0.0;
          v39 = 0.0;
        }

        goto LABEL_149;
      }

      v11 = 0;
      a5 = 0;
      v14 = 0;
      v21 = 0;
      v24 = 32;
      v15 = 1;
      v25 = 2;
      v42 = 12;
      v22 = 8;
      v29 = 3;
      v40 = 16.0;
      v10 = 23;
      v9 = 22;
      v30 = 20;
      v34 = 969775719;
      v28 = 240.0;
      v27 = 128.0;
      v23 = 255.0;
      v8 = 235.0;
      v26 = 0;
      v31 = 255.0;
      *&v32 = 128.0;
      v33 = 240.0;
      v35 = 255.0;
      v36 = 0;
      v37 = 0.0;
      v38 = 0.0;
      v39 = 0.0;
    }

    else
    {
      if (a1 > 1983000885)
      {
        if (a1 == 1983000886)
        {
          v11 = 0;
          v12 = 0;
          v13 = 0;
          a5 = 0;
          v14 = 0;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v21 = 0;
          v24 = 64;
          v25 = 2;
          v43 = 1;
          v42 = 32;
          v22 = 16;
          v29 = 3;
          v41 = 19;
          v10 = 23;
          v9 = 20;
          v30 = 22;
          v34 = 902614426;
          *&v32 = 32768.0;
          v28 = 60160.0;
          v27 = 4096.0;
          v23 = 65535.0;
          *&v44 = 61440.0;
LABEL_148:
          v8 = *&v44;
          v26 = 0;
          v31 = v23;
          v33 = *&v44;
          v35 = v23;
          v36 = 0;
          v37 = 0.0;
          v38 = 0.0;
          v39 = 0.0;
          v40 = *&v32;
LABEL_149:
          v45 = 1;
          goto LABEL_150;
        }

        if (a1 == 1983066168)
        {
          v11 = 0;
          v12 = 0;
          v13 = 0;
          a5 = 0;
          v14 = 0;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v20 = 0;
          v21 = 0;
          v43 = 1;
          v42 = 24;
          v22 = 8;
          v29 = 3;
          v41 = 19;
          v10 = 22;
          v9 = 20;
          v30 = 23;
          v27 = 16.0;
          v34 = 969775719;
          *&v32 = 128.0;
          v28 = 235.0;
          v23 = 255.0;
          v8 = 240.0;
          v26 = 0;
          v31 = 255.0;
          v33 = 240.0;
          v35 = 255.0;
          v36 = 0;
          v37 = 0.0;
          v38 = 0.0;
          v39 = 0.0;
          v40 = 128.0;
          v25 = 1;
          v45 = 1;
          v24 = 24;
          v19 = 1;
          if (_MergedGlobals_1 != -1)
          {
            goto LABEL_75;
          }

          goto LABEL_151;
        }

        if (a1 != 1983131704)
        {
          goto LABEL_94;
        }

        v12 = 0;
        v13 = 0;
        a5 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v20 = 0;
        v43 = 1;
        v42 = 32;
        v22 = 8;
        v29 = 4;
        v41 = 19;
        v11 = 17;
        v10 = 23;
        v9 = 20;
        v30 = 22;
        v27 = 16.0;
        v34 = 969775719;
        *&v32 = 128.0;
        v28 = 235.0;
        v23 = 255.0;
        v8 = 240.0;
        v26 = 0;
        v31 = 255.0;
        v33 = 240.0;
        v35 = 255.0;
        v36 = 0;
        v37 = 16.0;
        v38 = 235.0;
        v39 = 255.0;
        v40 = 128.0;
        goto LABEL_98;
      }

      if (a1 != 1714696752)
      {
        if (a1 != 1916022840)
        {
          if (a1 != 1983000880)
          {
            goto LABEL_94;
          }

          v11 = 0;
          v12 = 0;
          v13 = 0;
          a5 = 0;
          v14 = 0;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v21 = 0;
          v24 = 128;
          v25 = 6;
          v43 = 1;
          v42 = 32;
          v22 = 16;
          v29 = 3;
          v41 = 19;
          v10 = 22;
          v9 = 20;
          v30 = 23;
          v34 = 952958989;
          *&v32 = 512.0;
          v28 = 940.0;
          v27 = 64.0;
          v23 = 1023.0;
          *&v44 = 960.0;
          goto LABEL_148;
        }

        v12 = 0;
        v13 = 0;
        a5 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v20 = 0;
        v43 = 1;
        v42 = 32;
        v22 = 8;
        v29 = 4;
        v41 = 19;
        v11 = 23;
        v10 = 22;
        v9 = 20;
        v30 = 17;
        v34 = 969775719;
        v33 = 240.0;
        *&v32 = 128.0;
        v28 = 219.0;
        v8 = 255.0;
        v23 = 255.0;
        v26 = 0;
        v27 = 0.0;
LABEL_97:
        v31 = 255.0;
        v35 = 255.0;
        v36 = 0;
        v37 = 128.0;
        v38 = 240.0;
        v39 = 255.0;
        v40 = 0.0;
LABEL_98:
        v25 = 1;
        v45 = 1;
        v24 = 32;
        goto LABEL_99;
      }

      v11 = 0;
      a5 = 0;
      v14 = 0;
      v21 = 0;
      v24 = 32;
      v15 = 1;
      v25 = 2;
      v42 = 24;
      v22 = 8;
      v29 = 3;
      v10 = 23;
      v9 = 22;
      v30 = 20;
      v34 = 969775719;
      v27 = 128.0;
      v8 = 255.0;
      v23 = 255.0;
      v26 = 0;
      v28 = 255.0;
      v31 = 255.0;
      *&v32 = 128.0;
      v33 = 255.0;
      v35 = 255.0;
      v36 = 0;
      v37 = 0.0;
      v38 = 0.0;
      v39 = 0.0;
      v40 = 0.0;
    }

    v41 = 20;
    v12 = 22;
    v13 = 23;
    v43 = 3;
    v45 = 2;
    v16 = 1;
    v17 = 8;
    v18 = 8;
    goto LABEL_150;
  }

  if (a1 > 843264055)
  {
    if (a1 <= 892679472)
    {
      if (a1 <= 846624120)
      {
        if (a1 != 843264056)
        {
          if (a1 != 843264102)
          {
            if (a1 == 843264104)
            {
              v10 = 0;
              v11 = 0;
              v12 = 0;
              v13 = 0;
              a5 = 0;
              v15 = 0;
              v16 = 0;
              v17 = 0;
              v18 = 0;
              v19 = 0;
              v20 = 0;
              v30 = 1;
              v42 = 32;
              v22 = 16;
              v14 = 4352;
              v41 = 24;
              v9 = 2;
              v27 = 0.0;
              v34 = 864026624;
              v28 = 1.0;
              v26 = 0xFFF0000000000000;
              *&v32 = 0.0;
              v33 = 0.0;
              v23 = INFINITY;
              v31 = INFINITY;
              v35 = 0.0;
              v36 = 0;
              v37 = 0.0;
              v38 = 0.0;
              v39 = 0.0;
              v40 = 0.0;
              v7 = 0xFFF0000000000000;
              v29 = 2;
              goto LABEL_184;
            }

            goto LABEL_94;
          }

          v10 = 0;
          v11 = 0;
          v12 = 0;
          v13 = 0;
          a5 = 0;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = 0;
          v20 = 0;
          v30 = 1;
          v42 = 64;
          v22 = 32;
          v14 = 8448;
          v41 = 24;
          v9 = 2;
          v27 = 0.0;
          v34 = 864026624;
          v28 = 1.0;
          v26 = 0xFFF0000000000000;
          *&v32 = 0.0;
          v33 = 0.0;
          v23 = INFINITY;
          v31 = INFINITY;
          v35 = 0.0;
          v36 = 0;
          v37 = 0.0;
          v38 = 0.0;
          v39 = 0.0;
          v40 = 0.0;
          v7 = 0xFFF0000000000000;
          v29 = 2;
LABEL_128:
          v43 = 1;
          v25 = 1;
          v45 = 1;
          v24 = 64;
          v21 = 1;
          if (_MergedGlobals_1 != -1)
          {
            goto LABEL_75;
          }

          goto LABEL_151;
        }

        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        a5 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v30 = 1;
        v42 = 16;
        v22 = 8;
        v41 = 24;
        v26 = 0;
        v9 = 2;
        v27 = 0.0;
        v34 = 969775719;
        *&v32 = 0.0;
        v33 = 0.0;
        v8 = 255.0;
        v23 = 255.0;
        v35 = 0.0;
        v28 = 255.0;
        v36 = 0;
        v31 = 255.0;
        v37 = 0.0;
        v38 = 0.0;
        v39 = 0.0;
        v40 = 0.0;
        v29 = 2;
LABEL_139:
        v43 = 1;
        v25 = 1;
        v45 = 1;
        v24 = 16;
        if (_MergedGlobals_1 != -1)
        {
          goto LABEL_75;
        }

        goto LABEL_151;
      }

      if (a1 != 846624121)
      {
        if (a1 == 875704422)
        {
          v11 = 0;
          v13 = 0;
          a5 = 0;
          v14 = 0;
          v16 = 0;
          v18 = 0;
          v21 = 0;
          v17 = 16;
          v15 = 1;
          v43 = 2;
          v42 = 12;
          v22 = 8;
          v29 = 3;
          v12 = 21;
          v10 = 23;
          v9 = 22;
          v30 = 20;
          v34 = 969775719;
          v27 = 128.0;
          v8 = 255.0;
          v23 = 255.0;
          v26 = 0;
          v28 = 255.0;
          v31 = 255.0;
          *&v32 = 128.0;
          v33 = 255.0;
          v35 = 255.0;
          v36 = 0;
          v37 = 0.0;
          v38 = 0.0;
          v39 = 0.0;
          v40 = 0.0;
          v41 = 20;
          v25 = 2;
          v45 = 2;
          v24 = 8;
        }

        else
        {
          if (a1 != 875704438)
          {
            goto LABEL_94;
          }

          v11 = 0;
          v13 = 0;
          a5 = 0;
          v14 = 0;
          v16 = 0;
          v18 = 0;
          v21 = 0;
          v17 = 16;
          v24 = 32;
          v15 = 1;
          v43 = 2;
          v42 = 12;
          v22 = 8;
          v29 = 3;
          v12 = 21;
          v40 = 16.0;
          v10 = 23;
          v9 = 22;
          v30 = 20;
          v34 = 969775719;
          v28 = 240.0;
          v27 = 128.0;
          v23 = 255.0;
          v8 = 235.0;
          v26 = 0;
          v31 = 255.0;
          *&v32 = 128.0;
          v33 = 240.0;
          v35 = 255.0;
          v36 = 0;
          v37 = 0.0;
          v38 = 0.0;
          v39 = 0.0;
          v41 = 20;
          v25 = 2;
          v45 = 2;
        }

LABEL_150:
        v19 = 1;
        v20 = 1;
        if (_MergedGlobals_1 != -1)
        {
          goto LABEL_75;
        }

        goto LABEL_151;
      }

      v11 = 0;
      v12 = 0;
      v13 = 0;
      a5 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v21 = 0;
      v24 = 32;
      v25 = 2;
      v43 = 1;
      v42 = 16;
      v22 = 8;
      v29 = 3;
      v41 = 19;
      v10 = 23;
      v9 = 20;
      v30 = 22;
      v27 = 16.0;
      v34 = 969775719;
      *&v32 = 128.0;
      v28 = 235.0;
      v23 = 255.0;
      *&v44 = 240.0;
      goto LABEL_148;
    }

    if (a1 > 1111970368)
    {
      switch(a1)
      {
        case 1111970369:
          v12 = 0;
          v13 = 0;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = 0;
          v20 = 0;
          if (a5)
          {
            v14 = 8198;
          }

          else
          {
            v14 = 8196;
          }

          v10 = 1;
          v42 = 32;
          v22 = 8;
          v29 = 4;
          v41 = 24;
          v11 = 17;
          v9 = 2;
          v30 = 3;
          goto LABEL_182;
        case 1278226488:
          v9 = 0;
          v10 = 0;
          v11 = 0;
          v12 = 0;
          v13 = 0;
          a5 = 0;
          v14 = 0;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v26 = 0;
          v27 = 0.0;
          v30 = 1;
          v28 = 0.0;
          v22 = 8;
          v31 = 0.0;
          v34 = 969775719;
          *&v32 = 0.0;
          v33 = 0.0;
          v8 = 255.0;
          v23 = 255.0;
          v35 = 0.0;
          v36 = 0;
          v37 = 0.0;
          v38 = 0.0;
          v39 = 0.0;
          v41 = 1;
          v29 = 1;
          v42 = 8;
          v40 = 0.0;
          v43 = 1;
          v25 = 1;
          v45 = 1;
          v24 = 8;
          if (_MergedGlobals_1 != -1)
          {
            goto LABEL_75;
          }

          goto LABEL_151;
        case 1278226534:
          v9 = 0;
          v10 = 0;
          v11 = 0;
          v12 = 0;
          v13 = 0;
          a5 = 0;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v30 = 1;
          v26 = 0;
          v22 = 32;
          v27 = 0.0;
          v14 = 8448;
          v28 = 0.0;
          v34 = 864026624;
          v31 = 0.0;
          *&v32 = 0.0;
          v7 = 0xFFF0000000000000;
          v33 = 0.0;
          v23 = INFINITY;
          v35 = 0.0;
          v36 = 0;
          v37 = 0.0;
          v38 = 0.0;
          v39 = 0.0;
          v41 = 1;
          v29 = 1;
          v40 = 0.0;
          v42 = 32;
          v43 = 1;
          v25 = 1;
          v45 = 1;
          v24 = 32;
          if (_MergedGlobals_1 != -1)
          {
            goto LABEL_75;
          }

          goto LABEL_151;
      }

      goto LABEL_94;
    }

    if (a1 == 892679473)
    {
      v12 = 0;
      v13 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v38 = 1.0;
      v8 = 31.0;
      if (a5)
      {
        v14 = 4101;
      }

      else
      {
        v14 = 4099;
      }

      v23 = 31.0;
      v30 = 1;
      v26 = 0;
      v42 = 16;
      v27 = 0.0;
      v22 = 5;
      v29 = 4;
      v28 = 31.0;
      v41 = 24;
      v31 = 31.0;
      v11 = 17;
      *&v32 = 0.0;
      v10 = 3;
      v9 = 2;
      v33 = 31.0;
      v35 = 31.0;
      v34 = 969775719;
      v36 = 0;
      v37 = 0.0;
      v39 = 1.0;
LABEL_145:
      v43 = 1;
      v40 = 0.0;
      v25 = 1;
      v45 = 1;
      v24 = 16;
      v21 = 1;
      if (_MergedGlobals_1 != -1)
      {
        goto LABEL_75;
      }

      goto LABEL_151;
    }

    if (a1 == 1094862674)
    {
      v12 = 0;
      v13 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      if (a5)
      {
        v14 = 8197;
      }

      else
      {
        v14 = 8195;
      }

      v11 = 1;
      v42 = 32;
      v22 = 8;
      v29 = 4;
      v41 = 24;
      v10 = 2;
      v9 = 3;
      goto LABEL_134;
    }

    if (a1 != 1110783541)
    {
LABEL_94:
      LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImageCVImageFormat.c", 1176, "vImageCVImageFormat_Create failed: unknown CVPixelFormatType: '%c%c%c%c' (0x%8.8x)\n", HIBYTE(a1), BYTE2(a1), BYTE1(a1), a1, a1);
      return 0;
    }

    goto LABEL_80;
  }

  if (a1 <= 15)
  {
    if (a1 > 3)
    {
      if (a1 != 4 && a1 != 8)
      {
        goto LABEL_94;
      }
    }

    else
    {
      if (a1 == 1)
      {
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        a5 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v23 = 1.0;
        v26 = 0;
        v27 = 0.0;
        v28 = 0.0;
        v31 = 0.0;
        v24 = 8;
        *&v32 = 0.0;
        v25 = 1;
        v33 = 0.0;
        v34 = 969775719;
        v35 = 0.0;
        v36 = 0;
        v37 = 0.0;
        v38 = 0.0;
        v39 = 0.0;
        v30 = 1;
        v41 = 1;
        v29 = 1;
        v40 = 0.0;
        v22 = 1;
        v42 = 1;
        v43 = 1;
        v45 = 1;
        if (_MergedGlobals_1 != -1)
        {
          goto LABEL_75;
        }

        goto LABEL_151;
      }

      if (a1 != 2)
      {
        goto LABEL_94;
      }
    }

    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    a5 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v8 = (a1 - 1);
    v24 = 8;
    v25 = 8u / a1;
    v29 = 1;
    v26 = 0;
    v27 = 0.0;
    v28 = 0.0;
    v30 = 18;
    v34 = 969775719;
    v31 = 0.0;
    *&v32 = 0.0;
    v33 = 0.0;
    v23 = v8;
    v35 = 0.0;
    v36 = 0;
    v37 = 0.0;
    v38 = 0.0;
    v39 = 0.0;
    v41 = 18;
    v40 = 0.0;
    v22 = a1;
    v42 = a1;
LABEL_74:
    v43 = 1;
    v45 = 1;
    if (_MergedGlobals_1 != -1)
    {
      goto LABEL_75;
    }

    goto LABEL_151;
  }

  if (a1 > 0x28)
  {
    goto LABEL_87;
  }

  if (((1 << a1) & 0x11600000000) != 0)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    a5 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = a1 & 0xF;
    v23 = (v22 - 1);
    v24 = 8;
    v8 = 0.0;
    v25 = 8 / v22;
    v26 = 0;
    v27 = 0.0;
    v28 = 0.0;
    v29 = 1;
    v30 = 18;
    v31 = 0.0;
    *&v32 = 0.0;
    v33 = 0.0;
    v34 = 969775719;
    v35 = 0.0;
    v36 = 0;
    v37 = 0.0;
    v38 = 0.0;
    v39 = 0.0;
    v40 = v23;
    v41 = 18;
    v42 = v22;
    goto LABEL_74;
  }

  if (a1 != 24)
  {
    if (a1 == 32)
    {
      v12 = 0;
      v13 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v29 = 4;
      if (a5)
      {
        v14 = 6;
      }

      else
      {
        v14 = 4;
      }

      v9 = 1;
      v42 = 32;
      v22 = 8;
      v41 = 24;
      v11 = 3;
      v10 = 2;
LABEL_134:
      v30 = 17;
LABEL_182:
      v34 = 969775719;
      v8 = 255.0;
      v23 = 255.0;
      v26 = 0;
      v27 = 0.0;
      v28 = 255.0;
      v31 = 255.0;
      *&v32 = 0.0;
      v33 = 255.0;
      v35 = 255.0;
      v36 = 0;
      v37 = 0.0;
      v38 = 255.0;
      v39 = 255.0;
LABEL_183:
      v40 = 0.0;
LABEL_184:
      v43 = 1;
      v25 = 1;
      v45 = 1;
      v24 = 32;
      v21 = 1;
      if (_MergedGlobals_1 != -1)
      {
        goto LABEL_75;
      }

LABEL_151:
      if (qword_280AC1310)
      {
        goto LABEL_152;
      }

      return 0;
    }

LABEL_87:
    if (a1 != 16)
    {
      if (a1 == 842285639)
      {
        v11 = 0;
        v12 = 0;
        v13 = 0;
        a5 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v10 = 1;
        v42 = 24;
        v22 = 8;
        v41 = 25;
        v9 = 2;
        v30 = 3;
        v34 = 969775719;
        v8 = 255.0;
        v26 = 0;
        v23 = 255.0;
        v27 = 0.0;
        v28 = 255.0;
        v31 = 255.0;
        *&v32 = 0.0;
        v33 = 255.0;
        v36 = 0;
        v35 = 255.0;
        v37 = 0.0;
        v38 = 0.0;
        v39 = 0.0;
        v40 = 0.0;
        v29 = 3;
        v43 = 1;
        v25 = 1;
        v45 = 1;
        v24 = 24;
        if (_MergedGlobals_1 != -1)
        {
          goto LABEL_75;
        }

        goto LABEL_151;
      }

      goto LABEL_94;
    }

    goto LABEL_91;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  a5 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v24 = 24;
  v30 = 1;
  v22 = 8;
  v10 = 3;
  v9 = 2;
  v34 = 969775719;
  v8 = 255.0;
  v23 = 255.0;
  v26 = 0;
  v27 = 0.0;
  v28 = 255.0;
  v31 = 255.0;
  *&v32 = 0.0;
  v33 = 255.0;
  v35 = 255.0;
  v36 = 0;
  v37 = 0.0;
  v38 = 0.0;
  v39 = 0.0;
  v40 = 0.0;
  v41 = a1;
  v29 = 3;
  v42 = a1;
  v43 = 1;
  v25 = 1;
  v45 = 1;
  if (_MergedGlobals_1 == -1)
  {
    goto LABEL_151;
  }

LABEL_75:
  cfa = a3;
  v93 = v25;
  v95 = v24;
  v115 = a5;
  v117 = v18;
  v107 = v21;
  v109 = v19;
  v47 = v14;
  v87 = v10;
  v89 = v45;
  v48 = v22;
  v83 = v30;
  v85 = v9;
  v49 = v13;
  v111 = v20;
  v113 = v42;
  v79 = v29;
  v81 = v41;
  v103 = v43;
  v50 = v15;
  v105 = v34;
  v73 = v32;
  v75 = v26;
  v77 = v8;
  v51 = v33;
  v99 = v38;
  v101 = v35;
  v52 = v36;
  v53 = v37;
  v97 = v39;
  v91 = v40;
  CVImageFormat_Create_cold_1();
  v40 = v91;
  v39 = v97;
  v38 = v99;
  v37 = v53;
  v36 = v52;
  v35 = v101;
  v33 = v51;
  v26 = v75;
  v8 = v77;
  v32 = v73;
  v19 = v109;
  v20 = v111;
  v34 = v105;
  v15 = v50;
  v43 = v103;
  v29 = v79;
  v41 = v81;
  v30 = v83;
  v9 = v85;
  v42 = v113;
  a5 = v115;
  v13 = v49;
  v22 = v48;
  v10 = v87;
  v45 = v89;
  v14 = v47;
  v21 = v107;
  v18 = v117;
  v5 = a2;
  v25 = v93;
  v24 = v95;
  a3 = cfa;
  if (!qword_280AC1310)
  {
    return 0;
  }

LABEL_152:
  v90 = v45;
  v92 = v40;
  v94 = v25;
  v96 = v24;
  v98 = v39;
  v100 = v38;
  v74 = v37;
  v76 = v36;
  v102 = v35;
  v104 = v43;
  v78 = v33;
  v108 = v21;
  v110 = v19;
  v106 = v34;
  v54 = v29;
  v55 = v41;
  v112 = v20;
  v114 = v42;
  v56 = v30;
  v57 = v9;
  v80 = v14;
  v82 = v22;
  v58 = v10;
  v116 = a5;
  v118 = v18;
  v86 = v16;
  v88 = v17;
  v84 = v15;
  v59 = v13;
  cf = a3;
  v72 = v5;
  Instance = _CFRuntimeCreateInstance();
  v62 = Instance;
  if (!Instance)
  {
    return v62;
  }

  *(Instance + 16) = 0u;
  *(Instance + 32) = 0u;
  *(Instance + 48) = 0;
  *(Instance + 56) = v7;
  *(Instance + 64) = v92;
  *(Instance + 72) = v8;
  *(Instance + 80) = v23;
  *(Instance + 88) = v26;
  *(Instance + 96) = v27;
  *(Instance + 104) = v28;
  *(Instance + 112) = v31;
  *v61.i64 = v78;
  *(Instance + 120) = v76;
  *(Instance + 128) = *&v32;
  *(Instance + 136) = v78;
  *(Instance + 144) = v102;
  *(Instance + 152) = v76;
  *(Instance + 160) = v74;
  *(Instance + 168) = v100;
  *(Instance + 176) = v98;
  *(Instance + 184) = v56;
  *(Instance + 188) = v57;
  *(Instance + 192) = v58;
  *(Instance + 196) = v11;
  *(Instance + 200) = 0;
  *(Instance + 204) = v55;
  *(Instance + 208) = v12;
  *(Instance + 212) = v59;
  *(Instance + 216) = 0;
  *(Instance + 220) = a1;
  *(Instance + 224) = v54;
  *(Instance + 228) = v106;
  *(Instance + 248) = 0u;
  *(Instance + 232) = 0u;
  *(Instance + 264) = v116;
  *(Instance + 268) = v80;
  *(Instance + 272) = v82;
  *(Instance + 276) = v114;
  *(Instance + 280) = v104;
  *(Instance + 284) = v94;
  *(Instance + 288) = v90;
  *(Instance + 292) = v90;
  *(Instance + 296) = v84;
  *(Instance + 300) = v86;
  *(Instance + 304) = v96;
  *(Instance + 308) = v88;
  *(Instance + 312) = v118;
  *(Instance + 316) = v110;
  *(Instance + 320) = v112;
  *(Instance + 324) = v108;
  LODWORD(v120[0]) = -1;
  if (a4 && !VerifyColorSpace(a4, *(Instance + 220), v120))
  {
    goto LABEL_175;
  }

  v63 = *(v62 + 48);
  if (v63)
  {
    CGColorSpaceRelease(v63);
  }

  if (a4)
  {
    CGColorSpaceRetain(a4);
  }

  *(v62 + 48) = a4;
  if (LODWORD(v120[0]) == 5)
  {
    v65 = 18;
    v64 = v72;
  }

  else
  {
    v64 = v72;
    if (LODWORD(v120[0]))
    {
      goto LABEL_164;
    }

    v65 = 1;
  }

  *(v62 + 204) = v65;
  *(v62 + 184) = v65;
LABEL_164:
  v66 = *(v62 + 316);
  if (!v66)
  {
    goto LABEL_174;
  }

  if (kvImage_ARGBToYpCbCrMatrix_ITU_R_601_4 != v64 && kvImage_ARGBToYpCbCrMatrix_ITU_R_709_2 != v64 && v64 && kvImage_ARGBToYpCbCrMatrix_SMPTE_240M_1995 != v64)
  {
    if (v66 == 1)
    {
      v67 = *v64;
      v68 = *(v64 + 16);
      *(v62 + 248) = v68;
      *(v62 + 232) = v67;
      v120[0] = 0;
      v120[1] = 0;
      v121 = 0;
      if (!MatrixInverse_forward((v62 + 232), v120, *(v62 + 228), *&v68, v61))
      {
        LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImageCVImageFormat.c", 1772, "CVImageFormat_CopyConversionMatrix error: matrix is not invertible.  Did you perhaps pass in a CFStringRef instead of a vImage_ARGBToYpCbCrMatrix?\n");
        goto LABEL_175;
      }

      v64 = v62 + 232;
      goto LABEL_173;
    }

LABEL_175:
    CFRelease(v62);
    return 0;
  }

  if (v66 != 1)
  {
    goto LABEL_175;
  }

LABEL_173:
  *(v62 + 32) = v64;
LABEL_174:
  if (CVImageFormat_SetChromaSiting(v62, cf))
  {
    goto LABEL_175;
  }

  return v62;
}

uint64_t CVImageFormat_SetColorSpace(uint64_t a1, CGColorSpaceRef space)
{
  if (!a1)
  {
    return -21778;
  }

  v7 = -1;
  if (space && !VerifyColorSpace(space, *(a1 + 220), &v7))
  {
    return -21778;
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    CGColorSpaceRelease(v4);
  }

  if (space)
  {
    CGColorSpaceRetain(space);
  }

  *(a1 + 48) = space;
  if (v7 == 5)
  {
    v5 = 18;
    goto LABEL_13;
  }

  if (!v7)
  {
    v5 = 1;
LABEL_13:
    result = 0;
    *(a1 + 204) = v5;
    *(a1 + 184) = v5;
    return result;
  }

  return 0;
}

void CVImageFormat_Release(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t CVImageFormat_CopyConversionMatrix(uint64_t a1, __int128 *a2, int a3, double a4, double a5, float32x4_t a6)
{
  if (!a1)
  {
    return -21778;
  }

  if (!a3)
  {
    return 0;
  }

  if (*(a1 + 316) != a3)
  {
    return -21773;
  }

  v8 = kvImage_ARGBToYpCbCrMatrix_ITU_R_601_4 == a2 || kvImage_ARGBToYpCbCrMatrix_ITU_R_709_2 == a2;
  if (v8 || !a2 || kvImage_ARGBToYpCbCrMatrix_SMPTE_240M_1995 == a2)
  {
    if (a3 == 1)
    {
      *(a1 + 32) = a2;
      return 0;
    }

    return -21773;
  }

  if (a3 != 1)
  {
    return -21773;
  }

  v16 = v6;
  v17 = v7;
  v10 = a1 + 232;
  v11 = *a2;
  v12 = a2[1];
  *(a1 + 248) = v12;
  *(a1 + 232) = v11;
  v14[0] = 0;
  v14[1] = 0;
  v15 = 0;
  if (MatrixInverse_forward((a1 + 232), v14, *(a1 + 228), *&v12, a6))
  {
    result = 0;
    *(a1 + 32) = v10;
  }

  else
  {
    LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImageCVImageFormat.c", 1772, "CVImageFormat_CopyConversionMatrix error: matrix is not invertible.  Did you perhaps pass in a CFStringRef instead of a vImage_ARGBToYpCbCrMatrix?\n");
    return -21773;
  }

  return result;
}

uint64_t CVImageFormat_SetChromaSiting(uint64_t a1, const __CFString *cf)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (!cf || CFEqual(*MEMORY[0x277CC4BB0], cf) || CFEqual(*MEMORY[0x277CC4BA0], cf) || CFEqual(*MEMORY[0x277CC4BC0], cf) || CFEqual(*MEMORY[0x277CC4BB8], cf) || CFEqual(*MEMORY[0x277CC4B98], cf) || CFEqual(*MEMORY[0x277CC4B90], cf) || CFEqual(*MEMORY[0x277CC4BA8], cf))
    {
      if (*(a1 + 320))
      {
        v4 = *(a1 + 40);
        if (v4)
        {
          CFRelease(v4);
        }

        if (cf)
        {
          CFRetain(cf);
        }

        result = 0;
        *(a1 + 40) = cf;
        v6 = *MEMORY[0x277D85DE8];
      }

      else
      {
        result = 0;
        v8 = *MEMORY[0x277D85DE8];
      }
    }

    else
    {
      CFStringGetCString(cf, buffer, 256, 0x600u);
      LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImageCVImageFormat.c", 1707, "vImageCVImageFormat_SetChromaSiting error: Unknown siting name %s\n", buffer);
      result = -21773;
      v9 = *MEMORY[0x277D85DE8];
    }
  }

  else
  {
    result = -21778;
    v7 = *MEMORY[0x277D85DE8];
  }

  return result;
}

__CVBuffer *CVImageFormat_CreateWithCVPixelBuffer(CVPixelBufferRef pixelBuffer)
{
  v1 = pixelBuffer;
  if (!pixelBuffer)
  {
    return v1;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  v3 = PixelFormatType;
  v4 = 0;
  if (PixelFormatType > 1380410944)
  {
    if (PixelFormatType <= 1647719520)
    {
      if (PixelFormatType > 1630697080)
      {
        if (PixelFormatType == 1630697081)
        {
          goto LABEL_30;
        }

        v5 = 1647522401;
      }

      else
      {
        if (PixelFormatType == 1380410945)
        {
          goto LABEL_30;
        }

        v5 = 1380411457;
      }
    }

    else
    {
      if (PixelFormatType > 1983131703)
      {
        if (PixelFormatType != 1983131704 && PixelFormatType != 2033463352)
        {
          v5 = 2033463606;
          goto LABEL_29;
        }

LABEL_30:
        v6 = *MEMORY[0x277CBED28];
        v4 = v6 == CVBufferGetAttachment(v1, *MEMORY[0x277CC4B68], 0);
        goto LABEL_31;
      }

      if (PixelFormatType == 1647719521)
      {
        goto LABEL_30;
      }

      v5 = 1916022840;
    }

LABEL_29:
    if (PixelFormatType != v5)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (PixelFormatType > 1111970368)
  {
    if (PixelFormatType > 1378955370)
    {
      if (PixelFormatType != 1378955371)
      {
        v5 = 1380401729;
        goto LABEL_29;
      }
    }

    else
    {
      if (PixelFormatType == 1111970369)
      {
        goto LABEL_30;
      }

      if (PixelFormatType != 1278555445)
      {
        goto LABEL_31;
      }
    }

LABEL_26:
    v4 = 1;
    goto LABEL_31;
  }

  if (PixelFormatType > 892679472)
  {
    if (PixelFormatType == 892679473)
    {
      goto LABEL_30;
    }

    v5 = 1094862674;
    goto LABEL_29;
  }

  if (PixelFormatType == 16)
  {
    goto LABEL_26;
  }

  if (PixelFormatType == 32)
  {
    goto LABEL_30;
  }

LABEL_31:
  Attachment = CVBufferGetAttachment(v1, *MEMORY[0x277CC4B78], 0);
  if (!VerifyColorSpace(Attachment, v3, 0))
  {
    if (CVBufferGetAttachment(v1, *MEMORY[0x277CC4C88], 0))
    {
      Attachment = MEMORY[0x2383ADE50]();
      if (VerifyColorSpace(Attachment, v3, 0))
      {
        goto LABEL_33;
      }

      if (Attachment)
      {
        CGColorSpaceRelease(Attachment);
      }
    }

    Attachment = 0;
    if (v3 > 843264103)
    {
      if (v3 > 1647392358)
      {
        if (v3 == 1647392359)
        {
          goto LABEL_33;
        }

        v12 = 1647522401;
      }

      else
      {
        if ((v3 - 1278226488) <= 0x30 && ((1 << (v3 - 56)) & 0x1400000000001) != 0)
        {
          goto LABEL_33;
        }

        v12 = 843264104;
      }
    }

    else
    {
      if (v3 <= 0x28 && ((1 << v3) & 0x11600000116) != 0)
      {
        goto LABEL_33;
      }

      v12 = 843264102;
    }

    if (v3 == v12)
    {
      goto LABEL_33;
    }

    v16 = CVBufferGetAttachment(v1, *MEMORY[0x277CC4C00], 0);
    v17 = v16;
    if (v16)
    {
      if (CFEqual(v16, *MEMORY[0x277CC4C20]))
      {
        v18 = &CreateColorSpaceForCVPixelBuffer_itu709primaries;
LABEL_68:
        CreateColorSpaceForCVPixelBuffer_p = v18;
        goto LABEL_69;
      }

      if (CFEqual(v17, *MEMORY[0x277CC4C10]))
      {
        v18 = &CreateColorSpaceForCVPixelBuffer_EBU_3213primaries;
        goto LABEL_68;
      }

      if (CFEqual(v17, *MEMORY[0x277CC4C38]))
      {
        v18 = &CreateColorSpaceForCVPixelBuffer_SMPTEprimaries;
        goto LABEL_68;
      }

      if (CFEqual(v17, *MEMORY[0x277CC4C28]))
      {
        v18 = &CreateColorSpaceForCVPixelBuffer_GenericRGBprimaries;
        goto LABEL_68;
      }
    }

LABEL_69:
    v19 = CVBufferGetAttachment(v1, *MEMORY[0x277CC4CC0], 0);
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    if (v19 && ((v20 = v19, CFEqual(v19, *MEMORY[0x277CC4CD8])) || CFEqual(v20, *MEMORY[0x277CC4CE8])))
    {
      v21 = &CreateColorSpaceForCVPixelBuffer_apple709transferFunction;
    }

    else
    {
      v22 = CVBufferGetAttachment(v1, *MEMORY[0x277CC4C50], 0);
      if (!v22)
      {
LABEL_80:
        Attachment = 0;
        goto LABEL_33;
      }

      *&v24 = 0x3FF0000000000000;
      *(&v24 + 1) = 0x3FF0000000000000;
      *&v25 = 0;
      valuePtr = 0;
      CFNumberGetValue(v22, kCFNumberDoubleType, &valuePtr);
      *&v26 = valuePtr;
      *(&v26 + 1) = 0xFFF0000000000000;
      v27 = 0x3FF0000000000000uLL;
      v21 = &v24;
    }

    Attachment = 0;
    if (!v17)
    {
      goto LABEL_33;
    }

    if (!CreateColorSpaceForCVPixelBuffer_p)
    {
      goto LABEL_33;
    }

    Attachment = CreateRGBColorSpaceWithPrimariesAndTransferFunction(CreateColorSpaceForCVPixelBuffer_p, v21, 0, 0, 0);
    if (VerifyColorSpace(Attachment, v3, 0) || !Attachment)
    {
      goto LABEL_33;
    }

    CGColorSpaceRelease(Attachment);
    goto LABEL_80;
  }

  CGColorSpaceRetain(Attachment);
LABEL_33:
  v8 = CVBufferGetAttachment(v1, *MEMORY[0x277CC4D10], 0);
  v9 = v8;
  if (v8)
  {
    v10 = CFEqual(v8, *MEMORY[0x277CC4D28]);
    v11 = kvImage_ARGBToYpCbCrMatrix_ITU_R_709_2;
    if (CFEqual(v9, *MEMORY[0x277CC4D20]))
    {
      v9 = kvImage_ARGBToYpCbCrMatrix_ITU_R_601_4;
    }

    else
    {
      if (v10)
      {
        v13 = v11;
      }

      else
      {
        v13 = 0;
      }

      if (CFEqual(v9, *MEMORY[0x277CC4D30]))
      {
        v9 = kvImage_ARGBToYpCbCrMatrix_SMPTE_240M_1995;
      }

      else
      {
        v9 = v13;
      }
    }
  }

  v14 = CVBufferGetAttachment(v1, *MEMORY[0x277CC4B88], 0);
  v1 = CVImageFormat_Create(v3, v9, v14, Attachment, v4);
  CGColorSpaceRelease(Attachment);
  return v1;
}

void *CVImageFormat_Copy(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (_MergedGlobals_1 != -1)
  {
    CVImageFormat_Create_cold_1();
    if (qword_280AC1310)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (!qword_280AC1310)
  {
    return 0;
  }

LABEL_4:
  Instance = _CFRuntimeCreateInstance();
  v3 = Instance;
  if (!Instance)
  {
    return v3;
  }

  memcpy((Instance + 16), (a1 + 16), 0x138uLL);
  v3[2] = 0;
  v3[3] = 0;
  v4 = v3[6];
  if (v4)
  {
    CGColorSpaceRetain(v4);
  }

  v5 = v3[5];
  if (v5)
  {
    CFRetain(v5);
  }

  if (*(a1 + 32) != a1 + 232)
  {
    return v3;
  }

  v3[4] = v3 + 29;
  return v3;
}

CFTypeRef CVImageFormat_Retain(CFTypeRef cf)
{
  if (cf)
  {
    return CFRetain(cf);
  }

  return cf;
}

uint64_t CVImageFormat_GetFormatCode(uint64_t result)
{
  if (result)
  {
    return *(result + 220);
  }

  return result;
}

uint64_t CVImageFormat_GetChannelCount(uint64_t result)
{
  if (result)
  {
    return *(result + 224);
  }

  return result;
}

uint64_t CVImageFormat_GetChannelNames(uint64_t a1)
{
  if (a1)
  {
    return a1 + 184;
  }

  else
  {
    return 0;
  }
}

uint64_t CVImageFormat_GetColorSpace(uint64_t result)
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

uint64_t VerifyColorSpace(uint64_t result, int a2, _DWORD *a3)
{
  if (result)
  {
    if (a3)
    {
      *a3 = -1;
    }

    result = CGColorSpaceGetModel(result);
    if (a2 > 1278555444)
    {
      if (a2 <= 1714696751)
      {
        if (a2 <= 1380411456)
        {
          if (a2 > 1378955370)
          {
            if (a2 != 1378955371 && a2 != 1380401729)
            {
              v5 = 1380410945;
              goto LABEL_65;
            }

            goto LABEL_66;
          }

          if (a2 == 1278555445)
          {
            goto LABEL_66;
          }

          v5 = 1278555701;
        }

        else
        {
          if (a2 <= 1647522400)
          {
            if (a2 == 1380411457 || a2 == 1630697081)
            {
              goto LABEL_66;
            }

            if (a2 != 1647392359)
            {
LABEL_69:
              LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImageCVImageFormat.c", 1315, "vImageCVImageFormatRef error: unknown image format '%c%c%c%c' (0x%8.8x)\n", HIBYTE(a2), BYTE2(a2), BYTE1(a2), a2, a2);
              return 0;
            }

            return !result;
          }

          if (a2 == 1647522401)
          {
            return !result;
          }

          if (a2 == 1647589490)
          {
            goto LABEL_66;
          }

          v5 = 1647719521;
        }
      }

      else if (a2 > 1983131951)
      {
        if (a2 <= 2033463855)
        {
          if (a2 != 1983131952 && a2 != 2033463352)
          {
            v5 = 2033463606;
            goto LABEL_65;
          }

          goto LABEL_66;
        }

        if (a2 == 2033463856 || a2 == 2037741158)
        {
          goto LABEL_66;
        }

        v5 = 2037741171;
      }

      else
      {
        if (a2 <= 1983000885)
        {
          if (a2 != 1714696752 && a2 != 1916022840)
          {
            v5 = 1983000880;
            goto LABEL_65;
          }

          goto LABEL_66;
        }

        if (a2 == 1983000886 || a2 == 1983066168)
        {
          goto LABEL_66;
        }

        v5 = 1983131704;
      }
    }

    else if (a2 <= 843264055)
    {
      if (a2 <= 0x28)
      {
        if (((1 << a2) & 0x116) != 0)
        {
          if (result != 5 && result)
          {
            return 0;
          }

          if (a3)
          {
            *a3 = result;
          }

          return 1;
        }

        if (((1 << a2) & 0x11600000000) != 0)
        {
          return result == 5;
        }

        if (((1 << a2) & 0x101010000) != 0)
        {
          goto LABEL_66;
        }
      }

      v5 = 842285639;
    }

    else
    {
      if (a2 > 892679472)
      {
        if (a2 > 1111970368)
        {
          if ((a2 - 1278226488) > 0x30 || ((1 << (a2 - 56)) & 0x1400000000001) == 0)
          {
            v5 = 1111970369;
            goto LABEL_65;
          }

          return !result;
        }

        if (a2 != 892679473 && a2 != 1094862674)
        {
          v5 = 1110783541;
          goto LABEL_65;
        }

LABEL_66:
        if (result == 1)
        {
          return result;
        }

        return 0;
      }

      if (a2 <= 846624120)
      {
        if ((a2 - 843264056) > 0x30 || ((1 << (a2 - 56)) & 0x1400000000001) == 0)
        {
          goto LABEL_69;
        }

        return !result;
      }

      if (a2 == 846624121 || a2 == 875704422)
      {
        goto LABEL_66;
      }

      v5 = 875704438;
    }

LABEL_65:
    if (a2 == v5)
    {
      goto LABEL_66;
    }

    goto LABEL_69;
  }

  return result;
}

uint64_t CVImageFormat_GetChromaSiting(uint64_t result)
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

uint64_t CVImageFormat_GetConversionMatrix(uint64_t result, _DWORD *a2)
{
  if (result)
  {
    if (a2)
    {
      *a2 = *(result + 316);
    }

    return *(result + 32);
  }

  return result;
}

uint64_t CVImageFormat_GetAlphaHint(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 264);
    v2 = v1 == 0;
    v3 = v1 != 0;
    if (v2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }

    if (*(result + 324))
    {
      return v3;
    }

    else
    {
      return v4;
    }
  }

  return result;
}

uint64_t CVImageFormat_SetAlphaHint(_DWORD *a1, int a2)
{
  if (!a1)
  {
    return -21778;
  }

  if (!a1[81])
  {
    return 0;
  }

  a1[66] = a2 != 0;
  v2 = a1[67];
  v3 = v2 & 0x1F;
  if ((v3 - 3) < 2)
  {
    if (a2)
    {
      a1[67] = (v3 + 2) | v2 & 0xFFFFFFE0;
      return 0;
    }

    return 0;
  }

  if ((v3 - 5) > 1 || a2)
  {
    return 0;
  }

  a1[67] = (v3 - 2) | v2 & 0xFFFFFFE0;
  return 0;
}

uint64_t CVImageFormat_GetChannelDescription(double *a1, int a2)
{
  v2 = 0;
  if (!a1 || (a2 - 26) < 0xFFFFFFE7)
  {
    return v2;
  }

  if (a2 != 21)
  {
    if (*(a1 + 46) == a2)
    {
      v6 = 0;
    }

    else if (*(a1 + 47) == a2)
    {
      v6 = 1;
    }

    else if (*(a1 + 48) == a2)
    {
      v6 = 2;
    }

    else if (*(a1 + 49) == a2)
    {
      v6 = 3;
    }

    else
    {
      if (*(a1 + 50) != a2)
      {
        return 0;
      }

      v6 = 4;
    }

    return &a1[4 * v6 + 7];
  }

  v3 = *(a1 + 46);
  if (v3 <= 21)
  {
    if (v3)
    {
      v2 = 0;
      v4 = 0;
      if (v3 == 21)
      {
        return (a1 + 7);
      }

      goto LABEL_13;
    }

    return 0;
  }

  if (v3 == 22)
  {
    v4 = 0;
    v2 = a1 + 7;
    v7 = *(a1 + 47);
    if (v7 <= 21)
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

  v2 = 0;
  v4 = 0;
  if (v3 == 23)
  {
    v2 = 0;
    v4 = a1 + 7;
  }

LABEL_13:
  v7 = *(a1 + 47);
  if (v7 <= 21)
  {
LABEL_14:
    if (!v7)
    {
      goto LABEL_45;
    }

    if (v7 == 21)
    {
      return (a1 + 11);
    }

    goto LABEL_25;
  }

LABEL_22:
  if (v7 == 23)
  {
    v4 = a1 + 11;
    v8 = *(a1 + 48);
    if (v8 <= 21)
    {
      goto LABEL_26;
    }

LABEL_32:
    if (v8 == 23)
    {
      v4 = a1 + 15;
    }

    else if (v8 == 22)
    {
      v2 = a1 + 15;
    }

    goto LABEL_36;
  }

  if (v7 == 22)
  {
    v2 = a1 + 11;
  }

LABEL_25:
  v8 = *(a1 + 48);
  if (v8 > 21)
  {
    goto LABEL_32;
  }

LABEL_26:
  if (!v8)
  {
    goto LABEL_45;
  }

  if (v8 == 21)
  {
    return (a1 + 15);
  }

LABEL_36:
  v9 = *(a1 + 49);
  if (v9 != 21)
  {
    if (v9 == 23)
    {
      v4 = a1 + 19;
    }

    else if (v9 == 22)
    {
      v2 = a1 + 19;
    }

LABEL_45:
    if (!v2 || !v4 || *v2 != *v4 || v2[3] != v4[3] || v2[1] != v4[1] || v2[2] != v4[2])
    {
      return 0;
    }

    return v2;
  }

  return (a1 + 19);
}

double CVImageFormat_CopyChannelDescription(_DWORD *a1, __int128 *a2, int a3)
{
  if (a1 && (a3 - 26) >= 0xFFFFFFE7)
  {
    if (a1[46] == a3)
    {
      v3 = a1;
      if (a2)
      {
LABEL_7:
        v4 = *a2;
        *(v3 + 18) = a2[1];
        *(v3 + 14) = v4;
        return *&v4;
      }
    }

    else if (a1[47] == a3)
    {
      v3 = a1 + 8;
      if (a2)
      {
        goto LABEL_7;
      }
    }

    else if (a1[48] == a3)
    {
      v3 = a1 + 16;
      if (a2)
      {
        goto LABEL_7;
      }
    }

    else
    {
      if (a1[49] != a3)
      {
        return *&v4;
      }

      v3 = a1 + 24;
      if (a2)
      {
        goto LABEL_7;
      }
    }

    *&v4 = 0;
    *(v3 + 18) = 0u;
    *(v3 + 14) = 0u;
  }

  return *&v4;
}

uint64_t CVImageFormat_GetUserData(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t CVImageFormat_SetUserData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return -21778;
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    v6(a1, *(a1 + 16));
  }

  result = 0;
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  return result;
}

uint64_t CVImageFormat_InitvImageCGImageFormat(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v3 = *(a1 + 48);
  if (!v3)
  {
    return -21602;
  }

  if (*(a1 + 320) && !*(a1 + 40))
  {
    return -21601;
  }

  if (*(a1 + 316) && !*(a1 + 32))
  {
    return -21600;
  }

  v4 = 0;
  v6 = *(a1 + 220);
  v7 = 6;
  v8 = 32;
  v9 = 8;
  result = -21778;
  if (v6 <= 1278226535)
  {
    if (v6 <= 843264055)
    {
      v7 = 0;
      v8 = 1;
      if (v6 <= 31)
      {
        if (v6 <= 7)
        {
          v9 = 1;
          if (v6 != 1)
          {
            if (v6 != 2)
            {
              if (v6 != 4)
              {
                return result;
              }

              goto LABEL_100;
            }

            goto LABEL_40;
          }

          goto LABEL_160;
        }

        if (v6 != 8)
        {
          if (v6 != 16)
          {
            if (v6 != 24)
            {
              return result;
            }

LABEL_82:
            v4 = 0;
            v7 = 0;
            v8 = 24;
            goto LABEL_160;
          }

          v4 = 0;
          v7 = 6;
LABEL_124:
          v9 = 5;
          v8 = 16;
          goto LABEL_160;
        }

LABEL_96:
        v4 = 0;
        v7 = 0;
        v8 = 8;
        goto LABEL_160;
      }

      if (v6 > 35)
      {
        if (v6 == 36)
        {
LABEL_100:
          v4 = 0;
          v7 = 0;
          v8 = 4;
          v9 = 4;
          goto LABEL_160;
        }

        if (v6 != 40)
        {
          if (v6 != 842285639)
          {
            return result;
          }

          goto LABEL_82;
        }

        goto LABEL_96;
      }

      if (v6 != 32)
      {
        v9 = 1;
        if (v6 != 33)
        {
          if (v6 != 34)
          {
            return result;
          }

LABEL_40:
          v4 = 0;
          v7 = 0;
          v8 = 2;
          v9 = 2;
        }

LABEL_160:
        result = 0;
        *a2 = v9;
        *(a2 + 4) = v8;
        *(a2 + 8) = v3;
        *(a2 + 16) = v7;
        *(a2 + 24) = v4;
        return result;
      }

      v4 = 0;
      if (*(a1 + 264))
      {
        v7 = 6;
      }

      else
      {
        v7 = 4;
      }

LABEL_159:
      v8 = 32;
      goto LABEL_160;
    }

    if (v6 > 892679472)
    {
      if (v6 > 1111970368)
      {
        if (v6 != 1111970369)
        {
          if (v6 != 1278226488)
          {
            if (v6 != 1278226534)
            {
              return result;
            }

            v4 = 0;
            v7 = 8448;
            v9 = 32;
            goto LABEL_160;
          }

          goto LABEL_96;
        }

        v4 = 0;
        if (*(a1 + 264))
        {
          v7 = 8198;
        }

        else
        {
          v7 = 8196;
        }
      }

      else
      {
        if (v6 == 892679473)
        {
          v4 = 0;
          if (*(a1 + 264))
          {
            v7 = 4101;
          }

          else
          {
            v7 = 4099;
          }

          goto LABEL_124;
        }

        if (v6 != 1094862674)
        {
          if (v6 != 1110783541)
          {
            return result;
          }

          v4 = 0;
          v7 = 0;
          goto LABEL_124;
        }

        v4 = 0;
        if (*(a1 + 264))
        {
          v7 = 8197;
        }

        else
        {
          v7 = 8195;
        }
      }

      goto LABEL_159;
    }

    if (v6 <= 846624120)
    {
      switch(v6)
      {
        case 843264056:
          v4 = 0;
          v7 = 0;
          v8 = 16;
          break;
        case 843264102:
          v4 = 0;
          v7 = 8448;
          v9 = 32;
          v8 = 64;
          break;
        case 843264104:
          v4 = 0;
          v7 = 4352;
          v9 = 16;
          break;
        default:
          return result;
      }

      goto LABEL_160;
    }

    if (v6 != 846624121 && v6 != 875704422)
    {
      v12 = 875704438;
      goto LABEL_94;
    }

LABEL_147:
    if (!a3)
    {
LABEL_153:
      if (v8 != 32 || v9 != 8)
      {
        goto LABEL_160;
      }

      if (*a3 == 8 && a3[1] == 32)
      {
        v7 = v7 & 0xFFFF8FFF | (((a3[4] >> 12) & 7) << 12);
      }

      v9 = 8;
      goto LABEL_159;
    }

LABEL_148:
    v16 = a3[4] & 7;
    if ((0x55uLL >> v16) & 1) != 0 || ((0x2BuLL >> (v7 & 7)))
    {
      if (((0x2BuLL >> v16) & 1) == 0)
      {
        v7 += ((0x55u >> (v7 & 7)) & 1) == 0;
      }
    }

    else
    {
      --v7;
    }

    goto LABEL_153;
  }

  if (v6 <= 1714696751)
  {
    if (v6 <= 1380411456)
    {
      if (v6 > 1378955370)
      {
        switch(v6)
        {
          case 1378955371:
            v4 = 0;
            if (*(a1 + 264))
            {
              v7 = 5;
            }

            else
            {
              v7 = 3;
            }

            v9 = 10;
            break;
          case 1380401729:
            v4 = 0;
            if (*(a1 + 264))
            {
              v7 = 5;
            }

            else
            {
              v7 = 3;
            }

            break;
          case 1380410945:
            v4 = 0;
            if (*(a1 + 264))
            {
              v7 = 8453;
            }

            else
            {
              v7 = 8451;
            }

            v9 = 32;
            v8 = 128;
            goto LABEL_160;
          default:
            return result;
        }

        goto LABEL_159;
      }

      if (v6 != 1278226536)
      {
        if (v6 == 1278555445)
        {
          v4 = 0;
          v7 = 4102;
        }

        else
        {
          if (v6 != 1278555701)
          {
            return result;
          }

          v4 = 0;
          v7 = 4096;
        }

        goto LABEL_124;
      }

      v4 = 0;
      v7 = 4352;
LABEL_112:
      v8 = 16;
      v9 = 16;
      goto LABEL_160;
    }

    if (v6 > 1647522400)
    {
      if (v6 == 1647522401)
      {
        v4 = 0;
        if (*(a1 + 264))
        {
          v7 = 6;
        }

        else
        {
          v7 = 4;
        }

        v9 = 16;
        goto LABEL_159;
      }

      if (v6 == 1647589490)
      {
        v4 = 0;
        v7 = 0;
        v9 = 16;
        v8 = 48;
        goto LABEL_160;
      }

      if (v6 != 1647719521)
      {
        return result;
      }

      v4 = 0;
      v13 = *(a1 + 264) == 0;
      v7 = 6;
      v14 = 4;
    }

    else
    {
      if (v6 != 1380411457)
      {
        if (v6 != 1630697081)
        {
          if (v6 != 1647392359)
          {
            return result;
          }

          v4 = 0;
          v7 = 0;
          goto LABEL_112;
        }

LABEL_75:
        v4 = 0;
        if (*(a1 + 264))
        {
          v7 = 6;
        }

        else
        {
          v7 = 4;
        }

        v8 = 32;
        goto LABEL_147;
      }

      v4 = 0;
      v13 = *(a1 + 264) == 0;
      v7 = 4357;
      v14 = 4355;
    }

    if (v13)
    {
      v7 = v14;
    }

    v9 = 16;
    v8 = 64;
    goto LABEL_160;
  }

  if (v6 <= 1983131951)
  {
    if (v6 > 1983000885)
    {
      if (v6 != 1983000886)
      {
        if (v6 == 1983066168)
        {
          goto LABEL_147;
        }

        if (v6 != 1983131704)
        {
          return result;
        }

        goto LABEL_75;
      }

      if (!a3 || *a3 >= 9u)
      {
        v4 = kvImageDecodeArray_16Q12Format;
        if (*(a1 + 272) >= 0xDu)
        {
          v4 = 0;
        }

        goto LABEL_141;
      }

LABEL_131:
      v4 = 0;
      goto LABEL_148;
    }

    if (v6 == 1714696752)
    {
      goto LABEL_147;
    }

    if (v6 == 1916022840)
    {
      goto LABEL_75;
    }

    if (v6 != 1983000880)
    {
      return result;
    }

LABEL_97:
    if (!a3 || *a3 >= 9u)
    {
      v4 = kvImageDecodeArray_16Q12Format;
LABEL_141:
      v7 = 4102;
      v8 = 64;
      v9 = 16;
      goto LABEL_147;
    }

    goto LABEL_131;
  }

  if (v6 <= 2033463855)
  {
    if (v6 != 1983131952)
    {
      if (v6 != 2033463352)
      {
        if (v6 != 2033463606)
        {
          return result;
        }

        if (a3 && *a3 < 9u)
        {
          v11 = 0;
        }

        else
        {
          v11 = 4096;
          v8 = 64;
          v9 = 16;
        }

        v4 = 0;
        if (*(a1 + 264))
        {
          v15 = 6;
        }

        else
        {
          v15 = 4;
        }

        v7 = v15 | v11;
        goto LABEL_147;
      }

      goto LABEL_75;
    }

    goto LABEL_97;
  }

  if (v6 == 2033463856 || v6 == 2037741158)
  {
    goto LABEL_147;
  }

  v12 = 2037741171;
LABEL_94:
  if (v6 == v12)
  {
    goto LABEL_147;
  }

  return result;
}

uint64_t CVImageFormat_CalculateInverseConversionMatrix(uint64_t a1, uint64_t a2, int a3, double a4, double a5, float32x4_t a6)
{
  if (!a1)
  {
    return -21778;
  }

  if (a3 != 1)
  {
    return -21600;
  }

  v6 = *(a1 + 32);
  if (!v6)
  {
    return -21600;
  }

  if (v6 == kvImage_ARGBToYpCbCrMatrix_ITU_R_601_4)
  {
    v8 = &kvImage_YpCbCrToARGBMatrix_ITU_R_601_4;
  }

  else
  {
    if (v6 != kvImage_ARGBToYpCbCrMatrix_ITU_R_709_2)
    {
      if (!MatrixInverse_forward(v6, a2, *(a1 + 228), a5, a6))
      {
        return -21778;
      }

      return 0;
    }

    v8 = &kvImage_YpCbCrToARGBMatrix_ITU_R_709_2;
  }

  v9 = *v8;
  v10 = *&v9->Yp;
  *(a2 + 16) = v9->Cb_B;
  *a2 = v10;
  return 0;
}

unint64_t CVImageFormat_GetHeightInBlocks(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 288);
  if (v2 >= 2)
  {
    if (v2 == 2)
    {
      return (a2 + 1) >> 1;
    }

    return (a2 + v2 - 1) / v2;
  }

  return a2;
}

unint64_t CVImageFormat_GetWidthInBlocks(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 284);
  if (v2 >= 2)
  {
    if (v2 == 2)
    {
      return (a2 + 1) >> 1;
    }

    return (a2 + v2 - 1) / v2;
  }

  return a2;
}

uint64_t vImageCVImageFormatClassRegister(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = _CFRuntimeRegisterClass();
    *v1 = result;
  }

  return result;
}