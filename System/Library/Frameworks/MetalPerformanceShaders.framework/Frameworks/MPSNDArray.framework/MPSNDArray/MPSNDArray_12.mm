int64x2_t MPSNDArrayConvolutionDeviceBehaviorA15X::GetKernelParameters@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a4 || (a4 = a1[19]) != 0)
  {
    v5 = *a3;
    v6 = *(a3 + 128);
    if (v6)
    {
      v7 = *(a3 + 8) * v5;
      v8 = *(a3 + 88);
      v9 = *(a4 + 32);
      if (v9)
      {
        LOBYTE(v6) = 0;
        v10 = 1;
        v8 = (v8 + v9 - 1) / v9;
      }

      else
      {
        LOBYTE(v6) = 1;
        v10 = 1;
        v7 = (v7 + *(a4 + 36) - 1) / *(a4 + 36);
      }
    }

    else
    {
      if (*(a4 + 45))
      {
        v5 = (v5 + 1) & 0xFFFFFFFE;
      }

      v7 = v5 * *(a3 + 8);
      v11 = *(a3 + 88);
      v12 = *(a4 + 32);
      v14 = v7 * v11;
      if (v12)
      {
        v8 = (v11 + v12 - 1) / v12;
      }

      else
      {
        v8 = 0;
      }

      if (v12)
      {
        v14 = v7;
      }

      v13 = *(a4 + 36) * (1 << *(a4 + 8));
      v10 = (v14 + v13 - 1) / v13;
    }

    v15 = *(a4 + 44);
    v16 = *(a4 + 8);
    v17.i64[0] = *a4;
    v17.i64[1] = HIDWORD(*a4);
    v18 = v17;
    v17.i64[0] = v16;
    v17.i64[1] = HIDWORD(v16);
    *a5 = v18;
    *(a5 + 16) = v17;
    v18.i64[0] = *(a4 + 16);
    v19 = *(a4 + 24);
    v17.i64[0] = v18.u32[0];
    v17.i64[1] = v18.u32[1];
    result = v17;
    v17.i64[0] = v19;
    v17.i64[1] = HIDWORD(v19);
    *(a5 + 32) = result;
    *(a5 + 48) = v17;
    *(a5 + 64) = v8;
    *(a5 + 72) = v10;
    *(a5 + 80) = *(a4 + 40);
    *(a5 + 84) = 0;
    *(a5 + 86) = v15;
    *(a5 + 88) = v7;
    *(a5 + 96) = v6;
    return result;
  }

  if (*(a3 + 128))
  {
    v22 = *(a3 + 32);
    v21 = *(a3 + 40);
    v23 = *(a3 + 8) * *a3;
    v24 = *(a3 + 88);
    v25 = v23 * v24;
    v27 = *(a3 + 96) == 1 && *(a3 + 104) == 1;
    v29 = *(a3 + 56) == 1 && *(a3 + 64) == 1;
    if (v21 <= 0x10)
    {
      if (v22 > 8)
      {
        if (v22 > 0x10)
        {
          LOBYTE(v29) = v25 > 0x8000;
          if (v25 > 0x8000)
          {
            v30 = 3;
          }

          else
          {
            v30 = 4;
          }

          if (v25 <= 0x8000)
          {
            v31 = 3;
          }

          else
          {
            v31 = 4;
          }

          if (v25 <= 0x8000)
          {
            v33 = 5;
          }

          else
          {
            v33 = 6;
          }

          v35 = 32;
          v32 = 1;
          v36 = 4;
          v34 = 4;
          LOBYTE(v27) = v29;
        }

        else
        {
          v34 = 4;
          v51 = v25 > 0x8000;
          if (v25 > 0x8000)
          {
            v52 = 3;
          }

          else
          {
            v52 = 4;
          }

          if (v51)
          {
            v53 = 2;
          }

          else
          {
            v53 = 1;
          }

          v36 = 4;
          if (v29)
          {
            v34 = 4;
          }

          v33 = 6;
          if (v29)
          {
            v32 = v53;
          }

          else
          {
            v32 = 2;
          }

          if (v29)
          {
            v31 = v52;
          }

          else
          {
            v31 = 3;
          }

          if (v29)
          {
            v30 = 4;
          }

          else
          {
            v30 = 3;
          }

          v35 = 32;
          LOBYTE(v29) = v29 == 0;
          LOBYTE(v27) = 0;
        }

        goto LABEL_286;
      }

      LOBYTE(v27) = 0;
      LOBYTE(v29) = v25 <= 0x8000;
      v30 = 3;
      if (v25 > 0x8000)
      {
        v31 = 3;
      }

      else
      {
        v31 = 4;
      }

      v32 = 1;
      if (v25 > 0x8000)
      {
        v32 = 2;
      }

      v33 = 6;
      v34 = 4;
      v35 = 32;
      v36 = 3;
      goto LABEL_125;
    }

    if (v21 <= 0x20)
    {
      if (v22 <= 8)
      {
        LOBYTE(v27) = 0;
        v34 = 5;
        if (v25 < 0x100001)
        {
          v33 = 5;
        }

        else
        {
          v33 = 6;
        }

        v31 = 3;
        LOBYTE(v29) = 1;
        v32 = 2;
        v35 = 32;
        v30 = 3;
        v36 = 3;
        goto LABEL_125;
      }

      if (v22 >= 0x21)
      {
        LOBYTE(v29) = 0;
        LOBYTE(v27) = 0;
        v30 = 3;
        v33 = 4;
        v35 = 32;
        v32 = 1;
        v36 = 5;
        v34 = 5;
        v31 = 4;
        goto LABEL_286;
      }

      LOBYTE(v29) = 0;
      LOBYTE(v27) = 0;
      v31 = 3;
      v33 = 6;
      v35 = 32;
      goto LABEL_82;
    }

    if (v21 <= 0x30)
    {
      v33 = 4;
      v36 = 6;
      if (v22 < 0xC1)
      {
        LOBYTE(v27) = 0;
        LOBYTE(v29) = 0;
        v30 = 3;
        v32 = 1;
        v35 = 32;
        v31 = 3;
        v34 = 4;
        goto LABEL_125;
      }

      LOBYTE(v29) = 0;
      LOBYTE(v27) = 0;
      v35 = 32;
      if (v22 >= 0x101)
      {
        v35 = 16;
      }

      v32 = 1;
      if (v22 < 0x101)
      {
        v33 = 4;
      }

      else
      {
        v32 = 2;
        v33 = 6;
      }

      if (v22 >= 0x101)
      {
        v36 = 5;
      }

      else
      {
        v36 = 6;
      }

      v31 = 3;
LABEL_111:
      v34 = 4;
      v30 = 3;
      goto LABEL_286;
    }

    if (v21 <= 0x40)
    {
      if (v22 <= 8)
      {
        LOBYTE(v27) = 0;
        v32 = v25 > 0x80000;
        v31 = 4;
        if (v25 <= 0x80000)
        {
          v33 = 4;
        }

        else
        {
          v33 = 5;
        }

        v36 = 3;
        LOBYTE(v29) = 1;
        v34 = 6;
        v35 = 32;
        v30 = 3;
        goto LABEL_125;
      }

      if (v22 <= 0x10)
      {
        LOBYTE(v29) = 0;
        LOBYTE(v27) = 0;
        v31 = 3;
        if (v25 <= 0x8000)
        {
          v30 = 3;
        }

        else
        {
          v30 = 4;
        }

        v33 = 6;
        v35 = 16;
        v32 = 2;
        v36 = 4;
        v34 = 4;
        goto LABEL_286;
      }

      if (v22 < 0x21)
      {
        LOBYTE(v29) = 0;
        LOBYTE(v27) = 0;
        v31 = 3;
        v36 = 5;
        v35 = 32;
LABEL_137:
        v32 = 2;
        goto LABEL_138;
      }

      if (v22 < 0x31)
      {
        v32 = 0;
        LOBYTE(v27) = 0;
        LOBYTE(v29) = 1;
        v30 = 3;
        v36 = 4;
        v35 = 32;
        v34 = 6;
        goto LABEL_151;
      }

      if (v22 <= 0x40)
      {
        if (v29)
        {
          if (v25 > 0x2000)
          {
            v31 = 3;
            v33 = 5;
            if (v25 > 0x4000)
            {
              LOBYTE(v27) = 0;
              LOBYTE(v29) = v25 > 0x20000;
              if (v25 <= 0x20000)
              {
                v31 = 3;
              }

              else
              {
                v31 = 4;
              }

              v32 = 1;
              if (v25 > 0x20000)
              {
                v33 = 6;
              }

              else
              {
                v32 = 2;
                v33 = 5;
              }

              v30 = 3;
              v35 = 32;
              v36 = 5;
              v34 = 5;
            }

            else
            {
              LOBYTE(v29) = 0;
              LOBYTE(v27) = 0;
              v34 = 4;
              v35 = 16;
              v32 = 2;
              v36 = 6;
              v30 = 4;
            }

            goto LABEL_286;
          }

          LOBYTE(v29) = 0;
          LOBYTE(v27) = 0;
          v31 = 3;
          v33 = 5;
          v35 = 16;
          v32 = 1;
          v36 = 4;
          goto LABEL_111;
        }

        if (v25 > 0x4000)
        {
          if (v25 <= 0x10000)
          {
            LOBYTE(v29) = 0;
            LOBYTE(v27) = 0;
            v31 = 3;
            v36 = 5;
            v35 = 32;
            v32 = 1;
            goto LABEL_138;
          }

          v30 = 3;
          v36 = 4;
          v34 = 6;
          if (v25 >= 0x20001)
          {
            LOBYTE(v29) = 0;
            v86 = v27 == 0;
            v31 = 3;
            if (v27)
            {
              LODWORD(v27) = 3;
            }

            else
            {
              LODWORD(v27) = 4;
            }

            v32 = 2;
            if (v86)
            {
              v32 = 0;
            }

            if (v86)
            {
              v33 = 4;
            }

            else
            {
              v33 = 6;
            }

            v35 = 32;
            v36 = 5;
            v34 = 5;
            v30 = v27;
            LOBYTE(v27) = 0;
            goto LABEL_286;
          }

          v32 = 0;
          LOBYTE(v27) = 0;
          LOBYTE(v29) = 1;
          v35 = 32;
LABEL_151:
          v33 = 4;
          v31 = 4;
          goto LABEL_286;
        }

        goto LABEL_259;
      }

      if (v22 <= 0x80)
      {
        LOBYTE(v27) = 0;
        LOBYTE(v29) = v25 <= 0x2000;
        v31 = 3;
        if (v25 <= 0x2000)
        {
          v30 = 3;
        }

        else
        {
          v30 = 4;
        }

        v33 = 4;
        if (v25 <= 0x2000)
        {
          v36 = 4;
        }

        else
        {
          v36 = 5;
        }

        v35 = 32;
        v32 = 1;
        v34 = 5;
        goto LABEL_286;
      }

      if (v22 < 0xC1)
      {
        LOBYTE(v29) = 0;
        LOBYTE(v27) = 0;
        v31 = 3;
        v33 = 4;
        v35 = 32;
        v32 = 1;
        goto LABEL_83;
      }

      if (v22 > 0x100)
      {
        LOBYTE(v29) = 0;
        LOBYTE(v27) = 0;
        v31 = 3;
        v36 = 5;
        v35 = 16;
        goto LABEL_137;
      }

      if (v25 > 0x10000)
      {
        LOBYTE(v29) = 0;
        LOBYTE(v27) = 0;
        v30 = 3;
        v33 = 4;
        v35 = 16;
        v32 = 1;
        v36 = 5;
        v34 = 5;
        goto LABEL_285;
      }

      LOBYTE(v29) = 0;
      LOBYTE(v27) = 0;
      v31 = 3;
      v33 = 5;
      v35 = 16;
      v32 = 1;
      v34 = 4;
LABEL_263:
      v36 = 6;
      v30 = 3;
      goto LABEL_286;
    }

    if (v21 < 0x51)
    {
      LOBYTE(v27) = 0;
      LOBYTE(v29) = 0;
      v33 = 5;
      v30 = 3;
      v36 = 6;
      v34 = 4;
      v32 = 1;
      v35 = 32;
      v31 = 3;
      goto LABEL_125;
    }

    if (v21 <= 0x60)
    {
      LOBYTE(v27) = 0;
      LOBYTE(v29) = 0;
      v35 = 32;
      if (v22 >= 0x41)
      {
        v35 = 16;
      }

      v33 = 4;
      v30 = 3;
      v34 = 5;
      v32 = 1;
      v31 = 3;
      goto LABEL_124;
    }

    if (v21 <= 0x80)
    {
      if (v22 <= 0x40)
      {
        if (v29)
        {
          if (v25 > 0x2000)
          {
            LOBYTE(v29) = 0;
            v30 = 3;
            if (v27)
            {
              v31 = 4;
            }

            else
            {
              v31 = 3;
            }

            v34 = 5;
            v32 = 2;
            v35 = 16;
            v33 = 5;
            v36 = 5;
            LOBYTE(v27) = 0;
          }

          else
          {
            LOBYTE(v29) = 0;
            v32 = 1;
            if (!v27)
            {
              v32 = 2;
            }

            v33 = 5;
            if (v27)
            {
              v36 = 5;
            }

            else
            {
              v36 = 6;
            }

            v30 = 3;
            v34 = 4;
            v35 = 16;
            v31 = 3;
          }

          goto LABEL_125;
        }

        LOBYTE(v27) = 0;
        v34 = 5;
        v30 = 3;
        goto LABEL_174;
      }

      if (v22 <= 0x80)
      {
        if (v29)
        {
          v33 = 5;
          if (v25 < 0x801)
          {
            LOBYTE(v29) = 0;
            LOBYTE(v27) = 0;
            v34 = 4;
            v31 = 3;
            v35 = 16;
            v32 = 1;
            v36 = 7;
            v30 = 4;
            goto LABEL_286;
          }

          LOBYTE(v29) = 0;
          LOBYTE(v27) = 0;
          v59 = v25 > 0x1000;
          v35 = 8;
          if (v59)
          {
            v35 = 32;
          }

          if (v59)
          {
            v33 = 5;
          }

          else
          {
            v33 = 6;
          }

          v31 = 3;
LABEL_82:
          v32 = 2;
LABEL_83:
          v36 = 5;
LABEL_84:
          v34 = 5;
          v30 = 3;
          goto LABEL_286;
        }

        if (v25 <= 0x1000)
        {
          v32 = 0;
          LOBYTE(v27) = 0;
          LOBYTE(v29) = 1;
          v30 = 3;
          v35 = 4;
          v34 = 6;
          v36 = 5;
          v33 = 4;
          v31 = 4;
          goto LABEL_286;
        }

        if (v25 <= 0x4000)
        {
          if (v27)
          {
            v35 = 16;
          }

          else
          {
            v35 = 8;
          }

          v30 = 3;
          if (v27)
          {
            v31 = 4;
          }

          else
          {
            v31 = 3;
          }

          v32 = v27 ^ 1;
          v36 = 5;
          if (v27)
          {
            v34 = 6;
          }

          else
          {
            v34 = 5;
          }

          v33 = 4;
          goto LABEL_370;
        }

        if (v25 > 0x8000)
        {
          v31 = 3;
          if (v25 > 0x10000)
          {
            v32 = 0;
            LOBYTE(v29) = 0;
            LOBYTE(v27) = 1;
            v33 = 4;
            v35 = 16;
            v34 = 6;
            v36 = 5;
            v30 = 4;
          }

          else
          {
            LOBYTE(v29) = 0;
            if (v27)
            {
              v30 = 4;
            }

            else
            {
              v30 = 3;
            }

            v32 = v27 ^ 1;
            v34 = 5;
            if (v27)
            {
              v36 = 6;
            }

            else
            {
              v36 = 5;
            }

            v33 = 4;
            v35 = 32;
            LOBYTE(v27) = 0;
          }

          goto LABEL_286;
        }

        v32 = 0;
        v30 = 3;
        v33 = 4;
        v35 = 32;
        goto LABEL_369;
      }

      if (v22 <= 0x100)
      {
        if (v25 < 0x801)
        {
          LOBYTE(v29) = 0;
          LOBYTE(v27) = 0;
          v30 = 3;
          v36 = 4;
          v34 = 5;
          v32 = 1;
          v33 = 5;
          v31 = 4;
          v35 = 4;
          goto LABEL_286;
        }

        v36 = 5;
        if (v25 <= 0x1000)
        {
          LOBYTE(v29) = 0;
          LOBYTE(v27) = 0;
          v31 = 3;
          v34 = 4;
          v35 = 8;
          v32 = 1;
          v33 = 4;
          v30 = 3;
          goto LABEL_286;
        }

        LOBYTE(v29) = 0;
        LOBYTE(v27) = 0;
        if (v25 <= 0x10000)
        {
          v33 = 5;
        }

        else
        {
          v33 = 6;
        }

        v31 = 3;
        v35 = 32;
        v32 = 2;
        goto LABEL_84;
      }

      if (v22 <= 0x200)
      {
        v30 = 3;
        v32 = 0;
        if (v29)
        {
          LOBYTE(v29) = 0;
          LOBYTE(v27) = 0;
          if (v25 <= 0x8000)
          {
            v31 = 3;
          }

          else
          {
            v31 = 4;
          }

          if (v25 > 0x8000)
          {
            v30 = 3;
          }

          else
          {
            v30 = 4;
          }

          v33 = 4;
          if (v25 > 0x8000)
          {
            v34 = 6;
          }

          else
          {
            v34 = 4;
          }

          v36 = 7;
          if (v25 > 0x8000)
          {
            v36 = 5;
          }

          v35 = 32;
          goto LABEL_286;
        }

        LOBYTE(v27) = 0;
        LOBYTE(v29) = 1;
        goto LABEL_283;
      }

LABEL_366:
      LOBYTE(v29) = 0;
      LOBYTE(v27) = 0;
      v31 = 3;
      v33 = 4;
      v35 = 16;
      v32 = 1;
      goto LABEL_83;
    }

    if (v21 <= 0xA0)
    {
      LOBYTE(v27) = 0;
      LOBYTE(v29) = 0;
      v32 = v22 < 0xA1;
      v35 = 16;
      if (v22 < 0xA1)
      {
        v35 = 8;
      }

      v30 = 3;
      if (v22 < 0xA1)
      {
        v31 = 3;
      }

      else
      {
        v31 = 4;
      }

      v34 = 5;
      if (v22 < 0xA1)
      {
        v36 = 5;
      }

      else
      {
        v36 = 6;
      }

      v33 = 4;
LABEL_125:
      if (v22 <= 1)
      {
        v56 = (v22 == 0) << 63;
LABEL_287:
        if (v56 >= v36)
        {
          v56 = v36;
        }

        if (v56 <= 3)
        {
          LODWORD(v56) = 3;
        }

        if (v21 > 1)
        {
          v62 = 64 - __clz(v21 - 1);
        }

        else
        {
          v62 = (v21 == 0) << 63;
        }

        if (v62 >= v34)
        {
          v62 = v34;
        }

        v63 = 3;
        if (v62 > 3)
        {
          v63 = v62;
        }

        if (v30 >= v56)
        {
          v64 = v56;
        }

        else
        {
          v64 = v30;
        }

        v65 = (v64 - 3);
        if (v31 >= v63)
        {
          v31 = v63;
        }

        v66 = v31 - 3;
        v67 = 64 - __clz(v24 - 1);
        if (v24 <= 1)
        {
          v68 = 0;
        }

        else
        {
          v68 = v67;
        }

        v69 = (1 << v68);
        if (v35 >= v69)
        {
          LODWORD(v35) = v69;
        }

        v70 = v69 / v35;
        v71 = v33;
        if (v23 <= 0x100)
        {
          v72 = v23 - 1;
          v73 = ((v23 - 1 + (1 << v33)) & -(1 << v33)) - v23;
          if (v73)
          {
            v74 = v32 + 9;
            do
            {
              v75 = v74 - 9;
              if (((v72 + (1 << (v74 - 6))) & -(1 << (v74 - 6))) - v23 < v73)
              {
                v32 = v74 - 9;
                v71 = v74 - 6;
                v73 = ((v72 + (1 << (v74 - 6))) & -(1 << (v74 - 6))) - v23;
              }

              if (v74 != 12)
              {
                if (((v72 + (1 << (v74 - 5))) & -(1 << (v74 - 5))) - v23 < v73)
                {
                  v32 = v74 - 9;
                  v71 = v74 - 5;
                  v73 = ((v72 + (1 << (v74 - 5))) & -(1 << (v74 - 5))) - v23;
                }

                if (v74 != 11)
                {
                  if (((v72 + (1 << (v74 - 4))) & -(1 << (v74 - 4))) - v23 < v73)
                  {
                    v32 = v74 - 9;
                    v71 = v74 - 4;
                    v73 = ((v72 + (1 << (v74 - 4))) & -(1 << (v74 - 4))) - v23;
                  }

                  if (v74 != 10)
                  {
                    if (((v72 + (1 << (v74 - 3))) & -(1 << (v74 - 3))) - v23 < v73)
                    {
                      v32 = v74 - 9;
                      v71 = v74 - 3;
                      v73 = ((v72 + (1 << (v74 - 3))) & -(1 << (v74 - 3))) - v23;
                    }

                    if (v74 != 9)
                    {
                      v76 = ((v72 + (1 << (v74 - 1))) & -(1 << (v74 - 1))) - v23;
                      v77 = ((v72 + (1 << (v74 - 2))) & -(1 << (v74 - 2))) - v23;
                      if (v77 >= v73)
                      {
                        v78 = v73;
                      }

                      else
                      {
                        v78 = ((v72 + (1 << (v74 - 2))) & -(1 << (v74 - 2))) - v23;
                      }

                      if (v77 < v73)
                      {
                        v71 = v74 - 2;
                      }

                      v79 = v76 >= v78;
                      if (v76 < v78)
                      {
                        v80 = 1;
                      }

                      else
                      {
                        v76 = v78;
                        v80 = 0;
                      }

                      if (!v79)
                      {
                        v71 = v74 - 1;
                      }

                      if (v77 < v73)
                      {
                        v81 = 1;
                      }

                      else
                      {
                        v81 = v80;
                      }

                      v82 = ((v72 + (1 << v74)) & -(1 << v74)) - v23;
                      v83 = (v82 < v76) | v81;
                      if (v82 >= v76)
                      {
                        v73 = v76;
                      }

                      else
                      {
                        v71 = v74;
                        v73 = ((v72 + (1 << v74)) & -(1 << v74)) - v23;
                      }

                      if (v83)
                      {
                        v32 = v74 - 9;
                      }
                    }
                  }
                }
              }

              --v74;
            }

            while (v75 > 0);
          }
        }

        *a5 = v56;
        *(a5 + 8) = v63;
        *(a5 + 16) = v71;
        *(a5 + 24) = v32;
        *(a5 + 32) = v66;
        *(a5 + 40) = v65;
        result = vdupq_n_s64(1uLL);
        *(a5 + 48) = result;
        *(a5 + 64) = v70;
        *(a5 + 72) = 1;
        *(a5 + 80) = 0;
        *(a5 + 81) = v29;
        *(a5 + 82) = v27;
        *(a5 + 83) = 0;
        *(a5 + 89) = 0;
        return result;
      }

LABEL_286:
      v56 = 64 - __clz(v22 - 1);
      goto LABEL_287;
    }

    if (v21 > 0xC0)
    {
      if (v21 <= 0x100)
      {
        if (v22 <= 0x40)
        {
          v34 = 5;
          v30 = 3;
          if (v25 > 0x10000)
          {
            LOBYTE(v27) = 0;
            LOBYTE(v29) = 0;
            v60 = v25 >= 0x20001;
            v61 = v25 < 0x20001;
            v35 = 32;
            if (v60)
            {
              v33 = 3;
            }

            else
            {
              v35 = 8;
              v33 = 5;
            }

            if (v60)
            {
              v30 = 3;
            }

            else
            {
              v30 = 4;
            }

            v32 = 2 * v61;
            if (v60)
            {
              v36 = 5;
            }

            else
            {
              v36 = 6;
            }

            if (v60)
            {
              v34 = 5;
            }

            else
            {
              v34 = 4;
            }

            v31 = 3;
            goto LABEL_125;
          }

          LOBYTE(v27) = 0;
          LOBYTE(v29) = 0;
LABEL_174:
          v32 = 2;
          v35 = 32;
          v31 = 3;
          v33 = 5;
LABEL_124:
          v36 = 5;
          goto LABEL_125;
        }

        if (v22 <= 0x80)
        {
          if (v29)
          {
            if (v25 > 0x800)
            {
              LOBYTE(v29) = 0;
              v35 = 8;
              if (!v27)
              {
                v35 = 16;
              }

              v30 = 3;
              if (v27)
              {
                v31 = 3;
              }

              else
              {
                v31 = 4;
              }

              v33 = 4;
              if (v27)
              {
                v34 = 4;
              }

              else
              {
                v34 = 6;
              }

              v36 = 5;
              v32 = v27;
              LOBYTE(v27) = 0;
            }

            else
            {
              LOBYTE(v29) = 0;
              if (v27)
              {
                v31 = 4;
              }

              else
              {
                v31 = 3;
              }

              if (v27)
              {
                v33 = 4;
              }

              else
              {
                v33 = 5;
              }

              if (v27)
              {
                v34 = 6;
              }

              else
              {
                v34 = 4;
              }

              if (v27)
              {
                v36 = 5;
              }

              else
              {
                v36 = 6;
              }

              v35 = 8;
              v32 = 1;
              v30 = v31;
              LOBYTE(v27) = 0;
            }

            goto LABEL_286;
          }

          v32 = 0;
          LOBYTE(v27) = 0;
          LOBYTE(v29) = 1;
          v30 = 3;
          v33 = 4;
          v35 = 32;
          goto LABEL_284;
        }

        if (v22 > 0x100)
        {
          if (v22 >= 0x201)
          {
            v32 = 0;
            LOBYTE(v29) = 0;
            LOBYTE(v27) = 0;
            v51 = v25 > 0x2000;
            v35 = 16;
            if (!v51)
            {
              v35 = 8;
            }

            v31 = 3;
            v33 = 4;
          }

          else
          {
            v32 = 0;
            LOBYTE(v29) = 0;
            LOBYTE(v27) = 0;
            v31 = 3;
            v33 = 4;
            v35 = 16;
          }
        }

        else
        {
          if (v29)
          {
            goto LABEL_366;
          }

          if (v25 > 0x1000)
          {
            v30 = 3;
            if (v25 > 0x2000)
            {
              v32 = 0;
              LOBYTE(v29) = v27 ^ 1;
              v35 = 8;
              if (v27)
              {
                v33 = 3;
              }

              else
              {
                v35 = 16;
                v33 = 4;
              }

              if (v27)
              {
                v34 = 6;
              }

              else
              {
                v34 = 7;
              }

              v31 = 4;
              if (v27)
              {
                v36 = 5;
              }

              else
              {
                v36 = 4;
              }

              LOBYTE(v27) = 0;
              goto LABEL_286;
            }

            v32 = 0;
            v33 = 4;
            v35 = 8;
LABEL_369:
            v34 = 6;
            v36 = 5;
            v31 = 4;
            goto LABEL_370;
          }

          v32 = 0;
          LOBYTE(v29) = 0;
          LOBYTE(v27) = 0;
          v31 = 3;
          v33 = 4;
          v35 = 8;
        }

LABEL_450:
        v34 = 5;
        v36 = 6;
        v30 = 4;
        goto LABEL_286;
      }

      if (v21 <= 0x140)
      {
        v35 = 4;
        v30 = 3;
        if (v22 >= 0xC1)
        {
          LOBYTE(v29) = 0;
          LOBYTE(v27) = 0;
          v32 = v22 < 0x501;
          if (v22 >= 0x501)
          {
            v33 = 4;
          }

          else
          {
            v33 = 5;
          }

          if (v22 < 0x501)
          {
            v31 = 3;
          }

          else
          {
            v35 = 1;
            v31 = 4;
          }

          v34 = 5;
          if (v22 < 0x501)
          {
            v36 = 5;
          }

          else
          {
            v36 = 6;
          }

          goto LABEL_286;
        }

        LOBYTE(v27) = 0;
        v32 = 0;
        LOBYTE(v29) = 1;
        v36 = 5;
        v34 = 6;
        v31 = 4;
        v33 = 4;
        goto LABEL_125;
      }

      if (v21 <= 0x180)
      {
        if (v22 < 0x121)
        {
          LOBYTE(v27) = 0;
          v32 = 0;
          v31 = 4;
          v30 = 3;
          LOBYTE(v29) = 1;
          v36 = 5;
          v34 = 6;
          v35 = 8;
          v33 = 4;
          goto LABEL_125;
        }

        if (v22 <= 0x180)
        {
          v32 = 0;
          LOBYTE(v27) = 0;
          v85 = v25 >= 0x801;
          v33 = 4;
          if (v25 >= 0x801)
          {
            v35 = 8;
          }

          else
          {
            v35 = 4;
          }

          if (v85)
          {
            v36 = 5;
          }

          else
          {
            v36 = 4;
          }

          LOBYTE(v29) = 1;
          v30 = 3;
          v34 = 6;
          v31 = 4;
          goto LABEL_286;
        }

        v31 = 3;
        if (v22 <= 0x1C0)
        {
          v32 = 0;
          LOBYTE(v27) = 0;
          v87 = v25 >= 0x801;
          if (v25 >= 0x801)
          {
            v31 = 3;
          }

          else
          {
            v31 = 4;
          }

          if (v25 < 0x801)
          {
            v34 = 6;
          }

          else
          {
            v34 = 7;
          }

          v35 = 4;
          if (v87)
          {
            v36 = 4;
          }

          else
          {
            v36 = 5;
          }

          LOBYTE(v29) = 1;
          v30 = 3;
          v33 = 4;
          goto LABEL_286;
        }

        LOBYTE(v29) = 0;
        LOBYTE(v27) = 0;
        v36 = 5;
        v35 = 2;
        v32 = 1;
LABEL_138:
        v34 = 5;
        v33 = 5;
        v30 = 3;
        goto LABEL_286;
      }

      if (v21 > 0x1C0)
      {
        if (v21 > 0x200)
        {
          if (v21 < 0x3F1)
          {
            LOBYTE(v27) = 0;
            v32 = 0;
            v31 = 4;
            v30 = 3;
            LOBYTE(v29) = 1;
            v36 = 5;
            v34 = 6;
            v35 = 1;
            v33 = 4;
            goto LABEL_125;
          }

          if (v21 > 0x400)
          {
            LOBYTE(v29) = v25 < 0x801;
            if (v22 > 0x200)
            {
              v32 = 0;
              LOBYTE(v29) = 0;
              LOBYTE(v27) = 0;
              v93 = v25 >= 0x801;
              v35 = 1;
              if (v93)
              {
                v35 = 2;
              }

              v31 = 3;
              if (v93)
              {
                v33 = 4;
              }

              else
              {
                v33 = 3;
              }

              if (v93)
              {
                v34 = 4;
              }

              else
              {
                v34 = 5;
              }

              if (v93)
              {
                v36 = 7;
              }

              else
              {
                v36 = 6;
              }

              v30 = v33;
              goto LABEL_286;
            }

            LOBYTE(v27) = 0;
            v32 = 0;
            v60 = v25 >= 0x801;
            v31 = 4;
            v35 = 2;
            if (v60)
            {
              v35 = 4;
            }

            v30 = 3;
            v36 = 5;
            v34 = 6;
            v33 = 4;
            goto LABEL_125;
          }

          if (v22 > 0x100)
          {
            v32 = 0;
            LOBYTE(v29) = 0;
            LOBYTE(v27) = 0;
            v30 = 3;
            if (v25 > 0x2000)
            {
              v33 = 3;
            }

            else
            {
              v33 = 4;
            }

            v31 = 4;
            v35 = 8;
            v34 = 6;
            v36 = 5;
            goto LABEL_286;
          }

          v30 = 3;
          if (v25 <= 0x1000)
          {
            LOBYTE(v27) = 0;
            LOBYTE(v29) = 0;
            v35 = 4;
            v34 = 5;
            v32 = 1;
            v31 = 3;
            v33 = 4;
            goto LABEL_124;
          }

          LOBYTE(v27) = 0;
          LOBYTE(v29) = 0;
          v32 = 0;
          v89 = v25 > 0x2000;
          v35 = 16;
          v90 = 8;
        }

        else
        {
          if (v22 > 0x80)
          {
            if (v22 <= 0x100)
            {
              if (v25 > 0x8000)
              {
                v32 = 0;
                LOBYTE(v29) = 0;
                LOBYTE(v27) = 0;
                v33 = 4;
                if (v25 > 0x10000)
                {
                  v34 = 4;
                }

                else
                {
                  v34 = 5;
                }

                if (v25 <= 0x10000)
                {
                  v36 = 6;
                }

                else
                {
                  v36 = 7;
                }

                v31 = 3;
                v35 = 32;
                v30 = 4;
                goto LABEL_286;
              }

              LOBYTE(v29) = 0;
              LOBYTE(v27) = 0;
              v31 = 3;
              v33 = 4;
              v35 = 16;
              v32 = 1;
              v34 = 5;
              goto LABEL_263;
            }

            if (v22 > 0x200)
            {
              if (v22 > 0x400)
              {
                LOBYTE(v29) = 0;
                LOBYTE(v27) = 0;
                v94 = v25 >= 0x801;
                v32 = v25 < 0x801;
                v33 = 4;
                if (v25 < 0x801)
                {
                  v35 = 1;
                }

                else
                {
                  v35 = 4;
                }

                v31 = 3;
                if (v94)
                {
                  v30 = 4;
                }

                else
                {
                  v30 = 3;
                }

                v34 = 5;
                if (v94)
                {
                  v36 = 6;
                }

                else
                {
                  v36 = 5;
                }
              }

              else
              {
                v32 = 0;
                LOBYTE(v27) = 0;
                v92 = v25 > 0x1000;
                LOBYTE(v29) = v25 <= 0x1000;
                v35 = 8;
                v33 = 4;
                if (v92)
                {
                  v30 = 4;
                }

                else
                {
                  v35 = 4;
                  v30 = 3;
                }

                if (v92)
                {
                  v31 = 3;
                }

                else
                {
                  v31 = 4;
                }

                v36 = 5;
                if (v92)
                {
                  v34 = 5;
                }

                else
                {
                  v34 = 6;
                }

                if (v92)
                {
                  v36 = 6;
                }
              }

              goto LABEL_286;
            }

            v30 = 3;
            if (v25 > 0x800)
            {
              v32 = 0;
              LOBYTE(v27) = 0;
              LOBYTE(v29) = 1;
              v33 = 4;
              v35 = 2;
              goto LABEL_284;
            }

            v32 = 0;
            if (v27)
            {
              v35 = 2;
            }

            else
            {
              v35 = 1;
            }

            if (v27)
            {
              v31 = 4;
            }

            else
            {
              v31 = 3;
            }

            if (v27)
            {
              v91 = 3;
            }

            else
            {
              v91 = 4;
            }

            v34 = 7;
            if (!v27)
            {
              v34 = 5;
            }

            v33 = 4;
            if (v27)
            {
              v36 = 4;
            }

            else
            {
              v36 = 6;
            }

            v30 = v91;
LABEL_370:
            LOBYTE(v29) = v27;
            LOBYTE(v27) = 0;
            goto LABEL_286;
          }

          v30 = 3;
          if (v25 <= 0x4000)
          {
            LOBYTE(v27) = 0;
            LOBYTE(v29) = 0;
            v32 = 0;
            v31 = 4;
            v36 = 5;
            v34 = 6;
            v35 = 32;
            v33 = 4;
            goto LABEL_125;
          }

          LOBYTE(v27) = 0;
          LOBYTE(v29) = 0;
          v89 = v25 > 0x8000;
          v32 = v25 <= 0x8000;
          v35 = 32;
          v90 = 16;
        }

        if (v89)
        {
          v30 = 4;
        }

        else
        {
          v35 = v90;
          v30 = 3;
        }

        v34 = 5;
        if (v89)
        {
          v36 = 6;
        }

        else
        {
          v36 = 5;
        }

        v33 = 4;
        v31 = 3;
        goto LABEL_125;
      }

      v31 = 3;
      if (v22 <= 0x500)
      {
        LOBYTE(v27) = 0;
        LOBYTE(v29) = 0;
        v84 = v25 >= 0x801;
        v32 = v25 < 0x801;
        v35 = 8;
        if (v84)
        {
          v30 = 4;
        }

        else
        {
          v35 = 2;
          v30 = 3;
        }

        if (v84)
        {
          v33 = 4;
        }

        else
        {
          v33 = 5;
        }

        v34 = 5;
        if (v84)
        {
          v36 = 6;
        }

        else
        {
          v36 = 5;
        }

        goto LABEL_125;
      }

      LOBYTE(v29) = 0;
      LOBYTE(v27) = 0;
      v36 = 5;
      v32 = 1;
      v34 = 5;
      v33 = 5;
    }

    else
    {
      if (v22 < 0x51)
      {
        LOBYTE(v27) = 0;
        LOBYTE(v29) = 0;
        v32 = 0;
        v36 = 4;
        v30 = 3;
        v34 = 6;
        v35 = 32;
        v31 = 3;
        v33 = 4;
        goto LABEL_125;
      }

      if (v22 < 0x81)
      {
        v32 = 0;
        LOBYTE(v27) = 0;
        LOBYTE(v29) = 1;
        v30 = 3;
LABEL_283:
        v33 = 4;
        v35 = 8;
        goto LABEL_284;
      }

      if (v22 < 0xA1)
      {
LABEL_259:
        v32 = 0;
        LOBYTE(v27) = 0;
        LOBYTE(v29) = 1;
        v30 = 3;
        v33 = 4;
        v35 = 16;
LABEL_284:
        v34 = 6;
        v36 = 5;
LABEL_285:
        v31 = 4;
        goto LABEL_286;
      }

      if (v22 <= 0xC0)
      {
        v32 = 0;
        LOBYTE(v27) = 0;
        v60 = v25 >= 0x801;
        v35 = 2;
        if (v60)
        {
          v35 = 16;
        }

        LOBYTE(v29) = 1;
        v30 = 3;
        v33 = 4;
        goto LABEL_284;
      }

      if (v22 < 0x301)
      {
        LOBYTE(v29) = 0;
        LOBYTE(v27) = 0;
        v31 = 3;
        v33 = 4;
        v35 = 8;
        v32 = 1;
        goto LABEL_450;
      }

      if (v22 <= 0x500)
      {
        LOBYTE(v29) = 0;
        LOBYTE(v27) = 0;
        v88 = v25 >= 0x801;
        v35 = 4;
        if (v88)
        {
          v34 = 4;
        }

        else
        {
          v34 = 5;
        }

        v33 = 5;
        if (v88)
        {
          v36 = 6;
        }

        else
        {
          v36 = 5;
        }

        v31 = 3;
        v32 = 1;
        v30 = 3;
        goto LABEL_286;
      }

      LOBYTE(v29) = 0;
      LOBYTE(v27) = 0;
      v31 = 3;
      v33 = 4;
      v32 = 1;
      v36 = 5;
      v34 = 5;
    }

    v30 = 3;
    v35 = 1;
    goto LABEL_286;
  }

  *(a5 + 96) = 0;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  MPSNDArrayConvolutionDeviceBehaviorA14::GetKernelParameters(a1, a2, a3, 0, a5);
  v40 = *(*(a2 + *MEMORY[0x277CD7350]) + 1480);
  v41 = *(a3 + 88);
  v42 = *(a3 + 8) * *a3;
  v43 = *(a5 + 64);
  if (v43)
  {
    v44 = *(a3 + 8) * *a3;
  }

  else
  {
    v44 = v42 * v41;
  }

  v45 = 1;
  v47 = 1 << *(a5 + 16);
  if (v43)
  {
    v45 = (v41 + v43 - 1) / v43;
  }

  v48 = (v44 + *(a5 + 72) * v47 - 1) / (*(a5 + 72) * v47);
  v46 = 1 << *(a5 + 8);
  v49 = *(a3 + 64) * *(a3 + 56) * ((*(a3 + 32) + (1 << *a5) - 1) / (1 << *a5)) * ((*(a3 + 40) + v46 - 1) / v46);
  if (v45 * v49 * v48 >= v40)
  {
    v42 = v44;
  }

  else
  {
    *result.i32 = (v47 - 1 - (v42 + v47 - 1) % v47) / v42;
    v50 = 3 * v40;
    if (*result.i32 <= 0.1)
    {
      if (v49 >= v50)
      {
        v43 = *(a3 + 88);
      }

      else
      {
        v54 = v41 - 1;
        v55 = 1;
        while (2 * v55 <= v41)
        {
          v49 *= 2;
          v43 = (2 * v55 + v54) / (2 * v55);
          if (v43 != 1)
          {
            v55 *= 2;
            if (v49 < v50)
            {
              continue;
            }
          }

          goto LABEL_128;
        }

        v43 = ((v55 & 0x7FFFFFFFFFFFFFFFLL) + v54) / (v55 & 0x7FFFFFFFFFFFFFFFuLL);
      }
    }

    else
    {
      v43 = 0;
      v42 *= v41;
    }

LABEL_128:
    v57 = 1;
    while (1)
    {
      v48 = v57;
      if (v49 >= v50)
      {
        break;
      }

      v57 *= 2;
      v49 *= 2;
      if ((v42 - 1 + 2 * v48) / (2 * v48) <= 7)
      {
        v48 &= ~0x8000000000000000;
        break;
      }
    }
  }

  v58 = (v48 + (v47 + v42 - 1) / v47 - 1) / v48;
  if (v43 < v41)
  {
    v41 = v43;
  }

  *(a5 + 64) = v41;
  *(a5 + 72) = v58;
  return result;
}

uint64_t MPSNDArrayConvolutionDeviceBehaviorA14::GetKernelParameters@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a4)
  {
    result = ParseAutoTuningKernelParameters(a4, a3, a5);
    if (result)
    {
      return result;
    }
  }

  else
  {
    result = ParseAutoTuningKernelParameters(a1[19], a3, a5);
    if (result)
    {
      return result;
    }
  }

  if (!*(a3 + 128))
  {
    v32 = *(a3 + 32);
    v33 = *(a3 + 40);
    v34 = *(a3 + 56);
    v35 = *(a3 + 64);
    v36 = *(a3 + 8) * *a3;
    v37 = *(a3 + 88);
    v38 = v36 * v37;
    v40 = *(a3 + 96) == 1 && *(a3 + 104) == 1;
    v42 = v34 != 1 || v35 != 1;
    if (v33 <= 0x10)
    {
      if (v32 > 8)
      {
        if (v32 > 0x10)
        {
          v43 = 0;
          v49 = 4;
          if (v38 <= 0x8000)
          {
            LODWORD(v48) = 1;
          }

          else
          {
            LODWORD(v48) = 4;
          }

          if (v38 > 0x8000)
          {
            LODWORD(v47) = 8;
          }

          else
          {
            LODWORD(v47) = 32;
          }

          v50 = 3;
          if (v38 > 0x8000)
          {
            v46 = 3;
          }

          else
          {
            v46 = 4;
          }

          LOBYTE(v40) = 1;
          v45 = 2;
          v44 = 6;
          v51 = 5;
        }

        else
        {
          v43 = 0;
          if (v42)
          {
            v51 = 4;
            if (v38 > 0x8000)
            {
              LODWORD(v48) = 4;
            }

            else
            {
              LODWORD(v48) = 32;
            }

            LODWORD(v47) = 8 * (v38 > 0x8000);
            LOBYTE(v40) = 1;
            v50 = 3;
            v45 = 2;
            v44 = 6;
            v49 = 4;
            v46 = 3;
          }

          else
          {
            if (v38 > 0x8000)
            {
              LODWORD(v48) = 8;
            }

            else
            {
              LODWORD(v48) = 16;
            }

            v51 = 4;
            v45 = 2;
            if (v38 > 0x8000)
            {
              LODWORD(v47) = 4;
            }

            else
            {
              LODWORD(v47) = 2;
            }

            LOBYTE(v40) = 1;
            v50 = 3;
            v44 = 6;
            v49 = 4;
            v46 = 4;
          }
        }

        goto LABEL_313;
      }

      LOBYTE(v40) = v38 <= 0x8000;
      v43 = v38 > 0x8000;
      v44 = 6;
      v45 = 2;
      v46 = 3;
      LODWORD(v47) = 32;
      LODWORD(v48) = 1;
      v49 = 4;
      v50 = 3;
      v51 = 3;
      goto LABEL_242;
    }

    if (v33 <= 0x20)
    {
      if (v32 <= 8)
      {
        LOBYTE(v40) = 0;
        if (v38 >= 0x100001)
        {
          LODWORD(v48) = 16;
        }

        else
        {
          LODWORD(v48) = 8;
        }

        if (v38 >= 0x100001)
        {
          LODWORD(v47) = 2;
        }

        else
        {
          LODWORD(v47) = 4;
        }

        v44 = 6;
        v43 = 1;
        v50 = 3;
        v49 = 5;
        v46 = 3;
        v45 = 1;
        v51 = 3;
        goto LABEL_242;
      }

      if (v32 >= 0x19)
      {
        if (v32 > 0x20)
        {
          v45 = 0;
          LOBYTE(v40) = 0;
          v43 = 1;
          LODWORD(v48) = 2;
          LODWORD(v47) = 16;
          v46 = 3;
          v50 = 4;
          v51 = 5;
          v49 = 5;
          v44 = 5;
          goto LABEL_313;
        }

        LODWORD(v47) = 32;
        v50 = 3;
        if (v38 >= 0x100001)
        {
          v43 = 0;
          if (v38 < 0x400001)
          {
            LODWORD(v48) = 1;
          }

          else
          {
            LODWORD(v48) = 32;
          }

          if (v38 >= 0x400001)
          {
            LODWORD(v47) = 1;
          }

          else
          {
            LODWORD(v47) = 32;
          }

          if (v38 >= 0x400001)
          {
            v46 = 3;
          }

          else
          {
            v46 = 4;
          }

          v45 = 2 * (v38 < 0x400001);
          if (v38 >= 0x400001)
          {
            v51 = 3;
          }

          else
          {
            v51 = 5;
          }

          LOBYTE(v40) = 1;
          v44 = 6;
          v49 = v51;
          goto LABEL_313;
        }

        v43 = 0;
        LODWORD(v48) = 1;
        v46 = 4;
        v45 = 2;
        v44 = 6;
        v51 = 5;
        v49 = 5;
      }

      else
      {
        v45 = 0;
        v43 = 0;
        LODWORD(v47) = 1;
        LODWORD(v48) = 32;
        v51 = 3;
        v44 = 6;
        v49 = 3;
        v50 = 3;
        v46 = 3;
      }

LABEL_312:
      LOBYTE(v40) = 1;
      goto LABEL_313;
    }

    if (v33 <= 0x30)
    {
      if (v32 < 0x61)
      {
        LOBYTE(v40) = 0;
        LODWORD(v47) = 0;
        v51 = 5;
        v45 = 2;
        v46 = 3;
        LODWORD(v48) = 32;
        v43 = 1;
        v49 = 4;
LABEL_82:
        v50 = v46;
        v44 = 5;
        goto LABEL_242;
      }

      if (v32 >= 0x81)
      {
        if (v32 > 0x100)
        {
          v46 = 3;
        }

        else
        {
          v46 = 4;
        }

        if (v32 > 0x100)
        {
          v51 = 5;
        }

        else
        {
          v51 = 6;
        }

        v49 = 6;
        if (v32 < 0xC1)
        {
          v51 = 5;
          v49 = 4;
        }

        v44 = 5;
        if (v32 >= 0xC1)
        {
          v45 = v32 > 0x100;
        }

        else
        {
          v45 = 2;
        }

        if (v32 >= 0xC1)
        {
          v50 = 4;
        }

        else
        {
          v50 = 3;
        }

        if (v32 >= 0xC1)
        {
          LODWORD(v47) = 32;
        }

        else
        {
          v46 = 3;
          LODWORD(v47) = 0;
        }

        if (v32 >= 0xC1)
        {
          LODWORD(v48) = 1;
        }

        else
        {
          LODWORD(v48) = 32;
        }

        v43 = 1;
        LOBYTE(v40) = 0;
        goto LABEL_313;
      }

      v43 = 0;
      v45 = 1;
      LODWORD(v47) = 32;
      v49 = 4;
      v50 = 3;
      v51 = 6;
      v44 = 6;
      v46 = 4;
LABEL_161:
      LODWORD(v48) = 1;
      goto LABEL_312;
    }

    if (v33 <= 0x40)
    {
      if (v32 <= 8)
      {
        LODWORD(v47) = 32;
        if (v38 >= 0x80001)
        {
          LOBYTE(v40) = 0;
          if (v37 == 1)
          {
            LODWORD(v48) = 32;
          }

          else
          {
            LODWORD(v48) = 1;
          }

          if (v37 == 1)
          {
            LODWORD(v47) = 1;
          }

          else
          {
            LODWORD(v47) = 32;
          }

          v44 = 6;
          v45 = 2;
          v50 = 4;
          v51 = 3;
          v43 = 1;
          v49 = 5;
        }

        else
        {
          LOBYTE(v40) = 0;
          v45 = 0;
          v44 = 5;
          v50 = 4;
          v51 = 3;
          v43 = 1;
          v49 = 6;
          LODWORD(v48) = 1;
        }

        v46 = 3;
        goto LABEL_242;
      }

      if (v32 <= 0x10)
      {
        LOBYTE(v40) = 0;
        if (v38 > 0x8000)
        {
          LODWORD(v48) = 2;
        }

        else
        {
          LODWORD(v48) = 32;
        }

        LODWORD(v47) = 16 * (v38 > 0x8000);
        v46 = 3;
        if (v38 > 0x8000)
        {
          v50 = 3;
        }

        else
        {
          v50 = 4;
        }

        v43 = 1;
        if (v38 <= 0x8000)
        {
          v45 = 1;
        }

        else
        {
          v45 = 2;
        }

        v44 = 6;
        v49 = 5;
        v51 = 4;
        goto LABEL_313;
      }

      if (v32 <= 0x20)
      {
        v43 = 0;
        v46 = 4;
        if (v38 >= 0x100001)
        {
          LODWORD(v48) = 1;
        }

        else
        {
          LODWORD(v48) = 4;
        }

        if (v38 >= 0x100001)
        {
          LODWORD(v47) = 32;
        }

        else
        {
          LODWORD(v47) = 4;
        }

        LOBYTE(v40) = 1;
        if (v38 < 0x100001)
        {
          v45 = 1;
        }

        else
        {
          v45 = 2;
        }

        v51 = 5;
        if (v38 < 0x100001)
        {
          v44 = 5;
        }

        else
        {
          v44 = 6;
        }

        if (v38 >= 0x100001)
        {
          v49 = 5;
        }

        else
        {
          v49 = 6;
        }

        v50 = 3;
        goto LABEL_313;
      }

      if (v32 < 0x31)
      {
        v43 = 0;
        v45 = 1;
        LODWORD(v48) = 2;
        LODWORD(v47) = 8;
LABEL_310:
        v46 = 4;
        v50 = 3;
        v51 = 5;
        v49 = 6;
LABEL_311:
        v44 = v51;
        goto LABEL_312;
      }

      if (v32 <= 0x40)
      {
        if (!v42)
        {
          if (v38 <= 0x2000)
          {
            v43 = 0;
            LODWORD(v48) = 1;
            LODWORD(v47) = 16;
            v46 = 4;
            v50 = 3;
            v45 = 2;
            v44 = 6;
            v51 = 5;
            v49 = 5;
            goto LABEL_312;
          }

          v45 = 1;
          LODWORD(v47) = 32;
          v50 = 3;
          if (v38 <= 0x4000)
          {
            v43 = 0;
            v46 = 4;
            v44 = 6;
            v51 = 5;
            v49 = 5;
            goto LABEL_161;
          }

          LOBYTE(v40) = v38 < 0x20001;
          v43 = v38 >= 0x20001;
          if (v38 < 0x20001)
          {
            LODWORD(v48) = 1;
          }

          else
          {
            LODWORD(v48) = 2;
          }

          if (v38 >= 0x20001)
          {
            LODWORD(v47) = 16;
          }

          else
          {
            LODWORD(v47) = 32;
          }

          if (v38 >= 0x20001)
          {
            v46 = 3;
          }

          else
          {
            v46 = 4;
          }

          if (v38 < 0x20001)
          {
            v50 = 3;
          }

          else
          {
            v50 = 4;
          }

LABEL_603:
          v44 = 6;
          v51 = 5;
          v49 = 5;
          goto LABEL_313;
        }

        if (v38 > 0x4000)
        {
          if (v38 <= 0x10000)
          {
            v43 = 0;
            v45 = 1;
            LODWORD(v47) = 32;
            v50 = 3;
            v44 = 4;
            v49 = 6;
            v51 = 5;
            v46 = 4;
            goto LABEL_161;
          }

          if (v38 >= 0x20001)
          {
            v44 = 4;
            if (v40)
            {
              v43 = 0;
              if (v37 == 1)
              {
                LODWORD(v47) = 1;
              }

              else
              {
                LODWORD(v47) = 4;
              }

              if (v37 == 1)
              {
                LODWORD(v48) = 32;
              }

              else
              {
                LODWORD(v48) = 8;
              }

              LOBYTE(v40) = 1;
              v46 = 4;
              v50 = 3;
              v45 = 2;
              goto LABEL_603;
            }

            v45 = 0;
            v43 = 0;
            LOBYTE(v40) = 1;
            LODWORD(v48) = 2;
            LODWORD(v47) = 16;
            v50 = 3;
LABEL_424:
            v49 = 6;
            v51 = 5;
            v46 = 4;
            goto LABEL_313;
          }
        }

        v45 = 0;
        v43 = 0;
        LODWORD(v48) = 1;
        LODWORD(v47) = 32;
        goto LABEL_502;
      }

      if (v32 <= 0x80)
      {
        if (v38 <= 0x2000)
        {
          LOBYTE(v40) = 0;
          v45 = 1;
          LODWORD(v47) = 4;
          v50 = 3;
          v51 = 5;
          v49 = 5;
          v44 = 5;
          v46 = 3;
          goto LABEL_457;
        }

        if (!(v38 >> 19))
        {
          LODWORD(v48) = 32;
          v46 = 4;
          v49 = 5;
          if (!(v38 >> 18))
          {
            v43 = 0;
            if (v38 >> 17)
            {
              LODWORD(v48) = 32;
            }

            else
            {
              LODWORD(v48) = 4;
            }

            if (v38 >> 17)
            {
              LODWORD(v47) = 1;
            }

            else
            {
              LODWORD(v47) = 4;
            }

            if (v38 >> 17)
            {
              v44 = 5;
            }

            else
            {
              v44 = 6;
            }

            if (v38 >> 17)
            {
              v51 = 6;
            }

            else
            {
              v51 = 5;
            }

            v45 = 1;
            v50 = 3;
            v49 = v51;
            goto LABEL_312;
          }

          LODWORD(v47) = 0;
          v43 = 0;
          v45 = 1;
          v50 = 3;
          v51 = 6;
          goto LABEL_311;
        }

        v43 = 0;
        LODWORD(v47) = 1;
        LODWORD(v48) = 32;
        v50 = 3;
        v45 = 2;
LABEL_510:
        v51 = 5;
        v49 = 6;
        v44 = 5;
        v46 = 3;
        goto LABEL_312;
      }

      if (v32 < 0xC1)
      {
        LODWORD(v47) = 0;
        v43 = 0;
        v45 = 1;
        LODWORD(v48) = 32;
        v50 = 3;
        goto LABEL_510;
      }

      if (v32 > 0x100)
      {
        v43 = 0;
        v45 = 1;
        LODWORD(v47) = 8;
        v46 = 4;
        v50 = 3;
        v51 = 5;
        v49 = 6;
        v44 = 5;
        LODWORD(v48) = 4;
        goto LABEL_312;
      }

      v46 = 4;
      v50 = 3;
      if (v38 > 0x10000)
      {
        v45 = 0;
        v43 = v38 < 0x20001;
        LOBYTE(v40) = v38 >= 0x20001;
        if (v38 >= 0x20001)
        {
          LODWORD(v48) = 4;
        }

        else
        {
          LODWORD(v48) = 8;
        }

        if (v38 >= 0x20001)
        {
          LODWORD(v47) = 8;
        }

        else
        {
          LODWORD(v47) = 4;
        }

        v44 = 4;
        if (v38 < 0x20001)
        {
          v46 = 3;
        }

        else
        {
          v46 = 4;
        }

        if (v38 >= 0x20001)
        {
          v50 = 3;
        }

        else
        {
          v50 = 4;
        }

        v49 = 5;
        if (v38 >= 0x20001)
        {
          v51 = 5;
        }

        else
        {
          v51 = 6;
        }

        goto LABEL_313;
      }

      v43 = 0;
      v45 = 1;
      LODWORD(v47) = 16;
LABEL_472:
      v51 = 5;
      v49 = 6;
      v44 = 5;
      goto LABEL_161;
    }

    if (v33 < 0x51)
    {
      LOBYTE(v40) = 0;
      v44 = 6;
      v43 = 1;
      v50 = 4;
      v46 = 3;
      LODWORD(v47) = 16;
      LODWORD(v48) = 2;
      v49 = 5;
LABEL_167:
      v45 = 1;
      v51 = 5;
      goto LABEL_242;
    }

    if (v33 <= 0x60)
    {
      v49 = 5;
      LOBYTE(v40) = 1;
      if (v32 >= 0x41)
      {
        v43 = 0;
        if (v38 > 0x4000)
        {
          LODWORD(v48) = 2;
        }

        else
        {
          LODWORD(v48) = 16;
        }

        LODWORD(v47) = 16 * (v38 > 0x4000);
        if (v38 > 0x4000)
        {
          v45 = 1;
        }

        else
        {
          v45 = 2;
        }

        if (v38 > 0x4000)
        {
          v44 = 5;
        }

        else
        {
          v44 = 6;
        }

        v46 = 4;
        v50 = 3;
        v51 = 5;
        goto LABEL_313;
      }

      v43 = 0;
      v50 = 3;
      v46 = 4;
      LODWORD(v47) = 32;
      v51 = 6;
      goto LABEL_216;
    }

    if (v33 <= 0x80)
    {
      if (v32 <= 0x40)
      {
        if (!v42)
        {
          if (v38 > 0x2000)
          {
            v51 = 5;
            v43 = 1;
            if (!v40)
            {
              v43 = 0;
              v45 = 0;
              v46 = 4;
              LODWORD(v47) = 16;
              LODWORD(v48) = 2;
              v49 = 6;
              LOBYTE(v40) = 1;
              goto LABEL_82;
            }

            LOBYTE(v40) = 0;
            if (v38 >= 0x100001)
            {
              LODWORD(v48) = 1;
            }

            else
            {
              LODWORD(v48) = 2;
            }

            if (v38 >= 0x100001)
            {
              LODWORD(v47) = 32;
            }

            else
            {
              LODWORD(v47) = 8;
            }

            if (v38 >= 0x100001)
            {
              v44 = 5;
            }

            else
            {
              v44 = 6;
            }

            if (v38 < 0x100001)
            {
              v49 = 5;
            }

            else
            {
              v49 = 6;
            }

            v50 = 4;
            if (v38 >= 0x100001)
            {
              v51 = 4;
            }

            else
            {
              v51 = 5;
            }

            v46 = 3;
            v45 = 1;
          }

          else
          {
            v43 = 0;
            v46 = 4;
            if (v40)
            {
              LODWORD(v48) = 16;
            }

            else
            {
              LODWORD(v48) = 4;
            }

            if (v40)
            {
              LODWORD(v47) = 0;
            }

            else
            {
              LODWORD(v47) = 4;
            }

            v45 = !v40;
            v49 = 5;
            if (v40)
            {
              v51 = 5;
            }

            else
            {
              v51 = 6;
            }

            v50 = 3;
            LOBYTE(v40) = 1;
            v44 = 5;
          }

LABEL_242:
          if (v32 <= 1)
          {
            v63 = (v32 == 0) << 63;
LABEL_314:
            if (v63 < v51)
            {
              v51 = v63;
            }

            if (v51 <= 3)
            {
              LODWORD(v51) = 3;
            }

            v64 = 64 - __clz(v33 - 1);
            if (v33 <= 1)
            {
              v64 = (v33 == 0) << 63;
            }

            if (v64 < v49)
            {
              v49 = v64;
            }

            if (v49 <= 3)
            {
              LODWORD(v49) = 3;
            }

            if (v46 >= v51)
            {
              v46 = v51;
            }

            v65 = v46 - 3;
            if (v50 >= v49)
            {
              v50 = v49;
            }

            v66 = v50 - 3;
            if ((v49 + v51) <= 7)
            {
              v67 = *(a1[2] + 1480);
              v68 = v47 <= 1 ? 1 : v47;
              v69 = v35 * v34;
              if (v35 * v34 * v68 * v48 * ((v32 + (1 << v51) - 1) >> v51) * ((v33 + (1 << v49) - 1) >> v49) < 2 * v67)
              {
                if (v36 > 1)
                {
                  v70 = 64 - __clz(v36 - 1);
                }

                else
                {
                  v70 = (v36 == 0) << 63;
                }

                if (v70 >= 6)
                {
                  v70 = 6;
                }

                if (v70 <= 3)
                {
                  v44 = 3;
                }

                else
                {
                  v44 = v70;
                }

                if (v70 <= 4)
                {
                  LODWORD(v70) = 4;
                }

                v71 = 1;
                v72 = 4 * v32 * v33 * v69;
                if (v72 > 0x100000)
                {
                  v74 = v72;
                }

                else
                {
                  v73 = (1 << v44);
                  v74 = v72;
                  if (v36 >= v73)
                  {
                    v74 = 2 * v72;
                    v71 = 2;
                    if (v72 <= 0x80000 && (v36 + 1) >> 1 >= v73)
                    {
                      v74 = 4 * v72;
                      v71 = 4;
                      if (v72 <= 0x40000 && (v36 + 3) >> 2 >= v73)
                      {
                        v74 = 8 * v72;
                        v71 = 8;
                        if (v72 <= 0x20000 && (v36 + 7) >> 3 >= v73)
                        {
                          v74 = 16 * v72;
                          v71 = 16;
                          if (v72 <= 0x10000 && (v36 + 15) >> 4 >= v73)
                          {
                            v74 = 32 * v72;
                            v71 = 32;
                            if (v72 <= 0x8000 && (v36 + 31) >> 5 >= v73)
                            {
                              v74 = v72 << 6;
                              v76 = v72 > 0x4000 || v73 > (v36 + 63) >> 6;
                              v77 = v72 << 7;
                              v78 = !v76;
                              if (!v76)
                              {
                                v74 = v77;
                              }

                              v71 = 64;
                              if (v78)
                              {
                                v71 = 128;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }

                v45 = v70 - 4;
                v80 = v74 > 0x100000 && v71 > 1;
                v48 = v71 >> v80;
                LODWORD(v47) = 1;
                if (v71 >> v80 <= 0x3FF)
                {
                  v81 = v74 >> v80;
                  if (v81 < 0x100001 && v37 >= 2)
                  {
                    v47 = 1;
                    v82 = v71 >> v80;
                    do
                    {
                      v47 *= 2;
                      if (v82 > 0x1FF)
                      {
                        break;
                      }

                      if (v81 >= 0x80001)
                      {
                        break;
                      }

                      v81 *= 2;
                      v82 *= 2;
                    }

                    while ((v37 - 1 + v47) / v47 > 1);
                  }
                }

                v43 = 0;
                v65 = 0;
                v66 = 0;
                LOBYTE(v40) = v42;
              }
            }

            if (v47)
            {
              v83 = 64 - __clz(v37 - 1);
              if (v37 <= 1)
              {
                LOBYTE(v83) = 0;
              }

              v84 = 1 << v83;
              if (1 << v83 >= v47)
              {
                v85 = v47;
              }

              else
              {
                v85 = 1 << v83;
              }

              LODWORD(v48) = v47 / v85 * v48;
              v38 = v36;
              v86 = v84 / v85;
            }

            else
            {
              v86 = 0;
            }

            result = v65;
            *a5 = v51;
            *(a5 + 8) = v49;
            *(a5 + 16) = v44;
            *(a5 + 24) = v45;
            *(a5 + 32) = v66;
            *(a5 + 40) = v65;
            *(a5 + 48) = vdupq_n_s64(1uLL);
            *(a5 + 64) = v86;
            *(a5 + 72) = ((v38 + v48 * (1 << v44) - 1) / (v48 * (1 << v44)));
            *(a5 + 80) = 0;
            *(a5 + 81) = v43;
            *(a5 + 82) = v40;
LABEL_390:
            *(a5 + 83) = 0;
            *(a5 + 89) = 0;
            return result;
          }

LABEL_313:
          v63 = 64 - __clz(v32 - 1);
          goto LABEL_314;
        }

        v43 = 0;
        if (v37 == 1)
        {
          LODWORD(v47) = 1;
        }

        else
        {
          LODWORD(v47) = 16;
        }

        if (v37 == 1)
        {
          LODWORD(v48) = 32;
        }

        else
        {
          LODWORD(v48) = 2;
        }

        v44 = 5;
        LOBYTE(v40) = 1;
        v50 = 3;
        v46 = 4;
LABEL_284:
        v49 = 6;
        v45 = 1;
        v51 = 6;
        goto LABEL_242;
      }

      if (v32 <= 0x80)
      {
        if (!v42)
        {
          v46 = 4;
          v50 = 3;
          v44 = 6;
          if (v38 >= 0x801)
          {
            v43 = 0;
            v45 = v38 <= 0x1000;
            if (v38 > 0x1000)
            {
              LODWORD(v48) = 4;
            }

            else
            {
              LODWORD(v48) = 8;
            }

            LODWORD(v47) = 8 * (v38 > 0x1000);
            if (v38 > 0x1000)
            {
              v44 = 4;
            }

            else
            {
              v44 = 6;
            }

            if (v38 > 0x1000)
            {
              v46 = 3;
            }

            else
            {
              v46 = 4;
            }

            LOBYTE(v40) = 1;
            v51 = 5;
            v49 = 5;
            goto LABEL_313;
          }

          v43 = 0;
          v45 = 1;
          v51 = 5;
          v49 = 5;
          LODWORD(v47) = 4;
          goto LABEL_161;
        }

        if (v38 < 0x801)
        {
          v45 = 0;
          LODWORD(v47) = 0;
          v43 = 0;
          LOBYTE(v40) = 1;
          LODWORD(v48) = 8;
          v50 = 3;
          v44 = 4;
          goto LABEL_424;
        }

        if (v38 <= 0x1000)
        {
          v45 = 0;
          v43 = 0;
          LODWORD(v48) = 1;
          LODWORD(v47) = 8;
LABEL_502:
          v50 = 3;
          v44 = 4;
          v49 = 6;
          v51 = 5;
LABEL_503:
          v46 = 4;
          goto LABEL_312;
        }

        if (v38 > 0x4000)
        {
          if (v38 > 0x8000)
          {
            LODWORD(v48) = 32;
            v46 = 4;
            v50 = 3;
            if (v38 <= 0x10000)
            {
              v45 = 0;
              v88 = !v40;
              v43 = v40;
              LOBYTE(v40) = !v40;
              if (v88)
              {
                LODWORD(v47) = 4;
              }

              else
              {
                LODWORD(v47) = 32;
              }

              if (v88)
              {
                LODWORD(v48) = 8;
              }

              else
              {
                LODWORD(v48) = 1;
              }

              v44 = 4;
              if (v88)
              {
                v46 = 4;
              }

              else
              {
                v46 = 3;
              }

              if (v88)
              {
                v50 = 3;
              }

              else
              {
                v50 = 4;
              }

              v51 = 6;
              v49 = 6;
              goto LABEL_313;
            }

            LODWORD(v47) = 0;
            v43 = 0;
            v45 = 1;
            v44 = 5;
            v51 = 6;
            v49 = 6;
            goto LABEL_312;
          }

          v45 = 0;
          v43 = !v40;
          v87 = !v40;
          if (v40)
          {
            LODWORD(v48) = 16;
          }

          else
          {
            LODWORD(v48) = 1;
          }

          if (v40)
          {
            LODWORD(v47) = 2;
          }

          else
          {
            LODWORD(v47) = 32;
          }
        }

        else
        {
          v45 = 0;
          LODWORD(v47) = 0;
          v43 = !v40;
          v87 = !v40;
          if (v40)
          {
            LODWORD(v48) = 16;
          }

          else
          {
            LODWORD(v48) = 32;
          }
        }

        if (v87)
        {
          v46 = 3;
        }

        else
        {
          v46 = 4;
        }

        if (v87)
        {
          v50 = 4;
        }

        else
        {
          v50 = 3;
        }

        goto LABEL_685;
      }

      if (v32 <= 0x100)
      {
        if (v38 < 0x801)
        {
          LOBYTE(v40) = 0;
          v45 = 1;
          v46 = 3;
          v50 = 4;
          v44 = 6;
          v51 = 5;
          v49 = 5;
          LODWORD(v47) = 4;
LABEL_453:
          LODWORD(v48) = 1;
          v43 = 1;
          goto LABEL_313;
        }

        v43 = 1;
        v51 = 5;
        if (v38 > 0x1000)
        {
          LODWORD(v47) = v38 <= 0x10000;
          if (v38 <= 0x10000)
          {
            v45 = 1;
          }

          else
          {
            v45 = 2;
          }

          if (v38 <= 0x10000)
          {
            v44 = 5;
          }

          else
          {
            v44 = 6;
          }

          if (v38 <= 0x10000)
          {
            v51 = 6;
          }

          LOBYTE(v40) = 1;
          LODWORD(v48) = 16;
          v46 = 4;
          v50 = 3;
          v49 = v51;
          v43 = 0;
          goto LABEL_313;
        }

        v45 = 0;
        LOBYTE(v40) = 0;
        v50 = 3;
        v44 = 4;
        v49 = 5;
        v46 = 3;
LABEL_560:
        LODWORD(v47) = 4;
        LODWORD(v48) = 4;
        goto LABEL_313;
      }

      if (v32 <= 0x200)
      {
        if (!v42)
        {
          v46 = 3;
          v44 = 4;
          if (v38 > 0x8000)
          {
            v45 = 0;
            LOBYTE(v40) = v38 < 0x40001;
            v43 = v38 >= 0x40001;
            if (v38 >= 0x40001)
            {
              LODWORD(v48) = 1;
            }

            else
            {
              LODWORD(v48) = 8;
            }

            if (v38 >= 0x40001)
            {
              LODWORD(v47) = 32;
            }

            else
            {
              LODWORD(v47) = 4;
            }

            if (v38 < 0x40001)
            {
              v50 = 3;
            }

            else
            {
              v50 = 4;
            }

            if (v38 >= 0x40001)
            {
              v46 = 3;
            }

            else
            {
              v46 = 4;
            }

            if (v38 < 0x40001)
            {
              v49 = 5;
            }

            else
            {
              v49 = 6;
            }

            v51 = 6;
            goto LABEL_313;
          }

          v45 = 0;
          LOBYTE(v40) = 0;
          v43 = 1;
          v49 = 6;
          v51 = 5;
          v50 = 4;
          goto LABEL_560;
        }

        v45 = 0;
        v43 = 0;
        LOBYTE(v40) = 1;
        LODWORD(v47) = 2;
LABEL_493:
        v50 = 3;
        v44 = 4;
        v51 = 6;
        v49 = 6;
        v46 = 4;
        LODWORD(v48) = 4;
        goto LABEL_313;
      }

      v45 = 0;
      LODWORD(v47) = 0;
      LOBYTE(v40) = 0;
      v43 = 1;
      LODWORD(v48) = 16;
LABEL_538:
      v46 = 3;
      v44 = 4;
      v51 = 6;
      v49 = 6;
      v50 = 4;
      goto LABEL_313;
    }

    if (v33 <= 0xA0)
    {
      LODWORD(v47) = 0;
      v43 = v32 > 0xA0;
      LOBYTE(v40) = v32 < 0xA1;
      if (v32 >= 0xA1)
      {
        LODWORD(v48) = 8;
      }

      else
      {
        LODWORD(v48) = 2;
      }

      if (v32 >= 0xA1)
      {
        v46 = 3;
      }

      else
      {
        v46 = 4;
      }

      if (v32 < 0xA1)
      {
        v50 = 3;
      }

      else
      {
        v50 = 4;
      }

      if (v32 >= 0xA1)
      {
        v45 = 1;
      }

      else
      {
        v45 = 2;
      }

      v49 = 5;
      if (v32 >= 0xA1)
      {
        v44 = 5;
      }

      else
      {
        v44 = 6;
      }

      if (v32 < 0xA1)
      {
        v51 = 5;
      }

      else
      {
        v51 = 6;
      }

      goto LABEL_242;
    }

    if (v33 <= 0xC0)
    {
      if (v32 < 0x41)
      {
        LOBYTE(v40) = 0;
        LODWORD(v47) = 0;
        v44 = 4;
        v43 = 1;
        v46 = 3;
        LODWORD(v48) = 32;
        v49 = 5;
        v50 = 3;
        goto LABEL_167;
      }

      if (v32 < 0x51)
      {
        v43 = 0;
        v45 = 1;
        LODWORD(v47) = 32;
        v46 = 4;
        v50 = 3;
        goto LABEL_472;
      }

      if (v32 < 0x81)
      {
        v45 = 0;
        LODWORD(v47) = 0;
        v43 = 0;
        LOBYTE(v40) = 1;
        LODWORD(v48) = 16;
LABEL_534:
        v50 = 3;
        v44 = 4;
LABEL_535:
        v51 = 6;
        v49 = 6;
        v46 = 4;
        goto LABEL_313;
      }

      if (v32 < 0xA1)
      {
        LODWORD(v47) = 0;
        v43 = 0;
        v45 = 1;
        LODWORD(v48) = 8;
        goto LABEL_310;
      }

      if (v32 <= 0xC0)
      {
        v45 = 0;
        v43 = 0;
        if (v38 < 0x801)
        {
          LODWORD(v48) = 1;
        }

        else
        {
          LODWORD(v48) = 16;
        }

        LODWORD(v47) = 8 * (v38 < 0x801);
        LOBYTE(v40) = 1;
        goto LABEL_534;
      }

      if (v32 < 0x401)
      {
        LODWORD(v47) = 0;
        v43 = 0;
        v45 = 1;
        LODWORD(v48) = 32;
        v46 = 4;
        v50 = 3;
        v49 = 5;
        v51 = 6;
        v44 = 5;
        goto LABEL_312;
      }

      v44 = 4;
      if (v32 > 0x500)
      {
        v45 = 0;
        LODWORD(v47) = 0;
        v43 = 0;
        LODWORD(v48) = 1;
        v50 = 3;
        v51 = 5;
        v49 = 5;
        goto LABEL_503;
      }

      v45 = 0;
      LODWORD(v47) = 0;
      LOBYTE(v40) = 0;
      if (v38 >= 0x801)
      {
        LODWORD(v48) = 16;
      }

      else
      {
        LODWORD(v48) = 4;
      }

      v43 = 1;
      v46 = 3;
LABEL_799:
      v49 = 6;
      v51 = 5;
      v50 = 4;
      goto LABEL_313;
    }

    if (v33 <= 0x100)
    {
      if (v32 <= 0x40)
      {
        v50 = 4;
        v46 = 3;
        if (v38 > 0x10000)
        {
          LOBYTE(v40) = 0;
          v45 = 0;
          if (v38 >= 0x20001)
          {
            LODWORD(v48) = 2;
          }

          else
          {
            LODWORD(v48) = 4;
          }

          if (v38 >= 0x20001)
          {
            LODWORD(v47) = 16;
          }

          else
          {
            LODWORD(v47) = 8;
          }

          if (v38 < 0x20001)
          {
            v50 = 3;
          }

          else
          {
            v50 = 4;
          }

          v51 = 5;
          if (v38 < 0x20001)
          {
            v49 = 5;
          }

          else
          {
            v49 = 6;
          }

          v44 = 4;
          v43 = 1;
        }

        else
        {
          LOBYTE(v40) = 0;
          LODWORD(v47) = 0;
          v45 = 0;
          LODWORD(v48) = 32;
          v43 = 1;
          v49 = 5;
          v44 = 4;
          v51 = 5;
        }

        goto LABEL_242;
      }

      if (v32 <= 0x80)
      {
        if (v42)
        {
          v43 = 0;
          v45 = v38 >> 15 != 0;
          if (v38 >> 15)
          {
            LODWORD(v48) = 16;
          }

          else
          {
            LODWORD(v48) = 8;
          }

          LODWORD(v47) = 2 * (v38 >> 15 == 0);
          v46 = 4;
          if (v38 >> 15)
          {
            v44 = 5;
          }

          else
          {
            v44 = 4;
          }

          LOBYTE(v40) = 1;
          v50 = 3;
          goto LABEL_686;
        }

        if (v38 > 0x800)
        {
          v45 = 0;
          v43 = 0;
          if (v40)
          {
            LODWORD(v48) = 16;
          }

          else
          {
            LODWORD(v48) = 1;
          }

          if (v40)
          {
            LODWORD(v47) = 0;
          }

          else
          {
            LODWORD(v47) = 8;
          }

          if (v40)
          {
            v50 = 3;
          }

          else
          {
            v50 = 4;
          }

          v46 = 4;
          if (v40)
          {
            v44 = 4;
          }

          else
          {
            v44 = 5;
          }

          v51 = 5;
          if (v40)
          {
            v49 = 5;
          }

          else
          {
            v49 = 6;
          }

          goto LABEL_312;
        }

        v50 = 4;
        if (v40)
        {
          LODWORD(v47) = 4;
        }

        else
        {
          LODWORD(v47) = 8;
        }

        if (v40)
        {
          v46 = 3;
        }

        else
        {
          v46 = 4;
        }

        v44 = 5;
        if (v40)
        {
          v51 = 5;
        }

        else
        {
          v51 = 6;
        }

        LODWORD(v48) = 1;
        v49 = v51;
        v45 = v40;
LABEL_627:
        v43 = 1;
        LOBYTE(v40) = 0;
        goto LABEL_313;
      }

      if (v32 <= 0x100)
      {
        if (v42)
        {
          if (v38 > 0x1000)
          {
            if (v38 > 0x2000)
            {
              v43 = 0;
              if (v40)
              {
                LODWORD(v48) = 2;
              }

              else
              {
                LODWORD(v48) = 16;
              }

              if (v40)
              {
                v50 = 4;
              }

              else
              {
                v50 = 3;
              }

              v46 = 4;
              v44 = 5;
              v51 = 6;
              v49 = 6;
              v45 = v40;
              LODWORD(v47) = v40;
              goto LABEL_312;
            }

            v45 = 0;
            LODWORD(v47) = 0;
            v43 = !v40;
            if (v40)
            {
              v46 = 4;
            }

            else
            {
              v46 = 3;
            }

            if (v40)
            {
              v50 = 3;
            }

            else
            {
              v50 = 4;
            }

            LODWORD(v48) = 8;
LABEL_685:
            v44 = 4;
LABEL_686:
            v51 = 6;
            v49 = 6;
            goto LABEL_313;
          }

          v45 = 0;
          LODWORD(v47) = 0;
          LOBYTE(v40) = 0;
          v43 = 1;
          LODWORD(v48) = 8;
        }

        else
        {
          v45 = 0;
          LODWORD(v47) = 0;
          LOBYTE(v40) = 0;
          v43 = 1;
          LODWORD(v48) = 32;
        }

        goto LABEL_538;
      }

      if (v32 > 0x200)
      {
        if (v32 < 0x401)
        {
          LODWORD(v47) = 0;
          LOBYTE(v40) = 0;
          v45 = 1;
          v46 = 3;
          v44 = 4;
          v49 = 6;
          v51 = 5;
          v50 = 4;
          goto LABEL_453;
        }

        if (v32 >= 0x5A1)
        {
          v45 = 0;
          LODWORD(v47) = 0;
          LOBYTE(v40) = 0;
          if (v32 < 0x619)
          {
            LODWORD(v48) = 1;
          }

          else
          {
            LODWORD(v48) = 16;
          }

          v43 = 1;
          goto LABEL_538;
        }

        v45 = 0;
        LOBYTE(v40) = 0;
        v43 = 1;
        LODWORD(v48) = 2;
        LODWORD(v47) = 8;
        v46 = 3;
        v44 = 4;
        goto LABEL_799;
      }

      if (v38 > 0x4000)
      {
        v45 = v38 <= 0x10000;
        v43 = v38 > 0x10000;
        v50 = 4;
        if (v38 <= 0x10000)
        {
          LODWORD(v47) = 1;
        }

        else
        {
          LODWORD(v47) = 4;
        }

        if (v38 > 0x10000)
        {
          v46 = 3;
        }

        else
        {
          v46 = 4;
        }

        if (v38 > 0x10000)
        {
          v44 = 4;
        }

        else
        {
          v44 = 5;
        }

        if (v38 > 0x10000)
        {
          v51 = 5;
        }

        else
        {
          v51 = 6;
        }

        v49 = 6;
        LODWORD(v48) = v47;
        LOBYTE(v40) = v38 <= 0x10000;
        goto LABEL_313;
      }

      v45 = 0;
      v43 = 0;
      LODWORD(v47) = v37 == 1;
      v44 = 4;
      if (v37 == 1)
      {
        LODWORD(v48) = 4;
      }

      else
      {
        LODWORD(v48) = 32;
      }

LABEL_705:
      LOBYTE(v40) = 1;
      v50 = 3;
      goto LABEL_535;
    }

    if (v33 <= 0x140)
    {
      if (v32 < 0x81)
      {
        v43 = 0;
        v45 = 0;
        v50 = 3;
        v46 = 4;
        LOBYTE(v40) = 1;
        LODWORD(v48) = 32;
        v51 = 6;
        v49 = 5;
        LODWORD(v47) = 1;
        v44 = 4;
        goto LABEL_242;
      }

      v50 = 3;
      v44 = 4;
      if (v32 < 0xC1)
      {
        v45 = 0;
        v43 = 0;
        LOBYTE(v40) = 1;
        LODWORD(v48) = 2;
        v51 = 6;
        v49 = 6;
        v46 = 4;
        LODWORD(v47) = 4;
        goto LABEL_313;
      }

      v45 = 0;
      LOBYTE(v40) = 0;
      if (v32 >= 0x501)
      {
        LODWORD(v47) = 1;
      }

      else
      {
        LODWORD(v47) = 4;
      }

      if (v32 < 0x501)
      {
        v46 = 3;
      }

      else
      {
        v46 = 4;
      }

      if (v32 < 0x501)
      {
        v49 = 5;
      }

      else
      {
        v49 = 6;
      }

      LODWORD(v48) = 1;
      v51 = 6;
LABEL_671:
      v50 = 4;
      v43 = 1;
      goto LABEL_313;
    }

    if (v33 <= 0x180)
    {
      if (v32 < 0x81)
      {
        LOBYTE(v40) = 0;
        v49 = 6;
        v50 = 4;
        v46 = 3;
        LODWORD(v47) = 32;
        v43 = 1;
        v51 = 5;
LABEL_216:
        LODWORD(v48) = 1;
LABEL_217:
        v45 = 1;
        v44 = v49;
        goto LABEL_242;
      }

      if (v32 < 0x121)
      {
        v45 = 0;
        LODWORD(v47) = 0;
        v43 = 0;
        LOBYTE(v40) = 1;
        goto LABEL_493;
      }

      if (v32 > 0x180)
      {
        v50 = 3;
        if (v32 >= 0x1C1)
        {
          v45 = 0;
          LODWORD(v47) = 0;
          v43 = v32 > 0x500;
          LOBYTE(v40) = v32 < 0x501;
          if (v32 >= 0x501)
          {
            v46 = 3;
          }

          else
          {
            v46 = 4;
          }

          if (v32 < 0x501)
          {
            v50 = 3;
          }

          else
          {
            v50 = 4;
          }

          if (v32 < 0x501)
          {
            v51 = 5;
          }

          else
          {
            v51 = 6;
          }

          LODWORD(v48) = 1;
          v44 = 4;
          v49 = v51;
          goto LABEL_313;
        }

        v45 = 0;
        v43 = 0;
        LODWORD(v48) = 1;
        v44 = 4;
        v51 = 6;
        v49 = 6;
        v46 = 4;
        LODWORD(v47) = 4;
        goto LABEL_312;
      }

      v45 = 0;
      v43 = 0;
      v44 = 4;
      if (v38 >= 0x801)
      {
        LODWORD(v47) = 8;
      }

      else
      {
        LODWORD(v47) = 4;
      }

      if (v38 < 0x801)
      {
        v51 = 5;
      }

      else
      {
        v51 = 6;
      }

      LODWORD(v48) = 1;
      v50 = 3;
LABEL_741:
      v49 = 6;
      goto LABEL_503;
    }

    if (v33 <= 0x1C0)
    {
      v44 = 4;
      if (v32 <= 0x500)
      {
        LOBYTE(v40) = 0;
        v45 = 0;
        if (v38 >= 0x801)
        {
          LODWORD(v48) = 1;
        }

        else
        {
          LODWORD(v48) = 4;
        }

        LODWORD(v47) = 8 * (v38 > 0x800);
        if (v38 < 0x801)
        {
          v51 = 5;
        }

        else
        {
          v51 = 6;
        }

        v46 = 3;
        v43 = 1;
        v49 = 6;
        v50 = 4;
        goto LABEL_242;
      }

      v45 = 0;
      LOBYTE(v40) = 0;
      LODWORD(v47) = 1;
      v46 = 3;
      v49 = 6;
      v51 = 5;
      v50 = 4;
LABEL_457:
      LODWORD(v48) = v47;
      v43 = 1;
      goto LABEL_313;
    }

    if (v33 <= 0x200)
    {
      if (v32 <= 0x80)
      {
        v50 = 4;
        LODWORD(v48) = 16;
        if (v38 <= 0x4000)
        {
          LOBYTE(v40) = 0;
          LODWORD(v47) = 0;
          v44 = 5;
          v43 = 1;
          v46 = 3;
          goto LABEL_284;
        }

        LOBYTE(v40) = 0;
        v45 = 0;
        if (v38 > 0x8000)
        {
          LODWORD(v48) = 8;
        }

        else
        {
          LODWORD(v48) = 16;
        }

        if (v38 > 0x8000)
        {
          LODWORD(v47) = 4;
        }

        else
        {
          LODWORD(v47) = 2;
        }

LABEL_809:
        v46 = 3;
        v43 = 1;
        v49 = 6;
        v44 = 4;
        v51 = 6;
        goto LABEL_242;
      }

      if (v32 <= 0x100)
      {
        if (v38 < 0x401)
        {
          v45 = 0;
          LODWORD(v47) = 0;
          v43 = 0;
          LOBYTE(v40) = 1;
          LODWORD(v48) = 2;
          goto LABEL_534;
        }

        if (v38 > 0x8000)
        {
          v43 = v38 <= 0x10000;
          v45 = v38 > 0x10000;
          v44 = 4;
          if (v38 > 0x10000)
          {
            LODWORD(v48) = 1;
          }

          else
          {
            LODWORD(v48) = 4;
          }

          if (v38 > 0x10000)
          {
            LODWORD(v47) = 32;
          }

          else
          {
            LODWORD(v47) = 8;
          }

          v46 = 3;
          if (v38 > 0x10000)
          {
            v50 = 3;
          }

          else
          {
            v50 = 4;
          }

          if (v38 > 0x10000)
          {
            v49 = 5;
          }

          else
          {
            v49 = 6;
          }

          v51 = 6;
          LOBYTE(v40) = v38 > 0x10000;
          goto LABEL_313;
        }

        v45 = 0;
        v43 = 0;
        if (v37 == 1)
        {
          LODWORD(v47) = 1;
        }

        else
        {
          LODWORD(v47) = 32;
        }

        v44 = 4;
        if (v37 == 1)
        {
          LODWORD(v48) = 4;
        }

        else
        {
          LODWORD(v48) = 1;
        }

        goto LABEL_705;
      }

      if (v32 <= 0x200)
      {
        LODWORD(v47) = 1;
        v50 = 3;
        v44 = 4;
        if (v38 <= 0x800)
        {
          v45 = !v40;
          if (v40)
          {
            LODWORD(v48) = 2;
          }

          else
          {
            LODWORD(v48) = 1;
          }

          if (v40)
          {
            v46 = 4;
          }

          else
          {
            v46 = 3;
          }

          if (v40)
          {
            v50 = 3;
          }

          else
          {
            v50 = 4;
          }

          if (v40)
          {
            v44 = 4;
          }

          else
          {
            v44 = 5;
          }

          v51 = 6;
          v49 = 6;
          v43 = !v40;
          LODWORD(v47) = 0;
          goto LABEL_313;
        }

        v45 = 0;
        v43 = 0;
        LODWORD(v48) = 2;
        v51 = 6;
        goto LABEL_741;
      }

      v46 = 3;
      v44 = 4;
      if (v32 <= 0x400)
      {
        v45 = 0;
        LODWORD(v47) = 0;
        v43 = v38 <= 0x1000;
        LOBYTE(v40) = v38 > 0x1000;
        if (v38 > 0x1000)
        {
          LODWORD(v48) = 1;
        }

        else
        {
          LODWORD(v48) = 8;
        }

        if (v38 > 0x1000)
        {
          v50 = 3;
        }

        else
        {
          v50 = 4;
        }

        if (v38 <= 0x1000)
        {
          v46 = 3;
        }

        else
        {
          v46 = 4;
        }

        if (v38 <= 0x1000)
        {
          v44 = 4;
        }

        else
        {
          v44 = 5;
        }

        v51 = 6;
        v49 = 6;
        goto LABEL_313;
      }

      v45 = 0;
      LODWORD(v47) = 0;
      LOBYTE(v40) = 0;
      v43 = 1;
LABEL_904:
      v51 = 6;
      v49 = 6;
      v50 = 4;
      LODWORD(v48) = 4;
      goto LABEL_313;
    }

    if (v33 > 0x300)
    {
      if (v33 <= 0x3F0)
      {
        LOBYTE(v40) = 1;
        v50 = 3;
        if (v32 < 0x101)
        {
          v43 = 0;
          LODWORD(v47) = 0;
          v49 = 5;
          v46 = 4;
          LODWORD(v48) = 32;
          v51 = 6;
          goto LABEL_217;
        }

        v45 = 0;
        LODWORD(v47) = 0;
        if (v32 < 0x801)
        {
          LODWORD(v48) = 1;
        }

        else
        {
          LODWORD(v48) = 2;
        }

        if (v32 < 0x801)
        {
          v50 = 3;
        }

        else
        {
          v50 = 4;
        }

        if (v32 < 0x801)
        {
          v51 = 5;
        }

        else
        {
          v51 = 6;
        }

        v46 = 3;
        v44 = 4;
        v49 = 6;
        goto LABEL_627;
      }

      if (v33 > 0x400)
      {
        if (v32 < 0x101)
        {
          v43 = 0;
          v45 = 0;
          v50 = 3;
          v46 = 4;
          LODWORD(v47) = 16;
          LOBYTE(v40) = 1;
          v51 = 6;
          v49 = 5;
          LODWORD(v48) = 1;
          v44 = 4;
          goto LABEL_242;
        }

        if (v32 >= 0x201)
        {
          v44 = 4;
          if (v38 >= 0x201)
          {
            LODWORD(v47) = 0;
            LOBYTE(v40) = 0;
            v45 = v38 < 0x801;
            if (v38 >= 0x801)
            {
              v44 = 4;
            }

            else
            {
              v44 = 5;
            }

            LODWORD(v48) = 1;
            v46 = 3;
            v50 = 4;
            v51 = 6;
            v49 = 6;
            v43 = 1;
            goto LABEL_313;
          }

          v45 = 0;
          LODWORD(v47) = 0;
          LOBYTE(v40) = 0;
          LODWORD(v48) = 1;
          v46 = 3;
          v49 = 6;
          v51 = 5;
          goto LABEL_671;
        }

        v45 = 0;
        LODWORD(v47) = 0;
        LOBYTE(v40) = 0;
        v43 = 1;
        v46 = 3;
        v44 = 4;
        goto LABEL_904;
      }

      LOBYTE(v40) = 0;
      LODWORD(v47) = 0;
      v45 = 0;
      if (v38 < 0x1001 || v32 > 0x100)
      {
        LODWORD(v48) = 8;
      }

      else
      {
        LODWORD(v48) = 16;
      }
    }

    else
    {
      LOBYTE(v40) = 0;
      LODWORD(v47) = 0;
      v45 = 0;
      if (v32 >= 0x401)
      {
        LODWORD(v48) = 1;
      }

      else
      {
        LODWORD(v48) = 8;
      }
    }

    v50 = 4;
    goto LABEL_809;
  }

  v10 = a1[18];
  if (v10)
  {
    v11 = 0;
    v12 = *a3;
    v13 = *(a3 + 8);
    v14 = *(a3 + 16);
    v15 = *(a3 + 24);
    v16 = *(a3 + 32);
    v17 = *(a3 + 40);
    v18 = *(a3 + 56);
    v19 = *(a3 + 64);
    v20 = a1[17];
    v21 = (v20 + 32);
    v22 = "Found optimal kernel with batch size\n";
    while (*(v21 - 4) != v12 || *(v21 - 3) != v13 || *(v21 - 2) != v14 || *(v21 - 1) != v15 || *v21 != v16 || v21[1] != v17 || v21[2] != v18 || v21[3] != v19 || v21[4] != *(a3 + 88))
    {
      ++v11;
      v21 += 17;
      if (v10 == v11)
      {
        v11 = 0;
        v23 = (v20 + 32);
        v22 = "Found optimal kernel without batch size\n";
        while (*(v23 - 4) != v12 || *(v23 - 3) != v13 || *(v23 - 2) != v14 || *(v23 - 1) != v15 || *v23 != v16 || v23[1] != v17 || v23[2] != v18 || v23[3] != v19)
        {
          ++v11;
          v23 += 17;
          if (v10 == v11)
          {
            goto LABEL_32;
          }
        }

        break;
      }
    }

    result = MPSKernel_LogInfo(a2, 3uLL, v22);
    v24 = a1[17] + 136 * v11;
    v25 = *(v24 + 128);
    if (v25 >= *(a3 + 88))
    {
      v25 = *(a3 + 88);
    }

    v26 = *(v24 + 120);
    v27 = *(v24 + 88);
    v28 = *(v24 + 104);
    *a5 = *(v24 + 72);
    *(a5 + 16) = v27;
    *(a5 + 32) = v28;
    *(a5 + 48) = vdupq_n_s64(1uLL);
    *(a5 + 64) = v25;
    *(a5 + 72) = 0;
    *(a5 + 80) = 0;
    *(a5 + 81) = v26;
    goto LABEL_390;
  }

LABEL_32:
  result = MPSKernel_LogInfo(a2, 3uLL, "Did not find any match in table\n");
  *a5 = vdupq_n_s64(5uLL);
  *(a5 + 32) = 0;
  *(a5 + 16) = 3;
  *(a5 + 24) = 0;
  *(a5 + 40) = 0;
  *(a5 + 48) = vdupq_n_s64(1uLL);
  *(a5 + 64) = 1;
  *(a5 + 72) = 0;
  *(a5 + 80) = 0;
  *(a5 + 88) = 0;
  *(a5 + 96) = 0;
  v29 = *(a3 + 32);
  if (v29 >= 0x200)
  {
    *a5 = 6;
    *(a5 + 16) = 3;
    v30 = *(a3 + 40);
    if (v30 >= 0x800)
    {
      goto LABEL_34;
    }

    if (v30 > 0x3FF)
    {
      v53 = 5;
      v52 = 6;
      v31 = 4;
      goto LABEL_127;
    }

    if (v30 >= 0x200)
    {
      goto LABEL_34;
    }

    if (v30 > 0xFF)
    {
      v53 = 5;
      v52 = 6;
      v31 = 8;
      goto LABEL_127;
    }

    if (v30 >= 0xC0)
    {
LABEL_34:
      v31 = *(a3 + 88);
LABEL_71:
      v53 = 5;
LABEL_72:
      v52 = 6;
      goto LABEL_127;
    }

    if (v30 < 0x80)
    {
      v53 = 5;
      goto LABEL_173;
    }

    goto LABEL_69;
  }

  if (v29 >= 0x120)
  {
    v30 = *(a3 + 40);
    if (*(a3 + 96) > 1uLL || *(a3 + 104) >= 2uLL)
    {
      if (v30 >= 0x80)
      {
        *a5 = xmmword_239B1F4F0;
        v52 = 4;
        *(a5 + 16) = 4;
        *(a5 + 81) = 1;
        v31 = 8;
        goto LABEL_85;
      }
    }

    else
    {
      if (v30 >= 0x100)
      {
        *a5 = xmmword_239B1F4F0;
        v52 = 4;
        *(a5 + 16) = 4;
        *(a5 + 81) = 1;
        v31 = *(a3 + 88);
LABEL_85:
        *(a5 + 64) = v31;
        v53 = 7;
        goto LABEL_127;
      }

      if (v30 >= 0x80)
      {
        *a5 = xmmword_239B1F470;
        *(a5 + 82) = 1;
LABEL_120:
        v31 = *(a3 + 88);
LABEL_121:
        *(a5 + 64) = v31;
LABEL_122:
        v53 = 6;
        v52 = 4;
        goto LABEL_127;
      }
    }

    v52 = 5;
    *(a5 + 8) = 5;
    *(a5 + 82) = 1;
    goto LABEL_124;
  }

  if (v29 >= 0x100)
  {
    *a5 = 6;
    v30 = *(a3 + 40);
    if (v30 < 0x200)
    {
      if (v30 >= 0x100)
      {
        if (*(a3 + 96) > 1uLL || *(a3 + 104) >= 2uLL)
        {
          v31 = 8;
        }

        else
        {
          *(a5 + 16) = xmmword_239B1F4B0;
          *(a5 + 32) = 0;
          *(a5 + 40) = 0;
          v31 = 8;
        }

        goto LABEL_70;
      }

      if (v30 < 0x80)
      {
        if (v30 < 0x40)
        {
          v53 = 4;
          *(a5 + 8) = vdupq_n_s64(4uLL);
          v31 = 8;
          *(a5 + 64) = 8;
          goto LABEL_72;
        }

        *a5 = xmmword_239B1F4A0;
        v31 = 4;
        *(a5 + 64) = 4;
        *(a5 + 82) = 1;
        v52 = 5;
        v53 = 4;
        goto LABEL_127;
      }
    }

LABEL_68:
    *(a5 + 16) = 3;
LABEL_69:
    v31 = 4;
LABEL_70:
    *(a5 + 64) = v31;
    goto LABEL_71;
  }

  v54 = *a3 * *(a3 + 8);
  if (v29 >= 0x80)
  {
    v30 = *(a3 + 40);
    if (*(a3 + 96) <= 1uLL && *(a3 + 104) < 2uLL)
    {
      if (v30 >= 0x200)
      {
        *a5 = 6;
        if (v54 >= 0x310)
        {
          v53 = 4;
          *(a5 + 8) = vdupq_n_s64(4uLL);
LABEL_173:
          v52 = 6;
          v31 = 1;
          goto LABEL_127;
        }

        *(a5 + 16) = 3;
        v31 = 8;
        goto LABEL_70;
      }

      if (v30 >= 0x100)
      {
        *a5 = xmmword_239B1F470;
        *(a5 + 16) = xmmword_239B1F4D0;
        goto LABEL_120;
      }

      if (v30 >= 0xC0)
      {
        *a5 = xmmword_239B1F470;
        v31 = 8;
        goto LABEL_121;
      }

      *a5 = 6;
      if (v30 >= 0x80)
      {
        goto LABEL_68;
      }

      *(a5 + 8) = xmmword_239B1F490;
      *(a5 + 24) = 1;
      v31 = 8;
LABEL_433:
      *(a5 + 64) = v31;
      v53 = 4;
      goto LABEL_72;
    }

    if (v30 >= 0x140)
    {
      v53 = 6;
      *(a5 + 8) = 6;
      v31 = *(a3 + 88);
      *(a5 + 64) = v31;
      v52 = 5;
      goto LABEL_127;
    }

    if (v30 >= 0x100)
    {
      if (v54 < 0x640)
      {
        if (v54 >= 0x310)
        {
          *a5 = xmmword_239B1F4F0;
          *(a5 + 81) = 1;
          v31 = 2;
          *(a5 + 64) = 2;
          v53 = 7;
          v52 = 4;
          goto LABEL_127;
        }

        *a5 = xmmword_239B1F4C0;
        *(a5 + 16) = xmmword_239B1F4E0;
        v31 = *(a3 + 88);
        goto LABEL_433;
      }

      *(a5 + 8) = xmmword_239B1F4C0;
      *(a5 + 32) = 1;
      *(a5 + 81) = 1;
      v31 = 2;
      *(a5 + 64) = 2;
LABEL_291:
      v53 = 6;
      v52 = 5;
      goto LABEL_127;
    }

    if (v30 >= 0xC0)
    {
      *a5 = xmmword_239B1F470;
      goto LABEL_120;
    }

    v52 = 6;
    *a5 = 6;
    *(a5 + 16) = 3;
LABEL_124:
    v31 = 4;
LABEL_125:
    *(a5 + 64) = v31;
LABEL_126:
    v53 = 5;
    goto LABEL_127;
  }

  if (v29 >= 0x50)
  {
    v30 = *(a3 + 40);
    if (v30 < 0x100)
    {
      if (v30 >= 0x80)
      {
        *a5 = xmmword_239B1F470;
        *(a5 + 16) = 5;
        v31 = 1;
        *(a5 + 81) = 1;
        goto LABEL_122;
      }

      v52 = 5;
      *(a5 + 8) = 5;
      goto LABEL_124;
    }

LABEL_117:
    *a5 = xmmword_239B1F470;
    v52 = 4;
    *(a5 + 16) = 4;
    *(a5 + 81) = 1;
    v31 = 2;
    *(a5 + 64) = 2;
    v53 = 6;
    goto LABEL_127;
  }

  if (v29 >= 0x40)
  {
    v30 = *(a3 + 40);
    if (v30 >= 0x100)
    {
      v31 = 4;
      *a5 = 4;
      *(a5 + 16) = 3;
      *(a5 + 81) = 1;
      *(a5 + 64) = 4;
      v53 = 5;
      v52 = 4;
      goto LABEL_127;
    }

    if (v30 >= 0x80)
    {
      if (v54 > 0x1000)
      {
        *(a5 + 8) = xmmword_239B1F4C0;
        v31 = 1;
        *(a5 + 32) = 1;
        *(a5 + 64) = 1;
        *(a5 + 81) = 1;
        goto LABEL_291;
      }

      if (v54 < 0x101)
      {
        v52 = 6;
        *a5 = 6;
        *(a5 + 16) = xmmword_239B1F4B0;
        v31 = 8;
        goto LABEL_125;
      }

      *a5 = xmmword_239B1F470;
      v53 = 6;
      *(a5 + 16) = 6;
      v31 = 8;
      *(a5 + 64) = 8;
      v52 = 4;
LABEL_127:
      if (v29 < (1 << v52))
      {
        v55 = v52 - 1;
        v56 = v53 + 1;
        if ((v52 - 1) >= 4 && v29 < (1 << v55))
        {
          v55 = v52 - 2;
          v56 = v53 + 2;
          if ((v52 - 2) >= 4 && v29 < (1 << v55))
          {
            v55 = v52 - 3;
            v56 = v53 + 3;
          }
        }

        *a5 = v55;
        *(a5 + 8) = v56;
        v53 = v56;
      }

      goto LABEL_134;
    }

    if (v30 < 0x41)
    {
      if (v30 >= 0x20)
      {
        *a5 = xmmword_239B1F470;
        v31 = 1;
        goto LABEL_121;
      }

      if (v30 < 9)
      {
        *(a5 + 8) = xmmword_239B1F480;
        v31 = 1;
        *(a5 + 40) = 1;
        *(a5 + 81) = 256;
        v53 = 3;
      }

      else
      {
        *(a5 + 8) = xmmword_239B1F490;
        v31 = 2;
        *(a5 + 64) = 2;
        v53 = 4;
      }

      v52 = 5;
      goto LABEL_127;
    }

    *(a5 + 8) = xmmword_239B1F4A0;
    *(a5 + 24) = 1;
LABEL_415:
    v31 = 4;
    *(a5 + 64) = 4;
    v52 = 5;
    goto LABEL_126;
  }

  if (v29 >= 0x20)
  {
    v30 = *(a3 + 40);
    if (v30 >= 0x40)
    {
      goto LABEL_117;
    }

    *(a5 + 16) = 3;
    goto LABEL_415;
  }

  if (v29 >= 0x10)
  {
    *(a5 + 81) = 1;
    v31 = 4;
    *a5 = vdupq_n_s64(4uLL);
    *(a5 + 16) = xmmword_239B1F460;
    *(a5 + 64) = 4;
    v30 = *(a3 + 40);
    v52 = 4;
    v53 = 4;
    goto LABEL_127;
  }

  *a5 = 3;
  v30 = *(a3 + 40);
  if (v30 < 0x40)
  {
    v53 = 5;
    *(a5 + 16) = 5;
    v31 = 1;
  }

  else
  {
    *(a5 + 16) = 4;
    v31 = 1;
    *(a5 + 32) = 1;
    *(a5 + 81) = 1;
    v53 = 5;
  }

LABEL_134:
  v57 = v53 - 4;
  if (v53 >= 4 && v30 < (1 << v53))
  {
    v58 = v53 - 1;
    if (v53 - 1 >= 4 && v30 < 1 << v58)
    {
      v58 = v53 - 2;
      if (v53 - 2 >= 4 && v30 < 1 << v58)
      {
        v58 = v53 - 3;
        if (v53 - 3 >= 4 && v30 < 1 << v58)
        {
          if (v57 < 4)
          {
            v58 = v53 - 4;
          }

          else
          {
            v58 = v53 - 4;
            if (v30 < 1 << v57)
            {
              v58 = v53 - 5;
              if (v53 - 5 >= 4 && v30 < 1 << v58)
              {
                v58 = v53 - 6;
                v59 = 1 << (v53 - 6);
                v60 = v53 - 7;
                if (v30 < v59 && v58 > 3)
                {
                  v58 = v60;
                }
              }
            }
          }
        }
      }
    }

    *(a5 + 8) = v58;
  }

  v62 = *(a3 + 88);
  if (v31 < v62)
  {
    v62 = v31;
  }

  *(a5 + 64) = v62;
  return result;
}

uint64_t MPSNDArrayConvolutionGradientWithWeightsFunctionConstructor(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v9 = a2[8];
  v5 = MPSCreateFunctionConstantValues();
  [v5 setConstantValue:&v9 + 4 type:33 atIndex:89];
  AddFunctionConstantList(v5, a3);
  v6 = *a2;
  v7 = _MPSNewSpecializedFunction();

  return v7;
}

uint64_t MPSNDArrayConvolutionDeviceBehaviorA14::EncodeNDArrayConvolutionGradientWithWeights(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (MPSNDArrayConvolutionDeviceBehavior::IsConvolutionGradientWithWeightsSupported(a1, a2, a5))
  {
    v251 = a4;
    v227 = [*(a5 + 16) count];
    v263 = *(a2 + 224);
    v283 = *(a2 + 228);
    v264 = *(a2 + 144);
    v292 = *(a2 + 152);
    v262 = *(a2 + 200);
    v261 = *(a2 + 208);
    v10 = *(a2 + 160);
    v287 = *(a2 + 168);
    v289 = *(a2 + 192);
    v277 = *(a2 + 232);
    v260 = *(a2 + 240);
    v279 = *(a2 + 176);
    v282 = a2;
    v278 = *(a2 + 184);
    v11 = [*(a5 + 232) inputTensorAtIndex:0];
    v258 = [*(a5 + 232) inputTensorAtIndex:1];
    v12 = [*(a5 + 232) inputTensorAtIndex:2];
    v274 = [*(a5 + 232) outputTensorAtIndex:0];
    if (*v11 != 4 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v271 = v12;
    if (*v12 != 4 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*v274 != 4 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v15 = *(v11 + 16);
    v17 = *v15;
    v16 = v15[1];
    if (v16 != v17)
    {
      if (((v16 - v17) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    v19 = *(v274 + 16);
    v21 = *v19;
    v20 = v19[1];
    if (v20 != v21)
    {
      if (((v20 - v21) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    v22 = v271[2];
    v24 = *v22;
    v23 = v22[1];
    v226 = a3;
    if (v23 != v24)
    {
      if (((v23 - v24) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    v13.i32[0] = GetAxisIndexForDataFormat(MPSNDArrayConvolution2DDataFormat)::axis[v263];
    v25 = vmovl_u8(v13).u64[0];
    v14.i32[0] = GetAxisIndexForWeightsFormat(MPSNDArrayConvolution2DWeightsFormat)::axis[v283];
    v26 = vmovl_u8(v14).u64[0];
    v27 = (8 * v25);
    v28 = *v27;
    v257 = *(8 * WORD2(v25));
    v276 = *(8 * HIWORD(v25));
    v284 = *v27;
    v265 = *(8 * WORD1(v25));
    v267 = *(8 * v26);
    v29 = *(8 * WORD1(v26));
    v285 = *(8 * WORD2(v26));
    v30 = *(8 * HIWORD(v26));
    if (v265 != v10 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v265 != v287 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v28 != v284 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v265 != v267 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v265 / v289 != v29 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v285 != v292 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v30 != v264 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v267 != v287 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v290 = v10 / v289;
    if (v29 != v10 / v289 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v11 + 8) != *(v271 + 2) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if ((*(v11 + 8) & 0x1000FFFF) == 0x10000008 && (*(*(v282 + *MEMORY[0x277CD7350]) + 1478) & 4) == 0 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v280 = v30;
    v31 = [*(a5 + 232) graph];
    v32 = *(v31 + 8);
    v33 = *v32;
    v34 = v32[1];
    if (*v32 == v34)
    {
      goto LABEL_546;
    }

    v35 = -1;
    do
    {
      v36 = *v33;
      if (v36 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v31) + 32))
      {
        v35 = *(*v33 + 76);
      }

      MPSKernelDAG::GetCoreOpInputAtIndex(v31);
      ++v33;
    }

    while (v33 != v34);
    if (v35 == -1)
    {
LABEL_546:
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v35 = 0;
    }

    v37 = [*(a5 + 16) objectAtIndexedSubscript:v35];
    v291 = *(a5 + 112);
    v203 = *(*(a5 + 8) + 80 * v35 + 64);
    v204 = *(a5 + 96);
    v38 = *(a5 + 208);
    v256 = a5;
    v202 = *(a5 + 192);
    v39 = MEMORY[0x277CD7410];
    v288 = v37;
    v40 = (v37 + *MEMORY[0x277CD7410]);
    if (v263 == 1)
    {
      v41 = v260;
      if (*v40 != v265 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (*&v288[*v39 + 4] != v276 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (*&v288[*v39 + 8] != v257 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (*&v288[*v39 + 12] != v28 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (*&v291[*v39] != v265 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (*&v291[*v39 + 4] != v276 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (*&v291[*v39 + 8] != v257 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (*&v291[*v39 + 12] != v284 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (*&v38[*v39] != v267 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (*&v38[*v39 + 4] != v29 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (*&v38[*v39 + 8] != v280 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (*&v38[*v39 + 12] != v285 && (MTLReportFailureTypeEnabled() & 1) != 0)
      {
LABEL_540:
        MTLReportFailure();
      }
    }

    else
    {
      v41 = v260;
      if (v40[2] != v265 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (*&v288[*v39] != v276 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (*&v288[*v39 + 4] != v257 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (*&v288[*v39 + 12] != v28 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (*&v291[*v39 + 8] != v265 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (*&v291[*v39] != v276 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (*&v291[*v39 + 4] != v257 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (*&v291[*v39 + 12] != v284 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (*&v38[*v39 + 12] != v267 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (*&v38[*v39 + 8] != v29 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (*&v38[*v39] != v280 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (*&v38[*v39 + 4] != v285 && MTLReportFailureTypeEnabled())
      {
        goto LABEL_540;
      }
    }

    v42 = *(v11 + 8);
    if (v42 > 285212703)
    {
      if (v42 <= 536870915)
      {
        if (v42 > 301989895)
        {
          if (v42 == 301989896)
          {
            v43 = 512;
            v44 = *(v258 + 8);
            if (v44 > 285212703)
            {
              goto LABEL_109;
            }

            goto LABEL_128;
          }

          if (v42 == 335544328)
          {
            v43 = 544;
            v44 = *(v258 + 8);
            if (v44 <= 285212703)
            {
              goto LABEL_128;
            }

            goto LABEL_109;
          }
        }

        else
        {
          if (v42 == 285212704)
          {
            v43 = 416;
            v44 = *(v258 + 8);
            if (v44 > 285212703)
            {
              goto LABEL_109;
            }

            goto LABEL_128;
          }

          if (v42 == 285212736)
          {
            v43 = 448;
            v44 = *(v258 + 8);
            if (v44 <= 285212703)
            {
              goto LABEL_128;
            }

            goto LABEL_109;
          }
        }
      }

      else if (v42 <= 536870927)
      {
        if (v42 == 536870916)
        {
          v43 = 0;
          v44 = *(v258 + 8);
          if (v44 > 285212703)
          {
            goto LABEL_109;
          }

          goto LABEL_128;
        }

        if (v42 == 536870920)
        {
          v43 = 32;
          v44 = *(v258 + 8);
          if (v44 <= 285212703)
          {
            goto LABEL_128;
          }

          goto LABEL_109;
        }
      }

      else
      {
        switch(v42)
        {
          case 536870928:
            v43 = 64;
            v44 = *(v258 + 8);
            if (v44 <= 285212703)
            {
              goto LABEL_128;
            }

            goto LABEL_109;
          case 536870944:
            v43 = 96;
            v44 = *(v258 + 8);
            if (v44 <= 285212703)
            {
              goto LABEL_128;
            }

            goto LABEL_109;
          case 536870976:
            v43 = 128;
            v44 = *(v258 + 8);
            if (v44 <= 285212703)
            {
              goto LABEL_128;
            }

            goto LABEL_109;
        }
      }
    }

    else if (v42 <= 31)
    {
      if (v42 > 7)
      {
        if (v42 == 8)
        {
          v43 = 192;
          v44 = *(v258 + 8);
          if (v44 <= 285212703)
          {
            goto LABEL_128;
          }

          goto LABEL_109;
        }

        if (v42 == 16)
        {
          v43 = 224;
          v44 = *(v258 + 8);
          if (v44 <= 285212703)
          {
            goto LABEL_128;
          }

          goto LABEL_109;
        }
      }

      else
      {
        if (v42 == -1879048176)
        {
          v43 = 384;
          v44 = *(v258 + 8);
          if (v44 <= 285212703)
          {
            goto LABEL_128;
          }

          goto LABEL_109;
        }

        if (v42 == 4)
        {
          v43 = 160;
          v44 = *(v258 + 8);
          if (v44 <= 285212703)
          {
            goto LABEL_128;
          }

          goto LABEL_109;
        }
      }
    }

    else if (v42 <= 268435463)
    {
      if (v42 == 32)
      {
        v43 = 256;
        v44 = *(v258 + 8);
        if (v44 <= 285212703)
        {
          goto LABEL_128;
        }

        goto LABEL_109;
      }

      if (v42 == 64)
      {
        v43 = 288;
        v44 = *(v258 + 8);
        if (v44 <= 285212703)
        {
          goto LABEL_128;
        }

        goto LABEL_109;
      }
    }

    else
    {
      switch(v42)
      {
        case 268435464:
          v43 = 480;
          v44 = *(v258 + 8);
          if (v44 <= 285212703)
          {
            goto LABEL_128;
          }

          goto LABEL_109;
        case 268435472:
          v43 = 320;
          v44 = *(v258 + 8);
          if (v44 <= 285212703)
          {
            goto LABEL_128;
          }

          goto LABEL_109;
        case 268435488:
          v43 = 352;
          v44 = *(v258 + 8);
          if (v44 > 285212703)
          {
            goto LABEL_109;
          }

LABEL_128:
          if (v44 <= 31)
          {
            if (v44 > 7)
            {
              if (v44 == 8)
              {
                v45 = 6144;
                goto LABEL_169;
              }

              if (v44 == 16)
              {
                v45 = 7168;
                goto LABEL_169;
              }
            }

            else
            {
              if (v44 == -1879048176)
              {
                v45 = 12288;
                goto LABEL_169;
              }

              if (v44 == 4)
              {
                v45 = 5120;
                goto LABEL_169;
              }
            }
          }

          else if (v44 <= 268435463)
          {
            if (v44 == 32)
            {
              v45 = 0x2000;
              goto LABEL_169;
            }

            if (v44 == 64)
            {
              v45 = 9216;
              goto LABEL_169;
            }
          }

          else
          {
            switch(v44)
            {
              case 268435464:
                v45 = 15360;
                goto LABEL_169;
              case 268435472:
                v45 = 10240;
                goto LABEL_169;
              case 268435488:
                v45 = 11264;
                goto LABEL_169;
            }
          }

          goto LABEL_168;
      }
    }

    v43 = 576;
    v44 = *(v258 + 8);
    if (v44 <= 285212703)
    {
      goto LABEL_128;
    }

LABEL_109:
    if (v44 <= 536870915)
    {
      if (v44 > 301989895)
      {
        if (v44 == 301989896)
        {
          v45 = 0x4000;
          goto LABEL_169;
        }

        if (v44 == 335544328)
        {
          v45 = 17408;
          goto LABEL_169;
        }
      }

      else
      {
        if (v44 == 285212704)
        {
          v45 = 13312;
          goto LABEL_169;
        }

        if (v44 == 285212736)
        {
          v45 = 14336;
          goto LABEL_169;
        }
      }
    }

    else if (v44 <= 536870927)
    {
      if (v44 == 536870916)
      {
        v224 = 0;
        goto LABEL_170;
      }

      if (v44 == 536870920)
      {
        v45 = 1024;
        goto LABEL_169;
      }
    }

    else
    {
      switch(v44)
      {
        case 536870928:
          v45 = 2048;
          goto LABEL_169;
        case 536870944:
          v45 = 3072;
          goto LABEL_169;
        case 536870976:
          v45 = 4096;
LABEL_169:
          v224 = v45;
LABEL_170:
          v46 = *(v271 + 2);
          v281 = v287 / v289;
          if (v46 > 285212703)
          {
            if (v46 <= 536870915)
            {
              if (v46 > 301989895)
              {
                if (v46 == 301989896)
                {
                  v47 = 0x80000;
                  goto LABEL_235;
                }

                if (v46 == 335544328)
                {
                  v47 = 557056;
                  goto LABEL_235;
                }
              }

              else
              {
                if (v46 == 285212704)
                {
                  v47 = 425984;
                  goto LABEL_235;
                }

                if (v46 == 285212736)
                {
                  v47 = 458752;
                  goto LABEL_235;
                }
              }
            }

            else if (v46 <= 536870927)
            {
              if (v46 == 536870916)
              {
                v222 = 0;
                v48 = *(v274 + 8);
                if (v48 <= 285212703)
                {
                  goto LABEL_236;
                }

                goto LABEL_213;
              }

              if (v46 == 536870920)
              {
                v47 = 0x8000;
                goto LABEL_235;
              }
            }

            else
            {
              switch(v46)
              {
                case 536870928:
                  v47 = 0x10000;
                  goto LABEL_235;
                case 536870944:
                  v47 = 98304;
                  goto LABEL_235;
                case 536870976:
                  v47 = 0x20000;
                  goto LABEL_235;
              }
            }
          }

          else if (v46 <= 31)
          {
            if (v46 > 7)
            {
              if (v46 == 8)
              {
                v47 = 196608;
                goto LABEL_235;
              }

              if (v46 == 16)
              {
                v47 = 229376;
                goto LABEL_235;
              }
            }

            else
            {
              if (v46 == -1879048176)
              {
                v47 = 393216;
                goto LABEL_235;
              }

              if (v46 == 4)
              {
                v47 = 163840;
                goto LABEL_235;
              }
            }
          }

          else if (v46 <= 268435463)
          {
            if (v46 == 32)
            {
              v47 = 0x40000;
              goto LABEL_235;
            }

            if (v46 == 64)
            {
              v47 = 294912;
              goto LABEL_235;
            }
          }

          else
          {
            switch(v46)
            {
              case 268435464:
                v47 = 491520;
                goto LABEL_235;
              case 268435472:
                v47 = 327680;
                goto LABEL_235;
              case 268435488:
                v47 = 360448;
                goto LABEL_235;
            }
          }

          v47 = 589824;
LABEL_235:
          v222 = v47;
          v48 = *(v274 + 8);
          if (v48 <= 285212703)
          {
LABEL_236:
            if (v48 <= 31)
            {
              if (v48 > 7)
              {
                if (v48 == 8)
                {
                  v49 = 6;
                  goto LABEL_258;
                }

                if (v48 == 16)
                {
                  v49 = 7;
                  goto LABEL_258;
                }
              }

              else
              {
                if (v48 == -1879048176)
                {
                  v49 = 12;
                  goto LABEL_258;
                }

                if (v48 == 4)
                {
                  v49 = 5;
                  goto LABEL_258;
                }
              }
            }

            else if (v48 <= 268435463)
            {
              if (v48 == 32)
              {
                v49 = 8;
                goto LABEL_258;
              }

              if (v48 == 64)
              {
                v49 = 9;
                goto LABEL_258;
              }
            }

            else
            {
              switch(v48)
              {
                case 268435464:
                  v49 = 15;
                  goto LABEL_258;
                case 268435472:
                  v49 = 10;
                  goto LABEL_258;
                case 268435488:
                  v49 = 11;
                  goto LABEL_258;
              }
            }

LABEL_257:
            v49 = 18;
            goto LABEL_258;
          }

LABEL_213:
          if (v48 <= 536870915)
          {
            if (v48 > 301989895)
            {
              if (v48 == 301989896)
              {
                v49 = 16;
              }

              else
              {
                if (v48 != 335544328)
                {
                  goto LABEL_257;
                }

                v49 = 17;
              }
            }

            else if (v48 == 285212704)
            {
              v49 = 13;
            }

            else
            {
              if (v48 != 285212736)
              {
                goto LABEL_257;
              }

              v49 = 14;
            }
          }

          else if (v48 <= 536870927)
          {
            if (v48 == 536870916)
            {
              v220 = 0;
              goto LABEL_259;
            }

            if (v48 != 536870920)
            {
              goto LABEL_257;
            }

            v49 = 1;
          }

          else
          {
            switch(v48)
            {
              case 536870928:
                v49 = 2;
                break;
              case 536870944:
                v49 = 3;
                break;
              case 536870976:
                v49 = 4;
                break;
              default:
                goto LABEL_257;
            }
          }

LABEL_258:
          v220 = v49;
LABEL_259:
          v50 = 0;
          v381[0] = v276;
          v381[1] = v257;
          v381[2] = v276;
          v381[3] = v257;
          v381[4] = v290;
          v381[5] = v287 / v289;
          v381[6] = v289;
          v381[7] = v264;
          v381[8] = v292;
          v381[9] = v262;
          v381[10] = v261;
          v381[11] = v284;
          v381[12] = v279;
          v381[13] = v278;
          v381[14] = v277;
          v381[15] = v41;
          v382 = v263;
          v383 = v283;
          v380 = 0;
          v379 = 0u;
          v378 = 0u;
          v377 = 0u;
          v376 = 0u;
          v375 = 0u;
          v374 = 0u;
          if (*(v282 + 272) == 1)
          {
            v50 = *(v282 + 264);
          }

          (*(*a1 + 136))(&v374, a1, v282, v381, v50, *(v11 + 8), *(v258 + 8), *(v271 + 2));
          v244 = v374;
          v217 = BYTE8(v374);
          v51 = 1 << SBYTE8(v374);
          v243 = v375;
          v255 = DWORD2(v375);
          v247 = v376;
          v246 = BYTE8(v376);
          if ((v51 & 7) != 0 && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          v286 = 1 << v244;
          if ((v286 & 7) != 0 && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          v259 = 1 << v243;
          if ((v259 & 7) != 0 && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          v254 = 1 << v247;
          if (8 * v254 > v51 && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          v253 = 1 << v246;
          if (8 * v253 > v286 && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          if ((v259 & 7) != 0 && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          v52 = 1 << v255;
          v53 = v259 / v52;
          v252 = v52;
          if (v259 % v52 && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          if ((v53 & 7) != 0 && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          v54 = v253 * v254;
          if (v54 > (v51 >> 3) * (v286 >> 3) && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          v241 = v51;
          v238 = 0;
          v55 = *MEMORY[0x277CD7400];
          v56 = *MEMORY[0x277CD73C8];
          v57 = *&v288[v55] / (*&v288[v56] >> 3);
          v58 = *&v291[v55] / (*&v291[v56] >> 3);
          if (v263 == 1)
          {
            v59 = v265;
          }

          else
          {
            v59 = v276;
          }

          if (v263 == 1)
          {
            v60 = v265;
          }

          else
          {
            v60 = v276;
          }

          v229 = v60;
          if (v263 == 1)
          {
            v61 = v276;
          }

          else
          {
            v61 = *&v291[v55] / (*&v291[v56] >> 3);
          }

          if (v263 == 1)
          {
            v62 = v276;
          }

          else
          {
            v62 = *&v288[v55] / (*&v288[v56] >> 3);
          }

          if (v263 == 1)
          {
            v63 = *&v291[v55] / (*&v291[v56] >> 3);
          }

          else
          {
            v63 = v265;
          }

          v64 = *&v38[v55];
          v65 = *&v38[v56];
          if (v263 == 1)
          {
            v66 = v57;
          }

          else
          {
            v66 = v265;
          }

          v67 = v64 / (v65 >> 3);
          if (v283)
          {
            v68 = v67;
          }

          else
          {
            v68 = v264;
          }

          v234 = v68;
          if (v283)
          {
            LODWORD(v67) = v267;
          }

          v233 = v67;
          v70 = v279 == 1 && v278 == 1;
          v72 = v262 == 1 && v261 == 1;
          v208 = __PAIR64__(v63, v66);
          v206 = v62;
          v207 = v61;
          v268 = v70;
          if (!v277 && !v41 && v70)
          {
            v73 = v264 == 1 && v72;
            if (v292 != 1)
            {
              v73 = 0;
            }

            v238 = v73;
          }

          v74 = BYTE7(v379);
          if (!v263)
          {
            if (BYTE7(v379) && (*(*(v282 + *MEMORY[0x277CD7350]) + 1478) & v70 & 1) != 0)
            {
              v74 = 1;
            }

            else
            {
              v74 = 0;
              v76 = v229 == v58 && v59 == v57;
              v238 &= v76;
            }
          }

          v77 = v378;
          v78 = *(v271 + 2);
          if (v78 != 268435472)
          {
            if (v78 <= 268435487)
            {
              if (v78 == -1879048176 || v78 == 268435464)
              {
                goto LABEL_338;
              }
            }

            else if (v78 == 268435488 || v78 == 335544328 || v78 == 301989896)
            {
              goto LABEL_338;
            }

            if (MTLReportFailureTypeEnabled())
            {
              MTLReportFailure();
            }
          }

LABEL_338:
          if (v72)
          {
            v79 = 2;
          }

          else
          {
            v79 = 0;
          }

          v212 = v79;
          v80 = v276;
          if (v74)
          {
            v80 = (v276 + 1) & 0xFFFFFFFE;
          }

          v237 = v80 * v257;
          v235 = v80 * (v257 * v284);
          v266 = v74;
          v232 = v77;
          if (v263 == 1)
          {
            v214 = 1;
            v205 = 1;
            v81 = 1;
            v82 = (v284 + v77 - 1) / v77;
          }

          else
          {
            v83 = *(&v378 + 1);
            v84 = v259 - 1;
            if (v77)
            {
              v85 = (v237 + v84) / v259;
              v249 = (v284 + v77 - 1) / v77;
              if (*(&v378 + 1) >= v85)
              {
                v83 = v85;
              }

              v214 = v237 % (v83 * v259) != 0;
              v205 = v83 * v259;
              v81 = (v237 + v83 * v259 - 1) / (v83 * v259);
LABEL_353:
              v87 = v379;
              v88 = BYTE1(v379);
              v89 = BYTE2(v379);
              v90 = BYTE3(v379);
              v91 = [*(v256 + 232) finalOp];
              LODWORD(v95) = (*(*v91 + 16))(v91);
              v92 = v90 << 6;
              v93 = v277 + v262 * (v264 - 1) + (v276 - 1) * v279;
              v94 = v260 + v261 * (v292 - 1) + (v257 - 1) * v278;
              LODWORD(v95) = v95 ^ 1;
              if (*(v274 + 8) == 268435488)
              {
                v95 = v95;
              }

              else
              {
                v95 = 1;
              }

              v275 = v95;
              if (v266)
              {
                v96 = 0;
              }

              else if ((v277 | v260) > -1 && v94 < v257 && v93 < v276)
              {
                v96 = 0;
              }

              else
              {
                v96 = 0x1000000;
              }

              v99 = v249 * v81;
              if (v263)
              {
                v100 = ((v276 * v257) + v259) / v259 * v259;
                v101 = ((v283 == 1) << 31) | ((v263 == 0) << 26) & 0xC5FFFFFF | (4 * (v289 == 1)) | v212 & 0xC5FFFFFF | (v268 | ((v244 & 7) << 12)) & 0xC5FFFFFF | (((v217 & 7) << 9) | ((v243 & 7) << 15) | ((v255 & 3) << 18)) & 0xC5FFFFFF | (((v247 & 3) << 20) | ((v246 & 3) << 22) | (8 * v87) | (16 * v88)) & 0xC5FFFFFF | ((32 * v89) | v92) & 0xC5FFFFFF | ((v290 % v286 == 0) << 7) | (((v281 % v241 == 0) << 8) | v96) & 0xC5FFFFFF | ((v100 < 0xFFFF) << 25);
                if (v260 + v100 / v276 * v278 + 0x8000 >= 0xFFFF || v277 + v276 * v279 + 0x8000 >= 0xFFFF)
                {
                  v103 = 0;
                }

                else
                {
                  v103 = 0x20000000;
                }

                v104 = v101 | v103;
                v105 = v287;
                v106 = v227;
              }

              else
              {
                v107 = ((v283 == 1) << 31) | 0x4000000 | (4 * (v289 == 1)) | v212 & 0xC7FFFFFF | (v268 | ((v244 & 7) << 12)) & 0xC7FFFFFF | (((v217 & 7) << 9) | ((v243 & 7) << 15) | ((v255 & 3) << 18)) & 0xC7FFFFFF | (((v247 & 3) << 20) | ((v246 & 3) << 22) | (8 * v87) | (16 * v88)) & 0xC7FFFFFF | ((32 * v89) | v92) & 0xC7FFFFFF | ((v290 % v286 == 0) << 7) | (((v281 % v241 == 0) << 8) | v96) & 0xC7FFFFFF | ((v232 != 0) << 27) & 0xCFFFFFFF | ((((v237 + v259 - 1) & -v259) < 0x10000) << 29) | ((((v235 + v259 - 1) & -v259) < 0x10000) << 28);
                v105 = v287;
                v106 = v227;
                if (v238)
                {
                  v108 = ((((v235 + v259 - 1) & -v259) < 0x10000) << 25) & 0x1FFFFFFF;
                  if (v232)
                  {
                    v108 = ((((v237 + v259 - 1) & -v259) < 0x10000) << 25) & 0xFFFFFFF;
                  }
                }

                else if (v257 < 0x8000 && v276 < 0x8000 && v94 == v94 && v93 == v93)
                {
                  v108 = 0x2000000;
                }

                else
                {
                  v108 = 0;
                }

                v104 = v107 & 0xFDFFFFFF | v108;
              }

              if (v214)
              {
                v112 = 0x40000000;
              }

              else
              {
                v112 = 0;
              }

              v367 = -1;
              v366 = -1;
              v368 = v104 & 0xBFFFFFFF | v112;
              v369 = v224 | v43 | v222 | v220;
              v370 = 0u;
              v371 = 0u;
              v197 = v106 | 0x10100;
              v372 = v197;
              v373 = 0;
              v113 = 0;
              v114 = MEMORY[0x277CD7370];
              v115 = *(v282 + *MEMORY[0x277CD7370]);
              if (v275 && v99 <= 1)
              {
                v113 = *(v256 + 232);
              }

              v192 = *(v282 + *MEMORY[0x277CD7360]);
              v194 = *(v282 + *MEMORY[0x277CD7368]);
              v190 = v113;
              MPSLibrary::CreateUberShaderKey();
              v116 = *(v282 + *v114);
              PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
              [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup];
              if (32 * v252 * v54 > [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup] && MTLReportFailureTypeEnabled())
              {
                MTLReportFailure();
              }

              v198 = v252 * v54;
              v118 = 1 << v246;
              v119 = 1 << v255;
              if (v263)
              {
                v120 = 1 << v255;
              }

              else
              {
                v120 = 1 << v246;
              }

              if (v263)
              {
                v119 = 1 << v247;
              }

              else
              {
                v118 = 1 << v247;
              }

              v211 = v119;
              v213 = v118;
              if (v379 == 1)
              {
                v121 = v290 + 7;
                v122 = v292 * v264;
                v210 = (v286 + ((v290 + 7) & 0xFFFFFFFFFFFFFFF8) * v292 * v264 - 1) / v286;
              }

              else
              {
                v122 = v292 * v264;
                v210 = (v290 + v286 - 1) / v286 * v292 * v264;
                v121 = v290 + 7;
              }

              v123 = v377;
              MEMORY[0x23EE7C450](v365, v251, 0);
              v201 = v120;
              TempBuffer = [v38 buffer];
              v245 = (v290 * v105 * v122 + 3) & 0xFFFFFFFC;
              if (v99 >= 2)
              {
                TempBuffer = MPSAutoCache::GetTempBuffer(v365, 4 * v99 * ((v290 * v105 * v122 + 3) & 0xFFFFFFFFFFFFFFFCLL), 0);
              }

              v124 = v241;
              MPSGetUShortDivisorMagicNumber();
              v242 = v125;
              MPSGetUIntDivisorMagicNumber();
              v239 = v126;
              v199 = (*(&v123 + 1) + (v281 + v124 - 1) / v124 * v289 - 1) / *(&v123 + 1);
              MPSGetUShortDivisorMagicNumber();
              v236 = v127;
              MPSGetUShortDivisorMagicNumber();
              v231 = v128;
              MPSGetUShortDivisorMagicNumber();
              v230 = v129;
              MPSGetUShortDivisorMagicNumber();
              v228 = v130;
              MPSGetUIntDivisorMagicNumber();
              v225 = v131;
              MPSGetUIntDivisorMagicNumber();
              v223 = v132;
              MPSGetUShortDivisorMagicNumber();
              v221 = v133;
              MPSGetUShortDivisorMagicNumber();
              v219 = v134;
              MPSGetUIntDivisorMagicNumber();
              v218 = v135;
              MPSGetUShortDivisorMagicNumber();
              v216 = v136;
              MPSGetUShortDivisorMagicNumber();
              v215 = v137;
              MPSGetUShortDivisorMagicNumber();
              v240 = v138;
              MPSGetUIntDivisorMagicNumber();
              v209 = v139;
              MPSGetUIntDivisorMagicNumber();
              v200 = v140;
              MPSGetUIntDivisorMagicNumber();
              v272 = v141;
              MPSGetUIntDivisorMagicNumber();
              v269 = v142;
              MPSGetUShortDivisorMagicNumber();
              v250 = v143;
              MPSGetUIntDivisorMagicNumber();
              v196 = v144;
              v321 = 0u;
              v319 = 0u;
              v318[0] = 0u;
              v145 = v233;
              if (v99 >= 2)
              {
                v145 = v287;
              }

              LODWORD(v319) = (v121 >> 3) * v122;
              DWORD1(v321) = v207 * v257 * HIDWORD(v208);
              DWORD2(v321) = v206 * v257 * v208;
              HIDWORD(v321) = v207 * v257;
              v322 = v206 * v257;
              v323 = v207;
              v324 = v206;
              v325 = v232;
              v326 = 0uLL;
              *(&v326 + 4) = __PAIR64__(v235, v205);
              v146 = v209;
              HIDWORD(v146) = 0;
              v147 = v200;
              HIDWORD(v147) = 0;
              v347 = v287 / v289;
              v352 = v289;
              v353 = v284;
              v358 = v278;
              v357 = v279;
              v360 = v261;
              v359 = v262;
              v361 = v237;
              v363 = HIDWORD(v208) * v257;
              v362 = v208;
              *&v318[0] = __PAIR64__(v145, v245);
              LODWORD(v321) = 0;
              v148 = v242;
              HIWORD(v148) = 0;
              v149 = v239;
              v150 = v240;
              HIDWORD(v149) = 0;
              v151 = v236;
              HIWORD(v151) = 0;
              v153 = v230;
              v152 = v231;
              HIWORD(v152) = 0;
              HIWORD(v153) = 0;
              v154 = v228;
              HIWORD(v154) = 0;
              v156 = v223;
              v155 = v225;
              HIDWORD(v155) = 0;
              HIDWORD(v156) = 0;
              v158 = v219;
              v157 = v221;
              HIWORD(v157) = 0;
              HIWORD(v158) = 0;
              v160 = v216;
              v159 = v218;
              HIDWORD(v159) = 0;
              HIWORD(v160) = 0;
              v161 = v215;
              HIWORD(v161) = 0;
              HIWORD(v150) = 0;
              v162 = v272;
              HIDWORD(v162) = 0;
              v318[1] = v148;
              v163 = v269;
              HIDWORD(v163) = 0;
              v164 = v250;
              HIWORD(v164) = 0;
              v318[2] = v149;
              WORD4(v318[0]) = v123;
              WORD5(v318[0]) = WORD4(v123);
              v320 = 0uLL;
              v327 = v151;
              v328 = v152;
              v330 = 0uLL;
              v329 = 0uLL;
              v331 = v164;
              v332 = v153;
              v333 = v154;
              v270 = v163;
              v273 = v162;
              v334 = v163;
              v335 = v162;
              v336 = v155;
              v337 = v156;
              v338 = v157;
              v339 = v158;
              v340 = v159;
              v341 = v160;
              v342 = v161;
              v343 = v150;
              v344 = v146;
              v345 = v147;
              v346 = v290;
              v348 = v287;
              v349 = v264;
              v350 = v234;
              v351 = v292;
              v354 = __PAIR64__(v257, v276);
              v355 = __PAIR64__(v257, v276);
              v356 = __PAIR64__(v260, v277);
              v364 = (v208 * v257);
              if (v263)
              {
                v165 = v226;
                if (BYTE1(v379))
                {
                  v166 = 0;
                  v167 = 0;
                  v168 = 0;
                  v169 = *&v288[*MEMORY[0x277CD73C8]];
LABEL_414:
                  v170 = 0;
                  v171 = (v168 + v286) * (v167 + v259) * (v169 >> 3);
LABEL_427:
                  if (BYTE2(v379) == 1)
                  {
                    v171 += (v259 + v166) * (v170 + v124) * (*&v291[*MEMORY[0x277CD73C8]] >> 3);
                  }

                  if (v255)
                  {
                    v174 = v286 / (8 * v253) * (v124 / (8 * v254));
                    if (0x2000 / (v198 << 8) < v174)
                    {
                      v174 = 0x2000 / (v198 << 8);
                    }

                    v175 = (v254 * (v252 >> 1) * v253 * v174) << 8;
                    if (v171 <= v175)
                    {
                      v171 = v175;
                    }
                  }

                  [v165 setComputePipelineState:PipelineStateForMPSKey];
                  v176 = *(v282 + *MEMORY[0x277CD7370]);
                  MPSLibrary::ReleaseComputeState();
                  v177 = *(v282 + *MEMORY[0x277CD7370]);
                  MPSLibrary::ReleaseMPSKey();
                  MPSSetNDArraysOnComputeEncoder(v165, v256, 4, 0, 0);
                  [v165 setBuffer:objc_msgSend(v291 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v291, 0, 4, 0, 0) + v204, 29}];
                  [v165 setBuffer:objc_msgSend(v288 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v288, 0, 4, 0, 0) + v203, 28}];
                  if (v99 > 1)
                  {
                    v180 = 0;
                    v179 = TempBuffer;
                  }

                  else
                  {
                    v178 = MPSGetLinearOffsetBytes(v38, 0, 4, 0, 0);
                    v179 = [v38 buffer];
                    v180 = v178 + v202;
                  }

                  [v165 setBuffer:v179 offset:v180 atIndex:27];
                  [v165 setBytes:v318 length:448 atIndex:26];
                  [v165 setThreadgroupMemoryLength:v171 atIndex:0];
                  [v165 setBuffer:0 offset:0 atIndex:25];
                  v297 = *(&v123 + 1) * v123;
                  v298 = v199 * ((v123 + v210 - 1) / v123);
                  v299 = v99;
                  v310 = 32 * v211;
                  v311 = v213;
                  v312 = v201;
                  [v165 dispatchThreadgroups:&v297 threadsPerThreadgroup:&v310];
                  if (v99 >= 2)
                  {
                    v181 = 0;
                    v311 = -1;
                    v310 = -1;
                    v312 = -1;
                    v313 = v275 | (2 * (v283 != 0));
                    v314 = 0u;
                    v315 = 0u;
                    v316 = v197;
                    v317 = 0;
                    v182 = MEMORY[0x277CD7370];
                    v183 = *(v282 + *MEMORY[0x277CD7370]);
                    if (v275)
                    {
                      v181 = *(v256 + 232);
                    }

                    v193 = *(v282 + *MEMORY[0x277CD7360]);
                    v195 = *(v282 + *MEMORY[0x277CD7368]);
                    v191 = v181;
                    MPSLibrary::CreateUberShaderKey();
                    v184 = *(v282 + *v182);
                    [v165 setComputePipelineState:{MPSLibrary::GetPipelineStateForMPSKey(), v191, v193, v195, 0, 0}];
                    v185 = *(v282 + *v182);
                    MPSLibrary::ReleaseComputeState();
                    v186 = *(v282 + *v182);
                    MPSLibrary::ReleaseMPSKey();
                    MPSSetNDArraysOnComputeEncoder(v165, v256, 4, 0, 0);
                    [v165 setBuffer:TempBuffer offset:0 atIndex:28];
                    [v165 setBuffer:objc_msgSend(v38 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v38, 0, 4, 0, 0) + v202, 27}];
                    if (v283)
                    {
                      v187 = v287;
                    }

                    else
                    {
                      v187 = (v287 + 3) >> 2;
                    }

                    MPSGetUIntDivisorMagicNumber();
                    v188 = v196;
                    HIDWORD(v188) = 0;
                    HIDWORD(v189) = 0;
                    LODWORD(v297) = v290 * v187 * v122;
                    HIDWORD(v297) = v187;
                    LODWORD(v298) = v99;
                    HIDWORD(v298) = v287 & 3;
                    v299 = __PAIR64__(v233, v287);
                    v300 = v245;
                    v301 = v290;
                    v302 = v264;
                    v303 = v292;
                    v304 = v234;
                    v305 = v273;
                    v306 = v270;
                    v307 = v188;
                    v309 = 0u;
                    v308 = v189;
                    [v165 setBytes:&v297 length:128 atIndex:26];
                    [v165 setBuffer:0 offset:0 atIndex:25];
                    v295 = (v290 * v187 * v122 + 255) >> 8;
                    v296 = vdupq_n_s64(1uLL);
                    v293 = xmmword_239B0A7B0;
                    v294 = 1;
                    [v165 dispatchThreadgroups:&v295 threadsPerThreadgroup:&v293];
                  }

                  MPSAutoCache::~MPSAutoCache(v365);
                  operator delete(0);
                  operator delete(0);
                  operator delete(0);
                  return 0;
                }
              }

              else
              {
                v165 = v226;
                if (v266)
                {
                  if (BYTE1(v379))
                  {
                    v172 = *MEMORY[0x277CD73C8];
                    v169 = *&v288[v172];
                    v168 = 4u / (v169 >> 3);
                    if (BYTE2(v379))
                    {
                      v167 = 0;
                      v166 = 4u / (*&v291[v172] >> 3);
                    }

                    else
                    {
                      v166 = 0;
                      v167 = 0;
                    }

                    goto LABEL_414;
                  }

                  if (BYTE2(v379))
                  {
                    v166 = 0;
                    v171 = 0;
                    v170 = 4u / (*&v291[*MEMORY[0x277CD73C8]] >> 3);
                    goto LABEL_427;
                  }
                }

                else
                {
                  if (BYTE1(v379))
                  {
                    v173 = *MEMORY[0x277CD73C8];
                    v169 = *&v288[v173];
                    v168 = 4u / (v169 >> 3);
                    if (BYTE2(v379))
                    {
                      v167 = 0;
                      v166 = 4u / (*&v291[v173] >> 3);
                    }

                    else
                    {
                      v166 = 0;
                      v167 = 4u / (v169 >> 3);
                      v168 = 0;
                    }

                    goto LABEL_414;
                  }

                  if (BYTE2(v379))
                  {
                    v170 = 0;
                    v171 = 0;
                    v166 = 4u / (*&v291[*MEMORY[0x277CD73C8]] >> 3);
                    goto LABEL_427;
                  }
                }
              }

              v166 = 0;
              v170 = 0;
              v171 = 0;
              goto LABEL_427;
            }

            v86 = (v235 + v84) / v259;
            if (*(&v378 + 1) >= v86)
            {
              v83 = v86;
            }

            v81 = (v235 + v83 * v259 - 1) / (v83 * v259);
            v205 = v83 * v259;
            v214 = v235 % (v83 * v259) != 0;
            v82 = 1;
          }

          v249 = v82;
          goto LABEL_353;
      }
    }

LABEL_168:
    v45 = 18432;
    goto LABEL_169;
  }

  return MPSNDArrayConvolutionDeviceBehavior::EncodeNDArrayConvolutionGradientWithWeights(a1, a2, a3, a4, a5);
}

void sub_239AD8BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *__p, void *a59, void *a60)
{
  operator delete(__p);
  if (a59)
  {
    operator delete(a59);
    if (!a60)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if (!a60)
  {
    goto LABEL_3;
  }

  operator delete(a60);
  _Unwind_Resume(a1);
}

void MPSNDArrayConvolutionDeviceBehaviorA14::~MPSNDArrayConvolutionDeviceBehaviorA14(void **this)
{
  *this = &unk_284CAFD38;
  free(this[19]);
  *this = &unk_284CAF9A0;
  free(this[9]);
}

{
  *this = &unk_284CAFD38;
  free(this[19]);
  *this = &unk_284CAF9A0;
  free(this[9]);

  JUMPOUT(0x23EE7C8C0);
}

void MPSNDArrayConvolutionDeviceBehaviorA15X::~MPSNDArrayConvolutionDeviceBehaviorA15X(void **this)
{
  *this = &unk_284CAFAF0;
  free(this[19]);
  *this = &unk_284CAFD38;
  free(this[19]);
  *this = &unk_284CAF9A0;
  free(this[9]);
}

{
  *this = &unk_284CAFAF0;
  free(this[19]);
  *this = &unk_284CAFD38;
  free(this[19]);
  *this = &unk_284CAF9A0;
  free(this[9]);

  JUMPOUT(0x23EE7C8C0);
}

void MPSNDArrayConvolutionDeviceBehaviorA16::~MPSNDArrayConvolutionDeviceBehaviorA16(void **this)
{
  *this = &unk_284CAFC98;
  free(this[19]);
  *this = &unk_284CAFAF0;
  free(this[19]);
  *this = &unk_284CAFD38;
  free(this[19]);
  *this = &unk_284CAF9A0;
  free(this[9]);
}

{
  *this = &unk_284CAFC98;
  free(this[19]);
  *this = &unk_284CAFAF0;
  free(this[19]);
  *this = &unk_284CAFD38;
  free(this[19]);
  *this = &unk_284CAF9A0;
  free(this[9]);

  JUMPOUT(0x23EE7C8C0);
}

{
  *this = &unk_284CAFC98;
  free(this[19]);
  *this = &unk_284CAFAF0;
  free(this[19]);
  *this = &unk_284CAFD38;
  free(this[19]);
  *this = &unk_284CAF9A0;
  free(this[9]);
}

uint64_t MPSNDArrayConvolutionDeviceBehaviorA14::MPSNDArrayConvolutionDeviceBehaviorA14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = MPSNDArrayConvolutionDeviceBehaviorPreG13::MPSNDArrayConvolutionDeviceBehaviorPreG13(a1, &sicilyTongaNCHWxHWIOHalf, &sicilyTongaNCHWxHWIOFloat, &sicilyTongaNHWCxHWIOHalf, &sicilyTongaNHWCxHWIOFloat, a4);
  *v8 = &unk_284CAFD38;
  v8[15] = &keys;
  v8[16] = 532;
  v8[17] = a2;
  v8[18] = a3;
  v8[19] = 0;
  v9 = &a14SDirectConvolutionNHWCxHWIOFloat;
  v10 = &a14SDirectConvolutionNHWCxHWIOHalf;
  *(v8 + 40) = 0;
  v11 = *(a4 + 1472);
  v12 = &a14SDirectConvolutionNCHWxHWIOFloat;
  v13 = v11 == 13;
  if (v11 == 13)
  {
    v14 = &a14SDirectConvolutionNCHWxHWIOHalf;
  }

  else
  {
    v14 = &a14DirectConvolutionNCHWxHWIOHalf;
  }

  if (!v13)
  {
    v12 = &a14DirectConvolutionNCHWxHWIOFloat;
    v10 = &a14DirectConvolutionNHWCxHWIOHalf;
  }

  v8[11] = v14;
  v8[12] = v12;
  if (!v13)
  {
    v9 = &a14DirectConvolutionNHWCxHWIOFloat;
  }

  v8[13] = v10;
  v8[14] = v9;
  v8[19] = 0;
  v15 = getenv("MPS_AUTO_TUNING_PARAMETERS");
  if (!v15)
  {
    return a1;
  }

  v16 = v15;
  v17 = *v15;
  if (v17 != 50)
  {
    if (v17 == 49)
    {
      v18 = malloc_type_malloc(0x30uLL, 0x10000400D0814F3uLL);
      *(a1 + 152) = v18;
      *v18 = v16[1] - 48;
      v18[1] = v16[2] - 48;
      v18[2] = v16[3] - 48;
      v18[3] = v16[4] - 48;
      v18[4] = v16[5] - 48;
      v18[5] = v16[6] - 48;
      v18[6] = v16[7] - 48;
      v18[7] = v16[8] - 48;
      v18[8] = v16[10] + 10 * v16[9] - 528;
      v18[9] = v16[12] + 10 * v16[11] - 528;
      *(v18 + 40) = v16[13] != 48;
      *(v18 + 41) = v16[14] != 48;
      *(v18 + 42) = v16[15] != 48;
      *(v18 + 43) = v16[16] != 48;
      *(v18 + 44) = v16[17] != 48;
      *(v18 + 45) = v16[18] != 48;
    }

    return a1;
  }

  *(a1 + 160) = 2;
  v20 = malloc_type_malloc(0x14uLL, 0x1000040A86A77D5uLL);
  *(a1 + 152) = v20;
  *v20 = v16[1] - 48;
  v20[1] = v16[3] + 10 * v16[2] - 528;
  v20[2] = v16[4] - 48;
  v20[3] = v16[5] - 48;
  v20[4] = v16[6] - 48;
  v20[5] = v16[8] + 10 * v16[7] - 528;
  v20[6] = v16[10] + 10 * v16[9] - 528;
  v20[7] = v16[11] - 48;
  v20[8] = v16[12] - 48;
  v20[9] = v16[13] - 48;
  return a1;
}

void sub_239AD9370(_Unwind_Exception *a1)
{
  *v1 = &unk_284CAF9A0;
  free(*(v1 + 72));
  _Unwind_Resume(a1);
}

uint64_t EncodeScatter(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1[20];
  v9 = [a1 operation];
  v10 = [a1 batchDimensions];

  return EncodeScatterCommon(a1, a2, a3, a4, v8, v9, v10);
}

uint64_t EncodeScatterGradient(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1[20];
  v9 = [a1 operation];
  v10 = [a1 batchDimensions];

  return EncodeScatterCommon(a1, a2, a3, a4, v8, v9, v10);
}

uint64_t EncodeScatterCommon(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7);
  v967 = v8;
  v10 = v9;
  v961 = v11;
  v947 = v12;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = v7;
  v1445[1] = *MEMORY[0x277D85DE8];
  v945 = *(v7 + *MEMORY[0x277CD7370]);
  v938 = *(v7 + *MEMORY[0x277CD7350]);
  v20 = *(v7 + 88);
  [*(v13 + 16) count];
  if ([*(v14 + 16) count] != v20 && MTLReportFailureTypeEnabled())
  {
    [*(v14 + 16) count];
    MTLReportFailure();
  }

  MEMORY[0x23EE7C450](v1435, v16, 0);
  v964 = [*(v14 + 232) inputTensorAtIndex:0];
  v970 = [*(v14 + 232) inputTensorAtIndex:1];
  v959 = [*(v14 + 232) inputTensorAtIndex:2];
  v21 = [*(v14 + 232) outputTensorAtIndex:0];
  v1012 = [*(v14 + 16) objectAtIndexedSubscript:0];
  v22 = [*(v14 + 16) objectAtIndexedSubscript:1];
  v23 = [*(v14 + 16) objectAtIndexedSubscript:2];
  v24 = *(v14 + 208);
  v999 = [v24 descriptor];
  v957 = v18;
  v954 = v14;
  v972 = v10;
  v949 = v19;
  v951 = v16;
  v1008 = v21;
  if (v961 >= 7)
  {
    v25 = "Default";
  }

  else
  {
    v25 = off_278B0D340[v961];
  }

  v973 = v25;
  v26 = *MEMORY[0x277CD73D0];
  v1016 = *&v1012[v26 + 12];
  __pd = *&v1012[v26 + 8];
  v994 = *&v1012[v26 + 4];
  v989 = *&v1012[v26];
  v952 = v22;
  v984 = *(v22 + v26 + 12);
  v980 = *(v22 + v26 + 8);
  v977 = *(v22 + v26 + 4);
  v975 = *(v22 + v26);
  v953 = v23;
  v943 = *(v23 + v26 + 12);
  v27 = *(v23 + v26 + 4);
  v940 = *(v23 + v26 + 8);
  v28 = *(v23 + v26);
  v955 = v24;
  v29 = &v24[v26];
  v30 = v29[2];
  v31 = v29[3];
  v33 = *v29;
  v32 = v29[1];
  v34 = MEMORY[0x277CD73C8];
  v35 = dataTypeToString(*&v1012[*MEMORY[0x277CD73C8]]);
  v36 = dataTypeToString(*(v22 + *v34));
  v37 = dataTypeToString(*&v953[*v34]);
  v38 = dataTypeToString(*&v955[*v34]);
  MPSKernel_LogInfo(v949, v39, v40, v1016, __pd, v994, v989, v984, v980, v977, v975, v943, v940, v27, v28, v31, v30, v32, v33, v35, v36, v37, v38, v973);
  if (v967)
  {
    v41 = v959;
    v42 = [*(v954 + 232) inputTensorAtIndex:3];
    v999 = [v1012 descriptor];
    v43 = v972;
    v45 = v961 > 1 && v961 != 6;
    v985 = v45;
    v46 = v961 == 2;
  }

  else
  {
    v46 = 0;
    v985 = 1;
    v43 = v972;
    v41 = v959;
    v42 = v1008;
  }

  v47 = **(v41 + 16);
  if (*(*(v41 + 16) + 8) == v47)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v48 = *v42;
  v1017 = *v41;
  v49 = *v970;
  v995 = *v47;
  v990 = *v42 - v43;
  if ((*v42 <= v43 || v1017 <= v43 || v49 <= v43) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v50 = *(v970 + 16);
  v52 = *v50;
  v51 = v50[1];
  if (v51 != v52)
  {
    if (((v51 - v52) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v53 = v42[2];
  v55 = *v53;
  v54 = v53[1];
  if (v54 != v55)
  {
    if (((v54 - v55) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v56 = *(v41 + 16);
  v58 = *v56;
  v57 = v56[1];
  v1009 = v42;
  v936 = v46;
  if (v57 != v58)
  {
    if (((v57 - v58) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  if (v43)
  {
    v59 = v972 - 1;
    v60 = (8 * v1017 - 8);
    v61 = (8 * v49 - 8);
    v62 = (8 * v48 - 8);
    do
    {
      v65 = *v62--;
      v64 = v65;
      v67 = *v61--;
      v66 = v67;
      v68 = v67 == v64 || v66 == 1;
      if (!v68 || (*v60 != v64 ? (v63 = *v60 == 1) : (v63 = 1), !v63))
      {
        if (MTLReportFailureTypeEnabled())
        {
          v824 = v59;
          MTLReportFailure();
        }
      }

      --v59;
      --v60;
    }

    while (v59 != -1);
  }

  if (v48 != *v964 && MTLReportFailureTypeEnabled())
  {
    v824 = *v964 - v972;
    v827 = v990;
    MTLReportFailure();
  }

  if (v990 < v995 && MTLReportFailureTypeEnabled())
  {
    v824 = v990;
    v827 = v995;
    MTLReportFailure();
  }

  v69 = v1017 + ~v972;
  if (v49 - v972 != v69 + v990 - v995 && MTLReportFailureTypeEnabled())
  {
    v827 = v1017 + ~v972;
    v830 = v990 - v995;
    v824 = v49 - v972;
    MTLReportFailure();
  }

  v70 = v990 - v995;
  if (v990 != v995)
  {
    v84 = 0;
    if (v70 <= 1)
    {
      v85 = 1;
    }

    else
    {
      v85 = v990 - v995;
    }

    do
    {
      *(8 * v84);
      *(8 * v84++);
    }

    while (v85 != v84);
  }

  if (v69)
  {
    v71 = 0;
    v72 = 8 * v48 - 8 * v995 - 8 * v972;
    do
    {
      v73 = *(v72 + 8 * v71);
      v74 = v71 + 1;
      v75 = *(8 * v71 + 8);
      if (v73 != 1 && v73 != v75 && v75 != 1)
      {
        if (MTLReportFailureTypeEnabled())
        {
          v830 = v71 + 1;
          v833 = *(8 * v71 + 8);
          v824 = v70 + v71;
          v827 = *(v72 + 8 * v71);
          MTLReportFailure();
        }
      }

      ++v71;
    }

    while (v69 != v74);
  }

  v79 = v964[2];
  v81 = *v79;
  v80 = v79[1];
  if (v80 != v81)
  {
    if (((v80 - v81) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v87 = v954;
  if (v48)
  {
    for (i = 0; i != v48; ++i)
    {
      *(8 * i);
      *(8 * i);
    }

    operator delete(0);
  }

  v82 = *(v1009 + 2);
  v941 = (v1009 + 1);
  v83 = v955;
  if (v82 == 268435488)
  {
    if (v961 == 6)
    {
LABEL_74:
      v934 = 0;
      if (!v967)
      {
        goto LABEL_84;
      }

      goto LABEL_82;
    }
  }

  else
  {
    if (v961 == 6)
    {
      goto LABEL_74;
    }

    if ((v82 & 0x10000000) != 0)
    {
      v89 = [MEMORY[0x277CD7268] descriptorWithDataType:268435488 shape:{objc_msgSend(v999, "getShape")}];
      v86 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:v951 descriptor:v89];
      goto LABEL_81;
    }
  }

  if (([v955 resourceSize] & 3) == 0)
  {
    goto LABEL_74;
  }

  v999[*MEMORY[0x277CD7448]] = 0;
  *&v999[*MEMORY[0x277CD7450]] = 0;
  v86 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:v951 descriptor:?];
LABEL_81:
  v83 = v86;
  v934 = v967 ^ 1;
  if (!v967)
  {
    goto LABEL_84;
  }

LABEL_82:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v83 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:v951 descriptor:v999];
  }

LABEL_84:
  makeStrideBytes();
  if (v1012[*MEMORY[0x277CD73E0]])
  {
    ++*&v1012[*MEMORY[0x277CD7498]];
  }

  v1445[0] = v1012;
  [v947 encodeToMPSCommandEncoder:v957 commandBuffer:v951 sourceArrays:objc_msgSend(MEMORY[0x277CBEA60] resultState:"arrayWithObjects:count:" destinationArray:v1445 kernelDAGObject:{1, v824), 0, v83, 0}];
  v956 = v83;
  if (!v985)
  {
    goto LABEL_304;
  }

  v90 = *(v970 + 8);
  if (v90 > 285212703)
  {
    v91 = MEMORY[0x277CD73C8];
    v92 = v959;
    v93 = v967;
    if (v90 <= 536870915)
    {
      if (v90 > 301989895)
      {
        if (v90 == 301989896)
        {
          v94 = 512;
          v95 = *(v959 + 8);
          if (v95 <= 285212703)
          {
            goto LABEL_147;
          }
        }

        else
        {
          if (v90 != 335544328)
          {
            goto LABEL_168;
          }

          v94 = 544;
          v95 = *(v959 + 8);
          if (v95 <= 285212703)
          {
            goto LABEL_147;
          }
        }
      }

      else if (v90 == 285212704)
      {
        v94 = 416;
        v95 = *(v959 + 8);
        if (v95 <= 285212703)
        {
          goto LABEL_147;
        }
      }

      else
      {
        if (v90 != 285212736)
        {
          goto LABEL_168;
        }

        v94 = 448;
        v95 = *(v959 + 8);
        if (v95 <= 285212703)
        {
          goto LABEL_147;
        }
      }
    }

    else if (v90 <= 536870927)
    {
      if (v90 == 536870916)
      {
        v94 = 0;
        v95 = *(v959 + 8);
        if (v95 > 285212703)
        {
          goto LABEL_169;
        }

        goto LABEL_147;
      }

      if (v90 != 536870920)
      {
        goto LABEL_168;
      }

      v94 = 32;
      v95 = *(v959 + 8);
      if (v95 <= 285212703)
      {
        goto LABEL_147;
      }
    }

    else
    {
      switch(v90)
      {
        case 536870928:
          v94 = 64;
          v95 = *(v959 + 8);
          if (v95 <= 285212703)
          {
            goto LABEL_147;
          }

          break;
        case 536870944:
          v94 = 96;
          v95 = *(v959 + 8);
          if (v95 <= 285212703)
          {
            goto LABEL_147;
          }

          break;
        case 536870976:
          v94 = 128;
          v95 = *(v959 + 8);
          if (v95 <= 285212703)
          {
            goto LABEL_147;
          }

          break;
        default:
          goto LABEL_168;
      }
    }
  }

  else
  {
    v91 = MEMORY[0x277CD73C8];
    v92 = v959;
    v93 = v967;
    if (v90 <= 31)
    {
      if (v90 > 7)
      {
        if (v90 == 8)
        {
          v94 = 192;
          v95 = *(v959 + 8);
          if (v95 <= 285212703)
          {
            goto LABEL_147;
          }
        }

        else
        {
          if (v90 != 16)
          {
            goto LABEL_168;
          }

          v94 = 224;
          v95 = *(v959 + 8);
          if (v95 <= 285212703)
          {
            goto LABEL_147;
          }
        }
      }

      else if (v90 == -1879048176)
      {
        v94 = 384;
        v95 = *(v959 + 8);
        if (v95 <= 285212703)
        {
          goto LABEL_147;
        }
      }

      else
      {
        if (v90 != 4)
        {
          goto LABEL_168;
        }

        v94 = 160;
        v95 = *(v959 + 8);
        if (v95 <= 285212703)
        {
          goto LABEL_147;
        }
      }
    }

    else if (v90 <= 268435463)
    {
      if (v90 == 32)
      {
        v94 = 256;
        v95 = *(v959 + 8);
        if (v95 <= 285212703)
        {
          goto LABEL_147;
        }
      }

      else
      {
        if (v90 != 64)
        {
          goto LABEL_168;
        }

        v94 = 288;
        v95 = *(v959 + 8);
        if (v95 <= 285212703)
        {
          goto LABEL_147;
        }
      }
    }

    else
    {
      switch(v90)
      {
        case 268435464:
          v94 = 480;
          v95 = *(v959 + 8);
          if (v95 <= 285212703)
          {
            goto LABEL_147;
          }

          break;
        case 268435472:
          v94 = 320;
          v95 = *(v959 + 8);
          if (v95 <= 285212703)
          {
            goto LABEL_147;
          }

          break;
        case 268435488:
          v94 = 352;
          v95 = *(v959 + 8);
          if (v95 > 285212703)
          {
            break;
          }

LABEL_147:
          if (v95 <= 31)
          {
            if (v95 > 7)
            {
              if (v95 == 8)
              {
                v96 = 6144;
                goto LABEL_191;
              }

              if (v95 == 16)
              {
                v96 = 7168;
                goto LABEL_191;
              }
            }

            else
            {
              if (v95 == -1879048176)
              {
                v96 = 12288;
                goto LABEL_191;
              }

              if (v95 == 4)
              {
                v96 = 5120;
                goto LABEL_191;
              }
            }
          }

          else if (v95 <= 268435463)
          {
            if (v95 == 32)
            {
              v96 = 0x2000;
              goto LABEL_191;
            }

            if (v95 == 64)
            {
              v96 = 9216;
              goto LABEL_191;
            }
          }

          else
          {
            switch(v95)
            {
              case 268435464:
                v96 = 15360;
                goto LABEL_191;
              case 268435472:
                v96 = 10240;
                goto LABEL_191;
              case 268435488:
                v96 = 11264;
                goto LABEL_191;
            }
          }

          goto LABEL_190;
        default:
LABEL_168:
          v94 = 576;
          v95 = *(v92 + 8);
          if (v95 > 285212703)
          {
            break;
          }

          goto LABEL_147;
      }
    }
  }

LABEL_169:
  if (v95 <= 536870915)
  {
    if (v95 > 301989895)
    {
      if (v95 == 301989896)
      {
        v96 = 0x4000;
        goto LABEL_191;
      }

      if (v95 == 335544328)
      {
        v96 = 17408;
        goto LABEL_191;
      }
    }

    else
    {
      if (v95 == 285212704)
      {
        v96 = 13312;
        goto LABEL_191;
      }

      if (v95 == 285212736)
      {
        v96 = 14336;
        goto LABEL_191;
      }
    }
  }

  else if (v95 <= 536870927)
  {
    if (v95 == 536870916)
    {
      v96 = 0;
      goto LABEL_191;
    }

    if (v95 == 536870920)
    {
      v96 = 1024;
      goto LABEL_191;
    }
  }

  else
  {
    switch(v95)
    {
      case 536870928:
        v96 = 2048;
        goto LABEL_191;
      case 536870944:
        v96 = 3072;
        goto LABEL_191;
      case 536870976:
        v96 = 4096;
        goto LABEL_191;
    }
  }

LABEL_190:
  v96 = 18432;
LABEL_191:
  v97 = (v1009 + 1);
  if ((v93 & 1) == 0)
  {
    v97 = (v83 + *v91);
  }

  v98 = *v97;
  if (v98 > 285212703)
  {
    if (v98 <= 536870915)
    {
      if (v98 > 301989895)
      {
        if (v98 == 301989896)
        {
          v99 = 16;
          goto LABEL_237;
        }

        if (v98 == 335544328)
        {
          v99 = 17;
          goto LABEL_237;
        }
      }

      else
      {
        if (v98 == 285212704)
        {
          v99 = 13;
          goto LABEL_237;
        }

        if (v98 == 285212736)
        {
          v99 = 14;
          goto LABEL_237;
        }
      }
    }

    else if (v98 <= 536870927)
    {
      if (v98 == 536870916)
      {
        v99 = 0;
        goto LABEL_237;
      }

      if (v98 == 536870920)
      {
        v99 = 1;
        goto LABEL_237;
      }
    }

    else
    {
      switch(v98)
      {
        case 536870928:
          v99 = 2;
          goto LABEL_237;
        case 536870944:
          v99 = 3;
          goto LABEL_237;
        case 536870976:
          v99 = 4;
          goto LABEL_237;
      }
    }
  }

  else if (v98 <= 31)
  {
    if (v98 > 7)
    {
      if (v98 == 8)
      {
        v99 = 6;
        goto LABEL_237;
      }

      if (v98 == 16)
      {
        v99 = 7;
        goto LABEL_237;
      }
    }

    else
    {
      if (v98 == -1879048176)
      {
        v99 = 12;
        goto LABEL_237;
      }

      if (v98 == 4)
      {
        v99 = 5;
        goto LABEL_237;
      }
    }
  }

  else if (v98 <= 268435463)
  {
    if (v98 == 32)
    {
      v99 = 8;
      goto LABEL_237;
    }

    if (v98 == 64)
    {
      v99 = 9;
      goto LABEL_237;
    }
  }

  else
  {
    switch(v98)
    {
      case 268435464:
        v99 = 15;
        goto LABEL_237;
      case 268435472:
        v99 = 10;
        goto LABEL_237;
      case 268435488:
        v99 = 11;
        goto LABEL_237;
    }
  }

  v99 = 18;
LABEL_237:
  v100 = **(v92 + 16);
  if (*(*(v92 + 16) + 8) == v100)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v101 = *v964;
  v102 = *v92;
  __p = *v970;
  v103 = *v100;
  v104 = *(v970 + 16);
  v106 = *v104;
  v105 = v104[1];
  if (v105 != v106)
  {
    if (((v105 - v106) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v107 = 0;
  v108 = -8 * v102 + 8;
  if (-8 * v102 == -8)
  {
    v109 = 1;
    goto LABEL_249;
  }

  v110 = -8;
  if (-8 * v102 == -16)
  {
    v109 = 1;
    do
    {
LABEL_248:
      v115 = *(v107 - 8);
      v107 -= 8;
      v109 *= v115;
    }

    while (v107 != v108);
    goto LABEL_249;
  }

  v111 = ((-16 - -8 * v102) >> 3) + 1;
  v107 = -8 * (v111 & 0x3FFFFFFFFFFFFFFELL);
  v112 = 1;
  v113 = v111 & 0x3FFFFFFFFFFFFFFELL;
  v114 = 1;
  do
  {
    v112 *= *v110;
    v114 *= *(v110 - 8);
    v110 -= 16;
    v113 -= 2;
  }

  while (v113);
  v109 = v114 * v112;
  if (v111 != (v111 & 0x3FFFFFFFFFFFFFFELL))
  {
    goto LABEL_248;
  }

LABEL_249:
  if (-8 * v102 == -8)
  {
    v116 = 1;
  }

  else
  {
    if (-8 * v102)
    {
      v118 = ((0x1FFFFFFFFFFFFFFFLL * v102) & 0x1FFFFFFFFFFFFFFFLL) + 1;
      v117 = v108 - 8 * (v118 & 0x3FFFFFFFFFFFFFFELL);
      v119 = -8 * v102;
      v120 = 1;
      v121 = v118 & 0x3FFFFFFFFFFFFFFELL;
      v122 = 1;
      do
      {
        v120 *= *v119;
        v122 *= *(v119 - 8);
        v119 -= 16;
        v121 -= 2;
      }

      while (v121);
      v116 = v122 * v120;
      if (v118 == (v118 & 0x3FFFFFFFFFFFFFFELL))
      {
        goto LABEL_257;
      }
    }

    else
    {
      v116 = 1;
      v117 = -8 * v102 + 8;
    }

    do
    {
      v123 = *(v117 - 8);
      v117 -= 8;
      v116 *= v123;
    }

    while (v117);
  }

LABEL_257:
  v124 = 0;
  v1431 = 0u;
  v1432 = 0u;
  v125 = v96 | v94 | v99;
  v1429 = 0u;
  v1430 = 0u;
  v1427 = 0u;
  v1428 = 0u;
  v1425 = 0u;
  v1426 = 0u;
  v1423 = 0u;
  v1424 = 0u;
  v1421 = 0u;
  v1422 = 0u;
  v1419 = 0u;
  v1420 = 0u;
  v126 = *(v938 + 1480);
  v127 = BYTE2(v126);
  v1417 = 0u;
  v1418 = 0u;
  v1416 = 0u;
  v1415 = 0u;
  v1414 = 0u;
  v1413 = 0u;
  v1412 = 0u;
  v1411 = 0u;
  v1410 = 0u;
  v1409 = 0u;
  v1408 = 0u;
  v1407 = 0u;
  v1406 = 0u;
  v1405 = 0u;
  v1404 = 0u;
  v1403 = 0u;
  v1402 = 0u;
  v1401 = 0u;
  v1393 = v101;
  v1394 = v102;
  v1395 = v103;
  v1396 = v972;
  v1397 = __p - v102 + 1;
  v1398 = v102 - v972 - 1;
  v128 = (v109 + BYTE2(v126) - 1) / BYTE2(v126);
  v129 = 1;
  LODWORD(v130) = 1;
  v1399 = v109;
  v1400 = v116;
  v131 = v116 - 1;
  if (v116 != 1 && v128 < v126)
  {
    v132 = 4 * BYTE2(v126);
    for (j = 4; ; v132 = j * BYTE2(v126))
    {
      v128 = (v131 + v132) / v132;
      if (v132 > v116)
      {
        if (j < 2)
        {
          goto LABEL_265;
        }
      }

      else if (j < 2 || v128 * v109 >= v126)
      {
LABEL_265:
        v124 = 16;
        LODWORD(v116) = v132;
        v129 = v109;
        v130 = (v131 + v132) / v132;
        break;
      }

      j >>= 1;
    }
  }

  v930 = v129;
  v1434 = v116;
  v1433 = v130;
  *&v134 = -1;
  *(&v134 + 1) = -1;
  v1392 = v134;
  v1391 = v134;
  v1390 = v134;
  v1387 = v134;
  v1388 = v967 | (2 * v961) | (32 * (__p - v102 + 1)) | v124;
  v1389 = v125;
  v135 = [*(v954 + 16) count] | 0x10000;
  v136 = MEMORY[0x277CD7370];
  v137 = *(v949 + *MEMORY[0x277CD7370]);
  *&v1392 = v135;
  v828 = *(v949 + *MEMORY[0x277CD7360]);
  v831 = *(v949 + *MEMORY[0x277CD7368]);
  v825 = *(v954 + 232);
  MPSLibrary::CreateUberShaderKey();
  v138 = *(v949 + *v136);
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  v140 = MEMORY[0x277CD73D0];
  if (!PipelineStateForMPSKey)
  {
    v149 = -1;
    goto LABEL_621;
  }

  [v957 setComputePipelineState:{PipelineStateForMPSKey, v825, v828, v831, 0, 0}];
  MPSLibrary::ReleaseComputeState();
  MPSLibrary::ReleaseMPSKey();
  MPSSetNDArraysOnComputeEncoder(v957, v954, 4, 0, 0);
  v141 = *(v959 + 16);
  v143 = *v141;
  v142 = v141[1];
  if (v142 != v143)
  {
    if (((v142 - v143) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v978 = xmmword_239B0A0D0;
  v1018 = 0u;
  v974 = 0u;
  v976 = 0u;
  if (v102 - v972 < v102)
  {
    v144 = -v972;
    v145 = v957;
    do
    {
      v147 = (v102 + v144) & 0xF;
      v1384[0] = v978;
      v1384[1] = v1018;
      v1384[2] = v974;
      v1384[3] = v976;
      if (*(v1384 + v147) == 1)
      {
        v148 = *(8 * __p + 8 * v144);
        v1380 = v978;
        v1381 = v1018;
        v1382 = v974;
        v1383 = v976;
        *(&v1380 + v147) = v148;
        v976 = v1383;
        v974 = v1382;
        v1018 = v1381;
        v978 = v1380;
      }

      v146 = __CFADD__(v144++, 1);
    }

    while (!v146);
  }

  else
  {
    v145 = v957;
  }

  makeStrideBytes();
  v150 = *v140;
  v151.i64[0] = 0x100000001;
  v151.i64[1] = 0x100000001;
  v152 = vceqq_s32(*&v952[v150], v151);
  v153.i64[0] = v152.i32[0];
  v153.i64[1] = v152.i32[1];
  v154 = v153;
  v155 = vceqq_s32(*&v952[v150 + 16], v151);
  v153.i64[0] = v155.i32[0];
  v153.i64[1] = v155.i32[1];
  v156 = v153;
  v157 = vceqq_s32(*&v952[v150 + 32], v151);
  v153.i64[0] = v157.i32[0];
  v153.i64[1] = v157.i32[1];
  v158 = v153;
  v159 = vceqq_s32(*&v952[v150 + 48], v151);
  v153.i64[0] = v159.i32[0];
  v153.i64[1] = v159.i32[1];
  v160 = v153;
  v153.i64[0] = v152.i32[2];
  v153.i64[1] = v152.i32[3];
  v161 = v153;
  v153.i64[0] = v155.i32[2];
  v153.i64[1] = v155.i32[3];
  v162 = v153;
  v153.i64[0] = v157.i32[2];
  v153.i64[1] = v157.i32[3];
  v163 = v153;
  v153.i64[0] = v159.i32[2];
  v153.i64[1] = v159.i32[3];
  v164 = vbicq_s8(v1443, v153);
  v165 = vbicq_s8(v1441, v163);
  v166 = vbicq_s8(v1439, v162);
  v167 = vbicq_s8(v1437, v161);
  v168 = vbicq_s8(v1442, v160);
  v169 = vbicq_s8(v1440, v158);
  v170 = vbicq_s8(v1438, v156);
  v171 = vbicq_s8(v1436, v154);
  v172 = MEMORY[0x277CD73D8];
  v173 = *MEMORY[0x277CD73D8];
  v174 = *&v952[v173];
  v175 = *&v952[*MEMORY[0x277CD73C8]];
  v87 = v954;
  if ((v175 & 0xFFF8) != 0)
  {
    v176 = v175 >> 3;
    v1379[0] = v171;
    v1379[1] = v167;
    v1379[2] = v170;
    v1379[3] = v166;
    v1379[4] = v169;
    v1379[5] = v165;
    v1379[6] = v168;
    v1379[7] = v164;
    v177 = *(v1379 + (v174 & 0xF));
    v1378[0] = v171;
    v1378[1] = v167;
    v1378[2] = v170;
    v1378[3] = v166;
    v1378[4] = v169;
    v1378[5] = v165;
    v1378[6] = v168;
    v1378[7] = v164;
    v178 = *(v1378 + (BYTE1(v174) & 0xF));
    v1377[0] = v171;
    v1377[1] = v167;
    v1377[2] = v170;
    v1377[3] = v166;
    v1377[4] = v169;
    v1377[5] = v165;
    v1377[6] = v168;
    v1377[7] = v164;
    v179 = *(v1377 + (BYTE2(v174) & 0xF)) / v176;
    v1376[0] = v171;
    v1376[1] = v167;
    v1376[2] = v170;
    v1376[3] = v166;
    v1376[4] = v169;
    v1376[5] = v165;
    v1376[6] = v168;
    v1376[7] = v164;
    v180 = *(v1376 + (BYTE3(v174) & 0xF));
    v1375[0] = v171;
    v1375[1] = v167;
    v1375[2] = v170;
    v1375[3] = v166;
    v1375[4] = v169;
    v1375[5] = v165;
    v1375[6] = v168;
    v1375[7] = v164;
    v181 = *(v1375 + (BYTE4(v174) & 0xF)) / v176;
    v1374[0] = v171;
    v1374[1] = v167;
    v1374[2] = v170;
    v1374[3] = v166;
    v1374[4] = v169;
    v1374[5] = v165;
    v1374[6] = v168;
    v1374[7] = v164;
    v182 = *(v1374 + (BYTE5(v174) & 0xF));
    v1373[0] = v171;
    v1373[1] = v167;
    v1373[2] = v170;
    v1373[3] = v166;
    v1373[4] = v169;
    v1373[5] = v165;
    v1373[6] = v168;
    v1373[7] = v164;
    v183 = *(v1373 + (BYTE6(v174) & 0xF)) / v176;
    v1372[0] = v171;
    v1372[1] = v167;
    v1372[2] = v170;
    v1372[3] = v166;
    v1372[4] = v169;
    v1372[5] = v165;
    v1372[6] = v168;
    v1372[7] = v164;
    v184 = *(v1372 + (BYTE7(v174) & 0xF));
    v1371[0] = v171;
    v1371[1] = v167;
    v1371[2] = v170;
    v1371[3] = v166;
    v1371[4] = v169;
    v1371[5] = v165;
    v1371[6] = v168;
    v1371[7] = v164;
    v185 = *(v1371 + (BYTE8(v174) & 0xF)) / v176;
    v1370[0] = v171;
    v1370[1] = v167;
    v1370[2] = v170;
    v1370[3] = v166;
    v1370[4] = v169;
    v1370[5] = v165;
    v1370[6] = v168;
    v1370[7] = v164;
    v186 = *(v1370 + (BYTE9(v174) & 0xF));
    v1369[0] = v171;
    v1369[1] = v167;
    v1369[2] = v170;
    v1369[3] = v166;
    v1369[4] = v169;
    v1369[5] = v165;
    v1369[6] = v168;
    v1369[7] = v164;
    v187 = *(v1369 + (BYTE10(v174) & 0xF)) / v176;
    v1368[0] = v171;
    v1368[1] = v167;
    v1368[2] = v170;
    v1368[3] = v166;
    v1368[4] = v169;
    v1368[5] = v165;
    v1368[6] = v168;
    v1368[7] = v164;
    v188 = *(v1368 + (BYTE11(v174) & 0xF));
    v1367[0] = v171;
    v1367[1] = v167;
    v1367[2] = v170;
    v1367[3] = v166;
    v1367[4] = v169;
    v1367[5] = v165;
    v1367[6] = v168;
    v1367[7] = v164;
    v189 = *(v1367 + (BYTE12(v174) & 0xF)) / v176;
    v1366[0] = v171;
    v1366[1] = v167;
    v1366[2] = v170;
    v1366[3] = v166;
    v1366[4] = v169;
    v1366[5] = v165;
    v1366[6] = v168;
    v1366[7] = v164;
    v190 = *(v1366 + (BYTE13(v174) & 0xF));
    v1365[0] = v171;
    v1365[1] = v167;
    v1365[2] = v170;
    v1365[3] = v166;
    v1365[4] = v169;
    v1365[5] = v165;
    v1365[6] = v168;
    v1365[7] = v164;
    v191 = *(v1365 + (BYTE14(v174) & 0xF)) / v176;
    v1364[0] = v171;
    v1364[1] = v167;
    v1364[2] = v170;
    v1364[3] = v166;
    v1364[4] = v169;
    v1364[5] = v165;
    v1364[6] = v168;
    v1364[7] = v164;
    v192.i64[0] = v191;
    v192.i64[1] = *(v1364 + (HIBYTE(v174) & 0xF)) / v176;
    v981 = v192;
    v192.i64[0] = v189;
    v192.i64[1] = v190 / v176;
    v926 = v192;
    v192.i64[0] = v187;
    v192.i64[1] = v188 / v176;
    v918 = v192;
    v192.i64[0] = v185;
    v192.i64[1] = v186 / v176;
    v916 = v192;
    v192.i64[0] = v183;
    v192.i64[1] = v184 / v176;
    v914 = v192;
    v192.i64[0] = v181;
    v192.i64[1] = v182 / v176;
    v910 = v192;
    v192.i64[0] = v179;
    v192.i64[1] = v180 / v176;
    v906 = v192;
    v193.i64[0] = v177 / v176;
    v193.i64[1] = v178 / v176;
  }

  else
  {
    v1363[0] = v171;
    v1363[1] = v167;
    v1363[2] = v170;
    v1363[3] = v166;
    v1363[4] = v169;
    v1363[5] = v165;
    v1363[6] = v168;
    v1363[7] = v164;
    v1362[0] = v171;
    v1362[1] = v167;
    v1362[2] = v170;
    v1362[3] = v166;
    v1362[4] = v169;
    v1362[5] = v165;
    v1362[6] = v168;
    v1362[7] = v164;
    v1361[0] = v171;
    v1361[1] = v167;
    v1361[2] = v170;
    v1361[3] = v166;
    v1361[4] = v169;
    v1361[5] = v165;
    v1361[6] = v168;
    v1361[7] = v164;
    v1360[0] = v171;
    v1360[1] = v167;
    v1360[2] = v170;
    v1360[3] = v166;
    v1360[4] = v169;
    v1360[5] = v165;
    v1360[6] = v168;
    v1360[7] = v164;
    v1359[0] = v171;
    v1359[1] = v167;
    v1359[2] = v170;
    v1359[3] = v166;
    v1359[4] = v169;
    v1359[5] = v165;
    v1359[6] = v168;
    v1359[7] = v164;
    v1358[0] = v171;
    v1358[1] = v167;
    v1358[2] = v170;
    v1358[3] = v166;
    v1358[4] = v169;
    v1358[5] = v165;
    v1358[6] = v168;
    v1358[7] = v164;
    v1357[0] = v171;
    v1357[1] = v167;
    v1357[2] = v170;
    v1357[3] = v166;
    v1357[4] = v169;
    v1357[5] = v165;
    v1357[6] = v168;
    v1357[7] = v164;
    v1356[0] = v171;
    v1356[1] = v167;
    v1356[2] = v170;
    v1356[3] = v166;
    v1356[4] = v169;
    v1356[5] = v165;
    v1356[6] = v168;
    v1356[7] = v164;
    v1355[0] = v171;
    v1355[1] = v167;
    v1355[2] = v170;
    v1355[3] = v166;
    v1355[4] = v169;
    v1355[5] = v165;
    v1355[6] = v168;
    v1355[7] = v164;
    v1354[0] = v171;
    v1354[1] = v167;
    v1354[2] = v170;
    v1354[3] = v166;
    v1354[4] = v169;
    v1354[5] = v165;
    v1354[6] = v168;
    v1354[7] = v164;
    v1353[0] = v171;
    v1353[1] = v167;
    v1353[2] = v170;
    v1353[3] = v166;
    v1353[4] = v169;
    v1353[5] = v165;
    v1353[6] = v168;
    v1353[7] = v164;
    v1352[0] = v171;
    v1352[1] = v167;
    v1352[2] = v170;
    v1352[3] = v166;
    v1352[4] = v169;
    v1352[5] = v165;
    v1352[6] = v168;
    v1352[7] = v164;
    v1351[0] = v171;
    v1351[1] = v167;
    v1351[2] = v170;
    v1351[3] = v166;
    v1351[4] = v169;
    v1351[5] = v165;
    v1351[6] = v168;
    v1351[7] = v164;
    v1350[0] = v171;
    v1350[1] = v167;
    v1350[2] = v170;
    v1350[3] = v166;
    v1350[4] = v169;
    v1350[5] = v165;
    v1350[6] = v168;
    v1350[7] = v164;
    v1349[0] = v171;
    v1349[1] = v167;
    v1349[2] = v170;
    v1349[3] = v166;
    v1349[4] = v169;
    v1349[5] = v165;
    v1349[6] = v168;
    v1349[7] = v164;
    v1348[0] = v171;
    v1348[1] = v167;
    v1348[2] = v170;
    v1348[3] = v166;
    v1348[4] = v169;
    v1348[5] = v165;
    v1348[6] = v168;
    v1348[7] = v164;
    v194.i64[0] = *(v1349 + (BYTE14(v174) & 0xF));
    v195.i64[0] = *(v1351 + (BYTE12(v174) & 0xF));
    v194.i64[1] = *(v1348 + (HIBYTE(v174) & 0xF));
    v981 = v194;
    v195.i64[1] = *(v1350 + (BYTE13(v174) & 0xF));
    v926 = v195;
    v194.i64[0] = *(v1353 + (BYTE10(v174) & 0xF));
    v194.i64[1] = *(v1352 + (BYTE11(v174) & 0xF));
    v918 = v194;
    v194.i64[0] = *(v1355 + (BYTE8(v174) & 0xF));
    v194.i64[1] = *(v1354 + (BYTE9(v174) & 0xF));
    v916 = v194;
    v194.i64[0] = *(v1357 + (BYTE6(v174) & 0xF));
    v194.i64[1] = *(v1356 + (BYTE7(v174) & 0xF));
    v914 = v194;
    v194.i64[0] = *(v1359 + (BYTE4(v174) & 0xF));
    v194.i64[1] = *(v1358 + (BYTE5(v174) & 0xF));
    v910 = v194;
    v194.i64[0] = *(v1361 + (BYTE2(v174) & 0xF));
    v194.i64[1] = *(v1360 + (BYTE3(v174) & 0xF));
    v906 = v194;
    v193.i64[0] = *(v1363 + (v174 & 0xF));
    v193.i64[1] = *(v1362 + (BYTE1(v174) & 0xF));
  }

  v904 = v193;
  v196 = *&v952[v173];
  v197 = &v952[v150];
  v198 = *v197;
  v199 = v197[1];
  v200 = v197[2];
  v1347 = v197[3];
  v1346[2] = v200;
  v1346[1] = v199;
  v1346[0] = v198;
  v169.i32[0] = *(v1346 + (v196 & 0xF));
  v898 = v169;
  v1345[3] = v1347;
  v1345[2] = v200;
  v1345[1] = v199;
  v1345[0] = v198;
  v169.i32[0] = *(v1345 + (BYTE1(v196) & 0xF));
  v924 = v169;
  v1344[3] = v1347;
  v1344[2] = v200;
  v1344[1] = v199;
  v1344[0] = v198;
  v169.i32[0] = *(v1344 + (BYTE2(v196) & 0xF));
  v996 = v169;
  v1343[3] = v1347;
  v1343[2] = v200;
  v1343[1] = v199;
  v1343[0] = v198;
  v169.i32[0] = *(v1343 + (BYTE3(v196) & 0xF));
  *__pa = v169;
  v1342[3] = v1347;
  v1342[2] = v200;
  v1342[1] = v199;
  v1342[0] = v198;
  v169.i32[0] = *(v1342 + (BYTE4(v196) & 0xF));
  v900 = v169;
  v1341[3] = v1347;
  v1341[2] = v200;
  v1341[1] = v199;
  v1341[0] = v198;
  v169.i32[0] = *(v1341 + (BYTE5(v196) & 0xF));
  v922 = v169;
  v1340[3] = v1347;
  v1340[2] = v200;
  v1340[1] = v199;
  v1340[0] = v198;
  v169.i32[0] = *(v1340 + (BYTE6(v196) & 0xF));
  v986 = v169;
  v1339[3] = v1347;
  v1339[2] = v200;
  v1339[1] = v199;
  v1339[0] = v198;
  v169.i32[0] = *(v1339 + (BYTE7(v196) & 0xF));
  v1000 = v169;
  v1338[3] = v1347;
  v1338[2] = v200;
  v1338[1] = v199;
  v1338[0] = v198;
  v169.i32[0] = *(v1338 + (BYTE8(v196) & 0xF));
  v896 = v169;
  v1337[3] = v1347;
  v1337[2] = v200;
  v1337[1] = v199;
  v1337[0] = v198;
  v169.i32[0] = *(v1337 + (BYTE9(v196) & 0xF));
  v912 = v169;
  v1336[3] = v1347;
  v1336[2] = v200;
  v1336[1] = v199;
  v1336[0] = v198;
  v169.i32[0] = *(v1336 + (BYTE10(v196) & 0xF));
  v920 = v169;
  v1335[3] = v1347;
  v1335[2] = v200;
  v1335[1] = v199;
  v1335[0] = v198;
  v169.i32[0] = *(v1335 + (BYTE11(v196) & 0xF));
  v991 = v169;
  v1334[3] = v1347;
  v1334[2] = v200;
  v1334[1] = v199;
  v1334[0] = v198;
  v169.i32[0] = *(v1334 + (BYTE12(v196) & 0xF));
  v894 = v169;
  v1333[3] = v1347;
  v1333[2] = v200;
  v1333[1] = v199;
  v1333[0] = v198;
  v169.i32[0] = *(v1333 + (BYTE13(v196) & 0xF));
  v902 = v169;
  v1332[3] = v1347;
  v1332[2] = v200;
  v1332[1] = v199;
  v1332[0] = v198;
  v169.i32[0] = *(v1332 + (BYTE14(v196) & 0xF));
  v908 = v169;
  v1331[3] = v1347;
  v1331[2] = v200;
  v1331[1] = v199;
  v1331[0] = v198;
  v198.i32[0] = *(v1331 + (HIBYTE(v196) & 0xF));
  v928 = v198;
  makeStrideBytes();
  v201 = &v1012[*v140];
  v202.i64[0] = 0x100000001;
  v202.i64[1] = 0x100000001;
  v203 = vceqq_s32(*v201, v202);
  v204.i64[0] = v203.i32[0];
  v204.i64[1] = v203.i32[1];
  v205 = v204;
  v206 = vceqq_s32(v201[1], v202);
  v204.i64[0] = v206.i32[0];
  v204.i64[1] = v206.i32[1];
  v207 = v204;
  v208 = vceqq_s32(v201[2], v202);
  v204.i64[0] = v208.i32[0];
  v204.i64[1] = v208.i32[1];
  v209 = v204;
  v210 = vceqq_s32(v201[3], v202);
  v204.i64[0] = v210.i32[0];
  v204.i64[1] = v210.i32[1];
  v211 = v204;
  v204.i64[0] = v203.i32[2];
  v204.i64[1] = v203.i32[3];
  v212 = v204;
  v204.i64[0] = v206.i32[2];
  v204.i64[1] = v206.i32[3];
  v213 = v204;
  v204.i64[0] = v208.i32[2];
  v204.i64[1] = v208.i32[3];
  v214 = v204;
  v204.i64[0] = v210.i32[2];
  v204.i64[1] = v210.i32[3];
  v215 = vbicq_s8(v1443, v204);
  v216 = vbicq_s8(v1441, v214);
  v217 = vbicq_s8(v1439, v213);
  v218 = vbicq_s8(v1437, v212);
  v219 = vbicq_s8(v1442, v211);
  v220 = vbicq_s8(v1440, v209);
  v221 = vbicq_s8(v1438, v207);
  v222 = *&v1012[*MEMORY[0x277CD73C8]];
  v223 = *&v1012[*v172];
  v224 = BYTE1(*&v1012[*v172]);
  v225 = BYTE2(*&v1012[*v172]);
  v226 = BYTE3(*&v1012[*v172]);
  v227 = BYTE4(*&v1012[*v172]);
  v228 = WORD2(*&v1012[*v172]) >> 8;
  v229 = BYTE6(*&v1012[*v172]);
  v230 = HIBYTE(*&v1012[*v172]);
  v231 = *&v1012[*v172 + 8];
  v232 = BYTE1(*&v1012[*v172 + 8]);
  v233 = BYTE2(*&v1012[*v172 + 8]);
  v234 = BYTE3(*&v1012[*v172 + 8]);
  v235 = BYTE12(*&v1012[*v172]);
  v236 = WORD6(*&v1012[*v172]) >> 8;
  v237 = vbicq_s8(v1436, v205);
  v238 = BYTE14(*&v1012[*v172]);
  v239 = HIBYTE(*&v1012[*v172]);
  if ((v222 & 0xFFF8) != 0)
  {
    v240 = v222 >> 3;
    v1330[0] = v237;
    v1330[1] = v218;
    v1330[2] = v221;
    v1330[3] = v217;
    v1330[4] = v220;
    v1330[5] = v216;
    v1330[6] = v219;
    v1330[7] = v215;
    v241 = *(v1330 + (v223 & 0xF)) / v240;
    v1329[0] = v237;
    v1329[1] = v218;
    v1329[2] = v221;
    v1329[3] = v217;
    v1329[4] = v220;
    v1329[5] = v216;
    v1329[6] = v219;
    v1329[7] = v215;
    v242 = *(v1329 + (v224 & 0xF));
    v1328[0] = v237;
    v1328[1] = v218;
    v1328[2] = v221;
    v1328[3] = v217;
    v1328[4] = v220;
    v1328[5] = v216;
    v1328[6] = v219;
    v1328[7] = v215;
    v243 = *(v1328 + (v225 & 0xF)) / v240;
    v1327[0] = v237;
    v1327[1] = v218;
    v1327[2] = v221;
    v1327[3] = v217;
    v1327[4] = v220;
    v1327[5] = v216;
    v1327[6] = v219;
    v1327[7] = v215;
    v244 = *(v1327 + (v226 & 0xF)) / v240;
    v1326[0] = v237;
    v1326[1] = v218;
    v1326[2] = v221;
    v1326[3] = v217;
    v1326[4] = v220;
    v1326[5] = v216;
    v1326[6] = v219;
    v1326[7] = v215;
    v245 = *(v1326 + (v227 & 0xF)) / v240;
    v1325[0] = v237;
    v1325[1] = v218;
    v1325[2] = v221;
    v1325[3] = v217;
    v1325[4] = v220;
    v1325[5] = v216;
    v1325[6] = v219;
    v1325[7] = v215;
    v246 = *(v1325 + (v228 & 0xF));
    v1324[0] = v237;
    v1324[1] = v218;
    v1324[2] = v221;
    v1324[3] = v217;
    v1324[4] = v220;
    v1324[5] = v216;
    v1324[6] = v219;
    v1324[7] = v215;
    v247 = *(v1324 + (v229 & 0xF));
    v1323[0] = v237;
    v1323[1] = v218;
    v1323[2] = v221;
    v1323[3] = v217;
    v1323[4] = v220;
    v1323[5] = v216;
    v1323[6] = v219;
    v1323[7] = v215;
    v248 = *(v1323 + (v230 & 0xF)) / v240;
    v1322[0] = v237;
    v1322[1] = v218;
    v1322[2] = v221;
    v1322[3] = v217;
    v1322[4] = v220;
    v1322[5] = v216;
    v1322[6] = v219;
    v1322[7] = v215;
    v249 = *(v1322 + (v231 & 0xF)) / v240;
    v1321[0] = v237;
    v1321[1] = v218;
    v1321[2] = v221;
    v1321[3] = v217;
    v1321[4] = v220;
    v1321[5] = v216;
    v1321[6] = v219;
    v1321[7] = v215;
    v250 = *(v1321 + (v232 & 0xF)) / v240;
    v1320[0] = v237;
    v1320[1] = v218;
    v1320[2] = v221;
    v1320[3] = v217;
    v1320[4] = v220;
    v1320[5] = v216;
    v1320[6] = v219;
    v1320[7] = v215;
    v251 = *(v1320 + (v233 & 0xF)) / v240;
    v1319[0] = v237;
    v1319[1] = v218;
    v1319[2] = v221;
    v1319[3] = v217;
    v1319[4] = v220;
    v1319[5] = v216;
    v1319[6] = v219;
    v1319[7] = v215;
    v252 = *(v1319 + (v234 & 0xF));
    v1318[0] = v237;
    v1318[1] = v218;
    v1318[2] = v221;
    v1318[3] = v217;
    v1318[4] = v220;
    v1318[5] = v216;
    v1318[6] = v219;
    v1318[7] = v215;
    v253 = *(v1318 + (v235 & 0xF)) / v240;
    v1317[0] = v237;
    v1317[1] = v218;
    v1317[2] = v221;
    v1317[3] = v217;
    v1317[4] = v220;
    v1317[5] = v216;
    v1317[6] = v219;
    v1317[7] = v215;
    v254 = *(v1317 + (v236 & 0xF)) / v240;
    v1316[0] = v237;
    v1316[1] = v218;
    v1316[2] = v221;
    v1316[3] = v217;
    v1316[4] = v220;
    v1316[5] = v216;
    v1316[6] = v219;
    v1316[7] = v215;
    v255 = *(v1316 + (v238 & 0xF)) / v240;
    v1315[0] = v237;
    v1315[1] = v218;
    v1315[2] = v221;
    v1315[3] = v217;
    v1315[4] = v220;
    v1315[5] = v216;
    v1315[6] = v219;
    v1315[7] = v215;
    *&v256 = v255;
    *(&v256 + 1) = *(v1315 + (v239 & 0xF)) / v240;
    v892 = v256;
    *&v256 = v253;
    *(&v256 + 1) = v254;
    v890 = v256;
    *&v256 = v251;
    *(&v256 + 1) = v252 / v240;
    v888 = v256;
    *&v256 = v249;
    *(&v256 + 1) = v250;
    v886 = v256;
    *&v256 = v247 / v240;
    *(&v256 + 1) = v248;
    v884 = v256;
    *&v256 = v245;
    *(&v256 + 1) = v246 / v240;
    v882 = v256;
    *&v256 = v243;
    *(&v256 + 1) = v244;
    v880 = v256;
    *&v257 = v241;
    *(&v257 + 1) = v242 / v240;
  }

  else
  {
    v1314[0] = v237;
    v1314[1] = v218;
    v1314[2] = v221;
    v1314[3] = v217;
    v1314[4] = v220;
    v1314[5] = v216;
    v1314[6] = v219;
    v1314[7] = v215;
    v1313[0] = v237;
    v1313[1] = v218;
    v1313[2] = v221;
    v1313[3] = v217;
    v1313[4] = v220;
    v1313[5] = v216;
    v1313[6] = v219;
    v1313[7] = v215;
    v1312[0] = v237;
    v1312[1] = v218;
    v1312[2] = v221;
    v1312[3] = v217;
    v1312[4] = v220;
    v1312[5] = v216;
    v1312[6] = v219;
    v1312[7] = v215;
    v1311[0] = v237;
    v1311[1] = v218;
    v1311[2] = v221;
    v1311[3] = v217;
    v1311[4] = v220;
    v1311[5] = v216;
    v1311[6] = v219;
    v1311[7] = v215;
    v1310[0] = v237;
    v1310[1] = v218;
    v1310[2] = v221;
    v1310[3] = v217;
    v1310[4] = v220;
    v1310[5] = v216;
    v1310[6] = v219;
    v1310[7] = v215;
    v1309[0] = v237;
    v1309[1] = v218;
    v1309[2] = v221;
    v1309[3] = v217;
    v1309[4] = v220;
    v1309[5] = v216;
    v1309[6] = v219;
    v1309[7] = v215;
    v1308[0] = v237;
    v1308[1] = v218;
    v1308[2] = v221;
    v1308[3] = v217;
    v1308[4] = v220;
    v1308[5] = v216;
    v1308[6] = v219;
    v1308[7] = v215;
    v1307[0] = v237;
    v1307[1] = v218;
    v1307[2] = v221;
    v1307[3] = v217;
    v1307[4] = v220;
    v1307[5] = v216;
    v1307[6] = v219;
    v1307[7] = v215;
    v1306[0] = v237;
    v1306[1] = v218;
    v1306[2] = v221;
    v1306[3] = v217;
    v1306[4] = v220;
    v1306[5] = v216;
    v1306[6] = v219;
    v1306[7] = v215;
    v1305[0] = v237;
    v1305[1] = v218;
    v1305[2] = v221;
    v1305[3] = v217;
    v1305[4] = v220;
    v1305[5] = v216;
    v1305[6] = v219;
    v1305[7] = v215;
    v1304[0] = v237;
    v1304[1] = v218;
    v1304[2] = v221;
    v1304[3] = v217;
    v1304[4] = v220;
    v1304[5] = v216;
    v1304[6] = v219;
    v1304[7] = v215;
    v1303[0] = v237;
    v1303[1] = v218;
    v1303[2] = v221;
    v1303[3] = v217;
    v1303[4] = v220;
    v1303[5] = v216;
    v1303[6] = v219;
    v1303[7] = v215;
    v1302[0] = v237;
    v1302[1] = v218;
    v1302[2] = v221;
    v1302[3] = v217;
    v1302[4] = v220;
    v1302[5] = v216;
    v1302[6] = v219;
    v1302[7] = v215;
    v1301[0] = v237;
    v1301[1] = v218;
    v1301[2] = v221;
    v1301[3] = v217;
    v1301[4] = v220;
    v1301[5] = v216;
    v1301[6] = v219;
    v1301[7] = v215;
    v1300[0] = v237;
    v1300[1] = v218;
    v1300[2] = v221;
    v1300[3] = v217;
    v1300[4] = v220;
    v1300[5] = v216;
    v1300[6] = v219;
    v1300[7] = v215;
    v1299[0] = v237;
    v1299[1] = v218;
    v1299[2] = v221;
    v1299[3] = v217;
    v1299[4] = v220;
    v1299[5] = v216;
    v1299[6] = v219;
    v1299[7] = v215;
    *&v258 = *(v1300 + (v238 & 0xF));
    *&v259 = *(v1302 + (v235 & 0xF));
    *(&v258 + 1) = *(v1299 + (v239 & 0xF));
    v892 = v258;
    *(&v259 + 1) = *(v1301 + (v236 & 0xF));
    v890 = v259;
    *&v258 = *(v1304 + (v233 & 0xF));
    *(&v258 + 1) = *(v1303 + (v234 & 0xF));
    v888 = v258;
    *&v258 = *(v1306 + (v231 & 0xF));
    *(&v258 + 1) = *(v1305 + (v232 & 0xF));
    v886 = v258;
    *&v258 = *(v1308 + (v229 & 0xF));
    *(&v258 + 1) = *(v1307 + (v230 & 0xF));
    v884 = v258;
    *&v258 = *(v1310 + (v227 & 0xF));
    *(&v258 + 1) = *(v1309 + (v228 & 0xF));
    v882 = v258;
    *&v258 = *(v1312 + (v225 & 0xF));
    *(&v258 + 1) = *(v1311 + (v226 & 0xF));
    v880 = v258;
    *&v257 = *(v1314 + (v223 & 0xF));
    *(&v257 + 1) = *(v1313 + (v224 & 0xF));
  }

  v878 = v257;
  makeStrideBytes();
  v260 = *v140;
  v261.i64[0] = 0x100000001;
  v261.i64[1] = 0x100000001;
  v262 = vceqq_s32(*&v953[v260], v261);
  v263.i64[0] = v262.i32[0];
  v263.i64[1] = v262.i32[1];
  v264 = v263;
  v265 = vceqq_s32(*&v953[v260 + 16], v261);
  v263.i64[0] = v265.i32[0];
  v263.i64[1] = v265.i32[1];
  v266 = v263;
  v267 = vceqq_s32(*&v953[v260 + 32], v261);
  v263.i64[0] = v267.i32[0];
  v263.i64[1] = v267.i32[1];
  v268 = v263;
  v269 = vceqq_s32(*&v953[v260 + 48], v261);
  v263.i64[0] = v269.i32[0];
  v263.i64[1] = v269.i32[1];
  v270 = v263;
  v263.i64[0] = v262.i32[2];
  v263.i64[1] = v262.i32[3];
  v271 = v263;
  v263.i64[0] = v265.i32[2];
  v263.i64[1] = v265.i32[3];
  v272 = v263;
  v263.i64[0] = v267.i32[2];
  v263.i64[1] = v267.i32[3];
  v273 = v263;
  v263.i64[0] = v269.i32[2];
  v263.i64[1] = v269.i32[3];
  v274 = vbicq_s8(v1443, v263);
  v275 = vbicq_s8(v1441, v273);
  v276 = vbicq_s8(v1439, v272);
  v277 = vbicq_s8(v1437, v271);
  v278 = vbicq_s8(v1442, v270);
  v279 = vbicq_s8(v1440, v268);
  v280 = vbicq_s8(v1438, v266);
  v281 = *v172;
  v282 = *&v953[*MEMORY[0x277CD73C8]];
  v283 = *&v953[v281];
  v284 = BYTE1(*&v953[v281]);
  v285 = BYTE2(*&v953[v281]);
  v286 = BYTE3(*&v953[v281]);
  v287 = BYTE4(*&v953[v281]);
  v288 = WORD2(*&v953[v281]) >> 8;
  v289 = BYTE6(*&v953[v281]);
  v290 = HIBYTE(*&v953[v281]);
  v291 = *&v953[v281 + 8];
  v292 = BYTE1(*&v953[v281 + 8]);
  v293 = BYTE2(*&v953[v281 + 8]);
  v294 = BYTE3(*&v953[v281 + 8]);
  v295 = BYTE12(*&v953[v281]);
  v296 = WORD6(*&v953[v281]) >> 8;
  v297 = vbicq_s8(v1436, v264);
  v298 = BYTE14(*&v953[v281]);
  v299 = HIBYTE(*&v953[v281]);
  if ((v282 & 0xFFF8) != 0)
  {
    v300 = v282 >> 3;
    v1298[0] = v297;
    v1298[1] = v277;
    v1298[2] = v280;
    v1298[3] = v276;
    v1298[4] = v279;
    v1298[5] = v275;
    v1298[6] = v278;
    v1298[7] = v274;
    v301 = *(v1298 + (v283 & 0xF)) / v300;
    v1297[0] = v297;
    v1297[1] = v277;
    v1297[2] = v280;
    v1297[3] = v276;
    v1297[4] = v279;
    v1297[5] = v275;
    v1297[6] = v278;
    v1297[7] = v274;
    v302 = *(v1297 + (v284 & 0xF));
    v1296[0] = v297;
    v1296[1] = v277;
    v1296[2] = v280;
    v1296[3] = v276;
    v1296[4] = v279;
    v1296[5] = v275;
    v1296[6] = v278;
    v1296[7] = v274;
    v303 = *(v1296 + (v285 & 0xF)) / v300;
    v1295[0] = v297;
    v1295[1] = v277;
    v1295[2] = v280;
    v1295[3] = v276;
    v1295[4] = v279;
    v1295[5] = v275;
    v1295[6] = v278;
    v1295[7] = v274;
    v304 = *(v1295 + (v286 & 0xF)) / v300;
    v1294[0] = v297;
    v1294[1] = v277;
    v1294[2] = v280;
    v1294[3] = v276;
    v1294[4] = v279;
    v1294[5] = v275;
    v1294[6] = v278;
    v1294[7] = v274;
    v305 = *(v1294 + (v287 & 0xF)) / v300;
    v1293[0] = v297;
    v1293[1] = v277;
    v1293[2] = v280;
    v1293[3] = v276;
    v1293[4] = v279;
    v1293[5] = v275;
    v1293[6] = v278;
    v1293[7] = v274;
    v306 = *(v1293 + (v288 & 0xF));
    v1292[0] = v297;
    v1292[1] = v277;
    v1292[2] = v280;
    v1292[3] = v276;
    v1292[4] = v279;
    v1292[5] = v275;
    v1292[6] = v278;
    v1292[7] = v274;
    v307 = *(v1292 + (v289 & 0xF));
    v1291[0] = v297;
    v1291[1] = v277;
    v1291[2] = v280;
    v1291[3] = v276;
    v1291[4] = v279;
    v1291[5] = v275;
    v1291[6] = v278;
    v1291[7] = v274;
    v308 = *(v1291 + (v290 & 0xF)) / v300;
    v1290[0] = v297;
    v1290[1] = v277;
    v1290[2] = v280;
    v1290[3] = v276;
    v1290[4] = v279;
    v1290[5] = v275;
    v1290[6] = v278;
    v1290[7] = v274;
    v309 = *(v1290 + (v291 & 0xF)) / v300;
    v1289[0] = v297;
    v1289[1] = v277;
    v1289[2] = v280;
    v1289[3] = v276;
    v1289[4] = v279;
    v1289[5] = v275;
    v1289[6] = v278;
    v1289[7] = v274;
    v310 = *(v1289 + (v292 & 0xF)) / v300;
    v1288[0] = v297;
    v1288[1] = v277;
    v1288[2] = v280;
    v1288[3] = v276;
    v1288[4] = v279;
    v1288[5] = v275;
    v1288[6] = v278;
    v1288[7] = v274;
    v311 = *(v1288 + (v293 & 0xF)) / v300;
    v1287[0] = v297;
    v1287[1] = v277;
    v1287[2] = v280;
    v1287[3] = v276;
    v1287[4] = v279;
    v1287[5] = v275;
    v1287[6] = v278;
    v1287[7] = v274;
    v312 = *(v1287 + (v294 & 0xF));
    v1286[0] = v297;
    v1286[1] = v277;
    v1286[2] = v280;
    v1286[3] = v276;
    v1286[4] = v279;
    v1286[5] = v275;
    v1286[6] = v278;
    v1286[7] = v274;
    v313 = *(v1286 + (v295 & 0xF)) / v300;
    v1285[0] = v297;
    v1285[1] = v277;
    v1285[2] = v280;
    v1285[3] = v276;
    v1285[4] = v279;
    v1285[5] = v275;
    v1285[6] = v278;
    v1285[7] = v274;
    v314 = *(v1285 + (v296 & 0xF)) / v300;
    v1284[0] = v297;
    v1284[1] = v277;
    v1284[2] = v280;
    v1284[3] = v276;
    v1284[4] = v279;
    v1284[5] = v275;
    v1284[6] = v278;
    v1284[7] = v274;
    v315 = *(v1284 + (v298 & 0xF)) / v300;
    v1283[0] = v297;
    v1283[1] = v277;
    v1283[2] = v280;
    v1283[3] = v276;
    v1283[4] = v279;
    v1283[5] = v275;
    v1283[6] = v278;
    v1283[7] = v274;
    v316.i64[0] = v315;
    v316.i64[1] = *(v1283 + (v299 & 0xF)) / v300;
    v864 = v316;
    v316.i64[0] = v313;
    v316.i64[1] = v314;
    v858 = v316;
    v316.i64[0] = v311;
    v316.i64[1] = v312 / v300;
    v852 = v316;
    v316.i64[0] = v309;
    v316.i64[1] = v310;
    v850 = v316;
    v316.i64[0] = v307 / v300;
    v316.i64[1] = v308;
    v849 = v316;
    v316.i64[0] = v305;
    v316.i64[1] = v306 / v300;
    v848 = v316;
    v316.i64[0] = v303;
    v316.i64[1] = v304;
    v845 = v316;
    v317.i64[0] = v301;
    v317.i64[1] = v302 / v300;
  }

  else
  {
    v1282[0] = v297;
    v1282[1] = v277;
    v1282[2] = v280;
    v1282[3] = v276;
    v1282[4] = v279;
    v1282[5] = v275;
    v1282[6] = v278;
    v1282[7] = v274;
    v1281[0] = v297;
    v1281[1] = v277;
    v1281[2] = v280;
    v1281[3] = v276;
    v1281[4] = v279;
    v1281[5] = v275;
    v1281[6] = v278;
    v1281[7] = v274;
    v1280[0] = v297;
    v1280[1] = v277;
    v1280[2] = v280;
    v1280[3] = v276;
    v1280[4] = v279;
    v1280[5] = v275;
    v1280[6] = v278;
    v1280[7] = v274;
    v1279[0] = v297;
    v1279[1] = v277;
    v1279[2] = v280;
    v1279[3] = v276;
    v1279[4] = v279;
    v1279[5] = v275;
    v1279[6] = v278;
    v1279[7] = v274;
    v1278[0] = v297;
    v1278[1] = v277;
    v1278[2] = v280;
    v1278[3] = v276;
    v1278[4] = v279;
    v1278[5] = v275;
    v1278[6] = v278;
    v1278[7] = v274;
    v1277[0] = v297;
    v1277[1] = v277;
    v1277[2] = v280;
    v1277[3] = v276;
    v1277[4] = v279;
    v1277[5] = v275;
    v1277[6] = v278;
    v1277[7] = v274;
    v1276[0] = v297;
    v1276[1] = v277;
    v1276[2] = v280;
    v1276[3] = v276;
    v1276[4] = v279;
    v1276[5] = v275;
    v1276[6] = v278;
    v1276[7] = v274;
    v1275[0] = v297;
    v1275[1] = v277;
    v1275[2] = v280;
    v1275[3] = v276;
    v1275[4] = v279;
    v1275[5] = v275;
    v1275[6] = v278;
    v1275[7] = v274;
    v1274[0] = v297;
    v1274[1] = v277;
    v1274[2] = v280;
    v1274[3] = v276;
    v1274[4] = v279;
    v1274[5] = v275;
    v1274[6] = v278;
    v1274[7] = v274;
    v1273[0] = v297;
    v1273[1] = v277;
    v1273[2] = v280;
    v1273[3] = v276;
    v1273[4] = v279;
    v1273[5] = v275;
    v1273[6] = v278;
    v1273[7] = v274;
    v1272[0] = v297;
    v1272[1] = v277;
    v1272[2] = v280;
    v1272[3] = v276;
    v1272[4] = v279;
    v1272[5] = v275;
    v1272[6] = v278;
    v1272[7] = v274;
    v1271[0] = v297;
    v1271[1] = v277;
    v1271[2] = v280;
    v1271[3] = v276;
    v1271[4] = v279;
    v1271[5] = v275;
    v1271[6] = v278;
    v1271[7] = v274;
    v1270[0] = v297;
    v1270[1] = v277;
    v1270[2] = v280;
    v1270[3] = v276;
    v1270[4] = v279;
    v1270[5] = v275;
    v1270[6] = v278;
    v1270[7] = v274;
    v1269[0] = v297;
    v1269[1] = v277;
    v1269[2] = v280;
    v1269[3] = v276;
    v1269[4] = v279;
    v1269[5] = v275;
    v1269[6] = v278;
    v1269[7] = v274;
    v1268[0] = v297;
    v1268[1] = v277;
    v1268[2] = v280;
    v1268[3] = v276;
    v1268[4] = v279;
    v1268[5] = v275;
    v1268[6] = v278;
    v1268[7] = v274;
    v1267[0] = v297;
    v1267[1] = v277;
    v1267[2] = v280;
    v1267[3] = v276;
    v1267[4] = v279;
    v1267[5] = v275;
    v1267[6] = v278;
    v1267[7] = v274;
    v318.i64[0] = *(v1268 + (v298 & 0xF));
    v319.i64[0] = *(v1270 + (v295 & 0xF));
    v318.i64[1] = *(v1267 + (v299 & 0xF));
    v864 = v318;
    v319.i64[1] = *(v1269 + (v296 & 0xF));
    v858 = v319;
    v318.i64[0] = *(v1272 + (v293 & 0xF));
    v318.i64[1] = *(v1271 + (v294 & 0xF));
    v852 = v318;
    v318.i64[0] = *(v1274 + (v291 & 0xF));
    v318.i64[1] = *(v1273 + (v292 & 0xF));
    v850 = v318;
    v318.i64[0] = *(v1276 + (v289 & 0xF));
    v318.i64[1] = *(v1275 + (v290 & 0xF));
    v849 = v318;
    v318.i64[0] = *(v1278 + (v287 & 0xF));
    v318.i64[1] = *(v1277 + (v288 & 0xF));
    v848 = v318;
    v318.i64[0] = *(v1280 + (v285 & 0xF));
    v318.i64[1] = *(v1279 + (v286 & 0xF));
    v845 = v318;
    v317.i64[0] = *(v1282 + (v283 & 0xF));
    v317.i64[1] = *(v1281 + (v284 & 0xF));
  }

  v844 = v317;
  v320 = *&v953[v281];
  v321 = &v953[v260];
  v322 = *v321;
  v323 = v321[1];
  v324 = v321[2];
  v1266 = v321[3];
  v1265[2] = v324;
  v1265[1] = v323;
  v1265[0] = v322;
  v277.i32[0] = *(v1265 + (v320 & 0xF));
  v851 = v277;
  v1264[3] = v1266;
  v1264[2] = v324;
  v1264[1] = v323;
  v1264[0] = v322;
  v277.i32[0] = *(v1264 + (BYTE1(v320) & 0xF));
  v870 = v277;
  v1263[3] = v1266;
  v1263[2] = v324;
  v1263[1] = v323;
  v1263[0] = v322;
  v277.i32[0] = *(v1263 + (BYTE2(v320) & 0xF));
  v872 = v277;
  v1262[3] = v1266;
  v1262[2] = v324;
  v1262[1] = v323;
  v1262[0] = v322;
  v277.i32[0] = *(v1262 + (BYTE3(v320) & 0xF));
  v1013 = v277;
  v1261[3] = v1266;
  v1261[2] = v324;
  v1261[1] = v323;
  v1261[0] = v322;
  v277.i32[0] = *(v1261 + (BYTE4(v320) & 0xF));
  v846 = v277;
  v1260[3] = v1266;
  v1260[2] = v324;
  v1260[1] = v323;
  v1260[0] = v322;
  v277.i32[0] = *(v1260 + (BYTE5(v320) & 0xF));
  v862 = v277;
  v1259[3] = v1266;
  v1259[2] = v324;
  v1259[1] = v323;
  v1259[0] = v322;
  v277.i32[0] = *(v1259 + (BYTE6(v320) & 0xF));
  v868 = v277;
  v1258[3] = v1266;
  v1258[2] = v324;
  v1258[1] = v323;
  v1258[0] = v322;
  v277.i32[0] = *(v1258 + (BYTE7(v320) & 0xF));
  v876 = v277;
  v1257[3] = v1266;
  v1257[2] = v324;
  v1257[1] = v323;
  v1257[0] = v322;
  v277.i32[0] = *(v1257 + (BYTE8(v320) & 0xF));
  v843 = v277;
  v1256[3] = v1266;
  v1256[2] = v324;
  v1256[1] = v323;
  v1256[0] = v322;
  v277.i32[0] = *(v1256 + (BYTE9(v320) & 0xF));
  v856 = v277;
  v1255[3] = v1266;
  v1255[2] = v324;
  v1255[1] = v323;
  v1255[0] = v322;
  v277.i32[0] = *(v1255 + (BYTE10(v320) & 0xF));
  v860 = v277;
  v1254[3] = v1266;
  v1254[2] = v324;
  v1254[1] = v323;
  v1254[0] = v322;
  v277.i32[0] = *(v1254 + (BYTE11(v320) & 0xF));
  v874 = v277;
  v1253[3] = v1266;
  v1253[2] = v324;
  v1253[1] = v323;
  v1253[0] = v322;
  v277.i32[0] = *(v1253 + (BYTE12(v320) & 0xF));
  v842 = v277;
  v1252[3] = v1266;
  v1252[2] = v324;
  v1252[1] = v323;
  v1252[0] = v322;
  v277.i32[0] = *(v1252 + (BYTE13(v320) & 0xF));
  v847 = v277;
  v1251[3] = v1266;
  v1251[2] = v324;
  v1251[1] = v323;
  v1251[0] = v322;
  v277.i32[0] = *(v1251 + (BYTE14(v320) & 0xF));
  v854 = v277;
  v1250[3] = v1266;
  v1250[2] = v324;
  v1250[1] = v323;
  v1250[0] = v322;
  v322.i32[0] = *(v1250 + (HIBYTE(v320) & 0xF));
  v866 = v322;
  makeStrideBytes();
  v325 = &v956[*v140];
  v326.i64[0] = 0x100000001;
  v326.i64[1] = 0x100000001;
  v327 = vceqq_s32(*v325, v326);
  v328.i64[0] = v327.i32[0];
  v328.i64[1] = v327.i32[1];
  v329 = v328;
  v330 = vceqq_s32(v325[1], v326);
  v328.i64[0] = v330.i32[0];
  v328.i64[1] = v330.i32[1];
  v331 = v328;
  v332 = vceqq_s32(v325[2], v326);
  v328.i64[0] = v332.i32[0];
  v328.i64[1] = v332.i32[1];
  v333 = v328;
  v334 = vceqq_s32(v325[3], v326);
  v328.i64[0] = v334.i32[0];
  v328.i64[1] = v334.i32[1];
  v335 = v328;
  v328.i64[0] = v327.i32[2];
  v328.i64[1] = v327.i32[3];
  v336 = v328;
  v328.i64[0] = v330.i32[2];
  v328.i64[1] = v330.i32[3];
  v337 = v328;
  v328.i64[0] = v332.i32[2];
  v328.i64[1] = v332.i32[3];
  v338 = v328;
  v328.i64[0] = v334.i32[2];
  v328.i64[1] = v334.i32[3];
  v339 = vbicq_s8(v1443, v328);
  v340 = vbicq_s8(v1441, v338);
  v341 = vbicq_s8(v1439, v337);
  v342 = vbicq_s8(v1437, v336);
  v343 = vbicq_s8(v1442, v335);
  v344 = vbicq_s8(v1440, v333);
  v345 = vbicq_s8(v1438, v331);
  v346 = vbicq_s8(v1436, v329);
  v347 = *&v956[*v172];
  v348 = *&v956[*MEMORY[0x277CD73C8]];
  if ((v348 & 0xFFF8) != 0)
  {
    v349 = v348 >> 3;
    v1249[0] = v346;
    v1249[1] = v342;
    v1249[2] = v345;
    v1249[3] = v341;
    v1249[4] = v344;
    v1249[5] = v340;
    v1249[6] = v343;
    v1249[7] = v339;
    v350 = *(v1249 + (v347 & 0xF));
    v1248[0] = v346;
    v1248[1] = v342;
    v1248[2] = v345;
    v1248[3] = v341;
    v1248[4] = v344;
    v1248[5] = v340;
    v1248[6] = v343;
    v1248[7] = v339;
    v351 = *(v1248 + (BYTE1(v347) & 0xF));
    v1247[0] = v346;
    v1247[1] = v342;
    v1247[2] = v345;
    v1247[3] = v341;
    v1247[4] = v344;
    v1247[5] = v340;
    v1247[6] = v343;
    v1247[7] = v339;
    v352 = *(v1247 + (BYTE2(v347) & 0xF)) / v349;
    v1246[0] = v346;
    v1246[1] = v342;
    v1246[2] = v345;
    v1246[3] = v341;
    v1246[4] = v344;
    v1246[5] = v340;
    v1246[6] = v343;
    v1246[7] = v339;
    v353 = *(v1246 + (BYTE3(v347) & 0xF));
    v1245[0] = v346;
    v1245[1] = v342;
    v1245[2] = v345;
    v1245[3] = v341;
    v1245[4] = v344;
    v1245[5] = v340;
    v1245[6] = v343;
    v1245[7] = v339;
    v354 = *(v1245 + (BYTE4(v347) & 0xF)) / v349;
    v1244[0] = v346;
    v1244[1] = v342;
    v1244[2] = v345;
    v1244[3] = v341;
    v1244[4] = v344;
    v1244[5] = v340;
    v1244[6] = v343;
    v1244[7] = v339;
    v355 = *(v1244 + (BYTE5(v347) & 0xF));
    v1243[0] = v346;
    v1243[1] = v342;
    v1243[2] = v345;
    v1243[3] = v341;
    v1243[4] = v344;
    v1243[5] = v340;
    v1243[6] = v343;
    v1243[7] = v339;
    v356 = *(v1243 + (BYTE6(v347) & 0xF)) / v349;
    v1242[0] = v346;
    v1242[1] = v342;
    v1242[2] = v345;
    v1242[3] = v341;
    v1242[4] = v344;
    v1242[5] = v340;
    v1242[6] = v343;
    v1242[7] = v339;
    v357 = *(v1242 + (BYTE7(v347) & 0xF));
    v1241[0] = v346;
    v1241[1] = v342;
    v1241[2] = v345;
    v1241[3] = v341;
    v1241[4] = v344;
    v1241[5] = v340;
    v1241[6] = v343;
    v1241[7] = v339;
    v358 = *(v1241 + (BYTE8(v347) & 0xF)) / v349;
    v1240[0] = v346;
    v1240[1] = v342;
    v1240[2] = v345;
    v1240[3] = v341;
    v1240[4] = v344;
    v1240[5] = v340;
    v1240[6] = v343;
    v1240[7] = v339;
    v359 = *(v1240 + (BYTE9(v347) & 0xF));
    v1239[0] = v346;
    v1239[1] = v342;
    v1239[2] = v345;
    v1239[3] = v341;
    v1239[4] = v344;
    v1239[5] = v340;
    v1239[6] = v343;
    v1239[7] = v339;
    v360 = *(v1239 + (BYTE10(v347) & 0xF)) / v349;
    v1238[0] = v346;
    v1238[1] = v342;
    v1238[2] = v345;
    v1238[3] = v341;
    v1238[4] = v344;
    v1238[5] = v340;
    v1238[6] = v343;
    v1238[7] = v339;
    v361 = *(v1238 + (BYTE11(v347) & 0xF));
    v1237[0] = v346;
    v1237[1] = v342;
    v1237[2] = v345;
    v1237[3] = v341;
    v1237[4] = v344;
    v1237[5] = v340;
    v1237[6] = v343;
    v1237[7] = v339;
    v362 = *(v1237 + (BYTE12(v347) & 0xF)) / v349;
    v1236[0] = v346;
    v1236[1] = v342;
    v1236[2] = v345;
    v1236[3] = v341;
    v1236[4] = v344;
    v1236[5] = v340;
    v1236[6] = v343;
    v1236[7] = v339;
    v363 = *(v1236 + (BYTE13(v347) & 0xF));
    v1235[0] = v346;
    v1235[1] = v342;
    v1235[2] = v345;
    v1235[3] = v341;
    v1235[4] = v344;
    v1235[5] = v340;
    v1235[6] = v343;
    v1235[7] = v339;
    v364 = *(v1235 + (BYTE14(v347) & 0xF)) / v349;
    v1234[0] = v346;
    v1234[1] = v342;
    v1234[2] = v345;
    v1234[3] = v341;
    v1234[4] = v344;
    v1234[5] = v340;
    v1234[6] = v343;
    v1234[7] = v339;
    *&v365 = v364;
    *(&v365 + 1) = *(v1234 + (HIBYTE(v347) & 0xF)) / v349;
    v841 = v365;
    *&v365 = v362;
    *(&v365 + 1) = v363 / v349;
    v840 = v365;
    *&v365 = v360;
    *(&v365 + 1) = v361 / v349;
    v839 = v365;
    *&v365 = v358;
    *(&v365 + 1) = v359 / v349;
    v838 = v365;
    *&v365 = v356;
    *(&v365 + 1) = v357 / v349;
    v837 = v365;
    *&v365 = v354;
    *(&v365 + 1) = v355 / v349;
    v836 = v365;
    *&v365 = v352;
    *(&v365 + 1) = v353 / v349;
    v835 = v365;
    *&v366 = v350 / v349;
    *(&v366 + 1) = v351 / v349;
  }

  else
  {
    v1233[0] = v346;
    v1233[1] = v342;
    v1233[2] = v345;
    v1233[3] = v341;
    v1233[4] = v344;
    v1233[5] = v340;
    v1233[6] = v343;
    v1233[7] = v339;
    v1232[0] = v346;
    v1232[1] = v342;
    v1232[2] = v345;
    v1232[3] = v341;
    v1232[4] = v344;
    v1232[5] = v340;
    v1232[6] = v343;
    v1232[7] = v339;
    v1231[0] = v346;
    v1231[1] = v342;
    v1231[2] = v345;
    v1231[3] = v341;
    v1231[4] = v344;
    v1231[5] = v340;
    v1231[6] = v343;
    v1231[7] = v339;
    v1230[0] = v346;
    v1230[1] = v342;
    v1230[2] = v345;
    v1230[3] = v341;
    v1230[4] = v344;
    v1230[5] = v340;
    v1230[6] = v343;
    v1230[7] = v339;
    v1229[0] = v346;
    v1229[1] = v342;
    v1229[2] = v345;
    v1229[3] = v341;
    v1229[4] = v344;
    v1229[5] = v340;
    v1229[6] = v343;
    v1229[7] = v339;
    v1228[0] = v346;
    v1228[1] = v342;
    v1228[2] = v345;
    v1228[3] = v341;
    v1228[4] = v344;
    v1228[5] = v340;
    v1228[6] = v343;
    v1228[7] = v339;
    v1227[0] = v346;
    v1227[1] = v342;
    v1227[2] = v345;
    v1227[3] = v341;
    v1227[4] = v344;
    v1227[5] = v340;
    v1227[6] = v343;
    v1227[7] = v339;
    v1226[0] = v346;
    v1226[1] = v342;
    v1226[2] = v345;
    v1226[3] = v341;
    v1226[4] = v344;
    v1226[5] = v340;
    v1226[6] = v343;
    v1226[7] = v339;
    v1225[0] = v346;
    v1225[1] = v342;
    v1225[2] = v345;
    v1225[3] = v341;
    v1225[4] = v344;
    v1225[5] = v340;
    v1225[6] = v343;
    v1225[7] = v339;
    v1224[0] = v346;
    v1224[1] = v342;
    v1224[2] = v345;
    v1224[3] = v341;
    v1224[4] = v344;
    v1224[5] = v340;
    v1224[6] = v343;
    v1224[7] = v339;
    v1223[0] = v346;
    v1223[1] = v342;
    v1223[2] = v345;
    v1223[3] = v341;
    v1223[4] = v344;
    v1223[5] = v340;
    v1223[6] = v343;
    v1223[7] = v339;
    v1222[0] = v346;
    v1222[1] = v342;
    v1222[2] = v345;
    v1222[3] = v341;
    v1222[4] = v344;
    v1222[5] = v340;
    v1222[6] = v343;
    v1222[7] = v339;
    v1221[0] = v346;
    v1221[1] = v342;
    v1221[2] = v345;
    v1221[3] = v341;
    v1221[4] = v344;
    v1221[5] = v340;
    v1221[6] = v343;
    v1221[7] = v339;
    v1220[0] = v346;
    v1220[1] = v342;
    v1220[2] = v345;
    v1220[3] = v341;
    v1220[4] = v344;
    v1220[5] = v340;
    v1220[6] = v343;
    v1220[7] = v339;
    v1219[0] = v346;
    v1219[1] = v342;
    v1219[2] = v345;
    v1219[3] = v341;
    v1219[4] = v344;
    v1219[5] = v340;
    v1219[6] = v343;
    v1219[7] = v339;
    v1218[0] = v346;
    v1218[1] = v342;
    v1218[2] = v345;
    v1218[3] = v341;
    v1218[4] = v344;
    v1218[5] = v340;
    v1218[6] = v343;
    v1218[7] = v339;
    *&v367 = *(v1219 + (BYTE14(v347) & 0xF));
    *&v368 = *(v1221 + (BYTE12(v347) & 0xF));
    *(&v367 + 1) = *(v1218 + (HIBYTE(v347) & 0xF));
    v841 = v367;
    *(&v368 + 1) = *(v1220 + (BYTE13(v347) & 0xF));
    v840 = v368;
    *&v367 = *(v1223 + (BYTE10(v347) & 0xF));
    *(&v367 + 1) = *(v1222 + (BYTE11(v347) & 0xF));
    v839 = v367;
    *&v367 = *(v1225 + (BYTE8(v347) & 0xF));
    *(&v367 + 1) = *(v1224 + (BYTE9(v347) & 0xF));
    v838 = v367;
    *&v367 = *(v1227 + (BYTE6(v347) & 0xF));
    *(&v367 + 1) = *(v1226 + (BYTE7(v347) & 0xF));
    v837 = v367;
    *&v367 = *(v1229 + (BYTE4(v347) & 0xF));
    *(&v367 + 1) = *(v1228 + (BYTE5(v347) & 0xF));
    v836 = v367;
    *&v367 = *(v1231 + (BYTE2(v347) & 0xF));
    *(&v367 + 1) = *(v1230 + (BYTE3(v347) & 0xF));
    v835 = v367;
    *&v366 = *(v1233 + (v347 & 0xF));
    *(&v366 + 1) = *(v1232 + (BYTE1(v347) & 0xF));
  }

  v834 = v366;
  v369 = v964[2];
  v371 = *v369;
  v370 = v369[1];
  if (v370 != v371)
  {
    if (((v370 - v371) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v372 = *(v970 + 16);
  v374 = *v372;
  v373 = v372[1];
  if (v373 != v374)
  {
    if (((v373 - v374) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v375 = v1009[2];
  v377 = *v375;
  v376 = v375[1];
  if (v376 != v377)
  {
    if (((v376 - v377) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v378 = 0;
  v379 = vuzp1q_s32(v926, v981);
  v380 = vuzp1q_s32(v916, v918);
  v381 = vuzp1q_s32(v910, v914);
  v382 = vuzp1q_s32(v904, v906);
  v383 = vuzp1q_s32(v858, v864);
  v384 = vuzp1q_s32(v850, v852);
  v385 = vuzp1q_s32(v848, v849);
  v386 = v845;
  v387 = vuzp1q_s32(v844, v845);
  v386.i32[0] = 1;
  v388 = v382;
  v388.i32[0] = 0;
  v389 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v898, v386), 0), v388, v382);
  v390 = v381;
  v390.i32[0] = 0;
  v391 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v900, v386), 0), v390, v381);
  v392 = v380;
  v392.i32[0] = 0;
  v393 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v896, v386), 0), v392, v380);
  v394 = vceqq_s32(v894, v386);
  v395 = vdupq_lane_s32(*v394.i8, 0);
  v394.i32[0] = 1;
  v396 = v379;
  v396.i32[0] = 0;
  v397 = vbslq_s8(v395, v396, v379);
  v398 = v387;
  v398.i32[0] = 0;
  v399 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v851, v394), 0), v398, v387);
  v400 = v385;
  v400.i32[0] = 0;
  v401 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v846, v394), 0), v400, v385);
  v402 = v384;
  v402.i32[0] = 0;
  v403 = v383;
  v403.i32[0] = 0;
  v404 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v843, v394), 0), v402, v384);
  v405 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v842, v394), 0), v403, v383);
  v406 = v389;
  v406.i32[1] = 0;
  v407 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v924, v386), 0), v406, v389);
  v408 = v391;
  v408.i32[1] = 0;
  v409 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v922, v386), 0), v408, v391);
  v410 = v393;
  v410.i32[1] = 0;
  v411 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v912, v386), 0), v410, v393);
  v412 = v397;
  v412.i32[1] = 0;
  v413 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v902, v386), 0), v412, v397);
  v414 = v399;
  v414.i32[1] = 0;
  v415 = v401;
  v415.i32[1] = 0;
  v416 = v404;
  v416.i32[1] = 0;
  v417 = v405;
  v417.i32[1] = 0;
  v418 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v870, v394), 0), v414, v399);
  v419 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v862, v394), 0), v415, v401);
  v420 = v407;
  v420.i32[2] = 0;
  v421 = v409;
  v421.i32[2] = 0;
  v422 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v856, v394), 0), v416, v404);
  v423 = v411;
  v423.i32[2] = 0;
  v424 = v413;
  v424.i32[2] = 0;
  v425 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v847, v394), 0), v417, v405);
  v426 = v418;
  v426.i32[2] = 0;
  v427 = v419;
  v427.i32[2] = 0;
  v428 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v996, v386), 0), v420, v407);
  v429 = v422;
  v429.i32[2] = 0;
  v430 = v425;
  v430.i32[2] = 0;
  v431 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v986, v386), 0), v421, v409);
  v432 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v920, v386), 0), v423, v411);
  v433 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v908, v386), 0), v424, v413);
  v434 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v872, v394), 0), v426, v418);
  v435 = v428;
  v435.i32[3] = 0;
  v436 = v431;
  v436.i32[3] = 0;
  v437 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v868, v394), 0), v427, v419);
  v438 = v432;
  v438.i32[3] = 0;
  v439 = v433;
  v439.i32[3] = 0;
  v440 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v860, v394), 0), v429, v422);
  v441 = vdupq_lane_s32(*&vceqq_s32(v1013, v394), 0);
  v442 = v434;
  v442.i32[3] = 0;
  v443 = v437;
  v443.i32[3] = 0;
  v444 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v854, v394), 0), v430, v425);
  v445 = v440;
  v445.i32[3] = 0;
  v446 = v444;
  v446.i32[3] = 0;
  v1014 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(*__pa, v386), 0), v435, v428);
  v1010 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v1000, v386), 0), v436, v431);
  v447 = &v1417;
  *__pb = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v991, v386), 0), v438, v432);
  v1001 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v928, v386), 0), v439, v433);
  v997 = vbslq_s8(v441, v442, v434);
  v992 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v876, v394), 0), v443, v437);
  v987 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v874, v394), 0), v445, v440);
  v982 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v866, v394), 0), v446, v444);
  do
  {
    v1217[0] = v1014;
    v1217[1] = v1010;
    v1217[2] = *__pb;
    v1217[3] = v1001;
    *(v447 - 48) = *(v1217 + (v378 & 0xF));
    v1216[0] = v878;
    v1216[1] = v880;
    v1216[2] = v882;
    v1216[3] = v884;
    v1216[4] = v886;
    v1216[5] = v888;
    v1216[6] = v890;
    v1216[7] = v892;
    *(v447 - 64) = *(v1216 + (v378 & 0xF));
    v1215[0] = v997;
    v1215[1] = v992;
    v1215[2] = v987;
    v1215[3] = v982;
    *(v447 - 32) = *(v1215 + (v378 & 0xF));
    v1214[0] = v834;
    v1214[1] = v835;
    v1214[2] = v836;
    v1214[3] = v837;
    v1214[4] = v838;
    v1214[5] = v839;
    v1214[6] = v840;
    v1214[7] = v841;
    *(v447 - 16) = *(v1214 + (v378 & 0xF));
    v1213[0] = xmmword_239B0A0D0;
    memset(&v1213[1], 0, 48);
    *v447 = *(v1213 + (v378 & 0xF));
    v1212[0] = v978;
    v1212[1] = v1018;
    v1212[2] = v974;
    v1212[3] = v976;
    *(v447 + 16) = *(v1212 + (v378 & 0xF));
    v1211[0] = xmmword_239B0A0D0;
    memset(&v1211[1], 0, 48);
    *(v447 + 32) = *(v1211 + (v378 & 0xF));
    v1210[0] = xmmword_239B0A0D0;
    memset(&v1210[1], 0, 48);
    *(v447 + 48) = *(v1210 + (v378++ & 0xF));
    v447 = (v447 + 4);
  }

  while (v378 != 16);
  [v145 setBuffer:objc_msgSend(v952 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v952, 0, 16, 0, 0) + *(*(v954 + 8) + 144), 0}];
  [v145 setBuffer:objc_msgSend(v953 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v953, 0, 16, 0, 0) + *(*(v954 + 8) + 224), 1}];
  [v145 setBuffer:objc_msgSend(v956 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v956, 0, 16, 0, 0) + *&v956[*MEMORY[0x277CD73F8]], 2}];
  if (v936)
  {
    [v145 setBuffer:MPSAutoCache::GetTempBuffer(v1435 offset:4 atIndex:{0), 0, 3}];
  }

  [v145 setBytes:&v1393 length:540 atIndex:29];
  v1436.i64[0] = v128;
  v1436.i64[1] = v930;
  v1437.i64[0] = 1;
  v1385 = v127;
  v1386 = vdupq_n_s64(1uLL);
  [v145 dispatchThreadgroups:&v1436 threadsPerThreadgroup:&v1385];
  if (v934)
  {
    v1444 = v956;
    [v947 encodeToMPSCommandEncoder:v145 commandBuffer:v951 sourceArrays:objc_msgSend(MEMORY[0x277CBEA60] resultState:"arrayWithObjects:count:" destinationArray:&v1444 kernelDAGObject:{1), 0, *(v954 + 208), 0}];
  }

LABEL_304:
  if (!v967)
  {
    v149 = 0;
    goto LABEL_621;
  }

  v448 = [*(v87 + 232) inputTensorAtIndex:3];
  v449 = [*(v87 + 232) outputTensorAtIndex:0];
  v450 = *(v970 + 8);
  if (v450 > 285212703)
  {
    v451 = v959;
    if (v450 <= 536870915)
    {
      if (v450 > 301989895)
      {
        if (v450 == 301989896)
        {
          v452 = 512;
          v453 = *(v959 + 8);
          if (v453 <= 285212703)
          {
            goto LABEL_366;
          }
        }

        else
        {
          if (v450 != 335544328)
          {
            goto LABEL_387;
          }

          v452 = 544;
          v453 = *(v959 + 8);
          if (v453 <= 285212703)
          {
            goto LABEL_366;
          }
        }
      }

      else if (v450 == 285212704)
      {
        v452 = 416;
        v453 = *(v959 + 8);
        if (v453 <= 285212703)
        {
          goto LABEL_366;
        }
      }

      else
      {
        if (v450 != 285212736)
        {
          goto LABEL_387;
        }

        v452 = 448;
        v453 = *(v959 + 8);
        if (v453 <= 285212703)
        {
          goto LABEL_366;
        }
      }
    }

    else if (v450 <= 536870927)
    {
      if (v450 == 536870916)
      {
        v452 = 0;
        v453 = *(v959 + 8);
        if (v453 > 285212703)
        {
          goto LABEL_388;
        }

        goto LABEL_366;
      }

      if (v450 != 536870920)
      {
        goto LABEL_387;
      }

      v452 = 32;
      v453 = *(v959 + 8);
      if (v453 <= 285212703)
      {
        goto LABEL_366;
      }
    }

    else
    {
      switch(v450)
      {
        case 536870928:
          v452 = 64;
          v453 = *(v959 + 8);
          if (v453 <= 285212703)
          {
            goto LABEL_366;
          }

          break;
        case 536870944:
          v452 = 96;
          v453 = *(v959 + 8);
          if (v453 <= 285212703)
          {
            goto LABEL_366;
          }

          break;
        case 536870976:
          v452 = 128;
          v453 = *(v959 + 8);
          if (v453 <= 285212703)
          {
            goto LABEL_366;
          }

          break;
        default:
          goto LABEL_387;
      }
    }
  }

  else
  {
    v451 = v959;
    if (v450 <= 31)
    {
      if (v450 > 7)
      {
        if (v450 == 8)
        {
          v452 = 192;
          v453 = *(v959 + 8);
          if (v453 <= 285212703)
          {
            goto LABEL_366;
          }
        }

        else
        {
          if (v450 != 16)
          {
            goto LABEL_387;
          }

          v452 = 224;
          v453 = *(v959 + 8);
          if (v453 <= 285212703)
          {
            goto LABEL_366;
          }
        }
      }

      else if (v450 == -1879048176)
      {
        v452 = 384;
        v453 = *(v959 + 8);
        if (v453 <= 285212703)
        {
          goto LABEL_366;
        }
      }

      else
      {
        if (v450 != 4)
        {
          goto LABEL_387;
        }

        v452 = 160;
        v453 = *(v959 + 8);
        if (v453 <= 285212703)
        {
          goto LABEL_366;
        }
      }
    }

    else if (v450 <= 268435463)
    {
      if (v450 == 32)
      {
        v452 = 256;
        v453 = *(v959 + 8);
        if (v453 <= 285212703)
        {
          goto LABEL_366;
        }
      }

      else
      {
        if (v450 != 64)
        {
          goto LABEL_387;
        }

        v452 = 288;
        v453 = *(v959 + 8);
        if (v453 <= 285212703)
        {
          goto LABEL_366;
        }
      }
    }

    else
    {
      switch(v450)
      {
        case 268435464:
          v452 = 480;
          v453 = *(v959 + 8);
          if (v453 <= 285212703)
          {
            goto LABEL_366;
          }

          break;
        case 268435472:
          v452 = 320;
          v453 = *(v959 + 8);
          if (v453 <= 285212703)
          {
            goto LABEL_366;
          }

          break;
        case 268435488:
          v452 = 352;
          v453 = *(v959 + 8);
          if (v453 > 285212703)
          {
            break;
          }

LABEL_366:
          if (v453 <= 31)
          {
            if (v453 > 7)
            {
              if (v453 == 8)
              {
                v454 = 6144;
                goto LABEL_410;
              }

              if (v453 == 16)
              {
                v454 = 7168;
                goto LABEL_410;
              }
            }

            else
            {
              if (v453 == -1879048176)
              {
                v454 = 12288;
                goto LABEL_410;
              }

              if (v453 == 4)
              {
                v454 = 5120;
                goto LABEL_410;
              }
            }
          }

          else if (v453 <= 268435463)
          {
            if (v453 == 32)
            {
              v454 = 0x2000;
              goto LABEL_410;
            }

            if (v453 == 64)
            {
              v454 = 9216;
              goto LABEL_410;
            }
          }

          else
          {
            switch(v453)
            {
              case 268435464:
                v454 = 15360;
                goto LABEL_410;
              case 268435472:
                v454 = 10240;
                goto LABEL_410;
              case 268435488:
                v454 = 11264;
                goto LABEL_410;
            }
          }

          goto LABEL_409;
        default:
LABEL_387:
          v452 = 576;
          v453 = *(v451 + 8);
          if (v453 > 285212703)
          {
            break;
          }

          goto LABEL_366;
      }
    }
  }

LABEL_388:
  if (v453 <= 536870915)
  {
    if (v453 > 301989895)
    {
      if (v453 == 301989896)
      {
        v454 = 0x4000;
        goto LABEL_410;
      }

      if (v453 == 335544328)
      {
        v454 = 17408;
        goto LABEL_410;
      }
    }

    else
    {
      if (v453 == 285212704)
      {
        v454 = 13312;
        goto LABEL_410;
      }

      if (v453 == 285212736)
      {
        v454 = 14336;
        goto LABEL_410;
      }
    }
  }

  else if (v453 <= 536870927)
  {
    if (v453 == 536870916)
    {
      v454 = 0;
      goto LABEL_410;
    }

    if (v453 == 536870920)
    {
      v454 = 1024;
      goto LABEL_410;
    }
  }

  else
  {
    switch(v453)
    {
      case 536870928:
        v454 = 2048;
        goto LABEL_410;
      case 536870944:
        v454 = 3072;
        goto LABEL_410;
      case 536870976:
        v454 = 4096;
        goto LABEL_410;
    }
  }

LABEL_409:
  v454 = 18432;
LABEL_410:
  v455 = *(v448 + 8);
  if (v455 > 285212703)
  {
    if (v455 <= 536870915)
    {
      if (v455 > 301989895)
      {
        if (v455 == 301989896)
        {
          v456 = 0x80000;
          v457 = *v941;
          if (*v941 <= 285212703)
          {
            goto LABEL_470;
          }
        }

        else
        {
          if (v455 != 335544328)
          {
            goto LABEL_491;
          }

          v456 = 557056;
          v457 = *v941;
          if (*v941 <= 285212703)
          {
            goto LABEL_470;
          }
        }
      }

      else if (v455 == 285212704)
      {
        v456 = 425984;
        v457 = *v941;
        if (*v941 <= 285212703)
        {
          goto LABEL_470;
        }
      }

      else
      {
        if (v455 != 285212736)
        {
          goto LABEL_491;
        }

        v456 = 458752;
        v457 = *v941;
        if (*v941 <= 285212703)
        {
          goto LABEL_470;
        }
      }
    }

    else if (v455 <= 536870927)
    {
      if (v455 == 536870916)
      {
        v456 = 0;
        v457 = *v941;
        if (*v941 > 285212703)
        {
          goto LABEL_492;
        }

        goto LABEL_470;
      }

      if (v455 != 536870920)
      {
        goto LABEL_491;
      }

      v456 = 0x8000;
      v457 = *v941;
      if (*v941 <= 285212703)
      {
        goto LABEL_470;
      }
    }

    else
    {
      switch(v455)
      {
        case 536870928:
          v456 = 0x10000;
          v457 = *v941;
          if (*v941 <= 285212703)
          {
            goto LABEL_470;
          }

          break;
        case 536870944:
          v456 = 98304;
          v457 = *v941;
          if (*v941 <= 285212703)
          {
            goto LABEL_470;
          }

          break;
        case 536870976:
          v456 = 0x20000;
          v457 = *v941;
          if (*v941 <= 285212703)
          {
            goto LABEL_470;
          }

          break;
        default:
          goto LABEL_491;
      }
    }
  }

  else if (v455 <= 31)
  {
    if (v455 > 7)
    {
      if (v455 == 8)
      {
        v456 = 196608;
        v457 = *v941;
        if (*v941 <= 285212703)
        {
          goto LABEL_470;
        }
      }

      else
      {
        if (v455 != 16)
        {
          goto LABEL_491;
        }

        v456 = 229376;
        v457 = *v941;
        if (*v941 <= 285212703)
        {
          goto LABEL_470;
        }
      }
    }

    else if (v455 == -1879048176)
    {
      v456 = 393216;
      v457 = *v941;
      if (*v941 <= 285212703)
      {
        goto LABEL_470;
      }
    }

    else
    {
      if (v455 != 4)
      {
        goto LABEL_491;
      }

      v456 = 163840;
      v457 = *v941;
      if (*v941 <= 285212703)
      {
        goto LABEL_470;
      }
    }
  }

  else if (v455 <= 268435463)
  {
    if (v455 == 32)
    {
      v456 = 0x40000;
      v457 = *v941;
      if (*v941 <= 285212703)
      {
        goto LABEL_470;
      }
    }

    else
    {
      if (v455 != 64)
      {
        goto LABEL_491;
      }

      v456 = 294912;
      v457 = *v941;
      if (*v941 <= 285212703)
      {
        goto LABEL_470;
      }
    }
  }

  else
  {
    switch(v455)
    {
      case 268435464:
        v456 = 491520;
        v457 = *v941;
        if (*v941 <= 285212703)
        {
          goto LABEL_470;
        }

        break;
      case 268435472:
        v456 = 327680;
        v457 = *v941;
        if (*v941 <= 285212703)
        {
          goto LABEL_470;
        }

        break;
      case 268435488:
        v456 = 360448;
        v457 = *v941;
        if (*v941 > 285212703)
        {
          break;
        }

LABEL_470:
        if (v457 <= 31)
        {
          if (v457 > 7)
          {
            if (v457 == 8)
            {
              v458 = 6291456;
              goto LABEL_514;
            }

            if (v457 == 16)
            {
              v458 = 7340032;
              goto LABEL_514;
            }
          }

          else
          {
            if (v457 == -1879048176)
            {
              v458 = 12582912;
              goto LABEL_514;
            }

            if (v457 == 4)
            {
              v458 = 5242880;
              goto LABEL_514;
            }
          }
        }

        else if (v457 <= 268435463)
        {
          if (v457 == 32)
          {
            v458 = 0x800000;
            goto LABEL_514;
          }

          if (v457 == 64)
          {
            v458 = 9437184;
            goto LABEL_514;
          }
        }

        else
        {
          switch(v457)
          {
            case 268435464:
              v458 = 15728640;
              goto LABEL_514;
            case 268435472:
              v458 = 10485760;
              goto LABEL_514;
            case 268435488:
              v458 = 11534336;
              goto LABEL_514;
          }
        }

        goto LABEL_513;
      default:
LABEL_491:
        v456 = 589824;
        v457 = *v941;
        if (*v941 > 285212703)
        {
          break;
        }

        goto LABEL_470;
    }
  }

LABEL_492:
  if (v457 <= 536870915)
  {
    if (v457 > 301989895)
    {
      if (v457 == 301989896)
      {
        v458 = 0x1000000;
        goto LABEL_514;
      }

      if (v457 == 335544328)
      {
        v458 = 17825792;
        goto LABEL_514;
      }
    }

    else
    {
      if (v457 == 285212704)
      {
        v458 = 13631488;
        goto LABEL_514;
      }

      if (v457 == 285212736)
      {
        v458 = 14680064;
        goto LABEL_514;
      }
    }
  }

  else if (v457 <= 536870927)
  {
    if (v457 == 536870916)
    {
      v458 = 0;
      goto LABEL_514;
    }

    if (v457 == 536870920)
    {
      v458 = 0x100000;
      goto LABEL_514;
    }
  }

  else
  {
    switch(v457)
    {
      case 536870928:
        v458 = 0x200000;
        goto LABEL_514;
      case 536870944:
        v458 = 3145728;
        goto LABEL_514;
      case 536870976:
        v458 = 0x400000;
        goto LABEL_514;
    }
  }

LABEL_513:
  v458 = 18874368;
LABEL_514:
  v459 = *(v449 + 8);
  v937 = *(v87 + 208);
  v935 = *(v87 + 112);
  if (v459 > 285212703)
  {
    if (v459 <= 536870915)
    {
      if (v459 > 301989895)
      {
        if (v459 == 301989896)
        {
          v460 = 16;
          goto LABEL_558;
        }

        if (v459 == 335544328)
        {
          v460 = 17;
          goto LABEL_558;
        }
      }

      else
      {
        if (v459 == 285212704)
        {
          v460 = 13;
          goto LABEL_558;
        }

        if (v459 == 285212736)
        {
          v460 = 14;
          goto LABEL_558;
        }
      }
    }

    else if (v459 <= 536870927)
    {
      if (v459 == 536870916)
      {
        v460 = 0;
        goto LABEL_558;
      }

      if (v459 == 536870920)
      {
        v460 = 1;
        goto LABEL_558;
      }
    }

    else
    {
      switch(v459)
      {
        case 536870928:
          v460 = 2;
          goto LABEL_558;
        case 536870944:
          v460 = 3;
          goto LABEL_558;
        case 536870976:
          v460 = 4;
          goto LABEL_558;
      }
    }
  }

  else if (v459 <= 31)
  {
    if (v459 > 7)
    {
      if (v459 == 8)
      {
        v460 = 6;
        goto LABEL_558;
      }

      if (v459 == 16)
      {
        v460 = 7;
        goto LABEL_558;
      }
    }

    else
    {
      if (v459 == -1879048176)
      {
        v460 = 12;
        goto LABEL_558;
      }

      if (v459 == 4)
      {
        v460 = 5;
        goto LABEL_558;
      }
    }
  }

  else if (v459 <= 268435463)
  {
    if (v459 == 32)
    {
      v460 = 8;
      goto LABEL_558;
    }

    if (v459 == 64)
    {
      v460 = 9;
      goto LABEL_558;
    }
  }

  else
  {
    switch(v459)
    {
      case 268435464:
        v460 = 15;
        goto LABEL_558;
      case 268435472:
        v460 = 10;
        goto LABEL_558;
      case 268435488:
        v460 = 11;
        goto LABEL_558;
    }
  }

  v460 = 18;
LABEL_558:
  v461 = **(v451 + 16);
  if (*(*(v451 + 16) + 8) == v461)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v462 = *v964;
  v463 = *v451;
  v1011 = *v970;
  v464 = *v461;
  v465 = *(v970 + 16);
  v467 = *v465;
  v466 = v465[1];
  v968 = v448;
  if (v466 != v467)
  {
    if (((v466 - v467) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v468 = 0;
  v469 = v454 | v452 | v456;
  v470 = v463 - v972;
  v471 = -8 * v463 + 8;
  if (-8 * v463 == -8)
  {
    v472 = 1;
    goto LABEL_570;
  }

  v473 = -8;
  if (-8 * v463 == -16)
  {
    v472 = 1;
    do
    {
LABEL_569:
      v478 = *(v468 - 8);
      v468 -= 8;
      v472 *= v478;
    }

    while (v468 != v471);
    goto LABEL_570;
  }

  v474 = ((-16 - -8 * v463) >> 3) + 1;
  v468 = -8 * (v474 & 0x3FFFFFFFFFFFFFFELL);
  v475 = 1;
  v476 = v474 & 0x3FFFFFFFFFFFFFFELL;
  v477 = 1;
  do
  {
    v475 *= *v473;
    v477 *= *(v473 - 8);
    v473 -= 16;
    v476 -= 2;
  }

  while (v476);
  v472 = v477 * v475;
  if (v474 != (v474 & 0x3FFFFFFFFFFFFFFELL))
  {
    goto LABEL_569;
  }

LABEL_570:
  v479 = v469 | v458;
  if (-8 * v463 == -8)
  {
    v480 = 1;
    v481 = v957;
  }

  else
  {
    v481 = v957;
    if (-8 * v463)
    {
      v483 = ((0x1FFFFFFFFFFFFFFFLL * v463) & 0x1FFFFFFFFFFFFFFFLL) + 1;
      v482 = v471 - 8 * (v483 & 0x3FFFFFFFFFFFFFFELL);
      v484 = -8 * v463;
      v485 = 1;
      v486 = v483 & 0x3FFFFFFFFFFFFFFELL;
      v487 = 1;
      do
      {
        v485 *= *v484;
        v487 *= *(v484 - 8);
        v484 -= 16;
        v486 -= 2;
      }

      while (v486);
      v480 = v487 * v485;
      if (v483 == (v483 & 0x3FFFFFFFFFFFFFFELL))
      {
        goto LABEL_578;
      }
    }

    else
    {
      v480 = 1;
      v482 = -8 * v463 + 8;
    }

    do
    {
      v488 = *(v482 - 8);
      v482 -= 8;
      v480 *= v488;
    }

    while (v482);
  }

LABEL_578:
  v489 = 0;
  v1431 = 0u;
  v1432 = 0u;
  v490 = v479 | v460;
  v1429 = 0u;
  v1430 = 0u;
  v1427 = 0u;
  v1428 = 0u;
  v1425 = 0u;
  v1426 = 0u;
  v1423 = 0u;
  v1424 = 0u;
  v1421 = 0u;
  v1422 = 0u;
  v1419 = 0u;
  v1420 = 0u;
  v491 = *(v938 + 1480);
  v492 = BYTE2(v491);
  v1417 = 0u;
  v1418 = 0u;
  v1416 = 0u;
  v1415 = 0u;
  v1414 = 0u;
  v1413 = 0u;
  v1412 = 0u;
  v1411 = 0u;
  v1410 = 0u;
  v1409 = 0u;
  v1408 = 0u;
  v1407 = 0u;
  v1406 = 0u;
  v1405 = 0u;
  v1404 = 0u;
  v1403 = 0u;
  v1402 = 0u;
  v1401 = 0u;
  v1393 = v462;
  v1394 = v463;
  v1395 = v464;
  v1396 = v972;
  v1397 = v1011 - v463 + 1;
  v1398 = v470 - 1;
  v493 = (v472 + BYTE2(v491) - 1) / BYTE2(v491);
  v948 = 1;
  LODWORD(v479) = 1;
  v1399 = v472;
  v1400 = v480;
  v944 = v493;
  if (v480 == 1 || v493 >= v491)
  {
    goto LABEL_587;
  }

  v495 = 4 * BYTE2(v491);
  for (k = 4; ; v495 = k * BYTE2(v491))
  {
    v494 = v480 - 1;
    v479 = (v480 - 1 + v495) / v495;
    if (v495 <= v480)
    {
      break;
    }

    if (k < 2)
    {
      goto LABEL_586;
    }

LABEL_582:
    k >>= 1;
  }

  if (k >= 2 && v479 * v472 < v491)
  {
    goto LABEL_582;
  }

LABEL_586:
  v489 = 16;
  LODWORD(v480) = v495;
  v948 = v472;
  v944 = (v494 + v495) / v495;
LABEL_587:
  v1434 = v480;
  v1433 = v479;
  *&v497 = -1;
  *(&v497 + 1) = -1;
  v1392 = v497;
  v1391 = v497;
  v1390 = v497;
  v1387 = v497;
  v1388 = (2 * v961) | (32 * (v1011 - v463 + 1)) | v489 | 1;
  v1389 = v490;
  v498 = [*(v954 + 16) count] | 0x10100;
  v499 = MEMORY[0x277CD7370];
  v500 = *(v949 + *MEMORY[0x277CD7370]);
  *&v1392 = v498;
  v829 = *(v949 + *MEMORY[0x277CD7360]);
  v832 = *(v949 + *MEMORY[0x277CD7368]);
  v826 = *(v954 + 232);
  MPSLibrary::CreateUberShaderKey();
  v501 = *(v949 + *v499);
  v502 = MPSLibrary::GetPipelineStateForMPSKey();
  if (v502)
  {
    [v481 setComputePipelineState:{v502, v826, v829, v832, 0, 0}];
    MPSLibrary::ReleaseComputeState();
    MPSLibrary::ReleaseMPSKey();
    MPSSetNDArraysOnComputeEncoder(v481, v954, 4, 0, 0);
    v503 = *(v959 + 16);
    v505 = *v503;
    v504 = v503[1];
    if (v504 != v505)
    {
      if (((v504 - v505) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    v1015 = xmmword_239B0A0D0;
    v1019 = 0u;
    v958 = 0u;
    v960 = 0u;
    v506 = MEMORY[0x277CD73D0];
    if (v470 < v463)
    {
      v507 = -v972;
      do
      {
        v508 = (v463 + v507) & 0xF;
        v1209[0] = v1015;
        v1209[1] = v1019;
        v1209[2] = v958;
        v1209[3] = v960;
        if (*(v1209 + v508) == 1)
        {
          v509 = *(8 * v1011 + 8 * v507);
          v1205 = v1015;
          v1206 = v1019;
          v1207 = v958;
          v1208 = v960;
          *(&v1205 + v508) = v509;
          v960 = v1208;
          v958 = v1207;
          v1019 = v1206;
          v1015 = v1205;
        }

        v146 = __CFADD__(v507++, 1);
      }

      while (!v146);
    }

    makeStrideBytes();
    v510 = &v952[*v506];
    v511.i64[0] = 0x100000001;
    v511.i64[1] = 0x100000001;
    v512 = vceqq_s32(*v510, v511);
    v513.i64[0] = v512.i32[0];
    v513.i64[1] = v512.i32[1];
    v514 = v513;
    v515 = vceqq_s32(v510[1], v511);
    v513.i64[0] = v515.i32[0];
    v513.i64[1] = v515.i32[1];
    v516 = v513;
    v517 = vceqq_s32(v510[2], v511);
    v513.i64[0] = v517.i32[0];
    v513.i64[1] = v517.i32[1];
    v518 = v513;
    v519 = vceqq_s32(v510[3], v511);
    v513.i64[0] = v519.i32[0];
    v513.i64[1] = v519.i32[1];
    v520 = v513;
    v513.i64[0] = v512.i32[2];
    v513.i64[1] = v512.i32[3];
    v521 = v513;
    v513.i64[0] = v515.i32[2];
    v513.i64[1] = v515.i32[3];
    v522 = v513;
    v513.i64[0] = v517.i32[2];
    v513.i64[1] = v517.i32[3];
    v523 = v513;
    v513.i64[0] = v519.i32[2];
    v513.i64[1] = v519.i32[3];
    v524 = vbicq_s8(v1443, v513);
    v525 = vbicq_s8(v1441, v523);
    v526 = vbicq_s8(v1439, v522);
    v527 = vbicq_s8(v1437, v521);
    v528 = vbicq_s8(v1442, v520);
    v529 = vbicq_s8(v1440, v518);
    v530 = vbicq_s8(v1438, v516);
    v531 = MEMORY[0x277CD73D8];
    v532 = *&v952[*MEMORY[0x277CD73C8]];
    v533 = *&v952[*MEMORY[0x277CD73D8]];
    v534 = BYTE1(*&v952[*MEMORY[0x277CD73D8]]);
    v535 = BYTE2(*&v952[*MEMORY[0x277CD73D8]]);
    v536 = BYTE3(*&v952[*MEMORY[0x277CD73D8]]);
    v537 = BYTE4(*&v952[*MEMORY[0x277CD73D8]]);
    v538 = WORD2(*&v952[*MEMORY[0x277CD73D8]]) >> 8;
    v539 = BYTE6(*&v952[*MEMORY[0x277CD73D8]]);
    v540 = HIBYTE(*&v952[*MEMORY[0x277CD73D8]]);
    v541 = *&v952[*MEMORY[0x277CD73D8] + 8];
    v542 = BYTE1(*&v952[*MEMORY[0x277CD73D8] + 8]);
    v543 = BYTE2(*&v952[*MEMORY[0x277CD73D8] + 8]);
    v544 = BYTE3(*&v952[*MEMORY[0x277CD73D8] + 8]);
    v545 = BYTE12(*&v952[*MEMORY[0x277CD73D8]]);
    v546 = WORD6(*&v952[*MEMORY[0x277CD73D8]]) >> 8;
    v547 = vbicq_s8(v1436, v514);
    v548 = BYTE14(*&v952[*MEMORY[0x277CD73D8]]);
    v549 = HIBYTE(*&v952[*MEMORY[0x277CD73D8]]);
    if ((v532 & 0xFFF8) != 0)
    {
      v550 = v532 >> 3;
      v1204[0] = v547;
      v1204[1] = v527;
      v1204[2] = v530;
      v1204[3] = v526;
      v1204[4] = v529;
      v1204[5] = v525;
      v1204[6] = v528;
      v1204[7] = v524;
      v551 = *(v1204 + (v533 & 0xF)) / v550;
      v1203[0] = v547;
      v1203[1] = v527;
      v1203[2] = v530;
      v1203[3] = v526;
      v1203[4] = v529;
      v1203[5] = v525;
      v1203[6] = v528;
      v1203[7] = v524;
      v552 = *(v1203 + (v534 & 0xF));
      v1202[0] = v547;
      v1202[1] = v527;
      v1202[2] = v530;
      v1202[3] = v526;
      v1202[4] = v529;
      v1202[5] = v525;
      v1202[6] = v528;
      v1202[7] = v524;
      v553 = *(v1202 + (v535 & 0xF)) / v550;
      v1201[0] = v547;
      v1201[1] = v527;
      v1201[2] = v530;
      v1201[3] = v526;
      v1201[4] = v529;
      v1201[5] = v525;
      v1201[6] = v528;
      v1201[7] = v524;
      v554 = *(v1201 + (v536 & 0xF)) / v550;
      v1200[0] = v547;
      v1200[1] = v527;
      v1200[2] = v530;
      v1200[3] = v526;
      v1200[4] = v529;
      v1200[5] = v525;
      v1200[6] = v528;
      v1200[7] = v524;
      v555 = *(v1200 + (v537 & 0xF)) / v550;
      v1199[0] = v547;
      v1199[1] = v527;
      v1199[2] = v530;
      v1199[3] = v526;
      v1199[4] = v529;
      v1199[5] = v525;
      v1199[6] = v528;
      v1199[7] = v524;
      v556 = *(v1199 + (v538 & 0xF));
      v1198[0] = v547;
      v1198[1] = v527;
      v1198[2] = v530;
      v1198[3] = v526;
      v1198[4] = v529;
      v1198[5] = v525;
      v1198[6] = v528;
      v1198[7] = v524;
      v557 = *(v1198 + (v539 & 0xF));
      v1197[0] = v547;
      v1197[1] = v527;
      v1197[2] = v530;
      v1197[3] = v526;
      v1197[4] = v529;
      v1197[5] = v525;
      v1197[6] = v528;
      v1197[7] = v524;
      v558 = *(v1197 + (v540 & 0xF)) / v550;
      v1196[0] = v547;
      v1196[1] = v527;
      v1196[2] = v530;
      v1196[3] = v526;
      v1196[4] = v529;
      v1196[5] = v525;
      v1196[6] = v528;
      v1196[7] = v524;
      v559 = *(v1196 + (v541 & 0xF)) / v550;
      v1195[0] = v547;
      v1195[1] = v527;
      v1195[2] = v530;
      v1195[3] = v526;
      v1195[4] = v529;
      v1195[5] = v525;
      v1195[6] = v528;
      v1195[7] = v524;
      v560 = *(v1195 + (v542 & 0xF)) / v550;
      v1194[0] = v547;
      v1194[1] = v527;
      v1194[2] = v530;
      v1194[3] = v526;
      v1194[4] = v529;
      v1194[5] = v525;
      v1194[6] = v528;
      v1194[7] = v524;
      v561 = *(v1194 + (v543 & 0xF)) / v550;
      v1193[0] = v547;
      v1193[1] = v527;
      v1193[2] = v530;
      v1193[3] = v526;
      v1193[4] = v529;
      v1193[5] = v525;
      v1193[6] = v528;
      v1193[7] = v524;
      v562 = *(v1193 + (v544 & 0xF));
      v1192[0] = v547;
      v1192[1] = v527;
      v1192[2] = v530;
      v1192[3] = v526;
      v1192[4] = v529;
      v1192[5] = v525;
      v1192[6] = v528;
      v1192[7] = v524;
      v563 = *(v1192 + (v545 & 0xF)) / v550;
      v1191[0] = v547;
      v1191[1] = v527;
      v1191[2] = v530;
      v1191[3] = v526;
      v1191[4] = v529;
      v1191[5] = v525;
      v1191[6] = v528;
      v1191[7] = v524;
      v564 = *(v1191 + (v546 & 0xF)) / v550;
      v1190[0] = v547;
      v1190[1] = v527;
      v1190[2] = v530;
      v1190[3] = v526;
      v1190[4] = v529;
      v1190[5] = v525;
      v1190[6] = v528;
      v1190[7] = v524;
      v565 = *(v1190 + (v548 & 0xF)) / v550;
      v1189[0] = v547;
      v1189[1] = v527;
      v1189[2] = v530;
      v1189[3] = v526;
      v1189[4] = v529;
      v1189[5] = v525;
      v1189[6] = v528;
      v1189[7] = v524;
      *&v566 = v565;
      *(&v566 + 1) = *(v1189 + (v549 & 0xF)) / v550;
      *__pc = v566;
      *&v566 = v563;
      *(&v566 + 1) = v564;
      *v950 = v566;
      *&v566 = v561;
      *(&v566 + 1) = v562 / v550;
      v1002 = v566;
      *&v566 = v559;
      *(&v566 + 1) = v560;
      v946 = v566;
      *&v566 = v557 / v550;
      *(&v566 + 1) = v558;
      v998 = v566;
      *&v566 = v555;
      *(&v566 + 1) = v556 / v550;
      v942 = v566;
      *&v566 = v553;
      *(&v566 + 1) = v554;
      v939 = v566;
      *&v567 = v551;
      *(&v567 + 1) = v552 / v550;
    }

    else
    {
      v1188[0] = v547;
      v1188[1] = v527;
      v1188[2] = v530;
      v1188[3] = v526;
      v1188[4] = v529;
      v1188[5] = v525;
      v1188[6] = v528;
      v1188[7] = v524;
      v1187[0] = v547;
      v1187[1] = v527;
      v1187[2] = v530;
      v1187[3] = v526;
      v1187[4] = v529;
      v1187[5] = v525;
      v1187[6] = v528;
      v1187[7] = v524;
      v1186[0] = v547;
      v1186[1] = v527;
      v1186[2] = v530;
      v1186[3] = v526;
      v1186[4] = v529;
      v1186[5] = v525;
      v1186[6] = v528;
      v1186[7] = v524;
      v1185[0] = v547;
      v1185[1] = v527;
      v1185[2] = v530;
      v1185[3] = v526;
      v1185[4] = v529;
      v1185[5] = v525;
      v1185[6] = v528;
      v1185[7] = v524;
      v1184[0] = v547;
      v1184[1] = v527;
      v1184[2] = v530;
      v1184[3] = v526;
      v1184[4] = v529;
      v1184[5] = v525;
      v1184[6] = v528;
      v1184[7] = v524;
      v1183[0] = v547;
      v1183[1] = v527;
      v1183[2] = v530;
      v1183[3] = v526;
      v1183[4] = v529;
      v1183[5] = v525;
      v1183[6] = v528;
      v1183[7] = v524;
      v1182[0] = v547;
      v1182[1] = v527;
      v1182[2] = v530;
      v1182[3] = v526;
      v1182[4] = v529;
      v1182[5] = v525;
      v1182[6] = v528;
      v1182[7] = v524;
      v1181[0] = v547;
      v1181[1] = v527;
      v1181[2] = v530;
      v1181[3] = v526;
      v1181[4] = v529;
      v1181[5] = v525;
      v1181[6] = v528;
      v1181[7] = v524;
      v1180[0] = v547;
      v1180[1] = v527;
      v1180[2] = v530;
      v1180[3] = v526;
      v1180[4] = v529;
      v1180[5] = v525;
      v1180[6] = v528;
      v1180[7] = v524;
      v1179[0] = v547;
      v1179[1] = v527;
      v1179[2] = v530;
      v1179[3] = v526;
      v1179[4] = v529;
      v1179[5] = v525;
      v1179[6] = v528;
      v1179[7] = v524;
      v1178[0] = v547;
      v1178[1] = v527;
      v1178[2] = v530;
      v1178[3] = v526;
      v1178[4] = v529;
      v1178[5] = v525;
      v1178[6] = v528;
      v1178[7] = v524;
      v1177[0] = v547;
      v1177[1] = v527;
      v1177[2] = v530;
      v1177[3] = v526;
      v1177[4] = v529;
      v1177[5] = v525;
      v1177[6] = v528;
      v1177[7] = v524;
      v1176[0] = v547;
      v1176[1] = v527;
      v1176[2] = v530;
      v1176[3] = v526;
      v1176[4] = v529;
      v1176[5] = v525;
      v1176[6] = v528;
      v1176[7] = v524;
      v1175[0] = v547;
      v1175[1] = v527;
      v1175[2] = v530;
      v1175[3] = v526;
      v1175[4] = v529;
      v1175[5] = v525;
      v1175[6] = v528;
      v1175[7] = v524;
      v1174[0] = v547;
      v1174[1] = v527;
      v1174[2] = v530;
      v1174[3] = v526;
      v1174[4] = v529;
      v1174[5] = v525;
      v1174[6] = v528;
      v1174[7] = v524;
      v1173[0] = v547;
      v1173[1] = v527;
      v1173[2] = v530;
      v1173[3] = v526;
      v1173[4] = v529;
      v1173[5] = v525;
      v1173[6] = v528;
      v1173[7] = v524;
      *&v568 = *(v1174 + (v548 & 0xF));
      *&v569 = *(v1176 + (v545 & 0xF));
      *(&v568 + 1) = *(v1173 + (v549 & 0xF));
      *__pc = v568;
      *(&v569 + 1) = *(v1175 + (v546 & 0xF));
      *v950 = v569;
      *&v568 = *(v1178 + (v543 & 0xF));
      *(&v568 + 1) = *(v1177 + (v544 & 0xF));
      v1002 = v568;
      *&v568 = *(v1180 + (v541 & 0xF));
      *(&v568 + 1) = *(v1179 + (v542 & 0xF));
      v946 = v568;
      *&v568 = *(v1182 + (v539 & 0xF));
      *(&v568 + 1) = *(v1181 + (v540 & 0xF));
      v998 = v568;
      *&v568 = *(v1184 + (v537 & 0xF));
      *(&v568 + 1) = *(v1183 + (v538 & 0xF));
      v942 = v568;
      *&v568 = *(v1186 + (v535 & 0xF));
      *(&v568 + 1) = *(v1185 + (v536 & 0xF));
      v939 = v568;
      *&v567 = *(v1188 + (v533 & 0xF));
      *(&v567 + 1) = *(v1187 + (v534 & 0xF));
    }

    v933 = v567;
    makeStrideBytes();
    v570 = *v506;
    v571.i64[0] = 0x100000001;
    v571.i64[1] = 0x100000001;
    v572 = vceqq_s32(*&v953[v570], v571);
    v573.i64[0] = v572.i32[0];
    v573.i64[1] = v572.i32[1];
    v574 = v573;
    v575 = vceqq_s32(*&v953[v570 + 16], v571);
    v573.i64[0] = v575.i32[0];
    v573.i64[1] = v575.i32[1];
    v576 = v573;
    v577 = vceqq_s32(*&v953[v570 + 32], v571);
    v573.i64[0] = v577.i32[0];
    v573.i64[1] = v577.i32[1];
    v578 = v573;
    v579 = vceqq_s32(*&v953[v570 + 48], v571);
    v573.i64[0] = v579.i32[0];
    v573.i64[1] = v579.i32[1];
    v580 = v573;
    v573.i64[0] = v572.i32[2];
    v573.i64[1] = v572.i32[3];
    v581 = v573;
    v573.i64[0] = v575.i32[2];
    v573.i64[1] = v575.i32[3];
    v582 = v573;
    v573.i64[0] = v577.i32[2];
    v573.i64[1] = v577.i32[3];
    v583 = v573;
    v573.i64[0] = v579.i32[2];
    v573.i64[1] = v579.i32[3];
    v584 = vbicq_s8(v1443, v573);
    v585 = vbicq_s8(v1441, v583);
    v586 = vbicq_s8(v1439, v582);
    v587 = vbicq_s8(v1437, v581);
    v588 = vbicq_s8(v1442, v580);
    v589 = vbicq_s8(v1440, v578);
    v590 = vbicq_s8(v1438, v576);
    v591 = *v531;
    v592 = *&v953[*MEMORY[0x277CD73C8]];
    v593 = *&v953[v591];
    v594 = BYTE1(*&v953[v591]);
    v595 = BYTE2(*&v953[v591]);
    v596 = BYTE3(*&v953[v591]);
    v597 = BYTE4(*&v953[v591]);
    v598 = WORD2(*&v953[v591]) >> 8;
    v599 = BYTE6(*&v953[v591]);
    v600 = HIBYTE(*&v953[v591]);
    v601 = *&v953[v591 + 8];
    v602 = BYTE1(*&v953[v591 + 8]);
    v603 = BYTE2(*&v953[v591 + 8]);
    v604 = BYTE3(*&v953[v591 + 8]);
    v605 = BYTE12(*&v953[v591]);
    v606 = WORD6(*&v953[v591]) >> 8;
    v607 = vbicq_s8(v1436, v574);
    v608 = BYTE14(*&v953[v591]);
    v609 = HIBYTE(*&v953[v591]);
    if ((v592 & 0xFFF8) != 0)
    {
      v610 = v592 >> 3;
      v1172[0] = v607;
      v1172[1] = v587;
      v1172[2] = v590;
      v1172[3] = v586;
      v1172[4] = v589;
      v1172[5] = v585;
      v1172[6] = v588;
      v1172[7] = v584;
      v611 = *(v1172 + (v593 & 0xF)) / v610;
      v1171[0] = v607;
      v1171[1] = v587;
      v1171[2] = v590;
      v1171[3] = v586;
      v1171[4] = v589;
      v1171[5] = v585;
      v1171[6] = v588;
      v1171[7] = v584;
      v612 = *(v1171 + (v594 & 0xF));
      v1170[0] = v607;
      v1170[1] = v587;
      v1170[2] = v590;
      v1170[3] = v586;
      v1170[4] = v589;
      v1170[5] = v585;
      v1170[6] = v588;
      v1170[7] = v584;
      v613 = *(v1170 + (v595 & 0xF)) / v610;
      v1169[0] = v607;
      v1169[1] = v587;
      v1169[2] = v590;
      v1169[3] = v586;
      v1169[4] = v589;
      v1169[5] = v585;
      v1169[6] = v588;
      v1169[7] = v584;
      v614 = *(v1169 + (v596 & 0xF)) / v610;
      v1168[0] = v607;
      v1168[1] = v587;
      v1168[2] = v590;
      v1168[3] = v586;
      v1168[4] = v589;
      v1168[5] = v585;
      v1168[6] = v588;
      v1168[7] = v584;
      v615 = *(v1168 + (v597 & 0xF)) / v610;
      v1167[0] = v607;
      v1167[1] = v587;
      v1167[2] = v590;
      v1167[3] = v586;
      v1167[4] = v589;
      v1167[5] = v585;
      v1167[6] = v588;
      v1167[7] = v584;
      v616 = *(v1167 + (v598 & 0xF));
      v1166[0] = v607;
      v1166[1] = v587;
      v1166[2] = v590;
      v1166[3] = v586;
      v1166[4] = v589;
      v1166[5] = v585;
      v1166[6] = v588;
      v1166[7] = v584;
      v617 = *(v1166 + (v599 & 0xF));
      v1165[0] = v607;
      v1165[1] = v587;
      v1165[2] = v590;
      v1165[3] = v586;
      v1165[4] = v589;
      v1165[5] = v585;
      v1165[6] = v588;
      v1165[7] = v584;
      v618 = *(v1165 + (v600 & 0xF)) / v610;
      v1164[0] = v607;
      v1164[1] = v587;
      v1164[2] = v590;
      v1164[3] = v586;
      v1164[4] = v589;
      v1164[5] = v585;
      v1164[6] = v588;
      v1164[7] = v584;
      v619 = *(v1164 + (v601 & 0xF)) / v610;
      v1163[0] = v607;
      v1163[1] = v587;
      v1163[2] = v590;
      v1163[3] = v586;
      v1163[4] = v589;
      v1163[5] = v585;
      v1163[6] = v588;
      v1163[7] = v584;
      v620 = *(v1163 + (v602 & 0xF)) / v610;
      v1162[0] = v607;
      v1162[1] = v587;
      v1162[2] = v590;
      v1162[3] = v586;
      v1162[4] = v589;
      v1162[5] = v585;
      v1162[6] = v588;
      v1162[7] = v584;
      v621 = *(v1162 + (v603 & 0xF)) / v610;
      v1161[0] = v607;
      v1161[1] = v587;
      v1161[2] = v590;
      v1161[3] = v586;
      v1161[4] = v589;
      v1161[5] = v585;
      v1161[6] = v588;
      v1161[7] = v584;
      v622 = *(v1161 + (v604 & 0xF));
      v1160[0] = v607;
      v1160[1] = v587;
      v1160[2] = v590;
      v1160[3] = v586;
      v1160[4] = v589;
      v1160[5] = v585;
      v1160[6] = v588;
      v1160[7] = v584;
      v623 = *(v1160 + (v605 & 0xF)) / v610;
      v1159[0] = v607;
      v1159[1] = v587;
      v1159[2] = v590;
      v1159[3] = v586;
      v1159[4] = v589;
      v1159[5] = v585;
      v1159[6] = v588;
      v1159[7] = v584;
      v624 = *(v1159 + (v606 & 0xF)) / v610;
      v1158[0] = v607;
      v1158[1] = v587;
      v1158[2] = v590;
      v1158[3] = v586;
      v1158[4] = v589;
      v1158[5] = v585;
      v1158[6] = v588;
      v1158[7] = v584;
      v625 = *(v1158 + (v608 & 0xF)) / v610;
      v1157[0] = v607;
      v1157[1] = v587;
      v1157[2] = v590;
      v1157[3] = v586;
      v1157[4] = v589;
      v1157[5] = v585;
      v1157[6] = v588;
      v1157[7] = v584;
      v626.i64[0] = v625;
      v626.i64[1] = *(v1157 + (v609 & 0xF)) / v610;
      v965 = v626;
      v626.i64[0] = v623;
      v626.i64[1] = v624;
      v962 = v626;
      v626.i64[0] = v621;
      v626.i64[1] = v622 / v610;
      v932 = v626;
      v626.i64[0] = v619;
      v626.i64[1] = v620;
      v931 = v626;
      v626.i64[0] = v617 / v610;
      v626.i64[1] = v618;
      v929 = v626;
      v626.i64[0] = v615;
      v626.i64[1] = v616 / v610;
      v927 = v626;
      v626.i64[0] = v613;
      v626.i64[1] = v614;
      v925 = v626;
      v627.i64[0] = v611;
      v627.i64[1] = v612 / v610;
    }

    else
    {
      v1156[0] = v607;
      v1156[1] = v587;
      v1156[2] = v590;
      v1156[3] = v586;
      v1156[4] = v589;
      v1156[5] = v585;
      v1156[6] = v588;
      v1156[7] = v584;
      v1155[0] = v607;
      v1155[1] = v587;
      v1155[2] = v590;
      v1155[3] = v586;
      v1155[4] = v589;
      v1155[5] = v585;
      v1155[6] = v588;
      v1155[7] = v584;
      v1154[0] = v607;
      v1154[1] = v587;
      v1154[2] = v590;
      v1154[3] = v586;
      v1154[4] = v589;
      v1154[5] = v585;
      v1154[6] = v588;
      v1154[7] = v584;
      v1153[0] = v607;
      v1153[1] = v587;
      v1153[2] = v590;
      v1153[3] = v586;
      v1153[4] = v589;
      v1153[5] = v585;
      v1153[6] = v588;
      v1153[7] = v584;
      v1152[0] = v607;
      v1152[1] = v587;
      v1152[2] = v590;
      v1152[3] = v586;
      v1152[4] = v589;
      v1152[5] = v585;
      v1152[6] = v588;
      v1152[7] = v584;
      v1151[0] = v607;
      v1151[1] = v587;
      v1151[2] = v590;
      v1151[3] = v586;
      v1151[4] = v589;
      v1151[5] = v585;
      v1151[6] = v588;
      v1151[7] = v584;
      v1150[0] = v607;
      v1150[1] = v587;
      v1150[2] = v590;
      v1150[3] = v586;
      v1150[4] = v589;
      v1150[5] = v585;
      v1150[6] = v588;
      v1150[7] = v584;
      v1149[0] = v607;
      v1149[1] = v587;
      v1149[2] = v590;
      v1149[3] = v586;
      v1149[4] = v589;
      v1149[5] = v585;
      v1149[6] = v588;
      v1149[7] = v584;
      v1148[0] = v607;
      v1148[1] = v587;
      v1148[2] = v590;
      v1148[3] = v586;
      v1148[4] = v589;
      v1148[5] = v585;
      v1148[6] = v588;
      v1148[7] = v584;
      v1147[0] = v607;
      v1147[1] = v587;
      v1147[2] = v590;
      v1147[3] = v586;
      v1147[4] = v589;
      v1147[5] = v585;
      v1147[6] = v588;
      v1147[7] = v584;
      v1146[0] = v607;
      v1146[1] = v587;
      v1146[2] = v590;
      v1146[3] = v586;
      v1146[4] = v589;
      v1146[5] = v585;
      v1146[6] = v588;
      v1146[7] = v584;
      v1145[0] = v607;
      v1145[1] = v587;
      v1145[2] = v590;
      v1145[3] = v586;
      v1145[4] = v589;
      v1145[5] = v585;
      v1145[6] = v588;
      v1145[7] = v584;
      v1144[0] = v607;
      v1144[1] = v587;
      v1144[2] = v590;
      v1144[3] = v586;
      v1144[4] = v589;
      v1144[5] = v585;
      v1144[6] = v588;
      v1144[7] = v584;
      v1143[0] = v607;
      v1143[1] = v587;
      v1143[2] = v590;
      v1143[3] = v586;
      v1143[4] = v589;
      v1143[5] = v585;
      v1143[6] = v588;
      v1143[7] = v584;
      v1142[0] = v607;
      v1142[1] = v587;
      v1142[2] = v590;
      v1142[3] = v586;
      v1142[4] = v589;
      v1142[5] = v585;
      v1142[6] = v588;
      v1142[7] = v584;
      v1141[0] = v607;
      v1141[1] = v587;
      v1141[2] = v590;
      v1141[3] = v586;
      v1141[4] = v589;
      v1141[5] = v585;
      v1141[6] = v588;
      v1141[7] = v584;
      v628.i64[0] = *(v1142 + (v608 & 0xF));
      v629.i64[0] = *(v1144 + (v605 & 0xF));
      v628.i64[1] = *(v1141 + (v609 & 0xF));
      v965 = v628;
      v629.i64[1] = *(v1143 + (v606 & 0xF));
      v962 = v629;
      v628.i64[0] = *(v1146 + (v603 & 0xF));
      v628.i64[1] = *(v1145 + (v604 & 0xF));
      v932 = v628;
      v628.i64[0] = *(v1148 + (v601 & 0xF));
      v628.i64[1] = *(v1147 + (v602 & 0xF));
      v931 = v628;
      v628.i64[0] = *(v1150 + (v599 & 0xF));
      v628.i64[1] = *(v1149 + (v600 & 0xF));
      v929 = v628;
      v628.i64[0] = *(v1152 + (v597 & 0xF));
      v628.i64[1] = *(v1151 + (v598 & 0xF));
      v927 = v628;
      v628.i64[0] = *(v1154 + (v595 & 0xF));
      v628.i64[1] = *(v1153 + (v596 & 0xF));
      v925 = v628;
      v627.i64[0] = *(v1156 + (v593 & 0xF));
      v627.i64[1] = *(v1155 + (v594 & 0xF));
    }

    v923 = v627;
    v630 = *&v953[v591];
    v631 = &v953[v570];
    v632 = *v631;
    v633 = v631[1];
    v634 = v631[2];
    v1140 = v631[3];
    v1139[2] = v634;
    v1139[1] = v633;
    v1139[0] = v632;
    v587.i32[0] = *(v1139 + (v630 & 0xF));
    v913 = v587;
    v1138[3] = v1140;
    v1138[2] = v634;
    v1138[1] = v633;
    v1138[0] = v632;
    v587.i32[0] = *(v1138 + (BYTE1(v630) & 0xF));
    v915 = v587;
    v1137[3] = v1140;
    v1137[2] = v634;
    v1137[1] = v633;
    v1137[0] = v632;
    v587.i32[0] = *(v1137 + (BYTE2(v630) & 0xF));
    v919 = v587;
    v1136[3] = v1140;
    v1136[2] = v634;
    v1136[1] = v633;
    v1136[0] = v632;
    v587.i32[0] = *(v1136 + (BYTE3(v630) & 0xF));
    v921 = v587;
    v1135[3] = v1140;
    v1135[2] = v634;
    v1135[1] = v633;
    v1135[0] = v632;
    v587.i32[0] = *(v1135 + (BYTE4(v630) & 0xF));
    v903 = v587;
    v1134[3] = v1140;
    v1134[2] = v634;
    v1134[1] = v633;
    v1134[0] = v632;
    v587.i32[0] = *(v1134 + (BYTE5(v630) & 0xF));
    v907 = v587;
    v1133[3] = v1140;
    v1133[2] = v634;
    v1133[1] = v633;
    v1133[0] = v632;
    v587.i32[0] = *(v1133 + (BYTE6(v630) & 0xF));
    v911 = v587;
    v1132[3] = v1140;
    v1132[2] = v634;
    v1132[1] = v633;
    v1132[0] = v632;
    v587.i32[0] = *(v1132 + (BYTE7(v630) & 0xF));
    v917 = v587;
    v1131[3] = v1140;
    v1131[2] = v634;
    v1131[1] = v633;
    v1131[0] = v632;
    v587.i32[0] = *(v1131 + (BYTE8(v630) & 0xF));
    v895 = v587;
    v1130[3] = v1140;
    v1130[2] = v634;
    v1130[1] = v633;
    v1130[0] = v632;
    v587.i32[0] = *(v1130 + (BYTE9(v630) & 0xF));
    v899 = v587;
    v1129[3] = v1140;
    v1129[2] = v634;
    v1129[1] = v633;
    v1129[0] = v632;
    v587.i32[0] = *(v1129 + (BYTE10(v630) & 0xF));
    v905 = v587;
    v1128[3] = v1140;
    v1128[2] = v634;
    v1128[1] = v633;
    v1128[0] = v632;
    v587.i32[0] = *(v1128 + (BYTE11(v630) & 0xF));
    v909 = v587;
    v1127[3] = v1140;
    v1127[2] = v634;
    v1127[1] = v633;
    v1127[0] = v632;
    v587.i32[0] = *(v1127 + (BYTE12(v630) & 0xF));
    v891 = v587;
    v1126[3] = v1140;
    v1126[2] = v634;
    v1126[1] = v633;
    v1126[0] = v632;
    v587.i32[0] = *(v1126 + (BYTE13(v630) & 0xF));
    v893 = v587;
    v1125[3] = v1140;
    v1125[2] = v634;
    v1125[1] = v633;
    v1125[0] = v632;
    v587.i32[0] = *(v1125 + (BYTE14(v630) & 0xF));
    v897 = v587;
    v1124[3] = v1140;
    v1124[2] = v634;
    v1124[1] = v633;
    v1124[0] = v632;
    v632.i32[0] = *(v1124 + (HIBYTE(v630) & 0xF));
    v901 = v632;
    makeStrideBytes();
    v635 = &v937[*v506];
    v636.i64[0] = 0x100000001;
    v636.i64[1] = 0x100000001;
    v637 = vceqq_s32(*v635, v636);
    v638.i64[0] = v637.i32[0];
    v638.i64[1] = v637.i32[1];
    v639 = v638;
    v640 = vceqq_s32(v635[1], v636);
    v638.i64[0] = v640.i32[0];
    v638.i64[1] = v640.i32[1];
    v641 = v638;
    v642 = vceqq_s32(v635[2], v636);
    v638.i64[0] = v642.i32[0];
    v638.i64[1] = v642.i32[1];
    v643 = v638;
    v644 = vceqq_s32(v635[3], v636);
    v638.i64[0] = v644.i32[0];
    v638.i64[1] = v644.i32[1];
    v645 = v638;
    v638.i64[0] = v637.i32[2];
    v638.i64[1] = v637.i32[3];
    v646 = v638;
    v638.i64[0] = v640.i32[2];
    v638.i64[1] = v640.i32[3];
    v647 = v638;
    v638.i64[0] = v642.i32[2];
    v638.i64[1] = v642.i32[3];
    v648 = v638;
    v638.i64[0] = v644.i32[2];
    v638.i64[1] = v644.i32[3];
    v649 = vbicq_s8(v1443, v638);
    v650 = vbicq_s8(v1441, v648);
    v651 = vbicq_s8(v1439, v647);
    v652 = vbicq_s8(v1437, v646);
    v653 = vbicq_s8(v1442, v645);
    v654 = vbicq_s8(v1440, v643);
    v655 = vbicq_s8(v1438, v641);
    v656 = *&v937[*MEMORY[0x277CD73C8]];
    v657 = *&v937[*v531];
    v658 = BYTE1(*&v937[*v531]);
    v659 = BYTE2(*&v937[*v531]);
    v660 = BYTE3(*&v937[*v531]);
    v661 = BYTE4(*&v937[*v531]);
    v662 = WORD2(*&v937[*v531]) >> 8;
    v663 = BYTE6(*&v937[*v531]);
    v664 = HIBYTE(*&v937[*v531]);
    v665 = *&v937[*v531 + 8];
    v666 = BYTE1(*&v937[*v531 + 8]);
    v667 = BYTE2(*&v937[*v531 + 8]);
    v668 = BYTE3(*&v937[*v531 + 8]);
    v669 = BYTE12(*&v937[*v531]);
    v670 = WORD6(*&v937[*v531]) >> 8;
    v671 = vbicq_s8(v1436, v639);
    v672 = BYTE14(*&v937[*v531]);
    v673 = HIBYTE(*&v937[*v531]);
    if ((v656 & 0xFFF8) != 0)
    {
      v674 = v656 >> 3;
      v1123[0] = v671;
      v1123[1] = v652;
      v1123[2] = v655;
      v1123[3] = v651;
      v1123[4] = v654;
      v1123[5] = v650;
      v1123[6] = v653;
      v1123[7] = v649;
      v675 = *(v1123 + (v657 & 0xF)) / v674;
      v1122[0] = v671;
      v1122[1] = v652;
      v1122[2] = v655;
      v1122[3] = v651;
      v1122[4] = v654;
      v1122[5] = v650;
      v1122[6] = v653;
      v1122[7] = v649;
      v676 = *(v1122 + (v658 & 0xF));
      v1121[0] = v671;
      v1121[1] = v652;
      v1121[2] = v655;
      v1121[3] = v651;
      v1121[4] = v654;
      v1121[5] = v650;
      v1121[6] = v653;
      v1121[7] = v649;
      v677 = *(v1121 + (v659 & 0xF)) / v674;
      v1120[0] = v671;
      v1120[1] = v652;
      v1120[2] = v655;
      v1120[3] = v651;
      v1120[4] = v654;
      v1120[5] = v650;
      v1120[6] = v653;
      v1120[7] = v649;
      v678 = *(v1120 + (v660 & 0xF)) / v674;
      v1119[0] = v671;
      v1119[1] = v652;
      v1119[2] = v655;
      v1119[3] = v651;
      v1119[4] = v654;
      v1119[5] = v650;
      v1119[6] = v653;
      v1119[7] = v649;
      v679 = *(v1119 + (v661 & 0xF)) / v674;
      v1118[0] = v671;
      v1118[1] = v652;
      v1118[2] = v655;
      v1118[3] = v651;
      v1118[4] = v654;
      v1118[5] = v650;
      v1118[6] = v653;
      v1118[7] = v649;
      v680 = *(v1118 + (v662 & 0xF));
      v1117[0] = v671;
      v1117[1] = v652;
      v1117[2] = v655;
      v1117[3] = v651;
      v1117[4] = v654;
      v1117[5] = v650;
      v1117[6] = v653;
      v1117[7] = v649;
      v681 = *(v1117 + (v663 & 0xF));
      v1116[0] = v671;
      v1116[1] = v652;
      v1116[2] = v655;
      v1116[3] = v651;
      v1116[4] = v654;
      v1116[5] = v650;
      v1116[6] = v653;
      v1116[7] = v649;
      v682 = *(v1116 + (v664 & 0xF)) / v674;
      v1115[0] = v671;
      v1115[1] = v652;
      v1115[2] = v655;
      v1115[3] = v651;
      v1115[4] = v654;
      v1115[5] = v650;
      v1115[6] = v653;
      v1115[7] = v649;
      v683 = *(v1115 + (v665 & 0xF)) / v674;
      v1114[0] = v671;
      v1114[1] = v652;
      v1114[2] = v655;
      v1114[3] = v651;
      v1114[4] = v654;
      v1114[5] = v650;
      v1114[6] = v653;
      v1114[7] = v649;
      v684 = *(v1114 + (v666 & 0xF)) / v674;
      v1113[0] = v671;
      v1113[1] = v652;
      v1113[2] = v655;
      v1113[3] = v651;
      v1113[4] = v654;
      v1113[5] = v650;
      v1113[6] = v653;
      v1113[7] = v649;
      v685 = *(v1113 + (v667 & 0xF)) / v674;
      v1112[0] = v671;
      v1112[1] = v652;
      v1112[2] = v655;
      v1112[3] = v651;
      v1112[4] = v654;
      v1112[5] = v650;
      v1112[6] = v653;
      v1112[7] = v649;
      v686 = *(v1112 + (v668 & 0xF));
      v1111[0] = v671;
      v1111[1] = v652;
      v1111[2] = v655;
      v1111[3] = v651;
      v1111[4] = v654;
      v1111[5] = v650;
      v1111[6] = v653;
      v1111[7] = v649;
      v687 = *(v1111 + (v669 & 0xF)) / v674;
      v1110[0] = v671;
      v1110[1] = v652;
      v1110[2] = v655;
      v1110[3] = v651;
      v1110[4] = v654;
      v1110[5] = v650;
      v1110[6] = v653;
      v1110[7] = v649;
      v688 = *(v1110 + (v670 & 0xF)) / v674;
      v1109[0] = v671;
      v1109[1] = v652;
      v1109[2] = v655;
      v1109[3] = v651;
      v1109[4] = v654;
      v1109[5] = v650;
      v1109[6] = v653;
      v1109[7] = v649;
      v689 = *(v1109 + (v672 & 0xF)) / v674;
      v1108[0] = v671;
      v1108[1] = v652;
      v1108[2] = v655;
      v1108[3] = v651;
      v1108[4] = v654;
      v1108[5] = v650;
      v1108[6] = v653;
      v1108[7] = v649;
      *&v690 = v689;
      *(&v690 + 1) = *(v1108 + (v673 & 0xF)) / v674;
      v889 = v690;
      *&v690 = v687;
      *(&v690 + 1) = v688;
      v887 = v690;
      *&v690 = v685;
      *(&v690 + 1) = v686 / v674;
      v885 = v690;
      *&v690 = v683;
      *(&v690 + 1) = v684;
      v883 = v690;
      *&v690 = v681 / v674;
      *(&v690 + 1) = v682;
      v881 = v690;
      *&v690 = v679;
      *(&v690 + 1) = v680 / v674;
      v879 = v690;
      *&v690 = v677;
      *(&v690 + 1) = v678;
      v877 = v690;
      *&v691 = v675;
      *(&v691 + 1) = v676 / v674;
    }

    else
    {
      v1107[0] = v671;
      v1107[1] = v652;
      v1107[2] = v655;
      v1107[3] = v651;
      v1107[4] = v654;
      v1107[5] = v650;
      v1107[6] = v653;
      v1107[7] = v649;
      v1106[0] = v671;
      v1106[1] = v652;
      v1106[2] = v655;
      v1106[3] = v651;
      v1106[4] = v654;
      v1106[5] = v650;
      v1106[6] = v653;
      v1106[7] = v649;
      v1105[0] = v671;
      v1105[1] = v652;
      v1105[2] = v655;
      v1105[3] = v651;
      v1105[4] = v654;
      v1105[5] = v650;
      v1105[6] = v653;
      v1105[7] = v649;
      v1104[0] = v671;
      v1104[1] = v652;
      v1104[2] = v655;
      v1104[3] = v651;
      v1104[4] = v654;
      v1104[5] = v650;
      v1104[6] = v653;
      v1104[7] = v649;
      v1103[0] = v671;
      v1103[1] = v652;
      v1103[2] = v655;
      v1103[3] = v651;
      v1103[4] = v654;
      v1103[5] = v650;
      v1103[6] = v653;
      v1103[7] = v649;
      v1102[0] = v671;
      v1102[1] = v652;
      v1102[2] = v655;
      v1102[3] = v651;
      v1102[4] = v654;
      v1102[5] = v650;
      v1102[6] = v653;
      v1102[7] = v649;
      v1101[0] = v671;
      v1101[1] = v652;
      v1101[2] = v655;
      v1101[3] = v651;
      v1101[4] = v654;
      v1101[5] = v650;
      v1101[6] = v653;
      v1101[7] = v649;
      v1100[0] = v671;
      v1100[1] = v652;
      v1100[2] = v655;
      v1100[3] = v651;
      v1100[4] = v654;
      v1100[5] = v650;
      v1100[6] = v653;
      v1100[7] = v649;
      v1099[0] = v671;
      v1099[1] = v652;
      v1099[2] = v655;
      v1099[3] = v651;
      v1099[4] = v654;
      v1099[5] = v650;
      v1099[6] = v653;
      v1099[7] = v649;
      v1098[0] = v671;
      v1098[1] = v652;
      v1098[2] = v655;
      v1098[3] = v651;
      v1098[4] = v654;
      v1098[5] = v650;
      v1098[6] = v653;
      v1098[7] = v649;
      v1097[0] = v671;
      v1097[1] = v652;
      v1097[2] = v655;
      v1097[3] = v651;
      v1097[4] = v654;
      v1097[5] = v650;
      v1097[6] = v653;
      v1097[7] = v649;
      v1096[0] = v671;
      v1096[1] = v652;
      v1096[2] = v655;
      v1096[3] = v651;
      v1096[4] = v654;
      v1096[5] = v650;
      v1096[6] = v653;
      v1096[7] = v649;
      v1095[0] = v671;
      v1095[1] = v652;
      v1095[2] = v655;
      v1095[3] = v651;
      v1095[4] = v654;
      v1095[5] = v650;
      v1095[6] = v653;
      v1095[7] = v649;
      v1094[0] = v671;
      v1094[1] = v652;
      v1094[2] = v655;
      v1094[3] = v651;
      v1094[4] = v654;
      v1094[5] = v650;
      v1094[6] = v653;
      v1094[7] = v649;
      v1093[0] = v671;
      v1093[1] = v652;
      v1093[2] = v655;
      v1093[3] = v651;
      v1093[4] = v654;
      v1093[5] = v650;
      v1093[6] = v653;
      v1093[7] = v649;
      v1092[0] = v671;
      v1092[1] = v652;
      v1092[2] = v655;
      v1092[3] = v651;
      v1092[4] = v654;
      v1092[5] = v650;
      v1092[6] = v653;
      v1092[7] = v649;
      *&v692 = *(v1093 + (v672 & 0xF));
      *&v693 = *(v1095 + (v669 & 0xF));
      *(&v692 + 1) = *(v1092 + (v673 & 0xF));
      v889 = v692;
      *(&v693 + 1) = *(v1094 + (v670 & 0xF));
      v887 = v693;
      *&v692 = *(v1097 + (v667 & 0xF));
      *(&v692 + 1) = *(v1096 + (v668 & 0xF));
      v885 = v692;
      *&v692 = *(v1099 + (v665 & 0xF));
      *(&v692 + 1) = *(v1098 + (v666 & 0xF));
      v883 = v692;
      *&v692 = *(v1101 + (v663 & 0xF));
      *(&v692 + 1) = *(v1100 + (v664 & 0xF));
      v881 = v692;
      *&v692 = *(v1103 + (v661 & 0xF));
      *(&v692 + 1) = *(v1102 + (v662 & 0xF));
      v879 = v692;
      *&v692 = *(v1105 + (v659 & 0xF));
      *(&v692 + 1) = *(v1104 + (v660 & 0xF));
      v877 = v692;
      *&v691 = *(v1107 + (v657 & 0xF));
      *(&v691 + 1) = *(v1106 + (v658 & 0xF));
    }

    v875 = v691;
    makeStrideBytes();
    v694 = &v956[*v506];
    v695.i64[0] = 0x100000001;
    v695.i64[1] = 0x100000001;
    v696 = vceqq_s32(*v694, v695);
    v697.i64[0] = v696.i32[0];
    v697.i64[1] = v696.i32[1];
    v698 = v697;
    v699 = vceqq_s32(v694[1], v695);
    v697.i64[0] = v699.i32[0];
    v697.i64[1] = v699.i32[1];
    v700 = v697;
    v701 = vceqq_s32(v694[2], v695);
    v697.i64[0] = v701.i32[0];
    v697.i64[1] = v701.i32[1];
    v702 = v697;
    v703 = vceqq_s32(v694[3], v695);
    v697.i64[0] = v703.i32[0];
    v697.i64[1] = v703.i32[1];
    v704 = v697;
    v697.i64[0] = v696.i32[2];
    v697.i64[1] = v696.i32[3];
    v705 = v697;
    v697.i64[0] = v699.i32[2];
    v697.i64[1] = v699.i32[3];
    v706 = v697;
    v697.i64[0] = v701.i32[2];
    v697.i64[1] = v701.i32[3];
    v707 = v697;
    v697.i64[0] = v703.i32[2];
    v697.i64[1] = v703.i32[3];
    v708 = vbicq_s8(v1443, v697);
    v709 = vbicq_s8(v1441, v707);
    v710 = vbicq_s8(v1439, v706);
    v711 = vbicq_s8(v1437, v705);
    v712 = vbicq_s8(v1442, v704);
    v713 = vbicq_s8(v1440, v702);
    v714 = vbicq_s8(v1438, v700);
    v715 = vbicq_s8(v1436, v698);
    v716 = *&v956[*v531];
    v717 = *&v956[*MEMORY[0x277CD73C8]];
    if ((v717 & 0xFFF8) != 0)
    {
      v718 = v717 >> 3;
      v1091[0] = v715;
      v1091[1] = v711;
      v1091[2] = v714;
      v1091[3] = v710;
      v1091[4] = v713;
      v1091[5] = v709;
      v1091[6] = v712;
      v1091[7] = v708;
      v719 = *(v1091 + (v716 & 0xF));
      v1090[0] = v715;
      v1090[1] = v711;
      v1090[2] = v714;
      v1090[3] = v710;
      v1090[4] = v713;
      v1090[5] = v709;
      v1090[6] = v712;
      v1090[7] = v708;
      v720 = *(v1090 + (BYTE1(v716) & 0xF));
      v1089[0] = v715;
      v1089[1] = v711;
      v1089[2] = v714;
      v1089[3] = v710;
      v1089[4] = v713;
      v1089[5] = v709;
      v1089[6] = v712;
      v1089[7] = v708;
      v721 = *(v1089 + (BYTE2(v716) & 0xF)) / v718;
      v1088[0] = v715;
      v1088[1] = v711;
      v1088[2] = v714;
      v1088[3] = v710;
      v1088[4] = v713;
      v1088[5] = v709;
      v1088[6] = v712;
      v1088[7] = v708;
      v722 = *(v1088 + (BYTE3(v716) & 0xF));
      v1087[0] = v715;
      v1087[1] = v711;
      v1087[2] = v714;
      v1087[3] = v710;
      v1087[4] = v713;
      v1087[5] = v709;
      v1087[6] = v712;
      v1087[7] = v708;
      v723 = *(v1087 + (BYTE4(v716) & 0xF)) / v718;
      v1086[0] = v715;
      v1086[1] = v711;
      v1086[2] = v714;
      v1086[3] = v710;
      v1086[4] = v713;
      v1086[5] = v709;
      v1086[6] = v712;
      v1086[7] = v708;
      v724 = *(v1086 + (BYTE5(v716) & 0xF));
      v1085[0] = v715;
      v1085[1] = v711;
      v1085[2] = v714;
      v1085[3] = v710;
      v1085[4] = v713;
      v1085[5] = v709;
      v1085[6] = v712;
      v1085[7] = v708;
      v725 = *(v1085 + (BYTE6(v716) & 0xF)) / v718;
      v1084[0] = v715;
      v1084[1] = v711;
      v1084[2] = v714;
      v1084[3] = v710;
      v1084[4] = v713;
      v1084[5] = v709;
      v1084[6] = v712;
      v1084[7] = v708;
      v726 = *(v1084 + (BYTE7(v716) & 0xF));
      v1083[0] = v715;
      v1083[1] = v711;
      v1083[2] = v714;
      v1083[3] = v710;
      v1083[4] = v713;
      v1083[5] = v709;
      v1083[6] = v712;
      v1083[7] = v708;
      v727 = *(v1083 + (BYTE8(v716) & 0xF)) / v718;
      v1082[0] = v715;
      v1082[1] = v711;
      v1082[2] = v714;
      v1082[3] = v710;
      v1082[4] = v713;
      v1082[5] = v709;
      v1082[6] = v712;
      v1082[7] = v708;
      v728 = *(v1082 + (BYTE9(v716) & 0xF));
      v1081[0] = v715;
      v1081[1] = v711;
      v1081[2] = v714;
      v1081[3] = v710;
      v1081[4] = v713;
      v1081[5] = v709;
      v1081[6] = v712;
      v1081[7] = v708;
      v729 = *(v1081 + (BYTE10(v716) & 0xF)) / v718;
      v1080[0] = v715;
      v1080[1] = v711;
      v1080[2] = v714;
      v1080[3] = v710;
      v1080[4] = v713;
      v1080[5] = v709;
      v1080[6] = v712;
      v1080[7] = v708;
      v730 = *(v1080 + (BYTE11(v716) & 0xF));
      v1079[0] = v715;
      v1079[1] = v711;
      v1079[2] = v714;
      v1079[3] = v710;
      v1079[4] = v713;
      v1079[5] = v709;
      v1079[6] = v712;
      v1079[7] = v708;
      v731 = *(v1079 + (BYTE12(v716) & 0xF)) / v718;
      v1078[0] = v715;
      v1078[1] = v711;
      v1078[2] = v714;
      v1078[3] = v710;
      v1078[4] = v713;
      v1078[5] = v709;
      v1078[6] = v712;
      v1078[7] = v708;
      v732 = *(v1078 + (BYTE13(v716) & 0xF));
      v1077[0] = v715;
      v1077[1] = v711;
      v1077[2] = v714;
      v1077[3] = v710;
      v1077[4] = v713;
      v1077[5] = v709;
      v1077[6] = v712;
      v1077[7] = v708;
      v733 = *(v1077 + (BYTE14(v716) & 0xF)) / v718;
      v1076[0] = v715;
      v1076[1] = v711;
      v1076[2] = v714;
      v1076[3] = v710;
      v1076[4] = v713;
      v1076[5] = v709;
      v1076[6] = v712;
      v1076[7] = v708;
      *&v734 = v733;
      *(&v734 + 1) = *(v1076 + (HIBYTE(v716) & 0xF)) / v718;
      v873 = v734;
      *&v734 = v731;
      *(&v734 + 1) = v732 / v718;
      v871 = v734;
      *&v734 = v729;
      *(&v734 + 1) = v730 / v718;
      v869 = v734;
      *&v734 = v727;
      *(&v734 + 1) = v728 / v718;
      v867 = v734;
      *&v734 = v725;
      *(&v734 + 1) = v726 / v718;
      v865 = v734;
      *&v734 = v723;
      *(&v734 + 1) = v724 / v718;
      v863 = v734;
      *&v734 = v721;
      *(&v734 + 1) = v722 / v718;
      v861 = v734;
      *&v735 = v719 / v718;
      *(&v735 + 1) = v720 / v718;
    }

    else
    {
      v1075[0] = v715;
      v1075[1] = v711;
      v1075[2] = v714;
      v1075[3] = v710;
      v1075[4] = v713;
      v1075[5] = v709;
      v1075[6] = v712;
      v1075[7] = v708;
      v1074[0] = v715;
      v1074[1] = v711;
      v1074[2] = v714;
      v1074[3] = v710;
      v1074[4] = v713;
      v1074[5] = v709;
      v1074[6] = v712;
      v1074[7] = v708;
      v1073[0] = v715;
      v1073[1] = v711;
      v1073[2] = v714;
      v1073[3] = v710;
      v1073[4] = v713;
      v1073[5] = v709;
      v1073[6] = v712;
      v1073[7] = v708;
      v1072[0] = v715;
      v1072[1] = v711;
      v1072[2] = v714;
      v1072[3] = v710;
      v1072[4] = v713;
      v1072[5] = v709;
      v1072[6] = v712;
      v1072[7] = v708;
      v1071[0] = v715;
      v1071[1] = v711;
      v1071[2] = v714;
      v1071[3] = v710;
      v1071[4] = v713;
      v1071[5] = v709;
      v1071[6] = v712;
      v1071[7] = v708;
      v1070[0] = v715;
      v1070[1] = v711;
      v1070[2] = v714;
      v1070[3] = v710;
      v1070[4] = v713;
      v1070[5] = v709;
      v1070[6] = v712;
      v1070[7] = v708;
      v1069[0] = v715;
      v1069[1] = v711;
      v1069[2] = v714;
      v1069[3] = v710;
      v1069[4] = v713;
      v1069[5] = v709;
      v1069[6] = v712;
      v1069[7] = v708;
      v1068[0] = v715;
      v1068[1] = v711;
      v1068[2] = v714;
      v1068[3] = v710;
      v1068[4] = v713;
      v1068[5] = v709;
      v1068[6] = v712;
      v1068[7] = v708;
      v1067[0] = v715;
      v1067[1] = v711;
      v1067[2] = v714;
      v1067[3] = v710;
      v1067[4] = v713;
      v1067[5] = v709;
      v1067[6] = v712;
      v1067[7] = v708;
      v1066[0] = v715;
      v1066[1] = v711;
      v1066[2] = v714;
      v1066[3] = v710;
      v1066[4] = v713;
      v1066[5] = v709;
      v1066[6] = v712;
      v1066[7] = v708;
      v1065[0] = v715;
      v1065[1] = v711;
      v1065[2] = v714;
      v1065[3] = v710;
      v1065[4] = v713;
      v1065[5] = v709;
      v1065[6] = v712;
      v1065[7] = v708;
      v1064[0] = v715;
      v1064[1] = v711;
      v1064[2] = v714;
      v1064[3] = v710;
      v1064[4] = v713;
      v1064[5] = v709;
      v1064[6] = v712;
      v1064[7] = v708;
      v1063[0] = v715;
      v1063[1] = v711;
      v1063[2] = v714;
      v1063[3] = v710;
      v1063[4] = v713;
      v1063[5] = v709;
      v1063[6] = v712;
      v1063[7] = v708;
      v1062[0] = v715;
      v1062[1] = v711;
      v1062[2] = v714;
      v1062[3] = v710;
      v1062[4] = v713;
      v1062[5] = v709;
      v1062[6] = v712;
      v1062[7] = v708;
      v1061[0] = v715;
      v1061[1] = v711;
      v1061[2] = v714;
      v1061[3] = v710;
      v1061[4] = v713;
      v1061[5] = v709;
      v1061[6] = v712;
      v1061[7] = v708;
      v1060[0] = v715;
      v1060[1] = v711;
      v1060[2] = v714;
      v1060[3] = v710;
      v1060[4] = v713;
      v1060[5] = v709;
      v1060[6] = v712;
      v1060[7] = v708;
      *&v736 = *(v1061 + (BYTE14(v716) & 0xF));
      *&v737 = *(v1063 + (BYTE12(v716) & 0xF));
      *(&v736 + 1) = *(v1060 + (HIBYTE(v716) & 0xF));
      v873 = v736;
      *(&v737 + 1) = *(v1062 + (BYTE13(v716) & 0xF));
      v871 = v737;
      *&v736 = *(v1065 + (BYTE10(v716) & 0xF));
      *(&v736 + 1) = *(v1064 + (BYTE11(v716) & 0xF));
      v869 = v736;
      *&v736 = *(v1067 + (BYTE8(v716) & 0xF));
      *(&v736 + 1) = *(v1066 + (BYTE9(v716) & 0xF));
      v867 = v736;
      *&v736 = *(v1069 + (BYTE6(v716) & 0xF));
      *(&v736 + 1) = *(v1068 + (BYTE7(v716) & 0xF));
      v865 = v736;
      *&v736 = *(v1071 + (BYTE4(v716) & 0xF));
      *(&v736 + 1) = *(v1070 + (BYTE5(v716) & 0xF));
      v863 = v736;
      *&v736 = *(v1073 + (BYTE2(v716) & 0xF));
      *(&v736 + 1) = *(v1072 + (BYTE3(v716) & 0xF));
      v861 = v736;
      *&v735 = *(v1075 + (v716 & 0xF));
      *(&v735 + 1) = *(v1074 + (BYTE1(v716) & 0xF));
    }

    v859 = v735;
    makeStrideBytes();
    v738 = &v935[*v506];
    v739.i64[0] = 0x100000001;
    v739.i64[1] = 0x100000001;
    v740 = vceqq_s32(*v738, v739);
    v741.i64[0] = v740.i32[0];
    v741.i64[1] = v740.i32[1];
    v742 = v741;
    v743 = vceqq_s32(v738[1], v739);
    v741.i64[0] = v743.i32[0];
    v741.i64[1] = v743.i32[1];
    v744 = v741;
    v745 = vceqq_s32(v738[2], v739);
    v741.i64[0] = v745.i32[0];
    v741.i64[1] = v745.i32[1];
    v746 = v741;
    v747 = vceqq_s32(v738[3], v739);
    v741.i64[0] = v747.i32[0];
    v741.i64[1] = v747.i32[1];
    v748 = v741;
    v741.i64[0] = v740.i32[2];
    v741.i64[1] = v740.i32[3];
    v749 = v741;
    v741.i64[0] = v743.i32[2];
    v741.i64[1] = v743.i32[3];
    v750 = v741;
    v741.i64[0] = v745.i32[2];
    v741.i64[1] = v745.i32[3];
    v751 = v741;
    v741.i64[0] = v747.i32[2];
    v741.i64[1] = v747.i32[3];
    v752 = vbicq_s8(v1443, v741);
    v753 = vbicq_s8(v1441, v751);
    v754 = vbicq_s8(v1439, v750);
    v755 = vbicq_s8(v1437, v749);
    v756 = vbicq_s8(v1442, v748);
    v757 = vbicq_s8(v1440, v746);
    v758 = vbicq_s8(v1438, v744);
    v759 = vbicq_s8(v1436, v742);
    v760 = *&v935[*v531];
    v761 = *&v935[*MEMORY[0x277CD73C8]];
    if ((v761 & 0xFFF8) != 0)
    {
      v762 = v761 >> 3;
      v1059[0] = v759;
      v1059[1] = v755;
      v1059[2] = v758;
      v1059[3] = v754;
      v1059[4] = v757;
      v1059[5] = v753;
      v1059[6] = v756;
      v1059[7] = v752;
      v763 = *(v1059 + (v760 & 0xF));
      v1058[0] = v759;
      v1058[1] = v755;
      v1058[2] = v758;
      v1058[3] = v754;
      v1058[4] = v757;
      v1058[5] = v753;
      v1058[6] = v756;
      v1058[7] = v752;
      v764 = *(v1058 + (BYTE1(v760) & 0xF));
      v1057[0] = v759;
      v1057[1] = v755;
      v1057[2] = v758;
      v1057[3] = v754;
      v1057[4] = v757;
      v1057[5] = v753;
      v1057[6] = v756;
      v1057[7] = v752;
      v765 = *(v1057 + (BYTE2(v760) & 0xF)) / v762;
      v1056[0] = v759;
      v1056[1] = v755;
      v1056[2] = v758;
      v1056[3] = v754;
      v1056[4] = v757;
      v1056[5] = v753;
      v1056[6] = v756;
      v1056[7] = v752;
      v766 = *(v1056 + (BYTE3(v760) & 0xF));
      v1055[0] = v759;
      v1055[1] = v755;
      v1055[2] = v758;
      v1055[3] = v754;
      v1055[4] = v757;
      v1055[5] = v753;
      v1055[6] = v756;
      v1055[7] = v752;
      v767 = *(v1055 + (BYTE4(v760) & 0xF)) / v762;
      v1054[0] = v759;
      v1054[1] = v755;
      v1054[2] = v758;
      v1054[3] = v754;
      v1054[4] = v757;
      v1054[5] = v753;
      v1054[6] = v756;
      v1054[7] = v752;
      v768 = *(v1054 + (BYTE5(v760) & 0xF));
      v1053[0] = v759;
      v1053[1] = v755;
      v1053[2] = v758;
      v1053[3] = v754;
      v1053[4] = v757;
      v1053[5] = v753;
      v1053[6] = v756;
      v1053[7] = v752;
      v769 = *(v1053 + (BYTE6(v760) & 0xF)) / v762;
      v1052[0] = v759;
      v1052[1] = v755;
      v1052[2] = v758;
      v1052[3] = v754;
      v1052[4] = v757;
      v1052[5] = v753;
      v1052[6] = v756;
      v1052[7] = v752;
      v770 = *(v1052 + (BYTE7(v760) & 0xF));
      v1051[0] = v759;
      v1051[1] = v755;
      v1051[2] = v758;
      v1051[3] = v754;
      v1051[4] = v757;
      v1051[5] = v753;
      v1051[6] = v756;
      v1051[7] = v752;
      v771 = *(v1051 + (BYTE8(v760) & 0xF)) / v762;
      v1050[0] = v759;
      v1050[1] = v755;
      v1050[2] = v758;
      v1050[3] = v754;
      v1050[4] = v757;
      v1050[5] = v753;
      v1050[6] = v756;
      v1050[7] = v752;
      v772 = *(v1050 + (BYTE9(v760) & 0xF));
      v1049[0] = v759;
      v1049[1] = v755;
      v1049[2] = v758;
      v1049[3] = v754;
      v1049[4] = v757;
      v1049[5] = v753;
      v1049[6] = v756;
      v1049[7] = v752;
      v773 = *(v1049 + (BYTE10(v760) & 0xF)) / v762;
      v1048[0] = v759;
      v1048[1] = v755;
      v1048[2] = v758;
      v1048[3] = v754;
      v1048[4] = v757;
      v1048[5] = v753;
      v1048[6] = v756;
      v1048[7] = v752;
      v774 = *(v1048 + (BYTE11(v760) & 0xF));
      v1047[0] = v759;
      v1047[1] = v755;
      v1047[2] = v758;
      v1047[3] = v754;
      v1047[4] = v757;
      v1047[5] = v753;
      v1047[6] = v756;
      v1047[7] = v752;
      v775 = *(v1047 + (BYTE12(v760) & 0xF)) / v762;
      v1046[0] = v759;
      v1046[1] = v755;
      v1046[2] = v758;
      v1046[3] = v754;
      v1046[4] = v757;
      v1046[5] = v753;
      v1046[6] = v756;
      v1046[7] = v752;
      v776 = *(v1046 + (BYTE13(v760) & 0xF));
      v1045[0] = v759;
      v1045[1] = v755;
      v1045[2] = v758;
      v1045[3] = v754;
      v1045[4] = v757;
      v1045[5] = v753;
      v1045[6] = v756;
      v1045[7] = v752;
      v777 = *(v1045 + (BYTE14(v760) & 0xF)) / v762;
      v1044[0] = v759;
      v1044[1] = v755;
      v1044[2] = v758;
      v1044[3] = v754;
      v1044[4] = v757;
      v1044[5] = v753;
      v1044[6] = v756;
      v1044[7] = v752;
      *&v778 = v777;
      *(&v778 + 1) = *(v1044 + (HIBYTE(v760) & 0xF)) / v762;
      v993 = v778;
      *&v778 = v775;
      *(&v778 + 1) = v776 / v762;
      v857 = v778;
      *&v778 = v773;
      *(&v778 + 1) = v774 / v762;
      v988 = v778;
      *&v778 = v771;
      *(&v778 + 1) = v772 / v762;
      v855 = v778;
      *&v778 = v769;
      *(&v778 + 1) = v770 / v762;
      v983 = v778;
      *&v778 = v767;
      *(&v778 + 1) = v768 / v762;
      v853 = v778;
      *&v778 = v765;
      *(&v778 + 1) = v766 / v762;
      v979 = v778;
      *&v779 = v763 / v762;
      *(&v779 + 1) = v764 / v762;
    }

    else
    {
      v1043[0] = v759;
      v1043[1] = v755;
      v1043[2] = v758;
      v1043[3] = v754;
      v1043[4] = v757;
      v1043[5] = v753;
      v1043[6] = v756;
      v1043[7] = v752;
      v1042[0] = v759;
      v1042[1] = v755;
      v1042[2] = v758;
      v1042[3] = v754;
      v1042[4] = v757;
      v1042[5] = v753;
      v1042[6] = v756;
      v1042[7] = v752;
      v1041[0] = v759;
      v1041[1] = v755;
      v1041[2] = v758;
      v1041[3] = v754;
      v1041[4] = v757;
      v1041[5] = v753;
      v1041[6] = v756;
      v1041[7] = v752;
      v1040[0] = v759;
      v1040[1] = v755;
      v1040[2] = v758;
      v1040[3] = v754;
      v1040[4] = v757;
      v1040[5] = v753;
      v1040[6] = v756;
      v1040[7] = v752;
      v1039[0] = v759;
      v1039[1] = v755;
      v1039[2] = v758;
      v1039[3] = v754;
      v1039[4] = v757;
      v1039[5] = v753;
      v1039[6] = v756;
      v1039[7] = v752;
      v1038[0] = v759;
      v1038[1] = v755;
      v1038[2] = v758;
      v1038[3] = v754;
      v1038[4] = v757;
      v1038[5] = v753;
      v1038[6] = v756;
      v1038[7] = v752;
      v1037[0] = v759;
      v1037[1] = v755;
      v1037[2] = v758;
      v1037[3] = v754;
      v1037[4] = v757;
      v1037[5] = v753;
      v1037[6] = v756;
      v1037[7] = v752;
      v1036[0] = v759;
      v1036[1] = v755;
      v1036[2] = v758;
      v1036[3] = v754;
      v1036[4] = v757;
      v1036[5] = v753;
      v1036[6] = v756;
      v1036[7] = v752;
      v1035[0] = v759;
      v1035[1] = v755;
      v1035[2] = v758;
      v1035[3] = v754;
      v1035[4] = v757;
      v1035[5] = v753;
      v1035[6] = v756;
      v1035[7] = v752;
      v1034[0] = v759;
      v1034[1] = v755;
      v1034[2] = v758;
      v1034[3] = v754;
      v1034[4] = v757;
      v1034[5] = v753;
      v1034[6] = v756;
      v1034[7] = v752;
      v1033[0] = v759;
      v1033[1] = v755;
      v1033[2] = v758;
      v1033[3] = v754;
      v1033[4] = v757;
      v1033[5] = v753;
      v1033[6] = v756;
      v1033[7] = v752;
      v1032[0] = v759;
      v1032[1] = v755;
      v1032[2] = v758;
      v1032[3] = v754;
      v1032[4] = v757;
      v1032[5] = v753;
      v1032[6] = v756;
      v1032[7] = v752;
      v1031[0] = v759;
      v1031[1] = v755;
      v1031[2] = v758;
      v1031[3] = v754;
      v1031[4] = v757;
      v1031[5] = v753;
      v1031[6] = v756;
      v1031[7] = v752;
      v1030[0] = v759;
      v1030[1] = v755;
      v1030[2] = v758;
      v1030[3] = v754;
      v1030[4] = v757;
      v1030[5] = v753;
      v1030[6] = v756;
      v1030[7] = v752;
      v1029[0] = v759;
      v1029[1] = v755;
      v1029[2] = v758;
      v1029[3] = v754;
      v1029[4] = v757;
      v1029[5] = v753;
      v1029[6] = v756;
      v1029[7] = v752;
      v1028[0] = v759;
      v1028[1] = v755;
      v1028[2] = v758;
      v1028[3] = v754;
      v1028[4] = v757;
      v1028[5] = v753;
      v1028[6] = v756;
      v1028[7] = v752;
      *&v780 = *(v1029 + (BYTE14(v760) & 0xF));
      *&v781 = *(v1031 + (BYTE12(v760) & 0xF));
      *(&v780 + 1) = *(v1028 + (HIBYTE(v760) & 0xF));
      v993 = v780;
      *(&v781 + 1) = *(v1030 + (BYTE13(v760) & 0xF));
      v857 = v781;
      *&v780 = *(v1033 + (BYTE10(v760) & 0xF));
      *(&v780 + 1) = *(v1032 + (BYTE11(v760) & 0xF));
      v988 = v780;
      *&v780 = *(v1035 + (BYTE8(v760) & 0xF));
      *(&v780 + 1) = *(v1034 + (BYTE9(v760) & 0xF));
      v855 = v780;
      *&v780 = *(v1037 + (BYTE6(v760) & 0xF));
      *(&v780 + 1) = *(v1036 + (BYTE7(v760) & 0xF));
      v983 = v780;
      *&v780 = *(v1039 + (BYTE4(v760) & 0xF));
      *(&v780 + 1) = *(v1038 + (BYTE5(v760) & 0xF));
      v853 = v780;
      *&v780 = *(v1041 + (BYTE2(v760) & 0xF));
      *(&v780 + 1) = *(v1040 + (BYTE3(v760) & 0xF));
      v979 = v780;
      *&v779 = *(v1043 + (v760 & 0xF));
      *(&v779 + 1) = *(v1042 + (BYTE1(v760) & 0xF));
    }

    v782 = *(v970 + 16);
    v784 = *v782;
    v783 = v782[1];
    if (v783 != v784)
    {
      if (((v783 - v784) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    v785 = *(v968 + 16);
    v787 = *v785;
    v786 = v785[1];
    if (v786 != v787)
    {
      if (((v786 - v787) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    v788 = 0;
    v789 = vuzp1q_s32(v931, v932);
    v790 = vuzp1q_s32(v927, v929);
    v791 = vuzp1q_s32(v923, v925);
    v792 = v791;
    v792.i32[0] = 0;
    v793 = v790;
    v793.i32[0] = 0;
    v794 = v789;
    v794.i32[0] = 0;
    v795 = vuzp1q_s32(v962, v965);
    v796 = v795;
    v796.i32[0] = 0;
    v797 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v913, 1uLL), 0), v792, v791);
    v798 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v903, 1uLL), 0), v793, v790);
    v799 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v895, 1uLL), 0), v794, v789);
    v800 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v891, 1uLL), 0), v796, v795);
    v801 = v797;
    v801.i32[1] = 0;
    v802 = v798;
    v802.i32[1] = 0;
    v803 = v799;
    v803.i32[1] = 0;
    v804 = v800;
    v804.i32[1] = 0;
    v805 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v915, 1uLL), 0), v801, v797);
    v806 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v907, 1uLL), 0), v802, v798);
    v807 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v899, 1uLL), 0), v803, v799);
    v808 = v805;
    v808.i32[2] = 0;
    v809 = v806;
    v809.i32[2] = 0;
    v810 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v893, 1uLL), 0), v804, v800);
    v811 = v807;
    v811.i32[2] = 0;
    v812 = v810;
    v812.i32[2] = 0;
    v813 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v919, 1uLL), 0), v808, v805);
    v814 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v911, 1uLL), 0), v809, v806);
    v815 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v905, 1uLL), 0), v811, v807);
    v816 = v813;
    v816.i32[3] = 0;
    v817 = v814;
    v817.i32[3] = 0;
    v818 = v815;
    v818.i32[3] = 0;
    v819 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v897, 1uLL), 0), v812, v810);
    v820 = v819;
    v820.i32[3] = 0;
    v821 = &v1417;
    v971 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v921, 1uLL), 0), v816, v813);
    v969 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v917, 1uLL), 0), v817, v814);
    v966 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v909, 1uLL), 0), v818, v815);
    v963 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v901, 1uLL), 0), v820, v819);
    do
    {
      v1027[0] = v933;
      v1027[1] = v939;
      v1027[2] = v942;
      v1027[3] = v998;
      v1027[4] = v946;
      v1027[5] = v1002;
      v1027[6] = *v950;
      v1027[7] = *__pc;
      *(v821 - 64) = *(v1027 + (v788 & 0xF));
      v1026[0] = v971;
      v1026[1] = v969;
      v1026[2] = v966;
      v1026[3] = v963;
      *(v821 - 48) = *(v1026 + (v788 & 0xF));
      v1025[0] = v875;
      v1025[1] = v877;
      v1025[2] = v879;
      v1025[3] = v881;
      v1025[4] = v883;
      v1025[5] = v885;
      v1025[6] = v887;
      v1025[7] = v889;
      *(v821 - 32) = *(v1025 + (v788 & 0xF));
      v1024[0] = v859;
      v1024[1] = v861;
      v1024[2] = v863;
      v1024[3] = v865;
      v1024[4] = v867;
      v1024[5] = v869;
      v1024[6] = v871;
      v1024[7] = v873;
      *(v821 - 16) = *(v1024 + (v788 & 0xF));
      v1023[0] = v779;
      v1023[1] = v979;
      v1023[2] = v853;
      v1023[3] = v983;
      v1023[4] = v855;
      v1023[5] = v988;
      v1023[6] = v857;
      v1023[7] = v993;
      *v821 = *(v1023 + (v788 & 0xF));
      v1022[0] = v1015;
      v1022[1] = v1019;
      v1022[2] = v958;
      v1022[3] = v960;
      *(v821 + 16) = *(v1022 + (v788 & 0xF));
      v1021[0] = xmmword_239B0A0D0;
      memset(&v1021[1], 0, 48);
      *(v821 + 32) = *(v1021 + (v788 & 0xF));
      v1020[0] = xmmword_239B0A0D0;
      memset(&v1020[1], 0, 48);
      *(v821 + 48) = *(v1020 + (v788++ & 0xF));
      v821 = (v821 + 4);
    }

    while (v788 != 16);
    [v481 setBuffer:objc_msgSend(v952 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v952, 0, 16, 0, 0) + *(*(v954 + 8) + 144), 0}];
    [v481 setBuffer:objc_msgSend(v953 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v953, 0, 16, 0, 0) + *(*(v954 + 8) + 224), 1}];
    [v481 setBuffer:objc_msgSend(v935 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v935, 0, 16, 0, 0) + *(v954 + 96), 2}];
    [v481 setBuffer:objc_msgSend(v956 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v956, 0, 16, 0, 0), 3}];
    [v481 setBuffer:objc_msgSend(v937 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v937, 0, 16, 0, 0) + *&v937[*MEMORY[0x277CD73F8]], 4}];
    [v481 setBytes:&v1393 length:540 atIndex:29];
    v1436.i64[0] = v944;
    v1436.i64[1] = v948;
    v1437.i64[0] = 1;
    v1385 = v492;
    v1386 = vdupq_n_s64(1uLL);
    [v481 dispatchThreadgroups:&v1436 threadsPerThreadgroup:&v1385];
    v149 = 0;
  }

  else
  {
    v149 = -1;
  }

LABEL_621:
  MPSAutoCache::~MPSAutoCache(v1435);
  v822 = *MEMORY[0x277D85DE8];
  return v149;
}