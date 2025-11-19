void *putcontig8bitYCbCr42tile(void *result, unsigned int *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7, int a8, unsigned __int8 *a9)
{
  v10 = a6;
  v11 = a5;
  v12 = a2;
  v13 = result;
  v15 = &a2[a5 + a8];
  v16 = a5 + 2 * a8;
  v17 = 2 * ((v9 & 0xFFFFFFFC) + a7 / 4);
  if (a6 & 1 | a5 & 3)
  {
    if (a6)
    {
      v18 = v16;
      v31 = 4 * a5;
      v32 = v17;
      do
      {
        if (v11)
        {
          v19 = v31;
          do
          {
            v20 = a9[8];
            v21 = a9[9];
            if (v11 != 1)
            {
              if (v11 != 2)
              {
                if (v11 != 3)
                {
                  if (v10 != 1)
                  {
                    v37 = 0;
                    v36 = 0;
                    TIFFYCbCrtoRGB(v13[13], a9[7], v20, v21, &v37 + 1, &v37, &v36);
                    v15[3] = HIDWORD(v37) | (v37 << 8) | (v36 << 16) | 0xFF000000;
                  }

                  v37 = 0;
                  v36 = 0;
                  TIFFYCbCrtoRGB(v13[13], a9[3], v20, v21, &v37 + 1, &v37, &v36);
                  v12[3] = HIDWORD(v37) | (v37 << 8) | (v36 << 16) | 0xFF000000;
                }

                if (v10 != 1)
                {
                  v37 = 0;
                  v36 = 0;
                  TIFFYCbCrtoRGB(v13[13], a9[6], v20, v21, &v37 + 1, &v37, &v36);
                  v15[2] = HIDWORD(v37) | (v37 << 8) | (v36 << 16) | 0xFF000000;
                }

                v37 = 0;
                v36 = 0;
                TIFFYCbCrtoRGB(v13[13], a9[2], v20, v21, &v37 + 1, &v37, &v36);
                v12[2] = HIDWORD(v37) | (v37 << 8) | (v36 << 16) | 0xFF000000;
              }

              if (v10 != 1)
              {
                v37 = 0;
                v36 = 0;
                TIFFYCbCrtoRGB(v13[13], a9[5], v20, v21, &v37 + 1, &v37, &v36);
                v15[1] = HIDWORD(v37) | (v37 << 8) | (v36 << 16) | 0xFF000000;
              }

              v37 = 0;
              v36 = 0;
              TIFFYCbCrtoRGB(v13[13], a9[1], v20, v21, &v37 + 1, &v37, &v36);
              v12[1] = HIDWORD(v37) | (v37 << 8) | (v36 << 16) | 0xFF000000;
            }

            if (v10 != 1)
            {
              v37 = 0;
              v36 = 0;
              TIFFYCbCrtoRGB(v13[13], a9[4], v20, v21, &v37 + 1, &v37, &v36);
              *v15 = HIDWORD(v37) | (v37 << 8) | (v36 << 16) | 0xFF000000;
            }

            v37 = 0;
            v36 = 0;
            v22 = *a9;
            a9 += 10;
            result = TIFFYCbCrtoRGB(v13[13], v22, v20, v21, &v37 + 1, &v37, &v36);
            v23 = (v12 + v19);
            *v12 = HIDWORD(v37) | (v37 << 8) | (v36 << 16) | 0xFF000000;
            v12 += 4;
            v24 = (v15 + v19);
            v19 -= 16;
            v25 = v11 >= 4;
            v11 -= 4;
            if (v25)
            {
              v15 += 4;
            }

            else
            {
              v15 = v24;
            }

            if (!v25)
            {
              v12 = v23;
            }
          }

          while (v11 != 0 && v25);
        }

        v12 += v18;
        a9 += v32;
        v15 += v18;
        v25 = v10 >= 2;
        v10 -= 2;
        v11 = a5;
      }

      while (v10 != 0 && v25);
    }
  }

  else if (a6 >= 2)
  {
    v35 = a5 >> 2;
    v33 = v17;
    v26 = 4 * v16;
    do
    {
      v27 = a9 + 4;
      a9 += v33;
      v28 = v35;
      do
      {
        v29 = v27[4];
        v30 = v27[5];
        v37 = 0;
        v36 = 0;
        TIFFYCbCrtoRGB(v13[13], *(v27 - 4), v29, v30, &v37 + 1, &v37, &v36);
        *v12 = HIDWORD(v37) | (v37 << 8) | (v36 << 16) | 0xFF000000;
        v37 = 0;
        v36 = 0;
        TIFFYCbCrtoRGB(v13[13], *(v27 - 3), v29, v30, &v37 + 1, &v37, &v36);
        v12[1] = HIDWORD(v37) | (v37 << 8) | (v36 << 16) | 0xFF000000;
        v37 = 0;
        v36 = 0;
        TIFFYCbCrtoRGB(v13[13], *(v27 - 2), v29, v30, &v37 + 1, &v37, &v36);
        v12[2] = HIDWORD(v37) | (v37 << 8) | (v36 << 16) | 0xFF000000;
        v37 = 0;
        v36 = 0;
        TIFFYCbCrtoRGB(v13[13], *(v27 - 1), v29, v30, &v37 + 1, &v37, &v36);
        v12[3] = HIDWORD(v37) | (v37 << 8) | (v36 << 16) | 0xFF000000;
        v37 = 0;
        v36 = 0;
        TIFFYCbCrtoRGB(v13[13], *v27, v29, v30, &v37 + 1, &v37, &v36);
        *v15 = HIDWORD(v37) | (v37 << 8) | (v36 << 16) | 0xFF000000;
        v37 = 0;
        v36 = 0;
        TIFFYCbCrtoRGB(v13[13], v27[1], v29, v30, &v37 + 1, &v37, &v36);
        v15[1] = HIDWORD(v37) | (v37 << 8) | (v36 << 16) | 0xFF000000;
        v37 = 0;
        v36 = 0;
        TIFFYCbCrtoRGB(v13[13], v27[2], v29, v30, &v37 + 1, &v37, &v36);
        v15[2] = HIDWORD(v37) | (v37 << 8) | (v36 << 16) | 0xFF000000;
        v37 = 0;
        v36 = 0;
        result = TIFFYCbCrtoRGB(v13[13], v27[3], v29, v30, &v37 + 1, &v37, &v36);
        v12 += 4;
        v15[3] = HIDWORD(v37) | (v37 << 8) | (v36 << 16) | 0xFF000000;
        v15 += 4;
        a9 += 10;
        v27 += 10;
        --v28;
      }

      while (v28);
      v12 = (v12 + v26);
      v15 = (v15 + v26);
      v10 -= 2;
    }

    while (v10 > 1);
  }

  return result;
}

void *putcontig8bitYCbCr41tile(void *result, unsigned int *a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6, int a7, int a8, unsigned __int8 *a9)
{
  v12 = result;
  v22 = a5 >> 2;
  v14 = a5 & 3;
  v23 = a8;
  v15 = 6 * (a7 / 4);
  do
  {
    if (a5 >= 4)
    {
      v16 = v22;
      do
      {
        v17 = a9[4];
        v18 = a9[5];
        v25 = 0;
        v24 = 0;
        TIFFYCbCrtoRGB(v12[13], *a9, v17, v18, &v25 + 1, &v25, &v24);
        *a2 = HIDWORD(v25) | (v25 << 8) | (v24 << 16) | 0xFF000000;
        v25 = 0;
        v24 = 0;
        TIFFYCbCrtoRGB(v12[13], a9[1], v17, v18, &v25 + 1, &v25, &v24);
        a2[1] = HIDWORD(v25) | (v25 << 8) | (v24 << 16) | 0xFF000000;
        v25 = 0;
        v24 = 0;
        TIFFYCbCrtoRGB(v12[13], a9[2], v17, v18, &v25 + 1, &v25, &v24);
        a2[2] = HIDWORD(v25) | (v25 << 8) | (v24 << 16) | 0xFF000000;
        v25 = 0;
        v24 = 0;
        result = TIFFYCbCrtoRGB(v12[13], a9[3], v17, v18, &v25 + 1, &v25, &v24);
        a2[3] = HIDWORD(v25) | (v25 << 8) | (v24 << 16) | 0xFF000000;
        a2 += 4;
        a9 += 6;
        --v16;
      }

      while (v16);
    }

    if (v14)
    {
      v19 = a9[4];
      v20 = a9[5];
      if (v14 != 1)
      {
        if (v14 != 2)
        {
          v25 = 0;
          v24 = 0;
          TIFFYCbCrtoRGB(v12[13], a9[2], v19, v20, &v25 + 1, &v25, &v24);
          a2[2] = HIDWORD(v25) | (v25 << 8) | (v24 << 16) | 0xFF000000;
        }

        v25 = 0;
        v24 = 0;
        TIFFYCbCrtoRGB(v12[13], a9[1], v19, v20, &v25 + 1, &v25, &v24);
        a2[1] = HIDWORD(v25) | (v25 << 8) | (v24 << 16) | 0xFF000000;
      }

      v25 = 0;
      v24 = 0;
      v21 = *a9;
      a9 += 6;
      result = TIFFYCbCrtoRGB(v12[13], v21, v19, v20, &v25 + 1, &v25, &v24);
      *a2 = HIDWORD(v25) | (v25 << 8) | (v24 << 16) | 0xFF000000;
      a2 += v14;
    }

    a2 += v23;
    a9 += v15;
    --a6;
  }

  while (a6);
  return result;
}

void *putcontig8bitYCbCr22tile(void *result, unsigned int *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, int a8, unsigned __int8 *a9)
{
  v9 = a6;
  v10 = a5;
  v11 = a2;
  v12 = result;
  if (a6 >= 2)
  {
    v14 = &a2[a5 + a8];
    v15 = (a5 + 2 * a8);
    v25 = (6 * ((a7 + (a7 >> 31)) >> 1));
    do
    {
      v16 = v10;
      if (v10 >= 2)
      {
        do
        {
          v17 = a9[4];
          v18 = a9[5];
          v27 = 0;
          v26 = 0;
          TIFFYCbCrtoRGB(v12[13], *a9, v17, v18, &v27 + 1, &v27, &v26);
          *v11 = HIDWORD(v27) | (v27 << 8) | (v26 << 16) | 0xFF000000;
          v27 = 0;
          v26 = 0;
          TIFFYCbCrtoRGB(v12[13], a9[1], v17, v18, &v27 + 1, &v27, &v26);
          v11[1] = HIDWORD(v27) | (v27 << 8) | (v26 << 16) | 0xFF000000;
          v27 = 0;
          v26 = 0;
          TIFFYCbCrtoRGB(v12[13], a9[2], v17, v18, &v27 + 1, &v27, &v26);
          *v14 = HIDWORD(v27) | (v27 << 8) | (v26 << 16) | 0xFF000000;
          v27 = 0;
          v26 = 0;
          result = TIFFYCbCrtoRGB(v12[13], a9[3], v17, v18, &v27 + 1, &v27, &v26);
          v14[1] = HIDWORD(v27) | (v27 << 8) | (v26 << 16) | 0xFF000000;
          v11 += 2;
          v14 += 2;
          a9 += 6;
          v16 -= 2;
        }

        while (v16 > 1);
      }

      if (v16)
      {
        v19 = a9[4];
        v20 = a9[5];
        v27 = 0;
        v26 = 0;
        TIFFYCbCrtoRGB(v12[13], *a9, v19, v20, &v27 + 1, &v27, &v26);
        *v11++ = HIDWORD(v27) | (v27 << 8) | (v26 << 16) | 0xFF000000;
        v27 = 0;
        v26 = 0;
        result = TIFFYCbCrtoRGB(v12[13], a9[2], v19, v20, &v27 + 1, &v27, &v26);
        *v14++ = HIDWORD(v27) | (v27 << 8) | (v26 << 16) | 0xFF000000;
        a9 += 6;
      }

      v11 += v15;
      v14 += v15;
      a9 += v25;
      v9 -= 2;
    }

    while (v9 > 1);
  }

  if (v9)
  {
    if (v10 >= 2)
    {
      do
      {
        v21 = a9[4];
        v22 = a9[5];
        v27 = 0;
        v26 = 0;
        TIFFYCbCrtoRGB(v12[13], *a9, v21, v22, &v27 + 1, &v27, &v26);
        *v11 = HIDWORD(v27) | (v27 << 8) | (v26 << 16) | 0xFF000000;
        v27 = 0;
        v26 = 0;
        result = TIFFYCbCrtoRGB(v12[13], a9[1], v21, v22, &v27 + 1, &v27, &v26);
        v11[1] = HIDWORD(v27) | (v27 << 8) | (v26 << 16) | 0xFF000000;
        v11 += 2;
        a9 += 6;
        v10 -= 2;
      }

      while (v10 > 1);
    }

    if (v10)
    {
      v23 = a9[4];
      v24 = a9[5];
      v27 = 0;
      v26 = 0;
      result = TIFFYCbCrtoRGB(v12[13], *a9, v23, v24, &v27 + 1, &v27, &v26);
      *v11 = HIDWORD(v27) | (v27 << 8) | (v26 << 16) | 0xFF000000;
    }
  }

  return result;
}

void *putcontig8bitYCbCr21tile(void *result, unsigned int *a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6, unsigned int a7, int a8, unsigned __int8 *a9)
{
  v12 = result;
  v22 = a5 >> 1;
  v14 = a8;
  v15 = ((2 * (a7 + (a7 >> 31))) & 0xFFFFFFFC);
  do
  {
    if (a5 >= 2)
    {
      v16 = v22;
      do
      {
        v17 = a9[2];
        v18 = a9[3];
        v24 = 0;
        v23 = 0;
        TIFFYCbCrtoRGB(v12[13], *a9, v17, v18, &v24 + 1, &v24, &v23);
        *a2 = HIDWORD(v24) | (v24 << 8) | (v23 << 16) | 0xFF000000;
        v24 = 0;
        v23 = 0;
        result = TIFFYCbCrtoRGB(v12[13], a9[1], v17, v18, &v24 + 1, &v24, &v23);
        a2[1] = HIDWORD(v24) | (v24 << 8) | (v23 << 16) | 0xFF000000;
        a2 += 2;
        a9 += 4;
        --v16;
      }

      while (v16);
    }

    if (a5)
    {
      v19 = a9[2];
      v20 = a9[3];
      v24 = 0;
      v23 = 0;
      v21 = *a9;
      a9 += 4;
      result = TIFFYCbCrtoRGB(v12[13], v21, v19, v20, &v24 + 1, &v24, &v23);
      *a2++ = HIDWORD(v24) | (v24 << 8) | (v23 << 16) | 0xFF000000;
    }

    a2 += v14;
    a9 += v15;
    --a6;
  }

  while (a6);
  return result;
}

void *putcontig8bitYCbCr12tile(void *result, unsigned int *a2, uint64_t a3, uint64_t a4, int a5, unsigned int a6, int a7, int a8, uint64_t a9)
{
  v9 = a6;
  v10 = a5;
  v11 = a2;
  v12 = result;
  if (a6 >= 2)
  {
    v25 = 4 * a7;
    v23 = a5 + 2 * a8;
    v24 = v23;
    v14 = &a2[a5 + a8];
    do
    {
      v15 = 0;
      v16 = v11;
      v17 = v10;
      do
      {
        v18 = *(a9 + v15 + 2);
        v19 = *(a9 + v15 + 3);
        v28 = 0;
        v27 = 0;
        TIFFYCbCrtoRGB(v12[13], *(a9 + v15), v18, v19, &v28 + 1, &v28, &v27);
        v16[v15 / 4] = HIDWORD(v28) | (v28 << 8) | (v27 << 16) | 0xFF000000;
        v28 = 0;
        v27 = 0;
        result = TIFFYCbCrtoRGB(v12[13], *(a9 + v15 + 1), v18, v19, &v28 + 1, &v28, &v27);
        *(v14 + v15) = HIDWORD(v28) | (v28 << 8) | (v27 << 16) | 0xFF000000;
        v15 += 4;
        --v17;
      }

      while (v17);
      v11 = &v16[v24 + v15 / 4];
      v14 += v24 * 4 + v15;
      a9 += v25 + v15;
      v9 -= 2;
      v10 = a5;
    }

    while (v9 > 1);
    v11 = &v16[v23 + v15 / 4];
  }

  if (v9)
  {
    v20 = (a9 + 3);
    do
    {
      v21 = *(v20 - 1);
      v22 = *v20;
      v28 = 0;
      v27 = 0;
      result = TIFFYCbCrtoRGB(v12[13], *(v20 - 3), v21, v22, &v28 + 1, &v28, &v27);
      *v11++ = HIDWORD(v28) | (v28 << 8) | (v27 << 16) | 0xFF000000;
      v20 += 4;
      --v10;
    }

    while (v10);
  }

  return result;
}

void *putcontig8bitYCbCr11tile(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, unsigned __int8 *a9)
{
  v14 = 3 * a7;
  v15 = 4 * a8;
  do
  {
    v16 = a2;
    a2 = (a2 + v15);
    v17 = a5;
    do
    {
      v18 = a9[1];
      v19 = a9[2];
      v23 = 0;
      v22 = 0;
      v20 = *a9;
      a9 += 3;
      result = TIFFYCbCrtoRGB(*(a1 + 104), v20, v18, v19, &v23 + 1, &v23, &v22);
      *v16++ = HIDWORD(v23) | (v23 << 8) | (v22 << 16) | 0xFF000000;
      ++a2;
      --v17;
    }

    while (v17);
    a9 += v14;
    --a6;
  }

  while (a6);
  return result;
}

uint64_t setorientation(uint64_t a1)
{
  result = 0;
  v3 = *(a1 + 32);
  if (v3 <= 4)
  {
    if (*(a1 + 32) <= 2u)
    {
      if (v3 != 1)
      {
        if (v3 != 2)
        {
          return result;
        }

LABEL_9:
        LOWORD(a1) = *(a1 + 34) - 1;
        if (a1 < 8u)
        {
          v4 = &unk_186227924;
          return v4[a1];
        }

        return 0;
      }

LABEL_18:
      LODWORD(a1) = *(a1 + 34) - 2;
      if (a1 < 7)
      {
        v4 = &unk_186227908;
        return v4[a1];
      }

      return 0;
    }

    if (v3 != 3)
    {
      if (v3 != 4)
      {
        return result;
      }

LABEL_16:
      LODWORD(a1) = *(a1 + 34) - 1;
      if (a1 < 7)
      {
        v4 = &unk_186227964;
        return v4[a1];
      }

      return 0;
    }

LABEL_20:
    LOWORD(a1) = *(a1 + 34) - 1;
    if (a1 < 8u)
    {
      v4 = &unk_186227944;
      return v4[a1];
    }

    return 0;
  }

  if (*(a1 + 32) > 6u)
  {
    if (v3 == 7)
    {
      goto LABEL_20;
    }

    if (v3 == 8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v3 == 5)
    {
      goto LABEL_18;
    }

    if (v3 == 6)
    {
      goto LABEL_9;
    }
  }

  return result;
}

float *putcontig8bitCIELab8(float *result, _DWORD *a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, unsigned __int8 *a9)
{
  v18 = 0;
  v19 = 0;
  v17 = 0;
  if (a6)
  {
    v9 = a6;
    v12 = result;
    v14 = a8;
    v15 = 3 * a7;
    do
    {
      if (a5)
      {
        v16 = a5;
        do
        {
          TIFFCIELabToXYZ(*(v12 + 14), *a9, a9[1], a9[2], &v19 + 1, &v19, &v18 + 1);
          result = TIFFXYZToRGB(*(v12 + 14), &v18, &v17 + 1, &v17, *(&v19 + 1), *&v19, *(&v18 + 1));
          *a2++ = v18 | (HIDWORD(v17) << 8) | (v17 << 16) | 0xFF000000;
          a9 += 3;
          --v16;
        }

        while (v16);
      }

      a2 += v14;
      a9 += v15;
      --v9;
    }

    while (v9);
  }

  return result;
}

