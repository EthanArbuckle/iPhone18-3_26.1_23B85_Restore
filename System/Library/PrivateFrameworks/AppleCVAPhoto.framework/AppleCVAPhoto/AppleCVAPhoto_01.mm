void sub_1DED5B92C(uint64_t a1)
{
  sub_1DED5B36C();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PTTuningParameters");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ECDE0F88 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPTTuningParametersClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PortraitSoftLinking.m" lineNumber:19 description:{@"Unable to find class %s", "PTTuningParameters"}];

    __break(1u);
  }
}

void *sub_1DED5B9F4(uint64_t a1)
{
  v2 = sub_1DED5B36C();
  result = dlsym(v2, "PTDisparityInNormalizedRectFromPixelBuffer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1ECDE15B8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1DED5BA44(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v10 = off_1ECDE15B8;
  v22 = off_1ECDE15B8;
  if (!off_1ECDE15B8)
  {
    v11 = sub_1DED5B36C();
    v20[3] = dlsym(v11, "PTDisparityInNormalizedRectFromPixelBuffer");
    off_1ECDE15B8 = v20[3];
    v10 = v20[3];
  }

  v18 = v10;
  _Block_object_dispose(&v19, 8);
  if (v18)
  {
    v12.n128_f64[0] = a2;
    v13.n128_f64[0] = a3;
    v14.n128_f64[0] = a4;
    v15.n128_f64[0] = a5;

    v18(100, a1, v12, v13, v14, v15);
  }

  else
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"float soft_PTDisparityInNormalizedRectFromPixelBuffer(PTCinematographyDetectionType, CGRect, CVPixelBufferRef)"}];
    [v16 handleFailureInFunction:v17 file:@"PortraitSoftLinking.m" lineNumber:20 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1DED5BBD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1DED5BBE8(uint64_t a1)
{
  v2 = sub_1DED5B36C();
  result = dlsym(v2, "PTDisparityInNormalizedRectFromPixelBufferWithPrior");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1ECDE0FB0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1DED5BC38(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v12 = off_1ECDE0FB0;
  v24 = off_1ECDE0FB0;
  if (!off_1ECDE0FB0)
  {
    v13 = sub_1DED5B36C();
    v22[3] = dlsym(v13, "PTDisparityInNormalizedRectFromPixelBufferWithPrior");
    off_1ECDE0FB0 = v22[3];
    v12 = v22[3];
  }

  v20 = v12;
  _Block_object_dispose(&v21, 8);
  if (v20)
  {
    v14.n128_f64[0] = a3;
    v15.n128_f64[0] = a4;
    v16.n128_f64[0] = a5;
    v17.n128_f64[0] = a6;

    v20(100, a1, a2, v14, v15, v16, v17);
  }

  else
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"float soft_PTDisparityInNormalizedRectFromPixelBufferWithPrior(PTCinematographyDetectionType, CGRect, CVPixelBufferRef, const float *)"}];
    [v18 handleFailureInFunction:v19 file:@"PortraitSoftLinking.m" lineNumber:21 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1DED5BDD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1DED5BDEC(uint64_t a1, CVPixelBufferRef pixelBuffer, int a3, __CVBuffer *a4, float a5, float a6)
{
  CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
  CVPixelBufferLockBaseAddress(a4, 0);
  CVPixelBufferLockBaseAddress(*a1, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  Width = CVPixelBufferGetWidth(pixelBuffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
  v15 = CVPixelBufferGetBaseAddress(a4);
  CVPixelBufferGetHeight(a4);
  CVPixelBufferGetWidth(a4);
  v16 = CVPixelBufferGetBytesPerRow(a4);
  v17 = CVPixelBufferGetBaseAddress(*a1);
  CVPixelBufferGetHeight(*a1);
  CVPixelBufferGetWidth(*a1);
  v18 = CVPixelBufferGetBytesPerRow(*a1);
  if (Height && Width)
  {
    v19 = 0;
    do
    {
      v20 = BaseAddress;
      v21 = v17;
      v22 = v15;
      v23 = Width;
      do
      {
        v25 = *v20++;
        v26 = v25;
        if (a3 <= v25)
        {
          *v21 = 2048.0;
          v24 = 2048.0;
        }

        else
        {
          v24 = (v26 / a5) + a6;
          *v21 = v24;
          if (v24 < 2048.0)
          {
            v24 = fmaxf(*(a1 + 48) + (v24 / (*(a1 + 44) * *(a1 + 40))), 0.0);
          }
        }

        *v22++ = v24;
        ++v21;
        --v23;
      }

      while (v23);
      ++v19;
      v15 = (v15 + v16);
      v17 = (v17 + v18);
      BaseAddress = (BaseAddress + BytesPerRow);
    }

    while (v19 != Height);
  }

  CVPixelBufferUnlockBaseAddress(*a1, 0);
  CVPixelBufferUnlockBaseAddress(a4, 0);
  CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  result = sub_1DED5C3B4(*a1, *(a1 + 8), *(a1 + 52), *(a1 + 56), *(a1 + 60), *(a1 + 64));
  if (*(a1 + 52) > 0.0 || *(a1 + 56) > 0.0 || *(a1 + 60) > 0.0 || *(a1 + 64) > 0.0)
  {
    v28 = *(a1 + 8);
    CVPixelBufferLockBaseAddress(v28, 0);
    CVPixelBufferLockBaseAddress(a4, 0);
    v29 = CVPixelBufferGetBaseAddress(v28);
    v30 = CVPixelBufferGetHeight(v28);
    v31 = CVPixelBufferGetWidth(v28);
    v32 = CVPixelBufferGetBytesPerRow(v28);
    v33 = CVPixelBufferGetBaseAddress(a4);
    CVPixelBufferGetHeight(a4);
    CVPixelBufferGetWidth(a4);
    v34 = CVPixelBufferGetBytesPerRow(a4);
    if (!v30 || !v31)
    {
LABEL_82:
      CVPixelBufferUnlockBaseAddress(a4, 0);

      return CVPixelBufferUnlockBaseAddress(v28, 0);
    }

    if (v31 <= 3)
    {
      v35 = v33 + 8;
      v36 = v29 + 2;
      do
      {
        v37 = *(v36 - 2);
        if (v37 >= 100000.0)
        {
          v37 = 0.0;
        }

        *(v36 - 2) = v37;
        if (v37 > 0.0)
        {
          *(v35 - 2) = 1157627904;
        }

        if (v31 != 1)
        {
          v38 = *(v36 - 1);
          if (v38 >= 100000.0)
          {
            v38 = 0.0;
          }

          *(v36 - 1) = v38;
          if (v38 > 0.0)
          {
            *(v35 - 1) = 1157627904;
          }

          if (v31 != 2)
          {
            v39 = *v36;
            if (*v36 >= 100000.0)
            {
              v39 = 0.0;
            }

            *v36 = v39;
            if (v39 > 0.0)
            {
              *v35 = 1157627904;
            }
          }
        }

        v35 = (v35 + v34);
        v36 = (v36 + v32);
        --v30;
      }

      while (v30);
      goto LABEL_82;
    }

    v40 = v33 >= &v29[v31] + v32 * (v30 - 1) || v29 >= &v33[4 * v31 + v34 * (v30 - 1)];
    if (!v40 || ((v32 | v34) & 0x8000000000000000) != 0)
    {
      for (i = 0; i != v30; ++i)
      {
        v50 = v29;
        v51 = v31;
        v52 = v33;
        do
        {
          v53 = *v50;
          if (*v50 >= 100000.0)
          {
            v53 = 0.0;
          }

          *v50 = v53;
          if (v53 > 0.0)
          {
            *v52 = 1157627904;
          }

          v52 += 4;
          ++v50;
          --v51;
        }

        while (v51);
        v33 += v34;
        v29 = (v29 + v32);
      }

      goto LABEL_82;
    }

    if (v31 == (v31 & 0xFFFFFFFFFFFFFFFCLL))
    {
      v41 = 0;
      v42 = v33 + 8;
      v43 = vdupq_n_s32(0x47C35000u);
      while (1)
      {
        v44 = v42;
        v45 = v31;
        v46 = v29;
        do
        {
          v47 = vbicq_s8(*v46, vcgeq_f32(*v46, v43));
          *v46 = v47;
          v48 = vmovn_s32(vcgtzq_f32(v47));
          if (v48.i8[0])
          {
            *(v44 - 2) = 1157627904;
            if ((v48.i8[2] & 1) == 0)
            {
LABEL_47:
              if (v48.i8[4])
              {
                goto LABEL_52;
              }

              goto LABEL_48;
            }
          }

          else if ((v48.i8[2] & 1) == 0)
          {
            goto LABEL_47;
          }

          *(v44 - 1) = 1157627904;
          if (v48.i8[4])
          {
LABEL_52:
            *v44 = 1157627904;
            if ((v48.i8[6] & 1) == 0)
            {
              goto LABEL_44;
            }

            goto LABEL_53;
          }

LABEL_48:
          if ((v48.i8[6] & 1) == 0)
          {
            goto LABEL_44;
          }

LABEL_53:
          v44[1] = 1157627904;
LABEL_44:
          ++v46;
          v44 += 4;
          v45 -= 4;
        }

        while (v45);
        ++v41;
        v29 = (v29 + v32);
        v42 = (v42 + v34);
        if (v41 == v30)
        {
          goto LABEL_82;
        }
      }
    }

    v54 = 0;
    v55 = v33 + 8;
    v56 = vdupq_n_s32(0x47C35000u);
LABEL_65:
    v57 = v55;
    v58 = v31 & 0xFFFFFFFFFFFFFFFCLL;
    v59 = v29;
    while (1)
    {
      v60 = vbicq_s8(*v59, vcgeq_f32(*v59, v56));
      *v59 = v60;
      v61 = vmovn_s32(vcgtzq_f32(v60));
      if (v61.i8[0])
      {
        *(v57 - 2) = 1157627904;
        if ((v61.i8[2] & 1) == 0)
        {
LABEL_69:
          if ((v61.i8[4] & 1) == 0)
          {
            goto LABEL_70;
          }

          goto LABEL_74;
        }
      }

      else if ((v61.i8[2] & 1) == 0)
      {
        goto LABEL_69;
      }

      *(v57 - 1) = 1157627904;
      if ((v61.i8[4] & 1) == 0)
      {
LABEL_70:
        if (v61.i8[6])
        {
          goto LABEL_75;
        }

        goto LABEL_66;
      }

LABEL_74:
      *v57 = 1157627904;
      if (v61.i8[6])
      {
LABEL_75:
        v57[1] = 1157627904;
      }

LABEL_66:
      ++v59;
      v57 += 4;
      v58 -= 4;
      if (!v58)
      {
        v62 = v31 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v63 = v29[v62];
          if (v63 >= 100000.0)
          {
            v63 = 0.0;
          }

          v29[v62] = v63;
          if (v63 > 0.0)
          {
            *&v33[4 * v62] = 1157627904;
          }

          ++v62;
        }

        while (v31 != v62);
        ++v54;
        v29 = (v29 + v32);
        v55 = (v55 + v34);
        v33 += v34;
        if (v54 == v30)
        {
          goto LABEL_82;
        }

        goto LABEL_65;
      }
    }
  }

  return result;
}

uint64_t sub_1DED5C3B4(__CVBuffer *a1, __CVBuffer *a2, float a3, float a4, float a5, float a6)
{
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferLockBaseAddress(a2, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(a2);
  CVPixelBufferGetHeight(a2);
  CVPixelBufferGetWidth(a2);
  pixelBuffer = a2;
  BytesPerRow = CVPixelBufferGetBytesPerRow(a2);
  v37 = CVPixelBufferGetBaseAddress(a1);
  Height = CVPixelBufferGetHeight(a1);
  Width = CVPixelBufferGetWidth(a1);
  v36 = a1;
  v15 = CVPixelBufferGetBytesPerRow(a1);
  if (Height)
  {
    v16 = 0;
    v18 = a4 <= 0.0 || Width == 0;
    v20 = a3 <= 0.0 || Width < 1;
    v21 = v37;
    v22 = BaseAddress;
    while (1)
    {
      if (!Width)
      {
        goto LABEL_15;
      }

      bzero(BaseAddress + BytesPerRow * v16, 4 * Width);
      if (!v18)
      {
        break;
      }

LABEL_18:
      if (!v20)
      {
        v23 = 100000.0;
        v24 = Width - 1;
        do
        {
          v23 = v23 + a3;
          v27 = v21[v24];
          if (v27 >= 2048.0)
          {
            v25 = 100000.0;
          }

          else
          {
            if (v23 >= v27)
            {
              v23 = v21[v24];
              goto LABEL_22;
            }

            v25 = v27 - v23;
          }

          v22[v24] = v25;
LABEL_22:
          v26 = v24-- + 1;
        }

        while (v26 > 1);
      }

LABEL_15:
      ++v16;
      v22 = (v22 + BytesPerRow);
      v21 = (v21 + v15);
      if (v16 == Height)
      {
        goto LABEL_35;
      }
    }

    v28 = 100000.0;
    v29 = v21;
    v30 = v22;
    v31 = Width;
    while (1)
    {
      v28 = v28 + a4;
      v33 = *v29;
      if (*v29 >= 2048.0)
      {
        v32 = 100000.0;
      }

      else
      {
        if (v28 >= v33)
        {
          v28 = *v29;
          goto LABEL_30;
        }

        v32 = v33 - v28;
      }

      *v30 = v32;
LABEL_30:
      ++v30;
      ++v29;
      if (!--v31)
      {
        goto LABEL_18;
      }
    }
  }

LABEL_35:
  if (a5 > 0.0 && Width)
  {
    if (!(Width >> 62))
    {
      operator new();
    }

    goto LABEL_46;
  }

  if (a6 > 0.0 && Width)
  {
    if (!(Width >> 62))
    {
      operator new();
    }

LABEL_46:
    sub_1DED35334();
  }

  CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);

  return CVPixelBufferUnlockBaseAddress(v36, 1uLL);
}

uint64_t sub_1DED5C7CC(uint64_t a1, CVPixelBufferRef pixelBuffer, int a3, __CVBuffer *a4, float a5, float a6)
{
  CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
  CVPixelBufferLockBaseAddress(a4, 0);
  CVPixelBufferLockBaseAddress(*a1, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  Width = CVPixelBufferGetWidth(pixelBuffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
  v15 = CVPixelBufferGetBaseAddress(a4);
  CVPixelBufferGetHeight(a4);
  CVPixelBufferGetWidth(a4);
  v16 = CVPixelBufferGetBytesPerRow(a4);
  v17 = CVPixelBufferGetBaseAddress(*a1);
  CVPixelBufferGetHeight(*a1);
  CVPixelBufferGetWidth(*a1);
  v18 = CVPixelBufferGetBytesPerRow(*a1);
  if (Height && Width)
  {
    v19 = 0;
    do
    {
      v20 = BaseAddress;
      v21 = v17;
      v22 = v15;
      v23 = Width;
      do
      {
        v29 = *v20++;
        v30 = v29;
        if (a3 <= v29)
        {
          *v21 = 2048.0;
          _S3 = 2048.0;
LABEL_7:
          __asm { FCVT            H3, S3 }

          goto LABEL_8;
        }

        _S3 = (v30 / a5) + a6;
        *v21 = _S3;
        if (_S3 >= 2048.0)
        {
          goto LABEL_7;
        }

        _S3 = *(a1 + 48) + (_S3 / (*(a1 + 44) * *(a1 + 40)));
        __asm { FCVT            H3, S3 }

        _H3 = fmaxl(*&_S3, COERCE_SHORT_FLOAT(0));
LABEL_8:
        *v22++ = _H3;
        ++v21;
        --v23;
      }

      while (v23);
      ++v19;
      v15 = (v15 + v16);
      v17 = (v17 + v18);
      BaseAddress = (BaseAddress + BytesPerRow);
    }

    while (v19 != Height);
  }

  CVPixelBufferUnlockBaseAddress(*a1, 0);
  CVPixelBufferUnlockBaseAddress(a4, 0);
  CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  result = sub_1DED5C3B4(*a1, *(a1 + 8), *(a1 + 52), *(a1 + 56), *(a1 + 60), *(a1 + 64));
  if (*(a1 + 52) > 0.0 || *(a1 + 56) > 0.0 || *(a1 + 60) > 0.0 || *(a1 + 64) > 0.0)
  {
    v33 = *(a1 + 8);
    CVPixelBufferLockBaseAddress(v33, 0);
    CVPixelBufferLockBaseAddress(a4, 0);
    v34 = CVPixelBufferGetBaseAddress(v33);
    v35 = CVPixelBufferGetHeight(v33);
    v36 = CVPixelBufferGetWidth(v33);
    v37 = CVPixelBufferGetBytesPerRow(v33);
    v38 = CVPixelBufferGetBaseAddress(a4);
    CVPixelBufferGetHeight(a4);
    CVPixelBufferGetWidth(a4);
    v39 = CVPixelBufferGetBytesPerRow(a4);
    if (!v35 || !v36)
    {
LABEL_83:
      CVPixelBufferUnlockBaseAddress(a4, 0);

      return CVPixelBufferUnlockBaseAddress(v33, 0);
    }

    if (v36 <= 3)
    {
      v40 = v38 + 4;
      v41 = v34 + 2;
      do
      {
        v42 = *(v41 - 2);
        if (v42 >= 100000.0)
        {
          v42 = 0.0;
        }

        *(v41 - 2) = v42;
        if (v42 > 0.0)
        {
          *(v40 - 2) = 26624;
        }

        if (v36 != 1)
        {
          v43 = *(v41 - 1);
          if (v43 >= 100000.0)
          {
            v43 = 0.0;
          }

          *(v41 - 1) = v43;
          if (v43 > 0.0)
          {
            *(v40 - 1) = 26624;
          }

          if (v36 != 2)
          {
            v44 = *v41;
            if (*v41 >= 100000.0)
            {
              v44 = 0.0;
            }

            *v41 = v44;
            if (v44 > 0.0)
            {
              *v40 = 26624;
            }
          }
        }

        v40 = (v40 + v39);
        v41 = (v41 + v37);
        --v35;
      }

      while (v35);
      goto LABEL_83;
    }

    _CF = v38 >= &v34[v36] + v37 * (v35 - 1) || v34 >= &v38[2 * v36 + v39 * (v35 - 1)];
    if (!_CF || ((v37 | v39) & 0x8000000000000000) != 0)
    {
      for (i = 0; i != v35; ++i)
      {
        v55 = v34;
        v56 = v36;
        v57 = v38;
        do
        {
          v58 = *v55;
          if (*v55 >= 100000.0)
          {
            v58 = 0.0;
          }

          *v55 = v58;
          if (v58 > 0.0)
          {
            *v57 = 26624;
          }

          v57 += 2;
          ++v55;
          --v56;
        }

        while (v56);
        v38 += v39;
        v34 = (v34 + v37);
      }

      goto LABEL_83;
    }

    if (v36 == (v36 & 0xFFFFFFFFFFFFFFFCLL))
    {
      v46 = 0;
      v47 = v38 + 4;
      v48 = vdupq_n_s32(0x47C35000u);
      while (1)
      {
        v49 = v47;
        v50 = v36;
        v51 = v34;
        do
        {
          v52 = vbicq_s8(*v51, vcgeq_f32(*v51, v48));
          *v51 = v52;
          v53 = vmovn_s32(vcgtzq_f32(v52));
          if (v53.i8[0])
          {
            *(v49 - 2) = 26624;
            if ((v53.i8[2] & 1) == 0)
            {
              goto LABEL_48;
            }
          }

          else if ((v53.i8[2] & 1) == 0)
          {
LABEL_48:
            if ((v53.i8[4] & 1) == 0)
            {
              goto LABEL_53;
            }

            goto LABEL_49;
          }

          *(v49 - 1) = 26624;
          if ((v53.i8[4] & 1) == 0)
          {
LABEL_53:
            if ((v53.i8[6] & 1) == 0)
            {
              goto LABEL_45;
            }

            goto LABEL_54;
          }

LABEL_49:
          *v49 = 26624;
          if ((v53.i8[6] & 1) == 0)
          {
            goto LABEL_45;
          }

LABEL_54:
          v49[1] = 26624;
LABEL_45:
          ++v51;
          v49 += 4;
          v50 -= 4;
        }

        while (v50);
        ++v46;
        v34 = (v34 + v37);
        v47 = (v47 + v39);
        if (v46 == v35)
        {
          goto LABEL_83;
        }
      }
    }

    v59 = 0;
    v60 = v38 + 4;
    v61 = vdupq_n_s32(0x47C35000u);
LABEL_66:
    v62 = v60;
    v63 = v36 & 0xFFFFFFFFFFFFFFFCLL;
    v64 = v34;
    while (1)
    {
      v65 = vbicq_s8(*v64, vcgeq_f32(*v64, v61));
      *v64 = v65;
      v66 = vmovn_s32(vcgtzq_f32(v65));
      if (v66.i8[0])
      {
        *(v62 - 2) = 26624;
        if ((v66.i8[2] & 1) == 0)
        {
          goto LABEL_70;
        }
      }

      else if ((v66.i8[2] & 1) == 0)
      {
LABEL_70:
        if (v66.i8[4])
        {
          goto LABEL_71;
        }

        goto LABEL_75;
      }

      *(v62 - 1) = 26624;
      if (v66.i8[4])
      {
LABEL_71:
        *v62 = 26624;
        if (v66.i8[6])
        {
          goto LABEL_76;
        }

        goto LABEL_67;
      }

LABEL_75:
      if (v66.i8[6])
      {
LABEL_76:
        v62[1] = 26624;
      }

LABEL_67:
      ++v64;
      v62 += 4;
      v63 -= 4;
      if (!v63)
      {
        v67 = v36 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v68 = v34[v67];
          if (v68 >= 100000.0)
          {
            v68 = 0.0;
          }

          v34[v67] = v68;
          if (v68 > 0.0)
          {
            *&v38[2 * v67] = 26624;
          }

          ++v67;
        }

        while (v36 != v67);
        ++v59;
        v34 = (v34 + v37);
        v60 = (v60 + v39);
        v38 += v39;
        if (v59 == v35)
        {
          goto LABEL_83;
        }

        goto LABEL_66;
      }
    }
  }

  return result;
}

void sub_1DED5CDFC()
{
  v5[47] = *MEMORY[0x1E69E9840];
  v4[0] = @"colorWidth";
  v4[1] = @"colorHeight";
  v5[0] = &unk_1F5A09688;
  v5[1] = &unk_1F5A09688;
  v4[2] = @"shiftWidth";
  v4[3] = @"shiftHeight";
  v5[2] = &unk_1F5A09688;
  v5[3] = &unk_1F5A09688;
  v4[4] = @"alphaWidth";
  v4[5] = @"alphaHeight";
  v5[4] = &unk_1F5A09688;
  v5[5] = &unk_1F5A09688;
  v4[6] = @"kernelSize";
  v4[7] = @"guidedFilterUnconfidentWeight";
  v5[6] = &unk_1F5A096A0;
  v5[7] = &unk_1F5A09E40;
  v4[8] = @"guidedFilterMinDistToDeweight";
  v4[9] = @"referenceShift";
  v5[8] = &unk_1F5A096B8;
  v5[9] = &unk_1F5A096D0;
  v4[10] = @"alphaMaxLaplacian";
  v4[11] = @"alphaContrastExponent";
  v5[10] = &unk_1F5A09E50;
  v5[11] = &unk_1F5A096E8;
  v4[12] = @"shiftFilterColorStd";
  v4[13] = @"shiftFilterUpdateRate";
  v5[12] = &unk_1F5A09700;
  v5[13] = &unk_1F5A09E60;
  v4[14] = @"maxShiftFillingInconsistency";
  v4[15] = @"maxShiftFillingDistFromFg";
  v5[14] = &unk_1F5A09718;
  v5[15] = &unk_1F5A096B8;
  v4[16] = @"maxDistToPushShiftEdgesFwd";
  v4[17] = @"maxDistToPushShiftEdgesRev";
  v5[16] = &unk_1F5A09730;
  v5[17] = &unk_1F5A09730;
  v4[18] = @"shiftPushingBgToFgShiftDifference";
  v4[19] = @"kCVAVideoMattingProperty_focusMachineVariationThreshold";
  v5[18] = &unk_1F5A09748;
  v5[19] = &unk_1F5A09760;
  v4[20] = @"kCVAVideoMattingProperty_focusMachineMinFastFrames";
  v4[21] = @"kCVAVideoMattingDebug_focusMachineState";
  v5[20] = &unk_1F5A09760;
  v5[21] = MEMORY[0x1E695E118];
  v4[22] = @"kCVAVideoMattingProperty_focusThresholdHardness";
  v4[23] = @"width";
  v5[22] = &unk_1F5A09E70;
  v5[23] = &unk_1F5A09688;
  v4[24] = @"height";
  v4[25] = @"kCVAFusionProperty_outputRotation";
  v5[24] = &unk_1F5A09688;
  v5[25] = &unk_1F5A09730;
  v4[26] = @"bgShiftUpdateRate";
  v4[27] = @"kCVAFusionProperty_bgShiftStatsWindowSize";
  v5[26] = &unk_1F5A09E80;
  v5[27] = &unk_1F5A09760;
  v4[28] = @"kCVAFusionProperty_invalidShiftRatioStatsWindowSize";
  v4[29] = @"cntDeltaShift";
  v5[28] = &unk_1F5A09760;
  v5[29] = &unk_1F5A09778;
  v4[30] = @"minDeltaShift";
  v4[31] = @"maxDeltaShift";
  v5[30] = &unk_1F5A09700;
  v5[31] = &unk_1F5A09790;
  v4[32] = @"dsLowThld";
  v4[33] = @"dsLowScale";
  v5[32] = &unk_1F5A097A8;
  v5[33] = &unk_1F5A09E90;
  v4[34] = @"dsHighThld";
  v4[35] = @"dsHighScale";
  v5[34] = &unk_1F5A097C0;
  v5[35] = &unk_1F5A09EA0;
  v4[36] = @"kCVAFusionProperty_foregroundPercentile";
  v4[37] = @"kCVAFusionProperty_closeDisparityPercentile";
  v5[36] = &unk_1F5A09E60;
  v5[37] = &unk_1F5A09EB0;
  v4[38] = @"kCVAFusionProperty_deltaDepth";
  v4[39] = @"kCVAFusionProperty_backgroundSeparationLikelihoodTemporalUpdateRate";
  v5[38] = &unk_1F5A09E60;
  v5[39] = &unk_1F5A09E80;
  v4[40] = @"kCVAFusionProperty_backgroundSeparationLikelihoodUpdateRate";
  v4[41] = @"kCVAFusionProperty_backgroundSeparationLikelihoodUpdateThreshold";
  v5[40] = &unk_1F5A09EA0;
  v5[41] = &unk_1F5A09E80;
  v4[42] = @"kCVAFusionProperty_invalidShiftRatioUpdateRate";
  v4[43] = @"nearSubjectDisparityScalingFactor";
  v5[42] = &unk_1F5A09EC0;
  v5[43] = &unk_1F5A09E70;
  v4[44] = @"farSubjectDisparityScalingFactor";
  v4[45] = @"nearFocusDistanceRatioThreshold";
  v5[44] = &unk_1F5A09ED0;
  v5[45] = &unk_1F5A09EE0;
  v4[46] = @"farFocusDistanceRatioThreshold";
  v5[46] = &unk_1F5A09EF0;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:47];
  v1 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.coremedia"];
  v2 = qword_1ECDE0FB8;
  qword_1ECDE0FB8 = v1;

  [qword_1ECDE0FB8 registerDefaults:v0];
  v3 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1DED5D1F8(const __CFString *a1, const __CFString *a2, uint64_t a3)
{
  v4 = CFPreferencesCopyValue(a1, a2, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 == CFStringGetTypeID())
    {
      v7 = v5;
      if ([v7 compare:@"true" options:1] && objc_msgSend(v7, "compare:options:", @"yes", 1))
      {
        if ([v7 compare:@"false" options:1] && objc_msgSend(v7, "compare:options:", @"no", 1) && objc_msgSend(v7, "compare:options:", @"0", 1))
        {
          if ([v7 intValue])
          {
            a3 = [v7 intValue];
          }
        }

        else
        {
          a3 = 0;
        }
      }

      else
      {
        a3 = 1;
      }

      goto LABEL_18;
    }

    v8 = CFGetTypeID(v5);
    if (v8 == CFNumberGetTypeID())
    {
      v9 = [v5 intValue];
    }

    else
    {
      v10 = CFGetTypeID(v5);
      if (v10 != CFBooleanGetTypeID())
      {
LABEL_18:
        CFRelease(v5);
        return a3;
      }

      v9 = [v5 BOOLValue];
    }

    a3 = v9;
    goto LABEL_18;
  }

  return a3;
}

CVPixelBufferRef *sub_1DED5D358(CVPixelBufferRef *a1)
{
  CVPixelBufferRelease(a1[17]);
  a1[17] = 0;
  CVPixelBufferRelease(a1[18]);
  a1[18] = 0;
  CVPixelBufferRelease(a1[19]);
  a1[19] = 0;
  CVPixelBufferRelease(a1[20]);
  a1[20] = 0;
  CVPixelBufferRelease(a1[21]);
  a1[21] = 0;
  CVPixelBufferRelease(a1[22]);
  a1[22] = 0;
  CVPixelBufferRelease(a1[23]);
  a1[23] = 0;
  CVPixelBufferRelease(a1[24]);
  a1[24] = 0;
  CVPixelBufferRelease(a1[25]);
  a1[25] = 0;
  CVPixelBufferRelease(a1[26]);
  a1[26] = 0;
  CVPixelBufferRelease(a1[27]);
  a1[27] = 0;
  CVPixelBufferRelease(a1[28]);
  a1[28] = 0;
  CVPixelBufferRelease(a1[29]);
  a1[29] = 0;
  return a1;
}

void sub_1DED5D418(unsigned __int16 *a1, unsigned __int16 a2, unsigned __int16 a3, int a4, int a5, int a6, int a7, __int16 a8, float a9, float a10, __int16 a11, unsigned __int16 a12, unsigned __int16 a13, void *a14, __CVBuffer *a15, __CVBuffer *a16, _DWORD *a17)
{
  v697 = *MEMORY[0x1E69E9840];
  v592 = a14;
  *a1 = 207622272;
  a1[2] = a2;
  a1[3] = a3;
  a1[4] = a2 - a8;
  v26 = a1;
  a1[5] = a3 - a11;
  a1[6] = a4;
  a1[7] = a5;
  a1[8] = a6;
  a1[9] = a7;
  a1[10] = a12;
  a1[11] = a13;
  *(a1 + 10) = a9;
  v27 = ((a4 + a6 - 1) / a4);
  v28 = (a5 + a7 - 1) / a5;
  v678 = a1;
  if (a1[12] == v27 && a1[13] == v28)
  {
    v29 = a15;
    v31 = *(a1 + 17);
    v30 = *(a1 + 18);
    v32 = *(a1 + 28);
    v33 = v592;
    CVPixelBufferLockBaseAddress(a15, 1uLL);
    CVPixelBufferLockBaseAddress(v31, 0);
    CVPixelBufferLockBaseAddress(v30, 0);
    CVPixelBufferLockBaseAddress(v32, 0);
    v620 = [v33 bytes];
    BaseAddress = CVPixelBufferGetBaseAddress(a15);
    Height = CVPixelBufferGetHeight(a15);
    Width = CVPixelBufferGetWidth(a15);
    BytesPerRow = CVPixelBufferGetBytesPerRow(a15);
    v590 = Width;
    v34 = Height;
    v35 = CVPixelBufferGetBaseAddress(v31);
    v36 = CVPixelBufferGetHeight(v31);
    v597 = CVPixelBufferGetWidth(v31);
    v601 = CVPixelBufferGetBytesPerRow(v31);
    v37 = CVPixelBufferGetBaseAddress(v30);
    CVPixelBufferGetHeight(v30);
    CVPixelBufferGetWidth(v30);
    __dst = CVPixelBufferGetBytesPerRow(v30);
    v593 = CVPixelBufferGetBaseAddress(v32);
    CVPixelBufferGetHeight(v32);
    CVPixelBufferGetWidth(v32);
    v670 = CVPixelBufferGetBytesPerRow(v32);
    v588 = v32;
    *(v26 + 128) = 4286578687;
    *(v26 + 112) = xmmword_1DED740F0;
    v696 = 0;
    v694 = 0;
    v623 = (v26 + 44);
    v605 = (v26 + 124);
    if (CVPixelBufferGetPixelFormatType(a15) == 1278226488)
    {
      *buf = &unk_1F59F9DF0;
      *&buf[8] = &BaseAddress;
      *v686 = buf;
      sub_1DED609A4(buf, v695);
      if (*v686 == buf)
      {
        (*(**v686 + 32))(*v686);
      }

      else if (*v686)
      {
        (*(**v686 + 40))();
      }

      v45 = &unk_1F59F9E38;
    }

    else if (CVPixelBufferGetPixelFormatType(a15) == 1278226534)
    {
      *buf = &unk_1F59F9E80;
      *&buf[8] = &BaseAddress;
      *v686 = buf;
      sub_1DED609A4(buf, v695);
      if (*v686 == buf)
      {
        (*(**v686 + 32))(*v686);
      }

      else if (*v686)
      {
        (*(**v686 + 40))();
      }

      v45 = &unk_1F59F9EC8;
    }

    else
    {
      if (CVPixelBufferGetPixelFormatType(a15) != 1278226536)
      {
        v46 = 0;
        goto LABEL_207;
      }

      *buf = &unk_1F59F9F10;
      *&buf[8] = &BaseAddress;
      *v686 = buf;
      sub_1DED609A4(buf, v695);
      if (*v686 == buf)
      {
        (*(**v686 + 32))(*v686);
      }

      else if (*v686)
      {
        (*(**v686 + 40))();
      }

      v45 = &unk_1F59F9F58;
    }

    *buf = v45;
    *v686 = buf;
    sub_1DED60BE4(buf, v693);
    if (*v686 == buf)
    {
      (*(**v686 + 32))(*v686);
    }

    else if (*v686)
    {
      (*(**v686 + 40))();
    }

    v581 = v31;
    v584 = v30;
    v586 = v33;
    v49 = v34;
    v580 = v34;
    if (v36 < 1)
    {
      goto LABEL_205;
    }

    v50 = 0;
    v610 = 0uLL;
    v51 = 0;
    v606 = (v26 + 240);
    v52 = *(v26 + 10);
    v53 = v34 - 1;
    v33 = (v590 - 1);
    v615 = v35;
    v595 = v36 - 1;
    __src = (v36 & 0x7FFFFFFF);
    v613 = v37;
    do
    {
      if (v50 >= v595)
      {
        v54 = *(v26 + 18) + *(v26 + 10);
      }

      else
      {
        v54 = v52 + *(v26 + 14);
      }

      v55 = *(v26 + 48);
      *v47.i32 = v55;
      LOWORD(v48) = *(v26 + 22);
      v48 = LODWORD(v48);
      v56 = ((v54 + 0.5) * v55) / v48;
      if (v56 >= v55)
      {
        v57 = *(v26 + 48);
      }

      else
      {
        v57 = v56;
      }

      if (v597 >= 1)
      {
        v58 = 0;
        v56 = v52 + 0.5;
        *v47.i32 = (v56 * *v47.i32) / v48;
        v59 = *v47.i32 & ~(*v47.i32 >> 31);
        v641 = v59;
        __n = v35 + v601 * v50;
        v60 = &v37[__dst * v50];
        v61 = *(v26 + 8);
        v636 = v57 - v59;
        v62 = v51;
        v608 = &v593[v670 * v59];
        v625 = v60;
        v632 = v50;
        v628 = v54;
        v665 = v57;
        while (1)
        {
          v64 = v61;
          v65 = v620 + 8 * v62;
          v47.i16[0] = *v65;
          v47 = vmovl_s16(v47).u64[0];
          LOWORD(v48) = *v623;
          *(__n + 4 * v58) = v47.i32[0] / LODWORD(v48);
          v647 = v65[4];
          *(v60 + v58) = (v647 != 0) << 7;
          if (v58 >= v597 - 1)
          {
            v66 = *(v26 + 16) + *(v26 + 8);
          }

          else
          {
            v66 = v61 + *(v26 + 12);
          }

          v654 = v62;
          v658 = v58;
          v67 = v64 + 0.5;
          v68 = *(v26 + 46);
          v48 = v68;
          LOWORD(v56) = *(v26 + 20);
          v56 = LODWORD(v56);
          v69 = ((v67 * v68) / v56) & ~(((v67 * v68) / v56) >> 31);
          *v47.i32 = ((v66 + 0.5) * v68) / v56;
          if (*v47.i32 >= v68)
          {
            v70 = *(v26 + 46);
          }

          else
          {
            v70 = *v47.i32;
          }

          v650 = v66;
          v673 = v69;
          if (v57 <= v59)
          {
            goto LABEL_75;
          }

          v71 = v59;
          if (v70 <= v69)
          {
            break;
          }

          v72 = 0;
          v73 = 0;
          v74 = v641;
          v75 = &v608[v69];
          do
          {
            LOWORD(v48) = *(v26 + 48);
            v76 = ((v74 + 0.5) * v49) / LODWORD(v48);
            v77 = v76 & ~(v76 >> 31);
            if (v77 >= v53)
            {
              v77 = v53;
            }

            *buf = v77;
            if (!v696)
            {
              goto LABEL_486;
            }

            v26 = (*(*v696 + 48))(v696, buf);
            v78 = v75;
            v79 = v673;
            v80 = v678;
            do
            {
              LOWORD(v48) = v80[23];
              v81 = ((v79 + 0.5) * v590) / LODWORD(v48);
              v82 = v81 & ~(v81 >> 31);
              if (v82 >= v33)
              {
                v82 = v590 - 1;
              }

              *buf = v26;
              v683 = v82;
              if (!v694)
              {
                goto LABEL_486;
              }

              v83 = (*(*v694 + 48))(v694, buf, &v683);
              v80 = v678;
              if (v83 < *(v678 + 52))
              {
                ++v73;
              }

              v84 = (v83 >= *(v678 + 52)) & (v83 > *(v678 + 51));
              if (v83 >= *(v678 + 52) && v83 > *(v678 + 51))
              {
                v85 = 64;
              }

              else
              {
                v85 = 32;
              }

              *v78++ = v85;
              v72 += v84;
              ++v79;
            }

            while (v70 > v79);
            ++v74;
            LODWORD(v57) = v665;
            v75 += v670;
            v26 = v678;
            v53 = v34 - 1;
          }

          while (v74 != v665);
LABEL_76:
          v88 = ((v70 - v673) * v636);
          if (v72 == v88)
          {
            v63 = v654;
            v89 = v658;
            v60 = v625;
            *(v625 + v658) |= 0x40u;
            v37 = v613;
            v35 = v615;
            v50 = v632;
            v54 = v628;
            LODWORD(v59) = v641;
            if (v647)
            {
              v90 = *(__n + 4 * v658);
              v48 = *(v26 + 112);
              v56 = *(v26 + 116);
              if (v90 >= v48)
              {
                v90 = *(v26 + 112);
              }

              *(v26 + 112) = v90;
              v47.i32[0] = *(__n + 4 * v658);
              if (v56 >= *v47.i32)
              {
                *v47.i32 = v56;
              }

              *(v26 + 116) = v47.i32[0];
              ++*(&v610 + 1);
            }
          }

          else
          {
            v89 = v658;
            v60 = v625;
            v91 = *(v625 + v658);
            v37 = v613;
            v35 = v615;
            if (v73 == v88)
            {
              *(v625 + v658) = v91 | 0x20;
              v50 = v632;
              v54 = v628;
              LODWORD(v59) = v641;
              v63 = v654;
              v61 = v650;
              if (v647)
              {
                v92 = *(__n + 4 * v658);
                v48 = *(v26 + 124);
                v56 = *(v26 + 128);
                if (v92 >= v48)
                {
                  v92 = *(v26 + 124);
                }

                *(v26 + 124) = v92;
                v47.i32[0] = *(__n + 4 * v658);
                if (v56 >= *v47.i32)
                {
                  *v47.i32 = v56;
                }

                *(v26 + 128) = v47.i32[0];
                *&v610 = v610 + 1;
              }

              goto LABEL_46;
            }

            *(v625 + v658) = v91 | 0x10;
            v50 = v632;
            v54 = v628;
            LODWORD(v59) = v641;
            v63 = v654;
          }

          v61 = v650;
LABEL_46:
          v58 = (v89 + 1);
          v62 = v63 + 1;
          if (v58 == (v597 & 0x7FFFFFFF))
          {
            v51 = v62;
            goto LABEL_35;
          }
        }

        do
        {
          LOWORD(v48) = *(v26 + 48);
          v86 = ((v71 + 0.5) * v49) / LODWORD(v48);
          v87 = v86 & ~(v86 >> 31);
          if (v87 >= v53)
          {
            v87 = v53;
          }

          *buf = v87;
          if (!v696)
          {
            goto LABEL_486;
          }

          (*(*v696 + 48))(v696, buf);
          ++v71;
        }

        while (v57 != v71);
LABEL_75:
        v73 = 0;
        v72 = 0;
        goto LABEL_76;
      }

LABEL_35:
      ++v50;
      v52 = v54;
    }

    while (v50 != __src);
    if (*(&v610 + 1))
    {
      bzero(v606, 0x400uLL);
      v33 = v586;
      if (v597 >= 1)
      {
        v93 = 0;
        v94 = v37;
        v95 = v35;
        do
        {
          v96 = v94;
          v97 = v597 & 0x7FFFFFFF;
          v98 = v95;
          do
          {
            v99 = *v96++;
            if (v99 == 192)
            {
              v100 = *v98;
              v101 = *(v26 + 112);
              v56 = *(v26 + 116);
              if (*v98 >= v101 && v100 < v56)
              {
                *&v606[4 * (((v100 - v101) * 256.0) / (v56 - v101))] = *&v606[4 * (((v100 - v101) * 256.0) / (v56 - v101))] + 1.0;
              }
            }

            ++v98;
            --v97;
          }

          while (v97);
          ++v93;
          v95 = (v95 + v601);
          v94 += __dst;
        }

        while (v93 != __src);
      }

      *(v26 + 120) = 0;
      v47.i32[0] = *(v26 + 112);
      if (!v610)
      {
        *(v26 + 128) = v47.i32[0];
        *(v26 + 132) = v47.i32[0];
        *(v26 + 124) = v47.i32[0];
        goto LABEL_104;
      }

      if (*v47.i32 >= *(v26 + 128))
      {
        v156 = *(v26 + 128);
      }

      else
      {
        v156 = *(v26 + 112);
      }
    }

    else
    {
      v33 = v586;
      v157 = v610;
      if (!v610)
      {
        goto LABEL_487;
      }

      v156 = *(v26 + 128);
    }

    bzero(v606, 0x400uLL);
    if (v597 >= 1)
    {
      v158 = 0;
      do
      {
        v159 = v37;
        v160 = v597 & 0x7FFFFFFF;
        v161 = v35;
        do
        {
          v162 = *v159++;
          if (v162 == 160)
          {
            v163 = *v161;
            if (*v161 < v156 && v163 >= *v605)
            {
              v164 = (((v163 - *v605) * 256.0) / (v156 - *v605));
              *&v606[4 * v164] = *&v606[4 * v164] + 1.0;
            }
          }

          ++v161;
          --v160;
        }

        while (v160);
        ++v158;
        v35 = (v35 + v601);
        v37 += __dst;
      }

      while (v158 != __src);
    }

    v165 = 0;
    *(v26 + 1264) = 872415232;
    v166 = 0.00000011921;
    do
    {
      v166 = v166 + *&v606[v165];
      *(v26 + 1264) = v166;
      v165 += 4;
    }

    while (v165 != 1024);
    v167 = 0;
    v168 = *(v26 + 240) / v166;
    *(v26 + 240) = v168;
    v169 = v26 + 244;
    do
    {
      v168 = v168 + (*(v169 + v167) / *(v26 + 1264));
      *(v169 + v167) = v168;
      v167 += 4;
    }

    while (v167 != 1020);
    v170 = 0;
    v171 = *(v26 + 124);
    do
    {
      if (*&v606[4 * v170] > *(v26 + 56))
      {
        break;
      }

      ++v170;
    }

    while (v170 != 256);
    v56 = v156 - v171;
    *v47.i32 = v171 + (vcvts_n_f32_u64(v170, 8uLL) * (v156 - v171));
    *(v26 + 132) = v47.i32[0];
    if (!*(&v610 + 1))
    {
      *(v26 + 116) = v47.i32[0];
      *(v26 + 120) = v47.i32[0];
      *(v26 + 112) = v47.i32[0];
    }

    if (v610 != 0)
    {
      do
      {
LABEL_104:
        v103 = *(v26 + 46);
        v47.i16[0] = *(v26 + 20);
        v104 = *(v26 + 10);
        v105 = v47.u32[0];
        v106 = *(v26 + 48);
        v107 = v106;
        LOWORD(v56) = *(v26 + 22);
        v108 = LODWORD(v56);
        v109 = (((v104 + 0.5) * v106) / v108);
        v662 = *(v26 + 8);
        v110 = ((((*(v26 + 16) + v662) + 0.5) * v103) / v47.u32[0]);
        v111 = (((*(v26 + 18) + v104) + 0.5) * v106) / v108;
        LODWORD(v112) = v111;
        if (v110 >= v103)
        {
          v113 = *(v26 + 46);
        }

        else
        {
          v113 = v110;
        }

        v666 = v113;
        v655 = v111;
        v659 = *(v26 + 48);
        if (v112 >= v106)
        {
          v112 = *(v26 + 48);
        }

        else
        {
          v112 = v112;
        }

        v674 = v112;
        v114 = v590;
        if (v109 < 1)
        {
LABEL_127:
          v126 = v109 & ~(v109 >> 31);
          if (v126 >= v674)
          {
LABEL_157:
            v26 = v678;
            LODWORD(v143) = v678[24];
            if (v674 >= v143)
            {
LABEL_179:
              v46 = 1;
              v33 = v586;
              goto LABEL_206;
            }

            v33 = (v580 - 1);
            if (v655 >= v659)
            {
              v144 = v659;
            }

            else
            {
              v144 = v655;
            }

            v145 = &v593[v670 * v144];
            while (1)
            {
              v146 = (((v144 + 0.5) * v49) / v143);
              if (v33 < v146)
              {
                v146 = v580 - 1;
              }

              *buf = v146;
              if (!v696)
              {
                break;
              }

              v147 = (*(*v696 + 48))(v696, buf);
              LOWORD(v148) = v678[23];
              if (v148)
              {
                v149 = v147;
                v150 = 0;
                do
                {
                  v151 = ((v150 + 0.5) * v114) / v148;
                  v152 = v151 & ~(v151 >> 31);
                  if (v152 >= v590 - 1)
                  {
                    v152 = v590 - 1;
                  }

                  *buf = v149;
                  v683 = v152;
                  if (!v694)
                  {
                    goto LABEL_486;
                  }

                  v153 = (*(*v694 + 48))(v694, buf, &v683);
                  if (v153 > *(v678 + 51) && v153 >= *(v678 + 52))
                  {
                    v155 = 64;
                  }

                  else
                  {
                    v155 = 32;
                  }

                  v145[v150++] = v155;
                  v148 = v678[23];
                }

                while (v150 < v148);
              }

              ++v144;
              v143 = v678[24];
              v145 += v670;
              if (v144 >= v143)
              {
                goto LABEL_179;
              }
            }
          }

          else
          {
            v127 = (((v662 + 0.5) * v103) / v105);
            v26 = (v590 - 1);
            if (v110 < v103)
            {
              v103 = v110;
            }

            v33 = &v593[v670 * v126];
            while (1)
            {
              LOWORD(v107) = v678[24];
              v128 = ((v126 + 0.5) * v49) / LODWORD(v107);
              v129 = v128 & ~(v128 >> 31);
              if (v129 >= v580 - 1)
              {
                v129 = v580 - 1;
              }

              *buf = v129;
              if (!v696)
              {
                break;
              }

              v130 = (*(*v696 + 48))(v696, buf);
              v131 = v678;
              if (v127 >= 1)
              {
                for (i = 0; i != v127; *(v33 + i++) = v136)
                {
                  LOWORD(v107) = v131[23];
                  v133 = ((i + 0.5) * v114) / LODWORD(v107);
                  *buf = v130;
                  v683 = v133 & ~(v133 >> 31);
                  if (!v694)
                  {
                    goto LABEL_486;
                  }

                  v134 = (*(*v694 + 48))(v694, buf, &v683);
                  v131 = v678;
                  if (v134 > *(v678 + 51) && v134 >= *(v678 + 52))
                  {
                    v136 = 64;
                  }

                  else
                  {
                    v136 = 32;
                  }
                }
              }

              LODWORD(v137) = v131[23];
              v138 = v103;
              if (v666 < v137)
              {
                do
                {
                  v139 = (((v138 + 0.5) * v114) / v137);
                  if (v26 < v139)
                  {
                    v139 = v590 - 1;
                  }

                  *buf = v130;
                  v683 = v139;
                  if (!v694)
                  {
                    goto LABEL_486;
                  }

                  v140 = (*(*v694 + 48))(v694, buf, &v683);
                  if (v140 > *(v678 + 51) && v140 >= *(v678 + 52))
                  {
                    v142 = 64;
                  }

                  else
                  {
                    v142 = 32;
                  }

                  *(v33 + v138++) = v142;
                  v137 = v678[23];
                }

                while (v138 < v137);
              }

              ++v126;
              v33 += v670;
              if (v126 == v674)
              {
                goto LABEL_157;
              }
            }
          }
        }

        else
        {
          v115 = 0;
          v26 = 32;
          v33 = v593;
          while (1)
          {
            LOWORD(v107) = v678[24];
            v116 = ((v115 + 0.5) * v49) / LODWORD(v107);
            *buf = v116 & ~(v116 >> 31);
            if (!v696)
            {
              break;
            }

            v117 = (*(*v696 + 48))(v696, buf);
            LOWORD(v118) = v678[23];
            if (v118)
            {
              v119 = v117;
              v120 = 0;
              do
              {
                v121 = ((v120 + 0.5) * v114) / v118;
                v122 = v121 & ~(v121 >> 31);
                if (v122 >= v590 - 1)
                {
                  v122 = v590 - 1;
                }

                *buf = v119;
                v683 = v122;
                if (!v694)
                {
                  goto LABEL_486;
                }

                v123 = (*(*v694 + 48))(v694, buf, &v683);
                if (v123 > *(v678 + 51) && v123 >= *(v678 + 52))
                {
                  v125 = 64;
                }

                else
                {
                  v125 = 32;
                }

                *(v33 + v120++) = v125;
                v118 = v678[23];
              }

              while (v120 < v118);
            }

            ++v115;
            v33 += v670;
            if (v115 == v109)
            {
              goto LABEL_127;
            }
          }
        }

LABEL_486:
        sub_1DED25F90();
LABEL_487:
        ;
      }

      while (v157);
    }

LABEL_205:
    v46 = 0;
LABEL_206:
    v29 = a15;
    v30 = v584;
    v31 = v581;
LABEL_207:
    CVPixelBufferUnlockBaseAddress(v31, 0);
    CVPixelBufferUnlockBaseAddress(v29, 1uLL);
    CVPixelBufferUnlockBaseAddress(v30, 0);
    CVPixelBufferUnlockBaseAddress(v588, 0);
    if (v694 == v693)
    {
      (*(*v694 + 32))(v694);
    }

    else if (v694)
    {
      (*(*v694 + 40))();
    }

    if (v696 == v695)
    {
      (*(*v696 + 32))(v696);
    }

    else if (v696)
    {
      (*(*v696 + 40))();
    }

    if (v46)
    {
      v612 = *(v26 + 176);
      v614 = *(v26 + 168);
      v611 = *(v26 + 184);
      v173 = *(v26 + 200);
      v172 = *(v26 + 208);
      v174 = *(v26 + 216);
      v175 = *(v26 + 152);
      v616 = *(v26 + 160);
      v618 = *(v26 + 192);
      v176 = *(v26 + 136);
      v177 = *(v26 + 144);
      CVPixelBufferLockBaseAddress(v177, 0);
      CVPixelBufferLockBaseAddress(v616, 0);
      CVPixelBufferLockBaseAddress(v614, 0);
      CVPixelBufferLockBaseAddress(v612, 0);
      CVPixelBufferLockBaseAddress(v611, 0);
      CVPixelBufferLockBaseAddress(v618, 0);
      CVPixelBufferLockBaseAddress(v173, 0);
      CVPixelBufferLockBaseAddress(v172, 0);
      CVPixelBufferLockBaseAddress(v174, 0);
      CVPixelBufferLockBaseAddress(v175, 0);
      CVPixelBufferLockBaseAddress(v176, 0);
      v178 = CVPixelBufferGetBaseAddress(v176);
      v607 = CVPixelBufferGetHeight(v176);
      v179 = CVPixelBufferGetWidth(v176);
      v656 = CVPixelBufferGetBytesPerRow(v176);
      v609 = CVPixelBufferGetBaseAddress(v618);
      v587 = CVPixelBufferGetHeight(v618);
      CVPixelBufferGetWidth(v618);
      v675 = CVPixelBufferGetBytesPerRow(v618);
      v602 = CVPixelBufferGetBaseAddress(v173);
      CVPixelBufferGetHeight(v173);
      CVPixelBufferGetWidth(v173);
      v671 = CVPixelBufferGetBytesPerRow(v173);
      v629 = CVPixelBufferGetBaseAddress(v172);
      CVPixelBufferGetHeight(v172);
      CVPixelBufferGetWidth(v172);
      v663 = CVPixelBufferGetBytesPerRow(v172);
      v642 = CVPixelBufferGetBaseAddress(v174);
      CVPixelBufferGetHeight(v174);
      CVPixelBufferGetWidth(v174);
      v667 = CVPixelBufferGetBytesPerRow(v174);
      v180 = CVPixelBufferGetBaseAddress(v177);
      CVPixelBufferGetHeight(v177);
      CVPixelBufferGetWidth(v177);
      v651 = CVPixelBufferGetBytesPerRow(v177);
      __srca = CVPixelBufferGetBaseAddress(v616);
      __nb = CVPixelBufferGetHeight(v616);
      CVPixelBufferGetWidth(v616);
      v648 = CVPixelBufferGetBytesPerRow(v616);
      __dsta = CVPixelBufferGetBaseAddress(v614);
      CVPixelBufferGetHeight(v614);
      CVPixelBufferGetWidth(v614);
      v637 = CVPixelBufferGetBytesPerRow(v614);
      v626 = CVPixelBufferGetBaseAddress(v612);
      CVPixelBufferGetHeight(v612);
      CVPixelBufferGetWidth(v612);
      v621 = CVPixelBufferGetBytesPerRow(v612);
      v639 = CVPixelBufferGetBaseAddress(v611);
      CVPixelBufferGetHeight(v611);
      CVPixelBufferGetWidth(v611);
      v633 = CVPixelBufferGetBytesPerRow(v611);
      v660 = CVPixelBufferGetBaseAddress(v175);
      v181 = CVPixelBufferGetHeight(v175);
      CVPixelBufferGetWidth(v175);
      v583 = CVPixelBufferGetBytesPerRow(v175);
      v585 = v177;
      v589 = v173;
      v591 = v172;
      v594 = v174;
      v596 = v175;
      v598 = v176;
      bzero(v660, v583 * v181);
      v582 = v648 * __nb;
      bzero(__srca, v648 * __nb);
      if (v607)
      {
        v182 = v607;
        v183 = &v609[v675 + 4];
        v184 = &__srca[v648 + 1];
        v185 = v180;
        v186 = v178;
        do
        {
          memcpy(v184, v185, v179);
          memcpy(v183, v186, 4 * v179);
          v183 += v675;
          v184 += v648;
          v186 += v656;
          v185 += v651;
          --v182;
        }

        while (v182);
      }

      memcpy(__dsta, __srca, v582);
      memcpy(v626, __srca, v582);
      memcpy(v639, __srca, v582);
      memcpy(v602, v609, v675 * v587);
      memcpy(v629, v609, v675 * v587);
      memcpy(v642, v609, v675 * v587);
      v187 = v678;
      if (v607 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        if (v179 + 1 >= 2)
        {
          v188 = 1;
          do
          {
            v189 = &__srca[v188 * v648];
            v190 = &v609[v188 * v675];
            v191 = &__srca[(v188 - 1) * v648];
            v192 = &v609[(v188 - 1) * v675];
            v193 = &__srca[(v188 + 1) * v648];
            v194 = 1;
            v195 = &v609[(v188 + 1) * v675];
            do
            {
              v197 = v189[v194];
              _ZF = v197 != 32 && (v197 & 0x10) == 0;
              if (_ZF)
              {
                v196 = v194 + 1;
              }

              else
              {
                v199 = v194 - 1;
                if (v191[v194 - 1] == 160)
                {
                  v200 = 1.0;
                }

                else
                {
                  v200 = 0.0;
                }

                if (v191[v194] == 160)
                {
                  v201 = 1.0;
                }

                else
                {
                  v201 = 0.0;
                }

                v202 = (*&v192[4 * v194] * v201) + (*&v192[4 * v194 - 4] * v200);
                v196 = v194 + 1;
                if (v191[v194 + 1] == 160)
                {
                  v203 = 1.0;
                }

                else
                {
                  v203 = 0.0;
                }

                v204 = v202 + (*&v192[4 * v194 + 4] * v203);
                if (v189[v199] == 160)
                {
                  v205 = 1.0;
                }

                else
                {
                  v205 = 0.0;
                }

                v206 = v204 + (*&v190[4 * v199] * v205);
                if (v189[v196] == 160)
                {
                  v207 = 1.0;
                }

                else
                {
                  v207 = 0.0;
                }

                v208 = v206 + (*&v190[4 * v196] * v207);
                if (v193[v199] == 160)
                {
                  v209 = 1.0;
                }

                else
                {
                  v209 = 0.0;
                }

                v210 = v208 + (*&v195[4 * v199] * v209);
                if (v193[v194] == 160)
                {
                  v211 = 1.0;
                }

                else
                {
                  v211 = 0.0;
                }

                v212 = v210 + (*&v195[4 * v194] * v211);
                if (v193[v196] == 160)
                {
                  v213 = 1.0;
                }

                else
                {
                  v213 = 0.0;
                }

                v214 = v212 + (*&v195[4 * v196] * v213);
                *&v190[4 * v194] = v214;
                v215 = v191[v199] == 160;
                if (v191[v194] == 160)
                {
                  ++v215;
                }

                if (v191[v196] == 160)
                {
                  ++v215;
                }

                if (v189[v199] == 160)
                {
                  ++v215;
                }

                if (v189[v196] == 160)
                {
                  ++v215;
                }

                if (v193[v199] == 160)
                {
                  v216 = v215 + 1;
                }

                else
                {
                  v216 = v215;
                }

                if (v193[v194] == 160)
                {
                  ++v216;
                }

                if (v193[v196] == 160)
                {
                  ++v216;
                }

                if (v216)
                {
                  *&v190[4 * v194] = v214 / v216;
                  v189[v194] = -96;
                  ++v660[v188 * v583 + v194];
                }
              }

              v194 = v196;
            }

            while (v196 != v179 + 1);
            _ZF = v188++ == v607;
          }

          while (!_ZF);
        }

        v221 = v596;
        v220 = v598;
        v222 = v174;
        v224 = v589;
        v223 = v591;
        if (v179)
        {
          v225 = &v660[v583];
          v226 = &v602[4 * v179];
          v227 = (v226 - 4);
          v228 = __dsta + 1;
          v229 = &__dsta[2 * v637 + 1];
          v230 = &__dsta[v637 + 1];
          v231 = &v226[v671];
          v232 = 1;
          v233 = &v226[2 * v671];
          do
          {
            v234 = 0;
            v235 = v232++;
            v236 = v231;
            v237 = v230;
            v238 = v233;
            v239 = v229;
            v240 = v228;
            v241 = v227;
            v242 = v225;
            do
            {
              v243 = &v237[v179];
              v244 = v237[v179 - 1];
              if (v244 == 32 || (v244 & 0x10) != 0)
              {
                v246 = &v240[v179];
                if (v240[v179 - 2] == 160)
                {
                  v247 = 1.0;
                }

                else
                {
                  v247 = 0.0;
                }

                if (*(v246 - 1) == 160)
                {
                  v248 = 1.0;
                }

                else
                {
                  v248 = 0.0;
                }

                v249 = (v241[1] * v248) + (*v241 * v247);
                if (*v246 == 160)
                {
                  v250 = 1.0;
                }

                else
                {
                  v250 = 0.0;
                }

                v251 = v249 + (v241[2] * v250);
                if (*(v243 - 2) == 160)
                {
                  v252 = 1.0;
                }

                else
                {
                  v252 = 0.0;
                }

                v253 = v251 + (*(v236 - 1) * v252);
                if (*v243 == 160)
                {
                  v254 = 1.0;
                }

                else
                {
                  v254 = 0.0;
                }

                v255 = v253 + (v236[1] * v254);
                v256 = (v239 + v179);
                if (*(v239 + v179 - 2) == 160)
                {
                  v257 = 1.0;
                }

                else
                {
                  v257 = 0.0;
                }

                v258 = v255 + (*(v238 - 1) * v257);
                if (*(v256 - 1) == 160)
                {
                  v259 = 1.0;
                }

                else
                {
                  v259 = 0.0;
                }

                v260 = v258 + (*v238 * v259);
                if (*v256 == 160)
                {
                  v261 = 1.0;
                }

                else
                {
                  v261 = 0.0;
                }

                v262 = v260 + (v238[1] * v261);
                *v236 = v262;
                v263 = *(v246 - 2) == 160;
                if (*(v246 - 1) == 160)
                {
                  ++v263;
                }

                if (*v246 == 160)
                {
                  v264 = v263 + 1;
                }

                else
                {
                  v264 = v263;
                }

                if (*(v243 - 2) == 160)
                {
                  ++v264;
                }

                if (*v243 == 160)
                {
                  ++v264;
                }

                if (*(v256 - 2) == 160)
                {
                  ++v264;
                }

                if (*(v256 - 1) == 160)
                {
                  ++v264;
                }

                if (*v256 == 160)
                {
                  ++v264;
                }

                if (v264)
                {
                  *v236 = v262 / v264;
                  *(v243 - 1) = -96;
                  ++v242[v179];
                }
              }

              --v242;
              ++v234;
              --v241;
              --v240;
              --v239;
              --v238;
              --v237;
              --v236;
            }

            while (v179 != v234);
            v225 += v583;
            v227 = (v227 + v671);
            v228 += v637;
            v229 += v637;
            v233 = (v233 + v671);
            v230 += v637;
            v231 = (v231 + v671);
          }

          while (v235 != v607);
          goto LABEL_326;
        }

LABEL_429:
        v327 = 0;
        v328 = &v609[v675 + 4];
        v329 = &v642[v667 + 4];
        v330 = &v629[v663 + 4];
        v331 = &v602[v671 + 4];
        v332 = &v660[v583 + 1];
        while (!v179)
        {
LABEL_430:
          ++v327;
          v178 += v656;
          v180 += v651;
          v328 += v675;
          v329 += v667;
          v330 += v663;
          v331 += v671;
          v332 += v583;
          if (v327 == v607)
          {
            goto LABEL_449;
          }
        }

        v333 = 0;
        while (2)
        {
          if (*(v332 + v333))
          {
            v334 = *(v331 + 4 * v333);
            v335 = *(v329 + 4 * v333);
            if (v335 >= *(v330 + 4 * v333))
            {
              v335 = *(v330 + 4 * v333);
            }

            if (v334 >= *(v328 + 4 * v333))
            {
              v334 = *(v328 + 4 * v333);
            }

            if (v335 < v334)
            {
              v334 = v335;
            }

LABEL_448:
            *&v178[4 * v333] = v334;
            v180[v333] = -96;
          }

          else
          {
            v336 = v180[v333];
            if (v336 == 32 || (v336 & 0x10) != 0)
            {
              v334 = *(v678 + 33);
              goto LABEL_448;
            }

            *&v178[4 * v333] = *(v328 + 4 * v333);
          }

          if (v179 == ++v333)
          {
            goto LABEL_430;
          }

          continue;
        }
      }

LABEL_326:
      v221 = v596;
      v220 = v598;
      v222 = v594;
      v224 = v589;
      v223 = v591;
      if (v607)
      {
        if (v179 + 1 >= 2)
        {
          v265 = v607;
          do
          {
            v266 = &v660[v265 * v583];
            v267 = v626 + v265 * v621;
            v268 = &v629[v265 * v663];
            v269 = v265-- + 1;
            v270 = v626 + v265 * v621;
            v271 = &v629[v265 * v663];
            v272 = v626 + v269 * v621;
            v273 = 1;
            v274 = &v629[v269 * v663];
            do
            {
              v276 = v267[v273];
              if (v276 != 32 && (v276 & 0x10) == 0)
              {
                v275 = v273 + 1;
              }

              else
              {
                v278 = v273 - 1;
                if (v270[v273 - 1] == 160)
                {
                  v279 = 1.0;
                }

                else
                {
                  v279 = 0.0;
                }

                if (v270[v273] == 160)
                {
                  v280 = 1.0;
                }

                else
                {
                  v280 = 0.0;
                }

                v281 = (*&v271[4 * v273] * v280) + (*&v271[4 * v273 - 4] * v279);
                v275 = v273 + 1;
                if (v270[v273 + 1] == 160)
                {
                  v282 = 1.0;
                }

                else
                {
                  v282 = 0.0;
                }

                v283 = v281 + (*&v271[4 * v273 + 4] * v282);
                if (v267[v278] == 160)
                {
                  v284 = 1.0;
                }

                else
                {
                  v284 = 0.0;
                }

                v285 = v283 + (*&v268[4 * v278] * v284);
                if (v267[v275] == 160)
                {
                  v286 = 1.0;
                }

                else
                {
                  v286 = 0.0;
                }

                v287 = v285 + (*&v268[4 * v275] * v286);
                if (v272[v278] == 160)
                {
                  v288 = 1.0;
                }

                else
                {
                  v288 = 0.0;
                }

                v289 = v287 + (*&v274[4 * v278] * v288);
                if (v272[v273] == 160)
                {
                  v290 = 1.0;
                }

                else
                {
                  v290 = 0.0;
                }

                v291 = v289 + (*&v274[4 * v273] * v290);
                if (v272[v275] == 160)
                {
                  v292 = 1.0;
                }

                else
                {
                  v292 = 0.0;
                }

                v293 = v291 + (*&v274[4 * v275] * v292);
                *&v268[4 * v273] = v293;
                v294 = v270[v278] == 160;
                if (v270[v273] == 160)
                {
                  ++v294;
                }

                if (v270[v275] == 160)
                {
                  ++v294;
                }

                if (v267[v278] == 160)
                {
                  ++v294;
                }

                if (v267[v275] == 160)
                {
                  ++v294;
                }

                if (v272[v278] == 160)
                {
                  v295 = v294 + 1;
                }

                else
                {
                  v295 = v294;
                }

                if (v272[v273] == 160)
                {
                  ++v295;
                }

                if (v272[v275] == 160)
                {
                  ++v295;
                }

                if (v295)
                {
                  *&v268[4 * v273] = v293 / v295;
                  v267[v273] = -96;
                  ++v266[v273];
                }
              }

              v273 = v275;
            }

            while (v275 != v179 + 1);
          }

          while (v265);
        }

        if (v179)
        {
          v296 = v607;
          do
          {
            v297 = &v660[v296 * v583];
            v298 = &v639[v296 * v633];
            v299 = &v642[v296 * v667];
            v300 = v296-- + 1;
            v301 = &v639[v296 * v633];
            v302 = &v642[v296 * v667];
            v303 = &v639[v300 * v633];
            v304 = v179;
            v305 = &v642[v300 * v667];
            do
            {
              v307 = v298[v304];
              if (v307 != 32 && (v307 & 0x10) == 0)
              {
                v306 = v304 - 1;
              }

              else
              {
                *&v299[4 * v304] = 0;
                v306 = v304 - 1;
                if (v301[v304 - 1] == 160)
                {
                  v309 = 1.0;
                }

                else
                {
                  v309 = 0.0;
                }

                if (v301[v304] == 160)
                {
                  v310 = 1.0;
                }

                else
                {
                  v310 = 0.0;
                }

                v311 = (*&v302[4 * v304] * v310) + (*&v302[4 * v304 - 4] * v309);
                v312 = v304 + 1;
                if (v301[v304 + 1] == 160)
                {
                  v313 = 1.0;
                }

                else
                {
                  v313 = 0.0;
                }

                v314 = v311 + (*&v302[4 * v304 + 4] * v313);
                if (v298[v306] == 160)
                {
                  v315 = 1.0;
                }

                else
                {
                  v315 = 0.0;
                }

                v316 = v314 + (*&v299[4 * v306] * v315);
                if (v298[v312] == 160)
                {
                  v317 = 1.0;
                }

                else
                {
                  v317 = 0.0;
                }

                v318 = v316 + (*&v299[4 * v312] * v317);
                if (v303[v306] == 160)
                {
                  v319 = 1.0;
                }

                else
                {
                  v319 = 0.0;
                }

                v320 = v318 + (*&v305[4 * v306] * v319);
                if (v303[v304] == 160)
                {
                  v321 = 1.0;
                }

                else
                {
                  v321 = 0.0;
                }

                v322 = v320 + (*&v305[4 * v304] * v321);
                if (v303[v312] == 160)
                {
                  v323 = 1.0;
                }

                else
                {
                  v323 = 0.0;
                }

                v324 = v322 + (*&v305[4 * v312] * v323);
                *&v299[4 * v304] = v324;
                v325 = v301[v306] == 160;
                if (v301[v304] == 160)
                {
                  ++v325;
                }

                if (v301[v312] == 160)
                {
                  ++v325;
                }

                if (v298[v306] == 160)
                {
                  ++v325;
                }

                if (v298[v312] == 160)
                {
                  ++v325;
                }

                if (v303[v306] == 160)
                {
                  ++v325;
                }

                if (v303[v304] == 160)
                {
                  ++v325;
                }

                if (v303[v312] == 160)
                {
                  v326 = v325 + 1;
                }

                else
                {
                  v326 = v325;
                }

                if (v326)
                {
                  *&v299[4 * v304] = v324 / v326;
                  v298[v304] = -96;
                  ++v297[v304];
                }
              }

              v304 = v306;
            }

            while (v306);
          }

          while (v296);
        }

        goto LABEL_429;
      }

LABEL_449:
      CVPixelBufferUnlockBaseAddress(v585, 0);
      CVPixelBufferUnlockBaseAddress(v616, 0);
      CVPixelBufferUnlockBaseAddress(v614, 0);
      CVPixelBufferUnlockBaseAddress(v612, 0);
      CVPixelBufferUnlockBaseAddress(v611, 0);
      CVPixelBufferUnlockBaseAddress(v618, 0);
      CVPixelBufferUnlockBaseAddress(v224, 0);
      CVPixelBufferUnlockBaseAddress(v223, 0);
      CVPixelBufferUnlockBaseAddress(v222, 0);
      CVPixelBufferUnlockBaseAddress(v221, 0);
      CVPixelBufferUnlockBaseAddress(v220, 0);
      v338 = *(v678 + 24);
      v339 = *(v678 + 17);
      CVPixelBufferLockBaseAddress(v338, 0);
      CVPixelBufferLockBaseAddress(v339, 0);
      v340 = CVPixelBufferGetBaseAddress(v339);
      v341 = CVPixelBufferGetHeight(v339);
      v342 = CVPixelBufferGetWidth(v339);
      v343 = CVPixelBufferGetBytesPerRow(v339);
      v344 = CVPixelBufferGetBaseAddress(v338);
      CVPixelBufferGetHeight(v338);
      CVPixelBufferGetWidth(v338);
      v345 = CVPixelBufferGetBytesPerRow(v338);
      if (v341 >= 1 && v342 >= 1)
      {
        v347 = 0;
        v348 = *(v678 + 27);
        v349 = *(v678 + 24) + ((*(v678 + 21) - *(v678 + 24)) * v348);
        v350 = *(v678 + 25) + ((*(v678 + 22) - *(v678 + 25)) * v348);
        v351 = *(v678 + 26) + ((*(v678 + 23) - *(v678 + 26)) * v348);
        v352 = vcvts_n_f32_s32(*v678 - 1, 1uLL);
        v353 = vcvts_n_f32_s32(v678[1] - 1, 1uLL);
        v354 = sqrtf((v353 * v353) + (v352 * v352));
        v355 = v678[3];
        v356 = -v353;
        v357 = v678[2];
        v358 = -v352;
        v359 = v341 & 0x7FFFFFFF;
        v360 = v342 & 0x7FFFFFFF;
        v346.i32[0] = 2139095039;
        v361 = v344;
        v362 = v355;
        do
        {
          v363 = 0;
          v364 = v362;
          v362 += v678[7];
          if (v347 >= v341 - 1)
          {
            v362 = v678[9] + v355;
          }

          v365 = v356 + ((v364 + v362 - 1) * 0.5);
          v366 = v365 * v365;
          v367 = v357;
          do
          {
            v368 = v367 + v678[6];
            if (v363 >= v342 - 1)
            {
              v368 = v678[8] + v357;
            }

            v369 = sqrtf(v366 + ((v358 + ((v367 + v368 - 1) * 0.5)) * (v358 + ((v367 + v368 - 1) * 0.5)))) / v354;
            v370 = (v349 + (v350 * v369)) + (v351 * (v369 * v369));
            if (v370 < *v346.i32)
            {
              *v346.i32 = v370;
            }

            v361[v363++] = v370;
            v367 = v368;
          }

          while (v360 != v363);
          ++v347;
          v361 = (v361 + v345);
        }

        while (v347 != v359);
        if (v360 > 7)
        {
          v376 = v344 >= (&v340[v360] + v343 * (v359 - 1)) || v340 >= (&v344[v360] + v345 * (v359 - 1));
          if (!v376 || ((v343 | v345) & 0x8000000000000000) != 0)
          {
            v394 = 0;
            do
            {
              v395 = v340;
              v396 = v344;
              v397 = v342 & 0x7FFFFFFF;
              do
              {
                v398 = *v396++;
                *v395 = (*v346.i32 + *v395) - v398;
                ++v395;
                --v397;
              }

              while (v397);
              ++v394;
              v344 = (v344 + v345);
              v340 = (v340 + v343);
            }

            while (v394 != v359);
          }

          else
          {
            v377 = vdupq_lane_s32(v346, 0);
            v378 = v360 - (v342 & 7);
            if ((v342 & 7) != 0)
            {
              v379 = 0;
              v380 = v378 + 1;
              v381 = v378 + 2;
              v382 = v378 + 3;
              v383 = v378 + 4;
              v384 = v378 + 5;
              v385 = v378 + 6;
              v386 = (v344 + 4);
              v387 = (v340 + 4);
              do
              {
                v388 = v344 + v345 * v379;
                v389 = v387;
                v390 = v386;
                v391 = v360 - (v342 & 7);
                v392 = v340 + v343 * v379;
                do
                {
                  v393 = vsubq_f32(vaddq_f32(v377, *v389), *v390);
                  v389[-1] = vsubq_f32(vaddq_f32(v377, v389[-1]), v390[-1]);
                  *v389 = v393;
                  v390 += 2;
                  v389 += 2;
                  v391 -= 8;
                }

                while (v391);
                *&v392[4 * v378] = (*v346.i32 + *&v392[4 * v378]) - *&v388[4 * v378];
                if (v380 != v360)
                {
                  *&v392[4 * v380] = (*v346.i32 + *&v392[4 * v380]) - *&v388[4 * v380];
                  if (v381 != v360)
                  {
                    *&v392[4 * v381] = (*v346.i32 + *&v392[4 * v381]) - *&v388[4 * v381];
                    if (v382 != v360)
                    {
                      *&v392[4 * v382] = (*v346.i32 + *&v392[4 * v382]) - *&v388[4 * v382];
                      if (v383 != v360)
                      {
                        *&v392[4 * v383] = (*v346.i32 + *&v392[4 * v383]) - *&v388[4 * v383];
                        if (v384 != v360)
                        {
                          *&v392[4 * v384] = (*v346.i32 + *&v392[4 * v384]) - *&v388[4 * v384];
                          if (v385 != v360)
                          {
                            *&v392[4 * v385] = (*v346.i32 + *&v392[4 * v385]) - *&v388[4 * v385];
                          }
                        }
                      }
                    }
                  }
                }

                ++v379;
                v386 = (v386 + v345);
                v387 = (v387 + v343);
              }

              while (v379 != v359);
            }

            else
            {
              v399 = 0;
              v400 = (v344 + 4);
              v401 = (v340 + 4);
              do
              {
                v402 = v401;
                v403 = v400;
                v404 = v378;
                do
                {
                  v405 = vsubq_f32(vaddq_f32(v377, *v402), *v403);
                  v402[-1] = vsubq_f32(vaddq_f32(v377, v402[-1]), v403[-1]);
                  *v402 = v405;
                  v403 += 2;
                  v402 += 2;
                  v404 -= 8;
                }

                while (v404);
                ++v399;
                v400 = (v400 + v345);
                v401 = (v401 + v343);
              }

              while (v399 != v359);
            }
          }
        }

        else
        {
          v371 = 0;
          do
          {
            v372 = v340;
            v373 = v344;
            v374 = v342 & 0x7FFFFFFF;
            do
            {
              v375 = *v373++;
              *v372 = (*v346.i32 + *v372) - v375;
              ++v372;
              --v374;
            }

            while (v374);
            ++v371;
            v344 = (v344 + v345);
            v340 = (v340 + v343);
          }

          while (v371 != v359);
        }
      }

      CVPixelBufferUnlockBaseAddress(v338, 0);
      CVPixelBufferUnlockBaseAddress(v339, 0);
      v406 = *(v678 + 17);
      CVPixelBufferLockBaseAddress(v406, 0);
      v407 = CVPixelBufferGetBaseAddress(v406);
      v408 = CVPixelBufferGetHeight(v406);
      v409 = CVPixelBufferGetWidth(v406);
      v410 = CVPixelBufferGetBytesPerRow(v406);
      v411 = *(v678 + 17);
      v412 = *(v678 + 18);
      v413 = v411 + ((v412 - v411) * ((a10 - *(v678 + 19)) / (*(v678 + 20) - *(v678 + 19))));
      if (v412 >= v411)
      {
        v414 = *(v678 + 17);
      }

      else
      {
        v414 = *(v678 + 18);
      }

      if (v411 < v412)
      {
        v411 = *(v678 + 18);
      }

      if (v413 < v411)
      {
        v411 = v413;
      }

      if (v413 < v414)
      {
        v411 = v414;
      }

      if (v408 && v409)
      {
        if (v409 > 3)
        {
          v416 = v407->u64 + 4 * v409 + v410 * (v408 - 1);
          v418 = v407 < v605 && (v678 + 60) < v416;
          v420 = v407 < v623 && (v678 + 14) < v416;
          v421 = (v678 + 30) >= v416 || v407 >= (v678 + 34);
          if (!v421 || v418 || v420 || (v410 & 0x8000000000000000) != 0)
          {
            for (j = 0; j != v408; ++j)
            {
              v432 = v407;
              v433 = v409;
              do
              {
                *v432 = fmaxf(v411 * (*(v678 + 16) + (((*v432 - *(v678 + 30)) * *(v678 + 8)) / ((*(v678 + 15) * ((*(v678 + 7) / *(v678 + 9)) * 0.5)) * (*(v678 + 7) * *(v678 + 10))))), 0.0);
                ++v432;
                --v433;
              }

              while (v433);
              v407 = (v407 + v410);
            }
          }

          else if (v409 == (v409 & 0xFFFFFFFFFFFFFFFCLL))
          {
            v422 = 0;
            v423 = vdupq_lane_s32(*(v678 + 60), 0);
            v424 = *(v678 + 14);
            v425.i64[0] = 0x3F0000003F000000;
            v425.i64[1] = 0x3F0000003F000000;
            LODWORD(v426) = vshrq_n_u64(v424, 0x20uLL).u32[0];
            v427 = vdupq_lane_s32(*&vmulq_f32(vmulq_f32(*(v678 + 30), vmulq_f32(vdivq_f32(v424, vdupq_laneq_s32(v424, 2)), v425)), vmulq_laneq_f32(v424, v424, 3)), 0);
            v428 = vdupq_lane_s32(*(v678 + 32), 0);
            do
            {
              v429 = v407;
              v430 = v409;
              do
              {
                *v429 = vmaxnmq_f32(vmulq_n_f32(vaddq_f32(v428, vdivq_f32(vmulq_n_f32(vsubq_f32(*v429, v423), v426), v427)), v411), 0);
                ++v429;
                v430 -= 4;
              }

              while (v430);
              ++v422;
              v407 = (v407 + v410);
            }

            while (v422 != v408);
          }

          else
          {
            v434 = 0;
            v435.i64[0] = 0x3F0000003F000000;
            v435.i64[1] = 0x3F0000003F000000;
            do
            {
              v436 = vdupq_lane_s32(*(v678 + 60), 0);
              v437 = *(v678 + 14);
              v438 = vdupq_lane_s32(*&vmulq_f32(vmulq_f32(*(v678 + 30), vmulq_f32(vdivq_f32(v437, vdupq_laneq_s32(v437, 2)), v435)), vmulq_laneq_f32(v437, v437, 3)), 0);
              LODWORD(v439) = vshrq_n_u64(v437, 0x20uLL).u32[0];
              v440 = vdupq_lane_s32(*(v678 + 32), 0);
              v441 = v407;
              v442 = v409 & 0xFFFFFFFFFFFFFFFCLL;
              do
              {
                *v441 = vmaxnmq_f32(vmulq_n_f32(vaddq_f32(v440, vdivq_f32(vmulq_n_f32(vsubq_f32(*v441, v436), v439), v438)), v411), 0);
                ++v441;
                v442 -= 4;
              }

              while (v442);
              v443 = v409 & 0xFFFFFFFFFFFFFFFCLL;
              do
              {
                v407->f32[v443] = fmaxf(v411 * (*(v678 + 16) + (((v407->f32[v443] - *(v678 + 30)) * *(v678 + 8)) / ((*(v678 + 15) * ((*(v678 + 7) / *(v678 + 9)) * 0.5)) * (*(v678 + 7) * *(v678 + 10))))), 0.0);
                ++v443;
              }

              while (v409 != v443);
              ++v434;
              v407 = (v407 + v410);
            }

            while (v434 != v408);
          }
        }

        else
        {
          v415 = &v407->f32[2];
          do
          {
            *(v415 - 2) = fmaxf(v411 * (*(v678 + 16) + (((*(v415 - 2) - *(v678 + 30)) * *(v678 + 8)) / ((*(v678 + 15) * ((*(v678 + 7) / *(v678 + 9)) * 0.5)) * (*(v678 + 7) * *(v678 + 10))))), 0.0);
            if (v409 != 1)
            {
              *(v415 - 1) = fmaxf(v411 * (*(v678 + 16) + (((*(v415 - 1) - *(v678 + 30)) * *(v678 + 8)) / ((*(v678 + 15) * ((*(v678 + 7) / *(v678 + 9)) * 0.5)) * (*(v678 + 7) * *(v678 + 10))))), 0.0);
              if (v409 != 2)
              {
                *v415 = fmaxf(v411 * (*(v678 + 16) + (((*v415 - *(v678 + 30)) * *(v678 + 8)) / ((*(v678 + 15) * ((*(v678 + 7) / *(v678 + 9)) * 0.5)) * (*(v678 + 7) * *(v678 + 10))))), 0.0);
              }
            }

            v415 = (v415 + v410);
            --v408;
          }

          while (v408);
        }
      }

      CVPixelBufferUnlockBaseAddress(v406, 0);
      v624 = *(v678 + 29);
      v627 = *(v678 + 28);
      v622 = *(v678 + 17);
      CVPixelBufferLockBaseAddress(v622, 1uLL);
      CVPixelBufferLockBaseAddress(a16, 0);
      CVPixelBufferLockBaseAddress(v627, 0);
      CVPixelBufferLockBaseAddress(v624, 0);
      v444 = CVPixelBufferGetBaseAddress(v622);
      v630 = CVPixelBufferGetHeight(v622);
      v619 = CVPixelBufferGetWidth(v622);
      v445 = CVPixelBufferGetBytesPerRow(v622);
      v446 = CVPixelBufferGetBaseAddress(a16);
      v447 = CVPixelBufferGetHeight(a16);
      v448 = CVPixelBufferGetWidth(a16);
      v672 = CVPixelBufferGetBytesPerRow(a16);
      v676 = CVPixelBufferGetBaseAddress(v627);
      v449 = CVPixelBufferGetHeight(v627);
      v617 = CVPixelBufferGetWidth(v627);
      v450 = CVPixelBufferGetBytesPerRow(v627);
      v451 = CVPixelBufferGetBaseAddress(v624);
      CVPixelBufferGetHeight(v624);
      CVPixelBufferGetWidth(v624);
      v452 = CVPixelBufferGetBytesPerRow(v624);
      v652 = v447;
      v634 = v449;
      memcpy(v451, v676, v450 * v449);
      LODWORD(v460) = v678[24];
      v668 = v451;
      if (v678[24])
      {
        v461 = v451;
        v462 = 0;
        v463 = v678[23];
        do
        {
          if (v463 >= 2)
          {
            v464 = 0;
            do
            {
              if (v461[v464] != v461[v464 + 1])
              {
                v465 = *(v678 + 50);
                v466 = (v464 - v465 + 1) & ~((v464 - v465 + 1) >> 31);
                v467 = v464 + v465;
                v468 = v467 + 1 < v463 ? v467 + 1 : v463;
                if (v466 < v468)
                {
                  bzero(&v676[v450 * v462 + v466], v468 + ~v466 + 1);
                  v463 = v678[23];
                }
              }

              ++v464;
            }

            while (v464 < (v463 - 1));
            v187 = v678;
            LODWORD(v460) = v678[24];
          }

          ++v462;
          v461 += v452;
        }

        while (v462 < v460);
      }

      else
      {
        v463 = v678[23];
      }

      if (v463)
      {
        if (v450 == 1)
        {
          v469 = 0;
          v453 = 0uLL;
          v470 = v676;
          while (v460 < 2)
          {
LABEL_570:
            ++v469;
            ++v470;
            if (v469 >= v463)
            {
              goto LABEL_612;
            }
          }

          v471 = 0;
          v472 = 1;
          v473 = 1;
          while (2)
          {
            v474 = v452 * v471++;
            if (v668[v469 + v474] != v668[v469 + v452 * v471])
            {
              v475 = *(v187 + 50);
              LODWORD(v476) = v471 + v475;
              v476 = v471 + v475 >= v460 ? v460 : v476;
              if (((v471 - v475) & ~((v471 - v475) >> 31)) < v476)
              {
                v477 = (v473 - v475) & ~((v473 - v475) >> 31);
                v478 = v476 - v477;
                if (v476 - v477 <= 7)
                {
                  do
                  {
LABEL_596:
                    v470[v477++] = 0;
                  }

                  while (v477 < v476);
                }

                else
                {
                  if (v478 < 0x20)
                  {
                    v479 = 0;
                    goto LABEL_589;
                  }

                  v479 = v478 & 0xFFFFFFFFFFFFFFE0;
                  v480 = v472 + v475;
                  if (v472 + v475 >= v460)
                  {
                    v480 = v460;
                  }

                  v481 = (v480 - v477) & 0xFFFFFFFFFFFFFFE0;
                  v482 = &v470[v477];
                  do
                  {
                    *v482 = 0uLL;
                    *(v482 + 1) = 0uLL;
                    v482 += 32;
                    v481 -= 32;
                  }

                  while (v481);
                  if (v478 != v479)
                  {
                    if ((v478 & 0x18) == 0)
                    {
                      v477 += v479;
                      goto LABEL_596;
                    }

LABEL_589:
                    v483 = v478 & 0xFFFFFFFFFFFFFFF8;
                    v484 = v472 + v475;
                    v460 = v460;
                    if (v484 < v460)
                    {
                      v460 = v484;
                    }

                    v485 = v479 - ((v460 - v477) & 0xFFFFFFFFFFFFFFF8);
                    v486 = v479 + v477;
                    do
                    {
                      *&v470[v486] = 0;
                      v486 += 8;
                      v485 += 8;
                    }

                    while (v485);
                    if (v478 != v483)
                    {
                      v477 += v483;
                      goto LABEL_596;
                    }
                  }
                }

                LODWORD(v460) = v187[24];
              }
            }

            ++v473;
            ++v472;
            if (v471 >= v460 - 1)
            {
              v463 = v187[23];
              goto LABEL_570;
            }

            continue;
          }
        }

        v487 = 0;
        v488 = v676;
        do
        {
          if (v460 >= 2)
          {
            v489 = 0;
            v490 = 1;
            do
            {
              v491 = v452 * v489++;
              if (v668[v487 + v491] != v668[v487 + v452 * v489])
              {
                v492 = *(v187 + 50);
                LODWORD(v493) = v489 + v492;
                v493 = v489 + v492 >= v460 ? v460 : v493;
                if (((v489 - v492) & ~((v489 - v492) >> 31)) < v493)
                {
                  v494 = (v490 - v492) & ~((v490 - v492) >> 31);
                  v495 = &v488[v450 * v494];
                  do
                  {
                    *v495 = 0;
                    ++v494;
                    v495 += v450;
                  }

                  while (v494 < v493);
                  LODWORD(v460) = v187[24];
                }
              }

              ++v490;
            }

            while (v489 < v460 - 1);
            v463 = v187[23];
          }

          ++v487;
          ++v488;
        }

        while (v487 < v463);
      }

LABEL_612:
      if (v652 >= 1)
      {
        v496 = 0;
        v497 = v187[5];
        v498 = 0.5;
        v499 = v652;
        LOWORD(v454) = v187[11];
        v500 = v454;
        v501 = -0.5;
        v502 = (((v497 + 0.5) * v652) / v500) + -0.5;
        v669 = (((((v187[9] + v497) + 0.5) * v652) / v500) + -0.5) - v502;
        v503 = v187[4];
        LOWORD(v455) = v187[10];
        v504 = v455;
        *&v453 = ((((v187[8] + v503) + 0.5) * v448) / v504) + -0.5;
        v664 = v634;
        v505 = (((v503 + 0.5) * v448) / v504) + -0.5;
        v661 = v630;
        v657 = (v630 - 1);
        *v456.i32 = v617 / v448;
        *v457.i32 = *v456.i32 * 0.5;
        *v458.i32 = v619 / (*&v453 - v505);
        *v459.i32 = ((0.5 - v505) * *v458.i32) + -0.5;
        v506 = vdupq_lane_s32(v456, 0);
        v507 = vdupq_lane_s32(v457, 0);
        v508 = vdupq_n_s32((v617 + -1.0));
        v509 = vdupq_lane_s32(v458, 0);
        v510 = vdupq_lane_s32(v459, 0);
        v511 = v634 - 1;
        *&v453 = v619 + -1.0;
        v512 = vdupq_lane_s32(*&v453, 0);
        v635 = v448 / 4;
        v513 = v630 - 1;
        __asm { FMOV            V28.4S, #1.0 }

        v517 = vcvtq_u32_f32(_Q28);
        v518 = vcvtq_u32_f32(v512);
        v519 = v619 - 1;
        v520 = (v652 & 0x7FFFFFFF);
        v521 = v448;
        v522 = (v630 - 1);
        v523 = 0uLL;
        v524.i64[0] = 0x4000000040;
        v524.i64[1] = 0x4000000040;
        v525.i64[0] = 0x2000000020;
        v525.i64[1] = 0x2000000020;
        v526.i64[0] = 0x4500000045000000;
        v526.i64[1] = 0x4500000045000000;
        __na = v445;
        v649 = v444;
        v643 = v448;
        v640 = v652;
        v638 = v502;
        v631 = v520;
        do
        {
          v527 = (((v496 + v498) * v664) / v499) & ~((((v496 + v498) * v664) / v499) >> 31);
          if (v527 >= v511)
          {
            v527 = v511;
          }

          v528 = &v676[v450 * v527];
          v529 = fmaxf(((((v496 - v502) + v498) * v661) / v669) + v501, 0.0);
          if (v529 >= v657)
          {
            v530 = v657;
          }

          else
          {
            v530 = v529;
          }

          v531 = v530;
          v532 = &v444[v445 * v531];
          if ((v531 + 1) >= v522)
          {
            v533 = v522;
          }

          else
          {
            v533 = (v531 + 1);
          }

          if (v448 < 4)
          {
            v534 = 0;
            if (v448 > 0)
            {
              goto LABEL_629;
            }
          }

          else
          {
            LODWORD(v534) = 0;
            v535 = (v187 + 32);
            v536 = vld1q_dup_f32(v535);
            v537 = &v444[v445 * v533];
            v538 = (v531 + 1.0) - v530;
            v653 = v530;
            v539 = v530 - v531;
            v540 = v635;
            v541 = v446;
            do
            {
              v542.f32[0] = v534;
              v542.f32[1] = (v534 + 1);
              *&v542.u32[2] = vcvt_f32_u32(vorr_s8(vdup_n_s32(v534), 0x300000002));
              v543 = vminq_f32(v512, vmaxq_f32(vmlaq_f32(v510, v509, v542), v523));
              v544 = vcvtq_u32_f32(v543);
              v545 = vminq_u32(v518, vaddq_s32(v517, v544));
              v546 = vcvtq_f32_u32(v544);
              v547 = v544.i32[0];
              v548 = v545.u32[3];
              v549 = v545.i32[0];
              v550 = 4 * v544.u32[1];
              v551 = 4 * v545.u32[1];
              v552 = 4 * v544.u32[2];
              v553 = 4 * v545.u32[2];
              v554 = 4 * v544.u32[3];
              v545.i32[0] = *&v532[4 * v544.u32[0]];
              v545.i32[1] = *&v532[v550];
              v545.i32[2] = *&v532[v552];
              v544.i32[0] = *&v532[4 * v549];
              v555.i32[0] = *&v537[4 * v547];
              v545.i32[3] = *&v532[v554];
              v556 = 4 * v548;
              v555.i32[1] = *&v537[v550];
              v555.i32[2] = *&v537[v552];
              v555.i32[3] = *&v537[v554];
              v544.i32[1] = *&v532[v551];
              v557.i32[0] = *&v537[4 * v549];
              v558 = vsubq_f32(v543, v546);
              v559 = vsubq_f32(_Q28, v558);
              v557.i32[1] = *&v537[v551];
              v544.i32[2] = *&v532[v553];
              v560 = vminq_u32(v508, vcvtq_u32_f32(vmlaq_f32(v507, v506, v542)));
              v557.i32[2] = *&v537[v553];
              v544.i32[3] = *&v532[v556];
              v557.i32[3] = *&v537[v556];
              v560.i32[0] = v528[v560.u32[0]];
              v560.i32[1] = v528[v560.u32[1]];
              v561 = vmlaq_f32(vmlaq_f32(vmulq_f32(vmulq_n_f32(v559, v538), v545), v544, vmulq_n_f32(v558, v538)), v555, vmulq_n_f32(v559, v539));
              v523 = 0uLL;
              v560.i32[2] = v528[v560.u32[2]];
              v560.i32[3] = v528[v560.u32[3]];
              *v541++ = vaddq_f32(vaddq_f32(vandq_s8(vmlaq_f32(v561, v557, vmulq_n_f32(v558, v539)), vceqq_s32(v560, v525)), vandq_s8(v536, vceqq_s32(v560, v524))), vandq_s8(vceqzq_s32(v560), v526));
              LODWORD(v534) = v534 + 4;
              --v540;
            }

            while (v540);
            v534 = v534;
            v187 = v678;
            v445 = __na;
            v444 = v649;
            v448 = v643;
            v498 = 0.5;
            v499 = v640;
            v501 = -0.5;
            v502 = v638;
            v520 = v631;
            v530 = v653;
            if (v534 < v643)
            {
LABEL_629:
              v562 = (v531 + 1);
              v563 = &v444[v445 * v562];
              v564 = v562 - v530;
              v565 = v530 - v531;
              do
              {
                if (((*v457.i32 + (v534 * *v456.i32)) & ~((*v457.i32 + (v534 * *v456.i32)) >> 31)) >= v617 - 1)
                {
                  v573 = v617 - 1;
                }

                else
                {
                  v573 = (*v457.i32 + (v534 * *v456.i32)) & ~((*v457.i32 + (v534 * *v456.i32)) >> 31);
                }

                v574 = fmaxf(*v459.i32 + (v534 * *v458.i32), 0.0);
                if (v574 >= (v619 - 1))
                {
                  v574 = (v619 - 1);
                }

                v575 = v574;
                if (v513 == v531)
                {
                  if (v519 == v575)
                  {
                    v567 = *&v532[4 * v575];
                  }

                  else
                  {
                    v567 = ((v574 - v575) * *&v532[4 * v575 + 4]) + (((v575 + 1) - v574) * *&v532[4 * v575]);
                  }
                }

                else if (v519 == v575)
                {
                  v567 = (v565 * *&v563[4 * v575]) + (v564 * *&v532[4 * v575]);
                }

                else
                {
                  v566 = v575 + 1;
                  v523 = 0uLL;
                  v567 = ((((v564 * (v574 - v575)) * *&v532[4 * v566]) + ((v564 * (v566 - v574)) * *&v532[4 * v575])) + ((v565 * (v566 - v574)) * *&v563[4 * v575])) + ((v565 * (v574 - v575)) * *&v563[4 * v566]);
                }

                v568 = v528[v573];
                if (v568 == 64)
                {
                  v569 = 1.0;
                }

                else
                {
                  v569 = 0.0;
                }

                if (v568 == 32)
                {
                  v570 = 1.0;
                }

                else
                {
                  v570 = 0.0;
                }

                v571 = (v567 * v570) + (v569 * *(v187 + 16));
                if (v528[v573])
                {
                  v572 = 0.0;
                }

                else
                {
                  v572 = 1.0;
                }

                v446->f32[v534++] = v571 + (v572 * 2048.0);
              }

              while (v521 != v534);
            }
          }

          ++v496;
          v446 = (v446 + v672);
        }

        while (v496 != v520);
      }

      CVPixelBufferUnlockBaseAddress(v622, 1uLL);
      CVPixelBufferUnlockBaseAddress(a16, 0);
      CVPixelBufferUnlockBaseAddress(v627, 0);
      CVPixelBufferUnlockBaseAddress(v624, 0);
      v43 = *(v187 + 16);
    }

    else
    {
      if ((atomic_load_explicit(&qword_1ECDE15D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE15D8))
      {
        v578 = +[CVAPreferenceManager defaults];
        v579 = [v578 BOOLForKey:@"singleCamSDoFPreviewLog"];

        byte_1ECDE15D0 = v579;
        __cxa_guard_release(&qword_1ECDE15D8);
      }

      if (byte_1ECDE15D0 == 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/module/sdof/src/FocusStatsPostprocessing.mm";
        *&buf[12] = 2080;
        *&buf[14] = "process";
        v685 = 1024;
        *v686 = 345;
        _os_log_impl(&dword_1DED23000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "SingleCamSDoFPreviewLog: %s::%s line %d: Neither foreground nor background detected. Set uniform disparity.\n", buf, 0x1Cu);
      }

      CVPixelBufferLockBaseAddress(a16, 0);
      v217 = CVPixelBufferGetBaseAddress(a16);
      v218 = CVPixelBufferGetHeight(a16);
      CVPixelBufferGetWidth(a16);
      v219 = CVPixelBufferGetBytesPerRow(a16);
      bzero(v217, v219 * v218);
      v43 = 0;
      CVPixelBufferUnlockBaseAddress(a16, 0);
    }
  }

  else
  {
    if ((atomic_load_explicit(&qword_1ECDE15C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE15C8))
    {
      v576 = +[CVAPreferenceManager defaults];
      v577 = [v576 BOOLForKey:@"singleCamSDoFPreviewLog"];

      byte_1ECDE15C0 = v577;
      __cxa_guard_release(&qword_1ECDE15C8);
      v26 = v678;
    }

    if (byte_1ECDE15C0 == 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v38 = *(v26 + 24);
      v39 = *(v26 + 26);
      *buf = 136316674;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/module/sdof/src/FocusStatsPostprocessing.mm";
      *&buf[12] = 2080;
      *&buf[14] = "process";
      v685 = 1024;
      *v686 = 206;
      *&v686[4] = 1024;
      *&v686[6] = v27;
      v687 = 1024;
      v688 = v28;
      v689 = 1024;
      v690 = v38;
      v691 = 1024;
      v692 = v39;
      _os_log_impl(&dword_1DED23000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "SingleCamSDoFPreviewLog: %s::%s line %d: numTiles = %dx%d from per-frame parameters don't match per-device parameters %dx%d\n", buf, 0x34u);
    }

    CVPixelBufferLockBaseAddress(a16, 0);
    v40 = CVPixelBufferGetBaseAddress(a16);
    v41 = CVPixelBufferGetHeight(a16);
    CVPixelBufferGetWidth(a16);
    v42 = CVPixelBufferGetBytesPerRow(a16);
    bzero(v40, v42 * v41);
    v43 = 0;
    CVPixelBufferUnlockBaseAddress(a16, 0);
  }

  *a17 = v43;

  v44 = *MEMORY[0x1E69E9840];
}

void sub_1DED60818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17)
{
  __cxa_guard_abort(&qword_1ECDE15D8);

  _Unwind_Resume(a1);
}

uint64_t sub_1DED609A4(uint64_t result, uint64_t a2)
{
  v8[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v2 = *(result + 24);
    v3 = *(a2 + 24);
    if (v2 == result)
    {
      if (v3 == a2)
      {
        v5 = a2;
        v6 = result;
        (*(*v2 + 24))(*(result + 24), v8);
        (*(**(v6 + 24) + 32))(*(v6 + 24));
        *(v6 + 24) = 0;
        (*(**(v5 + 24) + 24))(*(v5 + 24), v6);
        (*(**(v5 + 24) + 32))(*(v5 + 24));
        *(v5 + 24) = 0;
        *(v6 + 24) = v6;
        (*(v8[0] + 24))(v8, v5);
        result = (*(v8[0] + 32))(v8);
        goto LABEL_10;
      }

      v4 = result;
      v5 = a2;
      (*(*v2 + 24))(*(result + 24));
    }

    else
    {
      if (v3 != a2)
      {
        *(result + 24) = v3;
        *(a2 + 24) = v2;
        goto LABEL_11;
      }

      v5 = result;
      v4 = a2;
      (*(*v3 + 24))(*(a2 + 24), result);
    }

    result = (*(**(v4 + 24) + 32))(*(v4 + 24));
    *(v4 + 24) = *(v5 + 24);
LABEL_10:
    *(v5 + 24) = v5;
  }

LABEL_11:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DED60BE4(uint64_t result, uint64_t a2)
{
  v8[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v2 = *(result + 24);
    v3 = *(a2 + 24);
    if (v2 == result)
    {
      if (v3 == a2)
      {
        v5 = a2;
        v6 = result;
        (*(*v2 + 24))(*(result + 24), v8);
        (*(**(v6 + 24) + 32))(*(v6 + 24));
        *(v6 + 24) = 0;
        (*(**(v5 + 24) + 24))(*(v5 + 24), v6);
        (*(**(v5 + 24) + 32))(*(v5 + 24));
        *(v5 + 24) = 0;
        *(v6 + 24) = v6;
        (*(v8[0] + 24))(v8, v5);
        result = (*(v8[0] + 32))(v8);
        goto LABEL_10;
      }

      v4 = result;
      v5 = a2;
      (*(*v2 + 24))(*(result + 24));
    }

    else
    {
      if (v3 != a2)
      {
        *(result + 24) = v3;
        *(a2 + 24) = v2;
        goto LABEL_11;
      }

      v5 = result;
      v4 = a2;
      (*(*v3 + 24))(*(a2 + 24), result);
    }

    result = (*(**(v4 + 24) + 32))(*(v4 + 24));
    *(v4 + 24) = *(v5 + 24);
LABEL_10:
    *(v5 + 24) = v5;
  }

LABEL_11:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

unsigned int sub_1DED60E24(uint64_t a1, void *a2, int *a3)
{
  _H0 = *(*a2 + 2 * *a3);
  __asm { FCVT            S0, H0 }

  return llroundf(_S0 * 255.0);
}

uint64_t sub_1DED60EF0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F59F9F10;
  a2[1] = v2;
  return result;
}

uint64_t sub_1DED6104C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F59F9E80;
  a2[1] = v2;
  return result;
}

uint64_t sub_1DED61198(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F59F9DF0;
  a2[1] = v2;
  return result;
}

void sub_1DED62EC4(uint64_t a1)
{
  CVPixelBufferRelease(*(a1 + 56));
  CVPixelBufferRelease(*(a1 + 64));
  CVPixelBufferRelease(*(a1 + 72));
  v2 = *(a1 + 32);
  if (!v2)
  {
    v2 = *(*(a1 + 40) + 1024);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1DED62F8C;
  block[3] = &unk_1E869AFA8;
  v3 = *(a1 + 48);
  v4 = *(a1 + 80);
  v6 = v3;
  v7 = v4;
  block[4] = *(a1 + 40);
  dispatch_async(v2, block);
}

intptr_t sub_1DED62F8C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  CVPixelBufferRelease(*(a1 + 48));
  v3 = *(*(a1 + 32) + 1032);

  return dispatch_semaphore_signal(v3);
}

void sub_1DED63CE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, uint64_t a22, void *a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, void *a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  __cxa_guard_abort(&qword_1ECDE1640);

  _Unwind_Resume(a1);
}

void sub_1DED63F6C(uint64_t a1, void *a2)
{
  v3 = a2;
  CVPixelBufferRelease(*(a1 + 56));
  CVPixelBufferRelease(*(a1 + 64));
  CVPixelBufferRelease(*(a1 + 72));
  v4 = *(*(*(a1 + 32) + 40) + 48);
  [v3 GPUEndTime];
  v13 = 8;
  strcpy(__p, "SDoF GPU");
  sub_1DED4A57C(v4, __p, v5);
  if (v13 < 0)
  {
    operator delete(__p[0]);
    v6 = *(a1 + 40);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = *(*(a1 + 32) + 1024);
    goto LABEL_3;
  }

  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1DED640D4;
  v9[3] = &unk_1E869AFA8;
  v7 = *(a1 + 48);
  v8 = *(a1 + 80);
  v10 = v7;
  v11 = v8;
  v9[4] = *(a1 + 32);
  dispatch_async(v6, v9);
}

void sub_1DED640AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

intptr_t sub_1DED640D4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  CVPixelBufferRelease(*(a1 + 48));
  v3 = *(*(a1 + 32) + 1032);

  return dispatch_semaphore_signal(v3);
}

void sub_1DED64130()
{
  v13 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  *cStr = 0u;
  v10 = 0u;
  v8 = 64;
  sysctlbyname("hw.model", cStr, &v8, 0, 0);
  v0 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (Mutable)
  {
    v2 = Mutable;
    CFStringAppendCString(Mutable, cStr, 0);
    Length = CFStringGetLength(v2);
    if (CFStringHasSuffix(v2, @"AP"))
    {
      v4 = Length - 2;
    }

    else
    {
      v4 = 0;
    }

    if (CFStringHasSuffix(v2, @"DEV"))
    {
      v5.length = Length - 3;
    }

    else
    {
      v5.length = v4;
    }

    if (v5.length < 1)
    {
      v6 = CFRetain(v2);
    }

    else
    {
      v5.location = 0;
      v6 = CFStringCreateWithSubstring(v0, v2, v5);
    }

    qword_1ECDE10A8 = v6;
    CFRelease(v2);
  }

  if (!qword_1ECDE10A8)
  {
    qword_1ECDE10A8 = @"N51";
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1DED64710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_1DED65004(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DED66804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, void *a21, void *a22)
{
  __cxa_guard_abort(&qword_1ECDE15F8);

  _Unwind_Resume(a1);
}

void sub_1DED66914(uint64_t a1, void *a2)
{
  v3 = a2;
  CVPixelBufferRelease(*(a1 + 56));
  CVPixelBufferRelease(*(a1 + 64));
  v4 = *(*(*(a1 + 32) + 40) + 48);
  [v3 GPUEndTime];
  v13 = 14;
  strcpy(__p, "AlphaMatte GPU");
  sub_1DED4A57C(v4, __p, v5);
  if (v13 < 0)
  {
    operator delete(__p[0]);
    v6 = *(a1 + 40);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = *(*(a1 + 32) + 1040);
    goto LABEL_3;
  }

  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1DED66A78;
  v9[3] = &unk_1E869AFA8;
  v7 = *(a1 + 48);
  v8 = *(a1 + 72);
  v10 = v7;
  v11 = v8;
  v9[4] = *(a1 + 32);
  dispatch_async(v6, v9);
}

void sub_1DED66A50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

intptr_t sub_1DED66A78(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  CVPixelBufferRelease(*(a1 + 48));
  v3 = *(*(a1 + 32) + 1048);

  return dispatch_semaphore_signal(v3);
}

void sub_1DED675B4(uint64_t a1, void *a2)
{
  v3 = a2;
  CVPixelBufferRelease(*(a1 + 56));
  v4 = *(*(*(a1 + 32) + 40) + 48);
  [v3 GPUEndTime];
  v13 = 15;
  strcpy(__p, "DisparityPP GPU");
  sub_1DED4A57C(v4, __p, v5);
  if (v13 < 0)
  {
    operator delete(__p[0]);
    v6 = *(a1 + 40);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = *(*(a1 + 32) + 1040);
    goto LABEL_3;
  }

  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1DED67710;
  v9[3] = &unk_1E869AFA8;
  v7 = *(a1 + 48);
  v8 = *(a1 + 64);
  v10 = v7;
  v11 = v8;
  v9[4] = *(a1 + 32);
  dispatch_async(v6, v9);
}

void sub_1DED676E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

intptr_t sub_1DED67710(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  CVPixelBufferRelease(*(a1 + 48));
  v3 = *(*(a1 + 32) + 1048);

  return dispatch_semaphore_signal(v3);
}

void sub_1DED6796C(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 40) + 48);
  [a2 GPUEndTime];
  operator new();
}

void sub_1DED67AA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1DED67AC0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(**(a1 + 40));
  }

  return result;
}

void sub_1DED6A06C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = VideoMattingMetal;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1DED6BDF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1DED6C3E8(&a27);

  _Unwind_Resume(a1);
}

