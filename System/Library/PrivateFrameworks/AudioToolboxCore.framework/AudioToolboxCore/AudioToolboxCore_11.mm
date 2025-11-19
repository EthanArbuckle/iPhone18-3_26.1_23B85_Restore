float32x4_t *Float32ToNativeLowAlignedInt64_ARM(float32x4_t *a1, int32x4_t *a2, unsigned int a3, int a4, double a5)
{
  v6 = a2;
  v7 = (a2 + 4 * a3);
  result = Float32ToNativeLowAlignedInt32_ARM(a1, v7, a3, a4, a5);
  if (a3 >= 4)
  {
    v9 = a3 >> 2;
    do
    {
      v10 = *v7++;
      *v6 = vzip1q_s32(v10, 0);
      v6[1] = vzip2q_s32(v10, 0);
      v6 += 2;
      --v9;
    }

    while (v9);
  }

  v11 = a3 & 3;
  if ((a3 & 3) != 0)
  {
    do
    {
      v12 = v7->i32[0];
      v7 = (v7 + 4);
      v6->i64[0] = v12;
      v6 = (v6 + 8);
      --v11;
    }

    while (v11);
  }

  return result;
}

float NativeLowAlignedInt64ToFloat32_ARM(const float *a1, uint32x4_t *a2, unsigned int a3, int a4)
{
  if (a3 >= 4)
  {
    v5 = a3 >> 2;
    v4 = a2;
    do
    {
      v6 = vld2q_f32(a1);
      a1 += 8;
      *v4++ = v6;
      --v5;
    }

    while (v5);
  }

  else
  {
    v4 = a2;
  }

  v7 = a3 & 3;
  if ((a3 & 3) != 0)
  {
    do
    {
      v8 = *a1;
      a1 += 2;
      *v4 = v8;
      v4 = (v4 + 4);
      --v7;
    }

    while (v7);
  }

  return NativeLowAlignedInt32ToFloat32_ARM(a2, a2, a3, a4);
}

void removeGatedLoudness(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = v2[266];
      if (v3)
      {
        free(v3);
        v2 = *a1;
      }

      v4 = v2[267];
      if (v4)
      {
        free(v4);
        v2 = *a1;
      }

      v5 = v2[6];
      if (v5)
      {
        free(v5);
        v2 = *a1;
      }

      v6 = v2[3];
      if (v6)
      {
        free(v6);
        v2 = *a1;
      }

      v7 = v2[273];
      if (v7)
      {
        v8 = v7[2];
        if (v8)
        {
          vDSP_biquad_DestroySetup(v8);
        }

        v9 = v7[3];
        if (v9)
        {
          v10 = v7[4];
          if (v10 != v9)
          {
            v7[4] = &v10[(v9 - v10 + 3) & 0xFFFFFFFFFFFFFFFCLL];
          }

          operator delete(v9);
          v7[3] = 0;
          v7[4] = 0;
        }

        MEMORY[0x193ADF220](v7, 0x10A0C40B6373B8BLL);
        v2[273] = 0;
        v2 = *a1;
      }

      free(v2);
      *a1 = 0;
    }
  }
}

uint64_t initGatedLoudness(uint64_t a1, int a2, void *a3, double a4)
{
  v36 = *MEMORY[0x1E69E9840];
  inSpecifier = a2;
  if (a1 > 0x200)
  {
    goto LABEL_46;
  }

  v5 = a1;
  memset_pattern16(__b, &unk_18F901E20, 0x400uLL);
  v6 = 0;
  v7 = xmmword_18F901740;
  v8.i64[0] = 0x400000004;
  v8.i64[1] = 0x400000004;
  do
  {
    *&__src[v6] = v7;
    v7 = vaddq_s32(v7, v8);
    v6 += 4;
  }

  while (v6 != 256);
  if (v5 < 3)
  {
    v9 = v5;
    goto LABEL_6;
  }

  v21 = caulk::numeric::exceptional_mul<unsigned int>(v5, 0x14u);
  ioPropertyDataSize[0] = caulk::numeric::exceptional_add<unsigned int>(12, v21);
  v22 = CAAudioChannelLayout::Create(v5);
  if (AudioFormatGetProperty(0x636D706Cu, 4u, &inSpecifier, ioPropertyDataSize, v22))
  {
    MEMORY[0x193ADE5A0](v22);
    goto LABEL_46;
  }

  v5 = v22[2];
  if (!v5)
  {
    MEMORY[0x193ADE5A0](v22);
    v9 = 0;
LABEL_6:
    if (!a3 || *a3)
    {
      goto LABEL_46;
    }

    v10 = malloc_type_calloc(1uLL, 0x890uLL, 0x10900409F0D3898uLL);
    *ioPropertyDataSize = v10;
    if (!v9)
    {
      goto LABEL_45;
    }

    v11 = v10;
    if (!v10)
    {
      goto LABEL_45;
    }

    *v10 = v5;
    v10[1] = v9;
    v12 = 4 * v9;
    memcpy(v10 + 14, __src, v12);
    memcpy(v11 + 270, __b, v12);
    v13.i32[1] = HIDWORD(a4);
    v14 = vcvt_u32_f32(vmla_n_f32(0x3F0000003F000000, 0x404000003ECCCCCDLL, *&a4));
    v15 = vcvt_f32_u32(v14);
    v11[4] = ((v15.f32[0] * 0.25) + 0.5);
    *v13.i32 = ((v15.f32[0] * 0.25) + 0.5);
    *(v11 + 1) = v14;
    *(v11 + 9) = vcvt_u32_f32(vadd_f32(vdiv_f32(v15, vdup_lane_s32(v13, 0)), 0x3F0000003F000000));
    v11[8] = 0;
    *(v11 + 526) = xmmword_18F901750;
    v11[530] = 715;
    v16 = malloc_type_calloc(0x2CBuLL, 4uLL, 0x100004052888210uLL);
    *(v11 + 266) = v16;
    if (!v16 || (v17 = malloc_type_calloc(v11[530], 4uLL, 0x100004052888210uLL), (*(v11 + 267) = v17) == 0) || (v18 = malloc_type_malloc(8 * (v11[10] * v5), 0x100004000313F17uLL), (*(v11 + 6) = v18) == 0) || (v19 = malloc_type_malloc(4 * (v11[4] * v5), 0x100004052888210uLL), (*(v11 + 3) = v19) == 0))
    {
LABEL_45:
      removeGatedLoudness(ioPropertyDataSize);
      goto LABEL_46;
    }

    v11[5] = 0;
    *(v11 + 2148) = 0;
    *(v11 + 2156) = 0;
    *(v11 + 2164) = 0;
    *(v11 + 2180) = 0;
    *(v11 + 2172) = 0;
    v11[544] = -525502228;
    v11[542] = -525502228;
    initKfilter(v5, (v11 + 546));
    result = 0;
    *a3 = v11;
    goto LABEL_47;
  }

  v23 = 0;
  v24 = 0;
  v9 = 0;
  v25 = 3;
  do
  {
    v26 = v22[v25];
    if (v26 <= 300)
    {
      v28 = v26 + 1;
      if ((v26 + 1) <= 0x2E)
      {
        if (((1 << v28) & 0x30000018C0) != 0)
        {
          __b[v9] = 1068792545;
LABEL_29:
          __src[v9++] = v23;
          goto LABEL_42;
        }

        if (((1 << v28) & 0x400000000003) != 0)
        {
          goto LABEL_41;
        }

        if (((1 << v28) & 0x4000000020) != 0)
        {
          goto LABEL_42;
        }
      }

      if ((v26 - 200) >= 8 && v26 != 100)
      {
        goto LABEL_29;
      }
    }

    else if (v26 < 0x10000)
    {
      v29 = (v26 - 301) > 3 || v26 == 303;
      if (v29 && v26 != 400)
      {
        goto LABEL_29;
      }
    }

    else if ((v26 - 0x10000) >= 0x10 && v26 != 0x1FFFF)
    {
      goto LABEL_29;
    }

LABEL_41:
    v24 = 1;
LABEL_42:
    ++v23;
    v25 += 5;
  }

  while (v5 != v23);
  MEMORY[0x193ADE5A0](v22);
  if (!v24)
  {
    goto LABEL_6;
  }

LABEL_46:
  result = 4294967246;
LABEL_47:
  v30 = *MEMORY[0x1E69E9840];
  return result;
}

void computeItuLoudnessValue(uint64_t a1)
{
  v2 = *(a1 + 2120);
  if (!v2)
  {
    goto LABEL_13;
  }

  v3 = 0;
  v4 = 0;
  v5 = *(a1 + 2112);
  v6 = *(a1 + 2104);
  v7 = 0.0;
  do
  {
    if ((v5 + (v3 * v6)) > -70.0)
    {
      v8 = __exp10f(((v5 + ((v3 + 0.5) * v6)) + 0.691) * 0.1);
      v9 = *(*(a1 + 2128) + 4 * v3);
      v7 = v7 + (v8 * v9);
      v4 += v9;
    }

    ++v3;
  }

  while (v2 != v3);
  if (!v4)
  {
LABEL_13:
    v19 = -70.0;
    goto LABEL_14;
  }

  v10 = v7;
  v11 = log10f(v10 / v4);
  v12 = 0;
  v13 = 0;
  v14 = ((v11 * 10.0) + -0.691) + -10.0;
  v15 = 0.0;
  do
  {
    if ((v5 + (v12 * v6)) > v14)
    {
      v16 = __exp10f(((v5 + ((v12 + 0.5) * v6)) + 0.691) * 0.1);
      v17 = *(*(a1 + 2128) + 4 * v12);
      v15 = v15 + (v16 * v17);
      v13 += v17;
    }

    ++v12;
  }

  while (v2 != v12);
  if (v13)
  {
    v18 = v15;
    v19 = (log10f(v18 / v13) * 10.0) + -0.691;
LABEL_14:
    *(a1 + 2144) = v19;
    *(a1 + 2148) = 1;
  }
}

void computeEbuLoudnessRange(uint64_t a1)
{
  v1 = *(a1 + 2120);
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = *(a1 + 2112);
    v6 = *(a1 + 2104);
    v7 = 0.0;
    do
    {
      if ((v5 + (v3 * v6)) > -70.0)
      {
        v8 = __exp10f(((v5 + ((v3 + 0.5) * v6)) + 0.691) * 0.1);
        v9 = *(*(a1 + 2136) + 4 * v3);
        v7 = v7 + (v8 * v9);
        v4 += v9;
      }

      ++v3;
    }

    while (v1 != v3);
    if (v4)
    {
      v10 = v7;
      v11 = log10f(v10 / v4);
      v12 = 0;
      v13 = 0;
      v14 = ((v11 * 10.0) + -0.691) + -20.0;
      do
      {
        if ((v5 + (v12 * v6)) > v14)
        {
          v13 += *(*(a1 + 2136) + 4 * v12);
        }

        ++v12;
      }

      while (v1 != v12);
      if (v13)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = v13;
        v20 = ((v13 * 0.1) + 0.5);
        v21 = ((v19 * 0.95) + 0.5);
        v22 = 0.0;
        v23 = 0.0;
        do
        {
          if ((v5 + (v15 * v6)) > v14)
          {
            v16 += *(*(a1 + 2136) + 4 * v15);
            if (!((v16 < v20) | v18 & 1))
            {
              v23 = (v5 + ((v15 + 0.5) * v6));
            }

            v18 |= ((v16 < v20) | v18) ^ 1;
            if (!((v16 < v21) | v17 & 1))
            {
              v22 = (v5 + ((v15 + 0.5) * v6));
            }

            v17 |= v16 >= v21;
          }

          ++v15;
        }

        while (v1 != v15);
        if (v18 & v17)
        {
          v24 = v22 - v23;
          *(a1 + 2152) = v24;
          *(a1 + 2156) = 1;
          v25 = v22;
          *(a1 + 2160) = v25;
          *(a1 + 2164) = 1;
        }
      }
    }
  }
}

void loudnessMeasurementGenerateBlocks(_DWORD *a1, unsigned int a2, char *__src)
{
  v3 = __src;
  v4 = a2;
  v5 = a1;
  v63 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[4];
  v57 = a1[10];
  v58 = ((v57 - 1) * v7);
  v9 = a1 + 14;
  v10 = a1 + 270;
  v11 = a1[2];
  v12 = a2;
  v60 = v8;
  v52 = *a1;
  v56 = a1[9];
  do
  {
    v13 = *(v5 + 5);
    if (v13)
    {
      v14 = 1;
    }

    else
    {
      v14 = v8 > v4;
    }

    if (!v14)
    {
      v18 = v12;
      v19 = &v3[4 * (v4 - v12) * v6];
      v59 = v18 - v8;
LABEL_15:
      memmove(v5[6], v5[6] + 8 * v7, 8 * ((v57 - 1) * v7));
      v20 = v5[273];
      if (v20)
      {
        v21 = v5[6];
        v22 = &v21[8 * v58];
        if (v7)
        {
          bzero(&v21[8 * v58], 8 * v7);
        }

        if (v60)
        {
          v23 = v60;
          do
          {
            if (v23 >= 0x100)
            {
              v24 = 256;
            }

            else
            {
              v24 = v23;
            }

            if (v7)
            {
              for (i = 0; i != v7; ++i)
              {
                v26 = 0;
                __C = 0.0;
                v27 = v9[i];
                v28 = *(v20 + 2);
                do
                {
                  __Y[v26++] = *&v19[4 * v27];
                  v27 += v28;
                }

                while (v24 != v26);
                vDSP_biquad(*(v20 + 2), (*(v20 + 3) + 4 * (6 * i)), __Y, 1, __Y, 1, v24);
                vDSP_svesq(__Y, 1, &__C, v24);
                v22[i] = v22[i] + __C;
              }
            }

            v19 += 4 * (*(v20 + 2) * v24);
            v23 -= v24;
          }

          while (v23);
        }

        if (*v20 != 1.0 && v7 != 0)
        {
          v30 = (*v20 * *v20);
          v31 = v7;
          do
          {
            *v22 = *v22 * v30;
            ++v22;
            --v31;
          }

          while (v31);
        }

        v3 = __src;
        v5 = a1;
        v6 = v52;
        v4 = a2;
      }

      v32 = *(v5 + 8);
      if (v32 < v57)
      {
        *(v5 + 8) = ++v32;
      }

      v8 = v60;
      if (v32 >= v56)
      {
        if (v7)
        {
          v33 = 0;
          v34 = 0.0;
          do
          {
            v35 = 0.0;
            if (v56)
            {
              v36 = 0;
              v37 = 0.0;
              v38 = v56;
              do
              {
                v37 = v37 + *(v5[6] + v58 + v33 - v36);
                v36 += v7;
                --v38;
              }

              while (v38);
              v35 = v37;
            }

            v34 = v34 + (*&v10[v33++] * v35);
          }

          while (v33 != v7);
        }

        else
        {
          v34 = 0.0;
        }

        v39 = (log10f(v34 / v11) * 10.0) + -0.691;
        v40 = v39 - *(v5 + 528);
        if (v40 >= 0.0)
        {
          v41 = (v40 * *(v5 + 527));
          if (*(v5 + 530) > v41)
          {
            ++*(v5[266] + v41);
          }
        }

        if (*(v5 + 542) < v39)
        {
          *(v5 + 542) = v39;
          *(v5 + 2172) = 1;
        }
      }

      if (*(v5 + 8) >= v57)
      {
        if (v7)
        {
          v42 = 0;
          v43 = 0.0;
          do
          {
            v44 = 0.0;
            if (v57)
            {
              v45 = 0;
              v46 = 0.0;
              v47 = v57;
              do
              {
                v46 = v46 + *(v5[6] + v58 + v42 - v45);
                v45 += v7;
                --v47;
              }

              while (v47);
              v44 = v46;
            }

            v43 = v43 + (*&v10[v42++] * v44);
          }

          while (v42 != v7);
        }

        else
        {
          v43 = 0.0;
        }

        v48 = (log10f(v43 / *(v5 + 3)) * 10.0) + -0.691;
        v49 = v48 - *(v5 + 528);
        if (v49 >= 0.0)
        {
          v50 = (v49 * *(v5 + 527));
          if (*(v5 + 530) > v50)
          {
            ++*(v5[267] + v50);
          }
        }

        v12 = v59;
        if (*(v5 + 544) < v48)
        {
          *(v5 + 544) = v48;
          *(v5 + 2180) = 1;
        }
      }

      else
      {
        v12 = v59;
      }

      continue;
    }

    if (v8 - v13 >= v4)
    {
      v15 = v4;
    }

    else
    {
      v15 = v8 - v13;
    }

    memcpy(v5[3] + 4 * (v13 * v6), v3, 4 * v15 * v6);
    v12 = v4 - v15;
    v16 = *(v5 + 5) + v15;
    v8 = v60;
    v17 = v16 >= v60;
    if (v16 >= v60)
    {
      v16 = 0;
    }

    *(v5 + 5) = v16;
    if (v17)
    {
      v59 = v12;
      v19 = v5[3];
      goto LABEL_15;
    }
  }

  while (v12 >= v8);
  if (v12)
  {
    memcpy(v5[3] + 4 * (*(v5 + 5) * v6), &v3[4 * (v4 - v12) * v6], 4 * v12 * v6);
    *(v5 + 5) += v12;
  }

  v51 = *MEMORY[0x1E69E9840];
}

uint64_t acv2::SampleRateConverter::SetPropertySettings(acv2::SampleRateConverter *this, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"parameters");
  if (Value)
  {
    v4 = Value;
    ValueAtIndex = CFArrayGetValueAtIndex(Value, 0);
    if (ValueAtIndex)
    {
      v20 = 0;
      v18 = ValueAtIndex;
      v19 = 0;
      if ((CACFDictionary::GetUInt32(&v18, @"current value", &v20) & 1) == 0)
      {
        goto LABEL_26;
      }

      if (v20 <= 1)
      {
        if (!v20)
        {
          v17 = 0;
          goto LABEL_16;
        }

        if (v20 == 1)
        {
          v6 = 32;
          goto LABEL_15;
        }
      }

      else if (v20 != 2)
      {
        if (v20 == 3)
        {
          v6 = 96;
          goto LABEL_15;
        }

        if (v20 == 4)
        {
          v6 = 127;
LABEL_15:
          v17 = v6;
LABEL_16:
          v7 = (*(*this + 96))(this, 1936876401, 4, &v17);
          if (v7)
          {
LABEL_27:
            CACFDictionary::~CACFDictionary(&v18);
            return v7;
          }

          v8 = CFArrayGetValueAtIndex(v4, 1);
          if (v8)
          {
            v15 = v8;
            v16 = 256;
            if (CACFDictionary::GetUInt32(&v15, @"current value", &v20))
            {
              v7 = (*(*this + 96))(this, 1886547309, 4, &v20);
              if (!v7)
              {
                if (CFArrayGetCount(v4) < 3)
                {
                  goto LABEL_40;
                }

                v9 = CFArrayGetValueAtIndex(v4, 2);
                if (!v9)
                {
                  goto LABEL_40;
                }

                v13 = v9;
                v14 = 256;
                if ((CACFDictionary::GetUInt32(&v13, @"current value", &v20) & 1) == 0)
                {
LABEL_39:
                  CACFDictionary::~CACFDictionary(&v13);
LABEL_40:
                  v7 = 0;
                  goto LABEL_41;
                }

                if (v20 > 1)
                {
                  if (v20 != 2)
                  {
                    if (v20 == 3)
                    {
                      v11 = 1835626096;
                      goto LABEL_37;
                    }

                    goto LABEL_34;
                  }

                  v11 = 1650553971;
                }

                else
                {
                  if (v20)
                  {
LABEL_34:
                    v11 = 1852797549;
                    goto LABEL_37;
                  }

                  v11 = 1818848869;
                }

LABEL_37:
                v12 = v11;
                v7 = (*(*this + 96))(this, 1936876385, 4, &v12);
                if (v7)
                {
                  CACFDictionary::~CACFDictionary(&v13);
                  goto LABEL_41;
                }

                goto LABEL_39;
              }
            }

            else
            {
              v7 = 4294967246;
            }

LABEL_41:
            CACFDictionary::~CACFDictionary(&v15);
            goto LABEL_27;
          }

LABEL_26:
          v7 = 4294967246;
          goto LABEL_27;
        }
      }

      v6 = 64;
      goto LABEL_15;
    }
  }

  return 4294967246;
}

void sub_18F692B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  CACFDictionary::~CACFDictionary(va);
  CACFDictionary::~CACFDictionary(va1);
  CACFDictionary::~CACFDictionary(va2);
  _Unwind_Resume(a1);
}

void acv2::SampleRateConverter::GetPropertySettings(acv2::SampleRateConverter *this@<X0>, CFMutableDictionaryRef *a2@<X8>)
{
  v72 = *MEMORY[0x1E69E9840];
  CABundleLocker::CABundleLocker(&v58);
  v4 = sAudioToolboxBundle;
  if (sAudioToolboxBundle == -1)
  {
    pthread_once(&sOnce, InitGetAudioToolboxBundle);
    v4 = sAudioToolboxBundle;
  }

  v5 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v7 = Mutable;
  if (!Mutable)
  {
    *a2 = 0;
    goto LABEL_65;
  }

  *a2 = Mutable;
  v8 = CFGetTypeID(Mutable);
  if (v8 != CFDictionaryGetTypeID())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  valuePtr = 0;
  if (v4)
  {
    v9 = CFBundleCopyLocalizedString(v4, @"Sample Rate Converter", @"Sample Rate Converter", @"ConverterNames");
  }

  else
  {
    v9 = CFRetain(@"Sample Rate Converter");
  }

  v10 = v9;
  CFDictionaryAddValue(v7, @"name", v9);
  CFRelease(v10);
  v11 = (*(*this + 56))(this);
  CFDictionaryAddValue(v7, @"converter", v11);
  valuePtr = 0;
  v12 = CFNumberCreate(v5, kCFNumberSInt32Type, &valuePtr);
  CFDictionaryAddValue(v7, @"version", v12);
  CFRelease(v12);
  v56 = v7;
  theDict = 0;
  v70 = 0;
  v71 = 0;
  TypeID = CFNumberGetTypeID();
  v14 = 0;
  v15 = MEMORY[0x1E695E9D8];
  valuePtr = TypeID;
  v16 = MEMORY[0x1E695E9E8];
  do
  {
    v17 = CFDictionaryCreateMutable(v5, 0, v15, v16);
    *(&theDict + v14) = v17;
    v18 = CFNumberCreate(v5, kCFNumberSInt32Type, &valuePtr);
    CFDictionaryAddValue(v17, @"value type", v18);
    CFRelease(v18);
    v14 += 8;
  }

  while (v14 != 24);
  if (v4)
  {
    v19 = CFBundleCopyLocalizedString(v4, @"Quality", @"Quality", @"ConverterSettings");
  }

  else
  {
    v19 = CFRetain(@"Quality");
  }

  v20 = v19;
  v21 = theDict;
  CFDictionaryAddValue(theDict, @"key", @"Quality");
  CFDictionaryAddValue(v21, @"name", v20);
  CFRelease(v20);
  valuePtr = 0;
  v22 = CFNumberCreate(v5, kCFNumberSInt32Type, &valuePtr);
  CFDictionaryAddValue(v21, @"hint", v22);
  CFRelease(v22);
  v68 = 0;
  *values = 0u;
  v67 = 0u;
  if (v4)
  {
    values[0] = CFBundleCopyLocalizedString(v4, @"Faster", @"Faster", @"ConverterSettings");
    values[1] = CFBundleCopyLocalizedString(v4, @"Fast", @"Fast", @"ConverterSettings");
    *&v67 = CFBundleCopyLocalizedString(v4, @"Normal", @"Normal", @"ConverterSettings");
    *(&v67 + 1) = CFBundleCopyLocalizedString(v4, @"Better", @"Better", @"ConverterSettings");
    v23 = CFBundleCopyLocalizedString(v4, @"Best", @"Best", @"ConverterSettings");
  }

  else
  {
    values[0] = CFRetain(@"Faster");
    values[1] = CFRetain(@"Fast");
    *&v67 = CFRetain(@"Normal");
    *(&v67 + 1) = CFRetain(@"Better");
    v23 = CFRetain(@"Best");
  }

  v68 = v23;
  v24 = CFArrayCreate(v5, values, 5, MEMORY[0x1E695E9C0]);
  CFDictionaryAddValue(v21, @"available values", v24);
  for (i = 0; i != 5; ++i)
  {
    CFRelease(values[i]);
  }

  CFRelease(v24);
  v26 = *(this + 69);
  if (v26 > 0xF)
  {
    if (v26 > 0x2F)
    {
      if (v26 > 0x4F)
      {
        if (v26 > 0x6E)
        {
          v27 = 4;
        }

        else
        {
          v27 = 3;
        }
      }

      else
      {
        v27 = 2;
      }
    }

    else
    {
      v27 = 1;
    }

    valuePtr = v27;
  }

  else
  {
    valuePtr = 0;
  }

  v28 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  CFDictionaryAddValue(v21, @"current value", v28);
  CFRelease(v28);
  if (v4)
  {
    v29 = CFBundleCopyLocalizedString(v4, @"Quality setting for the sample rate converter.", @"Quality setting for the sample rate converter.", @"ConverterSettings");
  }

  else
  {
    v29 = CFRetain(@"Quality setting for the sample rate converter.");
  }

  v30 = v29;
  CFDictionaryAddValue(v21, @"summary", v29);
  CFRelease(v30);
  if (v4)
  {
    v31 = CFBundleCopyLocalizedString(v4, @"Priming Method", @"Priming Method", @"ConverterSettings");
  }

  else
  {
    v31 = CFRetain(@"Priming Method");
  }

  v32 = v31;
  v33 = v70;
  CFDictionaryAddValue(v70, @"key", @"Priming Method");
  CFDictionaryAddValue(v33, @"name", v32);
  CFRelease(v32);
  valuePtr = 2;
  v34 = CFNumberCreate(v5, kCFNumberSInt32Type, &valuePtr);
  CFDictionaryAddValue(v33, @"hint", v34);
  CFRelease(v34);
  v63 = 0;
  v64 = 0;
  v65 = 0;
  if (v4)
  {
    v63 = CFBundleCopyLocalizedString(v4, @"Pre", @"Pre", @"ConverterSettings");
    v64 = CFBundleCopyLocalizedString(v4, @"Normal", @"Normal", @"ConverterSettings");
    v35 = CFBundleCopyLocalizedString(v4, @"None", @"None", @"ConverterSettings");
  }

  else
  {
    v63 = CFRetain(@"Pre");
    v64 = CFRetain(@"Normal");
    v35 = CFRetain(@"None");
  }

  v65 = v35;
  v36 = CFArrayCreate(v5, &v63, 3, MEMORY[0x1E695E9C0]);
  CFDictionaryAddValue(v33, @"available values", v36);
  for (j = 0; j != 24; j += 8)
  {
    CFRelease(*(&v63 + j));
  }

  CFRelease(v36);
  valuePtr = *(this + 70);
  v38 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  CFDictionaryAddValue(v33, @"current value", v38);
  CFRelease(v38);
  if (v4)
  {
    v39 = CFBundleCopyLocalizedString(v4, @"Priming method for the sample rate converter.", @"Priming method for the sample rate converter.", @"ConverterSettings");
  }

  else
  {
    v39 = CFRetain(@"Priming method for the sample rate converter.");
  }

  v40 = v39;
  CFDictionaryAddValue(v33, @"summary", v39);
  CFRelease(v40);
  if (v4)
  {
    v41 = CFBundleCopyLocalizedString(v4, @"Complexity", @"Complexity", @"ConverterSettings");
  }

  else
  {
    v41 = CFRetain(@"Complexity");
  }

  v42 = v41;
  v43 = v71;
  CFDictionaryAddValue(v71, @"key", @"Complexity");
  CFDictionaryAddValue(v43, @"name", v42);
  CFRelease(v42);
  valuePtr = 1;
  v44 = CFNumberCreate(v5, kCFNumberSInt32Type, &valuePtr);
  CFDictionaryAddValue(v43, @"hint", v44);
  CFRelease(v44);
  v59 = 0;
  v60 = 0;
  v61 = 0;
  if (v4)
  {
    v59 = CFBundleCopyLocalizedString(v4, @"Linear", @"Linear", @"ConverterSettings");
    v60 = CFBundleCopyLocalizedString(v4, @"Normal", @"Normal", @"ConverterSettings");
    v61 = CFBundleCopyLocalizedString(v4, @"Mastering", @"Mastering", @"ConverterSettings");
    v45 = CFBundleCopyLocalizedString(v4, @"Minimum Phase", @"Minimum Phase", @"ConverterSettings");
  }

  else
  {
    v59 = CFRetain(@"Linear");
    v60 = CFRetain(@"Normal");
    v61 = CFRetain(@"Mastering");
    v45 = CFRetain(@"Minimum Phase");
  }

  v62 = v45;
  v46 = CFArrayCreate(v5, &v63, 3, MEMORY[0x1E695E9C0]);
  CFDictionaryAddValue(v43, @"available values", v46);
  for (k = 0; k != 24; k += 8)
  {
    CFRelease(*(&v59 + k));
  }

  CFRelease(v46);
  v48 = *(this + 68);
  if (v48 <= 1835626095)
  {
    if (v48 != 1650553971)
    {
      if (v48 == 1818848869)
      {
        valuePtr = 0;
      }

      goto LABEL_61;
    }

    v49 = 2;
    goto LABEL_60;
  }

  if (v48 == 1835626096)
  {
    v49 = 3;
    goto LABEL_60;
  }

  if (v48 == 1852797549)
  {
    v49 = 1;
LABEL_60:
    valuePtr = v49;
  }

LABEL_61:
  v50 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  CFDictionaryAddValue(v43, @"current value", v50);
  CFRelease(v50);
  if (v4)
  {
    v51 = CFBundleCopyLocalizedString(v4, @"sample rate converter complexity setting.", @"sample rate converter complexity setting.", @"ConverterSettings");
  }

  else
  {
    v51 = CFRetain(@"sample rate converter complexity setting.");
  }

  v52 = v51;
  CFDictionaryAddValue(v43, @"summary", v51);
  CFRelease(v52);
  v53 = CFArrayCreate(v5, &theDict, 2, MEMORY[0x1E695E9C0]);
  CFRelease(theDict);
  CFRelease(v70);
  CFDictionaryAddValue(v56, @"parameters", v53);
  CFRelease(v53);
LABEL_65:
  CABundleLocker::~CABundleLocker(&v58);
  v54 = *MEMORY[0x1E69E9840];
}