float *putcontig8bitCIELab16(float *result, _DWORD *a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, unsigned __int16 *a9)
{
  v18 = 0;
  v19 = 0;
  v17 = 0;
  if (a6)
  {
    v9 = a6;
    v12 = result;
    v14 = a8;
    v15 = 3 * a7;
    do
    {
      if (a5)
      {
        v16 = a5;
        do
        {
          TIFFCIELab16ToXYZ(*(v12 + 14), *a9, a9[1], a9[2], &v19 + 1, &v19, &v18 + 1);
          result = TIFFXYZToRGB(*(v12 + 14), &v18, &v17 + 1, &v17, *(&v19 + 1), *&v19, *(&v18 + 1));
          *a2++ = v18 | (HIDWORD(v17) << 8) | (v17 << 16) | 0xFF000000;
          a9 += 3;
          --v16;
        }

        while (v16);
      }

      a2 += v14;
      a9 += v15;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t gtTileSeparate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v9 = a3;
  v12 = *a1;
  v119 = *(a1 + 72);
  v125 = 0;
  v13 = *(a1 + 16);
  v18 = _cg_TIFFTileSize(v12, a2, a3, a4, a5, a6, a7, a8);
  if (v13)
  {
    v19 = 4;
  }

  else
  {
    v19 = 3;
  }

  v20 = _TIFFMultiplySSize(v12, v19, v18, "gtTileSeparate", v14, v15, v16, v17);
  if (!v20)
  {
    return 0;
  }

  v27 = v20;
  v126[0] = 0;
  _cg_TIFFGetField(v12, 322, v21, v22, v23, v24, v25, v26, v126 + 4);
  _cg_TIFFGetField(v12, 323, v28, v29, v30, v31, v32, v33, v126);
  v34 = setorientation(a1);
  if (v34)
  {
    if (!((HIDWORD(v126[0]) + v9) >> 31))
    {
      v118 = v8 - 1;
      v37 = -v9 - HIDWORD(v126[0]);
      goto LABEL_11;
    }

LABEL_9:
    v38 = TIFFFileName(v12);
    TIFFErrorExtR(v12, v38, "%s", v39, v40, v41, v42, v43, "unsupported tile size (too wide)");
    return 0;
  }

  if (v9 + 0x7FFFFFFF < HIDWORD(v126[0]))
  {
    goto LABEL_9;
  }

  v118 = 0;
  v37 = v9 - HIDWORD(v126[0]);
LABEL_11:
  v117 = v37;
  v44 = *(a1 + 36);
  v45 = 0x1000300010001uLL >> (16 * v44);
  if (v44 >= 4)
  {
    LOWORD(v45) = 3;
  }

  v114 = v45;
  if (!HIDWORD(v126[0]) || !LODWORD(v126[0]))
  {
    v53 = TIFFFileName(v12);
    TIFFErrorExtR(v12, v53, "tile width or height is zero", v54, v55, v56, v57, v58, v103);
    return 0;
  }

  v46 = *(a1 + 140) % HIDWORD(v126[0]);
  if (v46 + v37 != v46 + v37)
  {
    v47 = TIFFFileName(v12);
    TIFFErrorExtR(v12, v47, "%s %lld", v48, v49, v50, v51, v52, "Invalid skew");
    return 0;
  }

  if (!v8)
  {
    v59 = 1;
    goto LABEL_75;
  }

  v106 = v46 + v37;
  v107 = v9;
  v113 = v27;
  v108 = a2;
  v61 = 0;
  v123 = 0;
  v120 = 0;
  v121 = 0;
  v124 = 0;
  v115 = (v44 < 4) & (0xBu >> (v44 & 0xF));
  v105 = *(a1 + 140) % HIDWORD(v126[0]);
  v104 = HIDWORD(v126[0]) - v46;
  v111 = 3 * v18;
  v112 = v18;
  v109 = v34;
  v110 = v8;
  do
  {
    v62 = LODWORD(v126[0]) + (*(a1 + 136) + v61) / LODWORD(v126[0]) * LODWORD(v126[0]) - (*(a1 + 136) + v61);
    if (LODWORD(v126[0]) + (*(a1 + 136) + v61) / LODWORD(v126[0]) * LODWORD(v126[0]) - *(a1 + 136) > v8)
    {
      v62 = v8 - v61;
    }

    v116 = v62;
    if (v9)
    {
      v63 = 0;
      v64 = *(a1 + 140);
      v65 = v106;
      LODWORD(v66) = v104;
      v67 = v105;
      do
      {
        v122 = v65;
        v68 = *(a1 + 136);
        if (v125)
        {
          if (_cg_TIFFReadTile(v12, v124, v64, v68 + v61, 0, 0, v35, v36) == -1 && *(a1 + 8))
          {
            goto LABEL_65;
          }

          if (v115)
          {
            goto LABEL_45;
          }
        }

        else
        {
          v76 = _TIFFReadTileAndAllocBuffer(v12, &v125, v113, v64, v68 + v61, 0, 0, v36);
          v124 = v125;
          if (v76 == -1 && (!v125 || *(a1 + 8)))
          {
            goto LABEL_65;
          }

          if (v115)
          {
            v77 = &v125[v111];
            if (!v13)
            {
              v77 = 0;
            }

            v123 = v77;
            v120 = v125;
            v121 = v125;
            goto LABEL_45;
          }

          v121 = &v125[v112];
          v120 = &v125[v112 + v112];
          v78 = &v120[v112];
          if (!v13)
          {
            v78 = 0;
          }

          v123 = v78;
        }

        if (_cg_TIFFReadTile(v12, v121, v64, *(a1 + 136) + v61, 0, 1, v74, v75) == -1 && *(a1 + 8) || _cg_TIFFReadTile(v12, v120, v64, *(a1 + 136) + v61, 0, 2, v79, v80) == -1 && *(a1 + 8))
        {
LABEL_65:
          v59 = 0;
          v94 = v109;
          v8 = v110;
          goto LABEL_66;
        }

LABEL_45:
        if (v13 && _cg_TIFFReadTile(v12, v123, v64, *(a1 + 136) + v61, 0, v114, v74, v75) == -1 && *(a1 + 8))
        {
          goto LABEL_65;
        }

        v81 = v9;
        v82 = v13;
        v83 = (*(a1 + 136) + v61) % LODWORD(v126[0]);
        v84 = _cg_TIFFTileRowSize(v12, v69, v70, v71, v72, v73, v74, v75) * v83;
        v13 = v82;
        v9 = v81;
        v85 = v84 + *(a1 + 30) * v67;
        v86 = HIDWORD(v126[0]) - (v81 - v63);
        v87 = v63 + v66 > v81;
        if (v63 + v66 <= v81)
        {
          v88 = v67;
        }

        else
        {
          v88 = v86;
        }

        if (v63 + v66 <= v81)
        {
          v66 = v66;
        }

        else
        {
          v66 = (v81 - v63);
        }

        if (v87)
        {
          v89 = v86 + v117;
        }

        else
        {
          v89 = v122;
        }

        v90 = &v124[v85];
        v91 = &v121[v85];
        v92 = &v120[v85];
        v93 = &v123[v85];
        if (!v13)
        {
          v93 = 0;
        }

        v119(a1, v108 + 4 * v107 * v118 + 4 * v63, v63, v118, v66, v116, v88, v89, v90, v91, v92, v93);
        v67 = 0;
        v63 = (v66 + v63);
        v64 = (v66 + v64);
        LODWORD(v66) = HIDWORD(v126[0]);
        v65 = v117;
      }

      while (v63 < v81);
    }

    v94 = v109;
    v8 = v110;
    if (v109)
    {
      v95 = -v116;
    }

    else
    {
      v95 = v116;
    }

    v118 += v95;
    v61 += v116;
  }

  while (v61 < v110);
  v59 = 1;
LABEL_66:
  if (v94 >= 2)
  {
    v96 = 0;
    for (i = 0; i != v8; ++i)
    {
      v98 = v108 + 4 * (i * v9);
      v99 = (v98 + 4 * v107 - 4);
      if (v98 < v99)
      {
        v100 = v108 + 4 + 4 * v96;
        do
        {
          v101 = *(v100 - 4);
          *(v100 - 4) = *v99;
          *v99-- = v101;
          v102 = v100 >= v99;
          v100 += 4;
        }

        while (!v102);
      }

      v96 += v9;
    }
  }

LABEL_75:
  free(v125);
  return v59;
}

uint64_t gtStripSeparate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v10 = a2;
  v12 = *a1;
  v121 = *(a1 + 72);
  v130 = 0;
  v14 = *(a1 + 16);
  v13 = *(a1 + 20);
  v15 = _cg_TIFFStripSize(v12, a2, a3, a4, a5, a6, a7, a8);
  if (v14)
  {
    v20 = 4;
  }

  else
  {
    v20 = 3;
  }

  v112 = v15;
  v21 = _TIFFMultiplySSize(v12, v20, v15, "gtStripSeparate", v16, v17, v18, v19);
  if (!v21)
  {
    return 0;
  }

  v22 = v21;
  v120 = setorientation(a1);
  if (v120)
  {
    if (a3 >> 30)
    {
      v29 = TIFFFileName(v12);
      v35 = "Width overflow";
LABEL_50:
      TIFFErrorExtR(v12, v29, v35, v30, v31, v32, v33, v34, v109);
      return 0;
    }

    v127 = v8 - 1;
    v119 = -2 * a3;
  }

  else
  {
    v127 = 0;
    v119 = 0;
  }

  v36 = *(a1 + 36);
  v37 = 0x1000300010001uLL >> (16 * v36);
  if (v36 >= 4)
  {
    LOWORD(v37) = 3;
  }

  v113 = v37;
  v129 = 0;
  _cg_TIFFGetFieldDefaulted(v12, 278, v23, v24, v25, v26, v27, v28, &v129);
  if (!v129)
  {
    v29 = TIFFFileName(v12);
    v35 = "rowsperstrip is zero";
    goto LABEL_50;
  }

  v45 = _cg_TIFFScanlineSize(v12, v38, v39, v40, v41, v42, v43, v44);
  v51 = v13 - a3;
  if (v13 < a3)
  {
    v51 = 0;
  }

  v118 = v51;
  if (!v8)
  {
    v99 = 1;
    goto LABEL_64;
  }

  v52 = v8;
  v110 = v22;
  v128 = 0;
  v123 = 0;
  v124 = 0;
  v53 = 0;
  v126 = 0;
  v115 = (v36 < 4) & (0xBu >> (v36 & 0xF));
  v54 = a3;
  v111 = 0x7FFFFFFFFFFFFFFFuLL / v45;
  v116 = v12;
  v117 = a3;
  v55 = v14;
  v114 = v45;
  v122 = v8;
  while (1)
  {
    v56 = *(a1 + 136) + v53;
    if (v129 - v56 % v129 + v53 <= v52)
    {
      v57 = v129 - v56 % v129;
    }

    else
    {
      v57 = v52 - v53;
    }

    v58 = v57 + v56 % v129;
    if (v45 >= 1 && v111 < v58)
    {
      v29 = TIFFFileName(v12);
      v35 = "Integer overflow in gtStripSeparate";
      goto LABEL_50;
    }

    v125 = v57;
    v59 = v10;
    v60 = v54;
    v61 = v130;
    v62 = v45;
    v63 = _cg_TIFFComputeStrip(v12, v56, 0, v46, v47, v48, v49, v50);
    v68 = v62 * v58;
    if (v61)
    {
      break;
    }

    v75 = _TIFFReadEncodedStripAndAllocBuffer(v12, v63, &v130, v110, v68, v65, v66, v67);
    v128 = v130;
    v54 = v60;
    v10 = v59;
    v52 = v122;
    v74 = v117;
    if (v75 == -1 && (!v130 || *(a1 + 8)))
    {
      v99 = 0;
      goto LABEL_57;
    }

    if (v115)
    {
      v76 = &v130[3 * v112];
      if (!v55)
      {
        v76 = 0;
      }

      v126 = v76;
      v123 = v130;
      v124 = v130;
      v12 = v116;
      goto LABEL_41;
    }

    v124 = &v130[v112];
    v123 = &v130[v112 + v112];
    v77 = &v123[v112];
    if (!v55)
    {
      v77 = 0;
    }

    v126 = v77;
    v12 = v116;
LABEL_37:
    v78 = _cg_TIFFComputeStrip(v12, v56, 1u, v69, v70, v71, v72, v73);
    if (_cg_TIFFReadEncodedStrip(v12, v78, v124, v68, v79, v80, v81, v82) == -1 && *(a1 + 8) || (v88 = _cg_TIFFComputeStrip(v12, v56, 2u, v83, v84, v85, v86, v87), _cg_TIFFReadEncodedStrip(v12, v88, v123, v68, v89, v90, v91, v92) == -1) && *(a1 + 8))
    {
LABEL_54:
      v99 = 0;
      v52 = v122;
      goto LABEL_57;
    }

LABEL_41:
    if (v55)
    {
      v93 = _cg_TIFFComputeStrip(v12, v56, v113, v69, v70, v71, v72, v73);
      if (_cg_TIFFReadEncodedStrip(v12, v93, v126, v68, v94, v95, v96, v97) == -1)
      {
        if (*(a1 + 8))
        {
          goto LABEL_54;
        }
      }
    }

    v109 = v128 + v114 * ((*(a1 + 136) + v53) % v129) + *(a1 + 30) * *(a1 + 140);
    v121(a1, v10 + 4 * v74 * v127, 0, v127, v54, v125, v118, v119);
    v45 = v114;
    if (v120)
    {
      v98 = -v125;
    }

    else
    {
      v98 = v125;
    }

    v127 += v98;
    v53 += v125;
    v52 = v122;
    if (v53 >= v122)
    {
      v99 = 1;
      goto LABEL_57;
    }
  }

  if (_cg_TIFFReadEncodedStrip(v12, v63, v128, v68, v64, v65, v66, v67) != -1 || !*(a1 + 8))
  {
    v54 = v60;
    v10 = v59;
    v12 = v116;
    v74 = v117;
    if (v115)
    {
      goto LABEL_41;
    }

    goto LABEL_37;
  }

  v99 = 0;
  LODWORD(v54) = v60;
  v10 = v59;
  v52 = v122;
  v74 = v117;
LABEL_57:
  if (v120 >= 2)
  {
    v100 = 0;
    v101 = 0;
    v102 = v52;
    do
    {
      v103 = v10 + 4 * (v101 * v54);
      v104 = (v103 + 4 * v74 - 4);
      if (v103 < v104)
      {
        v105 = v10 + 4 + 4 * v100;
        do
        {
          v106 = *(v105 - 4);
          *(v105 - 4) = *v104;
          *v104-- = v106;
          v107 = v105 >= v104;
          v105 += 4;
        }

        while (!v107);
      }

      ++v101;
      v100 += v54;
    }

    while (v101 != v102);
  }

LABEL_64:
  free(v130);
  return v99;
}

void putRGBAAseparate8bittile(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6, int a7, int a8, unsigned __int8 *a9, unsigned __int8 *a10, unsigned __int8 *a11, unsigned __int8 *a12)
{
  if (a6)
  {
    while (1)
    {
      v16 = a5;
      if (a5 >= 8)
      {
        do
        {
          *a2 = *a9 | (*a10 << 8) | (*a11 << 16) | (*a12 << 24);
          a2[1] = a9[1] | (a10[1] << 8) | (a11[1] << 16) | (a12[1] << 24);
          a2[2] = a9[2] | (a10[2] << 8) | (a11[2] << 16) | (a12[2] << 24);
          a2[3] = a9[3] | (a10[3] << 8) | (a11[3] << 16) | (a12[3] << 24);
          a2[4] = a9[4] | (a10[4] << 8) | (a11[4] << 16) | (a12[4] << 24);
          a2[5] = a9[5] | (a10[5] << 8) | (a11[5] << 16) | (a12[5] << 24);
          a2[6] = a9[6] | (a10[6] << 8) | (a11[6] << 16) | (a12[6] << 24);
          v17 = a9 + 8;
          v18 = a9[7] | (a10[7] << 8) | (a11[7] << 16) | (a12[7] << 24);
          v19 = a10 + 8;
          v20 = a11 + 8;
          v21 = a12 + 8;
          v22 = a2 + 8;
          v16 -= 8;
          a12 += 8;
          a11 += 8;
          a2[7] = v18;
          a10 += 8;
          a9 = v17;
          a2 += 8;
        }

        while (v16 > 7);
        a2 = v22;
        a9 = v17;
        a10 = v19;
        a11 = v20;
        a12 = v21;
      }

      if (v16 > 3)
      {
        break;
      }

      if (v16 <= 1)
      {
        if (!v16)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      if (v16 != 2)
      {
        goto LABEL_19;
      }

LABEL_20:
      v59 = *a9++;
      v58 = v59;
      v60 = *a10++;
      v61 = v58 | (v60 << 8);
      v62 = *a11++;
      v63 = v61 | (v62 << 16);
      v64 = *a12++;
      *a2++ = v63 | (v64 << 24);
LABEL_21:
      v66 = *a9++;
      v65 = v66;
      v67 = *a10++;
      v68 = v65 | (v67 << 8);
      v69 = *a11++;
      v70 = v68 | (v69 << 16);
      v71 = *a12++;
      *a2++ = v70 | (v71 << 24);
LABEL_22:
      a9 += a7;
      a10 += a7;
      a11 += a7;
      a12 += a7;
      a2 += a8;
      if (!--a6)
      {
        return;
      }
    }

    if (v16 > 5)
    {
      if (v16 != 6)
      {
        v24 = *a9++;
        v23 = v24;
        v25 = *a10++;
        v26 = v23 | (v25 << 8);
        v27 = *a11++;
        v28 = v26 | (v27 << 16);
        v29 = *a12++;
        *a2++ = v28 | (v29 << 24);
      }

      v31 = *a9++;
      v30 = v31;
      v32 = *a10++;
      v33 = v30 | (v32 << 8);
      v34 = *a11++;
      v35 = v33 | (v34 << 16);
      v36 = *a12++;
      *a2++ = v35 | (v36 << 24);
    }

    else if (v16 == 4)
    {
      goto LABEL_18;
    }

    v38 = *a9++;
    v37 = v38;
    v39 = *a10++;
    v40 = v37 | (v39 << 8);
    v41 = *a11++;
    v42 = v40 | (v41 << 16);
    v43 = *a12++;
    *a2++ = v42 | (v43 << 24);
LABEL_18:
    v45 = *a9++;
    v44 = v45;
    v46 = *a10++;
    v47 = v44 | (v46 << 8);
    v48 = *a11++;
    v49 = v47 | (v48 << 16);
    v50 = *a12++;
    *a2++ = v49 | (v50 << 24);
LABEL_19:
    v52 = *a9++;
    v51 = v52;
    v53 = *a10++;
    v54 = v51 | (v53 << 8);
    v55 = *a11++;
    v56 = v54 | (v55 << 16);
    v57 = *a12++;
    *a2++ = v56 | (v57 << 24);
    goto LABEL_20;
  }
}

uint64_t putRGBUAseparate8bittile(uint64_t result, int *a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, unsigned __int8 *a9, unsigned __int8 *a10, unsigned __int8 *a11, unsigned __int8 *a12)
{
  for (; a6; --a6)
  {
    if (a5)
    {
      v16 = *(result + 120);
      v17 = a5;
      do
      {
        v19 = *a12++;
        v18 = v19;
        v20 = v16 + (v19 << 8);
        v21 = *a9++;
        v22 = *(v20 + v21);
        v23 = *a10++;
        v24 = *(v20 + v23);
        v25 = *a11++;
        *a2++ = v22 | (v18 << 24) | (v24 << 8) | (*(v20 + v25) << 16);
        --v17;
      }

      while (v17);
    }

    a9 += a7;
    a10 += a7;
    a11 += a7;
    a12 += a7;
    a2 += a8;
  }

  return result;
}

void putRGBseparate8bittile(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6, int a7, int a8, unsigned __int8 *a9, unsigned __int8 *a10, unsigned __int8 *a11)
{
  if (a6)
  {
    while (1)
    {
      v14 = a5;
      if (a5 >= 8)
      {
        do
        {
          *a2 = *a9 | (*a10 << 8) | (*a11 << 16) | 0xFF000000;
          a2[1] = a9[1] | (a10[1] << 8) | (a11[1] << 16) | 0xFF000000;
          a2[2] = a9[2] | (a10[2] << 8) | (a11[2] << 16) | 0xFF000000;
          a2[3] = a9[3] | (a10[3] << 8) | (a11[3] << 16) | 0xFF000000;
          a2[4] = a9[4] | (a10[4] << 8) | (a11[4] << 16) | 0xFF000000;
          a2[5] = a9[5] | (a10[5] << 8) | (a11[5] << 16) | 0xFF000000;
          a2[6] = a9[6] | (a10[6] << 8) | (a11[6] << 16) | 0xFF000000;
          v15 = a9 + 8;
          v16 = a10 + 8;
          v17 = a11 + 8;
          v18 = a2 + 8;
          v14 -= 8;
          a2[7] = a9[7] | (a10[7] << 8) | (a11[7] << 16) | 0xFF000000;
          a2 += 8;
          a11 += 8;
          a10 += 8;
          a9 += 8;
        }

        while (v14 > 7);
        a9 = v15;
        a10 = v16;
        a11 = v17;
        a2 = v18;
      }

      if (v14 > 3)
      {
        break;
      }

      if (v14 <= 1)
      {
        if (!v14)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      if (v14 != 2)
      {
        goto LABEL_19;
      }

LABEL_20:
      v45 = *a9++;
      v44 = v45;
      v47 = *a10++;
      v46 = v47;
      v48 = *a11++;
      *a2++ = v44 | (v46 << 8) | (v48 << 16) | 0xFF000000;
LABEL_21:
      v50 = *a9++;
      v49 = v50;
      v52 = *a10++;
      v51 = v52;
      v53 = *a11++;
      *a2++ = v49 | (v51 << 8) | (v53 << 16) | 0xFF000000;
LABEL_22:
      a9 += a7;
      a10 += a7;
      a11 += a7;
      a2 += a8;
      if (!--a6)
      {
        return;
      }
    }

    if (v14 > 5)
    {
      if (v14 != 6)
      {
        v20 = *a9++;
        v19 = v20;
        v22 = *a10++;
        v21 = v22;
        v23 = *a11++;
        *a2++ = v19 | (v21 << 8) | (v23 << 16) | 0xFF000000;
      }

      v25 = *a9++;
      v24 = v25;
      v27 = *a10++;
      v26 = v27;
      v28 = *a11++;
      *a2++ = v24 | (v26 << 8) | (v28 << 16) | 0xFF000000;
    }

    else if (v14 == 4)
    {
      goto LABEL_18;
    }

    v30 = *a9++;
    v29 = v30;
    v32 = *a10++;
    v31 = v32;
    v33 = *a11++;
    *a2++ = v29 | (v31 << 8) | (v33 << 16) | 0xFF000000;
LABEL_18:
    v35 = *a9++;
    v34 = v35;
    v37 = *a10++;
    v36 = v37;
    v38 = *a11++;
    *a2++ = v34 | (v36 << 8) | (v38 << 16) | 0xFF000000;
LABEL_19:
    v40 = *a9++;
    v39 = v40;
    v42 = *a10++;
    v41 = v42;
    v43 = *a11++;
    *a2++ = v39 | (v41 << 8) | (v43 << 16) | 0xFF000000;
    goto LABEL_20;
  }
}

uint64_t putRGBAAseparate16bittile(uint64_t result, int *a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  for (; a6; --a6)
  {
    if (a5)
    {
      v16 = 0;
      v17 = *(result + 128);
      v18 = a5;
      do
      {
        *a2++ = *(v17 + *(a9 + v16)) | (*(v17 + *(a10 + v16)) << 8) | (*(v17 + *(a11 + v16)) << 16) | (*(v17 + *(a12 + v16)) << 24);
        v16 += 2;
        --v18;
      }

      while (v18);
      a12 += v16;
      a11 += v16;
      a10 += v16;
      a9 += v16;
    }

    a9 += 2 * a7;
    a10 += 2 * a7;
    a11 += 2 * a7;
    a12 += 2 * a7;
    a2 += a8;
  }

  return result;
}

uint64_t putRGBUAseparate16bittile(uint64_t result, int *a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  for (; a6; --a6)
  {
    if (a5)
    {
      v16 = 0;
      v18 = *(result + 120);
      v17 = *(result + 128);
      v19 = a5;
      do
      {
        v20 = v18 + (*(v17 + *(a12 + v16)) << 8);
        *a2++ = *(v20 + *(v17 + *(a9 + v16))) | (*(v17 + *(a12 + v16)) << 24) | (*(v20 + *(v17 + *(a10 + v16))) << 8) | (*(v20 + *(v17 + *(a11 + v16))) << 16);
        v16 += 2;
        --v19;
      }

      while (v19);
      a12 += v16;
      a11 += v16;
      a10 += v16;
      a9 += v16;
    }

    a9 += 2 * a7;
    a10 += 2 * a7;
    a11 += 2 * a7;
    a12 += 2 * a7;
    a2 += a8;
  }

  return result;
}

uint64_t putRGBseparate16bittile(uint64_t result, unsigned int *a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, unsigned __int16 *a9, unsigned __int16 *a10, unsigned __int16 *a11)
{
  for (; a6; --a6)
  {
    if (a5)
    {
      v14 = *(result + 128);
      v15 = a5;
      do
      {
        v16 = *a9++;
        v17 = *(v14 + v16);
        v18 = *a10++;
        v19 = *(v14 + v18);
        v20 = *a11++;
        *a2++ = v17 | (v19 << 8) | (*(v14 + v20) << 16) | 0xFF000000;
        --v15;
      }

      while (v15);
    }

    a9 += a7;
    a10 += a7;
    a11 += a7;
    a2 += a8;
  }

  return result;
}

uint64_t putCMYKseparate8bittile(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, unsigned __int8 *a9, unsigned __int8 *a10, unsigned __int8 *a11, unsigned __int8 *a12)
{
  for (; a6; --a6)
  {
    if (a5)
    {
      v16 = a5;
      do
      {
        v18 = *a12++;
        v17 = v18;
        v19 = *a9++;
        v17 ^= 0xFFu;
        v20 = 32897 * (v19 ^ 0xFF) * v17;
        v21 = *a10++;
        v22 = 32897 * (v21 ^ 0xFF) * v17;
        v23 = *a11++;
        result = (v22 >> 15) & 0x1FF00;
        *a2++ = result | (v20 >> 23) | ((32897 * (v23 ^ 0xFFu) * v17) >> 7) & 0xFF0000 | 0xFF000000;
        --v16;
      }

      while (v16);
    }

    a9 += a7;
    a10 += a7;
    a11 += a7;
    a12 += a7;
    a2 += a8;
  }

  return result;
}

void *putseparate8bitYCbCr11tile(void *result, unsigned int *a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, unsigned __int8 *a9, unsigned __int8 *a10, unsigned __int8 *a11)
{
  if (a6)
  {
    v11 = a6;
    v13 = result;
    v16 = a7;
    v17 = 4 * a8;
    do
    {
      v19 = a2;
      a2 = (a2 + v17);
      v20 = a5;
      do
      {
        v28 = 0;
        v27 = 0;
        v22 = *a9++;
        v21 = v22;
        v24 = *a10++;
        v23 = v24;
        v25 = *a11++;
        result = TIFFYCbCrtoRGB(v13[13], v21, v23, v25, &v28 + 1, &v28, &v27);
        *v19++ = HIDWORD(v28) | (v28 << 8) | (v27 << 16) | 0xFF000000;
        ++a2;
        --v20;
      }

      while (v20);
      a9 += v16;
      a10 += v16;
      a11 += v16;
      --v11;
    }

    while (v11);
  }

  return result;
}

void IIOScanner::IIOScanner(IIOScanner *this, unsigned __int8 *a2, uint64_t a3, char a4)
{
  *this = &unk_1EF4DE2D8;
  *(this + 1) = a2;
  v5 = (this + 8);
  *(this + 6) = 0;
  *(this + 7) = 0;
  if (a2)
  {
    if (a3 > 0)
    {
      *(this + 2) = a3;
      *(this + 3) = 0;
      *(this + 5) = 0;
      *(this + 68) = a4;
      *(this + 16) = 0;
      return;
    }

    LogError("IIOScanner", 96, "*** IIOScanner: created with invalid buffer size: %llu\n");
  }

  else
  {
    LogError("IIOScanner", 88, "*** IIOScanner: created with NULL buffer\n");
  }

  *v5 = 0;
  v5[1] = 0;
  *(this + 16) = -50;
}

uint64_t IIOScanner::getVal8(IIOScanner *this)
{
  v5 = *(this + 1);
  if (!v5 || (v6 = *(this + 3), (v6 + 1) > *(this + 2)))
  {
    v10 = v1;
    LogError("getVal8", 163, "*** IIOScanner::getVal8 reached EOF\n", v2, v10, v3, v4);
    *(this + 16) = -39;
    exception = __cxa_allocate_exception(4uLL);
    *exception = -39;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }

  *(this + 3) = v6 + 1;
  return *(v5 + v6);
}

uint64_t IIOScanner::lookupVal8(IIOScanner *this)
{
  Val8 = IIOScanner::getVal8(this);
  v3 = *(this + 5);
  if (v3)
  {
    LOBYTE(Val8) = *(v3 + Val8);
  }

  return Val8;
}

uint64_t IIOScanner::getVal24(IIOScanner *this)
{
  v5 = *(this + 1);
  if (!v5 || (v6 = *(this + 3), v7 = v6 + 3, (v6 + 3) > *(this + 2)))
  {
    v15 = v1;
    LogError("getVal24", 210, "*** IIOScanner::getVal24 reached EOF\n", v2, v15, v3, v4);
    *(this + 16) = -39;
    exception = __cxa_allocate_exception(4uLL);
    *exception = -39;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }

  v8 = (v5 + v6);
  if (*(this + 68) == 1)
  {
    v10 = *v8++;
    v9 = v10;
  }

  else
  {
    v9 = __rev16(*(v8 + 1));
  }

  v11 = v9 | (*v8 << 16);
  *(this + 3) = v7;
  return v11;
}

uint64_t IIOScanner::getOSType(IIOScanner *this)
{
  v5 = *(this + 1);
  if (!v5 || (v6 = *(this + 3), (v6 + 4) > *(this + 2)))
  {
    v11 = v1;
    LogError("getOSType", 248, "*** IIOScanner::getOSType reached EOF\n", v2, v11, v3, v4);
    *(this + 16) = -39;
    exception = __cxa_allocate_exception(4uLL);
    *exception = -39;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }

  LODWORD(v5) = *(v5 + v6);
  v7 = bswap32(v5);
  if (*(this + 68))
  {
    v5 = v7;
  }

  else
  {
    v5 = v5;
  }

  *(this + 3) = v6 + 4;
  return v5;
}

unint64_t IIOScanner::getVal64(IIOScanner *this)
{
  v5 = *(this + 1);
  if (!v5 || (v6 = *(this + 3), (v6 + 8) > *(this + 2)))
  {
    v12 = v1;
    LogError("getVal64", 268, "*** IIOScanner::getVal64 reached EOF\n", v2, v12, v3, v4);
    *(this + 16) = -39;
    exception = __cxa_allocate_exception(4uLL);
    *exception = -39;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }

  v7 = *(v5 + v6);
  v8 = bswap64(v7);
  if (!*(this + 68))
  {
    v7 = v8;
  }

  *(this + 3) = v6 + 8;
  return v7;
}

unint64_t IIOScanner::getTiffOffset(IIOScanner *this)
{
  if (*(this + 8) == 4)
  {
    return IIOScanner::getVal32(this);
  }

  return IIOScanner::getVal64(this);
}

unint64_t IIOScanner::getIFDCount(IIOScanner *this)
{
  if (*(this + 8) == 4)
  {
    return IIOScanner::getVal16(this);
  }

  return IIOScanner::getVal64(this);
}

unint64_t IIOScanner::sizeForTypeAndCount(IIOScanner *this, unsigned int a2, unint64_t a3)
{
  v3 = a2;
  v4 = 1;
  switch(a2)
  {
    case 0u:
      return v3;
    case 1u:
    case 2u:
    case 6u:
    case 7u:
      goto LABEL_5;
    case 3u:
    case 8u:
      v4 = 2;
      if (!a3)
      {
        return 0;
      }

      goto LABEL_6;
    case 4u:
    case 9u:
    case 0xBu:
    case 0xDu:
      v4 = 4;
LABEL_5:
      if (a3)
      {
        goto LABEL_6;
      }

      return 0;
    case 5u:
    case 0xAu:
    case 0xCu:
    case 0x10u:
    case 0x11u:
    case 0x12u:
      v4 = 8;
      if (!a3)
      {
        return 0;
      }

LABEL_6:
      v3 = v4 * a3;
      if (!is_mul_ok(v4, a3) || (v3 & 0x8000000000000000) != 0)
      {
        v5 = this;
        LogError("sizeForTypeAndCount", 382, "*** ERROR: IIOScanner::sizeForTypeAndCount: result size too large (%llu bytes)\n");
LABEL_9:
        *(v5 + 16) = -39;
        exception = __cxa_allocate_exception(4uLL);
        *exception = -39;
        __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
      }

      return v3;
    default:
      v5 = this;
      LogError("sizeForTypeAndCount", 368, "*** IIOScanner::sizeForTypeAndCount: unknown TIFF type %u\n");
      goto LABEL_9;
  }
}

uint64_t IIOScanner::getTiffTag(uint64_t this, uint64_t a2)
{
  if (a2)
  {
    v3 = this;
    if ((*(this + 24) + 12) > *(this + 16))
    {
      *(a2 + 8) = 0;
      *a2 = 0;
      LogError("getTiffTag", 414, "*** IIOScanner::getTiffTag reached EOF\n");
      *(v3 + 64) = -39;
      exception = __cxa_allocate_exception(4uLL);
      *exception = -39;
      __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
    }

    *a2 = IIOScanner::getVal16(this);
    *(a2 + 2) = IIOScanner::getVal16(v3);
    Val32 = IIOScanner::getVal32(v3);
    *(a2 + 4) = Val32;
    v5 = IIOScanner::sizeForTypeAndCount(v3, *(a2 + 2), Val32);
    this = IIOScanner::getVal32(v3);
    v6 = v5 - 1;
    if ((v5 - 1) <= 2)
    {
      v7 = dword_186227990[v6];
      v8 = 24 - 8 * v6;
      if (*(v3 + 68))
      {
        v8 = 0;
      }

      this = (this >> v8) & v7;
    }

    *(a2 + 8) = this;
  }

  return this;
}

unint64_t IIOScanner::getBigTiffTag(unint64_t this, uint64_t a2)
{
  if (a2)
  {
    v3 = this;
    if ((*(this + 24) + 20) > *(this + 16))
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      LogError("getBigTiffTag", 449, "*** IIOScanner::getBigTiffTag reached EOF\n");
      *(v3 + 64) = -39;
      exception = __cxa_allocate_exception(4uLL);
      *exception = -39;
      __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
    }

    *a2 = IIOScanner::getVal16(this);
    *(a2 + 2) = IIOScanner::getVal16(v3);
    Val64 = IIOScanner::getVal64(v3);
    *(a2 + 4) = Val64;
    v5 = IIOScanner::sizeForTypeAndCount(v3, *(a2 + 2), Val64);
    this = IIOScanner::getVal64(v3);
    v6 = v5 - 1;
    if (v5 - 1 <= 6)
    {
      v7 = qword_1862279A0[v6];
      v8 = 56 - 8 * v6;
      if (*(v3 + 68))
      {
        v8 = 0;
      }

      this = (this >> v8) & v7;
    }

    *(a2 + 12) = this;
  }

  return this;
}

uint64_t IIOScanner::getString(IIOScanner *this)
{
  v2 = *(this + 2);
  v1 = *(this + 3);
  if (v1 >= v2)
  {
    return 0;
  }

  v3 = *(this + 1);
  v4 = v3 + v1;
  if (*(v3 + v1))
  {
    v5 = v1 + 1;
    while (1)
    {
      v6 = v5;
      *(this + 3) = v5;
      if (v2 == v5)
      {
        break;
      }

      ++v5;
      if (!*(v3 + v6))
      {
        v7 = v6;
        goto LABEL_10;
      }
    }

    v4 = 0;
    v7 = v2;
LABEL_10:
    v8 = v6 < v2;
  }

  else
  {
    v8 = 1;
    v7 = *(this + 3);
  }

  if (v8)
  {
    v1 = v7 + 1;
  }

  *(this + 3) = v1;
  return v4;
}

uint64_t IIOScanner::seek(IIOScanner *this, uint64_t a2, int a3)
{
  if (a3)
  {
    if (a3 == 2)
    {
      if (a2 >= 1)
      {
        v3 = *(this + 2);
        if (v3 > (a2 ^ 0x7FFFFFFFFFFFFFFFLL))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      }

      v3 = *(this + 2);
      if (a2)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (a3 != 1)
      {
        a2 = *(this + 3);
        goto LABEL_17;
      }

      if (a2 >= 1)
      {
        v3 = *(this + 3);
        if (v3 > (a2 ^ 0x7FFFFFFFFFFFFFFFLL))
        {
          a2 = *(this + 2);
          goto LABEL_17;
        }

        goto LABEL_16;
      }

      v3 = *(this + 3);
      if (a2)
      {
LABEL_14:
        if (v3 < -a2)
        {
          v3 = 0;
          goto LABEL_18;
        }
      }
    }

LABEL_16:
    a2 += v3;
  }

LABEL_17:
  v3 = a2;
  if (a2 < 0)
  {
    v3 = 0;
    goto LABEL_22;
  }

LABEL_18:
  if (v3 >= *(this + 2))
  {
    v3 = *(this + 2);
  }

LABEL_22:
  *(this + 3) = v3;
  return v3;
}

size_t IIOScanner::getBytesAtOffset(IIOScanner *this, void *__dst, uint64_t a3, size_t __n)
{
  v4 = *(this + 1);
  if (!v4)
  {
    return 0;
  }

  v5 = __n;
  if (__n + a3 > *(this + 2))
  {
    return 0;
  }

  memcpy(__dst, (v4 + a3), __n);
  return v5;
}

size_t IIOScanner::getBytes(IIOScanner *this, void *__dst, size_t __n)
{
  v4 = *(this + 3);
  v5 = *(this + 1);
  if (v5 && (v6 = __n, v4 + __n <= *(this + 2)))
  {
    memcpy(__dst, (v5 + v4), __n);
    v4 = *(this + 3);
  }

  else
  {
    v6 = 0;
  }

  *(this + 3) = v4 + v6;
  return v6;
}

void ImageIO_XMP_IO::New_ImageIO_XMP_IO(ImageIO_XMP_IO *this, __CFData *a2)
{
  if (this)
  {
    v2 = CFGetTypeID(this);
    if (v2 == CFDataGetTypeID())
    {
      operator new();
    }
  }

  exception = __cxa_allocate_exception(0x18uLL);
  *exception = 4;
  exception[1] = "New_ImageIO_XMP_IO, data must be a valid non-NULL CFMutableDataRef";
  *(exception + 16) = 0;
}

void ImageIO_XMP_IO::ImageIO_XMP_IO(ImageIO_XMP_IO *this, CFTypeRef cf)
{
  *this = &unk_1EF4DE308;
  v3 = CFRetain(cf);
  *(this + 4) = 0;
  *(this + 24) = 0;
  *(this + 1) = v3;
  *(this + 2) = 0;
}

size_t ImageIO_XMP_IO::Read(CFDataRef *this, void *a2, int a3)
{
  LODWORD(v3) = a3;
  BytePtr = CFDataGetBytePtr(this[1]);
  Length = CFDataGetLength(this[1]);
  v8 = this[2];
  if (v8 + v3 <= Length)
  {
    v3 = v3;
  }

  else
  {
    v3 = (Length - v8);
  }

  memmove(a2, v8 + BytePtr, v3);
  this[2] = (this[2] + v3);
  return v3;
}

void ImageIO_XMP_IO::Write(ImageIO_XMP_IO *this, const UInt8 *a2, unsigned int a3)
{
  v6 = *(this + 2);
  if (v6 == CFDataGetLength(*(this + 1)))
  {
    CFDataAppendBytes(*(this + 1), a2, a3);
  }

  else
  {
    v7 = *(this + 2) + a3;
    if (v7 > CFDataGetLength(*(this + 1)))
    {
      v8 = *(this + 1);
      v9 = *(this + 2) + a3;
      Length = CFDataGetLength(v8);
      CFDataIncreaseLength(v8, v9 - Length);
    }

    MutableBytePtr = CFDataGetMutableBytePtr(*(this + 1));
    memmove(&MutableBytePtr[*(this + 2)], a2, a3);
  }

  *(this + 2) += a3;
}

uint64_t ImageIO_XMP_IO::Seek(uint64_t a1, uint64_t a2, int a3)
{
  Length = CFDataGetLength(*(a1 + 8));
  switch(a3)
  {
    case 0:
      goto LABEL_6;
    case 1:
      a2 += *(a1 + 16);
      goto LABEL_6;
    case 2:
      a2 += Length;
LABEL_6:
      *(a1 + 16) = a2;
      goto LABEL_8;
  }

  a2 = *(a1 + 16);
LABEL_8:
  if (a2 <= Length)
  {
    if (a2 < 0)
    {
      a2 = 0;
      *(a1 + 16) = 0;
    }
  }

  else
  {
    v7 = *(a1 + 8);
    v8 = CFDataGetLength(v7);
    CFDataIncreaseLength(v7, a2 - v8);
    return *(a1 + 16);
  }

  return a2;
}

void ImageIO_XMP_IO::Truncate(CFDataRef *this, CFIndex a2)
{
  if (CFDataGetLength(this[1]) < a2)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 7;
    exception[1] = "ImageIO_XMP_IO::Truncate, new length is longer than current length";
    *(exception + 16) = 0;
  }

  if (this[2] > a2)
  {
    this[2] = a2;
  }

  v4 = this[1];

  CFDataSetLength(v4, a2);
}

CFDataRef ImageIO_XMP_IO::DeriveTemp(CFDataRef *this)
{
  if (!this[4])
  {
    MutableCopy = CFDataCreateMutableCopy(*MEMORY[0x1E695E480], 0, this[1]);
    if (MutableCopy)
    {
      ImageIO_XMP_IO::New_ImageIO_XMP_IO(MutableCopy, v3);
    }
  }

  return this[4];
}

uint64_t ImageIO_XMP_IO::AbsorbTemp(ImageIO_XMP_IO *this)
{
  v2 = *(this + 4);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 9;
    exception[1] = "XMPFiles_IO::AbsorbTemp, no temp to absorb";
    *(exception + 16) = 0;
  }

  v3 = v2[1];
  v4 = (*(*v2 + 24))(v2);
  CFDataSetLength(*(this + 1), v4);
  v5 = *(this + 1);
  BytePtr = CFDataGetBytePtr(v3);
  v11.location = 0;
  v11.length = v4;
  CFDataReplaceBytes(v5, v11, BytePtr, v4);
  v7 = *(*this + 56);

  return v7(this);
}