id sub_1DED6C1F0(id **a1, void *a2, char a3)
{
  v5 = a2;
  v8 = a3;
  v6 = [**a1 copy];
  [v6 setConstantValue:&v8 type:53 withName:v5];

  return v6;
}

void *sub_1DED6C284(void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    if (a3 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1DED35334();
  }

  return result;
}

void *sub_1DED6C348(void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    if (!(a3 >> 59))
    {
      operator new();
    }

    sub_1DED35334();
  }

  return result;
}

void **sub_1DED6C3E8(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {

        v3 -= 3;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_1DED6D558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v19 = v16;

  _Unwind_Resume(a1);
}

uint64_t sub_1DED6E170(uint64_t a1, CVPixelBufferRef pixelBuffer, CVPixelBufferRef a3, int a4, char a5, double a6, double a7, double a8, double a9)
{
  v16 = pixelBuffer;
  if (*(a1 + 28) > 0 || *(a1 + 32) >= 1)
  {
    CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
    CVPixelBufferLockBaseAddress(*(a1 + 48), 0);
    BaseAddress = CVPixelBufferGetBaseAddress(v16);
    CVPixelBufferGetHeight(v16);
    CVPixelBufferGetWidth(v16);
    BytesPerRow = CVPixelBufferGetBytesPerRow(v16);
    v20 = CVPixelBufferGetBaseAddress(*(a1 + 48));
    Height = CVPixelBufferGetHeight(*(a1 + 48));
    CVPixelBufferGetWidth(*(a1 + 48));
    v22 = CVPixelBufferGetBytesPerRow(*(a1 + 48));
    if ((v22 * Height) >= 1)
    {
      memset_pattern16(v20, &unk_1DED74120, v22 * Height);
    }

    v23 = *(a1 + 32);
    v24 = *(a1 + 8);
    if (v23 < v24)
    {
      v25 = *(a1 + 28);
      v26 = *(a1 + 4);
      if (v25 < v26)
      {
        v27 = v26 - v25;
        if ((v26 - v25) > 7)
        {
          v33 = 4 * v26;
          v34 = BaseAddress >= &v20[v22 * (v24 - 1) + v33] || &v20[4 * v25 + v22 * v23] >= &BaseAddress[v33 + BytesPerRow * (~v23 + v24) - 4 * v25];
          if (!v34 || ((v22 | BytesPerRow) & 0x8000000000000000) != 0)
          {
            v49 = &v20[4 * v25 + v22 * v23];
            do
            {
              v50 = BaseAddress;
              v51 = v49;
              v52 = v27;
              do
              {
                v53 = *v50;
                v50 += 4;
                *v51 = v53;
                v51 += 4;
                --v52;
              }

              while (v52);
              ++v23;
              v49 += v22;
              BaseAddress += BytesPerRow;
            }

            while (v23 != v24);
          }

          else
          {
            v35 = (BaseAddress + 16);
            v36 = &v20[4 * v25 + v22 * v23];
            v37 = v36 + 16;
            v38 = (4 * v27) & 0xFFFFFFFFFFFFFFE0;
            v39 = &v36[v38];
            v40 = &BaseAddress[v38];
            do
            {
              v41 = v37;
              v42 = v35;
              v43 = v27 & 0xFFFFFFFFFFFFFFF8;
              do
              {
                v44 = *v42;
                *(v41 - 1) = *(v42 - 1);
                *v41 = v44;
                v42 += 2;
                v41 += 2;
                v43 -= 8;
              }

              while (v43);
              if (v27 != (v27 & 0xFFFFFFFFFFFFFFF8))
              {
                v45 = v40;
                v46 = v39;
                v47 = v27 - (v27 & 0xFFFFFFFFFFFFFFF8);
                do
                {
                  v48 = *v45;
                  v45 += 4;
                  *v46 = v48;
                  v46 += 4;
                  --v47;
                }

                while (v47);
              }

              ++v23;
              v35 = (v35 + BytesPerRow);
              v37 = (v37 + v22);
              v39 += v22;
              v40 += BytesPerRow;
            }

            while (v23 != v24);
          }
        }

        else
        {
          v28 = &v20[4 * v25 + v22 * v23];
          do
          {
            v29 = BaseAddress;
            v30 = v28;
            v31 = v27;
            do
            {
              v32 = *v29;
              v29 += 4;
              *v30 = v32;
              v30 += 4;
              --v31;
            }

            while (v31);
            ++v23;
            v28 += v22;
            BaseAddress += BytesPerRow;
          }

          while (v23 != v24);
        }
      }
    }

    CVPixelBufferUnlockBaseAddress(*(a1 + 48), 0);
    CVPixelBufferUnlockBaseAddress(v16, 1uLL);
    v16 = *(a1 + 48);
  }

  v54 = *(a1 + 12);
  v55 = *(a1 + 20);
  if (v54 == v55)
  {
    v56 = *(a1 + 16) != *(a1 + 24);
    v105 = a4;
    if ((a5 & 1) == 0)
    {
      goto LABEL_34;
    }

LABEL_40:
    if (a4)
    {
      v60 = *(a1 + 24) * a8 != v55 * a9 || v56;
      if ((v60 & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    else if (!v56)
    {
LABEL_45:
      v61 = 0;
      v62 = a3;
      goto LABEL_48;
    }

    v62 = *(a1 + 56);
    v61 = 1;
LABEL_48:
    CVPixelBufferLockBaseAddress(v16, 1uLL);
    CVPixelBufferLockBaseAddress(v62, 0);
    src.data = CVPixelBufferGetBaseAddress(v16);
    src.height = CVPixelBufferGetHeight(v16);
    src.width = CVPixelBufferGetWidth(v16);
    src.rowBytes = CVPixelBufferGetBytesPerRow(v16);
    dest.data = CVPixelBufferGetBaseAddress(v62);
    dest.height = CVPixelBufferGetHeight(v62);
    dest.width = CVPixelBufferGetWidth(v62);
    dest.rowBytes = CVPixelBufferGetBytesPerRow(v62);
    vImageRotate90_PlanarF(&src, &dest, *(a1 + 44), 0.0, 0);
    CVPixelBufferUnlockBaseAddress(v16, 1uLL);
    CVPixelBufferUnlockBaseAddress(v62, 0);
    v16 = v62;
    if ((v61 & 1) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_49;
  }

  v56 = 1;
  v105 = a4;
  if (a5)
  {
    goto LABEL_40;
  }

LABEL_34:
  v57 = *(a1 + 4);
  if (v54 == v57)
  {
    v58 = *(a1 + 16);
    v59 = *(a1 + 8);
    if (a4)
    {
      if (v58 == v59 && v59 * a8 == v57 * a9)
      {
        goto LABEL_62;
      }
    }

    else if (v58 == v59)
    {
      goto LABEL_62;
    }
  }

LABEL_49:
  CVPixelBufferLockBaseAddress(v16, 1uLL);
  CVPixelBufferLockBaseAddress(a3, 0);
  v63 = CVPixelBufferGetBaseAddress(v16);
  v64 = CVPixelBufferGetHeight(v16);
  Width = CVPixelBufferGetWidth(v16);
  v66 = CVPixelBufferGetBytesPerRow(v16);
  v67 = CVPixelBufferGetBaseAddress(a3);
  v68 = CVPixelBufferGetHeight(a3);
  v69 = CVPixelBufferGetWidth(a3);
  v70 = CVPixelBufferGetBytesPerRow(a3);
  v71 = a8;
  v72 = a9;
  if (v105)
  {
    v73 = a7;
  }

  else
  {
    v72 = v64;
    v71 = Width;
    v73 = 0.0;
  }

  if (v105)
  {
    v74 = a6;
  }

  else
  {
    v74 = 0.0;
  }

  if (v68 && v69)
  {
    v75 = 0;
    v76 = v71 / v69;
    v77 = v72 / v68;
    do
    {
      for (i = 0; i != v69; ++i)
      {
        *&v67[4 * i] = *&v63[4 * (v74 + (i * v76)) + v66 * (v73 + (v75 * v77))];
      }

      ++v75;
      v67 += v70;
    }

    while (v75 != v68);
  }

  CVPixelBufferUnlockBaseAddress(a3, 0);
  CVPixelBufferUnlockBaseAddress(v16, 1uLL);
LABEL_62:
  CVPixelBufferLockBaseAddress(a3, 0);
  v79 = CVPixelBufferGetBaseAddress(a3);
  CVPixelBufferGetHeight(a3);
  CVPixelBufferGetWidth(a3);
  v80 = CVPixelBufferGetBytesPerRow(a3);
  v81 = v80;
  v82 = *(a1 + 16);
  if (v82 >= 1)
  {
    v83 = *(a1 + 36);
    v84 = *(a1 + 12);
    v85 = v84 + ~v83;
    if (v83 < 1)
    {
      v95 = &v79[4 * v85];
      v96 = *(a1 + 16);
      do
      {
        *v95 = *(v95 - 1);
        v95 += v80;
        --v96;
      }

      while (v96);
    }

    else
    {
      v86 = 0;
      v87 = v84 - 1;
      v88 = v84 - 1 + ~v83;
      v89 = &v79[4 * v87];
      v90 = v79;
      do
      {
        v91 = &v79[v81 * v86];
        v92 = v90;
        v93 = v89;
        v94 = v83;
        do
        {
          *v92++ = *&v91[4 * v83];
          *v93 = *&v91[4 * v88];
          v93 -= 4;
          --v94;
        }

        while (v94);
        *&v91[4 * v85] = *&v91[4 * v85 - 4];
        ++v86;
        v89 += v81;
        v90 = (v90 + v81);
      }

      while (v86 != v82);
    }
  }

  LODWORD(v97) = *(a1 + 40);
  if (v97 >= 1)
  {
    v98 = 0;
    v99 = -1;
    v100 = v79;
    do
    {
      v101 = *(a1 + 16);
      v102 = &v79[v81 * (v99 + v101)];
      v103 = &v79[v81 * (v101 - v97 - 2)];
      memcpy(v100, &v79[v81 * v97], v81);
      memcpy(v102, v103, v81);
      ++v98;
      v97 = *(a1 + 40);
      --v99;
      v100 += v81;
    }

    while (v98 < v97);
    LODWORD(v82) = *(a1 + 16);
  }

  memcpy(&v79[v81 * (v82 + ~v97)], &v79[v81 * (v82 + ~v97 - 1)], v81);
  return CVPixelBufferUnlockBaseAddress(a3, 0);
}

uint64_t sub_1DED6E838(uint64_t a1, CVPixelBufferRef pixelBuffer, CVPixelBufferRef a3, int a4, char a5, double a6, double a7, double a8, double a9)
{
  v16 = pixelBuffer;
  if (*(a1 + 28) > 0 || *(a1 + 32) >= 1)
  {
    CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
    CVPixelBufferLockBaseAddress(*(a1 + 48), 0);
    BaseAddress = CVPixelBufferGetBaseAddress(v16);
    CVPixelBufferGetHeight(v16);
    CVPixelBufferGetWidth(v16);
    BytesPerRow = CVPixelBufferGetBytesPerRow(v16);
    v20 = CVPixelBufferGetBaseAddress(*(a1 + 48));
    Height = CVPixelBufferGetHeight(*(a1 + 48));
    CVPixelBufferGetWidth(*(a1 + 48));
    v22 = CVPixelBufferGetBytesPerRow(*(a1 + 48));
    if ((v22 * Height) >= 1)
    {
      memset_pattern16(v20, &unk_1DED74130, v22 * Height);
    }

    v23 = *(a1 + 32);
    v24 = *(a1 + 8);
    if (v23 >= v24)
    {
      goto LABEL_36;
    }

    v25 = *(a1 + 28);
    v26 = *(a1 + 4);
    if (v25 >= v26)
    {
      goto LABEL_36;
    }

    v27 = v26 - v25;
    if ((v26 - v25) <= 3)
    {
      v28 = &v20[2 * v25 + v22 * v23];
      do
      {
        v29 = BaseAddress;
        v30 = v28;
        v31 = v27;
        do
        {
          v32 = *v29;
          v29 += 2;
          *v30 = v32;
          v30 += 2;
          --v31;
        }

        while (v31);
        ++v23;
        v28 += v22;
        BaseAddress += BytesPerRow;
      }

      while (v23 != v24);
LABEL_36:
      CVPixelBufferUnlockBaseAddress(*(a1 + 48), 0);
      CVPixelBufferUnlockBaseAddress(v16, 1uLL);
      v16 = *(a1 + 48);
      goto LABEL_37;
    }

    v33 = 2 * v26;
    v34 = BaseAddress >= &v20[v22 * (v24 - 1) + v33] || &v20[2 * v25 + v22 * v23] >= &BaseAddress[v33 + BytesPerRow * (~v23 + v24) - 2 * v25];
    if (!v34 || ((v22 | BytesPerRow) & 0x8000000000000000) != 0)
    {
      v49 = &v20[2 * v25 + v22 * v23];
      do
      {
        v50 = BaseAddress;
        v51 = v49;
        v52 = v27;
        do
        {
          v53 = *v50;
          v50 += 2;
          *v51 = v53;
          v51 += 2;
          --v52;
        }

        while (v52);
        ++v23;
        v49 += v22;
        BaseAddress += BytesPerRow;
      }

      while (v23 != v24);
      goto LABEL_36;
    }

    v35 = (BaseAddress + 16);
    v36 = &v20[2 * v25 + v22 * v23];
    v37 = v36 + 16;
    while (v27 >= 0x10)
    {
      v39 = v37;
      v40 = v35;
      v41 = v27 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v42 = *v40;
        *(v39 - 1) = *(v40 - 1);
        *v39 = v42;
        v40 += 2;
        v39 += 2;
        v41 -= 16;
      }

      while (v41);
      if (v27 == (v27 & 0xFFFFFFFFFFFFFFF0))
      {
        goto LABEL_20;
      }

      v38 = v27 & 0xFFFFFFFFFFFFFFF0;
      v43 = v27 & 0xFFFFFFFFFFFFFFF0;
      if ((v27 & 0xC) != 0)
      {
        goto LABEL_27;
      }

      do
      {
LABEL_30:
        *&v36[2 * v43] = *&BaseAddress[2 * v43];
        ++v43;
      }

      while (v27 != v43);
LABEL_20:
      ++v23;
      v35 = (v35 + BytesPerRow);
      v37 = (v37 + v22);
      v36 += v22;
      BaseAddress += BytesPerRow;
      if (v23 == v24)
      {
        goto LABEL_36;
      }
    }

    v38 = 0;
LABEL_27:
    v44 = v38 - (v27 & 0xFFFFFFFFFFFFFFFCLL);
    v45 = 2 * v38;
    v46 = &v36[2 * v38];
    v47 = &BaseAddress[v45];
    do
    {
      v48 = *v47;
      v47 += 8;
      *v46 = v48;
      v46 += 8;
      v44 += 4;
    }

    while (v44);
    v43 = v27 & 0xFFFFFFFFFFFFFFFCLL;
    if (v27 == (v27 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_20;
    }

    goto LABEL_30;
  }

LABEL_37:
  v54 = *(a1 + 12);
  v55 = *(a1 + 20);
  if (v54 == v55)
  {
    v56 = *(a1 + 16) != *(a1 + 24);
    v105 = a4;
    if ((a5 & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_45:
    if (a4)
    {
      v60 = *(a1 + 24) * a8 != v55 * a9 || v56;
      if ((v60 & 1) == 0)
      {
        goto LABEL_50;
      }
    }

    else if (!v56)
    {
LABEL_50:
      v61 = 0;
      v62 = a3;
      goto LABEL_53;
    }

    v62 = *(a1 + 56);
    v61 = 1;
LABEL_53:
    CVPixelBufferLockBaseAddress(v16, 1uLL);
    CVPixelBufferLockBaseAddress(v62, 0);
    src.data = CVPixelBufferGetBaseAddress(v16);
    src.height = CVPixelBufferGetHeight(v16);
    src.width = CVPixelBufferGetWidth(v16);
    src.rowBytes = CVPixelBufferGetBytesPerRow(v16);
    dest.data = CVPixelBufferGetBaseAddress(v62);
    dest.height = CVPixelBufferGetHeight(v62);
    dest.width = CVPixelBufferGetWidth(v62);
    dest.rowBytes = CVPixelBufferGetBytesPerRow(v62);
    vImageRotate90_Planar16F(&src, &dest, *(a1 + 44), 0, 0);
    CVPixelBufferUnlockBaseAddress(v16, 1uLL);
    CVPixelBufferUnlockBaseAddress(v62, 0);
    v16 = v62;
    if ((v61 & 1) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_54;
  }

  v56 = 1;
  v105 = a4;
  if (a5)
  {
    goto LABEL_45;
  }

LABEL_39:
  v57 = *(a1 + 4);
  if (v54 == v57)
  {
    v58 = *(a1 + 16);
    v59 = *(a1 + 8);
    if (a4)
    {
      if (v58 == v59 && v59 * a8 == v57 * a9)
      {
        goto LABEL_67;
      }
    }

    else if (v58 == v59)
    {
      goto LABEL_67;
    }
  }

LABEL_54:
  CVPixelBufferLockBaseAddress(v16, 1uLL);
  CVPixelBufferLockBaseAddress(a3, 0);
  v63 = CVPixelBufferGetBaseAddress(v16);
  v64 = CVPixelBufferGetHeight(v16);
  Width = CVPixelBufferGetWidth(v16);
  v66 = CVPixelBufferGetBytesPerRow(v16);
  v67 = CVPixelBufferGetBaseAddress(a3);
  v68 = CVPixelBufferGetHeight(a3);
  v69 = CVPixelBufferGetWidth(a3);
  v70 = CVPixelBufferGetBytesPerRow(a3);
  v71 = a8;
  v72 = a9;
  if (v105)
  {
    v73 = a7;
  }

  else
  {
    v72 = v64;
    v71 = Width;
    v73 = 0.0;
  }

  if (v105)
  {
    v74 = a6;
  }

  else
  {
    v74 = 0.0;
  }

  if (v68 && v69)
  {
    v75 = 0;
    v76 = v71 / v69;
    v77 = v72 / v68;
    do
    {
      for (i = 0; i != v69; ++i)
      {
        *&v67[2 * i] = *&v63[2 * (v74 + (i * v76)) + v66 * (v73 + (v75 * v77))];
      }

      ++v75;
      v67 += v70;
    }

    while (v75 != v68);
  }

  CVPixelBufferUnlockBaseAddress(a3, 0);
  CVPixelBufferUnlockBaseAddress(v16, 1uLL);
LABEL_67:
  CVPixelBufferLockBaseAddress(a3, 0);
  v79 = CVPixelBufferGetBaseAddress(a3);
  CVPixelBufferGetHeight(a3);
  CVPixelBufferGetWidth(a3);
  v80 = CVPixelBufferGetBytesPerRow(a3);
  v81 = v80;
  v82 = *(a1 + 16);
  if (v82 >= 1)
  {
    v83 = *(a1 + 36);
    v84 = *(a1 + 12);
    v85 = v84 + ~v83;
    if (v83 < 1)
    {
      v95 = &v79[2 * v85];
      v96 = *(a1 + 16);
      do
      {
        *v95 = *(v95 - 1);
        v95 += v80;
        --v96;
      }

      while (v96);
    }

    else
    {
      v86 = 0;
      v87 = v84 - 1;
      v88 = v84 - 1 + ~v83;
      v89 = &v79[2 * v87];
      v90 = v79;
      do
      {
        v91 = &v79[v81 * v86];
        v92 = v90;
        v93 = v89;
        v94 = v83;
        do
        {
          *v92++ = *&v91[2 * v83];
          *v93 = *&v91[2 * v88];
          v93 -= 2;
          --v94;
        }

        while (v94);
        *&v91[2 * v85] = *&v91[2 * v85 - 2];
        ++v86;
        v89 += v81;
        v90 = (v90 + v81);
      }

      while (v86 != v82);
    }
  }

  LODWORD(v97) = *(a1 + 40);
  if (v97 >= 1)
  {
    v98 = 0;
    v99 = -1;
    v100 = v79;
    do
    {
      v101 = *(a1 + 16);
      v102 = &v79[v81 * (v99 + v101)];
      v103 = &v79[v81 * (v101 - v97 - 2)];
      memcpy(v100, &v79[v81 * v97], v81);
      memcpy(v102, v103, v81);
      ++v98;
      v97 = *(a1 + 40);
      --v99;
      v100 += v81;
    }

    while (v98 < v97);
    LODWORD(v82) = *(a1 + 16);
  }

  memcpy(&v79[v81 * (v82 + ~v97)], &v79[v81 * (v82 + ~v97 - 1)], v81);
  return CVPixelBufferUnlockBaseAddress(a3, 0);
}

void sub_1DED6F850(uint64_t *a1, void *a2)
{
  v6 = a2;
  v3 = [v6 threadExecutionWidth];
  v4 = [v6 maxTotalThreadsPerThreadgroup];
  v5 = [v6 threadExecutionWidth];
  *a1 = v3;
  a1[1] = v4 / v5;
  a1[2] = 1;
}

id sub_1DED6F8DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:a1 width:a2 height:a3 mipmapped:0];
  [v3 setUsage:3];
  [v3 setResourceOptions:0];

  return v3;
}

id sub_1DED6F954(__CVBuffer *a1)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (PixelFormatType > 1278226535)
  {
    if (PixelFormatType == 1751411059 || PixelFormatType == 1278226536)
    {
      v3 = 25;
      goto LABEL_11;
    }
  }

  else
  {
    if (PixelFormatType == 1278226488)
    {
      v3 = 10;
      goto LABEL_11;
    }

    if (PixelFormatType == 1278226534)
    {
      v3 = 55;
LABEL_11:
      Width = CVPixelBufferGetWidth(a1);
      v9 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:v3 width:Width height:CVPixelBufferGetHeight(a1) mipmapped:0];
      [v9 setUsage:3];
      [v9 setResourceOptions:0];
      goto LABEL_12;
    }
  }

  v4 = PixelFormatType;
  v5 = +[CVAVideoPipelineProperties_Impl allSupportedYCbCrPixelFormats];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];
  v7 = [v5 containsObject:v6];

  if (v7)
  {
    v3 = 500;
    goto LABEL_11;
  }

  v11 = MEMORY[0x1E696AEC0];
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported pixel format type: %i", CVPixelBufferGetPixelFormatType(a1)];
  v13 = [v11 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "MTLTextureDescriptor *getMTLTextureDescriptor(CVPixelBufferRef _Nonnull)", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/module/sdof/src/metal/MetalHelpers.mm", 107, v12];
  sub_1DED25D64(1, 0, 4294944390, v13);

  v9 = 0;
LABEL_12:

  return v9;
}

void sub_1DED6FB28(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id sub_1DED6FB5C(__CVBuffer *a1, void *a2)
{
  v3 = a2;
  v4 = sub_1DED6F954(a1);
  v5 = [v3 newTextureWithDescriptor:v4 iosurface:CVPixelBufferGetIOSurface(a1) plane:0];

  return v5;
}

void sub_1DED6FBF4(uint64_t *a1, __CVBuffer *a2, __CVBuffer *a3, void *a4)
{
  v17 = a4;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
  v8 = +[CVAVideoPipelineProperties_Impl allSupportedYCbCrPixelFormats];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:PixelFormatType];
  v10 = [v8 containsObject:v9];
  v11 = MEMORY[0x1E696AEC0];
  v12 = +[CVAVideoPipelineProperties_Impl allSupportedYCbCrPixelFormats];
  v13 = [v11 stringWithFormat:@"Source format should be either of %@ but is %d", v12, PixelFormatType];
  v14 = [v11 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "std::pair<id<MTLTexture>, id<MTLTexture>> getMTLTextureColorAlpha(const CVPixelBufferRef _Nonnull, const CVPixelBufferRef _Nonnull, __strong id<MTLDevice> _Nonnull)", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/module/sdof/src/metal/MetalHelpers.mm", 134, v13];
  sub_1DED25D64(v10 ^ 1u, 0, 4294944390, v14);

  if (v10)
  {
    v15 = sub_1DED6FB5C(a2, v17);
    v16 = sub_1DED6FB5C(a3, v17);
    *a1 = v15;
    a1[1] = v16;
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
  }
}

id sub_1DED6FDC8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = a1;
  v12 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:a2 width:a3 height:a4 mipmapped:0];
  [v12 setUsage:3];
  [v12 setResourceOptions:a5];
  v13 = [v11 newTextureWithDescriptor:v12];

  v14 = MEMORY[0x1E696AEC0];
  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[_Nonnull id<MTLDeviceSPI newTextureWithDescriptor:textureDescriptor(%lu, %lu, %lu)] is nil", a2, a3, a4];
  v16 = [v14 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "id<MTLTexture> metalTexture(__strong id<MTLDevice> _Nonnull, MTLPixelFormat, NSUInteger, NSUInteger, MTLResourceOptions, NSError *__autoreleasing * _Nullable)", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/module/sdof/src/metal/MetalHelpers.mm", 166, v15];
  sub_1DED25D64(v13 == 0, a6, 4294944382, v16);

  return v13;
}

id sub_1DED6FF44(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = sub_1DED6FDC8(a1, a2, a3, a4, 0, a5);

  return v5;
}

id sub_1DED6FF78(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    if (![v3 length])
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id<MTLTexture> lutTextureFromData(NSData *__strong _Nonnull, __strong id<MTLDeviceSPI> _Nonnull)"}];
      [v11 handleFailureInFunction:v12 file:@"MetalHelpers.mm" lineNumber:262 description:@"Cube data length must not be zero"];
    }

    if (([v3 length] & 3) != 0)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id<MTLTexture> lutTextureFromData(NSData *__strong _Nonnull, __strong id<MTLDeviceSPI> _Nonnull)"}];
      [v13 handleFailureInFunction:v14 file:@"MetalHelpers.mm" lineNumber:264 description:@"Cube data length must be a multiple of 4 bytes (rgba8)"];
    }

    v5 = [v3 length] >> 2;
    v6 = cbrt(v5);
    if (v6 * v6 * v6 != v5)
    {
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id<MTLTexture> lutTextureFromData(NSData *__strong _Nonnull, __strong id<MTLDeviceSPI> _Nonnull)"}];
      [v15 handleFailureInFunction:v16 file:@"MetalHelpers.mm" lineNumber:269 description:@"Cube data number of entries must be a perfect cube"];
    }

    v7 = objc_alloc_init(MEMORY[0x1E69741C0]);
    [v7 setTextureType:7];
    [v7 setHeight:v6];
    [v7 setWidth:v6];
    [v7 setDepth:v6];
    [v7 setPixelFormat:70];
    [v7 setArrayLength:1];
    [v7 setMipmapLevelCount:1];
    v8 = [v4 newTextureWithDescriptor:v7];
    memset(v17, 0, 24);
    v17[3] = v6;
    v17[4] = v6;
    v17[5] = v6;
    [v8 replaceRegion:v17 mipmapLevel:0 slice:0 withBytes:objc_msgSend(v3 bytesPerRow:"bytes" bytesPerImage:{0, 0, 0, v6, v6, v6), 4 * v6, 4 * v6 * v6}];
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void *sub_1DED70280(void *result, uint64_t a2, int a3)
{
  v3 = result;
  if (*(a2 + 56) == 1)
  {
    result[3] = result;
    *result = &unk_1F59F9FC0;
  }

  else
  {
    if (a3)
    {
      if (++dword_1ECDE1654 == a3)
      {
        v5 = objc_opt_new();
        [v5 setCaptureObject:*(a2 + 40)];
        v6 = [MEMORY[0x1E6974000] sharedCaptureManager];
        [v6 startCaptureWithDescriptor:v5 error:0];
      }
    }

    result = [*(a2 + 40) beginScope];
    *(a2 + 56) = 1;
    *v3 = &unk_1F59FA008;
    v3[1] = a2;
    v3[2] = &v7;
    v3[3] = v3;
  }

  return result;
}

void sub_1DED70390(uint64_t a1)
{
  v2 = *(a1 + 8);
  [*(v2 + 40) endScope];
  if (dword_1ECDE1654 == **(a1 + 16))
  {
    v3 = [MEMORY[0x1E6974000] sharedCaptureManager];
    [v3 stopCapture];
  }

  *(v2 + 56) = 0;
}

__n128 sub_1DED7040C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F59FA008;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1DED70534(void *a1, void *a2, void *a3, uint64_t a4)
{
  v13 = a1;
  v7 = a2;
  v8 = a3;
  v9 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:a4 width:16 height:12 mipmapped:0];
  v10 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:a4 width:16 height:12 mipmapped:0];
  [v10 setUsage:3];
  v11 = [v7 newTextureWithDescriptor:v9];
  v12 = [v7 newTextureWithDescriptor:v10];
  [v13 encodeToCommandBuffer:v8 sourceTexture:v11 destinationTexture:v12];
}

void sub_1DED70638(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v16 = v14;

  _Unwind_Resume(a1);
}

uint64_t sub_1DED7068C(uint64_t a1, float *a2, float a3)
{
  if (vabds_f32(*(a1 + 4), a3) >= *a2)
  {
    *a1 = 0;
    *(a1 + 4) = a3;
    return 1;
  }

  else if (a2[1] <= *a1)
  {
    *a1 = 0;
    return 0;
  }

  else
  {
    ++*a1;
    return 1;
  }
}

uint64_t sub_1DED706E0(uint64_t a1, float *a2, float a3)
{
  if (vabds_f32(*(a1 + 4), a3) >= *a2)
  {
    v4 = 0;
    *(a1 + 4) = a3;
    v3 = 1;
  }

  else
  {
    v3 = 0;
    v4 = *a1 + 1;
  }

  *a1 = v4;
  return v3;
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x1EEE73578](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}