void sub_18F693604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __cxa_free_exception(v14);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v15);
  CABundleLocker::~CABundleLocker(&a14);
  _Unwind_Resume(a1);
}

const void **applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void applesauce::CF::DictionaryRef::~DictionaryRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t acv2::SampleRateConverter::GetProperty(acv2::SampleRateConverter *this, int a2, unsigned int *a3, double *a4)
{
  result = 1886547824;
  if (a2 > 1936876399)
  {
    if (a2 > 2020175986)
    {
      if (a2 == 2020175987)
      {
        if (*a3 == 4)
        {
          result = 0;
          v11 = *(this + 8);
          goto LABEL_36;
        }

        return 561211770;
      }

      if (a2 != 2020569203)
      {
        return result;
      }

      if (*a3 != 4)
      {
        return 561211770;
      }

      result = 0;
      v11 = *(this + 18);
    }

    else
    {
      if (a2 == 1936876400)
      {
        if (*a3 == 8)
        {
          v16 = (*(**(this + 20) + 56))(*(this + 20));
          result = 0;
          *a4 = v16;
          return result;
        }

        return 561211770;
      }

      if (a2 != 1936876401)
      {
        return result;
      }

      if (*a3 != 4)
      {
        return 561211770;
      }

      result = 0;
      v11 = *(this + 69);
    }

LABEL_36:
    *a4 = v11;
    return result;
  }

  if (a2 > 1835626095)
  {
    if (a2 == 1835626096)
    {
      if (*a3 != 4)
      {
        return 561211770;
      }

      v12 = (*(**(this + 20) + 72))(*(this + 20));
    }

    else
    {
      if (a2 != 1886547309)
      {
        return result;
      }

      if (*a3 != 4)
      {
        return 561211770;
      }

      v12 = (*(**(this + 20) + 40))(*(this + 20));
    }

    v11 = v12;
    result = 0;
    goto LABEL_36;
  }

  v7 = *(this + 10);
  if (a2 == 1667850867)
  {
    if (*a3 == 4)
    {
      v13 = *a4 % v7;
      if (v13)
      {
        v14 = v7 - v13;
      }

      else
      {
        v14 = 0;
      }

      v10 = (*(**(this + 20) + 80))(*(this + 20), (v14 + *a4) / v7);
      goto LABEL_28;
    }
  }

  else
  {
    if (a2 != 1668244083)
    {
      return result;
    }

    if (*a3 == 4)
    {
      v8 = *a4 % v7;
      if (v8)
      {
        v9 = v7 - v8;
      }

      else
      {
        v9 = 0;
      }

      v10 = (*(**(this + 20) + 88))(*(this + 20), (v9 + *a4) / v7);
LABEL_28:
      v15 = v10;
      result = 0;
      v11 = v15 * v7;
      goto LABEL_36;
    }
  }

  return 561211770;
}

uint64_t acv2::SampleRateConverter::GetPropertyInfo(acv2::SampleRateConverter *this, int a2, unsigned int *a3, unsigned __int8 *a4)
{
  result = 1886547824;
  if (a2 <= 1886547308)
  {
    if (a2 <= 1835626095)
    {
      if (a2 != 1667850867)
      {
        v7 = 1668244083;
LABEL_9:
        if (a2 != v7)
        {
          return result;
        }
      }

LABEL_10:
      if (!a3)
      {
        goto LABEL_13;
      }

      v8 = 4;
      goto LABEL_12;
    }

    if (a2 != 1835626096)
    {
      if (a2 != 1886546285)
      {
        return result;
      }

      if (!a3)
      {
LABEL_13:
        if (a4)
        {
          v9 = 0;
LABEL_32:
          result = 0;
          *a4 = v9;
          return result;
        }

        return 0;
      }

      v8 = 8;
LABEL_12:
      *a3 = v8;
      goto LABEL_13;
    }
  }

  else
  {
    if (a2 <= 1936876400)
    {
      if (a2 == 1886547309)
      {
        if (a3)
        {
          *a3 = 4;
        }

        if (a4)
        {
          v9 = (*(**(this + 20) + 32))(*(this + 20));
          goto LABEL_32;
        }

        return 0;
      }

      if (a2 != 1936876400)
      {
        return result;
      }

      if (!a3)
      {
        goto LABEL_26;
      }

      v10 = 8;
      goto LABEL_25;
    }

    if (a2 != 1936876401)
    {
      if (a2 != 2020569203)
      {
        v7 = 2020175987;
        goto LABEL_9;
      }

      goto LABEL_10;
    }
  }

  if (!a3)
  {
    goto LABEL_26;
  }

  v10 = 4;
LABEL_25:
  *a3 = v10;
LABEL_26:
  if (a4)
  {
    v9 = 1;
    goto LABEL_32;
  }

  return 0;
}

uint64_t acv2::SampleRateConverter::description@<X0>(acv2::SampleRateConverter *this@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v18);
  acv2::AudioConverterBase::description(this, __p);
  if ((v17 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v17 & 0x80u) == 0)
  {
    v5 = v17;
  }

  else
  {
    v5 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, v4, v5);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "    Algorithm ", 14);
  v6 = MEMORY[0x193ADEE60](&v18, *(this + 68));
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ", quality ", 10);
  v8 = MEMORY[0x193ADEE60](v7, *(this + 69));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ", ", 2);
  v9 = (*(**(this + 20) + 104))(*(this + 20));
  v10 = strlen(v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v9, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " @ ", 3);
  v11 = MEMORY[0x193ADEE30](v8, *(this + 20));
  LOBYTE(__p[0]) = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, __p, 1);
  if ((v25 & 0x10) != 0)
  {
    v13 = v24;
    if (v24 < v21)
    {
      v24 = v21;
      v13 = v21;
    }

    locale = v20[4].__locale_;
  }

  else
  {
    if ((v25 & 8) == 0)
    {
      v12 = 0;
      a2[23] = 0;
      goto LABEL_22;
    }

    locale = v20[1].__locale_;
    v13 = v20[3].__locale_;
  }

  v12 = v13 - locale;
  if ((v13 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v12 >= 0x17)
  {
    operator new();
  }

  a2[23] = v12;
  if (v12)
  {
    memmove(a2, locale, v12);
  }

LABEL_22:
  a2[v12] = 0;
  v18 = *MEMORY[0x1E69E54E8];
  *(&v18 + *(v18 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v19 = MEMORY[0x1E69E5548] + 16;
  if (v23 < 0)
  {
    operator delete(v22);
  }

  v19 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v20);
  std::ostream::~ostream();
  return MEMORY[0x193ADF120](&v26);
}

void sub_18F693EB8(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  if (a7 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a8);
  MEMORY[0x193ADF120](va);
  _Unwind_Resume(a1);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54E8];
  v3 = *MEMORY[0x1E69E54E8];
  *a1 = *MEMORY[0x1E69E54E8];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

{
  v2 = MEMORY[0x1E69E54E8];
  v3 = *MEMORY[0x1E69E54E8];
  *a1 = *MEMORY[0x1E69E54E8];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x193ADF120](a1 + 112);
  return a1;
}

void acv2::SampleRateConverter::~SampleRateConverter(acv2::SampleRateConverter *this)
{
  *this = &unk_1F0325960;
  ACAudioSpan::~ACAudioSpan((this + 168));
  v2 = *(this + 20);
  *(this + 20) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  acv2::AudioConverterBase::~AudioConverterBase(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0325960;
  ACAudioSpan::~ACAudioSpan((this + 168));
  v2 = *(this + 20);
  *(this + 20) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  acv2::AudioConverterBase::~AudioConverterBase(this);
}

uint64_t _ZNSt3__18optionalI19ACMetadataContainerE7emplaceB8ne200100IJEvEERS1_DpOT_(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    std::vector<char,caulk::rt_allocator<char>>::__destroy_vector::operator()[abi:ne200100](a1);
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 1;
  return a1;
}

void VorbisComment::Clear(VorbisComment *this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  v4 = *(this + 1);
  for (i = *(this + 2); i != v4; std::allocator_traits<std::allocator<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>>>::destroy[abi:ne200100]<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>,void,0>(i))
  {
    i -= 16;
  }

  *(this + 2) = v4;
}

const void **applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void VorbisComment::SetVendorString(const void **a1, const void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

void *std::vector<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>>::reserve(void *result, unint64_t a2)
{
  v8 = *result;
  if (a2 > (result[2] - *result) >> 4)
  {
    v11 = v5;
    v12 = v4;
    v13 = v3;
    v14 = v2;
    v15 = v6;
    v16 = v7;
    v9 = result[1] - v8;
    v10 = result;
    std::allocator<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>>::allocate_at_least[abi:ne200100](a2);
  }

  return result;
}

void *applesauce::CF::StringRef::from_create(void *this, CFTypeRef cf)
{
  *this = cf;
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    this = CFStringGetTypeID();
    if (v2 != this)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  return this;
}

void sub_18F6943B4(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

void *applesauce::CF::DataRef::DataRef(void *a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  return a1;
}

void applesauce::CF::DataRef::~DataRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void VorbisComment::ConvertBase64FieldValueToAlbumArtwork(VorbisComment *this, const applesauce::CF::StringRef *a2, applesauce::CF::DataRef *a3)
{
  if (*this)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:*this options:0];
    if (([v3 length] - 1) <= 0xFFFFFFFE)
    {
      operator new();
    }
  }
}

void sub_18F69454C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9)
{
  MEMORY[0x193ADF220](v9, 0x10D1C40E0437BB5);

  _Unwind_Resume(a1);
}

const void **applesauce::CF::DataRef::operator=(const void **a1, CFTypeRef cf)
{
  v3 = *a1;
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

void VorbisComment::AddUserComment(VorbisComment *this, CFTypeRef cf, const void **a3)
{
  if (cf && *a3)
  {
    CFRetain(cf);
    v6 = *a3;
    if (v6)
    {
      CFRetain(v6);
    }

    v7 = *(this + 2);
    v8 = *(this + 3);
    if (v7 >= v8)
    {
      v9 = *(this + 1);
      v10 = (v7 - v9) >> 4;
      v11 = v10 + 1;
      if ((v10 + 1) >> 60)
      {
        std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
      }

      v12 = v8 - v9;
      if (v12 >> 3 > v11)
      {
        v11 = v12 >> 3;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFF0)
      {
        v13 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      v21 = this + 8;
      if (v13)
      {
        std::allocator<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>>::allocate_at_least[abi:ne200100](v13);
      }

      v14 = (16 * v10);
      v18 = 0;
      v19 = v14;
      *v14 = cf;
      v14[1] = v6;
      v20 = (16 * v10 + 16);
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>>,std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>*>(this + 8, v9, v7, 0);
      v15 = *(this + 1);
      *(this + 1) = 0;
      v16 = *(this + 3);
      v17 = v20;
      *(this + 1) = v20;
      *&v20 = v15;
      *(&v20 + 1) = v16;
      v18 = v15;
      v19 = v15;
      std::__split_buffer<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>>::~__split_buffer(&v18);
      *(this + 2) = v17;
    }

    else
    {
      *v7 = cf;
      *(v7 + 1) = v6;
      *(this + 2) = v7 + 16;
    }
  }
}

void sub_18F69474C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>::~pair(va);
  _Unwind_Resume(a1);
}

void applesauce::CF::StringRef::~StringRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>::~pair(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  return a1;
}

void std::allocator<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>>,std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *v6 = 0;
      a4[1] = v6[1];
      v6[1] = 0;
      v6 += 2;
      a4 += 2;
    }

    while (v6 != a3);
    do
    {
      std::allocator_traits<std::allocator<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>>>::destroy[abi:ne200100]<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>,void,0>(v5);
      v5 += 16;
    }

    while (v5 != a3);
  }
}

uint64_t std::__split_buffer<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 16;
    std::allocator_traits<std::allocator<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>>>::destroy[abi:ne200100]<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>,void,0>(v3 - 16);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::allocator_traits<std::allocator<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>>>::destroy[abi:ne200100]<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>,void,0>(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }
}

uint64_t VorbisComment::ParsePictureBlock(VorbisComment *this, DataSource *a2, _DWORD *a3, unsigned int *a4, applesauce::CF::DataRef *a5)
{
  v36 = *MEMORY[0x1E69E9840];
  v32 = 0;
  memset(length, 0, sizeof(length));
  memset(&v30, 0, sizeof(v30));
  v9 = (*(*this + 48))(this, 0, a2, 4, &v32, &v32 + 4);
  if (!v9)
  {
    if (*a3 <= 3u)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
LABEL_9:
        v9 = 4294967246;
        goto LABEL_44;
      }

      *buf = 136315394;
      *&buf[4] = "VorbisComment.mm";
      v34 = 1024;
      v35 = 510;
      v12 = MEMORY[0x1E69E9C10];
LABEL_8:
      _os_log_impl(&dword_18F5DF000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d  VorbisComment::ParsePicture: exceeded total metadata block size", buf, 0x12u);
      goto LABEL_9;
    }

    LODWORD(v32) = bswap32(v32);
    v9 = (*(*this + 48))(this, 0, a2 + 4, 4, &length[2], &v32 + 4);
    if (v9)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_44;
      }

      *buf = 136315394;
      *&buf[4] = "VorbisComment.mm";
      v34 = 1024;
      v35 = 514;
      v10 = MEMORY[0x1E69E9C10];
      v11 = "%25s:%-5d  VorbisComment::ParsePicture: Read MIME type string length failed";
      goto LABEL_4;
    }

    v13 = bswap32(length[2]);
    length[2] = v13;
    if (v13 + 8 > *a3)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      *buf = 136315394;
      *&buf[4] = "VorbisComment.mm";
      v34 = 1024;
      v35 = 528;
      v12 = MEMORY[0x1E69E9C10];
      goto LABEL_8;
    }

    v14 = a2 + v13 + 8;
    v9 = (*(*this + 48))(this, 0, v14, 4, &length[1], &v32 + 4);
    if (v9)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_44;
      }

      *buf = 136315394;
      *&buf[4] = "VorbisComment.mm";
      v34 = 1024;
      v35 = 530;
      v10 = MEMORY[0x1E69E9C10];
      v11 = "%25s:%-5d  VorbisComment::ParsePicture: Read description string length failed";
      goto LABEL_4;
    }

    v15 = bswap32(length[1]);
    length[1] = v15;
    v16 = v13 + v15 + 12;
    if (v16 > *a3)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      *buf = 136315394;
      *&buf[4] = "VorbisComment.mm";
      v34 = 1024;
      v35 = 544;
      v12 = MEMORY[0x1E69E9C10];
      goto LABEL_8;
    }

    v17 = &v14[v15];
    v9 = (*(*this + 48))(this, 0, v17 + 20, 4, length, &v32 + 4);
    if (v9)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_44;
      }

      *buf = 136315394;
      *&buf[4] = "VorbisComment.mm";
      v34 = 1024;
      v35 = 547;
      v10 = MEMORY[0x1E69E9C10];
      v11 = "%25s:%-5d  VorbisComment::ParsePicture: Read picture data length failed";
      goto LABEL_4;
    }

    v18 = length[0];
    v19 = bswap32(length[0]);
    length[0] = v19;
    v20 = v16 + 20;
    v21 = *a3;
    v22 = v16 + 20 + v19;
    if (4294967275u - v16 >= v19 && v22 > v21 && (v22 & 0xFFFFFF) == v21)
    {
      LODWORD(v21) = v19 + v20;
      *a3 = v19 + v20;
    }

    if (v22 > v21)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      *buf = 136315394;
      *&buf[4] = "VorbisComment.mm";
      v34 = 1024;
      v35 = 562;
      v12 = MEMORY[0x1E69E9C10];
      goto LABEL_8;
    }

    v9 = 0;
    if (!v18 || v32 != 3)
    {
      goto LABEL_44;
    }

    std::vector<unsigned char>::resize(&v30, v19);
    begin = v30.__begin_;
    v9 = (*(*this + 48))(this, 0, v17 + 24, length[0], v30.__begin_, &v32 + 4);
    if (v9)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_42;
      }

      *buf = 136315394;
      *&buf[4] = "VorbisComment.mm";
      v34 = 1024;
      v35 = 566;
      v24 = MEMORY[0x1E69E9C10];
      v25 = "%25s:%-5d  VorbisComment::ParsePicture: Read picture data failed";
    }

    else
    {
      if (HIDWORD(v32) >= length[0])
      {
        v26 = CFDataCreate(*MEMORY[0x1E695E480], begin, length[0]);
        applesauce::CF::DataRef::DataRef(buf, v26);
        v27 = *a4;
        *a4 = *buf;
        *buf = v27;
        applesauce::CF::DataRef::~DataRef(buf);
        v9 = 0;
LABEL_42:
        if (begin)
        {
          operator delete(begin);
        }

        goto LABEL_44;
      }

      v9 = 1685348671;
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_42;
      }

      *buf = 136315394;
      *&buf[4] = "VorbisComment.mm";
      v34 = 1024;
      v35 = 567;
      v24 = MEMORY[0x1E69E9C10];
      v25 = "%25s:%-5d  Unexpected eof while reading FLAC picture block";
    }

    _os_log_impl(&dword_18F5DF000, v24, OS_LOG_TYPE_ERROR, v25, buf, 0x12u);
    goto LABEL_42;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "VorbisComment.mm";
    v34 = 1024;
    v35 = 507;
    v10 = MEMORY[0x1E69E9C10];
    v11 = "%25s:%-5d  VorbisComment::ParsePicture: Read picture type failed";
LABEL_4:
    _os_log_impl(&dword_18F5DF000, v10, OS_LOG_TYPE_ERROR, v11, buf, 0x12u);
  }

LABEL_44:
  v28 = *MEMORY[0x1E69E9840];
  return v9;
}

void sub_18F694FC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (v9)
  {
    operator delete(v9);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned char>::resize(std::vector<char> *a1, unint64_t a2)
{
  v2 = a1->__end_ - a1->__begin_;
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<unsigned char>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1->__end_ = &a1->__begin_[a2];
  }
}

applesauce::CF::DataRef *applesauce::CF::DataRef::DataRef(applesauce::CF::DataRef *this, CFTypeRef cf)
{
  *this = cf;
  if (cf)
  {
    v3 = CFGetTypeID(cf);
    if (v3 != CFDataGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  return this;
}

void sub_18F69509C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

const void **applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void std::vector<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    for (i = v1[1]; i != v2; std::allocator_traits<std::allocator<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>>>::destroy[abi:ne200100]<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>,void,0>(i))
    {
      i -= 16;
    }

    v1[1] = v2;
    v5 = **a1;

    operator delete(v5);
  }
}