uint64_t ImageIO_XMP_IO::DeleteTemp(ImageIO_XMP_IO *this)
{
  result = *(this + 4);
  if (result)
  {
    result = (*(*result + 72))(result);
    *(this + 4) = 0;
  }

  return result;
}

void ImageIO_XMP_IO::~ImageIO_XMP_IO(ImageIO_XMP_IO *this)
{
  *this = &unk_1EF4DE308;
  v3 = (this + 8);
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  *v3 = 0;
  v3[1] = 0;
  if (*(this + 4))
  {
    (*(*this + 56))(this);
  }
}

{
  ImageIO_XMP_IO::~ImageIO_XMP_IO(this);

  JUMPOUT(0x186602850);
}

void IIO_Writer_ICO::~IIO_Writer_ICO(IIO_Writer_ICO *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

uint64_t IIO_Writer_ICO::write(IIO_Writer_ICO *this, IIOImageWriteSession *a2, IIOImageDestination *a3)
{
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "IIO_Writer_ICO::write", 0, 0, -1, 0);
  }

  v8 = 0;
  memset(v7, 0, sizeof(v7));
  ICOWritePlugin::ICOWritePlugin(v7, a2, a3);
  v5 = ICOWritePlugin::writeAll(v7);
  ICOWritePlugin::~ICOWritePlugin(v7);
  return v5;
}

void sub_1860DE12C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ICOWritePlugin::~ICOWritePlugin(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1860DE118);
}

void JP2WritePlugin::~JP2WritePlugin(JP2WritePlugin *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

uint64_t JP2WritePlugin::WriteProc(JP2WritePlugin *this, IIOImageDestination *a2, void *a3, void *a4, void *a5)
{
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "JP2WritePlugin::WriteProc", 0, 0, -1, 0);
  }

  v12 = 0;
  memset(v11, 0, sizeof(v11));
  IIOWritePlugin::IIOWritePlugin(v11, this, a2, 1246769696);
  *&v11[0] = &unk_1EF4DE400;
  v7 = IIOWritePlugin::writeAll(v11);
  _cg_jpeg_mem_term(v11, v8, v9);
  return v7;
}

void sub_1860DE268(void *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  _cg_jpeg_mem_term(&a9, a2, a3);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1860DE250);
}

void IIO_Writer_TIFF::~IIO_Writer_TIFF(IIO_Writer_TIFF *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

uint64_t IIO_Writer_TIFF::write(IIO_Writer_TIFF *this, IIOImageWriteSession *a2, IIOImageDestination *a3)
{
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "IIO_Writer_TIFF::write", 0, 0, -1, 0);
  }

  v8 = 0;
  memset(v7, 0, sizeof(v7));
  TIFFWritePlugin::TIFFWritePlugin(v7, a2, a3);
  v5 = TIFFWritePlugin::writeAll(v7);
  TIFFWritePlugin::~TIFFWritePlugin(v7);
  return v5;
}

void sub_1860DE364(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  TIFFWritePlugin::~TIFFWritePlugin(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1860DE350);
}

float ASTCBitsPerPixel(int a1, int a2)
{
  if (a1 != 4 || (result = 8.0, a2 != 4))
  {
    if (a1 == 5 && a2 == 5)
    {
      return 5.12;
    }

    else if (a1 == 6 && a2 == 6)
    {
      return 3.556;
    }

    else if (a1 != 8 || (result = 2.0, a2 != 8))
    {
      if (a1 == 4 && a2 == 6)
      {
        return 5.333;
      }

      else if (a1 == 8 && a2 == 10)
      {
        return 1.6;
      }

      else
      {
        v3 = a2 == 10 && a1 == 12;
        result = 1.067;
        if (!v3)
        {
          return 8.0;
        }
      }
    }
  }

  return result;
}

void IIOTextureHandler::setImp(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 16);
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v4);
  }
}

void sub_1860DE508(_Unwind_Exception *a1)
{
  v3 = *(v1 + 63);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v3);
  }

  IIOReadPlugin::~IIOReadPlugin(v1);
  _Unwind_Resume(a1);
}

uint64_t CommonASTCReadPlugin::loadDataFromXPCObject(CommonASTCReadPlugin *this, void *a2)
{
  result = IIOReadPlugin::loadDataFromXPCObject(this, a2);
  if (result)
  {
    *(this + 61) = 0;
  }

  else
  {
    v7[0] = 0;
    data = xpc_dictionary_get_data(a2, "iio_xpc_plugin_data_common_astc", v7);
    if (v7[0] == 24)
    {
      v6 = data[2];
      *(this + 29) = *data;
      *(this + 60) = v6;
      *(this + 61) = 0;
      std::allocate_shared[abi:fe200100]<ASTCTextureImp,std::allocator<ASTCTextureImp>,unsigned int &,0>();
    }

    *(this + 61) = 0;
    return 4294967246;
  }

  return result;
}

uint64_t CommonASTCReadPlugin::saveDataToXPCObject(CommonASTCReadPlugin *this, void *a2)
{
  v4 = IIOReadPlugin::saveDataToXPCObject(this, a2);
  if (!v4)
  {
    iio_xpc_dictionary_add_databuffer(a2, "iio_xpc_plugin_data_common_astc", this + 464, 0x18uLL);
  }

  return v4;
}

void CommonASTCWritePlugin::CommonASTCWritePlugin(CommonASTCWritePlugin *this, IIOImageWriteSession *a2, IIOImageDestination *a3, int a4)
{
  IIOWritePlugin::IIOWritePlugin(this, a2, a3, a4);
  *v4 = &unk_1EF4DE668;
  *(v4 + 44) = 0x400000044;
  *(v4 + 52) = 4;
  *(v4 + 40) = 0;
  *(v4 + 57) = 0;
  *(v4 + 61) = 0;
}

const __CFDictionary *CommonASTCWritePlugin::handleProperties(const __CFDictionary *this, IIODictionary *a2)
{
  if (a2)
  {
    v3 = this;
    if (IIODictionary::containsKey(a2, @"kCGImageDestinationLossyCompressionQuality"))
    {
      FloatForKey = IIODictionary::getFloatForKey(a2, @"kCGImageDestinationLossyCompressionQuality");
      v5 = 0.0;
      if (FloatForKey >= 0.0)
      {
        v5 = FloatForKey;
        if (FloatForKey > 1.0)
        {
          v5 = 1.0;
        }
      }

      v6 = (1.0 - v5) * 0.0032;
      *(v3 + 40) = v6;
    }

    else
    {
      *(v3 + 40) = 978433815;
    }

    ASTCBlockSize = GetASTCBlockSize(a2);
    *(v3 + 44) = ASTCBlockSize;
    *(v3 + 48) = ASTCBlockSize >> 4;
    *(v3 + 52) = ASTCBlockSize & 0xF;
    *(v3 + 56) = IIODictionary::getBoolForKey(a2, @"kCGImagePropertyASTCUseHDR");
    *(v3 + 57) = IIODictionary::getBoolForKey(a2, @"kCGImagePropertyASTCUseLZFSE");
    *(v3 + 58) = IIODictionary::getBoolForKey(a2, @"kCGImagePropertyASTCPreTwiddle");
    if (IIODictionary::containsKey(a2, @"kCGImagePropertyASTCFlipVertically"))
    {
      *(v3 + 60) = IIODictionary::getBoolForKey(a2, @"kCGImagePropertyASTCFlipVertically");
    }

    this = IIODictionary::containsKey(a2, @"kCGImagePropertyASTCWeightChannelsEqually");
    if (this)
    {
      this = IIODictionary::getBoolForKey(a2, @"kCGImagePropertyASTCWeightChannelsEqually");
      *(v3 + 61) = this;
    }
  }

  return this;
}

uint64_t GetASTCBlockSize(IIODictionary *a1)
{
  ObjectForKey = IIODictionary::getObjectForKey(a1, @"kCGImagePropertyASTCBlockSize");
  if (!ObjectForKey)
  {
    return 68;
  }

  v3 = ObjectForKey;
  v4 = CFGetTypeID(ObjectForKey);
  if (v4 != CFNumberGetTypeID())
  {
    v6 = CFGetTypeID(v3);
    if (v6 == CFStringGetTypeID())
    {
      v7 = 68;
      if (CFStringCompare(v3, @"kCGImagePropertyASTCBlockSize4x4", 0))
      {
        if (CFStringCompare(v3, @"kCGImagePropertyASTCBlockSize8x8", 0))
        {
          return 68;
        }

        else
        {
          return 136;
        }
      }

      return v7;
    }

    return 68;
  }

  return IIODictionary::getUint32ForKey(a1, @"kCGImagePropertyASTCBlockSize");
}

void *std::__shared_ptr_emplace<ASTCTextureImp>::__shared_ptr_emplace[abi:fe200100]<unsigned int &,std::allocator<ASTCTextureImp>,0>(void *a1, unsigned int *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1EF4DE6F8;
  ASTCTextureImp::ASTCTextureImp((a1 + 3), *a2);
  return a1;
}

void std::__shared_ptr_emplace<ASTCTextureImp>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF4DE6F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x186602850);
}

uint64_t _TIFFgetMode(void *a1, uint64_t a2, unsigned __int8 *a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a3;
  if (v8 == 97 || v8 == 119)
  {
    if (v8 == 119)
    {
      return 1538;
    }

    else
    {
      return 514;
    }
  }

  else if (v8 == 114)
  {
    return 2 * (a3[1] == 43);
  }

  else
  {
    _TIFFErrorEarly(a1, a2, a4, "%s: Bad mode", a5, a6, a7, a8, a3);
    return 0xFFFFFFFFLL;
  }
}

uint64_t TIFFClientOpenExt(const char *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(), uint64_t (*a10)(), uint64_t a11)
{
  v19 = _TIFFgetMode(a11, a3, a2, "TIFFClientOpenExt", a5, a6, a7, a8);
  if (v19 == -1)
  {
    return 0;
  }

  v20 = v19;
  v21 = strlen(a1) + 1385;
  if (a11)
  {
    v26 = *(a11 + 32);
    if (v26 >= 1 && v21 > v26)
    {
      _TIFFErrorEarly(a11, a3, "TIFFClientOpenExt", "%s: Memory allocation of %llu bytes is beyond the %llu byte limit defined in open options", v22, v23, v24, v25, a1);
      return 0;
    }

    v28 = *(a11 + 40);
    if (v28 >= 1 && v21 > v28)
    {
      _TIFFErrorEarly(a11, a3, "TIFFClientOpenExt", "%s: Memory allocation of %llu bytes is beyond the %llu cumulated byte limit defined in open options", v22, v23, v24, v25, a1);
      return 0;
    }
  }

  v67 = a8;
  v30 = malloc_type_malloc(v21, 0x10F0040492197AFuLL);
  v35 = v30;
  if (!v30)
  {
    _TIFFErrorEarly(a11, a3, "TIFFClientOpenExt", "%s: Out of memory (TIFF structure)", v31, v32, v33, v34, a1);
    return v35;
  }

  _TIFFmemset(v30, 0, 0x568uLL);
  *v35 = v35 + 1384;
  strcpy((v35 + 1384), a1);
  *(v35 + 12) = v20 & 0xFFFFF9FF;
  *(v35 + 888) = 0;
  *(v35 + 884) = -1;
  *(v35 + 876) = -1;
  *(v35 + 1200) = a3;
  *(v35 + 1208) = a4;
  *(v35 + 1216) = a5;
  *(v35 + 1224) = a6;
  *(v35 + 1232) = a7;
  *(v35 + 1240) = v67;
  if (a9)
  {
    v41 = a9;
  }

  else
  {
    v41 = _tiffDummyMapProc;
  }

  *(v35 + 1184) = v41;
  v42 = a10;
  if (!a10)
  {
    v42 = _tiffDummyUnmapProc;
  }

  *(v35 + 1192) = v42;
  if (a11)
  {
    *(v35 + 1328) = *a11;
    *(v35 + 1344) = *(a11 + 16);
    *(v35 + 1360) = *(a11 + 32);
  }

  if (!a4 || !a5 || !a6 || !a7 || !v67)
  {
    TIFFErrorExtR(v35, "TIFFClientOpenExt", "One of the client procedures is NULL pointer.", v36, v37, v38, v39, v40, v66);
    free(v35);
    return 0;
  }

  v43 = __dst + 2;
  _TIFFSetDefaultCompressionState(v35);
  if (v20)
  {
    v49 = 1;
  }

  else
  {
    v49 = 2049;
  }

  *(v35 + 16) = v49;
  if ((v20 | 2) == 2)
  {
    v49 |= 0x8000u;
    *(v35 + 16) = v49;
  }

  for (i = a2; ; ++i)
  {
    v51 = *i;
    if (v51 > 0x4C)
    {
      if (*i > 0x62u)
      {
        if (v51 == 99)
        {
          if (v20)
          {
            continue;
          }

          v49 &= ~0x8000u;
          goto LABEL_66;
        }

        if (v51 == 104)
        {
          v49 |= 0x10000u;
          goto LABEL_66;
        }

        if (v51 == 109 && !v20)
        {
          v49 &= ~0x800u;
          goto LABEL_66;
        }
      }

      else
      {
        if (v51 == 77)
        {
          if (v20)
          {
            continue;
          }

          v49 |= 0x800u;
          goto LABEL_66;
        }

        if (v51 == 79)
        {
          if (v20)
          {
            continue;
          }

          v49 |= 0x3000000u;
          goto LABEL_66;
        }

        if (v51 == 98 && (v20 & 0x200) != 0)
        {
          v49 |= 0x80u;
LABEL_66:
          *(v35 + 16) = v49;
          continue;
        }
      }

      continue;
    }

    if (*i > 0x43u)
    {
      if (v51 == 68)
      {
        v49 |= 0x1000000u;
        goto LABEL_66;
      }

      if (v51 != 72)
      {
        if (v51 != 76)
        {
          continue;
        }

        v49 = v49 & 0xFFFFFFFC | 2;
        goto LABEL_66;
      }

      TIFFWarningExtR(v35, a1, "H(ost) mode is deprecated. Since libtiff 4.5.1, it is an alias of 'B' / FILLORDER_MSB2LSB.", v44, v45, v46, v47, v48, v66);
      v49 = *(v35 + 16);
LABEL_62:
      v49 = v49 & 0xFFFFFFFC | 1;
      goto LABEL_66;
    }

    if (*i > 0x41u)
    {
      if (v51 != 66)
      {
        if (v20)
        {
          continue;
        }

        v49 |= 0x8000u;
        goto LABEL_66;
      }

      goto LABEL_62;
    }

    if (v51 == 56)
    {
      if ((v20 & 0x200) == 0)
      {
        continue;
      }

      v49 |= 0x80000u;
      goto LABEL_66;
    }

    if (!*i)
    {
      break;
    }
  }

  if ((v20 & 0x400) != 0 || (*(v35 + 1208))(*(v35 + 1200), v35 + 856, 8) != 8)
  {
    if (!*(v35 + 12))
    {
LABEL_110:
      v58 = "Cannot read TIFF header";
      goto LABEL_111;
    }

    v56 = *(v35 + 16);
    if ((v56 & 0x80) != 0)
    {
      v57 = 19789;
    }

    else
    {
      v57 = 18761;
    }

    *(v35 + 856) = v57;
    __dst[0] = 0;
    __dst[1] = 0;
    if ((v56 & 0x80000) != 0)
    {
      *(v35 + 858) = 524331;
      *(v35 + 862) = 0;
      *(v35 + 864) = 0;
      *(v35 + 872) = 16;
      _TIFFmemcpy(__dst, (v35 + 856), 0x10uLL);
      if ((*(v35 + 16) & 0x80) == 0)
      {
LABEL_87:
        (*(v35 + 1224))(*(v35 + 1200), 0, 0);
        if ((*(v35 + 1216))(*(v35 + 1200), __dst, *(v35 + 872)) == *(v35 + 872))
        {
          if (!TIFFDefaultDirectory(v35))
          {
            goto LABEL_112;
          }

          *(v35 + 24) = 0;
          *(v35 + 40) = 0;
          *(v35 + 64) = 0;
          return v35;
        }

        v58 = "Error writing TIFF header";
LABEL_111:
        TIFFErrorExtR(v35, a1, v58, v44, v45, v46, v47, v48, v66);
        goto LABEL_112;
      }

      TIFFSwabShort(__dst + 2);
      v43 = __dst + 4;
    }

    else
    {
      *(v35 + 858) = 42;
      *(v35 + 860) = 0;
      *(v35 + 872) = 8;
      _TIFFmemcpy(__dst, (v35 + 856), 0x10uLL);
      if ((*(v35 + 16) & 0x80) == 0)
      {
        goto LABEL_87;
      }
    }

    TIFFSwabShort(v43);
    goto LABEL_87;
  }

  v55 = *(v35 + 856);
  if (v55 != 18761)
  {
    if (v55 == 19789)
    {
      *(v35 + 16) |= 0x80u;
    }

    else if (v55 != 20549)
    {
      TIFFErrorExtR(v35, a1, "Not a TIFF or MDI file, bad magic number %hu (0x%hx)", v44, v45, v46, v47, v48, *(v35 + 856));
      goto LABEL_112;
    }
  }

  if ((*(v35 + 16) & 0x80) != 0)
  {
    TIFFSwabShort((v35 + 858));
  }

  v59 = *(v35 + 858);
  if ((v59 & 0xFFFE) != 0x2A)
  {
    TIFFErrorExtR(v35, a1, "Not a TIFF file, bad version number %hu (0x%hx)", v44, v45, v46, v47, v48, *(v35 + 858));
    goto LABEL_112;
  }

  if (v59 != 42)
  {
    if ((*(v35 + 1208))(*(v35 + 1200), v35 + 864, 8) == 8)
    {
      if ((*(v35 + 16) & 0x80) != 0)
      {
        TIFFSwabShort((v35 + 860));
        TIFFSwabLong8((v35 + 864));
      }

      if (*(v35 + 860) == 8)
      {
        if (!*(v35 + 862))
        {
          *(v35 + 872) = 16;
          v60 = *(v35 + 16) | 0x80000;
          goto LABEL_99;
        }

        TIFFErrorExtR(v35, a1, "Not a TIFF file, bad BigTIFF unused %hu (0x%hx)", v44, v45, v46, v47, v48, *(v35 + 862));
      }

      else
      {
        TIFFErrorExtR(v35, a1, "Not a TIFF file, bad BigTIFF offsetsize %hu (0x%hx)", v44, v45, v46, v47, v48, *(v35 + 860));
      }

LABEL_112:
      *(v35 + 12) = 0;
      TIFFCleanup(v35, v52, v53, v44, v45, v46, v47, v48);
      return 0;
    }

    goto LABEL_110;
  }

  v60 = *(v35 + 16);
  if ((v60 & 0x80) != 0)
  {
    TIFFSwabLong((v35 + 860), v54);
    v60 = *(v35 + 16);
  }

  *(v35 + 872) = 8;
LABEL_99:
  v61 = v60 | 0x200;
  *(v35 + 16) = v60 | 0x200;
  *(v35 + 1120) = 0u;
  *(v35 + 1136) = 0u;
  *(v35 + 1152) = 0;
  v62 = *a2;
  if (v62 == 97)
  {
    v65 = v35;
    goto LABEL_126;
  }

  if (v62 != 114)
  {
    goto LABEL_112;
  }

  if ((v60 & 0x80000) != 0)
  {
    v63 = *(v35 + 864);
  }

  else
  {
    v63 = *(v35 + 860);
  }

  *(v35 + 32) = v63;
  if ((v60 & 0x800) != 0)
  {
    __dst[0] = 0;
    if ((*(v35 + 1184))(*(v35 + 1200), v35 + 1168, __dst))
    {
      *(v35 + 1176) = __dst[0];
      v61 = *(v35 + 16);
    }

    else
    {
      v61 = *(v35 + 16) & 0xFFFFF7FF;
      *(v35 + 16) = v61;
    }
  }

  v65 = v35;
  if ((v61 & 0x10000) != 0)
  {
LABEL_126:
    if (TIFFDefaultDirectory(v65))
    {
      return v35;
    }

    goto LABEL_112;
  }

  if (!_cg_TIFFReadDirectory(v35))
  {
    goto LABEL_112;
  }

  return v35;
}