void VorbisComment::VorbisComment(VorbisComment *this, DataSource *a2, uint64_t a3, unsigned int a4, int a5)
{
  v55 = *MEMORY[0x1E69E9840];
  *(this + 4) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  numBytes = 0;
  v46 = 0;
  VorbisComment::Clear(this);
  if (a2 && a4)
  {
    if ((*(*a2 + 48))(a2, 0, a3, 4, &numBytes, &numBytes + 4))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *__p = 136315394;
        *&__p[4] = "VorbisComment.mm";
        v52 = 1024;
        v53 = 117;
        v10 = MEMORY[0x1E69E9C10];
        v11 = "%25s:%-5d  VorbisComment::VorbisComment: Read vendor string length failed";
        goto LABEL_33;
      }
    }

    else
    {
      v12 = numBytes;
      if (numBytes + 4 <= a4)
      {
        v13 = a3 + 4;
        if (numBytes)
        {
          std::string::basic_string[abi:ne200100](__p, (numBytes + 1));
          v14 = v54 >= 0 ? __p : *__p;
          v15 = (*(*a2 + 48))(a2, 0, v13, numBytes, v14, &numBytes + 4);
          if (v15)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "VorbisComment.mm";
              v49 = 1024;
              v50 = 126;
              _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  VorbisComment::VorbisComment: Read vendor string failed", buf, 0x12u);
            }
          }

          else
          {
            v16 = v54 >= 0 ? __p : *__p;
            v17 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], v16, numBytes, 0x8000100u, 1u);
            v18 = v17;
            v45 = v17;
            if (v17)
            {
              v19 = CFGetTypeID(v17);
              if (v19 != CFStringGetTypeID())
              {
                exception = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(exception, "Could not construct");
              }

              VorbisComment::SetVendorString(this, v18);
              CFRelease(v18);
            }

            else
            {
              VorbisComment::SetVendorString(this, 0);
            }

            v13 += numBytes;
          }

          if (v54 < 0)
          {
            operator delete(*__p);
          }

          if (v15)
          {
            goto LABEL_34;
          }
        }

        if ((*(*a2 + 48))(a2, 0, v13, 4, &v46, &numBytes + 4))
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *__p = 136315394;
            *&__p[4] = "VorbisComment.mm";
            v52 = 1024;
            v53 = 132;
            v10 = MEMORY[0x1E69E9C10];
            v11 = "%25s:%-5d  VorbisComment::VorbisComment: Read number of user comments failed";
            goto LABEL_33;
          }
        }

        else
        {
          v20 = a4;
          v21 = v12 + 8;
          if (v12 + 8 <= a4)
          {
            std::vector<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>>::reserve(this + 1, v46);
            v23 = v13 + 4;
            if (!v46)
            {
              v27 = 0;
LABEL_70:
              if (a5)
              {
                if (v21 >= v20)
                {
                  if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_34;
                  }

                  *__p = 136315394;
                  *&__p[4] = "VorbisComment.mm";
                  v52 = 1024;
                  v53 = 176;
                  v10 = MEMORY[0x1E69E9C10];
                  v11 = "%25s:%-5d  VorbisComment::VorbisComment: exceed total metadata block size";
                  goto LABEL_33;
                }

                LOBYTE(v43) = 0;
                v27 = (*(*a2 + 48))(a2, 0, v23, 1, &v43, &numBytes + 4);
                if (v27 || !HIDWORD(numBytes))
                {
                  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                  {
                    *__p = 136315394;
                    *&__p[4] = "VorbisComment.mm";
                    v52 = 1024;
                    v53 = 179;
                    _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  VorbisComment::VorbisComment: Read of framing bit failed", __p, 0x12u);
                  }
                }

                else if (v43)
                {
                  v27 = 0;
                }

                else
                {
                  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                  {
                    *__p = 136315394;
                    *&__p[4] = "VorbisComment.mm";
                    v52 = 1024;
                    v53 = 181;
                    _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  VorbisComment::VorbisComment: Framing bit not set", __p, 0x12u);
                  }

                  v27 = -50;
                }
              }

LABEL_87:
              if (!v27)
              {
                goto LABEL_35;
              }

              goto LABEL_34;
            }

            v24 = 0;
            alloc = *MEMORY[0x1E695E480];
            v25 = MEMORY[0x1E69E9C10];
            while (1)
            {
              v44 = 0;
              if ((*(*a2 + 48))(a2, 0, v23, 4, &v44, &numBytes + 4))
              {
                if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_34;
                }

                *__p = 136315394;
                *&__p[4] = "VorbisComment.mm";
                v52 = 1024;
                v53 = 142;
                v10 = MEMORY[0x1E69E9C10];
                v11 = "%25s:%-5d  VorbisComment::VorbisComment: Read user comment string length failed";
                goto LABEL_33;
              }

              v21 += v44 + 4;
              if (v21 > v20)
              {
                break;
              }

              std::string::basic_string[abi:ne200100](__p, v44 + 1);
              v23 += 4;
              if (v54 >= 0)
              {
                v26 = __p;
              }

              else
              {
                v26 = *__p;
              }

              v27 = (*(*a2 + 48))(a2, 0, v23, v44, v26, &numBytes + 4);
              if (v27)
              {
                if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  *&buf[4] = "VorbisComment.mm";
                  v49 = 1024;
                  v50 = 150;
                  _os_log_impl(&dword_18F5DF000, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d  VorbisComment::VorbisComment: Read user comment string failed", buf, 0x12u);
                }

                v28 = 0;
              }

              else
              {
                v23 += v44;
                if (v54 < 0)
                {
                  v29 = *__p;
                  v30 = *__p;
                }

                else
                {
                  v29 = __p;
                  v30 = __p;
                }

                v31 = strchr(v30, 61);
                if (v31)
                {
                  v32 = v31;
                  v33 = CFStringCreateWithBytes(alloc, v29, v31 - v29, 0x8000100u, 1u);
                  applesauce::CF::StringRef::from_create(buf, v33);
                  if (v54 >= 0)
                  {
                    v34 = __p;
                  }

                  else
                  {
                    v34 = *__p;
                  }

                  v35 = CFStringCreateWithBytes(alloc, v32 + 1, v34 - (v32 + 1) + v44, 0x8000100u, 1u);
                  applesauce::CF::StringRef::from_create(&v43, v35);
                  if (*buf && v43)
                  {
                    v56.length = CFStringGetLength(v33);
                    v56.location = 0;
                    if (CFStringCompareWithOptions(v33, @"METADATA_BLOCK_PICTURE", v56, 1uLL))
                    {
                      VorbisComment::AddUserComment(this, *buf, &v43);
                    }

                    else
                    {
                      applesauce::CF::DataRef::DataRef(&cf, *(this + 4));
                      v37 = cf;
                      applesauce::CF::DataRef::~DataRef(&cf);
                      if (!v37)
                      {
                        cf = 0;
                        VorbisComment::ConvertBase64FieldValueToAlbumArtwork(&v43, &cf, v38);
                        applesauce::CF::DataRef::DataRef(&v41, cf);
                        applesauce::CF::DataRef::operator=(this + 4, v41);
                        applesauce::CF::DataRef::~DataRef(&v41);
                        applesauce::CF::DataRef::~DataRef(&cf);
                      }
                    }
                  }

                  applesauce::CF::StringRef::~StringRef(&v43);
                  applesauce::CF::StringRef::~StringRef(buf);
                  v27 = 0;
                  v28 = 1;
                }

                else
                {
                  v36 = MEMORY[0x1E69E9C10];
                  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315394;
                    *&buf[4] = "VorbisComment.mm";
                    v49 = 1024;
                    v50 = 153;
                    _os_log_impl(&dword_18F5DF000, v36, OS_LOG_TYPE_ERROR, "%25s:%-5d  VorbisComment::VorbisComment: could not find equal sign in user comment", buf, 0x12u);
                  }

                  v28 = 0;
                  v27 = -50;
                }
              }

              if (v54 < 0)
              {
                operator delete(*__p);
              }

              if ((v28 & 1) == 0)
              {
                goto LABEL_87;
              }

              ++v24;
              v25 = MEMORY[0x1E69E9C10];
              if (v24 >= v46)
              {
                goto LABEL_70;
              }
            }

            if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_34;
            }

            *__p = 136315394;
            *&__p[4] = "VorbisComment.mm";
            v52 = 1024;
            v53 = 146;
            v10 = MEMORY[0x1E69E9C10];
            v11 = "%25s:%-5d  VorbisComment::VorbisComment: exceed total metadata block size";
LABEL_33:
            _os_log_impl(&dword_18F5DF000, v10, OS_LOG_TYPE_ERROR, v11, __p, 0x12u);
            goto LABEL_34;
          }

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *__p = 136315394;
            *&__p[4] = "VorbisComment.mm";
            v52 = 1024;
            v53 = 136;
            v10 = MEMORY[0x1E69E9C10];
            v11 = "%25s:%-5d  VorbisComment::VorbisComment: exceed total metadata block size";
            goto LABEL_33;
          }
        }
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *__p = 136315394;
        *&__p[4] = "VorbisComment.mm";
        v52 = 1024;
        v53 = 121;
        v10 = MEMORY[0x1E69E9C10];
        v11 = "%25s:%-5d  VorbisComment::VorbisComment: exceed total metadata block size";
        goto LABEL_33;
      }
    }

LABEL_34:
    VorbisComment::Clear(this);
  }

LABEL_35:
  v22 = *MEMORY[0x1E69E9840];
}

void sub_18F695B6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, const void **a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  applesauce::CF::DataRef::~DataRef(&a13);
  applesauce::CF::StringRef::~StringRef(&a14);
  applesauce::CF::StringRef::~StringRef(&a19);
  if (a28 < 0)
  {
    operator delete(__p);
  }

  applesauce::CF::DataRef::~DataRef(v28 + 4);
  a19 = v28 + 1;
  std::vector<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>>::__destroy_vector::operator()[abi:ne200100](&a19);
  applesauce::CF::StringRef::~StringRef(v28);
  _Unwind_Resume(a1);
}

uint64_t VorbisComment::GetVorbisCommentFieldList(const void **a1, unsigned int *a2, uint64_t a3)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1;
  if (*a1)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4 == v3;
  }

  if (v6)
  {
    return 0;
  }

  v8 = (v4 - v3) >> 4;
  v9 = 24 * v8 + 16;
  if (*a2 < v9)
  {
    return 561211770;
  }

  if (24 * v8 == -16)
  {
    return 0;
  }

  v18 = *a1;
  keys = @"VENDOR";
  if (v5)
  {
    *a3 = CFDictionaryCreate(*MEMORY[0x1E695E480], &keys, &v18, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v3 = a1[1];
    v4 = a1[2];
  }

  *(a3 + 8) = v8;
  if (v3 != v4)
  {
    v13 = 0;
    v14 = a3 + 16;
    do
    {
      v16 = *v3;
      v15 = *(v3 + 1);
      v17 = (v14 + 24 * v13);
      *v17 = *v3;
      v17[1] = v15;
      if (v16)
      {
        CFRetain(v16);
        v15 = v17[1];
      }

      if (v15)
      {
        CFRetain(v15);
      }

      v17[2] = 0;
      ++v13;
      v3 += 16;
    }

    while (v3 != v4);
  }

  result = 0;
  *a2 = v9;
  return result;
}

void VorbisComment::SetVendorString(const void **this, const __CFString *a2)
{
  Copy = CFStringCreateCopy(*MEMORY[0x1E695E480], a2);
  v4 = Copy;
  if (Copy)
  {
    v5 = CFGetTypeID(Copy);
    if (v5 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    VorbisComment::SetVendorString(this, v4);
    CFRelease(v4);
  }

  else
  {

    VorbisComment::SetVendorString(this, 0);
  }
}

void sub_18F695E3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a10);
  _Unwind_Resume(a1);
}

void VorbisComment::RemoveUserCommentsWithFieldName(VorbisComment *this, const __CFString *a2)
{
  v2 = *(this + 1);
  if (v2 != *(this + 2))
  {
    do
    {
      v5 = *v2;
      v13.length = CFStringGetLength(*v2);
      v13.location = 0;
      if (CFStringCompareWithOptions(v5, a2, v13, 1uLL))
      {
        v2 += 2;
        v6 = *(this + 2);
      }

      else
      {
        v7 = *(this + 2);
        if (v2 + 2 == v7)
        {
          v6 = v2;
        }

        else
        {
          v8 = v2;
          v6 = v2;
          do
          {
            v9 = *(v6 + 1);
            v6 += 2;
            v10 = *v8;
            v11 = v8[1];
            *v8 = v9;
            *v6 = v10;
            v8[3] = v11;
            v12 = v8 + 4;
            v8 = v6;
          }

          while (v12 != v7);
          v7 = *(this + 2);
        }

        while (v7 != v6)
        {
          v7 -= 16;
          std::allocator_traits<std::allocator<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>>>::destroy[abi:ne200100]<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>,void,0>(v7);
        }

        *(this + 2) = v6;
      }
    }

    while (v2 != v6);
  }
}

void VorbisComment::FillInfoDictionary(const __CFString **this, CACFDictionary *a2)
{
  if (*this)
  {
    CACFDictionary::AddString(a2, @"source encoder", *this);
  }

  else if (this[2] == this[1])
  {
    return;
  }

  if (sInitKeyDictionariesOnce != -1)
  {
    dispatch_once_f(&sInitKeyDictionariesOnce, 0, InitializeKeyDictionaries);
  }

  v4 = this[1];
  v5 = this[2];
  if (v4 != v5)
  {
    v6 = sVorbisCommentKeysToInfoDictionaryKeys;
    v7 = *MEMORY[0x1E695E480];
    do
    {
      Length = CFStringGetLength(*v4);
      MutableCopy = CFStringCreateMutableCopy(v7, Length, *v4);
      CFStringUppercase(MutableCopy, 0);
      cf = MutableCopy;
      if (MutableCopy)
      {
        v10 = CFGetTypeID(MutableCopy);
        if (v10 != CFStringGetTypeID())
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
        }

        v11 = cf;
      }

      else
      {
        v11 = 0;
      }

      Value = CFDictionaryGetValue(v6, v11);
      if (Value && (CACFDictionary::HasKey(a2, Value) & 1) == 0)
      {
        CACFDictionary::AddString(a2, Value, v4[1]);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      v4 += 2;
    }

    while (v4 != v5);
  }
}

void sub_18F6960D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

CFDictionaryRef InitializeKeyDictionaries(void *a1)
{
  result = CFDictionaryCreate(*MEMORY[0x1E695E480], &sVorbisCommentKeys, &sInfoDictionaryKeys, 9, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  sVorbisCommentKeysToInfoDictionaryKeys = result;
  return result;
}

uint64_t VorbisComment::FillLoudnessInfoDictionary(VorbisComment *this, CACFDictionary *a2)
{
  v4 = 2003334207;
  if (__PAIR128__(*(this + 2), 0) != *this)
  {
    v5 = MEMORY[0x1E695E9D8];
    v6 = MEMORY[0x1E695E9E8];
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v29 = 257;
    v26 = CFDictionaryCreateMutable(0, 0, v5, v6);
    v27 = 257;
    v8 = *(this + 1);
    v7 = *(this + 2);
    if (v8 != v7)
    {
      v9 = 0;
      v10 = 0;
      while (1)
      {
        v11 = *v8;
        Length = CFStringGetLength(*v8);
        v30.location = 0;
        v30.length = Length;
        if (CFStringCompareWithOptions(v11, @"LOUDNESS", v30, 1uLL))
        {
          v31.location = 0;
          v31.length = Length;
          if (CFStringCompareWithOptions(v11, @"iTunLOUD", v31, 0))
          {
            v32.location = 0;
            v32.length = Length;
            if (CFStringCompareWithOptions(v11, @"iTunNORM", v32, 0))
            {
              AddTextToReplayGainDict(v11, v8[1], &v26);
            }

            else if (!CACFDictionary::Size(&Mutable))
            {
              applesauce::CF::convert_to<std::string,0>(&__p, v8[1]);
              v17 = (v25 & 0x80u) == 0 ? &__p : __p;
              ParseiTunesNORMData(v17, &Mutable, v16);
              if (v25 < 0)
              {
                operator delete(__p);
              }
            }

            if ((v10 & 1) == 0)
            {
LABEL_32:
              v10 = 0;
              goto LABEL_33;
            }
          }

          else if ((v10 & 1) == 0)
          {
            applesauce::CF::convert_to<std::string,0>(&__p, v8[1]);
            cf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            v22 = 257;
            if ((v25 & 0x80u) == 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p;
            }

            if ((v25 & 0x80u) == 0)
            {
              v14 = v25;
            }

            else
            {
              v14 = v24;
            }

            v15 = ParseiTunesLOUDData(p_p, v14, &cf);
            if (!v15)
            {
              CACFDictionary::SetCFMutableDictionaryFromCopy(a2, cf, 1);
              v9 += CACFDictionary::Size(&cf);
            }

            CACFDictionary::~CACFDictionary(&cf);
            if (v25 < 0)
            {
              operator delete(__p);
              if (v15)
              {
                goto LABEL_32;
              }
            }

            else if (v15)
            {
              goto LABEL_32;
            }
          }
        }

        else if ((v10 & 1) == 0)
        {
          applesauce::CF::convert_to<std::string,0>(&__p, v8[1]);
          operator new[]();
        }

        if (CACFDictionary::Size(&Mutable) && CACFDictionary::Size(&v26) == 4)
        {
          goto LABEL_38;
        }

        v10 = 1;
LABEL_33:
        v8 += 2;
        if (v8 == v7)
        {
          goto LABEL_38;
        }
      }
    }

    v9 = 0;
LABEL_38:
    if (CACFDictionary::Size(&Mutable))
    {
      v18 = CACFDictionary::Size(&Mutable);
      CACFDictionary::AddDictionary(a2, @"sound check info", Mutable);
      v9 += v18;
    }

    if (CACFDictionary::Size(&v26))
    {
      v19 = CACFDictionary::Size(&v26);
      CACFDictionary::AddDictionary(a2, @"REPLAYGAIN", v26);
      v9 += v19;
    }

    CACFDictionary::~CACFDictionary(&v26);
    CACFDictionary::~CACFDictionary(&Mutable);
    if (v9)
    {
      return 0;
    }

    else
    {
      return 2003334207;
    }
  }

  return v4;
}

void sub_18F6966A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, char a20)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  CACFDictionary::~CACFDictionary(&a18);
  CACFDictionary::~CACFDictionary(&a20);
  _Unwind_Resume(a1);
}

CFMutableDictionaryRef CACFDictionary::SetCFMutableDictionaryFromCopy(CACFDictionary *this, CFDictionaryRef theDict, char a3)
{
  if (*(this + 8) == 1)
  {
    v6 = *this;
    if (*this)
    {
      CFRelease(v6);
    }
  }

  result = CFDictionaryCreateMutableCopy(0, 0, theDict);
  *this = result;
  *(this + 9) = 1;
  *(this + 8) = a3;
  return result;
}

void applesauce::CF::details::parse_object<minijson::const_buffer_context>(CFDictionaryRef *a1, void *a2)
{
  v47 = 0;
  v48 = 0;
  v46 = &v47;
  v3 = a2[1];
  if (v3 >= 0x21)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = &unk_1F0325A28;
    v8 = a2 + 5;
    v41 = 12;
    goto LABEL_102;
  }

  LOBYTE(v5) = 0;
  v49 = 0;
  if (*a2 <= 2u)
  {
    v6 = 8 * (*a2 & 3);
    v5 = 0x5B7B00u >> v6;
    v49 = 1u >> v6;
  }

  v7 = 0;
  *a2 = 0;
  v8 = a2 + 5;
  v44 = *MEMORY[0x1E695E4D0];
  v43 = *MEMORY[0x1E695E4C0];
  v9 = "";
  v10 = MEMORY[0x1E69E9830];
LABEL_5:
  while (2)
  {
    v11 = v49;
    while (1)
    {
      while (1)
      {
        do
        {
          if (a2[1] != v3)
          {
            exception = __cxa_allocate_exception(0x18uLL);
            *exception = &unk_1F0325A28;
            v41 = 11;
            goto LABEL_102;
          }

          if (v11)
          {
            v12 = a2[5];
            if (v12 >= a2[4])
            {
              v14 = 0;
              LOBYTE(v5) = 0;
              goto LABEL_13;
            }

            v13 = a2[2];
            a2[5] = v12 + 1;
            LOBYTE(v5) = *(v13 + v12);
          }

          v14 = v5;
          if ((v5 & 0x80) != 0)
          {
            v15 = __maskrune(v5, 0x4000uLL);
            goto LABEL_14;
          }

LABEL_13:
          v15 = *(v10 + 4 * v14 + 60) & 0x4000;
LABEL_14:
          v11 = 1;
        }

        while (v15);
        if (v7 <= 2)
        {
          break;
        }

        if (v7 == 3)
        {
          v7 = 4;
          if (v5 != 58)
          {
            exception = __cxa_allocate_exception(0x18uLL);
            *exception = &unk_1F0325A28;
            v41 = 9;
            goto LABEL_102;
          }
        }

        else
        {
          if (v7 != 5)
          {
            v49 = 1;
            v50 = v5;
            minijson::detail::parse_value_helper<minijson::const_buffer_context>(&v51, a2, &v50, &v49);
            if (v51 <= 2)
            {
              if (v51)
              {
                if (v51 != 1)
                {
                  if (v51 != 2)
                  {
                    goto LABEL_71;
                  }

                  if (v53)
                  {
                    v16 = v44;
                  }

                  else
                  {
                    v16 = v43;
                  }

                  v57 = v16;
                  std::string::basic_string[abi:ne200100]<0>(&valuePtr, v9);
                  p_valuePtr = &valuePtr;
                  v17 = std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v46, &valuePtr);
                  v18 = v17[7];
                  v17[7] = v16;
                  v57 = v18;
                  if (SHIBYTE(v56) < 0)
                  {
                    operator delete(valuePtr);
                    if (!v18)
                    {
                      goto LABEL_71;
                    }
                  }

                  else if (!v18)
                  {
                    goto LABEL_71;
                  }

                  goto LABEL_68;
                }

                valuePtr = *(&v53 + 1);
                v57 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
                if (!v57)
                {
                  v42 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v42, "Could not construct");
                }

                std::string::basic_string[abi:ne200100]<0>(&valuePtr, v9);
                p_valuePtr = &valuePtr;
                v23 = std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v46, &valuePtr);
                v21 = v23[7];
                v23[7] = v57;
                v57 = v21;
                if (SHIBYTE(v56) < 0)
                {
                  operator delete(valuePtr);
                  v21 = v57;
                  if (!v57)
                  {
                    goto LABEL_71;
                  }
                }

                else if (!v21)
                {
                  goto LABEL_71;
                }
              }

              else
              {
                applesauce::CF::TypeRef::TypeRef(&v57, v52);
                std::string::basic_string[abi:ne200100]<0>(&valuePtr, v9);
                p_valuePtr = &valuePtr;
                v20 = std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v46, &valuePtr);
                v21 = v20[7];
                v20[7] = v57;
                v57 = v21;
                if (SHIBYTE(v56) < 0)
                {
                  operator delete(valuePtr);
                  v21 = v57;
                  if (!v57)
                  {
                    goto LABEL_71;
                  }
                }

                else if (!v21)
                {
                  goto LABEL_71;
                }
              }

              CFRelease(v21);
              goto LABEL_71;
            }

            switch(v51)
            {
              case 3:
                applesauce::CF::details::parse_object<minijson::const_buffer_context>(&v57, a2);
                std::string::basic_string[abi:ne200100]<0>(&valuePtr, v9);
                p_valuePtr = &valuePtr;
                v22 = std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v46, &valuePtr);
                v18 = v22[7];
                v22[7] = v57;
                v57 = v18;
                if (SHIBYTE(v56) < 0)
                {
                  operator delete(valuePtr);
                  if (!v18)
                  {
                    goto LABEL_71;
                  }

                  break;
                }

                if (!v18)
                {
                  goto LABEL_71;
                }

                break;
              case 4:
                applesauce::CF::details::parse_array<minijson::const_buffer_context>(&v57, a2);
                std::string::basic_string[abi:ne200100]<0>(&valuePtr, v9);
                p_valuePtr = &valuePtr;
                v24 = std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v46, &valuePtr);
                v18 = v24[7];
                v24[7] = v57;
                v57 = v18;
                if (SHIBYTE(v56) < 0)
                {
                  operator delete(valuePtr);
                  if (!v18)
                  {
                    goto LABEL_71;
                  }

                  break;
                }

                if (!v18)
                {
                  goto LABEL_71;
                }

                break;
              case 5:
                v57 = 0;
                std::string::basic_string[abi:ne200100]<0>(&valuePtr, v9);
                p_valuePtr = &valuePtr;
                v19 = std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v46, &valuePtr);
                v18 = v19[7];
                v19[7] = 0;
                v57 = v18;
                if (SHIBYTE(v56) < 0)
                {
                  operator delete(valuePtr);
                  if (!v18)
                  {
                    goto LABEL_71;
                  }

                  break;
                }

                if (!v18)
                {
LABEL_71:
                  v7 = 5;
                  LOBYTE(v5) = v50;
                  if (!v50)
                  {
                    v25 = __cxa_allocate_exception(0x10uLL);
                    std::runtime_error::runtime_error(v25, "This line should never be reached, please file a bug report");
                  }

                  goto LABEL_5;
                }

                break;
              default:
                goto LABEL_71;
            }

LABEL_68:
            CFRelease(v18);
            goto LABEL_71;
          }

          v7 = 2;
          if (v5 != 44)
          {
            if (v5 == 125)
            {
              goto LABEL_74;
            }

            exception = __cxa_allocate_exception(0x18uLL);
            *exception = &unk_1F0325A28;
            v41 = 10;
LABEL_102:
            v39 = *v8 - 1;
            if (!*v8)
            {
              v39 = 0;
            }

            exception[1] = v39;
            *(exception + 4) = v41;
          }
        }
      }

      if (v7)
      {
        break;
      }

      v7 = 1;
      if (v5 != 123)
      {
        exception = __cxa_allocate_exception(0x18uLL);
        *exception = &unk_1F0325A28;
        v41 = 8;
        goto LABEL_102;
      }
    }

    if (v7 != 1)
    {
      v49 = 1;
      v50 = v5;
      if (v5 != 34)
      {
        goto LABEL_100;
      }

LABEL_39:
      a2[7] = a2[3] + a2[6];
      minijson::detail::read_quoted_string<minijson::const_buffer_context>(a2);
      v9 = a2[7];
      v7 = 3;
      LOBYTE(v5) = 34;
      continue;
    }

    break;
  }

  v49 = 1;
  v50 = v5;
  if (v5 == 34)
  {
    goto LABEL_39;
  }

  if (v5 != 125)
  {
LABEL_100:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = &unk_1F0325A28;
    v41 = 1;
    goto LABEL_102;
  }

LABEL_74:
  v26 = a2[1];
  if (v26)
  {
    a2[1] = v26 - 1;
  }

  valuePtr = 0;
  v56 = 0uLL;
  if (v48)
  {
    if (!(v48 >> 60))
    {
      v54 = &valuePtr;
      std::allocator<applesauce::CF::TypeRefPair>::allocate_at_least[abi:ne200100](v48);
    }

    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }

  v27 = v46;
  if (v46 != &v47)
  {
    v28 = v56;
    do
    {
      if (v28 >= *(&v56 + 1))
      {
        v29 = (v28 - valuePtr) >> 4;
        if ((v29 + 1) >> 60)
        {
          std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
        }

        v30 = (*(&v56 + 1) - valuePtr) >> 3;
        if (v30 <= v29 + 1)
        {
          v30 = v29 + 1;
        }

        if (*(&v56 + 1) - valuePtr >= 0x7FFFFFFFFFFFFFF0uLL)
        {
          v31 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v31 = v30;
        }

        v54 = &valuePtr;
        if (v31)
        {
          std::allocator<applesauce::CF::TypeRefPair>::allocate_at_least[abi:ne200100](v31);
        }

        v51 = 0;
        v52 = (16 * v29);
        v53 = (16 * v29);
        std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::construct[abi:ne200100]<applesauce::CF::TypeRefPair,std::string const&,applesauce::CF::TypeRef const&,void,0>((16 * v29), v27 + 32, v27 + 7);
        *&v53 = v53 + 16;
        v32 = (valuePtr + v52 - v56);
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>(&valuePtr, valuePtr, v56, v32);
        v33 = valuePtr;
        v34 = *(&v56 + 1);
        valuePtr = v32;
        v45 = v53;
        v56 = v53;
        *&v53 = v33;
        *(&v53 + 1) = v34;
        v51 = v33;
        v52 = v33;
        std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(&v51);
        v28 = v45;
      }

      else
      {
        std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::construct[abi:ne200100]<applesauce::CF::TypeRefPair,std::string const&,applesauce::CF::TypeRef const&,void,0>(v28, v27 + 32, v27 + 7);
        v28 += 16;
      }

      *&v56 = v28;
      v35 = v27[1];
      if (v35)
      {
        do
        {
          v36 = v35;
          v35 = *v35;
        }

        while (v35);
      }

      else
      {
        do
        {
          v36 = v27[2];
          v37 = *v36 == v27;
          v27 = v36;
        }

        while (!v37);
      }

      v27 = v36;
    }

    while (v36 != &v47);
  }

  CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(&valuePtr);
  v51 = &valuePtr;
  std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](&v51);
  *a1 = CFDictionaryRef;
  std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::destroy(v47);
}

void sub_18F697004(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef((v27 - 96));
  std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::destroy(a14);
  _Unwind_Resume(a1);
}

void applesauce::CF::TypeRef::~TypeRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::destroy(*(a1 + 1));
    v2 = *(a1 + 7);
    if (v2)
    {
      CFRelease(v2);
    }

    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

CFDictionaryRef applesauce::CF::details::make_CFDictionaryRef(uint64_t **a1)
{
  v2 = (a1[1] - *a1) >> 4;
  keys = 0;
  v33 = 0;
  v34 = 0;
  std::vector<void const*>::reserve(&keys, v2);
  values = 0;
  v30 = 0;
  v31 = 0;
  std::vector<void const*>::reserve(&values, v2);
  v4 = *a1;
  v3 = a1[1];
  v5 = keys;
  v6 = values;
  v28 = v3;
  if (v4 != v3)
  {
    v27 = v2;
    v7 = v33;
    v8 = v34;
    v10 = v30;
    v9 = v31;
    do
    {
      v11 = *v4;
      if (!*v4 || !v4[1])
      {
        keys = v5;
        values = v6;
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      if (v7 >= v8)
      {
        v12 = v7 - v5;
        v13 = (v7 - v5) >> 3;
        v14 = v13 + 1;
        if ((v13 + 1) >> 61)
        {
          keys = v5;
          values = v6;
          std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
        }

        if ((v8 - v5) >> 2 > v14)
        {
          v14 = (v8 - v5) >> 2;
        }

        if (v8 - v5 >= 0x7FFFFFFFFFFFFFF8)
        {
          v15 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        if (v15)
        {
          std::allocator<applesauce::CF::TypeRef>::allocate_at_least[abi:ne200100](v15);
        }

        v16 = (8 * v13);
        v8 = 0;
        *v16 = v11;
        v7 = (v16 + 1);
        memcpy(0, v5, v12);
        if (v5)
        {
          operator delete(v5);
        }

        v5 = 0;
      }

      else
      {
        *v7 = v11;
        v7 += 8;
      }

      v17 = v4[1];
      if (v10 >= v9)
      {
        v18 = v10 - v6;
        v19 = (v10 - v6) >> 3;
        v20 = v19 + 1;
        if ((v19 + 1) >> 61)
        {
          keys = v5;
          values = v6;
          std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
        }

        if ((v9 - v6) >> 2 > v20)
        {
          v20 = (v9 - v6) >> 2;
        }

        if (v9 - v6 >= 0x7FFFFFFFFFFFFFF8)
        {
          v21 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v20;
        }

        if (v21)
        {
          std::allocator<applesauce::CF::TypeRef>::allocate_at_least[abi:ne200100](v21);
        }

        v22 = (8 * v19);
        v9 = 0;
        *v22 = v17;
        v10 = (v22 + 1);
        memcpy(0, v6, v18);
        if (v6)
        {
          operator delete(v6);
        }

        v6 = 0;
      }

      else
      {
        *v10 = v17;
        v10 += 8;
      }

      v4 += 2;
    }

    while (v4 != v28);
    v33 = v7;
    v34 = v8;
    v31 = v9;
    keys = v5;
    values = v6;
    v30 = v10;
    v2 = v27;
  }

  v23 = CFDictionaryCreate(0, v5, v6, v2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v23)
  {
    v26 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v26, "Could not construct");
  }

  if (values)
  {
    operator delete(values);
  }

  if (keys)
  {
    operator delete(keys);
  }

  return v23;
}

void sub_18F697474(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14)
{
  __cxa_free_exception(v14);
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(a1);
}

void *std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::construct[abi:ne200100]<applesauce::CF::TypeRefPair,std::string const&,applesauce::CF::TypeRef const&,void,0>(void *a1, const UInt8 *a2, const void **a3)
{
  v5 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v6 = a2[23];
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  result = CFStringCreateWithBytes(0, a2, v6, 0x8000100u, 0);
  *a1 = result;
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v8 = *a3;
  if (v8)
  {
    result = CFRetain(v8);
  }

  a1[1] = v8;
  return result;
}

void std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    for (i = v1[1]; i != v2; std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(i))
    {
      i -= 16;
    }

    v1[1] = v2;
    v5 = **a1;

    operator delete(v5);
  }
}

void std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }
}

void std::allocator<applesauce::CF::TypeRefPair>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *v6 = 0;
      a4[1] = v6[1];
      v6[1] = 0;
      v6 += 2;
      a4 += 2;
    }

    while (v6 != a3);
    do
    {
      std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(v5);
      v5 += 16;
    }

    while (v5 != a3);
  }
}

uint64_t std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 16;
    std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(v3 - 16);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

const void **applesauce::CF::ObjectRef<void const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *std::vector<void const*>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::allocator<applesauce::CF::TypeRef>::allocate_at_least[abi:ne200100](a2);
    }

    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void *minijson::detail::read_quoted_string<minijson::const_buffer_context>(minijson::detail::buffer_context_base *this)
{
  v43 = 0;
  v42 = 0;
  v2 = *(this + 5);
  if (v2 >= *(this + 4))
  {
LABEL_72:
    exception = __cxa_allocate_exception(0x18uLL);
    v25 = *(this + 5);
    v26 = v25 != 0;
    v27 = v25 - 1;
    if (!v26)
    {
      v27 = 0;
    }

    *exception = &unk_1F0325A28;
    exception[1] = v27;
    v28 = 5;
    goto LABEL_75;
  }

  v3 = 0;
  v4 = 0;
  v5 = 1;
  v6 = MEMORY[0x1E69E9830];
  while (1)
  {
    v7 = *(this + 2);
    *(this + 5) = v2 + 1;
    v8 = *(v7 + v2);
    if (!v8)
    {
      goto LABEL_72;
    }

    if (v5 != 3)
    {
      break;
    }

    *(&v42 + v3) = v8;
    if (v3 == 3)
    {
      for (i = 0; i != 4; ++i)
      {
        v10 = *(&v42 + i);
        if (v10 < 0 || (*(v6 + 4 * v10 + 60) & 0x10000) == 0)
        {
          v30 = __cxa_allocate_exception(1uLL);
        }
      }

      v11 = minijson::detail::parse_long(&v42, 0x10);
      if (!(v11 | v4))
      {
        v33 = __cxa_allocate_exception(0x18uLL);
        v34 = *(this + 5);
        v26 = v34 != 0;
        v35 = v34 - 1;
        if (!v26)
        {
          v35 = 0;
        }

        *v33 = &unk_1F0325A28;
        v33[1] = v35;
        *(v33 + 4) = 13;
      }

      if (v4)
      {
        if (((v4 + 0x2000) >> 11) > 0x1Eu)
        {
          if ((v4 >> 10) > 0x36u || ((v11 + 0x2000) >> 10) <= 0x3Eu)
          {
LABEL_84:
            v36 = __cxa_allocate_exception(1uLL);
          }

          v18 = ((v4 + 10240) << 10) + v11 + 74752;
          v12 = (v18 >> 18) | 0xF0;
          v15 = (v18 >> 12) & 0x3F | 0x80;
          v14 = (v18 >> 6) & 0x3F | 0x80;
          v13 = ((v11 & 0x3F) << 24) | 0x80000000;
        }

        else
        {
          if (v11)
          {
            goto LABEL_84;
          }

          v12 = v4;
          if (v4 >= 0x80u)
          {
            v13 = 0;
            if (v4 > 0x7FFu)
            {
              v15 = (v4 >> 6) & 0x3F | 0x80;
              v14 = v4 & 0x3F | 0x80;
              v12 = (v4 >> 12) | 0xE0;
            }

            else
            {
              v14 = 0;
              v15 = v4 & 0x3F | 0x80;
              v12 = (v4 >> 6) | 0xC0;
            }
          }

          else
          {
            v13 = 0;
            v14 = 0;
            v15 = 0;
          }
        }

        v19 = 0;
        v41 = v13 | (v14 << 16) | (v15 << 8) | v12;
        do
        {
          if (v19 && !*(&v41 + v19))
          {
            break;
          }

          minijson::detail::buffer_context_base::write(this, *(&v41 + v19++));
        }

        while (v19 != 4);
LABEL_68:
        v3 = 0;
LABEL_69:
        v4 = 0;
LABEL_70:
        v5 = 1;
        goto LABEL_71;
      }

      if (v11 >> 10 != 54)
      {
        if (((v11 + 0x2000) >> 11) > 0x1Eu)
        {
          v39 = __cxa_allocate_exception(1uLL);
        }

        v20 = v11;
        if (v11 >= 0x80u)
        {
          if (v11 > 0x7FFu)
          {
            v20 = (v11 >> 12) | 0xE0;
            v22 = (v11 >> 6) & 0x3F | 0x80;
            v21 = ((v11 & 0x3F) << 16) | 0x800000;
          }

          else
          {
            v21 = 0;
            v20 = (v11 >> 6) | 0xC0;
            v22 = v11 & 0x3F | 0x80;
          }
        }

        else
        {
          v21 = 0;
          v22 = 0;
        }

        v23 = 0;
        v40 = v21 | (v22 << 8) | v20;
        do
        {
          if (v23 && !*(&v40 + v23))
          {
            break;
          }

          minijson::detail::buffer_context_base::write(this, *(&v40 + v23++));
        }

        while (v23 != 4);
        goto LABEL_68;
      }

      v3 = 0;
      v5 = 1;
      v4 = v11;
    }

    else
    {
      v5 = 3;
      ++v3;
    }

LABEL_71:
    v2 = *(this + 5);
    if (v2 >= *(this + 4))
    {
      goto LABEL_72;
    }
  }

  if (v5 == 2)
  {
    if (v8 <= 101)
    {
      if (v8 > 91)
      {
        if (v8 == 92)
        {
          v16 = this;
          v17 = 92;
        }

        else
        {
          if (v8 != 98)
          {
            goto LABEL_85;
          }

          v16 = this;
          v17 = 8;
        }
      }

      else if (v8 == 34)
      {
        v16 = this;
        v17 = 34;
      }

      else
      {
        if (v8 != 47)
        {
          goto LABEL_85;
        }

        v16 = this;
        v17 = 47;
      }
    }

    else if (v8 <= 113)
    {
      if (v8 == 102)
      {
        v16 = this;
        v17 = 12;
      }

      else
      {
        if (v8 != 110)
        {
LABEL_85:
          exception = __cxa_allocate_exception(0x18uLL);
          v37 = *(this + 5);
          v26 = v37 != 0;
          v38 = v37 - 1;
          if (!v26)
          {
            v38 = 0;
          }

          *exception = &unk_1F0325A28;
          exception[1] = v38;
          v28 = 3;
          goto LABEL_75;
        }

        v16 = this;
        v17 = 10;
      }
    }

    else
    {
      switch(v8)
      {
        case 'r':
          v16 = this;
          v17 = 13;
          break;
        case 't':
          v16 = this;
          v17 = 9;
          break;
        case 'u':
          v5 = 3;
          goto LABEL_71;
        default:
          goto LABEL_85;
      }
    }

    minijson::detail::buffer_context_base::write(v16, v17);
    goto LABEL_70;
  }

  if (v8 == 92)
  {
    v5 = 2;
    goto LABEL_71;
  }

  if (v4)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v31 = *(this + 5);
    v26 = v31 != 0;
    v32 = v31 - 1;
    if (!v26)
    {
      v32 = 0;
    }

    *exception = &unk_1F0325A28;
    exception[1] = v32;
    v28 = 2;
LABEL_75:
    *(exception + 4) = v28;
  }

  if (v8 != 34)
  {
    minijson::detail::buffer_context_base::write(this, v8);
    goto LABEL_69;
  }

  return minijson::detail::buffer_context_base::write(this, 0);
}

void sub_18F697DB0(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(exception_object);
    exception = __cxa_allocate_exception(0x18uLL);
    v4 = *(v2 + 40);
    v5 = v4 != 0;
    v6 = v4 - 1;
    if (!v5)
    {
      v6 = 0;
    }

    *exception = &unk_1F0325A28;
    exception[1] = v6;
    *(exception + 4) = 4;
  }

  _Unwind_Resume(exception_object);
}

uint64_t minijson::detail::parse_value_helper<minijson::const_buffer_context>(uint64_t result, minijson::detail::buffer_context_base *this, _BYTE *a3, _BYTE *a4)
{
  v5 = result;
  v6 = *a3;
  switch(v6)
  {
    case '""':
      *(this + 7) = *(this + 3) + *(this + 6);
      result = minijson::detail::read_quoted_string<minijson::const_buffer_context>(this);
      v8 = *(this + 7);
      *v5 = 0;
      *(v5 + 4) = 0;
      *(v5 + 16) = 0;
      *(v5 + 24) = 0;
      *(v5 + 8) = v8;
      return result;
    case '[':
      *result = 4;
      *(result + 4) = 0;
      *(result + 16) = 0;
      *(result + 24) = 0;
      *(result + 8) = "";
      v7 = 2;
      goto LABEL_6;
    case '{':
      *result = 3;
      *(result + 4) = 0;
      *(result + 16) = 0;
      *(result + 24) = 0;
      *(result + 8) = "";
      v7 = 1;
LABEL_6:
      *this = v7;
      ++*(this + 1);
      return result;
  }

  *(this + 7) = *(this + 3) + *(this + 6);
  if (v6)
  {
    minijson::detail::buffer_context_base::write(this, v6);
  }

  v11 = *(this + 5);
  if (v11 >= *(this + 4))
  {
    goto LABEL_23;
  }

  v12 = MEMORY[0x1E69E9830];
  while (1)
  {
    v13 = *(this + 2);
    *(this + 5) = v11 + 1;
    v14 = *(v13 + v11);
    v15 = v14;
    if (v14 <= 92)
    {
      if (v14 == 44)
      {
        goto LABEL_27;
      }

      if (!v14)
      {
        goto LABEL_23;
      }
    }

    else if (v14 == 93 || v14 == 125)
    {
      goto LABEL_27;
    }

    if ((v14 & 0x80000000) == 0)
    {
      if ((*(v12 + 4 * v14 + 60) & 0x4000) != 0)
      {
        break;
      }

      goto LABEL_22;
    }

    if (__maskrune(v14, 0x4000uLL))
    {
      break;
    }

LABEL_22:
    minijson::detail::buffer_context_base::write(this, v15);
    v11 = *(this + 5);
    if (v11 >= *(this + 4))
    {
      goto LABEL_23;
    }
  }

  if (!v15)
  {
LABEL_23:
    exception = __cxa_allocate_exception(0x18uLL);
    v17 = *(this + 5);
    v18 = v17 != 0;
    v19 = v17 - 1;
    if (!v18)
    {
      v19 = 0;
    }

    *exception = &unk_1F0325A28;
    exception[1] = v19;
    *(exception + 4) = 7;
  }

LABEL_27:
  minijson::detail::buffer_context_base::write(this, 0);
  v20 = *(this + 7);
  if (!strcmp(v20, "true"))
  {
    v24 = 2;
    result = 1;
    v21 = 1.0;
LABEL_33:
    v23 = 1;
    v22 = 1;
    goto LABEL_34;
  }

  v21 = 0.0;
  if (!strcmp(v20, "false"))
  {
    result = 0;
    v24 = 2;
    goto LABEL_33;
  }

  if (!strcmp(v20, "null"))
  {
    result = 0;
    v23 = 0;
    v22 = 0;
    v24 = 5;
  }

  else
  {
    result = minijson::detail::parse_long(v20, 0xA);
    v21 = result;
    v22 = 1;
    v23 = 1;
    v24 = 1;
  }

LABEL_34:
  *v5 = v24;
  *(v5 + 4) = v22;
  *(v5 + 5) = v23;
  *(v5 + 8) = v20;
  *(v5 + 16) = result;
  *(v5 + 24) = v21;
  *a3 = v15;
  *a4 = 0;
  return result;
}

void sub_18F6980FC(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(exception_object);
    minijson::detail::parse_double(v2, v3);
    __cxa_end_catch();
    JUMPOUT(0x18F698084);
  }

  _Unwind_Resume(exception_object);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRef::TypeRef(applesauce::CF::TypeRef *this, char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  if ((v9 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v4 = v9;
  }

  else
  {
    v4 = __p[1];
  }

  v5 = CFStringCreateWithBytes(0, v3, v4, 0x8000100u, 0);
  *this = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return this;
}

void sub_18F698274(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v2;
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, v2 + 4) & 0x80) == 0)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v4 + 4, a2) & 0x80) == 0)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void applesauce::CF::details::parse_array<minijson::const_buffer_context>(CFArrayRef *a1, void *a2)
{
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v3 = a2[1];
  if (v3 >= 0x21)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = &unk_1F0325A28;
    v58 = a2 + 5;
    v57 = 12;
LABEL_114:
    v54 = *v58 - 1;
    if (!*v58)
    {
      v54 = 0;
    }

    exception[1] = v54;
    *(exception + 4) = v57;
  }

  v4 = 0;
  v5 = *a2;
  v6 = v5 >= 3;
  v7 = v5 < 3;
  v8 = 8 * (*a2 & 3);
  v9 = 0x5B7B00u >> v8;
  v10 = 1u >> v8;
  if (v6)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  *a2 = 0;
  v58 = a2 + 5;
  v12 = v7 & v10;
  v60 = *MEMORY[0x1E695E4D0];
  v13 = *MEMORY[0x1E695E4C0];
  v14 = MEMORY[0x1E69E9830];
  do
  {
    while (1)
    {
      do
      {
        if (a2[1] != v3)
        {
          exception = __cxa_allocate_exception(0x18uLL);
          *exception = &unk_1F0325A28;
          v57 = 11;
          goto LABEL_114;
        }

        if (v12)
        {
          v15 = a2[5];
          if (v15 >= a2[4])
          {
            v17 = 0;
            v11 = 0;
            goto LABEL_13;
          }

          v16 = a2[2];
          a2[5] = v15 + 1;
          v11 = *(v16 + v15);
        }

        v17 = v11;
        if (v11 < 0)
        {
          v18 = __maskrune(v11, 0x4000uLL);
          goto LABEL_14;
        }

LABEL_13:
        v18 = *(v14 + 4 * v17 + 60) & 0x4000;
LABEL_14:
        v12 = 1;
      }

      while (v18);
      v68 = 1;
      v69 = v11;
      if (v4 > 1)
      {
        break;
      }

      if (v4)
      {
        if (v11 == 93)
        {
          goto LABEL_105;
        }

LABEL_23:
        minijson::detail::parse_value_helper<minijson::const_buffer_context>(&v64, a2, &v69, &v68);
        if (v64 > 2)
        {
          switch(v64)
          {
            case 3:
              applesauce::CF::details::parse_object<minijson::const_buffer_context>(&v70, a2);
              v26 = v62;
              if (v62 < v63)
              {
                goto LABEL_50;
              }

              v27 = v62 - v61;
              if ((v27 + 1) >> 61)
              {
                std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
              }

              v28 = (v63 - v61) >> 2;
              if (v28 <= v27 + 1)
              {
                v28 = v27 + 1;
              }

              if (v63 - v61 >= 0x7FFFFFFFFFFFFFF8)
              {
                v29 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v29 = v28;
              }

              v75 = &v61;
              if (v29)
              {
                std::allocator<applesauce::CF::TypeRef>::allocate_at_least[abi:ne200100](v29);
              }

              break;
            case 4:
              applesauce::CF::details::parse_array<minijson::const_buffer_context>(&v70, a2);
              v26 = v62;
              if (v62 < v63)
              {
LABEL_50:
                *v26 = v70;
                v24 = v26 + 1;
                goto LABEL_101;
              }

              v27 = v62 - v61;
              if ((v27 + 1) >> 61)
              {
                std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
              }

              v43 = (v63 - v61) >> 2;
              if (v43 <= v27 + 1)
              {
                v43 = v27 + 1;
              }

              if (v63 - v61 >= 0x7FFFFFFFFFFFFFF8)
              {
                v29 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v29 = v43;
              }

              v75 = &v61;
              if (v29)
              {
                std::allocator<applesauce::CF::TypeRef>::allocate_at_least[abi:ne200100](v29);
              }

              break;
            case 5:
              v23 = v62;
              if (v62 >= v63)
              {
                v37 = v62 - v61;
                if ((v37 + 1) >> 61)
                {
                  goto LABEL_119;
                }

                v38 = (v63 - v61) >> 2;
                if (v38 <= v37 + 1)
                {
                  v38 = v37 + 1;
                }

                if (v63 - v61 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v39 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v39 = v38;
                }

                v75 = &v61;
                if (v39)
                {
                  std::allocator<applesauce::CF::TypeRef>::allocate_at_least[abi:ne200100](v39);
                }

                __p = 0;
                v72 = (8 * v37);
                v74 = 0;
                *(8 * v37) = 0;
                v45 = 8 * v37 + 8;
                goto LABEL_100;
              }

              *v62 = 0;
              v24 = v23 + 1;
LABEL_101:
              v62 = v24;
              goto LABEL_102;
            default:
              goto LABEL_102;
          }

          v44 = (v29 + 8 * v27);
          __p = v29;
          v72 = v44;
          v74 = v29;
          *v44 = v70;
          v45 = (v44 + 1);
          v70 = 0;
          goto LABEL_100;
        }

        switch(v64)
        {
          case 0:
            v25 = v62;
            if (v62 >= v63)
            {
              v31 = v62 - v61;
              if ((v31 + 1) >> 61)
              {
                goto LABEL_119;
              }

              v32 = (v63 - v61) >> 2;
              if (v32 <= v31 + 1)
              {
                v32 = v31 + 1;
              }

              if (v63 - v61 >= 0x7FFFFFFFFFFFFFF8)
              {
                v33 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v33 = v32;
              }

              v75 = &v61;
              if (v33)
              {
                std::allocator<applesauce::CF::TypeRef>::allocate_at_least[abi:ne200100](v33);
              }

              __p = 0;
              v72 = (8 * v31);
              v73 = 8 * v31;
              v74 = 0;
              applesauce::CF::TypeRef::TypeRef((8 * v31), v65);
              goto LABEL_99;
            }

            applesauce::CF::TypeRef::TypeRef(v62, v65);
            v24 = v25 + 1;
            goto LABEL_101;
          case 1:
            v30 = v62;
            if (v62 < v63)
            {
              std::allocator_traits<std::allocator<applesauce::CF::TypeRef>>::construct[abi:ne200100]<applesauce::CF::TypeRef,double,void,0>(v62, v67);
              v24 = v30 + 1;
              goto LABEL_101;
            }

            v40 = v62 - v61;
            if ((v40 + 1) >> 61)
            {
LABEL_119:
              std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
            }

            v41 = (v63 - v61) >> 2;
            if (v41 <= v40 + 1)
            {
              v41 = v40 + 1;
            }

            if (v63 - v61 >= 0x7FFFFFFFFFFFFFF8)
            {
              v42 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v42 = v41;
            }

            v75 = &v61;
            if (v42)
            {
              std::allocator<applesauce::CF::TypeRef>::allocate_at_least[abi:ne200100](v42);
            }

            __p = 0;
            v72 = (8 * v40);
            v73 = 8 * v40;
            v74 = 0;
            std::allocator_traits<std::allocator<applesauce::CF::TypeRef>>::construct[abi:ne200100]<applesauce::CF::TypeRef,double,void,0>((8 * v40), v67);
LABEL_99:
            v45 = v73 + 8;
LABEL_100:
            v73 = v45;
            std::vector<applesauce::CF::TypeRef>::__swap_out_circular_buffer(&v61, &__p);
            v24 = v62;
            std::__split_buffer<applesauce::CF::TypeRef>::~__split_buffer(&__p);
            goto LABEL_101;
          case 2:
            v20 = v62;
            if (v62 >= v63)
            {
              v34 = v62 - v61;
              if ((v34 + 1) >> 61)
              {
                goto LABEL_119;
              }

              v35 = (v63 - v61) >> 2;
              if (v35 <= v34 + 1)
              {
                v35 = v34 + 1;
              }

              if (v63 - v61 >= 0x7FFFFFFFFFFFFFF8)
              {
                v36 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v36 = v35;
              }

              v75 = &v61;
              if (v36)
              {
                std::allocator<applesauce::CF::TypeRef>::allocate_at_least[abi:ne200100](v36);
              }

              v46 = (8 * v34);
              __p = 0;
              v72 = (8 * v34);
              v74 = 0;
              v47 = v60;
              if (!v66)
              {
                v47 = v13;
              }

              *v46 = v47;
              v73 = (v46 + 1);
              std::vector<applesauce::CF::TypeRef>::__swap_out_circular_buffer(&v61, &__p);
              v22 = v62;
              std::__split_buffer<applesauce::CF::TypeRef>::~__split_buffer(&__p);
            }

            else
            {
              v21 = v60;
              if (!v66)
              {
                v21 = v13;
              }

              *v62 = v21;
              v22 = v20 + 1;
            }

            v62 = v22;
            break;
        }

LABEL_102:
        v11 = v69;
        if (!v69)
        {
          v55 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v55, "This line should never be reached, please file a bug report");
        }

        v4 = 3;
        v12 = v68;
      }

      else
      {
        v19 = v11;
        v11 = 91;
        v4 = 1;
        if (v19 != 91)
        {
          exception = __cxa_allocate_exception(0x18uLL);
          *exception = &unk_1F0325A28;
          v57 = 8;
          goto LABEL_114;
        }
      }
    }

    if (v4 == 2)
    {
      goto LABEL_23;
    }

    v4 = 2;
  }

  while (v11 == 44);
  if (v11 != 93)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = &unk_1F0325A28;
    v57 = 10;
    goto LABEL_114;
  }