void IIO_Reader_TGA::createReadPlugin()
{
  operator new();
}

{
  operator new();
}

BOOL IIO_Reader_TGA::testHeader(uint64_t a1, unsigned __int8 *a2)
{
  result = 0;
  if (a2[1] <= 1u)
  {
    v2 = a2[2];
    v3 = v2 > 0xB;
    v4 = (1 << v2) & 0xE0E;
    v5 = v3 || v4 == 0;
    if (!v5 && a2[7] <= 0x20u && (a2[12] || a2[13]) && (a2[14] || a2[15]))
    {
      v6 = a2[16];
      if (v6 <= 0x20 && ((1 << v6) & 0x101018100) != 0 && a2[17] < 0x40u)
      {
        return 1;
      }
    }
  }

  return result;
}

__n128 IIOImagePixelDataProvider::srcFormat@<Q0>(IIOImagePixelDataProvider *this@<X0>, uint64_t a2@<X8>)
{
  result = *(this + 40);
  v3 = *(this + 56);
  *a2 = result;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(this + 9);
  return result;
}

unint64_t IIOImagePixelDataProvider::sourceBytesForCoordinates(IIOImagePixelDataProvider *this, CGPoint a2, CGPoint a3, double a4, double a5)
{
  if (a2.x <= 0.0 || a3.y <= a2.y)
  {
    v6 = 0;
    y = a2.y;
  }

  else
  {
    LODWORD(a5) = *(this + 11);
    v6 = (*(this + 16) + a2.x * *&a5 * -0.125);
    y = a2.y + 1.0;
    a2.x = 0.0;
  }

  if (a3.y > a2.y)
  {
    v6 += *(this + 16) * (a3.y - y);
  }

  return v6 + ((*(this + 11) * (a3.x - a2.x)) >> 3);
}

unint64_t IIOImagePixelDataProvider::getBytesCGAccessSessionNoConvert(IIOImagePixelDataProvider *this, char *a2, unint64_t a3)
{
  if (*(this + 32))
  {
    v6 = *(this + 19);
  }

  else
  {
    if (!CGImageGetDataProvider(*(this + 2)))
    {
      return 0;
    }

    v13 = CGAccessSessionCreate();
    *(this + 32) = v13;
    if (!v13)
    {
      return 0;
    }

    v6 = 0;
    *(this + 19) = 0;
  }

  v7 = 0;
  if (a2)
  {
    v8 = *(this + 21);
    if (v8 > v6)
    {
      if (v6 + a3 > v8)
      {
        a3 = v8 - v6;
      }

      BytesFromAccessSession = IIOImagePixelDataProvider::getBytesFromAccessSession(this, a2, a3);
      v10 = *(this + 20);
      v11 = *(this + 19) + BytesFromAccessSession;
      if (v11 >= *(this + 21))
      {
        v11 = *(this + 21);
      }

      *(this + 19) = v11;
      if (BytesFromAccessSession != a3 || v11 == v10)
      {
        v7 = BytesFromAccessSession;
        if (BytesFromAccessSession != a3)
        {
          _cg_jpeg_mem_term("getBytesCGAccessSessionNoConvert", 1402, "*** ERROR: 'getBytesFromAccessSession' - got %ld bytes, expected: %ld\n", BytesFromAccessSession, a3);
        }

        CGAccessSessionRelease();
        *(this + 32) = 0;
      }

      else
      {
        return a3;
      }
    }
  }

  return v7;
}

uint64_t IIOImagePixelDataProvider::getBytesDataProviderCIF10(IIOImagePixelDataProvider *this, void *a2, uint64_t a3)
{
  v4 = a3 / *(this + 18);
  v5 = *(this + 16);
  if (is_mul_ok(v4, v5))
  {
    v8 = malloc_type_malloc(v4 * v5, 0x100004077774924uLL);
    if (v8)
    {
      v9 = v8;
      IIOImagePixelDataProvider::getBytesCGAccessSessionNoConvert(this, v8, *(this + 16) * v4);
      v10 = *(this + 18);
      if (is_mul_ok(v4, v10) && (v11 = malloc_type_malloc(v4 * v10, 0x100004077774924uLL)) != 0)
      {
        v12 = v11;
        if (*(this + 20) == 16)
        {
          v36 = 0;
          v37 = 0;
          IIOColorSpace::IIOColorSpace(&v36, *MEMORY[0x1E695F110]);
          *&v35.bitsPerComponent = 0x4000000010;
          v35.colorSpace = v37;
          v35.bitmapInfo = 4358;
          memset(&v35.version, 0, 20);
          v33 = 0;
          v34 = 0;
          IIOColorSpace::IIOColorSpace(&v33, *MEMORY[0x1E695F1C0]);
          v31 = 0;
          v32 = 0;
          v13 = *MEMORY[0x1E695F0B8];
          IIOColorSpace::IIOColorSpace(&v31, *MEMORY[0x1E695F0B8]);
          *&v30.bitsPerComponent = 0x4000000010;
          v30.colorSpace = v32;
          v30.bitmapInfo = 4358;
          memset(&v30.version, 0, 20);
          v28 = 0;
          v29 = 0;
          IIOColorSpace::IIOColorSpace(&v28, v13);
          v27[0] = 0;
          v27[1] = 0;
          IIOColorConverter::IIOColorConverter(v27, &v35, &v30, v34, v29);
          src.data = v9;
          src.height = v4;
          v14 = *(this + 16);
          src.width = *(this + 3);
          src.rowBytes = v14;
          dest.data = v12;
          dest.height = v4;
          v15 = *(this + 18);
          dest.width = src.width;
          dest.rowBytes = v15;
          v24.data = a2;
          v24.height = v4;
          v24.width = src.width;
          v24.rowBytes = v15;
          v23.data = a2;
          v23.height = v4;
          v23.width = 4 * src.width;
          v23.rowBytes = v15;
          *permuteMap = 50462976;
          v16 = CIF10MIN();
          v17 = CIF10MAX();
          v18 = vImageConvert_XRGB2101010ToARGB16F(&src, 1.0, &dest, v16, v17, permuteMap, 0x810u);
          if (v18 || (v18 = IIOColorConverter::colorConvert(v27, &dest, &v24)) != 0 || (v18 = vImageConvert_16Fto16U(&v23, &v23, 0x10u)) != 0)
          {
            v19 = IIO_vImageErrorString(v18);
            LogError("getBytesDataProviderCIF10", 1317, "*** ERROR: CIF10 to RGB16 failed: %d '%s'\n", v18, v19);
          }

          IIOColorConverter::~IIOColorConverter(v27);
          IIOColorSpace::~IIOColorSpace(&v28);
          IIOColorSpace::~IIOColorSpace(&v31);
          IIOColorSpace::~IIOColorSpace(&v33);
          IIOColorSpace::~IIOColorSpace(&v36);
        }

        free(v9);
        v20 = v12;
      }

      else
      {
        v20 = v9;
      }

      free(v20);
    }
  }

  return a3;
}

void sub_1860DF834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, CGColorSpaceRef a31)
{
  IIOColorSpace::~IIOColorSpace(&a31);
  IIOColorSpace::~IIOColorSpace((v31 - 184));
  IIOColorSpace::~IIOColorSpace((v31 - 168));
  IIOColorSpace::~IIOColorSpace((v31 - 112));
  _Unwind_Resume(a1);
}

uint64_t IIOImagePixelDataProvider::getBytesFromAccessSession(IIOImagePixelDataProvider *this, char *a2, unint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  v5 = 0;
  while (1)
  {
    Bytes = CGAccessSessionGetBytes();
    if (Bytes - 1 >= v3)
    {
      break;
    }

    v5 += Bytes;
    a2 += Bytes;
    v3 -= Bytes;
    if (!v3)
    {
      return v5;
    }
  }

  if (Bytes)
  {
    _cg_jpeg_mem_term("getBytesFromAccessSession", 1355, "*** CGAccessSessionGetBytes returned unexpected amount of data.");
  }

  else
  {
    _cg_jpeg_mem_term("getBytesFromAccessSession", 1352, "*** CGAccessSessionGetBytes did not return any data.");
  }

  return v5;
}

vImagePixelCount IIOImagePixelDataProvider::getBytesCGAccessSessionConvert(CGImageRef *this, unsigned __int8 *a2, unint64_t a3)
{
  if (!this[32])
  {
    if (!CGImageGetDataProvider(this[2]))
    {
      return 0;
    }

    v23 = CGAccessSessionCreate();
    this[32] = v23;
    if (!v23)
    {
      return 0;
    }
  }

  v6 = 0;
  if (a2)
  {
    v7 = this[19];
    v8 = this[20];
    if (v8 > v7)
    {
      if (v7 + a3 <= v8)
      {
        v6 = a3;
      }

      else
      {
        v6 = v8 - v7;
      }

      v9 = this[18];
      v10 = (8 * (v7 % v9) / *(this + 21));
      v11 = (v7 / v9);
      v12 = IIOImagePixelDataProvider::endingPointForByteCount(this, v6);
      v14 = v13;
      v25.x = v10;
      v25.y = v11;
      v27.x = v12;
      v27.y = v14;
      v17 = IIOImagePixelDataProvider::sourceBytesForCoordinates(this, v25, v27, v15, v16);
      v18 = v17;
      v19 = *(this + 264);
      v20 = a2;
      if ((v19 & 1) == 0)
      {
        v20 = malloc_type_malloc(v17, 0x100004077774924uLL);
        if (!v20)
        {
          return 0;
        }
      }

      BytesFromAccessSession = IIOImagePixelDataProvider::getBytesFromAccessSession(this, v20, v18);
      if (BytesFromAccessSession == v18)
      {
        v26.x = v10;
        v26.y = v11;
        v28.x = v12;
        v28.y = v14;
        v22 = IIOImagePixelDataProvider::convertBytesWithRange(this, v20, a2, v26, v28, v6);
        if (v19)
        {
          goto LABEL_17;
        }
      }

      else
      {
        _cg_jpeg_mem_term("getBytesCGAccessSessionConvert", 1468, "CGAccessSessionGetBytes did not return enough bytes. Got %zd, expected %zd.\n", BytesFromAccessSession, v18);
        v22 = 0;
        if (v19)
        {
LABEL_17:
          if (this[19] == this[20] || v22 != v6)
          {
            CGAccessSessionRelease();
            this[32] = 0;
            return v22;
          }

          return v6;
        }
      }

      free(v20);
      goto LABEL_17;
    }
  }

  return v6;
}

uint64_t IIOImagePixelDataProvider::rewind(IIOImagePixelDataProvider *this)
{
  *(this + 19) = 0;
  result = *(this + 32);
  if (result)
  {
    return CGAccessSessionRewind();
  }

  return result;
}

unint64_t IIOImagePixelDataProvider::skipForward(IIOImagePixelDataProvider *this, uint64_t a2)
{
  v4 = *(this + 19);
  v3 = *(this + 20);
  v5 = v4 + a2;
  if (v4 + a2 >= v3)
  {
    v5 = *(this + 20);
  }

  if (v5 >= v4)
  {
    v3 = v5;
  }

  *(this + 19) = v3;
  if (*(this + 32))
  {
    CGAccessSessionSkipForward();
    v3 = *(this + 19);
  }

  return v3 - v4;
}

uint64_t TIFFFlush(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(a1 + 12))
  {
    return 1;
  }

  result = TIFFFlushData(a1, a2, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    v17 = *(a1 + 16) & 0x200008;
    if (v17 == 0x200000)
    {
      if (*(a1 + 12) != 2)
      {
        goto LABEL_8;
      }

      if (TIFFForceStrileArrayWriting(a1))
      {
        return 1;
      }

      v17 = *(a1 + 16) & 0x200008;
    }

    if (v17)
    {
LABEL_8:
      result = TIFFRewriteDirectory(a1, v10, v11, v12, v13, v14, v15, v16);
      if (!result)
      {
        return result;
      }

      return 1;
    }

    return 1;
  }

  return result;
}

uint64_t TIFFFlushData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 16);
  if ((v8 & 0x40) == 0)
  {
    return 1;
  }

  if ((v8 & 0x1000) == 0 || (*(a1 + 16) = v8 & 0xFFFFEFFF, result = (*(a1 + 1000))(a1), result))
  {

    return TIFFFlushData1(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return result;
}

uint64_t TIFFForceStrileArrayWriting(uint64_t a1)
{
  v2 = _cg_TIFFIsTiled(a1);
  if (!*(a1 + 12))
  {
    v12 = *a1;
    v13 = "File opened in read-only mode";
    goto LABEL_13;
  }

  if (!*(a1 + 24))
  {
    v12 = "TIFFForceStrileArrayWriting";
    v13 = "Directory has not yet been written";
    goto LABEL_13;
  }

  v10 = *(a1 + 16);
  if ((v10 & 8) != 0)
  {
    v12 = "TIFFForceStrileArrayWriting";
    v13 = "Directory has changes other than the strile arrays. TIFFRewriteDirectory() should be called instead";
    goto LABEL_13;
  }

  v11 = v2;
  if ((v10 & 0x200000) == 0)
  {
    if (*(a1 + 256) && !*(a1 + 264) && !*(a1 + 258) && !*(a1 + 272) && *(a1 + 288) && !*(a1 + 296) && !*(a1 + 290) && !*(a1 + 304))
    {
      if (!*(a1 + 232))
      {
        result = TIFFSetupStrips(a1, v3, v4, v5, v6, v7, v8, v9);
        if (!result)
        {
          return result;
        }
      }

      goto LABEL_21;
    }

    v12 = "TIFFForceStrileArrayWriting";
    v13 = "Function not called together with TIFFDeferStrileArrayWriting()";
LABEL_13:
    TIFFErrorExtR(a1, v12, v13, v5, v6, v7, v8, v9, v17);
    return 0;
  }

LABEL_21:
  if (v11)
  {
    v15 = 324;
  }

  else
  {
    v15 = 273;
  }

  result = _TIFFRewriteField(a1, v15, 0x10u, *(a1 + 228), *(a1 + 232));
  if (result)
  {
    if (v11)
    {
      v16 = 325;
    }

    else
    {
      v16 = 279;
    }

    result = _TIFFRewriteField(a1, v16, 0x10u, *(a1 + 228), *(a1 + 240));
    if (result)
    {
      *(a1 + 16) &= 0xFFDFFFBF;
      return 1;
    }
  }

  return result;
}

void AdobeXMPCore_Int::MetadataConverterUtilsImpl::ConvertOldDOMtoNewDOM(AdobeXMPCore_Int::MetadataConverterUtilsImpl *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  AdobeXMPCore::IMetadata_v1::CreateMetadata(this);
}

void sub_1860DFFE8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v2);
  }

  v4 = *(v1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v4);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::IMetadataConverterUtils_I::convertIMetadatatoXMPMeta(void *a1, AdobeXMPCore::INode_v1 *a2)
{
  v3 = 0;
  if (a1)
  {
    a1 = (a1 + *(*a1 - 544));
  }

  AdobeXMPCore::INode_v1::MakeShared(a1, a2, &v2);
  AdobeXMPCore_Int::MetadataConverterUtilsImpl::ConvertNewDOMtoOldDOM();
}

void sub_1860E0084(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a11);
  }

  __cxa_call_unexpected(a1);
}

void sub_1860E0360(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::shared_ptr<AdobeXMPCore::INode_v1>::~shared_ptr[abi:fe200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v2);
  }

  return a1;
}

void AdobeXMPCore_Int::IMetadataConverterUtils_I::convertIMetadatatoXMPMeta(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    atomic_fetch_add_explicit((v1 + 8), 1uLL, memory_order_relaxed);
  }

  AdobeXMPCore_Int::MetadataConverterUtilsImpl::ConvertNewDOMtoOldDOM();
}

void sub_1860E0480(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<AdobeXMPCore::INode_v1>::~shared_ptr[abi:fe200100](va);
  __cxa_call_unexpected(a1);
}

void AdobeXMPCore_Int::MetadataConverterUtilsImpl::CreateAndPopulateNode(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  v12 = 0;
  *v10 = 0;
  XMP_Node::GetFullQualifiedName(a2, &v12, &v10[1], &v11, v10);
  v4 = v10[0];
  v3 = v10[1];
  if (!*v10)
  {
    v11 = "arrayItem";
    v12 = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
    v3 = 43;
    v4 = 9;
    v10[0] = 9;
    v10[1] = 43;
  }

  v8 = 0;
  v9 = 0;
  v5 = *(a2 + 8);
  if ((v5 & 0x1F00) == 0)
  {
    v6 = *(a2 + 63);
    if ((v6 & 0x8000000000000000) != 0)
    {
      v7 = *(a2 + 40);
      v6 = *(a2 + 48);
    }

    else
    {
      v7 = a2 + 40;
    }

    AdobeXMPCore::ISimpleNode_v1::CreateSimpleNode(v12, v3, v11, v4, v7, v6);
  }

  if ((v5 & 0x100) != 0)
  {
    AdobeXMPCore::IStructureNode_v1::CreateStructureNode(v12, v3, v11, v4);
  }

  if ((v5 & 0x200) != 0)
  {
    AdobeXMPCore_Int::IUTF8String_I::CreateUTF8String(v12, v3);
  }
}

void sub_1860E08E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a11);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a17);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a19);
  }

  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a21);
  }

  _Unwind_Resume(exception_object);
}

void *std::shared_ptr<AdobeXMPCore::INode_v1>::operator=[abi:fe200100]<AdobeXMPCore::ISimpleNode_v1,0>(void *a1, uint64_t a2)
{
  v3 = *a2;
  if (*a2)
  {
    v3 = (v3 + *(*v3 - 544));
  }

  v4 = *(a2 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a1[1];
  *a1 = v3;
  a1[1] = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v5);
  }

  return a1;
}

void AdobeXMPCore_Int::MetadataConverterUtilsImpl::CreateQualifiedName()
{
  v0 = 0;
  v1 = 0;
  AdobeXMPCore_Int::IUTF8String_I::CreateUTF8String(0, 0xFFFFFFFFFFFFFFFFLL);
}

void sub_1860E11F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27)
{
  v29 = *(v27 - 152);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v29);
  }

  v30 = *(v27 - 136);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v30);
  }

  v31 = *(v27 - 120);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v31);
  }

  v32 = *(v27 - 104);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v32);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::MakeUncheckedSharedPointer<AdobeXMPCore_Int::INameSpacePrefixMap_I>(char *a1@<X0>, int a2@<W3>, void *a3@<X8>)
{
  if (a1 || !a2)
  {
    (**&a1[*(*a1 - 56)])(&a1[*(*a1 - 56)]);

    std::shared_ptr<AdobeXMPCore_Int::INameSpacePrefixMap_I>::shared_ptr[abi:fe200100]<AdobeXMPCore_Int::INameSpacePrefixMap_I,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,0>(a3, a1);
  }

  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_1860E146C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::ostringstream::basic_ostringstream[abi:fe200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x1E69E5570] + 64;
  a1[14] = MEMORY[0x1E69E5570] + 64;
  v3 = *(MEMORY[0x1E69E54E8] + 16);
  v4 = *(MEMORY[0x1E69E54E8] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x1E69E5570] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:fe200100]((a1 + 1), 16);
  return a1;
}

void sub_1860E15C8(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x1866027D0](v1);
  _Unwind_Resume(a1);
}

void AdobeXMPCore_Int::MetadataConverterUtilsImpl::AddQualifierNode()
{
  v0 = 0;
  v1 = 0;
  AdobeXMPCore_Int::MetadataConverterUtilsImpl::CreateQualifiedName();
}

void sub_1860E1AC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a14);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<XMP_Node *>::insert(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 < v7)
  {
    if (__src == v6)
    {
      *v6 = *a3;
      a1[1] = v6 + 8;
      return v4;
    }

    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    if (v9 >= v4)
    {
      v23 = v9 <= a3 || v4 > a3;
      v24 = 8;
      if (v23)
      {
        v24 = 0;
      }

      *v4 = *&a3[v24];
      return v4;
    }

    __break(1u);
LABEL_30:
    std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
  }

  v10 = *a1;
  v11 = (&v6[-*a1] >> 3) + 1;
  if (v11 >> 61)
  {
    goto LABEL_30;
  }

  v12 = __src - v10;
  v13 = v7 - v10;
  if (v13 >> 2 > v11)
  {
    v11 = v13 >> 2;
  }

  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    v14 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = v11;
  }

  v15 = v12 >> 3;
  v29 = a1;
  if (v14)
  {
    std::__allocate_at_least[abi:fe200100]<std::allocator<IIOTag *>>(a1, v14);
  }

  v26 = 0;
  v27 = 8 * v15;
  v28 = (8 * v15);
  std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *> &>::emplace_back<std::__state<char> *>(&v26, a3);
  v16 = v27;
  memcpy(v28, v4, a1[1] - v4);
  v17 = *a1;
  v18 = v27;
  *&v28 = v28 + a1[1] - v4;
  a1[1] = v4;
  v19 = v4 - v17;
  v20 = (v18 - (v4 - v17));
  memcpy(v20, v17, v19);
  v21 = *a1;
  *a1 = v20;
  v22 = a1[2];
  *(a1 + 1) = v28;
  *&v28 = v21;
  *(&v28 + 1) = v22;
  v26 = v21;
  v27 = v21;
  if (v21)
  {
    operator delete(v21);
  }

  return v16;
}

void sub_1860E1CF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL AdobeXMPCore_Int::MetadataConverterUtilsImpl::FindPrefixFromUserSuppliedMap(AdobeXMPCore_Int::MetadataConverterUtilsImpl *this, void *a2, char *a3, const char **a4, unsigned int *a5)
{
  if (!this)
  {
    return 0;
  }

  v9 = 0;
  v10 = 0;
  (*(*this + 88))(&v9);
  v7 = v9;
  if (v9)
  {
    *a3 = (*(*v9 + 192))(v9);
    *a4 = (*(*v9 + 208))(v9);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v10);
  }

  return v7 != 0;
}

void AdobeXMPCore_Int::MetadataConverterUtilsImpl::AddChildNode(uint64_t a1, uint64_t a2)
{
  (*(**a2 + 160))();
  v2 = 0;
  v3 = 0;
  AdobeXMPCore_Int::MetadataConverterUtilsImpl::CreateQualifiedName();
}

void sub_1860E21F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a21);
  }

  v23 = *(v21 - 72);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AdobeXMPCore_Int::MetadataConverterUtilsImpl::HandleStructureNode(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  if (!a5)
  {
    goto LABEL_10;
  }

  v23 = 0uLL;
  (*(*(*a1 + *(**a1 - 544)) + 256))(&v23);
  v11 = v23;
  if (v23)
  {
    (*(*v23 + 736))(&v21, v23);
    v12 = (*(*v21 + 192))(v21);
    MEMORY[0x186602520](a2 + 16, v12);
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v22);
    }
  }

  if (*(&v23 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v23 + 1));
  }

  if (!v11)
  {
LABEL_10:
    if (a6)
    {
      v13 = *a1;
      if (*a1)
      {
        v13 = (v13 + *(*v13 - 544));
      }

      v14 = a1[1];
      *&v23 = v13;
      *(&v23 + 1) = v14;
      if (v14)
      {
        atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
      }

      AdobeXMPCore_Int::MetadataConverterUtilsImpl::AddQualifierNode();
    }

    v15 = *a1;
    if (*a1)
    {
      v15 = (v15 + *(*v15 - 544));
    }

    v16 = a1[1];
    *&v23 = v15;
    *(&v23 + 1) = v16;
    if (v16)
    {
      atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
    }

    AdobeXMPCore_Int::MetadataConverterUtilsImpl::AddChildNode(a2, &v23);
  }

  if (a2)
  {
    *(a2 + 8) |= 0x100u;
    v23 = 0uLL;
    (*(*(*a1 + *(**a1 - 688)) + 552))(&v23, *a1 + *(**a1 - 688));
    while (v23)
    {
      v21 = 0;
      v22 = 0;
      (*(*v23 + 48))(&v21);
      AdobeXMPCore_Int::MetadataConverterUtilsImpl::HandleNode(&v21, a2, a3, a4, 1, 0);
      (*(*v23 + 56))(&v20);
      v17 = v20;
      v20 = 0uLL;
      v18 = *(&v23 + 1);
      v23 = v17;
      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v18);
        if (*(&v20 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v20 + 1));
        }
      }

      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v22);
      }
    }

    if (*(&v23 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](*(&v23 + 1));
    }
  }

  return a2;
}