LABEL_105:
  v48 = a2[1];
  if (v48)
  {
    a2[1] = v48 - 1;
  }

  std::vector<void const*>::vector[abi:ne200100](&__p, v62 - v61);
  v49 = v61;
  v50 = v62;
  v51 = __p;
  if (v61 != v62)
  {
    do
    {
      v52 = *v49++;
      *v51++ = v52;
    }

    while (v49 != v50);
    v51 = __p;
  }

  CFArray = applesauce::CF::details::make_CFArrayRef<void const*>(v51, v72);
  if (__p)
  {
    v72 = __p;
    operator delete(__p);
  }

  *a1 = CFArray;
  __p = &v61;
  std::vector<applesauce::CF::TypeRef>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_18F698A94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, void *__p, uint64_t a24)
{
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  a16 = &a13;
  std::vector<applesauce::CF::TypeRef>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void std::vector<applesauce::CF::TypeRef>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 8;
        std::__destroy_at[abi:ne200100]<applesauce::CF::TypeRef,0>(v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:ne200100]<applesauce::CF::TypeRef,0>(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

void *std::vector<void const*>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (!(a2 >> 61))
    {
      std::allocator<applesauce::CF::TypeRef>::allocate_at_least[abi:ne200100](a2);
    }

    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_18F698C3C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<void const*>(const void **values, uint64_t a2)
{
  result = CFArrayCreate(0, values, (a2 - values) >> 3, MEMORY[0x1E695E9C0]);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  return result;
}

void std::allocator<applesauce::CF::TypeRef>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<applesauce::CF::TypeRef>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v5);
    do
    {
      *v8++ = *v7;
      *v7++ = 0;
    }

    while (v7 != v5);
    do
    {
      v9 = *v4++;
      std::__destroy_at[abi:ne200100]<applesauce::CF::TypeRef,0>(v9);
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  *(a1 + 8) = v4;
  a2[1] = v4;
  v10 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v10;
  v11 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v11;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<applesauce::CF::TypeRef>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 8);
    *(a1 + 16) = i - 8;
    std::__destroy_at[abi:ne200100]<applesauce::CF::TypeRef,0>(v4);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

CFNumberRef std::allocator_traits<std::allocator<applesauce::CF::TypeRef>>::construct[abi:ne200100]<applesauce::CF::TypeRef,double,void,0>(CFNumberRef *a1, double a2)
{
  valuePtr = a2;
  result = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  *a1 = result;
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return result;
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void *a2)
{
  v2 = a1[1];
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v3 = v2;
  }

  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  if (v5 >= v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    if ((v7 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (v3 == v5)
    {
      return 0;
    }

    if (v3 >= v5)
    {
      return 1;
    }
  }

  return 255;
}

uint64_t minijson::detail::parse_long(minijson::detail *this, const char *a2)
{
  if (!this)
  {
    goto LABEL_11;
  }

  v3 = *this;
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = a2;
  if ((v3 & 0x80000000) != 0)
  {
    if (__maskrune(v3, 0x4000uLL))
    {
      goto LABEL_11;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * v3 + 60) & 0x4000) != 0)
  {
    goto LABEL_11;
  }

  v5 = *__error();
  *__error() = 0;
  __endptr = 0;
  v6 = strtol(this, &__endptr, v4);
  v7 = __error();
  v8 = *v7;
  *v7 = v5;
  if (*__endptr || v8 == 34 && (v6 - 0x7FFFFFFFFFFFFFFFLL) <= 1)
  {
LABEL_11:
    exception = __cxa_allocate_exception(1uLL);
  }

  return v6;
}

double minijson::detail::parse_double(minijson::detail *this, const char *a2)
{
  if (!this)
  {
    goto LABEL_12;
  }

  v3 = *this;
  if (!*this)
  {
    goto LABEL_12;
  }

  v4 = 1;
  do
  {
    if ((v3 & 0x80) != 0 || (*(MEMORY[0x1E69E9830] + 4 * v3 + 60) & 0x400) == 0)
    {
      v5 = v3 - 43;
      if (v5 > 0x3A || ((1 << v5) & 0x40000000400000DLL) == 0)
      {
        goto LABEL_12;
      }
    }

    v3 = *(this + v4++);
  }

  while (v3);
  v6 = *__error();
  *__error() = 0;
  v12 = 0;
  v7 = strtod(this, &v12);
  v8 = __error();
  v9 = *v8;
  *v8 = v6;
  if (*v12 || v9 == 34)
  {
LABEL_12:
    exception = __cxa_allocate_exception(1uLL);
  }

  return v7;
}

void *minijson::detail::buffer_context_base::write(void *this, char a2)
{
  v2 = this[6];
  if (v2 >= this[5])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Invalid write call, please file a bug report");
  }

  v3 = this[3];
  this[6] = v2 + 1;
  *(v3 + v2) = a2;
  return this;
}

const char *minijson::parse_error::what(minijson::parse_error *this)
{
  v1 = *(this + 4);
  if (v1 > 0xD)
  {
    return "";
  }

  else
  {
    return off_1E72BA028[v1];
  }
}

void minijson::parse_error::~parse_error(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x193ADF220);
}

void applesauce::CF::details::to_description_json_style_helper(uint64_t a1, CFTypeRef *a2, uint64_t a3, uint64_t a4)
{
  v96 = *MEMORY[0x1E69E9840];
  if (!*a2)
  {
    goto LABEL_44;
  }

  v8 = CFGetTypeID(*a2);
  TypeID = CFBooleanGetTypeID();
  v10 = *a2;
  if (v8 == TypeID)
  {
    if (v10)
    {
      if (!applesauce::CF::convert_to<BOOL,0>(v10))
      {
        *(a1 + 23) = 5;
        strcpy(a1, "false");
LABEL_54:
        v39 = *MEMORY[0x1E69E9840];
        return;
      }

      *(a1 + 23) = 4;
      v11 = 1702195828;
LABEL_53:
      *a1 = v11;
      *(a1 + 4) = 0;
      goto LABEL_54;
    }

    goto LABEL_152;
  }

  if (!v10)
  {
    goto LABEL_44;
  }

  v12 = CFGetTypeID(v10);
  v13 = CFNumberGetTypeID();
  v14 = *a2;
  if (v12 != v13)
  {
    if (v14)
    {
      v19 = CFGetTypeID(v14);
      if (v19 == CFStringGetTypeID())
      {
        *(&v93.__r_.__value_.__s + 23) = 1;
        LOWORD(v93.__r_.__value_.__l.__data_) = 34;
        if (!*a2)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
        }

        applesauce::CF::convert_to<std::string,0>(&v91, *a2);
        if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = &v91;
        }

        else
        {
          v20 = v91.__r_.__value_.__r.__words[0];
        }

        if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v91.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v91.__r_.__value_.__l.__size_;
        }

        applesauce::CF::details::make_json_string(&__p, v20, size);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v23 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v23 = __p.__r_.__value_.__l.__size_;
        }

        v24 = std::string::append(&v93, p_p, v23);
        v25 = *&v24->__r_.__value_.__l.__data_;
        valuePtr.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
        *&valuePtr.__r_.__value_.__l.__data_ = v25;
        v24->__r_.__value_.__l.__size_ = 0;
        v24->__r_.__value_.__r.__words[2] = 0;
        v24->__r_.__value_.__r.__words[0] = 0;
        v26 = std::string::append(&valuePtr, "", 1uLL);
        v27 = *&v26->__r_.__value_.__l.__data_;
        *(a1 + 16) = *(&v26->__r_.__value_.__l + 2);
        *a1 = v27;
        v26->__r_.__value_.__l.__size_ = 0;
        v26->__r_.__value_.__r.__words[2] = 0;
        v26->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(valuePtr.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(valuePtr.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v91.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(v93.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_54;
        }

        v28 = v93.__r_.__value_.__r.__words[0];
        goto LABEL_102;
      }

      if (*a2)
      {
        v30 = CFGetTypeID(*a2);
        v31 = CFArrayGetTypeID();
        v32 = *a2;
        if (v30 == v31)
        {
          std::__function::__value_func<std::pair<std::string,std::string> ()(applesauce::CF::TypeRef,applesauce::CF::TypeRef)>::__value_func[abi:ne200100](v95, a4);
          applesauce::CF::details::to_description_json_style_array(a1, v32, a3, v95);
          v33 = v95;
LABEL_108:
          std::__function::__value_func<std::pair<std::string,std::string> ()(applesauce::CF::TypeRef,applesauce::CF::TypeRef)>::~__value_func[abi:ne200100](v33);
          goto LABEL_54;
        }

        if (v32)
        {
          v63 = CFGetTypeID(*a2);
          v64 = CFDictionaryGetTypeID();
          v32 = *a2;
          if (v63 == v64)
          {
            std::__function::__value_func<std::pair<std::string,std::string> ()(applesauce::CF::TypeRef,applesauce::CF::TypeRef)>::__value_func[abi:ne200100](v94, a4);
            applesauce::CF::details::to_description_json_style_object(a1, v32, a3, v94);
            v33 = v94;
            goto LABEL_108;
          }
        }

LABEL_45:
        v34 = CFGetTypeID(v32);
        if (v34 == CFNullGetTypeID() || (v35 = *a2) == 0)
        {
          *(a1 + 23) = 4;
          v11 = 1819047278;
          goto LABEL_53;
        }

        if (!*(a4 + 24))
        {
          v80 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v80, "Error, not a json style CFDictionary");
          goto LABEL_153;
        }

        v86 = 0;
        CFRetain(v35);
        v36 = *(a4 + 24);
        cf = v35;
        if (!v36)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v36 + 48))(&valuePtr);
        CFRelease(cf);
        v37 = SHIBYTE(valuePtr.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(valuePtr.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          v37 = valuePtr.__r_.__value_.__l.__size_;
          if (valuePtr.__r_.__value_.__l.__size_)
          {
            p_valuePtr = valuePtr.__r_.__value_.__r.__words[0];
            goto LABEL_57;
          }
        }

        else if (*(&valuePtr.__r_.__value_.__s + 23))
        {
          p_valuePtr = &valuePtr;
LABEL_57:
          applesauce::CF::details::make_json_string(&v84, p_valuePtr, v37);
          v40 = std::string::insert(&v84, 0, "{ ", 3uLL);
          v41 = *&v40->__r_.__value_.__l.__data_;
          v91.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
          *&v91.__r_.__value_.__l.__data_ = v41;
          v40->__r_.__value_.__l.__size_ = 0;
          v40->__r_.__value_.__r.__words[2] = 0;
          v40->__r_.__value_.__r.__words[0] = 0;
          v42 = std::string::append(&v91, " : ", 5uLL);
          v43 = *&v42->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v43;
          v42->__r_.__value_.__l.__size_ = 0;
          v42->__r_.__value_.__r.__words[2] = 0;
          v42->__r_.__value_.__r.__words[0] = 0;
          if ((v90 & 0x80u) == 0)
          {
            v44 = &v88;
          }

          else
          {
            v44 = v88;
          }

          if ((v90 & 0x80u) == 0)
          {
            v45 = v90;
          }

          else
          {
            v45 = v89;
          }

          applesauce::CF::details::make_json_string(v82, v44, v45);
          if ((v83 & 0x80u) == 0)
          {
            v46 = v82;
          }

          else
          {
            v46 = v82[0];
          }

          if ((v83 & 0x80u) == 0)
          {
            v47 = v83;
          }

          else
          {
            v47 = v82[1];
          }

          v48 = std::string::append(&__p, v46, v47);
          v49 = *&v48->__r_.__value_.__l.__data_;
          v93.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
          *&v93.__r_.__value_.__l.__data_ = v49;
          v48->__r_.__value_.__l.__size_ = 0;
          v48->__r_.__value_.__r.__words[2] = 0;
          v48->__r_.__value_.__r.__words[0] = 0;
          v50 = std::string::append(&v93, " }", 3uLL);
          v51 = *&v50->__r_.__value_.__l.__data_;
          *(a1 + 16) = *(&v50->__r_.__value_.__l + 2);
          *a1 = v51;
          v50->__r_.__value_.__l.__size_ = 0;
          v50->__r_.__value_.__r.__words[2] = 0;
          v50->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v93.__r_.__value_.__l.__data_);
          }

          if (v83 < 0)
          {
            operator delete(v82[0]);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v91.__r_.__value_.__l.__data_);
          }

          if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_98;
          }

          v52 = v84.__r_.__value_.__r.__words[0];
LABEL_97:
          operator delete(v52);
LABEL_98:
          if (v90 < 0)
          {
            operator delete(v88);
          }

          if ((SHIBYTE(valuePtr.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_54;
          }

          v28 = valuePtr.__r_.__value_.__r.__words[0];
LABEL_102:
          operator delete(v28);
          goto LABEL_54;
        }

        *(&__p.__r_.__value_.__s + 23) = 1;
        LOWORD(__p.__r_.__value_.__l.__data_) = 34;
        if ((v90 & 0x80u) == 0)
        {
          v53 = &v88;
        }

        else
        {
          v53 = v88;
        }

        if ((v90 & 0x80u) == 0)
        {
          v54 = v90;
        }

        else
        {
          v54 = v89;
        }

        applesauce::CF::details::make_json_string(&v91, v53, v54);
        if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v55 = &v91;
        }

        else
        {
          v55 = v91.__r_.__value_.__r.__words[0];
        }

        if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v56 = HIBYTE(v91.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v56 = v91.__r_.__value_.__l.__size_;
        }

        v57 = std::string::append(&__p, v55, v56);
        v58 = *&v57->__r_.__value_.__l.__data_;
        v93.__r_.__value_.__r.__words[2] = v57->__r_.__value_.__r.__words[2];
        *&v93.__r_.__value_.__l.__data_ = v58;
        v57->__r_.__value_.__l.__size_ = 0;
        v57->__r_.__value_.__r.__words[2] = 0;
        v57->__r_.__value_.__r.__words[0] = 0;
        v59 = std::string::append(&v93, "", 1uLL);
        v60 = *&v59->__r_.__value_.__l.__data_;
        *(a1 + 16) = *(&v59->__r_.__value_.__l + 2);
        *a1 = v60;
        v59->__r_.__value_.__l.__size_ = 0;
        v59->__r_.__value_.__r.__words[2] = 0;
        v59->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v93.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v91.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_98;
        }

        v52 = __p.__r_.__value_.__r.__words[0];
        goto LABEL_97;
      }
    }

LABEL_44:
    v32 = 0;
    goto LABEL_45;
  }

  if (!v14)
  {
    goto LABEL_152;
  }

  v15 = applesauce::CF::convert_to<float,0>(v14);
  if (vabds_f32(floorf(v15), v15) >= 0.00000011921)
  {
    v29 = *MEMORY[0x1E69E9840];

    std::to_string(a1, v15);
    return;
  }

  v16 = *a2;
  if (!*a2)
  {
LABEL_152:
    v80 = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(v80);
LABEL_153:
  }

  v17 = CFNumberGetTypeID();
  if (v17 == CFGetTypeID(v16))
  {
    switch(CFNumberGetType(v16))
    {
      case kCFNumberSInt8Type:
        valuePtr.__r_.__value_.__s.__data_[0] = 0;
        Value = CFNumberGetValue(v16, kCFNumberSInt8Type, &valuePtr);
        goto LABEL_125;
      case kCFNumberSInt16Type:
        LOWORD(valuePtr.__r_.__value_.__l.__data_) = 0;
        v71 = CFNumberGetValue(v16, kCFNumberSInt16Type, &valuePtr);
        goto LABEL_120;
      case kCFNumberSInt32Type:
        LODWORD(valuePtr.__r_.__value_.__l.__data_) = 0;
        v70 = CFNumberGetValue(v16, kCFNumberSInt32Type, &valuePtr);
        goto LABEL_143;
      case kCFNumberSInt64Type:
        valuePtr.__r_.__value_.__r.__words[0] = 0;
        v65 = CFNumberGetValue(v16, kCFNumberSInt64Type, &valuePtr);
        goto LABEL_134;
      case kCFNumberFloat32Type:
        LODWORD(valuePtr.__r_.__value_.__l.__data_) = 0;
        v66 = CFNumberGetValue(v16, kCFNumberFloat32Type, &valuePtr);
        goto LABEL_112;
      case kCFNumberFloat64Type:
        valuePtr.__r_.__value_.__r.__words[0] = 0;
        v69 = CFNumberGetValue(v16, kCFNumberFloat64Type, &valuePtr);
        goto LABEL_122;
      case kCFNumberCharType:
        valuePtr.__r_.__value_.__s.__data_[0] = 0;
        Value = CFNumberGetValue(v16, kCFNumberCharType, &valuePtr);
LABEL_125:
        v75 = Value;
        LODWORD(v76) = Value != 0;
        if (Value)
        {
          v77 = valuePtr.__r_.__value_.__s.__data_[0];
        }

        else
        {
          v77 = 0;
        }

        if (valuePtr.__r_.__value_.__s.__data_[0] < 0)
        {
          v76 = v76;
        }

        else
        {
          v76 = 0;
        }

        if (!v75)
        {
          goto LABEL_148;
        }

        v62 = v77 | (v76 << 63 >> 63 << 8);
        goto LABEL_139;
      case kCFNumberShortType:
        LOWORD(valuePtr.__r_.__value_.__l.__data_) = 0;
        v71 = CFNumberGetValue(v16, kCFNumberShortType, &valuePtr);
LABEL_120:
        v72 = v71;
        v73 = valuePtr.__r_.__value_.__s.__data_[0];
        data_low = SLOWORD(valuePtr.__r_.__value_.__l.__data_);
        goto LABEL_144;
      case kCFNumberIntType:
        LODWORD(valuePtr.__r_.__value_.__l.__data_) = 0;
        v70 = CFNumberGetValue(v16, kCFNumberIntType, &valuePtr);
LABEL_143:
        v72 = v70;
        v73 = valuePtr.__r_.__value_.__s.__data_[0];
        data_low = SLODWORD(valuePtr.__r_.__value_.__l.__data_);
LABEL_144:
        v79 = data_low & 0xFFFFFFFFFFFFFF00 | v73;
        if (v72)
        {
          v62 = v79;
        }

        else
        {
          v62 = 0;
        }

        if (!v72)
        {
          goto LABEL_148;
        }

        goto LABEL_139;
      case kCFNumberLongType:
        valuePtr.__r_.__value_.__r.__words[0] = 0;
        v65 = CFNumberGetValue(v16, kCFNumberLongType, &valuePtr);
        goto LABEL_134;
      case kCFNumberLongLongType:
        valuePtr.__r_.__value_.__r.__words[0] = 0;
        v65 = CFNumberGetValue(v16, kCFNumberLongLongType, &valuePtr);
        goto LABEL_134;
      case kCFNumberFloatType:
        LODWORD(valuePtr.__r_.__value_.__l.__data_) = 0;
        v66 = CFNumberGetValue(v16, kCFNumberFloatType, &valuePtr);
LABEL_112:
        v67 = v66;
        v68 = *&valuePtr.__r_.__value_.__l.__data_;
        goto LABEL_135;
      case kCFNumberDoubleType:
        valuePtr.__r_.__value_.__r.__words[0] = 0;
        v69 = CFNumberGetValue(v16, kCFNumberDoubleType, &valuePtr);
        goto LABEL_122;
      case kCFNumberCFIndexType:
        valuePtr.__r_.__value_.__r.__words[0] = 0;
        v65 = CFNumberGetValue(v16, kCFNumberCFIndexType, &valuePtr);
        goto LABEL_134;
      case kCFNumberNSIntegerType:
        valuePtr.__r_.__value_.__r.__words[0] = 0;
        v65 = CFNumberGetValue(v16, kCFNumberNSIntegerType, &valuePtr);
LABEL_134:
        v67 = v65;
        v68 = valuePtr.__r_.__value_.__r.__words[0];
        goto LABEL_135;
      case kCFNumberCGFloatType:
        valuePtr.__r_.__value_.__r.__words[0] = 0;
        v69 = CFNumberGetValue(v16, kCFNumberCGFloatType, &valuePtr);
LABEL_122:
        v67 = v69;
        v68 = *&valuePtr.__r_.__value_.__l.__data_;
LABEL_135:
        if (v67)
        {
          v62 = v68;
        }

        else
        {
          v62 = 0;
        }

        if (v67)
        {
          goto LABEL_139;
        }

        goto LABEL_148;
      default:
        goto LABEL_148;
    }
  }

  v61 = CFBooleanGetTypeID();
  if (v61 != CFGetTypeID(v16))
  {
LABEL_148:
    v80 = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(v80);
    goto LABEL_153;
  }

  v62 = CFBooleanGetValue(v16);
LABEL_139:
  v78 = *MEMORY[0x1E69E9840];

  std::to_string(a1, v62);
}

uint64_t std::__function::__value_func<std::pair<std::string,std::string> ()(applesauce::CF::TypeRef,applesauce::CF::TypeRef)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t applesauce::CF::convert_to<BOOL,0>(const __CFBoolean *a1)
{
  TypeID = CFBooleanGetTypeID();
  if (TypeID == CFGetTypeID(a1))
  {
    LOBYTE(v3) = CFBooleanGetValue(a1) != 0;
  }

  else
  {
    v4 = CFNumberGetTypeID();
    if (v4 != CFGetTypeID(a1) || (v3 = applesauce::CF::details::number_convert_as<BOOL>(a1), v3 <= 0xFFu))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      applesauce::CF::convert_error(exception);
    }
  }

  return v3 & 1;
}

float applesauce::CF::convert_to<float,0>(uint64_t a1)
{
  v1 = applesauce::CF::convert_as<float,0>(a1);
  if (!HIDWORD(v1))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
  }

  return *&v1;
}

uint64_t applesauce::CF::details::make_json_string(_BYTE *a1, char *a2, uint64_t a3)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v13);
  v6 = v14;
  *(&v14 + *(v14 - 24) + 8) = *(&v14 + *(v14 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(&v14 + *(v6 - 24) + 8) = *(&v14 + *(v6 - 24) + 8) & 0xFFFFFF4F | 0x80;
  v7 = &v14 + *(v6 - 24);
  if (*(v7 + 36) == -1)
  {
    std::ios_base::getloc((&v14 + *(v6 - 24)));
    v8 = std::locale::use_facet(&v19, MEMORY[0x1E69E5318]);
    (v8->__vftable[2].~facet_0)(v8, 32);
    std::locale::~locale(&v19);
  }

  *(v7 + 36) = 48;
  while (a3)
  {
    v9 = *a2;
    if (v9 <= 0xB)
    {
      switch(v9)
      {
        case 8u:
          v10 = "\\b";
          break;
        case 9u:
          v10 = "\\t";
          break;
        case 0xAu:
          v10 = "\\n";
          break;
        default:
          goto LABEL_17;
      }
    }

    else if (*a2 > 0x21u)
    {
      v10 = "\\\";
      if (v9 != 92)
      {
        if (v9 != 34)
        {
LABEL_17:
          if (v9 == 127 || v9 - 1 <= 0x1E)
          {
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "\\u", 2);
            *(&v16[1].__locale_ + *(v14 - 24)) = 4;
            MEMORY[0x193ADEE60](&v14, *a2);
          }

          else
          {
            LOBYTE(v19.__locale_) = v9;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, &v19, 1);
          }

          goto LABEL_23;
        }

        v10 = "\\"";
      }
    }

    else if (v9 == 12)
    {
      v10 = "\\f";
    }

    else
    {
      if (v9 != 13)
      {
        goto LABEL_17;
      }

      v10 = "\\r";
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, v10, 2);
LABEL_23:
    ++a2;
    --a3;
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](a1, v13);
  v13[0] = *MEMORY[0x1E69E54D8];
  v11 = *(MEMORY[0x1E69E54D8] + 72);
  *(v13 + *(v13[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v14 = v11;
  v15 = MEMORY[0x1E69E5548] + 16;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  v15 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v16);
  std::iostream::~basic_iostream();
  return MEMORY[0x193ADF120](&v18);
}

void sub_18F69A2D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<std::pair<std::string,std::string> ()(applesauce::CF::TypeRef,applesauce::CF::TypeRef)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

std::string *applesauce::CF::details::to_description_json_style_array(std::string *this, CFArrayRef theArray, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x1E69E9840];
  *(&this->__r_.__value_.__s + 23) = 1;
  LOWORD(this->__r_.__value_.__l.__data_) = 91;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    v9 = CFArrayGetCount(theArray);
    if (Count)
    {
      if (v9)
      {
        v10 = 0;
        v11 = v9 - 1;
        v12 = 1;
        do
        {
          if ((v12 & 1) == 0)
          {
            std::string::append(this, ",", 1uLL);
            std::string::append(this, " ", 1uLL);
          }

          if (CFArrayGetCount(theArray) <= v10 || (ValueAtIndex = CFArrayGetValueAtIndex(theArray, v10), (v14 = ValueAtIndex) == 0))
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not find item");
          }

          CFRetain(ValueAtIndex);
          v21 = v14;
          std::__function::__value_func<std::pair<std::string,std::string> ()(applesauce::CF::TypeRef,applesauce::CF::TypeRef)>::__value_func[abi:ne200100](v24, a4);
          applesauce::CF::details::to_description_json_style_helper(__p, &v21, a3 + 2, v24);
          if ((v23 & 0x80u) == 0)
          {
            v15 = __p;
          }

          else
          {
            v15 = __p[0];
          }

          if ((v23 & 0x80u) == 0)
          {
            v16 = v23;
          }

          else
          {
            v16 = __p[1];
          }

          std::string::append(this, v15, v16);
          if (v23 < 0)
          {
            operator delete(__p[0]);
          }

          std::__function::__value_func<std::pair<std::string,std::string> ()(applesauce::CF::TypeRef,applesauce::CF::TypeRef)>::~__value_func[abi:ne200100](v24);
          CFRelease(v14);
          if (Count - 1 == v10)
          {
            break;
          }

          v12 = 0;
        }

        while (v11 != v10++);
      }
    }
  }

  result = std::string::append(this, "]", 1uLL);
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F69A588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void applesauce::CF::details::to_description_json_style_object(uint64_t a1, const __CFDictionary *a2, uint64_t a3, uint64_t a4)
{
  v72 = *MEMORY[0x1E69E9840];
  v8 = 1;
  *(a1 + 23) = 1;
  *a1 = 123;
  applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::DictionaryRef_iterator(&v65, a2);
  applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::DictionaryRef_iterator(&v59, a2);
  v60 = (v62 - v61) >> 3;
  while (1)
  {
    if (v65 && v66 != (v68 - v67) >> 3)
    {
      v9 = v59;
      goto LABEL_8;
    }

    v9 = v59;
    if (!v59 || v60 == (v62 - v61) >> 3)
    {
      break;
    }

LABEL_8:
    if (v65 == v9 && v66 == v60)
    {
      break;
    }

    if ((v8 & 1) == 0)
    {
      std::string::append(a1, ",", 1uLL);
      std::string::append(a1, " ", 1uLL);
    }

    applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::operator->(cf, &v65);
    v10 = cf[0];
    v12 = 0;
    if (cf[0])
    {
      v11 = CFGetTypeID(cf[0]);
      if (v11 == CFStringGetTypeID())
      {
        v12 = 1;
      }
    }

    if (cf[1])
    {
      CFRelease(cf[1]);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    if (v12)
    {
      applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::operator->(&v49, &v65);
      v13 = v49.__r_.__value_.__r.__words[0];
      if (!v49.__r_.__value_.__r.__words[0])
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      applesauce::CF::convert_to<std::string,0>(&__p, v49.__r_.__value_.__l.__data_);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      applesauce::CF::details::make_json_string(&v57, p_p, size);
      v16 = std::string::insert(&v57, 0, "", 1uLL);
      v17 = *&v16->__r_.__value_.__l.__data_;
      v58.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
      *&v58.__r_.__value_.__l.__data_ = v17;
      v16->__r_.__value_.__l.__size_ = 0;
      v16->__r_.__value_.__r.__words[2] = 0;
      v16->__r_.__value_.__r.__words[0] = 0;
      v18 = std::string::append(&v58, " : ", 4uLL);
      v19 = *&v18->__r_.__value_.__l.__data_;
      v53 = v18->__r_.__value_.__r.__words[2];
      *cf = v19;
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      if (v53 >= 0)
      {
        v20 = cf;
      }

      else
      {
        v20 = cf[0];
      }

      if (v53 >= 0)
      {
        v21 = HIBYTE(v53);
      }

      else
      {
        v21 = cf[1];
      }

      std::string::append(a1, v20, v21);
      if (SHIBYTE(v53) < 0)
      {
        operator delete(cf[0]);
      }

      if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v58.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v57.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v49.__r_.__value_.__l.__size_)
      {
        CFRelease(v49.__r_.__value_.__l.__size_);
      }

      CFRelease(v13);
      applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::operator->(&v58, &v65);
      std::__function::__value_func<std::pair<std::string,std::string> ()(applesauce::CF::TypeRef,applesauce::CF::TypeRef)>::__value_func[abi:ne200100](v71, a4);
      applesauce::CF::details::to_description_json_style_helper(cf, &v58.__r_.__value_.__r.__words[1], a3 + 2, v71);
      if (v53 >= 0)
      {
        v22 = cf;
      }

      else
      {
        v22 = cf[0];
      }

      if (v53 >= 0)
      {
        v23 = HIBYTE(v53);
      }

      else
      {
        v23 = cf[1];
      }

      std::string::append(a1, v22, v23);
      if (SHIBYTE(v53) < 0)
      {
        operator delete(cf[0]);
      }

      std::__function::__value_func<std::pair<std::string,std::string> ()(applesauce::CF::TypeRef,applesauce::CF::TypeRef)>::~__value_func[abi:ne200100](v71);
      if (v58.__r_.__value_.__l.__size_)
      {
        CFRelease(v58.__r_.__value_.__l.__size_);
      }

      if (v58.__r_.__value_.__r.__words[0])
      {
        CFRelease(v58.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      if (!*(a4 + 24))
      {
        v45 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v45, "Error, not a json style CFDictionary");
      }

      applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::operator->(&v58, &v65);
      v24 = v58.__r_.__value_.__r.__words[0];
      if (v58.__r_.__value_.__r.__words[0])
      {
        CFRetain(v58.__r_.__value_.__l.__data_);
      }

      v50 = 0;
      v51 = v24;
      v25 = *(a4 + 24);
      if (!v25)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v25 + 48))(cf);
      if (v50)
      {
        CFRelease(v50);
      }

      if (v51)
      {
        CFRelease(v51);
      }

      if (v58.__r_.__value_.__l.__size_)
      {
        CFRelease(v58.__r_.__value_.__l.__size_);
      }

      if (v24)
      {
        CFRelease(v24);
      }

      v26 = SHIBYTE(v53);
      if ((SHIBYTE(v53) & 0x8000000000000000) != 0)
      {
        v26 = cf[1];
        if (!cf[1])
        {
LABEL_118:
          v44 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v44, "Error, not a json style CFDictionary");
        }

        v27 = cf[0];
      }

      else
      {
        if (!HIBYTE(v53))
        {
          goto LABEL_118;
        }

        v27 = cf;
      }

      applesauce::CF::details::make_json_string(&v48, v27, v26);
      v28 = std::string::insert(&v48, 0, "", 1uLL);
      v29 = *&v28->__r_.__value_.__l.__data_;
      v49.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
      *&v49.__r_.__value_.__l.__data_ = v29;
      v28->__r_.__value_.__l.__size_ = 0;
      v28->__r_.__value_.__r.__words[2] = 0;
      v28->__r_.__value_.__r.__words[0] = 0;
      v30 = std::string::append(&v49, " : ", 5uLL);
      v31 = *&v30->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v31;
      v30->__r_.__value_.__l.__size_ = 0;
      v30->__r_.__value_.__r.__words[2] = 0;
      v30->__r_.__value_.__r.__words[0] = 0;
      if ((v55 & 0x80u) == 0)
      {
        v32 = v54;
      }

      else
      {
        v32 = v54[0];
      }

      if ((v55 & 0x80u) == 0)
      {
        v33 = v55;
      }

      else
      {
        v33 = v54[1];
      }

      applesauce::CF::details::make_json_string(v46, v32, v33);
      if ((v47 & 0x80u) == 0)
      {
        v34 = v46;
      }

      else
      {
        v34 = v46[0];
      }

      if ((v47 & 0x80u) == 0)
      {
        v35 = v47;
      }

      else
      {
        v35 = v46[1];
      }

      v36 = std::string::append(&__p, v34, v35);
      v37 = *&v36->__r_.__value_.__l.__data_;
      v57.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
      *&v57.__r_.__value_.__l.__data_ = v37;
      v36->__r_.__value_.__l.__size_ = 0;
      v36->__r_.__value_.__r.__words[2] = 0;
      v36->__r_.__value_.__r.__words[0] = 0;
      v38 = std::string::append(&v57, "", 1uLL);
      v39 = *&v38->__r_.__value_.__l.__data_;
      v58.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
      *&v58.__r_.__value_.__l.__data_ = v39;
      v38->__r_.__value_.__l.__size_ = 0;
      v38->__r_.__value_.__r.__words[2] = 0;
      v38->__r_.__value_.__r.__words[0] = 0;
      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v40 = &v58;
      }

      else
      {
        v40 = v58.__r_.__value_.__r.__words[0];
      }

      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v41 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v41 = v58.__r_.__value_.__l.__size_;
      }

      std::string::append(a1, v40, v41);
      if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v58.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v57.__r_.__value_.__l.__data_);
      }

      if (v47 < 0)
      {
        operator delete(v46[0]);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v49.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v48.__r_.__value_.__l.__data_);
      }

      if (v55 < 0)
      {
        operator delete(v54[0]);
      }

      if (SHIBYTE(v53) < 0)
      {
        operator delete(cf[0]);
      }
    }

    v8 = 0;
    ++v66;
  }

  std::string::append(a1, "}", 1uLL);
  if (v63)
  {
    v64 = v63;
    operator delete(v63);
  }

  if (v61)
  {
    v62 = v61;
    operator delete(v61);
  }

  if (v69)
  {
    v70 = v69;
    operator delete(v69);
  }

  if (v67)
  {
    v68 = v67;
    operator delete(v67);
  }

  v42 = *MEMORY[0x1E69E9840];
}

void sub_18F69ACA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, uint64_t a62, uint64_t a63)
{
  __cxa_free_exception(v64);
  applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::~DictionaryRef_iterator(&a63);
  applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::~DictionaryRef_iterator((v65 - 192));
  if (*(v63 + 23) < 0)
  {
    operator delete(*v63);
  }

  _Unwind_Resume(a1);
}

__n128 std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(std::string *a1, std::string *a2, char *__s)
{
  v6 = strlen(__s);
  v7 = std::string::append(a2, __s, v6);
  result = *v7;
  *a1 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

__n128 std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(std::string *a1, char *__s, std::string *a3)
{
  v6 = strlen(__s);
  v7 = std::string::insert(a3, 0, __s, v6);
  result = *v7;
  *a1 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

uint64_t std::pair<std::string,std::string>::~pair(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5558] + 16;
}

uint64_t applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::DictionaryRef_iterator(uint64_t a1, CFDictionaryRef theDict)
{
  *a1 = theDict;
  *(a1 + 40) = 0u;
  v3 = (a1 + 40);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0;
  if (theDict)
  {
    Count = CFDictionaryGetCount(theDict);
    std::vector<void const*>::resize((a1 + 16), Count);
    std::vector<void const*>::resize(v3, Count);
    CFDictionaryGetKeysAndValues(*a1, *(a1 + 16), *(a1 + 40));
  }

  return a1;
}

void applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::operator->(void *a1, void *a2)
{
  applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::dereference(&cf, a2);
  v3 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = v3;
  v4 = v6;
  if (!v6)
  {
    a1[1] = 0;
    if (!v3)
    {
      return;
    }

    goto LABEL_7;
  }

  CFRetain(v6);
  a1[1] = v4;
  CFRelease(v4);
  if (v3)
  {
LABEL_7:
    CFRelease(v3);
  }
}

uint64_t applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::iterator_proxy::~iterator_proxy(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  return a1;
}

void *applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::~DictionaryRef_iterator(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  return a1;
}

void *applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::dereference(void *result, void *a2)
{
  v2 = a2[1];
  if ((v2 & 0x8000000000000000) != 0 || (v4 = a2[2], v2 >= (a2[3] - v4) >> 3))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "DictionaryRef_iterator iterator out of range.");
  }

  v5 = result;
  v6 = *(v4 + 8 * v2);
  if (v6)
  {
    result = CFRetain(*(v4 + 8 * v2));
    v2 = a2[1];
  }

  v7 = a2[5];
  v8 = *(v7 + 8 * v2);
  if (v8)
  {
    result = CFRetain(*(v7 + 8 * v2));
  }

  *v5 = v6;
  v5[1] = v8;
  return result;
}

void std::vector<void const*>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 8 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = v7 - v3;
        v9 = v8 >> 2;
        if (v8 >> 2 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::allocator<applesauce::CF::TypeRef>::allocate_at_least[abi:ne200100](v10);
      }

      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1[1], 8 * v6);
    v11 = v4 + 8 * v6;
  }

  a1[1] = v11;
}

const void *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](_BYTE *a1, uint64_t a2)
{
  result = std::stringbuf::view[abi:ne200100](a2 + 24);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    result = memmove(a1, result, v4);
  }

  a1[v5] = 0;
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
  MEMORY[0x193ADF120](a1 + 128);
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

uint64_t applesauce::CF::convert_as<float,0>(uint64_t result)
{
  if (result)
  {
    v1 = result;
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v1))
    {
      switch(CFNumberGetType(v1))
      {
        case kCFNumberSInt8Type:
          LOBYTE(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberSInt8Type, &valuePtr);
          goto LABEL_24;
        case kCFNumberSInt16Type:
          LOWORD(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberSInt16Type, &valuePtr);
          goto LABEL_19;
        case kCFNumberSInt32Type:
          LODWORD(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberSInt32Type, &valuePtr);
          goto LABEL_29;
        case kCFNumberSInt64Type:
          valuePtr = 0.0;
          Value = CFNumberGetValue(v1, kCFNumberSInt64Type, &valuePtr);
          goto LABEL_27;
        case kCFNumberFloat32Type:
          LODWORD(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberFloat32Type, &valuePtr);
          goto LABEL_11;
        case kCFNumberFloat64Type:
          valuePtr = 0.0;
          Value = CFNumberGetValue(v1, kCFNumberFloat64Type, &valuePtr);
          goto LABEL_21;
        case kCFNumberCharType:
          LOBYTE(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberCharType, &valuePtr);
LABEL_24:
          v6 = SLOBYTE(valuePtr);
          goto LABEL_25;
        case kCFNumberShortType:
          LOWORD(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberShortType, &valuePtr);
LABEL_19:
          v6 = SLOWORD(valuePtr);
LABEL_25:
          v7 = v6;
          goto LABEL_30;
        case kCFNumberIntType:
          LODWORD(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberIntType, &valuePtr);
LABEL_29:
          v7 = SLODWORD(valuePtr);
          goto LABEL_30;
        case kCFNumberLongType:
          valuePtr = 0.0;
          Value = CFNumberGetValue(v1, kCFNumberLongType, &valuePtr);
          goto LABEL_27;
        case kCFNumberLongLongType:
          valuePtr = 0.0;
          Value = CFNumberGetValue(v1, kCFNumberLongLongType, &valuePtr);
          goto LABEL_27;
        case kCFNumberFloatType:
          LODWORD(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberFloatType, &valuePtr);
LABEL_11:
          v5 = LODWORD(valuePtr);
          goto LABEL_31;
        case kCFNumberDoubleType:
          valuePtr = 0.0;
          Value = CFNumberGetValue(v1, kCFNumberDoubleType, &valuePtr);
          goto LABEL_21;
        case kCFNumberCFIndexType:
          valuePtr = 0.0;
          Value = CFNumberGetValue(v1, kCFNumberCFIndexType, &valuePtr);
          goto LABEL_27;
        case kCFNumberNSIntegerType:
          valuePtr = 0.0;
          Value = CFNumberGetValue(v1, kCFNumberNSIntegerType, &valuePtr);
LABEL_27:
          v7 = *&valuePtr;
          goto LABEL_30;
        case kCFNumberCGFloatType:
          valuePtr = 0.0;
          Value = CFNumberGetValue(v1, kCFNumberCGFloatType, &valuePtr);
LABEL_21:
          v7 = valuePtr;
LABEL_30:
          v5 = LODWORD(v7);
LABEL_31:
          v8 = v5 | 0x100000000;
          if (!Value)
          {
            v8 = 0;
          }

          v9 = v8 & 0x100000000;
          break;
        default:
          v9 = 0;
          LODWORD(v8) = 0;
          break;
      }

      return v8 | v9;
    }

    else
    {
      v4 = CFBooleanGetTypeID();
      if (v4 == CFGetTypeID(v1))
      {
        return COERCE_UNSIGNED_INT(CFBooleanGetValue(v1)) | 0x100000000;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t applesauce::CF::details::number_convert_as<BOOL>(const __CFNumber *a1)
{
  switch(CFNumberGetType(a1))
  {
    case kCFNumberSInt8Type:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberSInt8Type;
      goto LABEL_19;
    case kCFNumberSInt16Type:
      LOWORD(valuePtr) = 0;
      v15 = a1;
      v16 = kCFNumberSInt16Type;
      goto LABEL_14;
    case kCFNumberSInt32Type:
      LODWORD(valuePtr) = 0;
      v13 = a1;
      v14 = kCFNumberSInt32Type;
      goto LABEL_23;
    case kCFNumberSInt64Type:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberSInt64Type;
      goto LABEL_21;
    case kCFNumberFloat32Type:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloat32Type;
      goto LABEL_6;
    case kCFNumberFloat64Type:
      valuePtr = 0.0;
      v11 = a1;
      v12 = kCFNumberFloat64Type;
      goto LABEL_16;
    case kCFNumberCharType:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberCharType;
LABEL_19:
      Value = CFNumberGetValue(v2, v3, &valuePtr);
      v9 = Value != 0;
      v10 = LOBYTE(valuePtr) == 0;
      goto LABEL_24;
    case kCFNumberShortType:
      LOWORD(valuePtr) = 0;
      v15 = a1;
      v16 = kCFNumberShortType;
LABEL_14:
      Value = CFNumberGetValue(v15, v16, &valuePtr);
      v9 = Value != 0;
      v10 = LOWORD(valuePtr) == 0;
      goto LABEL_24;
    case kCFNumberIntType:
      LODWORD(valuePtr) = 0;
      v13 = a1;
      v14 = kCFNumberIntType;
LABEL_23:
      Value = CFNumberGetValue(v13, v14, &valuePtr);
      v9 = Value != 0;
      v10 = LODWORD(valuePtr) == 0;
      goto LABEL_24;
    case kCFNumberLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongType;
      goto LABEL_21;
    case kCFNumberLongLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongLongType;
      goto LABEL_21;
    case kCFNumberFloatType:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloatType;
LABEL_6:
      Value = CFNumberGetValue(v6, v7, &valuePtr);
      v9 = Value != 0;
      v10 = *&valuePtr == 0.0;
      goto LABEL_24;
    case kCFNumberDoubleType:
      valuePtr = 0.0;
      v11 = a1;
      v12 = kCFNumberDoubleType;
      goto LABEL_16;
    case kCFNumberCFIndexType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberCFIndexType;
      goto LABEL_21;
    case kCFNumberNSIntegerType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberNSIntegerType;
LABEL_21:
      Value = CFNumberGetValue(v4, v5, &valuePtr);
      v9 = Value != 0;
      v10 = *&valuePtr == 0;
      goto LABEL_24;
    case kCFNumberCGFloatType:
      valuePtr = 0.0;
      v11 = a1;
      v12 = kCFNumberCGFloatType;
LABEL_16:
      Value = CFNumberGetValue(v11, v12, &valuePtr);
      v9 = Value != 0;
      v10 = valuePtr == 0.0;
LABEL_24:
      if (v10)
      {
        v9 = 0;
      }

      if (Value)
      {
        Value = 256;
      }

      break;
    default:
      v9 = 0;
      Value = 0;
      break;
  }

  return Value | v9;
}

void std::__function::__func<VorbisComment::SetLoudnessInfoDictionary(CACFDictionary *)::$_0,std::allocator<VorbisComment::SetLoudnessInfoDictionary(CACFDictionary *)::$_0>,std::pair<std::string,std::string> ()(applesauce::CF::TypeRef,applesauce::CF::TypeRef)>::operator()(const void **a1@<X1>, const void **a2@<X2>, std::string *a3@<X8>)
{
  v4 = *a1;
  *a1 = 0;
  v5 = *a2;
  *a2 = 0;
  if (!v4)
  {
    if (!v5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Error, neither key nor value is valid in JSON handler function");
    }

    v7 = CFGetTypeID(v5);
    std::to_string(&v9, v7);
    std::string::basic_string[abi:ne200100]<0>(a3, "Unsupported CoreFoundation type");
    a3[1] = v9;
LABEL_6:
    CFRelease(v5);
    if (!v4)
    {
      return;
    }

    goto LABEL_7;
  }

  v6 = CFGetTypeID(v4);
  std::to_string(&v9, v6);
  std::string::basic_string[abi:ne200100]<0>(a3, "bad key");
  a3[1] = v9;
  if (v5)
  {
    goto LABEL_6;
  }

LABEL_7:
  CFRelease(v4);
}

void sub_18F69BB2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, const void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  __cxa_free_exception(v17);
  applesauce::CF::TypeRef::~TypeRef(&a10);
  applesauce::CF::TypeRef::~TypeRef(&a11);
  _Unwind_Resume(a1);
}

uint64_t VorbisComment::GetWAVEChannelMask(VorbisComment *this, VorbisComment *a2, _DWORD *a3)
{
  v3 = 2003334207;
  if (this != a2)
  {
    v6 = this;
    while (1)
    {
      v7 = *v6;
      v23.length = CFStringGetLength(*v6);
      v23.location = 0;
      if (CFStringCompareWithOptions(v7, @"WAVEFORMATEXTENSIBLE_CHANNEL_MASK", v23, 1uLL) == kCFCompareEqualTo)
      {
        break;
      }

      v6 = (v6 + 16);
      if (v6 == a2)
      {
        return v3;
      }
    }

    v8 = *(v6 + 1);
    v22 = 0;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v16);
    *(&v17 + *(v17 - 24) + 8) = *(&v17 + *(v17 - 24) + 8) & 0xFFFFFFB5 | 8;
    applesauce::CF::convert_to<std::string,0>(__p, v8);
    if ((v15 & 0x80u) == 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    if ((v15 & 0x80u) == 0)
    {
      v10 = v15;
    }

    else
    {
      v10 = __p[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, v9, v10);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    MEMORY[0x193ADEDF0](v16, &v22);
    v11 = v22;
    v16[0] = *MEMORY[0x1E69E54D8];
    v12 = *(MEMORY[0x1E69E54D8] + 72);
    *(v16 + *(v16[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
    v17 = v12;
    v18 = MEMORY[0x1E69E5548] + 16;
    if (v20 < 0)
    {
      operator delete(v19[7].__locale_);
    }

    v18 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v19);
    std::iostream::~basic_iostream();
    MEMORY[0x193ADF120](&v21);
    v3 = 0;
    *a3 = v11;
  }

  return v3;
}

uint64_t VorbisComment::SetWAVEChannelMask(const void **this, uint64_t a2)
{
  if (!*this && this[2] == this[1])
  {
    VorbisComment::SetVendorString(this, @"Apple");
  }

  VorbisComment::RemoveUserCommentsWithFieldName(this, @"WAVEFORMATEXTENSIBLE_CHANNEL_MASK");
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v20);
  *(&v21 + *(v21 - 24) + 8) = *(&v21 + *(v21 - 24) + 8) & 0xFFFFFFB5 | 8;
  MEMORY[0x193ADEE60](&v21, a2);
  std::string::basic_string[abi:ne200100]<0>(v18, "0x");
  applesauce::CF::StringRef::from_get(&v17, @"WAVEFORMATEXTENSIBLE_CHANNEL_MASK");
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](&v13, v20);
  if ((v19 & 0x80u) == 0)
  {
    v4 = v18;
  }

  else
  {
    v4 = v18[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v5 = v19;
  }

  else
  {
    v5 = v18[1];
  }

  v6 = std::string::insert(&v13, 0, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v15 = v6->__r_.__value_.__r.__words[2];
  *__p = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (v15 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if (v8)
  {
    if (v15 >= 0)
    {
      v9 = HIBYTE(v15);
    }

    else
    {
      v9 = __p[1];
    }

    cf = CFStringCreateWithBytes(0, v8, v9, 0x8000100u, 0);
    if (!cf)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  else
  {
    cf = 0;
  }

  VorbisComment::AddUserComment(this, v17, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  v20[0] = *MEMORY[0x1E69E54D8];
  v11 = *(MEMORY[0x1E69E54D8] + 72);
  *(v20 + *(v20[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v21 = v11;
  v22 = MEMORY[0x1E69E5548] + 16;
  if (v24 < 0)
  {
    operator delete(v23[7].__locale_);
  }

  v22 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v23);
  std::iostream::~basic_iostream();
  return MEMORY[0x193ADF120](&v25);
}

void sub_18F69C1BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, const void *a23, const void *a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a23);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  applesauce::CF::StringRef::~StringRef(&a24);
  if (a30 < 0)
  {
    operator delete(a25);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a31);
  _Unwind_Resume(a1);
}

CFCharacterSetRef CreateEqualCharSet(void *a1)
{
  result = CFCharacterSetCreateWithCharactersInString(0, @"=");
  sEqualCharSet = result;
  return result;
}

double DSPGraph::VolumeCurveBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 1.29504994e171;
  *a1 = xmmword_18F901760;
  *(a1 + 16) = 0;
  return result;
}

void DSPGraph::VolumeCurveBox::getParameterInfo(DSPGraph::VolumeCurveBox *this@<X0>, int a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    v5 = 0;
    v6 = -10866;
LABEL_6:
    *a4 = v6;
    goto LABEL_7;
  }

  DSPGraph::VolumeCurveBox::parameterInfos(this);
  if (0x4EC4EC4EC4EC4EC5 * ((qword_1EAD30D00 - DSPGraph::VolumeCurveBox::parameterInfos(void)::sParameterInfos) >> 3) <= a3)
  {
    v5 = 0;
    v6 = -10878;
    goto LABEL_6;
  }

  DSPGraph::VolumeCurveBox::parameterInfos(v8);
  v9 = DSPGraph::VolumeCurveBox::parameterInfos(void)::sParameterInfos + 104 * a3;
  v10 = *(v9 + 80);
  *(a4 + 64) = *(v9 + 64);
  *(a4 + 80) = v10;
  *(a4 + 96) = *(v9 + 96);
  v11 = *(v9 + 16);
  *a4 = *v9;
  *(a4 + 16) = v11;
  v12 = *(v9 + 48);
  *(a4 + 32) = *(v9 + 32);
  *(a4 + 48) = v12;
  v5 = 1;
LABEL_7:
  *(a4 + 104) = v5;
}

void sub_18F69C398(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = -1;
  *(v1 + 104) = 0;
  __cxa_end_catch();
  JUMPOUT(0x18F69C38CLL);
}

void DSPGraph::VolumeCurveBox::parameterInfos(DSPGraph::VolumeCurveBox *this)
{
  {
    if (v1)
    {
      DSPGraph::VolumeCurveBox::ParameterInfos::ParameterInfos(v1);
    }
  }
}

void DSPGraph::VolumeCurveBox::ParameterInfos::ParameterInfos(DSPGraph::VolumeCurveBox::ParameterInfos *this)
{
  v9 = *MEMORY[0x1E69E9840];
  qword_1EAD30D00 = 0;
  qword_1EAD30D08 = 0;
  DSPGraph::VolumeCurveBox::parameterInfos(void)::sParameterInfos = 0;
  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  v2 = 0u;
  v3 = 0u;
  LODWORD(v7) = 1;
  DWORD2(v7) = 1097859072;
  strlcpy(&v2, "Transfer function", 0x34uLL);
  *(&v6 + 1) = @"Transfer function";
  LODWORD(v8) = v8 | 0xC8000000;
  std::vector<AudioUnitParameterInfo>::push_back[abi:ne200100](&v2);
  v8 = 0;
  v6 = 0u;
  v4 = 0u;
  v5 = 0u;
  v2 = 0u;
  v3 = 0u;
  LODWORD(v7) = 13;
  *(&v7 + 4) = -COERCE_DOUBLE(0x7F0000007FLL);
  HIDWORD(v7) = -1032847360;
  strlcpy(&v2, "Minimum volume", 0x34uLL);
  *(&v6 + 1) = @"Minimum volume";
  LODWORD(v8) = v8 | 0xC8000000;
  std::vector<AudioUnitParameterInfo>::push_back[abi:ne200100](&v2);
  v8 = 0;
  v6 = 0u;
  HIDWORD(v7) = 0;
  v4 = 0u;
  v5 = 0u;
  v2 = 0u;
  v3 = 0u;
  LODWORD(v7) = 13;
  *(&v7 + 4) = -COERCE_DOUBLE(0x7F0000007FLL);
  strlcpy(&v2, "Maximum volume", 0x34uLL);
  *(&v6 + 1) = @"Maximum volume";
  LODWORD(v8) = v8 | 0xC8000000;
  std::vector<AudioUnitParameterInfo>::push_back[abi:ne200100](&v2);
  v8 = 0;
  v6 = 0u;
  *&v7 = 0;
  v4 = 0u;
  v5 = 0u;
  v2 = 0u;
  v3 = 0u;
  *(&v7 + 1) = 0x3E8000003F800000;
  strlcpy(&v2, "Raw slider value", 0x34uLL);
  *(&v6 + 1) = @"Raw slider value";
  LODWORD(v8) = v8 | 0xC8000000;
  std::vector<AudioUnitParameterInfo>::push_back[abi:ne200100](&v2);
  v8 = 0;
  v6 = 0u;
  *&v7 = 0;
  v4 = 0u;
  v5 = 0u;
  v2 = 0u;
  v3 = 0u;
  *(&v7 + 1) = 0x3E8000003F800000;
  strlcpy(&v2, "Mapped slider value", 0x34uLL);
  *(&v6 + 1) = @"Mapped slider value";
  LODWORD(v8) = v8 | 0x48000000;
  std::vector<AudioUnitParameterInfo>::push_back[abi:ne200100](&v2);
  v8 = 0;
  v6 = 0u;
  v4 = 0u;
  v5 = 0u;
  v2 = 0u;
  v3 = 0u;
  LODWORD(v7) = 13;
  *(&v7 + 4) = -COERCE_DOUBLE(0x7F0000007FLL);
  HIDWORD(v7) = -1036779520;
  strlcpy(&v2, "Decibel gain", 0x34uLL);
  *(&v6 + 1) = @"Decibel gain";
  LODWORD(v8) = v8 | 0x48000000;
  std::vector<AudioUnitParameterInfo>::push_back[abi:ne200100](&v2);
  v1 = *MEMORY[0x1E69E9840];
}

void sub_18F69C6C0(_Unwind_Exception *exception_object)
{
  if (DSPGraph::VolumeCurveBox::parameterInfos(void)::sParameterInfos)
  {
    qword_1EAD30D00 = DSPGraph::VolumeCurveBox::parameterInfos(void)::sParameterInfos;
    operator delete(DSPGraph::VolumeCurveBox::parameterInfos(void)::sParameterInfos);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<AudioUnitParameterInfo>::push_back[abi:ne200100](__int128 *a1)
{
  v1 = qword_1EAD30D00;
  if (qword_1EAD30D00 >= qword_1EAD30D08)
  {
    v8 = DSPGraph::VolumeCurveBox::parameterInfos(void)::sParameterInfos;
    v9 = qword_1EAD30D00 - DSPGraph::VolumeCurveBox::parameterInfos(void)::sParameterInfos;
    v10 = 0x4EC4EC4EC4EC4EC5 * ((qword_1EAD30D00 - DSPGraph::VolumeCurveBox::parameterInfos(void)::sParameterInfos) >> 3);
    v11 = v10 + 1;
    if ((v10 + 1) > 0x276276276276276)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    if (0x9D89D89D89D89D8ALL * ((qword_1EAD30D08 - DSPGraph::VolumeCurveBox::parameterInfos(void)::sParameterInfos) >> 3) > v11)
    {
      v11 = 0x9D89D89D89D89D8ALL * ((qword_1EAD30D08 - DSPGraph::VolumeCurveBox::parameterInfos(void)::sParameterInfos) >> 3);
    }

    if ((0x4EC4EC4EC4EC4EC5 * ((qword_1EAD30D08 - DSPGraph::VolumeCurveBox::parameterInfos(void)::sParameterInfos) >> 3)) >= 0x13B13B13B13B13BLL)
    {
      v12 = 0x276276276276276;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      if (v12 <= 0x276276276276276)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v13 = a1[5];
    v14 = 8 * ((qword_1EAD30D00 - DSPGraph::VolumeCurveBox::parameterInfos(void)::sParameterInfos) >> 3);
    *(v14 + 64) = a1[4];
    *(v14 + 80) = v13;
    *(v14 + 96) = *(a1 + 12);
    v15 = a1[1];
    *v14 = *a1;
    *(v14 + 16) = v15;
    v16 = a1[3];
    *(v14 + 32) = a1[2];
    *(v14 + 48) = v16;
    v7 = 104 * v10 + 104;
    v17 = v14 - v9;
    memcpy((v14 - v9), v8, v9);
    DSPGraph::VolumeCurveBox::parameterInfos(void)::sParameterInfos = v17;
    qword_1EAD30D00 = v7;
    qword_1EAD30D08 = 0;
    if (v8)
    {
      operator delete(v8);
    }
  }

  else
  {
    v2 = *a1;
    v3 = a1[2];
    *(qword_1EAD30D00 + 16) = a1[1];
    *(v1 + 32) = v3;
    *v1 = v2;
    v4 = a1[3];
    v5 = a1[4];
    v6 = a1[5];
    *(v1 + 96) = *(a1 + 12);
    *(v1 + 64) = v5;
    *(v1 + 80) = v6;
    *(v1 + 48) = v4;
    v7 = v1 + 104;
  }

  qword_1EAD30D00 = v7;
}

DSPGraph::VolumeCurveBox *DSPGraph::VolumeCurveBox::getParameterList@<X0>(DSPGraph::VolumeCurveBox *this@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  if (a2)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    DSPGraph::VolumeCurveBox::parameterInfos(this);
    this = std::vector<unsigned int>::vector[abi:ne200100](a3, 0x4EC4EC4EC4EC4EC5 * ((qword_1EAD30D00 - DSPGraph::VolumeCurveBox::parameterInfos(void)::sParameterInfos) >> 3));
    v5 = *a3;
    v4 = a3[1];
    if (*a3 != v4)
    {
      v6 = 0;
      v7 = (v4 - v5 - 4) >> 2;
      v8 = vdupq_n_s64(v7);
      v9 = (v7 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v10 = (v5 + 8);
      do
      {
        v11 = vdupq_n_s64(v6);
        v12 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(v11, xmmword_18F9016C0)));
        if (vuzp1_s16(v12, *v8.i8).u8[0])
        {
          *(v10 - 2) = v6;
        }

        if (vuzp1_s16(v12, *&v8).i8[2])
        {
          *(v10 - 1) = v6 + 1;
        }

        if (vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, vorrq_s8(v11, xmmword_18F9016B0)))).i32[1])
        {
          *v10 = v6 + 2;
          v10[1] = v6 + 3;
        }

        v6 += 4;
        v10 += 4;
      }

      while (v9 != v6);
    }
  }

  return this;
}

void *std::vector<unsigned int>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_18F69C9F4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

float DSPGraph::VolumeCurveBox::getParameter(DSPGraph::VolumeCurveBox *this, int a2, int a3)
{
  if (a3)
  {
    std::string::basic_string[abi:ne200100]<0>(&v6, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/Boxes/DSPGraph_VolumeCurveBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v5, "getParameter");
    std::string::basic_string[abi:ne200100]<0>(&v4, "");
    DSPGraph::ThrowException(-10878, &v6, 256, &v5, &v4);
  }

  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        return *(this + 198);
      case 4:
        return *(this + 199);
      case 5:
        return *(this + 200);
      default:
        goto LABEL_17;
    }
  }

  else if (a2)
  {
    if (a2 != 1)
    {
      if (a2 == 2)
      {
        return *(this + 197);
      }

LABEL_17:
      std::string::basic_string[abi:ne200100]<0>(&v6, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/Boxes/DSPGraph_VolumeCurveBox.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v5, "getParameter");
      std::string::basic_string[abi:ne200100]<0>(&v4, "");
      DSPGraph::ThrowException(-10878, &v6, 282, &v5, &v4);
    }

    return *(this + 196);
  }

  else
  {
    return *(this + 193);
  }
}

void sub_18F69CB34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::VolumeCurveBox::setParameter(DSPGraph::VolumeCurveBox *this, int a2, int a3, float a4)
{
  if (a3)
  {
    std::string::basic_string[abi:ne200100]<0>(&v21, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/Boxes/DSPGraph_VolumeCurveBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v20, "setParameter");
    std::string::basic_string[abi:ne200100]<0>(&v19, "");
    DSPGraph::ThrowException(-10878, &v21, 208, &v20, &v19);
  }

  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v6 = *(this + 197);
        if (v6 < a4)
        {
          std::string::basic_string[abi:ne200100]<0>(&v21, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/Boxes/DSPGraph_VolumeCurveBox.cpp");
          std::string::basic_string[abi:ne200100]<0>(&v20, "setParameter");
          std::string::basic_string[abi:ne200100]<0>(&v19, "MinVolume must be less than MaxVolume");
          DSPGraph::ThrowException(-10878, &v21, 222, &v20, &v19);
        }

        *(this + 196) = a4;
        v7 = *(this + 198);
        if (v7 < 0.0)
        {
          v7 = 0.0;
        }

        if (v7 > 1.0)
        {
          v7 = 1.0;
        }

        v8 = powf(v7, *(this + 194) / *(this + 195));
        *(this + 199) = v8;
        v9 = a4 + (v8 * (v6 - a4));
        goto LABEL_31;
      }

LABEL_33:
      std::string::basic_string[abi:ne200100]<0>(&v21, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/Boxes/DSPGraph_VolumeCurveBox.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v20, "setParameter");
      std::string::basic_string[abi:ne200100]<0>(&v19, "");
      DSPGraph::ThrowException(-10878, &v21, 246, &v20, &v19);
    }

    v13 = a4;
    *(this + 193) = a4;
    v10 = 1.0;
    v11 = 2.0;
    v12 = 1.0;
    if (v13 <= 0xF)
    {
      v11 = flt_18F9020C4[v13];
      v12 = flt_18F902104[v13];
    }

    *(this + 194) = v11;
    *(this + 195) = v12;
    v14 = *(this + 198);
    if (v14 < 0.0)
    {
      v14 = 0.0;
    }

    if (v14 <= 1.0)
    {
      v10 = v14;
    }

LABEL_24:
    v15 = powf(v10, v11 / v12);
    *(this + 199) = v15;
    v9 = *(this + 196) + (v15 * (*(this + 197) - *(this + 196)));
    goto LABEL_31;
  }

  if (a2 != 2)
  {
    if (a2 != 3)
    {
      goto LABEL_33;
    }

    v10 = 0.0;
    if (a4 >= 0.0)
    {
      v10 = a4;
    }

    if (v10 > 1.0)
    {
      v10 = 1.0;
    }

    *(this + 198) = v10;
    v11 = *(this + 194);
    v12 = *(this + 195);
    goto LABEL_24;
  }

  v16 = *(this + 196);
  if (v16 > a4)
  {
    std::string::basic_string[abi:ne200100]<0>(&v21, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/Boxes/DSPGraph_VolumeCurveBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v20, "setParameter");
    std::string::basic_string[abi:ne200100]<0>(&v19, "MaxVolume must be greater than MinVolume");
    DSPGraph::ThrowException(-10878, &v21, 231, &v20, &v19);
  }

  *(this + 197) = a4;
  v17 = *(this + 198);
  if (v17 < 0.0)
  {
    v17 = 0.0;
  }

  if (v17 > 1.0)
  {
    v17 = 1.0;
  }

  v18 = powf(v17, *(this + 194) / *(this + 195));
  *(this + 199) = v18;
  v9 = v16 + (v18 * (a4 - v16));