void sub_1860E25E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::MetadataConverterUtilsImpl::HandleNode(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = *a1;
  if (v7)
  {
    v13 = (*(*v7 + 40))(v7);
    switch(v13)
    {
      case 4:
        (*(**a1 + 240))(&v21);
        v14 = AdobeXMPCore_Int::MetadataConverterUtilsImpl::HandleStructureNode(&v21, a2, a3, a4, a5, a6);
        if (*(&v21 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v21 + 1));
        }

        break;
      case 2:
        (*(**a1 + 248))(&v21);
        AdobeXMPCore_Int::MetadataConverterUtilsImpl::HandleArrayNode(&v21, a2, a3, a4, a5, a6);
      case 1:
        (*(**a1 + 232))(&v21);
        AdobeXMPCore_Int::MetadataConverterUtilsImpl::HandleSimpleNode(&v21, a2, a3, a4, a5, a6);
      default:
        v14 = 0;
        break;
    }

    if ((*(**a1 + 184))())
    {
      v15 = v14 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      v21 = 0uLL;
      (*(**a1 + 112))(&v21);
      while (v21)
      {
        v19 = 0;
        v20 = 0;
        (*(*v21 + 48))(&v19);
        AdobeXMPCore_Int::MetadataConverterUtilsImpl::HandleNode(&v19, v14, a3, a4, 0, 1);
        (*(*v21 + 56))(&v18);
        v16 = v18;
        v18 = 0uLL;
        v17 = *(&v21 + 1);
        v21 = v16;
        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v17);
          if (*(&v18 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](*(&v18 + 1));
          }
        }

        if (v20)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v20);
        }
      }

      if (*(&v21 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v21 + 1));
      }
    }
  }
}

void sub_1860E28E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::MetadataConverterUtilsImpl::HandleArrayNode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a6)
  {
    v6 = *a1;
    if (*a1)
    {
      v6 = (v6 + *(*v6 - 544));
    }

    v7 = *(a1 + 8);
    v10 = v6;
    v11 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    AdobeXMPCore_Int::MetadataConverterUtilsImpl::AddQualifierNode();
  }

  v8 = *a1;
  if (*a1)
  {
    v8 = (v8 + *(*v8 - 544));
  }

  v9 = *(a1 + 8);
  v10 = v8;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  AdobeXMPCore_Int::MetadataConverterUtilsImpl::AddChildNode(a2, &v10);
}

void sub_1860E2BB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v14);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::MetadataConverterUtilsImpl::HandleSimpleNode(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a6)
  {
    v8 = *a1;
    if (*a1)
    {
      v9 = v8 + *(*v8 - 544);
    }

    else
    {
      v9 = 0;
    }

    v12 = a1[1];
    v15 = v9;
    v16 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
      v8 = *a1;
    }

    (*(*v8 + 504))(&v14);
    (*(*v14 + 192))(v14);
    AdobeXMPCore_Int::MetadataConverterUtilsImpl::AddQualifierNode();
  }

  v10 = *a1;
  if (*a1)
  {
    v11 = v10 + *(*v10 - 544);
  }

  else
  {
    v11 = 0;
  }

  v13 = a1[1];
  v15 = v11;
  v16 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    v10 = *a1;
  }

  (*(*v10 + 504))(&v14);
  (*(*v14 + 192))(v14);
  AdobeXMPCore_Int::MetadataConverterUtilsImpl::AddChildNode(a2, &v15);
}

void sub_1860E2E1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

uint64_t std::shared_ptr<AdobeXMPCore_Int::IError_I>::~shared_ptr[abi:fe200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v2);
  }

  return a1;
}

void sub_1860E301C(void *a1)
{
  __cxa_begin_catch(a1);
  v4 = (v3 + *(*v3 - 56) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v4 + v1);
  }

  v1(v4);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<AdobeXMPCore_Int::INameSpacePrefixMap_I *,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,std::allocator<AdobeXMPCore_Int::INameSpacePrefixMap_I>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x186602850);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::INameSpacePrefixMap_I *,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,std::allocator<AdobeXMPCore_Int::INameSpacePrefixMap_I>>::__on_zero_shared(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = (a1[3] + *(*a1[3] - 56) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v3 + v1);
  }

  return v1(v3);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::INameSpacePrefixMap_I *,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,std::allocator<AdobeXMPCore_Int::INameSpacePrefixMap_I>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

uint64_t std::stringbuf::basic_stringbuf[abi:fe200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x186602780](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5548] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:fe200100](a1);
  return a1;
}

void sub_1860E3220(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:fe200100](uint64_t a1)
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
    if ((v5 & 0x8000000000000000) != 0)
    {
      goto LABEL_19;
    }

    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) == 0)
  {
    return;
  }

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
    if (v8 < 0)
    {
LABEL_19:
      __break(1u);
      return;
    }
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

void XMPUtils::SetNode(void *a1, char *a2, int a3)
{
  v4 = *a1;
  if (!v4)
  {
    return;
  }

  v5 = a3;
  if ((a3 & 0x20000000) != 0)
  {
    (*(*v4 + 224))(v4, 1, 1);
  }

  if (!a2)
  {
    v12 = (*(**a1 + 40))();
    if ((v5 & 0x200) == 0 || v12 != 4)
    {
      v13 = (*(**a1 + 40))();
      if ((v5 & 0x100) == 0 || v13 != 2)
      {
        v14 = *(**a1 + 224);

        v14();
        return;
      }
    }

    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 102;
    v18 = "Requested and existing composite form mismatch";
LABEL_48:
    exception[1] = v18;
    *(exception + 16) = 0;
  }

  if ((v5 & 0x1F00) != 0)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 102;
    v18 = "Composite nodes can't have values";
    goto LABEL_48;
  }

  if (!*a1)
  {
    return;
  }

  if ((*(**a1 + 40))(*a1) != 1)
  {
    XMPUtils::SetNode();
  }

  v25 = 0;
  v26 = 0;
  (*(**a1 + 232))(&v25);
  __p[0] = 0;
  __p[1] = 0;
  v24 = 0;
  std::string::basic_string[abi:fe200100]<0>(__p, a2);
  if (v24 >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  v8 = *v7;
  if (!*v7)
  {
    goto LABEL_23;
  }

  while (v8 < 1)
  {
LABEL_21:
    v19[0] = 0;
    v21 = 0;
    CodePoint_from_UTF8(v7, 4uLL, v19, &v21);
    if (v19[0] >> 1 == 0x7FFF)
    {
      v16 = __cxa_allocate_exception(0x18uLL);
      *v16 = 205;
      v16[1] = "U+FFFE and U+FFFF are not allowed in XML";
      *(v16 + 16) = 0;
    }

    v7 += v21;
    v8 = *v7;
    if (!*v7)
    {
      goto LABEL_23;
    }
  }

  do
  {
    if (v8 > 0x1F)
    {
      if (v8 != 127)
      {
        goto LABEL_19;
      }

LABEL_15:
      *v7 = 32;
      goto LABEL_19;
    }

    if (v8 > 0xD || ((1 << v8) & 0x2600) == 0)
    {
      goto LABEL_15;
    }

LABEL_19:
    v9 = *++v7;
    v8 = v9;
  }

  while (v9 > 0);
  if (v8)
  {
    goto LABEL_21;
  }

LABEL_23:
  if ((v5 & 0x20) != 0)
  {
    (*(**a1 + 88))(&v21);
    v10 = (*(*v21 + 192))(v21);
    if (!strcmp(v10, "http://www.w3.org/XML/1998/namespace"))
    {
      (*(**a1 + 72))(v19);
      v15 = (*(**v19 + 192))(*v19);
      v11 = strcmp(v15, "lang") == 0;
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v20);
      }
    }

    else
    {
      v11 = 0;
    }

    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v22);
    }

    if (v11)
    {
      NormalizeLangValue(__p);
    }
  }

  (*(*v25 + 512))();
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v26);
  }
}

void sub_1860E37BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t XMPUtils::ConvertNewArrayFormToOldArrayForm(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    if ((*(*result + 640))(result) == 4)
    {
      return 2048;
    }

    else if ((*(**a1 + 640))(*a1) == 2)
    {
      return 1024;
    }

    else
    {
      return ((*(**a1 + 640))(*a1) == 1) << 9;
    }
  }

  return result;
}

void XMPUtils::CreateArrayChildNode(uint64_t a1@<X0>, const char *a2@<X1>, void *a3@<X8>)
{
  v42 = 0;
  v43 = 0;
  v44 = 0;
  (*(*(*a1 + *(**a1 - 544)) + 88))(&__p);
  v6 = (*(*__p + 192))(__p);
  std::string::basic_string[abi:fe200100]<0>(&v42, v6);
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v40);
  }

  __p = 0;
  v40 = 0;
  v41 = 0;
  (*(*(*a1 + *(**a1 - 544)) + 72))(&v38);
  v7 = (*(*v38 + 192))(v38);
  std::string::basic_string[abi:fe200100]<0>(&__p, v7);
  if (*(&v38 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v38 + 1));
  }

  *a3 = 0;
  a3[1] = 0;
  if (!(*(*(*a1 + *(**a1 - 688)) + 560))(*a1 + *(**a1 - 688)))
  {
    if (v44 >= 0)
    {
      v23 = &v42;
    }

    else
    {
      v23 = v42;
    }

    if (v41 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    XMPUtils::CreateTerminalNode(v23, p_p, a2, &v38);
    v25 = v38;
    v38 = 0uLL;
    v26 = a3[1];
    *a3 = v25;
    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v26);
      v27 = *(&v38 + 1);
      if (*(&v38 + 1))
      {
        goto LABEL_101;
      }
    }

    goto LABEL_102;
  }

  (*(**a1 + 656))(&v38);
  v8 = v38;
  if (!v38 || (*(*v38 + 40))(v38) != 2)
  {
    v10 = 0;
    if ((a2 & 0x100) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_15;
  }

  (*(*v8 + 248))(&v37, v8);
  v9 = *(&v37 + 1);
  v38 = v37;
  v37 = 0uLL;
  v10 = XMPUtils::ConvertNewArrayFormToOldArrayForm(&v38);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
  }

  if (*(&v37 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v37 + 1));
  }

  if ((a2 & 0x100) != 0)
  {
LABEL_15:
    if ((*(*v8 + 40))(v8) == 4)
    {
      if (v44 >= 0)
      {
        v11 = &v42;
      }

      else
      {
        v11 = v42;
      }

      if (v44 >= 0)
      {
        v12 = HIBYTE(v44);
      }

      else
      {
        v12 = v43;
      }

      if (v41 >= 0)
      {
        v13 = &__p;
      }

      else
      {
        v13 = __p;
      }

      if (v41 >= 0)
      {
        v14 = HIBYTE(v41);
      }

      else
      {
        v14 = v40;
      }

      AdobeXMPCore::IStructureNode_v1::CreateStructureNode(v11, v12, v13, v14);
    }
  }

LABEL_29:
  if ((a2 & 0x1F00) == 0 && (*(*v8 + 40))(v8) == 1)
  {
    if (v44 >= 0)
    {
      v15 = &v42;
    }

    else
    {
      v15 = v42;
    }

    if (v44 >= 0)
    {
      v16 = HIBYTE(v44);
    }

    else
    {
      v16 = v43;
    }

    if (v41 >= 0)
    {
      v17 = &__p;
    }

    else
    {
      v17 = __p;
    }

    if (v41 >= 0)
    {
      v18 = HIBYTE(v41);
    }

    else
    {
      v18 = v40;
    }

    AdobeXMPCore::ISimpleNode_v1::CreateSimpleNode(v15, v16, v17, v18, "", 0);
  }

  if ((a2 & 0x800) != 0 && v10 >= 0x800)
  {
    if (v44 >= 0)
    {
      v19 = &v42;
    }

    else
    {
      v19 = v42;
    }

    if (v44 >= 0)
    {
      v20 = HIBYTE(v44);
    }

    else
    {
      v20 = v43;
    }

    if (v41 >= 0)
    {
      v21 = &__p;
    }

    else
    {
      v21 = __p;
    }

    if (v41 >= 0)
    {
      v22 = HIBYTE(v41);
    }

    else
    {
      v22 = v40;
    }

    AdobeXMPCore::IArrayNode_v1::CreateAlternativeArrayNode(v19, v20, v21, v22);
  }

  if ((a2 & 0x400) != 0 && (v10 & 0x400) != 0)
  {
    if (v44 >= 0)
    {
      v28 = &v42;
    }

    else
    {
      v28 = v42;
    }

    if (v44 >= 0)
    {
      v29 = HIBYTE(v44);
    }

    else
    {
      v29 = v43;
    }

    if (v41 >= 0)
    {
      v30 = &__p;
    }

    else
    {
      v30 = __p;
    }

    if (v41 >= 0)
    {
      v31 = HIBYTE(v41);
    }

    else
    {
      v31 = v40;
    }

    AdobeXMPCore::IArrayNode_v1::CreateOrderedArrayNode(v28, v29, v30, v31);
  }

  if ((a2 & 0x200) != 0 && (v10 & 0x200) != 0)
  {
    if (v44 >= 0)
    {
      v32 = &v42;
    }

    else
    {
      v32 = v42;
    }

    if (v44 >= 0)
    {
      v33 = HIBYTE(v44);
    }

    else
    {
      v33 = v43;
    }

    if (v41 >= 0)
    {
      v34 = &__p;
    }

    else
    {
      v34 = __p;
    }

    if (v41 >= 0)
    {
      v35 = HIBYTE(v41);
    }

    else
    {
      v35 = v40;
    }

    AdobeXMPCore::IArrayNode_v1::CreateUnorderedArrayNode(v32, v33, v34, v35);
  }

  if (!*a3)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 102;
    exception[1] = "Array has to be homogeneous";
    *(exception + 16) = 0;
  }

  if (*(&v8 + 1))
  {
    v27 = *(&v8 + 1);
LABEL_101:
    std::__shared_weak_count::__release_shared[abi:fe200100](v27);
  }

LABEL_102:
  if (SHIBYTE(v41) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(v42);
  }
}

void sub_1860E3E58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v25);
  }

  v27 = *(v24 + 8);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v27);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

AdobeXMPCore::ISimpleNode_v1 *XMPUtils::CreateTerminalNode@<X0>(AdobeXMPCore::ISimpleNode_v1 *this@<X0>, const char *a2@<X1>, const char *a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  if ((a3 & 0x1F00) == 0)
  {
    AdobeXMPCore::ISimpleNode_v1::CreateSimpleNode(this, 0xFFFFFFFFFFFFFFFFLL, a2, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
  }

  if ((a3 & 0x100) != 0)
  {
    AdobeXMPCore::IStructureNode_v1::CreateStructureNode(this, 0xFFFFFFFFFFFFFFFFLL, a2, 0xFFFFFFFFFFFFFFFFLL);
  }

  if ((a3 & 0x200) != 0)
  {
    if ((a3 & 0x800) == 0)
    {
      if ((a3 & 0x400) == 0)
      {
        AdobeXMPCore::IArrayNode_v1::CreateUnorderedArrayNode(this, 0xFFFFFFFFFFFFFFFFLL, a2, 0xFFFFFFFFFFFFFFFFLL);
      }

      AdobeXMPCore::IArrayNode_v1::CreateOrderedArrayNode(this, 0xFFFFFFFFFFFFFFFFLL, a2, 0xFFFFFFFFFFFFFFFFLL);
    }

    AdobeXMPCore::IArrayNode_v1::CreateAlternativeArrayNode(this, 0xFFFFFFFFFFFFFFFFLL, a2, 0xFFFFFFFFFFFFFFFFLL);
  }

  return this;
}

void sub_1860E4040(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::shared_ptr<AdobeXMPCore::INode_v1>::operator=[abi:fe200100]<AdobeXMPCore::IStructureNode_v1,0>(void *a1, uint64_t a2)
{
  v3 = *a2;
  if (*a2)
  {
    v3 = (v3 + *(*v3 - 544));
  }

  v4 = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  v5 = a1[1];
  *a1 = v3;
  a1[1] = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v5);
  }

  return a1;
}

void XMPUtils::DoSetArrayItem(void *a1, int a2, char *a3, int a4)
{
  v8 = *a1 + *(**a1 - 688);
  v9 = (*(*v8 + 560))(v8);
  v36[0] = 0;
  v36[1] = 0;
  v37 = 0;
  (*(*(*a1 + *(**a1 - 544)) + 88))(&__p);
  v10 = (*(*__p + 192))(__p);
  std::string::basic_string[abi:fe200100]<0>(v36, v10);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v34);
  }

  __p = 0;
  v34 = 0;
  v35 = 0;
  (*(*(*a1 + *(**a1 - 544)) + 72))(&v32);
  v11 = (*(*v32 + 192))(v32);
  std::string::basic_string[abi:fe200100]<0>(&__p, v11);
  if (*(&v32 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v32 + 1));
  }

  v12 = VerifySetOptions(a4 & 0xFFFF3FFF, a3);
  v13 = a4 & 0xC000;
  if (a2 == -1)
  {
    v14 = v9;
  }

  else
  {
    v14 = a2;
  }

  if (v13 == 0x8000 && v14 == 0)
  {
    v13 = 0x4000;
    v14 = 1;
  }

  v15 = v14 == v9 && v13 == 0x8000;
  if (v14 == v9 && v13 == 0x8000)
  {
    v16 = 0;
  }

  else
  {
    v16 = v13;
  }

  v17 = v14 + v15;
  v32 = 0uLL;
  if (v14 + v15 == v9 + 1)
  {
    if (v16 < 0x8000)
    {
      XMPUtils::CreateArrayChildNode(a1, v12, &v31);
      v18 = v31;
      v31 = 0uLL;
      v19 = *(&v32 + 1);
      v32 = v18;
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v19);
        if (*(&v31 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v31 + 1));
        }
      }

      v20 = v9 + 1;
LABEL_31:
      (*(**a1 + 664))(*a1, &v32, v20);
      goto LABEL_32;
    }

    v27 = "Can't insert before or after implicit new item";
LABEL_47:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 104;
    exception[1] = v27;
    *(exception + 16) = 0;
  }

  if (v17 < 1 || v17 > v9)
  {
    v27 = "Array index out of bounds";
    goto LABEL_47;
  }

  if (v16)
  {
    XMPUtils::CreateArrayChildNode(a1, v12, &v31);
    v22 = v31;
    v31 = 0uLL;
    v23 = *(&v32 + 1);
    v32 = v22;
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v23);
      if (*(&v31 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v31 + 1));
      }
    }

    if (v16 == 0x8000)
    {
      v20 = (v17 + 1);
    }

    else
    {
      v20 = v17;
    }

    goto LABEL_31;
  }

  (*(**a1 + 656))(&v29);
  (*(*v29 + 232))(&v31);
  v24 = v31;
  if (v31)
  {
    v24 = v31 + *(*v31 - 544);
  }

  v25 = *(&v31 + 1);
  v31 = 0uLL;
  v26 = *(&v32 + 1);
  *&v32 = v24;
  *(&v32 + 1) = v25;
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v26);
    if (*(&v31 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](*(&v31 + 1));
    }
  }

  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v30);
  }

LABEL_32:
  XMPUtils::SetNode(&v32, a3, v12);
  if (*(&v32 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v32 + 1));
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(v36[0]);
  }
}

void sub_1860E44E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a14);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void XMPUtils::GetNameSpaceAndNameFromStepValue(const std::string *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = std::string::find(a1, 58, 0);
  memset(&v11, 0, sizeof(v11));
  std::string::basic_string(&v11, a1, 0, v8, &v10);
  (*(**a2 + 80))(&v10);
  v9 = (*(*v10.__r_.__value_.__l.__data_ + 192))(v10.__r_.__value_.__r.__words[0]);
  MEMORY[0x186602520](a3, v9);
  if (v10.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v10.__r_.__value_.__l.__size_);
  }

  std::string::basic_string(&v10, a1, v8 + 1, 0xFFFFFFFFFFFFFFFFLL, &v12);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v10;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_1860E46B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL XMPUtils::HandleConstAliasStep(void *a1, void *a2, uint64_t *a3, int *a4)
{
  std::shared_ptr<AdobeXMPCore::INode_v1>::operator=[abi:fe200100]<AdobeXMPCore::ISimpleNode_v1,0>(a2, a1);
  v8 = *a3;
  v9 = a3[1];
  if (*a3 == v9)
  {
LABEL_103:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 102;
    exception[1] = "Empty XPath";
    *(exception + 16) = 0;
  }

  if ((v9 - v8) <= 0x20)
  {
    goto LABEL_102;
  }

  if ((*(v8 + 56) & 0x10) == 0)
  {
    return 0;
  }

  v11 = std::__tree<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>>>::find<std::string>(sRegisteredAliasMap, v8 + 32);
  if (sRegisteredAliasMap + 8 == v11)
  {
    XMPUtils::HandleConstAliasStep();
  }

  v12 = v11;
  __p[0] = 0;
  __p[1] = 0;
  v60 = 0;
  v13 = *(v11 + 56);
  if (*(v11 + 64) == v13)
  {
    goto LABEL_102;
  }

  if (v13[23] < 0)
  {
    v13 = *v13;
  }

  std::string::basic_string[abi:fe200100]<0>(__p, v13);
  v14 = *(v12 + 56);
  if ((*(v12 + 64) - v14) <= 0x20)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v15 = (v14 + 32);
  v16 = *(v14 + 55);
  if (v16 < 0)
  {
    v17 = *(v14 + 32);
    v16 = *(v14 + 40);
  }

  else
  {
    v17 = (v14 + 32);
  }

  if (v16 < 1)
  {
    goto LABEL_26;
  }

  v18 = &v17[v16];
  v19 = v17;
  while (1)
  {
    v20 = memchr(v19, 58, v16);
    if (!v20)
    {
      goto LABEL_26;
    }

    if (*v20 == 58)
    {
      break;
    }

    v19 = v20 + 1;
    v16 = v18 - v19;
    if (v18 - v19 < 1)
    {
      goto LABEL_26;
    }
  }

  if (v20 == v18 || v20 - v17 == -1)
  {
LABEL_26:
    __assert_rtn("HandleConstAliasStep", "XMPUtils.cpp", 296, "colonPos != std::string::npos");
  }

  memset(&v58, 0, sizeof(v58));
  std::string::basic_string(&v58, v15, v20 - v17 + 1, 0xFFFFFFFFFFFFFFFFLL, &v61);
  (*(*(*a1 + *(**a1 - 792)) + 648))(&v61);
  v21 = v61;
  v61 = 0uLL;
  v22 = a2[1];
  *a2 = v21;
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v22);
    if (*(&v61 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](*(&v61 + 1));
    }

    v23 = *a2;
    if (!*a2)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v23 = v21;
    if (!v21)
    {
      goto LABEL_37;
    }
  }

  if (*(v12 + 64) - *(v12 + 56) != 64)
  {
    if ((*(*v23 + 40))(v23) != 2)
    {
      v51 = "destNode->GetNodeType() == INode::kNTArray";
      v52 = 301;
      goto LABEL_101;
    }

    v24 = *(v12 + 56);
    if ((*(v12 + 64) - v24) > 0x40)
    {
      v25 = (v24 + 64);
      v26 = *(v24 + 88);
      if (v26 == 5)
      {
        if (*(v24 + 87) < 0 && *(v24 + 72) == 23)
        {
          v29 = *v25;
          v30 = *v29;
          v31 = v29[1];
          v32 = *(v29 + 15);
          v33 = v30 == 0x616C3A6C6D783F5BLL && v31 == 0x65642D78223D676ELL;
          if (v33 && v32 == 0x5D22746C75616665)
          {
            v56 = 0;
            v57 = 0;
            v35 = a2[1];
            *&v61 = *a2;
            *(&v61 + 1) = v35;
            if (v35)
            {
              atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            XMPUtils::GetNodeChildIterator(&v61, &v56);
            if (v35)
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v35);
            }

            v36 = v56;
            v37 = 1;
            do
            {
              v10 = v36 != 0;
              if (!v36)
              {
                break;
              }

              (*(*v36 + 48))(&v61, v36);
              v38 = v61;
              (*(*v61 + 128))(&v61, v61, "http://www.w3.org/XML/1998/namespace", 36, "lang", -1);
              v39 = v61;
              if ((*(*v61 + 40))(v61) != 1)
              {
                goto LABEL_65;
              }

              (*(*v39 + 232))(&v61, v39);
              v40 = *(&v61 + 1);
              (*(*v61 + 504))(&v54);
              v41 = (*(*v54 + 192))(v54);
              v42 = strcmp("x-default", v41);
              if (v55)
              {
                std::__shared_weak_count::__release_shared[abi:fe200100](v55);
              }

              if (v40)
              {
                std::__shared_weak_count::__release_shared[abi:fe200100](v40);
              }

              if (!v42)
              {
                if (*(&v38 + 1))
                {
                  atomic_fetch_add_explicit((*(&v38 + 1) + 8), 1uLL, memory_order_relaxed);
                }

                v45 = a2[1];
                *a2 = v38;
                if (v45)
                {
                  std::__shared_weak_count::__release_shared[abi:fe200100](v45);
                }

                v44 = 0;
                if (a4)
                {
                  *a4 = v37;
                }
              }

              else
              {
LABEL_65:
                (*(*v36 + 56))(&v61, v36);
                v36 = v61;
                ++v37;
                v43 = v57;
                v57 = *(&v61 + 1);
                if (v43)
                {
                  std::__shared_weak_count::__release_shared[abi:fe200100](v43);
                }

                v44 = 1;
              }

              if (*(&v39 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:fe200100](*(&v39 + 1));
              }

              if (*(&v38 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:fe200100](*(&v38 + 1));
              }
            }

            while ((v44 & 1) != 0);
            if (v57)
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v57);
            }

            goto LABEL_38;
          }
        }

        v51 = "aliasPos->second[2].step == [?xml:lang=\\x-default\\]";
        v52 = 315;