LABEL_31:
  *(this + 200) = v9;
}

void sub_18F69CE4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::VolumeCurveBox::~VolumeCurveBox(DSPGraph::VolumeCurveBox *this)
{
  DSPGraph::Box::~Box(this);

  JUMPOUT(0x193ADF220);
}

uint64_t DSPGraph::streamToString@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v9);
  v4 = *(a1 + 24);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v4 + 48))(v4, &v9);
  if ((v16 & 0x10) != 0)
  {
    v6 = v15;
    if (v15 < v12)
    {
      v15 = v12;
      v6 = v12;
    }

    locale = v11[4].__locale_;
  }

  else
  {
    if ((v16 & 8) == 0)
    {
      v5 = 0;
      a2[23] = 0;
      goto LABEL_15;
    }

    locale = v11[1].__locale_;
    v6 = v11[3].__locale_;
  }

  v5 = v6 - locale;
  if ((v6 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v5 >= 0x17)
  {
    operator new();
  }

  a2[23] = v5;
  if (v5)
  {
    memmove(a2, locale, v5);
  }

LABEL_15:
  a2[v5] = 0;
  v9 = *MEMORY[0x1E69E54E8];
  *(&v9 + *(v9 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v10 = MEMORY[0x1E69E5548] + 16;
  if (v14 < 0)
  {
    operator delete(__p);
  }

  v10 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v11);
  std::ostream::~ostream();
  return MEMORY[0x193ADF120](&v17);
}

void sub_18F69D150(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  std::ostringstream::~ostringstream(va);
  MEMORY[0x193ADF120](va1);
  _Unwind_Resume(a1);
}

uint64_t DSPGraph::MakeFloatNoninterleavedFormat@<X0>(uint64_t this@<X0>, double a2@<D0>, unsigned int a3@<W1>, uint64_t a4@<X8>)
{
  *(a4 + 16) = a3 >> 3;
  *(a4 + 20) = 1;
  *a4 = a2;
  *(a4 + 8) = 0x296C70636DLL;
  *(a4 + 24) = a3 >> 3;
  *(a4 + 28) = this;
  *(a4 + 32) = a3;
  *(a4 + 36) = 0;
  return this;
}

uint64_t DSPGraph::MakeFloatInterleavedFormat@<X0>(uint64_t this@<X0>, double a2@<D0>, int a3@<W1>, uint64_t a4@<X8>)
{
  v4 = (a3 * this) >> 3;
  *(a4 + 16) = v4;
  *(a4 + 20) = 1;
  *a4 = a2;
  *(a4 + 8) = 0x96C70636DLL;
  *(a4 + 24) = v4;
  *(a4 + 28) = this;
  *(a4 + 32) = a3;
  *(a4 + 36) = 0;
  return this;
}

uint64_t DSPGraph::MakeCBRFormat@<X0>(uint64_t this@<X0>, double a2@<D0>, int a3@<W1>, int a4@<W2>, int a5@<W3>, int a6@<W4>, uint64_t a7@<X8>)
{
  *a7 = a2;
  *(a7 + 8) = this;
  *(a7 + 12) = a6;
  *(a7 + 16) = a5;
  *(a7 + 20) = a4;
  *(a7 + 24) = 0;
  *(a7 + 28) = a3;
  *(a7 + 32) = 0;
  return this;
}

void DSPGraph::printi(void *a1, unsigned int a2, char *__s)
{
  v4 = a2;
  if (a2 >= 0x40)
  {
    do
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "                                                                ", 64);
      v4 -= 64;
    }

    while (v4 > 0x3F);
  }

  if (v4)
  {
    v6 = &asc_18F94CCA4[-v4];
    v7 = strlen(v6 + 64);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, (v6 + 64), v7);
  }

  strlen(__s);
  operator new[]();
}

DSPGraph *DSPGraph::OSTypeToStr(DSPGraph *this, char *a2, unsigned int a3)
{
  if (a2)
  {
    v4 = &a2[this];
    v14 = bswap32(a3);
    if (a2 <= 0)
    {
      v12 = v4 - 1;
    }

    else
    {
      v5 = 0;
      v6 = MEMORY[0x1E69E9830];
      v7 = this;
      do
      {
        v8 = *(&v14 + v5);
        if ((v8 & 0x80000000) != 0)
        {
          v9 = __maskrune(*(&v14 + v5), 0x40000uLL);
        }

        else
        {
          v9 = *(v6 + 4 * v8 + 60) & 0x40000;
        }

        if (v8 == 92 || v9 == 0)
        {
          v11 = snprintf(v7, v4 - v7, "\\x%02x", v8);
          v7 += v11 & ~(v11 >> 31);
        }

        else
        {
          *v7++ = v8;
        }

        if (v5 > 2)
        {
          break;
        }

        ++v5;
      }

      while (v7 < v4);
      if (v7 >= v4)
      {
        v12 = v4 - 1;
      }

      else
      {
        v12 = v7;
      }
    }

    *v12 = 0;
  }

  return this;
}

uint64_t DSPGraph::StrToOSType(DSPGraph *this, char *a2, unsigned int *a3)
{
  v5 = 0;
  v6 = MEMORY[0x1E69E9830];
  v16 = 0;
  v7 = this;
  while (1)
  {
    v8 = *v7;
    if (v8 == 92)
    {
      break;
    }

    if (!*v7)
    {
      v9 = v7;
LABEL_18:
      *a2 = bswap32(v16);
      return v9 - this;
    }

    v9 = (v7 + 1);
LABEL_14:
    *(&v16 + v5++) = v8;
    v7 = v9;
    if (v5 == 4)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 1) == 120 && strlen(v7 + 2) >= 2)
  {
    v10 = 0;
    v9 = (v7 + 4);
    v11 = 2;
    while (1)
    {
      v12 = v10;
      v13 = __tolower(*(v7 + v11));
      if (v13 > 0xFF || (*(v6 + 4 * v13 + 60) & 0x400) == 0 && v13 - 97 >= 6)
      {
        break;
      }

      v10 = 1;
      v11 = 3;
      if (v12)
      {
        v15 = 0;
        if (sscanf(v7 + 2, "%02X", &v15) != 1)
        {
          return 0;
        }

        LOBYTE(v8) = v15;
        if (v15 >= 0x100)
        {
          return 0;
        }

        goto LABEL_14;
      }
    }
  }

  return 0;
}

void *DSPGraph::print4cc(void *a1, unsigned int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  *__s = 0;
  v7 = 0;
  DSPGraph::OSTypeToStr(__s, 0x10, a2);
  v3 = strlen(__s);
  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, __s, v3);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void *DSPGraph::printACD(void *a1, unsigned int *a2, int a3)
{
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, " (", 2);
  DSPGraph::print4cc(v6, *a2);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, " ", 1);
  DSPGraph::print4cc(v7, a2[1]);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, " ", 1);
  DSPGraph::print4cc(v8, a2[2]);
  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, ") ", 3);
  if (a3)
  {
    v10 = 10;
    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, &v10, 1);
  }

  return result;
}

const char *DSPGraph::errstring(DSPGraph *this)
{
  if (this <= 1718775072)
  {
    if (this > 1667788320)
    {
      if (this <= 1718188064)
      {
        if (this == 1667788321)
        {
          return "channel counts error";
        }

        if (this == 1701602593)
        {
          return "element count error";
        }
      }

      else
      {
        switch(this)
        {
          case 0x66697821:
            return "requires fixed block size";
          case 0x666D6321:
            return "format conflict";
          case 0x666D743F:
            return "format not supported";
        }
      }
    }

    else if (this <= 1633906208)
    {
      if (this == 561211770)
      {
        return "wrong property size";
      }

      if (this == 1633903905)
      {
        return "already connected";
      }
    }

    else
    {
      switch(this)
      {
        case 0x61636E21:
          return "AudioComponent not found";
        case 0x616E7321:
          return "AudioUnit not supported";
        case 0x63666721:
          return "configured state error";
      }
    }
  }

  else if (this <= 1869640254)
  {
    if (this <= 1768975392)
    {
      if (this == 1718775073)
      {
        return "frame count error";
      }

      if (this == 1768843553)
      {
        return "initialized state error";
      }
    }

    else
    {
      switch(this)
      {
        case 0x69706C21:
          return "cannot process in place";
        case 0x6D706C21:
          return "must process in place";
        case 0x6E666421:
          return "not found";
      }
    }
  }

  else if (this > 1953460256)
  {
    switch(this)
    {
      case 0x746F7021:
        return "illegal topology";
      case 0x75637021:
        return "unconnected property";
      case 0x756E6321:
        return "unconnected port";
    }
  }

  else
  {
    switch(this)
    {
      case 0x6F70723F:
        return "operation not supported";
      case 0x70727321:
        return "parse failed";
      case 0x726E6721:
        return "range error";
    }
  }

  return "";
}

void DSPGraph::decompileFormat(DSPGraph *this@<X0>, const AudioStreamBasicDescription *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v40[2] = *MEMORY[0x1E69E9840];
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = *(this + 2);
  if (v6 == 1819304813)
  {
    if ((~*(this + 3) & 0x21) == 0 && *(this + 8) == 32)
    {
      std::to_string(&v37, *this);
      v21 = std::string::insert(&v37, 0, "(", 1uLL);
      v22 = *&v21->__r_.__value_.__l.__data_;
      v38.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
      *&v38.__r_.__value_.__l.__data_ = v22;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      v23 = std::string::append(&v38, " ", 1uLL);
      v24 = *&v23->__r_.__value_.__l.__data_;
      v39.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
      *&v39.__r_.__value_.__l.__data_ = v24;
      v23->__r_.__value_.__l.__size_ = 0;
      v23->__r_.__value_.__r.__words[2] = 0;
      v23->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&__p, *(this + 7));
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      v27 = std::string::append(&v39, p_p, size);
      v28 = v27->__r_.__value_.__r.__words[0];
      v40[0] = v27->__r_.__value_.__l.__size_;
      *(v40 + 7) = *(&v27->__r_.__value_.__r.__words[1] + 7);
      v29 = HIBYTE(v27->__r_.__value_.__r.__words[2]);
      v27->__r_.__value_.__l.__size_ = 0;
      v27->__r_.__value_.__r.__words[2] = 0;
      v27->__r_.__value_.__r.__words[0] = 0;
      if (*(a3 + 23) < 0)
      {
        operator delete(*a3);
      }

      v30 = v40[0];
      *a3 = v28;
      *(a3 + 8) = v30;
      *(a3 + 15) = *(v40 + 7);
      *(a3 + 23) = v29;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v39.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v38.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      if (v3 >= 2)
      {
        std::to_string(&v38, v3);
        v31 = std::string::insert(&v38, 0, " ", 1uLL);
        v32 = *&v31->__r_.__value_.__l.__data_;
        v39.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
        *&v39.__r_.__value_.__l.__data_ = v32;
        v31->__r_.__value_.__l.__size_ = 0;
        v31->__r_.__value_.__r.__words[2] = 0;
        v31->__r_.__value_.__r.__words[0] = 0;
        if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v33 = &v39;
        }

        else
        {
          v33 = v39.__r_.__value_.__r.__words[0];
        }

        if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v34 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v34 = v39.__r_.__value_.__l.__size_;
        }

        std::string::append(a3, v33, v34);
        if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v39.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v38.__r_.__value_.__l.__data_);
        }
      }

      goto LABEL_29;
    }
  }

  else if (v6 == 1718773105)
  {
    std::to_string(&v37, *this);
    v7 = std::string::insert(&v37, 0, "(freq ", 6uLL);
    v8 = *&v7->__r_.__value_.__l.__data_;
    v38.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v38.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v9 = std::string::append(&v38, " ", 1uLL);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v39.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v39.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&__p, *(this + 7));
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &__p;
    }

    else
    {
      v11 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v12 = __p.__r_.__value_.__l.__size_;
    }

    v13 = std::string::append(&v39, v11, v12);
    v14 = v13->__r_.__value_.__r.__words[0];
    v40[0] = v13->__r_.__value_.__l.__size_;
    *(v40 + 7) = *(&v13->__r_.__value_.__r.__words[1] + 7);
    v15 = HIBYTE(v13->__r_.__value_.__r.__words[2]);
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    v16 = v40[0];
    *a3 = v14;
    *(a3 + 8) = v16;
    *(a3 + 15) = *(v40 + 7);
    *(a3 + 23) = v15;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    std::to_string(&v38, v3);
    v17 = std::string::insert(&v38, 0, " ", 1uLL);
    v18 = *&v17->__r_.__value_.__l.__data_;
    v39.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
    *&v39.__r_.__value_.__l.__data_ = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v39;
    }

    else
    {
      v19 = v39.__r_.__value_.__r.__words[0];
    }

    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v20 = v39.__r_.__value_.__l.__size_;
    }

    std::string::append(a3, v19, v20);
    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

LABEL_29:
    std::string::append(a3, ")", 1uLL);
    goto LABEL_63;
  }

  DSPGraph::ToText(this, &v39);
  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = v39;
LABEL_63:
  v35 = *MEMORY[0x1E69E9840];
}

void sub_18F69DEDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v33 + 23) < 0)
  {
    operator delete(*v33);
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::ToText(DSPGraph *this@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v5 = *(this + 2);
  if (v5 != 1819304813)
  {
    v12 = 24;
    v13 = MEMORY[0x1E69E9830];
    while (1)
    {
      v14 = *(this + 2);
      v15 = v14 >> v12;
      v16 = (v14 >> v12);
      if (v16 < 0x80)
      {
        v17 = *(v13 + 4 * (v14 >> v12) + 60);
        if ((v17 & 0x500) != 0 || (v17 & 0x2000) != 0)
        {
          goto LABEL_28;
        }
      }

      else if (__maskrune((v14 >> v12), 0x500uLL) || __maskrune(v16, 0x2000uLL))
      {
        goto LABEL_28;
      }

      std::string::append(a2, "\\x", 2uLL);
      std::string::push_back(a2, a0123456789abcd[v15 >> 4]);
      LOBYTE(v15) = a0123456789abcd[v15 & 0xF];
LABEL_28:
      std::string::push_back(a2, v15);
      v12 -= 8;
      if (v12 == -8)
      {
        goto LABEL_29;
      }
    }
  }

  v6 = *(this + 3);
  if ((v6 & 2) != 0)
  {
    std::string::append(a2, "BE", 2uLL);
    v6 = *(this + 3);
  }

  v7 = "F";
  if ((v6 & 1) == 0)
  {
    v7 = "UI";
  }

  if ((v6 & 4) != 0)
  {
    v8 = "I";
  }

  else
  {
    v8 = v7;
  }

  if ((v6 & 5) != 0)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  std::string::append(a2, v8, v9);
  std::to_string(&v39, *(this + 8));
  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v39;
  }

  else
  {
    v10 = v39.__r_.__value_.__r.__words[0];
  }

  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v39.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v39.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v10, size);
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

LABEL_29:
  std::string::push_back(a2, 64);
  std::to_string(&v39, *this);
  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v39;
  }

  else
  {
    v18 = v39.__r_.__value_.__r.__words[0];
  }

  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v19 = v39.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v18, v19);
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (v5 != 1819304813 && *(this + 3))
  {
    std::string::append(a2, "/", 1uLL);
    v20 = *(this + 3);
    if (v20)
    {
      memset(&v39, 0, sizeof(v39));
      do
      {
        std::string::push_back(&v39, a0123456789abcd[v20 & 0xF]);
        v21 = v20 >= 0x10;
        v20 >>= 4;
      }

      while (v21);
      v22 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
      v23 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
      v25 = v39.__r_.__value_.__l.__size_;
      v24 = v39.__r_.__value_.__r.__words[0];
      if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = &v39;
      }

      else
      {
        v26 = v39.__r_.__value_.__r.__words[0];
      }

      if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v27 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v27 = v39.__r_.__value_.__l.__size_;
      }

      v28 = (v26 + v27 - 1);
      if (v27)
      {
        v29 = v28 > v26;
      }

      else
      {
        v29 = 0;
      }

      if (v29)
      {
        v30 = &v26->__r_.__value_.__s.__data_[1];
        do
        {
          v31 = *(v30 - 1);
          *(v30 - 1) = v28->__r_.__value_.__s.__data_[0];
          v28->__r_.__value_.__s.__data_[0] = v31;
          v28 = (v28 - 1);
          v21 = v30++ >= v28;
        }

        while (!v21);
        v22 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
        v25 = v39.__r_.__value_.__l.__size_;
        v24 = v39.__r_.__value_.__r.__words[0];
        v23 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
      }

      if (v23 >= 0)
      {
        v32 = &v39;
      }

      else
      {
        v32 = v24;
      }

      if (v23 >= 0)
      {
        v33 = v22;
      }

      else
      {
        v33 = v25;
      }

      std::string::append(a2, v32, v33);
      if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v39.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      std::string::append(a2, "0", 1uLL);
    }
  }

  if (*(this + 5) != 1)
  {
    std::string::push_back(a2, 35);
    std::to_string(&v39, *(this + 5));
    v34 = (v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v39 : v39.__r_.__value_.__r.__words[0];
    v35 = (v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v39.__r_.__value_.__r.__words[2]) : v39.__r_.__value_.__l.__size_;
    std::string::append(a2, v34, v35);
    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }
  }

  if (*(this + 7) >= 2u)
  {
    std::string::push_back(a2, 44);
    std::to_string(&v39, *(this + 7));
    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v36 = &v39;
    }

    else
    {
      v36 = v39.__r_.__value_.__r.__words[0];
    }

    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v37 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v37 = v39.__r_.__value_.__l.__size_;
    }

    std::string::append(a2, v36, v37);
    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    if (v5 == 1819304813)
    {
      if ((*(this + 3) & 0x20) != 0)
      {
        v38 = 68;
      }

      else
      {
        v38 = 73;
      }

      std::string::push_back(a2, v38);
    }
  }
}

void sub_18F69E3A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::asDecompileString(char *a1@<X0>, std::string *a2@<X8>)
{
  v3 = a2;
  LODWORD(a2) = a1[23];
  if (a1[23] < 0)
  {
    if (!*(a1 + 1))
    {
      a2 = 0;
      v3->__r_.__value_.__r.__words[0] = 0;
      v3->__r_.__value_.__l.__size_ = 0;
      v3->__r_.__value_.__r.__words[2] = 0;
      goto LABEL_31;
    }

    v4 = *a1;
  }

  else
  {
    v4 = a1;
    if (!a1[23])
    {
      v3->__r_.__value_.__r.__words[0] = 0;
      v3->__r_.__value_.__l.__size_ = 0;
      v3->__r_.__value_.__r.__words[2] = 0;
LABEL_12:
      a2 = a2;
LABEL_31:
      std::string::reserve(v3, a2->__r_.__value_.__r.__words + 2);
      std::string::push_back(v3, 34);
      v16 = a1[23];
      if (v16 >= 0)
      {
        v17 = a1;
      }

      else
      {
        v17 = *a1;
      }

      if (v16 >= 0)
      {
        v18 = a1[23];
      }

      else
      {
        v18 = *(a1 + 1);
      }

      std::string::append(v3, v17, v18);
      std::string::push_back(v3, 34);
      return;
    }
  }

  v5 = *v4;
  if ((v5 & 0x80000000) != 0)
  {
    v6 = __maskrune(*v4, 0x500uLL);
    LODWORD(a2) = a1[23];
  }

  else
  {
    v6 = *(MEMORY[0x1E69E9830] + 4 * v5 + 60) & 0x500;
  }

  if (v5 != 95 && !v6)
  {
LABEL_11:
    v3->__r_.__value_.__r.__words[0] = 0;
    v3->__r_.__value_.__l.__size_ = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
    if ((a2 & 0x80) != 0)
    {
      a2 = *(a1 + 1);
      goto LABEL_31;
    }

    goto LABEL_12;
  }

  v7 = a2 < 0;
  v8 = *(a1 + 1);
  v9 = a2;
  if (a2 < 0)
  {
    v9 = *(a1 + 1);
  }

  if (v9 >= 2)
  {
    v10 = 1;
    v11 = MEMORY[0x1E69E9830];
    do
    {
      v12 = *a1;
      if (!v7)
      {
        v12 = a1;
      }

      v13 = v12[v10];
      if ((v13 & 0x80000000) != 0)
      {
        if (!__maskrune(v12[v10], 0x500uLL))
        {
LABEL_23:
          v14 = memchr("_-+=|./:!@#$%^&*<>?~", v13, 0x15uLL);
          LODWORD(a2) = a1[23];
          if (!v14)
          {
            goto LABEL_11;
          }

          goto LABEL_24;
        }
      }

      else if ((*(v11 + 4 * v13 + 60) & 0x500) == 0)
      {
        goto LABEL_23;
      }

      LODWORD(a2) = a1[23];
LABEL_24:
      ++v10;
      v7 = a2 < 0;
      v8 = *(a1 + 1);
      v15 = a2;
      if (a2 < 0)
      {
        v15 = *(a1 + 1);
      }
    }

    while (v10 < v15);
  }

  if ((a2 & 0x80) != 0)
  {
    v19 = *a1;

    std::string::__init_copy_ctor_external(v3, v19, v8);
  }

  else
  {
    *&v3->__r_.__value_.__l.__data_ = *a1;
    v3->__r_.__value_.__r.__words[2] = *(a1 + 2);
  }
}

void sub_18F69E608(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::SimpleABL::SimpleABL(uint64_t this)
{
  *this = 0;
  *(this + 8) = 0;
  return this;
}

{
  *this = 0;
  *(this + 8) = 0;
  return this;
}

uint64_t DSPGraph::SimpleABL::SimpleABL(uint64_t this, AudioBufferList *a2)
{
  *this = a2;
  *(this + 8) = 0;
  return this;
}

{
  *this = a2;
  *(this + 8) = 0;
  return this;
}

void DSPGraph::SimpleABL::~SimpleABL(DSPGraph::SimpleABL *this)
{
  DSPGraph::SimpleABL::free(this);
}

{
  DSPGraph::SimpleABL::free(this);
}

uint64_t DSPGraph::SimpleABL::set(uint64_t this, AudioBufferList *a2)
{
  if (*(this + 8) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&v4, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Utils.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v3, "set");
    std::string::basic_string[abi:ne200100]<0>(&v2, "setting a buffer list which is already allocated.");
    DSPGraph::ThrowException(1869640255, &v4, 577, &v3, &v2);
  }

  *(this + 8) = 0;
  *this = a2;
  return this;
}

void sub_18F69E72C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::SimpleABL::zero(DSPGraph::SimpleABL *this, unsigned int a2, unsigned int a3)
{
  v3 = *this;
  if (*this && *v3)
  {
    v5 = 0;
    v6 = a2;
    v7 = 4;
    v8 = a3;
    do
    {
      bzero((*&v3[v7] + v6), v8);
      ++v5;
      v3 = *this;
      v7 += 4;
    }

    while (v5 < **this);
  }
}

void DSPGraph::SimpleABL::zero(DSPGraph::SimpleABL *this)
{
  v1 = *this;
  if (*this && *v1)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      bzero(*&v1[v3 + 4], v1[v3 + 3]);
      ++v4;
      v1 = *this;
      v3 += 4;
    }

    while (v4 < **this);
  }
}

void *DSPGraph::SimpleABL::copy(void *this, DSPGraph::SimpleABL *a2, int a3)
{
  v3 = *this;
  if (!*this)
  {
    std::string::basic_string[abi:ne200100]<0>(&v15, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Utils.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v14, "copy");
    std::string::basic_string[abi:ne200100]<0>(&v13, "null internal ABL");
    DSPGraph::ThrowException(1768843553, &v15, 631, &v14, &v13);
  }

  v4 = *a2;
  if (!*a2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v15, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Utils.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v14, "copy");
    std::string::basic_string[abi:ne200100]<0>(&v13, "null destination ABL");
    DSPGraph::ThrowException(1768843553, &v15, 635, &v14, &v13);
  }

  if (*v3 != *v4)
  {
    std::string::basic_string[abi:ne200100]<0>(&v15, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Utils.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v14, "copy");
    std::string::basic_string[abi:ne200100]<0>(&v13, "mABL->mNumberBuffers != toABL->mNumberBuffers");
    DSPGraph::ThrowException(1718444833, &v15, 638, &v14, &v13);
  }

  if (*v3)
  {
    v6 = this;
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = v3[v7 + 3];
      v10 = &v4[v7];
      if (v9 > v4[v7 + 3])
      {
        std::string::basic_string[abi:ne200100]<0>(&v15, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Utils.cpp");
        std::string::basic_string[abi:ne200100]<0>(&v14, "copy");
        DSPGraph::strprintf("mABL->mBuffers[%u].mDataByteSize (%u) > toABL->mBuffers[%u].mDataByteSize (%u)", v12, v8, *(*v6 + 16 * v8 + 12), v8, v10[3]);
      }

      v11 = *&v3[v7 + 4];
      this = *(v10 + 2);
      if (v11 != this)
      {
        this = memcpy(this, v11, v9);
        v3 = *v6;
      }

      if (a3)
      {
        v10[3] = v3[v7 + 3];
      }

      ++v8;
      v7 += 4;
    }

    while (v8 < *v3);
  }

  return this;
}

void sub_18F69EA74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (*(v25 - 49) < 0)
  {
    operator delete(*(v25 - 72));
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::RingBuffer::~RingBuffer(DSPGraph::RingBuffer *this)
{
  DSPGraph::SimpleABL::free(this);
  DSPGraph::SimpleABL::free(this);
}

{
  DSPGraph::SimpleABL::free(this);
  DSPGraph::SimpleABL::free(this);
}

os_log_t ___ZN8DSPGraph6getLogEv_block_invoke()
{
  result = os_log_create("com.apple.coreaudio", "DSPGraph");
  DSPGraph::getLog(void)::gLog = result;
  return result;
}

uint64_t MP4BoxParser_SampleDescription::Init(MP4BoxParser_SampleDescription *this)
{
  v78 = *MEMORY[0x1E69E9840];
  DataSourceBytes = MP4BoxParser_Full::Initialize(this);
  if (!DataSourceBytes)
  {
    if (*(this + 5) != 1937011556)
    {
      DataSourceBytes = 4294967294;
      goto LABEL_19;
    }

    v3 = (*(*this + 24))(this);
    v76 = 0;
    MP4BoxParser::GetDataSourceSize(*(this + 1), &v76);
    DataSourceBytes = v4;
    if (!v4)
    {
      DataSourceBytes = MP4BoxParser::ReadDataSourceBytes(*(this + 1), v3, 4uLL, this + 60);
      v5 = *(this + 15);
      *(this + 15) = bswap32(v5);
      if (!DataSourceBytes)
      {
        if (!v5)
        {
          DataSourceBytes = 0;
          goto LABEL_19;
        }

        DataSourceBytes = MP4BoxParser::ReadDataSourceBytes(*(this + 1), v3 + 4, 8uLL, v75);
        if (!DataSourceBytes)
        {
          DataSourceBytes = 1667787583;
          v6 = bswap32(v75[0]);
          if (v76 - (v3 + 4) + 8 >= v6)
          {
            *(this + 16) = bswap32(v75[1]);
            if ((v6 + 2147483640) >= 0x8000001C)
            {
              v7 = MP4BoxParser::ReadDataSourceBytes(*(this + 1), v3 + 20, 8uLL, &v77);
              if (v7)
              {
                goto LABEL_17;
              }

              v7 = 1718449215;
              v8 = bswap32(v77) >> 16;
              *(this + 17) = v8;
              if (v8 != *(this + 56))
              {
                goto LABEL_17;
              }

              v9 = *(this + 16);
              if (v9 == 1768973165 || v9 == 1718641517)
              {
                LOWORD(__src[0]) = 0;
                v7 = MP4BoxParser::ReadDataSourceBytes(*(this + 1), v3 + 28, 2uLL, __src);
                *(this + 60) = bswap32(LOWORD(__src[0])) >> 16;
                if (v7 || (LOWORD(outPropertyDataSize[0]) = 0, v7 = MP4BoxParser::ReadDataSourceBytes(*(this + 1), v3 + 30, 2uLL, outPropertyDataSize), v7) || (*(this + 61) = bswap32(LOWORD(outPropertyDataSize[0])) >> 16, LOWORD(v74) = 0, v7 = MP4BoxParser::ReadDataSourceBytes(*(this + 1), v3 + 32, 2uLL, &v74), v7) || (LODWORD(inSpecifier) = 0, v7 = MP4BoxParser::ReadDataSourceBytes(*(this + 1), v3 + 36, 4uLL, &inSpecifier), v7))
                {
LABEL_17:
                  DataSourceBytes = v7;
                  goto LABEL_19;
                }

                *(this + 31) = bswap32(inSpecifier) >> 16;
              }

              v12 = (v6 - 36);
              if (v12 >= 9)
              {
                DataSourceBytes = 0;
                outPropertyData[0] = v3 + 40;
                alloc = *MEMORY[0x1E695E480];
                while (1)
                {
                  v7 = MP4BoxParser::ReadDataSourceBytes(*(this + 1), outPropertyData[0], 8uLL, &v74);
                  if (v7)
                  {
                    goto LABEL_17;
                  }

                  v13 = bswap32(v74);
                  v14 = (v12 - v13);
                  if (v12 < v13 || v13 <= 7)
                  {
                    goto LABEL_158;
                  }

                  v16 = HIDWORD(v74);
                  std::vector<unsigned char>::vector[abi:ne200100](__src, v13);
                  v17 = v12;
                  v18 = __src[0];
                  v19 = MP4BoxParser::ReadDataSourceBytes(*(this + 1), outPropertyData[0], v13, __src[0]);
                  v20 = v19;
                  if (v19)
                  {
                    v21 = 0;
                    DataSourceBytes = v19;
                    v12 = v17;
                    goto LABEL_153;
                  }

                  v22 = bswap32(v16);
                  v23 = (v13 - 8);
                  v24 = v18 + 2;
                  outPropertyData[0] += v13;
                  if (v22 <= 1702061170)
                  {
                    break;
                  }

                  if (v22 <= 1935767393)
                  {
                    if (v22 <= 1885564226)
                    {
                      if (v22 != 1702061171 && v22 != 1832149349)
                      {
                        goto LABEL_118;
                      }

                      v20 = 0;
                      if (v23 >= 5 && !*(this + 11))
                      {
                        operator new();
                      }

LABEL_94:
                      if (v23 >= 5 && !*(this + 11))
                      {
                        v39 = (v13 - 12);
                        *(this + 24) = v39;
                        v40 = malloc_type_malloc(v39, 0x182B0142uLL);
                        v41 = v40;
                        if (!v40)
                        {
                          exception = __cxa_allocate_exception(8uLL);
                          v56 = std::bad_alloc::bad_alloc(exception);
                        }

                        bzero(v40, v39);
                        *(this + 11) = v41;
                        memcpy(v41, v18 + 3, *(this + 24));
                      }

                      if (*(this + 16) != 1685220723)
                      {
                        goto LABEL_151;
                      }

LABEL_138:
                      *(this + 18) = v22;
LABEL_151:
                      v21 = 1;
                      goto LABEL_152;
                    }

                    if (v22 == 1885564227)
                    {
                      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(this + 16, __src[0], __src[0] + v13, v13);
                      goto LABEL_150;
                    }

                    if (v22 != 1935764850)
                    {
                      goto LABEL_118;
                    }
                  }

                  else
                  {
                    if (v22 > 1936289381)
                    {
                      switch(v22)
                      {
                        case 1936289382:
                          v20 = 0;
                          v21 = 1;
                          if (v23 >= 0x20 && *(this + 16) == 1701733217)
                          {
                            if (bswap32(v18[2]) >= 0xC && v18[3] == 1634562662)
                            {
                              *(this + 19) = bswap32(v18[4]);
                            }

                            v20 = 0;
                            if (bswap32(v18[5]) >= 0x14 && v18[6] == 1835557747)
                            {
                              v20 = 0;
                              *(this + 20) = bswap32(v18[8]);
                            }
                          }

                          goto LABEL_152;
                        case 1936875892:
                          v20 = 0;
                          v21 = 1;
                          if (v23 >= 8 && *(this + 17))
                          {
                            v20 = 0;
                            *(this + 31) = bswap32(v18[3]);
                          }

                          goto LABEL_152;
                        case 2002876005:
                          if (v23 < 8)
                          {
                            goto LABEL_150;
                          }

                          v25 = 0;
                          v26 = v18 + v23;
                          v27 = (v26 + 8);
                          v28 = v18 + 4;
                          while (1)
                          {
                            v29 = bswap32(*v24);
                            v21 = v29 > 7;
                            if (v29 < 8)
                            {
                              v20 = 0;
                              DataSourceBytes = 1718449215;
                              goto LABEL_152;
                            }

                            v30 = v24[1];
                            v20 = bswap32(v30);
                            if (v20 == 1718775137)
                            {
                              v24 += 3;
                              if (v27 < v24)
                              {
                                goto LABEL_150;
                              }

                              v25 = bswap32(*v28);
                            }

                            else
                            {
                              if (!v20)
                              {
                                goto LABEL_151;
                              }

                              if (v30 == 1935962981 && v25 == 1836069985)
                              {
                                v51 = v29 >= 0xC && *(this + 11) == 0;
                                if (v51 && v29 - 8 <= v27 - v28)
                                {
                                  v52 = (v29 - 12);
                                  *(this + 24) = v52;
                                  v53 = malloc_type_malloc(v52, 0x27E6A73DuLL);
                                  v54 = v53;
                                  if (v52 && !v53)
                                  {
                                    v63 = __cxa_allocate_exception(8uLL);
                                    v64 = std::bad_alloc::bad_alloc(v63);
                                  }

                                  bzero(v53, v52);
                                  *(this + 11) = v54;
                                  memcpy(v54, v24 + 3, *(this + 24));
                                }

                                goto LABEL_150;
                              }

                              v24 = (v24 + v29);
                            }

                            v28 = v24 + 2;
                            v21 = 1;
                            if (v26 < v24)
                            {
                              v20 = 0;
                              goto LABEL_152;
                            }
                          }
                      }

                      goto LABEL_118;
                    }

                    if (v22 != 1935767394)
                    {
                      if (v22 == 1935832164)
                      {
                        if (v23 >= 5)
                        {
                          v35 = CFStringCreateWithBytes(alloc, v18 + 12, (v13 - 12), 0x8000100u, 0);
                          v36 = v35;
                          if (v35)
                          {
                            *(this + 38) = BitDepthFromCFString(v35);
                            CFRelease(v36);
                          }
                        }

                        goto LABEL_150;
                      }

LABEL_118:
                      outPropertyData[1] = 0;
                      if (IsConfigBoxForCodingName(*(this + 16), v22, &outPropertyData[1]))
                      {
                        if (!*(this + 11))
                        {
                          MP4BoxParser_SampleDescription::GetMagicCookieAndAudioChannelLayoutFromConfigBox(this, *(this + 16), outPropertyData[1], v22, v13, __src[0]);
                        }
                      }

                      else
                      {
                        v45 = CFStringCreateWithBytes(alloc, &v74 + 4, 4, 0x8000100u, 0);
                        if (v45)
                        {
                          *&inSpecifier = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
                          WORD4(inSpecifier) = 257;
                          *outPropertyDataSize = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
                          LOWORD(v72) = 257;
                          if (CACFDictionary::HasKey((this + 104), v45))
                          {
                            CACFDictionary::GetCACFArray((this + 104), v45, &inSpecifier);
                            if (*(this + 113) == 1)
                            {
                              v46 = *(this + 13);
                              if (v46)
                              {
                                CFDictionaryRemoveValue(v46, v45);
                              }
                            }
                          }

                          CACFArray::SetCFMutableArrayFromCopy(outPropertyDataSize, inSpecifier);
                          v47 = CFDataCreate(0, v18 + 8, (v13 - 8));
                          CACFArray::AppendData(outPropertyDataSize, v47);
                          CFRelease(v47);
                          CACFDictionary::AddArray((this + 104), v45, *outPropertyDataSize);
                          CFRelease(v45);
                          CACFArray::~CACFArray(outPropertyDataSize);
                          CACFArray::~CACFArray(&inSpecifier);
                        }
                      }

LABEL_150:
                      v20 = 0;
                      goto LABEL_151;
                    }
                  }

                  if (*(this + 11))
                  {
                    goto LABEL_150;
                  }

                  *(this + 24) = 47;
                  v37 = malloc_type_malloc(0x2FuLL, 0x84090200uLL);
                  if (!v37)
                  {
                    v59 = __cxa_allocate_exception(8uLL);
                    v60 = std::bad_alloc::bad_alloc(v59);
                  }

                  *(v37 + 31) = 0u;
                  *v37 = 0u;
                  *(v37 + 1) = 0u;
                  *(this + 11) = v37;
                  v38 = *(this + 24);
                  if (v38 >= 0x2F && v23 + 38 <= v38)
                  {
                    *v37 = 0x616D72660C000000;
                    *(v37 + 2) = v16;
                    *(v37 + 12) = 0x61646E650A000000;
                    *(v37 + 10) = 0;
                    HIDWORD(v74) = 1919770980;
                    *(v37 + 22) = v74;
                    v50 = v37 + 30;
                    memcpy(v37 + 30, v18 + 2, v23);
                    v20 = 0;
                    *&v50[v23] = 0x8000000;
                    goto LABEL_151;
                  }

                  v21 = 0;
                  v20 = 0xFFFFFFFFLL;
                  DataSourceBytes = 0xFFFFFFFFLL;
LABEL_152:
                  v12 = v14;
LABEL_153:
                  if (__src[0])
                  {
                    __src[1] = __src[0];
                    operator delete(__src[0]);
                  }

                  if (!v21)
                  {
                    goto LABEL_19;
                  }

                  if (v12 < 9)
                  {
                    goto LABEL_159;
                  }
                }

                if (v22 > 1684103986)
                {
                  if (v22 > 1684425824)
                  {
                    if (v22 == 1684425825)
                    {
                      goto LABEL_77;
                    }

                    v31 = 1700998451;
                  }

                  else
                  {
                    if (v22 == 1684103987)
                    {
                      goto LABEL_77;
                    }

                    v31 = 1684366131;
                  }

                  if (v22 != v31)
                  {
                    goto LABEL_118;
                  }
                }

                else
                {
                  if (v22 > 1667785069)
                  {
                    if (v22 == 1667785070)
                    {
                      std::vector<unsigned char>::resize((this + 160), (v13 - 8));
                      memcpy(*(this + 20), v18 + 2, (v13 - 8));
                      if (*(this + 16) == 1634492771 && *(this + 11))
                      {
                        std::vector<unsigned char>::vector[abi:ne200100](&inSpecifier, *(this + 24));
                        memcpy(inSpecifier, *(this + 11), *(this + 24));
                        free(*(this + 11));
                        v42 = (*(this + 24) + v13);
                        v43 = malloc_type_malloc(v42, 0xB961CF8BuLL);
                        v44 = v43;
                        if (v42 && !v43)
                        {
                          v61 = __cxa_allocate_exception(8uLL);
                          v62 = std::bad_alloc::bad_alloc(v61);
                        }

                        bzero(v43, v42);
                        *(this + 11) = v44;
                        memcpy(v44, inSpecifier, *(this + 24));
                        memcpy((*(this + 11) + *(this + 24)), __src[0], v13);
                        *(this + 24) = v42;
                        if (inSpecifier)
                        {
                          *(&inSpecifier + 1) = inSpecifier;
                          operator delete(inSpecifier);
                        }
                      }

                      goto LABEL_150;
                    }

                    if (v22 == 1667788396)
                    {
                      v68 = 0u;
                      v69 = 0u;
                      inSpecifier = 0u;
                      outPropertyDataSize[0] = 0;
                      HIDWORD(v68) = *(this + 60);
                      *(&v69 + 1) = __src[0];
                      v70 = v13;
                      if (!AudioFormatGetPropertyInfo(0x6463636Cu, 0x38u, &inSpecifier, outPropertyDataSize))
                      {
                        std::vector<unsigned char>::resize((this + 160), outPropertyDataSize[0]);
                        if (AudioFormatGetProperty(0x6463636Cu, 0x38u, &inSpecifier, outPropertyDataSize, *(this + 20)))
                        {
                          v32 = 0;
                        }

                        else
                        {
                          v32 = outPropertyDataSize[0];
                        }

                        std::vector<unsigned char>::resize((this + 160), v32);
                      }

                      goto LABEL_150;
                    }

                    goto LABEL_118;
                  }

                  if (v22 != 1633889587)
                  {
                    if (v22 != 1634492771)
                    {
                      goto LABEL_118;
                    }

                    v20 = 0;
                    goto LABEL_94;
                  }
                }

LABEL_77:
                if (*(this + 11))
                {
LABEL_135:
                  v33 = *(this + 16);
                  goto LABEL_136;
                }

                v33 = *(this + 16);
                if (v33 <= 1700998450)
                {
                  if (v33 != 1633889587)
                  {
                    if (v33 != 1685220723)
                    {
                      goto LABEL_136;
                    }

                    goto LABEL_133;
                  }

                  v34 = 862151012;
                }

                else
                {
                  switch(v33)
                  {
                    case 1716281667:
                      v34 = 1632396900;
                      break;
                    case 1701733217:
LABEL_133:
                      *(this + 24) = v13;
                      v48 = malloc_type_malloc(v13, 0x735F45D2uLL);
                      v49 = v48;
                      if (!v48)
                      {
                        v57 = __cxa_allocate_exception(8uLL);
                        v58 = std::bad_alloc::bad_alloc(v57);
                      }

                      bzero(v48, v13);
                      *(this + 11) = v49;
                      memcpy(v49, __src[0], *(this + 24));
                      goto LABEL_135;
                    case 1700998451:
                      v34 = 862152036;
                      break;
                    default:
LABEL_136:
                      if (v33 != 1685220723)
                      {
                        goto LABEL_150;
                      }

                      v20 = 0;
                      goto LABEL_138;
                  }
                }

                if (v16 != v34)
                {
                  goto LABEL_150;
                }

                goto LABEL_133;
              }

LABEL_158:
              v20 = 0;
LABEL_159:
              DataSourceBytes = v20;
            }
          }
        }
      }
    }
  }

LABEL_19:
  v10 = *MEMORY[0x1E69E9840];
  return DataSourceBytes;
}