LABEL_101:
        __assert_rtn("HandleConstAliasStep", "XMPUtils.cpp", v52, v51);
      }

      if (v26 == 3)
      {
        v27 = *(v24 + 87);
        if (v27 < 0)
        {
          if (*(v24 + 72) != 3)
          {
LABEL_100:
            v51 = "aliasPos->second[2].step == [1]";
            v52 = 304;
            goto LABEL_101;
          }

          v25 = *v25;
        }

        else if (v27 != 3)
        {
          goto LABEL_100;
        }

        v46 = *v25;
        v47 = *(v25 + 2);
        if (v46 == 12635 && v47 == 93)
        {
          (*(**a2 + 248))(&v56);
          (*(*v56 + 656))(&v61);
          v49 = v61;
          v61 = 0uLL;
          v50 = a2[1];
          *a2 = v49;
          if (v50)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v50);
            if (*(&v61 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](*(&v61 + 1));
            }
          }

          if (v57)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v57);
          }

          (*(**a2 + 40))();
          v10 = *a2 != 0;
          if (a4 && *a2)
          {
            v10 = 1;
            *a4 = 1;
          }

          goto LABEL_38;
        }

        goto LABEL_100;
      }

LABEL_37:
      v10 = 0;
      goto LABEL_38;
    }

    goto LABEL_102;
  }

  v10 = 1;
LABEL_38:
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v60) < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_1860E4E18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v24);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void XMPUtils::GetNodeChildIterator(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  v4 = (*(**a1 + 40))(*a1);
  v5 = *a1;
  if (v4 == 2)
  {
    (*(*v5 + 248))(&v7);
    v6 = *(&v7 + 1);
    (*(*(v7 + *(*v7 - 688)) + 552))(&v7, v7 + *(*v7 - 688));
  }

  else
  {
    if ((*(*v5 + 40))(v5) != 4)
    {
      return;
    }

    (*(**a1 + 240))(&v7);
    v6 = *(&v7 + 1);
    (*(*(v7 + *(*v7 - 688)) + 552))(&v7, v7 + *(*v7 - 688));
  }

  *a2 = v7;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v6);
  }
}

void sub_1860E5094(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL XMPUtils::HandleAliasStep(void *a1, uint64_t *a2, char a3, unsigned int a4, void *a5, int *a6)
{
  std::shared_ptr<AdobeXMPCore::INode_v1>::operator=[abi:fe200100]<AdobeXMPCore::ISimpleNode_v1,0>(a5, a1);
  v12 = *a2;
  v13 = a2[1];
  v14 = v13 - *a2;
  if (v13 == *a2)
  {
LABEL_174:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 102;
    exception[1] = "Empty XPath";
    *(exception + 16) = 0;
  }

  if (v14 <= 0x20)
  {
    goto LABEL_173;
  }

  if ((*(v12 + 56) & 0x10) == 0)
  {
    return 0;
  }

  v16 = std::__tree<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>>>::find<std::string>(sRegisteredAliasMap, v12 + 32);
  if (sRegisteredAliasMap + 8 == v16)
  {
    XMPUtils::HandleAliasStep();
  }

  v17 = v16;
  __p = 0;
  v91 = 0;
  v92 = 0;
  v18 = *(v16 + 56);
  if (*(v16 + 64) == v18)
  {
    goto LABEL_173;
  }

  if (v18[23] < 0)
  {
    v18 = *v18;
  }

  std::string::basic_string[abi:fe200100]<0>(&__p, v18);
  v19 = *(v17 + 56);
  if ((*(v17 + 64) - v19) <= 0x20)
  {
LABEL_173:
    __break(1u);
    goto LABEL_174;
  }

  v20 = (v19 + 32);
  v21 = *(v19 + 55);
  if (v21 < 0)
  {
    v22 = *(v19 + 32);
    v21 = *(v19 + 40);
  }

  else
  {
    v22 = (v19 + 32);
  }

  if (v21 < 1)
  {
    goto LABEL_26;
  }

  v23 = &v22[v21];
  v24 = v22;
  while (1)
  {
    v25 = memchr(v24, 58, v21);
    if (!v25)
    {
      goto LABEL_26;
    }

    if (*v25 == 58)
    {
      break;
    }

    v24 = v25 + 1;
    v21 = v23 - v24;
    if (v23 - v24 < 1)
    {
      goto LABEL_26;
    }
  }

  if (v25 == v23 || v25 - v22 == -1)
  {
LABEL_26:
    __assert_rtn("HandleAliasStep", "XMPUtils.cpp", 362, "colonPos != std::string::npos");
  }

  memset(&v89, 0, sizeof(v89));
  std::string::basic_string(&v89, v20, v25 - v22 + 1, 0xFFFFFFFFFFFFFFFFLL, &v93);
  (*(*(*a1 + *(**a1 - 792)) + 648))(&v93);
  v26 = v93;
  v93 = 0uLL;
  v27 = a5[1];
  *a5 = v26;
  if (!v27)
  {
    v28 = v26;
    if (v26)
    {
      goto LABEL_30;
    }

LABEL_28:
    if ((a3 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  std::__shared_weak_count::__release_shared[abi:fe200100](v27);
  if (*(&v93 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v93 + 1));
  }

  v28 = *a5;
  if (!*a5)
  {
    goto LABEL_28;
  }

LABEL_30:
  v29 = *(v17 + 56);
  v30 = (*(v17 + 64) - v29) >> 5;
  if (v30 == 2)
  {
    if (!v28)
    {
      std::shared_ptr<AdobeXMPCore::INode_v1>::operator=[abi:fe200100]<AdobeXMPCore::ISimpleNode_v1,0>(a5, a1);
      if (v14 == 64)
      {
        v34 = a4;
      }

      else
      {
        v34 = 0;
      }

      v93 = 0uLL;
      if (v92 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v36 = &v89;
      }

      else
      {
        v36 = v89.__r_.__value_.__r.__words[0];
      }

      XMPUtils::CreateTerminalNode(p_p, v36, v34, &v93);
      if (v93)
      {
        (*(**a5 + 240))(&v88);
        (*(*(v88 + *(*v88 - 688)) + 520))(v88 + *(*v88 - 688), &v93);
        if (*(&v88 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v88 + 1));
        }

        v38 = *(&v93 + 1);
        v37 = v93;
        if (*(&v93 + 1))
        {
          atomic_fetch_add_explicit((*(&v93 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v39 = a5[1];
        *a5 = v37;
        a5[1] = v38;
        if (v39)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v39);
          v37 = *a5;
        }

        v15 = v37 != 0;
      }

      else
      {
        v15 = 0;
      }

      if (*(&v93 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v93 + 1));
      }

      goto LABEL_151;
    }

    goto LABEL_32;
  }

  if (v30 != 3)
  {
    v81 = "aliasPos->second.size() == 3";
    v82 = 381;
    goto LABEL_172;
  }

  v31 = (v29 + 64);
  v32 = *(v29 + 88);
  if (v32 == 5)
  {
    if ((*(v29 + 87) & 0x80000000) == 0 || *(v29 + 72) != 23 || ((v40 = *v31, v41 = *v40, v42 = v40[1], v43 = *(v40 + 15), v41 == 0x616C3A6C6D783F5BLL) ? (v44 = v42 == 0x65642D78223D676ELL) : (v44 = 0), v44 ? (v45 = v43 == 0x5D22746C75616665) : (v45 = 0), !v45))
    {
      v81 = "aliasPos->second[2].step == [?xml:lang=\\x-default\\]";
      v82 = 406;
      goto LABEL_172;
    }

    (*(*(*a1 + *(**a1 - 792)) + 648))(&v93);
    v46 = v93;
    v93 = 0uLL;
    v47 = a5[1];
    *a5 = v46;
    if (v47)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v47);
      if (*(&v93 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v93 + 1));
      }
    }

    if (*a5 || (a3 & 1) != 0)
    {
      v88 = 0uLL;
      if (v92 >= 0)
      {
        v48 = &__p;
      }

      else
      {
        v48 = __p;
      }

      if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v49 = &v89;
      }

      else
      {
        v49 = v89.__r_.__value_.__r.__words[0];
      }

      XMPUtils::CreateTerminalNode(v48, v49, 0x1200, &v88);
      v50 = *a1 + *(**a1 - 688);
      (*(*v50 + 520))(v50, &v88);
      v52 = *(&v88 + 1);
      v51 = v88;
      if (*(&v88 + 1))
      {
        atomic_fetch_add_explicit((*(&v88 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v53 = a5[1];
      *a5 = v51;
      a5[1] = v52;
      if (v53)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v53);
        v51 = *a5;
        v52 = a5[1];
      }

      v86 = 0;
      v87 = 0;
      *&v93 = v51;
      *(&v93 + 1) = v52;
      if (v52)
      {
        atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      XMPUtils::GetNodeChildIterator(&v93, &v86);
      if (v52)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v52);
      }

      v54 = v86;
      v55 = 1;
      do
      {
        if (!v54)
        {
          v86 = 0;
          v93 = 0uLL;
          AdobeXMPCore::ISimpleNode_v1::CreateSimpleNode("http://www.w3.org/XML/1998/namespace", 0x24, "lang", 0xFFFFFFFFFFFFFFFFLL, "x-default", 0xFFFFFFFFFFFFFFFFLL);
        }

        (*(*v54 + 48))(&v93, v54);
        v56 = v93;
        (*(*v93 + 128))(&v93, v93, "http://www.w3.org/XML/1998/namespace", 36, "lang", -1);
        v57 = v93;
        if ((*(*v93 + 40))(v93) != 1)
        {
          goto LABEL_93;
        }

        (*(*v57 + 232))(&v93, v57);
        v58 = *(&v93 + 1);
        (*(*v93 + 504))(&v84);
        v59 = (*(*v84 + 192))(v84);
        v60 = strcmp("x-default", v59);
        if (v85)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v85);
        }

        if (v58)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v58);
        }

        if (!v60)
        {
          if (*(&v56 + 1))
          {
            atomic_fetch_add_explicit((*(&v56 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v63 = a5[1];
          *a5 = v56;
          if (v63)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v63);
          }

          v62 = 0;
          if (a6)
          {
            *a6 = v55;
          }
        }

        else
        {
LABEL_93:
          (*(*v54 + 56))(&v93, v54);
          v54 = v93;
          ++v55;
          v61 = v87;
          v87 = *(&v93 + 1);
          if (v61)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v61);
          }

          v62 = 1;
        }

        if (*(&v57 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v57 + 1));
        }

        if (*(&v56 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v56 + 1));
        }
      }

      while ((v62 & 1) != 0);
      if (v87)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v87);
      }

      if (*(&v88 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v88 + 1));
      }

LABEL_32:
      v15 = 1;
      goto LABEL_151;
    }
  }

  else if (v32 == 3)
  {
    v33 = *(v29 + 87);
    if (v33 < 0)
    {
      if (*(v29 + 72) != 3)
      {
LABEL_171:
        v81 = "aliasPos->second[2].step == [1]";
        v82 = 383;
LABEL_172:
        __assert_rtn("HandleAliasStep", "XMPUtils.cpp", v82, v81);
      }

      v31 = *v31;
    }

    else if (v33 != 3)
    {
      goto LABEL_171;
    }

    v64 = *v31;
    v65 = *(v31 + 2);
    if (v64 != 12635 || v65 != 93)
    {
      goto LABEL_171;
    }

    (*(*(*a1 + *(**a1 - 792)) + 648))(&v93);
    v67 = v93;
    v93 = 0uLL;
    v68 = a5[1];
    *a5 = v67;
    if (v68)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v68);
      if (*(&v93 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v93 + 1));
      }

      v69 = *a5;
    }

    else
    {
      v69 = v67;
    }

    if (v69 || (a3 & 1) != 0)
    {
      if (!v69)
      {
        v93 = 0uLL;
        if (v92 >= 0)
        {
          v70 = &__p;
        }

        else
        {
          v70 = __p;
        }

        if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v71 = &v89;
        }

        else
        {
          v71 = v89.__r_.__value_.__r.__words[0];
        }

        XMPUtils::CreateTerminalNode(v70, v71, 0x600, &v93);
        v72 = *a1 + *(**a1 - 688);
        (*(*v72 + 520))(v72, &v93);
        v73 = v93;
        if (*(&v93 + 1))
        {
          atomic_fetch_add_explicit((*(&v93 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v74 = a5[1];
        *a5 = v73;
        if (v74)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v74);
        }

        if (*(&v93 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v93 + 1));
        }

        v69 = *a5;
      }

      (*(*v69 + 248))(&v88);
      (*(*v88 + 656))(&v93);
      v75 = v93;
      if (*(&v93 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v93 + 1));
      }

      if (*(&v88 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v88 + 1));
      }

      if (!v75)
      {
        v93 = 0uLL;
        if (v92 >= 0)
        {
          v79 = &__p;
        }

        else
        {
          v79 = __p;
        }

        if (v92 >= 0)
        {
          v80 = HIBYTE(v92);
        }

        else
        {
          v80 = v91;
        }

        AdobeXMPCore::ISimpleNode_v1::CreateSimpleNode(v79, v80, "[]", 0xFFFFFFFFFFFFFFFFLL, "", 0xFFFFFFFFFFFFFFFFLL);
      }

      (*(**a5 + 248))(&v88);
      (*(*v88 + 656))(&v93);
      v76 = v93;
      v93 = 0uLL;
      v77 = a5[1];
      *a5 = v76;
      if (v77)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v77);
        if (*(&v93 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v93 + 1));
        }
      }

      if (*(&v88 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v88 + 1));
      }

      v15 = 1;
      if (a6)
      {
        *a6 = 1;
      }

      goto LABEL_151;
    }
  }

LABEL_29:
  v15 = 0;
LABEL_151:
  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v92) < 0)
  {
    operator delete(__p);
  }

  return v15;
}

void sub_1860E6194(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a14);
  }

  v32 = *(v30 - 88);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v32);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a16);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a18);
  }

  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

void XMPUtils::FindNode(void *a1, uint64_t *a2, int a3, unsigned int a4, uint64_t a5, _DWORD *a6, unsigned int a7)
{
  v210 = 0uLL;
  v13 = *a1;
  if (*a1)
  {
    v13 = (v13 + *(*v13 - 544));
  }

  v14 = a1[1];
  v210.n128_u64[0] = v13;
  v210.n128_u64[1] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    v15 = a1[1];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!a4)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v15 = 0;
  if (a4)
  {
LABEL_9:
    if ((a3 & 1) == 0)
    {
      __assert_rtn("FindNode", "XMPUtils.cpp", 468, "(leafOptions == 0) || createNodes");
    }
  }

LABEL_10:
  if (*a2 == a2[1])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 102;
    exception[1] = "Empty XPath";
    *(exception + 16) = 0;
  }

  v209 = 0uLL;
  v16.n128_f64[0] = AdobeXMPCore::INameSpacePrefixMap_v1::GetDefaultNameSpacePrefixMap(&v209);
  if ((a2[1] - *a2) <= 0x20)
  {
    goto LABEL_502;
  }

  if ((*(*a2 + 56) & 0x10) != 0)
  {
    if (!XMPUtils::HandleAliasStep(a1, a2, a3, a4, &v210, 0))
    {
      v163 = 0;
LABEL_486:
      if (*(&v209 + 1))
      {
        v171 = v163;
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v209 + 1));
        v163 = v171;
      }

      if (v163)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v163);
      }

      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v15);
      }

      if (v210.n128_u64[1])
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v210.n128_u64[1]);
      }

      return;
    }

    v182 = a3;
    v177 = a4;
    v179 = a5;
    v17 = 2;
  }

  else
  {
    v182 = a3;
    v177 = a4;
    v179 = a5;
    v17 = 1;
  }

  v183 = ((a2[1] - *a2) >> 5) - a7;
  if (v17 >= v183)
  {
    v181 = 0;
    goto LABEL_457;
  }

  v181 = 0;
  v18 = 0;
  v178 = 0;
  v19 = v15;
LABEL_18:
  if (!v210.n128_u64[0])
  {
    v15 = v19;
    goto LABEL_464;
  }

  memset(&v208, 0, sizeof(v208));
  if (v17 >= (a2[1] - *a2) >> 5)
  {
    goto LABEL_502;
  }

  v20 = *a2 + 32 * v17;
  if (*(v20 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v208, *v20, *(v20 + 8));
  }

  else
  {
    v21 = *v20;
    v208.__r_.__value_.__r.__words[2] = *(v20 + 16);
    *&v208.__r_.__value_.__l.__data_ = v21;
  }

  memset(&v207, 0, sizeof(v207));
  v22 = *a2;
  v23 = a2[1];
  if (v17 - 1 >= (v23 - *a2) >> 5)
  {
    goto LABEL_502;
  }

  v24 = v22 + 32 * (v17 - 1);
  if (*(v24 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v207, *v24, *(v24 + 8));
    v22 = *a2;
    v23 = a2[1];
  }

  else
  {
    v16 = *v24;
    v207.__r_.__value_.__r.__words[2] = *(v24 + 16);
    *&v207.__r_.__value_.__l.__data_ = v16;
  }

  memset(&v206, 0, sizeof(v206));
  if (v17 >= (v23 - v22) >> 5)
  {
    goto LABEL_502;
  }

  v25 = 0;
  v26 = *(v22 + 32 * v17 + 24);
  if (v26 > 3)
  {
    if (v26 != 4)
    {
      if (v26 != 5)
      {
        if (v26 != 6)
        {
          goto LABEL_133;
        }

        memset(&__str, 0, sizeof(__str));
        memset(&v204, 0, sizeof(v204));
        v200[0] = 0;
        v200[1] = 0;
        v201 = 0;
        SplitNameAndValue(&v208, &__str, &v204);
        v29 = v18;
        v30 = v210;
        if (v210.n128_u64[1])
        {
          atomic_fetch_add_explicit((v210.n128_u64[1] + 8), 1uLL, memory_order_relaxed);
        }

        v31 = std::string::find(&__str, 58, 0);
        memset(&v199, 0, sizeof(v199));
        std::string::basic_string(&v199, &__str, 0, v31, &__p);
        (*(*v209 + 80))(&__p);
        v32 = (*(*__p + 192))(__p);
        MEMORY[0x186602520](v200, v32);
        if (v192)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v192);
        }

        if (!v30.n128_u64[0] || (*(*v30.n128_u64[0] + 40))(v30.n128_u64[0]) != 2)
        {
          v42 = 5;
          v18 = v29;
          goto LABEL_313;
        }

        v202 = 0;
        v203 = 0;
        (*(*v30.n128_u64[0] + 248))(&v202, v30.n128_u64[0]);
        v33 = (*(*(v202 + *(*v202 - 688)) + 560))(v202 + *(*v202 - 688));
        if (!v33)
        {
          v127 = 0;
          v42 = 0;
          v18 = v29;
          goto LABEL_307;
        }

        v34 = v33;
        v175 = 0;
        v35 = 1;
        while (1)
        {
          v197 = 0;
          v198 = 0;
          (*(*v202 + 656))(&v197);
          if ((*(*v197 + 40))(v197) != 4)
          {
            v42 = 5;
            goto LABEL_76;
          }

          v195 = 0;
          v196 = 0;
          (*(*v197 + 240))(&__p);
          (*(*__p + 648))(&v195);
          if (v192)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v192);
          }

          if (v195 && (*(*v195 + 40))(v195) == 1)
          {
            __p = 0;
            v192 = 0;
            v193 = 0;
            (*(*v195 + 232))(&v190);
            (*(*v190.n128_u64[0] + 504))(&v194);
            v36 = (*(*v194.n128_u64[0] + 192))(v194.n128_u64[0]);
            std::string::basic_string[abi:fe200100]<0>(&__p, v36);
            if (v194.n128_u64[1])
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v194.n128_u64[1]);
            }

            if (v190.n128_u64[1])
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v190.n128_u64[1]);
            }

            v37 = HIBYTE(v193);
            if (v193 >= 0)
            {
              v38 = HIBYTE(v193);
            }

            else
            {
              v38 = v192;
            }

            size = HIBYTE(v204.__r_.__value_.__r.__words[2]);
            if ((v204.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              size = v204.__r_.__value_.__l.__size_;
            }

            if (v38 == size && (v193 >= 0 ? (p_p = &__p) : (p_p = __p), (v204.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v41 = &v204) : (v41 = v204.__r_.__value_.__r.__words[0]), !memcmp(p_p, v41, v38)))
            {
              (*(*v202 + 656))(&v194);
              v16 = v194;
              v194 = 0uLL;
              v43 = v210.n128_u64[1];
              v210 = v16;
              if (v43)
              {
                std::__shared_weak_count::__release_shared[abi:fe200100](v43);
                if (v194.n128_u64[1])
                {
                  std::__shared_weak_count::__release_shared[abi:fe200100](v194.n128_u64[1]);
                }
              }

              v175 = 1;
              v42 = 16;
              if ((v193 & 0x8000000000000000) == 0)
              {
                goto LABEL_74;
              }
            }

            else
            {
              v42 = 0;
              if ((v37 & 0x80) == 0)
              {
                goto LABEL_74;
              }
            }

            operator delete(__p);
          }

          else
          {
            v42 = 18;
          }

LABEL_74:
          if (v196)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v196);
          }

LABEL_76:
          if (v198)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v198);
          }

          if (v42 && v42 != 18)
          {
            v18 = v29;
            if (v42 == 16)
            {
              v42 = 0;
            }

LABEL_306:
            v127 = v175;
LABEL_307:
            if (v203)
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v203);
            }

            if (!v42)
            {
              if (v127)
              {
                v42 = 0;
              }

              else
              {
                v42 = 5;
              }
            }

LABEL_313:
            if (SHIBYTE(v199.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v199.__r_.__value_.__l.__data_);
            }

            if (v30.n128_u64[1])
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v30.n128_u64[1]);
            }

            if (SHIBYTE(v201) < 0)
            {
              operator delete(v200[0]);
            }

            if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v204.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            v25 = 0;
            v15 = v19;
            if (!v42)
            {
LABEL_423:
              v42 = 0;
            }

LABEL_424:
            if (SHIBYTE(v206.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v206.__r_.__value_.__l.__data_);
            }

            if (v25)
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v25);
            }

            if (SHIBYTE(v207.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v207.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v208.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v208.__r_.__value_.__l.__data_);
            }

            if (v42 <= 3)
            {
              if (v42)
              {
                goto LABEL_485;
              }

LABEL_436:
              ++v17;
              v19 = v15;
              if (v17 == v183)
              {
LABEL_457:
                v161 = v210;
                if (v210.n128_u64[1])
                {
                  atomic_fetch_add_explicit((v210.n128_u64[1] + 8), 1uLL, memory_order_relaxed);
                }

                v162 = *(v179 + 8);
                *v179 = v161;
                if (v162)
                {
                  std::__shared_weak_count::__release_shared[abi:fe200100](v162);
                }

                goto LABEL_485;
              }

              goto LABEL_18;
            }

            if (v42 == 4)
            {
              goto LABEL_436;
            }

            if (v210.n128_u64[0])
            {
              goto LABEL_485;
            }

LABEL_464:
            if ((v178 & 1) == 0)
            {
              goto LABEL_485;
            }

            *&v208.__r_.__value_.__l.__data_ = 0uLL;
            (*(*v18 + 56))(&v208, v18, v16);
            if ((*(*v208.__r_.__value_.__l.__data_ + 40))(v208.__r_.__value_.__r.__words[0]) == 2)
            {
              (*(*v208.__r_.__value_.__l.__data_ + 248))(&v207);
              (*(*v207.__r_.__value_.__l.__data_ + 680))(&v186);
              v164 = v187;
              if (v187)
              {
                goto LABEL_467;
              }

              goto LABEL_468;
            }

            if ((*(*v208.__r_.__value_.__l.__data_ + 40))(v208.__r_.__value_.__r.__words[0]) == 4)
            {
              (*(*v208.__r_.__value_.__l.__data_ + 240))(&v207);
              v165 = v207.__r_.__value_.__r.__words[0];
              (*(*v18 + 88))(&v206, v18);
              v166 = v18;
              v167 = (*(*v206.__r_.__value_.__l.__data_ + 192))(v206.__r_.__value_.__r.__words[0]);
              (*(*v166 + 88))(&__str, v166);
              v168 = (*(*__str.__r_.__value_.__l.__data_ + 208))(__str.__r_.__value_.__r.__words[0]);
              (*(*v166 + 72))(&v204, v166);
              v169 = (*(*v204.__r_.__value_.__l.__data_ + 192))(v204.__r_.__value_.__r.__words[0]);
              (*(*v166 + 72))(v200, v166);
              v170 = (*(*v200[0] + 208))(v200[0]);
              (*(*v165 + 672))(&v184, v165, v167, v168, v169, v170);
              if (v185)
              {
                std::__shared_weak_count::__release_shared[abi:fe200100](v185);
              }

              if (v200[1])
              {
                std::__shared_weak_count::__release_shared[abi:fe200100](v200[1]);
              }

              if (v204.__r_.__value_.__l.__size_)
              {
                std::__shared_weak_count::__release_shared[abi:fe200100](v204.__r_.__value_.__l.__size_);
              }

              if (__str.__r_.__value_.__l.__size_)
              {
                std::__shared_weak_count::__release_shared[abi:fe200100](__str.__r_.__value_.__l.__size_);
              }

              v164 = v206.__r_.__value_.__l.__size_;
              if (v206.__r_.__value_.__l.__size_)
              {
LABEL_467:
                std::__shared_weak_count::__release_shared[abi:fe200100](v164);
              }

LABEL_468:
              if (v207.__r_.__value_.__l.__size_)
              {
                std::__shared_weak_count::__release_shared[abi:fe200100](v207.__r_.__value_.__l.__size_);
              }
            }

            if (v208.__r_.__value_.__l.__size_)
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v208.__r_.__value_.__l.__size_);
            }

LABEL_485:
            v163 = v181;
            goto LABEL_486;
          }

          if (++v35 > v34)
          {
            v42 = 0;
            v18 = v29;
            goto LABEL_306;
          }
        }
      }

      if ((*(*v210.n128_u64[0] + 40))(v210.n128_u64[0]) != 2)
      {
        v25 = 0;
        v42 = 5;
        v15 = v19;
        goto LABEL_424;
      }

      v202 = 0;
      v203 = 0;
      (*(*v210.n128_u64[0] + 248))(&v202);
      memset(&__str, 0, sizeof(__str));
      memset(&v204, 0, sizeof(v204));
      v200[0] = 0;
      v200[1] = 0;
      v201 = 0;
      SplitNameAndValue(&v208, &__str, &v204);
      v83 = v210.n128_u64[1];
      v82 = v210.n128_u64[0];
      if (v210.n128_u64[1])
      {
        atomic_fetch_add_explicit((v210.n128_u64[1] + 8), 1uLL, memory_order_relaxed);
      }

      v84 = std::string::find(&__str, 58, 0);
      memset(&v199, 0, sizeof(v199));
      std::string::basic_string(&v199, &__str, 0, v84, &__p);
      (*(*v209 + 80))(&__p);
      v85 = (*(*__p + 192))(__p);
      MEMORY[0x186602520](v200, v85);
      if (v192)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v192);
      }

      if (v82 && (*(*v82 + 40))(v82) == 2)
      {
        v197 = 0;
        v198 = 0;
        v176 = v83;
        (*(*v82 + 248))(&v197, v82);
        v86 = (*(*(v197 + *(*v197 - 688)) + 560))(v197 + *(*v197 - 688));
        if (v86)
        {
          v87 = v86;
          v88 = 0;
          v89 = 1;
          while (1)
          {
            v195 = 0;
            v196 = 0;
            (*(*v197 + 656))(&v195);
            v194 = 0uLL;
            (*(*v195 + 128))(&v194);
            if (!v194.n128_u64[0])
            {
              v97 = 15;
              goto LABEL_199;
            }

            __p = 0;
            v192 = 0;
            v193 = 0;
            (*(*v194.n128_u64[0] + 232))(&v188);
            (*(*v188 + 504))(&v190);
            v90 = (*(*v190.n128_u64[0] + 192))(v190.n128_u64[0]);
            std::string::basic_string[abi:fe200100]<0>(&__p, v90);
            if (v190.n128_u64[1])
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v190.n128_u64[1]);
            }

            v91 = v18;
            if (v189)
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v189);
            }

            v92 = HIBYTE(v193);
            if (v193 >= 0)
            {
              v93 = HIBYTE(v193);
            }

            else
            {
              v93 = v192;
            }

            v94 = HIBYTE(v204.__r_.__value_.__r.__words[2]);
            if ((v204.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v94 = v204.__r_.__value_.__l.__size_;
            }

            if (v93 == v94)
            {
              v95 = v193 >= 0 ? &__p : __p;
              v96 = (v204.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v204 : v204.__r_.__value_.__r.__words[0];
              if (!memcmp(v95, v96, v93))
              {
                break;
              }
            }

            v97 = 0;
            if (v92 < 0)
            {
              goto LABEL_196;
            }

LABEL_197:
            v18 = v91;
LABEL_199:
            if (v194.n128_u64[1])
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v194.n128_u64[1]);
            }

            if (v196)
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v196);
            }

            if ((v97 == 15 || !v97) && ++v89 <= v87)
            {
              continue;
            }

            goto LABEL_327;
          }

          (*(*v197 + 656))(&v190);
          v16 = v190;
          v190 = 0uLL;
          v98 = v210.n128_u64[1];
          v210 = v16;
          if (v98)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v98);
            if (v190.n128_u64[1])
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v190.n128_u64[1]);
            }
          }

          v88 = 1;
          v97 = 13;
          if ((v193 & 0x8000000000000000) == 0)
          {
            goto LABEL_197;
          }

LABEL_196:
          operator delete(__p);
          goto LABEL_197;
        }

        v88 = 0;
LABEL_327:
        if (v198)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v198);
        }

        if (v88)
        {
          v42 = 0;
        }

        else
        {
          v42 = 5;
        }

        v83 = v176;
      }

      else
      {
        v88 = 0;
        v42 = 5;
      }

      if (SHIBYTE(v199.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v199.__r_.__value_.__l.__data_);
      }

      if (v83)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v83);
      }

      if (SHIBYTE(v201) < 0)
      {
        operator delete(v200[0]);
      }

      if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v204.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (v203)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v203);
      }

      v25 = 0;
      v15 = v19;
      if (v88)
      {
        goto LABEL_423;
      }

      goto LABEL_424;
    }

    if ((*(*v210.n128_u64[0] + 40))(v210.n128_u64[0]) != 2)
    {
      goto LABEL_500;
    }

    v59 = v18;
    v200[0] = 0;
    v200[1] = 0;
    (*(*v210.n128_u64[0] + 248))(v200);
    v60 = std::string::find(&v207, 58, 0);
    memset(&__str, 0, sizeof(__str));
    std::string::basic_string(&__str, &v207, 0, v60, &v199);
    (*(*v209 + 80))(&v204);
    v25 = v204.__r_.__value_.__l.__size_;
    v61 = v204.__r_.__value_.__r.__words[0];
    std::string::basic_string(&v204, &v207, v60 + 1, 0xFFFFFFFFFFFFFFFFLL, &v199);
    if (SHIBYTE(v206.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v206.__r_.__value_.__l.__data_);
    }

    v206 = v204;
    v62 = v210;
    if (v210.n128_u64[1])
    {
      atomic_fetch_add_explicit((v210.n128_u64[1] + 8), 1uLL, memory_order_relaxed);
    }

    *&v204.__r_.__value_.__l.__data_ = 0uLL;
    (*(*v62.n128_u64[0] + 248))(&v204, v62.n128_u64[0]);
    if ((*(*v62.n128_u64[0] + 40))(v62.n128_u64[0]) == 2)
    {
      (*(*v62.n128_u64[0] + 248))(&v199, v62.n128_u64[0]);
      v63 = (*(*(v199.__r_.__value_.__r.__words[0] + *(*v199.__r_.__value_.__l.__data_ - 688)) + 560))(v199.__r_.__value_.__r.__words[0] + *(*v199.__r_.__value_.__l.__data_ - 688));
      if (v199.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v199.__r_.__value_.__l.__size_);
      }

      if (a6)
      {
        *a6 = v63 + 1;
      }

      if (v63)
      {
        (*(*v204.__r_.__value_.__l.__data_ + 656))(&v199);
        v16 = *&v199.__r_.__value_.__l.__data_;
        *&v199.__r_.__value_.__l.__data_ = 0uLL;
        v64 = v210.n128_u64[1];
        v210 = v16;
        v18 = v59;
        if (v64)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v64);
          if (v199.__r_.__value_.__l.__size_)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v199.__r_.__value_.__l.__size_);
          }
        }

        v65 = 0;
        v42 = 4;
        goto LABEL_217;
      }

      if (v182)
      {
        v111 = (a2[1] - *a2) >> 5;
        v18 = v59;
        if (v17 == v111 - 1)
        {
          *&v199.__r_.__value_.__l.__data_ = 0uLL;
          v112 = (*(*v61 + 192))(v61);
          if ((v206.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v113 = &v206;
          }

          else
          {
            v113 = v206.__r_.__value_.__r.__words[0];
          }

          XMPUtils::CreateTerminalNode(v112, v113, v177, &v199);
          (*(*v204.__r_.__value_.__l.__data_ + 664))(v204.__r_.__value_.__r.__words[0], &v199, 1);
          v114 = *&v199.__r_.__value_.__l.__data_;
          if (v199.__r_.__value_.__l.__size_)
          {
            atomic_fetch_add_explicit((v199.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
          }

          v115 = v210.n128_u64[1];
          v210 = v114;
          if (v115)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v115);
          }

          if ((v178 & 1) == 0)
          {
            v116 = v210.n128_u64[1];
            v18 = v210.n128_u64[0];
            if (v210.n128_u64[1])
            {
              atomic_fetch_add_explicit((v210.n128_u64[1] + 8), 1uLL, memory_order_relaxed);
            }

            if (v181)
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v181);
            }

            v181 = v116;
          }

          if (v199.__r_.__value_.__l.__size_)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v199.__r_.__value_.__l.__size_);
          }

          v65 = 0;
          v42 = 4;
          v178 = 1;
        }

        else
        {
          if (v111 <= v17 + 1)
          {
            goto LABEL_502;
          }

          v136 = *(*a2 + 32 * (v17 + 1) + 24);
          if ((v136 - 3) < 4)
          {
            *&v199.__r_.__value_.__l.__data_ = 0uLL;
            v137 = (*(*v61 + 192))(v61);
            v138 = (*(*v61 + 208))(v61);
            if ((v206.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v139 = &v206;
            }

            else
            {
              v139 = v206.__r_.__value_.__r.__words[0];
            }

            if ((v206.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v140 = HIBYTE(v206.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v140 = v206.__r_.__value_.__l.__size_;
            }

            AdobeXMPCore::IArrayNode_v1::CreateOrderedArrayNode(v137, v138, v139, v140);
          }

          if (v136 == 1)
          {
            *&v199.__r_.__value_.__l.__data_ = 0uLL;
            v157 = (*(*v61 + 192))(v61);
            v158 = (*(*v61 + 208))(v61);
            if ((v206.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v159 = &v206;
            }

            else
            {
              v159 = v206.__r_.__value_.__r.__words[0];
            }

            if ((v206.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v160 = HIBYTE(v206.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v160 = v206.__r_.__value_.__l.__size_;
            }

            AdobeXMPCore::IStructureNode_v1::CreateStructureNode(v157, v158, v159, v160);
          }

          if (v136 == 2)
          {
            *&v199.__r_.__value_.__l.__data_ = 0uLL;
            v145 = (*(*v61 + 192))(v61);
            v146 = (*(*v61 + 208))(v61);
            if ((v206.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v147 = &v206;
            }

            else
            {
              v147 = v206.__r_.__value_.__r.__words[0];
            }

            if ((v206.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v148 = HIBYTE(v206.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v148 = v206.__r_.__value_.__l.__size_;
            }

            AdobeXMPCore::ISimpleNode_v1::CreateSimpleNode(v145, v146, v147, v148, 0, 0xFFFFFFFFFFFFFFFFLL);
          }

          v42 = 0;
          v65 = 1;
        }

LABEL_217:
        if (v204.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v204.__r_.__value_.__l.__size_);
        }

        if (v62.n128_u64[1])
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v62.n128_u64[1]);
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (v200[1])
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v200[1]);
        }

        v15 = v19;
        if (v65)
        {
          goto LABEL_423;
        }

        goto LABEL_424;
      }

      v65 = 0;
      v42 = 1;
    }

    else
    {
      v42 = 0;
      v65 = 1;
    }

    v18 = v59;
    goto LABEL_217;
  }

  if (v26 == 1)
  {
    v44 = std::string::find(&v208, 58, 0);
    memset(&__str, 0, sizeof(__str));
    std::string::basic_string(&__str, &v208, 0, v44, &v199);
    v45 = v18;
    (*(*v209 + 80))(&v204);
    v25 = v204.__r_.__value_.__l.__size_;
    v46 = v204.__r_.__value_.__r.__words[0];
    std::string::basic_string(&v204, &v208, v44 + 1, 0xFFFFFFFFFFFFFFFFLL, &v199);
    if (SHIBYTE(v206.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v206.__r_.__value_.__l.__data_);
    }

    v206 = v204;
    if ((*(*v210.n128_u64[0] + 40))(v210.n128_u64[0]) != 4)
    {
      v42 = 5;
      v15 = v19;
      v18 = v45;
      goto LABEL_421;
    }

    *&v204.__r_.__value_.__l.__data_ = 0uLL;
    (*(*v210.n128_u64[0] + 240))(&v204);
    v15 = v210.n128_u64[1];
    if (v210.n128_u64[1])
    {
      atomic_fetch_add_explicit((v210.n128_u64[1] + 8), 1uLL, memory_order_relaxed);
    }

    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v19);
    }

    v47 = v204.__r_.__value_.__r.__words[0];
    v48 = (*(*v46 + 192))(v46);
    v49 = (*(*v46 + 208))(v46);
    v50 = &v208;
    if ((v208.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v50 = v208.__r_.__value_.__r.__words[0];
    }

    (*(*v47 + 648))(v200, v47, v48, v49, v50->__r_.__value_.__r.__words + v44 + 1, -1);
    v16 = *v200;
    v200[0] = 0;
    v200[1] = 0;
    v51 = v210.n128_u64[1];
    v210 = v16;
    if (v51)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v51);
      if (v200[1])
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v200[1]);
      }
    }

    if (v210.n128_u64[0])
    {
      v42 = 4;
    }

    else
    {
      v42 = 1;
    }

    if (!v210.n128_u64[0] && (v182 & 1) != 0)
    {
      v52 = (a2[1] - *a2) >> 5;
      if (v17 == v52 - 1)
      {
        v200[0] = 0;
        v200[1] = 0;
        v53 = (*(*v46 + 192))(v46);
        if ((v206.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v54 = &v206;
        }

        else
        {
          v54 = v206.__r_.__value_.__r.__words[0];
        }

        XMPUtils::CreateTerminalNode(v53, v54, v177, v200);
        v18 = v45;
        (*(*v204.__r_.__value_.__l.__data_ + 656))(v204.__r_.__value_.__r.__words[0], v200);
        v56 = v200[0];
        v55 = v200[1];
        if (v200[1])
        {
          atomic_fetch_add_explicit(v200[1] + 1, 1uLL, memory_order_relaxed);
        }

        v57 = v210.n128_u64[1];
        v210.n128_u64[0] = v56;
        v210.n128_u64[1] = v55;
        if (v57)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v57);
        }

        if ((v178 & 1) == 0)
        {
          v58 = v210.n128_u64[1];
          v18 = v210.n128_u64[0];
          if (v210.n128_u64[1])
          {
            atomic_fetch_add_explicit((v210.n128_u64[1] + 8), 1uLL, memory_order_relaxed);
          }

          if (v181)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v181);
          }

          v181 = v58;
        }

        if (v200[1])
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v200[1]);
        }

        v42 = 0;
        v178 = 1;
        goto LABEL_419;
      }

      if (v52 <= v17 + 1)
      {
        goto LABEL_502;
      }

      v117 = *(*a2 + 32 * (v17 + 1) + 24);
      if ((v117 - 3) < 4)
      {
        v200[0] = 0;
        v200[1] = 0;
        v118 = (*(*v46 + 192))(v46);
        v119 = (*(*v46 + 208))(v46);
        if ((v206.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v120 = &v206;
        }

        else
        {
          v120 = v206.__r_.__value_.__r.__words[0];
        }

        if ((v206.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v121 = HIBYTE(v206.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v121 = v206.__r_.__value_.__l.__size_;
        }

        AdobeXMPCore::IArrayNode_v1::CreateOrderedArrayNode(v118, v119, v120, v121);
      }

      if (v117 == 2)
      {
        v200[0] = 0;
        v200[1] = 0;
        v149 = (*(*v46 + 192))(v46);
        v150 = (*(*v46 + 208))(v46);
        if ((v206.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v151 = &v206;
        }

        else
        {
          v151 = v206.__r_.__value_.__r.__words[0];
        }

        if ((v206.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v152 = HIBYTE(v206.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v152 = v206.__r_.__value_.__l.__size_;
        }

        AdobeXMPCore::ISimpleNode_v1::CreateSimpleNode(v149, v150, v151, v152, 0, 0xFFFFFFFFFFFFFFFFLL);
      }

      if (v117 == 1)
      {
        v200[0] = 0;
        v200[1] = 0;
        v128 = (*(*v46 + 192))(v46);
        v129 = (*(*v46 + 208))(v46);
        if ((v206.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v130 = &v206;
        }

        else
        {
          v130 = v206.__r_.__value_.__r.__words[0];
        }

        if ((v206.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v131 = HIBYTE(v206.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v131 = v206.__r_.__value_.__l.__size_;
        }

        AdobeXMPCore::IStructureNode_v1::CreateStructureNode(v128, v129, v130, v131);
      }

      v42 = 0;
    }

    v18 = v45;
LABEL_419:
    if (v204.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v204.__r_.__value_.__l.__size_);
    }

LABEL_421:
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
      if (!v42)
      {
        goto LABEL_423;
      }

      goto LABEL_424;
    }

    goto LABEL_422;
  }

  if (v26 == 2)
  {
    v66 = &v208;
    if ((v208.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v66 = v208.__r_.__value_.__r.__words[0];
    }

    if (v66->__r_.__value_.__s.__data_[0] != 63)
    {
      __assert_rtn("FindNode", "XMPUtils.cpp", 728, "stepStr[0] == '?'");
    }

    std::string::basic_string(&__str, &v208, 1uLL, 0xFFFFFFFFFFFFFFFFLL, &v199);
    if (SHIBYTE(v208.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v208.__r_.__value_.__l.__data_);
    }

    v208 = __str;
    v67 = std::string::find(&v208, 58, 0);
    memset(&__str, 0, sizeof(__str));
    std::string::basic_string(&__str, &v208, 0, v67, &v199);
    v68 = v18;
    (*(*v209 + 80))(&v204);
    v25 = v204.__r_.__value_.__l.__size_;
    v69 = v204.__r_.__value_.__r.__words[0];
    std::string::basic_string(&v204, &v208, v67 + 1, 0xFFFFFFFFFFFFFFFFLL, &v199);
    if (SHIBYTE(v206.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v206.__r_.__value_.__l.__data_);
    }

    v206 = v204;
    v15 = v210.n128_u64[1];
    v70 = v210.n128_u64[0];
    if (v210.n128_u64[1])
    {
      atomic_fetch_add_explicit((v210.n128_u64[1] + 8), 1uLL, memory_order_relaxed);
    }

    v71 = v70;
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v19);
      v71 = v210.n128_u64[0];
    }

    v72 = (*(*v69 + 192))(v69);
    v73 = (*(*v69 + 208))(v69);
    if ((v206.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v74 = &v206;
    }

    else
    {
      v74 = v206.__r_.__value_.__r.__words[0];
    }

    if ((v206.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v75 = HIBYTE(v206.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v75 = v206.__r_.__value_.__l.__size_;
    }

    (*(*v71 + 128))(&v204, v71, v72, v73, v74, v75);
    v16 = *&v204.__r_.__value_.__l.__data_;
    *&v204.__r_.__value_.__l.__data_ = 0uLL;
    v76 = v210.n128_u64[1];
    v210 = v16;
    if (v76)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v76);
      if (v204.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v204.__r_.__value_.__l.__size_);
      }
    }

    if (v210.n128_u64[0])
    {
      v77 = 0;
    }

    else
    {
      v77 = v182;
    }

    if (v210.n128_u64[0])
    {
      v42 = 4;
    }

    else
    {
      v42 = 1;
    }

    if (v77)
    {
      *&v204.__r_.__value_.__l.__data_ = 0uLL;
      v78 = (*(*v69 + 192))(v69);
      v79 = (*(*v69 + 208))(v69);
      if ((v206.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v80 = &v206;
      }

      else
      {
        v80 = v206.__r_.__value_.__r.__words[0];
      }

      if ((v206.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v81 = HIBYTE(v206.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v81 = v206.__r_.__value_.__l.__size_;
      }

      AdobeXMPCore::ISimpleNode_v1::CreateSimpleNode(v78, v79, v80, v81, 0, 0xFFFFFFFFFFFFFFFFLL);
    }

    v18 = v68;
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (v77)
    {
      goto LABEL_423;
    }

    goto LABEL_424;
  }

  if (v26 != 3)
  {
LABEL_133:
    v15 = v19;
    goto LABEL_423;
  }

  if ((*(*v210.n128_u64[0] + 40))(v210.n128_u64[0]) != 2)
  {
LABEL_500:
    v173 = __cxa_allocate_exception(0x18uLL);
    *v173 = 102;
    v173[1] = "Indexing applied to non-array";
    *(v173 + 16) = 0;
  }

  *&v204.__r_.__value_.__l.__data_ = 0uLL;
  (*(*v210.n128_u64[0] + 248))(&v204);
  v27 = SHIBYTE(v208.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v208.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (SHIBYTE(v208.__r_.__value_.__r.__words[2]) >= 2 && v208.__r_.__value_.__s.__data_[0] == 91)
    {
      v28 = SHIBYTE(v208.__r_.__value_.__r.__words[2]);
      goto LABEL_230;
    }

    goto LABEL_496;
  }

  v28 = v208.__r_.__value_.__l.__size_;
  if (v208.__r_.__value_.__l.__size_ <= 1 || *v208.__r_.__value_.__l.__data_ != 91)
  {
    goto LABEL_496;
  }

LABEL_230:
  v99 = v208.__r_.__value_.__r.__words[0];
  if ((v208.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v99 = &v208;
  }

  if (v99->__r_.__value_.__s.__data_[v28 - 1] != 93)
  {
LABEL_496:
    __assert_rtn("FindNode", "XMPUtils.cpp", 577, "(stepStr.length() >= 2) && (*(stepStr.begin()) == '[') && (stepStr[stepStr.length() - 1] == ']')");
  }

  v100 = v18;
  if ((v208.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v27 = v208.__r_.__value_.__l.__size_;
  }

  v101 = v27 - 2;
  if (v27 == 2)
  {
    goto LABEL_501;
  }

  v102 = 0;
  v103 = 1;
  do
  {
    if (v27 < v103)
    {
      goto LABEL_502;
    }

    v104 = v99->__r_.__value_.__s.__data_[v103];
    if ((v104 - 58) <= 0xFFFFFFF5)
    {
      __assert_rtn("FindNode", "XMPUtils.cpp", 579, "('0' <= stepStr[chNum]) && (stepStr[chNum] <= '9')");
    }

    v102 = v104 + 10 * v102 - 48;
    ++v103;
    --v101;
  }

  while (v101);
  if (!v102)
  {
LABEL_501:
    v174 = __cxa_allocate_exception(0x18uLL);
    *v174 = 102;
    v174[1] = "Array index must be larger than one";
    *(v174 + 16) = 0;
  }

  if (a6)
  {
    *a6 = v102;
  }

  v105 = std::string::find(&v207, 58, 0);
  memset(&__str, 0, sizeof(__str));
  std::string::basic_string(&__str, &v207, 0, v105, &v199);
  (*(*v209 + 80))(v200);
  v106 = v200[0];
  v25 = v200[1];
  MEMORY[0x186602520](&v206, "[]");
  v15 = v210.n128_u64[1];
  v107 = v210.n128_u64[0];
  if (v210.n128_u64[1])
  {
    atomic_fetch_add_explicit((v210.n128_u64[1] + 8), 1uLL, memory_order_relaxed);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v19);
  }

  (*(*v204.__r_.__value_.__l.__data_ + 656))(v200);
  v16 = *v200;
  v200[0] = 0;
  v200[1] = 0;
  v108 = v210.n128_u64[1];
  v210 = v16;
  if (v108)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v108);
    if (v200[1])
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v200[1]);
    }
  }

  if (v210.n128_u64[0])
  {
    v42 = 4;
  }

  else
  {
    v42 = 1;
  }

  if (v210.n128_u64[0] || (v182 & 1) == 0)
  {
    v18 = v100;
    goto LABEL_396;
  }

  v200[0] = 0;
  v200[1] = 0;
  (*(*v107 + 248))(v200, v107);
  if ((*(*(v200[0] + *(*v200[0] - 688)) + 560))(v200[0] + *(*v200[0] - 688)) + 1 < v102)
  {
    v42 = 5;
    goto LABEL_257;
  }

  v109 = (a2[1] - *a2) >> 5;
  if (v17 == v109 - 1)
  {
    *&v199.__r_.__value_.__l.__data_ = 0uLL;
    if (v106)
    {
      v110 = (*(*v106 + 192))(v106);
    }

    else
    {
      v110 = "http://ns.adobe.com/xap/1.0/";
    }

    if ((v206.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v141 = &v206;
    }

    else
    {
      v141 = v206.__r_.__value_.__r.__words[0];
    }

    XMPUtils::CreateTerminalNode(v110, v141, v177, &v199);
    (*(*v200[0] + 664))(v200[0], &v199, v102);
    v142 = *&v199.__r_.__value_.__l.__data_;
    if (v199.__r_.__value_.__l.__size_)
    {
      atomic_fetch_add_explicit((v199.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
    }

    v143 = v210.n128_u64[1];
    v210 = v142;
    if (v143)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v143);
    }

    if ((v178 & 1) == 0)
    {
      v144 = v210.n128_u64[1];
      v100 = v210.n128_u64[0];
      if (v210.n128_u64[1])
      {
        atomic_fetch_add_explicit((v210.n128_u64[1] + 8), 1uLL, memory_order_relaxed);
      }

      if (v181)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v181);
      }

      v181 = v144;
    }

    v18 = v100;
    if (v199.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v199.__r_.__value_.__l.__size_);
    }

    v42 = 0;
    v178 = 1;
    goto LABEL_394;
  }

  if (v109 > v17 + 1)
  {
    v122 = *(*a2 + 32 * (v17 + 1) + 24);
    if ((v122 - 3) < 4)
    {
      *&v199.__r_.__value_.__l.__data_ = 0uLL;
      v123 = (*(*v106 + 192))(v106);
      v124 = (*(*v106 + 208))(v106);
      if ((v206.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v125 = &v206;
      }

      else
      {
        v125 = v206.__r_.__value_.__r.__words[0];
      }

      if ((v206.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v126 = HIBYTE(v206.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v126 = v206.__r_.__value_.__l.__size_;
      }

      AdobeXMPCore::IArrayNode_v1::CreateOrderedArrayNode(v123, v124, v125, v126);
    }

    if (v122 == 2)
    {
      *&v199.__r_.__value_.__l.__data_ = 0uLL;
      v153 = (*(*v106 + 192))(v106);
      v154 = (*(*v106 + 208))(v106);
      if ((v206.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v155 = &v206;
      }

      else
      {
        v155 = v206.__r_.__value_.__r.__words[0];
      }

      if ((v206.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v156 = HIBYTE(v206.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v156 = v206.__r_.__value_.__l.__size_;
      }

      AdobeXMPCore::ISimpleNode_v1::CreateSimpleNode(v153, v154, v155, v156, 0, 0xFFFFFFFFFFFFFFFFLL);
    }

    if (v122 == 1)
    {
      *&v199.__r_.__value_.__l.__data_ = 0uLL;
      v132 = (*(*v106 + 192))(v106);
      v133 = (*(*v106 + 208))(v106);
      if ((v206.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v134 = &v206;
      }

      else
      {
        v134 = v206.__r_.__value_.__r.__words[0];
      }

      if ((v206.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v135 = HIBYTE(v206.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v135 = v206.__r_.__value_.__l.__size_;
      }

      AdobeXMPCore::IStructureNode_v1::CreateStructureNode(v132, v133, v134, v135);
    }

    v42 = 0;
LABEL_257:
    v18 = v100;
LABEL_394:
    if (v200[1])
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v200[1]);
    }

LABEL_396:
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (v204.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v204.__r_.__value_.__l.__size_);
      if (!v42)
      {
        goto LABEL_423;
      }

      goto LABEL_424;
    }

LABEL_422:
    if (!v42)
    {
      goto LABEL_423;
    }

    goto LABEL_424;
  }

LABEL_502:
  __break(1u);
}

void sub_1860E9A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, std::__shared_weak_count *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, std::__shared_weak_count *a50)
{
  if (a44)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a44);
  }

  if (a50)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a50);
  }

  v51 = *(v50 - 240);
  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v51);
  }

  v52 = *(v50 - 216);
  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v52);
  }

  v53 = *(v50 - 184);
  if (v53)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v53);
  }

  v54 = *(v50 - 152);
  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v54);
  }

  __cxa_end_catch();
  JUMPOUT(0x1860E9B04);
}

void XMPUtils::FindCnstNode(void *a1, uint64_t *a2, std::string::size_type *a3, _DWORD *a4, int *a5)
{
  v118 = 0uLL;
  AdobeXMPCore::INameSpacePrefixMap_v1::GetDefaultNameSpacePrefixMap(&v118);
  std::shared_ptr<AdobeXMPCore::INode_v1>::operator=[abi:fe200100]<AdobeXMPCore::ISimpleNode_v1,0>(a3, a1);
  v9 = a2[1] - *a2;
  if (v9 <= 0x20)
  {
LABEL_248:
    __break(1u);
    return;
  }

  if ((*(*a2 + 56) & 0x10) != 0)
  {
    if (!XMPUtils::HandleConstAliasStep(a1, a3, a2, 0))
    {
      goto LABEL_238;
    }

    v95 = a4;
    v9 = a2[1] - *a2;
    v10 = 2;
  }

  else
  {
    v95 = a4;
    v10 = 1;
  }

  if (v10 >= v9 >> 5)
  {
    goto LABEL_232;
  }

  v11 = v9 >> 5;
  v96 = v9 >> 5;
  while (*a3)
  {
    memset(&v117, 0, sizeof(v117));
    if (v10 >= (a2[1] - *a2) >> 5)
    {
      goto LABEL_248;
    }

    v12 = *a2 + 32 * v10;
    if (*(v12 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v117, *v12, *(v12 + 8));
    }

    else
    {
      v13 = *v12;
      v117.__r_.__value_.__r.__words[2] = *(v12 + 16);
      *&v117.__r_.__value_.__l.__data_ = v13;
    }

    memset(&v116, 0, sizeof(v116));
    v14 = *a2;
    v15 = a2[1];
    if (v10 - 1 >= (v15 - *a2) >> 5)
    {
      goto LABEL_248;
    }

    v16 = v14 + 32 * (v10 - 1);
    if (*(v16 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v116, *v16, *(v16 + 8));
      v14 = *a2;
      v15 = a2[1];
    }

    else
    {
      v17 = *v16;
      v116.__r_.__value_.__r.__words[2] = *(v16 + 16);
      *&v116.__r_.__value_.__l.__data_ = v17;
    }

    if (v10 >= (v15 - v14) >> 5)
    {
      goto LABEL_248;
    }

    v18 = *(v14 + 32 * v10 + 24);
    if (v18 <= 3)
    {
      switch(v18)
      {
        case 1:
          v37 = std::string::find(&v117, 58, 0);
          memset(&__str, 0, sizeof(__str));
          std::string::basic_string(&__str, &v117, 0, v37, &v112);
          (*(*v118 + 80))(&v112);
          size = v112.__r_.__value_.__l.__size_;
          v39 = v112.__r_.__value_.__r.__words[0];
          if ((*(**a3 + 40))() != 4)
          {
            exception = __cxa_allocate_exception(0x18uLL);
            *exception = 102;
            exception[1] = "Named children only allowed for schemas and structs";
            *(exception + 16) = 0;
          }

          *&v112.__r_.__value_.__l.__data_ = 0uLL;
          (*(**a3 + 240))(&v112);
          v40 = v112.__r_.__value_.__r.__words[0];
          v41 = (*(*v39 + 192))(v39);
          v42 = (*(*v39 + 208))(v39);
          v43 = &v117;
          if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v43 = v117.__r_.__value_.__r.__words[0];
          }

          (*(*v40 + 648))(v110, v40, v41, v42, v43->__r_.__value_.__r.__words + v37 + 1, -1);
          v44 = *v110;
          v110[0] = 0;
          v110[1] = 0;
          v45 = a3[1];
          *a3 = v44;
          v11 = v96;
          if (!v45)
          {
            goto LABEL_109;
          }

          std::__shared_weak_count::__release_shared[abi:fe200100](v45);
          v46 = v110[1];
          if (!v110[1])
          {
            goto LABEL_109;
          }

          break;
        case 2:
          v53 = &v117;
          if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v53 = v117.__r_.__value_.__r.__words[0];
          }

          if (v53->__r_.__value_.__s.__data_[0] != 63)
          {
            __assert_rtn("FindCnstNode", "XMPUtils.cpp", 954, "stepStr[0]=='?'");
          }

          std::string::basic_string(&__str, &v117, 1uLL, 0xFFFFFFFFFFFFFFFFLL, &v112);
          if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v117.__r_.__value_.__l.__data_);
          }

          v117 = __str;
          v54 = std::string::find(&v117, 58, 0);
          memset(&__str, 0, sizeof(__str));
          std::string::basic_string(&__str, &v117, 0, v54, &v112);
          (*(*v118 + 80))(&v112);
          size = v112.__r_.__value_.__l.__size_;
          v55 = v112.__r_.__value_.__r.__words[0];
          v56 = *a3;
          v57 = (*(*v112.__r_.__value_.__l.__data_ + 192))(v112.__r_.__value_.__r.__words[0]);
          v58 = (*(*v55 + 208))(v55);
          v59 = &v117;
          if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v59 = v117.__r_.__value_.__r.__words[0];
          }

          (*(*v56 + 128))(&v112, v56, v57, v58, v59->__r_.__value_.__r.__words + v54 + 1, -1);
          v60 = *&v112.__r_.__value_.__l.__data_;
          *&v112.__r_.__value_.__l.__data_ = 0uLL;
          v46 = a3[1];
          *a3 = v60;
          v11 = v96;
          if (!v46)
          {
LABEL_111:
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            goto LABEL_182;
          }

          break;
        case 3:
          if ((*(**a3 + 40))() == 2)
          {
            *&v112.__r_.__value_.__l.__data_ = 0uLL;
            (*(**a3 + 248))(&v112);
            v19 = SHIBYTE(v117.__r_.__value_.__r.__words[2]);
            if ((SHIBYTE(v117.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
            {
              v20 = v117.__r_.__value_.__l.__size_;
              if (v117.__r_.__value_.__l.__size_ <= 1 || *v117.__r_.__value_.__l.__data_ != 91)
              {
                goto LABEL_242;
              }
            }

            else
            {
              if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 2 || v117.__r_.__value_.__s.__data_[0] != 91)
              {
                goto LABEL_242;
              }

              v20 = SHIBYTE(v117.__r_.__value_.__r.__words[2]);
            }

            v78 = v117.__r_.__value_.__r.__words[0];
            if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v78 = &v117;
            }

            if (v78->__r_.__value_.__s.__data_[v20 - 1] == 93)
            {
              if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v19 = v117.__r_.__value_.__l.__size_;
              }

              v79 = v19 - 2;
              if (v19 == 2)
              {
                goto LABEL_245;
              }

              v80 = 0;
              v81 = 1;
              do
              {
                if (v19 < v81)
                {
                  goto LABEL_248;
                }

                v82 = v78->__r_.__value_.__s.__data_[v81];
                if ((v82 - 58) <= 0xFFFFFFF5)
                {
                  __assert_rtn("FindCnstNode", "XMPUtils.cpp", 918, "('0' <= stepStr[chNum]) && (stepStr[chNum] <= '9')");
                }

                v80 = v82 + 10 * v80 - 48;
                ++v81;
                --v79;
              }

              while (v79);
              if (v80 < 1)
              {
LABEL_245:
                v90 = __cxa_allocate_exception(0x18uLL);
                *v90 = 102;
                v90[1] = "Array index must be larger than one";
                *(v90 + 16) = 0;
              }

              v83 = std::string::find(&v116, 58, 0);
              memset(&__str, 0, sizeof(__str));
              std::string::basic_string(&__str, &v116, 0, v83, v110);
              (*(*v118 + 80))(v110);
              size = v110[1];
              (*(*v112.__r_.__value_.__l.__data_ + 656))(v110);
              v84 = *v110;
              v110[0] = 0;
              v110[1] = 0;
              v85 = a3[1];
              *a3 = v84;
              if (v85)
              {
                std::__shared_weak_count::__release_shared[abi:fe200100](v85);
                if (v110[1])
                {
                  std::__shared_weak_count::__release_shared[abi:fe200100](v110[1]);
                }
              }

              if (a5)
              {
                *a5 = v80;
              }

              goto LABEL_178;
            }

LABEL_242:
            __assert_rtn("FindCnstNode", "XMPUtils.cpp", 916, "(stepStr.length() >= 2) && (*( stepStr.begin()) == '[') && (stepStr[stepStr.length()-1] == ']')");
          }

LABEL_244:
          v89 = __cxa_allocate_exception(0x18uLL);
          *v89 = 102;
          v89[1] = "Indexes allowed for arrays only";
          *(v89 + 16) = 0;
        default:
          goto LABEL_184;
      }

      std::__shared_weak_count::__release_shared[abi:fe200100](v46);
LABEL_109:
      if (v112.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v112.__r_.__value_.__l.__size_);
      }

      goto LABEL_111;
    }

    if (v18 == 4)
    {
      if ((*(**a3 + 40))() == 2)
      {
        *&v112.__r_.__value_.__l.__data_ = 0uLL;
        (*(**a3 + 248))(&v112);
        v47 = std::string::find(&v116, 58, 0);
        memset(&__str, 0, sizeof(__str));
        std::string::basic_string(&__str, &v116, 0, v47, v110);
        (*(*v118 + 80))(v110);
        size = v110[1];
        v49 = *a3;
        v48 = a3[1];
        if (v48)
        {
          atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v49 && (*(*v49 + 40))(v49) == 2)
        {
          (*(*v49 + 248))(v110, v49);
          v50 = (*(*(v110[0] + *(*v110[0] - 688)) + 560))(v110[0] + *(*v110[0] - 688));
          if (v110[1])
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v110[1]);
          }

          if (!v50)
          {
            v92 = __cxa_allocate_exception(0x18uLL);
            *v92 = 102;
            v92[1] = "Array index overflow";
            *(v92 + 16) = 0;
          }

          (*(*v112.__r_.__value_.__l.__data_ + 656))(v110);
          v51 = *v110;
          v110[0] = 0;
          v110[1] = 0;
          v52 = a3[1];
          *a3 = v51;
          if (v52)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v52);
            if (v110[1])
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v110[1]);
            }
          }

          if (a5)
          {
            *a5 = v50;
          }
        }

        if (v48)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v48);
        }

LABEL_178:
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (v112.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v112.__r_.__value_.__l.__size_);
        }

LABEL_182:
        if (size)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](size);
        }

        goto LABEL_184;
      }

      goto LABEL_244;
    }

    if (v18 == 5)
    {
      if ((*(**a3 + 40))() != 2)
      {
        goto LABEL_244;
      }

      v113 = 0;
      v114 = 0;
      (*(**a3 + 248))(&v113);
      memset(&__str, 0, sizeof(__str));
      memset(&v112, 0, sizeof(v112));
      v110[0] = 0;
      v110[1] = 0;
      v111 = 0;
      SplitNameAndValue(&v117, &__str, &v112);
      v62 = *a3;
      v61 = a3[1];
      if (v61)
      {
        atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v63 = std::string::find(&__str, 58, 0);
      memset(&v109, 0, sizeof(v109));
      std::string::basic_string(&v109, &__str, 0, v63, &__p);
      (*(*v118 + 80))(&__p);
      v64 = (*(*__p + 192))(__p);
      MEMORY[0x186602520](v110, v64);
      if (v102)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v102);
      }

      if (v62 && (*(*v62 + 40))(v62) == 2)
      {
        v107 = 0;
        v108 = 0;
        v94 = v61;
        (*(*v62 + 248))(&v107, v62);
        v65 = (*(*(v107 + *(*v107 - 688)) + 560))(v107 + *(*v107 - 688));
        if (v65)
        {
          v66 = v65;
          v67 = 0;
          v68 = 1;
          while (1)
          {
            v105 = 0;
            v106 = 0;
            (*(*v107 + 656))(&v105);
            v104 = 0uLL;
            (*(*v105 + 128))(&v104);
            if (!v104)
            {
              v75 = 11;
              goto LABEL_143;
            }

            __p = 0;
            v102 = 0;
            v103 = 0;
            (*(*v104 + 232))(&v98);
            (*(*v98 + 504))(&v100);
            v69 = (*(*v100 + 192))(v100);
            std::string::basic_string[abi:fe200100]<0>(&__p, v69);
            if (*(&v100 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](*(&v100 + 1));
            }

            if (v99)
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v99);
            }

            v70 = HIBYTE(v103);
            if (v103 >= 0)
            {
              v71 = HIBYTE(v103);
            }

            else
            {
              v71 = v102;
            }

            v72 = HIBYTE(v112.__r_.__value_.__r.__words[2]);
            if ((v112.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v72 = v112.__r_.__value_.__l.__size_;
            }

            if (v71 == v72)
            {
              v73 = v103 >= 0 ? &__p : __p;
              v74 = (v112.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v112 : v112.__r_.__value_.__r.__words[0];
              if (!memcmp(v73, v74, v71))
              {
                break;
              }
            }

            v75 = 0;
            if (v70 < 0)
            {
              goto LABEL_141;
            }

LABEL_143:
            if (*(&v104 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](*(&v104 + 1));
            }

            if (v106)
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v106);
            }

            if ((v75 == 11 || !v75) && ++v68 <= v66)
            {
              continue;
            }

            goto LABEL_194;
          }

          if (a5)
          {
            *a5 = v68;
          }

          (*(*v107 + 656))(&v100);
          v76 = v100;
          v100 = 0uLL;
          v77 = a3[1];
          *a3 = v76;
          if (v77)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v77);
            if (*(&v100 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](*(&v100 + 1));
            }
          }

          v67 = 1;
          v75 = 9;
          if ((v103 & 0x8000000000000000) == 0)
          {
            goto LABEL_143;
          }

LABEL_141:
          operator delete(__p);
          goto LABEL_143;
        }

        v67 = 0;
LABEL_194:
        if (v108)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v108);
        }

        v11 = v96;
        v61 = v94;
      }

      else
      {
        v67 = 0;
      }

      if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v109.__r_.__value_.__l.__data_);
      }

      if (v61)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v61);
      }

      if (SHIBYTE(v111) < 0)
      {
        operator delete(v110[0]);
      }

      if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v112.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (v114)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v114);
      }

      if ((v67 & 1) == 0)
      {
        v34 = 1;
        goto LABEL_185;
      }

      goto LABEL_184;
    }

    if (v18 != 6)
    {
      goto LABEL_184;
    }

    memset(&__str, 0, sizeof(__str));
    memset(&v112, 0, sizeof(v112));
    v110[0] = 0;
    v110[1] = 0;
    v111 = 0;
    SplitNameAndValue(&v117, &__str, &v112);
    v22 = *a3;
    v21 = a3[1];
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v23 = std::string::find(&__str, 58, 0);
    memset(&v109, 0, sizeof(v109));
    std::string::basic_string(&v109, &__str, 0, v23, &__p);
    (*(*v118 + 80))(&__p);
    v24 = (*(*__p + 192))(__p);
    MEMORY[0x186602520](v110, v24);
    if (v102)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v102);
    }

    if (!v22 || (*(*v22 + 40))(v22) != 2)
    {
      v34 = 1;
      goto LABEL_218;
    }

    v113 = 0;
    v114 = 0;
    (*(*v22 + 248))(&v113, v22);
    v25 = (*(*(v113 + *(*v113 - 688)) + 560))(v113 + *(*v113 - 688));
    if (!v25)
    {
      v86 = 0;
      v34 = 0;
      goto LABEL_214;
    }

    v26 = v25;
    v93 = 0;
    v27 = 1;
    while (1)
    {
      v107 = 0;
      v108 = 0;
      (*(*v113 + 656))(&v107);
      if ((*(*v107 + 40))(v107) != 4)
      {
        v34 = 1;
        goto LABEL_66;
      }

      v105 = 0;
      v106 = 0;
      (*(*v107 + 240))(&__p);
      (*(*__p + 648))(&v105);
      if (v102)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v102);
      }

      if (v105 && (*(*v105 + 40))(v105) == 1)
      {
        __p = 0;
        v102 = 0;
        v103 = 0;
        (*(*v105 + 232))(&v100);
        (*(*v100 + 504))(&v104);
        v28 = (*(*v104 + 192))(v104);
        std::string::basic_string[abi:fe200100]<0>(&__p, v28);
        if (*(&v104 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v104 + 1));
        }

        if (*(&v100 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v100 + 1));
        }

        v29 = HIBYTE(v103);
        if (v103 >= 0)
        {
          v30 = HIBYTE(v103);
        }

        else
        {
          v30 = v102;
        }

        v31 = HIBYTE(v112.__r_.__value_.__r.__words[2]);
        if ((v112.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v31 = v112.__r_.__value_.__l.__size_;
        }

        if (v30 == v31 && (v103 >= 0 ? (p_p = &__p) : (p_p = __p), (v112.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v33 = &v112) : (v33 = v112.__r_.__value_.__r.__words[0]), !memcmp(p_p, v33, v30)))
        {
          if (a5)
          {
            *a5 = v27;
          }

          (*(*v113 + 656))(&v104);
          v35 = v104;
          v104 = 0uLL;
          v36 = a3[1];
          *a3 = v35;
          if (v36)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v36);
            if (*(&v104 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](*(&v104 + 1));
            }
          }

          v93 = 1;
          v34 = 12;
          if ((v103 & 0x8000000000000000) == 0)
          {
            goto LABEL_64;
          }
        }

        else
        {
          v34 = 0;
          if ((v29 & 0x80) == 0)
          {
            goto LABEL_64;
          }
        }

        operator delete(__p);
      }

      else
      {
        v34 = 14;
      }

LABEL_64:
      if (v106)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v106);
      }

LABEL_66:
      if (v108)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v108);
      }

      if (v34 && v34 != 14)
      {
        break;
      }

      if (++v27 > v26)
      {
        v34 = 0;
        v11 = v96;
        goto LABEL_213;
      }
    }

    v11 = v96;
    if (v34 == 12)
    {
      v34 = 0;
    }

LABEL_213:
    v86 = v93;
LABEL_214:
    if (v114)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v114);
    }

    if (!v34)
    {
      v34 = (v86 & 1) == 0;
    }

LABEL_218:
    if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v109.__r_.__value_.__l.__data_);
    }

    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v21);
    }

    if (SHIBYTE(v111) < 0)
    {
      operator delete(v110[0]);
    }

    if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v112.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
      if (v34)
      {
        goto LABEL_185;
      }

LABEL_184:
      v34 = 0;
      goto LABEL_185;
    }

    if (!v34)
    {
      goto LABEL_184;
    }

LABEL_185:
    if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v116.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v117.__r_.__value_.__l.__data_);
    }

    if (!v34)
    {
      if (++v10 == v11)
      {
LABEL_232:
        v87 = *a3;
        if (*a3 && v95)
        {
          v88 = a3[1];
          v117.__r_.__value_.__r.__words[0] = v87;
          v117.__r_.__value_.__l.__size_ = v88;
          if (v88)
          {
            atomic_fetch_add_explicit(&v88->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          *v95 = XMPUtils::GetIXMPOptions(&v117);
          if (v88)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v88);
          }
        }

        break;
      }

      continue;
    }

    break;
  }

LABEL_238:
  if (*(&v118 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v118 + 1));
  }
}

void sub_1860EB148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, std::__shared_weak_count *a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a28);
  }

  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a30);
  }

  v52 = *(v50 - 192);
  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v52);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v49);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  if (*(v50 - 161) < 0)
  {
    operator delete(*(v50 - 184));
  }

  if (*(v50 - 137) < 0)
  {
    operator delete(*(v50 - 160));
  }

  if (*(v50 - 105) < 0)
  {
    operator delete(*(v50 - 128));
  }

  v53 = *(v50 - 96);
  if (v53)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v53);
  }

  _Unwind_Resume(exception_object);
}

uint64_t XMPUtils::GetIXMPOptions(uint64_t *a1)
{
  v2 = *a1;
  if (!v2)
  {
    return 0;
  }

  if ((*(*v2 + 184))(v2))
  {
    (*(**a1 + 128))(&v32);
    v3 = v32;
    if (v33)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v33);
    }

    if (v3)
    {
      v4 = 80;
    }

    else
    {
      v4 = 16;
    }

    (*(**a1 + 128))(&v32);
    v5 = v32;
    if (v33)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v33);
    }

    if (v5)
    {
      LODWORD(v6) = v4 | 0x80;
    }

    else
    {
      LODWORD(v6) = v4;
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  v32 = 0;
  v33 = 0;
  v34 = 0;
  (*(**a1 + 88))(&__p);
  v7 = (*(*__p + 192))(__p);
  std::string::basic_string[abi:fe200100]<0>(&v32, v7);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v30);
  }

  __p = 0;
  v30 = 0;
  v31 = 0;
  (*(**a1 + 72))(&v35);
  v8 = (*(*v35 + 192))(v35);
  std::string::basic_string[abi:fe200100]<0>(&__p, v8);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v36);
  }

  (*(**a1 + 56))(&v35);
  v9 = v36;
  if ((*(**a1 + 168))())
  {
    v6 = v6 | 0x20;
  }

  else
  {
    v6 = v6;
  }

  v10 = (*(**a1 + 40))();
  v11 = *a1;
  if (v10 != 1)
  {
    v15 = (*(*v11 + 40))(v11);
    v16 = *a1;
    if (v15 != 2)
    {
      if ((*(*v16 + 40))(v16) == 4)
      {
        (*(**a1 + 56))(&v35);
        v21 = v35;
        if (v36)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v36);
        }

        if (v21)
        {
          v6 = v6 | 0x100;
        }
      }

      goto LABEL_28;
    }

    (*(*v16 + 248))(&v35);
    v18 = v35;
    v17 = v36;
    v19 = (*(*v35 + 640))(v35);
    v20 = v6 | 0x200;
    if (v19 != 1)
    {
      if (v19 == 2)
      {
        v20 = v6 | 0x600;
      }

      else
      {
        if (v19 != 4)
        {
          v28 = 0;
          v6 = v6 | 0x200;
          if (v17)
          {
LABEL_62:
            std::__shared_weak_count::__release_shared[abi:fe200100](v17);
          }

LABEL_63:
          if ((v28 & 1) == 0)
          {
            v6 = 0;
          }

          goto LABEL_28;
        }

        v20 = v6 | 0xE00;
      }
    }

    v22 = (*(*v18 + 640))(v18) == 4;
    if ((*(*(v18 + *(*v18 - 688)) + 560))(v18 + *(*v18 - 688)))
    {
      v23 = 1;
      while (1)
      {
        (*(*v18 + 656))(&v35, v18, v23);
        v25 = v35;
        v24 = v36;
        if ((*(*v35 + 40))(v35) != 1)
        {
          break;
        }

        (*(*v25 + 128))(&v35, v25, "http://www.w3.org/XML/1998/namespace", 36, "lang", -1);
        v26 = v35;
        if (v36)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v36);
          if (!v26)
          {
            break;
          }
        }

        else if (!v35)
        {
          break;
        }

        v27 = 0;
        if (v24)
        {
          goto LABEL_55;
        }

LABEL_56:
        if ((v27 & 1) == 0 && ++v23 <= (*(*(v18 + *(*v18 - 688)) + 560))(v18 + *(*v18 - 688)))
        {
          continue;
        }

        goto LABEL_58;
      }

      v22 = 0;
      v27 = 1;
      if (!v24)
      {
        goto LABEL_56;
      }

LABEL_55:
      std::__shared_weak_count::__release_shared[abi:fe200100](v24);
      goto LABEL_56;
    }

LABEL_58:
    if (v22)
    {
      v6 = v20 | 0x1000;
    }

    else
    {
      v6 = v20;
    }

    v28 = 1;
    if (v17)
    {
      goto LABEL_62;
    }

    goto LABEL_63;
  }

  (*(*v11 + 232))(&v35);
  v12 = v36;
  v13 = (*(*v35 + 520))(v35);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v12);
  }

  if (v13)
  {
    v6 = v6 | 2;
  }

  else
  {
    v6 = v6;
  }

LABEL_28:
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v32);
  }

  return v6;
}

void sub_1860EBB48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22)
{
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v22);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

uint64_t XMPUtils::GetNodeChildCount(void *a1)
{
  v2 = (*(**a1 + 40))(*a1);
  v3 = *a1;
  if (v2 == 2)
  {
    (*(*v3 + 248))(v7);
  }

  else
  {
    if ((*(*v3 + 40))(v3) != 4)
    {
      return 0;
    }

    (*(**a1 + 240))(v7);
  }

  v4 = v7[1];
  v5 = (*(*(v7[0] + *(*v7[0] - 688)) + 560))(v7[0] + *(*v7[0] - 688));
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v4);
  }

  return v5;
}

void XMPUtils::FindChildNode(uint64_t *a1@<X0>, const char *a2@<X1>, char *a3@<X2>, int a4@<W3>, uint64_t *a5@<X4>, uint64_t *a6@<X8>)
{
  *a6 = 0;
  a6[1] = 0;
  v11 = a1[1];
  v30 = *a1;
  v31 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  IXMPOptions = XMPUtils::GetIXMPOptions(&v30);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v11);
  }

  if ((IXMPOptions & 0x300) == 0x200)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 102;
    exception[1] = "Named children not allowed for arrays";
    *(exception + 16) = 0;
  }

  v28 = 0;
  v29 = 0;
  v13 = a1[1];
  v30 = *a1;
  v31 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  XMPUtils::GetNodeChildIterator(&v30, &v28);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v13);
  }

  v14 = v28;
  if (v28)
  {
    v24 = a4;
    v15 = v29;
    v16 = 1;
    while (1)
    {
      (*(*v14 + 48))(&v30, v14);
      v18 = v30;
      v17 = v31;
      if (v30)
      {
        (*(*v30 + 72))(&v30, v30);
        v19 = (*(*v30 + 192))(v30);
        if (!strcmp(v19, a2))
        {
          (*(*v18 + 88))(&v26, v18);
          v21 = (*(*v26 + 192))(v26);
          v20 = strcmp(v21, a3) == 0;
          if (v27)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v27);
          }
        }

        else
        {
          v20 = 0;
        }

        if (v31)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v31);
        }

        if (v20)
        {
          break;
        }
      }

      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v17);
      }

      (*(*v14 + 56))(&v30, v14);
      v14 = v30;
      v22 = v31;
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v15);
      }

      ++v16;
      v15 = v22;
      if (!v14)
      {
        v29 = v22;
        a4 = v24;
        goto LABEL_26;
      }
    }

    v29 = v15;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *a6 = v18;
    a6[1] = v17;
    if (a5)
    {
      *a5 = v16;
    }

    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v17);
    }
  }

  else
  {
LABEL_26:
    if (a4)
    {
      AdobeXMPCore::ISimpleNode_v1::CreateSimpleNode(a3, 0xFFFFFFFFFFFFFFFFLL, a2, 0xFFFFFFFFFFFFFFFFLL, 0, 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v29);
  }
}